inline.NumInlined: 44
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@llvm.compiler.used = appending global [2 x ptr] [ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj, ptr @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN8facebook5velox6common3hll7getLongEPKvi(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a
  %.0.copyload.i = load i64, ptr %i.b, align 1
  ret i64 %.0.copyload.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef signext i8 @_ZN8facebook5velox6common3hll7getByteEPKvi(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !8
  ret i8 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN8facebook5velox6common3hll14Murmur3Hash1286hash64EPKvil(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = add i32 %1, -15                          ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %3 = zext nneg i32 %i.a to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.0102115 = phi i64 [ %2, %.lr.ph.preheader ], [ %i.n, %.lr.ph ]
  %.0105113 = phi i64 [ %2, %.lr.ph.preheader ], [ %i.x, %.lr.ph ] ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 %indvars.iv ; 2 uses
  %.0.copyload.i.i = load i64, ptr %i.c, align 1  ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.0.copyload.i.i112 = load i64, ptr %i.d, align 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 2 uses
  %i.e = mul i64 %.0.copyload.i.i, -8663945395140668459
  %i.f = mul i64 %.0.copyload.i.i, -8601547726154366976
  %i.g = lshr i64 %i.e, 33
  %i.h = or disjoint i64 %i.g, %i.f
  %i.i = mul i64 %i.h, 5545529020109919103
  %i.j = xor i64 %i.i, %.0102115                  ; 2 uses
  %i.k = tail call i64 @llvm.fshl.i64(i64 %i.j, i64 %i.j, i64 27)
  %i.l = add i64 %i.k, %.0105113
  %i.m = mul i64 %i.l, 5
  %i.n = add i64 %i.m, 1390208809                 ; 3 uses
  %i.o = mul i64 %.0.copyload.i.i112, 5545529020109919103
  %i.p = mul i64 %.0.copyload.i.i112, 5659660229084708864
  %i.q = lshr i64 %i.o, 31
  %i.r = or disjoint i64 %i.q, %i.p
  %i.s = mul i64 %i.r, -8663945395140668459
  %i.t = xor i64 %i.s, %.0105113                  ; 2 uses
  %i.u = tail call i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 31)
  %i.v = add i64 %i.n, %i.u
  %i.w = mul i64 %i.v, 5
  %i.x = add i64 %i.w, 944331445                  ; 2 uses
  %4 = icmp samesign ult i64 %indvars.iv.next, %3
  br i1 %4, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !9

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %5 = and i32 %1, -16
  %6 = sext i32 %5 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0105.lcssa = phi i64 [ %2, %bb.a ], [ %i.x, %._crit_edge.loopexit ] ; 10 uses
  %.0104.lcssa = phi i64 [ 0, %bb.a ], [ %6, %._crit_edge.loopexit ] ; 15 uses
  %.0102.lcssa = phi i64 [ %2, %bb.a ], [ %i.n, %._crit_edge.loopexit ] ; 2 uses
  %i.y = and i32 %1, 15
  switch i32 %i.y, label %default.unreachable161 [
    i32 15, label %bb.b
    i32 14, label %._crit_edge._crit_edge133
    i32 13, label %._crit_edge._crit_edge132
    i32 12, label %._crit_edge._crit_edge131
    i32 11, label %._crit_edge._crit_edge130
    i32 10, label %._crit_edge._crit_edge129
    i32 9, label %._crit_edge._crit_edge128
    i32 8, label %._crit_edge._crit_edge127
    i32 7, label %._crit_edge._crit_edge126
    i32 6, label %._crit_edge._crit_edge125
    i32 5, label %._crit_edge._crit_edge124
    i32 4, label %._crit_edge._crit_edge123
    i32 3, label %._crit_edge._crit_edge122
    i32 2, label %._crit_edge._crit_edge121
    i32 1, label %._crit_edge._crit_edge
    i32 0, label %bb.c
  ]

bb.b:                                             ; preds = %._crit_edge
  %i.z = getelementptr i8, ptr %0, i64 %.0104.lcssa
  %i.aa = getelementptr i8, ptr %i.z, i64 14
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !8
  %i.ac = sext i8 %i.ab to i64
  %i.ad = shl nsw i64 %i.ac, 48
  br label %._crit_edge._crit_edge133

._crit_edge._crit_edge133:                        ; preds = %._crit_edge, %bb.b
  %.0 = phi i64 [ %i.ad, %bb.b ], [ 0, %._crit_edge ]
  %i.ae = getelementptr i8, ptr %0, i64 %.0104.lcssa
  %i.af = getelementptr i8, ptr %i.ae, i64 13
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !8
  %i.ah = sext i8 %i.ag to i64
  %i.ai = shl nsw i64 %i.ah, 40
  %i.aj = xor i64 %i.ai, %.0
  br label %._crit_edge._crit_edge132

._crit_edge._crit_edge132:                        ; preds = %._crit_edge, %._crit_edge._crit_edge133
  %.1 = phi i64 [ %i.aj, %._crit_edge._crit_edge133 ], [ 0, %._crit_edge ]
  %i.ak = getelementptr i8, ptr %0, i64 %.0104.lcssa
  %i.al = getelementptr i8, ptr %i.ak, i64 12
  %i.am = load i8, ptr %i.al, align 1, !tbaa !8
  %i.an = sext i8 %i.am to i64
  %i.ao = shl nsw i64 %i.an, 32
  %i.ap = xor i64 %i.ao, %.1
  br label %._crit_edge._crit_edge131

._crit_edge._crit_edge131:                        ; preds = %._crit_edge, %._crit_edge._crit_edge132
  %.2 = phi i64 [ %i.ap, %._crit_edge._crit_edge132 ], [ 0, %._crit_edge ]
  %i.aq = getelementptr i8, ptr %0, i64 %.0104.lcssa
  %i.ar = getelementptr i8, ptr %i.aq, i64 11
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !8
  %i.at = sext i8 %i.as to i64
  %i.au = shl nsw i64 %i.at, 24
  %i.av = xor i64 %i.au, %.2
  br label %._crit_edge._crit_edge130

._crit_edge._crit_edge130:                        ; preds = %._crit_edge, %._crit_edge._crit_edge131
  %.3 = phi i64 [ %i.av, %._crit_edge._crit_edge131 ], [ 0, %._crit_edge ]
  %i.aw = getelementptr i8, ptr %0, i64 %.0104.lcssa
  %i.ax = getelementptr i8, ptr %i.aw, i64 10
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !8
  %i.az = sext i8 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 16
  %i.bb = xor i64 %i.ba, %.3
  br label %._crit_edge._crit_edge129

._crit_edge._crit_edge129:                        ; preds = %._crit_edge, %._crit_edge._crit_edge130
  %.4 = phi i64 [ %i.bb, %._crit_edge._crit_edge130 ], [ 0, %._crit_edge ]
  %i.bc = getelementptr i8, ptr %0, i64 %.0104.lcssa
  %i.bd = getelementptr i8, ptr %i.bc, i64 9
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !8
  %i.bf = sext i8 %i.be to i64
  %i.bg = shl nsw i64 %i.bf, 8
  %i.bh = xor i64 %i.bg, %.4
  br label %._crit_edge._crit_edge128

._crit_edge._crit_edge128:                        ; preds = %._crit_edge, %._crit_edge._crit_edge129
  %.5 = phi i64 [ %i.bh, %._crit_edge._crit_edge129 ], [ 0, %._crit_edge ]
  %i.bi = getelementptr i8, ptr %0, i64 %.0104.lcssa
  %i.bj = getelementptr i8, ptr %i.bi, i64 8
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !8
  %i.bl = sext i8 %i.bk to i64
  %i.bm = xor i64 %.5, %i.bl                      ; 2 uses
  %i.bn = mul i64 %i.bm, 5545529020109919103
  %i.bo = mul i64 %i.bm, 5659660229084708864
  %i.bp = lshr i64 %i.bn, 31
  %i.bq = or disjoint i64 %i.bp, %i.bo
  %i.br = mul i64 %i.bq, -8663945395140668459
  %i.bs = xor i64 %i.br, %.0105.lcssa
  br label %._crit_edge._crit_edge127

._crit_edge._crit_edge127:                        ; preds = %._crit_edge, %._crit_edge._crit_edge128
  %.1106 = phi i64 [ %i.bs, %._crit_edge._crit_edge128 ], [ %.0105.lcssa, %._crit_edge ]
  %i.bt = getelementptr i8, ptr %0, i64 %.0104.lcssa
  %i.bu = getelementptr i8, ptr %i.bt, i64 7
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !8
  %i.bw = sext i8 %i.bv to i64
  %i.bx = shl nsw i64 %i.bw, 56
  br label %._crit_edge._crit_edge126

._crit_edge._crit_edge126:                        ; preds = %._crit_edge, %._crit_edge._crit_edge127
  %.2107 = phi i64 [ %.1106, %._crit_edge._crit_edge127 ], [ %.0105.lcssa, %._crit_edge ]
  %.096 = phi i64 [ %i.bx, %._crit_edge._crit_edge127 ], [ 0, %._crit_edge ]
  %i.by = getelementptr i8, ptr %0, i64 %.0104.lcssa
  %i.bz = getelementptr i8, ptr %i.by, i64 6
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !8
  %i.cb = sext i8 %i.ca to i64
  %i.cc = shl nsw i64 %i.cb, 48
  %i.cd = xor i64 %i.cc, %.096
  br label %._crit_edge._crit_edge125

._crit_edge._crit_edge125:                        ; preds = %._crit_edge, %._crit_edge._crit_edge126
  %.3108 = phi i64 [ %.2107, %._crit_edge._crit_edge126 ], [ %.0105.lcssa, %._crit_edge ]
  %.197 = phi i64 [ %i.cd, %._crit_edge._crit_edge126 ], [ 0, %._crit_edge ]
  %i.ce = getelementptr i8, ptr %0, i64 %.0104.lcssa
  %i.cf = getelementptr i8, ptr %i.ce, i64 5
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !8
  %i.ch = sext i8 %i.cg to i64
  %i.ci = shl nsw i64 %i.ch, 40
  %i.cj = xor i64 %i.ci, %.197
  br label %._crit_edge._crit_edge124

._crit_edge._crit_edge124:                        ; preds = %._crit_edge, %._crit_edge._crit_edge125
  %.4109 = phi i64 [ %.3108, %._crit_edge._crit_edge125 ], [ %.0105.lcssa, %._crit_edge ]
  %.298 = phi i64 [ %i.cj, %._crit_edge._crit_edge125 ], [ 0, %._crit_edge ]
  %i.ck = getelementptr i8, ptr %0, i64 %.0104.lcssa
  %i.cl = getelementptr i8, ptr %i.ck, i64 4
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !8
  %i.cn = sext i8 %i.cm to i64
  %i.co = shl nsw i64 %i.cn, 32
  %i.cp = xor i64 %i.co, %.298
  br label %._crit_edge._crit_edge123

._crit_edge._crit_edge123:                        ; preds = %._crit_edge, %._crit_edge._crit_edge124
  %.5110 = phi i64 [ %.4109, %._crit_edge._crit_edge124 ], [ %.0105.lcssa, %._crit_edge ]
  %.399 = phi i64 [ %i.cp, %._crit_edge._crit_edge124 ], [ 0, %._crit_edge ]
  %i.cq = getelementptr i8, ptr %0, i64 %.0104.lcssa
  %i.cr = getelementptr i8, ptr %i.cq, i64 3
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !8
  %i.ct = sext i8 %i.cs to i64
  %i.cu = shl nsw i64 %i.ct, 24
  %i.cv = xor i64 %i.cu, %.399
  br label %._crit_edge._crit_edge122

._crit_edge._crit_edge122:                        ; preds = %._crit_edge, %._crit_edge._crit_edge123
  %.6111 = phi i64 [ %.5110, %._crit_edge._crit_edge123 ], [ %.0105.lcssa, %._crit_edge ]
  %.4100 = phi i64 [ %i.cv, %._crit_edge._crit_edge123 ], [ 0, %._crit_edge ]
  %i.cw = getelementptr i8, ptr %0, i64 %.0104.lcssa
  %i.cx = getelementptr i8, ptr %i.cw, i64 2
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !8
  %i.cz = sext i8 %i.cy to i64
  %i.da = shl nsw i64 %i.cz, 16
  %i.db = xor i64 %i.da, %.4100
  br label %._crit_edge._crit_edge121

._crit_edge._crit_edge121:                        ; preds = %._crit_edge, %._crit_edge._crit_edge122
  %.7 = phi i64 [ %.6111, %._crit_edge._crit_edge122 ], [ %.0105.lcssa, %._crit_edge ]
  %.5101 = phi i64 [ %i.db, %._crit_edge._crit_edge122 ], [ 0, %._crit_edge ]
  %i.dc = getelementptr i8, ptr %0, i64 %.0104.lcssa
  %i.dd = getelementptr i8, ptr %i.dc, i64 1
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !8
  %i.df = sext i8 %i.de to i64
  %i.dg = shl nsw i64 %i.df, 8
  %i.dh = xor i64 %i.dg, %.5101
  br label %._crit_edge._crit_edge

._crit_edge._crit_edge:                           ; preds = %._crit_edge, %._crit_edge._crit_edge121
  %.8 = phi i64 [ %.7, %._crit_edge._crit_edge121 ], [ %.0105.lcssa, %._crit_edge ]
  %.6 = phi i64 [ %i.dh, %._crit_edge._crit_edge121 ], [ 0, %._crit_edge ]
  %i.di = getelementptr inbounds i8, ptr %0, i64 %.0104.lcssa
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !8
  %i.dk = sext i8 %i.dj to i64
  %i.dl = xor i64 %.6, %i.dk                      ; 2 uses
  %i.dm = mul i64 %i.dl, -8663945395140668459
  %i.dn = mul i64 %i.dl, -8601547726154366976
  %i.do = lshr i64 %i.dm, 33
  %i.dp = or disjoint i64 %i.do, %i.dn
  %i.dq = mul i64 %i.dp, 5545529020109919103
  %i.dr = xor i64 %i.dq, %.0102.lcssa
  br label %bb.c

default.unreachable161:                           ; preds = %._crit_edge
  unreachable

bb.c:                                             ; preds = %._crit_edge, %._crit_edge._crit_edge
  %.9 = phi i64 [ %.8, %._crit_edge._crit_edge ], [ %.0105.lcssa, %._crit_edge ]
  %.1103 = phi i64 [ %i.dr, %._crit_edge._crit_edge ], [ %.0102.lcssa, %._crit_edge ]
  %i.ds = sext i32 %1 to i64                      ; 2 uses
  %i.dt = xor i64 %.1103, %i.ds
  %i.du = xor i64 %.9, %i.ds                      ; 2 uses
  %i.dv = add i64 %i.dt, %i.du                    ; 3 uses
  %i.dw = add i64 %i.dv, %i.du                    ; 2 uses
  %i.dx = lshr i64 %i.dv, 33
  %i.dy = xor i64 %i.dx, %i.dv
  %i.dz = mul i64 %i.dy, -49064778989728563       ; 2 uses
  %i.ea = lshr i64 %i.dz, 33
  %i.eb = xor i64 %i.ea, %i.dz
  %i.ec = mul i64 %i.eb, -4265267296055464877     ; 2 uses
  %i.ed = lshr i64 %i.ec, 33
  %i.ee = xor i64 %i.ed, %i.ec
  %i.ef = lshr i64 %i.dw, 33
  %i.eg = xor i64 %i.ef, %i.dw
  %i.eh = mul i64 %i.eg, -49064778989728563       ; 2 uses
  %i.ei = lshr i64 %i.eh, 33
  %i.ej = xor i64 %i.ei, %i.eh
  %i.ek = mul i64 %i.ej, -4265267296055464877     ; 2 uses
  %i.el = lshr i64 %i.ek, 33
  %i.em = xor i64 %i.el, %i.ek
  %i.en = add i64 %i.em, %i.ee
  ret i64 %i.en
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN8facebook5velox6common3hll14Murmur3Hash1284hashEPKvijPv(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = sdiv i32 %1, 16                          ; 2 uses
  %i.b = zext i32 %2 to i64                       ; 4 uses
  %i.c = icmp sgt i32 %1, 15
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.099.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.ad, %.lr.ph ] ; 10 uses
  %.096.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.t, %.lr.ph ] ; 2 uses
  %i.d = shl nsw i32 %i.a, 4
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e ; 15 uses
  %i.g = and i32 %1, 15
  switch i32 %i.g, label %default.unreachable114 [
    i32 15, label %bb.b
    i32 14, label %bb.c
    i32 13, label %bb.d
    i32 12, label %bb.e
    i32 11, label %bb.f
    i32 10, label %bb.g
    i32 9, label %bb.h
    i32 8, label %bb.i
    i32 7, label %bb.j
    i32 6, label %bb.k
    i32 5, label %bb.l
    i32 4, label %bb.m
    i32 3, label %bb.n
    i32 2, label %bb.o
    i32 1, label %bb.p
    i32 0, label %bb.q
  ]

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.096110 = phi i64 [ %i.b, %.lr.ph.preheader ], [ %i.t, %.lr.ph ]
  %.099108 = phi i64 [ %i.b, %.lr.ph.preheader ], [ %i.ad, %.lr.ph ] ; 2 uses
  %i.h = shl nuw nsw i64 %indvars.iv, 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.h ; 2 uses
  %.0.copyload.i.i = load i64, ptr %i.i, align 1  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.0.copyload.i.i107 = load i64, ptr %i.j, align 1 ; 2 uses
  %i.k = mul i64 %.0.copyload.i.i, -8663945395140668459
  %i.l = mul i64 %.0.copyload.i.i, -8601547726154366976
  %i.m = lshr i64 %i.k, 33
  %i.n = or disjoint i64 %i.m, %i.l
  %i.o = mul i64 %i.n, 5545529020109919103
  %i.p = xor i64 %i.o, %.096110                   ; 2 uses
  %i.q = tail call i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 27)
  %i.r = add i64 %i.q, %.099108
  %i.s = mul i64 %i.r, 5
  %i.t = add i64 %i.s, 1390208809                 ; 3 uses
  %i.u = mul i64 %.0.copyload.i.i107, 5545529020109919103
  %i.v = mul i64 %.0.copyload.i.i107, 5659660229084708864
  %i.w = lshr i64 %i.u, 31
  %i.x = or disjoint i64 %i.w, %i.v
  %i.y = mul i64 %i.x, -8663945395140668459
  %i.z = xor i64 %i.y, %.099108                   ; 2 uses
  %i.aa = tail call i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 31)
  %i.ab = add i64 %i.t, %i.aa
  %i.ac = mul i64 %i.ab, 5
  %i.ad = add i64 %i.ac, 944331445                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !11

bb.b:                                             ; preds = %._crit_edge
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 14
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !8
  %i.ag = zext i8 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 48
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.0 = phi i64 [ %i.ah, %bb.b ], [ 0, %._crit_edge ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 13
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !8
  %i.ak = zext i8 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ak, 40
  %i.am = or disjoint i64 %i.al, %.0
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.1 = phi i64 [ %i.am, %bb.c ], [ 0, %._crit_edge ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !8
  %i.ap = zext i8 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 32
  %i.ar = xor i64 %i.aq, %.1
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %.2 = phi i64 [ %i.ar, %bb.d ], [ 0, %._crit_edge ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 11
  %i.at = load i8, ptr %i.as, align 1, !tbaa !8
  %i.au = zext i8 %i.at to i64
  %i.av = shl nuw nsw i64 %i.au, 24
  %i.aw = xor i64 %i.av, %.2
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %.3 = phi i64 [ %i.aw, %bb.e ], [ 0, %._crit_edge ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !8
  %i.az = zext i8 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 16
  %i.bb = xor i64 %i.ba, %.3
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %.4 = phi i64 [ %i.bb, %bb.f ], [ 0, %._crit_edge ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !8
  %i.be = zext i8 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 8
  %i.bg = xor i64 %i.bf, %.4
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g
  %.5 = phi i64 [ %i.bg, %bb.g ], [ 0, %._crit_edge ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !8
  %i.bj = zext i8 %i.bi to i64
  %i.bk = xor i64 %.5, %i.bj                      ; 2 uses
  %i.bl = mul i64 %i.bk, 5545529020109919103
  %i.bm = mul i64 %i.bk, 5659660229084708864
  %i.bn = lshr i64 %i.bl, 31
  %i.bo = or disjoint i64 %i.bn, %i.bm
  %i.bp = mul i64 %i.bo, -8663945395140668459
  %i.bq = xor i64 %i.bp, %.099.lcssa
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %.1100 = phi i64 [ %i.bq, %bb.h ], [ %.099.lcssa, %._crit_edge ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 7
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !8
  %i.bt = zext i8 %i.bs to i64
  %i.bu = shl nuw i64 %i.bt, 56
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %.2101 = phi i64 [ %.1100, %bb.i ], [ %.099.lcssa, %._crit_edge ]
  %.090 = phi i64 [ %i.bu, %bb.i ], [ 0, %._crit_edge ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !8
  %i.bx = zext i8 %i.bw to i64
  %i.by = shl nuw nsw i64 %i.bx, 48
  %i.bz = or disjoint i64 %i.by, %.090
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.j
  %.3102 = phi i64 [ %.2101, %bb.j ], [ %.099.lcssa, %._crit_edge ]
  %.191 = phi i64 [ %i.bz, %bb.j ], [ 0, %._crit_edge ]
end_hunk_0
