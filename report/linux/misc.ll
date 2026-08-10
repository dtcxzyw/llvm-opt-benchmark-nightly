inline.NumInlined: 40
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 24
begin_hunk_0_@zlib_inflateReset:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 1, ptr %i.i, align 8
  store i32 0, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i32 32768, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i32 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 1352 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store ptr %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store ptr %i.o, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store ptr %i.o, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.t = load i32, ptr %i.s, align 8
  %i.u = shl nuw i32 1, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  store i32 %i.u, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  store i32 0, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i32 0, ptr %i.x, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -2, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse noredzone nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none)
define hidden range(i32 -2, 1) i32 @zlib_inflateInit2(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %zlib_inflateReset.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8
  %i.f = icmp slt i32 %1, 0
  %i.g = lshr i32 %1, 4
  %i.h = add nuw nsw i32 %i.g, 1
  %.sink = select i1 %i.f, i32 0, i32 %i.h
  %.018 = tail call i32 @llvm.abs.i32(i32 %1, i1 true) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %.sink, ptr %i.i, align 8
  %i.j = add nsw i32 %.018, -16
  %or.cond = icmp ult i32 %i.j, -8
  br i1 %or.cond, label %zlib_inflateReset.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 %.018, ptr %i.k, align 8
  %i.l = load ptr, ptr %i.c, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 9544
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr %i.m, ptr %i.n, align 8
  %i.o = load ptr, ptr %i.e, align 8              ; 16 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %zlib_inflateReset.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.s, align 8
  store ptr null, ptr %i.b, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 1, ptr %i.t, align 8
  store i32 0, ptr %i.o, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 0, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  store i32 32768, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  store i64 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  store i32 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 1352 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  store ptr %i.z, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  store ptr %i.z, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = shl nuw i32 1, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  store i32 %i.af, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  store i32 0, ptr %i.ah, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store i32 0, ptr %i.ai, align 8
  br label %zlib_inflateReset.exit

zlib_inflateReset.exit:                           ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -2, %bb.b ], [ -2, %bb.a ], [ 0, %bb.d ], [ -2, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse noredzone nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define hidden range(i32 -5, 3) i32 @zlib_inflate(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %zlib_inflateSyncPacket.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 68 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %zlib_inflateSyncPacket.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8                ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.e, label %zlib_inflateSyncPacket.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = load i32, ptr %i.c, align 8              ; 2 uses
  %i.j = icmp eq i32 %i.i, 11
  br i1 %i.j, label %bb.f, label %.split1732

bb.f:                                             ; preds = %bb.e
  store i32 12, ptr %i.c, align 8
  %.pre = load ptr, ptr %0, align 8
  br label %.split1732

.split1732:                                       ; preds = %bb.e, %bb.f
  %i.k = phi i32 [ %i.i, %bb.e ], [ 12, %bb.f ]
  %i.l = phi ptr [ %i.e, %bb.e ], [ %.pre, %bb.f ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 9 uses
  %i.p = load i64, ptr %i.o, align 8
  %i.q = trunc i64 %i.p to i32                    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = trunc i64 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 5 uses
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 6 uses
  %i.x = load i32, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 15 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 76 ; 12 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 116 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 120 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 112 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 124 ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 136 ; 16 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 1352 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 776 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 108 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 84 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 44 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.ay = icmp eq i32 %1, 6
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  br label %bb.g

bb.g:                                             ; preds = %.thread, %.split1732
  %i.bc = phi i32 [ %i.k, %.split1732 ], [ %.pre2126, %.thread ]
  %.0741 = phi ptr [ %i.l, %.split1732 ], [ %.41782, %.thread ] ; 49 uses
  %.0738 = phi ptr [ %i.n, %.split1732 ], [ %.2740, %.thread ] ; 32 uses
  %.0695 = phi i32 [ %i.t, %.split1732 ], [ %.41736, %.thread ] ; 44 uses
  %.0693 = phi i32 [ %i.q, %.split1732 ], [ %.1694, %.thread ] ; 60 uses
  %.0650 = phi i64 [ %i.v, %.split1732 ], [ %.41691, %.thread ] ; 31 uses
  %.0641 = phi i32 [ %i.x, %.split1732 ], [ %.41, %.thread ] ; 41 uses
  %.0636 = phi i32 [ %i.q, %.split1732 ], [ %.3639, %.thread ] ; 55 uses
  %.0 = phi i32 [ 0, %.split1732 ], [ %.7, %.thread ] ; 29 uses
  switch i32 %i.bc, label %zlib_inflateSyncPacket.exit [
    i32 0, label %bb.h
    i32 9, label %.preheader875
    i32 10, label %bb.v
    i32 11, label %bb.y
    i32 12, label %bb.z
    i32 13, label %bb.ag
    i32 14, label %._crit_edge2140
    i32 15, label %.preheader890
    i32 16, label %.split
    i32 17, label %._crit_edge2129
    i32 18, label %bb.bm
    i32 19, label %._crit_edge2134
    i32 20, label %bb.bz
    i32 21, label %._crit_edge2136
    i32 22, label %bb.cj
    i32 23, label %bb.cs
    i32 24, label %bb.cu
    i32 26, label %.loopexit.loopexit2997
    i32 27, label %.loopexit
    i32 28, label %zlib_inflateSyncPacket.exit.loopexit
  ]

._crit_edge2140:                                  ; preds = %bb.g
  %.pre2141 = load i32, ptr %i.ae, align 4
  br label %bb.an

._crit_edge2136:                                  ; preds = %bb.g
  %.pre2137 = load i32, ptr %i.ar, align 4
  br label %bb.cf

._crit_edge2134:                                  ; preds = %bb.g
  %.pre2135 = load i32, ptr %i.ar, align 4
  br label %bb.bx

._crit_edge2129:                                  ; preds = %bb.g
  %.promoted1469.pre = load i32, ptr %i.ai, align 4
  br label %bb.ax

.preheader890:                                    ; preds = %bb.g
  %i.bd = icmp ult i32 %.0641, 14
  br i1 %i.bd, label %.lr.ph1259.preheader, label %._crit_edge1260

.lr.ph1259.preheader:                             ; preds = %.preheader890
  %i.be = zext nneg i32 %.0641 to i64             ; 4 uses
  %i.bf = icmp eq i32 %.0695, 0
  br i1 %i.bf, label %.loopexit.loopexit1748, label %bb.ar

.preheader875:                                    ; preds = %bb.g
  %i.bg = icmp ult i32 %.0641, 32
  br i1 %i.bg, label %.lr.ph1586.preheader, label %._crit_edge1587

.lr.ph1586.preheader:                             ; preds = %.preheader875
  %i.bh = zext nneg i32 %.0641 to i64             ; 5 uses
  %i.bi = icmp eq i32 %.0695, 0
  br i1 %i.bi, label %.loopexit.loopexit1739, label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.bj = load i32, ptr %i.y, align 8
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.i, label %.preheader871

.preheader871:                                    ; preds = %bb.h
  %i.bl = icmp ult i32 %.0641, 16
  br i1 %i.bl, label %.lr.ph1726.preheader, label %._crit_edge1727

.lr.ph1726.preheader:                             ; preds = %.preheader871
  %i.bm = zext nneg i32 %.0641 to i64             ; 4 uses
  %i.bn = icmp eq i32 %.0695, 0
  br i1 %i.bn, label %.loopexit.loopexit1738, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 12, ptr %i.c, align 8
  br label %.thread

bb.j:                                             ; preds = %.lr.ph1726.preheader
  %i.bo = add i32 %.0695, -1                      ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0741, i64 1 ; 3 uses
  %i.bq = load i8, ptr %.0741, align 1
  %i.br = zext i8 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.br, %i.bm
  %i.bt = add i64 %i.bs, %.0650                   ; 3 uses
  %indvars.iv.next2124 = add nuw nsw i64 %i.bm, 8 ; 3 uses
  %i.bu = icmp ult i32 %.0641, 8
  br i1 %i.bu, label %.lr.ph1726.1, label %._crit_edge1727.loopexit

.lr.ph1726.1:                                     ; preds = %bb.j
  %i.bv = icmp eq i32 %i.bo, 0
  br i1 %i.bv, label %.loopexit.loopexit1738, label %bb.k

bb.k:                                             ; preds = %.lr.ph1726.1
  %i.bw = add i32 %.0695, -2
  %i.bx = getelementptr inbounds nuw i8, ptr %.0741, i64 2
  %i.by = load i8, ptr %i.bp, align 1
  %i.bz = zext i8 %i.by to i64
  %i.ca = shl nuw nsw i64 %i.bz, %indvars.iv.next2124
  %i.cb = add i64 %i.ca, %i.bt
  %indvars.iv.next2124.1 = or disjoint i64 %i.bm, 16
  br label %._crit_edge1727.loopexit

._crit_edge1727.loopexit:                         ; preds = %bb.k, %bb.j
  %.lcssa3174 = phi i32 [ %i.bo, %bb.j ], [ %i.bw, %bb.k ]
  %.lcssa3173 = phi ptr [ %i.bp, %bb.j ], [ %i.bx, %bb.k ]
  %.lcssa3172 = phi i64 [ %i.bt, %bb.j ], [ %i.cb, %bb.k ]
  %indvars.iv.next2124.lcssa = phi i64 [ %indvars.iv.next2124, %bb.j ], [ %indvars.iv.next2124.1, %bb.k ]
  %i.cc = trunc nuw nsw i64 %indvars.iv.next2124.lcssa to i32
  br label %._crit_edge1727

._crit_edge1727:                                  ; preds = %._crit_edge1727.loopexit, %.preheader871
  %.1742.lcssa = phi ptr [ %.0741, %.preheader871 ], [ %.lcssa3173, %._crit_edge1727.loopexit ] ; 4 uses
  %.1696.lcssa = phi i32 [ %.0695, %.preheader871 ], [ %.lcssa3174, %._crit_edge1727.loopexit ] ; 4 uses
  %.1651.lcssa = phi i64 [ %.0650, %.preheader871 ], [ %.lcssa3172, %._crit_edge1727.loopexit ] ; 7 uses
  %.1642.lcssa = phi i32 [ %.0641, %.preheader871 ], [ %i.cc, %._crit_edge1727.loopexit ] ; 3 uses
  %i.cd = shl i64 %.1651.lcssa, 8
  %i.ce = and i64 %i.cd, 65280
  %i.cf = lshr i64 %.1651.lcssa, 8
  %i.cg = add nuw nsw i64 %i.ce, %i.cf
  %i.ch = urem i64 %i.cg, 31
  %.not843 = icmp eq i64 %i.ch, 0
  br i1 %.not843, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge1727
  store ptr @.str.3, ptr %i.ad, align 8
  store i32 27, ptr %i.c, align 8
  br label %.thread

bb.m:                                             ; preds = %._crit_edge1727
  %i.ci = and i64 %.1651.lcssa, 15
  %.not844 = icmp eq i64 %i.ci, 8
  br i1 %.not844, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr @.str.4, ptr %i.ad, align 8
  store i32 27, ptr %i.c, align 8
  br label %.thread

bb.o:                                             ; preds = %bb.m
  %i.cj = lshr i64 %.1651.lcssa, 4                ; 2 uses
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = and i32 %i.ck, 15                       ; 2 uses
  %i.cm = add nuw nsw i32 %i.cl, 8
  %i.cn = load i32, ptr %i.ba, align 8
  %i.co = icmp ugt i32 %i.cm, %i.cn
  br i1 %i.co, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cp = add i32 %.1642.lcssa, -4
  store ptr @.str.5, ptr %i.ad, align 8
  store i32 27, ptr %i.c, align 8
  br label %.thread

bb.q:                                             ; preds = %bb.o
  %i.cq = shl nuw nsw i32 256, %i.cl
  store i32 %i.cq, ptr %i.bb, align 4
  store i64 1, ptr %i.ab, align 8
  store i64 1, ptr %i.ac, align 8
  %i.cr = and i64 %.1651.lcssa, 8192
  %.not845 = icmp eq i64 %i.cr, 0
  %i.cs = select i1 %.not845, i32 11, i32 9
  store i32 %i.cs, ptr %i.c, align 8
  br label %.thread

bb.r:                                             ; preds = %.lr.ph1586.preheader
  %i.ct = add i32 %.0695, -1                      ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0741, i64 1 ; 3 uses
  %i.cv = load i8, ptr %.0741, align 1
  %i.cw = zext i8 %i.cv to i64
  %i.cx = shl nuw nsw i64 %i.cw, %i.bh
  %i.cy = add i64 %i.cx, %.0650                   ; 3 uses
  %indvars.iv.next2121 = add nuw nsw i64 %i.bh, 8 ; 2 uses
  %i.cz = icmp ult i32 %.0641, 24
  br i1 %i.cz, label %.lr.ph1586.1, label %._crit_edge1587

.lr.ph1586.1:                                     ; preds = %bb.r
  %i.da = icmp eq i32 %i.ct, 0
  br i1 %i.da, label %.loopexit.loopexit1739, label %bb.s

bb.s:                                             ; preds = %.lr.ph1586.1
  %i.db = add i32 %.0695, -2                      ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.0741, i64 2 ; 3 uses
  %i.dd = load i8, ptr %i.cu, align 1
  %i.de = zext i8 %i.dd to i64
  %i.df = shl nuw nsw i64 %i.de, %indvars.iv.next2121
  %i.dg = add i64 %i.df, %i.cy                    ; 3 uses
  %indvars.iv.next2121.1 = add nuw nsw i64 %i.bh, 16 ; 2 uses
  %i.dh = icmp ult i32 %.0641, 16
  br i1 %i.dh, label %.lr.ph1586.2, label %._crit_edge1587

.lr.ph1586.2:                                     ; preds = %bb.s
  %i.di = icmp eq i32 %i.db, 0
  br i1 %i.di, label %.loopexit.loopexit1739, label %bb.t

bb.t:                                             ; preds = %.lr.ph1586.2
  %i.dj = add i32 %.0695, -3                      ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.0741, i64 3 ; 3 uses
  %i.dl = load i8, ptr %i.dc, align 1
  %i.dm = zext i8 %i.dl to i64
  %i.dn = shl nuw nsw i64 %i.dm, %indvars.iv.next2121.1
  %i.do = add i64 %i.dn, %i.dg                    ; 3 uses
end_hunk_0
begin_hunk_1_@zlib_inflate:bb.a
._crit_edge1260.loopexit:                         ; preds = %bb.as, %bb.ar
  %.lcssa3015 = phi i32 [ %i.gx, %bb.ar ], [ %i.hf, %bb.as ]
  %.lcssa3014 = phi ptr [ %i.gy, %bb.ar ], [ %i.hg, %bb.as ]
  %.lcssa3013 = phi i64 [ %i.hc, %bb.ar ], [ %i.hk, %bb.as ]
  %indvars.iv.next2080.lcssa = phi i64 [ %indvars.iv.next2080, %bb.ar ], [ %indvars.iv.next2080.1, %bb.as ]
  %i.hl = trunc nuw nsw i64 %indvars.iv.next2080.lcssa to i32
  br label %._crit_edge1260

._crit_edge1260:                                  ; preds = %._crit_edge1260.loopexit, %.preheader890
  %.9750.lcssa = phi ptr [ %.0741, %.preheader890 ], [ %.lcssa3014, %._crit_edge1260.loopexit ] ; 2 uses
  %.9704.lcssa = phi i32 [ %.0695, %.preheader890 ], [ %.lcssa3015, %._crit_edge1260.loopexit ] ; 2 uses
  %.9659.lcssa = phi i64 [ %.0650, %.preheader890 ], [ %.lcssa3013, %._crit_edge1260.loopexit ] ; 2 uses
  %.9.lcssa = phi i32 [ %.0641, %.preheader890 ], [ %i.hl, %._crit_edge1260.loopexit ]
  %i.hm = trunc i64 %.9659.lcssa to i32           ; 3 uses
  %i.hn = and i32 %i.hm, 31                       ; 2 uses
  %i.ho = add nuw nsw i32 %i.hn, 257
  store i32 %i.ho, ptr %i.af, align 4
  %i.hp = lshr i32 %i.hm, 5
  %i.hq = and i32 %i.hp, 31                       ; 2 uses
  %i.hr = add nuw nsw i32 %i.hq, 1
  store i32 %i.hr, ptr %i.ag, align 8
  %i.hs = lshr i32 %i.hm, 10
  %i.ht = and i32 %i.hs, 15
  %i.hu = add nuw nsw i32 %i.ht, 4                ; 2 uses
  store i32 %i.hu, ptr %i.ah, align 8
  %i.hv = lshr i64 %.9659.lcssa, 14               ; 2 uses
  %i.hw = add i32 %.9.lcssa, -14                  ; 2 uses
  %i.hx = icmp samesign ugt i32 %i.hn, 29
  %i.hy = icmp samesign ugt i32 %i.hq, 29
  %or.cond858 = select i1 %i.hx, i1 true, i1 %i.hy
  br i1 %or.cond858, label %bb.at, label %.split.thread

bb.at:                                            ; preds = %._crit_edge1260
  store ptr @.str.8, ptr %i.ad, align 8
  store i32 27, ptr %i.c, align 8
  br label %.thread

.split.thread:                                    ; preds = %._crit_edge1260
  store i32 0, ptr %i.ai, align 4
  store i32 16, ptr %i.c, align 8
  br label %.preheader869.preheader

.split:                                           ; preds = %bb.g
  %.promoted.pre = load i32, ptr %i.ai, align 4   ; 3 uses
  %.pre2128 = load i32, ptr %i.ah, align 8        ; 2 uses
  %i.hz = icmp ult i32 %.promoted.pre, %.pre2128
  br i1 %i.hz, label %.preheader869.preheader, label %.preheader889

.preheader869.preheader:                          ; preds = %.split.thread, %.split
  %.102186 = phi i32 [ %i.hw, %.split.thread ], [ %.0641, %.split ]
  %.106602185 = phi i64 [ %i.hv, %.split.thread ], [ %.0650, %.split ]
  %.107052184 = phi i32 [ %.9704.lcssa, %.split.thread ], [ %.0695, %.split ]
  %.107512183 = phi ptr [ %.9750.lcssa, %.split.thread ], [ %.0741, %.split ]
  %.promoted2182 = phi i32 [ 0, %.split.thread ], [ %.promoted.pre, %.split ]
  %i.ia = phi i32 [ %i.hu, %.split.thread ], [ %.pre2128, %.split ]
  %i.ib = zext i32 %.promoted2182 to i64
  %i.ic = zext i32 %i.ia to i64
  br label %.preheader869

.preheader889:                                    ; preds = %bb.au, %.split
  %.11752.lcssa = phi ptr [ %.0741, %.split ], [ %.12753.lcssa, %bb.au ] ; 2 uses
  %.11706.lcssa = phi i32 [ %.0695, %.split ], [ %.12707.lcssa, %bb.au ] ; 2 uses
  %.11661.lcssa = phi i64 [ %.0650, %.split ], [ %i.jf, %bb.au ] ; 2 uses
  %.11.lcssa = phi i32 [ %.0641, %.split ], [ %i.jg, %bb.au ] ; 2 uses
  %.lcssa = phi i32 [ %.promoted.pre, %.split ], [ %i.ja, %bb.au ] ; 5 uses
  %i.id = icmp ult i32 %.lcssa, 19
  br i1 %i.id, label %.lr.ph1405.preheader, label %._crit_edge1406

.lr.ph1405.preheader:                             ; preds = %.preheader889
  %i.ie = and i32 %.lcssa, 3                      ; 2 uses
  %lcmp.mod.not = icmp eq i32 %i.ie, 3
  br i1 %lcmp.mod.not, label %.lr.ph1405.prol.loopexit, label %.lr.ph1405.prol

.lr.ph1405.prol:                                  ; preds = %.lr.ph1405.preheader, %.lr.ph1405.prol
  %i.if = phi i32 [ %i.ig, %.lr.ph1405.prol ], [ %.lcssa, %.lr.ph1405.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph1405.prol ], [ 0, %.lr.ph1405.preheader ]
  %i.ig = add nuw nsw i32 %i.if, 1                ; 3 uses
  %i.ih = zext nneg i32 %i.if to i64
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr @zlib_inflate.order, i64 %i.ih
  %i.ij = load i16, ptr %i.ii, align 2
  %i.ik = zext i16 %i.ij to i64
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.ik
  store i16 0, ptr %i.il, align 2
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %i.im = xor i32 %i.ie, %prol.iter.next
  %prol.iter.cmp.not = icmp eq i32 %i.im, 3
  br i1 %prol.iter.cmp.not, label %.lr.ph1405.prol.loopexit, label %.lr.ph1405.prol, !llvm.loop !28

.lr.ph1405.prol.loopexit:                         ; preds = %.lr.ph1405.prol, %.lr.ph1405.preheader
  %.unr = phi i32 [ %.lcssa, %.lr.ph1405.preheader ], [ %i.ig, %.lr.ph1405.prol ]
  %.lcssa3022.unr = phi i32 [ poison, %.lr.ph1405.preheader ], [ %i.ig, %.lr.ph1405.prol ]
  %i.in = icmp ugt i32 %.lcssa, 15
  br i1 %i.in, label %._crit_edge1406.loopexit, label %.lr.ph1405

.preheader869:                                    ; preds = %.preheader869.preheader, %bb.au
  %indvars.iv2082 = phi i64 [ %i.ib, %.preheader869.preheader ], [ %indvars.iv.next2083, %bb.au ] ; 2 uses
  %.111398 = phi i32 [ %.102186, %.preheader869.preheader ], [ %i.jg, %bb.au ] ; 5 uses
  %.116611397 = phi i64 [ %.106602185, %.preheader869.preheader ], [ %i.jf, %bb.au ] ; 3 uses
  %.117061396 = phi i32 [ %.107052184, %.preheader869.preheader ], [ %.12707.lcssa, %bb.au ] ; 3 uses
  %.117521395 = phi ptr [ %.107512183, %.preheader869.preheader ], [ %.12753.lcssa, %bb.au ] ; 4 uses
  %i.io = icmp ult i32 %.111398, 3
  br i1 %i.io, label %.lr.ph1269, label %bb.au

.lr.ph1269:                                       ; preds = %.preheader869
  %i.ip = icmp eq i32 %.117061396, 0
  br i1 %i.ip, label %.loopexit, label %._crit_edge1270

._crit_edge1270:                                  ; preds = %.lr.ph1269
  %i.iq = or disjoint i32 %.111398, 8
  %i.ir = add i32 %.117061396, -1
  %i.is = getelementptr inbounds nuw i8, ptr %.117521395, i64 1
  %i.it = load i8, ptr %.117521395, align 1
  %i.iu = zext i8 %i.it to i64
  %i.iv = zext nneg i32 %.111398 to i64
  %i.iw = shl nuw nsw i64 %i.iu, %i.iv
  %i.ix = add i64 %i.iw, %.116611397
  br label %bb.au

bb.au:                                            ; preds = %._crit_edge1270, %.preheader869
  %.12753.lcssa = phi ptr [ %i.is, %._crit_edge1270 ], [ %.117521395, %.preheader869 ] ; 2 uses
  %.12707.lcssa = phi i32 [ %i.ir, %._crit_edge1270 ], [ %.117061396, %.preheader869 ] ; 2 uses
  %.12662.lcssa = phi i64 [ %i.ix, %._crit_edge1270 ], [ %.116611397, %.preheader869 ] ; 2 uses
  %.12.lcssa = phi i32 [ %i.iq, %._crit_edge1270 ], [ %.111398, %.preheader869 ]
  %i.iy = trunc i64 %.12662.lcssa to i16
  %i.iz = and i16 %i.iy, 7
  %indvars.iv.next2083 = add nuw nsw i64 %indvars.iv2082, 1 ; 3 uses
  %i.ja = trunc nuw i64 %indvars.iv.next2083 to i32 ; 2 uses
  store i32 %i.ja, ptr %i.ai, align 4
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr @zlib_inflate.order, i64 %indvars.iv2082
  %i.jc = load i16, ptr %i.jb, align 2
  %i.jd = zext i16 %i.jc to i64
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.jd
  store i16 %i.iz, ptr %i.je, align 2
  %i.jf = lshr i64 %.12662.lcssa, 3               ; 2 uses
  %i.jg = add i32 %.12.lcssa, -3                  ; 2 uses
  %i.jh = icmp samesign ult i64 %indvars.iv.next2083, %i.ic
  br i1 %i.jh, label %.preheader869, label %.preheader889, !llvm.loop !29

.lr.ph1405:                                       ; preds = %.lr.ph1405.prol.loopexit, %.lr.ph1405
  %i.ji = phi i32 [ %i.kb, %.lr.ph1405 ], [ %.unr, %.lr.ph1405.prol.loopexit ] ; 6 uses
  %i.jj = zext nneg i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw [2 x i8], ptr @zlib_inflate.order, i64 %i.jj
  %i.jl = load i16, ptr %i.jk, align 2
  %i.jm = zext i16 %i.jl to i64
  %i.jn = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.jm
  store i16 0, ptr %i.jn, align 2
  %i.jo = sext i32 %i.ji to i64
  %i.jp = getelementptr inbounds nuw [2 x i8], ptr @zlib_inflate.order, i64 %i.jo
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 2
  %i.jr = load i16, ptr %i.jq, align 2
  %i.js = zext i16 %i.jr to i64
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.js
  store i16 0, ptr %i.jt, align 2
  %i.ju = add nuw nsw i32 %i.ji, 3
  %i.jv = sext i32 %i.ji to i64
  %i.jw = getelementptr inbounds nuw [2 x i8], ptr @zlib_inflate.order, i64 %i.jv
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 4
  %i.jy = load i16, ptr %i.jx, align 2
  %i.jz = zext i16 %i.jy to i64
  %i.ka = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.jz
  store i16 0, ptr %i.ka, align 2
  %i.kb = add nuw nsw i32 %i.ji, 4                ; 2 uses
  %i.kc = zext nneg i32 %i.ju to i64
  %i.kd = getelementptr inbounds nuw [2 x i8], ptr @zlib_inflate.order, i64 %i.kc
  %i.ke = load i16, ptr %i.kd, align 2
  %i.kf = zext i16 %i.ke to i64
  %i.kg = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.kf
  store i16 0, ptr %i.kg, align 2
  %i.kh = icmp ult i32 %i.ji, 15
  br i1 %i.kh, label %.lr.ph1405, label %._crit_edge1406.loopexit, !llvm.loop !30

._crit_edge1406.loopexit:                         ; preds = %.lr.ph1405, %.lr.ph1405.prol.loopexit
  %.lcssa3022 = phi i32 [ %.lcssa3022.unr, %.lr.ph1405.prol.loopexit ], [ %i.kb, %.lr.ph1405 ]
  store i32 %.lcssa3022, ptr %i.ai, align 4
  br label %._crit_edge1406

._crit_edge1406:                                  ; preds = %._crit_edge1406.loopexit, %.preheader889
  store ptr %i.ak, ptr %i.al, align 8
  store ptr %i.ak, ptr %i.am, align 8
  store i32 7, ptr %i.an, align 8
  %i.ki = tail call i32 @zlib_inflate_table(i32 noundef 0, ptr noundef nonnull %i.aj, i32 noundef 19, ptr noundef nonnull %i.al, ptr noundef nonnull %i.an, ptr noundef nonnull %i.ao) #17 ; 2 uses
  %.not816 = icmp eq i32 %i.ki, 0
  br i1 %.not816, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %._crit_edge1406
  store ptr @.str.9, ptr %i.ad, align 8
  store i32 27, ptr %i.c, align 8
  br label %.thread

bb.aw:                                            ; preds = %._crit_edge1406
  store i32 0, ptr %i.ai, align 4
  store i32 17, ptr %i.c, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %._crit_edge2129, %bb.aw
  %.promoted1469 = phi i32 [ 0, %bb.aw ], [ %.promoted1469.pre, %._crit_edge2129 ] ; 2 uses
  %.13754 = phi ptr [ %.11752.lcssa, %bb.aw ], [ %.0741, %._crit_edge2129 ] ; 2 uses
  %.13708 = phi i32 [ %.11706.lcssa, %bb.aw ], [ %.0695, %._crit_edge2129 ] ; 2 uses
  %.13663 = phi i64 [ %.11661.lcssa, %bb.aw ], [ %.0650, %._crit_edge2129 ] ; 2 uses
  %.13 = phi i32 [ %.11.lcssa, %bb.aw ], [ %.0641, %._crit_edge2129 ] ; 2 uses
  %.1 = phi i32 [ 0, %bb.aw ], [ %.0, %._crit_edge2129 ] ; 7 uses
  %i.kj = load i32, ptr %i.af, align 4            ; 2 uses
  %i.kk = load i32, ptr %i.ag, align 8
  %i.kl = add i32 %i.kk, %i.kj                    ; 3 uses
  %i.km = icmp ult i32 %.promoted1469, %i.kl
  br i1 %i.km, label %.preheader867.preheader, label %._crit_edge1477

.preheader867.preheader:                          ; preds = %bb.ax
  %.pre2131 = load ptr, ptr %i.am, align 8        ; 3 uses
  %.pre2132 = load i32, ptr %i.an, align 8
  %notmask = shl nsw i32 -1, %.pre2132
  %i.kn = xor i32 %notmask, -1                    ; 2 uses
  br label %.preheader867

.preheader867:                                    ; preds = %.preheader867.preheader, %bb.bh
  %.141476 = phi i32 [ %.21, %bb.bh ], [ %.13, %.preheader867.preheader ] ; 4 uses
  %.146641475 = phi i64 [ %.21671, %bb.bh ], [ %.13663, %.preheader867.preheader ] ; 4 uses
  %.147091474 = phi i32 [ %.21716, %bb.bh ], [ %.13708, %.preheader867.preheader ] ; 5 uses
  %.147551473 = phi ptr [ %.21762, %bb.bh ], [ %.13754, %.preheader867.preheader ] ; 3 uses
  %.lcssa145714701472 = phi i32 [ %.lcssa14571471, %bb.bh ], [ %.promoted1469, %.preheader867.preheader ] ; 7 uses
  %i.ko = trunc i64 %.146641475 to i32
  %i.kp = and i32 %i.kn, %i.ko
  %i.kq = zext nneg i32 %i.kp to i64              ; 2 uses
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %.pre2131, i64 %i.kq
  %.sroa.18.0..sroa_idx1409 = getelementptr inbounds nuw i8, ptr %i.kr, i64 1
  %.sroa.18.0.copyload1410 = load i8, ptr %.sroa.18.0..sroa_idx1409, align 1 ; 2 uses
  %i.ks = zext i8 %.sroa.18.0.copyload1410 to i32 ; 2 uses
  %.not8171411 = icmp ult i32 %.141476, %i.ks
  br i1 %.not8171411, label %.lr.ph1416.preheader, label %._crit_edge1417

.lr.ph1416.preheader:                             ; preds = %.preheader867
  %i.kt = icmp eq i32 %.147091474, 0
  br i1 %i.kt, label %.loopexit.loopexit2187, label %.lr.ph2853

.lr.ph2853:                                       ; preds = %.lr.ph1416.preheader
  %i.ku = zext nneg i32 %.141476 to i64
  br label %bb.ay

.lr.ph1416:                                       ; preds = %bb.ay
  %i.kv = icmp eq i32 %i.kw, 0
  br i1 %i.kv, label %.loopexit.loopexit2187, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph2853, %.lr.ph1416
  %.1575614122852 = phi ptr [ %.147551473, %.lr.ph2853 ], [ %i.kx, %.lr.ph1416 ] ; 2 uses
  %.1571014132851 = phi i32 [ %.147091474, %.lr.ph2853 ], [ %i.kw, %.lr.ph1416 ]
  %.1566514142850 = phi i64 [ %.146641475, %.lr.ph2853 ], [ %i.lb, %.lr.ph1416 ]
  %indvars.iv20852849 = phi i64 [ %i.ku, %.lr.ph2853 ], [ %indvars.iv.next2086.a, %.lr.ph1416 ] ; 2 uses
  %i.kw = add i32 %.1571014132851, -1             ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.1575614122852, i64 1 ; 2 uses
  %i.ky = load i8, ptr %.1575614122852, align 1
  %i.kz = zext i8 %i.ky to i64
  %i.la = shl i64 %i.kz, %indvars.iv20852849
  %i.lb = add i64 %i.la, %.1566514142850          ; 4 uses
  %indvars.iv.next2086.a = add nuw nsw i64 %indvars.iv20852849, 8 ; 3 uses
  %i.lc = trunc i64 %i.lb to i32
  %i.ld = and i32 %i.kn, %i.lc
  %i.le = zext nneg i32 %i.ld to i64              ; 2 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %.pre2131, i64 %i.le
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lf, i64 1
  %.sroa.18.0.copyload = load i8, ptr %.sroa.18.0..sroa_idx, align 1 ; 3 uses
  %i.lg = zext i8 %.sroa.18.0.copyload to i64
  %.not817 = icmp samesign ult i64 %indvars.iv.next2086.a, %i.lg
  br i1 %.not817, label %.lr.ph1416, label %._crit_edge1417.loopexit

._crit_edge1417.loopexit:                         ; preds = %bb.ay
  %i.lh = zext i8 %.sroa.18.0.copyload to i32
  %i.li = trunc nuw nsw i64 %indvars.iv.next2086.a to i32
  br label %._crit_edge1417

._crit_edge1417:                                  ; preds = %._crit_edge1417.loopexit, %.preheader867
  %i.lj = phi i64 [ %i.kq, %.preheader867 ], [ %i.le, %._crit_edge1417.loopexit ]
  %.lcssa1407 = phi i32 [ %i.ks, %.preheader867 ], [ %i.lh, %._crit_edge1417.loopexit ] ; 9 uses
  %.15756.lcssa = phi ptr [ %.147551473, %.preheader867 ], [ %i.kx, %._crit_edge1417.loopexit ] ; 8 uses
  %.15710.lcssa = phi i32 [ %.147091474, %.preheader867 ], [ %i.kw, %._crit_edge1417.loopexit ] ; 8 uses
  %.15665.lcssa = phi i64 [ %.146641475, %.preheader867 ], [ %i.lb, %._crit_edge1417.loopexit ] ; 8 uses
  %.15.lcssa = phi i32 [ %.141476, %.preheader867 ], [ %i.li, %._crit_edge1417.loopexit ] ; 12 uses
  %.sroa.18.0.copyload.lcssa = phi i8 [ %.sroa.18.0.copyload1410, %.preheader867 ], [ %.sroa.18.0.copyload, %._crit_edge1417.loopexit ] ; 4 uses
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %.pre2131, i64 %i.lj
  %.sroa.41.0..sroa_idx.le = getelementptr inbounds nuw i8, ptr %i.lk, i64 2
  %.sroa.41.0.copyload.le = load i16, ptr %.sroa.41.0..sroa_idx.le, align 2 ; 3 uses
  %i.ll = icmp ult i16 %.sroa.41.0.copyload.le, 16
  br i1 %i.ll, label %.preheader, label %bb.az

.preheader:                                       ; preds = %._crit_edge1417
  %2 = icmp ult i32 %.15.lcssa, %.lcssa1407
  br i1 %2, label %.lr.ph1463.preheader, label %._crit_edge1464

.lr.ph1463.preheader:                             ; preds = %.preheader
  %3 = zext nneg i32 %.15.lcssa to i64
  %4 = zext nneg i32 %.lcssa1407 to i64
  br label %.lr.ph1463

.lr.ph1463:                                       ; preds = %.lr.ph1463.preheader, %6
  %indvars.iv2097 = phi i64 [ %3, %.lr.ph1463.preheader ], [ %indvars.iv.next2098, %6 ] ; 3 uses
  %.166661461 = phi i64 [ %.15665.lcssa, %.lr.ph1463.preheader ], [ %12, %6 ] ; 2 uses
  %.167111460 = phi i32 [ %.15710.lcssa, %.lr.ph1463.preheader ], [ %7, %6 ] ; 2 uses
  %.167571459 = phi ptr [ %.15756.lcssa, %.lr.ph1463.preheader ], [ %8, %6 ] ; 3 uses
  %5 = icmp eq i32 %.167111460, 0
  br i1 %5, label %.loopexit.loopexit, label %6

6:                                                ; preds = %.lr.ph1463
  %7 = add i32 %.167111460, -1                    ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %.167571459, i64 1 ; 2 uses
  %9 = load i8, ptr %.167571459, align 1
  %10 = zext i8 %9 to i64
  %11 = shl i64 %10, %indvars.iv2097
  %12 = add i64 %11, %.166661461                  ; 2 uses
  %indvars.iv.next2098 = add nuw nsw i64 %indvars.iv2097, 8 ; 3 uses
  %13 = icmp samesign ult i64 %indvars.iv.next2098, %4
  br i1 %13, label %.lr.ph1463, label %._crit_edge1464.loopexit, !llvm.loop !31

._crit_edge1464.loopexit:                         ; preds = %6
  %14 = trunc nuw nsw i64 %indvars.iv.next2098 to i32
  br label %._crit_edge1464

._crit_edge1464:                                  ; preds = %._crit_edge1464.loopexit, %.preheader
  %.16757.lcssa = phi ptr [ %.15756.lcssa, %.preheader ], [ %8, %._crit_edge1464.loopexit ]
  %.16711.lcssa = phi i32 [ %.15710.lcssa, %.preheader ], [ %7, %._crit_edge1464.loopexit ]
  %.16666.lcssa = phi i64 [ %.15665.lcssa, %.preheader ], [ %12, %._crit_edge1464.loopexit ]
  %.16.lcssa = phi i32 [ %.15.lcssa, %.preheader ], [ %14, %._crit_edge1464.loopexit ]
  %i.lm = zext nneg i8 %.sroa.18.0.copyload.lcssa to i64
  %i.ln = lshr i64 %.16666.lcssa, %i.lm
  %i.lo = sub nuw i32 %.16.lcssa, %.lcssa1407
  %i.lp = add i32 %.lcssa145714701472, 1          ; 2 uses
  store i32 %i.lp, ptr %i.ai, align 4
  %i.lq = zext i32 %.lcssa145714701472 to i64
  %i.lr = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.lq
  store i16 %.sroa.41.0.copyload.le, ptr %i.lr, align 2
  br label %bb.bh

bb.az:                                            ; preds = %._crit_edge1417
  switch i16 %.sroa.41.0.copyload.le, label %.preheader861 [
    i16 16, label %.preheader863
    i16 17, label %.preheader865
  ]

.preheader865:                                    ; preds = %bb.az
  %i.ls = add nuw nsw i32 %.lcssa1407, 3          ; 2 uses
  %i.lt = icmp ult i32 %.15.lcssa, %i.ls
  br i1 %i.lt, label %.lr.ph1430.preheader, label %._crit_edge1431

.lr.ph1430.preheader:                             ; preds = %.preheader865
  %i.lu = zext nneg i32 %.15.lcssa to i64
  %i.lv = zext nneg i32 %i.ls to i64
  br label %.lr.ph1430

.preheader863:                                    ; preds = %bb.az
  %i.lw = add nuw nsw i32 %.lcssa1407, 2          ; 2 uses
  %i.lx = icmp ult i32 %.15.lcssa, %i.lw
  br i1 %i.lx, label %.lr.ph1440.preheader, label %._crit_edge1441

.lr.ph1440.preheader:                             ; preds = %.preheader863
  %i.ly = zext nneg i32 %.15.lcssa to i64
  %i.lz = zext nneg i32 %i.lw to i64
  br label %.lr.ph1440

.preheader861:                                    ; preds = %bb.az
  %i.ma = add nuw nsw i32 %.lcssa1407, 7          ; 2 uses
  %i.mb = icmp ult i32 %.15.lcssa, %i.ma
  br i1 %i.mb, label %.lr.ph1450.preheader, label %._crit_edge1451

.lr.ph1450.preheader:                             ; preds = %.preheader861
  %i.mc = zext nneg i32 %.15.lcssa to i64
  %i.md = zext nneg i32 %i.ma to i64
  br label %.lr.ph1450

.lr.ph1440:                                       ; preds = %.lr.ph1440.preheader, %bb.ba
  %indvars.iv2091 = phi i64 [ %i.ly, %.lr.ph1440.preheader ], [ %indvars.iv.next2092, %bb.ba ] ; 3 uses
  %.176671438 = phi i64 [ %.15665.lcssa, %.lr.ph1440.preheader ], [ %i.mk, %bb.ba ] ; 2 uses
  %.177121437 = phi i32 [ %.15710.lcssa, %.lr.ph1440.preheader ], [ %i.mf, %bb.ba ] ; 2 uses
  %.177581436 = phi ptr [ %.15756.lcssa, %.lr.ph1440.preheader ], [ %i.mg, %bb.ba ] ; 3 uses
  %i.me = icmp eq i32 %.177121437, 0
  br i1 %i.me, label %.loopexit.loopexit1735, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph1440
  %i.mf = add i32 %.177121437, -1                 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.177581436, i64 1 ; 2 uses
  %i.mh = load i8, ptr %.177581436, align 1
  %i.mi = zext i8 %i.mh to i64
  %i.mj = shl i64 %i.mi, %indvars.iv2091
  %i.mk = add i64 %i.mj, %.176671438              ; 2 uses
  %indvars.iv.next2092 = add nuw nsw i64 %indvars.iv2091, 8 ; 3 uses
  %i.ml = icmp samesign ult i64 %indvars.iv.next2092, %i.lz
  br i1 %i.ml, label %.lr.ph1440, label %._crit_edge1441.loopexit, !llvm.loop !32

._crit_edge1441.loopexit:                         ; preds = %bb.ba
  %i.mm = trunc nuw nsw i64 %indvars.iv.next2092 to i32
  br label %._crit_edge1441

._crit_edge1441:                                  ; preds = %._crit_edge1441.loopexit, %.preheader863
  %.17758.lcssa = phi ptr [ %.15756.lcssa, %.preheader863 ], [ %i.mg, %._crit_edge1441.loopexit ] ; 2 uses
  %.17712.lcssa = phi i32 [ %.15710.lcssa, %.preheader863 ], [ %i.mf, %._crit_edge1441.loopexit ] ; 2 uses
  %.17667.lcssa = phi i64 [ %.15665.lcssa, %.preheader863 ], [ %i.mk, %._crit_edge1441.loopexit ]
  %.17.lcssa = phi i32 [ %.15.lcssa, %.preheader863 ], [ %i.mm, %._crit_edge1441.loopexit ]
  %i.mn = zext nneg i8 %.sroa.18.0.copyload.lcssa to i64
  %i.mo = lshr i64 %.17667.lcssa, %i.mn           ; 3 uses
  %i.mp = sub nuw i32 %.17.lcssa, %.lcssa1407     ; 2 uses
  %i.mq = icmp eq i32 %.lcssa145714701472, 0
  br i1 %i.mq, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %._crit_edge1441
  store ptr @.str.10, ptr %i.ad, align 8
  store i32 27, ptr %i.c, align 8
  br label %.thread

bb.bc:                                            ; preds = %._crit_edge1441
  %i.mr = add i32 %.lcssa145714701472, -1
  %i.ms = zext i32 %i.mr to i64
  %i.mt = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.ms
  %i.mu = load i16, ptr %i.mt, align 2
  %i.mv = trunc i64 %i.mo to i32
  %i.mw = and i32 %i.mv, 3
  %i.mx = add nuw nsw i32 %i.mw, 3
  %i.my = lshr i64 %i.mo, 2
  %i.mz = add i32 %i.mp, -2
  br label %bb.bf

.lr.ph1430:                                       ; preds = %.lr.ph1430.preheader, %bb.bd
  %indvars.iv2088 = phi i64 [ %i.lu, %.lr.ph1430.preheader ], [ %indvars.iv.next2089, %bb.bd ] ; 3 uses
  %.186681428 = phi i64 [ %.15665.lcssa, %.lr.ph1430.preheader ], [ %i.ng, %bb.bd ] ; 2 uses
  %.187131427 = phi i32 [ %.15710.lcssa, %.lr.ph1430.preheader ], [ %i.nb, %bb.bd ] ; 2 uses
  %.187591426 = phi ptr [ %.15756.lcssa, %.lr.ph1430.preheader ], [ %i.nc, %bb.bd ] ; 3 uses
  %i.na = icmp eq i32 %.187131427, 0
  br i1 %i.na, label %.loopexit.loopexit1736, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph1430
  %i.nb = add i32 %.187131427, -1                 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.187591426, i64 1 ; 2 uses
  %i.nd = load i8, ptr %.187591426, align 1
  %i.ne = zext i8 %i.nd to i64
  %i.nf = shl i64 %i.ne, %indvars.iv2088
  %i.ng = add i64 %i.nf, %.186681428              ; 2 uses
  %indvars.iv.next2089 = add nuw nsw i64 %indvars.iv2088, 8 ; 3 uses
  %i.nh = icmp samesign ult i64 %indvars.iv.next2089, %i.lv
  br i1 %i.nh, label %.lr.ph1430, label %._crit_edge1431.loopexit, !llvm.loop !33

._crit_edge1431.loopexit:                         ; preds = %bb.bd
  %i.ni = trunc nuw nsw i64 %indvars.iv.next2089 to i32
  br label %._crit_edge1431

._crit_edge1431:                                  ; preds = %._crit_edge1431.loopexit, %.preheader865
  %.18759.lcssa = phi ptr [ %.15756.lcssa, %.preheader865 ], [ %i.nc, %._crit_edge1431.loopexit ]
  %.18713.lcssa = phi i32 [ %.15710.lcssa, %.preheader865 ], [ %i.nb, %._crit_edge1431.loopexit ]
  %.18668.lcssa = phi i64 [ %.15665.lcssa, %.preheader865 ], [ %i.ng, %._crit_edge1431.loopexit ]
  %.18.lcssa = phi i32 [ %.15.lcssa, %.preheader865 ], [ %i.ni, %._crit_edge1431.loopexit ]
  %i.nj = zext nneg i8 %.sroa.18.0.copyload.lcssa to i64
  %i.nk = lshr i64 %.18668.lcssa, %i.nj           ; 2 uses
  %i.nl = trunc i64 %i.nk to i32
  %i.nm = and i32 %i.nl, 7
  %i.nn = add nuw nsw i32 %i.nm, 3
  %i.no = lshr i64 %i.nk, 3
  %reass.sub = sub i32 %.18.lcssa, %.lcssa1407
  %i.np = add i32 %reass.sub, -3
  br label %bb.bf

.lr.ph1450:                                       ; preds = %.lr.ph1450.preheader, %bb.be
  %indvars.iv2094 = phi i64 [ %i.mc, %.lr.ph1450.preheader ], [ %indvars.iv.next2095.a, %bb.be ] ; 3 uses
  %.196691448 = phi i64 [ %.15665.lcssa, %.lr.ph1450.preheader ], [ %i.nw, %bb.be ] ; 2 uses
  %.197141447 = phi i32 [ %.15710.lcssa, %.lr.ph1450.preheader ], [ %i.nr, %bb.be ] ; 2 uses
  %.197601446 = phi ptr [ %.15756.lcssa, %.lr.ph1450.preheader ], [ %i.ns, %bb.be ] ; 3 uses
  %i.nq = icmp eq i32 %.197141447, 0
  br i1 %i.nq, label %.loopexit.loopexit1734, label %bb.be

bb.be:                                            ; preds = %.lr.ph1450
  %i.nr = add i32 %.197141447, -1                 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.197601446, i64 1 ; 2 uses
  %i.nt = load i8, ptr %.197601446, align 1
  %i.nu = zext i8 %i.nt to i64
  %i.nv = shl i64 %i.nu, %indvars.iv2094
  %i.nw = add i64 %i.nv, %.196691448              ; 2 uses
  %indvars.iv.next2095.a = add nuw nsw i64 %indvars.iv2094, 8 ; 3 uses
  %i.nx = icmp samesign ult i64 %indvars.iv.next2095.a, %i.md
  br i1 %i.nx, label %.lr.ph1450, label %._crit_edge1451.loopexit, !llvm.loop !34

._crit_edge1451.loopexit:                         ; preds = %bb.be
  %i.ny = trunc nuw nsw i64 %indvars.iv.next2095.a to i32
  br label %._crit_edge1451

._crit_edge1451:                                  ; preds = %._crit_edge1451.loopexit, %.preheader861
  %.19760.lcssa = phi ptr [ %.15756.lcssa, %.preheader861 ], [ %i.ns, %._crit_edge1451.loopexit ]
  %.19714.lcssa = phi i32 [ %.15710.lcssa, %.preheader861 ], [ %i.nr, %._crit_edge1451.loopexit ]
  %.19669.lcssa = phi i64 [ %.15665.lcssa, %.preheader861 ], [ %i.nw, %._crit_edge1451.loopexit ]
  %.19.lcssa = phi i32 [ %.15.lcssa, %.preheader861 ], [ %i.ny, %._crit_edge1451.loopexit ]
  %i.nz = zext nneg i8 %.sroa.18.0.copyload.lcssa to i64
  %i.oa = lshr i64 %.19669.lcssa, %i.nz           ; 2 uses
  %i.ob = trunc i64 %i.oa to i32
  %i.oc = and i32 %i.ob, 127
  %i.od = add nuw nsw i32 %i.oc, 11
  %i.oe = lshr i64 %i.oa, 7
  %reass.sub1733 = sub i32 %.19.lcssa, %.lcssa1407
  %i.of = add i32 %reass.sub1733, -7
  br label %bb.bf

bb.bf:                                            ; preds = %._crit_edge1431, %._crit_edge1451, %bb.bc
  %.20761 = phi ptr [ %.17758.lcssa, %bb.bc ], [ %.18759.lcssa, %._crit_edge1431 ], [ %.19760.lcssa, %._crit_edge1451 ] ; 2 uses
  %.20715 = phi i32 [ %.17712.lcssa, %bb.bc ], [ %.18713.lcssa, %._crit_edge1431 ], [ %.19714.lcssa, %._crit_edge1451 ] ; 2 uses
  %.20670 = phi i64 [ %i.my, %bb.bc ], [ %i.no, %._crit_edge1431 ], [ %i.oe, %._crit_edge1451 ] ; 2 uses
  %.20 = phi i32 [ %i.mz, %bb.bc ], [ %i.np, %._crit_edge1431 ], [ %i.of, %._crit_edge1451 ] ; 2 uses
  %.2630 = phi i32 [ %i.mx, %bb.bc ], [ %i.nn, %._crit_edge1431 ], [ %i.od, %._crit_edge1451 ] ; 5 uses
  %.0624 = phi i16 [ %i.mu, %bb.bc ], [ 0, %._crit_edge1431 ], [ 0, %._crit_edge1451 ] ; 5 uses
  %i.og = add i32 %.2630, %.lcssa145714701472
  %i.oh = icmp ugt i32 %i.og, %i.kl
  br i1 %i.oh, label %bb.bg, label %.preheader859.preheader

.preheader859.preheader:                          ; preds = %bb.bf
  %xtraiter3515 = and i32 %.2630, 3               ; 2 uses
  %lcmp.mod3516.not = icmp eq i32 %xtraiter3515, 0
  br i1 %lcmp.mod3516.not, label %.preheader859.prol.loopexit, label %.preheader859.prol

.preheader859.prol:                               ; preds = %.preheader859.preheader, %.preheader859.prol
  %.36311458.prol = phi i32 [ %i.oj, %.preheader859.prol ], [ %.2630, %.preheader859.preheader ]
  %i.oi = phi i32 [ %i.ok, %.preheader859.prol ], [ %.lcssa145714701472, %.preheader859.preheader ] ; 2 uses
  %prol.iter3517 = phi i32 [ %prol.iter3517.next, %.preheader859.prol ], [ 0, %.preheader859.preheader ]
  %i.oj = add i32 %.36311458.prol, -1             ; 2 uses
  %i.ok = add i32 %i.oi, 1                        ; 3 uses
  %i.ol = zext i32 %i.oi to i64
  %i.om = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.ol
  store i16 %.0624, ptr %i.om, align 2
  %prol.iter3517.next = add i32 %prol.iter3517, 1 ; 2 uses
  %prol.iter3517.cmp.not = icmp eq i32 %prol.iter3517.next, %xtraiter3515
  br i1 %prol.iter3517.cmp.not, label %.preheader859.prol.loopexit, label %.preheader859.prol, !llvm.loop !35

.preheader859.prol.loopexit:                      ; preds = %.preheader859.prol, %.preheader859.preheader
  %.lcssa3052.unr = phi i32 [ poison, %.preheader859.preheader ], [ %i.ok, %.preheader859.prol ]
  %.36311458.unr = phi i32 [ %.2630, %.preheader859.preheader ], [ %i.oj, %.preheader859.prol ]
  %.unr3518 = phi i32 [ %.lcssa145714701472, %.preheader859.preheader ], [ %i.ok, %.preheader859.prol ]
  %i.on = icmp ult i32 %.2630, 4
  br i1 %i.on, label %.loopexit860, label %.preheader859

bb.bg:                                            ; preds = %bb.bf
  store ptr @.str.10, ptr %i.ad, align 8
  store i32 27, ptr %i.c, align 8
  br label %.thread

.preheader859:                                    ; preds = %.preheader859.prol.loopexit, %.preheader859
  %.36311458 = phi i32 [ %i.oy, %.preheader859 ], [ %.36311458.unr, %.preheader859.prol.loopexit ]
  %i.oo = phi i32 [ %i.oz, %.preheader859 ], [ %.unr3518, %.preheader859.prol.loopexit ] ; 5 uses
  %i.op = add i32 %i.oo, 1
  %i.oq = zext i32 %i.oo to i64
  %i.or = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.oq
  store i16 %.0624, ptr %i.or, align 2
  %i.os = add i32 %i.oo, 2
  %i.ot = zext i32 %i.op to i64
  %i.ou = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.ot
  store i16 %.0624, ptr %i.ou, align 2
  %i.ov = add i32 %i.oo, 3
  %i.ow = zext i32 %i.os to i64
  %i.ox = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.ow
  store i16 %.0624, ptr %i.ox, align 2
  %i.oy = add i32 %.36311458, -4                  ; 2 uses
  %i.oz = add i32 %i.oo, 4                        ; 2 uses
  %i.pa = zext i32 %i.ov to i64
  %i.pb = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.pa
  store i16 %.0624, ptr %i.pb, align 2
  %.not818.3 = icmp eq i32 %i.oy, 0
  br i1 %.not818.3, label %.loopexit860, label %.preheader859, !llvm.loop !36

.loopexit860:                                     ; preds = %.preheader859, %.preheader859.prol.loopexit
  %.lcssa3052 = phi i32 [ %.lcssa3052.unr, %.preheader859.prol.loopexit ], [ %i.oz, %.preheader859 ] ; 2 uses
  store i32 %.lcssa3052, ptr %i.ai, align 4
  br label %bb.bh

bb.bh:                                            ; preds = %.loopexit860, %._crit_edge1464
  %.lcssa14571471 = phi i32 [ %i.lp, %._crit_edge1464 ], [ %.lcssa3052, %.loopexit860 ] ; 2 uses
  %.21762 = phi ptr [ %.16757.lcssa, %._crit_edge1464 ], [ %.20761, %.loopexit860 ] ; 2 uses
  %.21716 = phi i32 [ %.16711.lcssa, %._crit_edge1464 ], [ %.20715, %.loopexit860 ] ; 2 uses
  %.21671 = phi i64 [ %i.ln, %._crit_edge1464 ], [ %.20670, %.loopexit860 ] ; 2 uses
  %.21 = phi i32 [ %i.lo, %._crit_edge1464 ], [ %.20, %.loopexit860 ] ; 2 uses
  %i.pc = icmp ult i32 %.lcssa14571471, %i.kl
  br i1 %i.pc, label %.preheader867, label %._crit_edge1477, !llvm.loop !37

._crit_edge1477:                                  ; preds = %bb.bh, %bb.ax
  %.14755.lcssa = phi ptr [ %.13754, %bb.ax ], [ %.21762, %bb.bh ] ; 3 uses
  %.14709.lcssa = phi i32 [ %.13708, %bb.ax ], [ %.21716, %bb.bh ] ; 3 uses
  %.14664.lcssa = phi i64 [ %.13663, %bb.ax ], [ %.21671, %bb.bh ] ; 3 uses
  %.14.lcssa = phi i32 [ %.13, %bb.ax ], [ %.21, %bb.bh ] ; 3 uses
  store ptr %i.ak, ptr %i.al, align 8
  store ptr %i.ak, ptr %i.am, align 8
  store i32 9, ptr %i.an, align 8
  %i.pd = tail call i32 @zlib_inflate_table(i32 noundef 1, ptr noundef nonnull %i.aj, i32 noundef %i.kj, ptr noundef nonnull %i.al, ptr noundef nonnull %i.an, ptr noundef nonnull %i.ao) #17 ; 2 uses
  %.not819 = icmp eq i32 %i.pd, 0
  br i1 %.not819, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %._crit_edge1477
  store ptr @.str.11, ptr %i.ad, align 8
  store i32 27, ptr %i.c, align 8
  br label %.thread

bb.bj:                                            ; preds = %._crit_edge1477
  %i.pe = load ptr, ptr %i.al, align 8
  store ptr %i.pe, ptr %i.ap, align 8
  store i32 6, ptr %i.aq, align 4
  %i.pf = load i32, ptr %i.af, align 4
  %i.pg = zext i32 %i.pf to i64
  %i.ph = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.pg
  %i.pi = load i32, ptr %i.ag, align 8
  %i.pj = tail call i32 @zlib_inflate_table(i32 noundef 2, ptr noundef nonnull %i.ph, i32 noundef %i.pi, ptr noundef nonnull %i.al, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ao) #17 ; 2 uses
  %.not820 = icmp eq i32 %i.pj, 0
  br i1 %.not820, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  store ptr @.str.12, ptr %i.ad, align 8
  store i32 27, ptr %i.c, align 8
  br label %.thread

bb.bl:                                            ; preds = %bb.bj
  store i32 18, ptr %i.c, align 8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.g
  %.23764 = phi ptr [ %.14755.lcssa, %bb.bl ], [ %.0741, %bb.g ] ; 4 uses
  %.23718 = phi i32 [ %.14709.lcssa, %bb.bl ], [ %.0695, %bb.g ] ; 7 uses
  %.23673 = phi i64 [ %.14664.lcssa, %bb.bl ], [ %.0650, %bb.g ] ; 5 uses
  %.23 = phi i32 [ %.14.lcssa, %bb.bl ], [ %.0641, %bb.g ] ; 5 uses
  %.2 = phi i32 [ 0, %bb.bl ], [ %.0, %bb.g ]     ; 7 uses
  %i.pk = icmp ugt i32 %.23718, 5
  %i.pl = icmp ugt i32 %.0693, 257
  %or.cond = select i1 %i.pk, i1 %i.pl, i1 false
  br i1 %or.cond, label %bb.bn, label %.preheader887

.preheader887:                                    ; preds = %bb.bm
  %i.pm = load ptr, ptr %i.am, align 8            ; 4 uses
  %i.pn = load i32, ptr %i.an, align 8
  %notmask821 = shl nsw i32 -1, %i.pn
  %i.po = xor i32 %notmask821, -1                 ; 2 uses
  %i.pp = trunc i64 %.23673 to i32
  %i.pq = and i32 %i.po, %i.pp
  %i.pr = zext nneg i32 %i.pq to i64
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %i.pr ; 2 uses
  %.sroa.18.0..sroa_idx491483 = getelementptr inbounds nuw i8, ptr %i.ps, i64 1
  %.sroa.18.0.copyload501484 = load i8, ptr %.sroa.18.0..sroa_idx491483, align 1 ; 2 uses
  %i.pt = zext i8 %.sroa.18.0.copyload501484 to i32 ; 2 uses
  %.not8221485 = icmp ult i32 %.23, %i.pt
  br i1 %.not8221485, label %.lr.ph1490.preheader, label %._crit_edge1491

.lr.ph1490.preheader:                             ; preds = %.preheader887
  %i.pu = icmp eq i32 %.23718, 0
  br i1 %i.pu, label %.loopexit.loopexit2193, label %.lr.ph2873

.lr.ph2873:                                       ; preds = %.lr.ph1490.preheader
  %i.pv = zext nneg i32 %.23 to i64
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  store ptr %.0738, ptr %i.m, align 8
  %i.pw = zext i32 %.0693 to i64
  store i64 %i.pw, ptr %i.o, align 8
  store ptr %.23764, ptr %0, align 8
  %i.px = zext i32 %.23718 to i64
  store i64 %i.px, ptr %i.r, align 8
  store i64 %.23673, ptr %i.u, align 8
  store i32 %.23, ptr %i.w, align 8
  tail call void @inflate_fast(ptr noundef nonnull %0, i32 noundef %.0636) #17
  %i.py = load ptr, ptr %i.m, align 8
  %i.pz = load i64, ptr %i.o, align 8
  %i.qa = trunc i64 %i.pz to i32
  %i.qb = load ptr, ptr %0, align 8
  %i.qc = load i64, ptr %i.r, align 8
  %i.qd = trunc i64 %i.qc to i32
  %i.qe = load i64, ptr %i.u, align 8
  %i.qf = load i32, ptr %i.w, align 8
  br label %.thread

.lr.ph1490:                                       ; preds = %bb.bo
  %i.qg = icmp eq i32 %i.qh, 0
  br i1 %i.qg, label %.loopexit.loopexit2193, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph2873, %.lr.ph1490
  %.2476514862872 = phi ptr [ %.23764, %.lr.ph2873 ], [ %i.qi, %.lr.ph1490 ] ; 2 uses
  %.2471914872871 = phi i32 [ %.23718, %.lr.ph2873 ], [ %i.qh, %.lr.ph1490 ]
  %.2467414882870 = phi i64 [ %.23673, %.lr.ph2873 ], [ %i.qm, %.lr.ph1490 ]
  %indvars.iv21002869 = phi i64 [ %i.pv, %.lr.ph2873 ], [ %indvars.iv.next2101, %.lr.ph1490 ] ; 2 uses
  %i.qh = add i32 %.2471914872871, -1             ; 3 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %.2476514862872, i64 1 ; 2 uses
  %i.qj = load i8, ptr %.2476514862872, align 1
  %i.qk = zext i8 %i.qj to i64
  %i.ql = shl i64 %i.qk, %indvars.iv21002869
  %i.qm = add i64 %i.ql, %.2467414882870          ; 4 uses
  %indvars.iv.next2101 = add nuw nsw i64 %indvars.iv21002869, 8 ; 3 uses
  %i.qn = trunc i64 %i.qm to i32
  %i.qo = and i32 %i.po, %i.qn
  %i.qp = zext nneg i32 %i.qo to i64
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %i.qp ; 2 uses
  %.sroa.18.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.qq, i64 1
  %.sroa.18.0.copyload50 = load i8, ptr %.sroa.18.0..sroa_idx49, align 1 ; 3 uses
  %i.qr = zext i8 %.sroa.18.0.copyload50 to i64
  %.not822 = icmp samesign ult i64 %indvars.iv.next2101, %i.qr
  br i1 %.not822, label %.lr.ph1490, label %._crit_edge1491.loopexit

._crit_edge1491.loopexit:                         ; preds = %bb.bo
  %i.qs = zext i8 %.sroa.18.0.copyload50 to i32
  %i.qt = trunc nuw nsw i64 %indvars.iv.next2101 to i32
  br label %._crit_edge1491

._crit_edge1491:                                  ; preds = %._crit_edge1491.loopexit, %.preheader887
  %.lcssa1482 = phi ptr [ %i.ps, %.preheader887 ], [ %i.qq, %._crit_edge1491.loopexit ] ; 2 uses
  %.24765.lcssa = phi ptr [ %.23764, %.preheader887 ], [ %i.qi, %._crit_edge1491.loopexit ] ; 4 uses
  %.24719.lcssa = phi i32 [ %.23718, %.preheader887 ], [ %i.qh, %._crit_edge1491.loopexit ] ; 6 uses
  %.24674.lcssa = phi i64 [ %.23673, %.preheader887 ], [ %i.qm, %._crit_edge1491.loopexit ] ; 5 uses
  %.24.lcssa = phi i32 [ %.23, %.preheader887 ], [ %i.qt, %._crit_edge1491.loopexit ] ; 5 uses
  %.sroa.18.0.copyload50.lcssa = phi i8 [ %.sroa.18.0.copyload501484, %.preheader887 ], [ %.sroa.18.0.copyload50, %._crit_edge1491.loopexit ] ; 2 uses
  %.lcssa985 = phi i32 [ %i.pt, %.preheader887 ], [ %i.qs, %._crit_edge1491.loopexit ] ; 6 uses
  %.sroa.41.0..sroa_idx77.le = getelementptr inbounds nuw i8, ptr %.lcssa1482, i64 2
  %.sroa.41.0.copyload78.le = load i16, ptr %.sroa.41.0..sroa_idx77.le, align 2 ; 2 uses
  %.sroa.036.0.copyload45 = load i8, ptr %.lcssa1482, align 2 ; 3 uses
  %i.qu = add i8 %.sroa.036.0.copyload45, -1
  %or.cond850 = icmp ult i8 %i.qu, 15
  br i1 %or.cond850, label %.preheader885, label %bb.bq

.preheader885:                                    ; preds = %._crit_edge1491
  %i.qv = zext nneg i8 %.sroa.036.0.copyload45 to i32
  %i.qw = zext i16 %.sroa.41.0.copyload78.le to i32 ; 2 uses
  %i.qx = add nuw nsw i32 %.lcssa985, %i.qv
  %notmask824 = shl nsw i32 -1, %i.qx
  %i.qy = xor i32 %notmask824, -1                 ; 2 uses
  %i.qz = trunc i64 %.24674.lcssa to i32
  %i.ra = and i32 %i.qz, %i.qy
  %i.rb = lshr i32 %i.ra, %.lcssa985
  %i.rc = add nuw i32 %i.rb, %i.qw
  %i.rd = zext i32 %i.rc to i64
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %i.rd ; 2 uses
  %.sroa.18.0..sroa_idx511501 = getelementptr inbounds nuw i8, ptr %i.re, i64 1
  %.sroa.18.0.copyload521502 = load i8, ptr %.sroa.18.0..sroa_idx511501, align 1 ; 2 uses
  %i.rf = zext i8 %.sroa.18.0.copyload521502 to i32
  %i.rg = add nuw nsw i32 %.lcssa985, %i.rf
  %.not8251503 = icmp ugt i32 %i.rg, %.24.lcssa
  br i1 %.not8251503, label %.lr.ph1508.preheader, label %._crit_edge1509

.lr.ph1508.preheader:                             ; preds = %.preheader885
  %i.rh = icmp eq i32 %.24719.lcssa, 0
  br i1 %i.rh, label %.loopexit.loopexit2192, label %.lr.ph2894

.lr.ph2894:                                       ; preds = %.lr.ph1508.preheader
  %i.ri = zext nneg i32 %.24.lcssa to i64
  br label %bb.bp

.lr.ph1508:                                       ; preds = %bb.bp
  %i.rj = icmp eq i32 %i.rk, 0
  br i1 %i.rj, label %.loopexit.loopexit2192, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph2894, %.lr.ph1508
  %.2576615042893 = phi ptr [ %.24765.lcssa, %.lr.ph2894 ], [ %i.rl, %.lr.ph1508 ] ; 2 uses
  %.2572015052892 = phi i32 [ %.24719.lcssa, %.lr.ph2894 ], [ %i.rk, %.lr.ph1508 ]
  %.2567515062891 = phi i64 [ %.24674.lcssa, %.lr.ph2894 ], [ %i.rp, %.lr.ph1508 ]
  %indvars.iv21042890 = phi i64 [ %i.ri, %.lr.ph2894 ], [ %indvars.iv.next2105, %.lr.ph1508 ] ; 2 uses
  %i.rk = add i32 %.2572015052892, -1             ; 3 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %.2576615042893, i64 1 ; 2 uses
  %i.rm = load i8, ptr %.2576615042893, align 1
  %i.rn = zext i8 %i.rm to i64
  %i.ro = shl i64 %i.rn, %indvars.iv21042890
  %i.rp = add i64 %i.ro, %.2567515062891          ; 4 uses
  %indvars.iv.next2105 = add nuw nsw i64 %indvars.iv21042890, 8 ; 3 uses
  %i.rq = trunc i64 %i.rp to i32
  %i.rr = and i32 %i.rq, %i.qy
  %i.rs = lshr i32 %i.rr, %.lcssa985
  %i.rt = add nuw i32 %i.rs, %i.qw
  %i.ru = zext i32 %i.rt to i64
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %i.ru ; 2 uses
  %.sroa.18.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.rv, i64 1
  %.sroa.18.0.copyload52 = load i8, ptr %.sroa.18.0..sroa_idx51, align 1 ; 2 uses
  %i.rw = zext i8 %.sroa.18.0.copyload52 to i32
  %i.rx = add nuw nsw i32 %.lcssa985, %i.rw
  %i.ry = zext nneg i32 %i.rx to i64
  %.not825 = icmp samesign ult i64 %indvars.iv.next2105, %i.ry
  br i1 %.not825, label %.lr.ph1508, label %._crit_edge1509.loopexit

._crit_edge1509.loopexit:                         ; preds = %bb.bp
  %i.rz = trunc nuw nsw i64 %indvars.iv.next2105 to i32
  br label %._crit_edge1509

._crit_edge1509:                                  ; preds = %._crit_edge1509.loopexit, %.preheader885
  %.25766.lcssa = phi ptr [ %.24765.lcssa, %.preheader885 ], [ %i.rl, %._crit_edge1509.loopexit ]
  %.25720.lcssa = phi i32 [ %.24719.lcssa, %.preheader885 ], [ %i.rk, %._crit_edge1509.loopexit ]
  %.25675.lcssa = phi i64 [ %.24674.lcssa, %.preheader885 ], [ %i.rp, %._crit_edge1509.loopexit ]
  %.25.lcssa = phi i32 [ %.24.lcssa, %.preheader885 ], [ %i.rz, %._crit_edge1509.loopexit ]
  %.lcssa998 = phi ptr [ %i.re, %.preheader885 ], [ %i.rv, %._crit_edge1509.loopexit ] ; 2 uses
  %.sroa.18.0.copyload52.lcssa = phi i8 [ %.sroa.18.0.copyload521502, %.preheader885 ], [ %.sroa.18.0.copyload52, %._crit_edge1509.loopexit ]
  %.sroa.41.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %.lcssa998, i64 2
  %.sroa.41.0.copyload80 = load i16, ptr %.sroa.41.0..sroa_idx79, align 2
  %.sroa.036.0.copyload46 = load i8, ptr %.lcssa998, align 2
  %i.sa = zext nneg i8 %.sroa.18.0.copyload50.lcssa to i64
  %i.sb = lshr i64 %.25675.lcssa, %i.sa
  %i.sc = sub nuw i32 %.25.lcssa, %.lcssa985
  br label %bb.bq

bb.bq:                                            ; preds = %._crit_edge1491, %._crit_edge1509
  %.26767 = phi ptr [ %.25766.lcssa, %._crit_edge1509 ], [ %.24765.lcssa, %._crit_edge1491 ] ; 4 uses
  %.26721 = phi i32 [ %.25720.lcssa, %._crit_edge1509 ], [ %.24719.lcssa, %._crit_edge1491 ] ; 4 uses
  %.26676 = phi i64 [ %i.sb, %._crit_edge1509 ], [ %.24674.lcssa, %._crit_edge1491 ]
  %.26 = phi i32 [ %i.sc, %._crit_edge1509 ], [ %.24.lcssa, %._crit_edge1491 ]
  %.sroa.41.0 = phi i16 [ %.sroa.41.0.copyload80, %._crit_edge1509 ], [ %.sroa.41.0.copyload78.le, %._crit_edge1491 ]
  %.sroa.18.0 = phi i8 [ %.sroa.18.0.copyload52.lcssa, %._crit_edge1509 ], [ %.sroa.18.0.copyload50.lcssa, %._crit_edge1491 ] ; 2 uses
  %.sroa.036.0 = phi i8 [ %.sroa.036.0.copyload46, %._crit_edge1509 ], [ %.sroa.036.0.copyload45, %._crit_edge1491 ] ; 2 uses
  %i.sd = zext i8 %.sroa.18.0 to i32
  %i.se = zext nneg i8 %.sroa.18.0 to i64
  %i.sf = lshr i64 %.26676, %i.se                 ; 4 uses
  %i.sg = sub i32 %.26, %i.sd                     ; 4 uses
  %i.sh = zext i16 %.sroa.41.0 to i32
  store i32 %i.sh, ptr %i.ae, align 4
  %i.si = zext i8 %.sroa.036.0 to i32             ; 3 uses
  %i.sj = icmp eq i8 %.sroa.036.0, 0
  br i1 %i.sj, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  store i32 23, ptr %i.c, align 8
  br label %.thread

bb.bs:                                            ; preds = %bb.bq
  %i.sk = and i32 %i.si, 32
  %.not826 = icmp eq i32 %i.sk, 0
  br i1 %.not826, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  store i32 11, ptr %i.c, align 8
  br label %.thread

bb.bu:                                            ; preds = %bb.bs
  %i.sl = and i32 %i.si, 64
  %.not827 = icmp eq i32 %i.sl, 0
  br i1 %.not827, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  store ptr @.str.2, ptr %i.ad, align 8
  store i32 27, ptr %i.c, align 8
  br label %.thread

bb.bw:                                            ; preds = %bb.bu
  %i.sm = and i32 %i.si, 15                       ; 2 uses
  store i32 %i.sm, ptr %i.ar, align 4
  store i32 19, ptr %i.c, align 8
  br label %bb.bx

bb.bx:                                            ; preds = %._crit_edge2134, %bb.bw
  %i.sn = phi i32 [ %i.sm, %bb.bw ], [ %.pre2135, %._crit_edge2134 ] ; 6 uses
  %.27768 = phi ptr [ %.26767, %bb.bw ], [ %.0741, %._crit_edge2134 ] ; 4 uses
  %.27722 = phi i32 [ %.26721, %bb.bw ], [ %.0695, %._crit_edge2134 ] ; 6 uses
  %.27677 = phi i64 [ %i.sf, %bb.bw ], [ %.0650, %._crit_edge2134 ] ; 4 uses
  %.27 = phi i32 [ %i.sg, %bb.bw ], [ %.0641, %._crit_edge2134 ] ; 5 uses
  %.3 = phi i32 [ %.2, %bb.bw ], [ %.0, %._crit_edge2134 ] ; 2 uses
  %.not828 = icmp eq i32 %i.sn, 0
  br i1 %.not828, label %bb.by, label %.preheader883

.preheader883:                                    ; preds = %bb.bx
  %i.so = icmp ult i32 %.27, %i.sn
  br i1 %i.so, label %.lr.ph1520.preheader, label %._crit_edge1521

.lr.ph1520.preheader:                             ; preds = %.preheader883
  %i.sp = icmp eq i32 %.27722, 0
  br i1 %i.sp, label %.loopexit.loopexit2191, label %.lr.ph2915

.lr.ph1520:                                       ; preds = %.lr.ph2915
  %i.sq = icmp eq i32 %i.sr, 0
  br i1 %i.sq, label %.loopexit.loopexit2191, label %.lr.ph2915, !llvm.loop !38

.lr.ph2915:                                       ; preds = %.lr.ph1520.preheader, %.lr.ph1520
  %.2876915162914 = phi ptr [ %i.ss, %.lr.ph1520 ], [ %.27768, %.lr.ph1520.preheader ] ; 2 uses
  %.2872315172913 = phi i32 [ %i.sr, %.lr.ph1520 ], [ %.27722, %.lr.ph1520.preheader ]
  %.2867815182912 = phi i64 [ %i.sx, %.lr.ph1520 ], [ %.27677, %.lr.ph1520.preheader ]
  %.2815192911 = phi i32 [ %i.sy, %.lr.ph1520 ], [ %.27, %.lr.ph1520.preheader ] ; 2 uses
  %i.sr = add i32 %.2872315172913, -1             ; 3 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %.2876915162914, i64 1 ; 2 uses
  %i.st = load i8, ptr %.2876915162914, align 1
  %i.su = zext i8 %i.st to i64
  %i.sv = zext nneg i32 %.2815192911 to i64
  %i.sw = shl i64 %i.su, %i.sv
  %i.sx = add i64 %i.sw, %.2867815182912          ; 3 uses
  %i.sy = add i32 %.2815192911, 8                 ; 3 uses
  %i.sz = icmp ult i32 %i.sy, %i.sn
  br i1 %i.sz, label %.lr.ph1520, label %._crit_edge1521, !llvm.loop !38

._crit_edge1521:                                  ; preds = %.lr.ph2915, %.preheader883
  %.28769.lcssa = phi ptr [ %.27768, %.preheader883 ], [ %i.ss, %.lr.ph2915 ]
  %.28723.lcssa = phi i32 [ %.27722, %.preheader883 ], [ %i.sr, %.lr.ph2915 ]
  %.28678.lcssa = phi i64 [ %.27677, %.preheader883 ], [ %i.sx, %.lr.ph2915 ] ; 2 uses
  %.28.lcssa = phi i32 [ %.27, %.preheader883 ], [ %i.sy, %.lr.ph2915 ]
  %i.ta = trunc i64 %.28678.lcssa to i32
  %notmask829 = shl nsw i32 -1, %i.sn
  %i.tb = xor i32 %notmask829, -1
  %i.tc = and i32 %i.ta, %i.tb
  %i.td = load i32, ptr %i.ae, align 4
  %i.te = add i32 %i.td, %i.tc
  store i32 %i.te, ptr %i.ae, align 4
  %i.tf = zext nneg i32 %i.sn to i64
  %i.tg = lshr i64 %.28678.lcssa, %i.tf
  %i.th = sub nuw i32 %.28.lcssa, %i.sn
  br label %bb.by

bb.by:                                            ; preds = %._crit_edge1521, %bb.bx
  %.29770 = phi ptr [ %.28769.lcssa, %._crit_edge1521 ], [ %.27768, %bb.bx ]
  %.29724 = phi i32 [ %.28723.lcssa, %._crit_edge1521 ], [ %.27722, %bb.bx ]
  %.29679 = phi i64 [ %i.tg, %._crit_edge1521 ], [ %.27677, %bb.bx ]
  %.29 = phi i32 [ %i.th, %._crit_edge1521 ], [ %.27, %bb.bx ]
  store i32 20, ptr %i.c, align 8
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.g
  %.30771 = phi ptr [ %.29770, %bb.by ], [ %.0741, %bb.g ] ; 3 uses
  %.30725 = phi i32 [ %.29724, %bb.by ], [ %.0695, %bb.g ] ; 5 uses
  %.30680 = phi i64 [ %.29679, %bb.by ], [ %.0650, %bb.g ] ; 4 uses
  %.30 = phi i32 [ %.29, %bb.by ], [ %.0641, %bb.g ] ; 4 uses
  %.4 = phi i32 [ %.3, %bb.by ], [ %.0, %bb.g ]   ; 4 uses
  %i.ti = load ptr, ptr %i.ap, align 8            ; 4 uses
  %i.tj = load i32, ptr %i.aq, align 4
  %notmask830 = shl nsw i32 -1, %i.tj
  %i.tk = xor i32 %notmask830, -1                 ; 2 uses
  %i.tl = trunc i64 %.30680 to i32
  %i.tm = and i32 %i.tk, %i.tl
  %i.tn = zext nneg i32 %i.tm to i64
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %i.tn ; 2 uses
  %.sroa.18.0..sroa_idx531527 = getelementptr inbounds nuw i8, ptr %i.to, i64 1
  %.sroa.18.0.copyload541528 = load i8, ptr %.sroa.18.0..sroa_idx531527, align 1 ; 2 uses
  %i.tp = zext i8 %.sroa.18.0.copyload541528 to i32 ; 2 uses
  %.not8311529 = icmp ult i32 %.30, %i.tp
  br i1 %.not8311529, label %.lr.ph1535.preheader, label %._crit_edge1536

.lr.ph1535.preheader:                             ; preds = %bb.bz
  %i.tq = icmp eq i32 %.30725, 0
  br i1 %i.tq, label %.loopexit.loopexit2190, label %.lr.ph2936

.lr.ph2936:                                       ; preds = %.lr.ph1535.preheader
  %i.tr = zext nneg i32 %.30 to i64
  br label %bb.ca

.lr.ph1535:                                       ; preds = %bb.ca
  %i.ts = icmp eq i32 %i.tt, 0
  br i1 %i.ts, label %.loopexit.loopexit2190, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph2936, %.lr.ph1535
  %.3177215302935 = phi ptr [ %.30771, %.lr.ph2936 ], [ %i.tu, %.lr.ph1535 ] ; 2 uses
  %.3172615312934 = phi i32 [ %.30725, %.lr.ph2936 ], [ %i.tt, %.lr.ph1535 ]
  %.3168115322933 = phi i64 [ %.30680, %.lr.ph2936 ], [ %i.ty, %.lr.ph1535 ]
  %indvars.iv21092932 = phi i64 [ %i.tr, %.lr.ph2936 ], [ %indvars.iv.next2110, %.lr.ph1535 ] ; 2 uses
  %i.tt = add i32 %.3172615312934, -1             ; 3 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %.3177215302935, i64 1 ; 2 uses
  %i.tv = load i8, ptr %.3177215302935, align 1
  %i.tw = zext i8 %i.tv to i64
  %i.tx = shl i64 %i.tw, %indvars.iv21092932
  %i.ty = add i64 %i.tx, %.3168115322933          ; 4 uses
  %indvars.iv.next2110 = add nuw nsw i64 %indvars.iv21092932, 8 ; 3 uses
  %i.tz = trunc i64 %i.ty to i32
  %i.ua = and i32 %i.tk, %i.tz
  %i.ub = zext nneg i32 %i.ua to i64
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %i.ub ; 2 uses
  %.sroa.18.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.uc, i64 1
  %.sroa.18.0.copyload54 = load i8, ptr %.sroa.18.0..sroa_idx53, align 1 ; 3 uses
  %i.ud = zext i8 %.sroa.18.0.copyload54 to i64
  %.not831 = icmp samesign ult i64 %indvars.iv.next2110, %i.ud
  br i1 %.not831, label %.lr.ph1535, label %._crit_edge1536.loopexit

._crit_edge1536.loopexit:                         ; preds = %bb.ca
  %i.ue = zext i8 %.sroa.18.0.copyload54 to i32
  %i.uf = trunc nuw nsw i64 %indvars.iv.next2110 to i32
  br label %._crit_edge1536

._crit_edge1536:                                  ; preds = %._crit_edge1536.loopexit, %bb.bz
  %.lcssa1526 = phi ptr [ %i.to, %bb.bz ], [ %i.uc, %._crit_edge1536.loopexit ] ; 2 uses
  %.31772.lcssa = phi ptr [ %.30771, %bb.bz ], [ %i.tu, %._crit_edge1536.loopexit ] ; 4 uses
  %.31726.lcssa = phi i32 [ %.30725, %bb.bz ], [ %i.tt, %._crit_edge1536.loopexit ] ; 6 uses
  %.31681.lcssa = phi i64 [ %.30680, %bb.bz ], [ %i.ty, %._crit_edge1536.loopexit ] ; 5 uses
  %.31.lcssa = phi i32 [ %.30, %bb.bz ], [ %i.uf, %._crit_edge1536.loopexit ] ; 5 uses
  %.sroa.18.0.copyload54.lcssa = phi i8 [ %.sroa.18.0.copyload541528, %bb.bz ], [ %.sroa.18.0.copyload54, %._crit_edge1536.loopexit ] ; 2 uses
  %.lcssa1008 = phi i32 [ %i.tp, %bb.bz ], [ %i.ue, %._crit_edge1536.loopexit ] ; 6 uses
  %.sroa.41.0..sroa_idx81.le = getelementptr inbounds nuw i8, ptr %.lcssa1526, i64 2
  %.sroa.41.0.copyload82.le = load i16, ptr %.sroa.41.0..sroa_idx81.le, align 2 ; 2 uses
  %.sroa.036.0.copyload47 = load i8, ptr %.lcssa1526, align 2 ; 3 uses
  %i.ug = icmp ult i8 %.sroa.036.0.copyload47, 16
  br i1 %i.ug, label %.preheader880, label %bb.cc

.preheader880:                                    ; preds = %._crit_edge1536
  %i.uh = zext nneg i8 %.sroa.036.0.copyload47 to i32
  %i.ui = zext i16 %.sroa.41.0.copyload82.le to i32 ; 2 uses
  %i.uj = add nuw nsw i32 %.lcssa1008, %i.uh
  %notmask832 = shl nsw i32 -1, %i.uj
  %i.uk = xor i32 %notmask832, -1                 ; 2 uses
  %i.ul = trunc i64 %.31681.lcssa to i32
  %i.um = and i32 %i.ul, %i.uk
  %i.un = lshr i32 %i.um, %.lcssa1008
  %i.uo = add nuw i32 %i.un, %i.ui
  %i.up = zext i32 %i.uo to i64
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %i.up ; 2 uses
  %.sroa.18.0..sroa_idx551546 = getelementptr inbounds nuw i8, ptr %i.uq, i64 1
  %.sroa.18.0.copyload561547 = load i8, ptr %.sroa.18.0..sroa_idx551546, align 1 ; 2 uses
  %i.ur = zext i8 %.sroa.18.0.copyload561547 to i32
  %i.us = add nuw nsw i32 %.lcssa1008, %i.ur
  %.not8331548 = icmp ugt i32 %i.us, %.31.lcssa
  br i1 %.not8331548, label %.lr.ph1553.preheader, label %._crit_edge1554

.lr.ph1553.preheader:                             ; preds = %.preheader880
  %i.ut = icmp eq i32 %.31726.lcssa, 0
  br i1 %i.ut, label %.loopexit.loopexit2189, label %.lr.ph2957

.lr.ph2957:                                       ; preds = %.lr.ph1553.preheader
  %i.uu = zext nneg i32 %.31.lcssa to i64
  br label %bb.cb

.lr.ph1553:                                       ; preds = %bb.cb
  %i.uv = icmp eq i32 %i.uw, 0
  br i1 %i.uv, label %.loopexit.loopexit2189, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph2957, %.lr.ph1553
  %.3277315492956 = phi ptr [ %.31772.lcssa, %.lr.ph2957 ], [ %i.ux, %.lr.ph1553 ] ; 2 uses
  %.3272715502955 = phi i32 [ %.31726.lcssa, %.lr.ph2957 ], [ %i.uw, %.lr.ph1553 ]
  %.3268215512954 = phi i64 [ %.31681.lcssa, %.lr.ph2957 ], [ %i.vb, %.lr.ph1553 ]
  %indvars.iv21132953 = phi i64 [ %i.uu, %.lr.ph2957 ], [ %indvars.iv.next2114, %.lr.ph1553 ] ; 2 uses
  %i.uw = add i32 %.3272715502955, -1             ; 3 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %.3277315492956, i64 1 ; 2 uses
  %i.uy = load i8, ptr %.3277315492956, align 1
  %i.uz = zext i8 %i.uy to i64
  %i.va = shl i64 %i.uz, %indvars.iv21132953
  %i.vb = add i64 %i.va, %.3268215512954          ; 4 uses
  %indvars.iv.next2114 = add nuw nsw i64 %indvars.iv21132953, 8 ; 3 uses
  %i.vc = trunc i64 %i.vb to i32
  %i.vd = and i32 %i.vc, %i.uk
  %i.ve = lshr i32 %i.vd, %.lcssa1008
  %i.vf = add nuw i32 %i.ve, %i.ui
  %i.vg = zext i32 %i.vf to i64
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %i.vg ; 2 uses
  %.sroa.18.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.vh, i64 1
  %.sroa.18.0.copyload56 = load i8, ptr %.sroa.18.0..sroa_idx55, align 1 ; 2 uses
  %i.vi = zext i8 %.sroa.18.0.copyload56 to i32
  %i.vj = add nuw nsw i32 %.lcssa1008, %i.vi
  %i.vk = zext nneg i32 %i.vj to i64
  %.not833 = icmp samesign ult i64 %indvars.iv.next2114, %i.vk
  br i1 %.not833, label %.lr.ph1553, label %._crit_edge1554.loopexit

._crit_edge1554.loopexit:                         ; preds = %bb.cb
  %i.vl = trunc nuw nsw i64 %indvars.iv.next2114 to i32
  br label %._crit_edge1554

._crit_edge1554:                                  ; preds = %._crit_edge1554.loopexit, %.preheader880
  %.32773.lcssa = phi ptr [ %.31772.lcssa, %.preheader880 ], [ %i.ux, %._crit_edge1554.loopexit ]
  %.32727.lcssa = phi i32 [ %.31726.lcssa, %.preheader880 ], [ %i.uw, %._crit_edge1554.loopexit ]
  %.32682.lcssa = phi i64 [ %.31681.lcssa, %.preheader880 ], [ %i.vb, %._crit_edge1554.loopexit ]
  %.32.lcssa = phi i32 [ %.31.lcssa, %.preheader880 ], [ %i.vl, %._crit_edge1554.loopexit ]
  %.lcssa1021 = phi ptr [ %i.uq, %.preheader880 ], [ %i.vh, %._crit_edge1554.loopexit ] ; 2 uses
  %.sroa.18.0.copyload56.lcssa = phi i8 [ %.sroa.18.0.copyload561547, %.preheader880 ], [ %.sroa.18.0.copyload56, %._crit_edge1554.loopexit ]
  %.sroa.41.0..sroa_idx83 = getelementptr inbounds nuw i8, ptr %.lcssa1021, i64 2
  %.sroa.41.0.copyload84 = load i16, ptr %.sroa.41.0..sroa_idx83, align 2
  %.sroa.036.0.copyload48 = load i8, ptr %.lcssa1021, align 2
  %i.vm = zext nneg i8 %.sroa.18.0.copyload54.lcssa to i64
  %i.vn = lshr i64 %.32682.lcssa, %i.vm
  %i.vo = sub nuw i32 %.32.lcssa, %.lcssa1008
  br label %bb.cc

bb.cc:                                            ; preds = %._crit_edge1536, %._crit_edge1554
  %.33774 = phi ptr [ %.32773.lcssa, %._crit_edge1554 ], [ %.31772.lcssa, %._crit_edge1536 ] ; 2 uses
  %.33728 = phi i32 [ %.32727.lcssa, %._crit_edge1554 ], [ %.31726.lcssa, %._crit_edge1536 ] ; 2 uses
  %.33683 = phi i64 [ %i.vn, %._crit_edge1554 ], [ %.31681.lcssa, %._crit_edge1536 ]
  %.33 = phi i32 [ %i.vo, %._crit_edge1554 ], [ %.31.lcssa, %._crit_edge1536 ]
  %.sroa.41.1 = phi i16 [ %.sroa.41.0.copyload84, %._crit_edge1554 ], [ %.sroa.41.0.copyload82.le, %._crit_edge1536 ]
  %.sroa.18.1 = phi i8 [ %.sroa.18.0.copyload56.lcssa, %._crit_edge1554 ], [ %.sroa.18.0.copyload54.lcssa, %._crit_edge1536 ] ; 2 uses
  %.sroa.036.1 = phi i8 [ %.sroa.036.0.copyload48, %._crit_edge1554 ], [ %.sroa.036.0.copyload47, %._crit_edge1536 ]
  %i.vp = zext i8 %.sroa.18.1 to i32
  %i.vq = zext nneg i8 %.sroa.18.1 to i64
  %i.vr = lshr i64 %.33683, %i.vq                 ; 2 uses
  %i.vs = sub i32 %.33, %i.vp                     ; 2 uses
  %i.vt = zext i8 %.sroa.036.1 to i32             ; 2 uses
  %i.vu = and i32 %i.vt, 64
  %.not834 = icmp eq i32 %i.vu, 0
  br i1 %.not834, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  store ptr @.str.1, ptr %i.ad, align 8
  store i32 27, ptr %i.c, align 8
  br label %.thread

bb.ce:                                            ; preds = %bb.cc
  %i.vv = zext i16 %.sroa.41.1 to i32
  store i32 %i.vv, ptr %i.as, align 8
  %i.vw = and i32 %i.vt, 15                       ; 2 uses
  store i32 %i.vw, ptr %i.ar, align 4
  store i32 21, ptr %i.c, align 8
  br label %bb.cf

bb.cf:                                            ; preds = %._crit_edge2136, %bb.ce
  %i.vx = phi i32 [ %i.vw, %bb.ce ], [ %.pre2137, %._crit_edge2136 ] ; 6 uses
  %.34775 = phi ptr [ %.33774, %bb.ce ], [ %.0741, %._crit_edge2136 ] ; 4 uses
  %.34729 = phi i32 [ %.33728, %bb.ce ], [ %.0695, %._crit_edge2136 ] ; 6 uses
  %.34684 = phi i64 [ %i.vr, %bb.ce ], [ %.0650, %._crit_edge2136 ] ; 4 uses
  %.34 = phi i32 [ %i.vs, %bb.ce ], [ %.0641, %._crit_edge2136 ] ; 5 uses
  %.5 = phi i32 [ %.4, %bb.ce ], [ %.0, %._crit_edge2136 ] ; 3 uses
  %.not835 = icmp eq i32 %i.vx, 0
  br i1 %.not835, label %._crit_edge2138, label %.preheader878

._crit_edge2138:                                  ; preds = %bb.cf
  %.pre2139 = load i32, ptr %i.as, align 8
  br label %bb.cg

.preheader878:                                    ; preds = %bb.cf
  %i.vy = icmp ult i32 %.34, %i.vx
  br i1 %i.vy, label %.lr.ph1565.preheader, label %._crit_edge1566

.lr.ph1565.preheader:                             ; preds = %.preheader878
  %i.vz = icmp eq i32 %.34729, 0
  br i1 %i.vz, label %.loopexit.loopexit2188, label %.lr.ph2978

.lr.ph1565:                                       ; preds = %.lr.ph2978
  %i.wa = icmp eq i32 %i.wb, 0
  br i1 %i.wa, label %.loopexit.loopexit2188, label %.lr.ph2978, !llvm.loop !39

.lr.ph2978:                                       ; preds = %.lr.ph1565.preheader, %.lr.ph1565
  %.3577615612977 = phi ptr [ %i.wc, %.lr.ph1565 ], [ %.34775, %.lr.ph1565.preheader ] ; 2 uses
  %.3573015622976 = phi i32 [ %i.wb, %.lr.ph1565 ], [ %.34729, %.lr.ph1565.preheader ]
  %.3568515632975 = phi i64 [ %i.wh, %.lr.ph1565 ], [ %.34684, %.lr.ph1565.preheader ]
  %.3515642974 = phi i32 [ %i.wi, %.lr.ph1565 ], [ %.34, %.lr.ph1565.preheader ] ; 2 uses
  %i.wb = add i32 %.3573015622976, -1             ; 3 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %.3577615612977, i64 1 ; 2 uses
  %i.wd = load i8, ptr %.3577615612977, align 1
  %i.we = zext i8 %i.wd to i64
  %i.wf = zext nneg i32 %.3515642974 to i64
  %i.wg = shl i64 %i.we, %i.wf
  %i.wh = add i64 %i.wg, %.3568515632975          ; 3 uses
  %i.wi = add i32 %.3515642974, 8                 ; 3 uses
  %i.wj = icmp ult i32 %i.wi, %i.vx
  br i1 %i.wj, label %.lr.ph1565, label %._crit_edge1566, !llvm.loop !39

._crit_edge1566:                                  ; preds = %.lr.ph2978, %.preheader878
  %.35776.lcssa = phi ptr [ %.34775, %.preheader878 ], [ %i.wc, %.lr.ph2978 ]
  %.35730.lcssa = phi i32 [ %.34729, %.preheader878 ], [ %i.wb, %.lr.ph2978 ]
  %.35685.lcssa = phi i64 [ %.34684, %.preheader878 ], [ %i.wh, %.lr.ph2978 ] ; 2 uses
  %.35.lcssa = phi i32 [ %.34, %.preheader878 ], [ %i.wi, %.lr.ph2978 ]
  %i.wk = trunc i64 %.35685.lcssa to i32
  %notmask836 = shl nsw i32 -1, %i.vx
  %i.wl = xor i32 %notmask836, -1
  %i.wm = and i32 %i.wk, %i.wl
  %i.wn = load i32, ptr %i.as, align 8
  %i.wo = add i32 %i.wn, %i.wm                    ; 2 uses
  store i32 %i.wo, ptr %i.as, align 8
  %i.wp = zext nneg i32 %i.vx to i64
  %i.wq = lshr i64 %.35685.lcssa, %i.wp
  %i.wr = sub nuw i32 %.35.lcssa, %i.vx
  br label %bb.cg

bb.cg:                                            ; preds = %._crit_edge2138, %._crit_edge1566
  %i.ws = phi i32 [ %i.wo, %._crit_edge1566 ], [ %.pre2139, %._crit_edge2138 ]
  %.36777 = phi ptr [ %.35776.lcssa, %._crit_edge1566 ], [ %.34775, %._crit_edge2138 ] ; 2 uses
  %.36731 = phi i32 [ %.35730.lcssa, %._crit_edge1566 ], [ %.34729, %._crit_edge2138 ] ; 2 uses
  %.36686 = phi i64 [ %i.wq, %._crit_edge1566 ], [ %.34684, %._crit_edge2138 ] ; 2 uses
  %.36 = phi i32 [ %i.wr, %._crit_edge1566 ], [ %.34, %._crit_edge2138 ] ; 2 uses
  %i.wt = load i32, ptr %i.at, align 8
  %i.wu = sub i32 %.0636, %.0693
  %i.wv = add i32 %i.wu, %i.wt
  %i.ww = icmp ugt i32 %i.ws, %i.wv
  br i1 %i.ww, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store ptr @.str, ptr %i.ad, align 8
  store i32 27, ptr %i.c, align 8
  br label %.thread

bb.ci:                                            ; preds = %bb.cg
  store i32 22, ptr %i.c, align 8
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.g
  %.37778 = phi ptr [ %.36777, %bb.ci ], [ %.0741, %bb.g ] ; 3 uses
  %.37732 = phi i32 [ %.36731, %bb.ci ], [ %.0695, %bb.g ] ; 3 uses
  %.37687 = phi i64 [ %.36686, %bb.ci ], [ %.0650, %bb.g ] ; 3 uses
  %.37 = phi i32 [ %.36, %bb.ci ], [ %.0641, %bb.g ] ; 3 uses
  %.6 = phi i32 [ %.5, %bb.ci ], [ %.0, %bb.g ]   ; 3 uses
  %i.wx = icmp eq i32 %.0693, 0
  br i1 %i.wx, label %.loopexit, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.wy = sub i32 %.0636, %.0693                  ; 2 uses
  %i.wz = load i32, ptr %i.as, align 8            ; 3 uses
  %i.xa = icmp ugt i32 %i.wz, %i.wy
  br i1 %i.xa, label %bb.cl, label %bb.cp

bb.cl:                                            ; preds = %bb.ck
  %i.xb = sub nuw i32 %i.wz, %i.wy                ; 4 uses
  %i.xc = load i32, ptr %i.au, align 4            ; 3 uses
  %i.xd = icmp ugt i32 %i.xb, %i.xc
  br i1 %i.xd, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.xe = sub nuw i32 %i.xb, %i.xc                ; 2 uses
  %i.xf = load i32, ptr %i.aw, align 4
  %i.xg = sub i32 %i.xf, %i.xe
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  %i.xh = sub nuw i32 %i.xc, %i.xb
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %.sink2522 = phi i32 [ %i.xh, %bb.cn ], [ %i.xg, %bb.cm ]
  %.4632 = phi i32 [ %i.xb, %bb.cn ], [ %i.xe, %bb.cm ]
  %.sink2520 = load ptr, ptr %i.av, align 8
  %i.xi = zext i32 %.sink2522 to i64
  %i.xj = getelementptr inbounds nuw i8, ptr %.sink2520, i64 %i.xi
  %i.xk = load i32, ptr %i.ae, align 4            ; 2 uses
  %spec.select851 = tail call i32 @llvm.umin.i32(i32 %.4632, i32 %i.xk)
  br label %bb.cq

bb.cp:                                            ; preds = %bb.ck
  %i.xl = zext i32 %i.wz to i64
  %i.xm = sub nsw i64 0, %i.xl
  %i.xn = getelementptr inbounds i8, ptr %.0738, i64 %i.xm
  %i.xo = load i32, ptr %i.ae, align 4            ; 2 uses
  br label %bb.cq

bb.cq:                                            ; preds = %bb.co, %bb.cp
  %i.xp = phi i32 [ %i.xo, %bb.cp ], [ %i.xk, %bb.co ]
  %.5633 = phi i32 [ %i.xo, %bb.cp ], [ %spec.select851, %bb.co ]
  %.1626 = phi ptr [ %i.xn, %bb.cp ], [ %i.xj, %bb.co ] ; 2 uses
  %spec.select852 = tail call i32 @llvm.umin.i32(i32 %.5633, i32 %.0693) ; 6 uses
  %i.xq = sub i32 %i.xp, %spec.select852
  store i32 %i.xq, ptr %i.ae, align 4
  %i.xr = add i32 %spec.select852, -1
  %xtraiter3520 = and i32 %spec.select852, 7      ; 2 uses
  %lcmp.mod3521.not = icmp eq i32 %xtraiter3520, 0
  br i1 %lcmp.mod3521.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.cq, %.prol.preheader
  %.1739.prol = phi ptr [ %i.xu, %.prol.preheader ], [ %.0738, %bb.cq ] ; 2 uses
  %.7635.prol = phi i32 [ %i.xv, %.prol.preheader ], [ %spec.select852, %bb.cq ]
  %.2627.prol = phi ptr [ %i.xs, %.prol.preheader ], [ %.1626, %bb.cq ] ; 2 uses
  %prol.iter3522 = phi i32 [ %prol.iter3522.next, %.prol.preheader ], [ 0, %bb.cq ]
  %i.xs = getelementptr inbounds nuw i8, ptr %.2627.prol, i64 1 ; 2 uses
  %i.xt = load i8, ptr %.2627.prol, align 1
  %i.xu = getelementptr inbounds nuw i8, ptr %.1739.prol, i64 1 ; 3 uses
  store i8 %i.xt, ptr %.1739.prol, align 1
  %i.xv = add i32 %.7635.prol, -1                 ; 2 uses
  %prol.iter3522.next = add i32 %prol.iter3522, 1 ; 2 uses
  %prol.iter3522.cmp.not = icmp eq i32 %prol.iter3522.next, %xtraiter3520
  br i1 %prol.iter3522.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !40

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.cq
  %.lcssa3156.unr = phi ptr [ poison, %bb.cq ], [ %i.xu, %.prol.preheader ]
  %.1739.unr = phi ptr [ %.0738, %bb.cq ], [ %i.xu, %.prol.preheader ]
  %.7635.unr = phi i32 [ %spec.select852, %bb.cq ], [ %i.xv, %.prol.preheader ]
  %.2627.unr = phi ptr [ %.1626, %bb.cq ], [ %i.xs, %.prol.preheader ]
  %i.xw = icmp ult i32 %i.xr, 7
  br i1 %i.xw, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.1739 = phi ptr [ %i.yu, %.new ], [ %.1739.unr, %.prol.loopexit ] ; 9 uses
  %.7635 = phi i32 [ %i.yv, %.new ], [ %.7635.unr, %.prol.loopexit ]
  %.2627 = phi ptr [ %i.ys, %.new ], [ %.2627.unr, %.prol.loopexit ] ; 9 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %.2627, i64 1
  %i.xy = load i8, ptr %.2627, align 1
  %i.xz = getelementptr inbounds nuw i8, ptr %.1739, i64 1
  store i8 %i.xy, ptr %.1739, align 1
  %i.ya = getelementptr inbounds nuw i8, ptr %.2627, i64 2
  %i.yb = load i8, ptr %i.xx, align 1
  %i.yc = getelementptr inbounds nuw i8, ptr %.1739, i64 2
  store i8 %i.yb, ptr %i.xz, align 1
  %i.yd = getelementptr inbounds nuw i8, ptr %.2627, i64 3
  %i.ye = load i8, ptr %i.ya, align 1
  %i.yf = getelementptr inbounds nuw i8, ptr %.1739, i64 3
  store i8 %i.ye, ptr %i.yc, align 1
  %i.yg = getelementptr inbounds nuw i8, ptr %.2627, i64 4
  %i.yh = load i8, ptr %i.yd, align 1
  %i.yi = getelementptr inbounds nuw i8, ptr %.1739, i64 4
  store i8 %i.yh, ptr %i.yf, align 1
  %i.yj = getelementptr inbounds nuw i8, ptr %.2627, i64 5
  %i.yk = load i8, ptr %i.yg, align 1
  %i.yl = getelementptr inbounds nuw i8, ptr %.1739, i64 5
  store i8 %i.yk, ptr %i.yi, align 1
  %i.ym = getelementptr inbounds nuw i8, ptr %.2627, i64 6
  %i.yn = load i8, ptr %i.yj, align 1
  %i.yo = getelementptr inbounds nuw i8, ptr %.1739, i64 6
  store i8 %i.yn, ptr %i.yl, align 1
  %i.yp = getelementptr inbounds nuw i8, ptr %.2627, i64 7
  %i.yq = load i8, ptr %i.ym, align 1
  %i.yr = getelementptr inbounds nuw i8, ptr %.1739, i64 7
  store i8 %i.yq, ptr %i.yo, align 1
  %i.ys = getelementptr inbounds nuw i8, ptr %.2627, i64 8
  %i.yt = load i8, ptr %i.yp, align 1
  %i.yu = getelementptr inbounds nuw i8, ptr %.1739, i64 8 ; 2 uses
  store i8 %i.yt, ptr %i.yr, align 1
  %i.yv = add i32 %.7635, -8                      ; 2 uses
  %.not837.7 = icmp eq i32 %i.yv, 0
  br i1 %.not837.7, label %.unr-lcssa, label %.new, !llvm.loop !41

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %.lcssa3156 = phi ptr [ %.lcssa3156.unr, %.prol.loopexit ], [ %i.yu, %.new ] ; 2 uses
  %i.yw = sub i32 %.0693, %spec.select852         ; 2 uses
  %i.yx = load i32, ptr %i.ae, align 4
  %i.yy = icmp eq i32 %i.yx, 0
  br i1 %i.yy, label %bb.cr, label %.thread

bb.cr:                                            ; preds = %.unr-lcssa
  store i32 18, ptr %i.c, align 8
  br label %.thread

bb.cs:                                            ; preds = %bb.g
  %i.yz = icmp eq i32 %.0693, 0
  br i1 %i.yz, label %.loopexit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.za = load i32, ptr %i.ae, align 4
  %i.zb = trunc i32 %i.za to i8
  %i.zc = getelementptr inbounds nuw i8, ptr %.0738, i64 1
  store i8 %i.zb, ptr %.0738, align 1
  %i.zd = add i32 %.0693, -1
  store i32 18, ptr %i.c, align 8
  br label %.thread

bb.cu:                                            ; preds = %bb.g
  %i.ze = load i32, ptr %i.y, align 8
  %.not813 = icmp eq i32 %i.ze, 0
  br i1 %.not813, label %bb.dc, label %.preheader892

.preheader892:                                    ; preds = %bb.cu
  %i.zf = icmp ult i32 %.0641, 32
  br i1 %i.zf, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader892
  %i.zg = zext nneg i32 %.0641 to i64             ; 6 uses
  %i.zh = icmp eq i32 %.0695, 0
  br i1 %i.zh, label %.loopexit.loopexit1749, label %bb.cv

bb.cv:                                            ; preds = %.lr.ph.preheader
  %i.zi = add i32 %.0695, -1                      ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %.0741, i64 1 ; 3 uses
  %i.zk = load i8, ptr %.0741, align 1
  %i.zl = zext i8 %i.zk to i64
  %i.zm = shl nuw nsw i64 %i.zl, %i.zg
  %i.zn = add i64 %i.zm, %.0650                   ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %i.zg, 8     ; 3 uses
  %i.zo = icmp ult i32 %.0641, 24
  br i1 %i.zo, label %.lr.ph.1, label %._crit_edge.loopexit

.lr.ph.1:                                         ; preds = %bb.cv
  %i.zp = icmp eq i32 %i.zi, 0
  br i1 %i.zp, label %.loopexit.loopexit1749, label %bb.cw

bb.cw:                                            ; preds = %.lr.ph.1
  %i.zq = add i32 %.0695, -2                      ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %.0741, i64 2 ; 3 uses
  %i.zs = load i8, ptr %i.zj, align 1
  %i.zt = zext i8 %i.zs to i64
  %i.zu = shl nuw nsw i64 %i.zt, %indvars.iv.next
  %i.zv = add i64 %i.zu, %i.zn                    ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %i.zg, 16  ; 3 uses
  %i.zw = icmp ult i32 %.0641, 16
  br i1 %i.zw, label %.lr.ph.2, label %._crit_edge.loopexit

.lr.ph.2:                                         ; preds = %bb.cw
  %i.zx = icmp eq i32 %i.zq, 0
  br i1 %i.zx, label %.loopexit.loopexit1749, label %bb.cx

bb.cx:                                            ; preds = %.lr.ph.2
  %i.zy = add i32 %.0695, -3                      ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %.0741, i64 3 ; 3 uses
  %i.aaa = load i8, ptr %i.zr, align 1
  %i.aab = zext i8 %i.aaa to i64
  %i.aac = shl nuw nsw i64 %i.aab, %indvars.iv.next.1
  %i.aad = add i64 %i.aac, %i.zv                  ; 3 uses
  %indvars.iv.next.2 = add nuw nsw i64 %i.zg, 24  ; 3 uses
  %i.aae = icmp ult i32 %.0641, 8
  br i1 %i.aae, label %.lr.ph.3, label %._crit_edge.loopexit

.lr.ph.3:                                         ; preds = %bb.cx
  %i.aaf = icmp eq i32 %i.zy, 0
  br i1 %i.aaf, label %.loopexit.loopexit1749, label %bb.cy

bb.cy:                                            ; preds = %.lr.ph.3
  %i.aag = add i32 %.0695, -4
  %i.aah = getelementptr inbounds nuw i8, ptr %.0741, i64 4
  %i.aai = load i8, ptr %i.zz, align 1
  %i.aaj = zext i8 %i.aai to i64
  %i.aak = shl nuw nsw i64 %i.aaj, %indvars.iv.next.2
  %i.aal = add i64 %i.aak, %i.aad
  %indvars.iv.next.3 = or disjoint i64 %i.zg, 32
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.cy, %bb.cx, %bb.cw, %bb.cv
  %.lcssa3009 = phi i32 [ %i.zi, %bb.cv ], [ %i.zq, %bb.cw ], [ %i.zy, %bb.cx ], [ %i.aag, %bb.cy ]
  %.lcssa3008 = phi ptr [ %i.zj, %bb.cv ], [ %i.zr, %bb.cw ], [ %i.zz, %bb.cx ], [ %i.aah, %bb.cy ]
  %.lcssa3007 = phi i64 [ %i.zn, %bb.cv ], [ %i.zv, %bb.cw ], [ %i.aad, %bb.cx ], [ %i.aal, %bb.cy ]
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next, %bb.cv ], [ %indvars.iv.next.1, %bb.cw ], [ %indvars.iv.next.2, %bb.cx ], [ %indvars.iv.next.3, %bb.cy ]
  %i.aam = trunc nuw nsw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader892
  %.38779.lcssa = phi ptr [ %.0741, %.preheader892 ], [ %.lcssa3008, %._crit_edge.loopexit ] ; 2 uses
  %.38733.lcssa = phi i32 [ %.0695, %.preheader892 ], [ %.lcssa3009, %._crit_edge.loopexit ] ; 2 uses
  %.38688.lcssa = phi i64 [ %.0650, %.preheader892 ], [ %.lcssa3007, %._crit_edge.loopexit ] ; 2 uses
  %.38.lcssa = phi i32 [ %.0641, %.preheader892 ], [ %i.aam, %._crit_edge.loopexit ]
  %i.aan = sub i32 %.0636, %.0693                 ; 2 uses
  %i.aao = zext i32 %i.aan to i64                 ; 3 uses
  %i.aap = load i64, ptr %i.z, align 8
  %i.aaq = add i64 %i.aap, %i.aao
  store i64 %i.aaq, ptr %i.z, align 8
  %i.aar = load i64, ptr %i.aa, align 8
  %i.aas = add i64 %i.aar, %i.aao
  store i64 %i.aas, ptr %i.aa, align 8
  %.not814 = icmp eq i32 %.0636, %.0693
  br i1 %.not814, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %._crit_edge
  %i.aat = load i64, ptr %i.ab, align 8
  %i.aau = sub nsw i64 0, %i.aao
  %i.aav = getelementptr inbounds i8, ptr %.0738, i64 %i.aau
  %i.aaw = tail call fastcc i64 @zlib_adler32(i64 noundef %i.aat, ptr noundef nonnull %i.aav, i32 noundef %i.aan) #17 ; 2 uses
  store i64 %i.aaw, ptr %i.ab, align 8
  store i64 %i.aaw, ptr %i.ac, align 8
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %._crit_edge
  %trunc = trunc i64 %.38688.lcssa to i32
  %rev = tail call i32 @llvm.bswap.i32(i32 %trunc)
  %i.aax = zext i32 %rev to i64
  %i.aay = load i64, ptr %i.ab, align 8
  %.not815 = icmp eq i64 %i.aay, %i.aax
  br i1 %.not815, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  store ptr @.str.13, ptr %i.ad, align 8
  store i32 27, ptr %i.c, align 8
  br label %.thread

bb.dc:                                            ; preds = %bb.da, %bb.cu
  %.39780 = phi ptr [ %.0741, %bb.cu ], [ %.38779.lcssa, %bb.da ]
  %.39734 = phi i32 [ %.0695, %bb.cu ], [ %.38733.lcssa, %bb.da ]
  %.39689 = phi i64 [ %.0650, %bb.cu ], [ 0, %bb.da ]
  %.39 = phi i32 [ %.0641, %bb.cu ], [ 0, %bb.da ]
  %.1637 = phi i32 [ %.0636, %bb.cu ], [ %.0693, %bb.da ]
  store i32 26, ptr %i.c, align 8
  br label %.loopexit

.thread:                                          ; preds = %bb.bb, %bb.bg, %.unr-lcssa, %bb.cr, %bb.db, %bb.ct, %bb.ch, %bb.cd, %bb.bv, %bb.bt, %bb.br, %bb.bn, %bb.bk, %bb.bi, %bb.av, %bb.at, %bb.aq, %bb.ap, %bb.al, %bb.af, %bb.aa, %bb.q, %bb.p, %bb.n, %bb.l, %bb.i
  %.41782 = phi ptr [ %.0741, %bb.i ], [ %.1742.lcssa, %bb.l ], [ %.1742.lcssa, %bb.n ], [ %.1742.lcssa, %bb.p ], [ %.1742.lcssa, %bb.q ], [ %.5746, %bb.aa ], [ %.6747.lcssa, %bb.af ], [ %.7748.lcssa, %bb.al ], [ %i.gs, %bb.ap ], [ %.8749, %bb.aq ], [ %.9750.lcssa, %bb.at ], [ %.11752.lcssa, %bb.av ], [ %.17758.lcssa, %bb.bb ], [ %.14755.lcssa, %bb.bi ], [ %.14755.lcssa, %bb.bk ], [ %i.qb, %bb.bn ], [ %.26767, %bb.br ], [ %.26767, %bb.bt ], [ %.26767, %bb.bv ], [ %.33774, %bb.cd ], [ %.36777, %bb.ch ], [ %.37778, %bb.cr ], [ %.37778, %.unr-lcssa ], [ %.0741, %bb.ct ], [ %.38779.lcssa, %bb.db ], [ %.20761, %bb.bg ]
  %.2740 = phi ptr [ %.0738, %bb.i ], [ %.0738, %bb.l ], [ %.0738, %bb.n ], [ %.0738, %bb.p ], [ %.0738, %bb.q ], [ %.0738, %bb.aa ], [ %.0738, %bb.af ], [ %.0738, %bb.al ], [ %i.gu, %bb.ap ], [ %.0738, %bb.aq ], [ %.0738, %bb.at ], [ %.0738, %bb.av ], [ %.0738, %bb.bb ], [ %.0738, %bb.bi ], [ %.0738, %bb.bk ], [ %i.py, %bb.bn ], [ %.0738, %bb.br ], [ %.0738, %bb.bt ], [ %.0738, %bb.bv ], [ %.0738, %bb.cd ], [ %.0738, %bb.ch ], [ %.lcssa3156, %bb.cr ], [ %.lcssa3156, %.unr-lcssa ], [ %i.zc, %bb.ct ], [ %.0738, %bb.db ], [ %.0738, %bb.bg ]
  %.41736 = phi i32 [ %.0695, %bb.i ], [ %.1696.lcssa, %bb.l ], [ %.1696.lcssa, %bb.n ], [ %.1696.lcssa, %bb.p ], [ %.1696.lcssa, %bb.q ], [ %.5700, %bb.aa ], [ %.6701.lcssa, %bb.af ], [ %.7702.lcssa, %bb.al ], [ %i.gr, %bb.ap ], [ %.8703, %bb.aq ], [ %.9704.lcssa, %bb.at ], [ %.11706.lcssa, %bb.av ], [ %.17712.lcssa, %bb.bb ], [ %.14709.lcssa, %bb.bi ], [ %.14709.lcssa, %bb.bk ], [ %i.qd, %bb.bn ], [ %.26721, %bb.br ], [ %.26721, %bb.bt ], [ %.26721, %bb.bv ], [ %.33728, %bb.cd ], [ %.36731, %bb.ch ], [ %.37732, %bb.cr ], [ %.37732, %.unr-lcssa ], [ %.0695, %bb.ct ], [ %.38733.lcssa, %bb.db ], [ %.20715, %bb.bg ]
  %.1694 = phi i32 [ %.0693, %bb.i ], [ %.0693, %bb.l ], [ %.0693, %bb.n ], [ %.0693, %bb.p ], [ %.0693, %bb.q ], [ %.0693, %bb.aa ], [ %.0693, %bb.af ], [ %.0693, %bb.al ], [ %i.gt, %bb.ap ], [ %.0693, %bb.aq ], [ %.0693, %bb.at ], [ %.0693, %bb.av ], [ %.0693, %bb.bb ], [ %.0693, %bb.bi ], [ %.0693, %bb.bk ], [ %i.qa, %bb.bn ], [ %.0693, %bb.br ], [ %.0693, %bb.bt ], [ %.0693, %bb.bv ], [ %.0693, %bb.cd ], [ %.0693, %bb.ch ], [ %i.yw, %bb.cr ], [ %i.yw, %.unr-lcssa ], [ %i.zd, %bb.ct ], [ %.0693, %bb.db ], [ %.0693, %bb.bg ]
  %.41691 = phi i64 [ %.0650, %bb.i ], [ %.1651.lcssa, %bb.l ], [ %.1651.lcssa, %bb.n ], [ %i.cj, %bb.p ], [ 0, %bb.q ], [ %i.eh, %bb.aa ], [ %i.ev, %bb.af ], [ %.7657.lcssa, %bb.al ], [ %.8658, %bb.ap ], [ %.8658, %bb.aq ], [ %i.hv, %bb.at ], [ %.11661.lcssa, %bb.av ], [ %i.mo, %bb.bb ], [ %.14664.lcssa, %bb.bi ], [ %.14664.lcssa, %bb.bk ], [ %i.qe, %bb.bn ], [ %i.sf, %bb.br ], [ %i.sf, %bb.bt ], [ %i.sf, %bb.bv ], [ %i.vr, %bb.cd ], [ %.36686, %bb.ch ], [ %.37687, %bb.cr ], [ %.37687, %.unr-lcssa ], [ %.0650, %bb.ct ], [ %.38688.lcssa, %bb.db ], [ %.20670, %bb.bg ]
  %.41 = phi i32 [ %.0641, %bb.i ], [ %.1642.lcssa, %bb.l ], [ %.1642.lcssa, %bb.n ], [ %i.cp, %bb.p ], [ 0, %bb.q ], [ %i.ei, %bb.aa ], [ %i.ew, %bb.af ], [ %.7648.lcssa, %bb.al ], [ %.8649, %bb.ap ], [ %.8649, %bb.aq ], [ %i.hw, %bb.at ], [ %.11.lcssa, %bb.av ], [ %i.mp, %bb.bb ], [ %.14.lcssa, %bb.bi ], [ %.14.lcssa, %bb.bk ], [ %i.qf, %bb.bn ], [ %i.sg, %bb.br ], [ %i.sg, %bb.bt ], [ %i.sg, %bb.bv ], [ %i.vs, %bb.cd ], [ %.36, %bb.ch ], [ %.37, %bb.cr ], [ %.37, %.unr-lcssa ], [ %.0641, %bb.ct ], [ %.38.lcssa, %bb.db ], [ %.20, %bb.bg ]
  %.3639 = phi i32 [ %.0636, %bb.i ], [ %.0636, %bb.l ], [ %.0636, %bb.n ], [ %.0636, %bb.p ], [ %.0636, %bb.q ], [ %.0636, %bb.aa ], [ %.0636, %bb.af ], [ %.0636, %bb.al ], [ %.0636, %bb.ap ], [ %.0636, %bb.aq ], [ %.0636, %bb.at ], [ %.0636, %bb.av ], [ %.0636, %bb.bb ], [ %.0636, %bb.bi ], [ %.0636, %bb.bk ], [ %.0636, %bb.bn ], [ %.0636, %bb.br ], [ %.0636, %bb.bt ], [ %.0636, %bb.bv ], [ %.0636, %bb.cd ], [ %.0636, %bb.ch ], [ %.0636, %bb.cr ], [ %.0636, %.unr-lcssa ], [ %.0636, %bb.ct ], [ %.0693, %bb.db ], [ %.0636, %bb.bg ]
  %.7 = phi i32 [ %.0, %bb.i ], [ %.0, %bb.l ], [ %.0, %bb.n ], [ %.0, %bb.p ], [ %.0, %bb.q ], [ %.0, %bb.aa ], [ %.0, %bb.af ], [ %.0, %bb.al ], [ %.0, %bb.ap ], [ %.0, %bb.aq ], [ %.0, %bb.at ], [ %i.ki, %bb.av ], [ %.1, %bb.bb ], [ %i.pd, %bb.bi ], [ %i.pj, %bb.bk ], [ %.2, %bb.bn ], [ %.2, %bb.br ], [ %.2, %bb.bt ], [ %.2, %bb.bv ], [ %.4, %bb.cd ], [ %.5, %bb.ch ], [ %.6, %bb.cr ], [ %.6, %.unr-lcssa ], [ %.0, %bb.ct ], [ %.0, %bb.db ], [ %.1, %bb.bg ]
  %.pre2126 = load i32, ptr %i.c, align 8
  br label %bb.g

.loopexit.loopexit:                               ; preds = %.lr.ph1463
  %15 = trunc nuw nsw i64 %indvars.iv2097 to i32
  br label %.loopexit

.loopexit.loopexit1734:                           ; preds = %.lr.ph1450
  %i.aaz = trunc nuw nsw i64 %indvars.iv2094 to i32
  br label %.loopexit

.loopexit.loopexit1735:                           ; preds = %.lr.ph1440
  %i.aba = trunc nuw nsw i64 %indvars.iv2091 to i32
  br label %.loopexit

.loopexit.loopexit1736:                           ; preds = %.lr.ph1430
  %i.abb = trunc nuw nsw i64 %indvars.iv2088 to i32
  br label %.loopexit

.loopexit.loopexit1738:                           ; preds = %.lr.ph1726.1, %.lr.ph1726.preheader
  %indvars.iv2123.lcssa = phi i64 [ %i.bm, %.lr.ph1726.preheader ], [ %indvars.iv.next2124, %.lr.ph1726.1 ]
  %.16511724.lcssa = phi i64 [ %.0650, %.lr.ph1726.preheader ], [ %i.bt, %.lr.ph1726.1 ]
  %.17421722.lcssa = phi ptr [ %.0741, %.lr.ph1726.preheader ], [ %i.bp, %.lr.ph1726.1 ]
  %i.abc = trunc nuw nsw i64 %indvars.iv2123.lcssa to i32
  br label %.loopexit

.loopexit.loopexit1739:                           ; preds = %.lr.ph1586.3, %.lr.ph1586.2, %.lr.ph1586.1, %.lr.ph1586.preheader
  %indvars.iv2120.lcssa = phi i64 [ %i.bh, %.lr.ph1586.preheader ], [ %indvars.iv.next2121, %.lr.ph1586.1 ], [ %indvars.iv.next2121.1, %.lr.ph1586.2 ], [ %indvars.iv.next2121.2, %.lr.ph1586.3 ]
  %.26521584.lcssa = phi i64 [ %.0650, %.lr.ph1586.preheader ], [ %i.cy, %.lr.ph1586.1 ], [ %i.dg, %.lr.ph1586.2 ], [ %i.do, %.lr.ph1586.3 ]
  %.27431582.lcssa = phi ptr [ %.0741, %.lr.ph1586.preheader ], [ %i.cu, %.lr.ph1586.1 ], [ %i.dc, %.lr.ph1586.2 ], [ %i.dk, %.lr.ph1586.3 ]
  %i.abd = trunc nuw nsw i64 %indvars.iv2120.lcssa to i32
  br label %.loopexit

.loopexit.loopexit1740:                           ; preds = %.lr.ph1576.3, %.lr.ph1576.2, %.lr.ph1576.1, %.lr.ph1576.preheader
  %indvars.iv2118.lcssa = phi i64 [ %i.fd, %.lr.ph1576.preheader ], [ %indvars.iv.next2119, %.lr.ph1576.1 ], [ %indvars.iv.next2119.1, %.lr.ph1576.2 ], [ %indvars.iv.next2119.2, %.lr.ph1576.3 ]
  %.76571573.lcssa = phi i64 [ %i.ez, %.lr.ph1576.preheader ], [ %i.fk, %.lr.ph1576.1 ], [ %i.fr, %.lr.ph1576.2 ], [ %i.fz, %.lr.ph1576.3 ]
  %.77481571.lcssa = phi ptr [ %.0741, %.lr.ph1576.preheader ], [ %i.fg, %.lr.ph1576.1 ], [ %i.fn, %.lr.ph1576.2 ], [ %i.fv, %.lr.ph1576.3 ]
  %i.abe = trunc nuw nsw i64 %indvars.iv2118.lcssa to i32
  br label %.loopexit

.loopexit.loopexit1748:                           ; preds = %.lr.ph1259.1, %.lr.ph1259.preheader
  %indvars.iv2079.lcssa = phi i64 [ %i.be, %.lr.ph1259.preheader ], [ %indvars.iv.next2080, %.lr.ph1259.1 ]
  %.96591257.lcssa = phi i64 [ %.0650, %.lr.ph1259.preheader ], [ %i.hc, %.lr.ph1259.1 ]
  %.97501255.lcssa = phi ptr [ %.0741, %.lr.ph1259.preheader ], [ %i.gy, %.lr.ph1259.1 ]
  %i.abf = trunc nuw nsw i64 %indvars.iv2079.lcssa to i32
  br label %.loopexit

.loopexit.loopexit1749:                           ; preds = %.lr.ph.3, %.lr.ph.2, %.lr.ph.1, %.lr.ph.preheader
  %indvars.iv.lcssa = phi i64 [ %i.zg, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph.1 ], [ %indvars.iv.next.1, %.lr.ph.2 ], [ %indvars.iv.next.2, %.lr.ph.3 ]
  %.386881250.lcssa = phi i64 [ %.0650, %.lr.ph.preheader ], [ %i.zn, %.lr.ph.1 ], [ %i.zv, %.lr.ph.2 ], [ %i.aad, %.lr.ph.3 ]
  %.387791248.lcssa = phi ptr [ %.0741, %.lr.ph.preheader ], [ %i.zj, %.lr.ph.1 ], [ %i.zr, %.lr.ph.2 ], [ %i.zz, %.lr.ph.3 ]
  %i.abg = trunc nuw nsw i64 %indvars.iv.lcssa to i32
  br label %.loopexit

.loopexit.loopexit2187:                           ; preds = %.lr.ph1416.preheader, %.lr.ph1416
  %.156651414.lcssa = phi i64 [ %i.lb, %.lr.ph1416 ], [ %.146641475, %.lr.ph1416.preheader ]
  %i.abh = zext i32 %.147091474 to i64
  %i.abi = shl i32 %.147091474, 3
  %i.abj = add i32 %i.abi, %.141476
  %scevgep.le = getelementptr i8, ptr %.147551473, i64 %i.abh
  br label %.loopexit

.loopexit.loopexit2188:                           ; preds = %.lr.ph1565.preheader, %.lr.ph1565
  %.356851563.lcssa = phi i64 [ %i.wh, %.lr.ph1565 ], [ %.34684, %.lr.ph1565.preheader ]
  %i.abk = shl i32 %.34729, 3
  %i.abl = add i32 %.34, %i.abk
  %i.abm = zext i32 %.34729 to i64
  %scevgep2117.le = getelementptr i8, ptr %.34775, i64 %i.abm
  br label %.loopexit

.loopexit.loopexit2189:                           ; preds = %.lr.ph1553.preheader, %.lr.ph1553
  %.326821551.lcssa = phi i64 [ %i.vb, %.lr.ph1553 ], [ %.31681.lcssa, %.lr.ph1553.preheader ]
  %i.abn = zext i32 %.31726.lcssa to i64
  %i.abo = shl i32 %.31726.lcssa, 3
  %i.abp = add i32 %i.abo, %.31.lcssa
  %scevgep2115.le = getelementptr i8, ptr %.31772.lcssa, i64 %i.abn
  br label %.loopexit

.loopexit.loopexit2190:                           ; preds = %.lr.ph1535.preheader, %.lr.ph1535
  %.316811532.lcssa = phi i64 [ %i.ty, %.lr.ph1535 ], [ %.30680, %.lr.ph1535.preheader ]
  %i.abq = zext i32 %.30725 to i64
  %i.abr = shl i32 %.30725, 3
  %i.abs = add i32 %i.abr, %.30
  %scevgep2111.le = getelementptr i8, ptr %.30771, i64 %i.abq
  br label %.loopexit

.loopexit.loopexit2191:                           ; preds = %.lr.ph1520.preheader, %.lr.ph1520
  %.286781518.lcssa = phi i64 [ %i.sx, %.lr.ph1520 ], [ %.27677, %.lr.ph1520.preheader ]
  %i.abt = shl i32 %.27722, 3
  %i.abu = add i32 %.27, %i.abt
  %i.abv = zext i32 %.27722 to i64
  %scevgep2108.le = getelementptr i8, ptr %.27768, i64 %i.abv
  br label %.loopexit

.loopexit.loopexit2192:                           ; preds = %.lr.ph1508.preheader, %.lr.ph1508
  %.256751506.lcssa = phi i64 [ %i.rp, %.lr.ph1508 ], [ %.24674.lcssa, %.lr.ph1508.preheader ]
  %i.abw = zext i32 %.24719.lcssa to i64
  %i.abx = shl i32 %.24719.lcssa, 3
  %i.aby = add i32 %i.abx, %.24.lcssa
  %scevgep2106.le = getelementptr i8, ptr %.24765.lcssa, i64 %i.abw
  br label %.loopexit

.loopexit.loopexit2193:                           ; preds = %.lr.ph1490.preheader, %.lr.ph1490
  %.246741488.lcssa = phi i64 [ %i.qm, %.lr.ph1490 ], [ %.23673, %.lr.ph1490.preheader ]
  %i.abz = zext i32 %.23718 to i64
  %i.aca = shl i32 %.23718, 3
  %i.acb = add i32 %i.aca, %.23
  %scevgep2102.le = getelementptr i8, ptr %.23764, i64 %i.abz
  br label %.loopexit

.loopexit.loopexit2997:                           ; preds = %bb.g
  br label %.loopexit

.loopexit:                                        ; preds = %bb.y, %bb.ao, %bb.cj, %bb.cs, %.lr.ph1595, %.lr.ph1269, %bb.g, %.loopexit.loopexit2997, %.loopexit.loopexit2193, %.loopexit.loopexit2192, %.loopexit.loopexit2191, %.loopexit.loopexit2190, %.loopexit.loopexit2189, %.loopexit.loopexit2188, %.loopexit.loopexit2187, %.loopexit.loopexit1749, %.loopexit.loopexit1748, %.loopexit.loopexit1740, %.loopexit.loopexit1739, %.loopexit.loopexit1738, %.loopexit.loopexit1736, %.loopexit.loopexit1735, %.loopexit.loopexit1734, %.loopexit.loopexit, %bb.dc
  %.06932007 = phi i32 [ %.0693, %.loopexit.loopexit1736 ], [ %.0693, %bb.g ], [ %.0693, %.loopexit.loopexit2192 ], [ %.0693, %.loopexit.loopexit2191 ], [ %.0693, %.loopexit.loopexit1734 ], [ %.0693, %.loopexit.loopexit2190 ], [ %.0693, %.loopexit.loopexit2189 ], [ %.0693, %.loopexit.loopexit1735 ], [ %.0693, %.loopexit.loopexit1748 ], [ %.0693, %.loopexit.loopexit2193 ], [ %.0693, %.lr.ph1269 ], [ %.0693, %.loopexit.loopexit1738 ], [ %.0693, %bb.dc ], [ %.0693, %.loopexit.loopexit1739 ], [ %.0693, %.loopexit.loopexit1740 ], [ %.0693, %.loopexit.loopexit2187 ], [ %.0693, %.loopexit.loopexit2188 ], [ %.0693, %.loopexit.loopexit ], [ %.0693, %.loopexit.loopexit1749 ], [ %.0693, %bb.y ], [ %.0693, %bb.ao ], [ 0, %bb.cj ], [ 0, %bb.cs ], [ %.0693, %.lr.ph1595 ], [ %.0693, %.loopexit.loopexit2997 ]
  %.42783 = phi ptr [ %.187591426, %.loopexit.loopexit1736 ], [ %.0741, %bb.g ], [ %scevgep2106.le, %.loopexit.loopexit2192 ], [ %scevgep2108.le, %.loopexit.loopexit2191 ], [ %.197601446, %.loopexit.loopexit1734 ], [ %scevgep2111.le, %.loopexit.loopexit2190 ], [ %scevgep2115.le, %.loopexit.loopexit2189 ], [ %.177581436, %.loopexit.loopexit1735 ], [ %.97501255.lcssa, %.loopexit.loopexit1748 ], [ %scevgep2102.le, %.loopexit.loopexit2193 ], [ %.117521395, %.lr.ph1269 ], [ %.17421722.lcssa, %.loopexit.loopexit1738 ], [ %.39780, %bb.dc ], [ %.27431582.lcssa, %.loopexit.loopexit1739 ], [ %.77481571.lcssa, %.loopexit.loopexit1740 ], [ %scevgep.le, %.loopexit.loopexit2187 ], [ %scevgep2117.le, %.loopexit.loopexit2188 ], [ %.167571459, %.loopexit.loopexit ], [ %.387791248.lcssa, %.loopexit.loopexit1749 ], [ %.4745, %bb.y ], [ %.8749, %bb.ao ], [ %.37778, %bb.cj ], [ %.0741, %bb.cs ], [ %.5746, %.lr.ph1595 ], [ %.0741, %.loopexit.loopexit2997 ]
  %.42737 = phi i32 [ 0, %.loopexit.loopexit1736 ], [ %.0695, %bb.g ], [ 0, %.loopexit.loopexit2192 ], [ 0, %.loopexit.loopexit2191 ], [ 0, %.loopexit.loopexit1734 ], [ 0, %.loopexit.loopexit2190 ], [ 0, %.loopexit.loopexit2189 ], [ 0, %.loopexit.loopexit1735 ], [ 0, %.loopexit.loopexit1748 ], [ 0, %.loopexit.loopexit2193 ], [ 0, %.lr.ph1269 ], [ 0, %.loopexit.loopexit1738 ], [ %.39734, %bb.dc ], [ 0, %.loopexit.loopexit1739 ], [ 0, %.loopexit.loopexit1740 ], [ 0, %.loopexit.loopexit2187 ], [ 0, %.loopexit.loopexit2188 ], [ 0, %.loopexit.loopexit ], [ 0, %.loopexit.loopexit1749 ], [ %.4699, %bb.y ], [ %.8703, %bb.ao ], [ %.37732, %bb.cj ], [ %.0695, %bb.cs ], [ 0, %.lr.ph1595 ], [ %.0695, %.loopexit.loopexit2997 ]
  %.42692 = phi i64 [ %.186681428, %.loopexit.loopexit1736 ], [ %.0650, %bb.g ], [ %.256751506.lcssa, %.loopexit.loopexit2192 ], [ %.286781518.lcssa, %.loopexit.loopexit2191 ], [ %.196691448, %.loopexit.loopexit1734 ], [ %.316811532.lcssa, %.loopexit.loopexit2190 ], [ %.326821551.lcssa, %.loopexit.loopexit2189 ], [ %.176671438, %.loopexit.loopexit1735 ], [ %.96591257.lcssa, %.loopexit.loopexit1748 ], [ %.246741488.lcssa, %.loopexit.loopexit2193 ], [ %.116611397, %.lr.ph1269 ], [ %.16511724.lcssa, %.loopexit.loopexit1738 ], [ %.39689, %bb.dc ], [ %.26521584.lcssa, %.loopexit.loopexit1739 ], [ %.76571573.lcssa, %.loopexit.loopexit1740 ], [ %.156651414.lcssa, %.loopexit.loopexit2187 ], [ %.356851563.lcssa, %.loopexit.loopexit2188 ], [ %.166661461, %.loopexit.loopexit ], [ %.386881250.lcssa, %.loopexit.loopexit1749 ], [ %.4654, %bb.y ], [ %.8658, %bb.ao ], [ %.37687, %bb.cj ], [ %.0650, %bb.cs ], [ %.5655, %.lr.ph1595 ], [ %.0650, %.loopexit.loopexit2997 ]
  %.42 = phi i32 [ %i.abb, %.loopexit.loopexit1736 ], [ %.0641, %bb.g ], [ %i.aby, %.loopexit.loopexit2192 ], [ %i.abu, %.loopexit.loopexit2191 ], [ %i.aaz, %.loopexit.loopexit1734 ], [ %i.abs, %.loopexit.loopexit2190 ], [ %i.abp, %.loopexit.loopexit2189 ], [ %i.aba, %.loopexit.loopexit1735 ], [ %i.abf, %.loopexit.loopexit1748 ], [ %i.acb, %.loopexit.loopexit2193 ], [ %.111398, %.lr.ph1269 ], [ %i.abc, %.loopexit.loopexit1738 ], [ %.39, %bb.dc ], [ %i.abd, %.loopexit.loopexit1739 ], [ %i.abe, %.loopexit.loopexit1740 ], [ %i.abj, %.loopexit.loopexit2187 ], [ %i.abl, %.loopexit.loopexit2188 ], [ %15, %.loopexit.loopexit ], [ %i.abg, %.loopexit.loopexit1749 ], [ %.4645, %bb.y ], [ %.8649, %bb.ao ], [ %.37, %bb.cj ], [ %.0641, %bb.cs ], [ %.5646, %.lr.ph1595 ], [ %.0641, %.loopexit.loopexit2997 ]
  %.4640 = phi i32 [ %.0636, %.loopexit.loopexit1736 ], [ %.0636, %bb.g ], [ %.0636, %.loopexit.loopexit2192 ], [ %.0636, %.loopexit.loopexit2191 ], [ %.0636, %.loopexit.loopexit1734 ], [ %.0636, %.loopexit.loopexit2190 ], [ %.0636, %.loopexit.loopexit2189 ], [ %.0636, %.loopexit.loopexit1735 ], [ %.0636, %.loopexit.loopexit1748 ], [ %.0636, %.loopexit.loopexit2193 ], [ %.0636, %.lr.ph1269 ], [ %.0636, %.loopexit.loopexit1738 ], [ %.1637, %bb.dc ], [ %.0636, %.loopexit.loopexit1739 ], [ %.0636, %.loopexit.loopexit1740 ], [ %.0636, %.loopexit.loopexit2187 ], [ %.0636, %.loopexit.loopexit2188 ], [ %.0636, %.loopexit.loopexit ], [ %.0636, %.loopexit.loopexit1749 ], [ %.0636, %.lr.ph1595 ], [ %.0636, %bb.cs ], [ %.0636, %bb.cj ], [ %.0636, %bb.ao ], [ %.0636, %bb.y ], [ %.0636, %.loopexit.loopexit2997 ] ; 5 uses
  %.8 = phi i32 [ %.1, %.loopexit.loopexit1736 ], [ -3, %bb.g ], [ %.2, %.loopexit.loopexit2192 ], [ %.3, %.loopexit.loopexit2191 ], [ %.1, %.loopexit.loopexit1734 ], [ %.4, %.loopexit.loopexit2190 ], [ %.4, %.loopexit.loopexit2189 ], [ %.1, %.loopexit.loopexit1735 ], [ %.0, %.loopexit.loopexit1748 ], [ %.2, %.loopexit.loopexit2193 ], [ %.0, %.lr.ph1269 ], [ %.0, %.loopexit.loopexit1738 ], [ 1, %bb.dc ], [ %.0, %.loopexit.loopexit1739 ], [ %.0, %.loopexit.loopexit1740 ], [ %.1, %.loopexit.loopexit2187 ], [ %.5, %.loopexit.loopexit2188 ], [ %.1, %.loopexit.loopexit ], [ %.0, %.loopexit.loopexit1749 ], [ %.0, %bb.y ], [ %.0, %bb.ao ], [ %.6, %bb.cj ], [ %.0, %bb.cs ], [ %.0, %.lr.ph1595 ], [ 1, %.loopexit.loopexit2997 ] ; 2 uses
  store ptr %.0738, ptr %i.m, align 8
  %i.acc = zext i32 %.06932007 to i64
  store i64 %i.acc, ptr %i.o, align 8
  store ptr %.42783, ptr %0, align 8
  %i.acd = zext i32 %.42737 to i64
  store i64 %i.acd, ptr %i.r, align 8
  store i64 %.42692, ptr %i.u, align 8
  store i32 %.42, ptr %i.w, align 8
  %i.ace = load i32, ptr %i.aw, align 4
  %.not846 = icmp eq i32 %i.ace, 0
  br i1 %.not846, label %bb.dd, label %.loopexit._crit_edge

.loopexit._crit_edge:                             ; preds = %.loopexit
  %.pre2142 = load i64, ptr %i.o, align 8
  br label %bb.df

bb.dd:                                            ; preds = %.loopexit
  %i.acf = load i32, ptr %i.c, align 8
  %i.acg = icmp ult i32 %i.acf, 24
  br i1 %i.acg, label %bb.de, label %zlib_updatewindow.exit

bb.de:                                            ; preds = %bb.dd
  %i.ach = zext i32 %.4640 to i64
  %i.aci = load i64, ptr %i.o, align 8            ; 2 uses
  %.not847 = icmp eq i64 %i.aci, %i.ach
  br i1 %.not847, label %zlib_updatewindow.exit, label %bb.df

bb.df:                                            ; preds = %.loopexit._crit_edge, %bb.de
  %i.acj = phi i64 [ %.pre2142, %.loopexit._crit_edge ], [ %i.aci, %bb.de ]
  %i.ack = load ptr, ptr %i.b, align 8            ; 8 uses
  %i.acl = trunc i64 %i.acj to i32
  %i.acm = sub i32 %.4640, %i.acl                 ; 5 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %i.ack, i64 44 ; 4 uses
  %i.aco = load i32, ptr %i.acn, align 4          ; 3 uses
  %.not.i = icmp ult i32 %i.acm, %i.aco
  br i1 %.not.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.acp = getelementptr inbounds nuw i8, ptr %i.ack, i64 56
  %i.acq = load ptr, ptr %i.acp, align 8
  %i.acr = load ptr, ptr %i.m, align 8
  %i.acs = zext i32 %i.aco to i64                 ; 2 uses
  %i.act = sub nsw i64 0, %i.acs
  %i.acu = getelementptr inbounds i8, ptr %i.acr, i64 %i.act
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.acq, ptr align 1 %i.acu, i64 %i.acs, i1 false)
  %i.acv = getelementptr inbounds nuw i8, ptr %i.ack, i64 52
  store i32 0, ptr %i.acv, align 4
  %i.acw = load i32, ptr %i.acn, align 4
  %i.acx = getelementptr inbounds nuw i8, ptr %i.ack, i64 48
  store i32 %i.acw, ptr %i.acx, align 8
  br label %zlib_updatewindow.exit

bb.dh:                                            ; preds = %bb.df
  %i.acy = getelementptr inbounds nuw i8, ptr %i.ack, i64 52 ; 4 uses
  %i.acz = load i32, ptr %i.acy, align 4          ; 2 uses
  %i.ada = sub i32 %i.aco, %i.acz                 ; 2 uses
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.ada, i32 %i.acm) ; 4 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ack, i64 56 ; 2 uses
  %i.adc = load ptr, ptr %i.adb, align 8
  %i.add = zext i32 %i.acz to i64
  %i.ade = getelementptr inbounds nuw i8, ptr %i.adc, i64 %i.add
  %i.adf = load ptr, ptr %i.m, align 8
  %i.adg = zext i32 %i.acm to i64
  %i.adh = sub nsw i64 0, %i.adg
  %i.adi = getelementptr inbounds i8, ptr %i.adf, i64 %i.adh
  %i.adj = zext i32 %spec.select.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ade, ptr align 1 %i.adi, i64 %i.adj, i1 false)
  %.not46.not.i = icmp ugt i32 %i.acm, %i.ada
  br i1 %.not46.not.i, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.adk = sub i32 %i.acm, %spec.select.i         ; 2 uses
  %i.adl = load ptr, ptr %i.adb, align 8
  %i.adm = load ptr, ptr %i.m, align 8
  %i.adn = zext i32 %i.adk to i64                 ; 2 uses
  %i.ado = sub nsw i64 0, %i.adn
  %i.adp = getelementptr inbounds i8, ptr %i.adm, i64 %i.ado
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.adl, ptr nonnull align 1 %i.adp, i64 %i.adn, i1 false)
  store i32 %i.adk, ptr %i.acy, align 4
  %i.adq = load i32, ptr %i.acn, align 4
  %i.adr = getelementptr inbounds nuw i8, ptr %i.ack, i64 48
  store i32 %i.adq, ptr %i.adr, align 8
  br label %zlib_updatewindow.exit

bb.dj:                                            ; preds = %bb.dh
  %i.ads = load i32, ptr %i.acy, align 4
  %i.adt = add i32 %i.ads, %spec.select.i         ; 2 uses
  %i.adu = load i32, ptr %i.acn, align 4          ; 2 uses
  %i.adv = icmp eq i32 %i.adt, %i.adu
  %spec.store.select.i = select i1 %i.adv, i32 0, i32 %i.adt
  store i32 %spec.store.select.i, ptr %i.acy, align 4
  %i.adw = getelementptr inbounds nuw i8, ptr %i.ack, i64 48 ; 2 uses
  %i.adx = load i32, ptr %i.adw, align 8          ; 2 uses
  %i.ady = icmp ult i32 %i.adx, %i.adu
  br i1 %i.ady, label %bb.dk, label %zlib_updatewindow.exit

bb.dk:                                            ; preds = %bb.dj
  %i.adz = add i32 %i.adx, %spec.select.i
  store i32 %i.adz, ptr %i.adw, align 8
  br label %zlib_updatewindow.exit

zlib_updatewindow.exit:                           ; preds = %bb.dk, %bb.dj, %bb.di, %bb.dg, %bb.de, %bb.dd
  %i.aea = load i64, ptr %i.r, align 8
  %i.aeb = sub i64 %i.s, %i.aea
  %i.aec = load i64, ptr %i.o, align 8
  %i.aed = trunc i64 %i.aec to i32                ; 3 uses
  %i.aee = sub i32 %.4640, %i.aed                 ; 2 uses
  %i.aef = and i64 %i.aeb, 4294967295             ; 2 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aeh = load i64, ptr %i.aeg, align 8
  %i.aei = add i64 %i.aeh, %i.aef
  store i64 %i.aei, ptr %i.aeg, align 8
  %i.aej = zext i32 %i.aee to i64                 ; 3 uses
  %i.aek = load i64, ptr %i.z, align 8
  %i.ael = add i64 %i.aek, %i.aej
  store i64 %i.ael, ptr %i.z, align 8
  %i.aem = load i64, ptr %i.aa, align 8
  %i.aen = add i64 %i.aem, %i.aej
  store i64 %i.aen, ptr %i.aa, align 8
  %i.aeo = load i32, ptr %i.y, align 8
  %i.aep = icmp ne i32 %i.aeo, 0
  %i.aeq = icmp ne i32 %.4640, %i.aed
  %or.cond3 = select i1 %i.aep, i1 %i.aeq, i1 false
  br i1 %or.cond3, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %zlib_updatewindow.exit
  %i.aer = load i64, ptr %i.ab, align 8
  %i.aes = load ptr, ptr %i.m, align 8
  %i.aet = sub nsw i64 0, %i.aej
  %i.aeu = getelementptr inbounds i8, ptr %i.aes, i64 %i.aet
  %i.aev = tail call fastcc i64 @zlib_adler32(i64 noundef %i.aer, ptr noundef %i.aeu, i32 noundef %i.aee) #17 ; 2 uses
  store i64 %i.aev, ptr %i.ab, align 8
  store i64 %i.aev, ptr %i.ac, align 8
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %zlib_updatewindow.exit
  %i.aew = load i32, ptr %i.w, align 8
  %i.aex = load i32, ptr %i.az, align 4
  %.not848 = icmp eq i32 %i.aex, 0
  %i.aey = select i1 %.not848, i32 0, i32 64
  %i.aez = add i32 %i.aey, %i.aew
  %i.afa = load i32, ptr %i.c, align 8
  %i.afb = icmp eq i32 %i.afa, 11
  %i.afc = select i1 %i.afb, i32 128, i32 0
  %i.afd = add i32 %i.aez, %i.afc
  %i.afe = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.afd, ptr %i.afe, align 8
  %i.aff = icmp eq i32 %1, 2
  %i.afg = icmp eq i32 %.8, 0                     ; 2 uses
  %or.cond5 = select i1 %i.aff, i1 %i.afg, i1 false
  br i1 %or.cond5, label %bb.dn, label %bb.dt

bb.dn:                                            ; preds = %bb.dm
  %i.afh = load i64, ptr %i.o, align 8
  %.not849 = icmp eq i64 %i.afh, 0
  br i1 %.not849, label %bb.dt, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.afi = load i64, ptr %i.r, align 8
  %i.afj = icmp eq i64 %i.afi, 0
  br i1 %i.afj, label %bb.dp, label %bb.dt

bb.dp:                                            ; preds = %bb.do
  %.val = load ptr, ptr %i.b, align 8             ; 4 uses
  %i.afk = icmp eq ptr %.val, null
  br i1 %i.afk, label %zlib_inflateSyncPacket.exit, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.afl = load i32, ptr %.val, align 8
  %i.afm = icmp eq i32 %i.afl, 13
  br i1 %i.afm, label %bb.dr, label %zlib_inflateSyncPacket.exit

bb.dr:                                            ; preds = %bb.dq
  %i.afn = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.afo = load i32, ptr %i.afn, align 8
  %i.afp = icmp eq i32 %i.afo, 0
  br i1 %i.afp, label %bb.ds, label %zlib_inflateSyncPacket.exit

bb.ds:                                            ; preds = %bb.dr
  store i32 11, ptr %.val, align 8
  br label %zlib_inflateSyncPacket.exit

bb.dt:                                            ; preds = %bb.do, %bb.dn, %bb.dm
  %i.afq = icmp eq i64 %i.aef, 0
  %i.afr = icmp eq i32 %.4640, %i.aed
  %or.cond7 = select i1 %i.afq, i1 %i.afr, i1 false
  %i.afs = icmp eq i32 %1, 5
  %or.cond9 = or i1 %i.afs, %or.cond7
  %or.cond11 = select i1 %or.cond9, i1 %i.afg, i1 false
  %spec.store.select = select i1 %or.cond11, i32 -5, i32 %.8
  br label %zlib_inflateSyncPacket.exit

zlib_inflateSyncPacket.exit.loopexit:             ; preds = %bb.g
  br label %zlib_inflateSyncPacket.exit

zlib_inflateSyncPacket.exit:                      ; preds = %bb.g, %zlib_inflateSyncPacket.exit.loopexit, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.a, %bb.b, %bb.d, %bb.dt, %bb.w
  %.0784 = phi i32 [ -2, %bb.a ], [ -4, %zlib_inflateSyncPacket.exit.loopexit ], [ -3, %bb.dq ], [ %spec.store.select, %bb.dt ], [ 2, %bb.w ], [ -2, %bb.d ], [ -2, %bb.b ], [ -2, %bb.dp ], [ 0, %bb.ds ], [ -3, %bb.dr ], [ -2, %bb.g ]
  ret i32 %.0784
}

; Function Attrs: inlinehint nofree norecurse noredzone nosync nounwind memory(argmem: read)
define internal fastcc range(i64 0, 4294967296) i64 @zlib_adler32(i64 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %.preheader100

.preheader100:                                    ; preds = %bb.a
  %i.b = lshr i64 %0, 16
  %i.c = and i64 %i.b, 65535                      ; 2 uses
  %i.d = and i64 %0, 65535                        ; 2 uses
  %.not110 = icmp eq i32 %2, 0
  br i1 %.not110, label %._crit_edge116, label %.lr.ph115

.lr.ph115:                                        ; preds = %.preheader100, %.loopexit
  %.085114 = phi i64 [ %i.dr, %.loopexit ], [ %i.c, %.preheader100 ] ; 2 uses
  %.087113 = phi i64 [ %i.dq, %.loopexit ], [ %i.d, %.preheader100 ] ; 2 uses
  %.091112 = phi i32 [ %i.f, %.loopexit ], [ %2, %.preheader100 ] ; 3 uses
  %.092111 = phi ptr [ %.395, %.loopexit ], [ %1, %.preheader100 ] ; 2 uses
  %i.e = tail call i32 @llvm.umin.i32(i32 %.091112, i32 5552) ; 3 uses
  %i.f = sub i32 %.091112, %i.e                   ; 2 uses
  %i.g = icmp ugt i32 %.091112, 15
  br i1 %i.g, label %.lr.ph, label %.preheader.preheader

.lr.ph:                                           ; preds = %.lr.ph115, %.lr.ph
  %.0106 = phi i32 [ %i.cj, %.lr.ph ], [ %i.e, %.lr.ph115 ] ; 2 uses
  %.186105 = phi i64 [ %i.ch, %.lr.ph ], [ %.085114, %.lr.ph115 ]
  %.188104 = phi i64 [ %i.cg, %.lr.ph ], [ %.087113, %.lr.ph115 ]
  %.193103 = phi ptr [ %i.ci, %.lr.ph ], [ %.092111, %.lr.ph115 ] ; 17 uses
  %i.h = load i8, ptr %.193103, align 1
  %i.i = zext i8 %i.h to i64
  %i.j = add i64 %.188104, %i.i                   ; 2 uses
  %i.k = add i64 %i.j, %.186105
  %i.l = getelementptr inbounds nuw i8, ptr %.193103, i64 1
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i64
  %i.o = add i64 %i.j, %i.n                       ; 2 uses
  %i.p = add i64 %i.k, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %.193103, i64 2
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i64
  %i.t = add i64 %i.o, %i.s                       ; 2 uses
  %i.u = add i64 %i.p, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %.193103, i64 3
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i64
  %i.y = add i64 %i.t, %i.x                       ; 2 uses
  %i.z = add i64 %i.u, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %.193103, i64 4
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i64
  %i.ad = add i64 %i.y, %i.ac                     ; 2 uses
  %i.ae = add i64 %i.z, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %.193103, i64 5
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i64
  %i.ai = add i64 %i.ad, %i.ah                    ; 2 uses
  %i.aj = add i64 %i.ae, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %.193103, i64 6
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = zext i8 %i.al to i64
  %i.an = add i64 %i.ai, %i.am                    ; 2 uses
  %i.ao = add i64 %i.aj, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %.193103, i64 7
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = zext i8 %i.aq to i64
  %i.as = add i64 %i.an, %i.ar                    ; 2 uses
  %i.at = add i64 %i.ao, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %.193103, i64 8
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = zext i8 %i.av to i64
  %i.ax = add i64 %i.as, %i.aw                    ; 2 uses
  %i.ay = add i64 %i.at, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %.193103, i64 9
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = zext i8 %i.ba to i64
  %i.bc = add i64 %i.ax, %i.bb                    ; 2 uses
  %i.bd = add i64 %i.ay, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %.193103, i64 10
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = zext i8 %i.bf to i64
  %i.bh = add i64 %i.bc, %i.bg                    ; 2 uses
  %i.bi = add i64 %i.bd, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %.193103, i64 11
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = zext i8 %i.bk to i64
  %i.bm = add i64 %i.bh, %i.bl                    ; 2 uses
  %i.bn = add i64 %i.bi, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %.193103, i64 12
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = zext i8 %i.bp to i64
  %i.br = add i64 %i.bm, %i.bq                    ; 2 uses
  %i.bs = add i64 %i.bn, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %.193103, i64 13
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = zext i8 %i.bu to i64
  %i.bw = add i64 %i.br, %i.bv                    ; 2 uses
  %i.bx = add i64 %i.bs, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %.193103, i64 14
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = zext i8 %i.bz to i64
  %i.cb = add i64 %i.bw, %i.ca                    ; 2 uses
  %i.cc = add i64 %i.bx, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %.193103, i64 15
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = zext i8 %i.ce to i64
  %i.cg = add i64 %i.cb, %i.cf                    ; 4 uses
  %i.ch = add i64 %i.cc, %i.cg                    ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.193103, i64 16 ; 3 uses
  %i.cj = add nsw i32 %.0106, -16                 ; 3 uses
  %i.ck = icmp samesign ugt i32 %.0106, 31
  br i1 %i.ck, label %.lr.ph, label %._crit_edge, !llvm.loop !42

._crit_edge:                                      ; preds = %.lr.ph
  %.not98 = icmp eq i32 %i.cj, 0
  br i1 %.not98, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph115, %._crit_edge
  %.0.lcssa138 = phi i32 [ %i.cj, %._crit_edge ], [ %i.e, %.lr.ph115 ] ; 5 uses
  %.186.lcssa137 = phi i64 [ %i.ch, %._crit_edge ], [ %.085114, %.lr.ph115 ] ; 2 uses
  %.188.lcssa136 = phi i64 [ %i.cg, %._crit_edge ], [ %.087113, %.lr.ph115 ] ; 2 uses
  %.193.lcssa135 = phi ptr [ %i.ci, %._crit_edge ], [ %.092111, %.lr.ph115 ] ; 3 uses
  %i.cl = add nsw i32 %.0.lcssa138, -1
  %xtraiter = and i32 %.0.lcssa138, 3             ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %.294.prol = phi ptr [ %i.cm, %.preheader.prol ], [ %.193.lcssa135, %.preheader.preheader ] ; 2 uses
  %.289.prol = phi i64 [ %i.cp, %.preheader.prol ], [ %.188.lcssa136, %.preheader.preheader ]
  %.2.prol = phi i64 [ %i.cq, %.preheader.prol ], [ %.186.lcssa137, %.preheader.preheader ]
  %.1.prol = phi i32 [ %i.cr, %.preheader.prol ], [ %.0.lcssa138, %.preheader.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.294.prol, i64 1 ; 2 uses
  %i.cn = load i8, ptr %.294.prol, align 1
  %i.co = zext i8 %i.cn to i64
  %i.cp = add i64 %.289.prol, %i.co               ; 4 uses
  %i.cq = add i64 %i.cp, %.2.prol                 ; 3 uses
  %i.cr = add nsw i32 %.1.prol, -1                ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !43

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.lcssa157.unr = phi i64 [ poison, %.preheader.preheader ], [ %i.cp, %.preheader.prol ]
  %.lcssa156.unr = phi i64 [ poison, %.preheader.preheader ], [ %i.cq, %.preheader.prol ]
  %.294.unr = phi ptr [ %.193.lcssa135, %.preheader.preheader ], [ %i.cm, %.preheader.prol ]
  %.289.unr = phi i64 [ %.188.lcssa136, %.preheader.preheader ], [ %i.cp, %.preheader.prol ]
  %.2.unr = phi i64 [ %.186.lcssa137, %.preheader.preheader ], [ %i.cq, %.preheader.prol ]
  %.1.unr = phi i32 [ %.0.lcssa138, %.preheader.preheader ], [ %i.cr, %.preheader.prol ]
  %i.cs = icmp ult i32 %i.cl, 3
  br i1 %i.cs, label %.loopexit.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.294 = phi ptr [ %i.di, %.preheader ], [ %.294.unr, %.preheader.prol.loopexit ] ; 5 uses
  %.289 = phi i64 [ %i.dl, %.preheader ], [ %.289.unr, %.preheader.prol.loopexit ]
  %.2 = phi i64 [ %i.dm, %.preheader ], [ %.2.unr, %.preheader.prol.loopexit ]
  %.1 = phi i32 [ %i.dn, %.preheader ], [ %.1.unr, %.preheader.prol.loopexit ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.294, i64 1
  %i.cu = load i8, ptr %.294, align 1
  %i.cv = zext i8 %i.cu to i64
  %i.cw = add i64 %.289, %i.cv                    ; 2 uses
  %i.cx = add i64 %i.cw, %.2
  %i.cy = getelementptr inbounds nuw i8, ptr %.294, i64 2
  %i.cz = load i8, ptr %i.ct, align 1
  %i.da = zext i8 %i.cz to i64
  %i.db = add i64 %i.cw, %i.da                    ; 2 uses
  %i.dc = add i64 %i.db, %i.cx
  %i.dd = getelementptr inbounds nuw i8, ptr %.294, i64 3
  %i.de = load i8, ptr %i.cy, align 1
  %i.df = zext i8 %i.de to i64
  %i.dg = add i64 %i.db, %i.df                    ; 2 uses
  %i.dh = add i64 %i.dg, %i.dc
  %i.di = getelementptr inbounds nuw i8, ptr %.294, i64 4
  %i.dj = load i8, ptr %i.dd, align 1
  %i.dk = zext i8 %i.dj to i64
  %i.dl = add i64 %i.dg, %i.dk                    ; 3 uses
  %i.dm = add i64 %i.dl, %i.dh                    ; 2 uses
  %i.dn = add nsw i32 %.1, -4                     ; 2 uses
  %.not99.3 = icmp eq i32 %i.dn, 0
  br i1 %.not99.3, label %.loopexit.loopexit, label %.preheader, !llvm.loop !44

.loopexit.loopexit:                               ; preds = %.preheader, %.preheader.prol.loopexit
  %.lcssa157 = phi i64 [ %.lcssa157.unr, %.preheader.prol.loopexit ], [ %i.dl, %.preheader ]
  %.lcssa156 = phi i64 [ %.lcssa156.unr, %.preheader.prol.loopexit ], [ %i.dm, %.preheader ]
  %scevgep = getelementptr i8, ptr %.193.lcssa135, i64 1
  %i.do = add nsw i32 %.0.lcssa138, -1
  %i.dp = zext i32 %i.do to i64
  %scevgep127 = getelementptr i8, ptr %scevgep, i64 %i.dp
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %._crit_edge
  %.395 = phi ptr [ %i.ci, %._crit_edge ], [ %scevgep127, %.loopexit.loopexit ]
  %.390 = phi i64 [ %i.cg, %._crit_edge ], [ %.lcssa157, %.loopexit.loopexit ]
  %.3 = phi i64 [ %i.ch, %._crit_edge ], [ %.lcssa156, %.loopexit.loopexit ]
  %i.dq = urem i64 %.390, 65521                   ; 2 uses
  %i.dr = urem i64 %.3, 65521                     ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %._crit_edge116, label %.lr.ph115, !llvm.loop !45

._crit_edge116:                                   ; preds = %.loopexit, %.preheader100
  %.087.lcssa = phi i64 [ %i.d, %.preheader100 ], [ %i.dq, %.loopexit ]
  %.085.lcssa = phi i64 [ %i.c, %.preheader100 ], [ %i.dr, %.loopexit ]
  %i.ds = shl nuw nsw i64 %.085.lcssa, 16
  %i.dt = or disjoint i64 %i.ds, %.087.lcssa
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge116
  %.096 = phi i64 [ %i.dt, %._crit_edge116 ], [ 1, %bb.a ]
  ret i64 %.096
}

; Function Attrs: mustprogress nofree norecurse noredzone nosync nounwind willreturn memory(argmem: read)
define hidden range(i32 -2, 1) i32 @zlib_inflateEnd(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, null
  %spec.select = select i1 %i.d, i32 -2, i32 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -2, %bb.a ], [ %spec.select, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse noredzone nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define hidden range(i32 -3, 1) i32 @zlib_inflateIncomp(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8              ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = load i32, ptr %i.b, align 8
  switch i32 %i.g, label %bb.h [
    i32 11, label %bb.b
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  store i64 0, ptr %i.e, align 8
  %i.h = load ptr, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j ; 3 uses
  store ptr %i.k, ptr %i.c, align 8
  %i.l = trunc i64 %i.j to i32                    ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 44 ; 4 uses
  %i.n = load i32, ptr %i.m, align 4              ; 3 uses
  %.not.i = icmp ugt i32 %i.n, %i.l
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = zext i32 %i.n to i64                     ; 2 uses
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds i8, ptr %i.k, i64 %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.s, i64 %i.q, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  store i32 0, ptr %i.t, align 4
  %i.u = load i32, ptr %i.m, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 %i.u, ptr %i.v, align 8
  br label %zlib_updatewindow.exit

bb.d:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 52 ; 4 uses
  %i.x = load i32, ptr %i.w, align 4              ; 2 uses
  %i.y = sub i32 %i.n, %i.x                       ; 2 uses
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.y, i32 %i.l) ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = zext i32 %i.x to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  %i.ad = and i64 %i.j, 4294967295
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds i8, ptr %i.k, i64 %i.ae
  %i.ag = zext i32 %spec.select.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %i.af, i64 %i.ag, i1 false)
  %.not46.not.i = icmp ult i32 %i.y, %i.l
  br i1 %.not46.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = sub i32 %i.l, %spec.select.i            ; 2 uses
  %i.ai = load ptr, ptr %i.z, align 8
  %i.aj = load ptr, ptr %i.c, align 8
  %i.ak = zext i32 %i.ah to i64                   ; 2 uses
  %i.al = sub nsw i64 0, %i.ak
  %i.am = getelementptr inbounds i8, ptr %i.aj, i64 %i.al
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr nonnull align 1 %i.am, i64 %i.ak, i1 false)
  store i32 %i.ah, ptr %i.w, align 4
  %i.an = load i32, ptr %i.m, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 %i.an, ptr %i.ao, align 8
  br label %zlib_updatewindow.exit

bb.f:                                             ; preds = %bb.d
  %i.ap = load i32, ptr %i.w, align 4
  %i.aq = add i32 %i.ap, %spec.select.i           ; 2 uses
  %i.ar = load i32, ptr %i.m, align 4             ; 2 uses
  %i.as = icmp eq i32 %i.aq, %i.ar
  %spec.store.select.i = select i1 %i.as, i32 0, i32 %i.aq
  store i32 %spec.store.select.i, ptr %i.w, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8            ; 2 uses
  %i.av = icmp ult i32 %i.au, %i.ar
  br i1 %i.av, label %bb.g, label %zlib_updatewindow.exit

bb.g:                                             ; preds = %bb.f
  %i.aw = add i32 %i.au, %spec.select.i
  store i32 %i.aw, ptr %i.at, align 8
  br label %zlib_updatewindow.exit

zlib_updatewindow.exit:                           ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  %i.ax = and i64 %i.f, 4294967295
  store i64 %i.ax, ptr %i.e, align 8
  store ptr %i.d, ptr %i.c, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = load ptr, ptr %0, align 8
  %i.bb = load i64, ptr %i.i, align 8
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = tail call fastcc i64 @zlib_adler32(i64 noundef %i.az, ptr noundef %i.ba, i32 noundef %i.bc) #17 ; 2 uses
  store i64 %i.bd, ptr %i.ay, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.bd, ptr %i.be, align 8
  %i.bf = load i64, ptr %i.i, align 8             ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = add i64 %i.bh, %i.bf
  store i64 %i.bi, ptr %i.bg, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = add i64 %i.bk, %i.bf
  store i64 %i.bl, ptr %i.bj, align 8
  %i.bm = load ptr, ptr %0, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bf
  store ptr %i.bn, ptr %0, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = add i64 %i.bp, %i.bf
  store i64 %i.bq, ptr %i.bo, align 8
  store i64 0, ptr %i.i, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %zlib_updatewindow.exit
  %.0 = phi i32 [ 0, %zlib_updatewindow.exit ], [ -3, %bb.a ]
  ret i32 %.0
}

; Function Attrs: noredzone nounwind
define hidden void @__putstr(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr @early_serial_base, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %serial_putchar.exit37
  %.0 = phi ptr [ %i.w, %serial_putchar.exit37 ], [ %0, %bb.a ] ; 3 uses
  %i.b = load i8, ptr %.0, align 1                ; 2 uses
  switch i8 %i.b, label %bb.c [
    i8 0, label %.loopexit
    i8 10, label %bb.b
  ]

bb.b:                                             ; preds = %.preheader
  %i.c = load ptr, ptr @pio_ops, align 8
  %i.d = load i32, ptr @early_serial_base, align 4
  %i.e = trunc i32 %i.d to i16
  %i.f = add i16 %i.e, 5
  %i.g = tail call zeroext i8 %i.c(i16 noundef zeroext %i.f) #18, !inline_history !46
  %i.h = and i8 %i.g, 32
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.preheader, label %serial_putchar.exit

.lr.ph.i.preheader:                               ; preds = %bb.b, %.lr.ph.i.preheader
  %i.j = phi i32 [ %i.r, %.lr.ph.i.preheader ], [ 65534, %bb.b ]
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !47
  %i.k = load ptr, ptr @pio_ops, align 8
  %i.l = load i32, ptr @early_serial_base, align 4
  %i.m = trunc i32 %i.l to i16
  %i.n = add i16 %i.m, 5
  %i.o = tail call zeroext i8 %i.k(i16 noundef zeroext %i.n) #18, !inline_history !46
  %i.p = and i8 %i.o, 32
  %i.q = icmp ne i8 %i.p, 0
  %i.r = add nsw i32 %i.j, -1                     ; 2 uses
  %.not.i = icmp eq i32 %i.r, 0
  %or.cond64 = select i1 %i.q, i1 true, i1 %.not.i
  br i1 %or.cond64, label %serial_putchar.exit, label %.lr.ph.i.preheader, !llvm.loop !48

serial_putchar.exit:                              ; preds = %.lr.ph.i.preheader, %bb.b
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pio_ops, i64 8), align 8
  %i.t = load i32, ptr @early_serial_base, align 4
  %i.u = trunc i32 %i.t to i16
  tail call void %i.s(i8 noundef zeroext 13, i16 noundef zeroext %i.u) #18, !inline_history !46
  %.pre = load i8, ptr %.0, align 1
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %serial_putchar.exit
  %i.v = phi i8 [ %i.b, %.preheader ], [ %.pre, %serial_putchar.exit ]
  %i.w = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.x = load ptr, ptr @pio_ops, align 8
  %i.y = load i32, ptr @early_serial_base, align 4
  %i.z = trunc i32 %i.y to i16
  %i.aa = add i16 %i.z, 5
  %i.ab = tail call zeroext i8 %i.x(i16 noundef zeroext %i.aa) #18, !inline_history !46
  %i.ac = and i8 %i.ab, 32
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i34.preheader, label %serial_putchar.exit37

.lr.ph.i34.preheader:                             ; preds = %bb.c, %.lr.ph.i34.preheader
  %i.ae = phi i32 [ %i.am, %.lr.ph.i34.preheader ], [ 65534, %bb.c ]
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !47
  %i.af = load ptr, ptr @pio_ops, align 8
  %i.ag = load i32, ptr @early_serial_base, align 4
  %i.ah = trunc i32 %i.ag to i16
  %i.ai = add i16 %i.ah, 5
  %i.aj = tail call zeroext i8 %i.af(i16 noundef zeroext %i.ai) #18, !inline_history !46
  %i.ak = and i8 %i.aj, 32
  %i.al = icmp ne i8 %i.ak, 0
  %i.am = add nsw i32 %i.ae, -1                   ; 2 uses
  %.not.i36 = icmp eq i32 %i.am, 0
  %or.cond65 = select i1 %i.al, i1 true, i1 %.not.i36
  br i1 %or.cond65, label %serial_putchar.exit37, label %.lr.ph.i34.preheader, !llvm.loop !48

serial_putchar.exit37:                            ; preds = %.lr.ph.i34.preheader, %bb.c
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pio_ops, i64 8), align 8
  %i.ao = load i32, ptr @early_serial_base, align 4
  %i.ap = trunc i32 %i.ao to i16
  tail call void %i.an(i8 noundef zeroext %i.v, i16 noundef zeroext %i.ap) #18, !inline_history !46
  br label %.preheader, !llvm.loop !49

.loopexit:                                        ; preds = %.preheader, %bb.a
  %i.aq = load i32, ptr @lines, align 4           ; 3 uses
  %i.ar = icmp eq i32 %i.aq, 0
  %i.as = load i32, ptr @cols, align 4            ; 3 uses
  %i.at = icmp eq i32 %i.as, 0
  %or.cond = select i1 %i.ar, i1 true, i1 %i.at
  br i1 %or.cond, label %bb.n, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.au = load ptr, ptr @boot_params_ptr, align 8 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = zext i8 %i.av to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = zext i8 %i.ay to i32
  br label %bb.e

bb.e:                                             ; preds = %scroll.exit, %bb.d
  %i.ba = phi i32 [ %i.aq, %bb.d ], [ %i.de, %scroll.exit ] ; 6 uses
  %i.bb = phi i32 [ %i.as, %bb.d ], [ %i.df, %scroll.exit ] ; 8 uses
  %i.bc = phi i32 [ %i.as, %bb.d ], [ %i.dg, %scroll.exit ] ; 3 uses
  %i.bd = phi i32 [ %i.aq, %bb.d ], [ %i.dh, %scroll.exit ] ; 4 uses
  %.022 = phi i32 [ %i.az, %bb.d ], [ %.123, %scroll.exit ] ; 10 uses
  %.021 = phi i32 [ %i.aw, %bb.d ], [ %.1, %scroll.exit ] ; 4 uses
  %.020 = phi ptr [ %0, %bb.d ], [ %i.be, %scroll.exit ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.020, i64 1
  %i.bf = load i8, ptr %.020, align 1             ; 2 uses
  switch i8 %i.bf, label %bb.i [
    i8 0, label %bb.m
    i8 10, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.bg = add nuw nsw i32 %.022, 1                ; 2 uses
  %.not33 = icmp slt i32 %i.bg, %i.bd
  br i1 %.not33, label %scroll.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = load ptr, ptr @vidmem, align 8          ; 2 uses
  %i.bi = shl i32 %i.bc, 1                        ; 2 uses
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bj
  %i.bl = add nsw i32 %i.bd, -1
  %i.bm = mul i32 %i.bi, %i.bl
  %i.bn = sext i32 %i.bm to i64
  %i.bo = tail call ptr @memmove(ptr noundef %i.bh, ptr noundef %i.bk, i64 noundef %i.bn) #18 ; 0 uses
  %i.bp = load i32, ptr @lines, align 4           ; 6 uses
  %i.bq = add nsw i32 %i.bp, -1
  %i.br = load i32, ptr @cols, align 4            ; 6 uses
  %i.bs = shl i32 %i.br, 1
  %i.bt = mul i32 %i.bs, %i.bq                    ; 2 uses
  %i.bu = shl i32 %i.bp, 1
  %i.bv = mul i32 %i.bu, %i.br                    ; 2 uses
  %i.bw = icmp slt i32 %i.bt, %i.bv
  br i1 %i.bw, label %.lr.ph.i38, label %scroll.exit

.lr.ph.i38:                                       ; preds = %bb.g
  %i.bx = load ptr, ptr @vidmem, align 8
  %i.by = sext i32 %i.bt to i64
  %i.bz = sext i32 %i.bv to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i38
  %indvars.iv.i = phi i64 [ %i.by, %.lr.ph.i38 ], [ %indvars.iv.next.i, %bb.h ] ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %i.bx, i64 %indvars.iv.i
  store i8 32, ptr %i.ca, align 1
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.cb = icmp slt i64 %indvars.iv.next.i, %i.bz
  br i1 %i.cb, label %bb.h, label %scroll.exit, !llvm.loop !50

bb.i:                                             ; preds = %bb.e
  %i.cc = load ptr, ptr @vidmem, align 8          ; 3 uses
  %i.cd = mul nuw nsw i32 %i.bb, %.022
  %i.ce = add nuw nsw i32 %i.cd, %.021
  %i.cf = shl nuw nsw i32 %i.ce, 1
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cg
  store i8 %i.bf, ptr %i.ch, align 1
  %i.ci = add nuw nsw i32 %.021, 1                ; 2 uses
  %.not31 = icmp slt i32 %i.ci, %i.bb
  br i1 %.not31, label %scroll.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cj = add nuw nsw i32 %.022, 1                ; 2 uses
  %.not32 = icmp slt i32 %i.cj, %i.ba
  br i1 %.not32, label %scroll.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ck = shl i32 %i.bb, 1                        ; 2 uses
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cl
  %i.cn = add nsw i32 %i.ba, -1
  %i.co = mul i32 %i.cn, %i.ck
  %i.cp = sext i32 %i.co to i64
  %i.cq = tail call ptr @memmove(ptr noundef nonnull %i.cc, ptr noundef %i.cm, i64 noundef %i.cp) #18 ; 0 uses
  %i.cr = load i32, ptr @lines, align 4           ; 6 uses
  %i.cs = add nsw i32 %i.cr, -1
  %i.ct = load i32, ptr @cols, align 4            ; 6 uses
  %i.cu = shl i32 %i.ct, 1
  %i.cv = mul i32 %i.cu, %i.cs                    ; 2 uses
  %i.cw = shl i32 %i.cr, 1
  %i.cx = mul i32 %i.cw, %i.ct                    ; 2 uses
  %i.cy = icmp slt i32 %i.cv, %i.cx
  br i1 %i.cy, label %.lr.ph.i39, label %scroll.exit

.lr.ph.i39:                                       ; preds = %bb.k
  %i.cz = load ptr, ptr @vidmem, align 8
  %i.da = sext i32 %i.cv to i64
  %i.db = sext i32 %i.cx to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i39
  %indvars.iv.i40 = phi i64 [ %i.da, %.lr.ph.i39 ], [ %indvars.iv.next.i41, %bb.l ] ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %i.cz, i64 %indvars.iv.i40
  store i8 32, ptr %i.dc, align 1
  %indvars.iv.next.i41 = add nsw i64 %indvars.iv.i40, 2 ; 2 uses
  %i.dd = icmp slt i64 %indvars.iv.next.i41, %i.db
  br i1 %i.dd, label %bb.l, label %scroll.exit, !llvm.loop !50

scroll.exit:                                      ; preds = %bb.h, %bb.l, %bb.k, %bb.g, %bb.i, %bb.j, %bb.f
  %i.de = phi i32 [ %i.ba, %bb.i ], [ %i.ba, %bb.f ], [ %i.cr, %bb.l ], [ %i.ba, %bb.j ], [ %i.bp, %bb.g ], [ %i.cr, %bb.k ], [ %i.bp, %bb.h ]
  %i.df = phi i32 [ %i.bb, %bb.i ], [ %i.bb, %bb.f ], [ %i.ct, %bb.l ], [ %i.bb, %bb.j ], [ %i.br, %bb.g ], [ %i.ct, %bb.k ], [ %i.br, %bb.h ]
  %i.dg = phi i32 [ %i.bb, %bb.i ], [ %i.bc, %bb.f ], [ %i.ct, %bb.l ], [ %i.bb, %bb.j ], [ %i.br, %bb.g ], [ %i.ct, %bb.k ], [ %i.br, %bb.h ]
  %i.dh = phi i32 [ %i.bd, %bb.i ], [ %i.bd, %bb.f ], [ %i.cr, %bb.l ], [ %i.ba, %bb.j ], [ %i.bp, %bb.g ], [ %i.cr, %bb.k ], [ %i.bp, %bb.h ]
  %.123 = phi i32 [ %.022, %bb.i ], [ %i.bg, %bb.f ], [ %.022, %bb.l ], [ %i.cj, %bb.j ], [ %.022, %bb.g ], [ %.022, %bb.k ], [ %.022, %bb.h ]
  %.1 = phi i32 [ %i.ci, %bb.i ], [ 0, %bb.f ], [ 0, %bb.l ], [ 0, %bb.j ], [ 0, %bb.g ], [ 0, %bb.k ], [ 0, %bb.h ]
  br label %bb.e, !llvm.loop !51

bb.m:                                             ; preds = %bb.e
  %i.di = trunc nuw i32 %.021 to i8
  %i.dj = load ptr, ptr @boot_params_ptr, align 8
  store i8 %i.di, ptr %i.dj, align 1
  %i.dk = trunc nuw i32 %.022 to i8
  %i.dl = load ptr, ptr @boot_params_ptr, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  store i8 %i.dk, ptr %i.dm, align 1
  %i.dn = mul nuw nsw i32 %i.bc, %.022
  %i.do = add nuw nsw i32 %i.dn, %.021            ; 2 uses
  %i.dp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pio_ops, i64 8), align 8
  %i.dq = load i32, ptr @vidport, align 4
  %i.dr = trunc nuw nsw i32 %i.dq to i16
  tail call void %i.dp(i8 noundef zeroext 14, i16 noundef zeroext %i.dr) #18
  %i.ds = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pio_ops, i64 8), align 8
  %i.dt = lshr i32 %i.do, 8
  %i.du = trunc i32 %i.dt to i8
  %i.dv = load i32, ptr @vidport, align 4
  %i.dw = trunc i32 %i.dv to i16
  %i.dx = add i16 %i.dw, 1
  tail call void %i.ds(i8 noundef zeroext %i.du, i16 noundef zeroext %i.dx) #18
  %i.dy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pio_ops, i64 8), align 8
  %i.dz = load i32, ptr @vidport, align 4
  %i.ea = trunc nuw nsw i32 %i.dz to i16
  tail call void %i.dy(i8 noundef zeroext 15, i16 noundef zeroext %i.ea) #18
  %i.eb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pio_ops, i64 8), align 8
  %i.ec = trunc i32 %i.do to i8
  %i.ed = load i32, ptr @vidport, align 4
  %i.ee = trunc i32 %i.ed to i16
  %i.ef = add i16 %i.ee, 1
  tail call void %i.eb(i8 noundef zeroext %i.ec, i16 noundef zeroext %i.ef) #18
  br label %bb.n

bb.n:                                             ; preds = %.loopexit, %bb.m
  ret void
}

; Function Attrs: noredzone nounwind
define hidden void @__puthex(i64 noundef %0) local_unnamed_addr #7 {
bb.a:
  tail call fastcc void @__putnum(i64 noundef %0, i32 noundef 16, i32 noundef 16) #17
  ret void
}

; Function Attrs: noinline noredzone nounwind
define internal fastcc void @__putnum(i64 noundef %0, i32 noundef range(i32 10, 17) %1, i32 noundef range(i32 1, 17) %2) unnamed_addr #8 {
bb.a:
  %i.a = alloca [65 x i8], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  store i8 0, ptr %i.b, align 16
  %i.c = zext nneg i32 %1 to i64                  ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.015 = phi i64 [ %0, %bb.a ], [ %i.k, %bb.b ]  ; 3 uses
  %.01114 = phi ptr [ %i.b, %bb.a ], [ %i.j, %bb.b ]
  %.01213 = phi i32 [ %2, %bb.a ], [ %i.d, %bb.b ] ; 2 uses
  %i.d = add nsw i32 %.01213, -1
  %i.e = urem i64 %.015, %i.c                     ; 2 uses
  %i.f = trunc nuw nsw i64 %i.e to i8
  %i.g = icmp samesign ugt i64 %i.e, 9
  %i.h = select i1 %i.g, i8 87, i8 48
  %i.i = add nuw nsw i8 %i.h, %i.f
  %i.j = getelementptr inbounds i8, ptr %.01114, i64 -1 ; 3 uses
  store i8 %i.i, ptr %i.j, align 1
  %i.k = udiv i64 %.015, %i.c
  %i.l = icmp sgt i32 %.01213, 1
  %i.m = icmp uge i64 %.015, %i.c
  %i.n = select i1 %i.l, i1 true, i1 %i.m
  br i1 %i.n, label %bb.b, label %bb.c, !llvm.loop !52

bb.c:                                             ; preds = %bb.b
  call void @__putstr(ptr noundef nonnull %i.j) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: noredzone nounwind
define hidden void @__putdec(i64 noundef %0) local_unnamed_addr #7 {
bb.a:
  tail call fastcc void @__putnum(i64 noundef %0, i32 noundef 10, i32 noundef 1) #17
  ret void
}

; Function Attrs: noredzone nounwind
define hidden i64 @decompress_kernel(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr @free_mem_ptr, align 8     ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 ptrtoint (ptr @boot_heap to i64), ptr @free_mem_ptr, align 8
  store i64 add (i64 ptrtoint (ptr @boot_heap to i64), i64 65536), ptr @free_mem_end_ptr, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = phi i64 [ ptrtoint (ptr @boot_heap to i64), %bb.b ], [ %i.a, %bb.a ]
  %i.c = load i32, ptr @input_len, align 4        ; 2 uses
  %i.d = zext i32 %i.c to i64
  %i.e = load i32, ptr @output_len, align 4       ; 2 uses
  %i.f = zext i32 %i.e to i64
  %.not.i.i = icmp eq i32 %i.e, 0
  %i.g = ptrtoint ptr %0 to i64                   ; 5 uses
  %i.h = xor i64 %i.g, -1
  %.089.i.i = select i1 %.not.i.i, i64 %i.h, i64 %i.f
  %.not99.i.i = icmp eq ptr %0, null
  br i1 %.not99.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void %2(ptr noundef nonnull @.str.32) #18, !inline_history !53
  br label %handle_relocations.exit

bb.e:                                             ; preds = %bb.c
  %i.i = load i64, ptr @malloc_ptr, align 8       ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.i, 0
  %.fr.i.i = freeze i64 %i.b                      ; 2 uses
  %spec.select.i.i.i = select i1 %.not.i.i.i, i64 %.fr.i.i, i64 %i.i
  %spec.select.i.fr.i.i = freeze i64 %spec.select.i.i.i
  %i.j = add i64 %spec.select.i.fr.i.i, 7
  %i.k = and i64 %i.j, -8                         ; 3 uses
  %i.l = add i64 %i.k, 96                         ; 4 uses
  store i64 %i.l, ptr @malloc_ptr, align 8
  %i.m = load i64, ptr @free_mem_end_ptr, align 8
  %i.n = add i64 %i.m, -1                         ; 2 uses
  %or.cond.not.i.i.i = icmp ult i64 %i.n, %i.l
  br i1 %or.cond.not.i.i.i, label %malloc.exit.thread.i.i, label %malloc.exit.i.i

malloc.exit.i.i:                                  ; preds = %bb.e
  %i.o = inttoptr i64 %i.k to ptr                 ; 9 uses
  %i.p = load i32, ptr @malloc_count, align 4     ; 2 uses
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr @malloc_count, align 4
  %i.r = icmp eq i64 %i.k, 0
  br i1 %i.r, label %malloc.exit.thread.i.i, label %bb.f

malloc.exit.thread.i.i:                           ; preds = %malloc.exit.i.i, %bb.e
  tail call void %2(ptr noundef nonnull @.str.34) #18, !inline_history !53
  br label %handle_relocations.exit

bb.f:                                             ; preds = %malloc.exit.i.i
  %.not.i106.i.i = icmp eq i64 %i.l, 0
  %spec.select.i107.i.i = select i1 %.not.i106.i.i, i64 %.fr.i.i, i64 %i.l
  %i.s = add i64 %spec.select.i107.i.i, 7
  %i.t = and i64 %i.s, -8                         ; 3 uses
  %i.u = add i64 %i.t, 9544                       ; 2 uses
  store i64 %i.u, ptr @malloc_ptr, align 8
  %or.cond.not.i108.i.i = icmp ult i64 %i.n, %i.u
  br i1 %or.cond.not.i108.i.i, label %malloc.exit110.thread.i.i, label %malloc.exit110.i.i

malloc.exit110.thread.i.i:                        ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  store ptr null, ptr %i.v, align 8
  br label %bb.g

malloc.exit110.i.i:                               ; preds = %bb.f
  %i.w = inttoptr i64 %i.t to ptr
  %i.x = add nsw i32 %i.p, 2
  store i32 %i.x, ptr @malloc_count, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 64 ; 3 uses
  store ptr %i.w, ptr %i.y, align 8
  %i.z = icmp eq i64 %i.t, 0
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %malloc.exit110.i.i, %malloc.exit110.thread.i.i
  tail call void %2(ptr noundef nonnull @.str.35) #18, !inline_history !53
  %.pre.i.i = load i32, ptr @malloc_count, align 4
  br label %free.exit.i.i

bb.h:                                             ; preds = %malloc.exit110.i.i
  %i.aa = icmp ult i32 %i.c, 10
  br i1 %i.aa, label %zlib_inflateEnd.exit.sink.split.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load i8, ptr @input_data, align 1
  %.not100.i.i = icmp eq i8 %i.ab, 31
  br i1 %.not100.i.i, label %bb.j, label %zlib_inflateEnd.exit.sink.split.i.i

bb.j:                                             ; preds = %bb.i
  %i.ac = load i8, ptr getelementptr inbounds nuw (i8, ptr @input_data, i64 1), align 1
  %.not101.i.i = icmp eq i8 %i.ac, -117
  br i1 %.not101.i.i, label %bb.k, label %zlib_inflateEnd.exit.sink.split.i.i

bb.k:                                             ; preds = %bb.j
  %i.ad = load i8, ptr getelementptr inbounds nuw (i8, ptr @input_data, i64 2), align 1
  %.not102.i.i = icmp eq i8 %i.ad, 8
  br i1 %.not102.i.i, label %bb.l, label %zlib_inflateEnd.exit.sink.split.i.i

bb.l:                                             ; preds = %bb.k
  store ptr getelementptr inbounds nuw (i8, ptr @input_data, i64 10), ptr %i.o, align 8
  %i.ae = add nsw i64 %i.d, -10                   ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  store i64 %i.ae, ptr %i.af, align 8
  %i.ag = load i8, ptr getelementptr inbounds nuw (i8, ptr @input_data, i64 3), align 1
  %i.ah = and i8 %i.ag, 8
  %.not103.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not103.i.i, label %.loopexit.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.l
  %i.ai = icmp eq i64 %i.ae, 0
  br i1 %i.ai, label %zlib_inflateEnd.exit.sink.split.i.i, label %.lr.ph.i.i

thread-pre-split.i.i:                             ; preds = %.lr.ph.i.i
  %i.aj = icmp eq i64 %i.am, 0
  br i1 %i.aj, label %zlib_inflateEnd.exit.sink.split.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %thread-pre-split.i.i
  %i.ak = phi ptr [ %i.an, %thread-pre-split.i.i ], [ getelementptr inbounds nuw (i8, ptr @input_data, i64 10), %.preheader.i.i ] ; 2 uses
  %i.al = phi i64 [ %i.am, %thread-pre-split.i.i ], [ %i.ae, %.preheader.i.i ]
  %i.am = add nsw i64 %i.al, -1                   ; 3 uses
  store i64 %i.am, ptr %i.af, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 1 ; 2 uses
  store ptr %i.an, ptr %i.o, align 8
  %i.ao = load i8, ptr %i.ak, align 1
  %.not104.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not104.i.i, label %.loopexit.i.i, label %thread-pre-split.i.i, !llvm.loop !54

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %0, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i64 %.089.i.i, ptr %i.aq, align 8
  %i.ar = tail call i32 @zlib_inflateInit2(ptr noundef nonnull %i.o, i32 noundef -15) #17 ; 2 uses
  %i.as = load ptr, ptr %i.y, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 44
  store i32 0, ptr %i.at, align 4
  %i.au = load ptr, ptr %i.y, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  store ptr null, ptr %i.av, align 8
  %i.aw = icmp eq i32 %i.ar, 0
  br i1 %i.aw, label %.lr.ph7.i.i, label %zlib_inflateEnd.exit.i.i

.lr.ph7.i.i:                                      ; preds = %.loopexit.i.i, %bb.m
  %i.ax = load i64, ptr %i.af, align 8
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %zlib_inflateEnd.exit.sink.split.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph7.i.i
  %i.az = tail call i32 @zlib_inflate(ptr noundef nonnull %i.o, i32 noundef 0) #17
  switch i32 %i.az, label %zlib_inflateEnd.exit.sink.split.i.i [
    i32 1, label %zlib_inflateEnd.exit.i.i
    i32 0, label %.lr.ph7.i.i
  ], !llvm.loop !55

zlib_inflateEnd.exit.sink.split.i.i:              ; preds = %thread-pre-split.i.i, %bb.m, %.lr.ph7.i.i, %.preheader.i.i, %bb.k, %bb.j, %bb.i, %bb.h
  %.str.40.sink.i.i = phi ptr [ @.str.38, %.lr.ph7.i.i ], [ @.str.37, %.preheader.i.i ], [ @.str.36, %bb.k ], [ @.str.36, %bb.h ], [ @.str.36, %bb.i ], [ @.str.36, %bb.j ], [ @.str.40, %bb.m ], [ @.str.37, %thread-pre-split.i.i ]
  tail call void %2(ptr noundef nonnull %.str.40.sink.i.i) #18, !inline_history !53
  br label %zlib_inflateEnd.exit.i.i

zlib_inflateEnd.exit.i.i:                         ; preds = %bb.m, %zlib_inflateEnd.exit.sink.split.i.i, %.loopexit.i.i
  %.5.i.i = phi i32 [ -1, %zlib_inflateEnd.exit.sink.split.i.i ], [ %i.ar, %.loopexit.i.i ], [ 0, %bb.m ] ; 2 uses
  %i.ba = load i32, ptr @malloc_count, align 4
  %i.bb = add nsw i32 %i.ba, -1                   ; 2 uses
  %.not.i113.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i113.i.i, label %free.exit.thread.i.i, label %free.exit.i.i

free.exit.thread.i.i:                             ; preds = %zlib_inflateEnd.exit.i.i
  %i.bc = load i64, ptr @free_mem_ptr, align 8
  store i64 %i.bc, ptr @malloc_ptr, align 8
  store i32 -1, ptr @malloc_count, align 4
  br label %__decompress.exit

free.exit.i.i:                                    ; preds = %zlib_inflateEnd.exit.i.i, %bb.g
  %i.bd = phi i32 [ %.pre.i.i, %bb.g ], [ %i.bb, %zlib_inflateEnd.exit.i.i ]
  %.6.i.i = phi i32 [ -1, %bb.g ], [ %.5.i.i, %zlib_inflateEnd.exit.i.i ] ; 2 uses
  %i.be = add nsw i32 %i.bd, -1                   ; 2 uses
  store i32 %i.be, ptr @malloc_count, align 4
  %.not.i114.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i114.i.i, label %bb.n, label %__decompress.exit

bb.n:                                             ; preds = %free.exit.i.i
  %i.bf = load i64, ptr @free_mem_ptr, align 8
  store i64 %i.bf, ptr @malloc_ptr, align 8
  br label %__decompress.exit

__decompress.exit:                                ; preds = %free.exit.thread.i.i, %free.exit.i.i, %bb.n
  %.9.i.i = phi i32 [ %.6.i.i, %bb.n ], [ %.5.i.i, %free.exit.thread.i.i ], [ %.6.i.i, %free.exit.i.i ]
  %i.bg = icmp slt i32 %.9.i.i, 0
  br i1 %i.bg, label %handle_relocations.exit, label %bb.o

bb.o:                                             ; preds = %__decompress.exit
  %.sroa.0.0.copyload.i = load i8, ptr %0, align 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx.i, align 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.5.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i, align 1
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3
  %.sroa.6.0.copyload.i = load i8, ptr %.sroa.6.0..sroa_idx.i, align 1
  %.sroa.727.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.727.0.copyload.i = load i64, ptr %.sroa.727.0..sroa_idx.i, align 1
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 1
  %.sroa.928.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.928.0.copyload.i = load i16, ptr %.sroa.928.0..sroa_idx.i, align 1 ; 2 uses
  %i.bh = icmp ne i8 %.sroa.0.0.copyload.i, 127
  %i.bi = icmp ne i8 %.sroa.4.0.copyload.i, 69
  %or.cond.i = select i1 %i.bh, i1 true, i1 %i.bi
  %i.bj = icmp ne i8 %.sroa.5.0.copyload.i, 76
  %or.cond9.i = select i1 %or.cond.i, i1 true, i1 %i.bj
  %i.bk = icmp ne i8 %.sroa.6.0.copyload.i, 70
  %or.cond14.i = select i1 %or.cond9.i, i1 true, i1 %i.bk
  br i1 %or.cond14.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @error(ptr noundef nonnull @.str.41) #19
  unreachable

bb.q:                                             ; preds = %bb.o
  tail call void @__putstr(ptr noundef nonnull @.str.42) #17
  %i.bl = zext i16 %.sroa.928.0.copyload.i to i64 ; 2 uses
  %i.bm = mul nuw nsw i64 %i.bl, 56               ; 2 uses
  %i.bn = load i64, ptr @malloc_ptr, align 8      ; 2 uses
  %.not.i.i6 = icmp eq i64 %i.bn, 0
  %i.bo = load i64, ptr @free_mem_ptr, align 8
  %spec.select.i.i = select i1 %.not.i.i6, i64 %i.bo, i64 %i.bn
  %i.bp = add i64 %spec.select.i.i, 7
  %i.bq = and i64 %i.bp, -8                       ; 3 uses
  %i.br = add i64 %i.bq, %i.bm
  %i.bs = freeze i64 %i.br                        ; 2 uses
  store i64 %i.bs, ptr @malloc_ptr, align 8
  %i.bt = load i64, ptr @free_mem_end_ptr, align 8
  %i.bu = add i64 %i.bt, -1
  %or.cond.not.i.i = icmp ult i64 %i.bu, %i.bs
  br i1 %or.cond.not.i.i, label %malloc.exit.thread.i, label %malloc.exit.i

malloc.exit.i:                                    ; preds = %bb.q
  %i.bv = inttoptr i64 %i.bq to ptr               ; 2 uses
  %i.bw = load i32, ptr @malloc_count, align 4
  %i.bx = add nsw i32 %i.bw, 1
  store i32 %i.bx, ptr @malloc_count, align 4
  %.not.i = icmp eq i64 %i.bq, 0
  br i1 %.not.i, label %malloc.exit.thread.i, label %bb.r

malloc.exit.thread.i:                             ; preds = %malloc.exit.i, %bb.q
  tail call void @error(ptr noundef nonnull @.str.43) #19
  unreachable

bb.r:                                             ; preds = %malloc.exit.i
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.8.0.copyload.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bv, ptr nonnull align 1 %i.by, i64 %i.bm, i1 false)
  %.not41.i = icmp eq i16 %.sroa.928.0.copyload.i, 0
  br i1 %.not41.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.r, %bb.v
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.v ], [ 0, %bb.r ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [56 x i8], ptr %i.bv, i64 %indvars.iv.i ; 5 uses
  %i.ca = load i32, ptr %i.bz, align 8
  %cond.i = icmp eq i32 %i.ca, 1
  br i1 %cond.i, label %bb.s, label %bb.v

bb.s:                                             ; preds = %.lr.ph.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = and i64 %i.cc, 2097151
  %.not36.i = icmp eq i64 %i.cd, 0
  br i1 %.not36.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @error(ptr noundef nonnull @.str.44) #19
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = getelementptr i8, ptr %0, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 -16777216
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cm = load i64, ptr %i.cl, align 8
  %i.cn = tail call ptr @memmove(ptr noundef %i.ch, ptr noundef nonnull %i.ck, i64 noundef %i.cm) #18 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.bl
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !56

._crit_edge.i:                                    ; preds = %bb.v, %bb.r
  %i.co = load i32, ptr @malloc_count, align 4
  %i.cp = add nsw i32 %i.co, -1                   ; 2 uses
  store i32 %i.cp, ptr @malloc_count, align 4
  %.not.i37.i = icmp eq i32 %i.cp, 0
  br i1 %.not.i37.i, label %bb.w, label %parse_elf.exit

bb.w:                                             ; preds = %._crit_edge.i
  %i.cq = load i64, ptr @free_mem_ptr, align 8
  store i64 %i.cq, ptr @malloc_ptr, align 8
  br label %parse_elf.exit

parse_elf.exit:                                   ; preds = %._crit_edge.i, %bb.w
  %i.cr = add i64 %.sroa.727.0.copyload.i, -16777216 ; 3 uses
  %i.cs = add i64 %i.g, 41267200                  ; 2 uses
  %i.ct = add i64 %i.g, 2130706432                ; 2 uses
  %i.cu = add i64 %1, -16777216                   ; 3 uses
  %.not.i7 = icmp eq i64 %i.cu, 0
  br i1 %.not.i7, label %bb.x, label %bb.y

bb.x:                                             ; preds = %parse_elf.exit
  tail call void @__putstr(ptr noundef nonnull @.str.45) #17
  br label %handle_relocations.exit

bb.y:                                             ; preds = %parse_elf.exit
  %i.cv = load i32, ptr @output_len, align 4
  %i.cw = zext i32 %i.cv to i64
  tail call void @__putstr(ptr noundef nonnull @.str.46) #17
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 %i.cw ; 2 uses
  %.041.i = getelementptr inbounds i8, ptr %i.cx, i64 -4 ; 2 uses
  %i.cy = load i32, ptr %.041.i, align 4          ; 2 uses
  %.not3742.i = icmp eq i32 %i.cy, 0
  br i1 %.not3742.i, label %.preheader.i, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %bb.y
  %i.cz = trunc i64 %i.cu to i32
  br label %bb.z

.preheader.i:                                     ; preds = %bb.ab, %bb.y
  %i.da = phi ptr [ %i.cx, %bb.y ], [ %.043.i, %bb.ab ]
  %.144.i = getelementptr inbounds i8, ptr %i.da, i64 -8 ; 2 uses
  %i.db = load i32, ptr %.144.i, align 4          ; 2 uses
  %.not3845.i = icmp eq i32 %i.db, 0
  br i1 %.not3845.i, label %handle_relocations.exit, label %.lr.ph47.i

bb.z:                                             ; preds = %bb.ab, %.lr.ph.i8
  %i.dc = phi i32 [ %i.cy, %.lr.ph.i8 ], [ %i.dk, %bb.ab ]
  %.043.i = phi ptr [ %.041.i, %.lr.ph.i8 ], [ %.0.i, %bb.ab ] ; 2 uses
  %i.dd = sext i32 %i.dc to i64
  %i.de = add i64 %i.ct, %i.dd                    ; 3 uses
  %i.df = icmp ult i64 %i.de, %i.g
  %i.dg = icmp ugt i64 %i.de, %i.cs
  %or.cond.i9 = or i1 %i.df, %i.dg
  br i1 %or.cond.i9, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call void @error(ptr noundef nonnull @.str.47) #19
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.dh = inttoptr i64 %i.de to ptr               ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4
  %i.dj = add i32 %i.di, %i.cz
  store i32 %i.dj, ptr %i.dh, align 4
  %.0.i = getelementptr inbounds i8, ptr %.043.i, i64 -4 ; 2 uses
  %i.dk = load i32, ptr %.0.i, align 4            ; 2 uses
  %.not37.i = icmp eq i32 %i.dk, 0
  br i1 %.not37.i, label %.preheader.i, label %bb.z, !llvm.loop !57

.lr.ph47.i:                                       ; preds = %.preheader.i, %bb.ad
  %i.dl = phi i32 [ %i.dt, %bb.ad ], [ %i.db, %.preheader.i ]
  %.146.i = phi ptr [ %.1.i, %bb.ad ], [ %.144.i, %.preheader.i ]
  %i.dm = sext i32 %i.dl to i64
  %i.dn = add i64 %i.ct, %i.dm                    ; 3 uses
  %i.do = icmp ult i64 %i.dn, %i.g
  %i.dp = icmp ugt i64 %i.dn, %i.cs
  %or.cond39.i = or i1 %i.do, %i.dp
  br i1 %or.cond39.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph47.i
  tail call void @error(ptr noundef nonnull @.str.48) #19
  unreachable

bb.ad:                                            ; preds = %.lr.ph47.i
  %i.dq = inttoptr i64 %i.dn to ptr               ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8
  %i.ds = add i64 %i.dr, %i.cu
  store i64 %i.ds, ptr %i.dq, align 8
  %.1.i = getelementptr inbounds i8, ptr %.146.i, i64 -4 ; 2 uses
  %i.dt = load i32, ptr %.1.i, align 4            ; 2 uses
  %.not38.i = icmp eq i32 %i.dt, 0
  br i1 %.not38.i, label %handle_relocations.exit, label %.lr.ph47.i, !llvm.loop !58

handle_relocations.exit:                          ; preds = %bb.ad, %malloc.exit.thread.i.i, %bb.d, %.preheader.i, %bb.x, %__decompress.exit
  %.0 = phi i64 [ -1, %malloc.exit.thread.i.i ], [ -1, %__decompress.exit ], [ %i.cr, %bb.x ], [ %i.cr, %.preheader.i ], [ -1, %bb.d ], [ %i.cr, %bb.ad ]
  ret i64 %.0
}

; Function Attrs: noredzone nounwind
define hidden ptr @extract_kernel(ptr noundef %0, ptr noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  store ptr %1, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i64 16777216, ptr %i.b, align 8
  store ptr %0, ptr @boot_params_ptr, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 529 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, -3
  store i8 %i.e, ptr %i.c, align 1
  %i.f = tail call i32 @cmdline_find_option_bool(ptr noundef nonnull @.str.49) #18
  %i.g = tail call i32 @cmdline_find_option_bool(ptr noundef nonnull @.str.50) #18
  %i.h = icmp sgt i32 %i.f, %i.g
  br i1 %i.h, label %bb.b, label %parse_mem_encrypt.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 566 ; 2 uses
  %i.j = load i16, ptr %i.i, align 1
  %i.k = or i16 %i.j, 128
  store i16 %i.k, ptr %i.i, align 1
  br label %parse_mem_encrypt.exit

parse_mem_encrypt.exit:                           ; preds = %bb.a, %bb.b
  %i.l = load ptr, ptr @boot_params_ptr, align 8  ; 25 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 495
  %i.n = load i8, ptr %i.m, align 1
  %.not.i = icmp eq i8 %i.n, 0
  br i1 %.not.i, label %sanitize_boot_params.exit, label %bb.c

bb.c:                                             ; preds = %parse_mem_encrypt.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) @sanitize_boot_params.scratch, ptr noundef nonnull align 1 dereferenceable(64) %i.l, i64 64, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4012) getelementptr inbounds nuw (i8, ptr @sanitize_boot_params.scratch, i64 84), i8 0, i64 4012, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @sanitize_boot_params.scratch, i64 64), ptr noundef nonnull align 1 dereferenceable(20) %i.o, i64 20, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.q = load i64, ptr %i.p, align 1
  store i64 %i.q, ptr getelementptr inbounds nuw (i8, ptr @sanitize_boot_params.scratch, i64 88), align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @sanitize_boot_params.scratch, i64 96), ptr noundef nonnull align 1 dereferenceable(16) %i.r, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @sanitize_boot_params.scratch, i64 128), ptr noundef nonnull align 1 dereferenceable(16) %i.s, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @sanitize_boot_params.scratch, i64 144), ptr noundef nonnull align 1 dereferenceable(16) %i.t, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @sanitize_boot_params.scratch, i64 160), ptr noundef nonnull align 1 dereferenceable(16) %i.u, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @sanitize_boot_params.scratch, i64 176), ptr noundef nonnull align 1 dereferenceable(16) %i.v, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 448
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @sanitize_boot_params.scratch, i64 448), ptr noundef nonnull align 1 dereferenceable(32) %i.w, i64 32, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 480
  %i.y = load i32, ptr %i.x, align 1
  store i32 %i.y, ptr getelementptr inbounds nuw (i8, ptr @sanitize_boot_params.scratch, i64 480), align 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 484
  %i.aa = load i32, ptr %i.z, align 1
  store i32 %i.aa, ptr getelementptr inbounds nuw (i8, ptr @sanitize_boot_params.scratch, i64 484), align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 488
  %i.ac = load i8, ptr %i.ab, align 1
  store i8 %i.ac, ptr getelementptr inbounds nuw (i8, ptr @sanitize_boot_params.scratch, i64 488), align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 489
  %i.ae = load i8, ptr %i.ad, align 1
  store i8 %i.ae, ptr getelementptr inbounds nuw (i8, ptr @sanitize_boot_params.scratch, i64 489), align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 490
  %i.ag = load i8, ptr %i.af, align 1
  store i8 %i.ag, ptr getelementptr inbounds nuw (i8, ptr @sanitize_boot_params.scratch, i64 490), align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 656
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @sanitize_boot_params.scratch, i64 656), ptr noundef nonnull align 1 dereferenceable(64) %i.ah, i64 64, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 492
  %i.aj = load i8, ptr %i.ai, align 1
  store i8 %i.aj, ptr getelementptr inbounds nuw (i8, ptr @sanitize_boot_params.scratch, i64 492), align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 497
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(123) getelementptr inbounds nuw (i8, ptr @sanitize_boot_params.scratch, i64 497), ptr noundef nonnull align 1 dereferenceable(123) %i.ak, i64 123, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 720
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2560) getelementptr inbounds nuw (i8, ptr @sanitize_boot_params.scratch, i64 720), ptr noundef nonnull align 1 dereferenceable(2560) %i.al, i64 2560, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 3328
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(492) getelementptr inbounds nuw (i8, ptr @sanitize_boot_params.scratch, i64 3328), ptr noundef nonnull align 1 dereferenceable(492) %i.am, i64 492, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 316
  %i.ao = load i32, ptr %i.an, align 1
  store i32 %i.ao, ptr getelementptr inbounds nuw (i8, ptr @sanitize_boot_params.scratch, i64 316), align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(4096) %i.l, ptr noundef nonnull align 1 dereferenceable(4096) @sanitize_boot_params.scratch, i64 4096, i1 false)
  br label %sanitize_boot_params.exit

sanitize_boot_params.exit:                        ; preds = %parse_mem_encrypt.exit, %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 6
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = icmp eq i8 %i.aq, 7                     ; 2 uses
  %. = select i1 %i.ar, ptr inttoptr (i64 720896 to ptr), ptr inttoptr (i64 753664 to ptr)
  %.18 = select i1 %i.ar, i32 948, i32 980
  store ptr %., ptr @vidmem, align 8
  store i32 %.18, ptr @vidport, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 14
  %i.at = load i8, ptr %i.as, align 1
  %i.au = zext i8 %i.at to i32
  store i32 %i.au, ptr @lines, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 7
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i32
  store i32 %i.ax, ptr @cols, align 4
  store ptr @__inb, ptr @pio_ops, align 8
  store ptr @__outb, ptr getelementptr inbounds nuw (i8, ptr @pio_ops, i64 8), align 8
  store ptr @__outw, ptr getelementptr inbounds nuw (i8, ptr @pio_ops, i64 16), align 8
  tail call void @console_init() #18
  %i.ay = tail call i64 @get_rsdp_addr() #18
  %i.az = load ptr, ptr @boot_params_ptr, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 112
  store i64 %i.ay, ptr %i.ba, align 1
  tail call void @__putstr(ptr noundef nonnull @.str.14) #17
  store i64 ptrtoint (ptr @boot_heap to i64), ptr @free_mem_ptr, align 8
  store i64 add (i64 ptrtoint (ptr @boot_heap to i64), i64 65536), ptr @free_mem_end_ptr, align 8
  %i.bb = load i32, ptr @output_len, align 4
  %i.bc = tail call i32 @llvm.umax.i32(i32 %i.bb, i32 42065920)
  %i.bd = zext i32 %i.bc to i64
  %i.be = add nuw nsw i64 %i.bd, 2097151
  %i.bf = and i64 %i.be, 8587837440               ; 3 uses
  tail call void @__putstr(ptr noundef nonnull @.str.15) #17
  tail call fastcc void @__putnum(i64 noundef ptrtoint (ptr @input_data to i64), i32 noundef 16, i32 noundef 16) #17
  tail call void @__putstr(ptr noundef nonnull @.str.16) #17
  tail call void @__putstr(ptr noundef nonnull @.str.17) #17
  %i.bg = load i32, ptr @input_len, align 4
  %i.bh = zext i32 %i.bg to i64
  tail call fastcc void @__putnum(i64 noundef %i.bh, i32 noundef 16, i32 noundef 16) #17
  tail call void @__putstr(ptr noundef nonnull @.str.16) #17
  tail call void @__putstr(ptr noundef nonnull @.str.18) #17
  %i.bi = ptrtoint ptr %1 to i64
  tail call fastcc void @__putnum(i64 noundef %i.bi, i32 noundef 16, i32 noundef 16) #17
  tail call void @__putstr(ptr noundef nonnull @.str.16) #17
  tail call void @__putstr(ptr noundef nonnull @.str.19) #17
  %i.bj = load i32, ptr @output_len, align 4
  %i.bk = zext i32 %i.bj to i64
  tail call fastcc void @__putnum(i64 noundef %i.bk, i32 noundef 16, i32 noundef 16) #17
  tail call void @__putstr(ptr noundef nonnull @.str.16) #17
  tail call void @__putstr(ptr noundef nonnull @.str.20) #17
  tail call fastcc void @__putnum(i64 noundef 42065920, i32 noundef 16, i32 noundef 16) #17
  tail call void @__putstr(ptr noundef nonnull @.str.16) #17
  tail call void @__putstr(ptr noundef nonnull @.str.21) #17
  tail call fastcc void @__putnum(i64 noundef %i.bf, i32 noundef 16, i32 noundef 16) #17
  tail call void @__putstr(ptr noundef nonnull @.str.16) #17
  tail call void @__putstr(ptr noundef nonnull @.str.22) #17
  %i.bl = load ptr, ptr @trampoline_32bit, align 8
  %i.bm = ptrtoint ptr %i.bl to i64
  tail call fastcc void @__putnum(i64 noundef %i.bm, i32 noundef 16, i32 noundef 16) #17
  tail call void @__putstr(ptr noundef nonnull @.str.16) #17
  %i.bn = load i32, ptr @input_len, align 4
  %i.bo = zext i32 %i.bn to i64
  call void @choose_random_location(i64 noundef ptrtoint (ptr @input_data to i64), i64 noundef %i.bo, ptr noundef nonnull %i.a, i64 noundef %i.bf, ptr noundef nonnull %i.b) #18
  %i.bp = load ptr, ptr %i.a, align 8
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = and i64 %i.bq, 2097151
  %.not = icmp eq i64 %i.br, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %sanitize_boot_params.exit
  call void @error(ptr noundef nonnull @.str.23) #19
  unreachable

bb.e:                                             ; preds = %sanitize_boot_params.exit
  %i.bs = load i64, ptr %i.b, align 8             ; 2 uses
  %i.bt = and i64 %i.bs, 2097151
  %.not16 = icmp eq i64 %i.bt, 0
  br i1 %.not16, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @error(ptr noundef nonnull @.str.24) #19
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.bu = icmp ugt i64 ptrtoint (ptr @boot_heap to i64), 70368744177663
  br i1 %i.bu, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @error(ptr noundef nonnull @.str.25) #19
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.bv = add i64 %i.bs, %i.bf
  %i.bw = icmp ugt i64 %i.bv, 1073741824
  br i1 %i.bw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @error(ptr noundef nonnull @.str.26) #19
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @__putstr(ptr noundef nonnull @.str.27) #17
  %i.bx = load ptr, ptr %i.a, align 8             ; 14 uses
  %i.by = load i64, ptr %i.b, align 8
  %i.bz = load i64, ptr @free_mem_ptr, align 8    ; 2 uses
  %.not.i19 = icmp eq i64 %i.bz, 0
  br i1 %.not.i19, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i64 ptrtoint (ptr @boot_heap to i64), ptr @free_mem_ptr, align 8
  store i64 add (i64 ptrtoint (ptr @boot_heap to i64), i64 65536), ptr @free_mem_end_ptr, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ca = phi i64 [ ptrtoint (ptr @boot_heap to i64), %bb.l ], [ %i.bz, %bb.k ]
  %i.cb = load i32, ptr @input_len, align 4       ; 2 uses
  %i.cc = zext i32 %i.cb to i64
  %i.cd = load i32, ptr @output_len, align 4      ; 2 uses
  %i.ce = zext i32 %i.cd to i64
  %.not.i.i.i = icmp eq i32 %i.cd, 0
  %i.cf = ptrtoint ptr %i.bx to i64               ; 5 uses
  %i.cg = xor i64 %i.cf, -1
  %.089.i.i.i = select i1 %.not.i.i.i, i64 %i.cg, i64 %i.ce
  %.not99.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not99.i.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @error(ptr noundef nonnull @.str.32) #18, !inline_history !59
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ch = load i64, ptr @malloc_ptr, align 8      ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ch, 0
  %.fr.i.i.i = freeze i64 %i.ca                   ; 2 uses
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, i64 %.fr.i.i.i, i64 %i.ch
  %spec.select.i.fr.i.i.i = freeze i64 %spec.select.i.i.i.i
  %i.ci = add i64 %spec.select.i.fr.i.i.i, 7
  %i.cj = and i64 %i.ci, -8                       ; 3 uses
  %i.ck = add i64 %i.cj, 96                       ; 4 uses
  store i64 %i.ck, ptr @malloc_ptr, align 8
  %i.cl = load i64, ptr @free_mem_end_ptr, align 8
  %i.cm = add i64 %i.cl, -1                       ; 2 uses
  %or.cond.not.i.i.i.i = icmp ult i64 %i.cm, %i.ck
  br i1 %or.cond.not.i.i.i.i, label %malloc.exit.thread.i.i.i, label %malloc.exit.i.i.i

malloc.exit.i.i.i:                                ; preds = %bb.o
  %i.cn = inttoptr i64 %i.cj to ptr               ; 9 uses
  %i.co = load i32, ptr @malloc_count, align 4    ; 2 uses
  %i.cp = add nsw i32 %i.co, 1
  store i32 %i.cp, ptr @malloc_count, align 4
  %i.cq = icmp eq i64 %i.cj, 0
  br i1 %i.cq, label %malloc.exit.thread.i.i.i, label %bb.p

malloc.exit.thread.i.i.i:                         ; preds = %malloc.exit.i.i.i, %bb.o
  call void @error(ptr noundef nonnull @.str.34) #18, !inline_history !59
  unreachable

bb.p:                                             ; preds = %malloc.exit.i.i.i
  %.not.i106.i.i.i = icmp eq i64 %i.ck, 0
  %spec.select.i107.i.i.i = select i1 %.not.i106.i.i.i, i64 %.fr.i.i.i, i64 %i.ck
  %i.cr = add i64 %spec.select.i107.i.i.i, 7
  %i.cs = and i64 %i.cr, -8                       ; 3 uses
  %i.ct = add i64 %i.cs, 9544                     ; 2 uses
  store i64 %i.ct, ptr @malloc_ptr, align 8
  %or.cond.not.i108.i.i.i = icmp ult i64 %i.cm, %i.ct
  br i1 %or.cond.not.i108.i.i.i, label %malloc.exit110.thread.i.i.i, label %malloc.exit110.i.i.i

malloc.exit110.thread.i.i.i:                      ; preds = %bb.p
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 64
  store ptr null, ptr %i.cu, align 8
  br label %bb.q

malloc.exit110.i.i.i:                             ; preds = %bb.p
  %i.cv = inttoptr i64 %i.cs to ptr
  %i.cw = add nsw i32 %i.co, 2
  store i32 %i.cw, ptr @malloc_count, align 4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cn, i64 64 ; 3 uses
  store ptr %i.cv, ptr %i.cx, align 8
  %i.cy = icmp eq i64 %i.cs, 0
  br i1 %i.cy, label %bb.q, label %bb.r

bb.q:                                             ; preds = %malloc.exit110.i.i.i, %malloc.exit110.thread.i.i.i
  call void @error(ptr noundef nonnull @.str.35) #18, !inline_history !59
  unreachable

bb.r:                                             ; preds = %malloc.exit110.i.i.i
  %i.cz = icmp ult i32 %i.cb, 10
  br i1 %i.cz, label %zlib_inflateEnd.exit.sink.split.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.da = load i8, ptr @input_data, align 1
  %.not100.i.i.i = icmp eq i8 %i.da, 31
  br i1 %.not100.i.i.i, label %bb.t, label %zlib_inflateEnd.exit.sink.split.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.db = load i8, ptr getelementptr inbounds nuw (i8, ptr @input_data, i64 1), align 1
  %.not101.i.i.i = icmp eq i8 %i.db, -117
  br i1 %.not101.i.i.i, label %bb.u, label %zlib_inflateEnd.exit.sink.split.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.dc = load i8, ptr getelementptr inbounds nuw (i8, ptr @input_data, i64 2), align 1
  %.not102.i.i.i = icmp eq i8 %i.dc, 8
  br i1 %.not102.i.i.i, label %bb.v, label %zlib_inflateEnd.exit.sink.split.i.i.i

bb.v:                                             ; preds = %bb.u
  store ptr getelementptr inbounds nuw (i8, ptr @input_data, i64 10), ptr %i.cn, align 8
  %i.dd = add nsw i64 %i.cc, -10                  ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 3 uses
  store i64 %i.dd, ptr %i.de, align 8
  %i.df = load i8, ptr getelementptr inbounds nuw (i8, ptr @input_data, i64 3), align 1
  %i.dg = and i8 %i.df, 8
  %.not103.i.i.i = icmp eq i8 %i.dg, 0
  br i1 %.not103.i.i.i, label %.loopexit.i.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.v
  %i.dh = icmp eq i64 %i.dd, 0
  br i1 %i.dh, label %zlib_inflateEnd.exit.sink.split.i.i.i, label %.lr.ph.i.i.i

thread-pre-split.i.i.i:                           ; preds = %.lr.ph.i.i.i
  %i.di = icmp eq i64 %i.dl, 0
  br i1 %i.di, label %zlib_inflateEnd.exit.sink.split.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %thread-pre-split.i.i.i
  %i.dj = phi ptr [ %i.dm, %thread-pre-split.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @input_data, i64 10), %.preheader.i.i.i ] ; 2 uses
  %i.dk = phi i64 [ %i.dl, %thread-pre-split.i.i.i ], [ %i.dd, %.preheader.i.i.i ]
  %i.dl = add nsw i64 %i.dk, -1                   ; 3 uses
  store i64 %i.dl, ptr %i.de, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 1 ; 2 uses
  store ptr %i.dm, ptr %i.cn, align 8
  %i.dn = load i8, ptr %i.dj, align 1
  %.not104.i.i.i = icmp eq i8 %i.dn, 0
  br i1 %.not104.i.i.i, label %.loopexit.i.i.i, label %thread-pre-split.i.i.i, !llvm.loop !54

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i, %bb.v
  %i.do = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  store ptr %i.bx, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  store i64 %.089.i.i.i, ptr %i.dp, align 8
  %i.dq = call i32 @zlib_inflateInit2(ptr noundef nonnull %i.cn, i32 noundef -15) #17 ; 2 uses
  %i.dr = load ptr, ptr %i.cx, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 44
  store i32 0, ptr %i.ds, align 4
  %i.dt = load ptr, ptr %i.cx, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 56
  store ptr null, ptr %i.du, align 8
  %i.dv = icmp eq i32 %i.dq, 0
  br i1 %i.dv, label %.lr.ph7.i.i.i, label %zlib_inflateEnd.exit.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %.loopexit.i.i.i, %bb.w
  %i.dw = load i64, ptr %i.de, align 8
  %i.dx = icmp eq i64 %i.dw, 0
  br i1 %i.dx, label %zlib_inflateEnd.exit.sink.split.i.i.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph7.i.i.i
  %i.dy = call i32 @zlib_inflate(ptr noundef nonnull %i.cn, i32 noundef 0) #17
  switch i32 %i.dy, label %zlib_inflateEnd.exit.sink.split.i.i.i [
    i32 1, label %zlib_inflateEnd.exit.i.i.i
    i32 0, label %.lr.ph7.i.i.i
  ], !llvm.loop !55

zlib_inflateEnd.exit.sink.split.i.i.i:            ; preds = %thread-pre-split.i.i.i, %bb.w, %.lr.ph7.i.i.i, %.preheader.i.i.i, %bb.u, %bb.t, %bb.s, %bb.r
  %.str.40.sink.i.i.i = phi ptr [ @.str.38, %.lr.ph7.i.i.i ], [ @.str.37, %.preheader.i.i.i ], [ @.str.36, %bb.u ], [ @.str.36, %bb.r ], [ @.str.36, %bb.s ], [ @.str.36, %bb.t ], [ @.str.40, %bb.w ], [ @.str.37, %thread-pre-split.i.i.i ]
  call void @error(ptr noundef nonnull %.str.40.sink.i.i.i) #18, !inline_history !59
  unreachable

zlib_inflateEnd.exit.i.i.i:                       ; preds = %bb.w, %.loopexit.i.i.i
  %.5.i.i.i = phi i32 [ %i.dq, %.loopexit.i.i.i ], [ 0, %bb.w ]
  %i.dz = load i32, ptr @malloc_count, align 4    ; 2 uses
  %.not.i113.i.i.i = icmp eq i32 %i.dz, 1
  br i1 %.not.i113.i.i.i, label %free.exit.thread.i.i.i, label %free.exit.i.i.i

free.exit.thread.i.i.i:                           ; preds = %zlib_inflateEnd.exit.i.i.i
  %i.ea = load i64, ptr @free_mem_ptr, align 8
  store i64 %i.ea, ptr @malloc_ptr, align 8
  store i32 -1, ptr @malloc_count, align 4
  br label %__decompress.exit.i

free.exit.i.i.i:                                  ; preds = %zlib_inflateEnd.exit.i.i.i
  %i.eb = add nsw i32 %i.dz, -2                   ; 2 uses
  store i32 %i.eb, ptr @malloc_count, align 4
  %.not.i114.i.i.i = icmp eq i32 %i.eb, 0
  br i1 %.not.i114.i.i.i, label %bb.x, label %__decompress.exit.i

bb.x:                                             ; preds = %free.exit.i.i.i
  %i.ec = load i64, ptr @free_mem_ptr, align 8
  store i64 %i.ec, ptr @malloc_ptr, align 8
  br label %__decompress.exit.i

__decompress.exit.i:                              ; preds = %bb.x, %free.exit.i.i.i, %free.exit.thread.i.i.i
  %i.ed = icmp slt i32 %.5.i.i.i, 0
  br i1 %i.ed, label %decompress_kernel.exit, label %bb.y

bb.y:                                             ; preds = %__decompress.exit.i
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.bx, align 1
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  %.sroa.4.0.copyload.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i, align 1
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 2
  %.sroa.5.0.copyload.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i, align 1
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 3
  %.sroa.6.0.copyload.i.i = load i8, ptr %.sroa.6.0..sroa_idx.i.i, align 1
  %.sroa.727.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %.sroa.727.0.copyload.i.i = load i64, ptr %.sroa.727.0..sroa_idx.i.i, align 1
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %.sroa.8.0.copyload.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i, align 1
  %.sroa.928.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  %.sroa.928.0.copyload.i.i = load i16, ptr %.sroa.928.0..sroa_idx.i.i, align 1 ; 2 uses
  %i.ee = icmp ne i8 %.sroa.0.0.copyload.i.i, 127
  %i.ef = icmp ne i8 %.sroa.4.0.copyload.i.i, 69
  %or.cond.i.i = select i1 %i.ee, i1 true, i1 %i.ef
  %i.eg = icmp ne i8 %.sroa.5.0.copyload.i.i, 76
  %or.cond9.i.i = select i1 %or.cond.i.i, i1 true, i1 %i.eg
  %i.eh = icmp ne i8 %.sroa.6.0.copyload.i.i, 70
  %or.cond14.i.i = select i1 %or.cond9.i.i, i1 true, i1 %i.eh
  br i1 %or.cond14.i.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @error(ptr noundef nonnull @.str.41) #19
  unreachable

bb.aa:                                            ; preds = %bb.y
  call void @__putstr(ptr noundef nonnull @.str.42) #17
  %i.ei = zext i16 %.sroa.928.0.copyload.i.i to i64 ; 2 uses
  %i.ej = mul nuw nsw i64 %i.ei, 56               ; 2 uses
  %i.ek = load i64, ptr @malloc_ptr, align 8      ; 2 uses
  %.not.i.i6.i = icmp eq i64 %i.ek, 0
  %i.el = load i64, ptr @free_mem_ptr, align 8
  %spec.select.i.i.i = select i1 %.not.i.i6.i, i64 %i.el, i64 %i.ek
  %i.em = add i64 %spec.select.i.i.i, 7
  %i.en = and i64 %i.em, -8                       ; 3 uses
  %i.eo = add i64 %i.en, %i.ej
  %i.ep = freeze i64 %i.eo                        ; 2 uses
  store i64 %i.ep, ptr @malloc_ptr, align 8
  %i.eq = load i64, ptr @free_mem_end_ptr, align 8
  %i.er = add i64 %i.eq, -1
  %or.cond.not.i.i.i = icmp ult i64 %i.er, %i.ep
  br i1 %or.cond.not.i.i.i, label %malloc.exit.thread.i.i, label %malloc.exit.i.i

malloc.exit.i.i:                                  ; preds = %bb.aa
  %i.es = inttoptr i64 %i.en to ptr               ; 2 uses
  %i.et = load i32, ptr @malloc_count, align 4
  %i.eu = add nsw i32 %i.et, 1
  store i32 %i.eu, ptr @malloc_count, align 4
  %.not.i.i = icmp eq i64 %i.en, 0
  br i1 %.not.i.i, label %malloc.exit.thread.i.i, label %bb.ab

malloc.exit.thread.i.i:                           ; preds = %malloc.exit.i.i, %bb.aa
  call void @error(ptr noundef nonnull @.str.43) #19
  unreachable

bb.ab:                                            ; preds = %malloc.exit.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.sroa.8.0.copyload.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.es, ptr nonnull align 1 %i.ev, i64 %i.ej, i1 false)
  %.not41.i.i = icmp eq i16 %.sroa.928.0.copyload.i.i, 0
  br i1 %.not41.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ab, %bb.af
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.af ], [ 0, %bb.ab ] ; 2 uses
  %i.ew = getelementptr inbounds nuw [56 x i8], ptr %i.es, i64 %indvars.iv.i.i ; 5 uses
  %i.ex = load i32, ptr %i.ew, align 8
  %cond.i.i = icmp eq i32 %i.ex, 1
  br i1 %cond.i.i, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %.lr.ph.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 48
  %i.ez = load i64, ptr %i.ey, align 8
  %i.fa = and i64 %i.ez, 2097151
  %.not36.i.i = icmp eq i64 %i.fa, 0
  br i1 %.not36.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @error(ptr noundef nonnull @.str.44) #19
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.fc = load i64, ptr %i.fb, align 8
  %i.fd = getelementptr i8, ptr %i.bx, i64 %i.fc
  %i.fe = getelementptr i8, ptr %i.fd, i64 -16777216
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fg = load i64, ptr %i.ff, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.fj = load i64, ptr %i.fi, align 8
  %i.fk = call ptr @memmove(ptr noundef %i.fe, ptr noundef nonnull %i.fh, i64 noundef %i.fj) #18 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.ei
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !56

._crit_edge.i.i:                                  ; preds = %bb.af, %bb.ab
  %i.fl = load i32, ptr @malloc_count, align 4
  %i.fm = add nsw i32 %i.fl, -1                   ; 2 uses
  store i32 %i.fm, ptr @malloc_count, align 4
  %.not.i37.i.i = icmp eq i32 %i.fm, 0
  br i1 %.not.i37.i.i, label %bb.ag, label %parse_elf.exit.i

bb.ag:                                            ; preds = %._crit_edge.i.i
  %i.fn = load i64, ptr @free_mem_ptr, align 8
  store i64 %i.fn, ptr @malloc_ptr, align 8
  br label %parse_elf.exit.i

parse_elf.exit.i:                                 ; preds = %bb.ag, %._crit_edge.i.i
  %i.fo = add i64 %.sroa.727.0.copyload.i.i, -16777216 ; 3 uses
  %i.fp = add i64 %i.cf, 41267200                 ; 2 uses
  %i.fq = add i64 %i.cf, 2130706432               ; 2 uses
  %i.fr = add i64 %i.by, -16777216                ; 3 uses
  %.not.i7.i = icmp eq i64 %i.fr, 0
  br i1 %.not.i7.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %parse_elf.exit.i
  call void @__putstr(ptr noundef nonnull @.str.45) #17
  br label %decompress_kernel.exit

bb.ai:                                            ; preds = %parse_elf.exit.i
  %i.fs = load i32, ptr @output_len, align 4
  %i.ft = zext i32 %i.fs to i64
  call void @__putstr(ptr noundef nonnull @.str.46) #17
  %i.fu = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.ft ; 2 uses
  %.041.i.i = getelementptr inbounds i8, ptr %i.fu, i64 -4 ; 2 uses
  %i.fv = load i32, ptr %.041.i.i, align 4        ; 2 uses
  %.not3742.i.i = icmp eq i32 %i.fv, 0
  br i1 %.not3742.i.i, label %.preheader.i.i, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %bb.ai
  %i.fw = trunc i64 %i.fr to i32
  br label %bb.aj

.preheader.i.i:                                   ; preds = %bb.al, %bb.ai
  %i.fx = phi ptr [ %i.fu, %bb.ai ], [ %.043.i.i, %bb.al ]
  %.144.i.i = getelementptr inbounds i8, ptr %i.fx, i64 -8 ; 2 uses
  %i.fy = load i32, ptr %.144.i.i, align 4        ; 2 uses
  %.not3845.i.i = icmp eq i32 %i.fy, 0
  br i1 %.not3845.i.i, label %decompress_kernel.exit, label %.lr.ph47.i.i

bb.aj:                                            ; preds = %bb.al, %.lr.ph.i8.i
  %i.fz = phi i32 [ %i.fv, %.lr.ph.i8.i ], [ %i.gh, %bb.al ]
  %.043.i.i = phi ptr [ %.041.i.i, %.lr.ph.i8.i ], [ %.0.i.i, %bb.al ] ; 2 uses
  %i.ga = sext i32 %i.fz to i64
  %i.gb = add i64 %i.fq, %i.ga                    ; 3 uses
  %i.gc = icmp ult i64 %i.gb, %i.cf
  %i.gd = icmp ugt i64 %i.gb, %i.fp
  %or.cond.i9.i = or i1 %i.gc, %i.gd
  br i1 %or.cond.i9.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @error(ptr noundef nonnull @.str.47) #19
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.ge = inttoptr i64 %i.gb to ptr               ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 4
  %i.gg = add i32 %i.gf, %i.fw
  store i32 %i.gg, ptr %i.ge, align 4
  %.0.i.i = getelementptr inbounds i8, ptr %.043.i.i, i64 -4 ; 2 uses
  %i.gh = load i32, ptr %.0.i.i, align 4          ; 2 uses
  %.not37.i.i = icmp eq i32 %i.gh, 0
  br i1 %.not37.i.i, label %.preheader.i.i, label %bb.aj, !llvm.loop !57

.lr.ph47.i.i:                                     ; preds = %.preheader.i.i, %bb.an
  %i.gi = phi i32 [ %i.gq, %bb.an ], [ %i.fy, %.preheader.i.i ]
  %.146.i.i = phi ptr [ %.1.i.i, %bb.an ], [ %.144.i.i, %.preheader.i.i ]
  %i.gj = sext i32 %i.gi to i64
  %i.gk = add i64 %i.fq, %i.gj                    ; 3 uses
  %i.gl = icmp ult i64 %i.gk, %i.cf
  %i.gm = icmp ugt i64 %i.gk, %i.fp
  %or.cond39.i.i = or i1 %i.gl, %i.gm
  br i1 %or.cond39.i.i, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.lr.ph47.i.i
  call void @error(ptr noundef nonnull @.str.48) #19
  unreachable

bb.an:                                            ; preds = %.lr.ph47.i.i
  %i.gn = inttoptr i64 %i.gk to ptr               ; 2 uses
  %i.go = load i64, ptr %i.gn, align 8
  %i.gp = add i64 %i.go, %i.fr
  store i64 %i.gp, ptr %i.gn, align 8
  %.1.i.i = getelementptr inbounds i8, ptr %.146.i.i, i64 -4 ; 2 uses
  %i.gq = load i32, ptr %.1.i.i, align 4          ; 2 uses
  %.not38.i.i = icmp eq i32 %i.gq, 0
  br i1 %.not38.i.i, label %decompress_kernel.exit, label %.lr.ph47.i.i, !llvm.loop !58

decompress_kernel.exit:                           ; preds = %bb.an, %__decompress.exit.i, %bb.ah, %.preheader.i.i
  %.0.i = phi i64 [ %i.fo, %.preheader.i.i ], [ -1, %__decompress.exit.i ], [ %i.fo, %bb.ah ], [ %i.fo, %bb.an ] ; 2 uses
  call void @__putstr(ptr noundef nonnull @.str.29) #17
  call fastcc void @__putnum(i64 noundef %.0.i, i32 noundef 16, i32 noundef 16) #17
  call void @__putstr(ptr noundef nonnull @.str.30) #17
  call void @cleanup_exception_handling() #18
  %i.gr = load i32, ptr @spurious_nmi_count, align 4
  %.not17 = icmp eq i32 %i.gr, 0
  br i1 %.not17, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %decompress_kernel.exit
  call void @__putstr(ptr noundef nonnull @.str.31) #17
  %i.gs = load i32, ptr @spurious_nmi_count, align 4
  %i.gt = sext i32 %i.gs to i64
  call fastcc void @__putnum(i64 noundef %i.gt, i32 noundef 10, i32 noundef 1) #17
  call void @__putstr(ptr noundef nonnull @.str.16) #17
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %decompress_kernel.exit
  %i.gu = load ptr, ptr %i.a, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 %.0.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret ptr %i.gv
}

; Function Attrs: noredzone
declare hidden void @console_init() local_unnamed_addr #9

; Function Attrs: noredzone
declare hidden i64 @get_rsdp_addr() local_unnamed_addr #9

; Function Attrs: noredzone
declare hidden void @choose_random_location(i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: noredzone noreturn
declare hidden void @error(ptr noundef) local_unnamed_addr #10

; Function Attrs: noredzone
declare hidden void @cleanup_exception_handling() local_unnamed_addr #9

; Function Attrs: noredzone
declare hidden ptr @memmove(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: noredzone
declare hidden i32 @cmdline_find_option_bool(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: alwaysinline noredzone nounwind
define internal zeroext i8 @__inb(i16 noundef zeroext %0) #12 {
bb.a:
  %i.a = tail call i8 asm sideeffect "inb ${1:w}, ${0:b}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i16 %0) #16, !srcloc !60
  ret i8 %i.a
}

; Function Attrs: alwaysinline noredzone nounwind
define internal void @__outb(i8 noundef zeroext %0, i16 noundef zeroext %1) #12 {
bb.a:
  tail call void asm sideeffect "outb ${0:b}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i8 %0, i16 %1) #16, !srcloc !61
  ret void
}

; Function Attrs: alwaysinline noredzone nounwind
define internal void @__outw(i16 noundef zeroext %0, i16 noundef zeroext %1) #12 {
bb.a:
  tail call void asm sideeffect "outw ${0:w}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i16 %0, i16 %1) #16, !srcloc !62
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { mustprogress nofree norecurse noredzone nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtins" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse noredzone nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtins" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse noredzone nosync nounwind willreturn memory(none) "min-legal-vector-width"="0" "no-builtins" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse noredzone nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtins" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #5 = { inlinehint nofree norecurse noredzone nosync nounwind memory(argmem: read) "min-legal-vector-width"="0" "no-builtins" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse noredzone nosync nounwind willreturn memory(argmem: read) "min-legal-vector-width"="0" "no-builtins" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #8 = { noinline noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #9 = { noredzone "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone noreturn "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { alwaysinline noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { nobuiltin noredzone "no-builtins" }
attributes #18 = { nobuiltin noredzone nounwind "no-builtins" }
attributes #19 = { nobuiltin noredzone noreturn nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 1, !"Code Model", i32 1}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.unroll.disable"}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !8}
!24 = distinct !{!24, !6}
!25 = distinct !{!25, !8}
!26 = distinct !{!26, !6}
!27 = distinct !{!27, !6}
!28 = distinct !{!28, !8}
!29 = distinct !{!29, !6}
!30 = distinct !{!30, !6}
!31 = distinct !{!31, !6}
!32 = distinct !{!32, !6}
!33 = distinct !{!33, !6}
!34 = distinct !{!34, !6}
!35 = distinct !{!35, !8}
!36 = distinct !{!36, !6}
!37 = distinct !{!37, !6}
!38 = distinct !{!38, !6}
!39 = distinct !{!39, !6}
!40 = distinct !{!40, !8}
!41 = distinct !{!41, !6}
!42 = distinct !{!42, !6}
!43 = distinct !{!43, !8}
!44 = distinct !{!44, !6}
!45 = distinct !{!45, !6}
!46 = distinct !{null}
!47 = !{i64 1283723}
!48 = distinct !{!48, !6}
!49 = distinct !{!49, !6}
!50 = distinct !{!50, !6}
!51 = distinct !{!51, !6}
!52 = distinct !{!52, !6}
!53 = distinct !{null, null}
!54 = distinct !{!54, !6}
!55 = distinct !{!55, !6}
!56 = distinct !{!56, !6}
!57 = distinct !{!57, !6}
!58 = distinct !{!58, !6}
!59 = distinct !{ptr @decompress_kernel, null, null}
!60 = !{i64 2155866778}
!61 = !{i64 2155866582}
!62 = !{i64 2155867423}
end_hunk_1
