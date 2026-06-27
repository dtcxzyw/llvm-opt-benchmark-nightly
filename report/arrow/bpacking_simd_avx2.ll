inline.NumInlined: 12609
inline.NumDeleted: 445
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN5arrow8internal11unpack_avx2IbEEvPKhPT_iii = comdat any

$_ZN5arrow8internal11unpack_avx2IhEEvPKhPT_iii = comdat any

$_ZN5arrow8internal11unpack_avx2ItEEvPKhPT_iii = comdat any

$_ZN5arrow8internal11unpack_avx2IjEEvPKhPT_iii = comdat any

$_ZN5arrow8internal11unpack_avx2ImEEvPKhPT_iii = comdat any

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow8internal11unpack_avx2IbEEvPKhPT_iii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %3, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEbEEvPKhPT0_iii.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = sext i32 %2 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %i.a, i1 false)
  br label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEbEEvPKhPT0_iii.exit

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
  %.026.lcssa.i.i = phi ptr [ %i.v, %_ZN5arrow8internal12unpack_exactILi1ELb1EbEEiPKhPT1_ii.exit.i.i ], [ %i.cg, %.lr.ph.i.i ] ; 2 uses
  %.025.lcssa.i.i = phi ptr [ %i.t, %_ZN5arrow8internal12unpack_exactILi1ELb1EbEEiPKhPT1_ii.exit.i.i ], [ %i.cf, %.lr.ph.i.i ] ; 5 uses
  %i.y = shl nsw i32 %i.w, 5                      ; 3 uses
  %i.z = sub nsw i32 %i.q, %i.y                   ; 2 uses
  %i.aa = icmp samesign ult i32 %i.z, 32
  tail call void @llvm.assume(i1 %i.aa)
  %.not.i.i = icmp eq i32 %i.q, %i.y
  br i1 %.not.i.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEbEEvPKhPT0_iii.exit, label %.lr.ph.i28.i.i.preheader

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
  br i1 %niter.ncmp.3, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEbEEvPKhPT0_iii.exit.loopexit.unr-lcssa, label %.lr.ph.i28.i.i, !llvm.loop !11

.lr.ph.i.i:                                       ; preds = %_ZN5arrow8internal12unpack_exactILi1ELb1EbEEiPKhPT1_ii.exit.i.i, %.lr.ph.i.i
  %.031.i.i = phi i32 [ %i.ch, %.lr.ph.i.i ], [ 0, %_ZN5arrow8internal12unpack_exactILi1ELb1EbEEiPKhPT1_ii.exit.i.i ]
  %.02530.i.i = phi ptr [ %i.cf, %.lr.ph.i.i ], [ %i.t, %_ZN5arrow8internal12unpack_exactILi1ELb1EbEEiPKhPT1_ii.exit.i.i ] ; 2 uses
  %.02629.i.i = phi ptr [ %i.cg, %.lr.ph.i.i ], [ %i.v, %_ZN5arrow8internal12unpack_exactILi1ELb1EbEEiPKhPT1_ii.exit.i.i ] ; 33 uses
  %i.bx = load i32, ptr %.02530.i.i, align 1
  %i.by = insertelement <8 x i32> poison, i32 %i.bx, i64 0
  %i.bz = shufflevector <8 x i32> %i.by, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.ca = lshr <8 x i32> %i.bz, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cb = lshr <8 x i32> %i.bz, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cc = lshr <8 x i32> %i.bz, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.cd = lshr <8 x i32> %i.bz, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %5 = bitcast <8 x i32> %i.ca to <256 x i1>      ; 8 uses
  %6 = extractelement <256 x i1> %5, i64 0
  %7 = zext i1 %6 to i8
  store i8 %7, ptr %.02629.i.i, align 1, !tbaa !7
  %8 = extractelement <256 x i1> %5, i64 32
  %9 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 1
  %10 = zext i1 %8 to i8
  store i8 %10, ptr %9, align 1, !tbaa !7
  %11 = extractelement <256 x i1> %5, i64 64
  %12 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 2
  %13 = zext i1 %11 to i8
  store i8 %13, ptr %12, align 1, !tbaa !7
  %14 = extractelement <256 x i1> %5, i64 96
  %15 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 3
  %16 = zext i1 %14 to i8
  store i8 %16, ptr %15, align 1, !tbaa !7
  %17 = extractelement <256 x i1> %5, i64 128
  %18 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 4
  %19 = zext i1 %17 to i8
  store i8 %19, ptr %18, align 1, !tbaa !7
  %20 = extractelement <256 x i1> %5, i64 160
  %21 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 5
  %22 = zext i1 %20 to i8
  store i8 %22, ptr %21, align 1, !tbaa !7
  %23 = extractelement <256 x i1> %5, i64 192
  %24 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 6
  %25 = zext i1 %23 to i8
  store i8 %25, ptr %24, align 1, !tbaa !7
  %26 = extractelement <256 x i1> %5, i64 224
  %27 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 7
  %28 = zext i1 %26 to i8
  store i8 %28, ptr %27, align 1, !tbaa !7
  %29 = bitcast <8 x i32> %i.cb to <256 x i1>     ; 8 uses
  %30 = extractelement <256 x i1> %29, i64 0
  %31 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 8
  %32 = zext i1 %30 to i8
  store i8 %32, ptr %31, align 1, !tbaa !7
  %33 = extractelement <256 x i1> %29, i64 32
  %34 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 9
  %35 = zext i1 %33 to i8
  store i8 %35, ptr %34, align 1, !tbaa !7
  %36 = extractelement <256 x i1> %29, i64 64
  %37 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 10
  %38 = zext i1 %36 to i8
  store i8 %38, ptr %37, align 1, !tbaa !7
  %39 = extractelement <256 x i1> %29, i64 96
  %40 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 11
  %41 = zext i1 %39 to i8
  store i8 %41, ptr %40, align 1, !tbaa !7
  %42 = extractelement <256 x i1> %29, i64 128
  %43 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 12
  %44 = zext i1 %42 to i8
  store i8 %44, ptr %43, align 1, !tbaa !7
  %45 = extractelement <256 x i1> %29, i64 160
  %46 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 13
  %47 = zext i1 %45 to i8
  store i8 %47, ptr %46, align 1, !tbaa !7
  %48 = extractelement <256 x i1> %29, i64 192
  %49 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 14
  %50 = zext i1 %48 to i8
  store i8 %50, ptr %49, align 1, !tbaa !7
  %51 = extractelement <256 x i1> %29, i64 224
  %52 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 15
  %53 = zext i1 %51 to i8
  store i8 %53, ptr %52, align 1, !tbaa !7
  %54 = bitcast <8 x i32> %i.cc to <256 x i1>     ; 8 uses
  %55 = extractelement <256 x i1> %54, i64 0
  %56 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 16
  %57 = zext i1 %55 to i8
  store i8 %57, ptr %56, align 1, !tbaa !7
  %58 = extractelement <256 x i1> %54, i64 32
  %59 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 17
  %60 = zext i1 %58 to i8
  store i8 %60, ptr %59, align 1, !tbaa !7
  %61 = extractelement <256 x i1> %54, i64 64
  %62 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 18
  %63 = zext i1 %61 to i8
  store i8 %63, ptr %62, align 1, !tbaa !7
  %64 = extractelement <256 x i1> %54, i64 96
  %65 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 19
  %66 = zext i1 %64 to i8
  store i8 %66, ptr %65, align 1, !tbaa !7
  %67 = extractelement <256 x i1> %54, i64 128
  %68 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 20
  %69 = zext i1 %67 to i8
  store i8 %69, ptr %68, align 1, !tbaa !7
  %70 = extractelement <256 x i1> %54, i64 160
  %71 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 21
  %72 = zext i1 %70 to i8
  store i8 %72, ptr %71, align 1, !tbaa !7
  %73 = extractelement <256 x i1> %54, i64 192
  %74 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 22
  %75 = zext i1 %73 to i8
  store i8 %75, ptr %74, align 1, !tbaa !7
  %76 = extractelement <256 x i1> %54, i64 224
  %77 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 23
  %78 = zext i1 %76 to i8
  store i8 %78, ptr %77, align 1, !tbaa !7
  %79 = bitcast <8 x i32> %i.cd to <256 x i1>     ; 8 uses
  %80 = extractelement <256 x i1> %79, i64 0
  %81 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 24
  %82 = zext i1 %80 to i8
  store i8 %82, ptr %81, align 1, !tbaa !7
  %83 = extractelement <256 x i1> %79, i64 32
  %84 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 25
  %85 = zext i1 %83 to i8
  store i8 %85, ptr %84, align 1, !tbaa !7
  %86 = extractelement <256 x i1> %79, i64 64
  %87 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 26
  %88 = zext i1 %86 to i8
  store i8 %88, ptr %87, align 1, !tbaa !7
  %89 = extractelement <256 x i1> %79, i64 96
  %90 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 27
  %91 = zext i1 %89 to i8
  store i8 %91, ptr %90, align 1, !tbaa !7
  %92 = extractelement <256 x i1> %79, i64 128
  %93 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 28
  %94 = zext i1 %92 to i8
  store i8 %94, ptr %93, align 1, !tbaa !7
  %95 = extractelement <256 x i1> %79, i64 160
  %96 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 29
  %97 = zext i1 %95 to i8
  store i8 %97, ptr %96, align 1, !tbaa !7
  %98 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 30
  %i.ce = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 31
  %99 = extractelement <256 x i1> %79, i64 192
  %100 = zext i1 %99 to i8
  store i8 %100, ptr %98, align 1, !tbaa !7
  %101 = extractelement <256 x i1> %79, i64 224
  %102 = zext i1 %101 to i8
  store i8 %102, ptr %i.ce, align 1, !tbaa !7
  %i.cf = getelementptr inbounds nuw i8, ptr %.02530.i.i, i64 4 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 32 ; 2 uses
  %i.ch = add nuw nsw i32 %.031.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.ch, %i.w
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !12

_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEbEEvPKhPT0_iii.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i28.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEbEEvPKhPT0_iii.exit, label %.lr.ph.i28.i.i.epil.preheader

.lr.ph.i28.i.i.epil.preheader:                    ; preds = %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEbEEvPKhPT0_iii.exit.loopexit.unr-lcssa, %.lr.ph.i28.i.i.preheader
  %.024.i.i.i.epil.init = phi ptr [ %.026.lcssa.i.i, %.lr.ph.i28.i.i.preheader ], [ %i.bw, %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEbEEvPKhPT0_iii.exit.loopexit.unr-lcssa ]
  %.02223.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i28.i.i.preheader ], [ %i.bm, %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEbEEvPKhPT0_iii.exit.loopexit.unr-lcssa ]
  %lcmp.mod13 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod13)
  br label %.lr.ph.i28.i.i.epil

.lr.ph.i28.i.i.epil:                              ; preds = %.lr.ph.i28.i.i.epil, %.lr.ph.i28.i.i.epil.preheader
  %.024.i.i.i.epil = phi ptr [ %i.cs, %.lr.ph.i28.i.i.epil ], [ %.024.i.i.i.epil.init, %.lr.ph.i28.i.i.epil.preheader ] ; 2 uses
  %.02223.i.i.i.epil = phi i32 [ %i.cj, %.lr.ph.i28.i.i.epil ], [ %.02223.i.i.i.epil.init, %.lr.ph.i28.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i28.i.i.epil ], [ 0, %.lr.ph.i28.i.i.epil.preheader ]
  %i.ci = lshr i32 %.02223.i.i.i.epil, 3
  %i.cj = add nuw nsw i32 %.02223.i.i.i.epil, 1
  %i.ck = zext nneg i32 %i.ci to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %.025.lcssa.i.i, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = zext i8 %i.cm to i32
  %i.co = and i32 %.02223.i.i.i.epil, 7
  %i.cp = lshr i32 %i.cn, %i.co
  %i.cq = trunc nuw i32 %i.cp to i8
  %i.cr = and i8 %i.cq, 1
  store i8 %i.cr, ptr %.024.i.i.i.epil, align 1, !tbaa !7
  %i.cs = getelementptr inbounds nuw i8, ptr %.024.i.i.i.epil, i64 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEbEEvPKhPT0_iii.exit, label %.lr.ph.i28.i.i.epil, !llvm.loop !13

_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEbEEvPKhPT0_iii.exit: ; preds = %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEbEEvPKhPT0_iii.exit.loopexit.unr-lcssa, %.lr.ph.i28.i.i.epil, %bb.a, %bb.b, %._crit_edge.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow8internal11unpack_avx2IhEEvPKhPT_iii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
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
  switch i32 %3, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEhEEvPKhPT0_iii.exit [
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
  br label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEhEEvPKhPT0_iii.exit

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
  br i1 %.not.i.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEhEEvPKhPT0_iii.exit, label %.lr.ph.i28.i.i.preheader

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
  br i1 %niter.ncmp.3, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEhEEvPKhPT0_iii.exit.loopexit.unr-lcssa, label %.lr.ph.i28.i.i, !llvm.loop !17

.lr.ph.i.i:                                       ; preds = %_ZN5arrow8internal12unpack_exactILi1ELb1EhEEiPKhPT1_ii.exit.i.i, %.lr.ph.i.i
  %.031.i.i = phi i32 [ %i.dc, %.lr.ph.i.i ], [ 0, %_ZN5arrow8internal12unpack_exactILi1ELb1EhEEiPKhPT1_ii.exit.i.i ]
  %.02530.i.i = phi ptr [ %i.da, %.lr.ph.i.i ], [ %i.ae, %_ZN5arrow8internal12unpack_exactILi1ELb1EhEEiPKhPT1_ii.exit.i.i ] ; 2 uses
  %.02629.i.i = phi ptr [ %i.db, %.lr.ph.i.i ], [ %i.ag, %_ZN5arrow8internal12unpack_exactILi1ELb1EhEEiPKhPT1_ii.exit.i.i ] ; 3 uses
  %i.ci = load i32, ptr %.02530.i.i, align 1
  %i.cj = insertelement <8 x i32> poison, i32 %i.ci, i64 0
  %i.ck = shufflevector <8 x i32> %i.cj, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.cl = lshr <8 x i32> %i.ck, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cm = lshr <8 x i32> %i.ck, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cn = lshr <8 x i32> %i.ck, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
end_hunk_0
