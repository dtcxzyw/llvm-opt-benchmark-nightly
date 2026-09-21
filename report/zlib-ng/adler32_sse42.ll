Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng/original/adler32_sse42?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, -983055) i32 @adler32_fold_copy_sse42(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %0, 16
  %i.b = and i32 %0, 65535
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.095 = phi i32 [ %i.a, %bb.a ], [ %9, %bb.d ]  ; 4 uses
  %.093 = phi i32 [ %i.b, %bb.a ], [ %10, %bb.d ] ; 4 uses
  %.091 = phi i64 [ %3, %bb.a ], [ %i.aq, %bb.d ] ; 7 uses
  %.087 = phi ptr [ %2, %bb.a ], [ %.390.lcssa, %bb.d ] ; 3 uses
  %.085 = phi ptr [ %1, %bb.a ], [ %.3.lcssa, %bb.d ] ; 3 uses
  %i.c = icmp ult i64 %.091, 16
  br i1 %i.c, label %bb.c, label %.preheader

bb.c:                                             ; preds = %bb.b
  %.not14.i = icmp eq i64 %.091, 0
  br i1 %.not14.i, label %adler32_copy_len_16.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %xtraiter247 = and i64 %.091, 3                 ; 2 uses
  %lcmp.mod248.not = icmp eq i64 %xtraiter247, 0
  br i1 %lcmp.mod248.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.019.i.prol = phi i32 [ %i.j, %.lr.ph.i.prol ], [ %.095, %.lr.ph.i.preheader ]
  %.01018.i.prol = phi i64 [ %i.d, %.lr.ph.i.prol ], [ %.091, %.lr.ph.i.preheader ]
  %.01117.i.prol = phi ptr [ %i.g, %.lr.ph.i.prol ], [ %.085, %.lr.ph.i.preheader ] ; 2 uses
  %.01216.i.prol = phi ptr [ %i.e, %.lr.ph.i.prol ], [ %.087, %.lr.ph.i.preheader ] ; 2 uses
  %.01315.i.prol = phi i32 [ %i.i, %.lr.ph.i.prol ], [ %.093, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.d = add nsw i64 %.01018.i.prol, -1           ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.01216.i.prol, i64 1 ; 2 uses
  %i.f = load i8, ptr %.01216.i.prol, align 1, !tbaa !13 ; 2 uses
  store i8 %i.f, ptr %.01117.i.prol, align 1, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %.01117.i.prol, i64 1 ; 2 uses
  %i.h = zext i8 %i.f to i32
  %i.i = add i32 %.01315.i.prol, %i.h             ; 4 uses
  %i.j = add i32 %i.i, %.019.i.prol               ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter247
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !8

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa224.unr = phi i32 [ poison, %.lr.ph.i.preheader ], [ %i.i, %.lr.ph.i.prol ]
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i.preheader ], [ %i.j, %.lr.ph.i.prol ]
  %.019.i.unr = phi i32 [ %.095, %.lr.ph.i.preheader ], [ %i.j, %.lr.ph.i.prol ]
  %.01018.i.unr = phi i64 [ %.091, %.lr.ph.i.preheader ], [ %i.d, %.lr.ph.i.prol ]
  %.01117.i.unr = phi ptr [ %.085, %.lr.ph.i.preheader ], [ %i.g, %.lr.ph.i.prol ]
  %.01216.i.unr = phi ptr [ %.087, %.lr.ph.i.preheader ], [ %i.e, %.lr.ph.i.prol ]
  %.01315.i.unr = phi i32 [ %.093, %.lr.ph.i.preheader ], [ %i.i, %.lr.ph.i.prol ]
  %i.k = icmp ult i64 %.091, 4
  br i1 %i.k, label %adler32_copy_len_16.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.019.i = phi i32 [ %i.aj, %.lr.ph.i ], [ %.019.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01018.i = phi i64 [ %i.ad, %.lr.ph.i ], [ %.01018.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01117.i = phi ptr [ %i.ag, %.lr.ph.i ], [ %.01117.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.01216.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.01216.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.01315.i = phi i32 [ %i.ai, %.lr.ph.i ], [ %.01315.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.l = getelementptr inbounds nuw i8, ptr %.01216.i, i64 1
  %i.m = load i8, ptr %.01216.i, align 1, !tbaa !13 ; 2 uses
  store i8 %i.m, ptr %.01117.i, align 1, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %.01117.i, i64 1
  %i.o = zext i8 %i.m to i32
  %i.p = add i32 %.01315.i, %i.o                  ; 2 uses
  %i.q = add i32 %i.p, %.019.i
  %i.r = getelementptr inbounds nuw i8, ptr %.01216.i, i64 2
  %i.s = load i8, ptr %i.l, align 1, !tbaa !13    ; 2 uses
  store i8 %i.s, ptr %i.n, align 1, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %.01117.i, i64 2
  %i.u = zext i8 %i.s to i32
  %i.v = add i32 %i.p, %i.u                       ; 2 uses
  %i.w = add i32 %i.v, %i.q
  %i.x = getelementptr inbounds nuw i8, ptr %.01216.i, i64 3
  %i.y = load i8, ptr %i.r, align 1, !tbaa !13    ; 2 uses
  store i8 %i.y, ptr %i.t, align 1, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %.01117.i, i64 3
  %i.aa = zext i8 %i.y to i32
  %i.ab = add i32 %i.v, %i.aa                     ; 2 uses
  %i.ac = add i32 %i.ab, %i.w
  %i.ad = add nsw i64 %.01018.i, -4               ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.01216.i, i64 4
  %i.af = load i8, ptr %i.x, align 1, !tbaa !13   ; 2 uses
  store i8 %i.af, ptr %i.z, align 1, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %.01117.i, i64 4
  %i.ah = zext i8 %i.af to i32
  %i.ai = add i32 %i.ab, %i.ah                    ; 3 uses
  %i.aj = add i32 %i.ai, %i.ac                    ; 2 uses
  %.not.i.3 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.3, label %adler32_copy_len_16.exit, label %.lr.ph.i, !llvm.loop !9

adler32_copy_len_16.exit:                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.c
  %.013.lcssa.i = phi i32 [ %.093, %bb.c ], [ %.lcssa224.unr, %.lr.ph.i.prol.loopexit ], [ %i.ai, %.lr.ph.i ]
  %.0.lcssa.i = phi i32 [ %.095, %bb.c ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.aj, %.lr.ph.i ]
  %i.ak = urem i32 %.013.lcssa.i, 65521
  %i.al = urem i32 %.0.lcssa.i, 65521
  %i.am = shl nuw i32 %i.al, 16
  %i.an = or disjoint i32 %i.am, %i.ak
  br label %bb.f

.preheader:                                       ; preds = %bb.b, %._crit_edge135
  %.186145 = phi ptr [ %.3.lcssa, %._crit_edge135 ], [ %.085, %bb.b ] ; 2 uses
  %.188144 = phi ptr [ %.390.lcssa, %._crit_edge135 ], [ %.087, %bb.b ] ; 2 uses
  %.192143 = phi i64 [ %i.aq, %._crit_edge135 ], [ %.091, %bb.b ] ; 3 uses
  %.194142 = phi i32 [ %10, %._crit_edge135 ], [ %.093, %bb.b ]
  %.196141 = phi i32 [ %9, %._crit_edge135 ], [ %.095, %bb.b ]
  %i.ao = tail call i64 @llvm.umin.i64(i64 %.192143, i64 5552)
  %i.ap = and i64 %i.ao, 8176                     ; 3 uses
  %i.aq = sub i64 %.192143, %i.ap                 ; 4 uses
  %i.ar = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.194142, i64 0 ; 2 uses
  %i.as = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.196141, i64 0 ; 2 uses
  %i.at = icmp ugt i64 %.192143, 31
  br i1 %i.at, label %.lr.ph, label %.lr.ph134.preheader

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.0120 = phi i64 [ %i.ba, %.lr.ph ], [ %i.ap, %.preheader ]
  %.2119 = phi ptr [ %i.bg, %.lr.ph ], [ %.186145, %.preheader ] ; 3 uses
  %.289118 = phi ptr [ %i.az, %.lr.ph ], [ %.188144, %.preheader ] ; 3 uses
  %i.au = phi <4 x i32> [ %i.br, %.lr.ph ], [ zeroinitializer, %.preheader ]
  %.098.in117 = phi <4 x i32> [ %i.bq, %.lr.ph ], [ %i.as, %.preheader ]
  %.0100.in116 = phi <4 x i32> [ %i.bp, %.lr.ph ], [ %i.ar, %.preheader ] ; 2 uses
  %i.av = phi <4 x i32> [ %i.bl, %.lr.ph ], [ zeroinitializer, %.preheader ]
  %i.aw = load <2 x i64>, ptr %.289118, align 1, !tbaa !13 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.289118, i64 16
  %i.ay = load <2 x i64>, ptr %i.ax, align 1, !tbaa !13 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.289118, i64 32 ; 3 uses
  %i.ba = add i64 %.0120, -32                     ; 4 uses
  %i.bb = bitcast <2 x i64> %i.aw to <16 x i8>    ; 2 uses
  %i.bc = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.bb, <16 x i8> zeroinitializer)
  %i.bd = bitcast <2 x i64> %i.ay to <16 x i8>    ; 2 uses
  %i.be = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.bd, <16 x i8> zeroinitializer)
  store <2 x i64> %i.aw, ptr %.2119, align 1, !tbaa !13
  %i.bf = getelementptr inbounds nuw i8, ptr %.2119, i64 16
  store <2 x i64> %i.ay, ptr %i.bf, align 1, !tbaa !13
  %i.bg = getelementptr inbounds nuw i8, ptr %.2119, i64 32 ; 3 uses
  %i.bh = tail call <8 x i16> @llvm.x86.ssse3.pmadd.ub.sw.128(<16 x i8> %i.bb, <16 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17>)
  %i.bi = tail call <8 x i16> @llvm.x86.ssse3.pmadd.ub.sw.128(<16 x i8> %i.bd, <16 x i8> <i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.bj = bitcast <2 x i64> %i.bc to <4 x i32>
  %i.bk = add <4 x i32> %.0100.in116, %i.bj
  %i.bl = add <4 x i32> %.0100.in116, %i.av       ; 2 uses
  %i.bm = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bh, <8 x i16> splat (i16 1))
  %i.bn = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bi, <8 x i16> splat (i16 1))
  %i.bo = bitcast <2 x i64> %i.be to <4 x i32>
  %i.bp = add <4 x i32> %i.bk, %i.bo              ; 3 uses
  %i.bq = add <4 x i32> %i.bm, %.098.in117        ; 2 uses
  %i.br = add <4 x i32> %i.bn, %i.au              ; 2 uses
  %i.bs = icmp ugt i64 %i.ba, 31
  br i1 %i.bs, label %.lr.ph, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %.lr.ph
  %i.bt = shl <4 x i32> %i.bl, splat (i32 5)
  %i.bu = add <4 x i32> %i.bq, %i.bt
  %i.bv = add <4 x i32> %i.bu, %i.br              ; 2 uses
  %.not106127 = icmp eq i64 %i.ba, 0
  br i1 %.not106127, label %._crit_edge135, label %.lr.ph134.preheader

.lr.ph134.preheader:                              ; preds = %.preheader, %._crit_edge
  %.1132.ph = phi i64 [ %i.ap, %.preheader ], [ %i.ba, %._crit_edge ] ; 3 uses
  %.3131.ph = phi ptr [ %.186145, %.preheader ], [ %i.bg, %._crit_edge ] ; 3 uses
  %.390130.ph = phi ptr [ %.188144, %.preheader ], [ %i.az, %._crit_edge ] ; 3 uses
  %.199.in129.ph = phi <4 x i32> [ %i.as, %.preheader ], [ %i.bv, %._crit_edge ] ; 2 uses
  %.1101.in128.ph = phi <4 x i32> [ %i.ar, %.preheader ], [ %i.bp, %._crit_edge ] ; 4 uses
  %i.bw = add nsw i64 %.1132.ph, -16              ; 2 uses
  %i.bx = and i64 %i.bw, 16
  %lcmp.mod.not.not = icmp eq i64 %i.bx, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph134.prol, label %.lr.ph134.prol.loopexit

.lr.ph134.prol:                                   ; preds = %.lr.ph134.preheader
  %i.by = load <2 x i64>, ptr %.390130.ph, align 1, !tbaa !13 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.390130.ph, i64 16 ; 2 uses
  %i.ca = add nsw i64 %.1132.ph, -16
  %i.cb = bitcast <2 x i64> %i.by to <16 x i8>    ; 2 uses
  %i.cc = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.cb, <16 x i8> zeroinitializer)
  %i.cd = tail call <8 x i16> @llvm.x86.ssse3.pmadd.ub.sw.128(<16 x i8> %i.cb, <16 x i8> <i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.ce = bitcast <2 x i64> %i.cc to <4 x i32>
  %i.cf = add <4 x i32> %.1101.in128.ph, %i.ce    ; 2 uses
  %i.cg = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cd, <8 x i16> splat (i16 1))
  %i.ch = add <4 x i32> %i.cg, %.199.in129.ph     ; 2 uses
  store <2 x i64> %i.by, ptr %.3131.ph, align 1, !tbaa !13
  %i.ci = getelementptr inbounds nuw i8, ptr %.3131.ph, i64 16 ; 2 uses
  br label %.lr.ph134.prol.loopexit

.lr.ph134.prol.loopexit:                          ; preds = %.lr.ph134.prol, %.lr.ph134.preheader
  %.lcssa236.unr = phi ptr [ poison, %.lr.ph134.preheader ], [ %i.bz, %.lr.ph134.prol ]
  %.lcssa235.unr = phi <4 x i32> [ poison, %.lr.ph134.preheader ], [ %i.cf, %.lr.ph134.prol ]
  %.lcssa233.unr = phi <4 x i32> [ poison, %.lr.ph134.preheader ], [ %i.ch, %.lr.ph134.prol ]
  %.lcssa232.unr = phi ptr [ poison, %.lr.ph134.preheader ], [ %i.ci, %.lr.ph134.prol ]
  %.1132.unr = phi i64 [ %.1132.ph, %.lr.ph134.preheader ], [ %i.ca, %.lr.ph134.prol ]
  %.3131.unr = phi ptr [ %.3131.ph, %.lr.ph134.preheader ], [ %i.ci, %.lr.ph134.prol ]
  %.390130.unr = phi ptr [ %.390130.ph, %.lr.ph134.preheader ], [ %i.bz, %.lr.ph134.prol ]
  %.199.in129.unr = phi <4 x i32> [ %.199.in129.ph, %.lr.ph134.preheader ], [ %i.ch, %.lr.ph134.prol ]
  %.1101.in128.unr = phi <4 x i32> [ %.1101.in128.ph, %.lr.ph134.preheader ], [ %i.cf, %.lr.ph134.prol ]
  %.unr = phi <4 x i32> [ zeroinitializer, %.lr.ph134.preheader ], [ %.1101.in128.ph, %.lr.ph134.prol ]
  %i.cj = icmp ult i64 %i.bw, 16
  br i1 %i.cj, label %._crit_edge135.loopexit, label %.lr.ph134

.lr.ph134:                                        ; preds = %.lr.ph134.prol.loopexit, %.lr.ph134
  %.1132 = phi i64 [ %i.cy, %.lr.ph134 ], [ %.1132.unr, %.lr.ph134.prol.loopexit ]
  %.3131 = phi ptr [ %i.dh, %.lr.ph134 ], [ %.3131.unr, %.lr.ph134.prol.loopexit ] ; 3 uses
  %.390130 = phi ptr [ %i.cx, %.lr.ph134 ], [ %.390130.unr, %.lr.ph134.prol.loopexit ] ; 3 uses
  %.199.in129 = phi <4 x i32> [ %i.dg, %.lr.ph134 ], [ %.199.in129.unr, %.lr.ph134.prol.loopexit ]
  %.1101.in128 = phi <4 x i32> [ %i.dd, %.lr.ph134 ], [ %.1101.in128.unr, %.lr.ph134.prol.loopexit ] ; 2 uses
  %i.ck = phi <4 x i32> [ %i.de, %.lr.ph134 ], [ %.unr, %.lr.ph134.prol.loopexit ]
  %i.cl = load <2 x i64>, ptr %.390130, align 1, !tbaa !13 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.390130, i64 16
  %i.cn = bitcast <2 x i64> %i.cl to <16 x i8>    ; 2 uses
  %i.co = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.cn, <16 x i8> zeroinitializer)
  %i.cp = tail call <8 x i16> @llvm.x86.ssse3.pmadd.ub.sw.128(<16 x i8> %i.cn, <16 x i8> <i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.cq = bitcast <2 x i64> %i.co to <4 x i32>
  %i.cr = add <4 x i32> %.1101.in128, %i.cq       ; 2 uses
  %i.cs = add <4 x i32> %.1101.in128, %i.ck
  %i.ct = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cp, <8 x i16> splat (i16 1))
  %i.cu = add <4 x i32> %i.ct, %.199.in129
  store <2 x i64> %i.cl, ptr %.3131, align 1, !tbaa !13
  %i.cv = getelementptr inbounds nuw i8, ptr %.3131, i64 16
  %i.cw = load <2 x i64>, ptr %i.cm, align 1, !tbaa !13 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.390130, i64 32 ; 2 uses
  %i.cy = add nsw i64 %.1132, -32                 ; 2 uses
  %i.cz = bitcast <2 x i64> %i.cw to <16 x i8>    ; 2 uses
  %i.da = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.cz, <16 x i8> zeroinitializer)
  %i.db = tail call <8 x i16> @llvm.x86.ssse3.pmadd.ub.sw.128(<16 x i8> %i.cz, <16 x i8> <i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.dc = bitcast <2 x i64> %i.da to <4 x i32>
  %i.dd = add <4 x i32> %i.cr, %i.dc              ; 2 uses
  %i.de = add <4 x i32> %i.cr, %i.cs              ; 2 uses
  %i.df = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.db, <8 x i16> splat (i16 1))
  %i.dg = add <4 x i32> %i.df, %i.cu              ; 2 uses
  store <2 x i64> %i.cw, ptr %i.cv, align 1, !tbaa !13
  %i.dh = getelementptr inbounds nuw i8, ptr %.3131, i64 32 ; 2 uses
  %.not106.1 = icmp eq i64 %i.cy, 0
  br i1 %.not106.1, label %._crit_edge135.loopexit, label %.lr.ph134, !llvm.loop !11

._crit_edge135.loopexit:                          ; preds = %.lr.ph134, %.lr.ph134.prol.loopexit
  %.lcssa236 = phi ptr [ %.lcssa236.unr, %.lr.ph134.prol.loopexit ], [ %i.cx, %.lr.ph134 ]
  %.lcssa235 = phi <4 x i32> [ %.lcssa235.unr, %.lr.ph134.prol.loopexit ], [ %i.dd, %.lr.ph134 ]
  %.lcssa234 = phi <4 x i32> [ %.1101.in128.ph, %.lr.ph134.prol.loopexit ], [ %i.de, %.lr.ph134 ]
  %.lcssa233 = phi <4 x i32> [ %.lcssa233.unr, %.lr.ph134.prol.loopexit ], [ %i.dg, %.lr.ph134 ]
  %.lcssa232 = phi ptr [ %.lcssa232.unr, %.lr.ph134.prol.loopexit ], [ %i.dh, %.lr.ph134 ]
  %i.di = shl <4 x i32> %.lcssa234, splat (i32 4)
  br label %._crit_edge135

._crit_edge135:                                   ; preds = %._crit_edge135.loopexit, %._crit_edge
  %.lcssa110 = phi <4 x i32> [ zeroinitializer, %._crit_edge ], [ %i.di, %._crit_edge135.loopexit ]
  %.1101.in.lcssa = phi <4 x i32> [ %i.bp, %._crit_edge ], [ %.lcssa235, %._crit_edge135.loopexit ] ; 2 uses
  %.199.in.lcssa = phi <4 x i32> [ %i.bv, %._crit_edge ], [ %.lcssa233, %._crit_edge135.loopexit ]
  %.390.lcssa = phi ptr [ %i.az, %._crit_edge ], [ %.lcssa236, %._crit_edge135.loopexit ] ; 2 uses
  %.3.lcssa = phi ptr [ %i.bg, %._crit_edge ], [ %.lcssa232, %._crit_edge135.loopexit ] ; 2 uses
  %i.dj = add <4 x i32> %.199.in.lcssa, %.lcssa110 ; 2 uses
  %4 = shufflevector <4 x i32> %i.dj, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.dk = add <4 x i32> %i.dj, %4                 ; 2 uses
  %5 = shufflevector <4 x i32> %.1101.in.lcssa, <4 x i32> %i.dk, <2 x i32> <i32 0, i32 5>
  %6 = shufflevector <4 x i32> %.1101.in.lcssa, <4 x i32> %i.dk, <2 x i32> <i32 2, i32 4>
  %7 = add <2 x i32> %5, %6
  %8 = urem <2 x i32> %7, splat (i32 65521)       ; 2 uses
  %9 = extractelement <2 x i32> %8, i64 1         ; 3 uses
  %10 = extractelement <2 x i32> %8, i64 0        ; 3 uses
  %i.dl = icmp ugt i64 %i.aq, 15
  br i1 %i.dl, label %.preheader, label %bb.d, !llvm.loop !12

bb.d:                                             ; preds = %._crit_edge135
  %.not = icmp eq i64 %i.aq, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  %i.dm = shl nuw i32 %9, 16
  %i.dn = or disjoint i32 %10, %i.dm
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %adler32_copy_len_16.exit
  %.084 = phi i32 [ %i.an, %adler32_copy_len_16.exit ], [ %i.dn, %bb.e ]
  ret i32 %.084
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8>, <16 x i8>) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.ssse3.pmadd.ub.sw.128(<16 x i8>, <16 x i8>) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
!8 = distinct !{!8, !14}
!9 = distinct !{!9, !15}
!10 = distinct !{!10, !15}
!11 = distinct !{!11, !15}
!12 = distinct !{!12, !15}
!13 = !{!4, !4, i64 0}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = !{!"llvm.loop.mustprogress"}
end_hunk_0
