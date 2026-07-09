inline.NumInlined: 356
inline.NumDeleted: 79
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 37
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.arrow::util::TempVectorHolder" = type { ptr, ptr, i32, i32 }
%"class.arrow::util::TempVectorHolder.0" = type { ptr, ptr, i32, i32 }
%"class.arrow::Status" = type { ptr }
%"struct.arrow::compute::LightContext" = type { i64, ptr }
%"class.arrow::util::TempVectorHolder.9" = type { ptr, ptr, i32, i32 }

$_ZN5arrow7compute9Hashing3213HashVarLenImpIjLb1EEEvjPKT_PKhPj = comdat any

$_ZN5arrow7compute9Hashing3213HashVarLenImpIjLb0EEEvjPKT_PKhPj = comdat any

$_ZN5arrow7compute9Hashing3213HashVarLenImpImLb1EEEvjPKT_PKhPj = comdat any

$_ZN5arrow7compute9Hashing3213HashVarLenImpImLb0EEEvjPKT_PKhPj = comdat any

$_ZN5arrow7compute9Hashing3215HashFixedLenImpILb1EEEvjmPKhPj = comdat any

$_ZN5arrow7compute9Hashing3215HashFixedLenImpILb0EEEvjmPKhPj = comdat any

$_ZN5arrow4util16TempVectorHolderIjED2Ev = comdat any

$_ZN5arrow4util16TempVectorHolderItED2Ev = comdat any

$_ZN5arrow7compute9Hashing6413HashVarLenImpIjLb1EEEvjPKT_PKhPm = comdat any

$_ZN5arrow7compute9Hashing6413HashVarLenImpIjLb0EEEvjPKT_PKhPm = comdat any

$_ZN5arrow7compute9Hashing6413HashVarLenImpImLb1EEEvjPKT_PKhPm = comdat any

$_ZN5arrow7compute9Hashing6413HashVarLenImpImLb0EEEvjPKT_PKhPm = comdat any

$_ZN5arrow7compute9Hashing6415HashFixedLenImpILb1EEEvjmPKhPm = comdat any

$_ZN5arrow7compute9Hashing6415HashFixedLenImpILb0EEEvjmPKhPm = comdat any

$_ZN5arrow4util16TempVectorHolderImED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZZN5arrow7compute9Hashing3210StripeMaskEiPjS2_S2_S2_E5bytes = comdat any

$_ZZN5arrow7compute9Hashing6410StripeMaskEiPmS2_S2_S2_E5bytes = comdat any

@_ZZN5arrow7compute9Hashing3210StripeMaskEiPjS2_S2_S2_E5bytes = linkonce_odr local_unnamed_addr constant [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0], comdat, align 16
@_ZZN5arrow7compute9Hashing6410StripeMaskEiPmS2_S2_S2_E5bytes = linkonce_odr local_unnamed_addr constant [8 x i64] [i64 -1, i64 -1, i64 -1, i64 -1, i64 0, i64 0, i64 0, i64 0], comdat, align 16

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute9Hashing3210HashVarLenElbjPKjPKhPjS6_(i64 noundef %0, i1 noundef zeroext %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef readnone captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow7compute9Hashing3213HashVarLenImpIjLb1EEEvjPKT_PKhPj(i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN5arrow7compute9Hashing3213HashVarLenImpIjLb0EEEvjPKT_PKhPj(i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute9Hashing3213HashVarLenImpIjLb1EEEvjPKT_PKhPj(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 7 uses
  %.not158 = icmp eq i32 %0, 0
  br i1 %.not158, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = zext i32 %0 to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.0159 = phi i32 [ %0, %.lr.ph ], [ %i.j, %bb.c ] ; 4 uses
  %i.e = zext i32 %.0159 to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3
  %i.h = sub i32 %i.d, %i.g
  %i.i = icmp ult i32 %i.h, 16
  br i1 %i.i, label %bb.c, label %_ZN5arrow8bit_util7CeilDivEll.exit.preheader

bb.c:                                             ; preds = %bb.b
  %i.j = add i32 %.0159, -1                       ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !7

_ZN5arrow8bit_util7CeilDivEll.exit.preheader:     ; preds = %bb.b
  %wide.trip.count = zext i32 %.0159 to i64
  br label %_ZN5arrow8bit_util7CeilDivEll.exit

._crit_edge:                                      ; preds = %bb.c, %bb.d, %bb.a
  %.0.lcssa189 = phi i32 [ %.0159, %bb.d ], [ 0, %bb.a ], [ 0, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = icmp ult i32 %.0.lcssa189, %0
  br i1 %i.k, label %_ZN5arrow8bit_util7CeilDivEll.exit75.lr.ph, label %._crit_edge164

_ZN5arrow8bit_util7CeilDivEll.exit75.lr.ph:       ; preds = %._crit_edge
  %i.l = zext i32 %.0.lcssa189 to i64
  %wide.trip.count181 = zext i32 %0 to i64
  %.4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.12..12..12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %_ZN5arrow8bit_util7CeilDivEll.exit75

_ZN5arrow8bit_util7CeilDivEll.exit:               ; preds = %_ZN5arrow8bit_util7CeilDivEll.exit.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %_ZN5arrow8bit_util7CeilDivEll.exit.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.n = load i32, ptr %i.m, align 4, !tbaa !3    ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3    ; 4 uses
  %i.q = sub i32 %i.n, %i.p                       ; 2 uses
  %i.r = icmp ne i32 %i.n, %i.p                   ; 3 uses
  %i.s = icmp eq i32 %i.n, %i.p
  %.lhs.trunc = add i32 %i.q, -1
  %i.t = lshr i32 %.lhs.trunc, 4
  %narrow144 = add nuw nsw i32 %i.t, 1
  %narrow145 = select i1 %i.s, i32 0, i32 %narrow144
  %i.u = zext nneg i32 %narrow145 to i64
  %not.71 = xor i1 %i.r, true
  %i.v = zext i1 %not.71 to i64
  %i.w = add nuw nsw i64 %i.u, %i.v               ; 4 uses
  %.neg167 = sext i1 %i.r to i32
  %i.x = add i32 %i.q, %.neg167
  %i.y = and i32 %i.x, 15
  %.neg150 = select i1 %i.r, i32 15, i32 16
  %i.z = sub nuw nsw i32 %.neg150, %i.y
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @_ZZN5arrow7compute9Hashing3210StripeMaskEiPjS2_S2_S2_E5bytes, i64 %i.aa ; 4 uses
  %.0.copyload.i.i = load i32, ptr %i.ab, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %.0.copyload.i9.i = load i32, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.0.copyload.i10.i = load i32, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %.0.copyload.i11.i = load i32, ptr %i.ae, align 1
  %i.af = zext i32 %i.p to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %i.af ; 2 uses
  %i.ah = icmp samesign ugt i64 %i.w, 1
  br i1 %i.ah, label %.lr.ph.preheader.i, label %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit

.lr.ph.preheader.i:                               ; preds = %_ZN5arrow8bit_util7CeilDivEll.exit
  %i.ai = add nsw i64 %i.w, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.035.i = phi i32 [ %i.ar, %.lr.ph.i ], [ 606290984, %.lr.ph.preheader.i ]
  %.02434.i = phi i32 [ %i.av, %.lr.ph.i ], [ -2048144777, %.lr.ph.preheader.i ]
  %.02533.i = phi i32 [ %i.az, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %.02632.i = phi i32 [ %i.bd, %.lr.ph.i ], [ 1640531535, %.lr.ph.preheader.i ]
  %.02731.i = phi i64 [ %i.be, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.aj = shl nuw nsw i64 %.02731.i, 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj ; 4 uses
  %.0.copyload.i.i73 = load i32, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %.0.copyload.i28.i = load i32, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.0.copyload.i29.i = load i32, ptr %i.am, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %.0.copyload.i30.i = load i32, ptr %i.an, align 1
  %i.ao = mul i32 %.0.copyload.i.i73, -2048144777
  %i.ap = add i32 %i.ao, %.035.i                  ; 2 uses
  %i.aq = tail call i32 @llvm.fshl.i32(i32 %i.ap, i32 %i.ap, i32 13)
  %i.ar = mul i32 %i.aq, -1640531535              ; 2 uses
  %i.as = mul i32 %.0.copyload.i28.i, -2048144777
  %i.at = add i32 %i.as, %.02434.i                ; 2 uses
  %i.au = tail call i32 @llvm.fshl.i32(i32 %i.at, i32 %i.at, i32 13)
  %i.av = mul i32 %i.au, -1640531535              ; 2 uses
  %i.aw = mul i32 %.0.copyload.i29.i, -2048144777
  %i.ax = add i32 %i.aw, %.02533.i                ; 2 uses
  %i.ay = tail call i32 @llvm.fshl.i32(i32 %i.ax, i32 %i.ax, i32 13)
  %i.az = mul i32 %i.ay, -1640531535              ; 2 uses
  %i.ba = mul i32 %.0.copyload.i30.i, -2048144777
  %i.bb = add i32 %i.ba, %.02632.i                ; 2 uses
  %i.bc = tail call i32 @llvm.fshl.i32(i32 %i.bb, i32 %i.bb, i32 13)
  %i.bd = mul i32 %i.bc, -1640531535              ; 2 uses
  %i.be = add nuw nsw i64 %.02731.i, 1
  %exitcond.not.i = icmp eq i64 %.02731.i, %i.ai
  br i1 %exitcond.not.i, label %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit.thread, label %.lr.ph.i, !llvm.loop !9

_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit: ; preds = %_ZN5arrow8bit_util7CeilDivEll.exit
  %.not72 = icmp eq i64 %i.w, 0
  br i1 %.not72, label %bb.d, label %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit.thread

_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit.thread: ; preds = %.lr.ph.i, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit
  %.0.lcssa.i140 = phi i32 [ 606290984, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit ], [ %i.ar, %.lr.ph.i ]
  %.024.lcssa.i139 = phi i32 [ -2048144777, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit ], [ %i.av, %.lr.ph.i ]
  %.025.lcssa.i138 = phi i32 [ 0, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit ], [ %i.az, %.lr.ph.i ]
  %.026.lcssa.i137 = phi i32 [ 1640531535, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit ], [ %i.bd, %.lr.ph.i ]
  %i.bf = shl nuw nsw i64 %i.w, 4
  %i.bg = getelementptr i8, ptr %i.ag, i64 %i.bf  ; 4 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 -16
  %.0.copyload.i.i74 = load i32, ptr %i.bh, align 1
  %i.bi = getelementptr i8, ptr %i.bg, i64 -12
  %.0.copyload.i23.i = load i32, ptr %i.bi, align 1
  %i.bj = getelementptr i8, ptr %i.bg, i64 -8
  %.0.copyload.i24.i = load i32, ptr %i.bj, align 1
  %i.bk = getelementptr i8, ptr %i.bg, i64 -4
  %.0.copyload.i25.i = load i32, ptr %i.bk, align 1
  %i.bl = and i32 %.0.copyload.i.i74, %.0.copyload.i.i
  %i.bm = and i32 %.0.copyload.i23.i, %.0.copyload.i9.i
  %i.bn = and i32 %.0.copyload.i24.i, %.0.copyload.i10.i
  %i.bo = and i32 %.0.copyload.i25.i, %.0.copyload.i11.i
  %i.bp = mul i32 %i.bl, -2048144777
  %i.bq = add i32 %i.bp, %.0.lcssa.i140           ; 2 uses
  %i.br = tail call i32 @llvm.fshl.i32(i32 %i.bq, i32 %i.bq, i32 13)
  %i.bs = mul i32 %i.br, -1640531535              ; 2 uses
  %i.bt = mul i32 %i.bm, -2048144777
  %i.bu = add i32 %i.bt, %.024.lcssa.i139         ; 2 uses
  %i.bv = tail call i32 @llvm.fshl.i32(i32 %i.bu, i32 %i.bu, i32 13)
  %i.bw = mul i32 %i.bv, -1640531535              ; 2 uses
  %i.bx = mul i32 %i.bn, -2048144777
  %i.by = add i32 %i.bx, %.025.lcssa.i138         ; 2 uses
  %i.bz = tail call i32 @llvm.fshl.i32(i32 %i.by, i32 %i.by, i32 13)
  %i.ca = mul i32 %i.bz, -1640531535              ; 2 uses
  %i.cb = mul i32 %i.bo, -2048144777
  %i.cc = add i32 %i.cb, %.026.lcssa.i137         ; 2 uses
  %i.cd = tail call i32 @llvm.fshl.i32(i32 %i.cc, i32 %i.cc, i32 13)
  %i.ce = mul i32 %i.cd, -1640531535              ; 2 uses
  %i.cf = tail call i32 @llvm.fshl.i32(i32 %i.bs, i32 %i.bs, i32 1)
  %i.cg = tail call i32 @llvm.fshl.i32(i32 %i.bw, i32 %i.bw, i32 7)
  %i.ch = add i32 %i.cg, %i.cf
  %i.ci = tail call i32 @llvm.fshl.i32(i32 %i.ca, i32 %i.ca, i32 12)
  %i.cj = add i32 %i.ch, %i.ci
  %i.ck = tail call i32 @llvm.fshl.i32(i32 %i.ce, i32 %i.ce, i32 18)
  %i.cl = add i32 %i.cj, %i.ck
  br label %bb.d

bb.d:                                             ; preds = %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit.thread, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit
  %i.cm = phi i32 [ 1466518324, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit ], [ %i.cl, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit.thread ] ; 2 uses
  %i.cn = lshr i32 %i.cm, 15
  %i.co = xor i32 %i.cn, %i.cm
  %i.cp = mul i32 %i.co, -2048144777              ; 2 uses
  %i.cq = lshr i32 %i.cp, 13
  %i.cr = xor i32 %i.cq, %i.cp
  %i.cs = mul i32 %i.cr, -1028477379              ; 2 uses
  %i.ct = lshr i32 %i.cs, 16
  %i.cu = xor i32 %i.ct, %i.cs
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3  ; 3 uses
  %i.cx = shl i32 %i.cw, 6
  %i.cy = lshr i32 %i.cw, 2
  %i.cz = add i32 %i.cx, -1640531527
  %i.da = add i32 %i.cz, %i.cy
  %i.db = add i32 %i.da, %i.cu
  %i.dc = xor i32 %i.db, %i.cw
  store i32 %i.dc, ptr %i.cv, align 4, !tbaa !3
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %_ZN5arrow8bit_util7CeilDivEll.exit, !llvm.loop !10

._crit_edge164:                                   ; preds = %bb.h, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_ZN5arrow8bit_util7CeilDivEll.exit75:             ; preds = %_ZN5arrow8bit_util7CeilDivEll.exit75.lr.ph, %bb.h
  %indvars.iv178 = phi i64 [ %i.l, %_ZN5arrow8bit_util7CeilDivEll.exit75.lr.ph ], [ %indvars.iv.next179, %bb.h ] ; 3 uses
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 1 ; 3 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next179
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !3  ; 3 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv178
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !3  ; 4 uses
  %i.dh = sub i32 %i.de, %i.dg                    ; 3 uses
  %i.di = zext i32 %i.dh to i64
  %i.dj = icmp ne i32 %i.de, %i.dg                ; 3 uses
  %i.dk = icmp eq i32 %i.de, %i.dg                ; 2 uses
  %.lhs.trunc141 = add i32 %i.dh, -1
  %i.dl = lshr i32 %.lhs.trunc141, 4
  %narrow = add nuw nsw i32 %i.dl, 1
  %narrow143 = select i1 %i.dk, i32 0, i32 %narrow
  %i.dm = zext nneg i32 %narrow143 to i64
  %not. = xor i1 %i.dj, true
  %i.dn = zext i1 %not. to i64
  %i.do = add nuw nsw i64 %i.dm, %i.dn            ; 4 uses
  %.neg169 = sext i1 %i.dj to i32
  %i.dp = add i32 %i.dh, %.neg169
  %i.dq = and i32 %i.dp, 15
  %.neg147 = select i1 %i.dj, i32 15, i32 16
  %i.dr = sub nuw nsw i32 %.neg147, %i.dq
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr @_ZZN5arrow7compute9Hashing3210StripeMaskEiPjS2_S2_S2_E5bytes, i64 %i.ds ; 4 uses
  %.0.copyload.i.i76 = load i32, ptr %i.dt, align 1
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %.0.copyload.i9.i77 = load i32, ptr %i.du, align 1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %.0.copyload.i10.i78 = load i32, ptr %i.dv, align 1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  %.0.copyload.i11.i79 = load i32, ptr %i.dw, align 1
  %i.dx = zext i32 %i.dg to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 %i.dx ; 2 uses
  %i.dz = icmp samesign ugt i64 %i.do, 1
  br i1 %i.dz, label %.lr.ph.preheader.i84, label %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit96

.lr.ph.preheader.i84:                             ; preds = %_ZN5arrow8bit_util7CeilDivEll.exit75
  %i.ea = add nsw i64 %i.do, -2
  br label %.lr.ph.i85

.lr.ph.i85:                                       ; preds = %.lr.ph.i85, %.lr.ph.preheader.i84
  %.035.i86 = phi i32 [ %i.ej, %.lr.ph.i85 ], [ 606290984, %.lr.ph.preheader.i84 ]
  %.02434.i87 = phi i32 [ %i.en, %.lr.ph.i85 ], [ -2048144777, %.lr.ph.preheader.i84 ]
  %.02533.i88 = phi i32 [ %i.er, %.lr.ph.i85 ], [ 0, %.lr.ph.preheader.i84 ]
  %.02632.i89 = phi i32 [ %i.ev, %.lr.ph.i85 ], [ 1640531535, %.lr.ph.preheader.i84 ]
  %.02731.i90 = phi i64 [ %i.ew, %.lr.ph.i85 ], [ 0, %.lr.ph.preheader.i84 ] ; 3 uses
  %i.eb = shl nuw nsw i64 %.02731.i90, 4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.eb ; 4 uses
  %.0.copyload.i.i91 = load i32, ptr %i.ec, align 1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %.0.copyload.i28.i92 = load i32, ptr %i.ed, align 1
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %.0.copyload.i29.i93 = load i32, ptr %i.ee, align 1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  %.0.copyload.i30.i94 = load i32, ptr %i.ef, align 1
  %i.eg = mul i32 %.0.copyload.i.i91, -2048144777
  %i.eh = add i32 %i.eg, %.035.i86                ; 2 uses
  %i.ei = tail call i32 @llvm.fshl.i32(i32 %i.eh, i32 %i.eh, i32 13)
  %i.ej = mul i32 %i.ei, -1640531535              ; 2 uses
  %i.ek = mul i32 %.0.copyload.i28.i92, -2048144777
  %i.el = add i32 %i.ek, %.02434.i87              ; 2 uses
  %i.em = tail call i32 @llvm.fshl.i32(i32 %i.el, i32 %i.el, i32 13)
  %i.en = mul i32 %i.em, -1640531535              ; 2 uses
  %i.eo = mul i32 %.0.copyload.i29.i93, -2048144777
  %i.ep = add i32 %i.eo, %.02533.i88              ; 2 uses
  %i.eq = tail call i32 @llvm.fshl.i32(i32 %i.ep, i32 %i.ep, i32 13)
  %i.er = mul i32 %i.eq, -1640531535              ; 2 uses
  %i.es = mul i32 %.0.copyload.i30.i94, -2048144777
  %i.et = add i32 %i.es, %.02632.i89              ; 2 uses
  %i.eu = tail call i32 @llvm.fshl.i32(i32 %i.et, i32 %i.et, i32 13)
  %i.ev = mul i32 %i.eu, -1640531535              ; 2 uses
  %i.ew = add nuw nsw i64 %.02731.i90, 1
  %exitcond.not.i95 = icmp eq i64 %.02731.i90, %i.ea
  br i1 %exitcond.not.i95, label %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit96, label %.lr.ph.i85, !llvm.loop !9

_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit96: ; preds = %.lr.ph.i85, %_ZN5arrow8bit_util7CeilDivEll.exit75
  %.026.lcssa.i80 = phi i32 [ 1640531535, %_ZN5arrow8bit_util7CeilDivEll.exit75 ], [ %i.ev, %.lr.ph.i85 ] ; 2 uses
  %.025.lcssa.i81 = phi i32 [ 0, %_ZN5arrow8bit_util7CeilDivEll.exit75 ], [ %i.er, %.lr.ph.i85 ] ; 2 uses
  %.024.lcssa.i82 = phi i32 [ -2048144777, %_ZN5arrow8bit_util7CeilDivEll.exit75 ], [ %i.en, %.lr.ph.i85 ] ; 2 uses
  %.0.lcssa.i83 = phi i32 [ 606290984, %_ZN5arrow8bit_util7CeilDivEll.exit75 ], [ %i.ej, %.lr.ph.i85 ] ; 2 uses
  br i1 %i.dk, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit96
  %i.ex = shl nuw nsw i64 %i.do, 4
  %i.ey = add nsw i64 %i.ex, -16                  ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.ey
  %i.fa = sub nsw i64 %i.di, %i.ey
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.ez, i64 %i.fa, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit96
  %.not69 = icmp eq i64 %i.do, 0
  br i1 %.not69, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.0..0..0..0.copyload.i.i97 = load i32, ptr %i.a, align 16
  %.4..4..4..0.copyload.i23.i98 = load i32, ptr %.4..4..4..sroa_idx, align 4
  %.8..8..8..0.copyload.i24.i99 = load i32, ptr %.8..8..8..sroa_idx, align 8
  %.12..12..12..0.copyload.i25.i100 = load i32, ptr %.12..12..12..sroa_idx, align 4
  %i.fb = and i32 %.0..0..0..0.copyload.i.i97, %.0.copyload.i.i76
  %i.fc = and i32 %.4..4..4..0.copyload.i23.i98, %.0.copyload.i9.i77
  %i.fd = and i32 %.8..8..8..0.copyload.i24.i99, %.0.copyload.i10.i78
  %i.fe = and i32 %.12..12..12..0.copyload.i25.i100, %.0.copyload.i11.i79
  %i.ff = mul i32 %i.fb, -2048144777
  %i.fg = add i32 %i.ff, %.0.lcssa.i83            ; 2 uses
  %i.fh = tail call i32 @llvm.fshl.i32(i32 %i.fg, i32 %i.fg, i32 13)
  %i.fi = mul i32 %i.fh, -1640531535
  %i.fj = mul i32 %i.fc, -2048144777
  %i.fk = add i32 %i.fj, %.024.lcssa.i82          ; 2 uses
  %i.fl = tail call i32 @llvm.fshl.i32(i32 %i.fk, i32 %i.fk, i32 13)
  %i.fm = mul i32 %i.fl, -1640531535
  %i.fn = mul i32 %i.fd, -2048144777
  %i.fo = add i32 %i.fn, %.025.lcssa.i81          ; 2 uses
  %i.fp = tail call i32 @llvm.fshl.i32(i32 %i.fo, i32 %i.fo, i32 13)
  %i.fq = mul i32 %i.fp, -1640531535
  %i.fr = mul i32 %i.fe, -2048144777
  %i.fs = add i32 %i.fr, %.026.lcssa.i80          ; 2 uses
  %i.ft = tail call i32 @llvm.fshl.i32(i32 %i.fs, i32 %i.fs, i32 13)
  %i.fu = mul i32 %i.ft, -1640531535
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0127 = phi i32 [ %.0.lcssa.i83, %bb.f ], [ %i.fi, %bb.g ] ; 2 uses
  %.0126 = phi i32 [ %.024.lcssa.i82, %bb.f ], [ %i.fm, %bb.g ] ; 2 uses
  %.0125 = phi i32 [ %.025.lcssa.i81, %bb.f ], [ %i.fq, %bb.g ] ; 2 uses
  %.0124 = phi i32 [ %.026.lcssa.i80, %bb.f ], [ %i.fu, %bb.g ] ; 2 uses
  %i.fv = tail call i32 @llvm.fshl.i32(i32 %.0127, i32 %.0127, i32 1)
  %i.fw = tail call i32 @llvm.fshl.i32(i32 %.0126, i32 %.0126, i32 7)
  %i.fx = add i32 %i.fw, %i.fv
  %i.fy = tail call i32 @llvm.fshl.i32(i32 %.0125, i32 %.0125, i32 12)
  %i.fz = add i32 %i.fx, %i.fy
  %i.ga = tail call i32 @llvm.fshl.i32(i32 %.0124, i32 %.0124, i32 18)
  %i.gb = add i32 %i.fz, %i.ga                    ; 2 uses
  %i.gc = lshr i32 %i.gb, 15
  %i.gd = xor i32 %i.gc, %i.gb
  %i.ge = mul i32 %i.gd, -2048144777              ; 2 uses
  %i.gf = lshr i32 %i.ge, 13
  %i.gg = xor i32 %i.gf, %i.ge
  %i.gh = mul i32 %i.gg, -1028477379              ; 2 uses
  %i.gi = lshr i32 %i.gh, 16
  %i.gj = xor i32 %i.gi, %i.gh
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv178 ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !3  ; 3 uses
  %i.gm = shl i32 %i.gl, 6
  %i.gn = lshr i32 %i.gl, 2
  %i.go = add i32 %i.gm, -1640531527
  %i.gp = add i32 %i.go, %i.gn
  %i.gq = add i32 %i.gp, %i.gj
  %i.gr = xor i32 %i.gq, %i.gl
  store i32 %i.gr, ptr %i.gk, align 4, !tbaa !3
  %exitcond182.not = icmp eq i64 %indvars.iv.next179, %wide.trip.count181
  br i1 %exitcond182.not, label %._crit_edge164, label %_ZN5arrow8bit_util7CeilDivEll.exit75, !llvm.loop !11
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute9Hashing3213HashVarLenImpIjLb0EEEvjPKT_PKhPj(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 7 uses
  %.not154 = icmp eq i32 %0, 0
  br i1 %.not154, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = zext i32 %0 to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.0155 = phi i32 [ %0, %.lr.ph ], [ %i.j, %bb.c ] ; 4 uses
  %i.e = zext i32 %.0155 to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3
  %i.h = sub i32 %i.d, %i.g
  %i.i = icmp ult i32 %i.h, 16
  br i1 %i.i, label %bb.c, label %_ZN5arrow8bit_util7CeilDivEll.exit.preheader

bb.c:                                             ; preds = %bb.b
  %i.j = add i32 %.0155, -1                       ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !12

_ZN5arrow8bit_util7CeilDivEll.exit.preheader:     ; preds = %bb.b
  %wide.trip.count = zext i32 %.0155 to i64
  br label %_ZN5arrow8bit_util7CeilDivEll.exit

._crit_edge:                                      ; preds = %bb.c, %bb.d, %bb.a
  %.0.lcssa185 = phi i32 [ %.0155, %bb.d ], [ 0, %bb.a ], [ 0, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = icmp ult i32 %.0.lcssa185, %0
  br i1 %i.k, label %_ZN5arrow8bit_util7CeilDivEll.exit71.lr.ph, label %._crit_edge160

_ZN5arrow8bit_util7CeilDivEll.exit71.lr.ph:       ; preds = %._crit_edge
  %i.l = zext i32 %.0.lcssa185 to i64
  %wide.trip.count177 = zext i32 %0 to i64
  %.4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.12..12..12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %_ZN5arrow8bit_util7CeilDivEll.exit71

_ZN5arrow8bit_util7CeilDivEll.exit:               ; preds = %_ZN5arrow8bit_util7CeilDivEll.exit.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %_ZN5arrow8bit_util7CeilDivEll.exit.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.n = load i32, ptr %i.m, align 4, !tbaa !3    ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3    ; 4 uses
  %i.q = sub i32 %i.n, %i.p                       ; 2 uses
  %i.r = icmp ne i32 %i.n, %i.p                   ; 3 uses
  %i.s = icmp eq i32 %i.n, %i.p
  %.lhs.trunc = add i32 %i.q, -1
  %i.t = lshr i32 %.lhs.trunc, 4
  %narrow140 = add nuw nsw i32 %i.t, 1
  %narrow141 = select i1 %i.s, i32 0, i32 %narrow140
  %i.u = zext nneg i32 %narrow141 to i64
  %not.67 = xor i1 %i.r, true
  %i.v = zext i1 %not.67 to i64
  %i.w = add nuw nsw i64 %i.u, %i.v               ; 4 uses
  %.neg163 = sext i1 %i.r to i32
  %i.x = add i32 %i.q, %.neg163
  %i.y = and i32 %i.x, 15
  %.neg146 = select i1 %i.r, i32 15, i32 16
  %i.z = sub nuw nsw i32 %.neg146, %i.y
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @_ZZN5arrow7compute9Hashing3210StripeMaskEiPjS2_S2_S2_E5bytes, i64 %i.aa ; 4 uses
  %.0.copyload.i.i = load i32, ptr %i.ab, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %.0.copyload.i9.i = load i32, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.0.copyload.i10.i = load i32, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %.0.copyload.i11.i = load i32, ptr %i.ae, align 1
  %i.af = zext i32 %i.p to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %i.af ; 2 uses
  %i.ah = icmp samesign ugt i64 %i.w, 1
  br i1 %i.ah, label %.lr.ph.preheader.i, label %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit

.lr.ph.preheader.i:                               ; preds = %_ZN5arrow8bit_util7CeilDivEll.exit
  %i.ai = add nsw i64 %i.w, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.035.i = phi i32 [ %i.ar, %.lr.ph.i ], [ 606290984, %.lr.ph.preheader.i ]
  %.02434.i = phi i32 [ %i.av, %.lr.ph.i ], [ -2048144777, %.lr.ph.preheader.i ]
  %.02533.i = phi i32 [ %i.az, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %.02632.i = phi i32 [ %i.bd, %.lr.ph.i ], [ 1640531535, %.lr.ph.preheader.i ]
  %.02731.i = phi i64 [ %i.be, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.aj = shl nuw nsw i64 %.02731.i, 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj ; 4 uses
  %.0.copyload.i.i69 = load i32, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %.0.copyload.i28.i = load i32, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.0.copyload.i29.i = load i32, ptr %i.am, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %.0.copyload.i30.i = load i32, ptr %i.an, align 1
  %i.ao = mul i32 %.0.copyload.i.i69, -2048144777
  %i.ap = add i32 %i.ao, %.035.i                  ; 2 uses
  %i.aq = tail call i32 @llvm.fshl.i32(i32 %i.ap, i32 %i.ap, i32 13)
  %i.ar = mul i32 %i.aq, -1640531535              ; 2 uses
  %i.as = mul i32 %.0.copyload.i28.i, -2048144777
  %i.at = add i32 %i.as, %.02434.i                ; 2 uses
  %i.au = tail call i32 @llvm.fshl.i32(i32 %i.at, i32 %i.at, i32 13)
  %i.av = mul i32 %i.au, -1640531535              ; 2 uses
  %i.aw = mul i32 %.0.copyload.i29.i, -2048144777
  %i.ax = add i32 %i.aw, %.02533.i                ; 2 uses
  %i.ay = tail call i32 @llvm.fshl.i32(i32 %i.ax, i32 %i.ax, i32 13)
  %i.az = mul i32 %i.ay, -1640531535              ; 2 uses
  %i.ba = mul i32 %.0.copyload.i30.i, -2048144777
  %i.bb = add i32 %i.ba, %.02632.i                ; 2 uses
  %i.bc = tail call i32 @llvm.fshl.i32(i32 %i.bb, i32 %i.bb, i32 13)
  %i.bd = mul i32 %i.bc, -1640531535              ; 2 uses
  %i.be = add nuw nsw i64 %.02731.i, 1
  %exitcond.not.i = icmp eq i64 %.02731.i, %i.ai
  br i1 %exitcond.not.i, label %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit.thread, label %.lr.ph.i, !llvm.loop !9

_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit: ; preds = %_ZN5arrow8bit_util7CeilDivEll.exit
  %.not68 = icmp eq i64 %i.w, 0
  br i1 %.not68, label %bb.d, label %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit.thread

_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit.thread: ; preds = %.lr.ph.i, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit
  %.0.lcssa.i136 = phi i32 [ 606290984, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit ], [ %i.ar, %.lr.ph.i ]
  %.024.lcssa.i135 = phi i32 [ -2048144777, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit ], [ %i.av, %.lr.ph.i ]
  %.025.lcssa.i134 = phi i32 [ 0, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit ], [ %i.az, %.lr.ph.i ]
  %.026.lcssa.i133 = phi i32 [ 1640531535, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit ], [ %i.bd, %.lr.ph.i ]
  %i.bf = shl nuw nsw i64 %i.w, 4
  %i.bg = getelementptr i8, ptr %i.ag, i64 %i.bf  ; 4 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 -16
  %.0.copyload.i.i70 = load i32, ptr %i.bh, align 1
  %i.bi = getelementptr i8, ptr %i.bg, i64 -12
  %.0.copyload.i23.i = load i32, ptr %i.bi, align 1
  %i.bj = getelementptr i8, ptr %i.bg, i64 -8
  %.0.copyload.i24.i = load i32, ptr %i.bj, align 1
  %i.bk = getelementptr i8, ptr %i.bg, i64 -4
  %.0.copyload.i25.i = load i32, ptr %i.bk, align 1
  %i.bl = and i32 %.0.copyload.i.i70, %.0.copyload.i.i
  %i.bm = and i32 %.0.copyload.i23.i, %.0.copyload.i9.i
  %i.bn = and i32 %.0.copyload.i24.i, %.0.copyload.i10.i
  %i.bo = and i32 %.0.copyload.i25.i, %.0.copyload.i11.i
  %i.bp = mul i32 %i.bl, -2048144777
  %i.bq = add i32 %i.bp, %.0.lcssa.i136           ; 2 uses
  %i.br = tail call i32 @llvm.fshl.i32(i32 %i.bq, i32 %i.bq, i32 13)
  %i.bs = mul i32 %i.br, -1640531535              ; 2 uses
  %i.bt = mul i32 %i.bm, -2048144777
  %i.bu = add i32 %i.bt, %.024.lcssa.i135         ; 2 uses
  %i.bv = tail call i32 @llvm.fshl.i32(i32 %i.bu, i32 %i.bu, i32 13)
  %i.bw = mul i32 %i.bv, -1640531535              ; 2 uses
  %i.bx = mul i32 %i.bn, -2048144777
  %i.by = add i32 %i.bx, %.025.lcssa.i134         ; 2 uses
  %i.bz = tail call i32 @llvm.fshl.i32(i32 %i.by, i32 %i.by, i32 13)
  %i.ca = mul i32 %i.bz, -1640531535              ; 2 uses
  %i.cb = mul i32 %i.bo, -2048144777
  %i.cc = add i32 %i.cb, %.026.lcssa.i133         ; 2 uses
  %i.cd = tail call i32 @llvm.fshl.i32(i32 %i.cc, i32 %i.cc, i32 13)
  %i.ce = mul i32 %i.cd, -1640531535              ; 2 uses
  %i.cf = tail call i32 @llvm.fshl.i32(i32 %i.bs, i32 %i.bs, i32 1)
  %i.cg = tail call i32 @llvm.fshl.i32(i32 %i.bw, i32 %i.bw, i32 7)
  %i.ch = add i32 %i.cg, %i.cf
  %i.ci = tail call i32 @llvm.fshl.i32(i32 %i.ca, i32 %i.ca, i32 12)
  %i.cj = add i32 %i.ch, %i.ci
  %i.ck = tail call i32 @llvm.fshl.i32(i32 %i.ce, i32 %i.ce, i32 18)
  %i.cl = add i32 %i.cj, %i.ck
  br label %bb.d

bb.d:                                             ; preds = %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit.thread, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit
  %i.cm = phi i32 [ 1466518324, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit ], [ %i.cl, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit.thread ] ; 2 uses
  %i.cn = lshr i32 %i.cm, 15
  %i.co = xor i32 %i.cn, %i.cm
  %i.cp = mul i32 %i.co, -2048144777              ; 2 uses
  %i.cq = lshr i32 %i.cp, 13
  %i.cr = xor i32 %i.cq, %i.cp
  %i.cs = mul i32 %i.cr, -1028477379              ; 2 uses
  %i.ct = lshr i32 %i.cs, 16
  %i.cu = xor i32 %i.ct, %i.cs
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !3
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %_ZN5arrow8bit_util7CeilDivEll.exit, !llvm.loop !13

._crit_edge160:                                   ; preds = %bb.h, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_ZN5arrow8bit_util7CeilDivEll.exit71:             ; preds = %_ZN5arrow8bit_util7CeilDivEll.exit71.lr.ph, %bb.h
  %indvars.iv174 = phi i64 [ %i.l, %_ZN5arrow8bit_util7CeilDivEll.exit71.lr.ph ], [ %indvars.iv.next175, %bb.h ] ; 3 uses
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1 ; 3 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next175
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !3  ; 3 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv174
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3  ; 4 uses
  %i.da = sub i32 %i.cx, %i.cz                    ; 3 uses
  %i.db = zext i32 %i.da to i64
  %i.dc = icmp ne i32 %i.cx, %i.cz                ; 3 uses
  %i.dd = icmp eq i32 %i.cx, %i.cz                ; 2 uses
  %.lhs.trunc137 = add i32 %i.da, -1
  %i.de = lshr i32 %.lhs.trunc137, 4
  %narrow = add nuw nsw i32 %i.de, 1
  %narrow139 = select i1 %i.dd, i32 0, i32 %narrow
  %i.df = zext nneg i32 %narrow139 to i64
  %not. = xor i1 %i.dc, true
  %i.dg = zext i1 %not. to i64
  %i.dh = add nuw nsw i64 %i.df, %i.dg            ; 4 uses
  %.neg165 = sext i1 %i.dc to i32
  %i.di = add i32 %i.da, %.neg165
  %i.dj = and i32 %i.di, 15
  %.neg143 = select i1 %i.dc, i32 15, i32 16
  %i.dk = sub nuw nsw i32 %.neg143, %i.dj
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr @_ZZN5arrow7compute9Hashing3210StripeMaskEiPjS2_S2_S2_E5bytes, i64 %i.dl ; 4 uses
  %.0.copyload.i.i72 = load i32, ptr %i.dm, align 1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %.0.copyload.i9.i73 = load i32, ptr %i.dn, align 1
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.0.copyload.i10.i74 = load i32, ptr %i.do, align 1
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  %.0.copyload.i11.i75 = load i32, ptr %i.dp, align 1
  %i.dq = zext i32 %i.cz to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 %i.dq ; 2 uses
  %i.ds = icmp samesign ugt i64 %i.dh, 1
  br i1 %i.ds, label %.lr.ph.preheader.i80, label %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit92

.lr.ph.preheader.i80:                             ; preds = %_ZN5arrow8bit_util7CeilDivEll.exit71
  %i.dt = add nsw i64 %i.dh, -2
  br label %.lr.ph.i81

.lr.ph.i81:                                       ; preds = %.lr.ph.i81, %.lr.ph.preheader.i80
  %.035.i82 = phi i32 [ %i.ec, %.lr.ph.i81 ], [ 606290984, %.lr.ph.preheader.i80 ]
  %.02434.i83 = phi i32 [ %i.eg, %.lr.ph.i81 ], [ -2048144777, %.lr.ph.preheader.i80 ]
  %.02533.i84 = phi i32 [ %i.ek, %.lr.ph.i81 ], [ 0, %.lr.ph.preheader.i80 ]
  %.02632.i85 = phi i32 [ %i.eo, %.lr.ph.i81 ], [ 1640531535, %.lr.ph.preheader.i80 ]
  %.02731.i86 = phi i64 [ %i.ep, %.lr.ph.i81 ], [ 0, %.lr.ph.preheader.i80 ] ; 3 uses
  %i.du = shl nuw nsw i64 %.02731.i86, 4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.du ; 4 uses
  %.0.copyload.i.i87 = load i32, ptr %i.dv, align 1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %.0.copyload.i28.i88 = load i32, ptr %i.dw, align 1
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %.0.copyload.i29.i89 = load i32, ptr %i.dx, align 1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  %.0.copyload.i30.i90 = load i32, ptr %i.dy, align 1
  %i.dz = mul i32 %.0.copyload.i.i87, -2048144777
  %i.ea = add i32 %i.dz, %.035.i82                ; 2 uses
  %i.eb = tail call i32 @llvm.fshl.i32(i32 %i.ea, i32 %i.ea, i32 13)
  %i.ec = mul i32 %i.eb, -1640531535              ; 2 uses
  %i.ed = mul i32 %.0.copyload.i28.i88, -2048144777
  %i.ee = add i32 %i.ed, %.02434.i83              ; 2 uses
  %i.ef = tail call i32 @llvm.fshl.i32(i32 %i.ee, i32 %i.ee, i32 13)
  %i.eg = mul i32 %i.ef, -1640531535              ; 2 uses
  %i.eh = mul i32 %.0.copyload.i29.i89, -2048144777
  %i.ei = add i32 %i.eh, %.02533.i84              ; 2 uses
  %i.ej = tail call i32 @llvm.fshl.i32(i32 %i.ei, i32 %i.ei, i32 13)
  %i.ek = mul i32 %i.ej, -1640531535              ; 2 uses
  %i.el = mul i32 %.0.copyload.i30.i90, -2048144777
  %i.em = add i32 %i.el, %.02632.i85              ; 2 uses
  %i.en = tail call i32 @llvm.fshl.i32(i32 %i.em, i32 %i.em, i32 13)
  %i.eo = mul i32 %i.en, -1640531535              ; 2 uses
  %i.ep = add nuw nsw i64 %.02731.i86, 1
  %exitcond.not.i91 = icmp eq i64 %.02731.i86, %i.dt
  br i1 %exitcond.not.i91, label %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit92, label %.lr.ph.i81, !llvm.loop !9

_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit92: ; preds = %.lr.ph.i81, %_ZN5arrow8bit_util7CeilDivEll.exit71
  %.026.lcssa.i76 = phi i32 [ 1640531535, %_ZN5arrow8bit_util7CeilDivEll.exit71 ], [ %i.eo, %.lr.ph.i81 ] ; 2 uses
  %.025.lcssa.i77 = phi i32 [ 0, %_ZN5arrow8bit_util7CeilDivEll.exit71 ], [ %i.ek, %.lr.ph.i81 ] ; 2 uses
  %.024.lcssa.i78 = phi i32 [ -2048144777, %_ZN5arrow8bit_util7CeilDivEll.exit71 ], [ %i.eg, %.lr.ph.i81 ] ; 2 uses
  %.0.lcssa.i79 = phi i32 [ 606290984, %_ZN5arrow8bit_util7CeilDivEll.exit71 ], [ %i.ec, %.lr.ph.i81 ] ; 2 uses
  br i1 %i.dd, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit92
  %i.eq = shl nuw nsw i64 %i.dh, 4
  %i.er = add nsw i64 %i.eq, -16                  ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.er
  %i.et = sub nsw i64 %i.db, %i.er
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.es, i64 %i.et, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit92
  %.not65 = icmp eq i64 %i.dh, 0
  br i1 %.not65, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.0..0..0..0.copyload.i.i93 = load i32, ptr %i.a, align 16
  %.4..4..4..0.copyload.i23.i94 = load i32, ptr %.4..4..4..sroa_idx, align 4
  %.8..8..8..0.copyload.i24.i95 = load i32, ptr %.8..8..8..sroa_idx, align 8
  %.12..12..12..0.copyload.i25.i96 = load i32, ptr %.12..12..12..sroa_idx, align 4
  %i.eu = and i32 %.0..0..0..0.copyload.i.i93, %.0.copyload.i.i72
  %i.ev = and i32 %.4..4..4..0.copyload.i23.i94, %.0.copyload.i9.i73
  %i.ew = and i32 %.8..8..8..0.copyload.i24.i95, %.0.copyload.i10.i74
  %i.ex = and i32 %.12..12..12..0.copyload.i25.i96, %.0.copyload.i11.i75
  %i.ey = mul i32 %i.eu, -2048144777
  %i.ez = add i32 %i.ey, %.0.lcssa.i79            ; 2 uses
  %i.fa = tail call i32 @llvm.fshl.i32(i32 %i.ez, i32 %i.ez, i32 13)
  %i.fb = mul i32 %i.fa, -1640531535
  %i.fc = mul i32 %i.ev, -2048144777
  %i.fd = add i32 %i.fc, %.024.lcssa.i78          ; 2 uses
  %i.fe = tail call i32 @llvm.fshl.i32(i32 %i.fd, i32 %i.fd, i32 13)
  %i.ff = mul i32 %i.fe, -1640531535
  %i.fg = mul i32 %i.ew, -2048144777
  %i.fh = add i32 %i.fg, %.025.lcssa.i77          ; 2 uses
  %i.fi = tail call i32 @llvm.fshl.i32(i32 %i.fh, i32 %i.fh, i32 13)
  %i.fj = mul i32 %i.fi, -1640531535
  %i.fk = mul i32 %i.ex, -2048144777
  %i.fl = add i32 %i.fk, %.026.lcssa.i76          ; 2 uses
  %i.fm = tail call i32 @llvm.fshl.i32(i32 %i.fl, i32 %i.fl, i32 13)
  %i.fn = mul i32 %i.fm, -1640531535
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0123 = phi i32 [ %.0.lcssa.i79, %bb.f ], [ %i.fb, %bb.g ] ; 2 uses
  %.0122 = phi i32 [ %.024.lcssa.i78, %bb.f ], [ %i.ff, %bb.g ] ; 2 uses
  %.0121 = phi i32 [ %.025.lcssa.i77, %bb.f ], [ %i.fj, %bb.g ] ; 2 uses
  %.0120 = phi i32 [ %.026.lcssa.i76, %bb.f ], [ %i.fn, %bb.g ] ; 2 uses
  %i.fo = tail call i32 @llvm.fshl.i32(i32 %.0123, i32 %.0123, i32 1)
  %i.fp = tail call i32 @llvm.fshl.i32(i32 %.0122, i32 %.0122, i32 7)
  %i.fq = add i32 %i.fp, %i.fo
  %i.fr = tail call i32 @llvm.fshl.i32(i32 %.0121, i32 %.0121, i32 12)
  %i.fs = add i32 %i.fq, %i.fr
  %i.ft = tail call i32 @llvm.fshl.i32(i32 %.0120, i32 %.0120, i32 18)
  %i.fu = add i32 %i.fs, %i.ft                    ; 2 uses
  %i.fv = lshr i32 %i.fu, 15
  %i.fw = xor i32 %i.fv, %i.fu
  %i.fx = mul i32 %i.fw, -2048144777              ; 2 uses
  %i.fy = lshr i32 %i.fx, 13
  %i.fz = xor i32 %i.fy, %i.fx
  %i.ga = mul i32 %i.fz, -1028477379              ; 2 uses
  %i.gb = lshr i32 %i.ga, 16
  %i.gc = xor i32 %i.gb, %i.ga
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv174
  store i32 %i.gc, ptr %i.gd, align 4, !tbaa !3
  %exitcond178.not = icmp eq i64 %indvars.iv.next175, %wide.trip.count177
  br i1 %exitcond178.not, label %._crit_edge160, label %_ZN5arrow8bit_util7CeilDivEll.exit71, !llvm.loop !14
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute9Hashing3210HashVarLenElbjPKmPKhPjS6_(i64 noundef %0, i1 noundef zeroext %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef readnone captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow7compute9Hashing3213HashVarLenImpImLb1EEEvjPKT_PKhPj(i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN5arrow7compute9Hashing3213HashVarLenImpImLb0EEEvjPKT_PKhPj(i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute9Hashing3213HashVarLenImpImLb1EEEvjPKT_PKhPj(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 7 uses
  %.not153 = icmp eq i32 %0, 0
  br i1 %.not153, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = zext i32 %0 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.0154 = phi i32 [ %0, %.lr.ph ], [ %i.j, %bb.c ] ; 4 uses
  %i.e = zext i32 %.0154 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !15
  %i.h = sub i64 %i.d, %i.g
  %i.i = icmp ult i64 %i.h, 16
  br i1 %i.i, label %bb.c, label %.lr.ph158.preheader

bb.c:                                             ; preds = %bb.b
  %i.j = add i32 %.0154, -1                       ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !17

.lr.ph158.preheader:                              ; preds = %bb.b
  %wide.trip.count = zext i32 %.0154 to i64
  %.pre = load i64, ptr %1, align 8, !tbaa !15
  br label %.lr.ph158

._crit_edge:                                      ; preds = %bb.c, %bb.e, %bb.a
  %.0.lcssa188 = phi i32 [ %.0154, %bb.e ], [ 0, %bb.a ], [ 0, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = icmp ult i32 %.0.lcssa188, %0
  br i1 %i.k, label %.lr.ph161, label %._crit_edge162

.lr.ph161:                                        ; preds = %._crit_edge
  %i.l = zext i32 %.0.lcssa188 to i64             ; 2 uses
  %wide.trip.count179 = zext i32 %0 to i64
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.l
  %.pre181 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !15
  %.4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.12..12..12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %bb.f

.lr.ph158:                                        ; preds = %.lr.ph158.preheader, %bb.e
  %i.m = phi i64 [ %.pre, %.lr.ph158.preheader ], [ %i.o, %bb.e ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph158.preheader ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.o = load i64, ptr %i.n, align 8, !tbaa !15   ; 4 uses
  %i.p = sub i64 %i.o, %i.m                       ; 2 uses
  %i.q = icmp ne i64 %i.o, %i.m                   ; 3 uses
  %i.r = icmp eq i64 %i.o, %i.m
  br i1 %i.r, label %_ZN5arrow8bit_util7CeilDivEll.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph158
  %i.s = add nsw i64 %i.p, -1
  %i.t = sdiv i64 %i.s, 16
  %i.u = add nsw i64 %i.t, 1
  br label %_ZN5arrow8bit_util7CeilDivEll.exit

_ZN5arrow8bit_util7CeilDivEll.exit:               ; preds = %.lr.ph158, %bb.d
  %i.v = phi i64 [ %i.u, %bb.d ], [ 0, %.lr.ph158 ]
  %not.71 = xor i1 %i.q, true
  %i.w = zext i1 %not.71 to i64
  %i.x = add nsw i64 %i.v, %i.w                   ; 4 uses
  %.neg165 = sext i1 %i.q to i64
  %i.y = add i64 %i.p, %.neg165
  %i.z = and i64 %i.y, 15
  %.neg145 = select i1 %i.q, i64 15, i64 16
  %i.aa = sub nuw nsw i64 %.neg145, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr @_ZZN5arrow7compute9Hashing3210StripeMaskEiPjS2_S2_S2_E5bytes, i64 %i.aa ; 4 uses
  %.0.copyload.i.i = load i32, ptr %i.ab, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %.0.copyload.i9.i = load i32, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.0.copyload.i10.i = load i32, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %.0.copyload.i11.i = load i32, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %i.m ; 2 uses
  %i.ag = icmp sgt i64 %i.x, 1
  br i1 %i.ag, label %.lr.ph.preheader.i, label %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit

.lr.ph.preheader.i:                               ; preds = %_ZN5arrow8bit_util7CeilDivEll.exit
  %i.ah = add nsw i64 %i.x, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.035.i = phi i32 [ %i.aq, %.lr.ph.i ], [ 606290984, %.lr.ph.preheader.i ]
  %.02434.i = phi i32 [ %i.au, %.lr.ph.i ], [ -2048144777, %.lr.ph.preheader.i ]
  %.02533.i = phi i32 [ %i.ay, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %.02632.i = phi i32 [ %i.bc, %.lr.ph.i ], [ 1640531535, %.lr.ph.preheader.i ]
  %.02731.i = phi i64 [ %i.bd, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.ai = shl nuw nsw i64 %.02731.i, 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ai ; 4 uses
  %.0.copyload.i.i73 = load i32, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %.0.copyload.i28.i = load i32, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.0.copyload.i29.i = load i32, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %.0.copyload.i30.i = load i32, ptr %i.am, align 1
  %i.an = mul i32 %.0.copyload.i.i73, -2048144777
  %i.ao = add i32 %i.an, %.035.i                  ; 2 uses
  %i.ap = tail call i32 @llvm.fshl.i32(i32 %i.ao, i32 %i.ao, i32 13)
  %i.aq = mul i32 %i.ap, -1640531535              ; 2 uses
  %i.ar = mul i32 %.0.copyload.i28.i, -2048144777
  %i.as = add i32 %i.ar, %.02434.i                ; 2 uses
  %i.at = tail call i32 @llvm.fshl.i32(i32 %i.as, i32 %i.as, i32 13)
  %i.au = mul i32 %i.at, -1640531535              ; 2 uses
  %i.av = mul i32 %.0.copyload.i29.i, -2048144777
  %i.aw = add i32 %i.av, %.02533.i                ; 2 uses
  %i.ax = tail call i32 @llvm.fshl.i32(i32 %i.aw, i32 %i.aw, i32 13)
  %i.ay = mul i32 %i.ax, -1640531535              ; 2 uses
  %i.az = mul i32 %.0.copyload.i30.i, -2048144777
  %i.ba = add i32 %i.az, %.02632.i                ; 2 uses
  %i.bb = tail call i32 @llvm.fshl.i32(i32 %i.ba, i32 %i.ba, i32 13)
  %i.bc = mul i32 %i.bb, -1640531535              ; 2 uses
  %i.bd = add nuw nsw i64 %.02731.i, 1
  %exitcond.not.i = icmp eq i64 %.02731.i, %i.ah
  br i1 %exitcond.not.i, label %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit.thread, label %.lr.ph.i, !llvm.loop !9

_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit: ; preds = %_ZN5arrow8bit_util7CeilDivEll.exit
  %.not72 = icmp eq i64 %i.x, 0
  br i1 %.not72, label %bb.e, label %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit.thread

_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit.thread: ; preds = %.lr.ph.i, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit
  %.0.lcssa.i140 = phi i32 [ 606290984, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit ], [ %i.aq, %.lr.ph.i ]
  %.024.lcssa.i139 = phi i32 [ -2048144777, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit ], [ %i.au, %.lr.ph.i ]
  %.025.lcssa.i138 = phi i32 [ 0, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit ], [ %i.ay, %.lr.ph.i ]
  %.026.lcssa.i137 = phi i32 [ 1640531535, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit ], [ %i.bc, %.lr.ph.i ]
  %i.be = shl i64 %i.x, 4
  %i.bf = getelementptr i8, ptr %i.af, i64 %i.be  ; 4 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 -16
  %.0.copyload.i.i74 = load i32, ptr %i.bg, align 1
  %i.bh = getelementptr i8, ptr %i.bf, i64 -12
  %.0.copyload.i23.i = load i32, ptr %i.bh, align 1
  %i.bi = getelementptr i8, ptr %i.bf, i64 -8
  %.0.copyload.i24.i = load i32, ptr %i.bi, align 1
  %i.bj = getelementptr i8, ptr %i.bf, i64 -4
  %.0.copyload.i25.i = load i32, ptr %i.bj, align 1
  %i.bk = and i32 %.0.copyload.i.i74, %.0.copyload.i.i
  %i.bl = and i32 %.0.copyload.i23.i, %.0.copyload.i9.i
  %i.bm = and i32 %.0.copyload.i24.i, %.0.copyload.i10.i
  %i.bn = and i32 %.0.copyload.i25.i, %.0.copyload.i11.i
  %i.bo = mul i32 %i.bk, -2048144777
  %i.bp = add i32 %i.bo, %.0.lcssa.i140           ; 2 uses
  %i.bq = tail call i32 @llvm.fshl.i32(i32 %i.bp, i32 %i.bp, i32 13)
  %i.br = mul i32 %i.bq, -1640531535              ; 2 uses
  %i.bs = mul i32 %i.bl, -2048144777
  %i.bt = add i32 %i.bs, %.024.lcssa.i139         ; 2 uses
  %i.bu = tail call i32 @llvm.fshl.i32(i32 %i.bt, i32 %i.bt, i32 13)
  %i.bv = mul i32 %i.bu, -1640531535              ; 2 uses
  %i.bw = mul i32 %i.bm, -2048144777
  %i.bx = add i32 %i.bw, %.025.lcssa.i138         ; 2 uses
  %i.by = tail call i32 @llvm.fshl.i32(i32 %i.bx, i32 %i.bx, i32 13)
  %i.bz = mul i32 %i.by, -1640531535              ; 2 uses
  %i.ca = mul i32 %i.bn, -2048144777
  %i.cb = add i32 %i.ca, %.026.lcssa.i137         ; 2 uses
  %i.cc = tail call i32 @llvm.fshl.i32(i32 %i.cb, i32 %i.cb, i32 13)
  %i.cd = mul i32 %i.cc, -1640531535              ; 2 uses
  %i.ce = tail call i32 @llvm.fshl.i32(i32 %i.br, i32 %i.br, i32 1)
  %i.cf = tail call i32 @llvm.fshl.i32(i32 %i.bv, i32 %i.bv, i32 7)
  %i.cg = add i32 %i.cf, %i.ce
  %i.ch = tail call i32 @llvm.fshl.i32(i32 %i.bz, i32 %i.bz, i32 12)
  %i.ci = add i32 %i.cg, %i.ch
  %i.cj = tail call i32 @llvm.fshl.i32(i32 %i.cd, i32 %i.cd, i32 18)
  %i.ck = add i32 %i.ci, %i.cj
  br label %bb.e

bb.e:                                             ; preds = %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit.thread, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit
  %i.cl = phi i32 [ 1466518324, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit ], [ %i.ck, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit.thread ] ; 2 uses
  %i.cm = lshr i32 %i.cl, 15
  %i.cn = xor i32 %i.cm, %i.cl
  %i.co = mul i32 %i.cn, -2048144777              ; 2 uses
  %i.cp = lshr i32 %i.co, 13
  %i.cq = xor i32 %i.cp, %i.co
  %i.cr = mul i32 %i.cq, -1028477379              ; 2 uses
  %i.cs = lshr i32 %i.cr, 16
  %i.ct = xor i32 %i.cs, %i.cr
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !3  ; 3 uses
  %i.cw = shl i32 %i.cv, 6
  %i.cx = lshr i32 %i.cv, 2
  %i.cy = add i32 %i.cw, -1640531527
  %i.cz = add i32 %i.cy, %i.cx
  %i.da = add i32 %i.cz, %i.ct
  %i.db = xor i32 %i.da, %i.cv
  store i32 %i.db, ptr %i.cu, align 4, !tbaa !3
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph158, !llvm.loop !18

._crit_edge162:                                   ; preds = %bb.k, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.f:                                             ; preds = %.lr.ph161, %bb.k
  %i.dc = phi i64 [ %.pre181, %.lr.ph161 ], [ %i.de, %bb.k ] ; 4 uses
  %indvars.iv176 = phi i64 [ %i.l, %.lr.ph161 ], [ %indvars.iv.next177, %bb.k ] ; 2 uses
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1 ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next177
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !15 ; 4 uses
  %i.df = sub i64 %i.de, %i.dc                    ; 3 uses
  %i.dg = icmp ne i64 %i.de, %i.dc                ; 3 uses
  %i.dh = icmp eq i64 %i.de, %i.dc                ; 2 uses
  br i1 %i.dh, label %_ZN5arrow8bit_util7CeilDivEll.exit75, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.di = add nsw i64 %i.df, -1
  %i.dj = sdiv i64 %i.di, 16
  %i.dk = add nsw i64 %i.dj, 1
  br label %_ZN5arrow8bit_util7CeilDivEll.exit75

_ZN5arrow8bit_util7CeilDivEll.exit75:             ; preds = %bb.f, %bb.g
  %i.dl = phi i64 [ %i.dk, %bb.g ], [ 0, %bb.f ]
  %not. = xor i1 %i.dg, true
  %i.dm = zext i1 %not. to i64
  %i.dn = add nsw i64 %i.dl, %i.dm                ; 4 uses
  %.neg167 = sext i1 %i.dg to i64
  %i.do = add i64 %i.df, %.neg167
  %i.dp = and i64 %i.do, 15
  %.neg142 = select i1 %i.dg, i64 15, i64 16
  %i.dq = sub nuw nsw i64 %.neg142, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr @_ZZN5arrow7compute9Hashing3210StripeMaskEiPjS2_S2_S2_E5bytes, i64 %i.dq ; 4 uses
  %.0.copyload.i.i76 = load i32, ptr %i.dr, align 1
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %.0.copyload.i9.i77 = load i32, ptr %i.ds, align 1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.0.copyload.i10.i78 = load i32, ptr %i.dt, align 1
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  %.0.copyload.i11.i79 = load i32, ptr %i.du, align 1
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 %i.dc ; 2 uses
  %i.dw = icmp sgt i64 %i.dn, 1
  br i1 %i.dw, label %.lr.ph.preheader.i84, label %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit96

.lr.ph.preheader.i84:                             ; preds = %_ZN5arrow8bit_util7CeilDivEll.exit75
  %i.dx = add nsw i64 %i.dn, -2
  br label %.lr.ph.i85

.lr.ph.i85:                                       ; preds = %.lr.ph.i85, %.lr.ph.preheader.i84
  %.035.i86 = phi i32 [ %i.eg, %.lr.ph.i85 ], [ 606290984, %.lr.ph.preheader.i84 ]
  %.02434.i87 = phi i32 [ %i.ek, %.lr.ph.i85 ], [ -2048144777, %.lr.ph.preheader.i84 ]
  %.02533.i88 = phi i32 [ %i.eo, %.lr.ph.i85 ], [ 0, %.lr.ph.preheader.i84 ]
  %.02632.i89 = phi i32 [ %i.es, %.lr.ph.i85 ], [ 1640531535, %.lr.ph.preheader.i84 ]
  %.02731.i90 = phi i64 [ %i.et, %.lr.ph.i85 ], [ 0, %.lr.ph.preheader.i84 ] ; 3 uses
  %i.dy = shl nuw nsw i64 %.02731.i90, 4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dy ; 4 uses
  %.0.copyload.i.i91 = load i32, ptr %i.dz, align 1
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %.0.copyload.i28.i92 = load i32, ptr %i.ea, align 1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %.0.copyload.i29.i93 = load i32, ptr %i.eb, align 1
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 12
  %.0.copyload.i30.i94 = load i32, ptr %i.ec, align 1
  %i.ed = mul i32 %.0.copyload.i.i91, -2048144777
  %i.ee = add i32 %i.ed, %.035.i86                ; 2 uses
  %i.ef = tail call i32 @llvm.fshl.i32(i32 %i.ee, i32 %i.ee, i32 13)
  %i.eg = mul i32 %i.ef, -1640531535              ; 2 uses
  %i.eh = mul i32 %.0.copyload.i28.i92, -2048144777
  %i.ei = add i32 %i.eh, %.02434.i87              ; 2 uses
  %i.ej = tail call i32 @llvm.fshl.i32(i32 %i.ei, i32 %i.ei, i32 13)
  %i.ek = mul i32 %i.ej, -1640531535              ; 2 uses
  %i.el = mul i32 %.0.copyload.i29.i93, -2048144777
  %i.em = add i32 %i.el, %.02533.i88              ; 2 uses
  %i.en = tail call i32 @llvm.fshl.i32(i32 %i.em, i32 %i.em, i32 13)
  %i.eo = mul i32 %i.en, -1640531535              ; 2 uses
  %i.ep = mul i32 %.0.copyload.i30.i94, -2048144777
  %i.eq = add i32 %i.ep, %.02632.i89              ; 2 uses
  %i.er = tail call i32 @llvm.fshl.i32(i32 %i.eq, i32 %i.eq, i32 13)
  %i.es = mul i32 %i.er, -1640531535              ; 2 uses
  %i.et = add nuw nsw i64 %.02731.i90, 1
  %exitcond.not.i95 = icmp eq i64 %.02731.i90, %i.dx
  br i1 %exitcond.not.i95, label %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit96, label %.lr.ph.i85, !llvm.loop !9

_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit96: ; preds = %.lr.ph.i85, %_ZN5arrow8bit_util7CeilDivEll.exit75
  %.026.lcssa.i80 = phi i32 [ 1640531535, %_ZN5arrow8bit_util7CeilDivEll.exit75 ], [ %i.es, %.lr.ph.i85 ] ; 2 uses
  %.025.lcssa.i81 = phi i32 [ 0, %_ZN5arrow8bit_util7CeilDivEll.exit75 ], [ %i.eo, %.lr.ph.i85 ] ; 2 uses
  %.024.lcssa.i82 = phi i32 [ -2048144777, %_ZN5arrow8bit_util7CeilDivEll.exit75 ], [ %i.ek, %.lr.ph.i85 ] ; 2 uses
  %.0.lcssa.i83 = phi i32 [ 606290984, %_ZN5arrow8bit_util7CeilDivEll.exit75 ], [ %i.eg, %.lr.ph.i85 ] ; 2 uses
  br i1 %i.dh, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit96
  %i.eu = shl i64 %i.dn, 4
  %i.ev = add i64 %i.eu, -16                      ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.ev
  %i.ex = sub i64 %i.df, %i.ev
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.ew, i64 %i.ex, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit96
  %.not69 = icmp eq i64 %i.dn, 0
  br i1 %.not69, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.0..0..0..0.copyload.i.i97 = load i32, ptr %i.a, align 16
  %.4..4..4..0.copyload.i23.i98 = load i32, ptr %.4..4..4..sroa_idx, align 4
  %.8..8..8..0.copyload.i24.i99 = load i32, ptr %.8..8..8..sroa_idx, align 8
  %.12..12..12..0.copyload.i25.i100 = load i32, ptr %.12..12..12..sroa_idx, align 4
  %i.ey = and i32 %.0..0..0..0.copyload.i.i97, %.0.copyload.i.i76
  %i.ez = and i32 %.4..4..4..0.copyload.i23.i98, %.0.copyload.i9.i77
  %i.fa = and i32 %.8..8..8..0.copyload.i24.i99, %.0.copyload.i10.i78
  %i.fb = and i32 %.12..12..12..0.copyload.i25.i100, %.0.copyload.i11.i79
  %i.fc = mul i32 %i.ey, -2048144777
  %i.fd = add i32 %i.fc, %.0.lcssa.i83            ; 2 uses
  %i.fe = tail call i32 @llvm.fshl.i32(i32 %i.fd, i32 %i.fd, i32 13)
  %i.ff = mul i32 %i.fe, -1640531535
  %i.fg = mul i32 %i.ez, -2048144777
  %i.fh = add i32 %i.fg, %.024.lcssa.i82          ; 2 uses
  %i.fi = tail call i32 @llvm.fshl.i32(i32 %i.fh, i32 %i.fh, i32 13)
  %i.fj = mul i32 %i.fi, -1640531535
  %i.fk = mul i32 %i.fa, -2048144777
  %i.fl = add i32 %i.fk, %.025.lcssa.i81          ; 2 uses
  %i.fm = tail call i32 @llvm.fshl.i32(i32 %i.fl, i32 %i.fl, i32 13)
  %i.fn = mul i32 %i.fm, -1640531535
  %i.fo = mul i32 %i.fb, -2048144777
  %i.fp = add i32 %i.fo, %.026.lcssa.i80          ; 2 uses
  %i.fq = tail call i32 @llvm.fshl.i32(i32 %i.fp, i32 %i.fp, i32 13)
  %i.fr = mul i32 %i.fq, -1640531535
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0127 = phi i32 [ %.0.lcssa.i83, %bb.i ], [ %i.ff, %bb.j ] ; 2 uses
  %.0126 = phi i32 [ %.024.lcssa.i82, %bb.i ], [ %i.fj, %bb.j ] ; 2 uses
  %.0125 = phi i32 [ %.025.lcssa.i81, %bb.i ], [ %i.fn, %bb.j ] ; 2 uses
  %.0124 = phi i32 [ %.026.lcssa.i80, %bb.i ], [ %i.fr, %bb.j ] ; 2 uses
  %i.fs = tail call i32 @llvm.fshl.i32(i32 %.0127, i32 %.0127, i32 1)
  %i.ft = tail call i32 @llvm.fshl.i32(i32 %.0126, i32 %.0126, i32 7)
  %i.fu = add i32 %i.ft, %i.fs
  %i.fv = tail call i32 @llvm.fshl.i32(i32 %.0125, i32 %.0125, i32 12)
  %i.fw = add i32 %i.fu, %i.fv
  %i.fx = tail call i32 @llvm.fshl.i32(i32 %.0124, i32 %.0124, i32 18)
  %i.fy = add i32 %i.fw, %i.fx                    ; 2 uses
  %i.fz = lshr i32 %i.fy, 15
  %i.ga = xor i32 %i.fz, %i.fy
  %i.gb = mul i32 %i.ga, -2048144777              ; 2 uses
  %i.gc = lshr i32 %i.gb, 13
  %i.gd = xor i32 %i.gc, %i.gb
  %i.ge = mul i32 %i.gd, -1028477379              ; 2 uses
  %i.gf = lshr i32 %i.ge, 16
  %i.gg = xor i32 %i.gf, %i.ge
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv176 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !3  ; 3 uses
  %i.gj = shl i32 %i.gi, 6
  %i.gk = lshr i32 %i.gi, 2
  %i.gl = add i32 %i.gj, -1640531527
  %i.gm = add i32 %i.gl, %i.gk
  %i.gn = add i32 %i.gm, %i.gg
  %i.go = xor i32 %i.gn, %i.gi
  store i32 %i.go, ptr %i.gh, align 4, !tbaa !3
  %exitcond180.not = icmp eq i64 %indvars.iv.next177, %wide.trip.count179
  br i1 %exitcond180.not, label %._crit_edge162, label %bb.f, !llvm.loop !19
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute9Hashing3213HashVarLenImpImLb0EEEvjPKT_PKhPj(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 7 uses
  %.not149 = icmp eq i32 %0, 0
  br i1 %.not149, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = zext i32 %0 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.0150 = phi i32 [ %0, %.lr.ph ], [ %i.j, %bb.c ] ; 4 uses
  %i.e = zext i32 %.0150 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !15
  %i.h = sub i64 %i.d, %i.g
  %i.i = icmp ult i64 %i.h, 16
  br i1 %i.i, label %bb.c, label %.lr.ph154.preheader

bb.c:                                             ; preds = %bb.b
  %i.j = add i32 %.0150, -1                       ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !20

.lr.ph154.preheader:                              ; preds = %bb.b
  %wide.trip.count = zext i32 %.0150 to i64
  %.pre = load i64, ptr %1, align 8, !tbaa !15
  br label %.lr.ph154

._crit_edge:                                      ; preds = %bb.c, %bb.e, %bb.a
  %.0.lcssa184 = phi i32 [ %.0150, %bb.e ], [ 0, %bb.a ], [ 0, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = icmp ult i32 %.0.lcssa184, %0
  br i1 %i.k, label %.lr.ph157, label %._crit_edge158

.lr.ph157:                                        ; preds = %._crit_edge
  %i.l = zext i32 %.0.lcssa184 to i64             ; 2 uses
  %wide.trip.count175 = zext i32 %0 to i64
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.l
  %.pre177 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !15
  %.4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.12..12..12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %bb.f

.lr.ph154:                                        ; preds = %.lr.ph154.preheader, %bb.e
  %i.m = phi i64 [ %.pre, %.lr.ph154.preheader ], [ %i.o, %bb.e ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph154.preheader ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.o = load i64, ptr %i.n, align 8, !tbaa !15   ; 4 uses
  %i.p = sub i64 %i.o, %i.m                       ; 2 uses
  %i.q = icmp ne i64 %i.o, %i.m                   ; 3 uses
  %i.r = icmp eq i64 %i.o, %i.m
  br i1 %i.r, label %_ZN5arrow8bit_util7CeilDivEll.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph154
  %i.s = add nsw i64 %i.p, -1
  %i.t = sdiv i64 %i.s, 16
  %i.u = add nsw i64 %i.t, 1
  br label %_ZN5arrow8bit_util7CeilDivEll.exit

_ZN5arrow8bit_util7CeilDivEll.exit:               ; preds = %.lr.ph154, %bb.d
  %i.v = phi i64 [ %i.u, %bb.d ], [ 0, %.lr.ph154 ]
  %not.67 = xor i1 %i.q, true
  %i.w = zext i1 %not.67 to i64
  %i.x = add nsw i64 %i.v, %i.w                   ; 4 uses
  %.neg161 = sext i1 %i.q to i64
  %i.y = add i64 %i.p, %.neg161
  %i.z = and i64 %i.y, 15
  %.neg141 = select i1 %i.q, i64 15, i64 16
  %i.aa = sub nuw nsw i64 %.neg141, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr @_ZZN5arrow7compute9Hashing3210StripeMaskEiPjS2_S2_S2_E5bytes, i64 %i.aa ; 4 uses
  %.0.copyload.i.i = load i32, ptr %i.ab, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %.0.copyload.i9.i = load i32, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.0.copyload.i10.i = load i32, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %.0.copyload.i11.i = load i32, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %i.m ; 2 uses
  %i.ag = icmp sgt i64 %i.x, 1
  br i1 %i.ag, label %.lr.ph.preheader.i, label %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit

.lr.ph.preheader.i:                               ; preds = %_ZN5arrow8bit_util7CeilDivEll.exit
  %i.ah = add nsw i64 %i.x, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.035.i = phi i32 [ %i.aq, %.lr.ph.i ], [ 606290984, %.lr.ph.preheader.i ]
  %.02434.i = phi i32 [ %i.au, %.lr.ph.i ], [ -2048144777, %.lr.ph.preheader.i ]
  %.02533.i = phi i32 [ %i.ay, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %.02632.i = phi i32 [ %i.bc, %.lr.ph.i ], [ 1640531535, %.lr.ph.preheader.i ]
  %.02731.i = phi i64 [ %i.bd, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.ai = shl nuw nsw i64 %.02731.i, 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ai ; 4 uses
  %.0.copyload.i.i69 = load i32, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %.0.copyload.i28.i = load i32, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.0.copyload.i29.i = load i32, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %.0.copyload.i30.i = load i32, ptr %i.am, align 1
  %i.an = mul i32 %.0.copyload.i.i69, -2048144777
  %i.ao = add i32 %i.an, %.035.i                  ; 2 uses
  %i.ap = tail call i32 @llvm.fshl.i32(i32 %i.ao, i32 %i.ao, i32 13)
  %i.aq = mul i32 %i.ap, -1640531535              ; 2 uses
  %i.ar = mul i32 %.0.copyload.i28.i, -2048144777
  %i.as = add i32 %i.ar, %.02434.i                ; 2 uses
  %i.at = tail call i32 @llvm.fshl.i32(i32 %i.as, i32 %i.as, i32 13)
  %i.au = mul i32 %i.at, -1640531535              ; 2 uses
  %i.av = mul i32 %.0.copyload.i29.i, -2048144777
  %i.aw = add i32 %i.av, %.02533.i                ; 2 uses
  %i.ax = tail call i32 @llvm.fshl.i32(i32 %i.aw, i32 %i.aw, i32 13)
  %i.ay = mul i32 %i.ax, -1640531535              ; 2 uses
  %i.az = mul i32 %.0.copyload.i30.i, -2048144777
  %i.ba = add i32 %i.az, %.02632.i                ; 2 uses
  %i.bb = tail call i32 @llvm.fshl.i32(i32 %i.ba, i32 %i.ba, i32 13)
  %i.bc = mul i32 %i.bb, -1640531535              ; 2 uses
  %i.bd = add nuw nsw i64 %.02731.i, 1
  %exitcond.not.i = icmp eq i64 %.02731.i, %i.ah
  br i1 %exitcond.not.i, label %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit.thread, label %.lr.ph.i, !llvm.loop !9

_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit: ; preds = %_ZN5arrow8bit_util7CeilDivEll.exit
  %.not68 = icmp eq i64 %i.x, 0
  br i1 %.not68, label %bb.e, label %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit.thread

_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit.thread: ; preds = %.lr.ph.i, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit
  %.0.lcssa.i136 = phi i32 [ 606290984, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit ], [ %i.aq, %.lr.ph.i ]
  %.024.lcssa.i135 = phi i32 [ -2048144777, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit ], [ %i.au, %.lr.ph.i ]
  %.025.lcssa.i134 = phi i32 [ 0, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit ], [ %i.ay, %.lr.ph.i ]
  %.026.lcssa.i133 = phi i32 [ 1640531535, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit ], [ %i.bc, %.lr.ph.i ]
  %i.be = shl i64 %i.x, 4
  %i.bf = getelementptr i8, ptr %i.af, i64 %i.be  ; 4 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 -16
  %.0.copyload.i.i70 = load i32, ptr %i.bg, align 1
  %i.bh = getelementptr i8, ptr %i.bf, i64 -12
  %.0.copyload.i23.i = load i32, ptr %i.bh, align 1
  %i.bi = getelementptr i8, ptr %i.bf, i64 -8
  %.0.copyload.i24.i = load i32, ptr %i.bi, align 1
  %i.bj = getelementptr i8, ptr %i.bf, i64 -4
  %.0.copyload.i25.i = load i32, ptr %i.bj, align 1
  %i.bk = and i32 %.0.copyload.i.i70, %.0.copyload.i.i
  %i.bl = and i32 %.0.copyload.i23.i, %.0.copyload.i9.i
  %i.bm = and i32 %.0.copyload.i24.i, %.0.copyload.i10.i
  %i.bn = and i32 %.0.copyload.i25.i, %.0.copyload.i11.i
  %i.bo = mul i32 %i.bk, -2048144777
  %i.bp = add i32 %i.bo, %.0.lcssa.i136           ; 2 uses
  %i.bq = tail call i32 @llvm.fshl.i32(i32 %i.bp, i32 %i.bp, i32 13)
  %i.br = mul i32 %i.bq, -1640531535              ; 2 uses
  %i.bs = mul i32 %i.bl, -2048144777
  %i.bt = add i32 %i.bs, %.024.lcssa.i135         ; 2 uses
  %i.bu = tail call i32 @llvm.fshl.i32(i32 %i.bt, i32 %i.bt, i32 13)
  %i.bv = mul i32 %i.bu, -1640531535              ; 2 uses
  %i.bw = mul i32 %i.bm, -2048144777
  %i.bx = add i32 %i.bw, %.025.lcssa.i134         ; 2 uses
  %i.by = tail call i32 @llvm.fshl.i32(i32 %i.bx, i32 %i.bx, i32 13)
  %i.bz = mul i32 %i.by, -1640531535              ; 2 uses
  %i.ca = mul i32 %i.bn, -2048144777
  %i.cb = add i32 %i.ca, %.026.lcssa.i133         ; 2 uses
  %i.cc = tail call i32 @llvm.fshl.i32(i32 %i.cb, i32 %i.cb, i32 13)
  %i.cd = mul i32 %i.cc, -1640531535              ; 2 uses
  %i.ce = tail call i32 @llvm.fshl.i32(i32 %i.br, i32 %i.br, i32 1)
  %i.cf = tail call i32 @llvm.fshl.i32(i32 %i.bv, i32 %i.bv, i32 7)
  %i.cg = add i32 %i.cf, %i.ce
  %i.ch = tail call i32 @llvm.fshl.i32(i32 %i.bz, i32 %i.bz, i32 12)
  %i.ci = add i32 %i.cg, %i.ch
  %i.cj = tail call i32 @llvm.fshl.i32(i32 %i.cd, i32 %i.cd, i32 18)
  %i.ck = add i32 %i.ci, %i.cj
  br label %bb.e

bb.e:                                             ; preds = %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit.thread, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit
  %i.cl = phi i32 [ 1466518324, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit ], [ %i.ck, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit.thread ] ; 2 uses
  %i.cm = lshr i32 %i.cl, 15
  %i.cn = xor i32 %i.cm, %i.cl
  %i.co = mul i32 %i.cn, -2048144777              ; 2 uses
  %i.cp = lshr i32 %i.co, 13
  %i.cq = xor i32 %i.cp, %i.co
  %i.cr = mul i32 %i.cq, -1028477379              ; 2 uses
  %i.cs = lshr i32 %i.cr, 16
  %i.ct = xor i32 %i.cs, %i.cr
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !3
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph154, !llvm.loop !21

._crit_edge158:                                   ; preds = %bb.k, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.f:                                             ; preds = %.lr.ph157, %bb.k
  %i.cv = phi i64 [ %.pre177, %.lr.ph157 ], [ %i.cx, %bb.k ] ; 4 uses
  %indvars.iv172 = phi i64 [ %i.l, %.lr.ph157 ], [ %indvars.iv.next173, %bb.k ] ; 2 uses
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 3 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next173
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !15 ; 4 uses
  %i.cy = sub i64 %i.cx, %i.cv                    ; 3 uses
  %i.cz = icmp ne i64 %i.cx, %i.cv                ; 3 uses
  %i.da = icmp eq i64 %i.cx, %i.cv                ; 2 uses
  br i1 %i.da, label %_ZN5arrow8bit_util7CeilDivEll.exit71, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.db = add nsw i64 %i.cy, -1
  %i.dc = sdiv i64 %i.db, 16
  %i.dd = add nsw i64 %i.dc, 1
  br label %_ZN5arrow8bit_util7CeilDivEll.exit71

_ZN5arrow8bit_util7CeilDivEll.exit71:             ; preds = %bb.f, %bb.g
  %i.de = phi i64 [ %i.dd, %bb.g ], [ 0, %bb.f ]
  %not. = xor i1 %i.cz, true
  %i.df = zext i1 %not. to i64
  %i.dg = add nsw i64 %i.de, %i.df                ; 4 uses
  %.neg163 = sext i1 %i.cz to i64
  %i.dh = add i64 %i.cy, %.neg163
  %i.di = and i64 %i.dh, 15
  %.neg138 = select i1 %i.cz, i64 15, i64 16
  %i.dj = sub nuw nsw i64 %.neg138, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr @_ZZN5arrow7compute9Hashing3210StripeMaskEiPjS2_S2_S2_E5bytes, i64 %i.dj ; 4 uses
  %.0.copyload.i.i72 = load i32, ptr %i.dk, align 1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %.0.copyload.i9.i73 = load i32, ptr %i.dl, align 1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.0.copyload.i10.i74 = load i32, ptr %i.dm, align 1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  %.0.copyload.i11.i75 = load i32, ptr %i.dn, align 1
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 %i.cv ; 2 uses
  %i.dp = icmp sgt i64 %i.dg, 1
  br i1 %i.dp, label %.lr.ph.preheader.i80, label %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit92

.lr.ph.preheader.i80:                             ; preds = %_ZN5arrow8bit_util7CeilDivEll.exit71
  %i.dq = add nsw i64 %i.dg, -2
  br label %.lr.ph.i81

.lr.ph.i81:                                       ; preds = %.lr.ph.i81, %.lr.ph.preheader.i80
  %.035.i82 = phi i32 [ %i.dz, %.lr.ph.i81 ], [ 606290984, %.lr.ph.preheader.i80 ]
  %.02434.i83 = phi i32 [ %i.ed, %.lr.ph.i81 ], [ -2048144777, %.lr.ph.preheader.i80 ]
  %.02533.i84 = phi i32 [ %i.eh, %.lr.ph.i81 ], [ 0, %.lr.ph.preheader.i80 ]
  %.02632.i85 = phi i32 [ %i.el, %.lr.ph.i81 ], [ 1640531535, %.lr.ph.preheader.i80 ]
  %.02731.i86 = phi i64 [ %i.em, %.lr.ph.i81 ], [ 0, %.lr.ph.preheader.i80 ] ; 3 uses
  %i.dr = shl nuw nsw i64 %.02731.i86, 4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dr ; 4 uses
  %.0.copyload.i.i87 = load i32, ptr %i.ds, align 1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %.0.copyload.i28.i88 = load i32, ptr %i.dt, align 1
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %.0.copyload.i29.i89 = load i32, ptr %i.du, align 1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  %.0.copyload.i30.i90 = load i32, ptr %i.dv, align 1
  %i.dw = mul i32 %.0.copyload.i.i87, -2048144777
  %i.dx = add i32 %i.dw, %.035.i82                ; 2 uses
  %i.dy = tail call i32 @llvm.fshl.i32(i32 %i.dx, i32 %i.dx, i32 13)
  %i.dz = mul i32 %i.dy, -1640531535              ; 2 uses
  %i.ea = mul i32 %.0.copyload.i28.i88, -2048144777
  %i.eb = add i32 %i.ea, %.02434.i83              ; 2 uses
  %i.ec = tail call i32 @llvm.fshl.i32(i32 %i.eb, i32 %i.eb, i32 13)
  %i.ed = mul i32 %i.ec, -1640531535              ; 2 uses
  %i.ee = mul i32 %.0.copyload.i29.i89, -2048144777
  %i.ef = add i32 %i.ee, %.02533.i84              ; 2 uses
  %i.eg = tail call i32 @llvm.fshl.i32(i32 %i.ef, i32 %i.ef, i32 13)
  %i.eh = mul i32 %i.eg, -1640531535              ; 2 uses
  %i.ei = mul i32 %.0.copyload.i30.i90, -2048144777
  %i.ej = add i32 %i.ei, %.02632.i85              ; 2 uses
  %i.ek = tail call i32 @llvm.fshl.i32(i32 %i.ej, i32 %i.ej, i32 13)
  %i.el = mul i32 %i.ek, -1640531535              ; 2 uses
  %i.em = add nuw nsw i64 %.02731.i86, 1
  %exitcond.not.i91 = icmp eq i64 %.02731.i86, %i.dq
  br i1 %exitcond.not.i91, label %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit92, label %.lr.ph.i81, !llvm.loop !9

_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit92: ; preds = %.lr.ph.i81, %_ZN5arrow8bit_util7CeilDivEll.exit71
  %.026.lcssa.i76 = phi i32 [ 1640531535, %_ZN5arrow8bit_util7CeilDivEll.exit71 ], [ %i.el, %.lr.ph.i81 ] ; 2 uses
  %.025.lcssa.i77 = phi i32 [ 0, %_ZN5arrow8bit_util7CeilDivEll.exit71 ], [ %i.eh, %.lr.ph.i81 ] ; 2 uses
  %.024.lcssa.i78 = phi i32 [ -2048144777, %_ZN5arrow8bit_util7CeilDivEll.exit71 ], [ %i.ed, %.lr.ph.i81 ] ; 2 uses
  %.0.lcssa.i79 = phi i32 [ 606290984, %_ZN5arrow8bit_util7CeilDivEll.exit71 ], [ %i.dz, %.lr.ph.i81 ] ; 2 uses
  br i1 %i.da, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit92
  %i.en = shl i64 %i.dg, 4
  %i.eo = add i64 %i.en, -16                      ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.eo
  %i.eq = sub i64 %i.cy, %i.eo
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.ep, i64 %i.eq, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit92
  %.not65 = icmp eq i64 %i.dg, 0
  br i1 %.not65, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.0..0..0..0.copyload.i.i93 = load i32, ptr %i.a, align 16
  %.4..4..4..0.copyload.i23.i94 = load i32, ptr %.4..4..4..sroa_idx, align 4
  %.8..8..8..0.copyload.i24.i95 = load i32, ptr %.8..8..8..sroa_idx, align 8
  %.12..12..12..0.copyload.i25.i96 = load i32, ptr %.12..12..12..sroa_idx, align 4
  %i.er = and i32 %.0..0..0..0.copyload.i.i93, %.0.copyload.i.i72
  %i.es = and i32 %.4..4..4..0.copyload.i23.i94, %.0.copyload.i9.i73
  %i.et = and i32 %.8..8..8..0.copyload.i24.i95, %.0.copyload.i10.i74
  %i.eu = and i32 %.12..12..12..0.copyload.i25.i96, %.0.copyload.i11.i75
  %i.ev = mul i32 %i.er, -2048144777
  %i.ew = add i32 %i.ev, %.0.lcssa.i79            ; 2 uses
  %i.ex = tail call i32 @llvm.fshl.i32(i32 %i.ew, i32 %i.ew, i32 13)
  %i.ey = mul i32 %i.ex, -1640531535
  %i.ez = mul i32 %i.es, -2048144777
  %i.fa = add i32 %i.ez, %.024.lcssa.i78          ; 2 uses
  %i.fb = tail call i32 @llvm.fshl.i32(i32 %i.fa, i32 %i.fa, i32 13)
  %i.fc = mul i32 %i.fb, -1640531535
  %i.fd = mul i32 %i.et, -2048144777
  %i.fe = add i32 %i.fd, %.025.lcssa.i77          ; 2 uses
  %i.ff = tail call i32 @llvm.fshl.i32(i32 %i.fe, i32 %i.fe, i32 13)
  %i.fg = mul i32 %i.ff, -1640531535
  %i.fh = mul i32 %i.eu, -2048144777
  %i.fi = add i32 %i.fh, %.026.lcssa.i76          ; 2 uses
  %i.fj = tail call i32 @llvm.fshl.i32(i32 %i.fi, i32 %i.fi, i32 13)
  %i.fk = mul i32 %i.fj, -1640531535
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0123 = phi i32 [ %.0.lcssa.i79, %bb.i ], [ %i.ey, %bb.j ] ; 2 uses
  %.0122 = phi i32 [ %.024.lcssa.i78, %bb.i ], [ %i.fc, %bb.j ] ; 2 uses
  %.0121 = phi i32 [ %.025.lcssa.i77, %bb.i ], [ %i.fg, %bb.j ] ; 2 uses
  %.0120 = phi i32 [ %.026.lcssa.i76, %bb.i ], [ %i.fk, %bb.j ] ; 2 uses
  %i.fl = tail call i32 @llvm.fshl.i32(i32 %.0123, i32 %.0123, i32 1)
  %i.fm = tail call i32 @llvm.fshl.i32(i32 %.0122, i32 %.0122, i32 7)
  %i.fn = add i32 %i.fm, %i.fl
  %i.fo = tail call i32 @llvm.fshl.i32(i32 %.0121, i32 %.0121, i32 12)
  %i.fp = add i32 %i.fn, %i.fo
  %i.fq = tail call i32 @llvm.fshl.i32(i32 %.0120, i32 %.0120, i32 18)
  %i.fr = add i32 %i.fp, %i.fq                    ; 2 uses
  %i.fs = lshr i32 %i.fr, 15
  %i.ft = xor i32 %i.fs, %i.fr
  %i.fu = mul i32 %i.ft, -2048144777              ; 2 uses
  %i.fv = lshr i32 %i.fu, 13
  %i.fw = xor i32 %i.fv, %i.fu
  %i.fx = mul i32 %i.fw, -1028477379              ; 2 uses
  %i.fy = lshr i32 %i.fx, 16
  %i.fz = xor i32 %i.fy, %i.fx
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv172
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !3
  %exitcond176.not = icmp eq i64 %indvars.iv.next173, %wide.trip.count175
  br i1 %exitcond176.not, label %._crit_edge158, label %bb.f, !llvm.loop !22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5arrow7compute9Hashing327HashBitEbljPKhPj(i1 noundef zeroext %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #2 align 2 {
bb.a:
  %.not.i = icmp eq i32 %2, 0                     ; 2 uses
  br i1 %0, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %_ZN5arrow7compute9Hashing3210HashBitImpILb1EEEvljPKhPj.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext i32 %2 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 3 uses
  %i.a = add nsw i64 %indvars.iv.i, %1            ; 2 uses
  %i.b = lshr i64 %i.a, 3
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !23
  %i.e = trunc i64 %i.a to i8
  %i.f = and i8 %i.e, 7
  %i.g = lshr i8 %i.d, %i.f
  %i.h = trunc i8 %i.g to i1
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3    ; 3 uses
  %i.k = select i1 %i.h, i32 606290992, i32 1013904234
  %i.l = shl i32 %i.j, 6
  %i.m = lshr i32 %i.j, 2
  %i.n = add i32 %i.m, %i.l
  %i.o = add i32 %i.n, %i.k
  %i.p = xor i32 %i.o, %i.j
  store i32 %i.p, ptr %i.i, align 4, !tbaa !3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN5arrow7compute9Hashing3210HashBitImpILb1EEEvljPKhPj.exit, label %.lr.ph.i, !llvm.loop !24

bb.c:                                             ; preds = %bb.a
  br i1 %.not.i, label %_ZN5arrow7compute9Hashing3210HashBitImpILb1EEEvljPKhPj.exit, label %.lr.ph.preheader.i9

.lr.ph.preheader.i9:                              ; preds = %bb.c
  %wide.trip.count.i10 = zext i32 %2 to i64       ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i10, 1
  %i.q = icmp eq i32 %2, 1
  br i1 %i.q, label %.lr.ph.i11.epil.preheader, label %.lr.ph.preheader.i9.new

.lr.ph.preheader.i9.new:                          ; preds = %.lr.ph.preheader.i9
  %unroll_iter = and i64 %wide.trip.count.i10, 4294967294
  br label %.lr.ph.i11

.lr.ph.i11:                                       ; preds = %.lr.ph.i11, %.lr.ph.preheader.i9.new
  %indvars.iv.i12 = phi i64 [ 0, %.lr.ph.preheader.i9.new ], [ %indvars.iv.next.i13.1, %.lr.ph.i11 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i9.new ], [ %niter.next.1, %.lr.ph.i11 ]
  %i.r = add nsw i64 %indvars.iv.i12, %1          ; 2 uses
  %i.s = lshr i64 %i.r, 3
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !23
  %i.v = trunc i64 %i.r to i8
  %i.w = and i8 %i.v, 7
  %i.x = lshr i8 %i.u, %i.w
  %i.y = trunc i8 %i.x to i1
  %i.z = select i1 %i.y, i32 -2048144777, i32 -1640531535
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i12
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !3
  %indvars.iv.next.i13 = or disjoint i64 %indvars.iv.i12, 1 ; 2 uses
  %i.ab = add nsw i64 %indvars.iv.next.i13, %1    ; 2 uses
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !23
  %i.af = trunc i64 %i.ab to i8
  %i.ag = and i8 %i.af, 7
  %i.ah = lshr i8 %i.ae, %i.ag
  %i.ai = trunc i8 %i.ah to i1
  %i.aj = select i1 %i.ai, i32 -2048144777, i32 -1640531535
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next.i13
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !3
  %indvars.iv.next.i13.1 = add nuw nsw i64 %indvars.iv.i12, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5arrow7compute9Hashing3210HashBitImpILb1EEEvljPKhPj.exit.loopexit19.unr-lcssa, label %.lr.ph.i11, !llvm.loop !25

_ZN5arrow7compute9Hashing3210HashBitImpILb1EEEvljPKhPj.exit.loopexit19.unr-lcssa: ; preds = %.lr.ph.i11
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5arrow7compute9Hashing3210HashBitImpILb1EEEvljPKhPj.exit, label %.lr.ph.i11.epil.preheader

.lr.ph.i11.epil.preheader:                        ; preds = %_ZN5arrow7compute9Hashing3210HashBitImpILb1EEEvljPKhPj.exit.loopexit19.unr-lcssa, %.lr.ph.preheader.i9
  %indvars.iv.i12.epil.init = phi i64 [ 0, %.lr.ph.preheader.i9 ], [ %indvars.iv.next.i13.1, %_ZN5arrow7compute9Hashing3210HashBitImpILb1EEEvljPKhPj.exit.loopexit19.unr-lcssa ] ; 2 uses
  %lcmp.mod20 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod20)
  %i.al = add nsw i64 %indvars.iv.i12.epil.init, %1 ; 2 uses
  %i.am = lshr i64 %i.al, 3
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !23
  %i.ap = trunc i64 %i.al to i8
  %i.aq = and i8 %i.ap, 7
  %i.ar = lshr i8 %i.ao, %i.aq
  %i.as = trunc i8 %i.ar to i1
  %i.at = select i1 %i.as, i32 -2048144777, i32 -1640531535
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i12.epil.init
  store i32 %i.at, ptr %i.au, align 4, !tbaa !3
  br label %_ZN5arrow7compute9Hashing3210HashBitImpILb1EEEvljPKhPj.exit
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute9Hashing327HashIntEbjmPKhPj:bb.a
  %lcmp.mod170.not = icmp eq i64 %xtraiter168, 0
  br i1 %lcmp.mod170.not, label %_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit, label %.lr.ph.i45.epil.preheader

.lr.ph.i45.epil.preheader:                        ; preds = %_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit.loopexit154.unr-lcssa, %.lr.ph.preheader.i43
  %indvars.iv.i46.epil.init = phi i64 [ 0, %.lr.ph.preheader.i43 ], [ %indvars.iv.next.i47.3, %_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit.loopexit154.unr-lcssa ]
  %lcmp.mod171 = icmp ne i64 %xtraiter168, 0
  tail call void @llvm.assume(i1 %lcmp.mod171)
  br label %.lr.ph.i45.epil

.lr.ph.i45.epil:                                  ; preds = %.lr.ph.i45.epil, %.lr.ph.i45.epil.preheader
  %indvars.iv.i46.epil = phi i64 [ %indvars.iv.i46.epil.init, %.lr.ph.i45.epil.preheader ], [ %indvars.iv.next.i47.epil, %.lr.ph.i45.epil ] ; 3 uses
  %epil.iter169 = phi i64 [ 0, %.lr.ph.i45.epil.preheader ], [ %epil.iter169.next, %.lr.ph.i45.epil ]
  %i.ke = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv.i46.epil
  %i.kf = load i16, ptr %i.ke, align 2, !tbaa !36
  %i.kg = zext i16 %i.kf to i64
  %i.kh = mul i64 %i.kg, -7046029288634856825
  %i.ki = tail call i64 @llvm.bswap.i64(i64 %i.kh)
  %i.kj = trunc i64 %i.ki to i32
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i46.epil
  store i32 %i.kj, ptr %i.kk, align 4, !tbaa !3
  %indvars.iv.next.i47.epil = add nuw nsw i64 %indvars.iv.i46.epil, 1
  %epil.iter169.next = add i64 %epil.iter169, 1   ; 2 uses
  %epil.iter169.cmp.not = icmp eq i64 %epil.iter169.next, %xtraiter168
  br i1 %epil.iter169.cmp.not, label %_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit, label %.lr.ph.i45.epil, !llvm.loop !54

_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit.loopexit156.unr-lcssa: ; preds = %.lr.ph.i59
  %lcmp.mod162.not = icmp eq i64 %xtraiter160, 0
  br i1 %lcmp.mod162.not, label %_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit, label %.lr.ph.i59.epil.preheader

.lr.ph.i59.epil.preheader:                        ; preds = %_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit.loopexit156.unr-lcssa, %.lr.ph.preheader.i57
  %indvars.iv.i60.epil.init = phi i64 [ 0, %.lr.ph.preheader.i57 ], [ %indvars.iv.next.i61.3, %_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit.loopexit156.unr-lcssa ]
  %lcmp.mod163 = icmp ne i64 %xtraiter160, 0
  tail call void @llvm.assume(i1 %lcmp.mod163)
  br label %.lr.ph.i59.epil

.lr.ph.i59.epil:                                  ; preds = %.lr.ph.i59.epil, %.lr.ph.i59.epil.preheader
  %indvars.iv.i60.epil = phi i64 [ %indvars.iv.i60.epil.init, %.lr.ph.i59.epil.preheader ], [ %indvars.iv.next.i61.epil, %.lr.ph.i59.epil ] ; 3 uses
  %epil.iter161 = phi i64 [ 0, %.lr.ph.i59.epil.preheader ], [ %epil.iter161.next, %.lr.ph.i59.epil ]
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i60.epil
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !3
  %i.kn = zext i32 %i.km to i64
  %i.ko = mul i64 %i.kn, -7046029288634856825
  %i.kp = tail call i64 @llvm.bswap.i64(i64 %i.ko)
  %i.kq = trunc i64 %i.kp to i32
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i60.epil
  store i32 %i.kq, ptr %i.kr, align 4, !tbaa !3
  %indvars.iv.next.i61.epil = add nuw nsw i64 %indvars.iv.i60.epil, 1
  %epil.iter161.next = add i64 %epil.iter161, 1   ; 2 uses
  %epil.iter161.cmp.not = icmp eq i64 %epil.iter161.next, %xtraiter160
  br i1 %epil.iter161.cmp.not, label %_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit, label %.lr.ph.i59.epil, !llvm.loop !55

_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit.loopexit158.unr-lcssa: ; preds = %.lr.ph.i73
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit, label %.lr.ph.i73.epil.preheader

.lr.ph.i73.epil.preheader:                        ; preds = %_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit.loopexit158.unr-lcssa, %.lr.ph.preheader.i71
  %indvars.iv.i74.epil.init = phi i64 [ 0, %.lr.ph.preheader.i71 ], [ %indvars.iv.next.i75.3, %_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit.loopexit158.unr-lcssa ]
  %lcmp.mod159 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod159)
  br label %.lr.ph.i73.epil

.lr.ph.i73.epil:                                  ; preds = %.lr.ph.i73.epil, %.lr.ph.i73.epil.preheader
  %indvars.iv.i74.epil = phi i64 [ %indvars.iv.i74.epil.init, %.lr.ph.i73.epil.preheader ], [ %indvars.iv.next.i75.epil, %.lr.ph.i73.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i73.epil.preheader ], [ %epil.iter.next, %.lr.ph.i73.epil ]
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i74.epil
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !15
  %i.ku = mul i64 %i.kt, -7046029288634856825
  %i.kv = tail call i64 @llvm.bswap.i64(i64 %i.ku)
  %i.kw = trunc i64 %i.kv to i32
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i74.epil
  store i32 %i.kw, ptr %i.kx, align 4, !tbaa !3
  %indvars.iv.next.i75.epil = add nuw nsw i64 %indvars.iv.i74.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit, label %.lr.ph.i73.epil, !llvm.loop !56

_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit: ; preds = %_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit.loopexit158.unr-lcssa, %.lr.ph.i73.epil, %.lr.ph.i66, %_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit.loopexit156.unr-lcssa, %.lr.ph.i59.epil, %.lr.ph.i52.prol.loopexit, %.lr.ph.i52, %_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit.loopexit154.unr-lcssa, %.lr.ph.i45.epil, %.lr.ph.i38, %_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit.loopexit152.unr-lcssa, %.lr.ph.i31.epil, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %middle.block117, %middle.block130, %middle.block149, %bb.m, %bb.l, %bb.j, %bb.i, %bb.g, %bb.f, %bb.d, %bb.c, %.split, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute9Hashing329HashFixedElbjmPKhPjS4_(i64 noundef %0, i1 noundef zeroext %1, i32 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef readnone captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %3)
  %i.b = icmp eq i64 %i.a, 1
  %i.c = icmp ult i64 %3, 9
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow7compute9Hashing327HashIntEbjmPKhPj(i1 noundef zeroext %1, i32 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  br i1 %1, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5arrow7compute9Hashing3215HashFixedLenImpILb1EEEvjmPKhPj(i32 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN5arrow7compute9Hashing3215HashFixedLenImpILb0EEEvjmPKhPj(i32 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute9Hashing3215HashFixedLenImpILb1EEEvjmPKhPj(i32 noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 7 uses
  %.not97 = icmp eq i32 %0, 0
  br i1 %.not97, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ %i.b, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.c = trunc nuw i64 %indvars.iv to i32         ; 2 uses
  %i.d = sub i32 %0, %i.c
  %i.e = zext i32 %i.d to i64
  %i.f = mul i64 %1, %i.e
  %i.g = icmp ult i64 %i.f, 16
  br i1 %i.g, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.h = and i64 %indvars.iv.next, 4294967295
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !57

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.c, %.lr.ph ] ; 4 uses
  %i.i = icmp eq i64 %1, 0
  br i1 %i.i, label %_ZN5arrow8bit_util7CeilDivEll.exit, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.j = add nsw i64 %1, -1
  %i.k = sdiv i64 %i.j, 16
  %i.l = add nsw i64 %i.k, 1
  br label %_ZN5arrow8bit_util7CeilDivEll.exit

_ZN5arrow8bit_util7CeilDivEll.exit:               ; preds = %.critedge, %bb.c
  %i.m = phi i64 [ %i.l, %bb.c ], [ 0, %.critedge ] ; 6 uses
  %i.n = sub i64 0, %1
  %i.o = and i64 %i.n, 15
  %i.p = getelementptr inbounds nuw i8, ptr @_ZZN5arrow7compute9Hashing3210StripeMaskEiPjS2_S2_S2_E5bytes, i64 %i.o ; 4 uses
  %.0.copyload.i.i = load i32, ptr %i.p, align 1  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %.0.copyload.i9.i = load i32, ptr %i.q, align 1 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.0.copyload.i10.i = load i32, ptr %i.r, align 1 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %.0.copyload.i11.i = load i32, ptr %i.s, align 1 ; 2 uses
  %.not107 = icmp eq i32 %.0.lcssa, 0
  br i1 %.not107, label %._crit_edge, label %.lr.ph102

.lr.ph102:                                        ; preds = %_ZN5arrow8bit_util7CeilDivEll.exit
  %i.t = icmp sgt i64 %i.m, 1
  %i.u = add nsw i64 %i.m, -2
  %i.v = shl i64 %i.m, 4
  %wide.trip.count = zext i32 %.0.lcssa to i64
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit, %_ZN5arrow8bit_util7CeilDivEll.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = icmp ult i32 %.0.lcssa, %0
  br i1 %i.w, label %.lr.ph105, label %._crit_edge106

.lr.ph105:                                        ; preds = %._crit_edge
  %i.x = icmp sgt i64 %i.m, 1
  %i.y = add nsw i64 %i.m, -2
  %i.z = shl i64 %i.m, 4
  %i.aa = add i64 %i.z, -16                       ; 2 uses
  %i.ab = sub i64 %1, %i.aa
  %i.ac = zext i32 %.0.lcssa to i64
  %wide.trip.count124 = zext i32 %0 to i64
  %.4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.12..12..12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph102, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit
  %indvars.iv116 = phi i64 [ 0, %.lr.ph102 ], [ %indvars.iv.next117, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit ] ; 3 uses
  %i.ad = mul i64 %1, %indvars.iv116
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %i.ad ; 2 uses
  br i1 %i.t, label %.lr.ph.i, label %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.035.i = phi i32 [ %i.an, %.lr.ph.i ], [ 606290984, %bb.d ]
  %.02434.i = phi i32 [ %i.ar, %.lr.ph.i ], [ -2048144777, %bb.d ]
  %.02533.i = phi i32 [ %i.av, %.lr.ph.i ], [ 0, %bb.d ]
  %.02632.i = phi i32 [ %i.az, %.lr.ph.i ], [ 1640531535, %bb.d ]
  %.02731.i = phi i64 [ %i.ba, %.lr.ph.i ], [ 0, %bb.d ] ; 3 uses
  %i.af = shl nuw nsw i64 %.02731.i, 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af ; 4 uses
  %.0.copyload.i.i44 = load i32, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %.0.copyload.i28.i = load i32, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.0.copyload.i29.i = load i32, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %.0.copyload.i30.i = load i32, ptr %i.aj, align 1
  %i.ak = mul i32 %.0.copyload.i.i44, -2048144777
  %i.al = add i32 %i.ak, %.035.i                  ; 2 uses
  %i.am = tail call i32 @llvm.fshl.i32(i32 %i.al, i32 %i.al, i32 13)
  %i.an = mul i32 %i.am, -1640531535              ; 2 uses
  %i.ao = mul i32 %.0.copyload.i28.i, -2048144777
  %i.ap = add i32 %i.ao, %.02434.i                ; 2 uses
  %i.aq = tail call i32 @llvm.fshl.i32(i32 %i.ap, i32 %i.ap, i32 13)
  %i.ar = mul i32 %i.aq, -1640531535              ; 2 uses
  %i.as = mul i32 %.0.copyload.i29.i, -2048144777
  %i.at = add i32 %i.as, %.02533.i                ; 2 uses
  %i.au = tail call i32 @llvm.fshl.i32(i32 %i.at, i32 %i.at, i32 13)
  %i.av = mul i32 %i.au, -1640531535              ; 2 uses
  %i.aw = mul i32 %.0.copyload.i30.i, -2048144777
  %i.ax = add i32 %i.aw, %.02632.i                ; 2 uses
  %i.ay = tail call i32 @llvm.fshl.i32(i32 %i.ax, i32 %i.ax, i32 13)
  %i.az = mul i32 %i.ay, -1640531535              ; 2 uses
  %i.ba = add nuw nsw i64 %.02731.i, 1
  %exitcond.not.i = icmp eq i64 %.02731.i, %i.u
  br i1 %exitcond.not.i, label %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit, label %.lr.ph.i, !llvm.loop !9

_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit: ; preds = %.lr.ph.i, %bb.d
  %.026.lcssa.i = phi i32 [ 1640531535, %bb.d ], [ %i.az, %.lr.ph.i ]
  %.025.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.av, %.lr.ph.i ]
  %.024.lcssa.i = phi i32 [ -2048144777, %bb.d ], [ %i.ar, %.lr.ph.i ]
  %.0.lcssa.i = phi i32 [ 606290984, %bb.d ], [ %i.an, %.lr.ph.i ]
  %i.bb = getelementptr i8, ptr %i.ae, i64 %i.v   ; 4 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 -16
  %.0.copyload.i.i45 = load i32, ptr %i.bc, align 1
  %i.bd = getelementptr i8, ptr %i.bb, i64 -12
  %.0.copyload.i23.i = load i32, ptr %i.bd, align 1
  %i.be = getelementptr i8, ptr %i.bb, i64 -8
  %.0.copyload.i24.i = load i32, ptr %i.be, align 1
  %i.bf = getelementptr i8, ptr %i.bb, i64 -4
  %.0.copyload.i25.i = load i32, ptr %i.bf, align 1
  %i.bg = and i32 %.0.copyload.i.i45, %.0.copyload.i.i
  %i.bh = and i32 %.0.copyload.i23.i, %.0.copyload.i9.i
  %i.bi = and i32 %.0.copyload.i24.i, %.0.copyload.i10.i
  %i.bj = and i32 %.0.copyload.i25.i, %.0.copyload.i11.i
  %i.bk = mul i32 %i.bg, -2048144777
  %i.bl = add i32 %i.bk, %.0.lcssa.i              ; 2 uses
  %i.bm = tail call i32 @llvm.fshl.i32(i32 %i.bl, i32 %i.bl, i32 13)
  %i.bn = mul i32 %i.bm, -1640531535              ; 2 uses
  %i.bo = mul i32 %i.bh, -2048144777
  %i.bp = add i32 %i.bo, %.024.lcssa.i            ; 2 uses
  %i.bq = tail call i32 @llvm.fshl.i32(i32 %i.bp, i32 %i.bp, i32 13)
  %i.br = mul i32 %i.bq, -1640531535              ; 2 uses
  %i.bs = mul i32 %i.bi, -2048144777
  %i.bt = add i32 %i.bs, %.025.lcssa.i            ; 2 uses
  %i.bu = tail call i32 @llvm.fshl.i32(i32 %i.bt, i32 %i.bt, i32 13)
  %i.bv = mul i32 %i.bu, -1640531535              ; 2 uses
  %i.bw = mul i32 %i.bj, -2048144777
  %i.bx = add i32 %i.bw, %.026.lcssa.i            ; 2 uses
  %i.by = tail call i32 @llvm.fshl.i32(i32 %i.bx, i32 %i.bx, i32 13)
  %i.bz = mul i32 %i.by, -1640531535              ; 2 uses
  %i.ca = tail call i32 @llvm.fshl.i32(i32 %i.bn, i32 %i.bn, i32 1)
  %i.cb = tail call i32 @llvm.fshl.i32(i32 %i.br, i32 %i.br, i32 7)
  %i.cc = add i32 %i.cb, %i.ca
  %i.cd = tail call i32 @llvm.fshl.i32(i32 %i.bv, i32 %i.bv, i32 12)
  %i.ce = add i32 %i.cc, %i.cd
  %i.cf = tail call i32 @llvm.fshl.i32(i32 %i.bz, i32 %i.bz, i32 18)
  %i.cg = add i32 %i.ce, %i.cf                    ; 2 uses
  %i.ch = lshr i32 %i.cg, 15
  %i.ci = xor i32 %i.ch, %i.cg
  %i.cj = mul i32 %i.ci, -2048144777              ; 2 uses
  %i.ck = lshr i32 %i.cj, 13
  %i.cl = xor i32 %i.ck, %i.cj
  %i.cm = mul i32 %i.cl, -1028477379              ; 2 uses
  %i.cn = lshr i32 %i.cm, 16
  %i.co = xor i32 %i.cn, %i.cm
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv116 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !3  ; 3 uses
  %i.cr = shl i32 %i.cq, 6
  %i.cs = lshr i32 %i.cq, 2
  %i.ct = add i32 %i.cr, -1640531527
  %i.cu = add i32 %i.ct, %i.cs
  %i.cv = add i32 %i.cu, %i.co
  %i.cw = xor i32 %i.cv, %i.cq
  store i32 %i.cw, ptr %i.cp, align 4, !tbaa !3
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next117, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !58

._crit_edge106:                                   ; preds = %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit62, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.e:                                             ; preds = %.lr.ph105, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit62
  %indvars.iv120 = phi i64 [ %i.ac, %.lr.ph105 ], [ %indvars.iv.next121, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit62 ] ; 3 uses
  %i.cx = mul i64 %1, %indvars.iv120
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 %i.cx ; 2 uses
  br i1 %i.x, label %.lr.ph.i51, label %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit62

.lr.ph.i51:                                       ; preds = %bb.e, %.lr.ph.i51
  %.035.i52 = phi i32 [ %i.dh, %.lr.ph.i51 ], [ 606290984, %bb.e ]
  %.02434.i53 = phi i32 [ %i.dl, %.lr.ph.i51 ], [ -2048144777, %bb.e ]
  %.02533.i54 = phi i32 [ %i.dp, %.lr.ph.i51 ], [ 0, %bb.e ]
  %.02632.i55 = phi i32 [ %i.dt, %.lr.ph.i51 ], [ 1640531535, %bb.e ]
  %.02731.i56 = phi i64 [ %i.du, %.lr.ph.i51 ], [ 0, %bb.e ] ; 3 uses
  %i.cz = shl nuw nsw i64 %.02731.i56, 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cz ; 4 uses
  %.0.copyload.i.i57 = load i32, ptr %i.da, align 1
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %.0.copyload.i28.i58 = load i32, ptr %i.db, align 1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %.0.copyload.i29.i59 = load i32, ptr %i.dc, align 1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  %.0.copyload.i30.i60 = load i32, ptr %i.dd, align 1
  %i.de = mul i32 %.0.copyload.i.i57, -2048144777
  %i.df = add i32 %i.de, %.035.i52                ; 2 uses
  %i.dg = tail call i32 @llvm.fshl.i32(i32 %i.df, i32 %i.df, i32 13)
  %i.dh = mul i32 %i.dg, -1640531535              ; 2 uses
  %i.di = mul i32 %.0.copyload.i28.i58, -2048144777
  %i.dj = add i32 %i.di, %.02434.i53              ; 2 uses
  %i.dk = tail call i32 @llvm.fshl.i32(i32 %i.dj, i32 %i.dj, i32 13)
  %i.dl = mul i32 %i.dk, -1640531535              ; 2 uses
  %i.dm = mul i32 %.0.copyload.i29.i59, -2048144777
  %i.dn = add i32 %i.dm, %.02533.i54              ; 2 uses
  %i.do = tail call i32 @llvm.fshl.i32(i32 %i.dn, i32 %i.dn, i32 13)
  %i.dp = mul i32 %i.do, -1640531535              ; 2 uses
  %i.dq = mul i32 %.0.copyload.i30.i60, -2048144777
  %i.dr = add i32 %i.dq, %.02632.i55              ; 2 uses
  %i.ds = tail call i32 @llvm.fshl.i32(i32 %i.dr, i32 %i.dr, i32 13)
  %i.dt = mul i32 %i.ds, -1640531535              ; 2 uses
  %i.du = add nuw nsw i64 %.02731.i56, 1
  %exitcond.not.i61 = icmp eq i64 %.02731.i56, %i.y
  br i1 %exitcond.not.i61, label %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit62, label %.lr.ph.i51, !llvm.loop !9

_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit62: ; preds = %.lr.ph.i51, %bb.e
  %.026.lcssa.i46 = phi i32 [ 1640531535, %bb.e ], [ %i.dt, %.lr.ph.i51 ]
  %.025.lcssa.i47 = phi i32 [ 0, %bb.e ], [ %i.dp, %.lr.ph.i51 ]
  %.024.lcssa.i48 = phi i32 [ -2048144777, %bb.e ], [ %i.dl, %.lr.ph.i51 ]
  %.0.lcssa.i49 = phi i32 [ 606290984, %bb.e ], [ %i.dh, %.lr.ph.i51 ]
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.aa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.dv, i64 %i.ab, i1 false)
  %.0..0..0..0.copyload.i.i63 = load i32, ptr %i.a, align 16
  %.4..4..4..0.copyload.i23.i64 = load i32, ptr %.4..4..4..sroa_idx, align 4
  %.8..8..8..0.copyload.i24.i65 = load i32, ptr %.8..8..8..sroa_idx, align 8
  %.12..12..12..0.copyload.i25.i66 = load i32, ptr %.12..12..12..sroa_idx, align 4
  %i.dw = and i32 %.0..0..0..0.copyload.i.i63, %.0.copyload.i.i
  %i.dx = and i32 %.4..4..4..0.copyload.i23.i64, %.0.copyload.i9.i
  %i.dy = and i32 %.8..8..8..0.copyload.i24.i65, %.0.copyload.i10.i
  %i.dz = and i32 %.12..12..12..0.copyload.i25.i66, %.0.copyload.i11.i
  %i.ea = mul i32 %i.dw, -2048144777
  %i.eb = add i32 %i.ea, %.0.lcssa.i49            ; 2 uses
  %i.ec = tail call i32 @llvm.fshl.i32(i32 %i.eb, i32 %i.eb, i32 13)
  %i.ed = mul i32 %i.ec, -1640531535              ; 2 uses
  %i.ee = mul i32 %i.dx, -2048144777
  %i.ef = add i32 %i.ee, %.024.lcssa.i48          ; 2 uses
  %i.eg = tail call i32 @llvm.fshl.i32(i32 %i.ef, i32 %i.ef, i32 13)
  %i.eh = mul i32 %i.eg, -1640531535              ; 2 uses
  %i.ei = mul i32 %i.dy, -2048144777
  %i.ej = add i32 %i.ei, %.025.lcssa.i47          ; 2 uses
  %i.ek = tail call i32 @llvm.fshl.i32(i32 %i.ej, i32 %i.ej, i32 13)
  %i.el = mul i32 %i.ek, -1640531535              ; 2 uses
  %i.em = mul i32 %i.dz, -2048144777
  %i.en = add i32 %i.em, %.026.lcssa.i46          ; 2 uses
  %i.eo = tail call i32 @llvm.fshl.i32(i32 %i.en, i32 %i.en, i32 13)
  %i.ep = mul i32 %i.eo, -1640531535              ; 2 uses
  %i.eq = tail call i32 @llvm.fshl.i32(i32 %i.ed, i32 %i.ed, i32 1)
  %i.er = tail call i32 @llvm.fshl.i32(i32 %i.eh, i32 %i.eh, i32 7)
  %i.es = add i32 %i.er, %i.eq
  %i.et = tail call i32 @llvm.fshl.i32(i32 %i.el, i32 %i.el, i32 12)
  %i.eu = add i32 %i.es, %i.et
  %i.ev = tail call i32 @llvm.fshl.i32(i32 %i.ep, i32 %i.ep, i32 18)
  %i.ew = add i32 %i.eu, %i.ev                    ; 2 uses
  %i.ex = lshr i32 %i.ew, 15
  %i.ey = xor i32 %i.ex, %i.ew
  %i.ez = mul i32 %i.ey, -2048144777              ; 2 uses
  %i.fa = lshr i32 %i.ez, 13
  %i.fb = xor i32 %i.fa, %i.ez
  %i.fc = mul i32 %i.fb, -1028477379              ; 2 uses
  %i.fd = lshr i32 %i.fc, 16
  %i.fe = xor i32 %i.fd, %i.fc
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv120 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !3  ; 3 uses
  %i.fh = shl i32 %i.fg, 6
  %i.fi = lshr i32 %i.fg, 2
  %i.fj = add i32 %i.fh, -1640531527
  %i.fk = add i32 %i.fj, %i.fi
  %i.fl = add i32 %i.fk, %i.fe
  %i.fm = xor i32 %i.fl, %i.fg
  store i32 %i.fm, ptr %i.ff, align 4, !tbaa !3
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %exitcond125.not = icmp eq i64 %indvars.iv.next121, %wide.trip.count124
  br i1 %exitcond125.not, label %._crit_edge106, label %bb.e, !llvm.loop !59
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute9Hashing3215HashFixedLenImpILb0EEEvjmPKhPj(i32 noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 7 uses
  %.not93 = icmp eq i32 %0, 0
  br i1 %.not93, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ %i.b, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.c = trunc nuw i64 %indvars.iv to i32         ; 2 uses
  %i.d = sub i32 %0, %i.c
  %i.e = zext i32 %i.d to i64
  %i.f = mul i64 %1, %i.e
  %i.g = icmp ult i64 %i.f, 16
  br i1 %i.g, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.h = and i64 %indvars.iv.next, 4294967295
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !60

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.c, %.lr.ph ] ; 6 uses
  %i.i = icmp eq i64 %1, 0
  br i1 %i.i, label %_ZN5arrow8bit_util7CeilDivEll.exit, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.j = add nsw i64 %1, -1
  %i.k = sdiv i64 %i.j, 16
  %i.l = add nsw i64 %i.k, 1
  br label %_ZN5arrow8bit_util7CeilDivEll.exit

_ZN5arrow8bit_util7CeilDivEll.exit:               ; preds = %.critedge, %bb.c
  %i.m = phi i64 [ %i.l, %bb.c ], [ 0, %.critedge ] ; 6 uses
  %i.n = sub i64 0, %1
  %i.o = and i64 %i.n, 15
  %i.p = getelementptr inbounds nuw i8, ptr @_ZZN5arrow7compute9Hashing3210StripeMaskEiPjS2_S2_S2_E5bytes, i64 %i.o ; 4 uses
  %.0.copyload.i.i = load i32, ptr %i.p, align 1  ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %.0.copyload.i9.i = load i32, ptr %i.q, align 1 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.0.copyload.i10.i = load i32, ptr %i.r, align 1 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %.0.copyload.i11.i = load i32, ptr %i.s, align 1 ; 4 uses
  %.not103 = icmp eq i32 %.0.lcssa, 0
  br i1 %.not103, label %._crit_edge, label %.lr.ph98

.lr.ph98:                                         ; preds = %_ZN5arrow8bit_util7CeilDivEll.exit
  %i.t = icmp sgt i64 %i.m, 1
  %i.u = add nsw i64 %i.m, -2
  %i.v = shl i64 %i.m, 4                          ; 8 uses
  br i1 %i.t, label %.lr.ph.preheader.i.us.preheader, label %.lr.ph98.split

.lr.ph.preheader.i.us.preheader:                  ; preds = %.lr.ph98
  %wide.trip.count121 = zext i32 %.0.lcssa to i64
  br label %.lr.ph.preheader.i.us

.lr.ph.preheader.i.us:                            ; preds = %.lr.ph.preheader.i.us.preheader, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit.loopexit.us
  %indvars.iv117 = phi i64 [ 0, %.lr.ph.preheader.i.us.preheader ], [ %indvars.iv.next118, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit.loopexit.us ] ; 3 uses
  %i.w = mul i64 %1, %indvars.iv117
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %i.w ; 2 uses
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us, %.lr.ph.preheader.i.us
  %.035.i.us = phi i32 [ %i.ag, %.lr.ph.i.us ], [ 606290984, %.lr.ph.preheader.i.us ]
  %.02434.i.us = phi i32 [ %i.ak, %.lr.ph.i.us ], [ -2048144777, %.lr.ph.preheader.i.us ]
  %.02533.i.us = phi i32 [ %i.ao, %.lr.ph.i.us ], [ 0, %.lr.ph.preheader.i.us ]
  %.02632.i.us = phi i32 [ %i.as, %.lr.ph.i.us ], [ 1640531535, %.lr.ph.preheader.i.us ]
  %.02731.i.us = phi i64 [ %i.at, %.lr.ph.i.us ], [ 0, %.lr.ph.preheader.i.us ] ; 3 uses
  %i.y = shl nuw nsw i64 %.02731.i.us, 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y ; 4 uses
  %.0.copyload.i.i40.us = load i32, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %.0.copyload.i28.i.us = load i32, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.0.copyload.i29.i.us = load i32, ptr %i.ab, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %.0.copyload.i30.i.us = load i32, ptr %i.ac, align 1
  %i.ad = mul i32 %.0.copyload.i.i40.us, -2048144777
  %i.ae = add i32 %i.ad, %.035.i.us               ; 2 uses
  %i.af = tail call i32 @llvm.fshl.i32(i32 %i.ae, i32 %i.ae, i32 13)
  %i.ag = mul i32 %i.af, -1640531535              ; 2 uses
  %i.ah = mul i32 %.0.copyload.i28.i.us, -2048144777
  %i.ai = add i32 %i.ah, %.02434.i.us             ; 2 uses
  %i.aj = tail call i32 @llvm.fshl.i32(i32 %i.ai, i32 %i.ai, i32 13)
  %i.ak = mul i32 %i.aj, -1640531535              ; 2 uses
  %i.al = mul i32 %.0.copyload.i29.i.us, -2048144777
  %i.am = add i32 %i.al, %.02533.i.us             ; 2 uses
  %i.an = tail call i32 @llvm.fshl.i32(i32 %i.am, i32 %i.am, i32 13)
  %i.ao = mul i32 %i.an, -1640531535              ; 2 uses
  %i.ap = mul i32 %.0.copyload.i30.i.us, -2048144777
  %i.aq = add i32 %i.ap, %.02632.i.us             ; 2 uses
  %i.ar = tail call i32 @llvm.fshl.i32(i32 %i.aq, i32 %i.aq, i32 13)
  %i.as = mul i32 %i.ar, -1640531535              ; 2 uses
  %i.at = add nuw nsw i64 %.02731.i.us, 1
  %exitcond.not.i.us = icmp eq i64 %.02731.i.us, %i.u
  br i1 %exitcond.not.i.us, label %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit.loopexit.us, label %.lr.ph.i.us, !llvm.loop !9

_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit.loopexit.us: ; preds = %.lr.ph.i.us
  %i.au = getelementptr i8, ptr %i.x, i64 %i.v    ; 4 uses
  %i.av = getelementptr i8, ptr %i.au, i64 -16
  %.0.copyload.i.i41.us = load i32, ptr %i.av, align 1
  %i.aw = getelementptr i8, ptr %i.au, i64 -12
  %.0.copyload.i23.i.us = load i32, ptr %i.aw, align 1
  %i.ax = getelementptr i8, ptr %i.au, i64 -8
  %.0.copyload.i24.i.us = load i32, ptr %i.ax, align 1
  %i.ay = getelementptr i8, ptr %i.au, i64 -4
  %.0.copyload.i25.i.us = load i32, ptr %i.ay, align 1
  %i.az = and i32 %.0.copyload.i.i41.us, %.0.copyload.i.i
  %i.ba = and i32 %.0.copyload.i23.i.us, %.0.copyload.i9.i
  %i.bb = and i32 %.0.copyload.i24.i.us, %.0.copyload.i10.i
  %i.bc = and i32 %.0.copyload.i25.i.us, %.0.copyload.i11.i
  %i.bd = mul i32 %i.az, -2048144777
  %i.be = add i32 %i.bd, %i.ag                    ; 2 uses
  %i.bf = tail call i32 @llvm.fshl.i32(i32 %i.be, i32 %i.be, i32 13)
  %i.bg = mul i32 %i.bf, -1640531535              ; 2 uses
  %i.bh = mul i32 %i.ba, -2048144777
  %i.bi = add i32 %i.bh, %i.ak                    ; 2 uses
  %i.bj = tail call i32 @llvm.fshl.i32(i32 %i.bi, i32 %i.bi, i32 13)
  %i.bk = mul i32 %i.bj, -1640531535              ; 2 uses
  %i.bl = mul i32 %i.bb, -2048144777
  %i.bm = add i32 %i.bl, %i.ao                    ; 2 uses
  %i.bn = tail call i32 @llvm.fshl.i32(i32 %i.bm, i32 %i.bm, i32 13)
  %i.bo = mul i32 %i.bn, -1640531535              ; 2 uses
  %i.bp = mul i32 %i.bc, -2048144777
  %i.bq = add i32 %i.bp, %i.as                    ; 2 uses
  %i.br = tail call i32 @llvm.fshl.i32(i32 %i.bq, i32 %i.bq, i32 13)
  %i.bs = mul i32 %i.br, -1640531535              ; 2 uses
  %i.bt = tail call i32 @llvm.fshl.i32(i32 %i.bg, i32 %i.bg, i32 1)
  %i.bu = tail call i32 @llvm.fshl.i32(i32 %i.bk, i32 %i.bk, i32 7)
  %i.bv = add i32 %i.bu, %i.bt
  %i.bw = tail call i32 @llvm.fshl.i32(i32 %i.bo, i32 %i.bo, i32 12)
  %i.bx = add i32 %i.bv, %i.bw
  %i.by = tail call i32 @llvm.fshl.i32(i32 %i.bs, i32 %i.bs, i32 18)
  %i.bz = add i32 %i.bx, %i.by                    ; 2 uses
  %i.ca = lshr i32 %i.bz, 15
  %i.cb = xor i32 %i.ca, %i.bz
  %i.cc = mul i32 %i.cb, -2048144777              ; 2 uses
  %i.cd = lshr i32 %i.cc, 13
  %i.ce = xor i32 %i.cd, %i.cc
  %i.cf = mul i32 %i.ce, -1028477379              ; 2 uses
  %i.cg = lshr i32 %i.cf, 16
  %i.ch = xor i32 %i.cg, %i.cf
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv117
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !3
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next118, %wide.trip.count121
  br i1 %exitcond122.not, label %._crit_edge, label %.lr.ph.preheader.i.us, !llvm.loop !61

.lr.ph98.split:                                   ; preds = %.lr.ph98
  %invariant.gep = getelementptr i8, ptr %2, i64 %i.v ; 5 uses
  %wide.trip.count = zext i32 %.0.lcssa to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %.0.lcssa, 8
  br i1 %min.iters.check, label %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph98.split
  %ident.check = icmp ne i64 %1, 1
  %i.cj = add nsw i64 %wide.trip.count, -1        ; 4 uses
  %i.ck = getelementptr i8, ptr %2, i64 %i.v
  %scevgep = getelementptr i8, ptr %i.ck, i64 -16 ; 2 uses
  %i.cl = getelementptr i8, ptr %scevgep, i64 %i.cj
  %i.cm = icmp ult ptr %i.cl, %scevgep
  %i.cn = getelementptr i8, ptr %2, i64 %i.v
  %scevgep146 = getelementptr i8, ptr %i.cn, i64 -12 ; 2 uses
  %i.co = getelementptr i8, ptr %scevgep146, i64 %i.cj
  %i.cp = icmp ult ptr %i.co, %scevgep146
  %i.cq = getelementptr i8, ptr %2, i64 %i.v
  %scevgep148 = getelementptr i8, ptr %i.cq, i64 -8 ; 2 uses
  %i.cr = getelementptr i8, ptr %scevgep148, i64 %i.cj
  %i.cs = icmp ult ptr %i.cr, %scevgep148
  %i.ct = getelementptr i8, ptr %2, i64 %i.v
  %scevgep150 = getelementptr i8, ptr %i.ct, i64 -4 ; 2 uses
  %i.cu = getelementptr i8, ptr %scevgep150, i64 %i.cj
  %i.cv = icmp ult ptr %i.cu, %scevgep150
  %i.cw = or i1 %ident.check, %i.cm
  %i.cx = or i1 %i.cw, %i.cp
  %i.cy = or i1 %i.cx, %i.cs
  %i.cz = or i1 %i.cy, %i.cv
  br i1 %i.cz, label %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.da = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep152 = getelementptr i8, ptr %3, i64 %i.da
  %i.db = getelementptr i8, ptr %2, i64 %i.v
  %scevgep153 = getelementptr i8, ptr %i.db, i64 -16
  %i.dc = getelementptr i8, ptr %2, i64 %i.v
  %i.dd = getelementptr i8, ptr %i.dc, i64 %wide.trip.count
  %scevgep154 = getelementptr i8, ptr %i.dd, i64 -1
  %bound0 = icmp ult ptr %3, %scevgep154
  %bound1 = icmp ult ptr %scevgep153, %scevgep152
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.0.copyload.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert155 = insertelement <4 x i32> poison, i32 %.0.copyload.i9.i, i64 0
  %broadcast.splat156 = shufflevector <4 x i32> %broadcast.splatinsert155, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert157 = insertelement <4 x i32> poison, i32 %.0.copyload.i10.i, i64 0
  %broadcast.splat158 = shufflevector <4 x i32> %broadcast.splatinsert157, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert159 = insertelement <4 x i32> poison, i32 %.0.copyload.i11.i, i64 0
  %broadcast.splat160 = shufflevector <4 x i32> %broadcast.splatinsert159, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.de = getelementptr i8, ptr %invariant.gep, i64 %index ; 4 uses
  %i.df = getelementptr i8, ptr %invariant.gep, i64 %index ; 4 uses
  %i.dg = getelementptr i8, ptr %invariant.gep, i64 %index ; 4 uses
  %i.dh = getelementptr i8, ptr %invariant.gep, i64 %index ; 4 uses
  %i.di = getelementptr i8, ptr %i.de, i64 -16
  %i.dj = getelementptr i8, ptr %i.df, i64 -15
  %i.dk = getelementptr i8, ptr %i.dg, i64 -14
  %i.dl = getelementptr i8, ptr %i.dh, i64 -13
  %i.dm = load i32, ptr %i.di, align 1, !alias.scope !62
  %i.dn = load i32, ptr %i.dj, align 1, !alias.scope !62
  %i.do = load i32, ptr %i.dk, align 1, !alias.scope !62
  %i.dp = load i32, ptr %i.dl, align 1, !alias.scope !62
  %i.dq = insertelement <4 x i32> poison, i32 %i.dm, i64 0
  %i.dr = insertelement <4 x i32> %i.dq, i32 %i.dn, i64 1
  %i.ds = insertelement <4 x i32> %i.dr, i32 %i.do, i64 2
  %i.dt = insertelement <4 x i32> %i.ds, i32 %i.dp, i64 3
  %i.du = getelementptr i8, ptr %i.de, i64 -12
  %i.dv = getelementptr i8, ptr %i.df, i64 -11
  %i.dw = getelementptr i8, ptr %i.dg, i64 -10
  %i.dx = getelementptr i8, ptr %i.dh, i64 -9
  %i.dy = load i32, ptr %i.du, align 1, !alias.scope !62
  %i.dz = load i32, ptr %i.dv, align 1, !alias.scope !62
  %i.ea = load i32, ptr %i.dw, align 1, !alias.scope !62
  %i.eb = load i32, ptr %i.dx, align 1, !alias.scope !62
  %i.ec = insertelement <4 x i32> poison, i32 %i.dy, i64 0
  %i.ed = insertelement <4 x i32> %i.ec, i32 %i.dz, i64 1
  %i.ee = insertelement <4 x i32> %i.ed, i32 %i.ea, i64 2
  %i.ef = insertelement <4 x i32> %i.ee, i32 %i.eb, i64 3
  %i.eg = getelementptr i8, ptr %i.de, i64 -8
  %i.eh = getelementptr i8, ptr %i.df, i64 -7
  %i.ei = getelementptr i8, ptr %i.dg, i64 -6
  %i.ej = getelementptr i8, ptr %i.dh, i64 -5
  %i.ek = load i32, ptr %i.eg, align 1, !alias.scope !62
  %i.el = load i32, ptr %i.eh, align 1, !alias.scope !62
  %i.em = load i32, ptr %i.ei, align 1, !alias.scope !62
  %i.en = load i32, ptr %i.ej, align 1, !alias.scope !62
  %i.eo = insertelement <4 x i32> poison, i32 %i.ek, i64 0
  %i.ep = insertelement <4 x i32> %i.eo, i32 %i.el, i64 1
  %i.eq = insertelement <4 x i32> %i.ep, i32 %i.em, i64 2
  %i.er = insertelement <4 x i32> %i.eq, i32 %i.en, i64 3
  %i.es = getelementptr i8, ptr %i.de, i64 -4
  %i.et = getelementptr i8, ptr %i.df, i64 -3
  %i.eu = getelementptr i8, ptr %i.dg, i64 -2
  %i.ev = getelementptr i8, ptr %i.dh, i64 -1
  %i.ew = load i32, ptr %i.es, align 1, !alias.scope !62
  %i.ex = load i32, ptr %i.et, align 1, !alias.scope !62
  %i.ey = load i32, ptr %i.eu, align 1, !alias.scope !62
  %i.ez = load i32, ptr %i.ev, align 1, !alias.scope !62
  %i.fa = insertelement <4 x i32> poison, i32 %i.ew, i64 0
  %i.fb = insertelement <4 x i32> %i.fa, i32 %i.ex, i64 1
  %i.fc = insertelement <4 x i32> %i.fb, i32 %i.ey, i64 2
  %i.fd = insertelement <4 x i32> %i.fc, i32 %i.ez, i64 3
  %i.fe = and <4 x i32> %i.dt, %broadcast.splat
  %i.ff = and <4 x i32> %i.ef, %broadcast.splat156
  %i.fg = and <4 x i32> %i.er, %broadcast.splat158
  %i.fh = and <4 x i32> %i.fd, %broadcast.splat160
  %i.fi = mul <4 x i32> %i.fe, splat (i32 -2048144777)
  %i.fj = add <4 x i32> %i.fi, splat (i32 606290984) ; 2 uses
  %i.fk = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.fj, <4 x i32> %i.fj, <4 x i32> splat (i32 13))
  %i.fl = mul <4 x i32> %i.fk, splat (i32 -1640531535) ; 2 uses
  %i.fm = mul <4 x i32> %i.ff, splat (i32 -2048144777)
  %i.fn = add <4 x i32> %i.fm, splat (i32 -2048144777) ; 2 uses
  %i.fo = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.fn, <4 x i32> %i.fn, <4 x i32> splat (i32 13))
  %i.fp = mul <4 x i32> %i.fo, splat (i32 -1640531535) ; 2 uses
  %i.fq = mul <4 x i32> %i.fg, splat (i32 -2048144777) ; 2 uses
  %i.fr = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.fq, <4 x i32> %i.fq, <4 x i32> splat (i32 13))
  %i.fs = mul <4 x i32> %i.fr, splat (i32 -1640531535) ; 2 uses
  %i.ft = mul <4 x i32> %i.fh, splat (i32 -2048144777)
  %i.fu = add <4 x i32> %i.ft, splat (i32 1640531535) ; 2 uses
  %i.fv = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.fu, <4 x i32> %i.fu, <4 x i32> splat (i32 13))
  %i.fw = mul <4 x i32> %i.fv, splat (i32 -1640531535) ; 2 uses
  %i.fx = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.fl, <4 x i32> %i.fl, <4 x i32> splat (i32 1))
  %i.fy = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.fp, <4 x i32> %i.fp, <4 x i32> splat (i32 7))
  %i.fz = add <4 x i32> %i.fy, %i.fx
  %i.ga = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.fs, <4 x i32> %i.fs, <4 x i32> splat (i32 12))
  %i.gb = add <4 x i32> %i.fz, %i.ga
  %i.gc = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.fw, <4 x i32> %i.fw, <4 x i32> splat (i32 18))
  %i.gd = add <4 x i32> %i.gb, %i.gc              ; 2 uses
  %i.ge = lshr <4 x i32> %i.gd, splat (i32 15)
  %i.gf = xor <4 x i32> %i.ge, %i.gd
  %i.gg = mul <4 x i32> %i.gf, splat (i32 -2048144777) ; 2 uses
  %i.gh = lshr <4 x i32> %i.gg, splat (i32 13)
  %i.gi = xor <4 x i32> %i.gh, %i.gg
  %i.gj = mul <4 x i32> %i.gi, splat (i32 -1028477379) ; 2 uses
  %i.gk = lshr <4 x i32> %i.gj, splat (i32 16)
  %i.gl = xor <4 x i32> %i.gk, %i.gj
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  store <4 x i32> %i.gl, ptr %i.gm, align 4, !tbaa !3, !alias.scope !65, !noalias !62
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gn = icmp eq i64 %index.next, %n.vec
  br i1 %i.gn, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit.preheader

_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit.preheader: ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph98.split, %middle.block
  %indvars.iv113.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph98.split ], [ %n.vec, %middle.block ]
  br label %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit

._crit_edge:                                      ; preds = %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit.loopexit.us, %middle.block, %_ZN5arrow8bit_util7CeilDivEll.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.go = icmp ult i32 %.0.lcssa, %0
  br i1 %i.go, label %.lr.ph101, label %._crit_edge102

.lr.ph101:                                        ; preds = %._crit_edge
  %i.gp = icmp sgt i64 %i.m, 1
  %i.gq = add nsw i64 %i.m, -2
  %i.gr = shl i64 %i.m, 4
  %i.gs = add i64 %i.gr, -16                      ; 2 uses
  %i.gt = sub i64 %1, %i.gs
  %i.gu = zext i32 %.0.lcssa to i64
  %wide.trip.count127 = zext i32 %0 to i64
  %.4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.12..12..12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %bb.d

_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit: ; preds = %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit.preheader, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit
  %indvars.iv113 = phi i64 [ %indvars.iv.next114, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit ], [ %indvars.iv113.ph, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit.preheader ] ; 3 uses
  %i.gv = mul i64 %1, %indvars.iv113
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.gv ; 4 uses
  %i.gw = getelementptr i8, ptr %gep, i64 -16
  %.0.copyload.i.i41 = load i32, ptr %i.gw, align 1
  %i.gx = getelementptr i8, ptr %gep, i64 -12
  %.0.copyload.i23.i = load i32, ptr %i.gx, align 1
  %i.gy = getelementptr i8, ptr %gep, i64 -8
  %.0.copyload.i24.i = load i32, ptr %i.gy, align 1
  %i.gz = getelementptr i8, ptr %gep, i64 -4
  %.0.copyload.i25.i = load i32, ptr %i.gz, align 1
  %i.ha = and i32 %.0.copyload.i.i41, %.0.copyload.i.i
  %i.hb = and i32 %.0.copyload.i23.i, %.0.copyload.i9.i
  %i.hc = and i32 %.0.copyload.i24.i, %.0.copyload.i10.i
  %i.hd = and i32 %.0.copyload.i25.i, %.0.copyload.i11.i
  %i.he = mul i32 %i.ha, -2048144777
  %i.hf = add i32 %i.he, 606290984                ; 2 uses
  %i.hg = tail call i32 @llvm.fshl.i32(i32 %i.hf, i32 %i.hf, i32 13)
  %i.hh = mul i32 %i.hg, -1640531535              ; 2 uses
  %i.hi = mul i32 %i.hb, -2048144777
  %i.hj = add i32 %i.hi, -2048144777              ; 2 uses
  %i.hk = tail call i32 @llvm.fshl.i32(i32 %i.hj, i32 %i.hj, i32 13)
  %i.hl = mul i32 %i.hk, -1640531535              ; 2 uses
  %i.hm = mul i32 %i.hc, -2048144777              ; 2 uses
  %i.hn = tail call i32 @llvm.fshl.i32(i32 %i.hm, i32 %i.hm, i32 13)
  %i.ho = mul i32 %i.hn, -1640531535              ; 2 uses
  %i.hp = mul i32 %i.hd, -2048144777
  %i.hq = add i32 %i.hp, 1640531535               ; 2 uses
  %i.hr = tail call i32 @llvm.fshl.i32(i32 %i.hq, i32 %i.hq, i32 13)
  %i.hs = mul i32 %i.hr, -1640531535              ; 2 uses
  %i.ht = tail call i32 @llvm.fshl.i32(i32 %i.hh, i32 %i.hh, i32 1)
  %i.hu = tail call i32 @llvm.fshl.i32(i32 %i.hl, i32 %i.hl, i32 7)
  %i.hv = add i32 %i.hu, %i.ht
  %i.hw = tail call i32 @llvm.fshl.i32(i32 %i.ho, i32 %i.ho, i32 12)
  %i.hx = add i32 %i.hv, %i.hw
  %i.hy = tail call i32 @llvm.fshl.i32(i32 %i.hs, i32 %i.hs, i32 18)
  %i.hz = add i32 %i.hx, %i.hy                    ; 2 uses
  %i.ia = lshr i32 %i.hz, 15
  %i.ib = xor i32 %i.ia, %i.hz
  %i.ic = mul i32 %i.ib, -2048144777              ; 2 uses
  %i.id = lshr i32 %i.ic, 13
  %i.ie = xor i32 %i.id, %i.ic
  %i.if = mul i32 %i.ie, -1028477379              ; 2 uses
  %i.ig = lshr i32 %i.if, 16
  %i.ih = xor i32 %i.ig, %i.if
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv113
  store i32 %i.ih, ptr %i.ii, align 4, !tbaa !3
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next114, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit, !llvm.loop !68

._crit_edge102:                                   ; preds = %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit58, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %.lr.ph101, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit58
  %indvars.iv123 = phi i64 [ %i.gu, %.lr.ph101 ], [ %indvars.iv.next124, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit58 ] ; 3 uses
  %i.ij = mul i64 %1, %indvars.iv123
  %i.ik = getelementptr inbounds nuw i8, ptr %2, i64 %i.ij ; 2 uses
  br i1 %i.gp, label %.lr.ph.i47, label %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit58

.lr.ph.i47:                                       ; preds = %bb.d, %.lr.ph.i47
  %.035.i48 = phi i32 [ %i.it, %.lr.ph.i47 ], [ 606290984, %bb.d ]
  %.02434.i49 = phi i32 [ %i.ix, %.lr.ph.i47 ], [ -2048144777, %bb.d ]
  %.02533.i50 = phi i32 [ %i.jb, %.lr.ph.i47 ], [ 0, %bb.d ]
  %.02632.i51 = phi i32 [ %i.jf, %.lr.ph.i47 ], [ 1640531535, %bb.d ]
  %.02731.i52 = phi i64 [ %i.jg, %.lr.ph.i47 ], [ 0, %bb.d ] ; 3 uses
  %i.il = shl nuw nsw i64 %.02731.i52, 4
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.il ; 4 uses
  %.0.copyload.i.i53 = load i32, ptr %i.im, align 1
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 4
  %.0.copyload.i28.i54 = load i32, ptr %i.in, align 1
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %.0.copyload.i29.i55 = load i32, ptr %i.io, align 1
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 12
  %.0.copyload.i30.i56 = load i32, ptr %i.ip, align 1
  %i.iq = mul i32 %.0.copyload.i.i53, -2048144777
  %i.ir = add i32 %i.iq, %.035.i48                ; 2 uses
  %i.is = tail call i32 @llvm.fshl.i32(i32 %i.ir, i32 %i.ir, i32 13)
  %i.it = mul i32 %i.is, -1640531535              ; 2 uses
  %i.iu = mul i32 %.0.copyload.i28.i54, -2048144777
  %i.iv = add i32 %i.iu, %.02434.i49              ; 2 uses
  %i.iw = tail call i32 @llvm.fshl.i32(i32 %i.iv, i32 %i.iv, i32 13)
  %i.ix = mul i32 %i.iw, -1640531535              ; 2 uses
  %i.iy = mul i32 %.0.copyload.i29.i55, -2048144777
  %i.iz = add i32 %i.iy, %.02533.i50              ; 2 uses
  %i.ja = tail call i32 @llvm.fshl.i32(i32 %i.iz, i32 %i.iz, i32 13)
  %i.jb = mul i32 %i.ja, -1640531535              ; 2 uses
  %i.jc = mul i32 %.0.copyload.i30.i56, -2048144777
  %i.jd = add i32 %i.jc, %.02632.i51              ; 2 uses
  %i.je = tail call i32 @llvm.fshl.i32(i32 %i.jd, i32 %i.jd, i32 13)
  %i.jf = mul i32 %i.je, -1640531535              ; 2 uses
  %i.jg = add nuw nsw i64 %.02731.i52, 1
  %exitcond.not.i57 = icmp eq i64 %.02731.i52, %i.gq
  br i1 %exitcond.not.i57, label %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit58, label %.lr.ph.i47, !llvm.loop !9

_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit58: ; preds = %.lr.ph.i47, %bb.d
  %.026.lcssa.i42 = phi i32 [ 1640531535, %bb.d ], [ %i.jf, %.lr.ph.i47 ]
  %.025.lcssa.i43 = phi i32 [ 0, %bb.d ], [ %i.jb, %.lr.ph.i47 ]
  %.024.lcssa.i44 = phi i32 [ -2048144777, %bb.d ], [ %i.ix, %.lr.ph.i47 ]
  %.0.lcssa.i45 = phi i32 [ 606290984, %bb.d ], [ %i.it, %.lr.ph.i47 ]
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.gs
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.jh, i64 %i.gt, i1 false)
  %.0..0..0..0.copyload.i.i59 = load i32, ptr %i.a, align 16
  %.4..4..4..0.copyload.i23.i60 = load i32, ptr %.4..4..4..sroa_idx, align 4
  %.8..8..8..0.copyload.i24.i61 = load i32, ptr %.8..8..8..sroa_idx, align 8
  %.12..12..12..0.copyload.i25.i62 = load i32, ptr %.12..12..12..sroa_idx, align 4
  %i.ji = and i32 %.0..0..0..0.copyload.i.i59, %.0.copyload.i.i
  %i.jj = and i32 %.4..4..4..0.copyload.i23.i60, %.0.copyload.i9.i
  %i.jk = and i32 %.8..8..8..0.copyload.i24.i61, %.0.copyload.i10.i
  %i.jl = and i32 %.12..12..12..0.copyload.i25.i62, %.0.copyload.i11.i
  %i.jm = mul i32 %i.ji, -2048144777
  %i.jn = add i32 %i.jm, %.0.lcssa.i45            ; 2 uses
  %i.jo = tail call i32 @llvm.fshl.i32(i32 %i.jn, i32 %i.jn, i32 13)
  %i.jp = mul i32 %i.jo, -1640531535              ; 2 uses
  %i.jq = mul i32 %i.jj, -2048144777
  %i.jr = add i32 %i.jq, %.024.lcssa.i44          ; 2 uses
  %i.js = tail call i32 @llvm.fshl.i32(i32 %i.jr, i32 %i.jr, i32 13)
  %i.jt = mul i32 %i.js, -1640531535              ; 2 uses
  %i.ju = mul i32 %i.jk, -2048144777
  %i.jv = add i32 %i.ju, %.025.lcssa.i43          ; 2 uses
  %i.jw = tail call i32 @llvm.fshl.i32(i32 %i.jv, i32 %i.jv, i32 13)
  %i.jx = mul i32 %i.jw, -1640531535              ; 2 uses
  %i.jy = mul i32 %i.jl, -2048144777
  %i.jz = add i32 %i.jy, %.026.lcssa.i42          ; 2 uses
  %i.ka = tail call i32 @llvm.fshl.i32(i32 %i.jz, i32 %i.jz, i32 13)
  %i.kb = mul i32 %i.ka, -1640531535              ; 2 uses
  %i.kc = tail call i32 @llvm.fshl.i32(i32 %i.jp, i32 %i.jp, i32 1)
  %i.kd = tail call i32 @llvm.fshl.i32(i32 %i.jt, i32 %i.jt, i32 7)
  %i.ke = add i32 %i.kd, %i.kc
  %i.kf = tail call i32 @llvm.fshl.i32(i32 %i.jx, i32 %i.jx, i32 12)
  %i.kg = add i32 %i.ke, %i.kf
  %i.kh = tail call i32 @llvm.fshl.i32(i32 %i.kb, i32 %i.kb, i32 18)
  %i.ki = add i32 %i.kg, %i.kh                    ; 2 uses
  %i.kj = lshr i32 %i.ki, 15
  %i.kk = xor i32 %i.kj, %i.ki
  %i.kl = mul i32 %i.kk, -2048144777              ; 2 uses
  %i.km = lshr i32 %i.kl, 13
  %i.kn = xor i32 %i.km, %i.kl
  %i.ko = mul i32 %i.kn, -1028477379              ; 2 uses
  %i.kp = lshr i32 %i.ko, 16
  %i.kq = xor i32 %i.kp, %i.ko
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv123
  store i32 %i.kq, ptr %i.kr, align 4, !tbaa !3
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count127
  br i1 %exitcond128.not, label %._crit_edge102, label %bb.d, !llvm.loop !69
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute9Hashing3215HashMultiColumnERKSt6vectorINS0_14KeyColumnArrayESaIS3_EEPNS0_12LightContextEPj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::util::TempVectorHolder", align 8 ; 9 uses
  %4 = alloca %"class.arrow::util::TempVectorHolder.0", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %5 = alloca %"class.arrow::util::TempVectorHolder", align 8 ; 9 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load i64, ptr %i.c, align 8, !tbaa !74
  %i.e = trunc i64 %i.d to i32                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !78   ; 2 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !81
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  store i32 1024, ptr %i.h, align 4, !tbaa !84
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @_ZN5arrow4util15TempVectorStack5allocEjPPhPi(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i32 noundef 4096, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !78   ; 2 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !85
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  store i32 1024, ptr %i.l, align 4, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  invoke void @_ZN5arrow4util15TempVectorStack5allocEjPPhPi(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i32 noundef 2048, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n)
          to label %_ZN5arrow4util16TempVectorHolderItEC2EPNS0_15TempVectorStackEj.exit unwind label %bb.e

_ZN5arrow4util16TempVectorHolderItEC2EPNS0_15TempVectorStackEj.exit: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !88   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !78   ; 2 uses
  store ptr %i.p, ptr %5, align 8, !tbaa !81
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  store i32 1024, ptr %i.q, align 4, !tbaa !84
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  invoke void @_ZN5arrow4util15TempVectorStack5allocEjPPhPi(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i32 noundef 4096, ptr noundef nonnull %i.r, ptr noundef nonnull %i.s)
          to label %_ZN5arrow4util16TempVectorHolderIjEC2EPNS0_15TempVectorStackEj.exit unwind label %bb.f

_ZN5arrow4util16TempVectorHolderIjEC2EPNS0_15TempVectorStackEj.exit: ; preds = %_ZN5arrow4util16TempVectorHolderItEC2EPNS0_15TempVectorStackEj.exit
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !89   ; 4 uses
  %.not187 = icmp eq i32 %i.e, 0
  br i1 %.not187, label %._crit_edge185, label %.lr.ph184

.lr.ph184:                                        ; preds = %_ZN5arrow4util16TempVectorHolderIjEC2EPNS0_15TempVectorStackEj.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !90
  %.pre222 = load ptr, ptr %0, align 8, !tbaa !70 ; 2 uses
  br label %bb.g

._crit_edge185:                                   ; preds = %._crit_edge, %_ZN5arrow4util16TempVectorHolderIjEC2EPNS0_15TempVectorStackEj.exit
  %i.v = load ptr, ptr %5, align 8, !tbaa !81
  %i.w = load i32, ptr %i.s, align 8, !tbaa !91
  %i.x = load i32, ptr %i.q, align 4, !tbaa !84
  %i.y = shl i32 %i.x, 2
  invoke void @_ZN5arrow4util15TempVectorStack7releaseEij(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i32 noundef %i.w, i32 noundef %i.y)
          to label %_ZN5arrow4util16TempVectorHolderIjED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %._crit_edge185
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #12
  unreachable

_ZN5arrow4util16TempVectorHolderIjED2Ev.exit:     ; preds = %._crit_edge185
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.ab = load ptr, ptr %4, align 8, !tbaa !85
  %i.ac = load i32, ptr %i.n, align 8, !tbaa !92
  %i.ad = load i32, ptr %i.l, align 4, !tbaa !87
  %i.ae = shl i32 %i.ad, 1
  invoke void @_ZN5arrow4util15TempVectorStack7releaseEij(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i32 noundef %i.ac, i32 noundef %i.ae)
          to label %_ZN5arrow4util16TempVectorHolderItED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZN5arrow4util16TempVectorHolderIjED2Ev.exit
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #12
  unreachable

_ZN5arrow4util16TempVectorHolderItED2Ev.exit:     ; preds = %_ZN5arrow4util16TempVectorHolderIjED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.ah = load ptr, ptr %3, align 8, !tbaa !81
  %i.ai = load i32, ptr %i.j, align 8, !tbaa !91
  %i.aj = load i32, ptr %i.h, align 4, !tbaa !84
  %i.ak = shl i32 %i.aj, 2
  invoke void @_ZN5arrow4util15TempVectorStack7releaseEij(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i32 noundef %i.ai, i32 noundef %i.ak)
          to label %_ZN5arrow4util16TempVectorHolderIjED2Ev.exit135 unwind label %bb.d

bb.d:                                             ; preds = %_ZN5arrow4util16TempVectorHolderItED2Ev.exit
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #12
  unreachable

_ZN5arrow4util16TempVectorHolderIjED2Ev.exit135:  ; preds = %_ZN5arrow4util16TempVectorHolderItED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret void

bb.e:                                             ; preds = %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.f:                                             ; preds = %_ZN5arrow4util16TempVectorHolderItEC2EPNS0_15TempVectorStackEj.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.g:                                             ; preds = %.lr.ph184, %._crit_edge
  %i.ap = phi ptr [ %.pre222, %.lr.ph184 ], [ %i.bu, %._crit_edge ] ; 2 uses
  %i.aq = phi ptr [ %.pre222, %.lr.ph184 ], [ %i.bv, %._crit_edge ] ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute9Hashing3215HashMultiColumnERKSt6vectorINS0_14KeyColumnArrayESaIS3_EEPNS0_12LightContextEPj:bb.a

bb.ai:                                            ; preds = %bb.ah, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ah ], [ %i.an, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @_ZN5arrow4util16TempVectorHolderIjED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  resume { ptr, i32 } %.pn.pn.pn
}

declare i32 @__gxx_personality_v0(...)

declare void @_ZN5arrow4util8bit_util15bits_to_indexesEiliPKhPiPti(i32 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow4util16TempVectorHolderIjED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !81
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !91
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !84
  %i.f = shl i32 %i.e, 2
  invoke void @_ZN5arrow4util15TempVectorStack7releaseEij(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef %i.c, i32 noundef %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #12
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow4util16TempVectorHolderItED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !85
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !92
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !87
  %i.f = shl i32 %i.e, 1
  invoke void @_ZN5arrow4util15TempVectorStack7releaseEij(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef %i.c, i32 noundef %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #12
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute9Hashing329HashBatchERKNS0_9ExecBatchEPjRSt6vectorINS0_14KeyColumnArrayESaIS7_EElPNS_4util15TempVectorStackEll(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i64 noundef %7) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZN5arrow6StatusD2Ev.exit:
  %8 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %9 = alloca %"struct.arrow::compute::LightContext", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @_ZN5arrow7compute25ColumnArraysFromExecBatchERKNS0_9ExecBatchEllPSt6vectorINS0_14KeyColumnArrayESaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %6, i64 noundef %7, ptr noundef nonnull %3)
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.a = load ptr, ptr %8, align 8, !tbaa !136, !noalias !133 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !136, !alias.scope !133
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  store i64 %4, ptr %9, align 8, !tbaa !103
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %5, ptr %i.c, align 8, !tbaa !78
  call void @_ZN5arrow7compute9Hashing3215HashMultiColumnERKSt6vectorINS0_14KeyColumnArrayESaIS3_EEPNS0_12LightContextEPj(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %9, ptr noundef %2)
  store ptr null, ptr %0, align 8, !tbaa !136, !alias.scope !139
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.b

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.a
  ret void
}

declare void @_ZN5arrow7compute25ColumnArraysFromExecBatchERKNS0_9ExecBatchEllPSt6vectorINS0_14KeyColumnArrayESaIS5_EE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute9Hashing6410HashVarLenEbjPKjPKhPm(i1 noundef zeroext %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  br i1 %0, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow7compute9Hashing6413HashVarLenImpIjLb1EEEvjPKT_PKhPm(i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN5arrow7compute9Hashing6413HashVarLenImpIjLb0EEEvjPKT_PKhPm(i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute9Hashing6413HashVarLenImpIjLb1EEEvjPKT_PKhPm(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 7 uses
  %.not158 = icmp eq i32 %0, 0
  br i1 %.not158, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = zext i32 %0 to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.0159 = phi i32 [ %0, %.lr.ph ], [ %i.j, %bb.c ] ; 4 uses
  %i.e = zext i32 %.0159 to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3
  %i.h = sub i32 %i.d, %i.g
  %i.i = icmp ult i32 %i.h, 32
  br i1 %i.i, label %bb.c, label %_ZN5arrow8bit_util7CeilDivEll.exit.preheader

bb.c:                                             ; preds = %bb.b
  %i.j = add i32 %.0159, -1                       ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !142

_ZN5arrow8bit_util7CeilDivEll.exit.preheader:     ; preds = %bb.b
  %wide.trip.count = zext i32 %.0159 to i64
  %.pre = load i32, ptr %1, align 4, !tbaa !3
  br label %_ZN5arrow8bit_util7CeilDivEll.exit

._crit_edge:                                      ; preds = %bb.c, %bb.d, %bb.a
  %.0.lcssa190 = phi i32 [ %.0159, %bb.d ], [ 0, %bb.a ], [ 0, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = icmp ult i32 %.0.lcssa190, %0
  br i1 %i.k, label %_ZN5arrow8bit_util7CeilDivEll.exit75.lr.ph, label %._crit_edge164

_ZN5arrow8bit_util7CeilDivEll.exit75.lr.ph:       ; preds = %._crit_edge
  %i.l = zext i32 %.0.lcssa190 to i64             ; 2 uses
  %wide.trip.count181 = zext i32 %0 to i64
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.l
  %.pre183 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !3
  %.8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.24..24..24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %_ZN5arrow8bit_util7CeilDivEll.exit75

_ZN5arrow8bit_util7CeilDivEll.exit:               ; preds = %_ZN5arrow8bit_util7CeilDivEll.exit.preheader, %bb.d
  %i.m = phi i32 [ %.pre, %_ZN5arrow8bit_util7CeilDivEll.exit.preheader ], [ %i.o, %bb.d ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %_ZN5arrow8bit_util7CeilDivEll.exit.preheader ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3    ; 4 uses
  %i.p = sub i32 %i.o, %i.m                       ; 2 uses
  %i.q = icmp ne i32 %i.o, %i.m                   ; 3 uses
  %i.r = icmp eq i32 %i.o, %i.m
  %.lhs.trunc = add i32 %i.p, -1
  %i.s = lshr i32 %.lhs.trunc, 5
  %narrow144 = add nuw nsw i32 %i.s, 1
  %narrow145 = select i1 %i.r, i32 0, i32 %narrow144
  %i.t = zext nneg i32 %narrow145 to i64
  %not.71 = xor i1 %i.q, true
  %i.u = zext i1 %not.71 to i64
  %i.v = add nuw nsw i64 %i.t, %i.u               ; 4 uses
  %.neg167 = sext i1 %i.q to i32
  %i.w = add i32 %i.p, %.neg167
  %i.x = and i32 %i.w, 31
  %.neg150 = select i1 %i.q, i32 31, i32 32
  %i.y = sub nuw nsw i32 %.neg150, %i.x
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @_ZZN5arrow7compute9Hashing6410StripeMaskEiPmS2_S2_S2_E5bytes, i64 %i.z ; 4 uses
  %.0.copyload.i.i = load i64, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.0.copyload.i9.i = load i64, ptr %i.ab, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.0.copyload.i10.i = load i64, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.0.copyload.i11.i = load i64, ptr %i.ad, align 1
  %i.ae = zext i32 %i.m to i64
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %i.ae ; 2 uses
  %i.ag = icmp samesign ugt i64 %i.v, 1
  br i1 %i.ag, label %.lr.ph.preheader.i, label %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit

.lr.ph.preheader.i:                               ; preds = %_ZN5arrow8bit_util7CeilDivEll.exit
  %i.ah = add nsw i64 %i.v, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.035.i = phi i64 [ %i.aq, %.lr.ph.i ], [ -2239933958592612906, %.lr.ph.preheader.i ]
  %.02434.i = phi i64 [ %i.au, %.lr.ph.i ], [ -4417276706812531889, %.lr.ph.preheader.i ]
  %.02533.i = phi i64 [ %i.ay, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %.02632.i = phi i64 [ %i.bc, %.lr.ph.i ], [ 7046029288634856825, %.lr.ph.preheader.i ]
  %.02731.i = phi i64 [ %i.bd, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.ai = shl nuw nsw i64 %.02731.i, 5
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ai ; 4 uses
  %.0.copyload.i.i73 = load i64, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.0.copyload.i28.i = load i64, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.0.copyload.i29.i = load i64, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.0.copyload.i30.i = load i64, ptr %i.am, align 1
  %i.an = mul i64 %.0.copyload.i.i73, -4417276706812531889
  %i.ao = add i64 %i.an, %.035.i                  ; 2 uses
  %i.ap = tail call i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 31)
  %i.aq = mul i64 %i.ap, -7046029288634856825     ; 2 uses
  %i.ar = mul i64 %.0.copyload.i28.i, -4417276706812531889
  %i.as = add i64 %i.ar, %.02434.i                ; 2 uses
  %i.at = tail call i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 31)
  %i.au = mul i64 %i.at, -7046029288634856825     ; 2 uses
  %i.av = mul i64 %.0.copyload.i29.i, -4417276706812531889
  %i.aw = add i64 %i.av, %.02533.i                ; 2 uses
  %i.ax = tail call i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 31)
  %i.ay = mul i64 %i.ax, -7046029288634856825     ; 2 uses
  %i.az = mul i64 %.0.copyload.i30.i, -4417276706812531889
  %i.ba = add i64 %i.az, %.02632.i                ; 2 uses
  %i.bb = tail call i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 31)
  %i.bc = mul i64 %i.bb, -7046029288634856825     ; 2 uses
  %i.bd = add nuw nsw i64 %.02731.i, 1
  %exitcond.not.i = icmp eq i64 %.02731.i, %i.ah
  br i1 %exitcond.not.i, label %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit.thread, label %.lr.ph.i, !llvm.loop !143

_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit: ; preds = %_ZN5arrow8bit_util7CeilDivEll.exit
  %.not72 = icmp eq i64 %i.v, 0
  br i1 %.not72, label %bb.d, label %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit.thread

_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit.thread: ; preds = %.lr.ph.i, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit
  %.0.lcssa.i140 = phi i64 [ -2239933958592612906, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit ], [ %i.aq, %.lr.ph.i ]
  %.024.lcssa.i139 = phi i64 [ -4417276706812531889, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit ], [ %i.au, %.lr.ph.i ]
  %.025.lcssa.i138 = phi i64 [ 0, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit ], [ %i.ay, %.lr.ph.i ]
  %.026.lcssa.i137 = phi i64 [ 7046029288634856825, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit ], [ %i.bc, %.lr.ph.i ]
  %i.be = shl nuw nsw i64 %i.v, 5
  %i.bf = getelementptr i8, ptr %i.af, i64 %i.be  ; 4 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 -32
  %.0.copyload.i.i74 = load i64, ptr %i.bg, align 1
  %i.bh = getelementptr i8, ptr %i.bf, i64 -24
  %.0.copyload.i23.i = load i64, ptr %i.bh, align 1
  %i.bi = getelementptr i8, ptr %i.bf, i64 -16
  %.0.copyload.i24.i = load i64, ptr %i.bi, align 1
  %i.bj = getelementptr i8, ptr %i.bf, i64 -8
  %.0.copyload.i25.i = load i64, ptr %i.bj, align 1
  %i.bk = and i64 %.0.copyload.i.i74, %.0.copyload.i.i
  %i.bl = and i64 %.0.copyload.i23.i, %.0.copyload.i9.i
  %i.bm = and i64 %.0.copyload.i24.i, %.0.copyload.i10.i
  %i.bn = and i64 %.0.copyload.i25.i, %.0.copyload.i11.i
  %i.bo = mul i64 %i.bk, -4417276706812531889
  %i.bp = add i64 %i.bo, %.0.lcssa.i140           ; 2 uses
  %i.bq = tail call i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bp, i64 31)
  %i.br = mul i64 %i.bq, -7046029288634856825
  %i.bs = mul i64 %i.bl, -4417276706812531889
  %i.bt = add i64 %i.bs, %.024.lcssa.i139         ; 2 uses
  %i.bu = tail call i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.bt, i64 31)
  %i.bv = mul i64 %i.bu, -7046029288634856825
  %i.bw = mul i64 %i.bm, -4417276706812531889
  %i.bx = add i64 %i.bw, %.025.lcssa.i138         ; 2 uses
  %i.by = tail call i64 @llvm.fshl.i64(i64 %i.bx, i64 %i.bx, i64 31)
  %i.bz = mul i64 %i.by, -7046029288634856825
  %i.ca = mul i64 %i.bn, -4417276706812531889
  %i.cb = add i64 %i.ca, %.026.lcssa.i137         ; 2 uses
  %i.cc = tail call i64 @llvm.fshl.i64(i64 %i.cb, i64 %i.cb, i64 31)
  %i.cd = mul i64 %i.cc, -7046029288634856825
  br label %bb.d

bb.d:                                             ; preds = %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit.thread, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit
  %.0131 = phi i64 [ 7046029288634856825, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit ], [ %i.cd, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit.thread ] ; 3 uses
  %.0130 = phi i64 [ 0, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit ], [ %i.bz, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit.thread ] ; 3 uses
  %.0129 = phi i64 [ -4417276706812531889, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit ], [ %i.bv, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit.thread ] ; 3 uses
  %.0128 = phi i64 [ -2239933958592612906, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit ], [ %i.br, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit.thread ] ; 3 uses
  %i.ce = tail call i64 @llvm.fshl.i64(i64 %.0128, i64 %.0128, i64 1)
  %i.cf = tail call i64 @llvm.fshl.i64(i64 %.0129, i64 %.0129, i64 7)
  %i.cg = tail call i64 @llvm.fshl.i64(i64 %.0130, i64 %.0130, i64 12)
  %i.ch = tail call i64 @llvm.fshl.i64(i64 %.0131, i64 %.0131, i64 18)
  %i.ci = add i64 %i.cg, %i.ch
  %i.cj = add i64 %i.ci, %i.cf
  %i.ck = add i64 %i.cj, %i.ce
  %i.cl = mul i64 %.0128, -4417276706812531889    ; 2 uses
  %i.cm = tail call i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 31)
  %i.cn = mul i64 %i.cm, -7046029288634856825
  %i.co = xor i64 %i.ck, %i.cn
  %i.cp = mul i64 %i.co, -7046029288634856825
  %i.cq = add i64 %i.cp, -8796714831421723037
  %i.cr = mul i64 %.0129, -4417276706812531889    ; 2 uses
  %i.cs = tail call i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 31)
  %i.ct = mul i64 %i.cs, -7046029288634856825
  %i.cu = xor i64 %i.cq, %i.ct
  %i.cv = mul i64 %i.cu, -7046029288634856825
  %i.cw = add i64 %i.cv, -8796714831421723037
  %i.cx = mul i64 %.0130, -4417276706812531889    ; 2 uses
  %i.cy = tail call i64 @llvm.fshl.i64(i64 %i.cx, i64 %i.cx, i64 31)
  %i.cz = mul i64 %i.cy, -7046029288634856825
  %i.da = xor i64 %i.cw, %i.cz
  %i.db = mul i64 %i.da, -7046029288634856825
  %i.dc = add i64 %i.db, -8796714831421723037
  %i.dd = mul i64 %.0131, -4417276706812531889    ; 2 uses
  %i.de = tail call i64 @llvm.fshl.i64(i64 %i.dd, i64 %i.dd, i64 31)
  %i.df = mul i64 %i.de, -7046029288634856825
  %i.dg = xor i64 %i.dc, %i.df
  %i.dh = mul i64 %i.dg, -7046029288634856825
  %i.di = add i64 %i.dh, -8796714831421723037     ; 2 uses
  %i.dj = lshr i64 %i.di, 33
  %i.dk = xor i64 %i.dj, %i.di
  %i.dl = mul i64 %i.dk, -4417276706812531889     ; 2 uses
  %i.dm = lshr i64 %i.dl, 29
  %i.dn = xor i64 %i.dm, %i.dl
  %i.do = mul i64 %i.dn, 1609587929392839161      ; 2 uses
  %i.dp = lshr i64 %i.do, 32
  %i.dq = xor i64 %i.dp, %i.do
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !15 ; 3 uses
  %i.dt = shl i64 %i.ds, 6
  %i.du = lshr i64 %i.ds, 2
  %i.dv = add i64 %i.dt, 2654435769
  %i.dw = add i64 %i.dv, %i.du
  %i.dx = add i64 %i.dw, %i.dq
  %i.dy = xor i64 %i.dx, %i.ds
  store i64 %i.dy, ptr %i.dr, align 8, !tbaa !15
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %_ZN5arrow8bit_util7CeilDivEll.exit, !llvm.loop !144

._crit_edge164:                                   ; preds = %bb.h, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_ZN5arrow8bit_util7CeilDivEll.exit75:             ; preds = %_ZN5arrow8bit_util7CeilDivEll.exit75.lr.ph, %bb.h
  %i.dz = phi i32 [ %.pre183, %_ZN5arrow8bit_util7CeilDivEll.exit75.lr.ph ], [ %i.eb, %bb.h ] ; 4 uses
  %indvars.iv178 = phi i64 [ %i.l, %_ZN5arrow8bit_util7CeilDivEll.exit75.lr.ph ], [ %indvars.iv.next179, %bb.h ] ; 2 uses
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 1 ; 3 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next179
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !3  ; 4 uses
  %i.ec = sub i32 %i.eb, %i.dz                    ; 3 uses
  %i.ed = zext i32 %i.ec to i64
  %i.ee = icmp ne i32 %i.eb, %i.dz                ; 3 uses
  %i.ef = icmp eq i32 %i.eb, %i.dz                ; 2 uses
  %.lhs.trunc141 = add i32 %i.ec, -1
  %i.eg = lshr i32 %.lhs.trunc141, 5
  %narrow = add nuw nsw i32 %i.eg, 1
  %narrow143 = select i1 %i.ef, i32 0, i32 %narrow
  %i.eh = zext nneg i32 %narrow143 to i64
  %not. = xor i1 %i.ee, true
  %i.ei = zext i1 %not. to i64
  %i.ej = add nuw nsw i64 %i.eh, %i.ei            ; 4 uses
  %.neg169 = sext i1 %i.ee to i32
  %i.ek = add i32 %i.ec, %.neg169
  %i.el = and i32 %i.ek, 31
  %.neg147 = select i1 %i.ee, i32 31, i32 32
  %i.em = sub nuw nsw i32 %.neg147, %i.el
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr @_ZZN5arrow7compute9Hashing6410StripeMaskEiPmS2_S2_S2_E5bytes, i64 %i.en ; 4 uses
  %.0.copyload.i.i76 = load i64, ptr %i.eo, align 1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %.0.copyload.i9.i77 = load i64, ptr %i.ep, align 1
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %.0.copyload.i10.i78 = load i64, ptr %i.eq, align 1
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %.0.copyload.i11.i79 = load i64, ptr %i.er, align 1
  %i.es = zext i32 %i.dz to i64
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 %i.es ; 2 uses
  %i.eu = icmp samesign ugt i64 %i.ej, 1
  br i1 %i.eu, label %.lr.ph.preheader.i84, label %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit96

.lr.ph.preheader.i84:                             ; preds = %_ZN5arrow8bit_util7CeilDivEll.exit75
  %i.ev = add nsw i64 %i.ej, -2
  br label %.lr.ph.i85

.lr.ph.i85:                                       ; preds = %.lr.ph.i85, %.lr.ph.preheader.i84
  %.035.i86 = phi i64 [ %i.fe, %.lr.ph.i85 ], [ -2239933958592612906, %.lr.ph.preheader.i84 ]
  %.02434.i87 = phi i64 [ %i.fi, %.lr.ph.i85 ], [ -4417276706812531889, %.lr.ph.preheader.i84 ]
  %.02533.i88 = phi i64 [ %i.fm, %.lr.ph.i85 ], [ 0, %.lr.ph.preheader.i84 ]
  %.02632.i89 = phi i64 [ %i.fq, %.lr.ph.i85 ], [ 7046029288634856825, %.lr.ph.preheader.i84 ]
  %.02731.i90 = phi i64 [ %i.fr, %.lr.ph.i85 ], [ 0, %.lr.ph.preheader.i84 ] ; 3 uses
  %i.ew = shl nuw nsw i64 %.02731.i90, 5
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ew ; 4 uses
  %.0.copyload.i.i91 = load i64, ptr %i.ex, align 1
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %.0.copyload.i28.i92 = load i64, ptr %i.ey, align 1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %.0.copyload.i29.i93 = load i64, ptr %i.ez, align 1
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  %.0.copyload.i30.i94 = load i64, ptr %i.fa, align 1
  %i.fb = mul i64 %.0.copyload.i.i91, -4417276706812531889
  %i.fc = add i64 %i.fb, %.035.i86                ; 2 uses
  %i.fd = tail call i64 @llvm.fshl.i64(i64 %i.fc, i64 %i.fc, i64 31)
  %i.fe = mul i64 %i.fd, -7046029288634856825     ; 2 uses
  %i.ff = mul i64 %.0.copyload.i28.i92, -4417276706812531889
  %i.fg = add i64 %i.ff, %.02434.i87              ; 2 uses
  %i.fh = tail call i64 @llvm.fshl.i64(i64 %i.fg, i64 %i.fg, i64 31)
  %i.fi = mul i64 %i.fh, -7046029288634856825     ; 2 uses
  %i.fj = mul i64 %.0.copyload.i29.i93, -4417276706812531889
  %i.fk = add i64 %i.fj, %.02533.i88              ; 2 uses
  %i.fl = tail call i64 @llvm.fshl.i64(i64 %i.fk, i64 %i.fk, i64 31)
  %i.fm = mul i64 %i.fl, -7046029288634856825     ; 2 uses
  %i.fn = mul i64 %.0.copyload.i30.i94, -4417276706812531889
  %i.fo = add i64 %i.fn, %.02632.i89              ; 2 uses
  %i.fp = tail call i64 @llvm.fshl.i64(i64 %i.fo, i64 %i.fo, i64 31)
  %i.fq = mul i64 %i.fp, -7046029288634856825     ; 2 uses
  %i.fr = add nuw nsw i64 %.02731.i90, 1
  %exitcond.not.i95 = icmp eq i64 %.02731.i90, %i.ev
  br i1 %exitcond.not.i95, label %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit96, label %.lr.ph.i85, !llvm.loop !143

_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit96: ; preds = %.lr.ph.i85, %_ZN5arrow8bit_util7CeilDivEll.exit75
  %.026.lcssa.i80 = phi i64 [ 7046029288634856825, %_ZN5arrow8bit_util7CeilDivEll.exit75 ], [ %i.fq, %.lr.ph.i85 ] ; 2 uses
  %.025.lcssa.i81 = phi i64 [ 0, %_ZN5arrow8bit_util7CeilDivEll.exit75 ], [ %i.fm, %.lr.ph.i85 ] ; 2 uses
  %.024.lcssa.i82 = phi i64 [ -4417276706812531889, %_ZN5arrow8bit_util7CeilDivEll.exit75 ], [ %i.fi, %.lr.ph.i85 ] ; 2 uses
  %.0.lcssa.i83 = phi i64 [ -2239933958592612906, %_ZN5arrow8bit_util7CeilDivEll.exit75 ], [ %i.fe, %.lr.ph.i85 ] ; 2 uses
  br i1 %i.ef, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit96
  %i.fs = shl nuw nsw i64 %i.ej, 5
  %i.ft = add nsw i64 %i.fs, -32                  ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ft
  %i.fv = sub nsw i64 %i.ed, %i.ft
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.fu, i64 %i.fv, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit96
  %.not69 = icmp eq i64 %i.ej, 0
  br i1 %.not69, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.0..0..0..0.copyload.i.i97 = load i64, ptr %i.a, align 16
  %.8..8..8..0.copyload.i23.i98 = load i64, ptr %.8..8..8..sroa_idx, align 8
  %.16..16..16..0.copyload.i24.i99 = load i64, ptr %.16..16..16..sroa_idx, align 16
  %.24..24..24..0.copyload.i25.i100 = load i64, ptr %.24..24..24..sroa_idx, align 8
  %i.fw = and i64 %.0..0..0..0.copyload.i.i97, %.0.copyload.i.i76
  %i.fx = and i64 %.8..8..8..0.copyload.i23.i98, %.0.copyload.i9.i77
  %i.fy = and i64 %.16..16..16..0.copyload.i24.i99, %.0.copyload.i10.i78
  %i.fz = and i64 %.24..24..24..0.copyload.i25.i100, %.0.copyload.i11.i79
  %i.ga = mul i64 %i.fw, -4417276706812531889
  %i.gb = add i64 %i.ga, %.0.lcssa.i83            ; 2 uses
  %i.gc = tail call i64 @llvm.fshl.i64(i64 %i.gb, i64 %i.gb, i64 31)
  %i.gd = mul i64 %i.gc, -7046029288634856825
  %i.ge = mul i64 %i.fx, -4417276706812531889
  %i.gf = add i64 %i.ge, %.024.lcssa.i82          ; 2 uses
  %i.gg = tail call i64 @llvm.fshl.i64(i64 %i.gf, i64 %i.gf, i64 31)
  %i.gh = mul i64 %i.gg, -7046029288634856825
  %i.gi = mul i64 %i.fy, -4417276706812531889
  %i.gj = add i64 %i.gi, %.025.lcssa.i81          ; 2 uses
  %i.gk = tail call i64 @llvm.fshl.i64(i64 %i.gj, i64 %i.gj, i64 31)
  %i.gl = mul i64 %i.gk, -7046029288634856825
  %i.gm = mul i64 %i.fz, -4417276706812531889
  %i.gn = add i64 %i.gm, %.026.lcssa.i80          ; 2 uses
  %i.go = tail call i64 @llvm.fshl.i64(i64 %i.gn, i64 %i.gn, i64 31)
  %i.gp = mul i64 %i.go, -7046029288634856825
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0127 = phi i64 [ %.0.lcssa.i83, %bb.f ], [ %i.gd, %bb.g ] ; 3 uses
  %.0126 = phi i64 [ %.024.lcssa.i82, %bb.f ], [ %i.gh, %bb.g ] ; 3 uses
  %.0125 = phi i64 [ %.025.lcssa.i81, %bb.f ], [ %i.gl, %bb.g ] ; 3 uses
  %.0124 = phi i64 [ %.026.lcssa.i80, %bb.f ], [ %i.gp, %bb.g ] ; 3 uses
  %i.gq = tail call i64 @llvm.fshl.i64(i64 %.0127, i64 %.0127, i64 1)
  %i.gr = tail call i64 @llvm.fshl.i64(i64 %.0126, i64 %.0126, i64 7)
  %i.gs = add i64 %i.gr, %i.gq
  %i.gt = tail call i64 @llvm.fshl.i64(i64 %.0125, i64 %.0125, i64 12)
  %i.gu = add i64 %i.gs, %i.gt
  %i.gv = tail call i64 @llvm.fshl.i64(i64 %.0124, i64 %.0124, i64 18)
  %i.gw = add i64 %i.gu, %i.gv
  %i.gx = mul i64 %.0127, -4417276706812531889    ; 2 uses
  %i.gy = tail call i64 @llvm.fshl.i64(i64 %i.gx, i64 %i.gx, i64 31)
  %i.gz = mul i64 %i.gy, -7046029288634856825
  %i.ha = xor i64 %i.gw, %i.gz
  %i.hb = mul i64 %i.ha, -7046029288634856825
  %i.hc = add i64 %i.hb, -8796714831421723037
  %i.hd = mul i64 %.0126, -4417276706812531889    ; 2 uses
  %i.he = tail call i64 @llvm.fshl.i64(i64 %i.hd, i64 %i.hd, i64 31)
  %i.hf = mul i64 %i.he, -7046029288634856825
  %i.hg = xor i64 %i.hc, %i.hf
  %i.hh = mul i64 %i.hg, -7046029288634856825
  %i.hi = add i64 %i.hh, -8796714831421723037
  %i.hj = mul i64 %.0125, -4417276706812531889    ; 2 uses
  %i.hk = tail call i64 @llvm.fshl.i64(i64 %i.hj, i64 %i.hj, i64 31)
  %i.hl = mul i64 %i.hk, -7046029288634856825
  %i.hm = xor i64 %i.hi, %i.hl
  %i.hn = mul i64 %i.hm, -7046029288634856825
  %i.ho = add i64 %i.hn, -8796714831421723037
  %i.hp = mul i64 %.0124, -4417276706812531889    ; 2 uses
  %i.hq = tail call i64 @llvm.fshl.i64(i64 %i.hp, i64 %i.hp, i64 31)
  %i.hr = mul i64 %i.hq, -7046029288634856825
  %i.hs = xor i64 %i.ho, %i.hr
  %i.ht = mul i64 %i.hs, -7046029288634856825
  %i.hu = add i64 %i.ht, -8796714831421723037     ; 2 uses
  %i.hv = lshr i64 %i.hu, 33
  %i.hw = xor i64 %i.hv, %i.hu
  %i.hx = mul i64 %i.hw, -4417276706812531889     ; 2 uses
  %i.hy = lshr i64 %i.hx, 29
  %i.hz = xor i64 %i.hy, %i.hx
  %i.ia = mul i64 %i.hz, 1609587929392839161      ; 2 uses
  %i.ib = lshr i64 %i.ia, 32
  %i.ic = xor i64 %i.ib, %i.ia
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv178 ; 2 uses
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !15 ; 3 uses
  %i.if = shl i64 %i.ie, 6
  %i.ig = lshr i64 %i.ie, 2
  %i.ih = add i64 %i.if, 2654435769
  %i.ii = add i64 %i.ih, %i.ig
  %i.ij = add i64 %i.ii, %i.ic
  %i.ik = xor i64 %i.ij, %i.ie
  store i64 %i.ik, ptr %i.id, align 8, !tbaa !15
  %exitcond182.not = icmp eq i64 %indvars.iv.next179, %wide.trip.count181
  br i1 %exitcond182.not, label %._crit_edge164, label %_ZN5arrow8bit_util7CeilDivEll.exit75, !llvm.loop !145
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute9Hashing6413HashVarLenImpIjLb0EEEvjPKT_PKhPm(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 7 uses
  %.not154 = icmp eq i32 %0, 0
  br i1 %.not154, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = zext i32 %0 to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.0155 = phi i32 [ %0, %.lr.ph ], [ %i.j, %bb.c ] ; 4 uses
  %i.e = zext i32 %.0155 to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3
  %i.h = sub i32 %i.d, %i.g
  %i.i = icmp ult i32 %i.h, 32
  br i1 %i.i, label %bb.c, label %_ZN5arrow8bit_util7CeilDivEll.exit.preheader

bb.c:                                             ; preds = %bb.b
  %i.j = add i32 %.0155, -1                       ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !146

_ZN5arrow8bit_util7CeilDivEll.exit.preheader:     ; preds = %bb.b
  %wide.trip.count = zext i32 %.0155 to i64
  %.pre = load i32, ptr %1, align 4, !tbaa !3
  br label %_ZN5arrow8bit_util7CeilDivEll.exit

._crit_edge:                                      ; preds = %bb.c, %bb.d, %bb.a
  %.0.lcssa186 = phi i32 [ %.0155, %bb.d ], [ 0, %bb.a ], [ 0, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = icmp ult i32 %.0.lcssa186, %0
  br i1 %i.k, label %_ZN5arrow8bit_util7CeilDivEll.exit71.lr.ph, label %._crit_edge160

_ZN5arrow8bit_util7CeilDivEll.exit71.lr.ph:       ; preds = %._crit_edge
  %i.l = zext i32 %.0.lcssa186 to i64             ; 2 uses
  %wide.trip.count177 = zext i32 %0 to i64
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.l
  %.pre179 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !3
  %.8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.24..24..24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %_ZN5arrow8bit_util7CeilDivEll.exit71

_ZN5arrow8bit_util7CeilDivEll.exit:               ; preds = %_ZN5arrow8bit_util7CeilDivEll.exit.preheader, %bb.d
  %i.m = phi i32 [ %.pre, %_ZN5arrow8bit_util7CeilDivEll.exit.preheader ], [ %i.o, %bb.d ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %_ZN5arrow8bit_util7CeilDivEll.exit.preheader ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3    ; 4 uses
  %i.p = sub i32 %i.o, %i.m                       ; 2 uses
  %i.q = icmp ne i32 %i.o, %i.m                   ; 3 uses
  %i.r = icmp eq i32 %i.o, %i.m
  %.lhs.trunc = add i32 %i.p, -1
  %i.s = lshr i32 %.lhs.trunc, 5
  %narrow140 = add nuw nsw i32 %i.s, 1
  %narrow141 = select i1 %i.r, i32 0, i32 %narrow140
  %i.t = zext nneg i32 %narrow141 to i64
  %not.67 = xor i1 %i.q, true
  %i.u = zext i1 %not.67 to i64
  %i.v = add nuw nsw i64 %i.t, %i.u               ; 4 uses
  %.neg163 = sext i1 %i.q to i32
  %i.w = add i32 %i.p, %.neg163
  %i.x = and i32 %i.w, 31
  %.neg146 = select i1 %i.q, i32 31, i32 32
  %i.y = sub nuw nsw i32 %.neg146, %i.x
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @_ZZN5arrow7compute9Hashing6410StripeMaskEiPmS2_S2_S2_E5bytes, i64 %i.z ; 4 uses
  %.0.copyload.i.i = load i64, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.0.copyload.i9.i = load i64, ptr %i.ab, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.0.copyload.i10.i = load i64, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.0.copyload.i11.i = load i64, ptr %i.ad, align 1
  %i.ae = zext i32 %i.m to i64
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %i.ae ; 2 uses
  %i.ag = icmp samesign ugt i64 %i.v, 1
  br i1 %i.ag, label %.lr.ph.preheader.i, label %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit

.lr.ph.preheader.i:                               ; preds = %_ZN5arrow8bit_util7CeilDivEll.exit
  %i.ah = add nsw i64 %i.v, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.035.i = phi i64 [ %i.aq, %.lr.ph.i ], [ -2239933958592612906, %.lr.ph.preheader.i ]
  %.02434.i = phi i64 [ %i.au, %.lr.ph.i ], [ -4417276706812531889, %.lr.ph.preheader.i ]
  %.02533.i = phi i64 [ %i.ay, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %.02632.i = phi i64 [ %i.bc, %.lr.ph.i ], [ 7046029288634856825, %.lr.ph.preheader.i ]
  %.02731.i = phi i64 [ %i.bd, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.ai = shl nuw nsw i64 %.02731.i, 5
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ai ; 4 uses
  %.0.copyload.i.i69 = load i64, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.0.copyload.i28.i = load i64, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.0.copyload.i29.i = load i64, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.0.copyload.i30.i = load i64, ptr %i.am, align 1
  %i.an = mul i64 %.0.copyload.i.i69, -4417276706812531889
  %i.ao = add i64 %i.an, %.035.i                  ; 2 uses
  %i.ap = tail call i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 31)
  %i.aq = mul i64 %i.ap, -7046029288634856825     ; 2 uses
  %i.ar = mul i64 %.0.copyload.i28.i, -4417276706812531889
  %i.as = add i64 %i.ar, %.02434.i                ; 2 uses
  %i.at = tail call i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 31)
  %i.au = mul i64 %i.at, -7046029288634856825     ; 2 uses
  %i.av = mul i64 %.0.copyload.i29.i, -4417276706812531889
  %i.aw = add i64 %i.av, %.02533.i                ; 2 uses
  %i.ax = tail call i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 31)
  %i.ay = mul i64 %i.ax, -7046029288634856825     ; 2 uses
  %i.az = mul i64 %.0.copyload.i30.i, -4417276706812531889
  %i.ba = add i64 %i.az, %.02632.i                ; 2 uses
  %i.bb = tail call i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 31)
  %i.bc = mul i64 %i.bb, -7046029288634856825     ; 2 uses
  %i.bd = add nuw nsw i64 %.02731.i, 1
  %exitcond.not.i = icmp eq i64 %.02731.i, %i.ah
  br i1 %exitcond.not.i, label %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit.thread, label %.lr.ph.i, !llvm.loop !143

_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit: ; preds = %_ZN5arrow8bit_util7CeilDivEll.exit
  %.not68 = icmp eq i64 %i.v, 0
  br i1 %.not68, label %bb.d, label %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit.thread

_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit.thread: ; preds = %.lr.ph.i, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit
  %.0.lcssa.i136 = phi i64 [ -2239933958592612906, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit ], [ %i.aq, %.lr.ph.i ]
  %.024.lcssa.i135 = phi i64 [ -4417276706812531889, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit ], [ %i.au, %.lr.ph.i ]
  %.025.lcssa.i134 = phi i64 [ 0, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit ], [ %i.ay, %.lr.ph.i ]
  %.026.lcssa.i133 = phi i64 [ 7046029288634856825, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit ], [ %i.bc, %.lr.ph.i ]
  %i.be = shl nuw nsw i64 %i.v, 5
  %i.bf = getelementptr i8, ptr %i.af, i64 %i.be  ; 4 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 -32
  %.0.copyload.i.i70 = load i64, ptr %i.bg, align 1
  %i.bh = getelementptr i8, ptr %i.bf, i64 -24
  %.0.copyload.i23.i = load i64, ptr %i.bh, align 1
  %i.bi = getelementptr i8, ptr %i.bf, i64 -16
  %.0.copyload.i24.i = load i64, ptr %i.bi, align 1
  %i.bj = getelementptr i8, ptr %i.bf, i64 -8
  %.0.copyload.i25.i = load i64, ptr %i.bj, align 1
  %i.bk = and i64 %.0.copyload.i.i70, %.0.copyload.i.i
  %i.bl = and i64 %.0.copyload.i23.i, %.0.copyload.i9.i
  %i.bm = and i64 %.0.copyload.i24.i, %.0.copyload.i10.i
  %i.bn = and i64 %.0.copyload.i25.i, %.0.copyload.i11.i
  %i.bo = mul i64 %i.bk, -4417276706812531889
  %i.bp = add i64 %i.bo, %.0.lcssa.i136           ; 2 uses
  %i.bq = tail call i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bp, i64 31)
  %i.br = mul i64 %i.bq, -7046029288634856825
  %i.bs = mul i64 %i.bl, -4417276706812531889
  %i.bt = add i64 %i.bs, %.024.lcssa.i135         ; 2 uses
  %i.bu = tail call i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.bt, i64 31)
  %i.bv = mul i64 %i.bu, -7046029288634856825
  %i.bw = mul i64 %i.bm, -4417276706812531889
  %i.bx = add i64 %i.bw, %.025.lcssa.i134         ; 2 uses
  %i.by = tail call i64 @llvm.fshl.i64(i64 %i.bx, i64 %i.bx, i64 31)
  %i.bz = mul i64 %i.by, -7046029288634856825
  %i.ca = mul i64 %i.bn, -4417276706812531889
  %i.cb = add i64 %i.ca, %.026.lcssa.i133         ; 2 uses
  %i.cc = tail call i64 @llvm.fshl.i64(i64 %i.cb, i64 %i.cb, i64 31)
  %i.cd = mul i64 %i.cc, -7046029288634856825
  br label %bb.d

bb.d:                                             ; preds = %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit.thread, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit
  %.0127 = phi i64 [ 7046029288634856825, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit ], [ %i.cd, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit.thread ] ; 3 uses
  %.0126 = phi i64 [ 0, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit ], [ %i.bz, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit.thread ] ; 3 uses
  %.0125 = phi i64 [ -4417276706812531889, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit ], [ %i.bv, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit.thread ] ; 3 uses
  %.0124 = phi i64 [ -2239933958592612906, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit ], [ %i.br, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit.thread ] ; 3 uses
  %i.ce = tail call i64 @llvm.fshl.i64(i64 %.0124, i64 %.0124, i64 1)
  %i.cf = tail call i64 @llvm.fshl.i64(i64 %.0125, i64 %.0125, i64 7)
  %i.cg = tail call i64 @llvm.fshl.i64(i64 %.0126, i64 %.0126, i64 12)
  %i.ch = tail call i64 @llvm.fshl.i64(i64 %.0127, i64 %.0127, i64 18)
  %i.ci = add i64 %i.cg, %i.ch
  %i.cj = add i64 %i.ci, %i.cf
  %i.ck = add i64 %i.cj, %i.ce
  %i.cl = mul i64 %.0124, -4417276706812531889    ; 2 uses
  %i.cm = tail call i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 31)
  %i.cn = mul i64 %i.cm, -7046029288634856825
  %i.co = xor i64 %i.ck, %i.cn
  %i.cp = mul i64 %i.co, -7046029288634856825
  %i.cq = add i64 %i.cp, -8796714831421723037
  %i.cr = mul i64 %.0125, -4417276706812531889    ; 2 uses
  %i.cs = tail call i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 31)
  %i.ct = mul i64 %i.cs, -7046029288634856825
  %i.cu = xor i64 %i.cq, %i.ct
  %i.cv = mul i64 %i.cu, -7046029288634856825
  %i.cw = add i64 %i.cv, -8796714831421723037
  %i.cx = mul i64 %.0126, -4417276706812531889    ; 2 uses
  %i.cy = tail call i64 @llvm.fshl.i64(i64 %i.cx, i64 %i.cx, i64 31)
  %i.cz = mul i64 %i.cy, -7046029288634856825
  %i.da = xor i64 %i.cw, %i.cz
  %i.db = mul i64 %i.da, -7046029288634856825
  %i.dc = add i64 %i.db, -8796714831421723037
  %i.dd = mul i64 %.0127, -4417276706812531889    ; 2 uses
  %i.de = tail call i64 @llvm.fshl.i64(i64 %i.dd, i64 %i.dd, i64 31)
  %i.df = mul i64 %i.de, -7046029288634856825
  %i.dg = xor i64 %i.dc, %i.df
  %i.dh = mul i64 %i.dg, -7046029288634856825
  %i.di = add i64 %i.dh, -8796714831421723037     ; 2 uses
  %i.dj = lshr i64 %i.di, 33
  %i.dk = xor i64 %i.dj, %i.di
  %i.dl = mul i64 %i.dk, -4417276706812531889     ; 2 uses
  %i.dm = lshr i64 %i.dl, 29
  %i.dn = xor i64 %i.dm, %i.dl
  %i.do = mul i64 %i.dn, 1609587929392839161      ; 2 uses
  %i.dp = lshr i64 %i.do, 32
  %i.dq = xor i64 %i.dp, %i.do
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store i64 %i.dq, ptr %i.dr, align 8, !tbaa !15
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %_ZN5arrow8bit_util7CeilDivEll.exit, !llvm.loop !147

._crit_edge160:                                   ; preds = %bb.h, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_ZN5arrow8bit_util7CeilDivEll.exit71:             ; preds = %_ZN5arrow8bit_util7CeilDivEll.exit71.lr.ph, %bb.h
  %i.ds = phi i32 [ %.pre179, %_ZN5arrow8bit_util7CeilDivEll.exit71.lr.ph ], [ %i.du, %bb.h ] ; 4 uses
  %indvars.iv174 = phi i64 [ %i.l, %_ZN5arrow8bit_util7CeilDivEll.exit71.lr.ph ], [ %indvars.iv.next175, %bb.h ] ; 2 uses
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1 ; 3 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next175
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !3  ; 4 uses
  %i.dv = sub i32 %i.du, %i.ds                    ; 3 uses
  %i.dw = zext i32 %i.dv to i64
  %i.dx = icmp ne i32 %i.du, %i.ds                ; 3 uses
  %i.dy = icmp eq i32 %i.du, %i.ds                ; 2 uses
  %.lhs.trunc137 = add i32 %i.dv, -1
  %i.dz = lshr i32 %.lhs.trunc137, 5
  %narrow = add nuw nsw i32 %i.dz, 1
  %narrow139 = select i1 %i.dy, i32 0, i32 %narrow
  %i.ea = zext nneg i32 %narrow139 to i64
  %not. = xor i1 %i.dx, true
  %i.eb = zext i1 %not. to i64
  %i.ec = add nuw nsw i64 %i.ea, %i.eb            ; 4 uses
  %.neg165 = sext i1 %i.dx to i32
  %i.ed = add i32 %i.dv, %.neg165
  %i.ee = and i32 %i.ed, 31
  %.neg143 = select i1 %i.dx, i32 31, i32 32
  %i.ef = sub nuw nsw i32 %.neg143, %i.ee
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr @_ZZN5arrow7compute9Hashing6410StripeMaskEiPmS2_S2_S2_E5bytes, i64 %i.eg ; 4 uses
  %.0.copyload.i.i72 = load i64, ptr %i.eh, align 1
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %.0.copyload.i9.i73 = load i64, ptr %i.ei, align 1
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %.0.copyload.i10.i74 = load i64, ptr %i.ej, align 1
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %.0.copyload.i11.i75 = load i64, ptr %i.ek, align 1
  %i.el = zext i32 %i.ds to i64
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 %i.el ; 2 uses
  %i.en = icmp samesign ugt i64 %i.ec, 1
  br i1 %i.en, label %.lr.ph.preheader.i80, label %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit92

.lr.ph.preheader.i80:                             ; preds = %_ZN5arrow8bit_util7CeilDivEll.exit71
  %i.eo = add nsw i64 %i.ec, -2
  br label %.lr.ph.i81

.lr.ph.i81:                                       ; preds = %.lr.ph.i81, %.lr.ph.preheader.i80
  %.035.i82 = phi i64 [ %i.ex, %.lr.ph.i81 ], [ -2239933958592612906, %.lr.ph.preheader.i80 ]
  %.02434.i83 = phi i64 [ %i.fb, %.lr.ph.i81 ], [ -4417276706812531889, %.lr.ph.preheader.i80 ]
  %.02533.i84 = phi i64 [ %i.ff, %.lr.ph.i81 ], [ 0, %.lr.ph.preheader.i80 ]
  %.02632.i85 = phi i64 [ %i.fj, %.lr.ph.i81 ], [ 7046029288634856825, %.lr.ph.preheader.i80 ]
  %.02731.i86 = phi i64 [ %i.fk, %.lr.ph.i81 ], [ 0, %.lr.ph.preheader.i80 ] ; 3 uses
  %i.ep = shl nuw nsw i64 %.02731.i86, 5
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ep ; 4 uses
  %.0.copyload.i.i87 = load i64, ptr %i.eq, align 1
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %.0.copyload.i28.i88 = load i64, ptr %i.er, align 1
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %.0.copyload.i29.i89 = load i64, ptr %i.es, align 1
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %.0.copyload.i30.i90 = load i64, ptr %i.et, align 1
  %i.eu = mul i64 %.0.copyload.i.i87, -4417276706812531889
  %i.ev = add i64 %i.eu, %.035.i82                ; 2 uses
  %i.ew = tail call i64 @llvm.fshl.i64(i64 %i.ev, i64 %i.ev, i64 31)
  %i.ex = mul i64 %i.ew, -7046029288634856825     ; 2 uses
  %i.ey = mul i64 %.0.copyload.i28.i88, -4417276706812531889
  %i.ez = add i64 %i.ey, %.02434.i83              ; 2 uses
  %i.fa = tail call i64 @llvm.fshl.i64(i64 %i.ez, i64 %i.ez, i64 31)
  %i.fb = mul i64 %i.fa, -7046029288634856825     ; 2 uses
  %i.fc = mul i64 %.0.copyload.i29.i89, -4417276706812531889
  %i.fd = add i64 %i.fc, %.02533.i84              ; 2 uses
  %i.fe = tail call i64 @llvm.fshl.i64(i64 %i.fd, i64 %i.fd, i64 31)
  %i.ff = mul i64 %i.fe, -7046029288634856825     ; 2 uses
  %i.fg = mul i64 %.0.copyload.i30.i90, -4417276706812531889
  %i.fh = add i64 %i.fg, %.02632.i85              ; 2 uses
  %i.fi = tail call i64 @llvm.fshl.i64(i64 %i.fh, i64 %i.fh, i64 31)
  %i.fj = mul i64 %i.fi, -7046029288634856825     ; 2 uses
  %i.fk = add nuw nsw i64 %.02731.i86, 1
  %exitcond.not.i91 = icmp eq i64 %.02731.i86, %i.eo
  br i1 %exitcond.not.i91, label %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit92, label %.lr.ph.i81, !llvm.loop !143

_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit92: ; preds = %.lr.ph.i81, %_ZN5arrow8bit_util7CeilDivEll.exit71
  %.026.lcssa.i76 = phi i64 [ 7046029288634856825, %_ZN5arrow8bit_util7CeilDivEll.exit71 ], [ %i.fj, %.lr.ph.i81 ] ; 2 uses
  %.025.lcssa.i77 = phi i64 [ 0, %_ZN5arrow8bit_util7CeilDivEll.exit71 ], [ %i.ff, %.lr.ph.i81 ] ; 2 uses
  %.024.lcssa.i78 = phi i64 [ -4417276706812531889, %_ZN5arrow8bit_util7CeilDivEll.exit71 ], [ %i.fb, %.lr.ph.i81 ] ; 2 uses
  %.0.lcssa.i79 = phi i64 [ -2239933958592612906, %_ZN5arrow8bit_util7CeilDivEll.exit71 ], [ %i.ex, %.lr.ph.i81 ] ; 2 uses
  br i1 %i.dy, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit92
  %i.fl = shl nuw nsw i64 %i.ec, 5
  %i.fm = add nsw i64 %i.fl, -32                  ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.fm
  %i.fo = sub nsw i64 %i.dw, %i.fm
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.fn, i64 %i.fo, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit92
  %.not65 = icmp eq i64 %i.ec, 0
  br i1 %.not65, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.0..0..0..0.copyload.i.i93 = load i64, ptr %i.a, align 16
  %.8..8..8..0.copyload.i23.i94 = load i64, ptr %.8..8..8..sroa_idx, align 8
  %.16..16..16..0.copyload.i24.i95 = load i64, ptr %.16..16..16..sroa_idx, align 16
  %.24..24..24..0.copyload.i25.i96 = load i64, ptr %.24..24..24..sroa_idx, align 8
  %i.fp = and i64 %.0..0..0..0.copyload.i.i93, %.0.copyload.i.i72
  %i.fq = and i64 %.8..8..8..0.copyload.i23.i94, %.0.copyload.i9.i73
  %i.fr = and i64 %.16..16..16..0.copyload.i24.i95, %.0.copyload.i10.i74
  %i.fs = and i64 %.24..24..24..0.copyload.i25.i96, %.0.copyload.i11.i75
  %i.ft = mul i64 %i.fp, -4417276706812531889
  %i.fu = add i64 %i.ft, %.0.lcssa.i79            ; 2 uses
  %i.fv = tail call i64 @llvm.fshl.i64(i64 %i.fu, i64 %i.fu, i64 31)
  %i.fw = mul i64 %i.fv, -7046029288634856825
  %i.fx = mul i64 %i.fq, -4417276706812531889
  %i.fy = add i64 %i.fx, %.024.lcssa.i78          ; 2 uses
  %i.fz = tail call i64 @llvm.fshl.i64(i64 %i.fy, i64 %i.fy, i64 31)
  %i.ga = mul i64 %i.fz, -7046029288634856825
  %i.gb = mul i64 %i.fr, -4417276706812531889
  %i.gc = add i64 %i.gb, %.025.lcssa.i77          ; 2 uses
  %i.gd = tail call i64 @llvm.fshl.i64(i64 %i.gc, i64 %i.gc, i64 31)
  %i.ge = mul i64 %i.gd, -7046029288634856825
  %i.gf = mul i64 %i.fs, -4417276706812531889
  %i.gg = add i64 %i.gf, %.026.lcssa.i76          ; 2 uses
  %i.gh = tail call i64 @llvm.fshl.i64(i64 %i.gg, i64 %i.gg, i64 31)
  %i.gi = mul i64 %i.gh, -7046029288634856825
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0123 = phi i64 [ %.0.lcssa.i79, %bb.f ], [ %i.fw, %bb.g ] ; 3 uses
  %.0122 = phi i64 [ %.024.lcssa.i78, %bb.f ], [ %i.ga, %bb.g ] ; 3 uses
  %.0121 = phi i64 [ %.025.lcssa.i77, %bb.f ], [ %i.ge, %bb.g ] ; 3 uses
  %.0120 = phi i64 [ %.026.lcssa.i76, %bb.f ], [ %i.gi, %bb.g ] ; 3 uses
  %i.gj = tail call i64 @llvm.fshl.i64(i64 %.0123, i64 %.0123, i64 1)
  %i.gk = tail call i64 @llvm.fshl.i64(i64 %.0122, i64 %.0122, i64 7)
  %i.gl = add i64 %i.gk, %i.gj
  %i.gm = tail call i64 @llvm.fshl.i64(i64 %.0121, i64 %.0121, i64 12)
  %i.gn = add i64 %i.gl, %i.gm
  %i.go = tail call i64 @llvm.fshl.i64(i64 %.0120, i64 %.0120, i64 18)
  %i.gp = add i64 %i.gn, %i.go
  %i.gq = mul i64 %.0123, -4417276706812531889    ; 2 uses
  %i.gr = tail call i64 @llvm.fshl.i64(i64 %i.gq, i64 %i.gq, i64 31)
  %i.gs = mul i64 %i.gr, -7046029288634856825
  %i.gt = xor i64 %i.gp, %i.gs
  %i.gu = mul i64 %i.gt, -7046029288634856825
  %i.gv = add i64 %i.gu, -8796714831421723037
  %i.gw = mul i64 %.0122, -4417276706812531889    ; 2 uses
  %i.gx = tail call i64 @llvm.fshl.i64(i64 %i.gw, i64 %i.gw, i64 31)
  %i.gy = mul i64 %i.gx, -7046029288634856825
  %i.gz = xor i64 %i.gv, %i.gy
  %i.ha = mul i64 %i.gz, -7046029288634856825
  %i.hb = add i64 %i.ha, -8796714831421723037
  %i.hc = mul i64 %.0121, -4417276706812531889    ; 2 uses
  %i.hd = tail call i64 @llvm.fshl.i64(i64 %i.hc, i64 %i.hc, i64 31)
  %i.he = mul i64 %i.hd, -7046029288634856825
  %i.hf = xor i64 %i.hb, %i.he
  %i.hg = mul i64 %i.hf, -7046029288634856825
  %i.hh = add i64 %i.hg, -8796714831421723037
  %i.hi = mul i64 %.0120, -4417276706812531889    ; 2 uses
  %i.hj = tail call i64 @llvm.fshl.i64(i64 %i.hi, i64 %i.hi, i64 31)
  %i.hk = mul i64 %i.hj, -7046029288634856825
  %i.hl = xor i64 %i.hh, %i.hk
  %i.hm = mul i64 %i.hl, -7046029288634856825
  %i.hn = add i64 %i.hm, -8796714831421723037     ; 2 uses
  %i.ho = lshr i64 %i.hn, 33
  %i.hp = xor i64 %i.ho, %i.hn
  %i.hq = mul i64 %i.hp, -4417276706812531889     ; 2 uses
  %i.hr = lshr i64 %i.hq, 29
  %i.hs = xor i64 %i.hr, %i.hq
  %i.ht = mul i64 %i.hs, 1609587929392839161      ; 2 uses
  %i.hu = lshr i64 %i.ht, 32
  %i.hv = xor i64 %i.hu, %i.ht
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv174
  store i64 %i.hv, ptr %i.hw, align 8, !tbaa !15
  %exitcond178.not = icmp eq i64 %indvars.iv.next175, %wide.trip.count177
  br i1 %exitcond178.not, label %._crit_edge160, label %_ZN5arrow8bit_util7CeilDivEll.exit71, !llvm.loop !148
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute9Hashing6410HashVarLenEbjPKmPKhPm(i1 noundef zeroext %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  br i1 %0, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow7compute9Hashing6413HashVarLenImpImLb1EEEvjPKT_PKhPm(i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN5arrow7compute9Hashing6413HashVarLenImpImLb0EEEvjPKT_PKhPm(i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute9Hashing6413HashVarLenImpImLb1EEEvjPKT_PKhPm(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 7 uses
  %.not153 = icmp eq i32 %0, 0
  br i1 %.not153, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = zext i32 %0 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.0154 = phi i32 [ %0, %.lr.ph ], [ %i.j, %bb.c ] ; 4 uses
  %i.e = zext i32 %.0154 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !15
  %i.h = sub i64 %i.d, %i.g
  %i.i = icmp ult i64 %i.h, 32
  br i1 %i.i, label %bb.c, label %.lr.ph158.preheader

bb.c:                                             ; preds = %bb.b
  %i.j = add i32 %.0154, -1                       ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !149

.lr.ph158.preheader:                              ; preds = %bb.b
  %wide.trip.count = zext i32 %.0154 to i64
  br label %.lr.ph158

._crit_edge:                                      ; preds = %bb.c, %bb.e, %bb.a
  %.0.lcssa187 = phi i32 [ %.0154, %bb.e ], [ 0, %bb.a ], [ 0, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = icmp ult i32 %.0.lcssa187, %0
  br i1 %i.k, label %.lr.ph161, label %._crit_edge162

.lr.ph161:                                        ; preds = %._crit_edge
  %i.l = zext i32 %.0.lcssa187 to i64
  %wide.trip.count179 = zext i32 %0 to i64
  %.8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.24..24..24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.f

.lr.ph158:                                        ; preds = %.lr.ph158.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph158.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.n = load i64, ptr %i.m, align 8, !tbaa !15   ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.p = load i64, ptr %i.o, align 8, !tbaa !15   ; 4 uses
  %i.q = sub i64 %i.n, %i.p                       ; 2 uses
  %i.r = icmp ne i64 %i.n, %i.p                   ; 3 uses
  %i.s = icmp eq i64 %i.n, %i.p
  br i1 %i.s, label %_ZN5arrow8bit_util7CeilDivEll.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph158
  %i.t = add nsw i64 %i.q, -1
  %i.u = sdiv i64 %i.t, 32
  %i.v = add nsw i64 %i.u, 1
  br label %_ZN5arrow8bit_util7CeilDivEll.exit

_ZN5arrow8bit_util7CeilDivEll.exit:               ; preds = %.lr.ph158, %bb.d
  %i.w = phi i64 [ %i.v, %bb.d ], [ 0, %.lr.ph158 ]
  %not.71 = xor i1 %i.r, true
  %i.x = zext i1 %not.71 to i64
  %i.y = add nsw i64 %i.w, %i.x                   ; 4 uses
  %.neg165 = sext i1 %i.r to i64
  %i.z = add i64 %i.q, %.neg165
  %i.aa = and i64 %i.z, 31
  %.neg145 = select i1 %i.r, i64 31, i64 32
  %i.ab = sub nuw nsw i64 %.neg145, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr @_ZZN5arrow7compute9Hashing6410StripeMaskEiPmS2_S2_S2_E5bytes, i64 %i.ab ; 4 uses
  %.0.copyload.i.i = load i64, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.0.copyload.i9.i = load i64, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.0.copyload.i10.i = load i64, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.0.copyload.i11.i = load i64, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %i.p ; 2 uses
  %i.ah = icmp sgt i64 %i.y, 1
  br i1 %i.ah, label %.lr.ph.preheader.i, label %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit

.lr.ph.preheader.i:                               ; preds = %_ZN5arrow8bit_util7CeilDivEll.exit
  %i.ai = add nsw i64 %i.y, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.035.i = phi i64 [ %i.ar, %.lr.ph.i ], [ -2239933958592612906, %.lr.ph.preheader.i ]
  %.02434.i = phi i64 [ %i.av, %.lr.ph.i ], [ -4417276706812531889, %.lr.ph.preheader.i ]
  %.02533.i = phi i64 [ %i.az, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %.02632.i = phi i64 [ %i.bd, %.lr.ph.i ], [ 7046029288634856825, %.lr.ph.preheader.i ]
  %.02731.i = phi i64 [ %i.be, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.aj = shl nuw nsw i64 %.02731.i, 5
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj ; 4 uses
  %.0.copyload.i.i73 = load i64, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.0.copyload.i28.i = load i64, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.0.copyload.i29.i = load i64, ptr %i.am, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.0.copyload.i30.i = load i64, ptr %i.an, align 1
  %i.ao = mul i64 %.0.copyload.i.i73, -4417276706812531889
  %i.ap = add i64 %i.ao, %.035.i                  ; 2 uses
  %i.aq = tail call i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 31)
  %i.ar = mul i64 %i.aq, -7046029288634856825     ; 2 uses
  %i.as = mul i64 %.0.copyload.i28.i, -4417276706812531889
  %i.at = add i64 %i.as, %.02434.i                ; 2 uses
  %i.au = tail call i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 31)
  %i.av = mul i64 %i.au, -7046029288634856825     ; 2 uses
  %i.aw = mul i64 %.0.copyload.i29.i, -4417276706812531889
  %i.ax = add i64 %i.aw, %.02533.i                ; 2 uses
  %i.ay = tail call i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 31)
  %i.az = mul i64 %i.ay, -7046029288634856825     ; 2 uses
  %i.ba = mul i64 %.0.copyload.i30.i, -4417276706812531889
  %i.bb = add i64 %i.ba, %.02632.i                ; 2 uses
  %i.bc = tail call i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 31)
  %i.bd = mul i64 %i.bc, -7046029288634856825     ; 2 uses
  %i.be = add nuw nsw i64 %.02731.i, 1
  %exitcond.not.i = icmp eq i64 %.02731.i, %i.ai
  br i1 %exitcond.not.i, label %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit.thread, label %.lr.ph.i, !llvm.loop !143

_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit: ; preds = %_ZN5arrow8bit_util7CeilDivEll.exit
  %.not72 = icmp eq i64 %i.y, 0
  br i1 %.not72, label %bb.e, label %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit.thread

_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit.thread: ; preds = %.lr.ph.i, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit
  %.0.lcssa.i140 = phi i64 [ -2239933958592612906, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit ], [ %i.ar, %.lr.ph.i ]
  %.024.lcssa.i139 = phi i64 [ -4417276706812531889, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit ], [ %i.av, %.lr.ph.i ]
  %.025.lcssa.i138 = phi i64 [ 0, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit ], [ %i.az, %.lr.ph.i ]
  %.026.lcssa.i137 = phi i64 [ 7046029288634856825, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit ], [ %i.bd, %.lr.ph.i ]
  %i.bf = shl i64 %i.y, 5
  %i.bg = getelementptr i8, ptr %i.ag, i64 %i.bf  ; 4 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 -32
  %.0.copyload.i.i74 = load i64, ptr %i.bh, align 1
  %i.bi = getelementptr i8, ptr %i.bg, i64 -24
  %.0.copyload.i23.i = load i64, ptr %i.bi, align 1
  %i.bj = getelementptr i8, ptr %i.bg, i64 -16
  %.0.copyload.i24.i = load i64, ptr %i.bj, align 1
  %i.bk = getelementptr i8, ptr %i.bg, i64 -8
  %.0.copyload.i25.i = load i64, ptr %i.bk, align 1
  %i.bl = and i64 %.0.copyload.i.i74, %.0.copyload.i.i
  %i.bm = and i64 %.0.copyload.i23.i, %.0.copyload.i9.i
  %i.bn = and i64 %.0.copyload.i24.i, %.0.copyload.i10.i
  %i.bo = and i64 %.0.copyload.i25.i, %.0.copyload.i11.i
  %i.bp = mul i64 %i.bl, -4417276706812531889
  %i.bq = add i64 %i.bp, %.0.lcssa.i140           ; 2 uses
  %i.br = tail call i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bq, i64 31)
  %i.bs = mul i64 %i.br, -7046029288634856825
  %i.bt = mul i64 %i.bm, -4417276706812531889
  %i.bu = add i64 %i.bt, %.024.lcssa.i139         ; 2 uses
  %i.bv = tail call i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 31)
  %i.bw = mul i64 %i.bv, -7046029288634856825
  %i.bx = mul i64 %i.bn, -4417276706812531889
  %i.by = add i64 %i.bx, %.025.lcssa.i138         ; 2 uses
  %i.bz = tail call i64 @llvm.fshl.i64(i64 %i.by, i64 %i.by, i64 31)
  %i.ca = mul i64 %i.bz, -7046029288634856825
  %i.cb = mul i64 %i.bo, -4417276706812531889
  %i.cc = add i64 %i.cb, %.026.lcssa.i137         ; 2 uses
  %i.cd = tail call i64 @llvm.fshl.i64(i64 %i.cc, i64 %i.cc, i64 31)
  %i.ce = mul i64 %i.cd, -7046029288634856825
  br label %bb.e

bb.e:                                             ; preds = %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit.thread, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit
  %.0131 = phi i64 [ 7046029288634856825, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit ], [ %i.ce, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit.thread ] ; 3 uses
  %.0130 = phi i64 [ 0, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit ], [ %i.ca, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit.thread ] ; 3 uses
  %.0129 = phi i64 [ -4417276706812531889, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit ], [ %i.bw, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit.thread ] ; 3 uses
  %.0128 = phi i64 [ -2239933958592612906, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit ], [ %i.bs, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit.thread ] ; 3 uses
  %i.cf = tail call i64 @llvm.fshl.i64(i64 %.0128, i64 %.0128, i64 1)
  %i.cg = tail call i64 @llvm.fshl.i64(i64 %.0129, i64 %.0129, i64 7)
  %i.ch = tail call i64 @llvm.fshl.i64(i64 %.0130, i64 %.0130, i64 12)
  %i.ci = tail call i64 @llvm.fshl.i64(i64 %.0131, i64 %.0131, i64 18)
  %i.cj = add i64 %i.ch, %i.ci
  %i.ck = add i64 %i.cj, %i.cg
  %i.cl = add i64 %i.ck, %i.cf
  %i.cm = mul i64 %.0128, -4417276706812531889    ; 2 uses
  %i.cn = tail call i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 31)
  %i.co = mul i64 %i.cn, -7046029288634856825
  %i.cp = xor i64 %i.cl, %i.co
  %i.cq = mul i64 %i.cp, -7046029288634856825
  %i.cr = add i64 %i.cq, -8796714831421723037
  %i.cs = mul i64 %.0129, -4417276706812531889    ; 2 uses
  %i.ct = tail call i64 @llvm.fshl.i64(i64 %i.cs, i64 %i.cs, i64 31)
  %i.cu = mul i64 %i.ct, -7046029288634856825
  %i.cv = xor i64 %i.cr, %i.cu
  %i.cw = mul i64 %i.cv, -7046029288634856825
  %i.cx = add i64 %i.cw, -8796714831421723037
  %i.cy = mul i64 %.0130, -4417276706812531889    ; 2 uses
  %i.cz = tail call i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.cy, i64 31)
  %i.da = mul i64 %i.cz, -7046029288634856825
  %i.db = xor i64 %i.cx, %i.da
  %i.dc = mul i64 %i.db, -7046029288634856825
  %i.dd = add i64 %i.dc, -8796714831421723037
  %i.de = mul i64 %.0131, -4417276706812531889    ; 2 uses
  %i.df = tail call i64 @llvm.fshl.i64(i64 %i.de, i64 %i.de, i64 31)
  %i.dg = mul i64 %i.df, -7046029288634856825
  %i.dh = xor i64 %i.dd, %i.dg
  %i.di = mul i64 %i.dh, -7046029288634856825
  %i.dj = add i64 %i.di, -8796714831421723037     ; 2 uses
  %i.dk = lshr i64 %i.dj, 33
  %i.dl = xor i64 %i.dk, %i.dj
  %i.dm = mul i64 %i.dl, -4417276706812531889     ; 2 uses
  %i.dn = lshr i64 %i.dm, 29
  %i.do = xor i64 %i.dn, %i.dm
  %i.dp = mul i64 %i.do, 1609587929392839161      ; 2 uses
  %i.dq = lshr i64 %i.dp, 32
  %i.dr = xor i64 %i.dq, %i.dp
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !15 ; 3 uses
  %i.du = shl i64 %i.dt, 6
  %i.dv = lshr i64 %i.dt, 2
  %i.dw = add i64 %i.du, 2654435769
  %i.dx = add i64 %i.dw, %i.dv
  %i.dy = add i64 %i.dx, %i.dr
  %i.dz = xor i64 %i.dy, %i.dt
  store i64 %i.dz, ptr %i.ds, align 8, !tbaa !15
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph158, !llvm.loop !150

._crit_edge162:                                   ; preds = %bb.k, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.f:                                             ; preds = %.lr.ph161, %bb.k
  %indvars.iv176 = phi i64 [ %i.l, %.lr.ph161 ], [ %indvars.iv.next177, %bb.k ] ; 3 uses
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1 ; 3 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next177
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !15 ; 3 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv176
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !15 ; 4 uses
  %i.ee = sub i64 %i.eb, %i.ed                    ; 3 uses
  %i.ef = icmp ne i64 %i.eb, %i.ed                ; 3 uses
  %i.eg = icmp eq i64 %i.eb, %i.ed                ; 2 uses
  br i1 %i.eg, label %_ZN5arrow8bit_util7CeilDivEll.exit75, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.eh = add nsw i64 %i.ee, -1
  %i.ei = sdiv i64 %i.eh, 32
  %i.ej = add nsw i64 %i.ei, 1
  br label %_ZN5arrow8bit_util7CeilDivEll.exit75

_ZN5arrow8bit_util7CeilDivEll.exit75:             ; preds = %bb.f, %bb.g
  %i.ek = phi i64 [ %i.ej, %bb.g ], [ 0, %bb.f ]
  %not. = xor i1 %i.ef, true
  %i.el = zext i1 %not. to i64
  %i.em = add nsw i64 %i.ek, %i.el                ; 4 uses
  %.neg167 = sext i1 %i.ef to i64
  %i.en = add i64 %i.ee, %.neg167
  %i.eo = and i64 %i.en, 31
  %.neg142 = select i1 %i.ef, i64 31, i64 32
  %i.ep = sub nuw nsw i64 %.neg142, %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr @_ZZN5arrow7compute9Hashing6410StripeMaskEiPmS2_S2_S2_E5bytes, i64 %i.ep ; 4 uses
  %.0.copyload.i.i76 = load i64, ptr %i.eq, align 1
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %.0.copyload.i9.i77 = load i64, ptr %i.er, align 1
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %.0.copyload.i10.i78 = load i64, ptr %i.es, align 1
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %.0.copyload.i11.i79 = load i64, ptr %i.et, align 1
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 %i.ed ; 2 uses
  %i.ev = icmp sgt i64 %i.em, 1
  br i1 %i.ev, label %.lr.ph.preheader.i84, label %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit96

.lr.ph.preheader.i84:                             ; preds = %_ZN5arrow8bit_util7CeilDivEll.exit75
  %i.ew = add nsw i64 %i.em, -2
  br label %.lr.ph.i85

.lr.ph.i85:                                       ; preds = %.lr.ph.i85, %.lr.ph.preheader.i84
  %.035.i86 = phi i64 [ %i.ff, %.lr.ph.i85 ], [ -2239933958592612906, %.lr.ph.preheader.i84 ]
  %.02434.i87 = phi i64 [ %i.fj, %.lr.ph.i85 ], [ -4417276706812531889, %.lr.ph.preheader.i84 ]
  %.02533.i88 = phi i64 [ %i.fn, %.lr.ph.i85 ], [ 0, %.lr.ph.preheader.i84 ]
  %.02632.i89 = phi i64 [ %i.fr, %.lr.ph.i85 ], [ 7046029288634856825, %.lr.ph.preheader.i84 ]
  %.02731.i90 = phi i64 [ %i.fs, %.lr.ph.i85 ], [ 0, %.lr.ph.preheader.i84 ] ; 3 uses
  %i.ex = shl nuw nsw i64 %.02731.i90, 5
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ex ; 4 uses
  %.0.copyload.i.i91 = load i64, ptr %i.ey, align 1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %.0.copyload.i28.i92 = load i64, ptr %i.ez, align 1
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %.0.copyload.i29.i93 = load i64, ptr %i.fa, align 1
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %.0.copyload.i30.i94 = load i64, ptr %i.fb, align 1
  %i.fc = mul i64 %.0.copyload.i.i91, -4417276706812531889
  %i.fd = add i64 %i.fc, %.035.i86                ; 2 uses
  %i.fe = tail call i64 @llvm.fshl.i64(i64 %i.fd, i64 %i.fd, i64 31)
  %i.ff = mul i64 %i.fe, -7046029288634856825     ; 2 uses
  %i.fg = mul i64 %.0.copyload.i28.i92, -4417276706812531889
  %i.fh = add i64 %i.fg, %.02434.i87              ; 2 uses
  %i.fi = tail call i64 @llvm.fshl.i64(i64 %i.fh, i64 %i.fh, i64 31)
  %i.fj = mul i64 %i.fi, -7046029288634856825     ; 2 uses
  %i.fk = mul i64 %.0.copyload.i29.i93, -4417276706812531889
  %i.fl = add i64 %i.fk, %.02533.i88              ; 2 uses
  %i.fm = tail call i64 @llvm.fshl.i64(i64 %i.fl, i64 %i.fl, i64 31)
  %i.fn = mul i64 %i.fm, -7046029288634856825     ; 2 uses
  %i.fo = mul i64 %.0.copyload.i30.i94, -4417276706812531889
  %i.fp = add i64 %i.fo, %.02632.i89              ; 2 uses
  %i.fq = tail call i64 @llvm.fshl.i64(i64 %i.fp, i64 %i.fp, i64 31)
  %i.fr = mul i64 %i.fq, -7046029288634856825     ; 2 uses
  %i.fs = add nuw nsw i64 %.02731.i90, 1
  %exitcond.not.i95 = icmp eq i64 %.02731.i90, %i.ew
  br i1 %exitcond.not.i95, label %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit96, label %.lr.ph.i85, !llvm.loop !143

_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit96: ; preds = %.lr.ph.i85, %_ZN5arrow8bit_util7CeilDivEll.exit75
  %.026.lcssa.i80 = phi i64 [ 7046029288634856825, %_ZN5arrow8bit_util7CeilDivEll.exit75 ], [ %i.fr, %.lr.ph.i85 ] ; 2 uses
  %.025.lcssa.i81 = phi i64 [ 0, %_ZN5arrow8bit_util7CeilDivEll.exit75 ], [ %i.fn, %.lr.ph.i85 ] ; 2 uses
  %.024.lcssa.i82 = phi i64 [ -4417276706812531889, %_ZN5arrow8bit_util7CeilDivEll.exit75 ], [ %i.fj, %.lr.ph.i85 ] ; 2 uses
  %.0.lcssa.i83 = phi i64 [ -2239933958592612906, %_ZN5arrow8bit_util7CeilDivEll.exit75 ], [ %i.ff, %.lr.ph.i85 ] ; 2 uses
  br i1 %i.eg, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit96
  %i.ft = shl i64 %i.em, 5
  %i.fu = add i64 %i.ft, -32                      ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.fu
  %i.fw = sub i64 %i.ee, %i.fu
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.fv, i64 %i.fw, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit96
  %.not69 = icmp eq i64 %i.em, 0
  br i1 %.not69, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.0..0..0..0.copyload.i.i97 = load i64, ptr %i.a, align 16
  %.8..8..8..0.copyload.i23.i98 = load i64, ptr %.8..8..8..sroa_idx, align 8
  %.16..16..16..0.copyload.i24.i99 = load i64, ptr %.16..16..16..sroa_idx, align 16
  %.24..24..24..0.copyload.i25.i100 = load i64, ptr %.24..24..24..sroa_idx, align 8
  %i.fx = and i64 %.0..0..0..0.copyload.i.i97, %.0.copyload.i.i76
  %i.fy = and i64 %.8..8..8..0.copyload.i23.i98, %.0.copyload.i9.i77
  %i.fz = and i64 %.16..16..16..0.copyload.i24.i99, %.0.copyload.i10.i78
  %i.ga = and i64 %.24..24..24..0.copyload.i25.i100, %.0.copyload.i11.i79
  %i.gb = mul i64 %i.fx, -4417276706812531889
  %i.gc = add i64 %i.gb, %.0.lcssa.i83            ; 2 uses
  %i.gd = tail call i64 @llvm.fshl.i64(i64 %i.gc, i64 %i.gc, i64 31)
  %i.ge = mul i64 %i.gd, -7046029288634856825
  %i.gf = mul i64 %i.fy, -4417276706812531889
  %i.gg = add i64 %i.gf, %.024.lcssa.i82          ; 2 uses
  %i.gh = tail call i64 @llvm.fshl.i64(i64 %i.gg, i64 %i.gg, i64 31)
  %i.gi = mul i64 %i.gh, -7046029288634856825
  %i.gj = mul i64 %i.fz, -4417276706812531889
  %i.gk = add i64 %i.gj, %.025.lcssa.i81          ; 2 uses
  %i.gl = tail call i64 @llvm.fshl.i64(i64 %i.gk, i64 %i.gk, i64 31)
  %i.gm = mul i64 %i.gl, -7046029288634856825
  %i.gn = mul i64 %i.ga, -4417276706812531889
  %i.go = add i64 %i.gn, %.026.lcssa.i80          ; 2 uses
  %i.gp = tail call i64 @llvm.fshl.i64(i64 %i.go, i64 %i.go, i64 31)
  %i.gq = mul i64 %i.gp, -7046029288634856825
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0127 = phi i64 [ %.0.lcssa.i83, %bb.i ], [ %i.ge, %bb.j ] ; 3 uses
  %.0126 = phi i64 [ %.024.lcssa.i82, %bb.i ], [ %i.gi, %bb.j ] ; 3 uses
  %.0125 = phi i64 [ %.025.lcssa.i81, %bb.i ], [ %i.gm, %bb.j ] ; 3 uses
  %.0124 = phi i64 [ %.026.lcssa.i80, %bb.i ], [ %i.gq, %bb.j ] ; 3 uses
  %i.gr = tail call i64 @llvm.fshl.i64(i64 %.0127, i64 %.0127, i64 1)
  %i.gs = tail call i64 @llvm.fshl.i64(i64 %.0126, i64 %.0126, i64 7)
  %i.gt = add i64 %i.gs, %i.gr
  %i.gu = tail call i64 @llvm.fshl.i64(i64 %.0125, i64 %.0125, i64 12)
  %i.gv = add i64 %i.gt, %i.gu
  %i.gw = tail call i64 @llvm.fshl.i64(i64 %.0124, i64 %.0124, i64 18)
  %i.gx = add i64 %i.gv, %i.gw
  %i.gy = mul i64 %.0127, -4417276706812531889    ; 2 uses
  %i.gz = tail call i64 @llvm.fshl.i64(i64 %i.gy, i64 %i.gy, i64 31)
  %i.ha = mul i64 %i.gz, -7046029288634856825
  %i.hb = xor i64 %i.gx, %i.ha
  %i.hc = mul i64 %i.hb, -7046029288634856825
  %i.hd = add i64 %i.hc, -8796714831421723037
  %i.he = mul i64 %.0126, -4417276706812531889    ; 2 uses
  %i.hf = tail call i64 @llvm.fshl.i64(i64 %i.he, i64 %i.he, i64 31)
  %i.hg = mul i64 %i.hf, -7046029288634856825
  %i.hh = xor i64 %i.hd, %i.hg
  %i.hi = mul i64 %i.hh, -7046029288634856825
  %i.hj = add i64 %i.hi, -8796714831421723037
  %i.hk = mul i64 %.0125, -4417276706812531889    ; 2 uses
  %i.hl = tail call i64 @llvm.fshl.i64(i64 %i.hk, i64 %i.hk, i64 31)
  %i.hm = mul i64 %i.hl, -7046029288634856825
  %i.hn = xor i64 %i.hj, %i.hm
  %i.ho = mul i64 %i.hn, -7046029288634856825
  %i.hp = add i64 %i.ho, -8796714831421723037
  %i.hq = mul i64 %.0124, -4417276706812531889    ; 2 uses
  %i.hr = tail call i64 @llvm.fshl.i64(i64 %i.hq, i64 %i.hq, i64 31)
  %i.hs = mul i64 %i.hr, -7046029288634856825
  %i.ht = xor i64 %i.hp, %i.hs
  %i.hu = mul i64 %i.ht, -7046029288634856825
  %i.hv = add i64 %i.hu, -8796714831421723037     ; 2 uses
  %i.hw = lshr i64 %i.hv, 33
  %i.hx = xor i64 %i.hw, %i.hv
  %i.hy = mul i64 %i.hx, -4417276706812531889     ; 2 uses
  %i.hz = lshr i64 %i.hy, 29
  %i.ia = xor i64 %i.hz, %i.hy
  %i.ib = mul i64 %i.ia, 1609587929392839161      ; 2 uses
  %i.ic = lshr i64 %i.ib, 32
  %i.id = xor i64 %i.ic, %i.ib
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv176 ; 2 uses
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !15 ; 3 uses
  %i.ig = shl i64 %i.if, 6
  %i.ih = lshr i64 %i.if, 2
  %i.ii = add i64 %i.ig, 2654435769
  %i.ij = add i64 %i.ii, %i.ih
  %i.ik = add i64 %i.ij, %i.id
  %i.il = xor i64 %i.ik, %i.if
  store i64 %i.il, ptr %i.ie, align 8, !tbaa !15
  %exitcond180.not = icmp eq i64 %indvars.iv.next177, %wide.trip.count179
  br i1 %exitcond180.not, label %._crit_edge162, label %bb.f, !llvm.loop !151
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute9Hashing6413HashVarLenImpImLb0EEEvjPKT_PKhPm(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 7 uses
  %.not149 = icmp eq i32 %0, 0
  br i1 %.not149, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = zext i32 %0 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.0150 = phi i32 [ %0, %.lr.ph ], [ %i.j, %bb.c ] ; 4 uses
  %i.e = zext i32 %.0150 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !15
  %i.h = sub i64 %i.d, %i.g
  %i.i = icmp ult i64 %i.h, 32
  br i1 %i.i, label %bb.c, label %.lr.ph154.preheader

bb.c:                                             ; preds = %bb.b
  %i.j = add i32 %.0150, -1                       ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !152

.lr.ph154.preheader:                              ; preds = %bb.b
  %wide.trip.count = zext i32 %.0150 to i64
  br label %.lr.ph154

._crit_edge:                                      ; preds = %bb.c, %bb.e, %bb.a
  %.0.lcssa183 = phi i32 [ %.0150, %bb.e ], [ 0, %bb.a ], [ 0, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = icmp ult i32 %.0.lcssa183, %0
  br i1 %i.k, label %.lr.ph157, label %._crit_edge158

.lr.ph157:                                        ; preds = %._crit_edge
  %i.l = zext i32 %.0.lcssa183 to i64
  %wide.trip.count175 = zext i32 %0 to i64
  %.8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.24..24..24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.f

.lr.ph154:                                        ; preds = %.lr.ph154.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph154.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.n = load i64, ptr %i.m, align 8, !tbaa !15   ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.p = load i64, ptr %i.o, align 8, !tbaa !15   ; 4 uses
  %i.q = sub i64 %i.n, %i.p                       ; 2 uses
  %i.r = icmp ne i64 %i.n, %i.p                   ; 3 uses
  %i.s = icmp eq i64 %i.n, %i.p
  br i1 %i.s, label %_ZN5arrow8bit_util7CeilDivEll.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph154
  %i.t = add nsw i64 %i.q, -1
  %i.u = sdiv i64 %i.t, 32
  %i.v = add nsw i64 %i.u, 1
  br label %_ZN5arrow8bit_util7CeilDivEll.exit

_ZN5arrow8bit_util7CeilDivEll.exit:               ; preds = %.lr.ph154, %bb.d
  %i.w = phi i64 [ %i.v, %bb.d ], [ 0, %.lr.ph154 ]
  %not.67 = xor i1 %i.r, true
  %i.x = zext i1 %not.67 to i64
  %i.y = add nsw i64 %i.w, %i.x                   ; 4 uses
  %.neg161 = sext i1 %i.r to i64
  %i.z = add i64 %i.q, %.neg161
  %i.aa = and i64 %i.z, 31
  %.neg141 = select i1 %i.r, i64 31, i64 32
  %i.ab = sub nuw nsw i64 %.neg141, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr @_ZZN5arrow7compute9Hashing6410StripeMaskEiPmS2_S2_S2_E5bytes, i64 %i.ab ; 4 uses
  %.0.copyload.i.i = load i64, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.0.copyload.i9.i = load i64, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.0.copyload.i10.i = load i64, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.0.copyload.i11.i = load i64, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %i.p ; 2 uses
  %i.ah = icmp sgt i64 %i.y, 1
  br i1 %i.ah, label %.lr.ph.preheader.i, label %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit

.lr.ph.preheader.i:                               ; preds = %_ZN5arrow8bit_util7CeilDivEll.exit
  %i.ai = add nsw i64 %i.y, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.035.i = phi i64 [ %i.ar, %.lr.ph.i ], [ -2239933958592612906, %.lr.ph.preheader.i ]
  %.02434.i = phi i64 [ %i.av, %.lr.ph.i ], [ -4417276706812531889, %.lr.ph.preheader.i ]
  %.02533.i = phi i64 [ %i.az, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %.02632.i = phi i64 [ %i.bd, %.lr.ph.i ], [ 7046029288634856825, %.lr.ph.preheader.i ]
  %.02731.i = phi i64 [ %i.be, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.aj = shl nuw nsw i64 %.02731.i, 5
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj ; 4 uses
  %.0.copyload.i.i69 = load i64, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.0.copyload.i28.i = load i64, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.0.copyload.i29.i = load i64, ptr %i.am, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.0.copyload.i30.i = load i64, ptr %i.an, align 1
  %i.ao = mul i64 %.0.copyload.i.i69, -4417276706812531889
  %i.ap = add i64 %i.ao, %.035.i                  ; 2 uses
  %i.aq = tail call i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 31)
  %i.ar = mul i64 %i.aq, -7046029288634856825     ; 2 uses
  %i.as = mul i64 %.0.copyload.i28.i, -4417276706812531889
  %i.at = add i64 %i.as, %.02434.i                ; 2 uses
  %i.au = tail call i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 31)
  %i.av = mul i64 %i.au, -7046029288634856825     ; 2 uses
  %i.aw = mul i64 %.0.copyload.i29.i, -4417276706812531889
  %i.ax = add i64 %i.aw, %.02533.i                ; 2 uses
  %i.ay = tail call i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 31)
  %i.az = mul i64 %i.ay, -7046029288634856825     ; 2 uses
  %i.ba = mul i64 %.0.copyload.i30.i, -4417276706812531889
  %i.bb = add i64 %i.ba, %.02632.i                ; 2 uses
  %i.bc = tail call i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 31)
  %i.bd = mul i64 %i.bc, -7046029288634856825     ; 2 uses
  %i.be = add nuw nsw i64 %.02731.i, 1
  %exitcond.not.i = icmp eq i64 %.02731.i, %i.ai
  br i1 %exitcond.not.i, label %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit.thread, label %.lr.ph.i, !llvm.loop !143

_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit: ; preds = %_ZN5arrow8bit_util7CeilDivEll.exit
  %.not68 = icmp eq i64 %i.y, 0
  br i1 %.not68, label %bb.e, label %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit.thread

_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit.thread: ; preds = %.lr.ph.i, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit
  %.0.lcssa.i136 = phi i64 [ -2239933958592612906, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit ], [ %i.ar, %.lr.ph.i ]
  %.024.lcssa.i135 = phi i64 [ -4417276706812531889, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit ], [ %i.av, %.lr.ph.i ]
  %.025.lcssa.i134 = phi i64 [ 0, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit ], [ %i.az, %.lr.ph.i ]
  %.026.lcssa.i133 = phi i64 [ 7046029288634856825, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit ], [ %i.bd, %.lr.ph.i ]
  %i.bf = shl i64 %i.y, 5
  %i.bg = getelementptr i8, ptr %i.ag, i64 %i.bf  ; 4 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 -32
  %.0.copyload.i.i70 = load i64, ptr %i.bh, align 1
  %i.bi = getelementptr i8, ptr %i.bg, i64 -24
  %.0.copyload.i23.i = load i64, ptr %i.bi, align 1
  %i.bj = getelementptr i8, ptr %i.bg, i64 -16
  %.0.copyload.i24.i = load i64, ptr %i.bj, align 1
  %i.bk = getelementptr i8, ptr %i.bg, i64 -8
  %.0.copyload.i25.i = load i64, ptr %i.bk, align 1
  %i.bl = and i64 %.0.copyload.i.i70, %.0.copyload.i.i
  %i.bm = and i64 %.0.copyload.i23.i, %.0.copyload.i9.i
  %i.bn = and i64 %.0.copyload.i24.i, %.0.copyload.i10.i
  %i.bo = and i64 %.0.copyload.i25.i, %.0.copyload.i11.i
  %i.bp = mul i64 %i.bl, -4417276706812531889
  %i.bq = add i64 %i.bp, %.0.lcssa.i136           ; 2 uses
  %i.br = tail call i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bq, i64 31)
  %i.bs = mul i64 %i.br, -7046029288634856825
  %i.bt = mul i64 %i.bm, -4417276706812531889
  %i.bu = add i64 %i.bt, %.024.lcssa.i135         ; 2 uses
  %i.bv = tail call i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 31)
  %i.bw = mul i64 %i.bv, -7046029288634856825
  %i.bx = mul i64 %i.bn, -4417276706812531889
  %i.by = add i64 %i.bx, %.025.lcssa.i134         ; 2 uses
  %i.bz = tail call i64 @llvm.fshl.i64(i64 %i.by, i64 %i.by, i64 31)
  %i.ca = mul i64 %i.bz, -7046029288634856825
  %i.cb = mul i64 %i.bo, -4417276706812531889
  %i.cc = add i64 %i.cb, %.026.lcssa.i133         ; 2 uses
  %i.cd = tail call i64 @llvm.fshl.i64(i64 %i.cc, i64 %i.cc, i64 31)
  %i.ce = mul i64 %i.cd, -7046029288634856825
  br label %bb.e

bb.e:                                             ; preds = %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit.thread, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit
  %.0127 = phi i64 [ 7046029288634856825, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit ], [ %i.ce, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit.thread ] ; 3 uses
  %.0126 = phi i64 [ 0, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit ], [ %i.ca, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit.thread ] ; 3 uses
  %.0125 = phi i64 [ -4417276706812531889, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit ], [ %i.bw, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit.thread ] ; 3 uses
  %.0124 = phi i64 [ -2239933958592612906, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit ], [ %i.bs, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit.thread ] ; 3 uses
  %i.cf = tail call i64 @llvm.fshl.i64(i64 %.0124, i64 %.0124, i64 1)
  %i.cg = tail call i64 @llvm.fshl.i64(i64 %.0125, i64 %.0125, i64 7)
  %i.ch = tail call i64 @llvm.fshl.i64(i64 %.0126, i64 %.0126, i64 12)
  %i.ci = tail call i64 @llvm.fshl.i64(i64 %.0127, i64 %.0127, i64 18)
  %i.cj = add i64 %i.ch, %i.ci
  %i.ck = add i64 %i.cj, %i.cg
  %i.cl = add i64 %i.ck, %i.cf
  %i.cm = mul i64 %.0124, -4417276706812531889    ; 2 uses
  %i.cn = tail call i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 31)
  %i.co = mul i64 %i.cn, -7046029288634856825
  %i.cp = xor i64 %i.cl, %i.co
  %i.cq = mul i64 %i.cp, -7046029288634856825
  %i.cr = add i64 %i.cq, -8796714831421723037
  %i.cs = mul i64 %.0125, -4417276706812531889    ; 2 uses
  %i.ct = tail call i64 @llvm.fshl.i64(i64 %i.cs, i64 %i.cs, i64 31)
  %i.cu = mul i64 %i.ct, -7046029288634856825
  %i.cv = xor i64 %i.cr, %i.cu
  %i.cw = mul i64 %i.cv, -7046029288634856825
  %i.cx = add i64 %i.cw, -8796714831421723037
  %i.cy = mul i64 %.0126, -4417276706812531889    ; 2 uses
  %i.cz = tail call i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.cy, i64 31)
  %i.da = mul i64 %i.cz, -7046029288634856825
  %i.db = xor i64 %i.cx, %i.da
  %i.dc = mul i64 %i.db, -7046029288634856825
  %i.dd = add i64 %i.dc, -8796714831421723037
  %i.de = mul i64 %.0127, -4417276706812531889    ; 2 uses
  %i.df = tail call i64 @llvm.fshl.i64(i64 %i.de, i64 %i.de, i64 31)
  %i.dg = mul i64 %i.df, -7046029288634856825
  %i.dh = xor i64 %i.dd, %i.dg
  %i.di = mul i64 %i.dh, -7046029288634856825
  %i.dj = add i64 %i.di, -8796714831421723037     ; 2 uses
  %i.dk = lshr i64 %i.dj, 33
  %i.dl = xor i64 %i.dk, %i.dj
  %i.dm = mul i64 %i.dl, -4417276706812531889     ; 2 uses
  %i.dn = lshr i64 %i.dm, 29
  %i.do = xor i64 %i.dn, %i.dm
  %i.dp = mul i64 %i.do, 1609587929392839161      ; 2 uses
  %i.dq = lshr i64 %i.dp, 32
  %i.dr = xor i64 %i.dq, %i.dp
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !15
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph154, !llvm.loop !153

._crit_edge158:                                   ; preds = %bb.k, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.f:                                             ; preds = %.lr.ph157, %bb.k
  %indvars.iv172 = phi i64 [ %i.l, %.lr.ph157 ], [ %indvars.iv.next173, %bb.k ] ; 3 uses
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 3 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next173
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !15 ; 3 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv172
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !15 ; 4 uses
  %i.dx = sub i64 %i.du, %i.dw                    ; 3 uses
  %i.dy = icmp ne i64 %i.du, %i.dw                ; 3 uses
  %i.dz = icmp eq i64 %i.du, %i.dw                ; 2 uses
  br i1 %i.dz, label %_ZN5arrow8bit_util7CeilDivEll.exit71, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ea = add nsw i64 %i.dx, -1
  %i.eb = sdiv i64 %i.ea, 32
  %i.ec = add nsw i64 %i.eb, 1
  br label %_ZN5arrow8bit_util7CeilDivEll.exit71

_ZN5arrow8bit_util7CeilDivEll.exit71:             ; preds = %bb.f, %bb.g
  %i.ed = phi i64 [ %i.ec, %bb.g ], [ 0, %bb.f ]
  %not. = xor i1 %i.dy, true
  %i.ee = zext i1 %not. to i64
  %i.ef = add nsw i64 %i.ed, %i.ee                ; 4 uses
  %.neg163 = sext i1 %i.dy to i64
  %i.eg = add i64 %i.dx, %.neg163
  %i.eh = and i64 %i.eg, 31
  %.neg138 = select i1 %i.dy, i64 31, i64 32
  %i.ei = sub nuw nsw i64 %.neg138, %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr @_ZZN5arrow7compute9Hashing6410StripeMaskEiPmS2_S2_S2_E5bytes, i64 %i.ei ; 4 uses
  %.0.copyload.i.i72 = load i64, ptr %i.ej, align 1
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %.0.copyload.i9.i73 = load i64, ptr %i.ek, align 1
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %.0.copyload.i10.i74 = load i64, ptr %i.el, align 1
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %.0.copyload.i11.i75 = load i64, ptr %i.em, align 1
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 %i.dw ; 2 uses
  %i.eo = icmp sgt i64 %i.ef, 1
  br i1 %i.eo, label %.lr.ph.preheader.i80, label %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit92

.lr.ph.preheader.i80:                             ; preds = %_ZN5arrow8bit_util7CeilDivEll.exit71
  %i.ep = add nsw i64 %i.ef, -2
  br label %.lr.ph.i81

.lr.ph.i81:                                       ; preds = %.lr.ph.i81, %.lr.ph.preheader.i80
  %.035.i82 = phi i64 [ %i.ey, %.lr.ph.i81 ], [ -2239933958592612906, %.lr.ph.preheader.i80 ]
  %.02434.i83 = phi i64 [ %i.fc, %.lr.ph.i81 ], [ -4417276706812531889, %.lr.ph.preheader.i80 ]
  %.02533.i84 = phi i64 [ %i.fg, %.lr.ph.i81 ], [ 0, %.lr.ph.preheader.i80 ]
  %.02632.i85 = phi i64 [ %i.fk, %.lr.ph.i81 ], [ 7046029288634856825, %.lr.ph.preheader.i80 ]
  %.02731.i86 = phi i64 [ %i.fl, %.lr.ph.i81 ], [ 0, %.lr.ph.preheader.i80 ] ; 3 uses
  %i.eq = shl nuw nsw i64 %.02731.i86, 5
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.eq ; 4 uses
  %.0.copyload.i.i87 = load i64, ptr %i.er, align 1
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %.0.copyload.i28.i88 = load i64, ptr %i.es, align 1
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %.0.copyload.i29.i89 = load i64, ptr %i.et, align 1
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %.0.copyload.i30.i90 = load i64, ptr %i.eu, align 1
  %i.ev = mul i64 %.0.copyload.i.i87, -4417276706812531889
  %i.ew = add i64 %i.ev, %.035.i82                ; 2 uses
  %i.ex = tail call i64 @llvm.fshl.i64(i64 %i.ew, i64 %i.ew, i64 31)
  %i.ey = mul i64 %i.ex, -7046029288634856825     ; 2 uses
  %i.ez = mul i64 %.0.copyload.i28.i88, -4417276706812531889
  %i.fa = add i64 %i.ez, %.02434.i83              ; 2 uses
  %i.fb = tail call i64 @llvm.fshl.i64(i64 %i.fa, i64 %i.fa, i64 31)
  %i.fc = mul i64 %i.fb, -7046029288634856825     ; 2 uses
  %i.fd = mul i64 %.0.copyload.i29.i89, -4417276706812531889
  %i.fe = add i64 %i.fd, %.02533.i84              ; 2 uses
  %i.ff = tail call i64 @llvm.fshl.i64(i64 %i.fe, i64 %i.fe, i64 31)
  %i.fg = mul i64 %i.ff, -7046029288634856825     ; 2 uses
  %i.fh = mul i64 %.0.copyload.i30.i90, -4417276706812531889
  %i.fi = add i64 %i.fh, %.02632.i85              ; 2 uses
  %i.fj = tail call i64 @llvm.fshl.i64(i64 %i.fi, i64 %i.fi, i64 31)
  %i.fk = mul i64 %i.fj, -7046029288634856825     ; 2 uses
  %i.fl = add nuw nsw i64 %.02731.i86, 1
  %exitcond.not.i91 = icmp eq i64 %.02731.i86, %i.ep
  br i1 %exitcond.not.i91, label %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit92, label %.lr.ph.i81, !llvm.loop !143

_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit92: ; preds = %.lr.ph.i81, %_ZN5arrow8bit_util7CeilDivEll.exit71
  %.026.lcssa.i76 = phi i64 [ 7046029288634856825, %_ZN5arrow8bit_util7CeilDivEll.exit71 ], [ %i.fk, %.lr.ph.i81 ] ; 2 uses
  %.025.lcssa.i77 = phi i64 [ 0, %_ZN5arrow8bit_util7CeilDivEll.exit71 ], [ %i.fg, %.lr.ph.i81 ] ; 2 uses
  %.024.lcssa.i78 = phi i64 [ -4417276706812531889, %_ZN5arrow8bit_util7CeilDivEll.exit71 ], [ %i.fc, %.lr.ph.i81 ] ; 2 uses
  %.0.lcssa.i79 = phi i64 [ -2239933958592612906, %_ZN5arrow8bit_util7CeilDivEll.exit71 ], [ %i.ey, %.lr.ph.i81 ] ; 2 uses
  br i1 %i.dz, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit92
  %i.fm = shl i64 %i.ef, 5
  %i.fn = add i64 %i.fm, -32                      ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.fn
  %i.fp = sub i64 %i.dx, %i.fn
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.fo, i64 %i.fp, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit92
  %.not65 = icmp eq i64 %i.ef, 0
  br i1 %.not65, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.0..0..0..0.copyload.i.i93 = load i64, ptr %i.a, align 16
  %.8..8..8..0.copyload.i23.i94 = load i64, ptr %.8..8..8..sroa_idx, align 8
  %.16..16..16..0.copyload.i24.i95 = load i64, ptr %.16..16..16..sroa_idx, align 16
  %.24..24..24..0.copyload.i25.i96 = load i64, ptr %.24..24..24..sroa_idx, align 8
  %i.fq = and i64 %.0..0..0..0.copyload.i.i93, %.0.copyload.i.i72
  %i.fr = and i64 %.8..8..8..0.copyload.i23.i94, %.0.copyload.i9.i73
  %i.fs = and i64 %.16..16..16..0.copyload.i24.i95, %.0.copyload.i10.i74
  %i.ft = and i64 %.24..24..24..0.copyload.i25.i96, %.0.copyload.i11.i75
  %i.fu = mul i64 %i.fq, -4417276706812531889
  %i.fv = add i64 %i.fu, %.0.lcssa.i79            ; 2 uses
  %i.fw = tail call i64 @llvm.fshl.i64(i64 %i.fv, i64 %i.fv, i64 31)
  %i.fx = mul i64 %i.fw, -7046029288634856825
  %i.fy = mul i64 %i.fr, -4417276706812531889
  %i.fz = add i64 %i.fy, %.024.lcssa.i78          ; 2 uses
  %i.ga = tail call i64 @llvm.fshl.i64(i64 %i.fz, i64 %i.fz, i64 31)
  %i.gb = mul i64 %i.ga, -7046029288634856825
  %i.gc = mul i64 %i.fs, -4417276706812531889
  %i.gd = add i64 %i.gc, %.025.lcssa.i77          ; 2 uses
  %i.ge = tail call i64 @llvm.fshl.i64(i64 %i.gd, i64 %i.gd, i64 31)
  %i.gf = mul i64 %i.ge, -7046029288634856825
  %i.gg = mul i64 %i.ft, -4417276706812531889
  %i.gh = add i64 %i.gg, %.026.lcssa.i76          ; 2 uses
  %i.gi = tail call i64 @llvm.fshl.i64(i64 %i.gh, i64 %i.gh, i64 31)
  %i.gj = mul i64 %i.gi, -7046029288634856825
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0123 = phi i64 [ %.0.lcssa.i79, %bb.i ], [ %i.fx, %bb.j ] ; 3 uses
  %.0122 = phi i64 [ %.024.lcssa.i78, %bb.i ], [ %i.gb, %bb.j ] ; 3 uses
  %.0121 = phi i64 [ %.025.lcssa.i77, %bb.i ], [ %i.gf, %bb.j ] ; 3 uses
  %.0120 = phi i64 [ %.026.lcssa.i76, %bb.i ], [ %i.gj, %bb.j ] ; 3 uses
  %i.gk = tail call i64 @llvm.fshl.i64(i64 %.0123, i64 %.0123, i64 1)
  %i.gl = tail call i64 @llvm.fshl.i64(i64 %.0122, i64 %.0122, i64 7)
  %i.gm = add i64 %i.gl, %i.gk
  %i.gn = tail call i64 @llvm.fshl.i64(i64 %.0121, i64 %.0121, i64 12)
  %i.go = add i64 %i.gm, %i.gn
  %i.gp = tail call i64 @llvm.fshl.i64(i64 %.0120, i64 %.0120, i64 18)
  %i.gq = add i64 %i.go, %i.gp
  %i.gr = mul i64 %.0123, -4417276706812531889    ; 2 uses
  %i.gs = tail call i64 @llvm.fshl.i64(i64 %i.gr, i64 %i.gr, i64 31)
  %i.gt = mul i64 %i.gs, -7046029288634856825
  %i.gu = xor i64 %i.gq, %i.gt
  %i.gv = mul i64 %i.gu, -7046029288634856825
  %i.gw = add i64 %i.gv, -8796714831421723037
  %i.gx = mul i64 %.0122, -4417276706812531889    ; 2 uses
  %i.gy = tail call i64 @llvm.fshl.i64(i64 %i.gx, i64 %i.gx, i64 31)
  %i.gz = mul i64 %i.gy, -7046029288634856825
  %i.ha = xor i64 %i.gw, %i.gz
  %i.hb = mul i64 %i.ha, -7046029288634856825
  %i.hc = add i64 %i.hb, -8796714831421723037
  %i.hd = mul i64 %.0121, -4417276706812531889    ; 2 uses
  %i.he = tail call i64 @llvm.fshl.i64(i64 %i.hd, i64 %i.hd, i64 31)
  %i.hf = mul i64 %i.he, -7046029288634856825
  %i.hg = xor i64 %i.hc, %i.hf
  %i.hh = mul i64 %i.hg, -7046029288634856825
  %i.hi = add i64 %i.hh, -8796714831421723037
  %i.hj = mul i64 %.0120, -4417276706812531889    ; 2 uses
  %i.hk = tail call i64 @llvm.fshl.i64(i64 %i.hj, i64 %i.hj, i64 31)
  %i.hl = mul i64 %i.hk, -7046029288634856825
  %i.hm = xor i64 %i.hi, %i.hl
  %i.hn = mul i64 %i.hm, -7046029288634856825
  %i.ho = add i64 %i.hn, -8796714831421723037     ; 2 uses
  %i.hp = lshr i64 %i.ho, 33
  %i.hq = xor i64 %i.hp, %i.ho
  %i.hr = mul i64 %i.hq, -4417276706812531889     ; 2 uses
  %i.hs = lshr i64 %i.hr, 29
  %i.ht = xor i64 %i.hs, %i.hr
  %i.hu = mul i64 %i.ht, 1609587929392839161      ; 2 uses
  %i.hv = lshr i64 %i.hu, 32
  %i.hw = xor i64 %i.hv, %i.hu
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv172
  store i64 %i.hw, ptr %i.hx, align 8, !tbaa !15
  %exitcond176.not = icmp eq i64 %indvars.iv.next173, %wide.trip.count175
  br i1 %exitcond176.not, label %._crit_edge158, label %bb.f, !llvm.loop !154
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5arrow7compute9Hashing647HashBitEbljPKhPm(i1 noundef zeroext %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #2 align 2 {
bb.a:
  %.not.i = icmp eq i32 %2, 0                     ; 2 uses
  br i1 %0, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %_ZN5arrow7compute9Hashing6410HashBitImpILb1EEEvljPKhPm.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext i32 %2 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 3 uses
  %i.a = add nsw i64 %indvars.iv.i, %1            ; 2 uses
  %i.b = lshr i64 %i.a, 3
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !23
  %i.e = trunc i64 %i.a to i8
  %i.f = and i8 %i.e, 7
  %i.g = lshr i8 %i.d, %i.f
  %i.h = trunc i8 %i.g to i1
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !15   ; 3 uses
  %i.k = select i1 %i.h, i64 -4417276704158096120, i64 -7046029285980421056
  %i.l = shl i64 %i.j, 6
  %i.m = lshr i64 %i.j, 2
  %i.n = add i64 %i.m, %i.l
  %i.o = add i64 %i.n, %i.k
  %i.p = xor i64 %i.o, %i.j
  store i64 %i.p, ptr %i.i, align 8, !tbaa !15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN5arrow7compute9Hashing6410HashBitImpILb1EEEvljPKhPm.exit, label %.lr.ph.i, !llvm.loop !155

bb.c:                                             ; preds = %bb.a
  br i1 %.not.i, label %_ZN5arrow7compute9Hashing6410HashBitImpILb1EEEvljPKhPm.exit, label %.lr.ph.preheader.i9

.lr.ph.preheader.i9:                              ; preds = %bb.c
  %wide.trip.count.i10 = zext i32 %2 to i64       ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i10, 1
  %i.q = icmp eq i32 %2, 1
  br i1 %i.q, label %.lr.ph.i11.epil.preheader, label %.lr.ph.preheader.i9.new

.lr.ph.preheader.i9.new:                          ; preds = %.lr.ph.preheader.i9
  %unroll_iter = and i64 %wide.trip.count.i10, 4294967294
  br label %.lr.ph.i11

.lr.ph.i11:                                       ; preds = %.lr.ph.i11, %.lr.ph.preheader.i9.new
  %indvars.iv.i12 = phi i64 [ 0, %.lr.ph.preheader.i9.new ], [ %indvars.iv.next.i13.1, %.lr.ph.i11 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i9.new ], [ %niter.next.1, %.lr.ph.i11 ]
  %i.r = add nsw i64 %indvars.iv.i12, %1          ; 2 uses
  %i.s = lshr i64 %i.r, 3
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !23
  %i.v = trunc i64 %i.r to i8
  %i.w = and i8 %i.v, 7
  %i.x = lshr i8 %i.u, %i.w
  %i.y = trunc i8 %i.x to i1
  %i.z = select i1 %i.y, i64 -4417276706812531889, i64 -7046029288634856825
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i12
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !15
  %indvars.iv.next.i13 = or disjoint i64 %indvars.iv.i12, 1 ; 2 uses
  %i.ab = add nsw i64 %indvars.iv.next.i13, %1    ; 2 uses
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !23
  %i.af = trunc i64 %i.ab to i8
  %i.ag = and i8 %i.af, 7
  %i.ah = lshr i8 %i.ae, %i.ag
  %i.ai = trunc i8 %i.ah to i1
  %i.aj = select i1 %i.ai, i64 -4417276706812531889, i64 -7046029288634856825
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next.i13
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !15
  %indvars.iv.next.i13.1 = add nuw nsw i64 %indvars.iv.i12, 2 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN5arrow7compute9Hashing647HashIntEbjmPKhPm:bb.a
  %indvars.iv.next.i33.epil = add nuw nsw i64 %indvars.iv.i32.epil, 1
  %epil.iter156.next = add i64 %epil.iter156, 1   ; 2 uses
  %epil.iter156.cmp.not = icmp eq i64 %epil.iter156.next, %xtraiter155
  br i1 %epil.iter156.cmp.not, label %_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit, label %.lr.ph.i31.epil, !llvm.loop !173

_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit.loopexit135.unr-lcssa: ; preds = %.lr.ph.i45
  %lcmp.mod151.not = icmp eq i64 %xtraiter149, 0
  br i1 %lcmp.mod151.not, label %_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit, label %.lr.ph.i45.epil.preheader

.lr.ph.i45.epil.preheader:                        ; preds = %_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit.loopexit135.unr-lcssa, %.lr.ph.preheader.i43
  %indvars.iv.i46.epil.init = phi i64 [ 0, %.lr.ph.preheader.i43 ], [ %indvars.iv.next.i47.3, %_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit.loopexit135.unr-lcssa ]
  %lcmp.mod152 = icmp ne i64 %xtraiter149, 0
  tail call void @llvm.assume(i1 %lcmp.mod152)
  br label %.lr.ph.i45.epil

.lr.ph.i45.epil:                                  ; preds = %.lr.ph.i45.epil, %.lr.ph.i45.epil.preheader
  %indvars.iv.i46.epil = phi i64 [ %indvars.iv.i46.epil.init, %.lr.ph.i45.epil.preheader ], [ %indvars.iv.next.i47.epil, %.lr.ph.i45.epil ] ; 3 uses
  %epil.iter150 = phi i64 [ 0, %.lr.ph.i45.epil.preheader ], [ %epil.iter150.next, %.lr.ph.i45.epil ]
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv.i46.epil
  %i.im = load i16, ptr %i.il, align 2, !tbaa !36
  %i.in = zext i16 %i.im to i64
  %i.io = mul i64 %i.in, -7046029288634856825
  %i.ip = tail call i64 @llvm.bswap.i64(i64 %i.io)
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i46.epil
  store i64 %i.ip, ptr %i.iq, align 8, !tbaa !15
  %indvars.iv.next.i47.epil = add nuw nsw i64 %indvars.iv.i46.epil, 1
  %epil.iter150.next = add i64 %epil.iter150, 1   ; 2 uses
  %epil.iter150.cmp.not = icmp eq i64 %epil.iter150.next, %xtraiter149
  br i1 %epil.iter150.cmp.not, label %_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit, label %.lr.ph.i45.epil, !llvm.loop !174

_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit.loopexit137.unr-lcssa: ; preds = %.lr.ph.i59
  %lcmp.mod145.not = icmp eq i64 %xtraiter143, 0
  br i1 %lcmp.mod145.not, label %_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit, label %.lr.ph.i59.epil.preheader

.lr.ph.i59.epil.preheader:                        ; preds = %_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit.loopexit137.unr-lcssa, %.lr.ph.preheader.i57
  %indvars.iv.i60.epil.init = phi i64 [ 0, %.lr.ph.preheader.i57 ], [ %indvars.iv.next.i61.3, %_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit.loopexit137.unr-lcssa ]
  %lcmp.mod146 = icmp ne i64 %xtraiter143, 0
  tail call void @llvm.assume(i1 %lcmp.mod146)
  br label %.lr.ph.i59.epil

.lr.ph.i59.epil:                                  ; preds = %.lr.ph.i59.epil, %.lr.ph.i59.epil.preheader
  %indvars.iv.i60.epil = phi i64 [ %indvars.iv.i60.epil.init, %.lr.ph.i59.epil.preheader ], [ %indvars.iv.next.i61.epil, %.lr.ph.i59.epil ] ; 3 uses
  %epil.iter144 = phi i64 [ 0, %.lr.ph.i59.epil.preheader ], [ %epil.iter144.next, %.lr.ph.i59.epil ]
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i60.epil
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !3
  %i.it = zext i32 %i.is to i64
  %i.iu = mul i64 %i.it, -7046029288634856825
  %i.iv = tail call i64 @llvm.bswap.i64(i64 %i.iu)
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i60.epil
  store i64 %i.iv, ptr %i.iw, align 8, !tbaa !15
  %indvars.iv.next.i61.epil = add nuw nsw i64 %indvars.iv.i60.epil, 1
  %epil.iter144.next = add i64 %epil.iter144, 1   ; 2 uses
  %epil.iter144.cmp.not = icmp eq i64 %epil.iter144.next, %xtraiter143
  br i1 %epil.iter144.cmp.not, label %_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit, label %.lr.ph.i59.epil, !llvm.loop !175

_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit.loopexit139.unr-lcssa: ; preds = %.lr.ph.i73
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit, label %.lr.ph.i73.epil.preheader

.lr.ph.i73.epil.preheader:                        ; preds = %_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit.loopexit139.unr-lcssa, %.lr.ph.preheader.i71
  %indvars.iv.i74.epil.init = phi i64 [ 0, %.lr.ph.preheader.i71 ], [ %indvars.iv.next.i75.3, %_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit.loopexit139.unr-lcssa ]
  %lcmp.mod140 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod140)
  br label %.lr.ph.i73.epil

.lr.ph.i73.epil:                                  ; preds = %.lr.ph.i73.epil, %.lr.ph.i73.epil.preheader
  %indvars.iv.i74.epil = phi i64 [ %indvars.iv.i74.epil.init, %.lr.ph.i73.epil.preheader ], [ %indvars.iv.next.i75.epil, %.lr.ph.i73.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i73.epil.preheader ], [ %epil.iter.next, %.lr.ph.i73.epil ]
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i74.epil
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !15
  %i.iz = mul i64 %i.iy, -7046029288634856825
  %i.ja = tail call i64 @llvm.bswap.i64(i64 %i.iz)
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i74.epil
  store i64 %i.ja, ptr %i.jb, align 8, !tbaa !15
  %indvars.iv.next.i75.epil = add nuw nsw i64 %indvars.iv.i74.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit, label %.lr.ph.i73.epil, !llvm.loop !176

_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit: ; preds = %_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit.loopexit139.unr-lcssa, %.lr.ph.i73.epil, %.lr.ph.i66.prol.loopexit, %.lr.ph.i66, %_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit.loopexit137.unr-lcssa, %.lr.ph.i59.epil, %.lr.ph.i52, %_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit.loopexit135.unr-lcssa, %.lr.ph.i45.epil, %.lr.ph.i38, %_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit.loopexit133.unr-lcssa, %.lr.ph.i31.epil, %.lr.ph.i.epil.preheader, %_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit.loopexit.unr-lcssa, %middle.block, %middle.block117, %middle.block130, %bb.m, %bb.l, %bb.j, %bb.i, %bb.g, %bb.f, %bb.d, %bb.c, %.split, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute9Hashing649HashFixedEbjmPKhPm(i1 noundef zeroext %0, i32 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %2)
  %i.b = icmp eq i64 %i.a, 1
  %i.c = icmp ult i64 %2, 9
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow7compute9Hashing647HashIntEbjmPKhPm(i1 noundef zeroext %0, i32 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  br i1 %0, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5arrow7compute9Hashing6415HashFixedLenImpILb1EEEvjmPKhPm(i32 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN5arrow7compute9Hashing6415HashFixedLenImpILb0EEEvjmPKhPm(i32 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute9Hashing6415HashFixedLenImpILb1EEEvjmPKhPm(i32 noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 7 uses
  %.not97 = icmp eq i32 %0, 0
  br i1 %.not97, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ %i.b, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.c = trunc nuw i64 %indvars.iv to i32         ; 2 uses
  %i.d = sub i32 %0, %i.c
  %i.e = zext i32 %i.d to i64
  %i.f = mul i64 %1, %i.e
  %i.g = icmp ult i64 %i.f, 32
  br i1 %i.g, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.h = and i64 %indvars.iv.next, 4294967295
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !177

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.c, %.lr.ph ] ; 4 uses
  %i.i = icmp eq i64 %1, 0
  br i1 %i.i, label %_ZN5arrow8bit_util7CeilDivEll.exit, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.j = add nsw i64 %1, -1
  %i.k = sdiv i64 %i.j, 32
  %i.l = add nsw i64 %i.k, 1
  br label %_ZN5arrow8bit_util7CeilDivEll.exit

_ZN5arrow8bit_util7CeilDivEll.exit:               ; preds = %.critedge, %bb.c
  %i.m = phi i64 [ %i.l, %bb.c ], [ 0, %.critedge ] ; 6 uses
  %i.n = sub i64 0, %1
  %i.o = and i64 %i.n, 31
  %i.p = getelementptr inbounds nuw i8, ptr @_ZZN5arrow7compute9Hashing6410StripeMaskEiPmS2_S2_S2_E5bytes, i64 %i.o ; 4 uses
  %.0.copyload.i.i = load i64, ptr %i.p, align 1  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.0.copyload.i9.i = load i64, ptr %i.q, align 1 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.0.copyload.i10.i = load i64, ptr %i.r, align 1 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.0.copyload.i11.i = load i64, ptr %i.s, align 1 ; 2 uses
  %.not107 = icmp eq i32 %.0.lcssa, 0
  br i1 %.not107, label %._crit_edge, label %.lr.ph102

.lr.ph102:                                        ; preds = %_ZN5arrow8bit_util7CeilDivEll.exit
  %i.t = icmp sgt i64 %i.m, 1
  %i.u = add nsw i64 %i.m, -2
  %i.v = shl i64 %i.m, 5
  %wide.trip.count = zext i32 %.0.lcssa to i64
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit, %_ZN5arrow8bit_util7CeilDivEll.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = icmp ult i32 %.0.lcssa, %0
  br i1 %i.w, label %.lr.ph105, label %._crit_edge106

.lr.ph105:                                        ; preds = %._crit_edge
  %i.x = icmp sgt i64 %i.m, 1
  %i.y = add nsw i64 %i.m, -2
  %i.z = shl i64 %i.m, 5
  %i.aa = add i64 %i.z, -32                       ; 2 uses
  %i.ab = sub i64 %1, %i.aa
  %i.ac = zext i32 %.0.lcssa to i64
  %wide.trip.count124 = zext i32 %0 to i64
  %.8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.24..24..24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph102, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit
  %indvars.iv116 = phi i64 [ 0, %.lr.ph102 ], [ %indvars.iv.next117, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit ] ; 3 uses
  %i.ad = mul i64 %1, %indvars.iv116
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %i.ad ; 2 uses
  br i1 %i.t, label %.lr.ph.i, label %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.035.i = phi i64 [ %i.an, %.lr.ph.i ], [ -2239933958592612906, %bb.d ]
  %.02434.i = phi i64 [ %i.ar, %.lr.ph.i ], [ -4417276706812531889, %bb.d ]
  %.02533.i = phi i64 [ %i.av, %.lr.ph.i ], [ 0, %bb.d ]
  %.02632.i = phi i64 [ %i.az, %.lr.ph.i ], [ 7046029288634856825, %bb.d ]
  %.02731.i = phi i64 [ %i.ba, %.lr.ph.i ], [ 0, %bb.d ] ; 3 uses
  %i.af = shl nuw nsw i64 %.02731.i, 5
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af ; 4 uses
  %.0.copyload.i.i44 = load i64, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.0.copyload.i28.i = load i64, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.0.copyload.i29.i = load i64, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.0.copyload.i30.i = load i64, ptr %i.aj, align 1
  %i.ak = mul i64 %.0.copyload.i.i44, -4417276706812531889
  %i.al = add i64 %i.ak, %.035.i                  ; 2 uses
  %i.am = tail call i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 31)
  %i.an = mul i64 %i.am, -7046029288634856825     ; 2 uses
  %i.ao = mul i64 %.0.copyload.i28.i, -4417276706812531889
  %i.ap = add i64 %i.ao, %.02434.i                ; 2 uses
  %i.aq = tail call i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 31)
  %i.ar = mul i64 %i.aq, -7046029288634856825     ; 2 uses
  %i.as = mul i64 %.0.copyload.i29.i, -4417276706812531889
  %i.at = add i64 %i.as, %.02533.i                ; 2 uses
  %i.au = tail call i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 31)
  %i.av = mul i64 %i.au, -7046029288634856825     ; 2 uses
  %i.aw = mul i64 %.0.copyload.i30.i, -4417276706812531889
  %i.ax = add i64 %i.aw, %.02632.i                ; 2 uses
  %i.ay = tail call i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 31)
  %i.az = mul i64 %i.ay, -7046029288634856825     ; 2 uses
  %i.ba = add nuw nsw i64 %.02731.i, 1
  %exitcond.not.i = icmp eq i64 %.02731.i, %i.u
  br i1 %exitcond.not.i, label %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit, label %.lr.ph.i, !llvm.loop !143

_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit: ; preds = %.lr.ph.i, %bb.d
  %.026.lcssa.i = phi i64 [ 7046029288634856825, %bb.d ], [ %i.az, %.lr.ph.i ]
  %.025.lcssa.i = phi i64 [ 0, %bb.d ], [ %i.av, %.lr.ph.i ]
  %.024.lcssa.i = phi i64 [ -4417276706812531889, %bb.d ], [ %i.ar, %.lr.ph.i ]
  %.0.lcssa.i = phi i64 [ -2239933958592612906, %bb.d ], [ %i.an, %.lr.ph.i ]
  %i.bb = getelementptr i8, ptr %i.ae, i64 %i.v   ; 4 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 -32
  %.0.copyload.i.i45 = load i64, ptr %i.bc, align 1
  %i.bd = getelementptr i8, ptr %i.bb, i64 -24
  %.0.copyload.i23.i = load i64, ptr %i.bd, align 1
  %i.be = getelementptr i8, ptr %i.bb, i64 -16
  %.0.copyload.i24.i = load i64, ptr %i.be, align 1
  %i.bf = getelementptr i8, ptr %i.bb, i64 -8
  %.0.copyload.i25.i = load i64, ptr %i.bf, align 1
  %i.bg = and i64 %.0.copyload.i.i45, %.0.copyload.i.i
  %i.bh = and i64 %.0.copyload.i23.i, %.0.copyload.i9.i
  %i.bi = and i64 %.0.copyload.i24.i, %.0.copyload.i10.i
  %i.bj = and i64 %.0.copyload.i25.i, %.0.copyload.i11.i
  %i.bk = mul i64 %i.bg, -4417276706812531889
  %i.bl = add i64 %i.bk, %.0.lcssa.i              ; 2 uses
  %i.bm = tail call i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 31) ; 2 uses
  %i.bn = mul i64 %i.bm, -7046029288634856825     ; 2 uses
  %i.bo = mul i64 %i.bh, -4417276706812531889
  %i.bp = add i64 %i.bo, %.024.lcssa.i            ; 2 uses
  %i.bq = tail call i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bp, i64 31) ; 2 uses
  %i.br = mul i64 %i.bq, -7046029288634856825     ; 2 uses
  %i.bs = mul i64 %i.bi, -4417276706812531889
  %i.bt = add i64 %i.bs, %.025.lcssa.i            ; 2 uses
  %i.bu = tail call i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.bt, i64 31) ; 2 uses
  %i.bv = mul i64 %i.bu, -7046029288634856825     ; 2 uses
  %i.bw = mul i64 %i.bj, -4417276706812531889
  %i.bx = add i64 %i.bw, %.026.lcssa.i            ; 2 uses
  %i.by = tail call i64 @llvm.fshl.i64(i64 %i.bx, i64 %i.bx, i64 31) ; 2 uses
  %i.bz = mul i64 %i.by, -7046029288634856825     ; 2 uses
  %i.ca = tail call i64 @llvm.fshl.i64(i64 %i.bn, i64 %i.bn, i64 1)
  %i.cb = tail call i64 @llvm.fshl.i64(i64 %i.br, i64 %i.br, i64 7)
  %i.cc = add i64 %i.cb, %i.ca
  %i.cd = tail call i64 @llvm.fshl.i64(i64 %i.bv, i64 %i.bv, i64 12)
  %i.ce = add i64 %i.cc, %i.cd
  %i.cf = tail call i64 @llvm.fshl.i64(i64 %i.bz, i64 %i.bz, i64 18)
  %i.cg = add i64 %i.ce, %i.cf
  %i.ch = mul i64 %i.bm, -2381459717836149591     ; 2 uses
  %i.ci = tail call i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 31)
  %i.cj = mul i64 %i.ci, -7046029288634856825
  %i.ck = xor i64 %i.cg, %i.cj
  %i.cl = mul i64 %i.ck, -7046029288634856825
  %i.cm = add i64 %i.cl, -8796714831421723037
  %i.cn = mul i64 %i.bq, -2381459717836149591     ; 2 uses
  %i.co = tail call i64 @llvm.fshl.i64(i64 %i.cn, i64 %i.cn, i64 31)
  %i.cp = mul i64 %i.co, -7046029288634856825
  %i.cq = xor i64 %i.cm, %i.cp
  %i.cr = mul i64 %i.cq, -7046029288634856825
  %i.cs = add i64 %i.cr, -8796714831421723037
  %i.ct = mul i64 %i.bu, -2381459717836149591     ; 2 uses
  %i.cu = tail call i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 31)
  %i.cv = mul i64 %i.cu, -7046029288634856825
  %i.cw = xor i64 %i.cs, %i.cv
  %i.cx = mul i64 %i.cw, -7046029288634856825
  %i.cy = add i64 %i.cx, -8796714831421723037
  %i.cz = mul i64 %i.by, -2381459717836149591     ; 2 uses
  %i.da = tail call i64 @llvm.fshl.i64(i64 %i.cz, i64 %i.cz, i64 31)
  %i.db = mul i64 %i.da, -7046029288634856825
  %i.dc = xor i64 %i.cy, %i.db
  %i.dd = mul i64 %i.dc, -7046029288634856825
  %i.de = add i64 %i.dd, -8796714831421723037     ; 2 uses
  %i.df = lshr i64 %i.de, 33
  %i.dg = xor i64 %i.df, %i.de
  %i.dh = mul i64 %i.dg, -4417276706812531889     ; 2 uses
  %i.di = lshr i64 %i.dh, 29
  %i.dj = xor i64 %i.di, %i.dh
  %i.dk = mul i64 %i.dj, 1609587929392839161      ; 2 uses
  %i.dl = lshr i64 %i.dk, 32
  %i.dm = xor i64 %i.dl, %i.dk
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv116 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !15 ; 3 uses
  %i.dp = shl i64 %i.do, 6
  %i.dq = lshr i64 %i.do, 2
  %i.dr = add i64 %i.dp, 2654435769
  %i.ds = add i64 %i.dr, %i.dq
  %i.dt = add i64 %i.ds, %i.dm
  %i.du = xor i64 %i.dt, %i.do
  store i64 %i.du, ptr %i.dn, align 8, !tbaa !15
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next117, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !178

._crit_edge106:                                   ; preds = %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit62, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.e:                                             ; preds = %.lr.ph105, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit62
  %indvars.iv120 = phi i64 [ %i.ac, %.lr.ph105 ], [ %indvars.iv.next121, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit62 ] ; 3 uses
  %i.dv = mul i64 %1, %indvars.iv120
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 %i.dv ; 2 uses
  br i1 %i.x, label %.lr.ph.i51, label %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit62

.lr.ph.i51:                                       ; preds = %bb.e, %.lr.ph.i51
  %.035.i52 = phi i64 [ %i.ef, %.lr.ph.i51 ], [ -2239933958592612906, %bb.e ]
  %.02434.i53 = phi i64 [ %i.ej, %.lr.ph.i51 ], [ -4417276706812531889, %bb.e ]
  %.02533.i54 = phi i64 [ %i.en, %.lr.ph.i51 ], [ 0, %bb.e ]
  %.02632.i55 = phi i64 [ %i.er, %.lr.ph.i51 ], [ 7046029288634856825, %bb.e ]
  %.02731.i56 = phi i64 [ %i.es, %.lr.ph.i51 ], [ 0, %bb.e ] ; 3 uses
  %i.dx = shl nuw nsw i64 %.02731.i56, 5
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dx ; 4 uses
  %.0.copyload.i.i57 = load i64, ptr %i.dy, align 1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %.0.copyload.i28.i58 = load i64, ptr %i.dz, align 1
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %.0.copyload.i29.i59 = load i64, ptr %i.ea, align 1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %.0.copyload.i30.i60 = load i64, ptr %i.eb, align 1
  %i.ec = mul i64 %.0.copyload.i.i57, -4417276706812531889
  %i.ed = add i64 %i.ec, %.035.i52                ; 2 uses
  %i.ee = tail call i64 @llvm.fshl.i64(i64 %i.ed, i64 %i.ed, i64 31)
  %i.ef = mul i64 %i.ee, -7046029288634856825     ; 2 uses
  %i.eg = mul i64 %.0.copyload.i28.i58, -4417276706812531889
  %i.eh = add i64 %i.eg, %.02434.i53              ; 2 uses
  %i.ei = tail call i64 @llvm.fshl.i64(i64 %i.eh, i64 %i.eh, i64 31)
  %i.ej = mul i64 %i.ei, -7046029288634856825     ; 2 uses
  %i.ek = mul i64 %.0.copyload.i29.i59, -4417276706812531889
  %i.el = add i64 %i.ek, %.02533.i54              ; 2 uses
  %i.em = tail call i64 @llvm.fshl.i64(i64 %i.el, i64 %i.el, i64 31)
  %i.en = mul i64 %i.em, -7046029288634856825     ; 2 uses
  %i.eo = mul i64 %.0.copyload.i30.i60, -4417276706812531889
  %i.ep = add i64 %i.eo, %.02632.i55              ; 2 uses
  %i.eq = tail call i64 @llvm.fshl.i64(i64 %i.ep, i64 %i.ep, i64 31)
  %i.er = mul i64 %i.eq, -7046029288634856825     ; 2 uses
  %i.es = add nuw nsw i64 %.02731.i56, 1
  %exitcond.not.i61 = icmp eq i64 %.02731.i56, %i.y
  br i1 %exitcond.not.i61, label %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit62, label %.lr.ph.i51, !llvm.loop !143

_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit62: ; preds = %.lr.ph.i51, %bb.e
  %.026.lcssa.i46 = phi i64 [ 7046029288634856825, %bb.e ], [ %i.er, %.lr.ph.i51 ]
  %.025.lcssa.i47 = phi i64 [ 0, %bb.e ], [ %i.en, %.lr.ph.i51 ]
  %.024.lcssa.i48 = phi i64 [ -4417276706812531889, %bb.e ], [ %i.ej, %.lr.ph.i51 ]
  %.0.lcssa.i49 = phi i64 [ -2239933958592612906, %bb.e ], [ %i.ef, %.lr.ph.i51 ]
  %i.et = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.aa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.et, i64 %i.ab, i1 false)
  %.0..0..0..0.copyload.i.i63 = load i64, ptr %i.a, align 16
  %.8..8..8..0.copyload.i23.i64 = load i64, ptr %.8..8..8..sroa_idx, align 8
  %.16..16..16..0.copyload.i24.i65 = load i64, ptr %.16..16..16..sroa_idx, align 16
  %.24..24..24..0.copyload.i25.i66 = load i64, ptr %.24..24..24..sroa_idx, align 8
  %i.eu = and i64 %.0..0..0..0.copyload.i.i63, %.0.copyload.i.i
  %i.ev = and i64 %.8..8..8..0.copyload.i23.i64, %.0.copyload.i9.i
  %i.ew = and i64 %.16..16..16..0.copyload.i24.i65, %.0.copyload.i10.i
  %i.ex = and i64 %.24..24..24..0.copyload.i25.i66, %.0.copyload.i11.i
  %i.ey = mul i64 %i.eu, -4417276706812531889
  %i.ez = add i64 %i.ey, %.0.lcssa.i49            ; 2 uses
  %i.fa = tail call i64 @llvm.fshl.i64(i64 %i.ez, i64 %i.ez, i64 31) ; 2 uses
  %i.fb = mul i64 %i.fa, -7046029288634856825     ; 2 uses
  %i.fc = mul i64 %i.ev, -4417276706812531889
  %i.fd = add i64 %i.fc, %.024.lcssa.i48          ; 2 uses
  %i.fe = tail call i64 @llvm.fshl.i64(i64 %i.fd, i64 %i.fd, i64 31) ; 2 uses
  %i.ff = mul i64 %i.fe, -7046029288634856825     ; 2 uses
  %i.fg = mul i64 %i.ew, -4417276706812531889
  %i.fh = add i64 %i.fg, %.025.lcssa.i47          ; 2 uses
  %i.fi = tail call i64 @llvm.fshl.i64(i64 %i.fh, i64 %i.fh, i64 31) ; 2 uses
  %i.fj = mul i64 %i.fi, -7046029288634856825     ; 2 uses
  %i.fk = mul i64 %i.ex, -4417276706812531889
  %i.fl = add i64 %i.fk, %.026.lcssa.i46          ; 2 uses
  %i.fm = tail call i64 @llvm.fshl.i64(i64 %i.fl, i64 %i.fl, i64 31) ; 2 uses
  %i.fn = mul i64 %i.fm, -7046029288634856825     ; 2 uses
  %i.fo = tail call i64 @llvm.fshl.i64(i64 %i.fb, i64 %i.fb, i64 1)
  %i.fp = tail call i64 @llvm.fshl.i64(i64 %i.ff, i64 %i.ff, i64 7)
  %i.fq = add i64 %i.fp, %i.fo
  %i.fr = tail call i64 @llvm.fshl.i64(i64 %i.fj, i64 %i.fj, i64 12)
  %i.fs = add i64 %i.fq, %i.fr
  %i.ft = tail call i64 @llvm.fshl.i64(i64 %i.fn, i64 %i.fn, i64 18)
  %i.fu = add i64 %i.fs, %i.ft
  %i.fv = mul i64 %i.fa, -2381459717836149591     ; 2 uses
  %i.fw = tail call i64 @llvm.fshl.i64(i64 %i.fv, i64 %i.fv, i64 31)
  %i.fx = mul i64 %i.fw, -7046029288634856825
  %i.fy = xor i64 %i.fu, %i.fx
  %i.fz = mul i64 %i.fy, -7046029288634856825
  %i.ga = add i64 %i.fz, -8796714831421723037
  %i.gb = mul i64 %i.fe, -2381459717836149591     ; 2 uses
  %i.gc = tail call i64 @llvm.fshl.i64(i64 %i.gb, i64 %i.gb, i64 31)
  %i.gd = mul i64 %i.gc, -7046029288634856825
  %i.ge = xor i64 %i.ga, %i.gd
  %i.gf = mul i64 %i.ge, -7046029288634856825
  %i.gg = add i64 %i.gf, -8796714831421723037
  %i.gh = mul i64 %i.fi, -2381459717836149591     ; 2 uses
  %i.gi = tail call i64 @llvm.fshl.i64(i64 %i.gh, i64 %i.gh, i64 31)
  %i.gj = mul i64 %i.gi, -7046029288634856825
  %i.gk = xor i64 %i.gg, %i.gj
  %i.gl = mul i64 %i.gk, -7046029288634856825
  %i.gm = add i64 %i.gl, -8796714831421723037
  %i.gn = mul i64 %i.fm, -2381459717836149591     ; 2 uses
  %i.go = tail call i64 @llvm.fshl.i64(i64 %i.gn, i64 %i.gn, i64 31)
  %i.gp = mul i64 %i.go, -7046029288634856825
  %i.gq = xor i64 %i.gm, %i.gp
  %i.gr = mul i64 %i.gq, -7046029288634856825
  %i.gs = add i64 %i.gr, -8796714831421723037     ; 2 uses
  %i.gt = lshr i64 %i.gs, 33
  %i.gu = xor i64 %i.gt, %i.gs
  %i.gv = mul i64 %i.gu, -4417276706812531889     ; 2 uses
  %i.gw = lshr i64 %i.gv, 29
  %i.gx = xor i64 %i.gw, %i.gv
  %i.gy = mul i64 %i.gx, 1609587929392839161      ; 2 uses
  %i.gz = lshr i64 %i.gy, 32
  %i.ha = xor i64 %i.gz, %i.gy
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv120 ; 2 uses
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !15 ; 3 uses
  %i.hd = shl i64 %i.hc, 6
  %i.he = lshr i64 %i.hc, 2
  %i.hf = add i64 %i.hd, 2654435769
  %i.hg = add i64 %i.hf, %i.he
  %i.hh = add i64 %i.hg, %i.ha
  %i.hi = xor i64 %i.hh, %i.hc
  store i64 %i.hi, ptr %i.hb, align 8, !tbaa !15
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %exitcond125.not = icmp eq i64 %indvars.iv.next121, %wide.trip.count124
  br i1 %exitcond125.not, label %._crit_edge106, label %bb.e, !llvm.loop !179
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute9Hashing6415HashFixedLenImpILb0EEEvjmPKhPm(i32 noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 7 uses
  %.not93 = icmp eq i32 %0, 0
  br i1 %.not93, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ %i.b, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.c = trunc nuw i64 %indvars.iv to i32         ; 2 uses
  %i.d = sub i32 %0, %i.c
  %i.e = zext i32 %i.d to i64
  %i.f = mul i64 %1, %i.e
  %i.g = icmp ult i64 %i.f, 32
  br i1 %i.g, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.h = and i64 %indvars.iv.next, 4294967295
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !180

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.c, %.lr.ph ] ; 4 uses
  %i.i = icmp eq i64 %1, 0
  br i1 %i.i, label %_ZN5arrow8bit_util7CeilDivEll.exit, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.j = add nsw i64 %1, -1
  %i.k = sdiv i64 %i.j, 32
  %i.l = add nsw i64 %i.k, 1
  br label %_ZN5arrow8bit_util7CeilDivEll.exit

_ZN5arrow8bit_util7CeilDivEll.exit:               ; preds = %.critedge, %bb.c
  %i.m = phi i64 [ %i.l, %bb.c ], [ 0, %.critedge ] ; 6 uses
  %i.n = sub i64 0, %1
  %i.o = and i64 %i.n, 31
  %i.p = getelementptr inbounds nuw i8, ptr @_ZZN5arrow7compute9Hashing6410StripeMaskEiPmS2_S2_S2_E5bytes, i64 %i.o ; 4 uses
  %.0.copyload.i.i = load i64, ptr %i.p, align 1  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.0.copyload.i9.i = load i64, ptr %i.q, align 1 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.0.copyload.i10.i = load i64, ptr %i.r, align 1 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.0.copyload.i11.i = load i64, ptr %i.s, align 1 ; 2 uses
  %.not103 = icmp eq i32 %.0.lcssa, 0
  br i1 %.not103, label %._crit_edge, label %.lr.ph98

.lr.ph98:                                         ; preds = %_ZN5arrow8bit_util7CeilDivEll.exit
  %i.t = icmp sgt i64 %i.m, 1
  %i.u = add nsw i64 %i.m, -2
  %i.v = shl i64 %i.m, 5
  %wide.trip.count = zext i32 %.0.lcssa to i64
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit, %_ZN5arrow8bit_util7CeilDivEll.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = icmp ult i32 %.0.lcssa, %0
  br i1 %i.w, label %.lr.ph101, label %._crit_edge102

.lr.ph101:                                        ; preds = %._crit_edge
  %i.x = icmp sgt i64 %i.m, 1
  %i.y = add nsw i64 %i.m, -2
  %i.z = shl i64 %i.m, 5
  %i.aa = add i64 %i.z, -32                       ; 2 uses
  %i.ab = sub i64 %1, %i.aa
  %i.ac = zext i32 %.0.lcssa to i64
  %wide.trip.count120 = zext i32 %0 to i64
  %.8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.24..24..24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph98, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit
  %indvars.iv112 = phi i64 [ 0, %.lr.ph98 ], [ %indvars.iv.next113, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit ] ; 3 uses
  %i.ad = mul i64 %1, %indvars.iv112
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %i.ad ; 2 uses
  br i1 %i.t, label %.lr.ph.i, label %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.035.i = phi i64 [ %i.an, %.lr.ph.i ], [ -2239933958592612906, %bb.d ]
  %.02434.i = phi i64 [ %i.ar, %.lr.ph.i ], [ -4417276706812531889, %bb.d ]
  %.02533.i = phi i64 [ %i.av, %.lr.ph.i ], [ 0, %bb.d ]
  %.02632.i = phi i64 [ %i.az, %.lr.ph.i ], [ 7046029288634856825, %bb.d ]
  %.02731.i = phi i64 [ %i.ba, %.lr.ph.i ], [ 0, %bb.d ] ; 3 uses
  %i.af = shl nuw nsw i64 %.02731.i, 5
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af ; 4 uses
  %.0.copyload.i.i40 = load i64, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.0.copyload.i28.i = load i64, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.0.copyload.i29.i = load i64, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.0.copyload.i30.i = load i64, ptr %i.aj, align 1
  %i.ak = mul i64 %.0.copyload.i.i40, -4417276706812531889
  %i.al = add i64 %i.ak, %.035.i                  ; 2 uses
  %i.am = tail call i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 31)
  %i.an = mul i64 %i.am, -7046029288634856825     ; 2 uses
  %i.ao = mul i64 %.0.copyload.i28.i, -4417276706812531889
  %i.ap = add i64 %i.ao, %.02434.i                ; 2 uses
  %i.aq = tail call i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 31)
  %i.ar = mul i64 %i.aq, -7046029288634856825     ; 2 uses
  %i.as = mul i64 %.0.copyload.i29.i, -4417276706812531889
  %i.at = add i64 %i.as, %.02533.i                ; 2 uses
  %i.au = tail call i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 31)
  %i.av = mul i64 %i.au, -7046029288634856825     ; 2 uses
  %i.aw = mul i64 %.0.copyload.i30.i, -4417276706812531889
  %i.ax = add i64 %i.aw, %.02632.i                ; 2 uses
  %i.ay = tail call i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 31)
  %i.az = mul i64 %i.ay, -7046029288634856825     ; 2 uses
  %i.ba = add nuw nsw i64 %.02731.i, 1
  %exitcond.not.i = icmp eq i64 %.02731.i, %i.u
  br i1 %exitcond.not.i, label %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit, label %.lr.ph.i, !llvm.loop !143

_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit: ; preds = %.lr.ph.i, %bb.d
  %.026.lcssa.i = phi i64 [ 7046029288634856825, %bb.d ], [ %i.az, %.lr.ph.i ]
  %.025.lcssa.i = phi i64 [ 0, %bb.d ], [ %i.av, %.lr.ph.i ]
  %.024.lcssa.i = phi i64 [ -4417276706812531889, %bb.d ], [ %i.ar, %.lr.ph.i ]
  %.0.lcssa.i = phi i64 [ -2239933958592612906, %bb.d ], [ %i.an, %.lr.ph.i ]
  %i.bb = getelementptr i8, ptr %i.ae, i64 %i.v   ; 4 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 -32
  %.0.copyload.i.i41 = load i64, ptr %i.bc, align 1
  %i.bd = getelementptr i8, ptr %i.bb, i64 -24
  %.0.copyload.i23.i = load i64, ptr %i.bd, align 1
  %i.be = getelementptr i8, ptr %i.bb, i64 -16
  %.0.copyload.i24.i = load i64, ptr %i.be, align 1
  %i.bf = getelementptr i8, ptr %i.bb, i64 -8
  %.0.copyload.i25.i = load i64, ptr %i.bf, align 1
  %i.bg = and i64 %.0.copyload.i.i41, %.0.copyload.i.i
  %i.bh = and i64 %.0.copyload.i23.i, %.0.copyload.i9.i
  %i.bi = and i64 %.0.copyload.i24.i, %.0.copyload.i10.i
  %i.bj = and i64 %.0.copyload.i25.i, %.0.copyload.i11.i
  %i.bk = mul i64 %i.bg, -4417276706812531889
  %i.bl = add i64 %i.bk, %.0.lcssa.i              ; 2 uses
  %i.bm = tail call i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 31) ; 2 uses
  %i.bn = mul i64 %i.bm, -7046029288634856825     ; 2 uses
  %i.bo = mul i64 %i.bh, -4417276706812531889
  %i.bp = add i64 %i.bo, %.024.lcssa.i            ; 2 uses
  %i.bq = tail call i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bp, i64 31) ; 2 uses
  %i.br = mul i64 %i.bq, -7046029288634856825     ; 2 uses
  %i.bs = mul i64 %i.bi, -4417276706812531889
  %i.bt = add i64 %i.bs, %.025.lcssa.i            ; 2 uses
  %i.bu = tail call i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.bt, i64 31) ; 2 uses
  %i.bv = mul i64 %i.bu, -7046029288634856825     ; 2 uses
  %i.bw = mul i64 %i.bj, -4417276706812531889
  %i.bx = add i64 %i.bw, %.026.lcssa.i            ; 2 uses
  %i.by = tail call i64 @llvm.fshl.i64(i64 %i.bx, i64 %i.bx, i64 31) ; 2 uses
  %i.bz = mul i64 %i.by, -7046029288634856825     ; 2 uses
  %i.ca = tail call i64 @llvm.fshl.i64(i64 %i.bn, i64 %i.bn, i64 1)
  %i.cb = tail call i64 @llvm.fshl.i64(i64 %i.br, i64 %i.br, i64 7)
  %i.cc = add i64 %i.cb, %i.ca
  %i.cd = tail call i64 @llvm.fshl.i64(i64 %i.bv, i64 %i.bv, i64 12)
  %i.ce = add i64 %i.cc, %i.cd
  %i.cf = tail call i64 @llvm.fshl.i64(i64 %i.bz, i64 %i.bz, i64 18)
  %i.cg = add i64 %i.ce, %i.cf
  %i.ch = mul i64 %i.bm, -2381459717836149591     ; 2 uses
  %i.ci = tail call i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 31)
  %i.cj = mul i64 %i.ci, -7046029288634856825
  %i.ck = xor i64 %i.cg, %i.cj
  %i.cl = mul i64 %i.ck, -7046029288634856825
  %i.cm = add i64 %i.cl, -8796714831421723037
  %i.cn = mul i64 %i.bq, -2381459717836149591     ; 2 uses
  %i.co = tail call i64 @llvm.fshl.i64(i64 %i.cn, i64 %i.cn, i64 31)
  %i.cp = mul i64 %i.co, -7046029288634856825
  %i.cq = xor i64 %i.cm, %i.cp
  %i.cr = mul i64 %i.cq, -7046029288634856825
  %i.cs = add i64 %i.cr, -8796714831421723037
  %i.ct = mul i64 %i.bu, -2381459717836149591     ; 2 uses
  %i.cu = tail call i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 31)
  %i.cv = mul i64 %i.cu, -7046029288634856825
  %i.cw = xor i64 %i.cs, %i.cv
  %i.cx = mul i64 %i.cw, -7046029288634856825
  %i.cy = add i64 %i.cx, -8796714831421723037
  %i.cz = mul i64 %i.by, -2381459717836149591     ; 2 uses
  %i.da = tail call i64 @llvm.fshl.i64(i64 %i.cz, i64 %i.cz, i64 31)
  %i.db = mul i64 %i.da, -7046029288634856825
  %i.dc = xor i64 %i.cy, %i.db
  %i.dd = mul i64 %i.dc, -7046029288634856825
  %i.de = add i64 %i.dd, -8796714831421723037     ; 2 uses
  %i.df = lshr i64 %i.de, 33
  %i.dg = xor i64 %i.df, %i.de
  %i.dh = mul i64 %i.dg, -4417276706812531889     ; 2 uses
  %i.di = lshr i64 %i.dh, 29
  %i.dj = xor i64 %i.di, %i.dh
  %i.dk = mul i64 %i.dj, 1609587929392839161      ; 2 uses
  %i.dl = lshr i64 %i.dk, 32
  %i.dm = xor i64 %i.dl, %i.dk
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv112
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !15
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next113, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !181

._crit_edge102:                                   ; preds = %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit58, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.e:                                             ; preds = %.lr.ph101, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit58
  %indvars.iv116 = phi i64 [ %i.ac, %.lr.ph101 ], [ %indvars.iv.next117, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit58 ] ; 3 uses
  %i.do = mul i64 %1, %indvars.iv116
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 %i.do ; 2 uses
  br i1 %i.x, label %.lr.ph.i47, label %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit58

.lr.ph.i47:                                       ; preds = %bb.e, %.lr.ph.i47
  %.035.i48 = phi i64 [ %i.dy, %.lr.ph.i47 ], [ -2239933958592612906, %bb.e ]
  %.02434.i49 = phi i64 [ %i.ec, %.lr.ph.i47 ], [ -4417276706812531889, %bb.e ]
  %.02533.i50 = phi i64 [ %i.eg, %.lr.ph.i47 ], [ 0, %bb.e ]
  %.02632.i51 = phi i64 [ %i.ek, %.lr.ph.i47 ], [ 7046029288634856825, %bb.e ]
  %.02731.i52 = phi i64 [ %i.el, %.lr.ph.i47 ], [ 0, %bb.e ] ; 3 uses
  %i.dq = shl nuw nsw i64 %.02731.i52, 5
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dq ; 4 uses
  %.0.copyload.i.i53 = load i64, ptr %i.dr, align 1
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.0.copyload.i28.i54 = load i64, ptr %i.ds, align 1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %.0.copyload.i29.i55 = load i64, ptr %i.dt, align 1
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %.0.copyload.i30.i56 = load i64, ptr %i.du, align 1
  %i.dv = mul i64 %.0.copyload.i.i53, -4417276706812531889
  %i.dw = add i64 %i.dv, %.035.i48                ; 2 uses
  %i.dx = tail call i64 @llvm.fshl.i64(i64 %i.dw, i64 %i.dw, i64 31)
  %i.dy = mul i64 %i.dx, -7046029288634856825     ; 2 uses
  %i.dz = mul i64 %.0.copyload.i28.i54, -4417276706812531889
  %i.ea = add i64 %i.dz, %.02434.i49              ; 2 uses
  %i.eb = tail call i64 @llvm.fshl.i64(i64 %i.ea, i64 %i.ea, i64 31)
  %i.ec = mul i64 %i.eb, -7046029288634856825     ; 2 uses
  %i.ed = mul i64 %.0.copyload.i29.i55, -4417276706812531889
  %i.ee = add i64 %i.ed, %.02533.i50              ; 2 uses
  %i.ef = tail call i64 @llvm.fshl.i64(i64 %i.ee, i64 %i.ee, i64 31)
  %i.eg = mul i64 %i.ef, -7046029288634856825     ; 2 uses
  %i.eh = mul i64 %.0.copyload.i30.i56, -4417276706812531889
  %i.ei = add i64 %i.eh, %.02632.i51              ; 2 uses
  %i.ej = tail call i64 @llvm.fshl.i64(i64 %i.ei, i64 %i.ei, i64 31)
  %i.ek = mul i64 %i.ej, -7046029288634856825     ; 2 uses
  %i.el = add nuw nsw i64 %.02731.i52, 1
  %exitcond.not.i57 = icmp eq i64 %.02731.i52, %i.y
  br i1 %exitcond.not.i57, label %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit58, label %.lr.ph.i47, !llvm.loop !143

_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit58: ; preds = %.lr.ph.i47, %bb.e
  %.026.lcssa.i42 = phi i64 [ 7046029288634856825, %bb.e ], [ %i.ek, %.lr.ph.i47 ]
  %.025.lcssa.i43 = phi i64 [ 0, %bb.e ], [ %i.eg, %.lr.ph.i47 ]
  %.024.lcssa.i44 = phi i64 [ -4417276706812531889, %bb.e ], [ %i.ec, %.lr.ph.i47 ]
  %.0.lcssa.i45 = phi i64 [ -2239933958592612906, %bb.e ], [ %i.dy, %.lr.ph.i47 ]
  %i.em = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.aa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.em, i64 %i.ab, i1 false)
  %.0..0..0..0.copyload.i.i59 = load i64, ptr %i.a, align 16
  %.8..8..8..0.copyload.i23.i60 = load i64, ptr %.8..8..8..sroa_idx, align 8
  %.16..16..16..0.copyload.i24.i61 = load i64, ptr %.16..16..16..sroa_idx, align 16
  %.24..24..24..0.copyload.i25.i62 = load i64, ptr %.24..24..24..sroa_idx, align 8
  %i.en = and i64 %.0..0..0..0.copyload.i.i59, %.0.copyload.i.i
  %i.eo = and i64 %.8..8..8..0.copyload.i23.i60, %.0.copyload.i9.i
  %i.ep = and i64 %.16..16..16..0.copyload.i24.i61, %.0.copyload.i10.i
  %i.eq = and i64 %.24..24..24..0.copyload.i25.i62, %.0.copyload.i11.i
  %i.er = mul i64 %i.en, -4417276706812531889
  %i.es = add i64 %i.er, %.0.lcssa.i45            ; 2 uses
  %i.et = tail call i64 @llvm.fshl.i64(i64 %i.es, i64 %i.es, i64 31) ; 2 uses
  %i.eu = mul i64 %i.et, -7046029288634856825     ; 2 uses
  %i.ev = mul i64 %i.eo, -4417276706812531889
  %i.ew = add i64 %i.ev, %.024.lcssa.i44          ; 2 uses
  %i.ex = tail call i64 @llvm.fshl.i64(i64 %i.ew, i64 %i.ew, i64 31) ; 2 uses
  %i.ey = mul i64 %i.ex, -7046029288634856825     ; 2 uses
  %i.ez = mul i64 %i.ep, -4417276706812531889
  %i.fa = add i64 %i.ez, %.025.lcssa.i43          ; 2 uses
  %i.fb = tail call i64 @llvm.fshl.i64(i64 %i.fa, i64 %i.fa, i64 31) ; 2 uses
  %i.fc = mul i64 %i.fb, -7046029288634856825     ; 2 uses
  %i.fd = mul i64 %i.eq, -4417276706812531889
  %i.fe = add i64 %i.fd, %.026.lcssa.i42          ; 2 uses
  %i.ff = tail call i64 @llvm.fshl.i64(i64 %i.fe, i64 %i.fe, i64 31) ; 2 uses
  %i.fg = mul i64 %i.ff, -7046029288634856825     ; 2 uses
  %i.fh = tail call i64 @llvm.fshl.i64(i64 %i.eu, i64 %i.eu, i64 1)
  %i.fi = tail call i64 @llvm.fshl.i64(i64 %i.ey, i64 %i.ey, i64 7)
  %i.fj = add i64 %i.fi, %i.fh
  %i.fk = tail call i64 @llvm.fshl.i64(i64 %i.fc, i64 %i.fc, i64 12)
  %i.fl = add i64 %i.fj, %i.fk
  %i.fm = tail call i64 @llvm.fshl.i64(i64 %i.fg, i64 %i.fg, i64 18)
  %i.fn = add i64 %i.fl, %i.fm
  %i.fo = mul i64 %i.et, -2381459717836149591     ; 2 uses
  %i.fp = tail call i64 @llvm.fshl.i64(i64 %i.fo, i64 %i.fo, i64 31)
  %i.fq = mul i64 %i.fp, -7046029288634856825
  %i.fr = xor i64 %i.fn, %i.fq
  %i.fs = mul i64 %i.fr, -7046029288634856825
  %i.ft = add i64 %i.fs, -8796714831421723037
  %i.fu = mul i64 %i.ex, -2381459717836149591     ; 2 uses
  %i.fv = tail call i64 @llvm.fshl.i64(i64 %i.fu, i64 %i.fu, i64 31)
  %i.fw = mul i64 %i.fv, -7046029288634856825
  %i.fx = xor i64 %i.ft, %i.fw
  %i.fy = mul i64 %i.fx, -7046029288634856825
  %i.fz = add i64 %i.fy, -8796714831421723037
  %i.ga = mul i64 %i.fb, -2381459717836149591     ; 2 uses
  %i.gb = tail call i64 @llvm.fshl.i64(i64 %i.ga, i64 %i.ga, i64 31)
  %i.gc = mul i64 %i.gb, -7046029288634856825
  %i.gd = xor i64 %i.fz, %i.gc
  %i.ge = mul i64 %i.gd, -7046029288634856825
  %i.gf = add i64 %i.ge, -8796714831421723037
  %i.gg = mul i64 %i.ff, -2381459717836149591     ; 2 uses
  %i.gh = tail call i64 @llvm.fshl.i64(i64 %i.gg, i64 %i.gg, i64 31)
  %i.gi = mul i64 %i.gh, -7046029288634856825
  %i.gj = xor i64 %i.gf, %i.gi
  %i.gk = mul i64 %i.gj, -7046029288634856825
  %i.gl = add i64 %i.gk, -8796714831421723037     ; 2 uses
  %i.gm = lshr i64 %i.gl, 33
  %i.gn = xor i64 %i.gm, %i.gl
  %i.go = mul i64 %i.gn, -4417276706812531889     ; 2 uses
  %i.gp = lshr i64 %i.go, 29
  %i.gq = xor i64 %i.gp, %i.go
  %i.gr = mul i64 %i.gq, 1609587929392839161      ; 2 uses
  %i.gs = lshr i64 %i.gr, 32
  %i.gt = xor i64 %i.gs, %i.gr
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv116
  store i64 %i.gt, ptr %i.gu, align 8, !tbaa !15
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %exitcond121.not = icmp eq i64 %indvars.iv.next117, %wide.trip.count120
  br i1 %exitcond121.not, label %._crit_edge102, label %bb.e, !llvm.loop !182
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute9Hashing6415HashMultiColumnERKSt6vectorINS0_14KeyColumnArrayESaIS3_EEPNS0_12LightContextEPm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::util::TempVectorHolder.0", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %4 = alloca %"class.arrow::util::TempVectorHolder.9", align 8 ; 9 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load i64, ptr %i.c, align 8, !tbaa !74
  %i.e = trunc i64 %i.d to i32                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !78   ; 2 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !85
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  store i32 1024, ptr %i.h, align 4, !tbaa !87
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @_ZN5arrow4util15TempVectorStack5allocEjPPhPi(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i32 noundef 2048, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j)
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !88   ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !78   ; 2 uses
  store ptr %i.l, ptr %4, align 8, !tbaa !183
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  store i32 1024, ptr %i.m, align 4, !tbaa !185
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  invoke void @_ZN5arrow4util15TempVectorStack5allocEjPPhPi(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i32 noundef 8192, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o)
          to label %_ZN5arrow4util16TempVectorHolderImEC2EPNS0_15TempVectorStackEj.exit unwind label %bb.d

_ZN5arrow4util16TempVectorHolderImEC2EPNS0_15TempVectorStackEj.exit: ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !186  ; 8 uses
  %.not176 = icmp eq i32 %i.e, 0
  br i1 %.not176, label %._crit_edge175, label %.lr.ph174

.lr.ph174:                                        ; preds = %_ZN5arrow4util16TempVectorHolderImEC2EPNS0_15TempVectorStackEj.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !90
  %.pre213 = load ptr, ptr %0, align 8, !tbaa !70 ; 2 uses
  br label %bb.e

._crit_edge175:                                   ; preds = %._crit_edge, %_ZN5arrow4util16TempVectorHolderImEC2EPNS0_15TempVectorStackEj.exit
  %i.r = load ptr, ptr %4, align 8, !tbaa !183
  %i.s = load i32, ptr %i.o, align 8, !tbaa !187
  %i.t = load i32, ptr %i.m, align 4, !tbaa !185
  %i.u = shl i32 %i.t, 3
  invoke void @_ZN5arrow4util15TempVectorStack7releaseEij(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i32 noundef %i.s, i32 noundef %i.u)
          to label %_ZN5arrow4util16TempVectorHolderImED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %._crit_edge175
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #12
  unreachable

_ZN5arrow4util16TempVectorHolderImED2Ev.exit:     ; preds = %._crit_edge175
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.x = load ptr, ptr %3, align 8, !tbaa !85
  %i.y = load i32, ptr %i.j, align 8, !tbaa !92
  %i.z = load i32, ptr %i.h, align 4, !tbaa !87
  %i.aa = shl i32 %i.z, 1
  invoke void @_ZN5arrow4util15TempVectorStack7releaseEij(ptr noundef nonnull align 8 dereferenceable(32) %i.x, i32 noundef %i.y, i32 noundef %i.aa)
          to label %_ZN5arrow4util16TempVectorHolderItED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZN5arrow4util16TempVectorHolderImED2Ev.exit
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #12
  unreachable

_ZN5arrow4util16TempVectorHolderItED2Ev.exit:     ; preds = %_ZN5arrow4util16TempVectorHolderImED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret void

bb.d:                                             ; preds = %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.e:                                             ; preds = %.lr.ph174, %._crit_edge
  %i.ae = phi ptr [ %.pre213, %.lr.ph174 ], [ %i.bj, %._crit_edge ] ; 2 uses
  %i.af = phi ptr [ %.pre213, %.lr.ph174 ], [ %i.bk, %._crit_edge ] ; 4 uses
  %i.ag = phi ptr [ %.pre, %.lr.ph174 ], [ %i.bl, %._crit_edge ]
  %.0119173 = phi i32 [ 0, %.lr.ph174 ], [ %i.bm, %._crit_edge ] ; 31 uses
  %i.ah = sub i32 %i.e, %.0119173                 ; 6 uses
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.ah, i32 1024) ; 11 uses
  %.not177 = icmp eq ptr %i.ag, %i.af
  br i1 %.not177, label %._crit_edge, label %.lr.ph172

.lr.ph172:                                        ; preds = %bb.e
  %i.ai = lshr i32 %.0119173, 3
end_hunk_3
