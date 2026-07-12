inline.NumInlined: 10913
inline.NumDeleted: 449
loop-unroll.NumCompletelyUnrolled: 589
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 598
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN5arrow8internal13unpack_avx512IbEEvPKhPT_iii = comdat any

$_ZN5arrow8internal13unpack_avx512IhEEvPKhPT_iii = comdat any

$_ZN5arrow8internal13unpack_avx512ItEEvPKhPT_iii = comdat any

$_ZN5arrow8internal13unpack_avx512IjEEvPKhPT_iii = comdat any

$_ZN5arrow8internal13unpack_avx512ImEEvPKhPT_iii = comdat any

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow8internal13unpack_avx512IbEEvPKhPT_iii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %3, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEbEEvPKhPT0_iii.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = sext i32 %2 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %i.a, i1 false)
  br label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEbEEvPKhPT0_iii.exit

bb.c:                                             ; preds = %bb.a
  %i.b = add nsw i32 %4, %2
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph.i.i.i, label %_ZN5arrow8internal12unpack_exactILi1ELb1EbEEiPKhPT1_ii.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %.026.i.i.i = phi ptr [ %i.n, %bb.d ], [ %1, %bb.c ] ; 2 uses
  %.02325.i.i.i = phi i32 [ %i.f, %bb.d ], [ %4, %bb.c ] ; 4 uses
  %i.d = srem i32 %.02325.i.i.i, 8                ; 2 uses
  %i.e = sdiv i32 %.02325.i.i.i, 8
  %.not.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i, label %_ZN5arrow8internal12unpack_exactILi1ELb1EbEEiPKhPT1_ii.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.f = add nsw i32 %.02325.i.i.i, 1             ; 3 uses
  %i.g = sext i32 %i.e to i64
  %i.h = getelementptr inbounds i8, ptr %0, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i32
  %i.k = lshr i32 %i.j, %i.d
  %i.l = trunc nuw i32 %i.k to i8
  %i.m = and i8 %i.l, 1
  store i8 %i.m, ptr %.026.i.i.i, align 1, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %.026.i.i.i, i64 1
  %i.o = icmp slt i32 %i.f, %i.b
  br i1 %i.o, label %.lr.ph.i.i.i, label %_ZN5arrow8internal12unpack_exactILi1ELb1EbEEiPKhPT1_ii.exit.i.i, !llvm.loop !9

_ZN5arrow8internal12unpack_exactILi1ELb1EbEEiPKhPT1_ii.exit.i.i: ; preds = %bb.d, %.lr.ph.i.i.i, %bb.c
  %.023.lcssa.i.i.i = phi i32 [ %4, %bb.c ], [ %.02325.i.i.i, %.lr.ph.i.i.i ], [ %i.f, %bb.d ] ; 3 uses
  %i.p = sub nsw i32 %.023.lcssa.i.i.i, %4        ; 2 uses
  %i.q = sub nsw i32 %2, %i.p                     ; 5 uses
  %i.r = sdiv i32 %.023.lcssa.i.i.i, 8
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds i8, ptr %0, i64 %i.s ; 2 uses
  %i.u = sext i32 %i.p to i64
  %i.v = getelementptr inbounds i8, ptr %1, i64 %i.u ; 2 uses
  %i.w = sdiv i32 %i.q, 32                        ; 2 uses
  %i.x = icmp sgt i32 %i.q, 31
  br i1 %i.x, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_ZN5arrow8internal12unpack_exactILi1ELb1EbEEiPKhPT1_ii.exit.i.i
  %.026.lcssa.i.i = phi ptr [ %i.v, %_ZN5arrow8internal12unpack_exactILi1ELb1EbEEiPKhPT1_ii.exit.i.i ], [ %i.cq, %.lr.ph.i.i ] ; 2 uses
  %.025.lcssa.i.i = phi ptr [ %i.t, %_ZN5arrow8internal12unpack_exactILi1ELb1EbEEiPKhPT1_ii.exit.i.i ], [ %i.cp, %.lr.ph.i.i ] ; 5 uses
  %i.y = shl nsw i32 %i.w, 5                      ; 3 uses
  %i.z = sub nsw i32 %i.q, %i.y                   ; 2 uses
  %i.aa = icmp samesign ult i32 %i.z, 32
  tail call void @llvm.assume(i1 %i.aa)
  %.not.i.i = icmp eq i32 %i.q, %i.y
  br i1 %.not.i.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEbEEvPKhPT0_iii.exit, label %.lr.ph.i28.i.i.preheader

.lr.ph.i28.i.i.preheader:                         ; preds = %._crit_edge.i.i
  %i.ab = add i32 %4, %2
  %xtraiter = and i32 %i.q, 3                     ; 4 uses
  %i.ac = sub i32 %.023.lcssa.i.i.i, %i.ab
  %i.ad = add i32 %i.ac, %i.y
  %i.ae = icmp ugt i32 %i.ad, -4
  br i1 %i.ae, label %.lr.ph.i28.i.i.epil.preheader, label %.lr.ph.i28.i.i.preheader.new

.lr.ph.i28.i.i.preheader.new:                     ; preds = %.lr.ph.i28.i.i.preheader
  %unroll_iter = sub nsw i32 %i.z, %xtraiter
  br label %.lr.ph.i28.i.i

.lr.ph.i28.i.i:                                   ; preds = %.lr.ph.i28.i.i, %.lr.ph.i28.i.i.preheader.new
  %.024.i.i.i = phi ptr [ %.026.lcssa.i.i, %.lr.ph.i28.i.i.preheader.new ], [ %i.bw, %.lr.ph.i28.i.i ] ; 5 uses
  %.02223.i.i.i = phi i32 [ 0, %.lr.ph.i28.i.i.preheader.new ], [ %i.bm, %.lr.ph.i28.i.i ] ; 9 uses
  %niter = phi i32 [ 0, %.lr.ph.i28.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i28.i.i ]
  %i.af = lshr i32 %.02223.i.i.i, 3
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %.025.lcssa.i.i, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = zext i8 %i.ai to i32
  %i.ak = and i32 %.02223.i.i.i, 4
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc nuw i32 %i.al to i8
  %i.an = and i8 %i.am, 1
  store i8 %i.an, ptr %.024.i.i.i, align 1, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %.024.i.i.i, i64 1
  %i.ap = lshr i32 %.02223.i.i.i, 3
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %.025.lcssa.i.i, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = zext i8 %i.as to i32
  %i.au = and i32 %.02223.i.i.i, 4
  %i.av = or disjoint i32 %i.au, 1
  %i.aw = lshr i32 %i.at, %i.av
  %i.ax = trunc nuw nsw i32 %i.aw to i8
  %i.ay = and i8 %i.ax, 1
  store i8 %i.ay, ptr %i.ao, align 1, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %.024.i.i.i, i64 2
  %i.ba = lshr i32 %.02223.i.i.i, 3
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %.025.lcssa.i.i, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = zext i8 %i.bd to i32
  %i.bf = and i32 %.02223.i.i.i, 4
  %i.bg = or disjoint i32 %i.bf, 2
  %i.bh = lshr i32 %i.be, %i.bg
  %i.bi = trunc nuw nsw i32 %i.bh to i8
  %i.bj = and i8 %i.bi, 1
  store i8 %i.bj, ptr %i.az, align 1, !tbaa !7
  %i.bk = getelementptr inbounds nuw i8, ptr %.024.i.i.i, i64 3
  %i.bl = lshr i32 %.02223.i.i.i, 3
  %i.bm = add nuw nsw i32 %.02223.i.i.i, 4        ; 2 uses
  %i.bn = zext nneg i32 %i.bl to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.025.lcssa.i.i, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = zext i8 %i.bp to i32
  %i.br = and i32 %.02223.i.i.i, 4
  %i.bs = or disjoint i32 %i.br, 3
  %i.bt = lshr i32 %i.bq, %i.bs
  %i.bu = trunc nuw nsw i32 %i.bt to i8
  %i.bv = and i8 %i.bu, 1
  store i8 %i.bv, ptr %i.bk, align 1, !tbaa !7
  %i.bw = getelementptr inbounds nuw i8, ptr %.024.i.i.i, i64 4 ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEbEEvPKhPT0_iii.exit.loopexit.unr-lcssa, label %.lr.ph.i28.i.i, !llvm.loop !11

.lr.ph.i.i:                                       ; preds = %_ZN5arrow8internal12unpack_exactILi1ELb1EbEEiPKhPT1_ii.exit.i.i, %.lr.ph.i.i
  %.031.i.i = phi i32 [ %i.cr, %.lr.ph.i.i ], [ 0, %_ZN5arrow8internal12unpack_exactILi1ELb1EbEEiPKhPT1_ii.exit.i.i ]
  %.02530.i.i = phi ptr [ %i.cp, %.lr.ph.i.i ], [ %i.t, %_ZN5arrow8internal12unpack_exactILi1ELb1EbEEiPKhPT1_ii.exit.i.i ] ; 2 uses
  %.02629.i.i = phi ptr [ %i.cq, %.lr.ph.i.i ], [ %i.v, %_ZN5arrow8internal12unpack_exactILi1ELb1EbEEiPKhPT1_ii.exit.i.i ] ; 2 uses
  %i.bx = load i32, ptr %.02530.i.i, align 1      ; 5 uses
  %i.by = insertelement <16 x i32> poison, i32 %i.bx, i64 0 ; 2 uses
  %.sroa.0109.0.vec.insert.i.i.i.i = shufflevector <16 x i32> %i.by, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.bz = insertelement <8 x i32> poison, i32 %i.bx, i64 0
  %i.ca = shufflevector <8 x i32> %i.bz, <8 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cb = lshr <16 x i32> %i.ca, <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %.sroa.0109.32.vec.insert.i.i.i.i9 = shufflevector <16 x i32> %i.by, <16 x i32> %i.cb, <16 x i32> <i32 0, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cc = insertelement <4 x i32> poison, i32 %i.bx, i64 0
  %i.cd = shufflevector <4 x i32> %i.cc, <4 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ce = lshr <16 x i32> %i.cd, <i32 9, i32 10, i32 11, i32 12, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %.sroa.0109.48.vec.insert.i.i.i.i10 = shufflevector <16 x i32> %.sroa.0109.32.vec.insert.i.i.i.i9, <16 x i32> %i.ce, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison>
  %i.cf = lshr i32 %i.bx, 13
  %.sroa.0109.52.vec.insert.i.i.i.i = insertelement <16 x i32> %.sroa.0109.48.vec.insert.i.i.i.i10, i32 %i.cf, i64 13
  %i.cg = insertelement <2 x i32> poison, i32 %i.bx, i64 0
  %i.ch = shufflevector <2 x i32> %i.cg, <2 x i32> poison, <16 x i32> <i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ci = lshr <16 x i32> %i.ch, <i32 14, i32 15, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %.sroa.0109.60.vec.insert.i.i.i.i11 = shufflevector <16 x i32> %.sroa.0109.52.vec.insert.i.i.i.i, <16 x i32> %i.ci, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  %i.cj = lshr <16 x i32> %.sroa.0109.0.vec.insert.i.i.i.i, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ck = bitcast <16 x i32> %.sroa.0109.60.vec.insert.i.i.i.i11 to <64 x i8>
  %i.cl = and <64 x i8> %i.ck, <i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison>
  %i.cm = bitcast <16 x i32> %i.cj to <64 x i8>
  %i.cn = and <64 x i8> %i.cm, <i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison>
  %i.co = shufflevector <64 x i8> %i.cl, <64 x i8> %i.cn, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60, i32 64, i32 68, i32 72, i32 76, i32 80, i32 84, i32 88, i32 92, i32 96, i32 100, i32 104, i32 108, i32 112, i32 116, i32 120, i32 124>
  store <32 x i8> %i.co, ptr %.02629.i.i, align 1, !tbaa !7
  %i.cp = getelementptr inbounds nuw i8, ptr %.02530.i.i, i64 4 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 32 ; 2 uses
  %i.cr = add nuw nsw i32 %.031.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.cr, %i.w
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !12

_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEbEEvPKhPT0_iii.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i28.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEbEEvPKhPT0_iii.exit, label %.lr.ph.i28.i.i.epil.preheader

.lr.ph.i28.i.i.epil.preheader:                    ; preds = %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEbEEvPKhPT0_iii.exit.loopexit.unr-lcssa, %.lr.ph.i28.i.i.preheader
  %.024.i.i.i.epil.init = phi ptr [ %.026.lcssa.i.i, %.lr.ph.i28.i.i.preheader ], [ %i.bw, %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEbEEvPKhPT0_iii.exit.loopexit.unr-lcssa ]
  %.02223.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i28.i.i.preheader ], [ %i.bm, %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEbEEvPKhPT0_iii.exit.loopexit.unr-lcssa ]
  %lcmp.mod14 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod14)
  br label %.lr.ph.i28.i.i.epil

.lr.ph.i28.i.i.epil:                              ; preds = %.lr.ph.i28.i.i.epil, %.lr.ph.i28.i.i.epil.preheader
  %.024.i.i.i.epil = phi ptr [ %i.dc, %.lr.ph.i28.i.i.epil ], [ %.024.i.i.i.epil.init, %.lr.ph.i28.i.i.epil.preheader ] ; 2 uses
  %.02223.i.i.i.epil = phi i32 [ %i.ct, %.lr.ph.i28.i.i.epil ], [ %.02223.i.i.i.epil.init, %.lr.ph.i28.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i28.i.i.epil ], [ 0, %.lr.ph.i28.i.i.epil.preheader ]
  %i.cs = lshr i32 %.02223.i.i.i.epil, 3
  %i.ct = add nuw nsw i32 %.02223.i.i.i.epil, 1
  %i.cu = zext nneg i32 %i.cs to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %.025.lcssa.i.i, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1
  %i.cx = zext i8 %i.cw to i32
  %i.cy = and i32 %.02223.i.i.i.epil, 7
  %i.cz = lshr i32 %i.cx, %i.cy
  %i.da = trunc nuw i32 %i.cz to i8
  %i.db = and i8 %i.da, 1
  store i8 %i.db, ptr %.024.i.i.i.epil, align 1, !tbaa !7
  %i.dc = getelementptr inbounds nuw i8, ptr %.024.i.i.i.epil, i64 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEbEEvPKhPT0_iii.exit, label %.lr.ph.i28.i.i.epil, !llvm.loop !13

_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEbEEvPKhPT0_iii.exit: ; preds = %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEbEEvPKhPT0_iii.exit.loopexit.unr-lcssa, %.lr.ph.i28.i.i.epil, %bb.a, %bb.b, %._crit_edge.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow8internal13unpack_avx512IhEEvPKhPT_iii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  switch i32 %3, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEhEEvPKhPT0_iii.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.e
    i32 3, label %bb.g
    i32 4, label %bb.i
    i32 5, label %bb.k
    i32 6, label %bb.m
    i32 7, label %bb.o
    i32 8, label %bb.q
  ]

bb.b:                                             ; preds = %bb.a
  %i.l = sext i32 %2 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %i.l, i1 false)
  br label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEhEEvPKhPT0_iii.exit

bb.c:                                             ; preds = %bb.a
  %i.m = add nsw i32 %4, %2
  %i.n = icmp sgt i32 %2, 0
  br i1 %i.n, label %.lr.ph.i.i.i, label %_ZN5arrow8internal12unpack_exactILi1ELb1EhEEiPKhPT1_ii.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %.026.i.i.i = phi ptr [ %i.y, %bb.d ], [ %1, %bb.c ] ; 2 uses
  %.02325.i.i.i = phi i32 [ %i.q, %bb.d ], [ %4, %bb.c ] ; 4 uses
  %i.o = srem i32 %.02325.i.i.i, 8                ; 2 uses
  %i.p = sdiv i32 %.02325.i.i.i, 8
  %.not.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i, label %_ZN5arrow8internal12unpack_exactILi1ELb1EhEEiPKhPT1_ii.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.q = add nsw i32 %.02325.i.i.i, 1             ; 3 uses
  %i.r = sext i32 %i.p to i64
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i32
  %i.v = lshr i32 %i.u, %i.o
  %i.w = trunc nuw i32 %i.v to i8
  %i.x = and i8 %i.w, 1
  store i8 %i.x, ptr %.026.i.i.i, align 1, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %.026.i.i.i, i64 1
  %i.z = icmp slt i32 %i.q, %i.m
  br i1 %i.z, label %.lr.ph.i.i.i, label %_ZN5arrow8internal12unpack_exactILi1ELb1EhEEiPKhPT1_ii.exit.i.i, !llvm.loop !16

_ZN5arrow8internal12unpack_exactILi1ELb1EhEEiPKhPT1_ii.exit.i.i: ; preds = %bb.d, %.lr.ph.i.i.i, %bb.c
  %.023.lcssa.i.i.i = phi i32 [ %4, %bb.c ], [ %.02325.i.i.i, %.lr.ph.i.i.i ], [ %i.q, %bb.d ] ; 3 uses
  %i.aa = sub nsw i32 %.023.lcssa.i.i.i, %4       ; 2 uses
  %i.ab = sub nsw i32 %2, %i.aa                   ; 5 uses
  %i.ac = sdiv i32 %.023.lcssa.i.i.i, 8
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds i8, ptr %0, i64 %i.ad ; 2 uses
  %i.af = sext i32 %i.aa to i64
  %i.ag = getelementptr inbounds i8, ptr %1, i64 %i.af ; 2 uses
  %i.ah = sdiv i32 %i.ab, 32                      ; 2 uses
  %i.ai = icmp sgt i32 %i.ab, 31
  br i1 %i.ai, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_ZN5arrow8internal12unpack_exactILi1ELb1EhEEiPKhPT1_ii.exit.i.i
  %.026.lcssa.i.i = phi ptr [ %i.ag, %_ZN5arrow8internal12unpack_exactILi1ELb1EhEEiPKhPT1_ii.exit.i.i ], [ %i.db, %.lr.ph.i.i ] ; 2 uses
  %.025.lcssa.i.i = phi ptr [ %i.ae, %_ZN5arrow8internal12unpack_exactILi1ELb1EhEEiPKhPT1_ii.exit.i.i ], [ %i.da, %.lr.ph.i.i ] ; 5 uses
  %i.aj = shl nsw i32 %i.ah, 5                    ; 3 uses
  %i.ak = sub nsw i32 %i.ab, %i.aj                ; 2 uses
  %i.al = icmp samesign ult i32 %i.ak, 32
  tail call void @llvm.assume(i1 %i.al)
  %.not.i.i = icmp eq i32 %i.ab, %i.aj
  br i1 %.not.i.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEhEEvPKhPT0_iii.exit, label %.lr.ph.i28.i.i.preheader

.lr.ph.i28.i.i.preheader:                         ; preds = %._crit_edge.i.i
  %i.am = add i32 %4, %2
  %xtraiter = and i32 %i.ab, 3                    ; 4 uses
  %i.an = sub i32 %.023.lcssa.i.i.i, %i.am
  %i.ao = add i32 %i.an, %i.aj
  %i.ap = icmp ugt i32 %i.ao, -4
  br i1 %i.ap, label %.lr.ph.i28.i.i.epil.preheader, label %.lr.ph.i28.i.i.preheader.new

.lr.ph.i28.i.i.preheader.new:                     ; preds = %.lr.ph.i28.i.i.preheader
  %unroll_iter = sub nsw i32 %i.ak, %xtraiter
  br label %.lr.ph.i28.i.i

.lr.ph.i28.i.i:                                   ; preds = %.lr.ph.i28.i.i, %.lr.ph.i28.i.i.preheader.new
  %.024.i.i.i = phi ptr [ %.026.lcssa.i.i, %.lr.ph.i28.i.i.preheader.new ], [ %i.ch, %.lr.ph.i28.i.i ] ; 5 uses
  %.02223.i.i.i = phi i32 [ 0, %.lr.ph.i28.i.i.preheader.new ], [ %i.bx, %.lr.ph.i28.i.i ] ; 9 uses
  %niter = phi i32 [ 0, %.lr.ph.i28.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i28.i.i ]
  %i.aq = lshr i32 %.02223.i.i.i, 3
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %.025.lcssa.i.i, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1
  %i.au = zext i8 %i.at to i32
  %i.av = and i32 %.02223.i.i.i, 4
  %i.aw = lshr i32 %i.au, %i.av
  %i.ax = trunc nuw i32 %i.aw to i8
  %i.ay = and i8 %i.ax, 1
  store i8 %i.ay, ptr %.024.i.i.i, align 1, !tbaa !15
  %i.az = getelementptr inbounds nuw i8, ptr %.024.i.i.i, i64 1
  %i.ba = lshr i32 %.02223.i.i.i, 3
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %.025.lcssa.i.i, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = zext i8 %i.bd to i32
  %i.bf = and i32 %.02223.i.i.i, 4
  %i.bg = or disjoint i32 %i.bf, 1
  %i.bh = lshr i32 %i.be, %i.bg
  %i.bi = trunc nuw nsw i32 %i.bh to i8
  %i.bj = and i8 %i.bi, 1
  store i8 %i.bj, ptr %i.az, align 1, !tbaa !15
  %i.bk = getelementptr inbounds nuw i8, ptr %.024.i.i.i, i64 2
  %i.bl = lshr i32 %.02223.i.i.i, 3
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %.025.lcssa.i.i, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = zext i8 %i.bo to i32
  %i.bq = and i32 %.02223.i.i.i, 4
  %i.br = or disjoint i32 %i.bq, 2
  %i.bs = lshr i32 %i.bp, %i.br
  %i.bt = trunc nuw nsw i32 %i.bs to i8
  %i.bu = and i8 %i.bt, 1
  store i8 %i.bu, ptr %i.bk, align 1, !tbaa !15
  %i.bv = getelementptr inbounds nuw i8, ptr %.024.i.i.i, i64 3
  %i.bw = lshr i32 %.02223.i.i.i, 3
  %i.bx = add nuw nsw i32 %.02223.i.i.i, 4        ; 2 uses
  %i.by = zext nneg i32 %i.bw to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %.025.lcssa.i.i, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = zext i8 %i.ca to i32
  %i.cc = and i32 %.02223.i.i.i, 4
  %i.cd = or disjoint i32 %i.cc, 3
  %i.ce = lshr i32 %i.cb, %i.cd
  %i.cf = trunc nuw nsw i32 %i.ce to i8
  %i.cg = and i8 %i.cf, 1
  store i8 %i.cg, ptr %i.bv, align 1, !tbaa !15
  %i.ch = getelementptr inbounds nuw i8, ptr %.024.i.i.i, i64 4 ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEhEEvPKhPT0_iii.exit.loopexit.unr-lcssa, label %.lr.ph.i28.i.i, !llvm.loop !17

.lr.ph.i.i:                                       ; preds = %_ZN5arrow8internal12unpack_exactILi1ELb1EhEEiPKhPT1_ii.exit.i.i, %.lr.ph.i.i
  %.031.i.i = phi i32 [ %i.dc, %.lr.ph.i.i ], [ 0, %_ZN5arrow8internal12unpack_exactILi1ELb1EhEEiPKhPT1_ii.exit.i.i ]
  %.02530.i.i = phi ptr [ %i.da, %.lr.ph.i.i ], [ %i.ae, %_ZN5arrow8internal12unpack_exactILi1ELb1EhEEiPKhPT1_ii.exit.i.i ] ; 2 uses
  %.02629.i.i = phi ptr [ %i.db, %.lr.ph.i.i ], [ %i.ag, %_ZN5arrow8internal12unpack_exactILi1ELb1EhEEiPKhPT1_ii.exit.i.i ] ; 2 uses
  %i.ci = load i32, ptr %.02530.i.i, align 1      ; 5 uses
  %i.cj = insertelement <16 x i32> poison, i32 %i.ci, i64 0 ; 2 uses
  %.sroa.0109.0.vec.insert.i.i.i.i = shufflevector <16 x i32> %i.cj, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.ck = insertelement <8 x i32> poison, i32 %i.ci, i64 0
  %i.cl = shufflevector <8 x i32> %i.ck, <8 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cm = lshr <16 x i32> %i.cl, <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %.sroa.0109.32.vec.insert.i.i.i.i102 = shufflevector <16 x i32> %i.cj, <16 x i32> %i.cm, <16 x i32> <i32 0, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cn = insertelement <4 x i32> poison, i32 %i.ci, i64 0
  %i.co = shufflevector <4 x i32> %i.cn, <4 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cp = lshr <16 x i32> %i.co, <i32 9, i32 10, i32 11, i32 12, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %.sroa.0109.48.vec.insert.i.i.i.i103 = shufflevector <16 x i32> %.sroa.0109.32.vec.insert.i.i.i.i102, <16 x i32> %i.cp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison>
  %i.cq = lshr i32 %i.ci, 13
  %.sroa.0109.52.vec.insert.i.i.i.i = insertelement <16 x i32> %.sroa.0109.48.vec.insert.i.i.i.i103, i32 %i.cq, i64 13
  %i.cr = insertelement <2 x i32> poison, i32 %i.ci, i64 0
  %i.cs = shufflevector <2 x i32> %i.cr, <2 x i32> poison, <16 x i32> <i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ct = lshr <16 x i32> %i.cs, <i32 14, i32 15, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %.sroa.0109.60.vec.insert.i.i.i.i104 = shufflevector <16 x i32> %.sroa.0109.52.vec.insert.i.i.i.i, <16 x i32> %i.ct, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  %i.cu = lshr <16 x i32> %.sroa.0109.0.vec.insert.i.i.i.i, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cv = bitcast <16 x i32> %.sroa.0109.60.vec.insert.i.i.i.i104 to <64 x i8>
  %i.cw = and <64 x i8> %i.cv, <i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison>
  %i.cx = bitcast <16 x i32> %i.cu to <64 x i8>
  %i.cy = and <64 x i8> %i.cx, <i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison>
  %i.cz = shufflevector <64 x i8> %i.cw, <64 x i8> %i.cy, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60, i32 64, i32 68, i32 72, i32 76, i32 80, i32 84, i32 88, i32 92, i32 96, i32 100, i32 104, i32 108, i32 112, i32 116, i32 120, i32 124>
  store <32 x i8> %i.cz, ptr %.02629.i.i, align 1, !tbaa !15
  %i.da = getelementptr inbounds nuw i8, ptr %.02530.i.i, i64 4 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 32 ; 2 uses
  %i.dc = add nuw nsw i32 %.031.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.dc, %i.ah
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !18

bb.e:                                             ; preds = %bb.a
  %i.dd = shl nsw i32 %2, 1
  %i.de = add nsw i32 %4, %i.dd
  %i.df = icmp sgt i32 %2, 0
  br i1 %i.df, label %.lr.ph.i.i78.i, label %_ZN5arrow8internal12unpack_exactILi2ELb1EhEEiPKhPT1_ii.exit.i.i

.lr.ph.i.i78.i:                                   ; preds = %bb.e, %bb.f
  %.026.i.i79.i = phi ptr [ %i.dv, %bb.f ], [ %1, %bb.e ] ; 2 uses
  %.02325.i.i80.i = phi i32 [ %i.di, %bb.f ], [ %4, %bb.e ] ; 5 uses
  %i.dg = srem i32 %.02325.i.i80.i, 8             ; 2 uses
  %i.dh = sdiv i32 %.02325.i.i80.i, 8             ; 2 uses
  %.not.i.i81.i = icmp eq i32 %i.dg, 0
  br i1 %.not.i.i81.i, label %_ZN5arrow8internal12unpack_exactILi2ELb1EhEEiPKhPT1_ii.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i78.i
  %i.di = add nsw i32 %.02325.i.i80.i, 2          ; 3 uses
  %i.dj = add nsw i32 %.02325.i.i80.i, 1
  %i.dk = sdiv i32 %i.dj, 8
  %i.dl = sub nsw i32 %i.dk, %i.dh                ; 2 uses
  %i.dm = add nsw i32 %i.dl, 1
  %i.dn = icmp slt i32 %i.dl, 2
  tail call void @llvm.assume(i1 %i.dn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 0, ptr %i.k, align 8, !tbaa !19
  %i.do = sext i32 %i.dh to i64
  %i.dp = getelementptr inbounds i8, ptr %0, i64 %i.do
  %i.dq = sext i32 %i.dm to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr readonly align 1 %i.dp, i64 %i.dq, i1 false)
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load i64, ptr %i.k, align 8, !tbaa !19
  %i.dr = zext nneg i32 %i.dg to i64
  %i.ds = lshr i64 %.0..0..0..0..0..0..0..0..0..0..i.i.i, %i.dr
  %i.dt = trunc i64 %i.ds to i8
  %i.du = and i8 %i.dt, 3
  store i8 %i.du, ptr %.026.i.i79.i, align 1, !tbaa !15
  %i.dv = getelementptr inbounds nuw i8, ptr %.026.i.i79.i, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.dw = icmp slt i32 %i.di, %i.de
  br i1 %i.dw, label %.lr.ph.i.i78.i, label %_ZN5arrow8internal12unpack_exactILi2ELb1EhEEiPKhPT1_ii.exit.i.i, !llvm.loop !21

_ZN5arrow8internal12unpack_exactILi2ELb1EhEEiPKhPT1_ii.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i78.i, %bb.e
  %.023.lcssa.i.i36.i = phi i32 [ %4, %bb.e ], [ %.02325.i.i80.i, %.lr.ph.i.i78.i ], [ %i.di, %bb.f ]
  %i.dx = sub nsw i32 %.023.lcssa.i.i36.i, %4
  %i.dy = sdiv i32 %i.dx, 2                       ; 3 uses
  %i.dz = shl nsw i32 %i.dy, 1
  %i.ea = add nsw i32 %i.dz, %4
  %i.eb = sub nsw i32 %2, %i.dy                   ; 4 uses
  %i.ec = sdiv i32 %i.ea, 8
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds i8, ptr %0, i64 %i.ed ; 2 uses
  %i.ef = sext i32 %i.dy to i64
  %i.eg = getelementptr inbounds i8, ptr %1, i64 %i.ef ; 2 uses
  %i.eh = sdiv i32 %i.eb, 32                      ; 2 uses
  %i.ei = icmp sgt i32 %i.eb, 31
  br i1 %i.ei, label %.lr.ph.i44.i, label %._crit_edge.i37.i

._crit_edge.i37.i:                                ; preds = %.lr.ph.i44.i, %_ZN5arrow8internal12unpack_exactILi2ELb1EhEEiPKhPT1_ii.exit.i.i
  %.026.lcssa.i38.i = phi ptr [ %i.eg, %_ZN5arrow8internal12unpack_exactILi2ELb1EhEEiPKhPT1_ii.exit.i.i ], [ %i.ge, %.lr.ph.i44.i ]
  %.025.lcssa.i39.i = phi ptr [ %i.ee, %_ZN5arrow8internal12unpack_exactILi2ELb1EhEEiPKhPT1_ii.exit.i.i ], [ %i.gd, %.lr.ph.i44.i ]
  %i.ej = shl nsw i32 %i.eh, 5                    ; 2 uses
  %i.ek = sub nsw i32 %i.eb, %i.ej                ; 2 uses
  %i.el = icmp samesign ult i32 %i.ek, 32
  tail call void @llvm.assume(i1 %i.el)
  %i.em = shl nuw nsw i32 %i.ek, 1
  %.not.i40.i = icmp eq i32 %i.eb, %i.ej
  br i1 %.not.i40.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEhEEvPKhPT0_iii.exit, label %.lr.ph.i28.i41.i

.lr.ph.i28.i41.i:                                 ; preds = %._crit_edge.i37.i, %.lr.ph.i28.i41.i
  %.024.i.i42.i = phi ptr [ %i.ex, %.lr.ph.i28.i41.i ], [ %.026.lcssa.i38.i, %._crit_edge.i37.i ] ; 2 uses
  %.02223.i.i43.i = phi i32 [ %i.eo, %.lr.ph.i28.i41.i ], [ 0, %._crit_edge.i37.i ] ; 3 uses
  %i.en = lshr i32 %.02223.i.i43.i, 3
  %i.eo = add nuw nsw i32 %.02223.i.i43.i, 2      ; 2 uses
  %i.ep = zext nneg i32 %i.en to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %.025.lcssa.i39.i, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1
  %i.es = zext i8 %i.er to i32
  %i.et = and i32 %.02223.i.i43.i, 6
  %i.eu = lshr i32 %i.es, %i.et
  %i.ev = trunc nuw i32 %i.eu to i8
  %i.ew = and i8 %i.ev, 3
  store i8 %i.ew, ptr %.024.i.i42.i, align 1, !tbaa !15
  %i.ex = getelementptr inbounds nuw i8, ptr %.024.i.i42.i, i64 1
  %i.ey = icmp samesign ult i32 %i.eo, %i.em
  br i1 %i.ey, label %.lr.ph.i28.i41.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEhEEvPKhPT0_iii.exit, !llvm.loop !22

.lr.ph.i44.i:                                     ; preds = %_ZN5arrow8internal12unpack_exactILi2ELb1EhEEiPKhPT1_ii.exit.i.i, %.lr.ph.i44.i
  %.032.i.i = phi i32 [ %i.gf, %.lr.ph.i44.i ], [ 0, %_ZN5arrow8internal12unpack_exactILi2ELb1EhEEiPKhPT1_ii.exit.i.i ]
  %.02531.i.i = phi ptr [ %i.gd, %.lr.ph.i44.i ], [ %i.ee, %_ZN5arrow8internal12unpack_exactILi2ELb1EhEEiPKhPT1_ii.exit.i.i ] ; 3 uses
  %.02630.i.i = phi ptr [ %i.ge, %.lr.ph.i44.i ], [ %i.eg, %_ZN5arrow8internal12unpack_exactILi2ELb1EhEEiPKhPT1_ii.exit.i.i ] ; 2 uses
  %i.ez = load i32, ptr %.02531.i.i, align 1      ; 5 uses
  %i.fa = insertelement <16 x i32> poison, i32 %i.ez, i64 0
  %i.fb = insertelement <8 x i32> poison, i32 %i.ez, i64 0
  %i.fc = shufflevector <8 x i32> %i.fb, <8 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fd = lshr <16 x i32> %i.fc, <i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %.sroa.0109.32.vec.insert.i.i.i53.i108 = shufflevector <16 x i32> %i.fa, <16 x i32> %i.fd, <16 x i32> <i32 0, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fe = insertelement <4 x i32> poison, i32 %i.ez, i64 0
  %i.ff = shufflevector <4 x i32> %i.fe, <4 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fg = lshr <16 x i32> %i.ff, <i32 18, i32 20, i32 22, i32 24, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %.sroa.0109.48.vec.insert.i.i.i57.i109 = shufflevector <16 x i32> %.sroa.0109.32.vec.insert.i.i.i53.i108, <16 x i32> %i.fg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison>
  %i.fh = lshr i32 %i.ez, 26
  %.sroa.0109.52.vec.insert.i.i.i58.i = insertelement <16 x i32> %.sroa.0109.48.vec.insert.i.i.i57.i109, i32 %i.fh, i64 13
  %i.fi = insertelement <2 x i32> poison, i32 %i.ez, i64 0
  %i.fj = shufflevector <2 x i32> %i.fi, <2 x i32> poison, <16 x i32> <i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fk = lshr <16 x i32> %i.fj, <i32 28, i32 30, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %.sroa.0109.60.vec.insert.i.i.i60.i110 = shufflevector <16 x i32> %.sroa.0109.52.vec.insert.i.i.i58.i, <16 x i32> %i.fk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  %i.fl = getelementptr inbounds nuw i8, ptr %.02531.i.i, i64 4
  %i.fm = load i32, ptr %i.fl, align 1            ; 5 uses
  %i.fn = insertelement <16 x i32> poison, i32 %i.fm, i64 0
  %i.fo = insertelement <8 x i32> poison, i32 %i.fm, i64 0
  %i.fp = shufflevector <8 x i32> %i.fo, <8 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fq = lshr <16 x i32> %i.fp, <i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %.sroa.0129.32.vec.insert.i.i.i69.i105 = shufflevector <16 x i32> %i.fn, <16 x i32> %i.fq, <16 x i32> <i32 0, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fr = insertelement <4 x i32> poison, i32 %i.fm, i64 0
  %i.fs = shufflevector <4 x i32> %i.fr, <4 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ft = lshr <16 x i32> %i.fs, <i32 18, i32 20, i32 22, i32 24, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %.sroa.0129.48.vec.insert.i.i.i73.i106 = shufflevector <16 x i32> %.sroa.0129.32.vec.insert.i.i.i69.i105, <16 x i32> %i.ft, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison>
  %i.fu = lshr i32 %i.fm, 26
  %.sroa.0129.52.vec.insert.i.i.i74.i = insertelement <16 x i32> %.sroa.0129.48.vec.insert.i.i.i73.i106, i32 %i.fu, i64 13
  %i.fv = insertelement <2 x i32> poison, i32 %i.fm, i64 0
  %i.fw = shufflevector <2 x i32> %i.fv, <2 x i32> poison, <16 x i32> <i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fx = lshr <16 x i32> %i.fw, <i32 28, i32 30, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %.sroa.0129.60.vec.insert.i.i.i76.i107 = shufflevector <16 x i32> %.sroa.0129.52.vec.insert.i.i.i74.i, <16 x i32> %i.fx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  %i.fy = bitcast <16 x i32> %.sroa.0109.60.vec.insert.i.i.i60.i110 to <64 x i8>
  %i.fz = and <64 x i8> %i.fy, <i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison>
  %i.ga = bitcast <16 x i32> %.sroa.0129.60.vec.insert.i.i.i76.i107 to <64 x i8>
  %i.gb = and <64 x i8> %i.ga, <i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison>
  %i.gc = shufflevector <64 x i8> %i.fz, <64 x i8> %i.gb, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60, i32 64, i32 68, i32 72, i32 76, i32 80, i32 84, i32 88, i32 92, i32 96, i32 100, i32 104, i32 108, i32 112, i32 116, i32 120, i32 124>
  store <32 x i8> %i.gc, ptr %.02630.i.i, align 1, !tbaa !15
  %i.gd = getelementptr inbounds nuw i8, ptr %.02531.i.i, i64 8 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.02630.i.i, i64 32 ; 2 uses
  %i.gf = add nuw nsw i32 %.032.i.i, 1            ; 2 uses
  %exitcond.not.i77.i = icmp eq i32 %i.gf, %i.eh
  br i1 %exitcond.not.i77.i, label %._crit_edge.i37.i, label %.lr.ph.i44.i, !llvm.loop !23

bb.g:                                             ; preds = %bb.a
  %i.gg = mul nsw i32 %2, 3
  %i.gh = add nsw i32 %4, %i.gg
  %i.gi = icmp sgt i32 %2, 0
  br i1 %i.gi, label %.lr.ph.i.i95.i, label %_ZN5arrow8internal12unpack_exactILi3ELb1EhEEiPKhPT1_ii.exit.i.i

.lr.ph.i.i95.i:                                   ; preds = %bb.g, %bb.h
  %.026.i.i96.i = phi ptr [ %i.gy, %bb.h ], [ %1, %bb.g ] ; 2 uses
  %.02325.i.i97.i = phi i32 [ %i.gl, %bb.h ], [ %4, %bb.g ] ; 5 uses
  %i.gj = srem i32 %.02325.i.i97.i, 8             ; 2 uses
  %i.gk = sdiv i32 %.02325.i.i97.i, 8             ; 2 uses
  %.not.i.i98.i = icmp eq i32 %i.gj, 0
  br i1 %.not.i.i98.i, label %_ZN5arrow8internal12unpack_exactILi3ELb1EhEEiPKhPT1_ii.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i95.i
  %i.gl = add nsw i32 %.02325.i.i97.i, 3          ; 3 uses
  %i.gm = add nsw i32 %.02325.i.i97.i, 2
  %i.gn = sdiv i32 %i.gm, 8
  %i.go = sub nsw i32 %i.gn, %i.gk                ; 2 uses
  %i.gp = add nsw i32 %i.go, 1
  %i.gq = icmp slt i32 %i.go, 2
  tail call void @llvm.assume(i1 %i.gq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 0, ptr %i.j, align 8, !tbaa !19
  %i.gr = sext i32 %i.gk to i64
  %i.gs = getelementptr inbounds i8, ptr %0, i64 %i.gr
  %i.gt = sext i32 %i.gp to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr readonly align 1 %i.gs, i64 %i.gt, i1 false)
  %.0..0..0..0..0..0..0..0..0..0..i.i99.i = load i64, ptr %i.j, align 8, !tbaa !19
  %i.gu = zext nneg i32 %i.gj to i64
  %i.gv = lshr i64 %.0..0..0..0..0..0..0..0..0..0..i.i99.i, %i.gu
  %i.gw = trunc i64 %i.gv to i8
  %i.gx = and i8 %i.gw, 7
  store i8 %i.gx, ptr %.026.i.i96.i, align 1, !tbaa !15
  %i.gy = getelementptr inbounds nuw i8, ptr %.026.i.i96.i, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.gz = icmp slt i32 %i.gl, %i.gh
  br i1 %i.gz, label %.lr.ph.i.i95.i, label %_ZN5arrow8internal12unpack_exactILi3ELb1EhEEiPKhPT1_ii.exit.i.i, !llvm.loop !24

_ZN5arrow8internal12unpack_exactILi3ELb1EhEEiPKhPT1_ii.exit.i.i: ; preds = %bb.h, %.lr.ph.i.i95.i, %bb.g
  %.023.lcssa.i.i82.i = phi i32 [ %4, %bb.g ], [ %.02325.i.i97.i, %.lr.ph.i.i95.i ], [ %i.gl, %bb.h ]
  %i.ha = sub nsw i32 %.023.lcssa.i.i82.i, %4
  %i.hb = sdiv i32 %i.ha, 3                       ; 3 uses
  %i.hc = mul nsw i32 %i.hb, 3
  %i.hd = add nsw i32 %i.hc, %4
  %i.he = sub nsw i32 %2, %i.hb                   ; 4 uses
  %i.hf = sdiv i32 %i.hd, 8
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds i8, ptr %0, i64 %i.hg ; 2 uses
  %i.hi = sext i32 %i.hb to i64
  %i.hj = getelementptr inbounds i8, ptr %1, i64 %i.hi ; 2 uses
  %i.hk = sdiv i32 %i.he, 32                      ; 2 uses
  %i.hl = icmp sgt i32 %i.he, 31
  br i1 %i.hl, label %.lr.ph.i90.i, label %._crit_edge.i83.i

end_hunk_0
begin_hunk_1_@_ZN5arrow8internal13unpack_avx512IhEEvPKhPT_iii:bb.a
  %.024.i.i.i.epil = phi ptr [ %i.wj, %.lr.ph.i28.i.i.epil ], [ %.024.i.i.i.epil.init, %.lr.ph.i28.i.i.epil.preheader ] ; 2 uses
  %.02223.i.i.i.epil = phi i32 [ %i.wa, %.lr.ph.i28.i.i.epil ], [ %.02223.i.i.i.epil.init, %.lr.ph.i28.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i28.i.i.epil ], [ 0, %.lr.ph.i28.i.i.epil.preheader ]
  %i.vz = lshr i32 %.02223.i.i.i.epil, 3
  %i.wa = add nuw nsw i32 %.02223.i.i.i.epil, 1
  %i.wb = zext nneg i32 %i.vz to i64
  %i.wc = getelementptr inbounds nuw i8, ptr %.025.lcssa.i.i, i64 %i.wb
  %i.wd = load i8, ptr %i.wc, align 1
  %i.we = zext i8 %i.wd to i32
  %i.wf = and i32 %.02223.i.i.i.epil, 7
  %i.wg = lshr i32 %i.we, %i.wf
  %i.wh = trunc nuw i32 %i.wg to i8
  %i.wi = and i8 %i.wh, 1
  store i8 %i.wi, ptr %.024.i.i.i.epil, align 1, !tbaa !15
  %i.wj = getelementptr inbounds nuw i8, ptr %.024.i.i.i.epil, i64 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEhEEvPKhPT0_iii.exit, label %.lr.ph.i28.i.i.epil, !llvm.loop !40

_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEhEEvPKhPT0_iii.exit: ; preds = %.lr.ph.i28.i165.i, %.lr.ph.i28.i144.i, %.lr.ph.i28.i125.i, %.lr.ph.i28.i105.i, %.lr.ph.i28.i87.i, %.lr.ph.i28.i41.i, %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEhEEvPKhPT0_iii.exit.loopexit.unr-lcssa, %.lr.ph.i28.i.i.epil, %bb.a, %bb.b, %._crit_edge.i.i, %._crit_edge.i37.i, %._crit_edge.i83.i, %._crit_edge.i101.i, %._crit_edge.i121.i, %._crit_edge.i140.i, %._crit_edge.i161.i, %_ZN5arrow8internal12unpack_widthILi8ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEhEEvPKhPT1_ii.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow8internal13unpack_avx512ItEEvPKhPT_iii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %i.m = alloca i64, align 8                      ; 5 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %i.o = alloca i64, align 8                      ; 5 uses
  %i.p = alloca i64, align 8                      ; 5 uses
  %i.q = alloca i64, align 8                      ; 5 uses
  %i.r = alloca i64, align 8                      ; 5 uses
  %i.s = alloca i64, align 8                      ; 5 uses
  %i.t = alloca i64, align 8                      ; 5 uses
  %i.u = alloca i64, align 8                      ; 5 uses
  %i.v = alloca i64, align 8                      ; 5 uses
  %i.w = alloca i64, align 8                      ; 5 uses
  %i.x = alloca i64, align 8                      ; 5 uses
  %i.y = alloca i64, align 8                      ; 5 uses
  %i.z = alloca i64, align 8                      ; 5 uses
  switch i32 %3, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEtEEvPKhPT0_iii.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.e
    i32 3, label %bb.g
    i32 4, label %bb.i
    i32 5, label %bb.k
    i32 6, label %bb.m
    i32 7, label %bb.o
    i32 8, label %bb.q
    i32 9, label %bb.s
    i32 10, label %bb.u
    i32 11, label %bb.w
    i32 12, label %bb.y
    i32 13, label %bb.aa
    i32 14, label %bb.ac
    i32 15, label %bb.ae
    i32 16, label %bb.ag
  ]

bb.b:                                             ; preds = %bb.a
  %i.aa = sext i32 %2 to i64
  %i.ab = shl nsw i64 %i.aa, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %1, i8 0, i64 %i.ab, i1 false)
  br label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEtEEvPKhPT0_iii.exit

bb.c:                                             ; preds = %bb.a
  %i.ac = add nsw i32 %4, %2
  %i.ad = icmp sgt i32 %2, 0
  br i1 %i.ad, label %.lr.ph.i.i.i, label %_ZN5arrow8internal12unpack_exactILi1ELb1EtEEiPKhPT1_ii.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %.026.i.i.i = phi ptr [ %i.ao, %bb.d ], [ %1, %bb.c ] ; 2 uses
  %.02325.i.i.i = phi i32 [ %i.ag, %bb.d ], [ %4, %bb.c ] ; 4 uses
  %i.ae = srem i32 %.02325.i.i.i, 8               ; 2 uses
  %i.af = sdiv i32 %.02325.i.i.i, 8
  %.not.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i, label %_ZN5arrow8internal12unpack_exactILi1ELb1EtEEiPKhPT1_ii.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ag = add nsw i32 %.02325.i.i.i, 1            ; 3 uses
  %i.ah = sext i32 %i.af to i64
  %i.ai = getelementptr inbounds i8, ptr %0, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = zext i8 %i.aj to i32
  %i.al = lshr i32 %i.ak, %i.ae
  %i.am = trunc nuw nsw i32 %i.al to i16
  %i.an = and i16 %i.am, 1
  store i16 %i.an, ptr %.026.i.i.i, align 2, !tbaa !41
  %i.ao = getelementptr inbounds nuw i8, ptr %.026.i.i.i, i64 2
  %i.ap = icmp slt i32 %i.ag, %i.ac
  br i1 %i.ap, label %.lr.ph.i.i.i, label %_ZN5arrow8internal12unpack_exactILi1ELb1EtEEiPKhPT1_ii.exit.i.i, !llvm.loop !43

_ZN5arrow8internal12unpack_exactILi1ELb1EtEEiPKhPT1_ii.exit.i.i: ; preds = %bb.d, %.lr.ph.i.i.i, %bb.c
  %.023.lcssa.i.i.i = phi i32 [ %4, %bb.c ], [ %.02325.i.i.i, %.lr.ph.i.i.i ], [ %i.ag, %bb.d ] ; 3 uses
  %i.aq = sub nsw i32 %.023.lcssa.i.i.i, %4       ; 2 uses
  %i.ar = sub nsw i32 %2, %i.aq                   ; 5 uses
  %i.as = sdiv i32 %.023.lcssa.i.i.i, 8
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds i8, ptr %0, i64 %i.at ; 2 uses
  %i.av = sext i32 %i.aq to i64
  %i.aw = getelementptr inbounds [2 x i8], ptr %1, i64 %i.av ; 2 uses
  %i.ax = sdiv i32 %i.ar, 32                      ; 2 uses
  %i.ay = icmp sgt i32 %i.ar, 31
  br i1 %i.ay, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_ZN5arrow8internal12unpack_exactILi1ELb1EtEEiPKhPT1_ii.exit.i.i
  %.026.lcssa.i.i = phi ptr [ %i.aw, %_ZN5arrow8internal12unpack_exactILi1ELb1EtEEiPKhPT1_ii.exit.i.i ], [ %i.dt, %.lr.ph.i.i ] ; 2 uses
  %.025.lcssa.i.i = phi ptr [ %i.au, %_ZN5arrow8internal12unpack_exactILi1ELb1EtEEiPKhPT1_ii.exit.i.i ], [ %i.ds, %.lr.ph.i.i ] ; 5 uses
  %i.az = shl nsw i32 %i.ax, 5                    ; 3 uses
  %i.ba = sub nsw i32 %i.ar, %i.az                ; 2 uses
  %i.bb = icmp samesign ult i32 %i.ba, 32
  tail call void @llvm.assume(i1 %i.bb)
  %.not.i.i = icmp eq i32 %i.ar, %i.az
  br i1 %.not.i.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEtEEvPKhPT0_iii.exit, label %.lr.ph.i28.i.i.preheader

.lr.ph.i28.i.i.preheader:                         ; preds = %._crit_edge.i.i
  %i.bc = add i32 %4, %2
  %xtraiter332 = and i32 %i.ar, 3                 ; 4 uses
  %i.bd = sub i32 %.023.lcssa.i.i.i, %i.bc
  %i.be = add i32 %i.bd, %i.az
  %i.bf = icmp ugt i32 %i.be, -4
  br i1 %i.bf, label %.lr.ph.i28.i.i.epil.preheader, label %.lr.ph.i28.i.i.preheader.new

.lr.ph.i28.i.i.preheader.new:                     ; preds = %.lr.ph.i28.i.i.preheader
  %unroll_iter335 = sub nsw i32 %i.ba, %xtraiter332
  br label %.lr.ph.i28.i.i

.lr.ph.i28.i.i:                                   ; preds = %.lr.ph.i28.i.i, %.lr.ph.i28.i.i.preheader.new
  %.024.i.i.i = phi ptr [ %.026.lcssa.i.i, %.lr.ph.i28.i.i.preheader.new ], [ %i.cx, %.lr.ph.i28.i.i ] ; 5 uses
  %.02223.i.i.i = phi i32 [ 0, %.lr.ph.i28.i.i.preheader.new ], [ %i.cn, %.lr.ph.i28.i.i ] ; 9 uses
  %niter336 = phi i32 [ 0, %.lr.ph.i28.i.i.preheader.new ], [ %niter336.next.3, %.lr.ph.i28.i.i ]
  %i.bg = lshr i32 %.02223.i.i.i, 3
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %.025.lcssa.i.i, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = zext i8 %i.bj to i32
  %i.bl = and i32 %.02223.i.i.i, 4
  %i.bm = lshr i32 %i.bk, %i.bl
  %i.bn = trunc nuw nsw i32 %i.bm to i16
  %i.bo = and i16 %i.bn, 1
  store i16 %i.bo, ptr %.024.i.i.i, align 2, !tbaa !41
  %i.bp = getelementptr inbounds nuw i8, ptr %.024.i.i.i, i64 2
  %i.bq = lshr i32 %.02223.i.i.i, 3
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %.025.lcssa.i.i, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = zext i8 %i.bt to i32
  %i.bv = and i32 %.02223.i.i.i, 4
  %i.bw = or disjoint i32 %i.bv, 1
  %i.bx = lshr i32 %i.bu, %i.bw
  %i.by = trunc nuw nsw i32 %i.bx to i16
  %i.bz = and i16 %i.by, 1
  store i16 %i.bz, ptr %i.bp, align 2, !tbaa !41
  %i.ca = getelementptr inbounds nuw i8, ptr %.024.i.i.i, i64 4
  %i.cb = lshr i32 %.02223.i.i.i, 3
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %.025.lcssa.i.i, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = zext i8 %i.ce to i32
  %i.cg = and i32 %.02223.i.i.i, 4
  %i.ch = or disjoint i32 %i.cg, 2
  %i.ci = lshr i32 %i.cf, %i.ch
  %i.cj = trunc nuw nsw i32 %i.ci to i16
  %i.ck = and i16 %i.cj, 1
  store i16 %i.ck, ptr %i.ca, align 2, !tbaa !41
  %i.cl = getelementptr inbounds nuw i8, ptr %.024.i.i.i, i64 6
  %i.cm = lshr i32 %.02223.i.i.i, 3
  %i.cn = add nuw nsw i32 %.02223.i.i.i, 4        ; 2 uses
  %i.co = zext nneg i32 %i.cm to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %.025.lcssa.i.i, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1
  %i.cr = zext i8 %i.cq to i32
  %i.cs = and i32 %.02223.i.i.i, 4
  %i.ct = or disjoint i32 %i.cs, 3
  %i.cu = lshr i32 %i.cr, %i.ct
  %i.cv = trunc nuw nsw i32 %i.cu to i16
  %i.cw = and i16 %i.cv, 1
  store i16 %i.cw, ptr %i.cl, align 2, !tbaa !41
  %i.cx = getelementptr inbounds nuw i8, ptr %.024.i.i.i, i64 8 ; 2 uses
  %niter336.next.3 = add i32 %niter336, 4         ; 2 uses
  %niter336.ncmp.3 = icmp eq i32 %niter336.next.3, %unroll_iter335
  br i1 %niter336.ncmp.3, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEtEEvPKhPT0_iii.exit.loopexit.unr-lcssa, label %.lr.ph.i28.i.i, !llvm.loop !44

.lr.ph.i.i:                                       ; preds = %_ZN5arrow8internal12unpack_exactILi1ELb1EtEEiPKhPT1_ii.exit.i.i, %.lr.ph.i.i
  %.031.i.i = phi i32 [ %i.du, %.lr.ph.i.i ], [ 0, %_ZN5arrow8internal12unpack_exactILi1ELb1EtEEiPKhPT1_ii.exit.i.i ]
  %.02530.i.i = phi ptr [ %i.ds, %.lr.ph.i.i ], [ %i.au, %_ZN5arrow8internal12unpack_exactILi1ELb1EtEEiPKhPT1_ii.exit.i.i ] ; 2 uses
  %.02629.i.i = phi ptr [ %i.dt, %.lr.ph.i.i ], [ %i.aw, %_ZN5arrow8internal12unpack_exactILi1ELb1EtEEiPKhPT1_ii.exit.i.i ] ; 3 uses
  %i.cy = load i32, ptr %.02530.i.i, align 1      ; 5 uses
  %i.cz = insertelement <16 x i32> poison, i32 %i.cy, i64 0 ; 2 uses
  %.sroa.0109.0.vec.insert.i.i.i.i = shufflevector <16 x i32> %i.cz, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.da = insertelement <8 x i32> poison, i32 %i.cy, i64 0
  %i.db = shufflevector <8 x i32> %i.da, <8 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dc = lshr <16 x i32> %i.db, <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %.sroa.0109.32.vec.insert.i.i.i.i238 = shufflevector <16 x i32> %i.cz, <16 x i32> %i.dc, <16 x i32> <i32 0, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dd = insertelement <4 x i32> poison, i32 %i.cy, i64 0
  %i.de = shufflevector <4 x i32> %i.dd, <4 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.df = lshr <16 x i32> %i.de, <i32 9, i32 10, i32 11, i32 12, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %.sroa.0109.48.vec.insert.i.i.i.i239 = shufflevector <16 x i32> %.sroa.0109.32.vec.insert.i.i.i.i238, <16 x i32> %i.df, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison>
  %i.dg = lshr i32 %i.cy, 13
  %.sroa.0109.52.vec.insert.i.i.i.i = insertelement <16 x i32> %.sroa.0109.48.vec.insert.i.i.i.i239, i32 %i.dg, i64 13
  %i.dh = insertelement <2 x i32> poison, i32 %i.cy, i64 0
  %i.di = shufflevector <2 x i32> %i.dh, <2 x i32> poison, <16 x i32> <i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dj = lshr <16 x i32> %i.di, <i32 14, i32 15, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %.sroa.0109.60.vec.insert.i.i.i.i240 = shufflevector <16 x i32> %.sroa.0109.52.vec.insert.i.i.i.i, <16 x i32> %i.dj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  %i.dk = lshr <16 x i32> %.sroa.0109.0.vec.insert.i.i.i.i, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dl = bitcast <16 x i32> %.sroa.0109.60.vec.insert.i.i.i.i240 to <32 x i16>
  %i.dm = and <32 x i16> %i.dl, <i16 1, i16 poison, i16 1, i16 poison, i16 1, i16 poison, i16 1, i16 poison, i16 1, i16 poison, i16 1, i16 poison, i16 1, i16 poison, i16 1, i16 poison, i16 1, i16 poison, i16 1, i16 poison, i16 1, i16 poison, i16 1, i16 poison, i16 1, i16 poison, i16 1, i16 poison, i16 1, i16 poison, i16 1, i16 poison>
  %i.dn = shufflevector <32 x i16> %i.dm, <32 x i16> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  store <16 x i16> %i.dn, ptr %.02629.i.i, align 2, !tbaa !41
  %i.do = bitcast <16 x i32> %i.dk to <32 x i16>
  %i.dp = and <32 x i16> %i.do, <i16 1, i16 poison, i16 1, i16 poison, i16 1, i16 poison, i16 1, i16 poison, i16 1, i16 poison, i16 1, i16 poison, i16 1, i16 poison, i16 1, i16 poison, i16 1, i16 poison, i16 1, i16 poison, i16 1, i16 poison, i16 1, i16 poison, i16 1, i16 poison, i16 1, i16 poison, i16 1, i16 poison, i16 1, i16 poison>
  %i.dq = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 32
  %i.dr = shufflevector <32 x i16> %i.dp, <32 x i16> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  store <16 x i16> %i.dr, ptr %i.dq, align 2, !tbaa !41
  %i.ds = getelementptr inbounds nuw i8, ptr %.02530.i.i, i64 4 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 64 ; 2 uses
  %i.du = add nuw nsw i32 %.031.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.du, %i.ax
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !45

bb.e:                                             ; preds = %bb.a
  %i.dv = shl nsw i32 %2, 1
  %i.dw = add nsw i32 %4, %i.dv
  %i.dx = icmp sgt i32 %2, 0
  br i1 %i.dx, label %.lr.ph.i.i110.i, label %_ZN5arrow8internal12unpack_exactILi2ELb1EtEEiPKhPT1_ii.exit.i.i

.lr.ph.i.i110.i:                                  ; preds = %bb.e, %bb.f
  %.026.i.i111.i = phi ptr [ %i.en, %bb.f ], [ %1, %bb.e ] ; 2 uses
  %.02325.i.i112.i = phi i32 [ %i.ea, %bb.f ], [ %4, %bb.e ] ; 5 uses
  %i.dy = srem i32 %.02325.i.i112.i, 8            ; 2 uses
  %i.dz = sdiv i32 %.02325.i.i112.i, 8            ; 2 uses
  %.not.i.i113.i = icmp eq i32 %i.dy, 0
  br i1 %.not.i.i113.i, label %_ZN5arrow8internal12unpack_exactILi2ELb1EtEEiPKhPT1_ii.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i110.i
  %i.ea = add nsw i32 %.02325.i.i112.i, 2         ; 3 uses
  %i.eb = add nsw i32 %.02325.i.i112.i, 1
  %i.ec = sdiv i32 %i.eb, 8
  %i.ed = sub nsw i32 %i.ec, %i.dz                ; 2 uses
  %i.ee = add nsw i32 %i.ed, 1
  %i.ef = icmp slt i32 %i.ed, 2
  tail call void @llvm.assume(i1 %i.ef)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i64 0, ptr %i.z, align 8, !tbaa !19
  %i.eg = sext i32 %i.dz to i64
  %i.eh = getelementptr inbounds i8, ptr %0, i64 %i.eg
  %i.ei = sext i32 %i.ee to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.z, ptr readonly align 1 %i.eh, i64 %i.ei, i1 false)
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load i64, ptr %i.z, align 8, !tbaa !19
  %i.ej = zext nneg i32 %i.dy to i64
  %i.ek = lshr i64 %.0..0..0..0..0..0..0..0..0..0..i.i.i, %i.ej
  %i.el = trunc i64 %i.ek to i16
  %i.em = and i16 %i.el, 3
  store i16 %i.em, ptr %.026.i.i111.i, align 2, !tbaa !41
  %i.en = getelementptr inbounds nuw i8, ptr %.026.i.i111.i, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.eo = icmp slt i32 %i.ea, %i.dw
  br i1 %i.eo, label %.lr.ph.i.i110.i, label %_ZN5arrow8internal12unpack_exactILi2ELb1EtEEiPKhPT1_ii.exit.i.i, !llvm.loop !46

_ZN5arrow8internal12unpack_exactILi2ELb1EtEEiPKhPT1_ii.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i110.i, %bb.e
  %.023.lcssa.i.i68.i = phi i32 [ %4, %bb.e ], [ %.02325.i.i112.i, %.lr.ph.i.i110.i ], [ %i.ea, %bb.f ]
  %i.ep = sub nsw i32 %.023.lcssa.i.i68.i, %4
  %i.eq = sdiv i32 %i.ep, 2                       ; 3 uses
  %i.er = shl nsw i32 %i.eq, 1
  %i.es = add nsw i32 %i.er, %4
  %i.et = sub nsw i32 %2, %i.eq                   ; 4 uses
  %i.eu = sdiv i32 %i.es, 8
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds i8, ptr %0, i64 %i.ev ; 2 uses
  %i.ex = sext i32 %i.eq to i64
  %i.ey = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ex ; 2 uses
  %i.ez = sdiv i32 %i.et, 32                      ; 2 uses
  %i.fa = icmp sgt i32 %i.et, 31
  br i1 %i.fa, label %.lr.ph.i76.i, label %._crit_edge.i69.i

._crit_edge.i69.i:                                ; preds = %.lr.ph.i76.i, %_ZN5arrow8internal12unpack_exactILi2ELb1EtEEiPKhPT1_ii.exit.i.i
  %.026.lcssa.i70.i = phi ptr [ %i.ey, %_ZN5arrow8internal12unpack_exactILi2ELb1EtEEiPKhPT1_ii.exit.i.i ], [ %i.gy, %.lr.ph.i76.i ]
  %.025.lcssa.i71.i = phi ptr [ %i.ew, %_ZN5arrow8internal12unpack_exactILi2ELb1EtEEiPKhPT1_ii.exit.i.i ], [ %i.gx, %.lr.ph.i76.i ]
  %i.fb = shl nsw i32 %i.ez, 5                    ; 2 uses
  %i.fc = sub nsw i32 %i.et, %i.fb                ; 2 uses
  %i.fd = icmp samesign ult i32 %i.fc, 32
  tail call void @llvm.assume(i1 %i.fd)
  %i.fe = shl nuw nsw i32 %i.fc, 1
  %.not.i72.i = icmp eq i32 %i.et, %i.fb
  br i1 %.not.i72.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEtEEvPKhPT0_iii.exit, label %.lr.ph.i28.i73.i

.lr.ph.i28.i73.i:                                 ; preds = %._crit_edge.i69.i, %.lr.ph.i28.i73.i
  %.024.i.i74.i = phi ptr [ %i.fp, %.lr.ph.i28.i73.i ], [ %.026.lcssa.i70.i, %._crit_edge.i69.i ] ; 2 uses
  %.02223.i.i75.i = phi i32 [ %i.fg, %.lr.ph.i28.i73.i ], [ 0, %._crit_edge.i69.i ] ; 3 uses
  %i.ff = lshr i32 %.02223.i.i75.i, 3
  %i.fg = add nuw nsw i32 %.02223.i.i75.i, 2      ; 2 uses
  %i.fh = zext nneg i32 %i.ff to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %.025.lcssa.i71.i, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1
  %i.fk = zext i8 %i.fj to i32
  %i.fl = and i32 %.02223.i.i75.i, 6
  %i.fm = lshr i32 %i.fk, %i.fl
  %i.fn = trunc nuw nsw i32 %i.fm to i16
  %i.fo = and i16 %i.fn, 3
  store i16 %i.fo, ptr %.024.i.i74.i, align 2, !tbaa !41
  %i.fp = getelementptr inbounds nuw i8, ptr %.024.i.i74.i, i64 2
  %i.fq = icmp samesign ult i32 %i.fg, %i.fe
  br i1 %i.fq, label %.lr.ph.i28.i73.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEtEEvPKhPT0_iii.exit, !llvm.loop !47

.lr.ph.i76.i:                                     ; preds = %_ZN5arrow8internal12unpack_exactILi2ELb1EtEEiPKhPT1_ii.exit.i.i, %.lr.ph.i76.i
  %.032.i.i = phi i32 [ %i.gz, %.lr.ph.i76.i ], [ 0, %_ZN5arrow8internal12unpack_exactILi2ELb1EtEEiPKhPT1_ii.exit.i.i ]
  %.02531.i.i = phi ptr [ %i.gx, %.lr.ph.i76.i ], [ %i.ew, %_ZN5arrow8internal12unpack_exactILi2ELb1EtEEiPKhPT1_ii.exit.i.i ] ; 3 uses
  %.02630.i.i = phi ptr [ %i.gy, %.lr.ph.i76.i ], [ %i.ey, %_ZN5arrow8internal12unpack_exactILi2ELb1EtEEiPKhPT1_ii.exit.i.i ] ; 3 uses
  %i.fr = load i32, ptr %.02531.i.i, align 1      ; 5 uses
  %i.fs = insertelement <16 x i32> poison, i32 %i.fr, i64 0
  %i.ft = insertelement <8 x i32> poison, i32 %i.fr, i64 0
  %i.fu = shufflevector <8 x i32> %i.ft, <8 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fv = lshr <16 x i32> %i.fu, <i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %.sroa.0109.32.vec.insert.i.i.i85.i244 = shufflevector <16 x i32> %i.fs, <16 x i32> %i.fv, <16 x i32> <i32 0, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fw = insertelement <4 x i32> poison, i32 %i.fr, i64 0
  %i.fx = shufflevector <4 x i32> %i.fw, <4 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fy = lshr <16 x i32> %i.fx, <i32 18, i32 20, i32 22, i32 24, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %.sroa.0109.48.vec.insert.i.i.i89.i245 = shufflevector <16 x i32> %.sroa.0109.32.vec.insert.i.i.i85.i244, <16 x i32> %i.fy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison>
  %i.fz = lshr i32 %i.fr, 26
  %.sroa.0109.52.vec.insert.i.i.i90.i = insertelement <16 x i32> %.sroa.0109.48.vec.insert.i.i.i89.i245, i32 %i.fz, i64 13
  %i.ga = insertelement <2 x i32> poison, i32 %i.fr, i64 0
  %i.gb = shufflevector <2 x i32> %i.ga, <2 x i32> poison, <16 x i32> <i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gc = lshr <16 x i32> %i.gb, <i32 28, i32 30, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %.sroa.0109.60.vec.insert.i.i.i92.i246 = shufflevector <16 x i32> %.sroa.0109.52.vec.insert.i.i.i90.i, <16 x i32> %i.gc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  %i.gd = getelementptr inbounds nuw i8, ptr %.02531.i.i, i64 4
  %i.ge = load i32, ptr %i.gd, align 1            ; 5 uses
  %i.gf = insertelement <16 x i32> poison, i32 %i.ge, i64 0
  %i.gg = insertelement <8 x i32> poison, i32 %i.ge, i64 0
  %i.gh = shufflevector <8 x i32> %i.gg, <8 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gi = lshr <16 x i32> %i.gh, <i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %.sroa.0129.32.vec.insert.i.i.i101.i241 = shufflevector <16 x i32> %i.gf, <16 x i32> %i.gi, <16 x i32> <i32 0, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gj = insertelement <4 x i32> poison, i32 %i.ge, i64 0
  %i.gk = shufflevector <4 x i32> %i.gj, <4 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gl = lshr <16 x i32> %i.gk, <i32 18, i32 20, i32 22, i32 24, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %.sroa.0129.48.vec.insert.i.i.i105.i242 = shufflevector <16 x i32> %.sroa.0129.32.vec.insert.i.i.i101.i241, <16 x i32> %i.gl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison>
  %i.gm = lshr i32 %i.ge, 26
  %.sroa.0129.52.vec.insert.i.i.i106.i = insertelement <16 x i32> %.sroa.0129.48.vec.insert.i.i.i105.i242, i32 %i.gm, i64 13
  %i.gn = insertelement <2 x i32> poison, i32 %i.ge, i64 0
  %i.go = shufflevector <2 x i32> %i.gn, <2 x i32> poison, <16 x i32> <i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gp = lshr <16 x i32> %i.go, <i32 28, i32 30, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %.sroa.0129.60.vec.insert.i.i.i108.i243 = shufflevector <16 x i32> %.sroa.0129.52.vec.insert.i.i.i106.i, <16 x i32> %i.gp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  %i.gq = bitcast <16 x i32> %.sroa.0109.60.vec.insert.i.i.i92.i246 to <32 x i16>
  %i.gr = and <32 x i16> %i.gq, <i16 3, i16 poison, i16 3, i16 poison, i16 3, i16 poison, i16 3, i16 poison, i16 3, i16 poison, i16 3, i16 poison, i16 3, i16 poison, i16 3, i16 poison, i16 3, i16 poison, i16 3, i16 poison, i16 3, i16 poison, i16 3, i16 poison, i16 3, i16 poison, i16 3, i16 poison, i16 3, i16 poison, i16 3, i16 poison>
  %i.gs = shufflevector <32 x i16> %i.gr, <32 x i16> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  store <16 x i16> %i.gs, ptr %.02630.i.i, align 2, !tbaa !41
  %i.gt = bitcast <16 x i32> %.sroa.0129.60.vec.insert.i.i.i108.i243 to <32 x i16>
  %i.gu = and <32 x i16> %i.gt, <i16 3, i16 poison, i16 3, i16 poison, i16 3, i16 poison, i16 3, i16 poison, i16 3, i16 poison, i16 3, i16 poison, i16 3, i16 poison, i16 3, i16 poison, i16 3, i16 poison, i16 3, i16 poison, i16 3, i16 poison, i16 3, i16 poison, i16 3, i16 poison, i16 3, i16 poison, i16 3, i16 poison, i16 3, i16 poison>
  %i.gv = getelementptr inbounds nuw i8, ptr %.02630.i.i, i64 32
  %i.gw = shufflevector <32 x i16> %i.gu, <32 x i16> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  store <16 x i16> %i.gw, ptr %i.gv, align 2, !tbaa !41
  %i.gx = getelementptr inbounds nuw i8, ptr %.02531.i.i, i64 8 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.02630.i.i, i64 64 ; 2 uses
  %i.gz = add nuw nsw i32 %.032.i.i, 1            ; 2 uses
  %exitcond.not.i109.i = icmp eq i32 %i.gz, %i.ez
  br i1 %exitcond.not.i109.i, label %._crit_edge.i69.i, label %.lr.ph.i76.i, !llvm.loop !48

bb.g:                                             ; preds = %bb.a
  %i.ha = mul nsw i32 %2, 3
  %i.hb = add nsw i32 %4, %i.ha
  %i.hc = icmp sgt i32 %2, 0
  br i1 %i.hc, label %.lr.ph.i.i127.i, label %_ZN5arrow8internal12unpack_exactILi3ELb1EtEEiPKhPT1_ii.exit.i.i

.lr.ph.i.i127.i:                                  ; preds = %bb.g, %bb.h
  %.026.i.i128.i = phi ptr [ %i.hs, %bb.h ], [ %1, %bb.g ] ; 2 uses
  %.02325.i.i129.i = phi i32 [ %i.hf, %bb.h ], [ %4, %bb.g ] ; 5 uses
  %i.hd = srem i32 %.02325.i.i129.i, 8            ; 2 uses
  %i.he = sdiv i32 %.02325.i.i129.i, 8            ; 2 uses
  %.not.i.i130.i = icmp eq i32 %i.hd, 0
  br i1 %.not.i.i130.i, label %_ZN5arrow8internal12unpack_exactILi3ELb1EtEEiPKhPT1_ii.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i127.i
  %i.hf = add nsw i32 %.02325.i.i129.i, 3         ; 3 uses
  %i.hg = add nsw i32 %.02325.i.i129.i, 2
  %i.hh = sdiv i32 %i.hg, 8
  %i.hi = sub nsw i32 %i.hh, %i.he                ; 2 uses
  %i.hj = add nsw i32 %i.hi, 1
  %i.hk = icmp slt i32 %i.hi, 2
  tail call void @llvm.assume(i1 %i.hk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store i64 0, ptr %i.y, align 8, !tbaa !19
  %i.hl = sext i32 %i.he to i64
  %i.hm = getelementptr inbounds i8, ptr %0, i64 %i.hl
  %i.hn = sext i32 %i.hj to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.y, ptr readonly align 1 %i.hm, i64 %i.hn, i1 false)
  %.0..0..0..0..0..0..0..0..0..0..i.i131.i = load i64, ptr %i.y, align 8, !tbaa !19
  %i.ho = zext nneg i32 %i.hd to i64
  %i.hp = lshr i64 %.0..0..0..0..0..0..0..0..0..0..i.i131.i, %i.ho
  %i.hq = trunc i64 %i.hp to i16
  %i.hr = and i16 %i.hq, 7
  store i16 %i.hr, ptr %.026.i.i128.i, align 2, !tbaa !41
  %i.hs = getelementptr inbounds nuw i8, ptr %.026.i.i128.i, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.ht = icmp slt i32 %i.hf, %i.hb
  br i1 %i.ht, label %.lr.ph.i.i127.i, label %_ZN5arrow8internal12unpack_exactILi3ELb1EtEEiPKhPT1_ii.exit.i.i, !llvm.loop !49

_ZN5arrow8internal12unpack_exactILi3ELb1EtEEiPKhPT1_ii.exit.i.i: ; preds = %bb.h, %.lr.ph.i.i127.i, %bb.g
  %.023.lcssa.i.i114.i = phi i32 [ %4, %bb.g ], [ %.02325.i.i129.i, %.lr.ph.i.i127.i ], [ %i.hf, %bb.h ]
  %i.hu = sub nsw i32 %.023.lcssa.i.i114.i, %4
  %i.hv = sdiv i32 %i.hu, 3                       ; 3 uses
  %i.hw = mul nsw i32 %i.hv, 3
  %i.hx = add nsw i32 %i.hw, %4
  %i.hy = sub nsw i32 %2, %i.hv                   ; 5 uses
  %i.hz = sdiv i32 %i.hx, 8
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds i8, ptr %0, i64 %i.ia ; 3 uses
end_hunk_1
