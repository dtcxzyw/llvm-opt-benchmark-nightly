loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define hidden double @SDL_uclibc_sqrt(double noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = bitcast double %0 to i64                 ; 3 uses
  %.sroa.01.4.extract.shift = lshr i64 %i.a, 32   ; 2 uses
  %.sroa.01.4.extract.trunc = trunc nuw i64 %.sroa.01.4.extract.shift to i32 ; 6 uses
  %.sroa.01.0.extract.trunc = trunc i64 %i.a to i32 ; 4 uses
  %i.b = and i32 %.sroa.01.4.extract.trunc, 2146435072
  %i.c = icmp eq i32 %i.b, 2146435072
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call double @llvm.fmuladd.f64(double %0, double %0, double %0)
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %.sroa.01.4.extract.trunc, 1
  br i1 %i.e, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.f = and i32 %.sroa.01.4.extract.trunc, 2147483647
  %i.g = or i32 %i.f, %.sroa.01.0.extract.trunc
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.s, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = icmp slt i64 %i.a, 0
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = fsub double %0, %0                       ; 2 uses
  %i.k = fdiv double %i.j, %i.j
  br label %bb.s

bb.g:                                             ; preds = %bb.e, %bb.c
  %i.l = ashr i32 %.sroa.01.4.extract.trunc, 20   ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.preheader162, label %bb.h

.preheader162:                                    ; preds = %bb.g
  %i.n = icmp eq i64 %.sroa.01.4.extract.shift, 0
  br i1 %i.n, label %.lr.ph, label %.preheader161

.preheader161.loopexit:                           ; preds = %.lr.ph
  %1 = add nsw i32 %.0132163, -20
  br label %.preheader161

.preheader161:                                    ; preds = %.preheader161.loopexit, %.preheader162
  %.0143.lcssa = phi i32 [ %.sroa.01.4.extract.trunc, %.preheader162 ], [ %i.p, %.preheader161.loopexit ] ; 3 uses
  %.0132.lcssa = phi i32 [ 1, %.preheader162 ], [ %1, %.preheader161.loopexit ]
  %.0124.lcssa = phi i32 [ %.sroa.01.0.extract.trunc, %.preheader162 ], [ %i.q, %.preheader161.loopexit ] ; 2 uses
  %i.o = icmp ult i32 %.0143.lcssa, 1048576
  br i1 %i.o, label %.lr.ph169, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader162, %.lr.ph
  %.0124164 = phi i32 [ %i.q, %.lr.ph ], [ %.sroa.01.0.extract.trunc, %.preheader162 ] ; 2 uses
  %.0132163 = phi i32 [ %2, %.lr.ph ], [ 0, %.preheader162 ] ; 2 uses
  %2 = add nsw i32 %.0132163, -21
  %i.p = lshr i32 %.0124164, 11                   ; 2 uses
  %i.q = shl i32 %.0124164, 21                    ; 2 uses
  %i.r = icmp eq i32 %i.p, 0
  br i1 %i.r, label %.lr.ph, label %.preheader161.loopexit, !llvm.loop !3

.lr.ph169:                                        ; preds = %.preheader161, %.lr.ph169
  %.0131168 = phi i32 [ %i.t, %.lr.ph169 ], [ 0, %.preheader161 ]
  %.1144167 = phi i32 [ %i.s, %.lr.ph169 ], [ %.0143.lcssa, %.preheader161 ] ; 2 uses
  %i.s = shl i32 %.1144167, 1                     ; 2 uses
  %i.t = add nuw nsw i32 %.0131168, 1             ; 2 uses
  %i.u = and i32 %.1144167, 524288
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.lr.ph169, label %._crit_edge, !llvm.loop !5

._crit_edge:                                      ; preds = %.lr.ph169, %.preheader161
  %.1144.lcssa = phi i32 [ %.0143.lcssa, %.preheader161 ], [ %i.s, %.lr.ph169 ]
  %.0131.lcssa = phi i32 [ 0, %.preheader161 ], [ %i.t, %.lr.ph169 ] ; 3 uses
  %i.w = sub i32 %.0132.lcssa, %.0131.lcssa
  %i.x = sub nsw i32 32, %.0131.lcssa
  %i.y = lshr i32 %.0124.lcssa, %i.x
  %i.z = or i32 %i.y, %.1144.lcssa
  %i.aa = shl i32 %.0124.lcssa, %.0131.lcssa
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g
  %.2145 = phi i32 [ %i.z, %._crit_edge ], [ %.sroa.01.4.extract.trunc, %bb.g ]
  %.1133 = phi i32 [ %i.w, %._crit_edge ], [ %i.l, %bb.g ]
  %.1125 = phi i32 [ %i.aa, %._crit_edge ], [ %.sroa.01.0.extract.trunc, %bb.g ] ; 3 uses
  %i.ab = add nsw i32 %.1133, -1023               ; 2 uses
  %i.ac = and i32 %.2145, 1048575
  %i.ad = or disjoint i32 %i.ac, 1048576          ; 2 uses
  %i.ae = and i32 %i.ab, 1
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %.preheader, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = tail call i32 @llvm.fshl.i32(i32 %i.ad, i32 %.1125, i32 1)
  %i.ag = shl i32 %.1125, 1
  br label %.preheader

.preheader:                                       ; preds = %bb.i, %bb.h
  %.3146 = phi i32 [ %i.af, %bb.i ], [ %i.ad, %bb.h ]
  %.2126 = phi i32 [ %i.ag, %bb.i ], [ %.1125, %bb.h ] ; 24 uses
  %i.ah = tail call i32 @llvm.fshl.i32(i32 %.3146, i32 %.2126, i32 1) ; 2 uses
  %.3172 = shl i32 %.2126, 1
  %.not159 = icmp slt i32 %i.ah, 2097152          ; 2 uses
  %i.ai = select i1 %.not159, i32 0, i32 2097152  ; 2 uses
  %.5148 = sub nsw i32 %i.ah, %i.ai
  %.1139 = select i1 %.not159, i32 0, i32 4194304 ; 3 uses
  %i.aj = tail call i32 @llvm.fshl.i32(i32 %.5148, i32 %.3172, i32 1) ; 2 uses
  %.3 = shl i32 %.2126, 2
  %i.ak = or disjoint i32 %.1139, 1048576         ; 2 uses
  %.not159.1 = icmp sgt i32 %i.ak, %i.aj          ; 3 uses
  %i.al = or disjoint i32 %.1139, 2097152
  %i.am = select i1 %.not159.1, i32 0, i32 %i.ak
  %.5148.1 = sub nsw i32 %i.aj, %i.am
  %.1139.1 = select i1 %.not159.1, i32 %.1139, i32 %i.al ; 3 uses
  %i.an = tail call i32 @llvm.fshl.i32(i32 %.5148.1, i32 %.3, i32 1) ; 2 uses
  %.3.1 = shl i32 %.2126, 3
  %i.ao = or disjoint i32 %.1139.1, 524288        ; 2 uses
  %.not159.2 = icmp sgt i32 %i.ao, %i.an          ; 3 uses
  %i.ap = or disjoint i32 %.1139.1, 1048576
  %i.aq = select i1 %.not159.2, i32 0, i32 %i.ao
  %.5148.2 = sub nsw i32 %i.an, %i.aq
  %.1139.2 = select i1 %.not159.2, i32 %.1139.1, i32 %i.ap ; 3 uses
  %i.ar = tail call i32 @llvm.fshl.i32(i32 %.5148.2, i32 %.3.1, i32 1) ; 2 uses
  %.3.2 = shl i32 %.2126, 4
  %i.as = or disjoint i32 %.1139.2, 262144        ; 2 uses
  %.not159.3 = icmp sgt i32 %i.as, %i.ar          ; 3 uses
  %i.at = or disjoint i32 %.1139.2, 524288
  %i.au = select i1 %.not159.3, i32 0, i32 %i.as
  %.5148.3 = sub nsw i32 %i.ar, %i.au
  %.1139.3 = select i1 %.not159.3, i32 %.1139.2, i32 %i.at ; 3 uses
  %i.av = tail call i32 @llvm.fshl.i32(i32 %.5148.3, i32 %.3.2, i32 1) ; 2 uses
  %.3.3 = shl i32 %.2126, 5
  %i.aw = add nuw nsw i32 %.1139.3, 131072        ; 2 uses
  %.not159.4 = icmp sgt i32 %i.aw, %i.av          ; 3 uses
  %i.ax = add nuw nsw i32 %.1139.3, 262144
  %i.ay = select i1 %.not159.4, i32 0, i32 %i.aw
  %.5148.4 = sub nsw i32 %i.av, %i.ay
  %.1139.4 = select i1 %.not159.4, i32 %.1139.3, i32 %i.ax ; 3 uses
  %i.az = tail call i32 @llvm.fshl.i32(i32 %.5148.4, i32 %.3.3, i32 1) ; 2 uses
  %.3.4 = shl i32 %.2126, 6
  %i.ba = add nuw nsw i32 %.1139.4, 65536         ; 2 uses
  %.not159.5 = icmp sgt i32 %i.ba, %i.az          ; 3 uses
  %i.bb = add nuw nsw i32 %.1139.4, 131072
  %i.bc = select i1 %.not159.5, i32 0, i32 %i.ba
  %.5148.5 = sub nsw i32 %i.az, %i.bc
  %.1139.5 = select i1 %.not159.5, i32 %.1139.4, i32 %i.bb ; 3 uses
  %i.bd = tail call i32 @llvm.fshl.i32(i32 %.5148.5, i32 %.3.4, i32 1) ; 2 uses
  %.3.5 = shl i32 %.2126, 7
  %i.be = add nuw nsw i32 %.1139.5, 32768         ; 2 uses
  %.not159.6 = icmp sgt i32 %i.be, %i.bd          ; 3 uses
  %i.bf = add nuw nsw i32 %.1139.5, 65536
  %i.bg = select i1 %.not159.6, i32 0, i32 %i.be
  %.5148.6 = sub nsw i32 %i.bd, %i.bg
  %.1139.6 = select i1 %.not159.6, i32 %.1139.5, i32 %i.bf ; 3 uses
  %i.bh = tail call i32 @llvm.fshl.i32(i32 %.5148.6, i32 %.3.5, i32 1) ; 2 uses
  %.3.6 = shl i32 %.2126, 8
  %i.bi = add nuw nsw i32 %.1139.6, 16384         ; 2 uses
  %.not159.7 = icmp sgt i32 %i.bi, %i.bh          ; 3 uses
  %i.bj = add nuw nsw i32 %.1139.6, 32768
  %i.bk = select i1 %.not159.7, i32 0, i32 %i.bi
  %.5148.7 = sub nsw i32 %i.bh, %i.bk
  %.1139.7 = select i1 %.not159.7, i32 %.1139.6, i32 %i.bj ; 3 uses
  %i.bl = tail call i32 @llvm.fshl.i32(i32 %.5148.7, i32 %.3.6, i32 1) ; 2 uses
  %.3.7 = shl i32 %.2126, 9
  %i.bm = add nuw nsw i32 %.1139.7, 8192          ; 2 uses
  %.not159.8 = icmp sgt i32 %i.bm, %i.bl          ; 3 uses
  %i.bn = add nuw nsw i32 %.1139.7, 16384
  %i.bo = select i1 %.not159.8, i32 0, i32 %i.bm
  %.5148.8 = sub nsw i32 %i.bl, %i.bo
  %.1139.8 = select i1 %.not159.8, i32 %.1139.7, i32 %i.bn ; 3 uses
  %i.bp = tail call i32 @llvm.fshl.i32(i32 %.5148.8, i32 %.3.7, i32 1) ; 2 uses
  %.3.8 = shl i32 %.2126, 10
  %i.bq = add nuw nsw i32 %.1139.8, 4096          ; 2 uses
  %.not159.9 = icmp sgt i32 %i.bq, %i.bp          ; 3 uses
  %i.br = add nuw nsw i32 %.1139.8, 8192
  %i.bs = select i1 %.not159.9, i32 0, i32 %i.bq
  %.5148.9 = sub nsw i32 %i.bp, %i.bs
  %.1139.9 = select i1 %.not159.9, i32 %.1139.8, i32 %i.br ; 3 uses
  %i.bt = tail call i32 @llvm.fshl.i32(i32 %.5148.9, i32 %.3.8, i32 1) ; 2 uses
  %.3.9 = shl i32 %.2126, 11
  %i.bu = add nuw nsw i32 %.1139.9, 2048          ; 2 uses
  %.not159.10 = icmp sgt i32 %i.bu, %i.bt         ; 3 uses
  %i.bv = add nuw nsw i32 %.1139.9, 4096
  %i.bw = select i1 %.not159.10, i32 0, i32 %i.bu
  %.5148.10 = sub nsw i32 %i.bt, %i.bw
  %.1139.10 = select i1 %.not159.10, i32 %.1139.9, i32 %i.bv ; 3 uses
  %i.bx = tail call i32 @llvm.fshl.i32(i32 %.5148.10, i32 %.3.9, i32 1) ; 2 uses
  %.3.10 = shl i32 %.2126, 12
  %i.by = add nuw nsw i32 %.1139.10, 1024         ; 2 uses
  %.not159.11 = icmp sgt i32 %i.by, %i.bx         ; 3 uses
  %i.bz = add nuw nsw i32 %.1139.10, 2048
  %i.ca = select i1 %.not159.11, i32 0, i32 %i.by
  %.5148.11 = sub nsw i32 %i.bx, %i.ca
  %.1139.11 = select i1 %.not159.11, i32 %.1139.10, i32 %i.bz ; 3 uses
  %i.cb = tail call i32 @llvm.fshl.i32(i32 %.5148.11, i32 %.3.10, i32 1) ; 2 uses
  %.3.11 = shl i32 %.2126, 13
  %i.cc = add nuw nsw i32 %.1139.11, 512          ; 2 uses
  %.not159.12 = icmp sgt i32 %i.cc, %i.cb         ; 3 uses
  %i.cd = add nuw nsw i32 %.1139.11, 1024
  %i.ce = select i1 %.not159.12, i32 0, i32 %i.cc
  %.5148.12 = sub nsw i32 %i.cb, %i.ce
  %.1139.12 = select i1 %.not159.12, i32 %.1139.11, i32 %i.cd ; 3 uses
  %i.cf = tail call i32 @llvm.fshl.i32(i32 %.5148.12, i32 %.3.11, i32 1) ; 2 uses
  %.3.12 = shl i32 %.2126, 14
  %i.cg = add nuw nsw i32 %.1139.12, 256          ; 2 uses
  %.not159.13 = icmp sgt i32 %i.cg, %i.cf         ; 3 uses
  %i.ch = add nuw nsw i32 %.1139.12, 512
  %i.ci = select i1 %.not159.13, i32 0, i32 %i.cg
  %.5148.13 = sub nsw i32 %i.cf, %i.ci
  %.1139.13 = select i1 %.not159.13, i32 %.1139.12, i32 %i.ch ; 3 uses
  %i.cj = tail call i32 @llvm.fshl.i32(i32 %.5148.13, i32 %.3.12, i32 1) ; 2 uses
  %.3.13 = shl i32 %.2126, 15
  %i.ck = add nuw nsw i32 %.1139.13, 128          ; 2 uses
  %.not159.14 = icmp sgt i32 %i.ck, %i.cj         ; 3 uses
  %i.cl = add nuw nsw i32 %.1139.13, 256
  %i.cm = select i1 %.not159.14, i32 0, i32 %i.ck
  %.5148.14 = sub nsw i32 %i.cj, %i.cm
  %.1139.14 = select i1 %.not159.14, i32 %.1139.13, i32 %i.cl ; 3 uses
  %i.cn = tail call i32 @llvm.fshl.i32(i32 %.5148.14, i32 %.3.13, i32 1) ; 2 uses
  %.3.14 = shl i32 %.2126, 16
  %i.co = add nuw nsw i32 %.1139.14, 64           ; 2 uses
  %.not159.15 = icmp sgt i32 %i.co, %i.cn         ; 3 uses
  %i.cp = add nuw nsw i32 %.1139.14, 128
  %i.cq = select i1 %.not159.15, i32 0, i32 %i.co
  %.5148.15 = sub nsw i32 %i.cn, %i.cq
  %.1139.15 = select i1 %.not159.15, i32 %.1139.14, i32 %i.cp ; 3 uses
  %i.cr = tail call i32 @llvm.fshl.i32(i32 %.5148.15, i32 %.3.14, i32 1) ; 2 uses
  %.3.15 = shl i32 %.2126, 17
  %i.cs = add nuw nsw i32 %.1139.15, 32           ; 2 uses
  %.not159.16 = icmp sgt i32 %i.cs, %i.cr         ; 3 uses
  %i.ct = add nuw nsw i32 %.1139.15, 64
  %i.cu = select i1 %.not159.16, i32 0, i32 %i.cs
  %.5148.16 = sub nsw i32 %i.cr, %i.cu
  %.1139.16 = select i1 %.not159.16, i32 %.1139.15, i32 %i.ct ; 3 uses
  %i.cv = tail call i32 @llvm.fshl.i32(i32 %.5148.16, i32 %.3.15, i32 1) ; 2 uses
  %.3.16 = shl i32 %.2126, 18
  %i.cw = add nuw nsw i32 %.1139.16, 16           ; 2 uses
  %.not159.17 = icmp sgt i32 %i.cw, %i.cv         ; 3 uses
  %i.cx = add nuw nsw i32 %.1139.16, 32
  %i.cy = select i1 %.not159.17, i32 0, i32 %i.cw
  %.5148.17 = sub nsw i32 %i.cv, %i.cy
  %.1139.17 = select i1 %.not159.17, i32 %.1139.16, i32 %i.cx ; 3 uses
  %i.cz = tail call i32 @llvm.fshl.i32(i32 %.5148.17, i32 %.3.16, i32 1) ; 2 uses
  %.3.17 = shl i32 %.2126, 19
  %i.da = add nuw nsw i32 %.1139.17, 8            ; 2 uses
  %.not159.18 = icmp sgt i32 %i.da, %i.cz         ; 3 uses
  %i.db = add nuw nsw i32 %.1139.17, 16
  %i.dc = select i1 %.not159.18, i32 0, i32 %i.da
  %.5148.18 = sub nsw i32 %i.cz, %i.dc
  %.1139.18 = select i1 %.not159.18, i32 %.1139.17, i32 %i.db ; 3 uses
  %i.dd = tail call i32 @llvm.fshl.i32(i32 %.5148.18, i32 %.3.17, i32 1) ; 2 uses
  %.3.18 = shl i32 %.2126, 20
  %i.de = add nuw nsw i32 %.1139.18, 4            ; 2 uses
  %.not159.19 = icmp sgt i32 %i.de, %i.dd         ; 3 uses
  %i.df = add nuw nsw i32 %.1139.18, 8
  %i.dg = select i1 %.not159.19, i32 0, i32 %i.de
  %.5148.19 = sub nsw i32 %i.dd, %i.dg
  %.1139.19 = select i1 %.not159.19, i32 %.1139.18, i32 %i.df ; 3 uses
  %i.dh = tail call i32 @llvm.fshl.i32(i32 %.5148.19, i32 %.3.18, i32 1) ; 2 uses
  %.3.19 = shl i32 %.2126, 21
  %i.di = add nuw nsw i32 %.1139.19, 2            ; 2 uses
end_hunk_0
