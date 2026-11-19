Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/lodepng?download=true
inline.NumInlined: 891
inline.NumDeleted: 194
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 128
begin_hunk_0_@_ZL18lodepng_chunk_initPPhP8ucvectormPKc:bb.a
  br i1 %.not.i.i, label %_ZL15ucvector_resizeP8ucvectorm.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.d
  store i64 %i.j, ptr %i.f, align 8, !tbaa !56
  store ptr %i.k, ptr %1, align 8, !tbaa !54
  br label %bb.e

bb.e:                                             ; preds = %.thread.i.i, %bb.c
  %i.l = phi ptr [ %i.k, %.thread.i.i ], [ %.pre, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.d
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %i.n ; 4 uses
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -12 ; 2 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !28
  %i.q = lshr i64 %2, 24
  %i.r = trunc i64 %i.q to i8
  store i8 %i.r, ptr %i.p, align 1, !tbaa !35
  %i.s = lshr i64 %2, 16
  %i.t = trunc i64 %i.s to i8
  %i.u = getelementptr inbounds i8, ptr %i.o, i64 -11
  store i8 %i.t, ptr %i.u, align 1, !tbaa !35
  %i.v = lshr i64 %2, 8
  %i.w = trunc i64 %i.v to i8
  %i.x = getelementptr inbounds i8, ptr %i.o, i64 -10
  store i8 %i.w, ptr %i.x, align 1, !tbaa !35
  %i.y = trunc i64 %2 to i8
  %i.z = getelementptr inbounds i8, ptr %i.o, i64 -9
  store i8 %i.y, ptr %i.z, align 1, !tbaa !35
  %i.aa = load ptr, ptr %0, align 8, !tbaa !28
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load i32, ptr %3, align 1, !tbaa !35, !alias.scope !862
  store i32 %i.ac, ptr %i.ab, align 1, !tbaa !35, !alias.scope !862
  br label %_ZL15ucvector_resizeP8ucvectorm.exit

_ZL15ucvector_resizeP8ucvectorm.exit:             ; preds = %bb.d, %bb.b, %bb.a, %bb.e
  %.0 = phi i32 [ 77, %bb.b ], [ 77, %bb.a ], [ 0, %bb.e ], [ 83, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef i32 @_ZL14color_tree_getP9ColorTreehhhh(ptr nofree noundef nonnull readonly captures(none) %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #11 {
bb.a:
  %i.a = zext i8 %1 to i32                        ; 8 uses
  %i.b = zext i8 %2 to i32                        ; 8 uses
  %i.c = zext i8 %3 to i32                        ; 8 uses
  %i.d = zext i8 %4 to i32                        ; 8 uses
  %i.e = shl nuw nsw i32 %i.a, 3
  %i.f = and i32 %i.e, 8
  %i.g = shl nuw nsw i32 %i.b, 2
  %i.h = and i32 %i.g, 4
  %i.i = shl nuw nsw i32 %i.c, 1
  %i.j = and i32 %i.i, 2
  %i.k = and i32 %i.d, 1
  %i.l = or disjoint i32 %i.h, %i.k
  %i.m = or disjoint i32 %i.l, %i.f
  %i.n = or disjoint i32 %i.m, %i.j
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !129  ; 2 uses
  %.not.not = icmp eq ptr %i.q, null
  br i1 %.not.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = shl nuw nsw i32 %i.a, 2
  %i.s = and i32 %i.r, 8
  %i.t = shl nuw nsw i32 %i.b, 1
  %i.u = and i32 %i.t, 4
  %i.v = and i32 %i.c, 2
  %i.w = lshr i32 %i.d, 1
  %i.x = and i32 %i.w, 1
  %i.y = or disjoint i32 %i.u, %i.x
  %i.z = or disjoint i32 %i.y, %i.s
  %i.aa = or disjoint i32 %i.z, %i.v
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !129 ; 2 uses
  %.not.not.1 = icmp eq ptr %i.ad, null
  br i1 %.not.not.1, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = shl nuw nsw i32 %i.a, 1
  %i.af = and i32 %i.ae, 8
  %i.ag = and i32 %i.b, 4
  %i.ah = lshr i32 %i.c, 1
  %i.ai = and i32 %i.ah, 2
  %i.aj = lshr i32 %i.d, 2
  %i.ak = and i32 %i.aj, 1
  %i.al = or disjoint i32 %i.ag, %i.ak
  %i.am = or disjoint i32 %i.al, %i.af
  %i.an = or disjoint i32 %i.am, %i.ai
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !129 ; 2 uses
  %.not.not.2 = icmp eq ptr %i.aq, null
  br i1 %.not.not.2, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ar = and i32 %i.a, 8
  %i.as = lshr i32 %i.b, 1
  %i.at = and i32 %i.as, 4
  %i.au = lshr i32 %i.c, 2
  %i.av = and i32 %i.au, 2
  %i.aw = lshr i32 %i.d, 3
  %i.ax = and i32 %i.aw, 1
  %i.ay = or disjoint i32 %i.at, %i.ax
  %i.az = or disjoint i32 %i.ay, %i.ar
  %i.ba = or disjoint i32 %i.az, %i.av
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !129 ; 2 uses
  %.not.not.3 = icmp eq ptr %i.bd, null
  br i1 %.not.not.3, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = lshr i32 %i.a, 1
  %i.bf = and i32 %i.be, 8
  %i.bg = lshr i32 %i.b, 2
  %i.bh = and i32 %i.bg, 4
  %i.bi = lshr i32 %i.c, 3
  %i.bj = and i32 %i.bi, 2
  %i.bk = lshr i32 %i.d, 4
  %i.bl = and i32 %i.bk, 1
  %i.bm = or disjoint i32 %i.bh, %i.bl
  %i.bn = or disjoint i32 %i.bm, %i.bf
  %i.bo = or disjoint i32 %i.bn, %i.bj
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bp
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !129 ; 2 uses
  %.not.not.4 = icmp eq ptr %i.br, null
  br i1 %.not.not.4, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bs = lshr i32 %i.a, 2
  %i.bt = and i32 %i.bs, 8
  %i.bu = lshr i32 %i.b, 3
  %i.bv = and i32 %i.bu, 4
  %i.bw = lshr i32 %i.c, 4
  %i.bx = and i32 %i.bw, 2
  %i.by = lshr i32 %i.d, 5
  %i.bz = and i32 %i.by, 1
  %i.ca = or disjoint i32 %i.bv, %i.bz
  %i.cb = or disjoint i32 %i.ca, %i.bt
  %i.cc = or disjoint i32 %i.cb, %i.bx
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !129 ; 2 uses
  %.not.not.5 = icmp eq ptr %i.cf, null
  br i1 %.not.not.5, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cg = lshr i32 %i.a, 3
  %i.ch = and i32 %i.cg, 8
  %i.ci = lshr i32 %i.b, 4
  %i.cj = and i32 %i.ci, 4
  %i.ck = lshr i32 %i.c, 5
  %i.cl = and i32 %i.ck, 2
  %i.cm = lshr i32 %i.d, 6
  %i.cn = and i32 %i.cm, 1
  %i.co = or disjoint i32 %i.cj, %i.cn
  %i.cp = or disjoint i32 %i.co, %i.ch
  %i.cq = or disjoint i32 %i.cp, %i.cl
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !129 ; 2 uses
  %.not.not.6 = icmp eq ptr %i.ct, null
  br i1 %.not.not.6, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cu = lshr i32 %i.a, 4
  %i.cv = and i32 %i.cu, 8
  %i.cw = lshr i32 %i.b, 5
  %i.cx = and i32 %i.cw, 4
  %i.cy = lshr i32 %i.c, 6
  %i.cz = and i32 %i.cy, 2
  %i.da = lshr i32 %i.d, 7
  %i.db = or disjoint i32 %i.cx, %i.da
  %i.dc = or disjoint i32 %i.db, %i.cv
  %i.dd = or disjoint i32 %i.dc, %i.cz
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.de
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !129 ; 2 uses
  %.not.not.7 = icmp eq ptr %i.dg, null
  br i1 %.not.not.7, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 128
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !127
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.2 = phi i32 [ %i.di, %bb.i ], [ -1, %bb.h ], [ -1, %bb.g ], [ -1, %bb.f ], [ -1, %bb.e ], [ -1, %bb.d ], [ -1, %bb.c ], [ -1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 37) i32 @_ZL8unfilterPhPKhjjj(ptr nofree noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef range(i32 1, 0) %4) unnamed_addr #16 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 5 uses
  %i.b = add i32 %4, 7                            ; 12 uses
  %i.c = lshr i32 %i.b, 3                         ; 6 uses
  %i.d = zext nneg i32 %i.c to i64                ; 86 uses
  %i.e = lshr i32 %2, 3
  %i.f = zext nneg i32 %i.e to i64
  %i.g = zext i32 %4 to i64
  %i.h = mul nuw nsw i64 %i.g, %i.f               ; 30 uses
  %i.i = and i32 %2, 7
  %i.j = mul i32 %4, %i.i
  %i.k = add i32 %i.j, 7
  %i.l = lshr i32 %i.k, 3
  %i.m = zext nneg i32 %i.l to i64                ; 30 uses
  %i.n = add nuw nsw i64 %i.h, %i.m               ; 67 uses
  %i.o = add nuw nsw i64 %i.n, 1                  ; 12 uses
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %_ZL16unfilterScanlinePhPKhS1_mhm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.p = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %.not628749.i = icmp eq i64 %i.n, 0             ; 4 uses
  %i.q = icmp samesign ugt i64 %i.n, 1
  %i.r = icmp samesign ugt i64 %i.n, 2
  %i.s = icmp samesign ugt i64 %i.n, 3
  %i.t = icmp samesign ugt i64 %i.n, 5
  %i.u = icmp samesign ugt i64 %i.n, 7
  %.not625821.i = icmp eq i32 %i.c, 0             ; 4 uses
  %.not626824.i = icmp eq i64 %i.n, %i.d          ; 3 uses
  %i.v = icmp ugt i32 %i.b, 31
  %i.w = icmp eq i32 %i.c, 3
  %i.x = icmp ne i32 %i.c, 1
  %i.y = add nuw nsw i64 %i.d, 1                  ; 4 uses
  %i.z = icmp samesign ult i64 %i.y, %i.n
  %or.cond.i = and i1 %i.x, %i.z
  %i.aa = add nuw nsw i64 %i.d, 2
  %i.ab = icmp samesign ult i64 %i.aa, %i.n
  %i.ac = add nuw nsw i64 %i.d, 3                 ; 2 uses
  %i.ad = icmp samesign ult i64 %i.ac, %i.n
  %wide.trip.count = zext i32 %3 to i64           ; 12 uses
  %i.ae = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.af = mul i64 %i.o, %i.ae
  %i.ag = getelementptr i8, ptr %1, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 %i.m
  %i.ai = getelementptr i8, ptr %i.ah, i64 %i.h
  %scevgep = getelementptr i8, ptr %i.ai, i64 1
  %scevgep179 = getelementptr i8, ptr %1, i64 1
  %i.aj = mul i64 %i.n, %i.ae
  %i.ak = getelementptr i8, ptr %0, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 %i.m
  %scevgep180 = getelementptr i8, ptr %i.al, i64 %i.h
  %i.am = add nuw nsw i64 %i.h, %i.m
  %5 = sub nsw i64 %i.am, %i.d                    ; 24 uses
  %scevgep201 = getelementptr i8, ptr %0, i64 %5
  %scevgep202 = getelementptr i8, ptr %0, i64 %i.n
  %6 = add nsw i64 %wide.trip.count, -1           ; 2 uses
  %i.an = mul i64 %i.o, %6
  %i.ao = getelementptr i8, ptr %1, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 %i.m
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.h
  %scevgep201.a = getelementptr i8, ptr %i.aq, i64 1
  %scevgep202.a = getelementptr i8, ptr %1, i64 %i.y
  %7 = mul i64 %i.n, %6
  %i.ar = getelementptr i8, ptr %0, i64 %7
  %scevgep203 = getelementptr i8, ptr %i.ar, i64 %i.m
  %scevgep204 = getelementptr i8, ptr %scevgep203, i64 %i.h
  %scevgep206 = getelementptr i8, ptr %0, i64 %i.d ; 2 uses
  %i.as = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.at = mul i64 %i.o, %i.as
  %i.au = getelementptr i8, ptr %1, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 %i.d
  %scevgep249 = getelementptr i8, ptr %i.av, i64 1
  %scevgep250 = getelementptr i8, ptr %1, i64 1
  %i.aw = mul i64 %i.n, %i.as
  %i.ax = getelementptr i8, ptr %0, i64 %i.aw
  %scevgep251 = getelementptr i8, ptr %i.ax, i64 %i.d
  %i.ay = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.az = mul i64 %i.o, %i.ay
  %i.ba = getelementptr i8, ptr %1, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 %i.m
  %i.bc = getelementptr i8, ptr %i.bb, i64 %i.h
  %scevgep289 = getelementptr i8, ptr %i.bc, i64 1
  %scevgep290 = getelementptr i8, ptr %1, i64 1
  %i.bd = mul i64 %i.n, %i.ay
  %i.be = getelementptr i8, ptr %0, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 %i.m
  %scevgep291 = getelementptr i8, ptr %i.bf, i64 %i.h
  %i.bg = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.bh = mul i64 %i.o, %i.bg
  %i.bi = getelementptr i8, ptr %1, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bi, i64 %i.m
  %i.bk = getelementptr i8, ptr %i.bj, i64 %i.h
  %scevgep334 = getelementptr i8, ptr %i.bk, i64 1
  %scevgep335 = getelementptr i8, ptr %1, i64 1
  %i.bl = mul i64 %i.n, %i.bg
  %i.bm = getelementptr i8, ptr %0, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 %i.m
  %scevgep336 = getelementptr i8, ptr %i.bn, i64 %i.h ; 2 uses
  %scevgep390 = getelementptr i8, ptr %0, i64 %5
  %scevgep391 = getelementptr i8, ptr %0, i64 %i.n
  %i.bo = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %8 = mul i64 %i.o, %i.bo
  %scevgep387 = getelementptr i8, ptr %1, i64 %8
  %i.bp = getelementptr i8, ptr %scevgep387, i64 %i.m
  %i.bq = getelementptr i8, ptr %i.bp, i64 %i.h
  %i.br = getelementptr i8, ptr %i.bq, i64 1
  %scevgep388 = getelementptr i8, ptr %1, i64 %i.y
  %9 = mul i64 %i.n, %i.bo
  %i.bs = getelementptr i8, ptr %0, i64 %9
  %i.bt = getelementptr i8, ptr %i.bs, i64 %i.m
  %scevgep390.a = getelementptr i8, ptr %i.bt, i64 %i.h
  %scevgep391.a = getelementptr i8, ptr %0, i64 %i.d ; 2 uses
  %i.bu = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.bv = mul i64 %i.o, %i.bu
  %i.bw = getelementptr i8, ptr %1, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 %i.d
  %scevgep437 = getelementptr i8, ptr %i.bx, i64 1
  %scevgep438 = getelementptr i8, ptr %1, i64 1
  %i.by = mul i64 %i.n, %i.bu
  %i.bz = getelementptr i8, ptr %0, i64 %i.by
  %scevgep439 = getelementptr i8, ptr %i.bz, i64 %i.d
  %i.ca = add nuw nsw i64 %i.h, %i.m
  %i.cb = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.cc = mul i64 %i.o, %i.cb
  %i.cd = getelementptr i8, ptr %1, i64 %i.cc
  %i.ce = getelementptr i8, ptr %i.cd, i64 %i.d
  %scevgep524 = getelementptr i8, ptr %i.ce, i64 1
  %scevgep525 = getelementptr i8, ptr %1, i64 1
  %i.cf = mul i64 %i.n, %i.cb
  %i.cg = getelementptr i8, ptr %0, i64 %i.cf
  %scevgep526 = getelementptr i8, ptr %i.cg, i64 %i.d ; 2 uses
  %scevgep582 = getelementptr i8, ptr %0, i64 %5
  %scevgep583 = getelementptr i8, ptr %0, i64 %i.n
  %i.ch = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %10 = mul i64 %i.o, %i.ch
  %scevgep577 = getelementptr i8, ptr %1, i64 %10
  %i.ci = getelementptr i8, ptr %scevgep577, i64 %i.m
  %i.cj = getelementptr i8, ptr %i.ci, i64 %i.h
  %i.ck = getelementptr i8, ptr %i.cj, i64 1
  %scevgep578 = getelementptr i8, ptr %1, i64 %i.y
  %11 = mul i64 %i.n, %i.ch
  %i.cl = getelementptr i8, ptr %0, i64 %11
  %i.cm = getelementptr i8, ptr %i.cl, i64 %i.m
  %scevgep580 = getelementptr i8, ptr %i.cm, i64 %i.h
  %scevgep581 = getelementptr i8, ptr %0, i64 %i.d ; 2 uses
  %i.cn = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.co = mul i64 %i.o, %i.cn
  %i.cp = getelementptr i8, ptr %1, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.d
  %scevgep627 = getelementptr i8, ptr %i.cq, i64 1
  %scevgep628 = getelementptr i8, ptr %1, i64 1
  %i.cr = mul i64 %i.n, %i.cn
  %i.cs = getelementptr i8, ptr %0, i64 %i.cr
  %scevgep629 = getelementptr i8, ptr %i.cs, i64 %i.d
  %i.ct = add i64 %i.a, %i.d
  %i.cu = add nuw nsw i64 %i.h, %i.m
  %i.cv = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.cw = mul i64 %i.o, %i.cv
  %i.cx = getelementptr i8, ptr %1, i64 %i.cw
  %i.cy = getelementptr i8, ptr %i.cx, i64 %i.d
  %scevgep719 = getelementptr i8, ptr %i.cy, i64 1
  %scevgep720 = getelementptr i8, ptr %1, i64 1
  %i.cz = mul i64 %i.n, %i.cv
  %i.da = getelementptr i8, ptr %0, i64 %i.cz
  %scevgep721 = getelementptr i8, ptr %i.da, i64 %i.d ; 2 uses
  %i.db = add nuw nsw i64 %i.h, %i.m
  %i.dc = add nuw nsw i64 %i.h, %i.m
  %i.dd = add nuw nsw i64 %i.h, %i.m
  %i.de = add nuw nsw i64 %i.h, %i.m
  %i.df = add nuw nsw i64 %i.h, %i.m
  %i.dg = add nuw nsw i64 %i.h, %i.m
  %i.dh = add nuw nsw i64 %i.h, %i.m
  %i.di = add nuw nsw i64 %i.h, %i.m
  %i.dj = add nuw nsw i64 %i.h, %i.m
  %i.dk = add nuw nsw i64 %i.h, %i.m
  %i.dl = add nuw nsw i64 %i.h, %i.m
  %i.dm = add nuw nsw i64 %i.h, %i.m
  %i.dn = add nuw nsw i64 %i.h, %i.m
  %i.do = add nuw nsw i64 %i.h, %i.m
  %min.iters.check722 = icmp ult i32 %i.b, 32
  %bound0724 = icmp ult ptr %0, %scevgep719
  %bound1725 = icmp ult ptr %scevgep720, %scevgep721
  %found.conflict726 = and i1 %bound0724, %bound1725
  %min.iters.check732 = icmp ult i32 %i.b, 256
  %i.dp = and i64 %i.d, 28
  %n.vec734 = and i64 %i.d, 536870880             ; 4 uses
  %cmp.n743 = icmp eq i64 %n.vec734, %i.d
  %min.epilog.iters.check747 = icmp eq i64 %i.dp, 0
  %n.vec750 = and i64 %i.d, 536870908             ; 3 uses
  %cmp.n757 = icmp eq i64 %n.vec750, %i.d
  %xtraiter = and i64 %i.d, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.dq = sub i64 %i.p, %i.a
  %invariant.op = add i64 %i.dq, 16
  %i.dr = add nsw i32 %i.c, -1
  %diff.check671 = icmp ult i32 %i.dr, 15
  %min.iters.check630 = icmp ult i32 %i.b, 32
  %bound0632 = icmp ult ptr %0, %scevgep627
  %bound1633 = icmp ult ptr %scevgep628, %scevgep629
  %found.conflict634 = and i1 %bound0632, %bound1633
  %min.iters.check636 = icmp ult i32 %i.b, 256
  %i.ds = and i64 %i.d, 28
  %n.vec638 = and i64 %i.d, 536870880             ; 4 uses
  %cmp.n645 = icmp eq i64 %n.vec638, %i.d
  %min.epilog.iters.check649 = icmp eq i64 %i.ds, 0
  %n.vec652 = and i64 %i.d, 536870908             ; 3 uses
  %cmp.n658 = icmp eq i64 %n.vec652, %i.d
  %xtraiter784 = and i64 %i.d, 3                  ; 2 uses
  %lcmp.mod785.not = icmp eq i64 %xtraiter784, 0
  %min.iters.check582 = icmp ult i64 %5, 4
  %bound0584 = icmp ult ptr %scevgep581, %i.ck
  %bound1585 = icmp ult ptr %scevgep578, %scevgep580
  %found.conflict586 = and i1 %bound0584, %bound1585
  %bound0587 = icmp ult ptr %scevgep581, %scevgep582
  %bound1588 = icmp ult ptr %0, %scevgep583
  %found.conflict589 = and i1 %bound0587, %bound1588
  %conflict.rdx590 = or i1 %found.conflict586, %found.conflict589
  %min.iters.check592 = icmp ult i64 %5, 32
  %i.dt = and i64 %5, 28
  %n.vec594 = and i64 %5, -32                     ; 5 uses
  %i.du = add i64 %n.vec594, %i.d
  %cmp.n603 = icmp eq i64 %5, %n.vec594
  %min.epilog.iters.check607 = icmp eq i64 %i.dt, 0
  %n.vec610 = and i64 %5, -4                      ; 4 uses
  %i.dv = add i64 %n.vec610, %i.d
  %cmp.n617 = icmp eq i64 %5, %n.vec610
  %min.iters.check527 = icmp ult i32 %i.b, 32
  %bound0529 = icmp ult ptr %0, %scevgep524
  %bound1530 = icmp ult ptr %scevgep525, %scevgep526
  %found.conflict531 = and i1 %bound0529, %bound1530
  %min.iters.check537 = icmp ult i32 %i.b, 256
  %i.dw = and i64 %i.d, 28
  %n.vec539 = and i64 %i.d, 536870880             ; 4 uses
  %cmp.n548 = icmp eq i64 %n.vec539, %i.d
  %min.epilog.iters.check552 = icmp eq i64 %i.dw, 0
  %n.vec555 = and i64 %i.d, 536870908             ; 3 uses
  %cmp.n562 = icmp eq i64 %n.vec555, %i.d
  %xtraiter790 = and i64 %i.d, 1
  %lcmp.mod791.not = icmp eq i64 %xtraiter790, 0
  %i.dx = add nsw i64 %i.d, -1
  %i.dy = sub i64 %i.p, %i.a
  %invariant.op837 = add i64 %i.dy, 16
  %min.iters.check440 = icmp ult i32 %i.b, 32
  %bound0442 = icmp ult ptr %0, %scevgep437
  %bound1443 = icmp ult ptr %scevgep438, %scevgep439
  %found.conflict444 = and i1 %bound0442, %bound1443
  %min.iters.check446 = icmp ult i32 %i.b, 256
  %i.dz = and i64 %i.d, 28
  %n.vec448 = and i64 %i.d, 536870880             ; 4 uses
  %cmp.n455 = icmp eq i64 %n.vec448, %i.d
  %min.epilog.iters.check459 = icmp eq i64 %i.dz, 0
  %n.vec462 = and i64 %i.d, 536870908             ; 3 uses
  %cmp.n468 = icmp eq i64 %n.vec462, %i.d
  %xtraiter796 = and i64 %i.d, 3                  ; 2 uses
  %lcmp.mod797.not = icmp eq i64 %xtraiter796, 0
  %min.iters.check392 = icmp ult i64 %5, 4
  %bound0394 = icmp ult ptr %scevgep391.a, %i.br
  %bound1395 = icmp ult ptr %scevgep388, %scevgep390.a
  %found.conflict396 = and i1 %bound0394, %bound1395
  %bound0397 = icmp ult ptr %scevgep391.a, %scevgep390
  %bound1398 = icmp ult ptr %0, %scevgep391
  %found.conflict399 = and i1 %bound0397, %bound1398
  %conflict.rdx400 = or i1 %found.conflict396, %found.conflict399
  %min.iters.check402 = icmp ult i64 %5, 32
  %i.ea = and i64 %5, 28
  %n.vec404 = and i64 %5, -32                     ; 5 uses
  %i.eb = add i64 %n.vec404, %i.d
  %cmp.n413 = icmp eq i64 %5, %n.vec404
  %min.epilog.iters.check417 = icmp eq i64 %i.ea, 0
  %n.vec420 = and i64 %5, -4                      ; 4 uses
  %i.ec = add i64 %n.vec420, %i.d
  %cmp.n427 = icmp eq i64 %5, %n.vec420
  %min.iters.check337 = icmp samesign ult i64 %i.n, 4
  %bound0339 = icmp ult ptr %0, %scevgep334
  %bound1340 = icmp ult ptr %scevgep335, %scevgep336
  %found.conflict341 = and i1 %bound0339, %bound1340
  %min.iters.check347 = icmp samesign ult i64 %i.n, 32
  %i.ed = and i64 %i.n, 28
  %n.vec349 = and i64 %i.n, 4611686018427387872   ; 4 uses
  %cmp.n358 = icmp eq i64 %i.n, %n.vec349
  %min.epilog.iters.check362 = icmp eq i64 %i.ed, 0
  %n.vec365 = and i64 %i.n, 4611686018427387900   ; 3 uses
  %cmp.n372 = icmp eq i64 %i.n, %n.vec365
  %xtraiter802 = and i64 %i.dh, 3                 ; 2 uses
  %lcmp.mod803.not = icmp eq i64 %xtraiter802, 0
  %min.iters.check292 = icmp samesign ult i64 %i.n, 4
  %bound0294 = icmp ult ptr %0, %scevgep289
  %bound1295 = icmp ult ptr %scevgep290, %scevgep291
  %found.conflict296 = and i1 %bound0294, %bound1295
  %min.iters.check298 = icmp samesign ult i64 %i.n, 32
  %i.ee = and i64 %i.n, 28
  %n.vec300 = and i64 %i.n, 4611686018427387872   ; 4 uses
  %cmp.n307 = icmp eq i64 %i.n, %n.vec300
  %min.epilog.iters.check311 = icmp eq i64 %i.ee, 0
  %n.vec314 = and i64 %i.n, 4611686018427387900   ; 3 uses
  %cmp.n320 = icmp eq i64 %i.n, %n.vec314
  %xtraiter805.a = and i64 %i.dj, 3               ; 2 uses
  %lcmp.mod806.not.a = icmp eq i64 %xtraiter805.a, 0
  %min.iters.check252 = icmp ult i32 %i.b, 32
  %bound0254 = icmp ult ptr %0, %scevgep249
  %bound1255 = icmp ult ptr %scevgep250, %scevgep251
  %found.conflict256 = and i1 %bound0254, %bound1255
  %min.iters.check258 = icmp ult i32 %i.b, 256
  %i.ef = and i64 %i.d, 28
  %n.vec260 = and i64 %i.d, 536870880             ; 4 uses
  %cmp.n267 = icmp eq i64 %n.vec260, %i.d
  %min.epilog.iters.check271 = icmp eq i64 %i.ef, 0
  %n.vec274 = and i64 %i.d, 536870908             ; 3 uses
  %cmp.n280 = icmp eq i64 %n.vec274, %i.d
  %xtraiter808 = and i64 %i.d, 3                  ; 2 uses
  %lcmp.mod809.not = icmp eq i64 %xtraiter808, 0
  %min.iters.check205 = icmp ult i64 %5, 4
  %bound0207 = icmp ult ptr %scevgep206, %scevgep201.a
  %bound1208 = icmp ult ptr %scevgep202.a, %scevgep204
  %found.conflict209 = and i1 %bound0207, %bound1208
  %bound0210 = icmp ult ptr %scevgep206, %scevgep201
  %bound1211 = icmp ult ptr %0, %scevgep202
  %found.conflict212 = and i1 %bound0210, %bound1211
  %conflict.rdx = or i1 %found.conflict209, %found.conflict212
  %min.iters.check214 = icmp ult i64 %5, 32
  %i.eg = and i64 %5, 28
  %n.vec216 = and i64 %5, -32                     ; 5 uses
  %i.eh = add i64 %n.vec216, %i.d
  %cmp.n225 = icmp eq i64 %5, %n.vec216
  %min.epilog.iters.check229 = icmp eq i64 %i.eg, 0
  %n.vec232 = and i64 %5, -4                      ; 4 uses
  %i.ei = add i64 %n.vec232, %i.d
  %cmp.n239 = icmp eq i64 %5, %n.vec232
  %min.iters.check = icmp samesign ult i64 %i.n, 4
  %bound0 = icmp ult ptr %0, %scevgep
  %bound1 = icmp ult ptr %scevgep179, %scevgep180
  %found.conflict = and i1 %bound0, %bound1
  %min.iters.check181 = icmp samesign ult i64 %i.n, 32
  %i.ej = and i64 %i.n, 28
  %n.vec = and i64 %i.n, 4611686018427387872      ; 4 uses
  %cmp.n = icmp eq i64 %i.n, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.ej, 0
  %n.vec183 = and i64 %i.n, 4611686018427387900   ; 3 uses
  %cmp.n187 = icmp eq i64 %i.n, %n.vec183
  %xtraiter814 = and i64 %i.dn, 3                 ; 2 uses
  %lcmp.mod815.not = icmp eq i64 %xtraiter814, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 5 uses
  %.02789 = phi ptr [ null, %.lr.ph ], [ %i.eo, %.loopexit ] ; 54 uses
  %.02789476 = ptrtoaddr ptr %.02789 to i64       ; 3 uses
  %i.ek = mul i64 %i.n, %indvars.iv               ; 4 uses
  %i.el = mul i64 %i.o, %indvars.iv
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 %i.el ; 2 uses
  %i.en = load i8, ptr %i.em, align 1, !tbaa !35
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 %i.ek ; 124 uses
  %i.ep = getelementptr i8, ptr %i.em, i64 1      ; 91 uses
  switch i8 %i.en, label %_ZL16unfilterScanlinePhPKhS1_mhm.exit [
    i8 0, label %.preheader.i
    i8 1, label %.preheader715.i
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.g
  ]

.preheader715.i:                                  ; preds = %bb.b
  br i1 %.not625821.i, label %.preheader713.i, label %iter.check268

iter.check268:                                    ; preds = %.preheader715.i
  %brmerge = select i1 %min.iters.check252, i1 true, i1 %found.conflict256
  br i1 %brmerge, label %.lr.ph867.i.preheader, label %vector.main.loop.iter.check257

vector.main.loop.iter.check257:                   ; preds = %iter.check268
  br i1 %min.iters.check258, label %vec.epilog.ph272, label %vector.body261

vector.body261:                                   ; preds = %vector.main.loop.iter.check257, %vector.body261
  %index262 = phi i64 [ %index.next265, %vector.body261 ], [ 0, %vector.main.loop.iter.check257 ] ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %index262 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %wide.load263 = load <16 x i8>, ptr %i.eq, align 1, !tbaa !35, !alias.scope !958
  %wide.load264 = load <16 x i8>, ptr %i.er, align 1, !tbaa !35, !alias.scope !958
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 %index262 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store <16 x i8> %wide.load263, ptr %i.es, align 1, !tbaa !35, !alias.scope !959, !noalias !958
  store <16 x i8> %wide.load264, ptr %i.et, align 1, !tbaa !35, !alias.scope !959, !noalias !958
  %index.next265 = add nuw i64 %index262, 32      ; 2 uses
  %i.eu = icmp eq i64 %index.next265, %n.vec260
  br i1 %i.eu, label %middle.block266, label %vector.body261, !llvm.loop !866

middle.block266:                                  ; preds = %vector.body261
  br i1 %cmp.n267, label %.preheader713.i, label %vec.epilog.iter.check269

vec.epilog.iter.check269:                         ; preds = %middle.block266
  br i1 %min.epilog.iters.check271, label %.lr.ph867.i.preheader, label %vec.epilog.ph272, !prof !90

vec.epilog.ph272:                                 ; preds = %vector.main.loop.iter.check257, %vec.epilog.iter.check269
  %vec.epilog.resume.val273 = phi i64 [ %n.vec260, %vec.epilog.iter.check269 ], [ 0, %vector.main.loop.iter.check257 ]
  br label %vec.epilog.vector.body275

vec.epilog.vector.body275:                        ; preds = %vec.epilog.vector.body275, %vec.epilog.ph272
  %index276 = phi i64 [ %vec.epilog.resume.val273, %vec.epilog.ph272 ], [ %index.next278, %vec.epilog.vector.body275 ] ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 %index276
  %wide.load277 = load <4 x i8>, ptr %i.ev, align 1, !tbaa !35, !alias.scope !958
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eo, i64 %index276
  store <4 x i8> %wide.load277, ptr %i.ew, align 1, !tbaa !35, !alias.scope !959, !noalias !958
  %index.next278 = add nuw i64 %index276, 4       ; 2 uses
  %i.ex = icmp eq i64 %index.next278, %n.vec274
  br i1 %i.ex, label %vec.epilog.middle.block279, label %vec.epilog.vector.body275, !llvm.loop !867

vec.epilog.middle.block279:                       ; preds = %vec.epilog.vector.body275
  br i1 %cmp.n280, label %.preheader713.i, label %.lr.ph867.i.preheader

.lr.ph867.i.preheader:                            ; preds = %iter.check268, %vec.epilog.iter.check269, %vec.epilog.middle.block279
  %.1866.i.ph = phi i64 [ 0, %iter.check268 ], [ %n.vec274, %vec.epilog.middle.block279 ], [ %n.vec260, %vec.epilog.iter.check269 ] ; 3 uses
  br i1 %lcmp.mod809.not, label %.lr.ph867.i.prol.loopexit, label %.lr.ph867.i.prol

.lr.ph867.i.prol:                                 ; preds = %.lr.ph867.i.preheader, %.lr.ph867.i.prol
  %.1866.i.prol = phi i64 [ %i.fb, %.lr.ph867.i.prol ], [ %.1866.i.ph, %.lr.ph867.i.preheader ] ; 3 uses
  %prol.iter810.a = phi i64 [ %prol.iter810.next.a, %.lr.ph867.i.prol ], [ 0, %.lr.ph867.i.preheader ]
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.1866.i.prol
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !35
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.1866.i.prol
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !35
  %i.fb = add nuw nsw i64 %.1866.i.prol, 1        ; 2 uses
  %prol.iter810.next.a = add i64 %prol.iter810.a, 1 ; 2 uses
  %prol.iter810.cmp.not.a = icmp eq i64 %prol.iter810.next.a, %xtraiter808
  br i1 %prol.iter810.cmp.not.a, label %.lr.ph867.i.prol.loopexit, label %.lr.ph867.i.prol, !llvm.loop !868

.lr.ph867.i.prol.loopexit:                        ; preds = %.lr.ph867.i.prol, %.lr.ph867.i.preheader
  %.1866.i.unr = phi i64 [ %.1866.i.ph, %.lr.ph867.i.preheader ], [ %i.fb, %.lr.ph867.i.prol ]
  %i.fc = sub nsw i64 %.1866.i.ph, %i.d
  %i.fd = icmp ugt i64 %i.fc, -4
  br i1 %i.fd, label %.preheader713.i, label %.lr.ph867.i

.preheader.i:                                     ; preds = %bb.b
  br i1 %.not628749.i, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %brmerge839 = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge839, label %.lr.ph874.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check181, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ep, i64 %index ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %wide.load = load <16 x i8>, ptr %i.fe, align 1, !tbaa !35, !alias.scope !960
  %wide.load182 = load <16 x i8>, ptr %i.ff, align 1, !tbaa !35, !alias.scope !960
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eo, i64 %index ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store <16 x i8> %wide.load, ptr %i.fg, align 1, !tbaa !35, !alias.scope !961, !noalias !960
  store <16 x i8> %wide.load182, ptr %i.fh, align 1, !tbaa !35, !alias.scope !961, !noalias !960
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fi = icmp eq i64 %index.next, %n.vec
  br i1 %i.fi, label %middle.block, label %vector.body, !llvm.loop !872

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph874.i.preheader, label %vec.epilog.ph, !prof !90

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index184 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next186, %vec.epilog.vector.body ] ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ep, i64 %index184
  %wide.load185 = load <4 x i8>, ptr %i.fj, align 1, !tbaa !35, !alias.scope !960
  %i.fk = getelementptr inbounds nuw i8, ptr %i.eo, i64 %index184
  store <4 x i8> %wide.load185, ptr %i.fk, align 1, !tbaa !35, !alias.scope !961, !noalias !960
  %index.next186 = add nuw i64 %index184, 4       ; 2 uses
  %i.fl = icmp eq i64 %index.next186, %n.vec183
  br i1 %i.fl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !873

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n187, label %.loopexit, label %.lr.ph874.i.preheader

.lr.ph874.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0602873.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec183, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod815.not, label %.lr.ph874.i.prol.loopexit, label %.lr.ph874.i.prol

.lr.ph874.i.prol:                                 ; preds = %.lr.ph874.i.preheader, %.lr.ph874.i.prol
  %.0602873.i.prol = phi i64 [ %i.fp, %.lr.ph874.i.prol ], [ %.0602873.i.ph, %.lr.ph874.i.preheader ] ; 3 uses
  %prol.iter816 = phi i64 [ %prol.iter816.next, %.lr.ph874.i.prol ], [ 0, %.lr.ph874.i.preheader ]
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.0602873.i.prol
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !35
  %i.fo = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.0602873.i.prol
  store i8 %i.fn, ptr %i.fo, align 1, !tbaa !35
  %i.fp = add nuw nsw i64 %.0602873.i.prol, 1     ; 2 uses
  %prol.iter816.next = add i64 %prol.iter816, 1   ; 2 uses
  %prol.iter816.cmp.not = icmp eq i64 %prol.iter816.next, %xtraiter814
  br i1 %prol.iter816.cmp.not, label %.lr.ph874.i.prol.loopexit, label %.lr.ph874.i.prol, !llvm.loop !874

.lr.ph874.i.prol.loopexit:                        ; preds = %.lr.ph874.i.prol, %.lr.ph874.i.preheader
  %.0602873.i.unr = phi i64 [ %.0602873.i.ph, %.lr.ph874.i.preheader ], [ %i.fp, %.lr.ph874.i.prol ]
  %i.fq = sub nsw i64 %.0602873.i.ph, %i.do
  %i.fr = icmp ugt i64 %i.fq, -4
  br i1 %i.fr, label %.loopexit, label %.lr.ph874.i

.lr.ph874.i:                                      ; preds = %.lr.ph874.i.prol.loopexit, %.lr.ph874.i
  %.0602873.i = phi i64 [ %i.gh, %.lr.ph874.i ], [ %.0602873.i.unr, %.lr.ph874.i.prol.loopexit ] ; 6 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.0602873.i
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !35
  %i.fu = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.0602873.i
  store i8 %i.ft, ptr %i.fu, align 1, !tbaa !35
  %i.fv = add nuw nsw i64 %.0602873.i, 1          ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !35
  %i.fy = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.fv
  store i8 %i.fx, ptr %i.fy, align 1, !tbaa !35
  %i.fz = add nuw nsw i64 %.0602873.i, 2          ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !35
  %i.gc = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.fz
  store i8 %i.gb, ptr %i.gc, align 1, !tbaa !35
  %i.gd = add nuw nsw i64 %.0602873.i, 3          ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !35
  %i.gg = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.gd
  store i8 %i.gf, ptr %i.gg, align 1, !tbaa !35
  %i.gh = add nuw nsw i64 %.0602873.i, 4          ; 2 uses
  %.not640.i.3 = icmp eq i64 %i.gh, %i.n
  br i1 %.not640.i.3, label %.loopexit, label %.lr.ph874.i, !llvm.loop !875

.preheader713.i:                                  ; preds = %.lr.ph867.i.prol.loopexit, %.lr.ph867.i, %middle.block266, %vec.epilog.middle.block279, %.preheader715.i
  br i1 %.not626824.i, label %.loopexit, label %iter.check226

iter.check226:                                    ; preds = %.preheader713.i
end_hunk_0
