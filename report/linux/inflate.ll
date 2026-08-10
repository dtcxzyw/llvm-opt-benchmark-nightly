inline.NumInlined: 7
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@zlib_inflateReset:bb.a
  %i.h = getelementptr i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.h, align 8
  store i32 0, ptr %i.c, align 8
  %i.i = getelementptr i8, ptr %i.c, i64 4
  store i32 0, ptr %i.i, align 4
  %i.j = getelementptr i8, ptr %i.c, i64 12
  store i32 0, ptr %i.j, align 4
  %i.k = getelementptr i8, ptr %i.c, i64 20
  store i32 32768, ptr %i.k, align 4
  %i.l = getelementptr i8, ptr %i.c, i64 64
  store i64 0, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %i.c, i64 72
  store i32 0, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %i.c, i64 1352     ; 3 uses
  %i.o = getelementptr i8, ptr %i.c, i64 128
  store ptr %i.n, ptr %i.o, align 8
  %i.p = getelementptr i8, ptr %i.c, i64 96
  store ptr %i.n, ptr %i.p, align 8
  %i.q = getelementptr i8, ptr %i.c, i64 88
  store ptr %i.n, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %i.c, i64 40
  %i.s = load i32, ptr %i.r, align 8
  %i.t = shl nuw i32 1, %i.s
  %i.u = getelementptr i8, ptr %i.c, i64 44
  store i32 %i.t, ptr %i.u, align 4
  %i.v = getelementptr i8, ptr %i.c, i64 52
  store i32 0, ptr %i.v, align 4
  %i.w = getelementptr i8, ptr %i.c, i64 48
  store i32 0, ptr %i.w, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -2, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none)
define dso_local range(i32 -2, 1) i32 @zlib_inflateInit2(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %zlib_inflateReset.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 48
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 56         ; 2 uses
  store ptr %i.d, ptr %i.e, align 8
  %i.f = icmp slt i32 %1, 0
  %i.g = lshr i32 %1, 4
  %i.h = add nuw nsw i32 %i.g, 1
  %.sink = select i1 %i.f, i32 0, i32 %i.h
  %.0 = tail call i32 @llvm.abs.i32(i32 %1, i1 false) ; 2 uses
  %i.i = getelementptr i8, ptr %i.d, i64 8
  store i32 %.sink, ptr %i.i, align 8
  %i.j = add i32 %.0, -16
  %or.cond = icmp ult i32 %i.j, -8
  br i1 %or.cond, label %zlib_inflateReset.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.d, i64 40
  store i32 %.0, ptr %i.k, align 8
  %i.l = load ptr, ptr %i.c, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 9544
  %i.n = getelementptr i8, ptr %i.d, i64 56
  store ptr %i.m, ptr %i.n, align 8
  %i.o = load ptr, ptr %i.e, align 8              ; 16 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %zlib_inflateReset.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.o, i64 32
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %0, i64 40
  %i.s = getelementptr i8, ptr %0, i64 16
  store i64 0, ptr %i.s, align 8
  %i.t = getelementptr i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.t, align 8
  store i32 0, ptr %i.o, align 8
  %i.u = getelementptr i8, ptr %i.o, i64 4
  store i32 0, ptr %i.u, align 4
  %i.v = getelementptr i8, ptr %i.o, i64 12
  store i32 0, ptr %i.v, align 4
  %i.w = getelementptr i8, ptr %i.o, i64 20
  store i32 32768, ptr %i.w, align 4
  %i.x = getelementptr i8, ptr %i.o, i64 64
  store i64 0, ptr %i.x, align 8
  %i.y = getelementptr i8, ptr %i.o, i64 72
  store i32 0, ptr %i.y, align 8
  %i.z = getelementptr i8, ptr %i.o, i64 1352     ; 3 uses
  %i.aa = getelementptr i8, ptr %i.o, i64 128
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr i8, ptr %i.o, i64 96
  store ptr %i.z, ptr %i.ab, align 8
  %i.ac = getelementptr i8, ptr %i.o, i64 88
  store ptr %i.z, ptr %i.ac, align 8
  %i.ad = getelementptr i8, ptr %i.o, i64 40
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = shl nuw i32 1, %i.ae
  %i.ag = getelementptr i8, ptr %i.o, i64 44
  store i32 %i.af, ptr %i.ag, align 4
  %i.ah = getelementptr i8, ptr %i.o, i64 52
  store i32 0, ptr %i.ah, align 4
  %i.ai = getelementptr i8, ptr %i.o, i64 48
  store i32 0, ptr %i.ai, align 8
  br label %zlib_inflateReset.exit

zlib_inflateReset.exit:                           ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.018 = phi i32 [ -2, %bb.b ], [ -2, %bb.a ], [ 0, %bb.d ], [ -2, %bb.c ]
  ret i32 %.018
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @zlib_inflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %zlib_inflateSyncPacket.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 56         ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 68 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %zlib_inflateSyncPacket.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8                ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.e, label %zlib_inflateSyncPacket.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = load i32, ptr %i.c, align 8              ; 2 uses
  %i.j = icmp eq i32 %i.i, 11
  br i1 %i.j, label %bb.f, label %.split1774

bb.f:                                             ; preds = %bb.e
  store i32 12, ptr %i.c, align 8
  %.pre = load ptr, ptr %0, align 8
  br label %.split1774

.split1774:                                       ; preds = %bb.e, %bb.f
  %i.k = phi i32 [ %i.i, %bb.e ], [ 12, %bb.f ]
  %i.l = phi ptr [ %i.e, %bb.e ], [ %.pre, %bb.f ]
  %i.m = getelementptr i8, ptr %0, i64 24         ; 9 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %0, i64 32         ; 9 uses
  %i.p = load i64, ptr %i.o, align 8
  %i.q = trunc i64 %i.p to i32                    ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 8          ; 7 uses
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = trunc i64 %i.s to i32
  %i.u = getelementptr i8, ptr %i.c, i64 64       ; 5 uses
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr i8, ptr %i.c, i64 72       ; 6 uses
  %i.x = load i32, ptr %i.w, align 8
  %i.y = getelementptr i8, ptr %i.c, i64 8        ; 3 uses
  %i.z = getelementptr i8, ptr %0, i64 40         ; 4 uses
  %i.aa = getelementptr i8, ptr %i.c, i64 32      ; 4 uses
  %i.ab = getelementptr i8, ptr %i.c, i64 24      ; 8 uses
  %i.ac = getelementptr i8, ptr %0, i64 80        ; 5 uses
  %i.ad = getelementptr i8, ptr %0, i64 48        ; 15 uses
  %i.ae = getelementptr i8, ptr %i.c, i64 76      ; 12 uses
  %i.af = getelementptr i8, ptr %i.c, i64 116     ; 3 uses
  %i.ag = getelementptr i8, ptr %i.c, i64 120     ; 3 uses
  %i.ah = getelementptr i8, ptr %i.c, i64 112     ; 2 uses
  %i.ai = getelementptr i8, ptr %i.c, i64 124     ; 8 uses
  %i.aj = getelementptr i8, ptr %i.c, i64 136     ; 16 uses
  %i.ak = getelementptr i8, ptr %i.c, i64 1352    ; 4 uses
  %i.al = getelementptr i8, ptr %i.c, i64 128     ; 6 uses
  %i.am = getelementptr i8, ptr %i.c, i64 88      ; 5 uses
  %i.an = getelementptr i8, ptr %i.c, i64 104     ; 7 uses
  %i.ao = getelementptr i8, ptr %i.c, i64 776     ; 3 uses
  %i.ap = getelementptr i8, ptr %i.c, i64 96      ; 3 uses
  %i.aq = getelementptr i8, ptr %i.c, i64 108     ; 4 uses
  %i.ar = getelementptr i8, ptr %i.c, i64 84      ; 4 uses
  %i.as = getelementptr i8, ptr %i.c, i64 80      ; 5 uses
  %i.at = getelementptr i8, ptr %i.c, i64 48
  %i.au = getelementptr i8, ptr %i.c, i64 52
  %i.av = getelementptr i8, ptr %i.c, i64 56
  %i.aw = getelementptr i8, ptr %i.c, i64 44      ; 2 uses
  %i.ax = getelementptr i8, ptr %i.c, i64 12
  %i.ay = icmp eq i32 %1, 6
  %i.az = getelementptr i8, ptr %i.c, i64 4       ; 3 uses
  %i.ba = getelementptr i8, ptr %i.c, i64 40
  %i.bb = getelementptr i8, ptr %i.c, i64 20
  br label %bb.g

bb.g:                                             ; preds = %.thread, %.split1774
  %i.bc = phi i32 [ %i.k, %.split1774 ], [ %.pre2168, %.thread ]
  %.0783 = phi ptr [ %i.l, %.split1774 ], [ %.41824, %.thread ] ; 49 uses
  %.0780 = phi ptr [ %i.n, %.split1774 ], [ %.2782, %.thread ] ; 32 uses
  %.0737 = phi i32 [ %i.t, %.split1774 ], [ %.41778, %.thread ] ; 44 uses
  %.0735 = phi i32 [ %i.q, %.split1774 ], [ %.1736, %.thread ] ; 60 uses
  %.0692 = phi i64 [ %i.v, %.split1774 ], [ %.41733, %.thread ] ; 31 uses
  %.0683 = phi i32 [ %i.x, %.split1774 ], [ %.41, %.thread ] ; 41 uses
  %.0678 = phi i32 [ %i.q, %.split1774 ], [ %.3681, %.thread ] ; 55 uses
  %.0 = phi i32 [ 0, %.split1774 ], [ %.7, %.thread ] ; 29 uses
  switch i32 %i.bc, label %zlib_inflateSyncPacket.exit [
    i32 0, label %bb.h
    i32 9, label %.preheader917
    i32 10, label %bb.v
    i32 11, label %bb.y
    i32 12, label %bb.z
    i32 13, label %bb.ag
    i32 14, label %._crit_edge2182
    i32 15, label %.preheader932
    i32 16, label %.split
    i32 17, label %._crit_edge2171
    i32 18, label %bb.bm
    i32 19, label %._crit_edge2176
    i32 20, label %bb.bz
    i32 21, label %._crit_edge2178
    i32 22, label %bb.cj
    i32 23, label %bb.cs
    i32 24, label %bb.cu
    i32 26, label %.loopexit.loopexit3039
    i32 27, label %.loopexit
    i32 28, label %zlib_inflateSyncPacket.exit.loopexit
  ]

._crit_edge2182:                                  ; preds = %bb.g
  %.pre2183 = load i32, ptr %i.ae, align 4
  br label %bb.an

._crit_edge2178:                                  ; preds = %bb.g
  %.pre2179 = load i32, ptr %i.ar, align 4
  br label %bb.cf

._crit_edge2176:                                  ; preds = %bb.g
  %.pre2177 = load i32, ptr %i.ar, align 4
  br label %bb.bx

._crit_edge2171:                                  ; preds = %bb.g
  %.promoted1511.pre = load i32, ptr %i.ai, align 4
  br label %bb.ax

.preheader932:                                    ; preds = %bb.g
  %i.bd = icmp ult i32 %.0683, 14
  br i1 %i.bd, label %.lr.ph1301.preheader, label %._crit_edge1302

.lr.ph1301.preheader:                             ; preds = %.preheader932
  %i.be = zext nneg i32 %.0683 to i64             ; 4 uses
  %i.bf = icmp eq i32 %.0737, 0
  br i1 %i.bf, label %.loopexit.loopexit1790, label %bb.ar

.preheader917:                                    ; preds = %bb.g
  %i.bg = icmp ult i32 %.0683, 32
  br i1 %i.bg, label %.lr.ph1628.preheader, label %._crit_edge1629

.lr.ph1628.preheader:                             ; preds = %.preheader917
  %i.bh = zext nneg i32 %.0683 to i64             ; 5 uses
  %i.bi = icmp eq i32 %.0737, 0
  br i1 %i.bi, label %.loopexit.loopexit1781, label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.bj = load i32, ptr %i.y, align 8
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.i, label %.preheader913

.preheader913:                                    ; preds = %bb.h
  %i.bl = icmp ult i32 %.0683, 16
  br i1 %i.bl, label %.lr.ph1768.preheader, label %._crit_edge1769

.lr.ph1768.preheader:                             ; preds = %.preheader913
  %i.bm = zext nneg i32 %.0683 to i64             ; 4 uses
  %i.bn = icmp eq i32 %.0737, 0
  br i1 %i.bn, label %.loopexit.loopexit1780, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 12, ptr %i.c, align 8
  br label %.thread

bb.j:                                             ; preds = %.lr.ph1768.preheader
  %i.bo = add i32 %.0737, -1                      ; 2 uses
  %i.bp = getelementptr i8, ptr %.0783, i64 1     ; 3 uses
  %i.bq = load i8, ptr %.0783, align 1
  %i.br = zext i8 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.br, %i.bm
  %i.bt = add i64 %i.bs, %.0692                   ; 3 uses
  %indvars.iv.next2166 = add nuw nsw i64 %i.bm, 8 ; 3 uses
  %i.bu = icmp ult i32 %.0683, 8
  br i1 %i.bu, label %.lr.ph1768.1, label %._crit_edge1769.loopexit

.lr.ph1768.1:                                     ; preds = %bb.j
  %i.bv = icmp eq i32 %i.bo, 0
  br i1 %i.bv, label %.loopexit.loopexit1780, label %bb.k

bb.k:                                             ; preds = %.lr.ph1768.1
  %i.bw = add i32 %.0737, -2
  %i.bx = getelementptr i8, ptr %.0783, i64 2
  %i.by = load i8, ptr %i.bp, align 1
  %i.bz = zext i8 %i.by to i64
  %i.ca = shl nuw nsw i64 %i.bz, %indvars.iv.next2166
  %i.cb = add i64 %i.ca, %i.bt
  %indvars.iv.next2166.1 = or disjoint i64 %i.bm, 16
  br label %._crit_edge1769.loopexit

._crit_edge1769.loopexit:                         ; preds = %bb.k, %bb.j
  %.lcssa3216 = phi i32 [ %i.bo, %bb.j ], [ %i.bw, %bb.k ]
  %.lcssa3215 = phi ptr [ %i.bp, %bb.j ], [ %i.bx, %bb.k ]
  %.lcssa3214 = phi i64 [ %i.bt, %bb.j ], [ %i.cb, %bb.k ]
  %indvars.iv.next2166.lcssa = phi i64 [ %indvars.iv.next2166, %bb.j ], [ %indvars.iv.next2166.1, %bb.k ]
  %i.cc = trunc nuw nsw i64 %indvars.iv.next2166.lcssa to i32
  br label %._crit_edge1769

._crit_edge1769:                                  ; preds = %._crit_edge1769.loopexit, %.preheader913
  %.1784.lcssa = phi ptr [ %.0783, %.preheader913 ], [ %.lcssa3215, %._crit_edge1769.loopexit ] ; 4 uses
  %.1738.lcssa = phi i32 [ %.0737, %.preheader913 ], [ %.lcssa3216, %._crit_edge1769.loopexit ] ; 4 uses
  %.1693.lcssa = phi i64 [ %.0692, %.preheader913 ], [ %.lcssa3214, %._crit_edge1769.loopexit ] ; 7 uses
  %.1684.lcssa = phi i32 [ %.0683, %.preheader913 ], [ %i.cc, %._crit_edge1769.loopexit ] ; 3 uses
  %i.cd = shl i64 %.1693.lcssa, 8
  %i.ce = and i64 %i.cd, 65280
  %i.cf = lshr i64 %.1693.lcssa, 8
  %i.cg = add nuw nsw i64 %i.ce, %i.cf
  %i.ch = urem i64 %i.cg, 31
  %.not885 = icmp eq i64 %i.ch, 0
  br i1 %.not885, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge1769
  store ptr @.str, ptr %i.ad, align 8
  store i32 27, ptr %i.c, align 8
  br label %.thread

bb.m:                                             ; preds = %._crit_edge1769
  %i.ci = and i64 %.1693.lcssa, 15
  %.not886 = icmp eq i64 %i.ci, 8
  br i1 %.not886, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr @.str.1, ptr %i.ad, align 8
  store i32 27, ptr %i.c, align 8
  br label %.thread

bb.o:                                             ; preds = %bb.m
  %i.cj = lshr i64 %.1693.lcssa, 4                ; 2 uses
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = and i32 %i.ck, 15                       ; 2 uses
  %i.cm = add nuw nsw i32 %i.cl, 8
  %i.cn = load i32, ptr %i.ba, align 8
  %i.co = icmp ugt i32 %i.cm, %i.cn
  br i1 %i.co, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cp = add i32 %.1684.lcssa, -4
  store ptr @.str.2, ptr %i.ad, align 8
  store i32 27, ptr %i.c, align 8
  br label %.thread

bb.q:                                             ; preds = %bb.o
  %i.cq = shl nuw nsw i32 256, %i.cl
  store i32 %i.cq, ptr %i.bb, align 4
  store i64 1, ptr %i.ab, align 8
  store i64 1, ptr %i.ac, align 8
  %i.cr = and i64 %.1693.lcssa, 8192
  %.not887 = icmp eq i64 %i.cr, 0
  %i.cs = select i1 %.not887, i32 11, i32 9
  store i32 %i.cs, ptr %i.c, align 8
  br label %.thread

bb.r:                                             ; preds = %.lr.ph1628.preheader
  %i.ct = add i32 %.0737, -1                      ; 2 uses
  %i.cu = getelementptr i8, ptr %.0783, i64 1     ; 3 uses
  %i.cv = load i8, ptr %.0783, align 1
  %i.cw = zext i8 %i.cv to i64
  %i.cx = shl nuw nsw i64 %i.cw, %i.bh
  %i.cy = add i64 %i.cx, %.0692                   ; 3 uses
  %indvars.iv.next2163 = add nuw nsw i64 %i.bh, 8 ; 2 uses
  %i.cz = icmp ult i32 %.0683, 24
  br i1 %i.cz, label %.lr.ph1628.1, label %._crit_edge1629

.lr.ph1628.1:                                     ; preds = %bb.r
  %i.da = icmp eq i32 %i.ct, 0
  br i1 %i.da, label %.loopexit.loopexit1781, label %bb.s

bb.s:                                             ; preds = %.lr.ph1628.1
  %i.db = add i32 %.0737, -2                      ; 2 uses
  %i.dc = getelementptr i8, ptr %.0783, i64 2     ; 3 uses
  %i.dd = load i8, ptr %i.cu, align 1
  %i.de = zext i8 %i.dd to i64
  %i.df = shl nuw nsw i64 %i.de, %indvars.iv.next2163
  %i.dg = add i64 %i.df, %i.cy                    ; 3 uses
  %indvars.iv.next2163.1 = add nuw nsw i64 %i.bh, 16 ; 2 uses
  %i.dh = icmp ult i32 %.0683, 16
  br i1 %i.dh, label %.lr.ph1628.2, label %._crit_edge1629

.lr.ph1628.2:                                     ; preds = %bb.s
  %i.di = icmp eq i32 %i.db, 0
  br i1 %i.di, label %.loopexit.loopexit1781, label %bb.t

bb.t:                                             ; preds = %.lr.ph1628.2
  %i.dj = add i32 %.0737, -3                      ; 2 uses
  %i.dk = getelementptr i8, ptr %.0783, i64 3     ; 3 uses
  %i.dl = load i8, ptr %i.dc, align 1
  %i.dm = zext i8 %i.dl to i64
  %i.dn = shl nuw nsw i64 %i.dm, %indvars.iv.next2163.1
  %i.do = add i64 %i.dn, %i.dg                    ; 3 uses
end_hunk_0
begin_hunk_1_@zlib_inflate:bb.a
._crit_edge1302.loopexit:                         ; preds = %bb.as, %bb.ar
  %.lcssa3057 = phi i32 [ %i.gx, %bb.ar ], [ %i.hf, %bb.as ]
  %.lcssa3056 = phi ptr [ %i.gy, %bb.ar ], [ %i.hg, %bb.as ]
  %.lcssa3055 = phi i64 [ %i.hc, %bb.ar ], [ %i.hk, %bb.as ]
  %indvars.iv.next2122.lcssa = phi i64 [ %indvars.iv.next2122, %bb.ar ], [ %indvars.iv.next2122.1, %bb.as ]
  %i.hl = trunc nuw nsw i64 %indvars.iv.next2122.lcssa to i32
  br label %._crit_edge1302

._crit_edge1302:                                  ; preds = %._crit_edge1302.loopexit, %.preheader932
  %.9792.lcssa = phi ptr [ %.0783, %.preheader932 ], [ %.lcssa3056, %._crit_edge1302.loopexit ] ; 2 uses
  %.9746.lcssa = phi i32 [ %.0737, %.preheader932 ], [ %.lcssa3057, %._crit_edge1302.loopexit ] ; 2 uses
  %.9701.lcssa = phi i64 [ %.0692, %.preheader932 ], [ %.lcssa3055, %._crit_edge1302.loopexit ] ; 2 uses
  %.9.lcssa = phi i32 [ %.0683, %.preheader932 ], [ %i.hl, %._crit_edge1302.loopexit ]
  %i.hm = trunc i64 %.9701.lcssa to i32           ; 3 uses
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
  %i.hv = lshr i64 %.9701.lcssa, 14               ; 2 uses
  %i.hw = add i32 %.9.lcssa, -14                  ; 2 uses
  %i.hx = icmp samesign ugt i32 %i.hn, 29
  %i.hy = icmp samesign ugt i32 %i.hq, 29
  %or.cond900 = select i1 %i.hx, i1 true, i1 %i.hy
  br i1 %or.cond900, label %bb.at, label %.split.thread

bb.at:                                            ; preds = %._crit_edge1302
  store ptr @.str.5, ptr %i.ad, align 8
  store i32 27, ptr %i.c, align 8
  br label %.thread

.split.thread:                                    ; preds = %._crit_edge1302
  store i32 0, ptr %i.ai, align 4
  store i32 16, ptr %i.c, align 8
  br label %.preheader911.preheader

.split:                                           ; preds = %bb.g
  %.promoted.pre = load i32, ptr %i.ai, align 4   ; 3 uses
  %.pre2170 = load i32, ptr %i.ah, align 8        ; 2 uses
  %i.hz = icmp ult i32 %.promoted.pre, %.pre2170
  br i1 %i.hz, label %.preheader911.preheader, label %.preheader931

.preheader911.preheader:                          ; preds = %.split.thread, %.split
  %.102228 = phi i32 [ %i.hw, %.split.thread ], [ %.0683, %.split ]
  %.107022227 = phi i64 [ %i.hv, %.split.thread ], [ %.0692, %.split ]
  %.107472226 = phi i32 [ %.9746.lcssa, %.split.thread ], [ %.0737, %.split ]
  %.107932225 = phi ptr [ %.9792.lcssa, %.split.thread ], [ %.0783, %.split ]
  %.promoted2224 = phi i32 [ 0, %.split.thread ], [ %.promoted.pre, %.split ]
  %i.ia = phi i32 [ %i.hu, %.split.thread ], [ %.pre2170, %.split ]
  %i.ib = zext i32 %.promoted2224 to i64
  %i.ic = zext i32 %i.ia to i64
  br label %.preheader911

.preheader931:                                    ; preds = %bb.au, %.split
  %.11794.lcssa = phi ptr [ %.0783, %.split ], [ %.12795.lcssa, %bb.au ] ; 2 uses
  %.11748.lcssa = phi i32 [ %.0737, %.split ], [ %.12749.lcssa, %bb.au ] ; 2 uses
  %.11703.lcssa = phi i64 [ %.0692, %.split ], [ %i.jf, %bb.au ] ; 2 uses
  %.11.lcssa = phi i32 [ %.0683, %.split ], [ %i.jg, %bb.au ] ; 2 uses
  %.lcssa = phi i32 [ %.promoted.pre, %.split ], [ %i.ja, %bb.au ] ; 5 uses
  %i.id = icmp ult i32 %.lcssa, 19
  br i1 %i.id, label %.lr.ph1447.preheader, label %._crit_edge1448

.lr.ph1447.preheader:                             ; preds = %.preheader931
  %i.ie = and i32 %.lcssa, 3                      ; 2 uses
  %lcmp.mod.not = icmp eq i32 %i.ie, 3
  br i1 %lcmp.mod.not, label %.lr.ph1447.prol.loopexit, label %.lr.ph1447.prol

.lr.ph1447.prol:                                  ; preds = %.lr.ph1447.preheader, %.lr.ph1447.prol
  %i.if = phi i32 [ %i.ig, %.lr.ph1447.prol ], [ %.lcssa, %.lr.ph1447.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph1447.prol ], [ 0, %.lr.ph1447.preheader ]
  %i.ig = add nuw nsw i32 %i.if, 1                ; 3 uses
  %i.ih = zext nneg i32 %i.if to i64
  %i.ii = getelementptr [2 x i8], ptr @zlib_inflate.order, i64 %i.ih
  %i.ij = load i16, ptr %i.ii, align 2
  %i.ik = zext i16 %i.ij to i64
  %i.il = getelementptr [2 x i8], ptr %i.aj, i64 %i.ik
  store i16 0, ptr %i.il, align 2
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %i.im = xor i32 %i.ie, %prol.iter.next
  %prol.iter.cmp.not = icmp eq i32 %i.im, 3
  br i1 %prol.iter.cmp.not, label %.lr.ph1447.prol.loopexit, label %.lr.ph1447.prol, !llvm.loop !10

.lr.ph1447.prol.loopexit:                         ; preds = %.lr.ph1447.prol, %.lr.ph1447.preheader
  %.unr = phi i32 [ %.lcssa, %.lr.ph1447.preheader ], [ %i.ig, %.lr.ph1447.prol ]
  %.lcssa3064.unr = phi i32 [ poison, %.lr.ph1447.preheader ], [ %i.ig, %.lr.ph1447.prol ]
  %i.in = icmp ugt i32 %.lcssa, 15
  br i1 %i.in, label %._crit_edge1448.loopexit, label %.lr.ph1447

.preheader911:                                    ; preds = %.preheader911.preheader, %bb.au
  %indvars.iv2124 = phi i64 [ %i.ib, %.preheader911.preheader ], [ %indvars.iv.next2125, %bb.au ] ; 2 uses
  %.111440 = phi i32 [ %.102228, %.preheader911.preheader ], [ %i.jg, %bb.au ] ; 5 uses
  %.117031439 = phi i64 [ %.107022227, %.preheader911.preheader ], [ %i.jf, %bb.au ] ; 3 uses
  %.117481438 = phi i32 [ %.107472226, %.preheader911.preheader ], [ %.12749.lcssa, %bb.au ] ; 3 uses
  %.117941437 = phi ptr [ %.107932225, %.preheader911.preheader ], [ %.12795.lcssa, %bb.au ] ; 4 uses
  %i.io = icmp ult i32 %.111440, 3
  br i1 %i.io, label %.lr.ph1311, label %bb.au

.lr.ph1311:                                       ; preds = %.preheader911
  %i.ip = icmp eq i32 %.117481438, 0
  br i1 %i.ip, label %.loopexit, label %._crit_edge1312

._crit_edge1312:                                  ; preds = %.lr.ph1311
  %i.iq = or disjoint i32 %.111440, 8
  %i.ir = add i32 %.117481438, -1
  %i.is = getelementptr i8, ptr %.117941437, i64 1
  %i.it = load i8, ptr %.117941437, align 1
  %i.iu = zext i8 %i.it to i64
  %i.iv = zext nneg i32 %.111440 to i64
  %i.iw = shl nuw nsw i64 %i.iu, %i.iv
  %i.ix = add i64 %i.iw, %.117031439
  br label %bb.au

bb.au:                                            ; preds = %._crit_edge1312, %.preheader911
  %.12795.lcssa = phi ptr [ %i.is, %._crit_edge1312 ], [ %.117941437, %.preheader911 ] ; 2 uses
  %.12749.lcssa = phi i32 [ %i.ir, %._crit_edge1312 ], [ %.117481438, %.preheader911 ] ; 2 uses
  %.12704.lcssa = phi i64 [ %i.ix, %._crit_edge1312 ], [ %.117031439, %.preheader911 ] ; 2 uses
  %.12.lcssa = phi i32 [ %i.iq, %._crit_edge1312 ], [ %.111440, %.preheader911 ]
  %i.iy = trunc i64 %.12704.lcssa to i16
  %i.iz = and i16 %i.iy, 7
  %indvars.iv.next2125 = add nuw nsw i64 %indvars.iv2124, 1 ; 3 uses
  %i.ja = trunc nuw i64 %indvars.iv.next2125 to i32 ; 2 uses
  store i32 %i.ja, ptr %i.ai, align 4
  %i.jb = getelementptr [2 x i8], ptr @zlib_inflate.order, i64 %indvars.iv2124
  %i.jc = load i16, ptr %i.jb, align 2
  %i.jd = zext i16 %i.jc to i64
  %i.je = getelementptr [2 x i8], ptr %i.aj, i64 %i.jd
  store i16 %i.iz, ptr %i.je, align 2
  %i.jf = lshr i64 %.12704.lcssa, 3               ; 2 uses
  %i.jg = add i32 %.12.lcssa, -3                  ; 2 uses
  %i.jh = icmp samesign ult i64 %indvars.iv.next2125, %i.ic
  br i1 %i.jh, label %.preheader911, label %.preheader931, !llvm.loop !12

.lr.ph1447:                                       ; preds = %.lr.ph1447.prol.loopexit, %.lr.ph1447
  %i.ji = phi i32 [ %i.kb, %.lr.ph1447 ], [ %.unr, %.lr.ph1447.prol.loopexit ] ; 6 uses
  %i.jj = zext nneg i32 %i.ji to i64
  %i.jk = getelementptr [2 x i8], ptr @zlib_inflate.order, i64 %i.jj
  %i.jl = load i16, ptr %i.jk, align 2
  %i.jm = zext i16 %i.jl to i64
  %i.jn = getelementptr [2 x i8], ptr %i.aj, i64 %i.jm
  store i16 0, ptr %i.jn, align 2
  %i.jo = sext i32 %i.ji to i64
  %i.jp = getelementptr [2 x i8], ptr @zlib_inflate.order, i64 %i.jo
  %i.jq = getelementptr i8, ptr %i.jp, i64 2
  %i.jr = load i16, ptr %i.jq, align 2
  %i.js = zext i16 %i.jr to i64
  %i.jt = getelementptr [2 x i8], ptr %i.aj, i64 %i.js
  store i16 0, ptr %i.jt, align 2
  %i.ju = add nuw nsw i32 %i.ji, 3
  %i.jv = sext i32 %i.ji to i64
  %i.jw = getelementptr [2 x i8], ptr @zlib_inflate.order, i64 %i.jv
  %i.jx = getelementptr i8, ptr %i.jw, i64 4
  %i.jy = load i16, ptr %i.jx, align 2
  %i.jz = zext i16 %i.jy to i64
  %i.ka = getelementptr [2 x i8], ptr %i.aj, i64 %i.jz
  store i16 0, ptr %i.ka, align 2
  %i.kb = add nuw nsw i32 %i.ji, 4                ; 2 uses
  %i.kc = zext nneg i32 %i.ju to i64
  %i.kd = getelementptr [2 x i8], ptr @zlib_inflate.order, i64 %i.kc
  %i.ke = load i16, ptr %i.kd, align 2
  %i.kf = zext i16 %i.ke to i64
  %i.kg = getelementptr [2 x i8], ptr %i.aj, i64 %i.kf
  store i16 0, ptr %i.kg, align 2
  %i.kh = icmp ult i32 %i.ji, 15
  br i1 %i.kh, label %.lr.ph1447, label %._crit_edge1448.loopexit, !llvm.loop !14

._crit_edge1448.loopexit:                         ; preds = %.lr.ph1447, %.lr.ph1447.prol.loopexit
  %.lcssa3064 = phi i32 [ %.lcssa3064.unr, %.lr.ph1447.prol.loopexit ], [ %i.kb, %.lr.ph1447 ]
  store i32 %.lcssa3064, ptr %i.ai, align 4
  br label %._crit_edge1448

._crit_edge1448:                                  ; preds = %._crit_edge1448.loopexit, %.preheader931
  store ptr %i.ak, ptr %i.al, align 8
  store ptr %i.ak, ptr %i.am, align 8
  store i32 7, ptr %i.an, align 8
  %i.ki = tail call i32 @zlib_inflate_table(i32 noundef 0, ptr noundef %i.aj, i32 noundef 19, ptr noundef %i.al, ptr noundef %i.an, ptr noundef %i.ao) #11 ; 2 uses
  %.not858 = icmp eq i32 %i.ki, 0
  br i1 %.not858, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %._crit_edge1448
  store ptr @.str.6, ptr %i.ad, align 8
  store i32 27, ptr %i.c, align 8
  br label %.thread

bb.aw:                                            ; preds = %._crit_edge1448
  store i32 0, ptr %i.ai, align 4
  store i32 17, ptr %i.c, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %._crit_edge2171, %bb.aw
  %.promoted1511 = phi i32 [ 0, %bb.aw ], [ %.promoted1511.pre, %._crit_edge2171 ] ; 2 uses
  %.13796 = phi ptr [ %.11794.lcssa, %bb.aw ], [ %.0783, %._crit_edge2171 ] ; 2 uses
  %.13750 = phi i32 [ %.11748.lcssa, %bb.aw ], [ %.0737, %._crit_edge2171 ] ; 2 uses
  %.13705 = phi i64 [ %.11703.lcssa, %bb.aw ], [ %.0692, %._crit_edge2171 ] ; 2 uses
  %.13 = phi i32 [ %.11.lcssa, %bb.aw ], [ %.0683, %._crit_edge2171 ] ; 2 uses
  %.1 = phi i32 [ 0, %bb.aw ], [ %.0, %._crit_edge2171 ] ; 7 uses
  %i.kj = load i32, ptr %i.af, align 4            ; 2 uses
  %i.kk = load i32, ptr %i.ag, align 8
  %i.kl = add i32 %i.kk, %i.kj                    ; 3 uses
  %i.km = icmp ult i32 %.promoted1511, %i.kl
  br i1 %i.km, label %.preheader909.preheader, label %._crit_edge1519

.preheader909.preheader:                          ; preds = %bb.ax
  %.pre2173 = load ptr, ptr %i.am, align 8        ; 3 uses
  %.pre2174 = load i32, ptr %i.an, align 8
  %notmask = shl nsw i32 -1, %.pre2174
  %i.kn = xor i32 %notmask, -1                    ; 2 uses
  br label %.preheader909

.preheader909:                                    ; preds = %.preheader909.preheader, %bb.bh
  %.141518 = phi i32 [ %.21, %bb.bh ], [ %.13, %.preheader909.preheader ] ; 4 uses
  %.147061517 = phi i64 [ %.21713, %bb.bh ], [ %.13705, %.preheader909.preheader ] ; 4 uses
  %.147511516 = phi i32 [ %.21758, %bb.bh ], [ %.13750, %.preheader909.preheader ] ; 5 uses
  %.147971515 = phi ptr [ %.21804, %bb.bh ], [ %.13796, %.preheader909.preheader ] ; 3 uses
  %.lcssa149915121514 = phi i32 [ %.lcssa14991513, %bb.bh ], [ %.promoted1511, %.preheader909.preheader ] ; 7 uses
  %i.ko = trunc i64 %.147061517 to i32
  %i.kp = and i32 %i.kn, %i.ko
  %i.kq = zext nneg i32 %i.kp to i64              ; 2 uses
  %i.kr = getelementptr [4 x i8], ptr %.pre2173, i64 %i.kq
  %.sroa.19.0..sroa_idx1451 = getelementptr inbounds nuw i8, ptr %i.kr, i64 1
  %.sroa.19.0.copyload1452 = load i8, ptr %.sroa.19.0..sroa_idx1451, align 1 ; 2 uses
  %i.ks = zext i8 %.sroa.19.0.copyload1452 to i32 ; 2 uses
  %.not8591453 = icmp ult i32 %.141518, %i.ks
  br i1 %.not8591453, label %.lr.ph1458.preheader, label %._crit_edge1459

.lr.ph1458.preheader:                             ; preds = %.preheader909
  %i.kt = icmp eq i32 %.147511516, 0
  br i1 %i.kt, label %.loopexit.loopexit2229, label %.lr.ph2895

.lr.ph2895:                                       ; preds = %.lr.ph1458.preheader
  %i.ku = zext nneg i32 %.141518 to i64
  br label %bb.ay

.lr.ph1458:                                       ; preds = %bb.ay
  %i.kv = icmp eq i32 %i.kw, 0
  br i1 %i.kv, label %.loopexit.loopexit2229, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph2895, %.lr.ph1458
  %.1579814542894 = phi ptr [ %.147971515, %.lr.ph2895 ], [ %i.kx, %.lr.ph1458 ] ; 2 uses
  %.1575214552893 = phi i32 [ %.147511516, %.lr.ph2895 ], [ %i.kw, %.lr.ph1458 ]
  %.1570714562892 = phi i64 [ %.147061517, %.lr.ph2895 ], [ %i.lb, %.lr.ph1458 ]
  %indvars.iv21272891 = phi i64 [ %i.ku, %.lr.ph2895 ], [ %indvars.iv.next2128.a, %.lr.ph1458 ] ; 2 uses
  %i.kw = add i32 %.1575214552893, -1             ; 3 uses
  %i.kx = getelementptr i8, ptr %.1579814542894, i64 1 ; 2 uses
  %i.ky = load i8, ptr %.1579814542894, align 1
  %i.kz = zext i8 %i.ky to i64
  %i.la = shl i64 %i.kz, %indvars.iv21272891
  %i.lb = add i64 %i.la, %.1570714562892          ; 4 uses
  %indvars.iv.next2128.a = add nuw nsw i64 %indvars.iv21272891, 8 ; 3 uses
  %i.lc = trunc i64 %i.lb to i32
  %i.ld = and i32 %i.kn, %i.lc
  %i.le = zext nneg i32 %i.ld to i64              ; 2 uses
  %i.lf = getelementptr [4 x i8], ptr %.pre2173, i64 %i.le
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lf, i64 1
  %.sroa.19.0.copyload = load i8, ptr %.sroa.19.0..sroa_idx, align 1 ; 3 uses
  %i.lg = zext i8 %.sroa.19.0.copyload to i64
  %.not859 = icmp samesign ult i64 %indvars.iv.next2128.a, %i.lg
  br i1 %.not859, label %.lr.ph1458, label %._crit_edge1459.loopexit

._crit_edge1459.loopexit:                         ; preds = %bb.ay
  %i.lh = zext i8 %.sroa.19.0.copyload to i32
  %i.li = trunc nuw nsw i64 %indvars.iv.next2128.a to i32
  br label %._crit_edge1459

._crit_edge1459:                                  ; preds = %._crit_edge1459.loopexit, %.preheader909
  %i.lj = phi i64 [ %i.kq, %.preheader909 ], [ %i.le, %._crit_edge1459.loopexit ]
  %.lcssa1449 = phi i32 [ %i.ks, %.preheader909 ], [ %i.lh, %._crit_edge1459.loopexit ] ; 9 uses
  %.15798.lcssa = phi ptr [ %.147971515, %.preheader909 ], [ %i.kx, %._crit_edge1459.loopexit ] ; 8 uses
  %.15752.lcssa = phi i32 [ %.147511516, %.preheader909 ], [ %i.kw, %._crit_edge1459.loopexit ] ; 8 uses
  %.15707.lcssa = phi i64 [ %.147061517, %.preheader909 ], [ %i.lb, %._crit_edge1459.loopexit ] ; 8 uses
  %.15.lcssa = phi i32 [ %.141518, %.preheader909 ], [ %i.li, %._crit_edge1459.loopexit ] ; 12 uses
  %.sroa.19.0.copyload.lcssa = phi i8 [ %.sroa.19.0.copyload1452, %.preheader909 ], [ %.sroa.19.0.copyload, %._crit_edge1459.loopexit ] ; 4 uses
  %i.lk = getelementptr [4 x i8], ptr %.pre2173, i64 %i.lj
  %.sroa.42.0..sroa_idx.le = getelementptr inbounds nuw i8, ptr %i.lk, i64 2
  %.sroa.42.0.copyload.le = load i16, ptr %.sroa.42.0..sroa_idx.le, align 2 ; 3 uses
  %i.ll = icmp ult i16 %.sroa.42.0.copyload.le, 16
  br i1 %i.ll, label %.preheader, label %bb.az

.preheader:                                       ; preds = %._crit_edge1459
  %2 = icmp ult i32 %.15.lcssa, %.lcssa1449
  br i1 %2, label %.lr.ph1505.preheader, label %._crit_edge1506

.lr.ph1505.preheader:                             ; preds = %.preheader
  %3 = zext nneg i32 %.15.lcssa to i64
  %4 = zext nneg i32 %.lcssa1449 to i64
  br label %.lr.ph1505

.lr.ph1505:                                       ; preds = %.lr.ph1505.preheader, %6
  %indvars.iv2139 = phi i64 [ %3, %.lr.ph1505.preheader ], [ %indvars.iv.next2140, %6 ] ; 3 uses
  %.167081503 = phi i64 [ %.15707.lcssa, %.lr.ph1505.preheader ], [ %12, %6 ] ; 2 uses
  %.167531502 = phi i32 [ %.15752.lcssa, %.lr.ph1505.preheader ], [ %7, %6 ] ; 2 uses
  %.167991501 = phi ptr [ %.15798.lcssa, %.lr.ph1505.preheader ], [ %8, %6 ] ; 3 uses
  %5 = icmp eq i32 %.167531502, 0
  br i1 %5, label %.loopexit.loopexit, label %6

6:                                                ; preds = %.lr.ph1505
  %7 = add i32 %.167531502, -1                    ; 2 uses
  %8 = getelementptr i8, ptr %.167991501, i64 1   ; 2 uses
  %9 = load i8, ptr %.167991501, align 1
  %10 = zext i8 %9 to i64
  %11 = shl i64 %10, %indvars.iv2139
  %12 = add i64 %11, %.167081503                  ; 2 uses
  %indvars.iv.next2140 = add nuw nsw i64 %indvars.iv2139, 8 ; 3 uses
  %13 = icmp samesign ult i64 %indvars.iv.next2140, %4
  br i1 %13, label %.lr.ph1505, label %._crit_edge1506.loopexit, !llvm.loop !15

._crit_edge1506.loopexit:                         ; preds = %6
  %14 = trunc nuw nsw i64 %indvars.iv.next2140 to i32
  br label %._crit_edge1506

._crit_edge1506:                                  ; preds = %._crit_edge1506.loopexit, %.preheader
  %.16799.lcssa = phi ptr [ %.15798.lcssa, %.preheader ], [ %8, %._crit_edge1506.loopexit ]
  %.16753.lcssa = phi i32 [ %.15752.lcssa, %.preheader ], [ %7, %._crit_edge1506.loopexit ]
  %.16708.lcssa = phi i64 [ %.15707.lcssa, %.preheader ], [ %12, %._crit_edge1506.loopexit ]
  %.16.lcssa = phi i32 [ %.15.lcssa, %.preheader ], [ %14, %._crit_edge1506.loopexit ]
  %i.lm = zext nneg i8 %.sroa.19.0.copyload.lcssa to i64
  %i.ln = lshr i64 %.16708.lcssa, %i.lm
  %i.lo = sub nuw i32 %.16.lcssa, %.lcssa1449
  %i.lp = add i32 %.lcssa149915121514, 1          ; 2 uses
  store i32 %i.lp, ptr %i.ai, align 4
  %i.lq = zext i32 %.lcssa149915121514 to i64
  %i.lr = getelementptr [2 x i8], ptr %i.aj, i64 %i.lq
  store i16 %.sroa.42.0.copyload.le, ptr %i.lr, align 2
  br label %bb.bh

bb.az:                                            ; preds = %._crit_edge1459
  switch i16 %.sroa.42.0.copyload.le, label %.preheader903 [
    i16 16, label %.preheader905
    i16 17, label %.preheader907
  ]

.preheader907:                                    ; preds = %bb.az
  %i.ls = add nuw nsw i32 %.lcssa1449, 3          ; 2 uses
  %i.lt = icmp ult i32 %.15.lcssa, %i.ls
  br i1 %i.lt, label %.lr.ph1472.preheader, label %._crit_edge1473

.lr.ph1472.preheader:                             ; preds = %.preheader907
  %i.lu = zext nneg i32 %.15.lcssa to i64
  %i.lv = zext nneg i32 %i.ls to i64
  br label %.lr.ph1472

.preheader905:                                    ; preds = %bb.az
  %i.lw = add nuw nsw i32 %.lcssa1449, 2          ; 2 uses
  %i.lx = icmp ult i32 %.15.lcssa, %i.lw
  br i1 %i.lx, label %.lr.ph1482.preheader, label %._crit_edge1483

.lr.ph1482.preheader:                             ; preds = %.preheader905
  %i.ly = zext nneg i32 %.15.lcssa to i64
  %i.lz = zext nneg i32 %i.lw to i64
  br label %.lr.ph1482

.preheader903:                                    ; preds = %bb.az
  %i.ma = add nuw nsw i32 %.lcssa1449, 7          ; 2 uses
  %i.mb = icmp ult i32 %.15.lcssa, %i.ma
  br i1 %i.mb, label %.lr.ph1492.preheader, label %._crit_edge1493

.lr.ph1492.preheader:                             ; preds = %.preheader903
  %i.mc = zext nneg i32 %.15.lcssa to i64
  %i.md = zext nneg i32 %i.ma to i64
  br label %.lr.ph1492

.lr.ph1482:                                       ; preds = %.lr.ph1482.preheader, %bb.ba
  %indvars.iv2133 = phi i64 [ %i.ly, %.lr.ph1482.preheader ], [ %indvars.iv.next2134, %bb.ba ] ; 3 uses
  %.177091480 = phi i64 [ %.15707.lcssa, %.lr.ph1482.preheader ], [ %i.mk, %bb.ba ] ; 2 uses
  %.177541479 = phi i32 [ %.15752.lcssa, %.lr.ph1482.preheader ], [ %i.mf, %bb.ba ] ; 2 uses
  %.178001478 = phi ptr [ %.15798.lcssa, %.lr.ph1482.preheader ], [ %i.mg, %bb.ba ] ; 3 uses
  %i.me = icmp eq i32 %.177541479, 0
  br i1 %i.me, label %.loopexit.loopexit1777, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph1482
  %i.mf = add i32 %.177541479, -1                 ; 2 uses
  %i.mg = getelementptr i8, ptr %.178001478, i64 1 ; 2 uses
  %i.mh = load i8, ptr %.178001478, align 1
  %i.mi = zext i8 %i.mh to i64
  %i.mj = shl i64 %i.mi, %indvars.iv2133
  %i.mk = add i64 %i.mj, %.177091480              ; 2 uses
  %indvars.iv.next2134 = add nuw nsw i64 %indvars.iv2133, 8 ; 3 uses
  %i.ml = icmp samesign ult i64 %indvars.iv.next2134, %i.lz
  br i1 %i.ml, label %.lr.ph1482, label %._crit_edge1483.loopexit, !llvm.loop !16

._crit_edge1483.loopexit:                         ; preds = %bb.ba
  %i.mm = trunc nuw nsw i64 %indvars.iv.next2134 to i32
  br label %._crit_edge1483

._crit_edge1483:                                  ; preds = %._crit_edge1483.loopexit, %.preheader905
  %.17800.lcssa = phi ptr [ %.15798.lcssa, %.preheader905 ], [ %i.mg, %._crit_edge1483.loopexit ] ; 2 uses
  %.17754.lcssa = phi i32 [ %.15752.lcssa, %.preheader905 ], [ %i.mf, %._crit_edge1483.loopexit ] ; 2 uses
  %.17709.lcssa = phi i64 [ %.15707.lcssa, %.preheader905 ], [ %i.mk, %._crit_edge1483.loopexit ]
  %.17.lcssa = phi i32 [ %.15.lcssa, %.preheader905 ], [ %i.mm, %._crit_edge1483.loopexit ]
  %i.mn = zext nneg i8 %.sroa.19.0.copyload.lcssa to i64
  %i.mo = lshr i64 %.17709.lcssa, %i.mn           ; 3 uses
  %i.mp = sub nuw i32 %.17.lcssa, %.lcssa1449     ; 2 uses
  %i.mq = icmp eq i32 %.lcssa149915121514, 0
  br i1 %i.mq, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %._crit_edge1483
  store ptr @.str.7, ptr %i.ad, align 8
  store i32 27, ptr %i.c, align 8
  br label %.thread

bb.bc:                                            ; preds = %._crit_edge1483
  %i.mr = add i32 %.lcssa149915121514, -1
  %i.ms = zext i32 %i.mr to i64
  %i.mt = getelementptr [2 x i8], ptr %i.aj, i64 %i.ms
  %i.mu = load i16, ptr %i.mt, align 2
  %i.mv = trunc i64 %i.mo to i32
  %i.mw = and i32 %i.mv, 3
  %i.mx = add nuw nsw i32 %i.mw, 3
  %i.my = lshr i64 %i.mo, 2
  %i.mz = add i32 %i.mp, -2
  br label %bb.bf

.lr.ph1472:                                       ; preds = %.lr.ph1472.preheader, %bb.bd
  %indvars.iv2130 = phi i64 [ %i.lu, %.lr.ph1472.preheader ], [ %indvars.iv.next2131, %bb.bd ] ; 3 uses
  %.187101470 = phi i64 [ %.15707.lcssa, %.lr.ph1472.preheader ], [ %i.ng, %bb.bd ] ; 2 uses
  %.187551469 = phi i32 [ %.15752.lcssa, %.lr.ph1472.preheader ], [ %i.nb, %bb.bd ] ; 2 uses
  %.188011468 = phi ptr [ %.15798.lcssa, %.lr.ph1472.preheader ], [ %i.nc, %bb.bd ] ; 3 uses
  %i.na = icmp eq i32 %.187551469, 0
  br i1 %i.na, label %.loopexit.loopexit1778, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph1472
  %i.nb = add i32 %.187551469, -1                 ; 2 uses
  %i.nc = getelementptr i8, ptr %.188011468, i64 1 ; 2 uses
  %i.nd = load i8, ptr %.188011468, align 1
  %i.ne = zext i8 %i.nd to i64
  %i.nf = shl i64 %i.ne, %indvars.iv2130
  %i.ng = add i64 %i.nf, %.187101470              ; 2 uses
  %indvars.iv.next2131 = add nuw nsw i64 %indvars.iv2130, 8 ; 3 uses
  %i.nh = icmp samesign ult i64 %indvars.iv.next2131, %i.lv
  br i1 %i.nh, label %.lr.ph1472, label %._crit_edge1473.loopexit, !llvm.loop !17

._crit_edge1473.loopexit:                         ; preds = %bb.bd
  %i.ni = trunc nuw nsw i64 %indvars.iv.next2131 to i32
  br label %._crit_edge1473

._crit_edge1473:                                  ; preds = %._crit_edge1473.loopexit, %.preheader907
  %.18801.lcssa = phi ptr [ %.15798.lcssa, %.preheader907 ], [ %i.nc, %._crit_edge1473.loopexit ]
  %.18755.lcssa = phi i32 [ %.15752.lcssa, %.preheader907 ], [ %i.nb, %._crit_edge1473.loopexit ]
  %.18710.lcssa = phi i64 [ %.15707.lcssa, %.preheader907 ], [ %i.ng, %._crit_edge1473.loopexit ]
  %.18.lcssa = phi i32 [ %.15.lcssa, %.preheader907 ], [ %i.ni, %._crit_edge1473.loopexit ]
  %i.nj = zext nneg i8 %.sroa.19.0.copyload.lcssa to i64
  %i.nk = lshr i64 %.18710.lcssa, %i.nj           ; 2 uses
  %i.nl = trunc i64 %i.nk to i32
  %i.nm = and i32 %i.nl, 7
  %i.nn = add nuw nsw i32 %i.nm, 3
  %i.no = lshr i64 %i.nk, 3
  %reass.sub = sub i32 %.18.lcssa, %.lcssa1449
  %i.np = add i32 %reass.sub, -3
  br label %bb.bf

.lr.ph1492:                                       ; preds = %.lr.ph1492.preheader, %bb.be
  %indvars.iv2136 = phi i64 [ %i.mc, %.lr.ph1492.preheader ], [ %indvars.iv.next2137.a, %bb.be ] ; 3 uses
  %.197111490 = phi i64 [ %.15707.lcssa, %.lr.ph1492.preheader ], [ %i.nw, %bb.be ] ; 2 uses
  %.197561489 = phi i32 [ %.15752.lcssa, %.lr.ph1492.preheader ], [ %i.nr, %bb.be ] ; 2 uses
  %.198021488 = phi ptr [ %.15798.lcssa, %.lr.ph1492.preheader ], [ %i.ns, %bb.be ] ; 3 uses
  %i.nq = icmp eq i32 %.197561489, 0
  br i1 %i.nq, label %.loopexit.loopexit1776, label %bb.be

bb.be:                                            ; preds = %.lr.ph1492
  %i.nr = add i32 %.197561489, -1                 ; 2 uses
  %i.ns = getelementptr i8, ptr %.198021488, i64 1 ; 2 uses
  %i.nt = load i8, ptr %.198021488, align 1
  %i.nu = zext i8 %i.nt to i64
  %i.nv = shl i64 %i.nu, %indvars.iv2136
  %i.nw = add i64 %i.nv, %.197111490              ; 2 uses
  %indvars.iv.next2137.a = add nuw nsw i64 %indvars.iv2136, 8 ; 3 uses
  %i.nx = icmp samesign ult i64 %indvars.iv.next2137.a, %i.md
  br i1 %i.nx, label %.lr.ph1492, label %._crit_edge1493.loopexit, !llvm.loop !18

._crit_edge1493.loopexit:                         ; preds = %bb.be
  %i.ny = trunc nuw nsw i64 %indvars.iv.next2137.a to i32
  br label %._crit_edge1493

._crit_edge1493:                                  ; preds = %._crit_edge1493.loopexit, %.preheader903
  %.19802.lcssa = phi ptr [ %.15798.lcssa, %.preheader903 ], [ %i.ns, %._crit_edge1493.loopexit ]
  %.19756.lcssa = phi i32 [ %.15752.lcssa, %.preheader903 ], [ %i.nr, %._crit_edge1493.loopexit ]
  %.19711.lcssa = phi i64 [ %.15707.lcssa, %.preheader903 ], [ %i.nw, %._crit_edge1493.loopexit ]
  %.19.lcssa = phi i32 [ %.15.lcssa, %.preheader903 ], [ %i.ny, %._crit_edge1493.loopexit ]
  %i.nz = zext nneg i8 %.sroa.19.0.copyload.lcssa to i64
  %i.oa = lshr i64 %.19711.lcssa, %i.nz           ; 2 uses
  %i.ob = trunc i64 %i.oa to i32
  %i.oc = and i32 %i.ob, 127
  %i.od = add nuw nsw i32 %i.oc, 11
  %i.oe = lshr i64 %i.oa, 7
  %reass.sub1775 = sub i32 %.19.lcssa, %.lcssa1449
  %i.of = add i32 %reass.sub1775, -7
  br label %bb.bf

bb.bf:                                            ; preds = %._crit_edge1473, %._crit_edge1493, %bb.bc
  %.20803 = phi ptr [ %.17800.lcssa, %bb.bc ], [ %.18801.lcssa, %._crit_edge1473 ], [ %.19802.lcssa, %._crit_edge1493 ] ; 2 uses
  %.20757 = phi i32 [ %.17754.lcssa, %bb.bc ], [ %.18755.lcssa, %._crit_edge1473 ], [ %.19756.lcssa, %._crit_edge1493 ] ; 2 uses
  %.20712 = phi i64 [ %i.my, %bb.bc ], [ %i.no, %._crit_edge1473 ], [ %i.oe, %._crit_edge1493 ] ; 2 uses
  %.20 = phi i32 [ %i.mz, %bb.bc ], [ %i.np, %._crit_edge1473 ], [ %i.of, %._crit_edge1493 ] ; 2 uses
  %.2672 = phi i32 [ %i.mx, %bb.bc ], [ %i.nn, %._crit_edge1473 ], [ %i.od, %._crit_edge1493 ] ; 5 uses
  %.0666 = phi i16 [ %i.mu, %bb.bc ], [ 0, %._crit_edge1473 ], [ 0, %._crit_edge1493 ] ; 5 uses
  %i.og = add i32 %.2672, %.lcssa149915121514
  %i.oh = icmp ugt i32 %i.og, %i.kl
  br i1 %i.oh, label %bb.bg, label %.preheader901.preheader

.preheader901.preheader:                          ; preds = %bb.bf
  %xtraiter3557 = and i32 %.2672, 3               ; 2 uses
  %lcmp.mod3558.not = icmp eq i32 %xtraiter3557, 0
  br i1 %lcmp.mod3558.not, label %.preheader901.prol.loopexit, label %.preheader901.prol

.preheader901.prol:                               ; preds = %.preheader901.preheader, %.preheader901.prol
  %.36731500.prol = phi i32 [ %i.oj, %.preheader901.prol ], [ %.2672, %.preheader901.preheader ]
  %i.oi = phi i32 [ %i.ok, %.preheader901.prol ], [ %.lcssa149915121514, %.preheader901.preheader ] ; 2 uses
  %prol.iter3559 = phi i32 [ %prol.iter3559.next, %.preheader901.prol ], [ 0, %.preheader901.preheader ]
  %i.oj = add i32 %.36731500.prol, -1             ; 2 uses
  %i.ok = add i32 %i.oi, 1                        ; 3 uses
  %i.ol = zext i32 %i.oi to i64
  %i.om = getelementptr [2 x i8], ptr %i.aj, i64 %i.ol
  store i16 %.0666, ptr %i.om, align 2
  %prol.iter3559.next = add i32 %prol.iter3559, 1 ; 2 uses
  %prol.iter3559.cmp.not = icmp eq i32 %prol.iter3559.next, %xtraiter3557
  br i1 %prol.iter3559.cmp.not, label %.preheader901.prol.loopexit, label %.preheader901.prol, !llvm.loop !19

.preheader901.prol.loopexit:                      ; preds = %.preheader901.prol, %.preheader901.preheader
  %.lcssa3094.unr = phi i32 [ poison, %.preheader901.preheader ], [ %i.ok, %.preheader901.prol ]
  %.36731500.unr = phi i32 [ %.2672, %.preheader901.preheader ], [ %i.oj, %.preheader901.prol ]
  %.unr3560 = phi i32 [ %.lcssa149915121514, %.preheader901.preheader ], [ %i.ok, %.preheader901.prol ]
  %i.on = icmp ult i32 %.2672, 4
  br i1 %i.on, label %.loopexit902, label %.preheader901

bb.bg:                                            ; preds = %bb.bf
  store ptr @.str.7, ptr %i.ad, align 8
  store i32 27, ptr %i.c, align 8
  br label %.thread

.preheader901:                                    ; preds = %.preheader901.prol.loopexit, %.preheader901
  %.36731500 = phi i32 [ %i.oy, %.preheader901 ], [ %.36731500.unr, %.preheader901.prol.loopexit ]
  %i.oo = phi i32 [ %i.oz, %.preheader901 ], [ %.unr3560, %.preheader901.prol.loopexit ] ; 5 uses
  %i.op = add i32 %i.oo, 1
  %i.oq = zext i32 %i.oo to i64
  %i.or = getelementptr [2 x i8], ptr %i.aj, i64 %i.oq
  store i16 %.0666, ptr %i.or, align 2
  %i.os = add i32 %i.oo, 2
  %i.ot = zext i32 %i.op to i64
  %i.ou = getelementptr [2 x i8], ptr %i.aj, i64 %i.ot
  store i16 %.0666, ptr %i.ou, align 2
  %i.ov = add i32 %i.oo, 3
  %i.ow = zext i32 %i.os to i64
  %i.ox = getelementptr [2 x i8], ptr %i.aj, i64 %i.ow
  store i16 %.0666, ptr %i.ox, align 2
  %i.oy = add i32 %.36731500, -4                  ; 2 uses
  %i.oz = add i32 %i.oo, 4                        ; 2 uses
  %i.pa = zext i32 %i.ov to i64
  %i.pb = getelementptr [2 x i8], ptr %i.aj, i64 %i.pa
  store i16 %.0666, ptr %i.pb, align 2
  %.not860.3 = icmp eq i32 %i.oy, 0
  br i1 %.not860.3, label %.loopexit902, label %.preheader901, !llvm.loop !20

.loopexit902:                                     ; preds = %.preheader901, %.preheader901.prol.loopexit
  %.lcssa3094 = phi i32 [ %.lcssa3094.unr, %.preheader901.prol.loopexit ], [ %i.oz, %.preheader901 ] ; 2 uses
  store i32 %.lcssa3094, ptr %i.ai, align 4
  br label %bb.bh

bb.bh:                                            ; preds = %.loopexit902, %._crit_edge1506
  %.lcssa14991513 = phi i32 [ %i.lp, %._crit_edge1506 ], [ %.lcssa3094, %.loopexit902 ] ; 2 uses
  %.21804 = phi ptr [ %.16799.lcssa, %._crit_edge1506 ], [ %.20803, %.loopexit902 ] ; 2 uses
  %.21758 = phi i32 [ %.16753.lcssa, %._crit_edge1506 ], [ %.20757, %.loopexit902 ] ; 2 uses
  %.21713 = phi i64 [ %i.ln, %._crit_edge1506 ], [ %.20712, %.loopexit902 ] ; 2 uses
  %.21 = phi i32 [ %i.lo, %._crit_edge1506 ], [ %.20, %.loopexit902 ] ; 2 uses
  %i.pc = icmp ult i32 %.lcssa14991513, %i.kl
  br i1 %i.pc, label %.preheader909, label %._crit_edge1519, !llvm.loop !21

._crit_edge1519:                                  ; preds = %bb.bh, %bb.ax
  %.14797.lcssa = phi ptr [ %.13796, %bb.ax ], [ %.21804, %bb.bh ] ; 3 uses
  %.14751.lcssa = phi i32 [ %.13750, %bb.ax ], [ %.21758, %bb.bh ] ; 3 uses
  %.14706.lcssa = phi i64 [ %.13705, %bb.ax ], [ %.21713, %bb.bh ] ; 3 uses
  %.14.lcssa = phi i32 [ %.13, %bb.ax ], [ %.21, %bb.bh ] ; 3 uses
  store ptr %i.ak, ptr %i.al, align 8
  store ptr %i.ak, ptr %i.am, align 8
  store i32 9, ptr %i.an, align 8
  %i.pd = tail call i32 @zlib_inflate_table(i32 noundef 1, ptr noundef %i.aj, i32 noundef %i.kj, ptr noundef %i.al, ptr noundef %i.an, ptr noundef %i.ao) #11 ; 2 uses
  %.not861 = icmp eq i32 %i.pd, 0
  br i1 %.not861, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %._crit_edge1519
  store ptr @.str.8, ptr %i.ad, align 8
  store i32 27, ptr %i.c, align 8
  br label %.thread

bb.bj:                                            ; preds = %._crit_edge1519
  %i.pe = load ptr, ptr %i.al, align 8
  store ptr %i.pe, ptr %i.ap, align 8
  store i32 6, ptr %i.aq, align 4
  %i.pf = load i32, ptr %i.af, align 4
  %i.pg = zext i32 %i.pf to i64
  %i.ph = getelementptr [2 x i8], ptr %i.aj, i64 %i.pg
  %i.pi = load i32, ptr %i.ag, align 8
  %i.pj = tail call i32 @zlib_inflate_table(i32 noundef 2, ptr noundef %i.ph, i32 noundef %i.pi, ptr noundef %i.al, ptr noundef %i.aq, ptr noundef %i.ao) #11 ; 2 uses
  %.not862 = icmp eq i32 %i.pj, 0
  br i1 %.not862, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  store ptr @.str.9, ptr %i.ad, align 8
  store i32 27, ptr %i.c, align 8
  br label %.thread

bb.bl:                                            ; preds = %bb.bj
  store i32 18, ptr %i.c, align 8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.g
  %.23806 = phi ptr [ %.14797.lcssa, %bb.bl ], [ %.0783, %bb.g ] ; 4 uses
  %.23760 = phi i32 [ %.14751.lcssa, %bb.bl ], [ %.0737, %bb.g ] ; 7 uses
  %.23715 = phi i64 [ %.14706.lcssa, %bb.bl ], [ %.0692, %bb.g ] ; 5 uses
  %.23 = phi i32 [ %.14.lcssa, %bb.bl ], [ %.0683, %bb.g ] ; 5 uses
  %.2 = phi i32 [ 0, %bb.bl ], [ %.0, %bb.g ]     ; 7 uses
  %i.pk = icmp ugt i32 %.23760, 5
  %i.pl = icmp ugt i32 %.0735, 257
  %or.cond = select i1 %i.pk, i1 %i.pl, i1 false
  br i1 %or.cond, label %bb.bn, label %.preheader929

.preheader929:                                    ; preds = %bb.bm
  %i.pm = load ptr, ptr %i.am, align 8            ; 4 uses
  %i.pn = load i32, ptr %i.an, align 8
  %notmask863 = shl nsw i32 -1, %i.pn
  %i.po = xor i32 %notmask863, -1                 ; 2 uses
  %i.pp = trunc i64 %.23715 to i32
  %i.pq = and i32 %i.po, %i.pp
  %i.pr = zext nneg i32 %i.pq to i64
  %i.ps = getelementptr [4 x i8], ptr %i.pm, i64 %i.pr ; 2 uses
  %.sroa.19.0..sroa_idx591525 = getelementptr inbounds nuw i8, ptr %i.ps, i64 1
  %.sroa.19.0.copyload601526 = load i8, ptr %.sroa.19.0..sroa_idx591525, align 1 ; 2 uses
  %i.pt = zext i8 %.sroa.19.0.copyload601526 to i32 ; 2 uses
  %.not8641527 = icmp ult i32 %.23, %i.pt
  br i1 %.not8641527, label %.lr.ph1532.preheader, label %._crit_edge1533

.lr.ph1532.preheader:                             ; preds = %.preheader929
  %i.pu = icmp eq i32 %.23760, 0
  br i1 %i.pu, label %.loopexit.loopexit2235, label %.lr.ph2915

.lr.ph2915:                                       ; preds = %.lr.ph1532.preheader
  %i.pv = zext nneg i32 %.23 to i64
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  store ptr %.0780, ptr %i.m, align 8
  %i.pw = zext i32 %.0735 to i64
  store i64 %i.pw, ptr %i.o, align 8
  store ptr %.23806, ptr %0, align 8
  %i.px = zext i32 %.23760 to i64
  store i64 %i.px, ptr %i.r, align 8
  store i64 %.23715, ptr %i.u, align 8
  store i32 %.23, ptr %i.w, align 8
  tail call void @inflate_fast(ptr noundef nonnull %0, i32 noundef %.0678) #11
  %i.py = load ptr, ptr %i.m, align 8
  %i.pz = load i64, ptr %i.o, align 8
  %i.qa = trunc i64 %i.pz to i32
  %i.qb = load ptr, ptr %0, align 8
  %i.qc = load i64, ptr %i.r, align 8
  %i.qd = trunc i64 %i.qc to i32
  %i.qe = load i64, ptr %i.u, align 8
  %i.qf = load i32, ptr %i.w, align 8
  br label %.thread

.lr.ph1532:                                       ; preds = %bb.bo
  %i.qg = icmp eq i32 %i.qh, 0
  br i1 %i.qg, label %.loopexit.loopexit2235, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph2915, %.lr.ph1532
  %.2480715282914 = phi ptr [ %.23806, %.lr.ph2915 ], [ %i.qi, %.lr.ph1532 ] ; 2 uses
  %.2476115292913 = phi i32 [ %.23760, %.lr.ph2915 ], [ %i.qh, %.lr.ph1532 ]
  %.2471615302912 = phi i64 [ %.23715, %.lr.ph2915 ], [ %i.qm, %.lr.ph1532 ]
  %indvars.iv21422911 = phi i64 [ %i.pv, %.lr.ph2915 ], [ %indvars.iv.next2143, %.lr.ph1532 ] ; 2 uses
  %i.qh = add i32 %.2476115292913, -1             ; 3 uses
  %i.qi = getelementptr i8, ptr %.2480715282914, i64 1 ; 2 uses
  %i.qj = load i8, ptr %.2480715282914, align 1
  %i.qk = zext i8 %i.qj to i64
  %i.ql = shl i64 %i.qk, %indvars.iv21422911
  %i.qm = add i64 %i.ql, %.2471615302912          ; 4 uses
  %indvars.iv.next2143 = add nuw nsw i64 %indvars.iv21422911, 8 ; 3 uses
  %i.qn = trunc i64 %i.qm to i32
  %i.qo = and i32 %i.po, %i.qn
  %i.qp = zext nneg i32 %i.qo to i64
  %i.qq = getelementptr [4 x i8], ptr %i.pm, i64 %i.qp ; 2 uses
  %.sroa.19.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.qq, i64 1
  %.sroa.19.0.copyload60 = load i8, ptr %.sroa.19.0..sroa_idx59, align 1 ; 3 uses
  %i.qr = zext i8 %.sroa.19.0.copyload60 to i64
  %.not864 = icmp samesign ult i64 %indvars.iv.next2143, %i.qr
  br i1 %.not864, label %.lr.ph1532, label %._crit_edge1533.loopexit

._crit_edge1533.loopexit:                         ; preds = %bb.bo
  %i.qs = zext i8 %.sroa.19.0.copyload60 to i32
  %i.qt = trunc nuw nsw i64 %indvars.iv.next2143 to i32
  br label %._crit_edge1533

._crit_edge1533:                                  ; preds = %._crit_edge1533.loopexit, %.preheader929
  %.lcssa1524 = phi ptr [ %i.ps, %.preheader929 ], [ %i.qq, %._crit_edge1533.loopexit ] ; 2 uses
  %.24807.lcssa = phi ptr [ %.23806, %.preheader929 ], [ %i.qi, %._crit_edge1533.loopexit ] ; 4 uses
  %.24761.lcssa = phi i32 [ %.23760, %.preheader929 ], [ %i.qh, %._crit_edge1533.loopexit ] ; 6 uses
  %.24716.lcssa = phi i64 [ %.23715, %.preheader929 ], [ %i.qm, %._crit_edge1533.loopexit ] ; 5 uses
  %.24.lcssa = phi i32 [ %.23, %.preheader929 ], [ %i.qt, %._crit_edge1533.loopexit ] ; 5 uses
  %.sroa.19.0.copyload60.lcssa = phi i8 [ %.sroa.19.0.copyload601526, %.preheader929 ], [ %.sroa.19.0.copyload60, %._crit_edge1533.loopexit ] ; 2 uses
  %.lcssa1027 = phi i32 [ %i.pt, %.preheader929 ], [ %i.qs, %._crit_edge1533.loopexit ] ; 6 uses
  %.sroa.42.0..sroa_idx87.le = getelementptr inbounds nuw i8, ptr %.lcssa1524, i64 2
  %.sroa.42.0.copyload88.le = load i16, ptr %.sroa.42.0..sroa_idx87.le, align 2 ; 2 uses
  %.sroa.046.0.copyload55 = load i8, ptr %.lcssa1524, align 2 ; 3 uses
  %i.qu = add i8 %.sroa.046.0.copyload55, -1
  %or.cond892 = icmp ult i8 %i.qu, 15
  br i1 %or.cond892, label %.preheader927, label %bb.bq

.preheader927:                                    ; preds = %._crit_edge1533
  %i.qv = zext nneg i8 %.sroa.046.0.copyload55 to i32
  %i.qw = zext i16 %.sroa.42.0.copyload88.le to i32 ; 2 uses
  %i.qx = add nuw nsw i32 %.lcssa1027, %i.qv
  %notmask866 = shl nsw i32 -1, %i.qx
  %i.qy = xor i32 %notmask866, -1                 ; 2 uses
  %i.qz = trunc i64 %.24716.lcssa to i32
  %i.ra = and i32 %i.qz, %i.qy
  %i.rb = lshr i32 %i.ra, %.lcssa1027
  %i.rc = add nuw i32 %i.rb, %i.qw
  %i.rd = zext i32 %i.rc to i64
  %i.re = getelementptr [4 x i8], ptr %i.pm, i64 %i.rd ; 2 uses
  %.sroa.19.0..sroa_idx611543 = getelementptr inbounds nuw i8, ptr %i.re, i64 1
  %.sroa.19.0.copyload621544 = load i8, ptr %.sroa.19.0..sroa_idx611543, align 1 ; 2 uses
  %i.rf = zext i8 %.sroa.19.0.copyload621544 to i32
  %i.rg = add nuw nsw i32 %.lcssa1027, %i.rf
  %.not8671545 = icmp ugt i32 %i.rg, %.24.lcssa
  br i1 %.not8671545, label %.lr.ph1550.preheader, label %._crit_edge1551

.lr.ph1550.preheader:                             ; preds = %.preheader927
  %i.rh = icmp eq i32 %.24761.lcssa, 0
  br i1 %i.rh, label %.loopexit.loopexit2234, label %.lr.ph2936

.lr.ph2936:                                       ; preds = %.lr.ph1550.preheader
  %i.ri = zext nneg i32 %.24.lcssa to i64
  br label %bb.bp

.lr.ph1550:                                       ; preds = %bb.bp
  %i.rj = icmp eq i32 %i.rk, 0
  br i1 %i.rj, label %.loopexit.loopexit2234, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph2936, %.lr.ph1550
  %.2580815462935 = phi ptr [ %.24807.lcssa, %.lr.ph2936 ], [ %i.rl, %.lr.ph1550 ] ; 2 uses
  %.2576215472934 = phi i32 [ %.24761.lcssa, %.lr.ph2936 ], [ %i.rk, %.lr.ph1550 ]
  %.2571715482933 = phi i64 [ %.24716.lcssa, %.lr.ph2936 ], [ %i.rp, %.lr.ph1550 ]
  %indvars.iv21462932 = phi i64 [ %i.ri, %.lr.ph2936 ], [ %indvars.iv.next2147, %.lr.ph1550 ] ; 2 uses
  %i.rk = add i32 %.2576215472934, -1             ; 3 uses
  %i.rl = getelementptr i8, ptr %.2580815462935, i64 1 ; 2 uses
  %i.rm = load i8, ptr %.2580815462935, align 1
  %i.rn = zext i8 %i.rm to i64
  %i.ro = shl i64 %i.rn, %indvars.iv21462932
  %i.rp = add i64 %i.ro, %.2571715482933          ; 4 uses
  %indvars.iv.next2147 = add nuw nsw i64 %indvars.iv21462932, 8 ; 3 uses
  %i.rq = trunc i64 %i.rp to i32
  %i.rr = and i32 %i.rq, %i.qy
  %i.rs = lshr i32 %i.rr, %.lcssa1027
  %i.rt = add nuw i32 %i.rs, %i.qw
  %i.ru = zext i32 %i.rt to i64
  %i.rv = getelementptr [4 x i8], ptr %i.pm, i64 %i.ru ; 2 uses
  %.sroa.19.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %i.rv, i64 1
  %.sroa.19.0.copyload62 = load i8, ptr %.sroa.19.0..sroa_idx61, align 1 ; 2 uses
  %i.rw = zext i8 %.sroa.19.0.copyload62 to i32
  %i.rx = add nuw nsw i32 %.lcssa1027, %i.rw
  %i.ry = zext nneg i32 %i.rx to i64
  %.not867 = icmp samesign ult i64 %indvars.iv.next2147, %i.ry
  br i1 %.not867, label %.lr.ph1550, label %._crit_edge1551.loopexit

._crit_edge1551.loopexit:                         ; preds = %bb.bp
  %i.rz = trunc nuw nsw i64 %indvars.iv.next2147 to i32
  br label %._crit_edge1551

._crit_edge1551:                                  ; preds = %._crit_edge1551.loopexit, %.preheader927
  %.25808.lcssa = phi ptr [ %.24807.lcssa, %.preheader927 ], [ %i.rl, %._crit_edge1551.loopexit ]
  %.25762.lcssa = phi i32 [ %.24761.lcssa, %.preheader927 ], [ %i.rk, %._crit_edge1551.loopexit ]
  %.25717.lcssa = phi i64 [ %.24716.lcssa, %.preheader927 ], [ %i.rp, %._crit_edge1551.loopexit ]
  %.25.lcssa = phi i32 [ %.24.lcssa, %.preheader927 ], [ %i.rz, %._crit_edge1551.loopexit ]
  %.lcssa1040 = phi ptr [ %i.re, %.preheader927 ], [ %i.rv, %._crit_edge1551.loopexit ] ; 2 uses
  %.sroa.19.0.copyload62.lcssa = phi i8 [ %.sroa.19.0.copyload621544, %.preheader927 ], [ %.sroa.19.0.copyload62, %._crit_edge1551.loopexit ]
  %.sroa.42.0..sroa_idx89 = getelementptr inbounds nuw i8, ptr %.lcssa1040, i64 2
  %.sroa.42.0.copyload90 = load i16, ptr %.sroa.42.0..sroa_idx89, align 2
  %.sroa.046.0.copyload56 = load i8, ptr %.lcssa1040, align 2
  %i.sa = zext nneg i8 %.sroa.19.0.copyload60.lcssa to i64
  %i.sb = lshr i64 %.25717.lcssa, %i.sa
  %i.sc = sub nuw i32 %.25.lcssa, %.lcssa1027
  br label %bb.bq

bb.bq:                                            ; preds = %._crit_edge1533, %._crit_edge1551
  %.26809 = phi ptr [ %.25808.lcssa, %._crit_edge1551 ], [ %.24807.lcssa, %._crit_edge1533 ] ; 4 uses
  %.26763 = phi i32 [ %.25762.lcssa, %._crit_edge1551 ], [ %.24761.lcssa, %._crit_edge1533 ] ; 4 uses
  %.26718 = phi i64 [ %i.sb, %._crit_edge1551 ], [ %.24716.lcssa, %._crit_edge1533 ]
  %.26 = phi i32 [ %i.sc, %._crit_edge1551 ], [ %.24.lcssa, %._crit_edge1533 ]
  %.sroa.046.0 = phi i8 [ %.sroa.046.0.copyload56, %._crit_edge1551 ], [ %.sroa.046.0.copyload55, %._crit_edge1533 ] ; 2 uses
  %.sroa.19.0 = phi i8 [ %.sroa.19.0.copyload62.lcssa, %._crit_edge1551 ], [ %.sroa.19.0.copyload60.lcssa, %._crit_edge1533 ] ; 2 uses
  %.sroa.42.0 = phi i16 [ %.sroa.42.0.copyload90, %._crit_edge1551 ], [ %.sroa.42.0.copyload88.le, %._crit_edge1533 ]
  %i.sd = zext i8 %.sroa.19.0 to i32
  %i.se = zext nneg i8 %.sroa.19.0 to i64
  %i.sf = lshr i64 %.26718, %i.se                 ; 4 uses
  %i.sg = sub i32 %.26, %i.sd                     ; 4 uses
  %i.sh = zext i16 %.sroa.42.0 to i32
  store i32 %i.sh, ptr %i.ae, align 4
  %i.si = zext i8 %.sroa.046.0 to i32             ; 3 uses
  %i.sj = icmp eq i8 %.sroa.046.0, 0
  br i1 %i.sj, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  store i32 23, ptr %i.c, align 8
  br label %.thread

bb.bs:                                            ; preds = %bb.bq
  %i.sk = and i32 %i.si, 32
  %.not868 = icmp eq i32 %i.sk, 0
  br i1 %.not868, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  store i32 11, ptr %i.c, align 8
  br label %.thread

bb.bu:                                            ; preds = %bb.bs
  %i.sl = and i32 %i.si, 64
  %.not869 = icmp eq i32 %i.sl, 0
  br i1 %.not869, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  store ptr @.str.10, ptr %i.ad, align 8
  store i32 27, ptr %i.c, align 8
  br label %.thread

bb.bw:                                            ; preds = %bb.bu
  %i.sm = and i32 %i.si, 15                       ; 2 uses
  store i32 %i.sm, ptr %i.ar, align 4
  store i32 19, ptr %i.c, align 8
  br label %bb.bx

bb.bx:                                            ; preds = %._crit_edge2176, %bb.bw
  %i.sn = phi i32 [ %i.sm, %bb.bw ], [ %.pre2177, %._crit_edge2176 ] ; 6 uses
  %.27810 = phi ptr [ %.26809, %bb.bw ], [ %.0783, %._crit_edge2176 ] ; 4 uses
  %.27764 = phi i32 [ %.26763, %bb.bw ], [ %.0737, %._crit_edge2176 ] ; 6 uses
  %.27719 = phi i64 [ %i.sf, %bb.bw ], [ %.0692, %._crit_edge2176 ] ; 4 uses
  %.27 = phi i32 [ %i.sg, %bb.bw ], [ %.0683, %._crit_edge2176 ] ; 5 uses
  %.3 = phi i32 [ %.2, %bb.bw ], [ %.0, %._crit_edge2176 ] ; 2 uses
  %.not870 = icmp eq i32 %i.sn, 0
  br i1 %.not870, label %bb.by, label %.preheader925

.preheader925:                                    ; preds = %bb.bx
  %i.so = icmp ult i32 %.27, %i.sn
  br i1 %i.so, label %.lr.ph1562.preheader, label %._crit_edge1563

.lr.ph1562.preheader:                             ; preds = %.preheader925
  %i.sp = icmp eq i32 %.27764, 0
  br i1 %i.sp, label %.loopexit.loopexit2233, label %.lr.ph2957

.lr.ph1562:                                       ; preds = %.lr.ph2957
  %i.sq = icmp eq i32 %i.sr, 0
  br i1 %i.sq, label %.loopexit.loopexit2233, label %.lr.ph2957, !llvm.loop !22

.lr.ph2957:                                       ; preds = %.lr.ph1562.preheader, %.lr.ph1562
  %.2881115582956 = phi ptr [ %i.ss, %.lr.ph1562 ], [ %.27810, %.lr.ph1562.preheader ] ; 2 uses
  %.2876515592955 = phi i32 [ %i.sr, %.lr.ph1562 ], [ %.27764, %.lr.ph1562.preheader ]
  %.2872015602954 = phi i64 [ %i.sx, %.lr.ph1562 ], [ %.27719, %.lr.ph1562.preheader ]
  %.2815612953 = phi i32 [ %i.sy, %.lr.ph1562 ], [ %.27, %.lr.ph1562.preheader ] ; 2 uses
  %i.sr = add i32 %.2876515592955, -1             ; 3 uses
  %i.ss = getelementptr i8, ptr %.2881115582956, i64 1 ; 2 uses
  %i.st = load i8, ptr %.2881115582956, align 1
  %i.su = zext i8 %i.st to i64
  %i.sv = zext nneg i32 %.2815612953 to i64
  %i.sw = shl i64 %i.su, %i.sv
  %i.sx = add i64 %i.sw, %.2872015602954          ; 3 uses
  %i.sy = add i32 %.2815612953, 8                 ; 3 uses
  %i.sz = icmp ult i32 %i.sy, %i.sn
  br i1 %i.sz, label %.lr.ph1562, label %._crit_edge1563, !llvm.loop !22

._crit_edge1563:                                  ; preds = %.lr.ph2957, %.preheader925
  %.28811.lcssa = phi ptr [ %.27810, %.preheader925 ], [ %i.ss, %.lr.ph2957 ]
  %.28765.lcssa = phi i32 [ %.27764, %.preheader925 ], [ %i.sr, %.lr.ph2957 ]
  %.28720.lcssa = phi i64 [ %.27719, %.preheader925 ], [ %i.sx, %.lr.ph2957 ] ; 2 uses
  %.28.lcssa = phi i32 [ %.27, %.preheader925 ], [ %i.sy, %.lr.ph2957 ]
  %i.ta = trunc i64 %.28720.lcssa to i32
  %notmask871 = shl nsw i32 -1, %i.sn
  %i.tb = xor i32 %notmask871, -1
  %i.tc = and i32 %i.ta, %i.tb
  %i.td = load i32, ptr %i.ae, align 4
  %i.te = add i32 %i.td, %i.tc
  store i32 %i.te, ptr %i.ae, align 4
  %i.tf = zext nneg i32 %i.sn to i64
  %i.tg = lshr i64 %.28720.lcssa, %i.tf
  %i.th = sub nuw i32 %.28.lcssa, %i.sn
  br label %bb.by

bb.by:                                            ; preds = %._crit_edge1563, %bb.bx
  %.29812 = phi ptr [ %.28811.lcssa, %._crit_edge1563 ], [ %.27810, %bb.bx ]
  %.29766 = phi i32 [ %.28765.lcssa, %._crit_edge1563 ], [ %.27764, %bb.bx ]
  %.29721 = phi i64 [ %i.tg, %._crit_edge1563 ], [ %.27719, %bb.bx ]
  %.29 = phi i32 [ %i.th, %._crit_edge1563 ], [ %.27, %bb.bx ]
  store i32 20, ptr %i.c, align 8
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.g
  %.30813 = phi ptr [ %.29812, %bb.by ], [ %.0783, %bb.g ] ; 3 uses
  %.30767 = phi i32 [ %.29766, %bb.by ], [ %.0737, %bb.g ] ; 5 uses
  %.30722 = phi i64 [ %.29721, %bb.by ], [ %.0692, %bb.g ] ; 4 uses
  %.30 = phi i32 [ %.29, %bb.by ], [ %.0683, %bb.g ] ; 4 uses
  %.4 = phi i32 [ %.3, %bb.by ], [ %.0, %bb.g ]   ; 4 uses
  %i.ti = load ptr, ptr %i.ap, align 8            ; 4 uses
  %i.tj = load i32, ptr %i.aq, align 4
  %notmask872 = shl nsw i32 -1, %i.tj
  %i.tk = xor i32 %notmask872, -1                 ; 2 uses
  %i.tl = trunc i64 %.30722 to i32
  %i.tm = and i32 %i.tk, %i.tl
  %i.tn = zext nneg i32 %i.tm to i64
  %i.to = getelementptr [4 x i8], ptr %i.ti, i64 %i.tn ; 2 uses
  %.sroa.19.0..sroa_idx631569 = getelementptr inbounds nuw i8, ptr %i.to, i64 1
  %.sroa.19.0.copyload641570 = load i8, ptr %.sroa.19.0..sroa_idx631569, align 1 ; 2 uses
  %i.tp = zext i8 %.sroa.19.0.copyload641570 to i32 ; 2 uses
  %.not8731571 = icmp ult i32 %.30, %i.tp
  br i1 %.not8731571, label %.lr.ph1577.preheader, label %._crit_edge1578

.lr.ph1577.preheader:                             ; preds = %bb.bz
  %i.tq = icmp eq i32 %.30767, 0
  br i1 %i.tq, label %.loopexit.loopexit2232, label %.lr.ph2978

.lr.ph2978:                                       ; preds = %.lr.ph1577.preheader
  %i.tr = zext nneg i32 %.30 to i64
  br label %bb.ca

.lr.ph1577:                                       ; preds = %bb.ca
  %i.ts = icmp eq i32 %i.tt, 0
  br i1 %i.ts, label %.loopexit.loopexit2232, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph2978, %.lr.ph1577
  %.3181415722977 = phi ptr [ %.30813, %.lr.ph2978 ], [ %i.tu, %.lr.ph1577 ] ; 2 uses
  %.3176815732976 = phi i32 [ %.30767, %.lr.ph2978 ], [ %i.tt, %.lr.ph1577 ]
  %.3172315742975 = phi i64 [ %.30722, %.lr.ph2978 ], [ %i.ty, %.lr.ph1577 ]
  %indvars.iv21512974 = phi i64 [ %i.tr, %.lr.ph2978 ], [ %indvars.iv.next2152, %.lr.ph1577 ] ; 2 uses
  %i.tt = add i32 %.3176815732976, -1             ; 3 uses
  %i.tu = getelementptr i8, ptr %.3181415722977, i64 1 ; 2 uses
  %i.tv = load i8, ptr %.3181415722977, align 1
  %i.tw = zext i8 %i.tv to i64
  %i.tx = shl i64 %i.tw, %indvars.iv21512974
  %i.ty = add i64 %i.tx, %.3172315742975          ; 4 uses
  %indvars.iv.next2152 = add nuw nsw i64 %indvars.iv21512974, 8 ; 3 uses
  %i.tz = trunc i64 %i.ty to i32
  %i.ua = and i32 %i.tk, %i.tz
  %i.ub = zext nneg i32 %i.ua to i64
  %i.uc = getelementptr [4 x i8], ptr %i.ti, i64 %i.ub ; 2 uses
  %.sroa.19.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.uc, i64 1
  %.sroa.19.0.copyload64 = load i8, ptr %.sroa.19.0..sroa_idx63, align 1 ; 3 uses
  %i.ud = zext i8 %.sroa.19.0.copyload64 to i64
  %.not873 = icmp samesign ult i64 %indvars.iv.next2152, %i.ud
  br i1 %.not873, label %.lr.ph1577, label %._crit_edge1578.loopexit

._crit_edge1578.loopexit:                         ; preds = %bb.ca
  %i.ue = zext i8 %.sroa.19.0.copyload64 to i32
  %i.uf = trunc nuw nsw i64 %indvars.iv.next2152 to i32
  br label %._crit_edge1578

._crit_edge1578:                                  ; preds = %._crit_edge1578.loopexit, %bb.bz
  %.lcssa1568 = phi ptr [ %i.to, %bb.bz ], [ %i.uc, %._crit_edge1578.loopexit ] ; 2 uses
  %.31814.lcssa = phi ptr [ %.30813, %bb.bz ], [ %i.tu, %._crit_edge1578.loopexit ] ; 4 uses
  %.31768.lcssa = phi i32 [ %.30767, %bb.bz ], [ %i.tt, %._crit_edge1578.loopexit ] ; 6 uses
  %.31723.lcssa = phi i64 [ %.30722, %bb.bz ], [ %i.ty, %._crit_edge1578.loopexit ] ; 5 uses
  %.31.lcssa = phi i32 [ %.30, %bb.bz ], [ %i.uf, %._crit_edge1578.loopexit ] ; 5 uses
  %.sroa.19.0.copyload64.lcssa = phi i8 [ %.sroa.19.0.copyload641570, %bb.bz ], [ %.sroa.19.0.copyload64, %._crit_edge1578.loopexit ] ; 2 uses
  %.lcssa1050 = phi i32 [ %i.tp, %bb.bz ], [ %i.ue, %._crit_edge1578.loopexit ] ; 6 uses
  %.sroa.42.0..sroa_idx91.le = getelementptr inbounds nuw i8, ptr %.lcssa1568, i64 2
  %.sroa.42.0.copyload92.le = load i16, ptr %.sroa.42.0..sroa_idx91.le, align 2 ; 2 uses
  %.sroa.046.0.copyload57 = load i8, ptr %.lcssa1568, align 2 ; 3 uses
  %i.ug = icmp ult i8 %.sroa.046.0.copyload57, 16
  br i1 %i.ug, label %.preheader922, label %bb.cc

.preheader922:                                    ; preds = %._crit_edge1578
  %i.uh = zext nneg i8 %.sroa.046.0.copyload57 to i32
  %i.ui = zext i16 %.sroa.42.0.copyload92.le to i32 ; 2 uses
  %i.uj = add nuw nsw i32 %.lcssa1050, %i.uh
  %notmask874 = shl nsw i32 -1, %i.uj
  %i.uk = xor i32 %notmask874, -1                 ; 2 uses
  %i.ul = trunc i64 %.31723.lcssa to i32
  %i.um = and i32 %i.ul, %i.uk
  %i.un = lshr i32 %i.um, %.lcssa1050
  %i.uo = add nuw i32 %i.un, %i.ui
  %i.up = zext i32 %i.uo to i64
  %i.uq = getelementptr [4 x i8], ptr %i.ti, i64 %i.up ; 2 uses
  %.sroa.19.0..sroa_idx651588 = getelementptr inbounds nuw i8, ptr %i.uq, i64 1
  %.sroa.19.0.copyload661589 = load i8, ptr %.sroa.19.0..sroa_idx651588, align 1 ; 2 uses
  %i.ur = zext i8 %.sroa.19.0.copyload661589 to i32
  %i.us = add nuw nsw i32 %.lcssa1050, %i.ur
  %.not8751590 = icmp ugt i32 %i.us, %.31.lcssa
  br i1 %.not8751590, label %.lr.ph1595.preheader, label %._crit_edge1596

.lr.ph1595.preheader:                             ; preds = %.preheader922
  %i.ut = icmp eq i32 %.31768.lcssa, 0
  br i1 %i.ut, label %.loopexit.loopexit2231, label %.lr.ph2999

.lr.ph2999:                                       ; preds = %.lr.ph1595.preheader
  %i.uu = zext nneg i32 %.31.lcssa to i64
  br label %bb.cb

.lr.ph1595:                                       ; preds = %bb.cb
  %i.uv = icmp eq i32 %i.uw, 0
  br i1 %i.uv, label %.loopexit.loopexit2231, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph2999, %.lr.ph1595
  %.3281515912998 = phi ptr [ %.31814.lcssa, %.lr.ph2999 ], [ %i.ux, %.lr.ph1595 ] ; 2 uses
  %.3276915922997 = phi i32 [ %.31768.lcssa, %.lr.ph2999 ], [ %i.uw, %.lr.ph1595 ]
  %.3272415932996 = phi i64 [ %.31723.lcssa, %.lr.ph2999 ], [ %i.vb, %.lr.ph1595 ]
  %indvars.iv21552995 = phi i64 [ %i.uu, %.lr.ph2999 ], [ %indvars.iv.next2156, %.lr.ph1595 ] ; 2 uses
  %i.uw = add i32 %.3276915922997, -1             ; 3 uses
  %i.ux = getelementptr i8, ptr %.3281515912998, i64 1 ; 2 uses
  %i.uy = load i8, ptr %.3281515912998, align 1
  %i.uz = zext i8 %i.uy to i64
  %i.va = shl i64 %i.uz, %indvars.iv21552995
  %i.vb = add i64 %i.va, %.3272415932996          ; 4 uses
  %indvars.iv.next2156 = add nuw nsw i64 %indvars.iv21552995, 8 ; 3 uses
  %i.vc = trunc i64 %i.vb to i32
  %i.vd = and i32 %i.vc, %i.uk
  %i.ve = lshr i32 %i.vd, %.lcssa1050
  %i.vf = add nuw i32 %i.ve, %i.ui
  %i.vg = zext i32 %i.vf to i64
  %i.vh = getelementptr [4 x i8], ptr %i.ti, i64 %i.vg ; 2 uses
  %.sroa.19.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %i.vh, i64 1
  %.sroa.19.0.copyload66 = load i8, ptr %.sroa.19.0..sroa_idx65, align 1 ; 2 uses
  %i.vi = zext i8 %.sroa.19.0.copyload66 to i32
  %i.vj = add nuw nsw i32 %.lcssa1050, %i.vi
  %i.vk = zext nneg i32 %i.vj to i64
  %.not875 = icmp samesign ult i64 %indvars.iv.next2156, %i.vk
  br i1 %.not875, label %.lr.ph1595, label %._crit_edge1596.loopexit

._crit_edge1596.loopexit:                         ; preds = %bb.cb
  %i.vl = trunc nuw nsw i64 %indvars.iv.next2156 to i32
  br label %._crit_edge1596

._crit_edge1596:                                  ; preds = %._crit_edge1596.loopexit, %.preheader922
  %.32815.lcssa = phi ptr [ %.31814.lcssa, %.preheader922 ], [ %i.ux, %._crit_edge1596.loopexit ]
  %.32769.lcssa = phi i32 [ %.31768.lcssa, %.preheader922 ], [ %i.uw, %._crit_edge1596.loopexit ]
  %.32724.lcssa = phi i64 [ %.31723.lcssa, %.preheader922 ], [ %i.vb, %._crit_edge1596.loopexit ]
  %.32.lcssa = phi i32 [ %.31.lcssa, %.preheader922 ], [ %i.vl, %._crit_edge1596.loopexit ]
  %.lcssa1063 = phi ptr [ %i.uq, %.preheader922 ], [ %i.vh, %._crit_edge1596.loopexit ] ; 2 uses
  %.sroa.19.0.copyload66.lcssa = phi i8 [ %.sroa.19.0.copyload661589, %.preheader922 ], [ %.sroa.19.0.copyload66, %._crit_edge1596.loopexit ]
  %.sroa.42.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %.lcssa1063, i64 2
  %.sroa.42.0.copyload94 = load i16, ptr %.sroa.42.0..sroa_idx93, align 2
  %.sroa.046.0.copyload58 = load i8, ptr %.lcssa1063, align 2
  %i.vm = zext nneg i8 %.sroa.19.0.copyload64.lcssa to i64
  %i.vn = lshr i64 %.32724.lcssa, %i.vm
  %i.vo = sub nuw i32 %.32.lcssa, %.lcssa1050
  br label %bb.cc

bb.cc:                                            ; preds = %._crit_edge1578, %._crit_edge1596
  %.33816 = phi ptr [ %.32815.lcssa, %._crit_edge1596 ], [ %.31814.lcssa, %._crit_edge1578 ] ; 2 uses
  %.33770 = phi i32 [ %.32769.lcssa, %._crit_edge1596 ], [ %.31768.lcssa, %._crit_edge1578 ] ; 2 uses
  %.33725 = phi i64 [ %i.vn, %._crit_edge1596 ], [ %.31723.lcssa, %._crit_edge1578 ]
  %.33 = phi i32 [ %i.vo, %._crit_edge1596 ], [ %.31.lcssa, %._crit_edge1578 ]
  %.sroa.046.1 = phi i8 [ %.sroa.046.0.copyload58, %._crit_edge1596 ], [ %.sroa.046.0.copyload57, %._crit_edge1578 ]
  %.sroa.19.1 = phi i8 [ %.sroa.19.0.copyload66.lcssa, %._crit_edge1596 ], [ %.sroa.19.0.copyload64.lcssa, %._crit_edge1578 ] ; 2 uses
  %.sroa.42.1 = phi i16 [ %.sroa.42.0.copyload94, %._crit_edge1596 ], [ %.sroa.42.0.copyload92.le, %._crit_edge1578 ]
  %i.vp = zext i8 %.sroa.19.1 to i32
  %i.vq = zext nneg i8 %.sroa.19.1 to i64
  %i.vr = lshr i64 %.33725, %i.vq                 ; 2 uses
  %i.vs = sub i32 %.33, %i.vp                     ; 2 uses
  %i.vt = zext i8 %.sroa.046.1 to i32             ; 2 uses
  %i.vu = and i32 %i.vt, 64
  %.not876 = icmp eq i32 %i.vu, 0
  br i1 %.not876, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  store ptr @.str.11, ptr %i.ad, align 8
  store i32 27, ptr %i.c, align 8
  br label %.thread

bb.ce:                                            ; preds = %bb.cc
  %i.vv = zext i16 %.sroa.42.1 to i32
  store i32 %i.vv, ptr %i.as, align 8
  %i.vw = and i32 %i.vt, 15                       ; 2 uses
  store i32 %i.vw, ptr %i.ar, align 4
  store i32 21, ptr %i.c, align 8
  br label %bb.cf

bb.cf:                                            ; preds = %._crit_edge2178, %bb.ce
  %i.vx = phi i32 [ %i.vw, %bb.ce ], [ %.pre2179, %._crit_edge2178 ] ; 6 uses
  %.34817 = phi ptr [ %.33816, %bb.ce ], [ %.0783, %._crit_edge2178 ] ; 4 uses
  %.34771 = phi i32 [ %.33770, %bb.ce ], [ %.0737, %._crit_edge2178 ] ; 6 uses
  %.34726 = phi i64 [ %i.vr, %bb.ce ], [ %.0692, %._crit_edge2178 ] ; 4 uses
  %.34 = phi i32 [ %i.vs, %bb.ce ], [ %.0683, %._crit_edge2178 ] ; 5 uses
  %.5 = phi i32 [ %.4, %bb.ce ], [ %.0, %._crit_edge2178 ] ; 3 uses
  %.not877 = icmp eq i32 %i.vx, 0
  br i1 %.not877, label %._crit_edge2180, label %.preheader920

._crit_edge2180:                                  ; preds = %bb.cf
  %.pre2181 = load i32, ptr %i.as, align 8
  br label %bb.cg

.preheader920:                                    ; preds = %bb.cf
  %i.vy = icmp ult i32 %.34, %i.vx
  br i1 %i.vy, label %.lr.ph1607.preheader, label %._crit_edge1608

.lr.ph1607.preheader:                             ; preds = %.preheader920
  %i.vz = icmp eq i32 %.34771, 0
  br i1 %i.vz, label %.loopexit.loopexit2230, label %.lr.ph3020

.lr.ph1607:                                       ; preds = %.lr.ph3020
  %i.wa = icmp eq i32 %i.wb, 0
  br i1 %i.wa, label %.loopexit.loopexit2230, label %.lr.ph3020, !llvm.loop !23

.lr.ph3020:                                       ; preds = %.lr.ph1607.preheader, %.lr.ph1607
  %.3581816033019 = phi ptr [ %i.wc, %.lr.ph1607 ], [ %.34817, %.lr.ph1607.preheader ] ; 2 uses
  %.3577216043018 = phi i32 [ %i.wb, %.lr.ph1607 ], [ %.34771, %.lr.ph1607.preheader ]
  %.3572716053017 = phi i64 [ %i.wh, %.lr.ph1607 ], [ %.34726, %.lr.ph1607.preheader ]
  %.3516063016 = phi i32 [ %i.wi, %.lr.ph1607 ], [ %.34, %.lr.ph1607.preheader ] ; 2 uses
  %i.wb = add i32 %.3577216043018, -1             ; 3 uses
  %i.wc = getelementptr i8, ptr %.3581816033019, i64 1 ; 2 uses
  %i.wd = load i8, ptr %.3581816033019, align 1
  %i.we = zext i8 %i.wd to i64
  %i.wf = zext nneg i32 %.3516063016 to i64
  %i.wg = shl i64 %i.we, %i.wf
  %i.wh = add i64 %i.wg, %.3572716053017          ; 3 uses
  %i.wi = add i32 %.3516063016, 8                 ; 3 uses
  %i.wj = icmp ult i32 %i.wi, %i.vx
  br i1 %i.wj, label %.lr.ph1607, label %._crit_edge1608, !llvm.loop !23

._crit_edge1608:                                  ; preds = %.lr.ph3020, %.preheader920
  %.35818.lcssa = phi ptr [ %.34817, %.preheader920 ], [ %i.wc, %.lr.ph3020 ]
  %.35772.lcssa = phi i32 [ %.34771, %.preheader920 ], [ %i.wb, %.lr.ph3020 ]
  %.35727.lcssa = phi i64 [ %.34726, %.preheader920 ], [ %i.wh, %.lr.ph3020 ] ; 2 uses
  %.35.lcssa = phi i32 [ %.34, %.preheader920 ], [ %i.wi, %.lr.ph3020 ]
  %i.wk = trunc i64 %.35727.lcssa to i32
  %notmask878 = shl nsw i32 -1, %i.vx
  %i.wl = xor i32 %notmask878, -1
  %i.wm = and i32 %i.wk, %i.wl
  %i.wn = load i32, ptr %i.as, align 8
  %i.wo = add i32 %i.wn, %i.wm                    ; 2 uses
  store i32 %i.wo, ptr %i.as, align 8
  %i.wp = zext nneg i32 %i.vx to i64
  %i.wq = lshr i64 %.35727.lcssa, %i.wp
  %i.wr = sub nuw i32 %.35.lcssa, %i.vx
  br label %bb.cg

bb.cg:                                            ; preds = %._crit_edge2180, %._crit_edge1608
  %i.ws = phi i32 [ %i.wo, %._crit_edge1608 ], [ %.pre2181, %._crit_edge2180 ]
  %.36819 = phi ptr [ %.35818.lcssa, %._crit_edge1608 ], [ %.34817, %._crit_edge2180 ] ; 2 uses
  %.36773 = phi i32 [ %.35772.lcssa, %._crit_edge1608 ], [ %.34771, %._crit_edge2180 ] ; 2 uses
  %.36728 = phi i64 [ %i.wq, %._crit_edge1608 ], [ %.34726, %._crit_edge2180 ] ; 2 uses
  %.36 = phi i32 [ %i.wr, %._crit_edge1608 ], [ %.34, %._crit_edge2180 ] ; 2 uses
  %i.wt = load i32, ptr %i.at, align 8
  %i.wu = sub i32 %.0678, %.0735
  %i.wv = add i32 %i.wu, %i.wt
  %i.ww = icmp ugt i32 %i.ws, %i.wv
  br i1 %i.ww, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store ptr @.str.12, ptr %i.ad, align 8
  store i32 27, ptr %i.c, align 8
  br label %.thread

bb.ci:                                            ; preds = %bb.cg
  store i32 22, ptr %i.c, align 8
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.g
  %.37820 = phi ptr [ %.36819, %bb.ci ], [ %.0783, %bb.g ] ; 3 uses
  %.37774 = phi i32 [ %.36773, %bb.ci ], [ %.0737, %bb.g ] ; 3 uses
  %.37729 = phi i64 [ %.36728, %bb.ci ], [ %.0692, %bb.g ] ; 3 uses
  %.37 = phi i32 [ %.36, %bb.ci ], [ %.0683, %bb.g ] ; 3 uses
  %.6 = phi i32 [ %.5, %bb.ci ], [ %.0, %bb.g ]   ; 3 uses
  %i.wx = icmp eq i32 %.0735, 0
  br i1 %i.wx, label %.loopexit, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.wy = sub i32 %.0678, %.0735                  ; 2 uses
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
  %.sink2564 = phi i32 [ %i.xh, %bb.cn ], [ %i.xg, %bb.cm ]
  %.4674 = phi i32 [ %i.xb, %bb.cn ], [ %i.xe, %bb.cm ]
  %.sink2562 = load ptr, ptr %i.av, align 8
  %i.xi = zext i32 %.sink2564 to i64
  %i.xj = getelementptr i8, ptr %.sink2562, i64 %i.xi
  %i.xk = load i32, ptr %i.ae, align 4            ; 2 uses
  %spec.select893 = tail call i32 @llvm.umin.i32(i32 %.4674, i32 %i.xk)
  br label %bb.cq

bb.cp:                                            ; preds = %bb.ck
  %i.xl = zext i32 %i.wz to i64
  %i.xm = sub nsw i64 0, %i.xl
  %i.xn = getelementptr i8, ptr %.0780, i64 %i.xm
  %i.xo = load i32, ptr %i.ae, align 4            ; 2 uses
  br label %bb.cq

bb.cq:                                            ; preds = %bb.co, %bb.cp
  %i.xp = phi i32 [ %i.xo, %bb.cp ], [ %i.xk, %bb.co ]
  %.5675 = phi i32 [ %i.xo, %bb.cp ], [ %spec.select893, %bb.co ]
  %.1668 = phi ptr [ %i.xn, %bb.cp ], [ %i.xj, %bb.co ] ; 2 uses
  %spec.select894 = tail call i32 @llvm.umin.i32(i32 %.5675, i32 %.0735) ; 6 uses
  %i.xq = sub i32 %i.xp, %spec.select894
  store i32 %i.xq, ptr %i.ae, align 4
  %i.xr = add i32 %spec.select894, -1
  %xtraiter3562 = and i32 %spec.select894, 7      ; 2 uses
  %lcmp.mod3563.not = icmp eq i32 %xtraiter3562, 0
  br i1 %lcmp.mod3563.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.cq, %.prol.preheader
  %.1781.prol = phi ptr [ %i.xu, %.prol.preheader ], [ %.0780, %bb.cq ] ; 2 uses
  %.7677.prol = phi i32 [ %i.xv, %.prol.preheader ], [ %spec.select894, %bb.cq ]
  %.2669.prol = phi ptr [ %i.xs, %.prol.preheader ], [ %.1668, %bb.cq ] ; 2 uses
  %prol.iter3564 = phi i32 [ %prol.iter3564.next, %.prol.preheader ], [ 0, %bb.cq ]
  %i.xs = getelementptr i8, ptr %.2669.prol, i64 1 ; 2 uses
  %i.xt = load i8, ptr %.2669.prol, align 1
  %i.xu = getelementptr i8, ptr %.1781.prol, i64 1 ; 3 uses
  store i8 %i.xt, ptr %.1781.prol, align 1
  %i.xv = add i32 %.7677.prol, -1                 ; 2 uses
  %prol.iter3564.next = add i32 %prol.iter3564, 1 ; 2 uses
  %prol.iter3564.cmp.not = icmp eq i32 %prol.iter3564.next, %xtraiter3562
  br i1 %prol.iter3564.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !24

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.cq
  %.lcssa3198.unr = phi ptr [ poison, %bb.cq ], [ %i.xu, %.prol.preheader ]
  %.1781.unr = phi ptr [ %.0780, %bb.cq ], [ %i.xu, %.prol.preheader ]
  %.7677.unr = phi i32 [ %spec.select894, %bb.cq ], [ %i.xv, %.prol.preheader ]
  %.2669.unr = phi ptr [ %.1668, %bb.cq ], [ %i.xs, %.prol.preheader ]
  %i.xw = icmp ult i32 %i.xr, 7
  br i1 %i.xw, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.1781 = phi ptr [ %i.yu, %.new ], [ %.1781.unr, %.prol.loopexit ] ; 9 uses
  %.7677 = phi i32 [ %i.yv, %.new ], [ %.7677.unr, %.prol.loopexit ]
  %.2669 = phi ptr [ %i.ys, %.new ], [ %.2669.unr, %.prol.loopexit ] ; 9 uses
  %i.xx = getelementptr i8, ptr %.2669, i64 1
  %i.xy = load i8, ptr %.2669, align 1
  %i.xz = getelementptr i8, ptr %.1781, i64 1
  store i8 %i.xy, ptr %.1781, align 1
  %i.ya = getelementptr i8, ptr %.2669, i64 2
  %i.yb = load i8, ptr %i.xx, align 1
  %i.yc = getelementptr i8, ptr %.1781, i64 2
  store i8 %i.yb, ptr %i.xz, align 1
  %i.yd = getelementptr i8, ptr %.2669, i64 3
  %i.ye = load i8, ptr %i.ya, align 1
  %i.yf = getelementptr i8, ptr %.1781, i64 3
  store i8 %i.ye, ptr %i.yc, align 1
  %i.yg = getelementptr i8, ptr %.2669, i64 4
  %i.yh = load i8, ptr %i.yd, align 1
  %i.yi = getelementptr i8, ptr %.1781, i64 4
  store i8 %i.yh, ptr %i.yf, align 1
  %i.yj = getelementptr i8, ptr %.2669, i64 5
  %i.yk = load i8, ptr %i.yg, align 1
  %i.yl = getelementptr i8, ptr %.1781, i64 5
  store i8 %i.yk, ptr %i.yi, align 1
  %i.ym = getelementptr i8, ptr %.2669, i64 6
  %i.yn = load i8, ptr %i.yj, align 1
  %i.yo = getelementptr i8, ptr %.1781, i64 6
  store i8 %i.yn, ptr %i.yl, align 1
  %i.yp = getelementptr i8, ptr %.2669, i64 7
  %i.yq = load i8, ptr %i.ym, align 1
  %i.yr = getelementptr i8, ptr %.1781, i64 7
  store i8 %i.yq, ptr %i.yo, align 1
  %i.ys = getelementptr i8, ptr %.2669, i64 8
  %i.yt = load i8, ptr %i.yp, align 1
  %i.yu = getelementptr i8, ptr %.1781, i64 8     ; 2 uses
  store i8 %i.yt, ptr %i.yr, align 1
  %i.yv = add i32 %.7677, -8                      ; 2 uses
  %.not879.7 = icmp eq i32 %i.yv, 0
  br i1 %.not879.7, label %.unr-lcssa, label %.new, !llvm.loop !25

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %.lcssa3198 = phi ptr [ %.lcssa3198.unr, %.prol.loopexit ], [ %i.yu, %.new ] ; 2 uses
  %i.yw = sub i32 %.0735, %spec.select894         ; 2 uses
  %i.yx = load i32, ptr %i.ae, align 4
  %i.yy = icmp eq i32 %i.yx, 0
  br i1 %i.yy, label %bb.cr, label %.thread

bb.cr:                                            ; preds = %.unr-lcssa
  store i32 18, ptr %i.c, align 8
  br label %.thread

bb.cs:                                            ; preds = %bb.g
  %i.yz = icmp eq i32 %.0735, 0
  br i1 %i.yz, label %.loopexit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.za = load i32, ptr %i.ae, align 4
  %i.zb = trunc i32 %i.za to i8
  %i.zc = getelementptr i8, ptr %.0780, i64 1
  store i8 %i.zb, ptr %.0780, align 1
  %i.zd = add i32 %.0735, -1
  store i32 18, ptr %i.c, align 8
  br label %.thread

bb.cu:                                            ; preds = %bb.g
  %i.ze = load i32, ptr %i.y, align 8
  %.not855 = icmp eq i32 %i.ze, 0
  br i1 %.not855, label %bb.dc, label %.preheader934

.preheader934:                                    ; preds = %bb.cu
  %i.zf = icmp ult i32 %.0683, 32
  br i1 %i.zf, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader934
  %i.zg = zext nneg i32 %.0683 to i64             ; 6 uses
  %i.zh = icmp eq i32 %.0737, 0
  br i1 %i.zh, label %.loopexit.loopexit1791, label %bb.cv

bb.cv:                                            ; preds = %.lr.ph.preheader
  %i.zi = add i32 %.0737, -1                      ; 2 uses
  %i.zj = getelementptr i8, ptr %.0783, i64 1     ; 3 uses
  %i.zk = load i8, ptr %.0783, align 1
  %i.zl = zext i8 %i.zk to i64
  %i.zm = shl nuw nsw i64 %i.zl, %i.zg
  %i.zn = add i64 %i.zm, %.0692                   ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %i.zg, 8     ; 3 uses
  %i.zo = icmp ult i32 %.0683, 24
  br i1 %i.zo, label %.lr.ph.1, label %._crit_edge.loopexit

.lr.ph.1:                                         ; preds = %bb.cv
  %i.zp = icmp eq i32 %i.zi, 0
  br i1 %i.zp, label %.loopexit.loopexit1791, label %bb.cw

bb.cw:                                            ; preds = %.lr.ph.1
  %i.zq = add i32 %.0737, -2                      ; 2 uses
  %i.zr = getelementptr i8, ptr %.0783, i64 2     ; 3 uses
  %i.zs = load i8, ptr %i.zj, align 1
  %i.zt = zext i8 %i.zs to i64
  %i.zu = shl nuw nsw i64 %i.zt, %indvars.iv.next
  %i.zv = add i64 %i.zu, %i.zn                    ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %i.zg, 16  ; 3 uses
  %i.zw = icmp ult i32 %.0683, 16
  br i1 %i.zw, label %.lr.ph.2, label %._crit_edge.loopexit

.lr.ph.2:                                         ; preds = %bb.cw
  %i.zx = icmp eq i32 %i.zq, 0
  br i1 %i.zx, label %.loopexit.loopexit1791, label %bb.cx

bb.cx:                                            ; preds = %.lr.ph.2
  %i.zy = add i32 %.0737, -3                      ; 2 uses
  %i.zz = getelementptr i8, ptr %.0783, i64 3     ; 3 uses
  %i.aaa = load i8, ptr %i.zr, align 1
  %i.aab = zext i8 %i.aaa to i64
  %i.aac = shl nuw nsw i64 %i.aab, %indvars.iv.next.1
  %i.aad = add i64 %i.aac, %i.zv                  ; 3 uses
  %indvars.iv.next.2 = add nuw nsw i64 %i.zg, 24  ; 3 uses
  %i.aae = icmp ult i32 %.0683, 8
  br i1 %i.aae, label %.lr.ph.3, label %._crit_edge.loopexit

.lr.ph.3:                                         ; preds = %bb.cx
  %i.aaf = icmp eq i32 %i.zy, 0
  br i1 %i.aaf, label %.loopexit.loopexit1791, label %bb.cy

bb.cy:                                            ; preds = %.lr.ph.3
  %i.aag = add i32 %.0737, -4
  %i.aah = getelementptr i8, ptr %.0783, i64 4
  %i.aai = load i8, ptr %i.zz, align 1
  %i.aaj = zext i8 %i.aai to i64
  %i.aak = shl nuw nsw i64 %i.aaj, %indvars.iv.next.2
  %i.aal = add i64 %i.aak, %i.aad
  %indvars.iv.next.3 = or disjoint i64 %i.zg, 32
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.cy, %bb.cx, %bb.cw, %bb.cv
  %.lcssa3051 = phi i32 [ %i.zi, %bb.cv ], [ %i.zq, %bb.cw ], [ %i.zy, %bb.cx ], [ %i.aag, %bb.cy ]
  %.lcssa3050 = phi ptr [ %i.zj, %bb.cv ], [ %i.zr, %bb.cw ], [ %i.zz, %bb.cx ], [ %i.aah, %bb.cy ]
  %.lcssa3049 = phi i64 [ %i.zn, %bb.cv ], [ %i.zv, %bb.cw ], [ %i.aad, %bb.cx ], [ %i.aal, %bb.cy ]
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next, %bb.cv ], [ %indvars.iv.next.1, %bb.cw ], [ %indvars.iv.next.2, %bb.cx ], [ %indvars.iv.next.3, %bb.cy ]
  %i.aam = trunc nuw nsw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader934
  %.38821.lcssa = phi ptr [ %.0783, %.preheader934 ], [ %.lcssa3050, %._crit_edge.loopexit ] ; 2 uses
  %.38775.lcssa = phi i32 [ %.0737, %.preheader934 ], [ %.lcssa3051, %._crit_edge.loopexit ] ; 2 uses
  %.38730.lcssa = phi i64 [ %.0692, %.preheader934 ], [ %.lcssa3049, %._crit_edge.loopexit ] ; 2 uses
  %.38.lcssa = phi i32 [ %.0683, %.preheader934 ], [ %i.aam, %._crit_edge.loopexit ]
  %i.aan = sub i32 %.0678, %.0735                 ; 2 uses
  %i.aao = zext i32 %i.aan to i64                 ; 3 uses
  %i.aap = load i64, ptr %i.z, align 8
  %i.aaq = add i64 %i.aap, %i.aao
  store i64 %i.aaq, ptr %i.z, align 8
  %i.aar = load i64, ptr %i.aa, align 8
  %i.aas = add i64 %i.aar, %i.aao
  store i64 %i.aas, ptr %i.aa, align 8
  %.not856 = icmp eq i32 %.0678, %.0735
  br i1 %.not856, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %._crit_edge
  %i.aat = load i64, ptr %i.ab, align 8
  %i.aau = sub nsw i64 0, %i.aao
  %i.aav = getelementptr i8, ptr %.0780, i64 %i.aau
  %i.aaw = tail call fastcc i64 @zlib_adler32(i64 noundef %i.aat, ptr noundef %i.aav, i32 noundef %i.aan) #12, !srcloc !26 ; 2 uses
  store i64 %i.aaw, ptr %i.ab, align 8
  store i64 %i.aaw, ptr %i.ac, align 8
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %._crit_edge
  %trunc = trunc i64 %.38730.lcssa to i32
  %rev = tail call i32 @llvm.bswap.i32(i32 %trunc)
  %i.aax = zext i32 %rev to i64
  %i.aay = load i64, ptr %i.ab, align 8
  %.not857 = icmp eq i64 %i.aay, %i.aax
  br i1 %.not857, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  store ptr @.str.13, ptr %i.ad, align 8
  store i32 27, ptr %i.c, align 8
  br label %.thread

bb.dc:                                            ; preds = %bb.da, %bb.cu
  %.39822 = phi ptr [ %.0783, %bb.cu ], [ %.38821.lcssa, %bb.da ]
  %.39776 = phi i32 [ %.0737, %bb.cu ], [ %.38775.lcssa, %bb.da ]
  %.39731 = phi i64 [ %.0692, %bb.cu ], [ 0, %bb.da ]
  %.39 = phi i32 [ %.0683, %bb.cu ], [ 0, %bb.da ]
  %.1679 = phi i32 [ %.0678, %bb.cu ], [ %.0735, %bb.da ]
  store i32 26, ptr %i.c, align 8
  br label %.loopexit

.thread:                                          ; preds = %bb.bb, %bb.bg, %.unr-lcssa, %bb.cr, %bb.db, %bb.ct, %bb.ch, %bb.cd, %bb.bv, %bb.bt, %bb.br, %bb.bn, %bb.bk, %bb.bi, %bb.av, %bb.at, %bb.aq, %bb.ap, %bb.al, %bb.af, %bb.aa, %bb.q, %bb.p, %bb.n, %bb.l, %bb.i
  %.41824 = phi ptr [ %.0783, %bb.i ], [ %.1784.lcssa, %bb.l ], [ %.1784.lcssa, %bb.n ], [ %.1784.lcssa, %bb.p ], [ %.1784.lcssa, %bb.q ], [ %.5788, %bb.aa ], [ %.6789.lcssa, %bb.af ], [ %.7790.lcssa, %bb.al ], [ %i.gs, %bb.ap ], [ %.8791, %bb.aq ], [ %.9792.lcssa, %bb.at ], [ %.11794.lcssa, %bb.av ], [ %.17800.lcssa, %bb.bb ], [ %.14797.lcssa, %bb.bi ], [ %.14797.lcssa, %bb.bk ], [ %i.qb, %bb.bn ], [ %.26809, %bb.br ], [ %.26809, %bb.bt ], [ %.26809, %bb.bv ], [ %.33816, %bb.cd ], [ %.36819, %bb.ch ], [ %.37820, %bb.cr ], [ %.37820, %.unr-lcssa ], [ %.0783, %bb.ct ], [ %.38821.lcssa, %bb.db ], [ %.20803, %bb.bg ]
  %.2782 = phi ptr [ %.0780, %bb.i ], [ %.0780, %bb.l ], [ %.0780, %bb.n ], [ %.0780, %bb.p ], [ %.0780, %bb.q ], [ %.0780, %bb.aa ], [ %.0780, %bb.af ], [ %.0780, %bb.al ], [ %i.gu, %bb.ap ], [ %.0780, %bb.aq ], [ %.0780, %bb.at ], [ %.0780, %bb.av ], [ %.0780, %bb.bb ], [ %.0780, %bb.bi ], [ %.0780, %bb.bk ], [ %i.py, %bb.bn ], [ %.0780, %bb.br ], [ %.0780, %bb.bt ], [ %.0780, %bb.bv ], [ %.0780, %bb.cd ], [ %.0780, %bb.ch ], [ %.lcssa3198, %bb.cr ], [ %.lcssa3198, %.unr-lcssa ], [ %i.zc, %bb.ct ], [ %.0780, %bb.db ], [ %.0780, %bb.bg ]
  %.41778 = phi i32 [ %.0737, %bb.i ], [ %.1738.lcssa, %bb.l ], [ %.1738.lcssa, %bb.n ], [ %.1738.lcssa, %bb.p ], [ %.1738.lcssa, %bb.q ], [ %.5742, %bb.aa ], [ %.6743.lcssa, %bb.af ], [ %.7744.lcssa, %bb.al ], [ %i.gr, %bb.ap ], [ %.8745, %bb.aq ], [ %.9746.lcssa, %bb.at ], [ %.11748.lcssa, %bb.av ], [ %.17754.lcssa, %bb.bb ], [ %.14751.lcssa, %bb.bi ], [ %.14751.lcssa, %bb.bk ], [ %i.qd, %bb.bn ], [ %.26763, %bb.br ], [ %.26763, %bb.bt ], [ %.26763, %bb.bv ], [ %.33770, %bb.cd ], [ %.36773, %bb.ch ], [ %.37774, %bb.cr ], [ %.37774, %.unr-lcssa ], [ %.0737, %bb.ct ], [ %.38775.lcssa, %bb.db ], [ %.20757, %bb.bg ]
  %.1736 = phi i32 [ %.0735, %bb.i ], [ %.0735, %bb.l ], [ %.0735, %bb.n ], [ %.0735, %bb.p ], [ %.0735, %bb.q ], [ %.0735, %bb.aa ], [ %.0735, %bb.af ], [ %.0735, %bb.al ], [ %i.gt, %bb.ap ], [ %.0735, %bb.aq ], [ %.0735, %bb.at ], [ %.0735, %bb.av ], [ %.0735, %bb.bb ], [ %.0735, %bb.bi ], [ %.0735, %bb.bk ], [ %i.qa, %bb.bn ], [ %.0735, %bb.br ], [ %.0735, %bb.bt ], [ %.0735, %bb.bv ], [ %.0735, %bb.cd ], [ %.0735, %bb.ch ], [ %i.yw, %bb.cr ], [ %i.yw, %.unr-lcssa ], [ %i.zd, %bb.ct ], [ %.0735, %bb.db ], [ %.0735, %bb.bg ]
  %.41733 = phi i64 [ %.0692, %bb.i ], [ %.1693.lcssa, %bb.l ], [ %.1693.lcssa, %bb.n ], [ %i.cj, %bb.p ], [ 0, %bb.q ], [ %i.eh, %bb.aa ], [ %i.ev, %bb.af ], [ %.7699.lcssa, %bb.al ], [ %.8700, %bb.ap ], [ %.8700, %bb.aq ], [ %i.hv, %bb.at ], [ %.11703.lcssa, %bb.av ], [ %i.mo, %bb.bb ], [ %.14706.lcssa, %bb.bi ], [ %.14706.lcssa, %bb.bk ], [ %i.qe, %bb.bn ], [ %i.sf, %bb.br ], [ %i.sf, %bb.bt ], [ %i.sf, %bb.bv ], [ %i.vr, %bb.cd ], [ %.36728, %bb.ch ], [ %.37729, %bb.cr ], [ %.37729, %.unr-lcssa ], [ %.0692, %bb.ct ], [ %.38730.lcssa, %bb.db ], [ %.20712, %bb.bg ]
  %.41 = phi i32 [ %.0683, %bb.i ], [ %.1684.lcssa, %bb.l ], [ %.1684.lcssa, %bb.n ], [ %i.cp, %bb.p ], [ 0, %bb.q ], [ %i.ei, %bb.aa ], [ %i.ew, %bb.af ], [ %.7690.lcssa, %bb.al ], [ %.8691, %bb.ap ], [ %.8691, %bb.aq ], [ %i.hw, %bb.at ], [ %.11.lcssa, %bb.av ], [ %i.mp, %bb.bb ], [ %.14.lcssa, %bb.bi ], [ %.14.lcssa, %bb.bk ], [ %i.qf, %bb.bn ], [ %i.sg, %bb.br ], [ %i.sg, %bb.bt ], [ %i.sg, %bb.bv ], [ %i.vs, %bb.cd ], [ %.36, %bb.ch ], [ %.37, %bb.cr ], [ %.37, %.unr-lcssa ], [ %.0683, %bb.ct ], [ %.38.lcssa, %bb.db ], [ %.20, %bb.bg ]
  %.3681 = phi i32 [ %.0678, %bb.i ], [ %.0678, %bb.l ], [ %.0678, %bb.n ], [ %.0678, %bb.p ], [ %.0678, %bb.q ], [ %.0678, %bb.aa ], [ %.0678, %bb.af ], [ %.0678, %bb.al ], [ %.0678, %bb.ap ], [ %.0678, %bb.aq ], [ %.0678, %bb.at ], [ %.0678, %bb.av ], [ %.0678, %bb.bb ], [ %.0678, %bb.bi ], [ %.0678, %bb.bk ], [ %.0678, %bb.bn ], [ %.0678, %bb.br ], [ %.0678, %bb.bt ], [ %.0678, %bb.bv ], [ %.0678, %bb.cd ], [ %.0678, %bb.ch ], [ %.0678, %bb.cr ], [ %.0678, %.unr-lcssa ], [ %.0678, %bb.ct ], [ %.0735, %bb.db ], [ %.0678, %bb.bg ]
  %.7 = phi i32 [ %.0, %bb.i ], [ %.0, %bb.l ], [ %.0, %bb.n ], [ %.0, %bb.p ], [ %.0, %bb.q ], [ %.0, %bb.aa ], [ %.0, %bb.af ], [ %.0, %bb.al ], [ %.0, %bb.ap ], [ %.0, %bb.aq ], [ %.0, %bb.at ], [ %i.ki, %bb.av ], [ %.1, %bb.bb ], [ %i.pd, %bb.bi ], [ %i.pj, %bb.bk ], [ %.2, %bb.bn ], [ %.2, %bb.br ], [ %.2, %bb.bt ], [ %.2, %bb.bv ], [ %.4, %bb.cd ], [ %.5, %bb.ch ], [ %.6, %bb.cr ], [ %.6, %.unr-lcssa ], [ %.0, %bb.ct ], [ %.0, %bb.db ], [ %.1, %bb.bg ]
  %.pre2168 = load i32, ptr %i.c, align 8
  br label %bb.g

.loopexit.loopexit:                               ; preds = %.lr.ph1505
  %15 = trunc nuw nsw i64 %indvars.iv2139 to i32
  br label %.loopexit

.loopexit.loopexit1776:                           ; preds = %.lr.ph1492
  %i.aaz = trunc nuw nsw i64 %indvars.iv2136 to i32
  br label %.loopexit

.loopexit.loopexit1777:                           ; preds = %.lr.ph1482
  %i.aba = trunc nuw nsw i64 %indvars.iv2133 to i32
  br label %.loopexit

.loopexit.loopexit1778:                           ; preds = %.lr.ph1472
  %i.abb = trunc nuw nsw i64 %indvars.iv2130 to i32
  br label %.loopexit

.loopexit.loopexit1780:                           ; preds = %.lr.ph1768.1, %.lr.ph1768.preheader
  %indvars.iv2165.lcssa = phi i64 [ %i.bm, %.lr.ph1768.preheader ], [ %indvars.iv.next2166, %.lr.ph1768.1 ]
  %.16931766.lcssa = phi i64 [ %.0692, %.lr.ph1768.preheader ], [ %i.bt, %.lr.ph1768.1 ]
  %.17841764.lcssa = phi ptr [ %.0783, %.lr.ph1768.preheader ], [ %i.bp, %.lr.ph1768.1 ]
  %i.abc = trunc nuw nsw i64 %indvars.iv2165.lcssa to i32
  br label %.loopexit

.loopexit.loopexit1781:                           ; preds = %.lr.ph1628.3, %.lr.ph1628.2, %.lr.ph1628.1, %.lr.ph1628.preheader
  %indvars.iv2162.lcssa = phi i64 [ %i.bh, %.lr.ph1628.preheader ], [ %indvars.iv.next2163, %.lr.ph1628.1 ], [ %indvars.iv.next2163.1, %.lr.ph1628.2 ], [ %indvars.iv.next2163.2, %.lr.ph1628.3 ]
  %.26941626.lcssa = phi i64 [ %.0692, %.lr.ph1628.preheader ], [ %i.cy, %.lr.ph1628.1 ], [ %i.dg, %.lr.ph1628.2 ], [ %i.do, %.lr.ph1628.3 ]
  %.27851624.lcssa = phi ptr [ %.0783, %.lr.ph1628.preheader ], [ %i.cu, %.lr.ph1628.1 ], [ %i.dc, %.lr.ph1628.2 ], [ %i.dk, %.lr.ph1628.3 ]
  %i.abd = trunc nuw nsw i64 %indvars.iv2162.lcssa to i32
  br label %.loopexit

.loopexit.loopexit1782:                           ; preds = %.lr.ph1618.3, %.lr.ph1618.2, %.lr.ph1618.1, %.lr.ph1618.preheader
  %indvars.iv2160.lcssa = phi i64 [ %i.fd, %.lr.ph1618.preheader ], [ %indvars.iv.next2161, %.lr.ph1618.1 ], [ %indvars.iv.next2161.1, %.lr.ph1618.2 ], [ %indvars.iv.next2161.2, %.lr.ph1618.3 ]
  %.76991615.lcssa = phi i64 [ %i.ez, %.lr.ph1618.preheader ], [ %i.fk, %.lr.ph1618.1 ], [ %i.fr, %.lr.ph1618.2 ], [ %i.fz, %.lr.ph1618.3 ]
  %.77901613.lcssa = phi ptr [ %.0783, %.lr.ph1618.preheader ], [ %i.fg, %.lr.ph1618.1 ], [ %i.fn, %.lr.ph1618.2 ], [ %i.fv, %.lr.ph1618.3 ]
  %i.abe = trunc nuw nsw i64 %indvars.iv2160.lcssa to i32
  br label %.loopexit

.loopexit.loopexit1790:                           ; preds = %.lr.ph1301.1, %.lr.ph1301.preheader
  %indvars.iv2121.lcssa = phi i64 [ %i.be, %.lr.ph1301.preheader ], [ %indvars.iv.next2122, %.lr.ph1301.1 ]
  %.97011299.lcssa = phi i64 [ %.0692, %.lr.ph1301.preheader ], [ %i.hc, %.lr.ph1301.1 ]
  %.97921297.lcssa = phi ptr [ %.0783, %.lr.ph1301.preheader ], [ %i.gy, %.lr.ph1301.1 ]
  %i.abf = trunc nuw nsw i64 %indvars.iv2121.lcssa to i32
  br label %.loopexit

.loopexit.loopexit1791:                           ; preds = %.lr.ph.3, %.lr.ph.2, %.lr.ph.1, %.lr.ph.preheader
  %indvars.iv.lcssa = phi i64 [ %i.zg, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph.1 ], [ %indvars.iv.next.1, %.lr.ph.2 ], [ %indvars.iv.next.2, %.lr.ph.3 ]
  %.387301292.lcssa = phi i64 [ %.0692, %.lr.ph.preheader ], [ %i.zn, %.lr.ph.1 ], [ %i.zv, %.lr.ph.2 ], [ %i.aad, %.lr.ph.3 ]
  %.388211290.lcssa = phi ptr [ %.0783, %.lr.ph.preheader ], [ %i.zj, %.lr.ph.1 ], [ %i.zr, %.lr.ph.2 ], [ %i.zz, %.lr.ph.3 ]
  %i.abg = trunc nuw nsw i64 %indvars.iv.lcssa to i32
  br label %.loopexit

.loopexit.loopexit2229:                           ; preds = %.lr.ph1458.preheader, %.lr.ph1458
  %.157071456.lcssa = phi i64 [ %i.lb, %.lr.ph1458 ], [ %.147061517, %.lr.ph1458.preheader ]
  %i.abh = zext i32 %.147511516 to i64
  %i.abi = shl i32 %.147511516, 3
  %i.abj = add i32 %i.abi, %.141518
  %scevgep.le = getelementptr i8, ptr %.147971515, i64 %i.abh
  br label %.loopexit

.loopexit.loopexit2230:                           ; preds = %.lr.ph1607.preheader, %.lr.ph1607
  %.357271605.lcssa = phi i64 [ %i.wh, %.lr.ph1607 ], [ %.34726, %.lr.ph1607.preheader ]
  %i.abk = shl i32 %.34771, 3
  %i.abl = add i32 %.34, %i.abk
  %i.abm = zext i32 %.34771 to i64
  %scevgep2159.le = getelementptr i8, ptr %.34817, i64 %i.abm
  br label %.loopexit

.loopexit.loopexit2231:                           ; preds = %.lr.ph1595.preheader, %.lr.ph1595
  %.327241593.lcssa = phi i64 [ %i.vb, %.lr.ph1595 ], [ %.31723.lcssa, %.lr.ph1595.preheader ]
  %i.abn = zext i32 %.31768.lcssa to i64
  %i.abo = shl i32 %.31768.lcssa, 3
  %i.abp = add i32 %i.abo, %.31.lcssa
  %scevgep2157.le = getelementptr i8, ptr %.31814.lcssa, i64 %i.abn
  br label %.loopexit

.loopexit.loopexit2232:                           ; preds = %.lr.ph1577.preheader, %.lr.ph1577
  %.317231574.lcssa = phi i64 [ %i.ty, %.lr.ph1577 ], [ %.30722, %.lr.ph1577.preheader ]
  %i.abq = zext i32 %.30767 to i64
  %i.abr = shl i32 %.30767, 3
  %i.abs = add i32 %i.abr, %.30
  %scevgep2153.le = getelementptr i8, ptr %.30813, i64 %i.abq
  br label %.loopexit

.loopexit.loopexit2233:                           ; preds = %.lr.ph1562.preheader, %.lr.ph1562
  %.287201560.lcssa = phi i64 [ %i.sx, %.lr.ph1562 ], [ %.27719, %.lr.ph1562.preheader ]
  %i.abt = shl i32 %.27764, 3
  %i.abu = add i32 %.27, %i.abt
  %i.abv = zext i32 %.27764 to i64
  %scevgep2150.le = getelementptr i8, ptr %.27810, i64 %i.abv
  br label %.loopexit

.loopexit.loopexit2234:                           ; preds = %.lr.ph1550.preheader, %.lr.ph1550
  %.257171548.lcssa = phi i64 [ %i.rp, %.lr.ph1550 ], [ %.24716.lcssa, %.lr.ph1550.preheader ]
  %i.abw = zext i32 %.24761.lcssa to i64
  %i.abx = shl i32 %.24761.lcssa, 3
  %i.aby = add i32 %i.abx, %.24.lcssa
  %scevgep2148.le = getelementptr i8, ptr %.24807.lcssa, i64 %i.abw
  br label %.loopexit

.loopexit.loopexit2235:                           ; preds = %.lr.ph1532.preheader, %.lr.ph1532
  %.247161530.lcssa = phi i64 [ %i.qm, %.lr.ph1532 ], [ %.23715, %.lr.ph1532.preheader ]
  %i.abz = zext i32 %.23760 to i64
  %i.aca = shl i32 %.23760, 3
  %i.acb = add i32 %i.aca, %.23
  %scevgep2144.le = getelementptr i8, ptr %.23806, i64 %i.abz
  br label %.loopexit

.loopexit.loopexit3039:                           ; preds = %bb.g
  br label %.loopexit

.loopexit:                                        ; preds = %bb.y, %bb.ao, %bb.cj, %bb.cs, %.lr.ph1637, %.lr.ph1311, %bb.g, %.loopexit.loopexit3039, %.loopexit.loopexit2235, %.loopexit.loopexit2234, %.loopexit.loopexit2233, %.loopexit.loopexit2232, %.loopexit.loopexit2231, %.loopexit.loopexit2230, %.loopexit.loopexit2229, %.loopexit.loopexit1791, %.loopexit.loopexit1790, %.loopexit.loopexit1782, %.loopexit.loopexit1781, %.loopexit.loopexit1780, %.loopexit.loopexit1778, %.loopexit.loopexit1777, %.loopexit.loopexit1776, %.loopexit.loopexit, %bb.dc
  %.07352049 = phi i32 [ %.0735, %.loopexit.loopexit1778 ], [ %.0735, %bb.g ], [ %.0735, %.loopexit.loopexit2234 ], [ %.0735, %.loopexit.loopexit2233 ], [ %.0735, %.loopexit.loopexit1776 ], [ %.0735, %.loopexit.loopexit2232 ], [ %.0735, %.loopexit.loopexit2231 ], [ %.0735, %.loopexit.loopexit1777 ], [ %.0735, %.loopexit.loopexit1790 ], [ %.0735, %.loopexit.loopexit2235 ], [ %.0735, %.lr.ph1311 ], [ %.0735, %.loopexit.loopexit1780 ], [ %.0735, %bb.dc ], [ %.0735, %.loopexit.loopexit1781 ], [ %.0735, %.loopexit.loopexit1782 ], [ %.0735, %.loopexit.loopexit2229 ], [ %.0735, %.loopexit.loopexit2230 ], [ %.0735, %.loopexit.loopexit ], [ %.0735, %.loopexit.loopexit1791 ], [ %.0735, %bb.y ], [ %.0735, %bb.ao ], [ 0, %bb.cj ], [ 0, %bb.cs ], [ %.0735, %.lr.ph1637 ], [ %.0735, %.loopexit.loopexit3039 ]
  %.42825 = phi ptr [ %.188011468, %.loopexit.loopexit1778 ], [ %.0783, %bb.g ], [ %scevgep2148.le, %.loopexit.loopexit2234 ], [ %scevgep2150.le, %.loopexit.loopexit2233 ], [ %.198021488, %.loopexit.loopexit1776 ], [ %scevgep2153.le, %.loopexit.loopexit2232 ], [ %scevgep2157.le, %.loopexit.loopexit2231 ], [ %.178001478, %.loopexit.loopexit1777 ], [ %.97921297.lcssa, %.loopexit.loopexit1790 ], [ %scevgep2144.le, %.loopexit.loopexit2235 ], [ %.117941437, %.lr.ph1311 ], [ %.17841764.lcssa, %.loopexit.loopexit1780 ], [ %.39822, %bb.dc ], [ %.27851624.lcssa, %.loopexit.loopexit1781 ], [ %.77901613.lcssa, %.loopexit.loopexit1782 ], [ %scevgep.le, %.loopexit.loopexit2229 ], [ %scevgep2159.le, %.loopexit.loopexit2230 ], [ %.167991501, %.loopexit.loopexit ], [ %.388211290.lcssa, %.loopexit.loopexit1791 ], [ %.4787, %bb.y ], [ %.8791, %bb.ao ], [ %.37820, %bb.cj ], [ %.0783, %bb.cs ], [ %.5788, %.lr.ph1637 ], [ %.0783, %.loopexit.loopexit3039 ]
  %.42779 = phi i32 [ 0, %.loopexit.loopexit1778 ], [ %.0737, %bb.g ], [ 0, %.loopexit.loopexit2234 ], [ 0, %.loopexit.loopexit2233 ], [ 0, %.loopexit.loopexit1776 ], [ 0, %.loopexit.loopexit2232 ], [ 0, %.loopexit.loopexit2231 ], [ 0, %.loopexit.loopexit1777 ], [ 0, %.loopexit.loopexit1790 ], [ 0, %.loopexit.loopexit2235 ], [ 0, %.lr.ph1311 ], [ 0, %.loopexit.loopexit1780 ], [ %.39776, %bb.dc ], [ 0, %.loopexit.loopexit1781 ], [ 0, %.loopexit.loopexit1782 ], [ 0, %.loopexit.loopexit2229 ], [ 0, %.loopexit.loopexit2230 ], [ 0, %.loopexit.loopexit ], [ 0, %.loopexit.loopexit1791 ], [ %.4741, %bb.y ], [ %.8745, %bb.ao ], [ %.37774, %bb.cj ], [ %.0737, %bb.cs ], [ 0, %.lr.ph1637 ], [ %.0737, %.loopexit.loopexit3039 ]
  %.42734 = phi i64 [ %.187101470, %.loopexit.loopexit1778 ], [ %.0692, %bb.g ], [ %.257171548.lcssa, %.loopexit.loopexit2234 ], [ %.287201560.lcssa, %.loopexit.loopexit2233 ], [ %.197111490, %.loopexit.loopexit1776 ], [ %.317231574.lcssa, %.loopexit.loopexit2232 ], [ %.327241593.lcssa, %.loopexit.loopexit2231 ], [ %.177091480, %.loopexit.loopexit1777 ], [ %.97011299.lcssa, %.loopexit.loopexit1790 ], [ %.247161530.lcssa, %.loopexit.loopexit2235 ], [ %.117031439, %.lr.ph1311 ], [ %.16931766.lcssa, %.loopexit.loopexit1780 ], [ %.39731, %bb.dc ], [ %.26941626.lcssa, %.loopexit.loopexit1781 ], [ %.76991615.lcssa, %.loopexit.loopexit1782 ], [ %.157071456.lcssa, %.loopexit.loopexit2229 ], [ %.357271605.lcssa, %.loopexit.loopexit2230 ], [ %.167081503, %.loopexit.loopexit ], [ %.387301292.lcssa, %.loopexit.loopexit1791 ], [ %.4696, %bb.y ], [ %.8700, %bb.ao ], [ %.37729, %bb.cj ], [ %.0692, %bb.cs ], [ %.5697, %.lr.ph1637 ], [ %.0692, %.loopexit.loopexit3039 ]
  %.42 = phi i32 [ %i.abb, %.loopexit.loopexit1778 ], [ %.0683, %bb.g ], [ %i.aby, %.loopexit.loopexit2234 ], [ %i.abu, %.loopexit.loopexit2233 ], [ %i.aaz, %.loopexit.loopexit1776 ], [ %i.abs, %.loopexit.loopexit2232 ], [ %i.abp, %.loopexit.loopexit2231 ], [ %i.aba, %.loopexit.loopexit1777 ], [ %i.abf, %.loopexit.loopexit1790 ], [ %i.acb, %.loopexit.loopexit2235 ], [ %.111440, %.lr.ph1311 ], [ %i.abc, %.loopexit.loopexit1780 ], [ %.39, %bb.dc ], [ %i.abd, %.loopexit.loopexit1781 ], [ %i.abe, %.loopexit.loopexit1782 ], [ %i.abj, %.loopexit.loopexit2229 ], [ %i.abl, %.loopexit.loopexit2230 ], [ %15, %.loopexit.loopexit ], [ %i.abg, %.loopexit.loopexit1791 ], [ %.4687, %bb.y ], [ %.8691, %bb.ao ], [ %.37, %bb.cj ], [ %.0683, %bb.cs ], [ %.5688, %.lr.ph1637 ], [ %.0683, %.loopexit.loopexit3039 ]
  %.4682 = phi i32 [ %.0678, %.loopexit.loopexit1778 ], [ %.0678, %bb.g ], [ %.0678, %.loopexit.loopexit2234 ], [ %.0678, %.loopexit.loopexit2233 ], [ %.0678, %.loopexit.loopexit1776 ], [ %.0678, %.loopexit.loopexit2232 ], [ %.0678, %.loopexit.loopexit2231 ], [ %.0678, %.loopexit.loopexit1777 ], [ %.0678, %.loopexit.loopexit1790 ], [ %.0678, %.loopexit.loopexit2235 ], [ %.0678, %.lr.ph1311 ], [ %.0678, %.loopexit.loopexit1780 ], [ %.1679, %bb.dc ], [ %.0678, %.loopexit.loopexit1781 ], [ %.0678, %.loopexit.loopexit1782 ], [ %.0678, %.loopexit.loopexit2229 ], [ %.0678, %.loopexit.loopexit2230 ], [ %.0678, %.loopexit.loopexit ], [ %.0678, %.loopexit.loopexit1791 ], [ %.0678, %.lr.ph1637 ], [ %.0678, %bb.cs ], [ %.0678, %bb.cj ], [ %.0678, %bb.ao ], [ %.0678, %bb.y ], [ %.0678, %.loopexit.loopexit3039 ] ; 5 uses
  %.8 = phi i32 [ %.1, %.loopexit.loopexit1778 ], [ -3, %bb.g ], [ %.2, %.loopexit.loopexit2234 ], [ %.3, %.loopexit.loopexit2233 ], [ %.1, %.loopexit.loopexit1776 ], [ %.4, %.loopexit.loopexit2232 ], [ %.4, %.loopexit.loopexit2231 ], [ %.1, %.loopexit.loopexit1777 ], [ %.0, %.loopexit.loopexit1790 ], [ %.2, %.loopexit.loopexit2235 ], [ %.0, %.lr.ph1311 ], [ %.0, %.loopexit.loopexit1780 ], [ 1, %bb.dc ], [ %.0, %.loopexit.loopexit1781 ], [ %.0, %.loopexit.loopexit1782 ], [ %.1, %.loopexit.loopexit2229 ], [ %.5, %.loopexit.loopexit2230 ], [ %.1, %.loopexit.loopexit ], [ %.0, %.loopexit.loopexit1791 ], [ %.0, %bb.y ], [ %.0, %bb.ao ], [ %.6, %bb.cj ], [ %.0, %bb.cs ], [ %.0, %.lr.ph1637 ], [ 1, %.loopexit.loopexit3039 ] ; 2 uses
  store ptr %.0780, ptr %i.m, align 8
  %i.acc = zext i32 %.07352049 to i64
  store i64 %i.acc, ptr %i.o, align 8
  store ptr %.42825, ptr %0, align 8
  %i.acd = zext i32 %.42779 to i64
  store i64 %i.acd, ptr %i.r, align 8
  store i64 %.42734, ptr %i.u, align 8
  store i32 %.42, ptr %i.w, align 8
  %i.ace = load i32, ptr %i.aw, align 4
  %.not888 = icmp eq i32 %i.ace, 0
  br i1 %.not888, label %bb.dd, label %.loopexit._crit_edge

.loopexit._crit_edge:                             ; preds = %.loopexit
  %.pre2184 = load i64, ptr %i.o, align 8
  br label %bb.df

bb.dd:                                            ; preds = %.loopexit
  %i.acf = load i32, ptr %i.c, align 8
  %i.acg = icmp ult i32 %i.acf, 24
  br i1 %i.acg, label %bb.de, label %zlib_updatewindow.exit

bb.de:                                            ; preds = %bb.dd
  %i.ach = zext i32 %.4682 to i64
  %i.aci = load i64, ptr %i.o, align 8            ; 2 uses
  %.not889 = icmp eq i64 %i.aci, %i.ach
  br i1 %.not889, label %zlib_updatewindow.exit, label %bb.df

bb.df:                                            ; preds = %.loopexit._crit_edge, %bb.de
  %i.acj = phi i64 [ %.pre2184, %.loopexit._crit_edge ], [ %i.aci, %bb.de ]
  %i.ack = load ptr, ptr %i.b, align 8            ; 8 uses
  %i.acl = trunc i64 %i.acj to i32
  %i.acm = sub i32 %.4682, %i.acl                 ; 5 uses
  %i.acn = getelementptr i8, ptr %i.ack, i64 44   ; 4 uses
  %i.aco = load i32, ptr %i.acn, align 4          ; 3 uses
  %.not.i = icmp ult i32 %i.acm, %i.aco
  br i1 %.not.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.acp = getelementptr i8, ptr %i.ack, i64 56
  %i.acq = load ptr, ptr %i.acp, align 8
  %i.acr = load ptr, ptr %i.m, align 8
  %i.acs = zext i32 %i.aco to i64                 ; 2 uses
  %i.act = sub nsw i64 0, %i.acs
  %i.acu = getelementptr i8, ptr %i.acr, i64 %i.act
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.acq, ptr align 1 %i.acu, i64 %i.acs, i1 false)
  %i.acv = getelementptr i8, ptr %i.ack, i64 52
  store i32 0, ptr %i.acv, align 4
  %i.acw = load i32, ptr %i.acn, align 4
  %i.acx = getelementptr i8, ptr %i.ack, i64 48
  store i32 %i.acw, ptr %i.acx, align 8
  br label %zlib_updatewindow.exit

bb.dh:                                            ; preds = %bb.df
  %i.acy = getelementptr i8, ptr %i.ack, i64 52   ; 4 uses
  %i.acz = load i32, ptr %i.acy, align 4          ; 2 uses
  %i.ada = sub i32 %i.aco, %i.acz                 ; 2 uses
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.ada, i32 %i.acm) ; 4 uses
  %i.adb = getelementptr i8, ptr %i.ack, i64 56   ; 2 uses
  %i.adc = load ptr, ptr %i.adb, align 8
  %i.add = zext i32 %i.acz to i64
  %i.ade = getelementptr i8, ptr %i.adc, i64 %i.add
  %i.adf = load ptr, ptr %i.m, align 8
  %i.adg = zext i32 %i.acm to i64
  %i.adh = sub nsw i64 0, %i.adg
  %i.adi = getelementptr i8, ptr %i.adf, i64 %i.adh
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
  %i.adp = getelementptr i8, ptr %i.adm, i64 %i.ado
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.adl, ptr align 1 %i.adp, i64 %i.adn, i1 false)
  store i32 %i.adk, ptr %i.acy, align 4
  %i.adq = load i32, ptr %i.acn, align 4
  %i.adr = getelementptr i8, ptr %i.ack, i64 48
  store i32 %i.adq, ptr %i.adr, align 8
  br label %zlib_updatewindow.exit

bb.dj:                                            ; preds = %bb.dh
  %i.ads = load i32, ptr %i.acy, align 4
  %i.adt = add i32 %i.ads, %spec.select.i         ; 2 uses
  %i.adu = load i32, ptr %i.acn, align 4          ; 2 uses
  %i.adv = icmp eq i32 %i.adt, %i.adu
  %spec.store.select.i = select i1 %i.adv, i32 0, i32 %i.adt
  store i32 %spec.store.select.i, ptr %i.acy, align 4
  %i.adw = getelementptr i8, ptr %i.ack, i64 48   ; 2 uses
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
  %i.aee = sub i32 %.4682, %i.aed                 ; 2 uses
  %i.aef = and i64 %i.aeb, 4294967295             ; 2 uses
  %i.aeg = getelementptr i8, ptr %0, i64 16       ; 2 uses
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
  %i.aeq = icmp ne i32 %.4682, %i.aed
  %or.cond3 = select i1 %i.aep, i1 %i.aeq, i1 false
  br i1 %or.cond3, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %zlib_updatewindow.exit
  %i.aer = load i64, ptr %i.ab, align 8
  %i.aes = load ptr, ptr %i.m, align 8
  %i.aet = sub nsw i64 0, %i.aej
  %i.aeu = getelementptr i8, ptr %i.aes, i64 %i.aet
  %i.aev = tail call fastcc i64 @zlib_adler32(i64 noundef %i.aer, ptr noundef %i.aeu, i32 noundef %i.aee) #12, !srcloc !27 ; 2 uses
  store i64 %i.aev, ptr %i.ab, align 8
  store i64 %i.aev, ptr %i.ac, align 8
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %zlib_updatewindow.exit
  %i.aew = load i32, ptr %i.w, align 8
  %i.aex = load i32, ptr %i.az, align 4
  %.not890 = icmp eq i32 %i.aex, 0
  %i.aey = select i1 %.not890, i32 0, i32 64
  %i.aez = add i32 %i.aey, %i.aew
  %i.afa = load i32, ptr %i.c, align 8
  %i.afb = icmp eq i32 %i.afa, 11
  %i.afc = select i1 %i.afb, i32 128, i32 0
  %i.afd = add i32 %i.aez, %i.afc
  %i.afe = getelementptr i8, ptr %0, i64 72
  store i32 %i.afd, ptr %i.afe, align 8
  %i.aff = icmp eq i32 %1, 2
  %i.afg = icmp eq i32 %.8, 0                     ; 2 uses
  %or.cond5 = select i1 %i.aff, i1 %i.afg, i1 false
  br i1 %or.cond5, label %bb.dn, label %bb.dt

bb.dn:                                            ; preds = %bb.dm
  %i.afh = load i64, ptr %i.o, align 8
  %.not891 = icmp eq i64 %i.afh, 0
  br i1 %.not891, label %bb.dt, label %bb.do

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
  %i.afn = getelementptr i8, ptr %.val, i64 72
  %i.afo = load i32, ptr %i.afn, align 8
  %i.afp = icmp eq i32 %i.afo, 0
  br i1 %i.afp, label %bb.ds, label %zlib_inflateSyncPacket.exit

bb.ds:                                            ; preds = %bb.dr
  store i32 11, ptr %.val, align 8
  br label %zlib_inflateSyncPacket.exit

bb.dt:                                            ; preds = %bb.do, %bb.dn, %bb.dm
  %i.afq = icmp eq i64 %i.aef, 0
  %i.afr = icmp eq i32 %.4682, %i.aed
  %or.cond7 = select i1 %i.afq, i1 %i.afr, i1 false
  %i.afs = icmp eq i32 %1, 5
  %or.cond9 = or i1 %i.afs, %or.cond7
  %or.cond11 = select i1 %or.cond9, i1 %i.afg, i1 false
  %spec.store.select = select i1 %or.cond11, i32 -5, i32 %.8
  br label %zlib_inflateSyncPacket.exit

zlib_inflateSyncPacket.exit.loopexit:             ; preds = %bb.g
  br label %zlib_inflateSyncPacket.exit

zlib_inflateSyncPacket.exit:                      ; preds = %bb.g, %zlib_inflateSyncPacket.exit.loopexit, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.a, %bb.b, %bb.d, %bb.dt, %bb.w
  %.0826 = phi i32 [ -2, %bb.a ], [ -4, %zlib_inflateSyncPacket.exit.loopexit ], [ -3, %bb.dq ], [ %spec.store.select, %bb.dt ], [ 2, %bb.w ], [ -2, %bb.d ], [ -2, %bb.b ], [ -2, %bb.dp ], [ 0, %bb.ds ], [ -3, %bb.dr ], [ -2, %bb.g ]
  ret i32 %.0826
}

; Function Attrs: fn_ret_thunk_extern inlinehint nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read)
define internal fastcc range(i64 0, 4294967296) i64 @zlib_adler32(i64 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) unnamed_addr #3 align 16 prefalign(16) {
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
  %i.l = getelementptr i8, ptr %.193103, i64 1
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i64
  %i.o = add i64 %i.j, %i.n                       ; 2 uses
  %i.p = add i64 %i.k, %i.o
  %i.q = getelementptr i8, ptr %.193103, i64 2
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i64
  %i.t = add i64 %i.o, %i.s                       ; 2 uses
  %i.u = add i64 %i.p, %i.t
  %i.v = getelementptr i8, ptr %.193103, i64 3
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i64
  %i.y = add i64 %i.t, %i.x                       ; 2 uses
  %i.z = add i64 %i.u, %i.y
  %i.aa = getelementptr i8, ptr %.193103, i64 4
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i64
  %i.ad = add i64 %i.y, %i.ac                     ; 2 uses
  %i.ae = add i64 %i.z, %i.ad
  %i.af = getelementptr i8, ptr %.193103, i64 5
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i64
  %i.ai = add i64 %i.ad, %i.ah                    ; 2 uses
  %i.aj = add i64 %i.ae, %i.ai
  %i.ak = getelementptr i8, ptr %.193103, i64 6
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = zext i8 %i.al to i64
  %i.an = add i64 %i.ai, %i.am                    ; 2 uses
  %i.ao = add i64 %i.aj, %i.an
  %i.ap = getelementptr i8, ptr %.193103, i64 7
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = zext i8 %i.aq to i64
  %i.as = add i64 %i.an, %i.ar                    ; 2 uses
  %i.at = add i64 %i.ao, %i.as
  %i.au = getelementptr i8, ptr %.193103, i64 8
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = zext i8 %i.av to i64
  %i.ax = add i64 %i.as, %i.aw                    ; 2 uses
  %i.ay = add i64 %i.at, %i.ax
  %i.az = getelementptr i8, ptr %.193103, i64 9
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = zext i8 %i.ba to i64
  %i.bc = add i64 %i.ax, %i.bb                    ; 2 uses
  %i.bd = add i64 %i.ay, %i.bc
  %i.be = getelementptr i8, ptr %.193103, i64 10
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = zext i8 %i.bf to i64
  %i.bh = add i64 %i.bc, %i.bg                    ; 2 uses
  %i.bi = add i64 %i.bd, %i.bh
  %i.bj = getelementptr i8, ptr %.193103, i64 11
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = zext i8 %i.bk to i64
  %i.bm = add i64 %i.bh, %i.bl                    ; 2 uses
  %i.bn = add i64 %i.bi, %i.bm
  %i.bo = getelementptr i8, ptr %.193103, i64 12
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = zext i8 %i.bp to i64
  %i.br = add i64 %i.bm, %i.bq                    ; 2 uses
  %i.bs = add i64 %i.bn, %i.br
  %i.bt = getelementptr i8, ptr %.193103, i64 13
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = zext i8 %i.bu to i64
  %i.bw = add i64 %i.br, %i.bv                    ; 2 uses
  %i.bx = add i64 %i.bs, %i.bw
  %i.by = getelementptr i8, ptr %.193103, i64 14
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = zext i8 %i.bz to i64
  %i.cb = add i64 %i.bw, %i.ca                    ; 2 uses
  %i.cc = add i64 %i.bx, %i.cb
  %i.cd = getelementptr i8, ptr %.193103, i64 15
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = zext i8 %i.ce to i64
  %i.cg = add i64 %i.cb, %i.cf                    ; 4 uses
  %i.ch = add i64 %i.cc, %i.cg                    ; 3 uses
  %i.ci = getelementptr i8, ptr %.193103, i64 16  ; 3 uses
  %i.cj = add nsw i32 %.0106, -16                 ; 3 uses
  %i.ck = icmp samesign ugt i32 %.0106, 31
  br i1 %i.ck, label %.lr.ph, label %._crit_edge, !llvm.loop !28

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
  %i.cm = getelementptr i8, ptr %.294.prol, i64 1 ; 2 uses
  %i.cn = load i8, ptr %.294.prol, align 1
  %i.co = zext i8 %i.cn to i64
  %i.cp = add i64 %.289.prol, %i.co               ; 4 uses
  %i.cq = add i64 %i.cp, %.2.prol                 ; 3 uses
  %i.cr = add i32 %.1.prol, -1                    ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !29

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
  %i.ct = getelementptr i8, ptr %.294, i64 1
  %i.cu = load i8, ptr %.294, align 1
  %i.cv = zext i8 %i.cu to i64
  %i.cw = add i64 %.289, %i.cv                    ; 2 uses
  %i.cx = add i64 %i.cw, %.2
  %i.cy = getelementptr i8, ptr %.294, i64 2
  %i.cz = load i8, ptr %i.ct, align 1
  %i.da = zext i8 %i.cz to i64
  %i.db = add i64 %i.cw, %i.da                    ; 2 uses
  %i.dc = add i64 %i.db, %i.cx
  %i.dd = getelementptr i8, ptr %.294, i64 3
  %i.de = load i8, ptr %i.cy, align 1
  %i.df = zext i8 %i.de to i64
  %i.dg = add i64 %i.db, %i.df                    ; 2 uses
  %i.dh = add i64 %i.dg, %i.dc
  %i.di = getelementptr i8, ptr %.294, i64 4
  %i.dj = load i8, ptr %i.dd, align 1
  %i.dk = zext i8 %i.dj to i64
  %i.dl = add i64 %i.dg, %i.dk                    ; 3 uses
  %i.dm = add i64 %i.dl, %i.dh                    ; 2 uses
  %i.dn = add i32 %.1, -4                         ; 2 uses
  %.not99.3 = icmp eq i32 %i.dn, 0
  br i1 %.not99.3, label %.loopexit.loopexit, label %.preheader, !llvm.loop !30

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
  br i1 %.not, label %._crit_edge116, label %.lr.ph115, !llvm.loop !31

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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @zlib_inflate_table(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @inflate_fast(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define dso_local range(i32 -2, 1) i32 @zlib_inflateEnd(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #6 align 16 prefalign(16) {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, null
  %spec.select = select i1 %i.d, i32 -2, i32 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -2, %bb.a ], [ %spec.select, %bb.b ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none)
define dso_local range(i32 -3, 1) i32 @zlib_inflateIncomp(ptr nofree noundef captures(none) %0) local_unnamed_addr #7 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8              ; 11 uses
  %i.c = getelementptr i8, ptr %0, i64 24         ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = load i32, ptr %i.b, align 8
  switch i32 %i.g, label %bb.h [
    i32 11, label %bb.b
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  store i64 0, ptr %i.e, align 8
  %i.h = load ptr, ptr %0, align 8
  %i.i = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %i.j = load i64, ptr %i.i, align 8              ; 3 uses
  %i.k = getelementptr i8, ptr %i.h, i64 %i.j     ; 3 uses
  store ptr %i.k, ptr %i.c, align 8
  %i.l = trunc i64 %i.j to i32                    ; 4 uses
  %i.m = getelementptr i8, ptr %i.b, i64 44       ; 4 uses
  %i.n = load i32, ptr %i.m, align 4              ; 3 uses
  %.not.i = icmp ugt i32 %i.n, %i.l
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %i.b, i64 56
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = zext i32 %i.n to i64                     ; 2 uses
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr i8, ptr %i.k, i64 %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.s, i64 %i.q, i1 false)
  %i.t = getelementptr i8, ptr %i.b, i64 52
  store i32 0, ptr %i.t, align 4
  %i.u = load i32, ptr %i.m, align 4
  %i.v = getelementptr i8, ptr %i.b, i64 48
  store i32 %i.u, ptr %i.v, align 8
  br label %zlib_updatewindow.exit

bb.d:                                             ; preds = %bb.b
  %i.w = getelementptr i8, ptr %i.b, i64 52       ; 4 uses
  %i.x = load i32, ptr %i.w, align 4              ; 2 uses
  %i.y = sub i32 %i.n, %i.x                       ; 2 uses
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.y, i32 %i.l) ; 4 uses
  %i.z = getelementptr i8, ptr %i.b, i64 56       ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = zext i32 %i.x to i64
  %i.ac = getelementptr i8, ptr %i.aa, i64 %i.ab
  %i.ad = and i64 %i.j, 4294967295
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr i8, ptr %i.k, i64 %i.ae
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
  %i.am = getelementptr i8, ptr %i.aj, i64 %i.al
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr align 1 %i.am, i64 %i.ak, i1 false)
  store i32 %i.ah, ptr %i.w, align 4
  %i.an = load i32, ptr %i.m, align 4
  %i.ao = getelementptr i8, ptr %i.b, i64 48
  store i32 %i.an, ptr %i.ao, align 8
  br label %zlib_updatewindow.exit

bb.f:                                             ; preds = %bb.d
  %i.ap = load i32, ptr %i.w, align 4
  %i.aq = add i32 %i.ap, %spec.select.i           ; 2 uses
  %i.ar = load i32, ptr %i.m, align 4             ; 2 uses
  %i.as = icmp eq i32 %i.aq, %i.ar
  %spec.store.select.i = select i1 %i.as, i32 0, i32 %i.aq
  store i32 %spec.store.select.i, ptr %i.w, align 4
  %i.at = getelementptr i8, ptr %i.b, i64 48      ; 2 uses
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
  %i.ay = getelementptr i8, ptr %i.b, i64 24      ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = load ptr, ptr %0, align 8
  %i.bb = load i64, ptr %i.i, align 8
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = tail call fastcc i64 @zlib_adler32(i64 noundef %i.az, ptr noundef %i.ba, i32 noundef %i.bc) #12, !srcloc !32 ; 2 uses
  store i64 %i.bd, ptr %i.ay, align 8
  %i.be = getelementptr i8, ptr %0, i64 80
  store i64 %i.bd, ptr %i.be, align 8
  %i.bf = load i64, ptr %i.i, align 8             ; 4 uses
  %i.bg = getelementptr i8, ptr %0, i64 40        ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = add i64 %i.bh, %i.bf
  store i64 %i.bi, ptr %i.bg, align 8
  %i.bj = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = add i64 %i.bk, %i.bf
  store i64 %i.bl, ptr %i.bj, align 8
  %i.bm = load ptr, ptr %0, align 8
  %i.bn = getelementptr i8, ptr %i.bm, i64 %i.bf
  store ptr %i.bn, ptr %0, align 8
  %i.bo = getelementptr i8, ptr %i.b, i64 32      ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = add i64 %i.bp, %i.bf
  store i64 %i.bq, ptr %i.bo, align 8
  store i64 0, ptr %i.i, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %zlib_updatewindow.exit
  %.0 = phi i32 [ 0, %zlib_updatewindow.exit ], [ -3, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

attributes #0 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #3 = { fn_ret_thunk_extern inlinehint nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { noredzone nounwind "no-builtin-wcslen" }
attributes #12 = { noredzone "no-builtin-wcslen" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !13}
!26 = !{i64 2148352957}
!27 = !{i64 2148353466}
!28 = distinct !{!28, !13}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, !13}
!31 = distinct !{!31, !13}
!32 = !{i64 2148353583}
end_hunk_1
