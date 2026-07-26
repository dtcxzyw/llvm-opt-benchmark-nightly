begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN5boost7atomics6detail17find_address_sse2EPVKvPKS3_m(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %2, 12
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i64 @_ZN5boost7atomics6detail20find_address_genericEPVKvPKS3_m(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64
  %i.d = insertelement <2 x i64> poison, i64 %i.c, i64 0
  %i.e = shufflevector <2 x i64> %i.d, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.f = add i64 %2, 1                            ; 3 uses
  %i.g = and i64 %i.f, -2                         ; 2 uses
  %i.h = and i64 %i.f, -16                        ; 2 uses
  %.not194 = icmp eq i64 %i.h, 0
  br i1 %.not194, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.i = bitcast <2 x i64> %i.e to <4 x i32>      ; 8 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %.0154193 = phi i64 [ 0, %.lr.ph ], [ %i.ca, %bb.e ] ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0154193 ; 8 uses
  %i.k = load <4 x i32>, ptr %i.j, align 16, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.m = load <4 x i32>, ptr %i.l, align 16, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.o = load <4 x i32>, ptr %i.n, align 16, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.q = load <4 x i32>, ptr %i.p, align 16, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.s = load <4 x i32>, ptr %i.r, align 16, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.u = load <4 x i32>, ptr %i.t, align 16, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.w = load <4 x i32>, ptr %i.v, align 16, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %i.y = load <4 x i32>, ptr %i.x, align 16, !tbaa !7
  %i.z = icmp eq <4 x i32> %i.k, %i.i
  %i.aa = sext <4 x i1> %i.z to <4 x i32>
  %i.ab = icmp eq <4 x i32> %i.m, %i.i
  %i.ac = sext <4 x i1> %i.ab to <4 x i32>
  %i.ad = icmp eq <4 x i32> %i.o, %i.i
  %i.ae = sext <4 x i1> %i.ad to <4 x i32>
  %i.af = icmp eq <4 x i32> %i.q, %i.i
  %i.ag = sext <4 x i1> %i.af to <4 x i32>
  %i.ah = icmp eq <4 x i32> %i.s, %i.i
  %i.ai = sext <4 x i1> %i.ah to <4 x i32>
  %i.aj = icmp eq <4 x i32> %i.u, %i.i
  %i.ak = sext <4 x i1> %i.aj to <4 x i32>
  %i.al = icmp eq <4 x i32> %i.w, %i.i
  %i.am = sext <4 x i1> %i.al to <4 x i32>
  %i.an = icmp eq <4 x i32> %i.y, %i.i
  %i.ao = sext <4 x i1> %i.an to <4 x i32>
  %i.ap = bitcast <4 x i32> %i.aa to <4 x float>  ; 2 uses
  %i.aq = bitcast <4 x i32> %i.ac to <4 x float>  ; 2 uses
  %i.ar = shufflevector <4 x float> %i.ap, <4 x float> %i.aq, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.as = bitcast <4 x float> %i.ar to <2 x i64>
  %i.at = shufflevector <4 x float> %i.ap, <4 x float> %i.aq, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.au = bitcast <4 x float> %i.at to <2 x i64>
  %i.av = bitcast <4 x i32> %i.ae to <4 x float>  ; 2 uses
  %i.aw = bitcast <4 x i32> %i.ag to <4 x float>  ; 2 uses
  %i.ax = shufflevector <4 x float> %i.av, <4 x float> %i.aw, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ay = bitcast <4 x float> %i.ax to <2 x i64>
  %i.az = shufflevector <4 x float> %i.av, <4 x float> %i.aw, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ba = bitcast <4 x float> %i.az to <2 x i64>
  %i.bb = bitcast <4 x i32> %i.ai to <4 x float>  ; 2 uses
  %i.bc = bitcast <4 x i32> %i.ak to <4 x float>  ; 2 uses
  %i.bd = shufflevector <4 x float> %i.bb, <4 x float> %i.bc, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.be = bitcast <4 x float> %i.bd to <2 x i64>
  %i.bf = shufflevector <4 x float> %i.bb, <4 x float> %i.bc, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bg = bitcast <4 x float> %i.bf to <2 x i64>
  %i.bh = bitcast <4 x i32> %i.am to <4 x float>  ; 2 uses
  %i.bi = bitcast <4 x i32> %i.ao to <4 x float>  ; 2 uses
  %i.bj = shufflevector <4 x float> %i.bh, <4 x float> %i.bi, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bk = bitcast <4 x float> %i.bj to <2 x i64>
  %i.bl = shufflevector <4 x float> %i.bh, <4 x float> %i.bi, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bm = bitcast <4 x float> %i.bl to <2 x i64>
  %i.bn = tail call noundef <2 x i64> asm "vpand $1, $0, $0\0A\09", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x i64> %i.au, <2 x i64> %i.as) #4, !srcloc !8
  %i.bo = tail call noundef <2 x i64> asm "vpand $1, $0, $0\0A\09", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x i64> %i.ba, <2 x i64> %i.ay) #4, !srcloc !8
  %i.bp = tail call noundef <2 x i64> asm "vpand $1, $0, $0\0A\09", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x i64> %i.bg, <2 x i64> %i.be) #4, !srcloc !8
  %i.bq = tail call noundef <2 x i64> asm "vpand $1, $0, $0\0A\09", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x i64> %i.bm, <2 x i64> %i.bk) #4, !srcloc !8
  %i.br = bitcast <2 x i64> %i.bn to <4 x i32>
  %i.bs = bitcast <2 x i64> %i.bo to <4 x i32>
  %i.bt = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.br, <4 x i32> %i.bs)
  %i.bu = bitcast <2 x i64> %i.bp to <4 x i32>
  %i.bv = bitcast <2 x i64> %i.bq to <4 x i32>
  %i.bw = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bu, <4 x i32> %i.bv)
  %i.bx = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.bt, <8 x i16> %i.bw)
  %i.by = icmp slt <16 x i8> %i.bx, zeroinitializer
  %i.bz = bitcast <16 x i1> %i.by to i16          ; 2 uses
  %.not = icmp eq i16 %i.bz, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ca = add nuw i64 %.0154193, 16               ; 3 uses
  %i.cb = icmp ult i64 %i.ca, %i.h
  br i1 %i.cb, label %bb.d, label %._crit_edge, !llvm.loop !9

bb.f:                                             ; preds = %bb.d
  %i.cc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bz, i1 true)
  %i.cd = zext nneg i16 %i.cc to i64
  %i.ce = or disjoint i64 %.0154193, %i.cd
  br label %bb.n

._crit_edge:                                      ; preds = %bb.e, %bb.c
  %.0154.lcssa = phi i64 [ 0, %bb.c ], [ %i.ca, %bb.e ] ; 5 uses
  %i.cf = sub i64 %i.f, %.0154.lcssa
  %i.cg = icmp ugt i64 %i.cf, 7
  br i1 %i.cg, label %bb.g, label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0154.lcssa ; 4 uses
  %i.ci = load <4 x i32>, ptr %i.ch, align 16, !tbaa !7
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.ck = load <4 x i32>, ptr %i.cj, align 16, !tbaa !7
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.cm = load <4 x i32>, ptr %i.cl, align 16, !tbaa !7
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  %i.co = load <4 x i32>, ptr %i.cn, align 16, !tbaa !7
  %i.cp = bitcast <2 x i64> %i.e to <4 x i32>     ; 4 uses
  %i.cq = icmp eq <4 x i32> %i.ci, %i.cp
  %i.cr = sext <4 x i1> %i.cq to <4 x i32>
  %i.cs = icmp eq <4 x i32> %i.ck, %i.cp
  %i.ct = sext <4 x i1> %i.cs to <4 x i32>
  %i.cu = icmp eq <4 x i32> %i.cm, %i.cp
  %i.cv = sext <4 x i1> %i.cu to <4 x i32>
  %i.cw = icmp eq <4 x i32> %i.co, %i.cp
  %i.cx = sext <4 x i1> %i.cw to <4 x i32>
  %i.cy = bitcast <4 x i32> %i.cr to <4 x float>  ; 2 uses
  %i.cz = bitcast <4 x i32> %i.ct to <4 x float>  ; 2 uses
  %i.da = shufflevector <4 x float> %i.cy, <4 x float> %i.cz, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.db = bitcast <4 x float> %i.da to <2 x i64>
  %i.dc = shufflevector <4 x float> %i.cy, <4 x float> %i.cz, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.dd = bitcast <4 x float> %i.dc to <2 x i64>
  %i.de = bitcast <4 x i32> %i.cv to <4 x float>  ; 2 uses
  %i.df = bitcast <4 x i32> %i.cx to <4 x float>  ; 2 uses
  %i.dg = shufflevector <4 x float> %i.de, <4 x float> %i.df, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.dh = bitcast <4 x float> %i.dg to <2 x i64>
  %i.di = shufflevector <4 x float> %i.de, <4 x float> %i.df, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.dj = bitcast <4 x float> %i.di to <2 x i64>
  %i.dk = tail call noundef <2 x i64> asm "vpand $1, $0, $0\0A\09", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x i64> %i.dd, <2 x i64> %i.db) #4, !srcloc !8
  %i.dl = tail call noundef <2 x i64> asm "vpand $1, $0, $0\0A\09", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x i64> %i.dj, <2 x i64> %i.dh) #4, !srcloc !8
  %i.dm = bitcast <2 x i64> %i.dk to <4 x i32>
  %i.dn = bitcast <2 x i64> %i.dl to <4 x i32>
  %i.do = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.dm, <4 x i32> %i.dn)
  %i.dp = bitcast <8 x i16> %i.do to <16 x i8>
  %i.dq = icmp slt <16 x i8> %i.dp, zeroinitializer
  %i.dr = bitcast <16 x i1> %i.dq to i16          ; 2 uses
  %.not167 = icmp eq i16 %i.dr, 0
  br i1 %.not167, label %.thread184, label %bb.h

.thread184:                                       ; preds = %bb.g
  %.3187 = or disjoint i64 %.0154.lcssa, 8
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ds = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.dr, i1 true)
  %i.dt = lshr i16 %i.ds, 1
  %i.du = zext nneg i16 %i.dt to i64
  %.3 = or disjoint i64 %.0154.lcssa, %i.du
  br label %bb.n

bb.i:                                             ; preds = %.thread184, %._crit_edge
  %.4 = phi i64 [ %.3187, %.thread184 ], [ %.0154.lcssa, %._crit_edge ] ; 5 uses
  %i.dv = sub i64 %i.g, %.4
  %i.dw = icmp ugt i64 %i.dv, 3
  br i1 %i.dw, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.4 ; 2 uses
  %i.dy = load <4 x i32>, ptr %i.dx, align 16, !tbaa !7
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.ea = load <4 x i32>, ptr %i.dz, align 16, !tbaa !7
  %i.eb = bitcast <2 x i64> %i.e to <4 x i32>     ; 2 uses
  %i.ec = icmp eq <4 x i32> %i.dy, %i.eb
  %i.ed = sext <4 x i1> %i.ec to <4 x i32>
  %i.ee = icmp eq <4 x i32> %i.ea, %i.eb
  %i.ef = sext <4 x i1> %i.ee to <4 x i32>
  %i.eg = bitcast <4 x i32> %i.ed to <4 x float>  ; 2 uses
  %i.eh = bitcast <4 x i32> %i.ef to <4 x float>  ; 2 uses
  %i.ei = shufflevector <4 x float> %i.eg, <4 x float> %i.eh, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ej = bitcast <4 x float> %i.ei to <2 x i64>
  %i.ek = shufflevector <4 x float> %i.eg, <4 x float> %i.eh, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.el = bitcast <4 x float> %i.ek to <2 x i64>
  %i.em = tail call noundef <2 x i64> asm "vpand $1, $0, $0\0A\09", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x i64> %i.el, <2 x i64> %i.ej) #4, !srcloc !8
  %i.en = bitcast <2 x i64> %i.em to <4 x i32>
  %i.eo = icmp slt <4 x i32> %i.en, zeroinitializer
  %i.ep = bitcast <4 x i1> %i.eo to i4            ; 2 uses
  %.not168 = icmp eq i4 %i.ep, 0
  br i1 %.not168, label %.thread188, label %bb.k

.thread188:                                       ; preds = %bb.j
  %.5191 = add i64 %.4, 4
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.eq = tail call range(i4 0, 5) i4 @llvm.cttz.i4(i4 %i.ep, i1 true)
  %i.er = zext nneg i4 %i.eq to i64
  %.5 = add i64 %.4, %i.er
  br label %bb.n

bb.l:                                             ; preds = %.thread188, %bb.i
  %.6 = phi i64 [ %.5191, %.thread188 ], [ %.4, %bb.i ] ; 4 uses
  %i.es = icmp ult i64 %.6, %i.g
  br i1 %i.es, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.6
  %i.eu = load <4 x i32>, ptr %i.et, align 16, !tbaa !7
  %i.ev = bitcast <2 x i64> %i.e to <4 x i32>
  %i.ew = icmp eq <4 x i32> %i.eu, %i.ev
  %i.ex = sext <4 x i1> %i.ew to <4 x i32>        ; 2 uses
  %i.ey = bitcast <4 x i32> %i.ex to <2 x i64>
  %i.ez = shufflevector <4 x i32> %i.ex, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.fa = bitcast <4 x i32> %i.ez to <2 x i64>
  %i.fb = tail call noundef <2 x i64> asm "vpand $1, $0, $0\0A\09", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x i64> %i.ey, <2 x i64> %i.fa) #4, !srcloc !8
  %i.fc = icmp slt <2 x i64> %i.fb, zeroinitializer
  %i.fd = bitcast <2 x i1> %i.fc to i2
  %i.fe = tail call range(i2 0, -1) i2 @llvm.cttz.i2(i2 %i.fd, i1 false)
  %i.ff = zext i2 %i.fe to i64
  %.7 = add nuw i64 %.6, %i.ff
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.h, %bb.f, %bb.m, %bb.l, %bb.b
  %.1 = phi i64 [ %i.b, %bb.b ], [ %.3, %bb.h ], [ %i.ce, %bb.f ], [ %.7, %bb.m ], [ %.6, %bb.l ], [ %.5, %bb.k ]
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
attributes #4 = { nounwind memory(none) }

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
!8 = !{i64 2425, i64 2444}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
end_hunk_0
