Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/adler32_simd?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @adler32_simd_(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %0, 65535                        ; 2 uses
  %i.b = lshr i32 %0, 16                          ; 2 uses
  %i.c = lshr i64 %2, 5                           ; 2 uses
  %i.d = and i64 %2, 31                           ; 4 uses
  %.not135 = icmp eq i64 %i.c, 0
  br i1 %.not135, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.0139 = phi ptr [ %scevgep159, %bb.c ], [ %1, %bb.a ] ; 2 uses
  %.0112138 = phi i32 [ %i.ak, %bb.c ], [ %i.a, %bb.a ] ; 2 uses
  %.0116137 = phi i32 [ %i.al, %bb.c ], [ %i.b, %bb.a ]
  %.0125136 = phi i64 [ %i.aa, %bb.c ], [ %i.c, %bb.a ] ; 2 uses
  %spec.select131 = tail call i64 @llvm.umin.i64(i64 %.0125136, i64 173) ; 3 uses
  %spec.select = trunc nuw nsw i64 %spec.select131 to i32 ; 2 uses
  %i.e = mul nuw nsw i32 %.0112138, %spec.select
  %i.f = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.e, i64 0
  %i.g = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0116137, i64 0
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %.1124 = phi i32 [ %spec.select, %.lr.ph ], [ %i.z, %bb.b ]
  %.0122.in = phi <4 x i32> [ %i.f, %.lr.ph ], [ %i.l, %bb.b ]
  %.0121.in = phi <4 x i32> [ %i.g, %.lr.ph ], [ %i.x, %bb.b ]
  %i.h = phi <4 x i32> [ zeroinitializer, %.lr.ph ], [ %i.u, %bb.b ] ; 2 uses
  %.1 = phi ptr [ %.0139, %.lr.ph ], [ %i.y, %bb.b ] ; 3 uses
  %i.i = load <16 x i8>, ptr %.1, align 1, !tbaa !14 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.k = load <16 x i8>, ptr %i.j, align 1, !tbaa !14 ; 2 uses
  %i.l = add <4 x i32> %i.h, %.0122.in            ; 2 uses
  %i.m = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.i, <16 x i8> zeroinitializer)
  %i.n = bitcast <2 x i64> %i.m to <4 x i32>
  %i.o = add <4 x i32> %i.h, %i.n
  %i.p = tail call <8 x i16> @llvm.x86.ssse3.pmadd.ub.sw.128(<16 x i8> %i.i, <16 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17>)
  %i.q = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.p, <8 x i16> splat (i16 1))
  %i.r = add <4 x i32> %i.q, %.0121.in
  %i.s = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.k, <16 x i8> zeroinitializer)
  %i.t = bitcast <2 x i64> %i.s to <4 x i32>
  %i.u = add <4 x i32> %i.o, %i.t                 ; 2 uses
  %i.v = tail call <8 x i16> @llvm.x86.ssse3.pmadd.ub.sw.128(<16 x i8> %i.k, <16 x i8> <i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.w = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.v, <8 x i16> splat (i16 1))
  %i.x = add <4 x i32> %i.r, %i.w                 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.1, i64 32
  %i.z = add i32 %.1124, -1                       ; 2 uses
  %.not129 = icmp eq i32 %i.z, 0
  br i1 %.not129, label %bb.c, label %bb.b, !llvm.loop !10

bb.c:                                             ; preds = %bb.b
  %i.aa = sub nuw nsw i64 %.0125136, %spec.select131 ; 2 uses
  %i.ab = shl nuw nsw i64 %spec.select131, 5
  %scevgep159 = getelementptr i8, ptr %.0139, i64 %i.ab ; 2 uses
  %i.ac = shl <4 x i32> %i.l, splat (i32 5)
  %i.ad = add <4 x i32> %i.x, %i.ac               ; 4 uses
  %i.ae = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.u)
  %i.af = add i32 %i.ae, %.0112138
  %3 = shufflevector <4 x i32> %i.ad, <4 x i32> poison, <2 x i32> <i32 poison, i32 3>
  %4 = shufflevector <4 x i32> %i.ad, <4 x i32> poison, <2 x i32> <i32 poison, i32 2>
  %5 = add <2 x i32> %3, %4
  %6 = shufflevector <4 x i32> %i.ad, <4 x i32> poison, <2 x i32> <i32 poison, i32 1>
  %i.ag = shufflevector <4 x i32> %i.ad, <4 x i32> poison, <2 x i32> <i32 poison, i32 0>
  %7 = add <2 x i32> %6, %i.ag
  %i.ah = add <2 x i32> %5, %7
  %i.ai = insertelement <2 x i32> %i.ah, i32 %i.af, i64 0
  %i.aj = urem <2 x i32> %i.ai, splat (i32 65521) ; 2 uses
  %.not = icmp eq i64 %i.aa, 0
  %i.ak = extractelement <2 x i32> %i.aj, i64 0   ; 2 uses
  %i.al = extractelement <2 x i32> %i.aj, i64 1   ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.0116.lcssa = phi i32 [ %i.b, %bb.a ], [ %i.al, %bb.c ] ; 3 uses
  %.0112.lcssa = phi i32 [ %i.a, %bb.a ], [ %i.ak, %bb.c ] ; 3 uses
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %scevgep159, %bb.c ] ; 18 uses
  %.not127 = icmp eq i64 %i.d, 0
  br i1 %.not127, label %bb.f, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.am = icmp samesign ugt i64 %i.d, 15
  br i1 %i.am, label %bb.e, label %.lr.ph148.preheader

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 1
  %i.ao = load i8, ptr %.0.lcssa, align 1, !tbaa !14
  %i.ap = zext i8 %i.ao to i32
  %i.aq = add nuw nsw i32 %.0112.lcssa, %i.ap     ; 2 uses
  %i.ar = add nuw nsw i32 %i.aq, %.0116.lcssa
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 2
  %i.at = load i8, ptr %i.an, align 1, !tbaa !14
  %i.au = zext i8 %i.at to i32
  %i.av = add nuw nsw i32 %i.aq, %i.au            ; 2 uses
  %i.aw = add nuw nsw i32 %i.ar, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 3
  %i.ay = load i8, ptr %i.as, align 1, !tbaa !14
  %i.az = zext i8 %i.ay to i32
  %i.ba = add nuw nsw i32 %i.av, %i.az            ; 2 uses
  %i.bb = add nuw nsw i32 %i.aw, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 4
  %i.bd = load i8, ptr %i.ax, align 1, !tbaa !14
  %i.be = zext i8 %i.bd to i32
  %i.bf = add nuw nsw i32 %i.ba, %i.be            ; 2 uses
  %i.bg = add nuw nsw i32 %i.bb, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 5
  %i.bi = load i8, ptr %i.bc, align 1, !tbaa !14
  %i.bj = zext i8 %i.bi to i32
  %i.bk = add nuw nsw i32 %i.bf, %i.bj            ; 2 uses
  %i.bl = add nuw nsw i32 %i.bg, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 6
  %i.bn = load i8, ptr %i.bh, align 1, !tbaa !14
  %i.bo = zext i8 %i.bn to i32
  %i.bp = add nuw nsw i32 %i.bk, %i.bo            ; 2 uses
  %i.bq = add nuw nsw i32 %i.bl, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 7
  %i.bs = load i8, ptr %i.bm, align 1, !tbaa !14
  %i.bt = zext i8 %i.bs to i32
  %i.bu = add nuw nsw i32 %i.bp, %i.bt            ; 2 uses
  %i.bv = add nuw nsw i32 %i.bq, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8
  %i.bx = load i8, ptr %i.br, align 1, !tbaa !14
  %i.by = zext i8 %i.bx to i32
  %i.bz = add nuw nsw i32 %i.bu, %i.by            ; 2 uses
  %i.ca = add nuw nsw i32 %i.bv, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 9
  %i.cc = load i8, ptr %i.bw, align 1, !tbaa !14
  %i.cd = zext i8 %i.cc to i32
  %i.ce = add nuw nsw i32 %i.bz, %i.cd            ; 2 uses
  %i.cf = add nuw nsw i32 %i.ca, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 10
  %i.ch = load i8, ptr %i.cb, align 1, !tbaa !14
  %i.ci = zext i8 %i.ch to i32
  %i.cj = add nuw nsw i32 %i.ce, %i.ci            ; 2 uses
  %i.ck = add nuw nsw i32 %i.cf, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 11
  %i.cm = load i8, ptr %i.cg, align 1, !tbaa !14
  %i.cn = zext i8 %i.cm to i32
  %i.co = add nuw nsw i32 %i.cj, %i.cn            ; 2 uses
  %i.cp = add nuw nsw i32 %i.ck, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 12
  %i.cr = load i8, ptr %i.cl, align 1, !tbaa !14
  %i.cs = zext i8 %i.cr to i32
  %i.ct = add nuw nsw i32 %i.co, %i.cs            ; 2 uses
  %i.cu = add nuw nsw i32 %i.cp, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 13
  %i.cw = load i8, ptr %i.cq, align 1, !tbaa !14
  %i.cx = zext i8 %i.cw to i32
  %i.cy = add nuw nsw i32 %i.ct, %i.cx            ; 2 uses
  %i.cz = add nuw nsw i32 %i.cu, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 14
  %i.db = load i8, ptr %i.cv, align 1, !tbaa !14
  %i.dc = zext i8 %i.db to i32
  %i.dd = add nuw nsw i32 %i.cy, %i.dc            ; 2 uses
  %i.de = add nuw nsw i32 %i.cz, %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 15
  %i.dg = load i8, ptr %i.da, align 1, !tbaa !14
  %i.dh = zext i8 %i.dg to i32
  %i.di = add nuw nsw i32 %i.dd, %i.dh            ; 2 uses
  %i.dj = add nuw nsw i32 %i.de, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16
  %i.dl = load i8, ptr %i.df, align 1, !tbaa !14
  %i.dm = zext i8 %i.dl to i32
  %i.dn = add nuw nsw i32 %i.di, %i.dm            ; 3 uses
  %i.do = add nuw nsw i32 %i.dj, %i.dn            ; 2 uses
  %i.dp = add nsw i64 %i.d, -16                   ; 2 uses
  %.not128142 = icmp eq i64 %i.dp, 0
  br i1 %.not128142, label %._crit_edge149, label %.lr.ph148.preheader

.lr.ph148.preheader:                              ; preds = %bb.d, %bb.e
  %.3146.ph = phi ptr [ %.0.lcssa, %bb.d ], [ %i.dk, %bb.e ] ; 2 uses
  %.1111145.ph = phi i64 [ %i.d, %bb.d ], [ %i.dp, %bb.e ] ; 4 uses
  %.2114144.ph = phi i32 [ %.0112.lcssa, %bb.d ], [ %i.dn, %bb.e ] ; 2 uses
  %.2118143.ph = phi i32 [ %.0116.lcssa, %bb.d ], [ %i.do, %bb.e ] ; 2 uses
  %xtraiter = and i64 %.1111145.ph, 3             ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph148.prol.loopexit, label %.lr.ph148.prol

.lr.ph148.prol:                                   ; preds = %.lr.ph148.preheader, %.lr.ph148.prol
  %.3146.prol = phi ptr [ %i.dr, %.lr.ph148.prol ], [ %.3146.ph, %.lr.ph148.preheader ] ; 2 uses
  %.1111145.prol = phi i64 [ %i.dq, %.lr.ph148.prol ], [ %.1111145.ph, %.lr.ph148.preheader ]
  %.2114144.prol = phi i32 [ %i.du, %.lr.ph148.prol ], [ %.2114144.ph, %.lr.ph148.preheader ]
  %.2118143.prol = phi i32 [ %i.dv, %.lr.ph148.prol ], [ %.2118143.ph, %.lr.ph148.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph148.prol ], [ 0, %.lr.ph148.preheader ]
  %i.dq = add i64 %.1111145.prol, -1              ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.3146.prol, i64 1 ; 2 uses
  %i.ds = load i8, ptr %.3146.prol, align 1, !tbaa !14
  %i.dt = zext i8 %i.ds to i32
  %i.du = add i32 %.2114144.prol, %i.dt           ; 4 uses
  %i.dv = add i32 %i.du, %.2118143.prol           ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph148.prol.loopexit, label %.lr.ph148.prol, !llvm.loop !12

.lr.ph148.prol.loopexit:                          ; preds = %.lr.ph148.prol, %.lr.ph148.preheader
  %.lcssa183.unr = phi i32 [ poison, %.lr.ph148.preheader ], [ %i.du, %.lr.ph148.prol ]
  %.lcssa.unr = phi i32 [ poison, %.lr.ph148.preheader ], [ %i.dv, %.lr.ph148.prol ]
  %.3146.unr = phi ptr [ %.3146.ph, %.lr.ph148.preheader ], [ %i.dr, %.lr.ph148.prol ]
  %.1111145.unr = phi i64 [ %.1111145.ph, %.lr.ph148.preheader ], [ %i.dq, %.lr.ph148.prol ]
  %.2114144.unr = phi i32 [ %.2114144.ph, %.lr.ph148.preheader ], [ %i.du, %.lr.ph148.prol ]
  %.2118143.unr = phi i32 [ %.2118143.ph, %.lr.ph148.preheader ], [ %i.dv, %.lr.ph148.prol ]
  %i.dw = icmp ult i64 %.1111145.ph, 4
  br i1 %i.dw, label %._crit_edge149, label %.lr.ph148

.lr.ph148:                                        ; preds = %.lr.ph148.prol.loopexit, %.lr.ph148
  %.3146 = phi ptr [ %i.en, %.lr.ph148 ], [ %.3146.unr, %.lr.ph148.prol.loopexit ] ; 5 uses
  %.1111145 = phi i64 [ %i.em, %.lr.ph148 ], [ %.1111145.unr, %.lr.ph148.prol.loopexit ]
  %.2114144 = phi i32 [ %i.eq, %.lr.ph148 ], [ %.2114144.unr, %.lr.ph148.prol.loopexit ]
  %.2118143 = phi i32 [ %i.er, %.lr.ph148 ], [ %.2118143.unr, %.lr.ph148.prol.loopexit ]
  %i.dx = getelementptr inbounds nuw i8, ptr %.3146, i64 1
  %i.dy = load i8, ptr %.3146, align 1, !tbaa !14
  %i.dz = zext i8 %i.dy to i32
  %i.ea = add i32 %.2114144, %i.dz                ; 2 uses
  %i.eb = add i32 %i.ea, %.2118143
  %i.ec = getelementptr inbounds nuw i8, ptr %.3146, i64 2
  %i.ed = load i8, ptr %i.dx, align 1, !tbaa !14
  %i.ee = zext i8 %i.ed to i32
  %i.ef = add i32 %i.ea, %i.ee                    ; 2 uses
  %i.eg = add i32 %i.ef, %i.eb
  %i.eh = getelementptr inbounds nuw i8, ptr %.3146, i64 3
  %i.ei = load i8, ptr %i.ec, align 1, !tbaa !14
  %i.ej = zext i8 %i.ei to i32
  %i.ek = add i32 %i.ef, %i.ej                    ; 2 uses
  %i.el = add i32 %i.ek, %i.eg
  %i.em = add i64 %.1111145, -4                   ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.3146, i64 4
  %i.eo = load i8, ptr %i.eh, align 1, !tbaa !14
  %i.ep = zext i8 %i.eo to i32
  %i.eq = add i32 %i.ek, %i.ep                    ; 3 uses
  %i.er = add i32 %i.eq, %i.el                    ; 2 uses
  %.not128.3 = icmp eq i64 %i.em, 0
  br i1 %.not128.3, label %._crit_edge149, label %.lr.ph148, !llvm.loop !13

._crit_edge149:                                   ; preds = %.lr.ph148.prol.loopexit, %.lr.ph148, %bb.e
  %.2118.lcssa = phi i32 [ %i.do, %bb.e ], [ %.lcssa.unr, %.lr.ph148.prol.loopexit ], [ %i.er, %.lr.ph148 ]
  %.2114.lcssa = phi i32 [ %i.dn, %bb.e ], [ %.lcssa183.unr, %.lr.ph148.prol.loopexit ], [ %i.eq, %.lr.ph148 ] ; 3 uses
  %i.es = icmp ugt i32 %.2114.lcssa, 65520
  %i.et = add i32 %.2114.lcssa, -65521
  %spec.select130 = select i1 %i.es, i32 %i.et, i32 %.2114.lcssa
  %i.eu = urem i32 %.2118.lcssa, 65521
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge149, %._crit_edge
  %.3119 = phi i32 [ %i.eu, %._crit_edge149 ], [ %.0116.lcssa, %._crit_edge ]
  %.4 = phi i32 [ %spec.select130, %._crit_edge149 ], [ %.0112.lcssa, %._crit_edge ]
  %i.ev = shl nuw i32 %.3119, 16
  %i.ew = or i32 %.4, %i.ev
  ret i32 %i.ew
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8>, <16 x i8>) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.ssse3.pmadd.ub.sw.128(<16 x i8>, <16 x i8>) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #2

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }
end_hunk_0
