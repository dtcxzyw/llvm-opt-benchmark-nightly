Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/SegmentIntersector?download=true
inline.NumInlined: 24
inline.NumDeleted: 16
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4geos9geomgraph5index18SegmentIntersector21isTrivialIntersectionEPNS0_4EdgeEmS4_m(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readnone captures(address) %3, i64 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %3
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !20
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %5 = icmp ugt i64 %2, %4
  %i.g = sub nuw i64 %2, %4
  %6 = sub nuw i64 %4, %2
  %7 = select i1 %5, i64 %i.g, i64 %6
  %i.h = icmp eq i64 %7, 1
  br i1 %i.h, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %1, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 176
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(152) %1)
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %1, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef i64 %i.o(ptr noundef nonnull align 8 dereferenceable(152) %1)
  %i.q = add i64 %i.p, -1                         ; 2 uses
  %i.r = icmp eq i64 %2, 0
  %i.s = icmp eq i64 %4, %i.q
  %or.cond = and i1 %i.r, %i.s
  br i1 %or.cond, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = icmp ne i64 %4, 0
  %i.u = icmp ne i64 %2, %i.q
  %or.cond16.not = or i1 %i.t, %i.u
  br i1 %or.cond16.not, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f, %bb.b, %bb.d, %bb.a
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.f, %bb.c, %bb.g
  %.1 = phi i1 [ true, %bb.f ], [ false, %bb.g ], [ true, %bb.c ], [ true, %bb.e ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9geomgraph5index18SegmentIntersector16addIntersectionsEPNS0_4EdgeEmS4_m(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(76) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %3                       ; 2 uses
  %i.b = icmp eq i64 %2, %4
  %or.cond32 = and i1 %i.a, %i.b
  br i1 %or.cond32, label %_ZN4geos9geomgraph5index18SegmentIntersector21isTrivialIntersectionEPNS0_4EdgeEmS4_m.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !30
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !30
  %i.f = load ptr, ptr %1, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(152) %1) ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef %2)
  %i.n = add i64 %2, 1
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef %i.n)
  %i.s = load ptr, ptr %3, align 8, !tbaa !22
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef ptr %i.u(ptr noundef nonnull align 8 dereferenceable(152) %3) ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !22
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v, i64 noundef %4)
  %i.aa = add i64 %4, 1
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.v, i64 noundef %i.aa)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !16
  tail call void @_ZN4geos9algorithm15LineIntersector19computeIntersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(129) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.ae)
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !20
  %.not = icmp eq i64 %i.aj, 0
  br i1 %.not, label %_ZN4geos9geomgraph5index18SegmentIntersector21isTrivialIntersectionEPNS0_4EdgeEmS4_m.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !31, !range !32, !noundef !33
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.an = load ptr, ptr %1, align 8, !tbaa !22
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 200
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(152) %1, i1 noundef zeroext false)
  %i.aq = load ptr, ptr %3, align 8, !tbaa !22
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 200
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(152) %3, i1 noundef zeroext false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !34
  %i.av = add nsw i32 %i.au, 1
  store i32 %i.av, ptr %i.at, align 4, !tbaa !34
  br i1 %i.a, label %bb.f, label %_ZN4geos9geomgraph5index18SegmentIntersector21isTrivialIntersectionEPNS0_4EdgeEmS4_m.exit

bb.f:                                             ; preds = %bb.e
  %i.aw = load ptr, ptr %i.af, align 8, !tbaa !16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !20
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.g, label %_ZN4geos9geomgraph5index18SegmentIntersector21isTrivialIntersectionEPNS0_4EdgeEmS4_m.exit

bb.g:                                             ; preds = %bb.f
  %5 = icmp ugt i64 %2, %4
  %i.ba = sub nuw i64 %2, %4
  %6 = sub nuw i64 %4, %2
  %7 = select i1 %5, i64 %i.ba, i64 %6
  %i.bb = icmp eq i64 %7, 1
  br i1 %i.bb, label %_ZN4geos9geomgraph5index18SegmentIntersector21isTrivialIntersectionEPNS0_4EdgeEmS4_m.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = load ptr, ptr %1, align 8, !tbaa !22
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 176
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = tail call noundef zeroext i1 %i.be(ptr noundef nonnull align 8 dereferenceable(152) %1), !inline_history !35
  br i1 %i.bf, label %bb.i, label %_ZN4geos9geomgraph5index18SegmentIntersector21isTrivialIntersectionEPNS0_4EdgeEmS4_m.exit

bb.i:                                             ; preds = %bb.h
  %i.bg = load ptr, ptr %1, align 8, !tbaa !22
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 96
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call noundef i64 %i.bi(ptr noundef nonnull align 8 dereferenceable(152) %1), !inline_history !35
  %i.bk = add i64 %i.bj, -1                       ; 2 uses
  %i.bl = icmp eq i64 %2, 0
  %i.bm = icmp eq i64 %4, %i.bk
  %or.cond.i = and i1 %i.bl, %i.bm
  br i1 %or.cond.i, label %_ZN4geos9geomgraph5index18SegmentIntersector21isTrivialIntersectionEPNS0_4EdgeEmS4_m.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = icmp ne i64 %4, 0
  %i.bo = icmp ne i64 %2, %i.bk
  %or.cond16.not.i = or i1 %i.bn, %i.bo
  br i1 %or.cond16.not.i, label %_ZN4geos9geomgraph5index18SegmentIntersector21isTrivialIntersectionEPNS0_4EdgeEmS4_m.exit, label %_ZN4geos9geomgraph5index18SegmentIntersector21isTrivialIntersectionEPNS0_4EdgeEmS4_m.exit.thread

_ZN4geos9geomgraph5index18SegmentIntersector21isTrivialIntersectionEPNS0_4EdgeEmS4_m.exit: ; preds = %bb.j, %bb.h, %bb.f, %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.bp, align 8, !tbaa !36
  %i.bq = load ptr, ptr %i.af, align 8, !tbaa !16 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !38 ; 3 uses
  %.not.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i, label %.loopexit.i, label %bb.k

bb.k:                                             ; preds = %_ZN4geos9geomgraph5index18SegmentIntersector21isTrivialIntersectionEPNS0_4EdgeEmS4_m.exit
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !25 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !25 ; 2 uses
  %.not2022.i.i = icmp eq ptr %i.bt, %i.bv
  br i1 %.not2022.i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.i.i, %.lr.ph.i.i
  %.sroa.014.023.i.i = phi ptr [ %i.bt, %.lr.ph.i.i ], [ %i.cl, %.loopexit.i.i ] ; 2 uses
  %i.by = load ptr, ptr %.sroa.014.023.i.i, align 8, !tbaa !27 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !22
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 96
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.cb(ptr noundef nonnull align 8 dereferenceable(88) %i.by), !inline_history !29
  %i.cd = load i64, ptr %i.bw, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l
  %i.ce = load <2 x double>, ptr %i.cc, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.n
  %i.cf = add nuw i64 %.069.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.cf, %i.cd
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.n, !llvm.loop !0

bb.n:                                             ; preds = %bb.m, %.lr.ph.i.i.i
  %.069.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.cf, %bb.m ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.bx, i64 %.069.i.i.i
  %i.ch = load <2 x double>, ptr %i.cg, align 8
  %i.ci = fcmp oeq <2 x double> %i.ch, %i.ce      ; 2 uses
  %i.cj = extractelement <2 x i1> %i.ci, i64 0
  %i.ck = extractelement <2 x i1> %i.ci, i64 1
  %.0.i.i.i.i = select i1 %i.cj, i1 %i.ck, i1 false
  br i1 %.0.i.i.i.i, label %.loopexit, label %bb.m

.loopexit.i.i:                                    ; preds = %bb.m, %bb.l
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.014.023.i.i, i64 8 ; 2 uses
  %.not20.i.i = icmp eq ptr %i.cl, %i.bv
  br i1 %.not20.i.i, label %.loopexit.i, label %bb.l

.loopexit.i:                                      ; preds = %.loopexit.i.i, %bb.k, %_ZN4geos9geomgraph5index18SegmentIntersector21isTrivialIntersectionEPNS0_4EdgeEmS4_m.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !38 ; 3 uses
  %.not.i5.i = icmp eq ptr %i.cn, null
  br i1 %.not.i5.i, label %_ZN4geos9geomgraph5index18SegmentIntersector15isBoundaryPointEPNS_9algorithm15LineIntersectorERSt5arrayIPSt6vectorIPNS0_4NodeESaIS9_EELm2EE.exit, label %bb.o

bb.o:                                             ; preds = %.loopexit.i
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !25 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !25 ; 2 uses
  %.not2022.i6.i = icmp eq ptr %i.co, %i.cq
  br i1 %.not2022.i6.i, label %_ZN4geos9geomgraph5index18SegmentIntersector15isBoundaryPointEPNS_9algorithm15LineIntersectorERSt5arrayIPSt6vectorIPNS0_4NodeESaIS9_EELm2EE.exit, label %.lr.ph.i7.i

.lr.ph.i7.i:                                      ; preds = %bb.o
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.i14.i, %.lr.ph.i7.i
  %.sroa.014.023.i8.i = phi ptr [ %i.co, %.lr.ph.i7.i ], [ %i.dg, %.loopexit.i14.i ] ; 2 uses
  %i.ct = load ptr, ptr %.sroa.014.023.i8.i, align 8, !tbaa !27 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !22
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 96
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.cw(ptr noundef nonnull align 8 dereferenceable(88) %i.ct), !inline_history !29
  %i.cy = load i64, ptr %i.cr, align 8, !tbaa !20 ; 2 uses
  %.not.i.i9.i = icmp eq i64 %i.cy, 0
  br i1 %.not.i.i9.i, label %.loopexit.i14.i, label %.lr.ph.i.i10.i

.lr.ph.i.i10.i:                                   ; preds = %bb.p
  %i.cz = load <2 x double>, ptr %i.cx, align 8
  br label %bb.r

bb.q:                                             ; preds = %bb.r
  %i.da = add nuw i64 %.069.i.i11.i, 1            ; 2 uses
  %exitcond.not.i.i13.i = icmp eq i64 %i.da, %i.cy
  br i1 %exitcond.not.i.i13.i, label %.loopexit.i14.i, label %bb.r, !llvm.loop !0

bb.r:                                             ; preds = %bb.q, %.lr.ph.i.i10.i
  %.069.i.i11.i = phi i64 [ 0, %.lr.ph.i.i10.i ], [ %i.da, %bb.q ] ; 2 uses
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.cs, i64 %.069.i.i11.i
  %i.dc = load <2 x double>, ptr %i.db, align 8
  %i.dd = fcmp oeq <2 x double> %i.dc, %i.cz      ; 2 uses
  %i.de = extractelement <2 x i1> %i.dd, i64 0
  %i.df = extractelement <2 x i1> %i.dd, i64 1
  %.0.i.i.i12.i = select i1 %i.de, i1 %i.df, i1 false
  br i1 %.0.i.i.i12.i, label %.loopexit, label %bb.q

.loopexit.i14.i:                                  ; preds = %bb.q, %bb.p
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.014.023.i8.i, i64 8 ; 2 uses
  %.not20.i15.i = icmp eq ptr %i.dg, %i.cq
  br i1 %.not20.i15.i, label %_ZN4geos9geomgraph5index18SegmentIntersector15isBoundaryPointEPNS_9algorithm15LineIntersectorERSt5arrayIPSt6vectorIPNS0_4NodeESaIS9_EELm2EE.exit, label %bb.p

_ZN4geos9geomgraph5index18SegmentIntersector15isBoundaryPointEPNS_9algorithm15LineIntersectorERSt5arrayIPSt6vectorIPNS0_4NodeESaIS9_EELm2EE.exit: ; preds = %.loopexit.i14.i, %bb.o, %.loopexit.i
  %i.dh = load ptr, ptr %i.af, align 8, !tbaa !16 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !20
  %i.dk = icmp ne i64 %i.dj, 0
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 128
  %i.dm = load i8, ptr %i.dl, align 8, !range !32
  %i.dn = trunc nuw i8 %i.dm to i1
  %i.do = select i1 %i.dk, i1 %i.dn, i1 false
  %i.dp = xor i1 %i.do, true
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dr = load i8, ptr %i.dq, align 8, !tbaa !39, !range !32, !noundef !33
  %i.ds = trunc nuw i8 %i.dr to i1
  %or.cond = or i1 %i.dp, %i.ds
  br i1 %or.cond, label %.loopexit, label %.thread

.loopexit:                                        ; preds = %bb.n, %bb.r, %_ZN4geos9geomgraph5index18SegmentIntersector15isBoundaryPointEPNS_9algorithm15LineIntersectorERSt5arrayIPSt6vectorIPNS0_4NodeESaIS9_EELm2EE.exit
  %i.dt = phi i1 [ false, %_ZN4geos9geomgraph5index18SegmentIntersector15isBoundaryPointEPNS_9algorithm15LineIntersectorERSt5arrayIPSt6vectorIPNS0_4NodeESaIS9_EELm2EE.exit ], [ true, %bb.r ], [ true, %bb.n ]
  %i.du = load ptr, ptr %i.af, align 8, !tbaa !16
  %i.dv = load ptr, ptr %1, align 8, !tbaa !22
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 208
  %i.dx = load ptr, ptr %i.dw, align 8
  tail call void %i.dx(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef %i.du, i64 noundef %2, i64 noundef 0)
  %i.dy = load ptr, ptr %i.af, align 8, !tbaa !16
  %i.dz = load ptr, ptr %3, align 8, !tbaa !22
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 208
  %i.eb = load ptr, ptr %i.ea, align 8
  tail call void %i.eb(ptr noundef nonnull align 8 dereferenceable(152) %3, ptr noundef %i.dy, i64 noundef %4, i64 noundef 1)
  %.pre = load ptr, ptr %i.af, align 8, !tbaa !16 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre39 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !20
  %.phi.trans.insert40 = getelementptr inbounds nuw i8, ptr %.pre, i64 128
  %.pre41 = load i8, ptr %.phi.trans.insert40, align 8, !range !32
  %i.ec = icmp ne i64 %.pre39, 0
  %i.ed = trunc nuw i8 %.pre41 to i1
  %i.ee = select i1 %i.ec, i1 %i.ed, i1 false
  br i1 %i.ee, label %.thread, label %_ZN4geos9geomgraph5index18SegmentIntersector21isTrivialIntersectionEPNS0_4EdgeEmS4_m.exit.thread

.thread:                                          ; preds = %_ZN4geos9geomgraph5index18SegmentIntersector15isBoundaryPointEPNS_9algorithm15LineIntersectorERSt5arrayIPSt6vectorIPNS0_4NodeESaIS9_EELm2EE.exit, %.loopexit
  %i.ef = phi i1 [ %i.dt, %.loopexit ], [ false, %_ZN4geos9geomgraph5index18SegmentIntersector15isBoundaryPointEPNS_9algorithm15LineIntersectorERSt5arrayIPSt6vectorIPNS0_4NodeESaIS9_EELm2EE.exit ]
  %i.eg = phi ptr [ %.pre, %.loopexit ], [ %i.dh, %_ZN4geos9geomgraph5index18SegmentIntersector15isBoundaryPointEPNS_9algorithm15LineIntersectorERSt5arrayIPSt6vectorIPNS0_4NodeESaIS9_EELm2EE.exit ]
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, ptr noundef nonnull align 8 dereferenceable(24) %i.eh, i64 24, i1 false), !tbaa.struct !41
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 1, ptr %i.ej, align 1, !tbaa !42
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.el = load i8, ptr %i.ek, align 4, !tbaa !43, !range !32, !noundef !33
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.thread
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 1, ptr %i.en, align 1, !tbaa !44
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.thread
  br i1 %i.ef, label %_ZN4geos9geomgraph5index18SegmentIntersector21isTrivialIntersectionEPNS0_4EdgeEmS4_m.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 1, ptr %i.eo, align 2, !tbaa !45
  br label %_ZN4geos9geomgraph5index18SegmentIntersector21isTrivialIntersectionEPNS0_4EdgeEmS4_m.exit.thread

_ZN4geos9geomgraph5index18SegmentIntersector21isTrivialIntersectionEPNS0_4EdgeEmS4_m.exit.thread: ; preds = %bb.i, %bb.g, %bb.j, %bb.b, %bb.t, %bb.u, %.loopexit, %bb.a
  ret void
}

declare void @_ZN4geos9algorithm15LineIntersector19computeIntersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(129), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4geos9geomgraph5index18SegmentIntersector15isBoundaryPointEPNS_9algorithm15LineIntersectorEPSt6vectorIPNS0_4NodeESaIS8_EE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(76) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %_ZNK4geos9algorithm15LineIntersector14isIntersectionERKNS_4geom10CoordinateE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 2 uses
  %.not2022 = icmp eq ptr %i.a, %i.c
  br i1 %.not2022, label %_ZNK4geos9algorithm15LineIntersector14isIntersectionERKNS_4geom10CoordinateE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.loopexit
  %.sroa.014.023 = phi ptr [ %i.a, %.lr.ph ], [ %i.s, %.loopexit ] ; 2 uses
  %i.f = load ptr, ptr %.sroa.014.023, align 8, !tbaa !27 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.i(ptr noundef nonnull align 8 dereferenceable(88) %i.f)
  %i.k = load i64, ptr %i.d, align 8, !tbaa !20   ; 2 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.l = load <2 x double>, ptr %i.j, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.m = add nuw i64 %.069.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.m, %i.k
  br i1 %exitcond.not.i, label %.loopexit, label %bb.e, !llvm.loop !0

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %.069.i = phi i64 [ 0, %.lr.ph.i ], [ %i.m, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %.069.i
  %i.o = load <2 x double>, ptr %i.n, align 8
  %i.p = fcmp oeq <2 x double> %i.o, %i.l         ; 2 uses
  %i.q = extractelement <2 x i1> %i.p, i64 0
  %i.r = extractelement <2 x i1> %i.p, i64 1
  %.0.i.i = select i1 %i.q, i1 %i.r, i1 false
  br i1 %.0.i.i, label %_ZNK4geos9algorithm15LineIntersector14isIntersectionERKNS_4geom10CoordinateE.exit, label %bb.d

.loopexit:                                        ; preds = %bb.d, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.014.023, i64 8 ; 2 uses
  %.not20 = icmp eq ptr %i.s, %i.c
  br i1 %.not20, label %_ZNK4geos9algorithm15LineIntersector14isIntersectionERKNS_4geom10CoordinateE.exit, label %bb.c

_ZNK4geos9algorithm15LineIntersector14isIntersectionERKNS_4geom10CoordinateE.exit: ; preds = %.loopexit, %bb.e, %bb.b, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.e ], [ false, %.loopexit ]
  ret i1 %.3
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !28}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"bool", !5, i64 0}
!10 = !{!"double", !5, i64 0}
!11 = !{!"_ZTSN4geos4geom10CoordinateE", !10, i64 0, !10, i64 8, !10, i64 16}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 _ZTSN4geos9algorithm15LineIntersectorE", !12, i64 0}
!14 = !{!"_ZTSSt5arrayIPSt6vectorIPN4geos9geomgraph4NodeESaIS4_EELm2EE", !5, i64 0}
!15 = !{!"_ZTSN4geos9geomgraph5index18SegmentIntersectorE", !9, i64 8, !9, i64 9, !9, i64 10, !9, i64 11, !9, i64 12, !11, i64 16, !13, i64 40, !9, i64 48, !9, i64 49, !6, i64 52, !14, i64 56, !6, i64 72}
!16 = !{!15, !13, i64 40}
!17 = !{!"p1 _ZTSN4geos4geom14PrecisionModelE", !12, i64 0}
!18 = !{!"long", !5, i64 0}
!19 = !{!"_ZTSN4geos9algorithm15LineIntersectorE", !17, i64 0, !18, i64 8, !5, i64 16, !5, i64 48, !5, i64 96, !9, i64 128}
!20 = !{!19, !18, i64 8}
!21 = !{!"vtable pointer", !4, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"any p2 pointer", !12, i64 0}
!24 = !{!"p2 _ZTSN4geos9geomgraph4NodeE", !23, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"p1 _ZTSN4geos9geomgraph4NodeE", !12, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"llvm.loop.mustprogress"}
!29 = distinct !{null, ptr @_ZN4geos9geomgraph5index18SegmentIntersector15isBoundaryPointEPNS_9algorithm15LineIntersectorEPSt6vectorIPNS0_4NodeESaIS8_EE}
!30 = !{!15, !6, i64 72}
!31 = !{!15, !9, i64 49}
!32 = !{i8 0, i8 2}
!33 = !{}
!34 = !{!15, !6, i64 52}
!35 = !{ptr @_ZN4geos9geomgraph5index18SegmentIntersector21isTrivialIntersectionEPNS0_4EdgeEmS4_m}
!36 = !{!15, !9, i64 8}
!37 = !{!"p1 _ZTSSt6vectorIPN4geos9geomgraph4NodeESaIS3_EE", !12, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!15, !9, i64 48}
!40 = !{!10, !10, i64 0}
!41 = !{i64 0, i64 8, !40, i64 8, i64 8, !40, i64 16, i64 8, !40}
!42 = !{!15, !9, i64 9}
!43 = !{!15, !9, i64 12}
!44 = !{!15, !9, i64 11}
!45 = !{!15, !9, i64 10}
end_hunk_0
