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
  %.0112138 = phi i32 [ %12, %bb.c ], [ %i.a, %bb.a ] ; 2 uses
  %.0116137 = phi i32 [ %13, %bb.c ], [ %i.b, %bb.a ]
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
  %7 = shufflevector <4 x i32> %i.ad, <4 x i32> poison, <2 x i32> <i32 poison, i32 0>
  %8 = add <2 x i32> %6, %7
  %9 = add <2 x i32> %5, %8
  %10 = insertelement <2 x i32> %9, i32 %i.af, i64 0
  %11 = urem <2 x i32> %10, splat (i32 65521)     ; 2 uses
  %.not = icmp eq i64 %i.aa, 0
  %12 = extractelement <2 x i32> %11, i64 0       ; 2 uses
  %13 = extractelement <2 x i32> %11, i64 1       ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.0116.lcssa = phi i32 [ %i.b, %bb.a ], [ %13, %bb.c ] ; 3 uses
  %.0112.lcssa = phi i32 [ %i.a, %bb.a ], [ %12, %bb.c ] ; 3 uses
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %scevgep159, %bb.c ] ; 18 uses
  %.not127 = icmp eq i64 %i.d, 0
  br i1 %.not127, label %bb.f, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.ag = icmp samesign ugt i64 %i.d, 15
  br i1 %i.ag, label %bb.e, label %.lr.ph148.preheader

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 1
  %i.ai = load i8, ptr %.0.lcssa, align 1, !tbaa !14
  %i.aj = zext i8 %i.ai to i32
  %i.ak = add nuw nsw i32 %.0112.lcssa, %i.aj     ; 2 uses
  %i.al = add nuw nsw i32 %i.ak, %.0116.lcssa
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 2
  %i.an = load i8, ptr %i.ah, align 1, !tbaa !14
  %i.ao = zext i8 %i.an to i32
  %i.ap = add nuw nsw i32 %i.ak, %i.ao            ; 2 uses
  %i.aq = add nuw nsw i32 %i.al, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 3
  %i.as = load i8, ptr %i.am, align 1, !tbaa !14
  %i.at = zext i8 %i.as to i32
  %i.au = add nuw nsw i32 %i.ap, %i.at            ; 2 uses
  %i.av = add nuw nsw i32 %i.aq, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 4
  %i.ax = load i8, ptr %i.ar, align 1, !tbaa !14
  %i.ay = zext i8 %i.ax to i32
  %i.az = add nuw nsw i32 %i.au, %i.ay            ; 2 uses
  %i.ba = add nuw nsw i32 %i.av, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 5
  %i.bc = load i8, ptr %i.aw, align 1, !tbaa !14
  %i.bd = zext i8 %i.bc to i32
  %i.be = add nuw nsw i32 %i.az, %i.bd            ; 2 uses
  %i.bf = add nuw nsw i32 %i.ba, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 6
  %i.bh = load i8, ptr %i.bb, align 1, !tbaa !14
  %i.bi = zext i8 %i.bh to i32
  %i.bj = add nuw nsw i32 %i.be, %i.bi            ; 2 uses
  %i.bk = add nuw nsw i32 %i.bf, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 7
  %i.bm = load i8, ptr %i.bg, align 1, !tbaa !14
  %i.bn = zext i8 %i.bm to i32
  %i.bo = add nuw nsw i32 %i.bj, %i.bn            ; 2 uses
  %i.bp = add nuw nsw i32 %i.bk, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8
  %i.br = load i8, ptr %i.bl, align 1, !tbaa !14
  %i.bs = zext i8 %i.br to i32
  %i.bt = add nuw nsw i32 %i.bo, %i.bs            ; 2 uses
  %i.bu = add nuw nsw i32 %i.bp, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 9
  %i.bw = load i8, ptr %i.bq, align 1, !tbaa !14
  %i.bx = zext i8 %i.bw to i32
  %i.by = add nuw nsw i32 %i.bt, %i.bx            ; 2 uses
  %i.bz = add nuw nsw i32 %i.bu, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 10
  %i.cb = load i8, ptr %i.bv, align 1, !tbaa !14
  %i.cc = zext i8 %i.cb to i32
  %i.cd = add nuw nsw i32 %i.by, %i.cc            ; 2 uses
  %i.ce = add nuw nsw i32 %i.bz, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 11
  %i.cg = load i8, ptr %i.ca, align 1, !tbaa !14
  %i.ch = zext i8 %i.cg to i32
  %i.ci = add nuw nsw i32 %i.cd, %i.ch            ; 2 uses
  %i.cj = add nuw nsw i32 %i.ce, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 12
  %i.cl = load i8, ptr %i.cf, align 1, !tbaa !14
  %i.cm = zext i8 %i.cl to i32
  %i.cn = add nuw nsw i32 %i.ci, %i.cm            ; 2 uses
  %i.co = add nuw nsw i32 %i.cj, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 13
  %i.cq = load i8, ptr %i.ck, align 1, !tbaa !14
  %i.cr = zext i8 %i.cq to i32
  %i.cs = add nuw nsw i32 %i.cn, %i.cr            ; 2 uses
  %i.ct = add nuw nsw i32 %i.co, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 14
  %i.cv = load i8, ptr %i.cp, align 1, !tbaa !14
  %i.cw = zext i8 %i.cv to i32
  %i.cx = add nuw nsw i32 %i.cs, %i.cw            ; 2 uses
  %i.cy = add nuw nsw i32 %i.ct, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 15
  %i.da = load i8, ptr %i.cu, align 1, !tbaa !14
  %i.db = zext i8 %i.da to i32
  %i.dc = add nuw nsw i32 %i.cx, %i.db            ; 2 uses
  %i.dd = add nuw nsw i32 %i.cy, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16
  %i.df = load i8, ptr %i.cz, align 1, !tbaa !14
  %i.dg = zext i8 %i.df to i32
  %i.dh = add nuw nsw i32 %i.dc, %i.dg            ; 3 uses
  %i.di = add nuw nsw i32 %i.dd, %i.dh            ; 2 uses
  %i.dj = add nsw i64 %i.d, -16                   ; 2 uses
  %.not128142 = icmp eq i64 %i.dj, 0
  br i1 %.not128142, label %._crit_edge149, label %.lr.ph148.preheader

.lr.ph148.preheader:                              ; preds = %bb.d, %bb.e
  %.3146.ph = phi ptr [ %.0.lcssa, %bb.d ], [ %i.de, %bb.e ] ; 2 uses
  %.1111145.ph = phi i64 [ %i.d, %bb.d ], [ %i.dj, %bb.e ] ; 4 uses
  %.2114144.ph = phi i32 [ %.0112.lcssa, %bb.d ], [ %i.dh, %bb.e ] ; 2 uses
  %.2118143.ph = phi i32 [ %.0116.lcssa, %bb.d ], [ %i.di, %bb.e ] ; 2 uses
  %xtraiter = and i64 %.1111145.ph, 3             ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph148.prol.loopexit, label %.lr.ph148.prol

.lr.ph148.prol:                                   ; preds = %.lr.ph148.preheader, %.lr.ph148.prol
  %.3146.prol = phi ptr [ %i.dl, %.lr.ph148.prol ], [ %.3146.ph, %.lr.ph148.preheader ] ; 2 uses
  %.1111145.prol = phi i64 [ %i.dk, %.lr.ph148.prol ], [ %.1111145.ph, %.lr.ph148.preheader ]
  %.2114144.prol = phi i32 [ %i.do, %.lr.ph148.prol ], [ %.2114144.ph, %.lr.ph148.preheader ]
  %.2118143.prol = phi i32 [ %i.dp, %.lr.ph148.prol ], [ %.2118143.ph, %.lr.ph148.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph148.prol ], [ 0, %.lr.ph148.preheader ]
  %i.dk = add i64 %.1111145.prol, -1              ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.3146.prol, i64 1 ; 2 uses
  %i.dm = load i8, ptr %.3146.prol, align 1, !tbaa !14
  %i.dn = zext i8 %i.dm to i32
  %i.do = add i32 %.2114144.prol, %i.dn           ; 4 uses
  %i.dp = add i32 %i.do, %.2118143.prol           ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph148.prol.loopexit, label %.lr.ph148.prol, !llvm.loop !12

.lr.ph148.prol.loopexit:                          ; preds = %.lr.ph148.prol, %.lr.ph148.preheader
  %.lcssa183.unr = phi i32 [ poison, %.lr.ph148.preheader ], [ %i.do, %.lr.ph148.prol ]
  %.lcssa.unr = phi i32 [ poison, %.lr.ph148.preheader ], [ %i.dp, %.lr.ph148.prol ]
  %.3146.unr = phi ptr [ %.3146.ph, %.lr.ph148.preheader ], [ %i.dl, %.lr.ph148.prol ]
  %.1111145.unr = phi i64 [ %.1111145.ph, %.lr.ph148.preheader ], [ %i.dk, %.lr.ph148.prol ]
  %.2114144.unr = phi i32 [ %.2114144.ph, %.lr.ph148.preheader ], [ %i.do, %.lr.ph148.prol ]
  %.2118143.unr = phi i32 [ %.2118143.ph, %.lr.ph148.preheader ], [ %i.dp, %.lr.ph148.prol ]
  %i.dq = icmp ult i64 %.1111145.ph, 4
  br i1 %i.dq, label %._crit_edge149, label %.lr.ph148

.lr.ph148:                                        ; preds = %.lr.ph148.prol.loopexit, %.lr.ph148
  %.3146 = phi ptr [ %i.eh, %.lr.ph148 ], [ %.3146.unr, %.lr.ph148.prol.loopexit ] ; 5 uses
  %.1111145 = phi i64 [ %i.eg, %.lr.ph148 ], [ %.1111145.unr, %.lr.ph148.prol.loopexit ]
  %.2114144 = phi i32 [ %i.ek, %.lr.ph148 ], [ %.2114144.unr, %.lr.ph148.prol.loopexit ]
  %.2118143 = phi i32 [ %i.el, %.lr.ph148 ], [ %.2118143.unr, %.lr.ph148.prol.loopexit ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.3146, i64 1
  %i.ds = load i8, ptr %.3146, align 1, !tbaa !14
  %i.dt = zext i8 %i.ds to i32
  %i.du = add i32 %.2114144, %i.dt                ; 2 uses
  %i.dv = add i32 %i.du, %.2118143
  %i.dw = getelementptr inbounds nuw i8, ptr %.3146, i64 2
  %i.dx = load i8, ptr %i.dr, align 1, !tbaa !14
  %i.dy = zext i8 %i.dx to i32
  %i.dz = add i32 %i.du, %i.dy                    ; 2 uses
  %i.ea = add i32 %i.dz, %i.dv
  %i.eb = getelementptr inbounds nuw i8, ptr %.3146, i64 3
  %i.ec = load i8, ptr %i.dw, align 1, !tbaa !14
  %i.ed = zext i8 %i.ec to i32
  %i.ee = add i32 %i.dz, %i.ed                    ; 2 uses
  %i.ef = add i32 %i.ee, %i.ea
  %i.eg = add i64 %.1111145, -4                   ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.3146, i64 4
  %i.ei = load i8, ptr %i.eb, align 1, !tbaa !14
  %i.ej = zext i8 %i.ei to i32
  %i.ek = add i32 %i.ee, %i.ej                    ; 3 uses
  %i.el = add i32 %i.ek, %i.ef                    ; 2 uses
  %.not128.3 = icmp eq i64 %i.eg, 0
  br i1 %.not128.3, label %._crit_edge149, label %.lr.ph148, !llvm.loop !13

._crit_edge149:                                   ; preds = %.lr.ph148.prol.loopexit, %.lr.ph148, %bb.e
  %.2118.lcssa = phi i32 [ %i.di, %bb.e ], [ %.lcssa.unr, %.lr.ph148.prol.loopexit ], [ %i.el, %.lr.ph148 ]
  %.2114.lcssa = phi i32 [ %i.dh, %bb.e ], [ %.lcssa183.unr, %.lr.ph148.prol.loopexit ], [ %i.ek, %.lr.ph148 ] ; 3 uses
  %i.em = icmp ugt i32 %.2114.lcssa, 65520
  %i.en = add i32 %.2114.lcssa, -65521
  %spec.select130 = select i1 %i.em, i32 %i.en, i32 %.2114.lcssa
  %i.eo = urem i32 %.2118.lcssa, 65521
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge149, %._crit_edge
  %.3119 = phi i32 [ %i.eo, %._crit_edge149 ], [ %.0116.lcssa, %._crit_edge ]
  %.4 = phi i32 [ %spec.select130, %._crit_edge149 ], [ %.0112.lcssa, %._crit_edge ]
  %i.ep = shl nuw i32 %.3119, 16
  %i.eq = or i32 %.4, %i.ep
  ret i32 %i.eq
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
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
end_hunk_0
