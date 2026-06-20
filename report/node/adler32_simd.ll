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
  %.0112138 = phi i32 [ %i.ah, %bb.c ], [ %i.a, %bb.a ] ; 2 uses
  %.0116137 = phi i32 [ %i.ai, %bb.c ], [ %i.b, %bb.a ]
  %.0123136 = phi i64 [ %i.aa, %bb.c ], [ %i.c, %bb.a ] ; 2 uses
  %spec.select131 = tail call i64 @llvm.umin.i64(i64 %.0123136, i64 173) ; 3 uses
  %spec.select = trunc nuw nsw i64 %spec.select131 to i32 ; 2 uses
  %i.e = mul nuw nsw i32 %.0112138, %spec.select
  %i.f = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.e, i64 0
  %i.g = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0116137, i64 0
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %.1125 = phi i32 [ %spec.select, %.lr.ph ], [ %i.z, %bb.b ]
  %.0122.in = phi <4 x i32> [ %i.f, %.lr.ph ], [ %i.l, %bb.b ]
  %.0121.in = phi <4 x i32> [ %i.g, %.lr.ph ], [ %i.x, %bb.b ]
  %i.h = phi <4 x i32> [ zeroinitializer, %.lr.ph ], [ %i.u, %bb.b ] ; 2 uses
  %.1 = phi ptr [ %.0139, %.lr.ph ], [ %i.y, %bb.b ] ; 3 uses
  %i.i = load <16 x i8>, ptr %.1, align 1, !tbaa !9 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.k = load <16 x i8>, ptr %i.j, align 1, !tbaa !9 ; 2 uses
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
  %i.z = add i32 %.1125, -1                       ; 2 uses
  %.not129 = icmp eq i32 %i.z, 0
  br i1 %.not129, label %bb.c, label %bb.b, !llvm.loop !10

bb.c:                                             ; preds = %bb.b
  %i.aa = sub i64 %.0123136, %spec.select131      ; 2 uses
  %scevgep = getelementptr i8, ptr %.0139, i64 32
  %i.ab = shl nuw nsw i64 %spec.select131, 5
  %i.ac = add nuw nsw i64 %i.ab, 137438953440
  %i.ad = and i64 %i.ac, 137438953440
  %scevgep159 = getelementptr i8, ptr %scevgep, i64 %i.ad ; 2 uses
  %i.ae = shl <4 x i32> %i.l, splat (i32 5)
  %i.af = add <4 x i32> %i.x, %i.ae
  %3 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.u)
  %i.ag = add i32 %3, %.0112138
  %4 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.af)
  %i.ah = urem i32 %i.ag, 65521                   ; 2 uses
  %i.ai = urem i32 %4, 65521                      ; 2 uses
  %.not = icmp eq i64 %i.aa, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !12

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.0116.lcssa = phi i32 [ %i.b, %bb.a ], [ %i.ai, %bb.c ] ; 3 uses
  %.0112.lcssa = phi i32 [ %i.a, %bb.a ], [ %i.ah, %bb.c ] ; 3 uses
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %scevgep159, %bb.c ] ; 18 uses
  %.not127 = icmp eq i64 %i.d, 0
  br i1 %.not127, label %bb.f, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.aj = icmp samesign ugt i64 %i.d, 15
  br i1 %i.aj, label %bb.e, label %.lr.ph148.preheader

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 1
  %i.al = load i8, ptr %.0.lcssa, align 1, !tbaa !9
  %i.am = zext i8 %i.al to i32
  %i.an = add nuw nsw i32 %.0112.lcssa, %i.am     ; 2 uses
  %i.ao = add nuw nsw i32 %i.an, %.0116.lcssa
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 2
  %i.aq = load i8, ptr %i.ak, align 1, !tbaa !9
  %i.ar = zext i8 %i.aq to i32
  %i.as = add nuw nsw i32 %i.an, %i.ar            ; 2 uses
  %i.at = add nuw nsw i32 %i.ao, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 3
  %i.av = load i8, ptr %i.ap, align 1, !tbaa !9
  %i.aw = zext i8 %i.av to i32
  %i.ax = add nuw nsw i32 %i.as, %i.aw            ; 2 uses
  %i.ay = add nuw nsw i32 %i.at, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 4
  %i.ba = load i8, ptr %i.au, align 1, !tbaa !9
  %i.bb = zext i8 %i.ba to i32
  %i.bc = add nuw nsw i32 %i.ax, %i.bb            ; 2 uses
  %i.bd = add nuw nsw i32 %i.ay, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 5
  %i.bf = load i8, ptr %i.az, align 1, !tbaa !9
  %i.bg = zext i8 %i.bf to i32
  %i.bh = add nuw nsw i32 %i.bc, %i.bg            ; 2 uses
  %i.bi = add nuw nsw i32 %i.bd, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 6
  %i.bk = load i8, ptr %i.be, align 1, !tbaa !9
  %i.bl = zext i8 %i.bk to i32
  %i.bm = add nuw nsw i32 %i.bh, %i.bl            ; 2 uses
  %i.bn = add nuw nsw i32 %i.bi, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 7
  %i.bp = load i8, ptr %i.bj, align 1, !tbaa !9
  %i.bq = zext i8 %i.bp to i32
  %i.br = add nuw nsw i32 %i.bm, %i.bq            ; 2 uses
  %i.bs = add nuw nsw i32 %i.bn, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8
  %i.bu = load i8, ptr %i.bo, align 1, !tbaa !9
  %i.bv = zext i8 %i.bu to i32
  %i.bw = add nuw nsw i32 %i.br, %i.bv            ; 2 uses
  %i.bx = add nuw nsw i32 %i.bs, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 9
  %i.bz = load i8, ptr %i.bt, align 1, !tbaa !9
  %i.ca = zext i8 %i.bz to i32
  %i.cb = add nuw nsw i32 %i.bw, %i.ca            ; 2 uses
  %i.cc = add nuw nsw i32 %i.bx, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 10
  %i.ce = load i8, ptr %i.by, align 1, !tbaa !9
  %i.cf = zext i8 %i.ce to i32
  %i.cg = add nuw nsw i32 %i.cb, %i.cf            ; 2 uses
  %i.ch = add nuw nsw i32 %i.cc, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 11
  %i.cj = load i8, ptr %i.cd, align 1, !tbaa !9
  %i.ck = zext i8 %i.cj to i32
  %i.cl = add nuw nsw i32 %i.cg, %i.ck            ; 2 uses
  %i.cm = add nuw nsw i32 %i.ch, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 12
  %i.co = load i8, ptr %i.ci, align 1, !tbaa !9
  %i.cp = zext i8 %i.co to i32
  %i.cq = add nuw nsw i32 %i.cl, %i.cp            ; 2 uses
  %i.cr = add nuw nsw i32 %i.cm, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 13
  %i.ct = load i8, ptr %i.cn, align 1, !tbaa !9
  %i.cu = zext i8 %i.ct to i32
  %i.cv = add nuw nsw i32 %i.cq, %i.cu            ; 2 uses
  %i.cw = add nuw nsw i32 %i.cr, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 14
  %i.cy = load i8, ptr %i.cs, align 1, !tbaa !9
  %i.cz = zext i8 %i.cy to i32
  %i.da = add nuw nsw i32 %i.cv, %i.cz            ; 2 uses
  %i.db = add nuw nsw i32 %i.cw, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 15
  %i.dd = load i8, ptr %i.cx, align 1, !tbaa !9
  %i.de = zext i8 %i.dd to i32
  %i.df = add nuw nsw i32 %i.da, %i.de            ; 2 uses
  %i.dg = add nuw nsw i32 %i.db, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16
  %i.di = load i8, ptr %i.dc, align 1, !tbaa !9
  %i.dj = zext i8 %i.di to i32
  %i.dk = add nuw nsw i32 %i.df, %i.dj            ; 3 uses
  %i.dl = add nuw nsw i32 %i.dg, %i.dk            ; 2 uses
  %i.dm = add nsw i64 %i.d, -16                   ; 2 uses
  %.not128142 = icmp eq i64 %i.dm, 0
  br i1 %.not128142, label %._crit_edge149, label %.lr.ph148.preheader

.lr.ph148.preheader:                              ; preds = %bb.d, %bb.e
  %.3146.ph = phi ptr [ %.0.lcssa, %bb.d ], [ %i.dh, %bb.e ] ; 2 uses
  %.1111145.ph = phi i64 [ %i.d, %bb.d ], [ %i.dm, %bb.e ] ; 4 uses
  %.2114144.ph = phi i32 [ %.0112.lcssa, %bb.d ], [ %i.dk, %bb.e ] ; 2 uses
  %.2118143.ph = phi i32 [ %.0116.lcssa, %bb.d ], [ %i.dl, %bb.e ] ; 2 uses
  %xtraiter = and i64 %.1111145.ph, 3             ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph148.prol.loopexit, label %.lr.ph148.prol

.lr.ph148.prol:                                   ; preds = %.lr.ph148.preheader, %.lr.ph148.prol
  %.3146.prol = phi ptr [ %i.do, %.lr.ph148.prol ], [ %.3146.ph, %.lr.ph148.preheader ] ; 2 uses
  %.1111145.prol = phi i64 [ %i.dn, %.lr.ph148.prol ], [ %.1111145.ph, %.lr.ph148.preheader ]
  %.2114144.prol = phi i32 [ %i.dr, %.lr.ph148.prol ], [ %.2114144.ph, %.lr.ph148.preheader ]
  %.2118143.prol = phi i32 [ %i.ds, %.lr.ph148.prol ], [ %.2118143.ph, %.lr.ph148.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph148.prol ], [ 0, %.lr.ph148.preheader ]
  %i.dn = add i64 %.1111145.prol, -1              ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.3146.prol, i64 1 ; 2 uses
  %i.dp = load i8, ptr %.3146.prol, align 1, !tbaa !9
  %i.dq = zext i8 %i.dp to i32
  %i.dr = add i32 %.2114144.prol, %i.dq           ; 4 uses
  %i.ds = add i32 %i.dr, %.2118143.prol           ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph148.prol.loopexit, label %.lr.ph148.prol, !llvm.loop !13

.lr.ph148.prol.loopexit:                          ; preds = %.lr.ph148.prol, %.lr.ph148.preheader
  %.lcssa183.unr = phi i32 [ poison, %.lr.ph148.preheader ], [ %i.dr, %.lr.ph148.prol ]
  %.lcssa.unr = phi i32 [ poison, %.lr.ph148.preheader ], [ %i.ds, %.lr.ph148.prol ]
  %.3146.unr = phi ptr [ %.3146.ph, %.lr.ph148.preheader ], [ %i.do, %.lr.ph148.prol ]
  %.1111145.unr = phi i64 [ %.1111145.ph, %.lr.ph148.preheader ], [ %i.dn, %.lr.ph148.prol ]
  %.2114144.unr = phi i32 [ %.2114144.ph, %.lr.ph148.preheader ], [ %i.dr, %.lr.ph148.prol ]
  %.2118143.unr = phi i32 [ %.2118143.ph, %.lr.ph148.preheader ], [ %i.ds, %.lr.ph148.prol ]
  %i.dt = icmp ult i64 %.1111145.ph, 4
  br i1 %i.dt, label %._crit_edge149, label %.lr.ph148

.lr.ph148:                                        ; preds = %.lr.ph148.prol.loopexit, %.lr.ph148
  %.3146 = phi ptr [ %i.ek, %.lr.ph148 ], [ %.3146.unr, %.lr.ph148.prol.loopexit ] ; 5 uses
  %.1111145 = phi i64 [ %i.ej, %.lr.ph148 ], [ %.1111145.unr, %.lr.ph148.prol.loopexit ]
  %.2114144 = phi i32 [ %i.en, %.lr.ph148 ], [ %.2114144.unr, %.lr.ph148.prol.loopexit ]
  %.2118143 = phi i32 [ %i.eo, %.lr.ph148 ], [ %.2118143.unr, %.lr.ph148.prol.loopexit ]
  %i.du = getelementptr inbounds nuw i8, ptr %.3146, i64 1
  %i.dv = load i8, ptr %.3146, align 1, !tbaa !9
  %i.dw = zext i8 %i.dv to i32
  %i.dx = add i32 %.2114144, %i.dw                ; 2 uses
  %i.dy = add i32 %i.dx, %.2118143
  %i.dz = getelementptr inbounds nuw i8, ptr %.3146, i64 2
  %i.ea = load i8, ptr %i.du, align 1, !tbaa !9
  %i.eb = zext i8 %i.ea to i32
  %i.ec = add i32 %i.dx, %i.eb                    ; 2 uses
  %i.ed = add i32 %i.ec, %i.dy
  %i.ee = getelementptr inbounds nuw i8, ptr %.3146, i64 3
  %i.ef = load i8, ptr %i.dz, align 1, !tbaa !9
  %i.eg = zext i8 %i.ef to i32
  %i.eh = add i32 %i.ec, %i.eg                    ; 2 uses
  %i.ei = add i32 %i.eh, %i.ed
  %i.ej = add i64 %.1111145, -4                   ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.3146, i64 4
  %i.el = load i8, ptr %i.ee, align 1, !tbaa !9
  %i.em = zext i8 %i.el to i32
  %i.en = add i32 %i.eh, %i.em                    ; 3 uses
  %i.eo = add i32 %i.en, %i.ei                    ; 2 uses
  %.not128.3 = icmp eq i64 %i.ej, 0
  br i1 %.not128.3, label %._crit_edge149, label %.lr.ph148, !llvm.loop !15

._crit_edge149:                                   ; preds = %.lr.ph148.prol.loopexit, %.lr.ph148, %bb.e
  %.2118.lcssa = phi i32 [ %i.dl, %bb.e ], [ %.lcssa.unr, %.lr.ph148.prol.loopexit ], [ %i.eo, %.lr.ph148 ]
  %.2114.lcssa = phi i32 [ %i.dk, %bb.e ], [ %.lcssa183.unr, %.lr.ph148.prol.loopexit ], [ %i.en, %.lr.ph148 ] ; 3 uses
  %i.ep = icmp ugt i32 %.2114.lcssa, 65520
  %i.eq = add i32 %.2114.lcssa, -65521
  %spec.select130 = select i1 %i.ep, i32 %i.eq, i32 %.2114.lcssa
  %i.er = urem i32 %.2118.lcssa, 65521
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge149, %._crit_edge
  %.3119 = phi i32 [ %i.er, %._crit_edge149 ], [ %.0116.lcssa, %._crit_edge ]
  %.4 = phi i32 [ %spec.select130, %._crit_edge149 ], [ %.0112.lcssa, %._crit_edge ]
  %i.es = shl nuw i32 %.3119, 16
  %i.et = or i32 %.4, %i.es
  ret i32 %i.et
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
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !11}
end_hunk_0
