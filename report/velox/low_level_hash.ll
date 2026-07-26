inline.NumInlined: 30
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4absl12lts_2024011613hash_internal12LowLevelHashEPKvmmPKm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.prefetch.p0(ptr %0, i32 0, i32 3, i32 1)
  %i.a = load i64, ptr %3, align 8, !tbaa !7
  %i.b = xor i64 %i.a, %2                         ; 3 uses
  %i.c = icmp ugt i64 %1, 64
  br i1 %i.c, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !7
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %.079 = phi i64 [ %i.aw, %bb.b ], [ %i.b, %.preheader ] ; 2 uses
  %.076 = phi i64 [ %i.ah, %bb.b ], [ %i.b, %.preheader ] ; 2 uses
  %.071 = phi ptr [ %i.l, %bb.b ], [ %0, %.preheader ] ; 9 uses
  %.0 = phi i64 [ %i.ax, %bb.b ], [ %1, %.preheader ]
  %i.l = getelementptr inbounds nuw i8, ptr %.071, i64 64 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr nonnull %i.l, i32 0, i32 3, i32 1)
  %.0.copyload.i = load i64, ptr %.071, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %.071, i64 8
  %.0.copyload.i83 = load i64, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %.071, i64 16
  %.0.copyload.i84 = load i64, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %.071, i64 24
  %.0.copyload.i85 = load i64, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %.071, i64 32
  %.0.copyload.i86 = load i64, ptr %i.p, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %.071, i64 40
  %.0.copyload.i87 = load i64, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %.071, i64 48
  %.0.copyload.i88 = load i64, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %.071, i64 56
  %.0.copyload.i89 = load i64, ptr %i.s, align 1
  %i.t = xor i64 %i.e, %.0.copyload.i
  %i.u = xor i64 %.0.copyload.i83, %.076
  %i.v = zext i64 %i.t to i128
  %i.w = zext i64 %i.u to i128
  %i.x = mul nuw i128 %i.v, %i.w                  ; 2 uses
  %i.y = xor i64 %i.g, %.0.copyload.i84
  %i.z = xor i64 %.0.copyload.i85, %.076
  %i.aa = zext i64 %i.y to i128
  %i.ab = zext i64 %i.z to i128
  %i.ac = mul nuw i128 %i.aa, %i.ab               ; 2 uses
  %i.ad = xor i128 %i.ac, %i.x
  %i.ae = lshr i128 %i.ad, 64
  %i.af = xor i128 %i.x, %i.ae
  %i.ag = xor i128 %i.af, %i.ac
  %i.ah = trunc i128 %i.ag to i64                 ; 2 uses
  %i.ai = xor i64 %i.i, %.0.copyload.i86
  %i.aj = xor i64 %.0.copyload.i87, %.079
  %i.ak = zext i64 %i.ai to i128
  %i.al = zext i64 %i.aj to i128
  %i.am = mul nuw i128 %i.ak, %i.al               ; 2 uses
  %i.an = xor i64 %i.k, %.0.copyload.i88
  %i.ao = xor i64 %.0.copyload.i89, %.079
  %i.ap = zext i64 %i.an to i128
  %i.aq = zext i64 %i.ao to i128
  %i.ar = mul nuw i128 %i.ap, %i.aq               ; 2 uses
  %i.as = xor i128 %i.ar, %i.am
  %i.at = lshr i128 %i.as, 64
  %i.au = xor i128 %i.am, %i.at
  %i.av = xor i128 %i.au, %i.ar
  %i.aw = trunc i128 %i.av to i64                 ; 2 uses
  %i.ax = add i64 %.0, -64                        ; 3 uses
  %i.ay = icmp ugt i64 %i.ax, 64
  br i1 %i.ay, label %bb.b, label %bb.c, !llvm.loop !9

bb.c:                                             ; preds = %bb.b
  %i.az = xor i64 %i.aw, %i.ah
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.177 = phi i64 [ %i.az, %bb.c ], [ %i.b, %bb.a ] ; 3 uses
  %.172 = phi ptr [ %i.l, %bb.c ], [ %0, %bb.a ]  ; 5 uses
  %.1 = phi i64 [ %i.ax, %bb.c ], [ %1, %bb.a ]   ; 5 uses
  %i.ba = icmp samesign ugt i64 %.1, 16
  br i1 %i.ba, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !7  ; 3 uses
  %i.bd = add nsw i64 %.1, -17                    ; 2 uses
  %i.be = and i64 %i.bd, 16
  %lcmp.mod.not.not = icmp eq i64 %i.be, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %.0.copyload.i90.prol = load i64, ptr %.172, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %.172, i64 8
  %.0.copyload.i91.prol = load i64, ptr %i.bf, align 1
  %i.bg = xor i64 %i.bc, %.0.copyload.i90.prol
  %i.bh = xor i64 %.0.copyload.i91.prol, %.177
  %i.bi = zext i64 %i.bg to i128
  %i.bj = zext i64 %i.bh to i128
  %i.bk = mul nuw i128 %i.bi, %i.bj               ; 2 uses
  %i.bl = lshr i128 %i.bk, 64
  %i.bm = xor i128 %i.bl, %i.bk
  %i.bn = trunc i128 %i.bm to i64                 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.172, i64 16 ; 2 uses
  %i.bp = add nsw i64 %.1, -16                    ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.2101.unr = phi i64 [ %.1, %.lr.ph ], [ %i.bp, %.prol.loopexit.unr-lcssa ]
  %.273100.unr = phi ptr [ %.172, %.lr.ph ], [ %i.bo, %.prol.loopexit.unr-lcssa ]
  %.27899.unr = phi i64 [ %.177, %.lr.ph ], [ %i.bn, %.prol.loopexit.unr-lcssa ]
  %.lcssa127.unr = phi i64 [ poison, %.lr.ph ], [ %i.bn, %.prol.loopexit.unr-lcssa ]
  %.lcssa126.unr = phi ptr [ poison, %.lr.ph ], [ %i.bo, %.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi i64 [ poison, %.lr.ph ], [ %i.bp, %.prol.loopexit.unr-lcssa ]
  %i.bq = icmp ult i64 %i.bd, 16
  br i1 %i.bq, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.2101 = phi i64 [ %i.cl, %.lr.ph.new ], [ %.2101.unr, %.prol.loopexit ]
  %.273100 = phi ptr [ %i.ck, %.lr.ph.new ], [ %.273100.unr, %.prol.loopexit ] ; 5 uses
  %.27899 = phi i64 [ %i.cj, %.lr.ph.new ], [ %.27899.unr, %.prol.loopexit ]
  %.0.copyload.i90 = load i64, ptr %.273100, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %.273100, i64 8
  %.0.copyload.i91 = load i64, ptr %i.br, align 1
  %i.bs = xor i64 %i.bc, %.0.copyload.i90
  %i.bt = xor i64 %.0.copyload.i91, %.27899
  %i.bu = zext i64 %i.bs to i128
  %i.bv = zext i64 %i.bt to i128
  %i.bw = mul nuw i128 %i.bu, %i.bv               ; 2 uses
  %i.bx = lshr i128 %i.bw, 64
  %i.by = xor i128 %i.bx, %i.bw
  %i.bz = trunc i128 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %.273100, i64 16
  %.0.copyload.i90.1 = load i64, ptr %i.ca, align 1
  %i.cb = getelementptr inbounds nuw i8, ptr %.273100, i64 24
  %.0.copyload.i91.1 = load i64, ptr %i.cb, align 1
  %i.cc = xor i64 %i.bc, %.0.copyload.i90.1
  %i.cd = xor i64 %.0.copyload.i91.1, %i.bz
  %i.ce = zext i64 %i.cc to i128
  %i.cf = zext i64 %i.cd to i128
  %i.cg = mul nuw i128 %i.ce, %i.cf               ; 2 uses
  %i.ch = lshr i128 %i.cg, 64
  %i.ci = xor i128 %i.ch, %i.cg
  %i.cj = trunc i128 %i.ci to i64                 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.273100, i64 32 ; 2 uses
  %i.cl = add nsw i64 %.2101, -32                 ; 3 uses
  %i.cm = icmp ugt i64 %i.cl, 16
  br i1 %i.cm, label %.lr.ph.new, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %bb.d
  %.278.lcssa = phi i64 [ %.177, %bb.d ], [ %.lcssa127.unr, %.prol.loopexit ], [ %i.cj, %.lr.ph.new ]
  %.273.lcssa = phi ptr [ %.172, %bb.d ], [ %.lcssa126.unr, %.prol.loopexit ], [ %i.ck, %.lr.ph.new ] ; 7 uses
  %.2.lcssa = phi i64 [ %.1, %bb.d ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.cl, %.lr.ph.new ] ; 7 uses
  %i.cn = icmp samesign ugt i64 %.2.lcssa, 8
  br i1 %i.cn, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %.0.copyload.i92 = load i64, ptr %.273.lcssa, align 1
  %i.co = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 %.2.lcssa
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -8
  %.0.copyload.i93 = load i64, ptr %i.cp, align 1
  br label %bb.j

bb.f:                                             ; preds = %._crit_edge
  %i.cq = icmp samesign ugt i64 %.2.lcssa, 3
  br i1 %i.cq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.0.copyload.i94 = load i32, ptr %.273.lcssa, align 1
  %i.cr = zext i32 %.0.copyload.i94 to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 %.2.lcssa
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 -4
  %.0.copyload.i95 = load i32, ptr %i.ct, align 1
  %i.cu = zext i32 %.0.copyload.i95 to i64
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %.not = icmp eq i64 %.2.lcssa, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cv = load i8, ptr %.273.lcssa, align 1, !tbaa !12
  %i.cw = zext i8 %i.cv to i64
  %i.cx = shl nuw nsw i64 %i.cw, 16
  %i.cy = lshr i64 %.2.lcssa, 1
  %i.cz = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !12
  %i.db = zext i8 %i.da to i64
  %i.dc = shl nuw nsw i64 %i.db, 8
  %i.dd = or disjoint i64 %i.dc, %i.cx
  %i.de = getelementptr i8, ptr %.273.lcssa, i64 %.2.lcssa
  %i.df = getelementptr i8, ptr %i.de, i64 -1
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !12
  %i.dh = zext i8 %i.dg to i64
  %i.di = or disjoint i64 %i.dd, %i.dh
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.i, %bb.e
  %.075 = phi i64 [ %.0.copyload.i92, %bb.e ], [ %i.cr, %bb.g ], [ %i.di, %bb.i ], [ 0, %bb.h ]
  %.074 = phi i64 [ %.0.copyload.i93, %bb.e ], [ %i.cu, %bb.g ], [ 0, %bb.i ], [ 0, %bb.h ]
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !7  ; 2 uses
  %i.dl = xor i64 %i.dk, %.075
  %i.dm = xor i64 %.074, %.278.lcssa
  %i.dn = zext i64 %i.dl to i128
  %i.do = zext i64 %i.dm to i128
  %i.dp = mul nuw i128 %i.dn, %i.do               ; 2 uses
  %i.dq = lshr i128 %i.dp, 64
  %i.dr = xor i64 %i.dk, %1
  %.masked = and i128 %i.dp, 18446744073709551615
  %i.ds = xor i128 %i.dq, %.masked
  %i.dt = zext i64 %i.dr to i128
  %i.du = mul nuw i128 %i.ds, %i.dt               ; 2 uses
  %i.dv = lshr i128 %i.du, 64
  %i.dw = xor i128 %i.dv, %i.du
  %i.dx = trunc i128 %i.dw to i64
  ret i64 %i.dx
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !5, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = !{!5, !5, i64 0}
end_hunk_0
