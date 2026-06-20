inline.NumInlined: 24
inline.NumDeleted: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZN2v88internal6detail20HashConvertingTo8BitEPKtjmPKm(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 9 uses
  %i.b = load <2 x i64>, ptr %3, align 8          ; 3 uses
  %i.c = extractelement <2 x i64> %i.b, i64 0     ; 2 uses
  %i.d = xor i64 %i.c, %2
  %i.e = zext i64 %i.d to i128
  %i.f = extractelement <2 x i64> %i.b, i64 1     ; 4 uses
  %i.g = zext i64 %i.f to i128
  %i.h = mul nuw i128 %i.g, %i.e                  ; 2 uses
  %i.i = lshr i128 %i.h, 64
  %i.j = xor i128 %i.i, %i.h
  %i.k = trunc i128 %i.j to i64
  %i.l = xor i64 %i.a, %i.k
  %i.m = xor i64 %i.l, %2                         ; 6 uses
  %i.n = icmp ult i32 %1, 17
  br i1 %i.n, label %bb.b, label %bb.f, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.o = icmp samesign ugt i32 %1, 3
  br i1 %i.o, label %bb.c, label %bb.d, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.p = shl nuw nsw i64 %i.a, 1
  %i.q = getelementptr i8, ptr %0, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 -8       ; 2 uses
  %i.s = load i64, ptr %0, align 1
  %i.t = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.s, i64 0
  %i.u = bitcast <2 x i64> %i.t to <8 x i16>
  %i.v = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.u, <8 x i16> poison)
  %i.w = bitcast <16 x i8> %i.v to <2 x i64>
  %i.x = extractelement <2 x i64> %i.w, i64 0
  %i.y = shl i64 %i.x, 32
  %i.z = load i64, ptr %i.r, align 1
  %i.aa = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.z, i64 0
  %i.ab = bitcast <2 x i64> %i.aa to <8 x i16>
  %i.ac = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ab, <8 x i16> poison)
  %i.ad = bitcast <16 x i8> %i.ac to <2 x i64>
  %i.ae = extractelement <2 x i64> %i.ad, i64 0
  %i.af = or i64 %i.ae, %i.y
  %i.ag = and i64 %i.a, 24
  %i.ah = lshr i64 %i.a, 3
  %i.ai = lshr exact i64 %i.ag, %i.ah
  %i.aj = shl nuw nsw i64 %i.ai, 1                ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 1
  %i.am = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.al, i64 0
  %i.an = bitcast <2 x i64> %i.am to <8 x i16>
  %i.ao = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.an, <8 x i16> poison)
  %i.ap = bitcast <16 x i8> %i.ao to <2 x i64>
  %i.aq = extractelement <2 x i64> %i.ap, i64 0
  %i.ar = shl i64 %i.aq, 32
  %i.as = sub nsw i64 0, %i.aj
  %i.at = getelementptr inbounds i8, ptr %i.r, i64 %i.as
  %i.au = load i64, ptr %i.at, align 1
  %i.av = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.au, i64 0
  %i.aw = bitcast <2 x i64> %i.av to <8 x i16>
  %i.ax = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.aw, <8 x i16> poison)
  %i.ay = bitcast <16 x i8> %i.ax to <2 x i64>
  %i.az = extractelement <2 x i64> %i.ay, i64 0
  %i.ba = or i64 %i.az, %i.ar
  br label %_Z9rapidhashIN2v88internal23ConvertTo8BitHashReaderEEmPKhmmPKm.exit

bb.d:                                             ; preds = %bb.b
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %_Z9rapidhashIN2v88internal23ConvertTo8BitHashReaderEEmPKhmmPKm.exit, label %bb.e, !prof !6

bb.e:                                             ; preds = %bb.d
  %i.bb = load i16, ptr %0, align 2
  %i.bc = zext i16 %i.bb to i64
  %i.bd = shl i64 %i.bc, 56
  %i.be = lshr i64 %i.a, 1
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.be
  %i.bg = load i16, ptr %i.bf, align 2
  %i.bh = zext i16 %i.bg to i64
  %i.bi = shl nuw nsw i64 %i.bh, 32
  %i.bj = or disjoint i64 %i.bi, %i.bd
  %i.bk = getelementptr [2 x i8], ptr %0, i64 %i.a
  %i.bl = getelementptr i8, ptr %i.bk, i64 -2
  %i.bm = load i16, ptr %i.bl, align 2
  %i.bn = zext i16 %i.bm to i64
  %i.bo = or disjoint i64 %i.bj, %i.bn
  br label %_Z9rapidhashIN2v88internal23ConvertTo8BitHashReaderEEmPKhmmPKm.exit

bb.f:                                             ; preds = %bb.a
  %i.bp = icmp ugt i32 %1, 48
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.br = load i64, ptr %i.bq, align 8            ; 3 uses
  br i1 %i.bp, label %.preheader.preheader, label %.thread, !prof !6

.preheader.preheader:                             ; preds = %bb.f
  %i.bs = insertelement <2 x i64> poison, i64 %i.m, i64 0
  %i.bt = shufflevector <2 x i64> %i.bs, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.063.i = phi ptr [ %i.dm, %.preheader ], [ %0, %.preheader.preheader ] ; 7 uses
  %.062.i = phi i64 [ %i.dn, %.preheader ], [ %i.a, %.preheader.preheader ]
  %.0.i = phi i64 [ %i.dl, %.preheader ], [ %i.m, %.preheader.preheader ]
  %i.bu = phi <2 x i64> [ %i.ct, %.preheader ], [ %i.bt, %.preheader.preheader ]
  %i.bv = load <8 x i16>, ptr %.063.i, align 1
  %i.bw = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bv, <8 x i16> poison)
  %i.bx = bitcast <16 x i8> %i.bw to <2 x i64>
  %i.by = getelementptr inbounds nuw i8, ptr %.063.i, i64 16
  %i.bz = load <8 x i16>, ptr %i.by, align 1
  %i.ca = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bz, <8 x i16> poison)
  %i.cb = bitcast <16 x i8> %i.ca to <2 x i64>
  %i.cc = getelementptr inbounds nuw i8, ptr %.063.i, i64 32
  %i.cd = load <8 x i16>, ptr %i.cc, align 1
  %i.ce = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cd, <8 x i16> poison)
  %i.cf = bitcast <16 x i8> %i.ce to <2 x i64>
  %i.cg = getelementptr inbounds nuw i8, ptr %.063.i, i64 48
  %i.ch = load <8 x i16>, ptr %i.cg, align 1
  %i.ci = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ch, <8 x i16> poison)
  %i.cj = bitcast <16 x i8> %i.ci to <2 x i64>
  %i.ck = shufflevector <2 x i64> %i.bx, <2 x i64> %i.cf, <2 x i32> <i32 0, i32 2>
  %i.cl = xor <2 x i64> %i.ck, %i.b
  %i.cm = shufflevector <2 x i64> %i.cb, <2 x i64> %i.cj, <2 x i32> <i32 0, i32 2>
  %i.cn = xor <2 x i64> %i.cm, %i.bu
  %i.co = zext <2 x i64> %i.cl to <2 x i128>
  %i.cp = zext <2 x i64> %i.cn to <2 x i128>
  %i.cq = mul nuw <2 x i128> %i.cp, %i.co         ; 2 uses
  %i.cr = lshr <2 x i128> %i.cq, splat (i128 64)
  %i.cs = xor <2 x i128> %i.cr, %i.cq
  %i.ct = trunc <2 x i128> %i.cs to <2 x i64>     ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.063.i, i64 64
  %i.cv = load <8 x i16>, ptr %i.cu, align 1
  %i.cw = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cv, <8 x i16> poison)
  %i.cx = bitcast <16 x i8> %i.cw to <2 x i64>
  %i.cy = extractelement <2 x i64> %i.cx, i64 0
  %i.cz = xor i64 %i.cy, %i.br
  %i.da = getelementptr inbounds nuw i8, ptr %.063.i, i64 80
  %i.db = load <8 x i16>, ptr %i.da, align 1
  %i.dc = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.db, <8 x i16> poison)
  %i.dd = bitcast <16 x i8> %i.dc to <2 x i64>
  %i.de = extractelement <2 x i64> %i.dd, i64 0
  %i.df = xor i64 %i.de, %.0.i
  %i.dg = zext i64 %i.cz to i128
  %i.dh = zext i64 %i.df to i128
  %i.di = mul nuw i128 %i.dh, %i.dg               ; 2 uses
  %i.dj = lshr i128 %i.di, 64
  %i.dk = xor i128 %i.dj, %i.di
  %i.dl = trunc i128 %i.dk to i64                 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.063.i, i64 96 ; 3 uses
  %i.dn = add i64 %.062.i, -48                    ; 5 uses
  %i.do = icmp ugt i64 %i.dn, 47
  br i1 %i.do, label %.preheader, label %bb.g, !prof !5, !llvm.loop !7

bb.g:                                             ; preds = %.preheader
  %shift = shufflevector <2 x i64> %i.ct, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = xor <2 x i64> %shift, %i.ct
  %i.dp = extractelement <2 x i64> %foldExtExtBinop, i64 0
  %i.dq = xor i64 %i.dp, %i.dl                    ; 2 uses
  %i.dr = icmp samesign ugt i64 %i.dn, 16
  br i1 %i.dr, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.f, %bb.g
  %.1.i16 = phi i64 [ %i.dn, %bb.g ], [ %i.a, %bb.f ] ; 3 uses
  %.164.i14 = phi ptr [ %i.dm, %bb.g ], [ %0, %bb.f ] ; 6 uses
  %.166.i12 = phi i64 [ %i.dq, %bb.g ], [ %i.m, %bb.f ]
  %i.ds = load <8 x i16>, ptr %.164.i14, align 1
  %i.dt = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ds, <8 x i16> poison)
  %i.du = bitcast <16 x i8> %i.dt to <2 x i64>
  %i.dv = extractelement <2 x i64> %i.du, i64 0
  %i.dw = xor i64 %i.dv, %i.br
  %i.dx = getelementptr inbounds nuw i8, ptr %.164.i14, i64 16
  %i.dy = load <8 x i16>, ptr %i.dx, align 1
  %i.dz = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.dy, <8 x i16> poison)
  %i.ea = bitcast <16 x i8> %i.dz to <2 x i64>
  %i.eb = extractelement <2 x i64> %i.ea, i64 0
  %i.ec = xor i64 %.166.i12, %i.eb
  %i.ed = xor i64 %i.ec, %i.f
  %i.ee = zext i64 %i.dw to i128
  %i.ef = zext i64 %i.ed to i128
  %i.eg = mul nuw i128 %i.ef, %i.ee               ; 2 uses
  %i.eh = lshr i128 %i.eg, 64
  %i.ei = xor i128 %i.eh, %i.eg
  %i.ej = trunc i128 %i.ei to i64                 ; 2 uses
  %i.ek = icmp samesign ugt i64 %.1.i16, 32
  br i1 %i.ek, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread
  %i.el = getelementptr inbounds nuw i8, ptr %.164.i14, i64 32
  %i.em = load <8 x i16>, ptr %i.el, align 1
  %i.en = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.em, <8 x i16> poison)
  %i.eo = bitcast <16 x i8> %i.en to <2 x i64>
  %i.ep = extractelement <2 x i64> %i.eo, i64 0
  %i.eq = xor i64 %i.ep, %i.br
  %i.er = getelementptr inbounds nuw i8, ptr %.164.i14, i64 48
  %i.es = load <8 x i16>, ptr %i.er, align 1
  %i.et = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.es, <8 x i16> poison)
  %i.eu = bitcast <16 x i8> %i.et to <2 x i64>
  %i.ev = extractelement <2 x i64> %i.eu, i64 0
  %i.ew = xor i64 %i.ev, %i.ej
  %i.ex = zext i64 %i.eq to i128
  %i.ey = zext i64 %i.ew to i128
  %i.ez = mul nuw i128 %i.ey, %i.ex               ; 2 uses
  %i.fa = lshr i128 %i.ez, 64
  %i.fb = xor i128 %i.fa, %i.ez
  %i.fc = trunc i128 %i.fb to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread, %bb.g
  %.1.i15 = phi i64 [ %.1.i16, %bb.h ], [ %.1.i16, %.thread ], [ %i.dn, %bb.g ]
  %.164.i13 = phi ptr [ %.164.i14, %bb.h ], [ %.164.i14, %.thread ], [ %i.dm, %bb.g ]
  %.2.i = phi i64 [ %i.fc, %bb.h ], [ %i.ej, %.thread ], [ %i.dq, %bb.g ]
  %i.fd = shl nuw nsw i64 %.1.i15, 1
  %i.fe = getelementptr i8, ptr %.164.i13, i64 %i.fd ; 2 uses
  %i.ff = getelementptr i8, ptr %i.fe, i64 -32
  %i.fg = load <8 x i16>, ptr %i.ff, align 1
  %i.fh = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fg, <8 x i16> poison)
  %i.fi = bitcast <16 x i8> %i.fh to <2 x i64>
  %i.fj = extractelement <2 x i64> %i.fi, i64 0
  %i.fk = getelementptr i8, ptr %i.fe, i64 -16
  %i.fl = load <8 x i16>, ptr %i.fk, align 1
  %i.fm = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fl, <8 x i16> poison)
  %i.fn = bitcast <16 x i8> %i.fm to <2 x i64>
  %i.fo = extractelement <2 x i64> %i.fn, i64 0
  br label %_Z9rapidhashIN2v88internal23ConvertTo8BitHashReaderEEmPKhmmPKm.exit

_Z9rapidhashIN2v88internal23ConvertTo8BitHashReaderEEmPKhmmPKm.exit: ; preds = %bb.d, %bb.c, %bb.e, %bb.i
  %.08 = phi i64 [ %i.ba, %bb.c ], [ %i.fo, %bb.i ], [ 0, %bb.e ], [ 0, %bb.d ]
  %.0 = phi i64 [ %i.af, %bb.c ], [ %i.fj, %bb.i ], [ %i.bo, %bb.e ], [ 0, %bb.d ]
  %.3.i = phi i64 [ %i.m, %bb.c ], [ %.2.i, %bb.i ], [ %i.m, %bb.e ], [ %i.m, %bb.d ]
  %i.fp = xor i64 %.0, %i.f
  %i.fq = xor i64 %.3.i, %.08
  %i.fr = zext i64 %i.fp to i128
  %i.fs = zext i64 %i.fq to i128
  %i.ft = mul nuw i128 %i.fs, %i.fr               ; 2 uses
  %i.fu = trunc i128 %i.ft to i64
  %i.fv = lshr i128 %i.ft, 64
  %4 = trunc nuw i128 %i.fv to i64
  %5 = xor i64 %i.a, %i.fu
  %i.fw = xor i64 %5, %i.c
  %i.fx = xor i64 %i.f, %4
  %i.fy = zext i64 %i.fw to i128
  %6 = zext i64 %i.fx to i128
  %i.fz = mul nuw i128 %6, %i.fy                  ; 2 uses
  %i.ga = lshr i128 %i.fz, 64
  %i.gb = xor i128 %i.ga, %i.fz
  %i.gc = trunc i128 %i.gb to i64
  ret i64 %i.gc
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16>, <8 x i16>) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
end_hunk_0
