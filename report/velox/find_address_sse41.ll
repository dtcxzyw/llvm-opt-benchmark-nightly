begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN5boost7atomics6detail18find_address_sse41EPVKvPKS3_m(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %2, 12
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i64 @_ZN5boost7atomics6detail20find_address_genericEPVKvPKS3_m(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64
  %i.d = insertelement <2 x i64> poison, i64 %i.c, i64 0
  %i.e = shufflevector <2 x i64> %i.d, <2 x i64> poison, <2 x i32> zeroinitializer ; 15 uses
  %i.f = add i64 %2, 1                            ; 3 uses
  %i.g = and i64 %i.f, -2                         ; 2 uses
  %i.h = and i64 %i.f, -16                        ; 2 uses
  %.not163 = icmp eq i64 %i.h, 0
  br i1 %.not163, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.i = add i64 %2, -15
  %i.j = and i64 %i.i, -16
  %i.k = add nuw i64 %i.j, 16
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.0123162 = phi i64 [ %i.bm, %bb.d ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0123162 ; 8 uses
  %i.m = load <2 x i64>, ptr %i.l, align 16, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.o = load <2 x i64>, ptr %i.n, align 16, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.q = load <2 x i64>, ptr %i.p, align 16, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.s = load <2 x i64>, ptr %i.r, align 16, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.u = load <2 x i64>, ptr %i.t, align 16, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.w = load <2 x i64>, ptr %i.v, align 16, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.y = load <2 x i64>, ptr %i.x, align 16, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  %i.aa = load <2 x i64>, ptr %i.z, align 16, !tbaa !7
  %i.ab = icmp eq <2 x i64> %i.m, %i.e
  %i.ac = sext <2 x i1> %i.ab to <2 x i64>
  %i.ad = icmp eq <2 x i64> %i.o, %i.e
  %i.ae = sext <2 x i1> %i.ad to <2 x i64>
  %i.af = icmp eq <2 x i64> %i.q, %i.e
  %i.ag = sext <2 x i1> %i.af to <2 x i64>
  %i.ah = icmp eq <2 x i64> %i.s, %i.e
  %i.ai = sext <2 x i1> %i.ah to <2 x i64>
  %i.aj = icmp eq <2 x i64> %i.u, %i.e
  %i.ak = sext <2 x i1> %i.aj to <2 x i64>
  %i.al = icmp eq <2 x i64> %i.w, %i.e
  %i.am = sext <2 x i1> %i.al to <2 x i64>
  %i.an = icmp eq <2 x i64> %i.y, %i.e
  %i.ao = sext <2 x i1> %i.an to <2 x i64>
  %i.ap = icmp eq <2 x i64> %i.aa, %i.e
  %i.aq = sext <2 x i1> %i.ap to <2 x i64>
  %i.ar = bitcast <2 x i64> %i.ac to <4 x float>
  %i.as = bitcast <2 x i64> %i.ae to <4 x float>
  %i.at = shufflevector <4 x float> %i.ar, <4 x float> %i.as, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.au = bitcast <2 x i64> %i.ag to <4 x float>
  %i.av = bitcast <2 x i64> %i.ai to <4 x float>
  %i.aw = shufflevector <4 x float> %i.au, <4 x float> %i.av, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ax = bitcast <2 x i64> %i.ak to <4 x float>
  %i.ay = bitcast <2 x i64> %i.am to <4 x float>
  %i.az = shufflevector <4 x float> %i.ax, <4 x float> %i.ay, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ba = bitcast <2 x i64> %i.ao to <4 x float>
  %i.bb = bitcast <2 x i64> %i.aq to <4 x float>
  %i.bc = shufflevector <4 x float> %i.ba, <4 x float> %i.bb, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bd = bitcast <4 x float> %i.at to <4 x i32>
  %i.be = bitcast <4 x float> %i.aw to <4 x i32>
  %i.bf = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bd, <4 x i32> %i.be)
  %i.bg = bitcast <4 x float> %i.az to <4 x i32>
  %i.bh = bitcast <4 x float> %i.bc to <4 x i32>
  %i.bi = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bg, <4 x i32> %i.bh)
  %i.bj = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.bf, <8 x i16> %i.bi)
  %i.bk = icmp slt <16 x i8> %i.bj, zeroinitializer
  %i.bl = bitcast <16 x i1> %i.bk to i16          ; 2 uses
  %.not = icmp eq i16 %i.bl, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.bm = add nuw i64 %.0123162, 16               ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %i.h
  br i1 %i.bn, label %.lr.ph, label %._crit_edge, !llvm.loop !8

bb.e:                                             ; preds = %.lr.ph
  %i.bo = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bl, i1 true)
  %i.bp = zext nneg i16 %i.bo to i64
  %i.bq = or disjoint i64 %.0123162, %i.bp
  br label %bb.m

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.0123.lcssa = phi i64 [ 0, %bb.c ], [ %i.k, %bb.d ] ; 5 uses
  %i.br = sub i64 %i.f, %.0123.lcssa
  %i.bs = icmp ugt i64 %i.br, 7
  br i1 %i.bs, label %bb.f, label %bb.h

bb.f:                                             ; preds = %._crit_edge
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0123.lcssa ; 4 uses
  %i.bu = load <2 x i64>, ptr %i.bt, align 16, !tbaa !7
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bw = load <2 x i64>, ptr %i.bv, align 16, !tbaa !7
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.by = load <2 x i64>, ptr %i.bx, align 16, !tbaa !7
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %i.ca = load <2 x i64>, ptr %i.bz, align 16, !tbaa !7
  %i.cb = icmp eq <2 x i64> %i.bu, %i.e
  %i.cc = sext <2 x i1> %i.cb to <2 x i64>
  %i.cd = icmp eq <2 x i64> %i.bw, %i.e
  %i.ce = sext <2 x i1> %i.cd to <2 x i64>
  %i.cf = icmp eq <2 x i64> %i.by, %i.e
  %i.cg = sext <2 x i1> %i.cf to <2 x i64>
  %i.ch = icmp eq <2 x i64> %i.ca, %i.e
  %i.ci = sext <2 x i1> %i.ch to <2 x i64>
  %i.cj = bitcast <2 x i64> %i.cc to <4 x float>
  %i.ck = bitcast <2 x i64> %i.ce to <4 x float>
  %i.cl = shufflevector <4 x float> %i.cj, <4 x float> %i.ck, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.cm = bitcast <2 x i64> %i.cg to <4 x float>
  %i.cn = bitcast <2 x i64> %i.ci to <4 x float>
  %i.co = shufflevector <4 x float> %i.cm, <4 x float> %i.cn, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.cp = bitcast <4 x float> %i.cl to <4 x i32>
  %i.cq = bitcast <4 x float> %i.co to <4 x i32>
  %i.cr = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cp, <4 x i32> %i.cq)
  %i.cs = bitcast <8 x i16> %i.cr to <16 x i8>
  %i.ct = icmp slt <16 x i8> %i.cs, zeroinitializer
  %i.cu = bitcast <16 x i1> %i.ct to i16          ; 2 uses
  %.not136 = icmp eq i16 %i.cu, 0
  br i1 %.not136, label %.thread153, label %bb.g

.thread153:                                       ; preds = %bb.f
  %.3156 = or disjoint i64 %.0123.lcssa, 8
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cv = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cu, i1 true)
  %i.cw = lshr i16 %i.cv, 1
  %i.cx = zext nneg i16 %i.cw to i64
  %.3 = or disjoint i64 %.0123.lcssa, %i.cx
  br label %bb.m

bb.h:                                             ; preds = %.thread153, %._crit_edge
  %.4 = phi i64 [ %.3156, %.thread153 ], [ %.0123.lcssa, %._crit_edge ] ; 5 uses
  %i.cy = sub i64 %i.g, %.4
  %i.cz = icmp ugt i64 %i.cy, 3
  br i1 %i.cz, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.4 ; 2 uses
  %i.db = load <2 x i64>, ptr %i.da, align 16, !tbaa !7
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dd = load <2 x i64>, ptr %i.dc, align 16, !tbaa !7
  %i.de = icmp eq <2 x i64> %i.db, %i.e
  %i.df = sext <2 x i1> %i.de to <2 x i64>
  %i.dg = icmp eq <2 x i64> %i.dd, %i.e
  %i.dh = sext <2 x i1> %i.dg to <2 x i64>
  %i.di = bitcast <2 x i64> %i.df to <4 x float>
  %i.dj = bitcast <2 x i64> %i.dh to <4 x float>
  %i.dk = shufflevector <4 x float> %i.di, <4 x float> %i.dj, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.dl = bitcast <4 x float> %i.dk to <4 x i32>
  %i.dm = icmp slt <4 x i32> %i.dl, zeroinitializer
  %i.dn = bitcast <4 x i1> %i.dm to i4            ; 2 uses
  %.not137 = icmp eq i4 %i.dn, 0
  br i1 %.not137, label %.thread157, label %bb.j

.thread157:                                       ; preds = %bb.i
  %.5160 = add i64 %.4, 4
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.do = tail call range(i4 0, 5) i4 @llvm.cttz.i4(i4 %i.dn, i1 true)
  %i.dp = zext nneg i4 %i.do to i64
  %.5 = add i64 %.4, %i.dp
  br label %bb.m

bb.k:                                             ; preds = %.thread157, %bb.h
  %.6 = phi i64 [ %.5160, %.thread157 ], [ %.4, %bb.h ] ; 4 uses
  %i.dq = icmp ult i64 %.6, %i.g
  br i1 %i.dq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.6
  %i.ds = load <2 x i64>, ptr %i.dr, align 16, !tbaa !7
  %i.dt = icmp eq <2 x i64> %i.ds, %i.e
  %i.du = bitcast <2 x i1> %i.dt to i2
  %i.dv = tail call range(i2 0, -1) i2 @llvm.cttz.i2(i2 %i.du, i1 false)
  %i.dw = zext i2 %i.dv to i64
  %.7 = add i64 %.6, %i.dw
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.g, %bb.e, %bb.l, %bb.k, %bb.b
  %.1 = phi i64 [ %i.b, %bb.b ], [ %.3, %bb.g ], [ %i.bq, %bb.e ], [ %.7, %bb.l ], [ %.6, %bb.k ], [ %.5, %bb.j ]
  ret i64 %.1
}

declare noundef i64 @_ZN5boost7atomics6detail20find_address_genericEPVKvPKS3_m(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16>, <8 x i16>) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i4 @llvm.cttz.i4(i4, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i2 @llvm.cttz.i2(i2, i1 immarg) #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
!7 = !{!5, !5, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
end_hunk_0
