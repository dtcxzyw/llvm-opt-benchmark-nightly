inline.NumInlined: 82
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"class.std::locale::id" = type { i64 }

@_ZN3fmt3v1212format_facetISt6localeE2idE = linkonce_odr hidden global %"class.std::locale::id" zeroinitializer, align 8
@_ZGVN3fmt3v1212format_facetISt6localeE2idE = linkonce_odr hidden local_unnamed_addr global i64 0, align 8
@_ZZN3dpxL24GetYCbCrToRGBColorMatrixENS_14CharacteristicEE6Rec601 = internal unnamed_addr constant [9 x float] [float 1.000000e+00, float 0.000000e+00, float 1.402000e+00, float 1.000000e+00, float -3.441360e-01, float -7.141360e-01, float 1.000000e+00, float -7.720000e-01, float 0.000000e+00], align 16
@_ZZN3dpxL24GetYCbCrToRGBColorMatrixENS_14CharacteristicEE6Rec709 = internal unnamed_addr constant [9 x float] [float 1.000000e+00, float 0.000000e+00, float 1.574800e+00, float 1.000000e+00, float -1.873240e-01, float -4.681240e-01, float 1.000000e+00, float 1.855600e+00, float 0.000000e+00], align 16
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN3fmt3v1212format_facetISt6localeE2idE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN3fmt3v1212format_facetISt6localeE2idE], section "llvm.metadata"
@switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20 = private unnamed_addr constant [4 x ptr] [ptr @_ZZN3dpxL24GetYCbCrToRGBColorMatrixENS_14CharacteristicEE6Rec709, ptr @_ZZN3dpxL24GetYCbCrToRGBColorMatrixENS_14CharacteristicEE6Rec709, ptr @_ZZN3dpxL24GetYCbCrToRGBColorMatrixENS_14CharacteristicEE6Rec601, ptr @_ZZN3dpxL24GetYCbCrToRGBColorMatrixENS_14CharacteristicEE6Rec601], align 8

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN3dpx18QueryRGBBufferSizeERKNS_6HeaderEiRKNS_5BlockE(ptr noundef nonnull align 4 dereferenceable(2049) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 {
bb.a:
  %or.cond.i = icmp ugt i32 %1, 7
  br i1 %or.cond.i, label %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = zext nneg i32 %1 to i64
  %i.b = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 800
  %i.d = load i8, ptr %i.c, align 4, !tbaa !7
  br label %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit

_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit:  ; preds = %bb.a, %bb.b
  %.0.i = phi i8 [ %i.d, %bb.b ], [ -1, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !11
  %i.g = load i32, ptr %2, align 4, !tbaa !13
  %i.h = add i32 %i.f, 1
  %i.i = sub i32 %i.h, %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !15
  %i.n = add i32 %i.k, 1
  %i.o = sub i32 %i.n, %i.m
  %i.p = mul nsw i32 %i.o, %i.i                   ; 5 uses
  %i.q = tail call noundef i32 @_ZNK3dpx13GenericHeader18ComponentByteCountEi(ptr noundef nonnull align 4 dereferenceable(1664) %0, i32 noundef %1) ; 5 uses
  switch i8 %.0.i, label %_ZN3dpxL26QueryRGBBufferSizeInternalENS_10DescriptorEii.exit [
    i8 100, label %bb.c
    i8 102, label %bb.d
    i8 50, label %bb.d
    i8 101, label %bb.e
    i8 103, label %bb.f
    i8 51, label %bb.f
    i8 52, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.g
    i8 3, label %bb.g
    i8 4, label %bb.g
    i8 6, label %bb.g
    i8 8, label %bb.g
  ]

bb.c:                                             ; preds = %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit
  %i.r = mul i32 %i.p, %i.q
  %i.s = mul i32 %i.r, 3
  br label %_ZN3dpxL26QueryRGBBufferSizeInternalENS_10DescriptorEii.exit

bb.d:                                             ; preds = %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit
  %i.t = mul i32 %i.p, %i.q
  %i.u = mul i32 %i.t, -3
  br label %_ZN3dpxL26QueryRGBBufferSizeInternalENS_10DescriptorEii.exit

bb.e:                                             ; preds = %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit
  %i.v = mul i32 %i.p, %i.q
  %i.w = shl i32 %i.v, 2
  br label %_ZN3dpxL26QueryRGBBufferSizeInternalENS_10DescriptorEii.exit

bb.f:                                             ; preds = %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit
  %i.x = mul i32 %i.p, %i.q
  %i.y = mul i32 %i.x, -4
  br label %_ZN3dpxL26QueryRGBBufferSizeInternalENS_10DescriptorEii.exit

bb.g:                                             ; preds = %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit
  %i.z = mul nsw i32 %i.p, %i.q
  br label %_ZN3dpxL26QueryRGBBufferSizeInternalENS_10DescriptorEii.exit

_ZN3dpxL26QueryRGBBufferSizeInternalENS_10DescriptorEii.exit: ; preds = %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i7 = phi i32 [ %i.z, %bb.g ], [ %i.s, %bb.c ], [ %i.u, %bb.d ], [ %i.w, %bb.e ], [ %i.y, %bb.f ], [ 0, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit ]
  ret i32 %.0.i7
}

declare noundef i32 @_ZNK3dpx13GenericHeader18ComponentByteCountEi(ptr noundef nonnull align 4 dereferenceable(1664), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE(ptr noundef nonnull align 4 dereferenceable(2049) %0, i32 noundef %1, ptr nofree noundef readonly %2, ptr nofree noundef writeonly %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4) local_unnamed_addr #0 {
bb.a:
  %or.cond.i = icmp ugt i32 %1, 7
  br i1 %or.cond.i, label %_ZNK3dpx13GenericHeader12ColorimetricEi.exit.thread, label %_ZNK3dpx13GenericHeader12ColorimetricEi.exit

_ZNK3dpx13GenericHeader12ColorimetricEi.exit.thread: ; preds = %bb.a
  %i.a = tail call noundef i32 @_ZNK3dpx13GenericHeader17ComponentDataSizeEi(ptr noundef nonnull align 4 dereferenceable(1664) %0, i32 noundef %1) ; 0 uses
  br label %bb.ap

_ZNK3dpx13GenericHeader12ColorimetricEi.exit:     ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64
  %i.c = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 800
  %i.e = load i8, ptr %i.d, align 4, !tbaa !7
  %i.f = tail call noundef i32 @_ZNK3dpx13GenericHeader17ComponentDataSizeEi(ptr noundef nonnull align 4 dereferenceable(1664) %0, i32 noundef %1) ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 802
  %i.h = load i8, ptr %i.g, align 2, !tbaa !16    ; 20 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !11
  %i.k = load i32, ptr %4, align 4, !tbaa !13
  %i.l = add i32 %i.j, 1
  %i.m = sub i32 %i.l, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !15
  %i.r = add i32 %i.o, 1
  %i.s = sub i32 %i.r, %i.q
  %i.t = mul i32 %i.s, %i.m                       ; 68 uses
  switch i8 %i.e, label %bb.ap [
    i8 50, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit
    i8 51, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit
    i8 52, label %bb.b
    i8 100, label %bb.h
    i8 102, label %bb.s
    i8 101, label %bb.y
    i8 103, label %bb.aj
  ]

bb.b:                                             ; preds = %_ZNK3dpx13GenericHeader12ColorimetricEi.exit
  switch i32 %i.f, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph.preheader.i.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %wide.trip.count.i.i = zext nneg i32 %i.t to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.v = shl nuw nsw i64 %indvars.iv.i.i, 2       ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %i.v ; 2 uses
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.w, align 1
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %.sroa.4.0.copyload.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i, align 1
  %i.x = or disjoint i64 %i.v, 3                  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 %i.v ; 2 uses
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !17
  %i.ab = or disjoint i64 %i.v, 2                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !17
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 %i.ab
  store i8 %.sroa.4.0.copyload.i.i, ptr %i.af, align 1, !tbaa !17
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 %i.x
  store i8 %.sroa.0.0.copyload.i.i, ptr %i.ag, align 1, !tbaa !17
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %.lr.ph.i.i, !llvm.loop !18

bb.d:                                             ; preds = %bb.b
  %i.ah = icmp sgt i32 %i.t, 0
  br i1 %i.ah, label %.lr.ph.preheader.i101.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.preheader.i101.i:                          ; preds = %bb.d
  %wide.trip.count.i102.i = zext nneg i32 %i.t to i64 ; 2 uses
  %xtraiter588 = and i64 %wide.trip.count.i102.i, 1
  %i.ai = icmp eq i32 %i.t, 1
  br i1 %i.ai, label %.lr.ph.i103.i.epil.preheader, label %.lr.ph.preheader.i101.i.new

.lr.ph.preheader.i101.i.new:                      ; preds = %.lr.ph.preheader.i101.i
  %unroll_iter591 = and i64 %wide.trip.count.i102.i, 2147483646
  br label %.lr.ph.i103.i

.lr.ph.i103.i:                                    ; preds = %.lr.ph.i103.i, %.lr.ph.preheader.i101.i.new
  %indvars.iv.i104.i = phi i64 [ 0, %.lr.ph.preheader.i101.i.new ], [ %indvars.iv.next.i108.i.1, %.lr.ph.i103.i ] ; 3 uses
  %niter592 = phi i64 [ 0, %.lr.ph.preheader.i101.i.new ], [ %niter592.next.1, %.lr.ph.i103.i ]
  %i.aj = shl nuw nsw i64 %indvars.iv.i104.i, 2   ; 4 uses
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.aj
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 6
  %i.an = load i16, ptr %i.am, align 2, !tbaa !20
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.aj ; 2 uses
  %i.ap = or disjoint i64 %i.aj, 2                ; 2 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ap
  %i.at = load <2 x i16>, ptr %i.ak, align 2
  store i16 %i.an, ptr %i.ao, align 2, !tbaa !20
  %i.au = load i16, ptr %i.aq, align 2, !tbaa !20
  store i16 %i.au, ptr %i.ar, align 2, !tbaa !20
  %i.av = shufflevector <2 x i16> %i.at, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i16> %i.av, ptr %i.as, align 2, !tbaa !20
  %indvars.iv.next.i108.i = shl i64 %indvars.iv.i104.i, 2 ; 2 uses
  %i.aw = or disjoint i64 %indvars.iv.next.i108.i, 4 ; 3 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.aw
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.aw
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 6
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !20
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.aw ; 2 uses
  %i.bc = or disjoint i64 %indvars.iv.next.i108.i, 6 ; 2 uses
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bc
  %i.bg = load <2 x i16>, ptr %i.ax, align 2
  store i16 %i.ba, ptr %i.bb, align 2, !tbaa !20
  %i.bh = load i16, ptr %i.bd, align 2, !tbaa !20
  store i16 %i.bh, ptr %i.be, align 2, !tbaa !20
  %i.bi = shufflevector <2 x i16> %i.bg, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i16> %i.bi, ptr %i.bf, align 2, !tbaa !20
  %indvars.iv.next.i108.i.1 = add nuw nsw i64 %indvars.iv.i104.i, 2 ; 2 uses
  %niter592.next.1 = add i64 %niter592, 2         ; 2 uses
  %niter592.ncmp.1 = icmp eq i64 %niter592.next.1, %unroll_iter591
  br i1 %niter592.ncmp.1, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit553.unr-lcssa, label %.lr.ph.i103.i, !llvm.loop !21

bb.e:                                             ; preds = %bb.b
  %i.bj = icmp sgt i32 %i.t, 0
  br i1 %i.bj, label %.lr.ph.preheader.i110.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.preheader.i110.i:                          ; preds = %bb.e
  %wide.trip.count.i111.i = zext nneg i32 %i.t to i64 ; 2 uses
  %xtraiter583 = and i64 %wide.trip.count.i111.i, 1
  %i.bk = icmp eq i32 %i.t, 1
  br i1 %i.bk, label %.lr.ph.i112.i.epil.preheader, label %.lr.ph.preheader.i110.i.new

.lr.ph.preheader.i110.i.new:                      ; preds = %.lr.ph.preheader.i110.i
  %unroll_iter586 = and i64 %wide.trip.count.i111.i, 2147483646
  br label %.lr.ph.i112.i

.lr.ph.i112.i:                                    ; preds = %.lr.ph.i112.i, %.lr.ph.preheader.i110.i.new
  %indvars.iv.i113.i = phi i64 [ 0, %.lr.ph.preheader.i110.i.new ], [ %indvars.iv.next.i117.i.1, %.lr.ph.i112.i ] ; 3 uses
  %niter587 = phi i64 [ 0, %.lr.ph.preheader.i110.i.new ], [ %niter587.next.1, %.lr.ph.i112.i ]
  %i.bl = shl nuw nsw i64 %indvars.iv.i113.i, 2   ; 4 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bl
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bl
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bl ; 2 uses
  %i.br = or disjoint i64 %i.bl, 2                ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.br
  %i.bv = load <2 x i32>, ptr %i.bm, align 4
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !3
  %i.bw = load i32, ptr %i.bs, align 4, !tbaa !3
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !3
  %i.bx = shufflevector <2 x i32> %i.bv, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.bx, ptr %i.bu, align 4, !tbaa !3
  %indvars.iv.next.i117.i = shl i64 %indvars.iv.i113.i, 2 ; 2 uses
  %i.by = or disjoint i64 %indvars.iv.next.i117.i, 4 ; 3 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.by
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.by
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.by ; 2 uses
  %i.ce = or disjoint i64 %indvars.iv.next.i117.i, 6 ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ce
  %i.ci = load <2 x i32>, ptr %i.bz, align 4
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !3
  %i.cj = load i32, ptr %i.cf, align 4, !tbaa !3
  store i32 %i.cj, ptr %i.cg, align 4, !tbaa !3
  %i.ck = shufflevector <2 x i32> %i.ci, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.ck, ptr %i.ch, align 4, !tbaa !3
  %indvars.iv.next.i117.i.1 = add nuw nsw i64 %indvars.iv.i113.i, 2 ; 2 uses
  %niter587.next.1 = add i64 %niter587, 2         ; 2 uses
  %niter587.ncmp.1 = icmp eq i64 %niter587.next.1, %unroll_iter586
  br i1 %niter587.ncmp.1, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit554.unr-lcssa, label %.lr.ph.i112.i, !llvm.loop !22

bb.f:                                             ; preds = %bb.b
  %i.cl = icmp sgt i32 %i.t, 0
  br i1 %i.cl, label %.lr.ph.preheader.i119.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.preheader.i119.i:                          ; preds = %bb.f
  %wide.trip.count.i120.i = zext nneg i32 %i.t to i64 ; 2 uses
  %xtraiter578 = and i64 %wide.trip.count.i120.i, 1
  %i.cm = icmp eq i32 %i.t, 1
  br i1 %i.cm, label %.lr.ph.i121.i.epil.preheader, label %.lr.ph.preheader.i119.i.new

.lr.ph.preheader.i119.i.new:                      ; preds = %.lr.ph.preheader.i119.i
  %unroll_iter581 = and i64 %wide.trip.count.i120.i, 2147483646
  br label %.lr.ph.i121.i

.lr.ph.i121.i:                                    ; preds = %.lr.ph.i121.i, %.lr.ph.preheader.i119.i.new
  %indvars.iv.i122.i = phi i64 [ 0, %.lr.ph.preheader.i119.i.new ], [ %indvars.iv.next.i126.i.1, %.lr.ph.i121.i ] ; 3 uses
  %niter582 = phi i64 [ 0, %.lr.ph.preheader.i119.i.new ], [ %niter582.next.1, %.lr.ph.i121.i ]
  %i.cn = shl nuw nsw i64 %indvars.iv.i122.i, 2   ; 4 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cn
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cn
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !23
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cn ; 2 uses
  %i.ct = or disjoint i64 %i.cn, 2                ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ct
  %i.cx = load <2 x float>, ptr %i.co, align 4
  store float %i.cr, ptr %i.cs, align 4, !tbaa !23
  %i.cy = load float, ptr %i.cu, align 4, !tbaa !23
  store float %i.cy, ptr %i.cv, align 4, !tbaa !23
  %i.cz = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.cz, ptr %i.cw, align 4, !tbaa !23
  %indvars.iv.next.i126.i = shl i64 %indvars.iv.i122.i, 2 ; 2 uses
  %i.da = or disjoint i64 %indvars.iv.next.i126.i, 4 ; 3 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.da
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.da
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  %i.de = load float, ptr %i.dd, align 4, !tbaa !23
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.da ; 2 uses
  %i.dg = or disjoint i64 %indvars.iv.next.i126.i, 6 ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dg
  %i.dk = load <2 x float>, ptr %i.db, align 4
  store float %i.de, ptr %i.df, align 4, !tbaa !23
  %i.dl = load float, ptr %i.dh, align 4, !tbaa !23
  store float %i.dl, ptr %i.di, align 4, !tbaa !23
  %i.dm = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.dm, ptr %i.dj, align 4, !tbaa !23
  %indvars.iv.next.i126.i.1 = add nuw nsw i64 %indvars.iv.i122.i, 2 ; 2 uses
  %niter582.next.1 = add i64 %niter582, 2         ; 2 uses
  %niter582.ncmp.1 = icmp eq i64 %niter582.next.1, %unroll_iter581
  br i1 %niter582.ncmp.1, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit555.unr-lcssa, label %.lr.ph.i121.i, !llvm.loop !24

bb.g:                                             ; preds = %bb.b
  %i.dn = icmp sgt i32 %i.t, 0
  br i1 %i.dn, label %.lr.ph.preheader.i128.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.preheader.i128.i:                          ; preds = %bb.g
  %wide.trip.count.i129.i = zext nneg i32 %i.t to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i129.i, 1
  %i.do = icmp eq i32 %i.t, 1
  br i1 %i.do, label %.lr.ph.i130.i.epil.preheader, label %.lr.ph.preheader.i128.i.new

.lr.ph.preheader.i128.i.new:                      ; preds = %.lr.ph.preheader.i128.i
  %unroll_iter = and i64 %wide.trip.count.i129.i, 2147483646
  br label %.lr.ph.i130.i

.lr.ph.i130.i:                                    ; preds = %.lr.ph.i130.i, %.lr.ph.preheader.i128.i.new
  %indvars.iv.i131.i = phi i64 [ 0, %.lr.ph.preheader.i128.i.new ], [ %indvars.iv.next.i135.i.1, %.lr.ph.i130.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i128.i.new ], [ %niter.next.1, %.lr.ph.i130.i ]
  %i.dp = shl nuw nsw i64 %indvars.iv.i131.i, 2   ; 4 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.dp
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.dp
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !25
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dp ; 2 uses
  %i.dv = or disjoint i64 %i.dp, 2                ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dv
  %i.dz = load <2 x double>, ptr %i.dq, align 8
  store double %i.dt, ptr %i.du, align 8, !tbaa !25
  %i.ea = load double, ptr %i.dw, align 8, !tbaa !25
  store double %i.ea, ptr %i.dx, align 8, !tbaa !25
  %i.eb = shufflevector <2 x double> %i.dz, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.eb, ptr %i.dy, align 8, !tbaa !25
  %indvars.iv.next.i135.i = shl i64 %indvars.iv.i131.i, 2 ; 2 uses
  %i.ec = or disjoint i64 %indvars.iv.next.i135.i, 4 ; 3 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ec
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ec
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !25
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ec ; 2 uses
  %i.ei = or disjoint i64 %indvars.iv.next.i135.i, 6 ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ei
  %i.em = load <2 x double>, ptr %i.ed, align 8
  store double %i.eg, ptr %i.eh, align 8, !tbaa !25
  %i.en = load double, ptr %i.ej, align 8, !tbaa !25
  store double %i.en, ptr %i.ek, align 8, !tbaa !25
  %i.eo = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.eo, ptr %i.el, align 8, !tbaa !25
  %indvars.iv.next.i135.i.1 = add nuw nsw i64 %indvars.iv.i131.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit556.unr-lcssa, label %.lr.ph.i130.i, !llvm.loop !27

bb.h:                                             ; preds = %_ZNK3dpx13GenericHeader12ColorimetricEi.exit
  switch i32 %i.f, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit [
    i32 0, label %bb.i
    i32 1, label %bb.k
    i32 2, label %bb.m
    i32 3, label %bb.o
    i32 4, label %bb.q
  ]

bb.i:                                             ; preds = %bb.h
  %switch.tableidx = add i8 %i.h, -5              ; 2 uses
  %i.ep = icmp ult i8 %switch.tableidx, 4
  br i1 %i.ep, label %switch.lookup, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup:                                    ; preds = %bb.i
  %i.eq = icmp sgt i32 %i.t, 0
  br i1 %i.eq, label %.lr.ph.i137.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i137.i:                                    ; preds = %switch.lookup
  %i.er = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.er
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 5 uses
  %i.es = getelementptr inbounds nuw i8, ptr %switch.load, i64 16
  %i.et = load <4 x float>, ptr %switch.load, align 16, !tbaa !23 ; 3 uses
  %i.eu = load <2 x float>, ptr %i.es, align 16, !tbaa !23 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %switch.load, i64 24
  %i.ew = load float, ptr %i.ev, align 8, !tbaa !23
  %i.ex = getelementptr inbounds nuw i8, ptr %switch.load, i64 28
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !23
  %i.ez = getelementptr inbounds nuw i8, ptr %switch.load, i64 32
  %i.fa = load float, ptr %i.ez, align 16, !tbaa !23
  %wide.trip.count.i138.i = zext nneg i32 %i.t to i64
  %i.fb = shufflevector <4 x float> %i.et, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.fc = shufflevector <4 x float> %i.et, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.fd = shufflevector <2 x float> %i.eu, <2 x float> %i.fc, <2 x i32> <i32 1, i32 3>
  %i.fe = shufflevector <2 x float> %i.eu, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ff = shufflevector <4 x float> %i.fe, <4 x float> %i.et, <2 x i32> <i32 0, i32 5>
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i137.i
  %indvars.iv.i139.i = phi i64 [ 0, %.lr.ph.i137.i ], [ %indvars.iv.next.i140.i, %bb.j ] ; 4 uses
  %i.fg = shl nuw nsw i64 %indvars.iv.i139.i, 1
  %i.fh = shl nuw i64 %indvars.iv.i139.i, 33
  %sext.i.i = ashr exact i64 %i.fh, 32            ; 2 uses
  %i.fi = or i64 %sext.i.i, 2
  %i.fj = getelementptr inbounds i8, ptr %2, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !17
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 %i.fg
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !17
  %i.fo = and i64 %sext.i.i, -4
  %i.fp = getelementptr inbounds i8, ptr %2, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !17
  %i.fr = mul nuw nsw i64 %indvars.iv.i139.i, 3
  %i.fs = getelementptr inbounds nuw i8, ptr %3, i64 %i.fr ; 3 uses
  %i.ft = uitofp i8 %i.fn to float                ; 2 uses
  %i.fu = uitofp i8 %i.fk to float
  %i.fv = fadd nnan float %i.fu, -1.275000e+02    ; 2 uses
  %i.fw = uitofp i8 %i.fq to float
  %i.fx = fadd float %i.fw, -1.275000e+02         ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fs, i64 2
  %i.fz = insertelement <2 x float> poison, float %i.fv, i64 0
  %i.ga = shufflevector <2 x float> %i.fz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gb = fmul <2 x float> %i.ff, %i.ga
  %i.gc = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.gd = shufflevector <2 x float> %i.gc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ge = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fb, <2 x float> %i.gd, <2 x float> %i.gb)
  %i.gf = insertelement <2 x float> poison, float %i.fx, i64 0
  %i.gg = shufflevector <2 x float> %i.gf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fd, <2 x float> %i.gg, <2 x float> %i.ge) ; 3 uses
  %i.gi = fcmp ogt <2 x float> %i.gh, splat (float 2.550000e+02) ; 2 uses
  %i.gj = extractelement <2 x i1> %i.gi, i64 1
  %i.gk = extractelement <2 x float> %i.gh, i64 1
  %i.gl = fptoui float %i.gk to i8
  %i.gm = select i1 %i.gj, i8 -1, i8 %i.gl
  store i8 %i.gm, ptr %i.fy, align 1, !tbaa !17
  %i.gn = extractelement <2 x i1> %i.gi, i64 0
  %i.go = extractelement <2 x float> %i.gh, i64 0
  %i.gp = fptoui float %i.go to i8
  %i.gq = select i1 %i.gn, i8 -1, i8 %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fs, i64 1
  store i8 %i.gq, ptr %i.gr, align 1, !tbaa !17
  %i.gs = fmul float %i.ey, %i.fv
  %i.gt = tail call float @llvm.fmuladd.f32(float %i.ew, float %i.ft, float %i.gs)
  %i.gu = tail call float @llvm.fmuladd.f32(float %i.fa, float %i.fx, float %i.gt) ; 2 uses
  %i.gv = fcmp ogt float %i.gu, 2.550000e+02
  %.sroa.speculated.2.i.i.i = select i1 %i.gv, float 2.550000e+02, float %i.gu
  %i.gw = fptoui float %.sroa.speculated.2.i.i.i to i8
  store i8 %i.gw, ptr %i.fs, align 1, !tbaa !17
  %indvars.iv.next.i140.i = add nuw nsw i64 %indvars.iv.i139.i, 1 ; 2 uses
  %exitcond.not.i141.i = icmp eq i64 %indvars.iv.next.i140.i, %wide.trip.count.i138.i
  br i1 %exitcond.not.i141.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.j, !llvm.loop !28

bb.k:                                             ; preds = %bb.h
  %switch.tableidx477 = add i8 %i.h, -5           ; 2 uses
  %i.gx = icmp ult i8 %switch.tableidx477, 4
  br i1 %i.gx, label %switch.lookup478, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup478:                                 ; preds = %bb.k
  %i.gy = icmp sgt i32 %i.t, 0
  br i1 %i.gy, label %.lr.ph.i143.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i143.i:                                    ; preds = %switch.lookup478
  %i.gz = zext nneg i8 %switch.tableidx477 to i64
  %switch.gep479 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.gz
  %switch.load480 = load ptr, ptr %switch.gep479, align 8 ; 5 uses
  %i.ha = load float, ptr %switch.load480, align 16, !tbaa !23
  %i.hb = getelementptr inbounds nuw i8, ptr %switch.load480, i64 4
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !23
  %i.hd = getelementptr inbounds nuw i8, ptr %switch.load480, i64 8
  %i.he = load float, ptr %i.hd, align 8, !tbaa !23
  %i.hf = getelementptr inbounds nuw i8, ptr %switch.load480, i64 12
  %i.hg = getelementptr inbounds nuw i8, ptr %switch.load480, i64 28
  %i.hh = load <4 x float>, ptr %i.hf, align 4, !tbaa !23 ; 3 uses
  %i.hi = load <2 x float>, ptr %i.hg, align 4, !tbaa !23 ; 2 uses
  %wide.trip.count.i144.i = zext nneg i32 %i.t to i64
  %i.hj = shufflevector <4 x float> %i.hh, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.hk = shufflevector <4 x float> %i.hh, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.hl = shufflevector <2 x float> %i.hi, <2 x float> %i.hk, <2 x i32> <i32 1, i32 3>
  %i.hm = shufflevector <2 x float> %i.hi, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.hn = shufflevector <4 x float> %i.hm, <4 x float> %i.hh, <2 x i32> <i32 0, i32 5>
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i143.i
  %indvars.iv.i145.i = phi i64 [ 0, %.lr.ph.i143.i ], [ %indvars.iv.next.i151.i, %bb.l ] ; 4 uses
  %i.ho = shl nuw i64 %indvars.iv.i145.i, 33
  %sext.i146.i = ashr exact i64 %i.ho, 32         ; 2 uses
  %i.hp = or i64 %sext.i146.i, 2
  %i.hq = getelementptr inbounds [2 x i8], ptr %2, i64 %i.hp
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !20
  %.idx.i.i = shl nuw nsw i64 %indvars.iv.i145.i, 2
  %i.hs = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 2
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !20
  %i.hv = and i64 %sext.i146.i, -4
  %i.hw = getelementptr inbounds [2 x i8], ptr %2, i64 %i.hv
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !20
  %.idx27.i.i = mul nuw nsw i64 %indvars.iv.i145.i, 6
  %i.hy = getelementptr inbounds nuw i8, ptr %3, i64 %.idx27.i.i ; 2 uses
  %i.hz = uitofp i16 %i.hu to float               ; 2 uses
  %i.ia = uitofp i16 %i.hr to float
  %i.ib = fadd nnan float %i.ia, -3.276750e+04    ; 2 uses
  %i.ic = fmul float %i.hc, %i.ib
  %i.id = tail call float @llvm.fmuladd.f32(float %i.ha, float %i.hz, float %i.ic)
  %i.ie = uitofp i16 %i.hx to float
  %i.if = fadd float %i.ie, -3.276750e+04         ; 2 uses
  %i.ig = tail call float @llvm.fmuladd.f32(float %i.he, float %i.if, float %i.id) ; 2 uses
  %i.ih = fcmp ogt float %i.ig, 6.553500e+04
  %.sroa.speculated.i.i148.i = select i1 %i.ih, float 6.553500e+04, float %i.ig
  %i.ii = fptoui float %.sroa.speculated.i.i148.i to i16
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hy, i64 4
  store i16 %i.ii, ptr %i.ij, align 2, !tbaa !20
  %i.ik = insertelement <2 x float> poison, float %i.ib, i64 0
  %i.il = shufflevector <2 x float> %i.ik, <2 x float> poison, <2 x i32> zeroinitializer
  %i.im = fmul <2 x float> %i.hn, %i.il
  %i.in = insertelement <2 x float> poison, float %i.hz, i64 0
  %i.io = shufflevector <2 x float> %i.in, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ip = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hj, <2 x float> %i.io, <2 x float> %i.im)
  %i.iq = insertelement <2 x float> poison, float %i.if, i64 0
  %i.ir = shufflevector <2 x float> %i.iq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.is = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hl, <2 x float> %i.ir, <2 x float> %i.ip) ; 2 uses
  %i.it = fcmp ogt <2 x float> %i.is, splat (float 6.553500e+04)
  %i.iu = select <2 x i1> %i.it, <2 x float> splat (float 6.553500e+04), <2 x float> %i.is
  %i.iv = fptoui <2 x float> %i.iu to <2 x i16>
  store <2 x i16> %i.iv, ptr %i.hy, align 2, !tbaa !20
  %indvars.iv.next.i151.i = add nuw nsw i64 %indvars.iv.i145.i, 1 ; 2 uses
  %exitcond.not.i152.i = icmp eq i64 %indvars.iv.next.i151.i, %wide.trip.count.i144.i
  br i1 %exitcond.not.i152.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.l, !llvm.loop !29

bb.m:                                             ; preds = %bb.h
  %switch.tableidx481 = add i8 %i.h, -5           ; 2 uses
  %i.iw = icmp ult i8 %switch.tableidx481, 4
  br i1 %i.iw, label %switch.lookup482, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup482:                                 ; preds = %bb.m
  %i.ix = icmp sgt i32 %i.t, 0
  br i1 %i.ix, label %.lr.ph.i154.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i154.i:                                    ; preds = %switch.lookup482
  %i.iy = zext nneg i8 %switch.tableidx481 to i64
  %switch.gep483 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.iy
  %switch.load484 = load ptr, ptr %switch.gep483, align 8 ; 5 uses
  %i.iz = load float, ptr %switch.load484, align 16, !tbaa !23
  %i.ja = getelementptr inbounds nuw i8, ptr %switch.load484, i64 4
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !23
  %i.jc = getelementptr inbounds nuw i8, ptr %switch.load484, i64 8
  %i.jd = load float, ptr %i.jc, align 8, !tbaa !23
  %i.je = getelementptr inbounds nuw i8, ptr %switch.load484, i64 12
  %i.jf = getelementptr inbounds nuw i8, ptr %switch.load484, i64 28
  %i.jg = load <4 x float>, ptr %i.je, align 4, !tbaa !23 ; 3 uses
  %i.jh = load <2 x float>, ptr %i.jf, align 4, !tbaa !23 ; 2 uses
  %wide.trip.count.i155.i = zext nneg i32 %i.t to i64
  %i.ji = shufflevector <4 x float> %i.jg, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.jj = shufflevector <4 x float> %i.jg, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.jk = shufflevector <2 x float> %i.jh, <2 x float> %i.jj, <2 x i32> <i32 1, i32 3>
  %i.jl = shufflevector <2 x float> %i.jh, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.jm = shufflevector <4 x float> %i.jl, <4 x float> %i.jg, <2 x i32> <i32 0, i32 5>
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i154.i
  %indvars.iv.i156.i = phi i64 [ 0, %.lr.ph.i154.i ], [ %indvars.iv.next.i164.i, %bb.n ] ; 4 uses
  %i.jn = shl nuw i64 %indvars.iv.i156.i, 33
  %sext.i157.i = ashr exact i64 %i.jn, 32         ; 2 uses
  %i.jo = or i64 %sext.i157.i, 2
  %i.jp = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jo
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !3
  %.idx.i158.i = shl nuw nsw i64 %indvars.iv.i156.i, 3
  %i.jr = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i158.i
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 4
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !3
  %i.ju = and i64 %sext.i157.i, -4
  %i.jv = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ju
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !3
  %.idx27.i160.i = mul nuw nsw i64 %indvars.iv.i156.i, 12
  %i.jx = getelementptr inbounds nuw i8, ptr %3, i64 %.idx27.i160.i ; 2 uses
  %i.jy = uitofp i32 %i.jt to float               ; 2 uses
  %i.jz = uitofp i32 %i.jq to float
  %i.ka = fadd nnan float %i.jz, f0xCF000000      ; 2 uses
  %i.kb = fmul float %i.jb, %i.ka
  %i.kc = tail call float @llvm.fmuladd.f32(float %i.iz, float %i.jy, float %i.kb)
  %i.kd = uitofp i32 %i.jw to float
  %i.ke = fadd float %i.kd, f0xCF000000           ; 2 uses
  %i.kf = tail call float @llvm.fmuladd.f32(float %i.jd, float %i.ke, float %i.kc) ; 2 uses
  %i.kg = fcmp ogt float %i.kf, f0x4F800000
  %.sroa.speculated.i.i161.i = select i1 %i.kg, float f0x4F800000, float %i.kf
  %i.kh = fptoui float %.sroa.speculated.i.i161.i to i32
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  store i32 %i.kh, ptr %i.ki, align 4, !tbaa !3
  %i.kj = insertelement <2 x float> poison, float %i.ka, i64 0
  %i.kk = shufflevector <2 x float> %i.kj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kl = fmul <2 x float> %i.jm, %i.kk
  %i.km = insertelement <2 x float> poison, float %i.jy, i64 0
  %i.kn = shufflevector <2 x float> %i.km, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ko = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ji, <2 x float> %i.kn, <2 x float> %i.kl)
  %i.kp = insertelement <2 x float> poison, float %i.ke, i64 0
  %i.kq = shufflevector <2 x float> %i.kp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jk, <2 x float> %i.kq, <2 x float> %i.ko) ; 2 uses
  %i.ks = fcmp ogt <2 x float> %i.kr, splat (float f0x4F800000)
  %i.kt = select <2 x i1> %i.ks, <2 x float> splat (float f0x4F800000), <2 x float> %i.kr
  %i.ku = fptoui <2 x float> %i.kt to <2 x i32>
  store <2 x i32> %i.ku, ptr %i.jx, align 4, !tbaa !3
  %indvars.iv.next.i164.i = add nuw nsw i64 %indvars.iv.i156.i, 1 ; 2 uses
  %exitcond.not.i165.i = icmp eq i64 %indvars.iv.next.i164.i, %wide.trip.count.i155.i
  br i1 %exitcond.not.i165.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.n, !llvm.loop !30

bb.o:                                             ; preds = %bb.h
  %switch.tableidx485 = add i8 %i.h, -5           ; 2 uses
  %i.kv = icmp ult i8 %switch.tableidx485, 4
  br i1 %i.kv, label %switch.lookup486, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup486:                                 ; preds = %bb.o
  %i.kw = icmp sgt i32 %i.t, 0
  br i1 %i.kw, label %.lr.ph.i167.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i167.i:                                    ; preds = %switch.lookup486
  %i.kx = zext nneg i8 %switch.tableidx485 to i64
  %switch.gep487 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.kx
  %switch.load488 = load ptr, ptr %switch.gep487, align 8 ; 5 uses
  %i.ky = load float, ptr %switch.load488, align 16, !tbaa !23
  %i.kz = getelementptr inbounds nuw i8, ptr %switch.load488, i64 4
  %i.la = load float, ptr %i.kz, align 4, !tbaa !23
  %i.lb = getelementptr inbounds nuw i8, ptr %switch.load488, i64 8
  %i.lc = load float, ptr %i.lb, align 8, !tbaa !23
  %i.ld = getelementptr inbounds nuw i8, ptr %switch.load488, i64 12
  %i.le = getelementptr inbounds nuw i8, ptr %switch.load488, i64 28
  %i.lf = load <4 x float>, ptr %i.ld, align 4, !tbaa !23 ; 3 uses
  %i.lg = load <2 x float>, ptr %i.le, align 4, !tbaa !23 ; 2 uses
  %wide.trip.count.i168.i = zext nneg i32 %i.t to i64
  %i.lh = shufflevector <4 x float> %i.lf, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.li = shufflevector <4 x float> %i.lf, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.lj = shufflevector <2 x float> %i.lg, <2 x float> %i.li, <2 x i32> <i32 1, i32 3>
  %i.lk = shufflevector <2 x float> %i.lg, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ll = shufflevector <4 x float> %i.lk, <4 x float> %i.lf, <2 x i32> <i32 0, i32 5>
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i167.i
  %indvars.iv.i169.i = phi i64 [ 0, %.lr.ph.i167.i ], [ %indvars.iv.next.i177.i, %bb.p ] ; 4 uses
  %i.lm = shl nuw i64 %indvars.iv.i169.i, 33
  %sext.i170.i = ashr exact i64 %i.lm, 32         ; 2 uses
  %i.ln = or i64 %sext.i170.i, 2
  %i.lo = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ln
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !23
  %.idx.i171.i = shl nuw nsw i64 %indvars.iv.i169.i, 3
  %i.lq = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i171.i
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 4
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !23 ; 2 uses
  %i.lt = and i64 %sext.i170.i, -4
  %i.lu = getelementptr inbounds [4 x i8], ptr %2, i64 %i.lt
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !23
  %.idx27.i173.i = mul nuw nsw i64 %indvars.iv.i169.i, 12
  %i.lw = getelementptr inbounds nuw i8, ptr %3, i64 %.idx27.i173.i ; 2 uses
  %i.lx = fadd float %i.lp, -5.000000e-01         ; 2 uses
  %i.ly = fmul float %i.la, %i.lx
  %i.lz = tail call float @llvm.fmuladd.f32(float %i.ky, float %i.ls, float %i.ly)
  %i.ma = fadd float %i.lv, -5.000000e-01         ; 2 uses
  %i.mb = tail call float @llvm.fmuladd.f32(float %i.lc, float %i.ma, float %i.lz) ; 2 uses
  %i.mc = fcmp ogt float %i.mb, 1.000000e+00
  %.sroa.speculated.i.i174.i = select i1 %i.mc, float 1.000000e+00, float %i.mb ; 2 uses
  %i.md = fcmp ogt float %.sroa.speculated.i.i174.i, 0.000000e+00
  %.sroa.speculated14.i.i.i = select i1 %i.md, float %.sroa.speculated.i.i174.i, float 0.000000e+00
  %i.me = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  store float %.sroa.speculated14.i.i.i, ptr %i.me, align 4, !tbaa !23
  %i.mf = insertelement <2 x float> poison, float %i.lx, i64 0
  %i.mg = shufflevector <2 x float> %i.mf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mh = fmul <2 x float> %i.ll, %i.mg
  %i.mi = insertelement <2 x float> poison, float %i.ls, i64 0
  %i.mj = shufflevector <2 x float> %i.mi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lh, <2 x float> %i.mj, <2 x float> %i.mh)
  %i.ml = insertelement <2 x float> poison, float %i.ma, i64 0
  %i.mm = shufflevector <2 x float> %i.ml, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lj, <2 x float> %i.mm, <2 x float> %i.mk) ; 2 uses
  %i.mo = fcmp ogt <2 x float> %i.mn, splat (float 1.000000e+00)
  %i.mp = select <2 x i1> %i.mo, <2 x float> splat (float 1.000000e+00), <2 x float> %i.mn ; 2 uses
  %i.mq = fcmp ogt <2 x float> %i.mp, zeroinitializer
  %i.mr = select <2 x i1> %i.mq, <2 x float> %i.mp, <2 x float> zeroinitializer
  store <2 x float> %i.mr, ptr %i.lw, align 4, !tbaa !23
  %indvars.iv.next.i177.i = add nuw nsw i64 %indvars.iv.i169.i, 1 ; 2 uses
  %exitcond.not.i178.i = icmp eq i64 %indvars.iv.next.i177.i, %wide.trip.count.i168.i
  br i1 %exitcond.not.i178.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.p, !llvm.loop !31

bb.q:                                             ; preds = %bb.h
  %switch.tableidx489 = add i8 %i.h, -5           ; 2 uses
  %i.ms = icmp ult i8 %switch.tableidx489, 4
  br i1 %i.ms, label %switch.lookup490, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup490:                                 ; preds = %bb.q
  %i.mt = icmp sgt i32 %i.t, 0
  br i1 %i.mt, label %.lr.ph.i180.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i180.i:                                    ; preds = %switch.lookup490
  %i.mu = zext nneg i8 %switch.tableidx489 to i64
  %switch.gep491 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.mu
  %switch.load492 = load ptr, ptr %switch.gep491, align 8 ; 5 uses
  %i.mv = load float, ptr %switch.load492, align 16, !tbaa !23
  %i.mw = fpext float %i.mv to double
  %i.mx = getelementptr inbounds nuw i8, ptr %switch.load492, i64 4
  %i.my = load float, ptr %i.mx, align 4, !tbaa !23
  %i.mz = getelementptr inbounds nuw i8, ptr %switch.load492, i64 8
  %i.na = load float, ptr %i.mz, align 8, !tbaa !23
  %i.nb = getelementptr inbounds nuw i8, ptr %switch.load492, i64 12
  %i.nc = getelementptr inbounds nuw i8, ptr %switch.load492, i64 28
  %i.nd = load <4 x float>, ptr %i.nb, align 4, !tbaa !23 ; 3 uses
  %i.ne = shufflevector <4 x float> %i.nd, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.nf = fpext <2 x float> %i.ne to <2 x double>
  %i.ng = load <2 x float>, ptr %i.nc, align 4, !tbaa !23 ; 2 uses
  %wide.trip.count.i181.i = zext nneg i32 %i.t to i64
  %i.nh = shufflevector <2 x float> %i.ng, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ni = shufflevector <4 x float> %i.nh, <4 x float> %i.nd, <2 x i32> <i32 0, i32 5>
  %i.nj = shufflevector <4 x float> %i.nd, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.nk = shufflevector <2 x float> %i.ng, <2 x float> %i.nj, <2 x i32> <i32 1, i32 3>
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i180.i
  %indvars.iv.i182.i = phi i64 [ 0, %.lr.ph.i180.i ], [ %indvars.iv.next.i193.i, %bb.r ] ; 4 uses
  %i.nl = shl nuw i64 %indvars.iv.i182.i, 33
  %sext.i183.i = ashr exact i64 %i.nl, 32         ; 2 uses
  %i.nm = or i64 %sext.i183.i, 2
  %i.nn = getelementptr inbounds [8 x i8], ptr %2, i64 %i.nm
  %i.no = load double, ptr %i.nn, align 8, !tbaa !25
  %.idx.i184.i = shl nuw nsw i64 %indvars.iv.i182.i, 4
  %i.np = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i184.i
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 8
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !25 ; 2 uses
  %i.ns = and i64 %sext.i183.i, -4
  %i.nt = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ns
  %i.nu = load double, ptr %i.nt, align 8, !tbaa !25
  %.idx27.i186.i = mul nuw nsw i64 %indvars.iv.i182.i, 24
  %i.nv = getelementptr inbounds nuw i8, ptr %3, i64 %.idx27.i186.i ; 2 uses
  %i.nw = fptrunc double %i.no to float
  %i.nx = fadd float %i.nw, -5.000000e-01         ; 2 uses
  %i.ny = fmul float %i.my, %i.nx
  %i.nz = fpext float %i.ny to double
  %i.oa = tail call double @llvm.fmuladd.f64(double %i.mw, double %i.nr, double %i.nz)
  %i.ob = fptrunc double %i.nu to float
  %i.oc = fadd float %i.ob, -5.000000e-01         ; 2 uses
  %i.od = fmul float %i.na, %i.oc
  %i.oe = fpext float %i.od to double
  %i.of = fadd double %i.oa, %i.oe
  %i.og = fptrunc double %i.of to float           ; 2 uses
  %i.oh = fcmp ogt float %i.og, 1.000000e+00
  %.sroa.speculated.i.i187.i = select i1 %i.oh, float 1.000000e+00, float %i.og
  %i.oi = fpext float %.sroa.speculated.i.i187.i to double ; 2 uses
  %i.oj = fcmp ogt double %i.oi, 0.000000e+00
  %.sroa.speculated14.i.i188.i = select i1 %i.oj, double %i.oi, double 0.000000e+00
  %i.ok = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  store double %.sroa.speculated14.i.i188.i, ptr %i.ok, align 8, !tbaa !25
  %i.ol = insertelement <2 x float> poison, float %i.nx, i64 0
  %i.om = shufflevector <2 x float> %i.ol, <2 x float> poison, <2 x i32> zeroinitializer
  %i.on = fmul <2 x float> %i.ni, %i.om
  %i.oo = fpext <2 x float> %i.on to <2 x double>
  %i.op = insertelement <2 x double> poison, double %i.nr, i64 0
  %i.oq = shufflevector <2 x double> %i.op, <2 x double> poison, <2 x i32> zeroinitializer
  %i.or = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nf, <2 x double> %i.oq, <2 x double> %i.oo)
  %i.os = insertelement <2 x float> poison, float %i.oc, i64 0
  %i.ot = shufflevector <2 x float> %i.os, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ou = fmul <2 x float> %i.nk, %i.ot
  %i.ov = fpext <2 x float> %i.ou to <2 x double>
  %i.ow = fadd <2 x double> %i.or, %i.ov
  %i.ox = fptrunc <2 x double> %i.ow to <2 x float> ; 2 uses
  %i.oy = fcmp ogt <2 x float> %i.ox, splat (float 1.000000e+00)
  %i.oz = select <2 x i1> %i.oy, <2 x float> splat (float 1.000000e+00), <2 x float> %i.ox
  %i.pa = fpext <2 x float> %i.oz to <2 x double> ; 2 uses
  %i.pb = fcmp ogt <2 x double> %i.pa, zeroinitializer
  %i.pc = select <2 x i1> %i.pb, <2 x double> %i.pa, <2 x double> zeroinitializer
  store <2 x double> %i.pc, ptr %i.nv, align 8, !tbaa !25
  %indvars.iv.next.i193.i = add nuw nsw i64 %indvars.iv.i182.i, 1 ; 2 uses
  %exitcond.not.i194.i = icmp eq i64 %indvars.iv.next.i193.i, %wide.trip.count.i181.i
  br i1 %exitcond.not.i194.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.r, !llvm.loop !32

bb.s:                                             ; preds = %_ZNK3dpx13GenericHeader12ColorimetricEi.exit
  switch i32 %i.f, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit [
    i32 0, label %bb.t
    i32 1, label %bb.u
    i32 2, label %bb.v
    i32 3, label %bb.w
    i32 4, label %bb.x
  ]

bb.t:                                             ; preds = %bb.s
  %switch.tableidx493 = add i8 %i.h, -5           ; 2 uses
  %i.pd = icmp ult i8 %switch.tableidx493, 4
  br i1 %i.pd, label %switch.lookup494, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup494:                                 ; preds = %bb.t
  %i.pe = icmp sgt i32 %i.t, 0
  br i1 %i.pe, label %.lr.ph.i196.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i196.i:                                    ; preds = %switch.lookup494
  %i.pf = zext nneg i8 %switch.tableidx493 to i64
  %switch.gep495 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.pf
  %switch.load496 = load ptr, ptr %switch.gep495, align 8 ; 5 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %switch.load496, i64 16
  %i.ph = load <4 x float>, ptr %switch.load496, align 16, !tbaa !23 ; 7 uses
  %i.pi = load <2 x float>, ptr %i.pg, align 16, !tbaa !23 ; 4 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %switch.load496, i64 24
  %i.pk = load float, ptr %i.pj, align 8, !tbaa !23 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %switch.load496, i64 28
  %i.pm = load float, ptr %i.pl, align 4, !tbaa !23 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %switch.load496, i64 32
  %i.po = load float, ptr %i.pn, align 16, !tbaa !23 ; 2 uses
  %wide.trip.count.i197.i = zext nneg i32 %i.t to i64 ; 4 uses
  %min.iters.check427 = icmp ult i32 %i.t, 8
  br i1 %min.iters.check427, label %scalar.ph426.preheader, label %vector.memcheck420

vector.memcheck420:                               ; preds = %.lr.ph.i196.i
  %i.pp = mul nuw nsw i64 %wide.trip.count.i197.i, 3 ; 2 uses
  %scevgep421 = getelementptr i8, ptr %3, i64 %i.pp
  %scevgep422 = getelementptr i8, ptr %2, i64 %i.pp
  %bound0423 = icmp ult ptr %3, %scevgep422
  %bound1424 = icmp ult ptr %2, %scevgep421
  %found.conflict425 = and i1 %bound0423, %bound1424
  br i1 %found.conflict425, label %scalar.ph426.preheader, label %vector.ph428

vector.ph428:                                     ; preds = %vector.memcheck420
  %n.vec430 = and i64 %wide.trip.count.i197.i, 2147483640 ; 3 uses
  %broadcast.splat432 = shufflevector <4 x float> %i.ph, <4 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat434 = shufflevector <4 x float> %i.ph, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat436 = shufflevector <4 x float> %i.ph, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat438 = shufflevector <4 x float> %i.ph, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat440 = shufflevector <2 x float> %i.pi, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat442 = shufflevector <2 x float> %i.pi, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert443 = insertelement <8 x float> poison, float %i.pk, i64 0
  %broadcast.splat444 = shufflevector <8 x float> %broadcast.splatinsert443, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert445 = insertelement <8 x float> poison, float %i.pm, i64 0
  %broadcast.splat446 = shufflevector <8 x float> %broadcast.splatinsert445, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert447 = insertelement <8 x float> poison, float %i.po, i64 0
  %broadcast.splat448 = shufflevector <8 x float> %broadcast.splatinsert447, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body449

vector.body449:                                   ; preds = %vector.body449, %vector.ph428
  %index450 = phi i64 [ 0, %vector.ph428 ], [ %index.next452, %vector.body449 ] ; 9 uses
  %i.pq = mul nuw nsw i64 %index450, 3            ; 2 uses
  %i.pr = mul nuw i64 %index450, 3
  %i.ps = mul nuw i64 %index450, 3
  %i.pt = mul nuw i64 %index450, 3
  %i.pu = mul nuw i64 %index450, 3
  %i.pv = mul nuw i64 %index450, 3
  %i.pw = mul nuw i64 %index450, 3
  %i.px = mul nuw i64 %index450, 3
  %i.py = getelementptr inbounds nuw i8, ptr %2, i64 %i.pq ; 3 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %2, i64 %i.pr ; 3 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 3
  %i.qb = getelementptr inbounds nuw i8, ptr %2, i64 %i.ps ; 3 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 6
  %i.qd = getelementptr inbounds nuw i8, ptr %2, i64 %i.pt ; 3 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 9
  %i.qf = getelementptr inbounds nuw i8, ptr %2, i64 %i.pu ; 3 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 12
  %i.qh = getelementptr inbounds nuw i8, ptr %2, i64 %i.pv ; 3 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 15
  %i.qj = getelementptr inbounds nuw i8, ptr %2, i64 %i.pw ; 3 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 18
  %i.ql = getelementptr inbounds nuw i8, ptr %2, i64 %i.px ; 3 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 21
  %i.qn = getelementptr inbounds nuw i8, ptr %i.py, i64 1
  %i.qo = getelementptr inbounds nuw i8, ptr %i.pz, i64 4
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qb, i64 7
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qd, i64 10
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qf, i64 13
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qh, i64 16
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qj, i64 19
  %i.qu = getelementptr inbounds nuw i8, ptr %i.ql, i64 22
  %i.qv = getelementptr inbounds nuw i8, ptr %i.py, i64 2
  %i.qw = getelementptr inbounds nuw i8, ptr %i.pz, i64 5
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qd, i64 11
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qf, i64 14
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qh, i64 17
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qj, i64 20
  %i.rc = getelementptr inbounds nuw i8, ptr %i.ql, i64 23
  %i.rd = load i8, ptr %i.qn, align 1, !tbaa !17, !alias.scope !33
  %i.re = load i8, ptr %i.qo, align 1, !tbaa !17, !alias.scope !33
  %i.rf = load i8, ptr %i.qp, align 1, !tbaa !17, !alias.scope !33
  %i.rg = load i8, ptr %i.qq, align 1, !tbaa !17, !alias.scope !33
  %i.rh = load i8, ptr %i.qr, align 1, !tbaa !17, !alias.scope !33
  %i.ri = load i8, ptr %i.qs, align 1, !tbaa !17, !alias.scope !33
  %i.rj = load i8, ptr %i.qt, align 1, !tbaa !17, !alias.scope !33
  %i.rk = load i8, ptr %i.qu, align 1, !tbaa !17, !alias.scope !33
  %i.rl = insertelement <8 x i8> poison, i8 %i.rd, i64 0
  %i.rm = insertelement <8 x i8> %i.rl, i8 %i.re, i64 1
  %i.rn = insertelement <8 x i8> %i.rm, i8 %i.rf, i64 2
  %i.ro = insertelement <8 x i8> %i.rn, i8 %i.rg, i64 3
  %i.rp = insertelement <8 x i8> %i.ro, i8 %i.rh, i64 4
  %i.rq = insertelement <8 x i8> %i.rp, i8 %i.ri, i64 5
  %i.rr = insertelement <8 x i8> %i.rq, i8 %i.rj, i64 6
  %i.rs = insertelement <8 x i8> %i.rr, i8 %i.rk, i64 7
  %i.rt = uitofp <8 x i8> %i.rs to <8 x float>    ; 3 uses
  %i.ru = load i8, ptr %i.py, align 1, !tbaa !17, !alias.scope !33
  %i.rv = load i8, ptr %i.qa, align 1, !tbaa !17, !alias.scope !33
  %i.rw = load i8, ptr %i.qc, align 1, !tbaa !17, !alias.scope !33
  %i.rx = load i8, ptr %i.qe, align 1, !tbaa !17, !alias.scope !33
  %i.ry = load i8, ptr %i.qg, align 1, !tbaa !17, !alias.scope !33
  %i.rz = load i8, ptr %i.qi, align 1, !tbaa !17, !alias.scope !33
  %i.sa = load i8, ptr %i.qk, align 1, !tbaa !17, !alias.scope !33
  %i.sb = load i8, ptr %i.qm, align 1, !tbaa !17, !alias.scope !33
  %i.sc = insertelement <8 x i8> poison, i8 %i.ru, i64 0
  %i.sd = insertelement <8 x i8> %i.sc, i8 %i.rv, i64 1
  %i.se = insertelement <8 x i8> %i.sd, i8 %i.rw, i64 2
  %i.sf = insertelement <8 x i8> %i.se, i8 %i.rx, i64 3
  %i.sg = insertelement <8 x i8> %i.sf, i8 %i.ry, i64 4
  %i.sh = insertelement <8 x i8> %i.sg, i8 %i.rz, i64 5
  %i.si = insertelement <8 x i8> %i.sh, i8 %i.sa, i64 6
  %i.sj = insertelement <8 x i8> %i.si, i8 %i.sb, i64 7
  %i.sk = uitofp <8 x i8> %i.sj to <8 x float>
  %i.sl = fadd nnan <8 x float> %i.sk, splat (float -1.275000e+02) ; 3 uses
  %i.sm = fmul <8 x float> %broadcast.splat434, %i.sl
  %i.sn = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat432, <8 x float> %i.rt, <8 x float> %i.sm)
  %i.so = load i8, ptr %i.qv, align 1, !tbaa !17, !alias.scope !33
  %i.sp = load i8, ptr %i.qw, align 1, !tbaa !17, !alias.scope !33
  %i.sq = load i8, ptr %i.qx, align 1, !tbaa !17, !alias.scope !33
  %i.sr = load i8, ptr %i.qy, align 1, !tbaa !17, !alias.scope !33
  %i.ss = load i8, ptr %i.qz, align 1, !tbaa !17, !alias.scope !33
  %i.st = load i8, ptr %i.ra, align 1, !tbaa !17, !alias.scope !33
  %i.su = load i8, ptr %i.rb, align 1, !tbaa !17, !alias.scope !33
  %i.sv = load i8, ptr %i.rc, align 1, !tbaa !17, !alias.scope !33
  %i.sw = insertelement <8 x i8> poison, i8 %i.so, i64 0
  %i.sx = insertelement <8 x i8> %i.sw, i8 %i.sp, i64 1
  %i.sy = insertelement <8 x i8> %i.sx, i8 %i.sq, i64 2
  %i.sz = insertelement <8 x i8> %i.sy, i8 %i.sr, i64 3
  %i.ta = insertelement <8 x i8> %i.sz, i8 %i.ss, i64 4
end_hunk_0
begin_hunk_1_@_ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE:bb.a
  %broadcast.splat290 = shufflevector <2 x float> %broadcast.splatinsert289, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert291 = insertelement <2 x float> poison, float %i.akj, i64 0
  %broadcast.splat292 = shufflevector <2 x float> %broadcast.splatinsert291, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splat294 = shufflevector <2 x double> %i.ako, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat296 = shufflevector <4 x float> %i.akm, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat298 = shufflevector <4 x float> %i.akm, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %broadcast.splat300 = shufflevector <2 x double> %i.ako, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat302 = shufflevector <2 x float> %i.akp, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splat304 = shufflevector <2 x float> %i.akp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %vector.body305

vector.body305:                                   ; preds = %vector.body305, %vector.ph284
  %index306 = phi i64 [ 0, %vector.ph284 ], [ %index.next308, %vector.body305 ] ; 3 uses
  %i.akr = mul nuw nsw i64 %index306, 3           ; 2 uses
  %i.aks = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.akr ; 3 uses
  %.idx463 = mul nuw i64 %index306, 24
  %i.akt = getelementptr inbounds nuw i8, ptr %2, i64 %.idx463 ; 3 uses
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 24
  %i.akv = getelementptr inbounds nuw i8, ptr %i.aks, i64 8
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akt, i64 32
  %i.akx = getelementptr inbounds nuw i8, ptr %i.aks, i64 16
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akt, i64 40
  %i.akz = load double, ptr %i.akv, align 8, !tbaa !25, !alias.scope !63
  %i.ala = load double, ptr %i.akw, align 8, !tbaa !25, !alias.scope !63
  %i.alb = insertelement <2 x double> poison, double %i.akz, i64 0
  %i.alc = insertelement <2 x double> %i.alb, double %i.ala, i64 1 ; 3 uses
  %i.ald = load double, ptr %i.aks, align 8, !tbaa !25, !alias.scope !63
  %i.ale = load double, ptr %i.aku, align 8, !tbaa !25, !alias.scope !63
  %i.alf = insertelement <2 x double> poison, double %i.ald, i64 0
  %i.alg = insertelement <2 x double> %i.alf, double %i.ale, i64 1
  %i.alh = fptrunc <2 x double> %i.alg to <2 x float>
  %i.ali = fadd <2 x float> %i.alh, splat (float -5.000000e-01) ; 3 uses
  %i.alj = fmul <2 x float> %broadcast.splat290, %i.ali
  %i.alk = fpext <2 x float> %i.alj to <2 x double>
  %i.all = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat288, <2 x double> %i.alc, <2 x double> %i.alk)
  %i.alm = load double, ptr %i.akx, align 8, !tbaa !25, !alias.scope !63
  %i.aln = load double, ptr %i.aky, align 8, !tbaa !25, !alias.scope !63
  %i.alo = insertelement <2 x double> poison, double %i.alm, i64 0
  %i.alp = insertelement <2 x double> %i.alo, double %i.aln, i64 1
  %i.alq = fptrunc <2 x double> %i.alp to <2 x float>
  %i.alr = fadd <2 x float> %i.alq, splat (float -5.000000e-01) ; 3 uses
  %i.als = fmul <2 x float> %broadcast.splat292, %i.alr
  %i.alt = fpext <2 x float> %i.als to <2 x double>
  %i.alu = fadd <2 x double> %i.all, %i.alt
  %i.alv = fptrunc <2 x double> %i.alu to <2 x float> ; 2 uses
  %i.alw = fcmp ogt <2 x float> %i.alv, splat (float 1.000000e+00)
  %i.alx = select <2 x i1> %i.alw, <2 x float> splat (float 1.000000e+00), <2 x float> %i.alv
  %i.aly = fpext <2 x float> %i.alx to <2 x double> ; 2 uses
  %i.alz = fcmp ogt <2 x double> %i.aly, zeroinitializer
  %i.ama = select <2 x i1> %i.alz, <2 x double> %i.aly, <2 x double> zeroinitializer
  %i.amb = fmul <2 x float> %broadcast.splat296, %i.ali
  %i.amc = fpext <2 x float> %i.amb to <2 x double>
  %i.amd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat294, <2 x double> %i.alc, <2 x double> %i.amc)
  %i.ame = fmul <2 x float> %broadcast.splat298, %i.alr
  %i.amf = fpext <2 x float> %i.ame to <2 x double>
  %i.amg = fadd <2 x double> %i.amd, %i.amf
  %i.amh = fptrunc <2 x double> %i.amg to <2 x float> ; 2 uses
  %i.ami = fcmp ogt <2 x float> %i.amh, splat (float 1.000000e+00)
  %i.amj = select <2 x i1> %i.ami, <2 x float> splat (float 1.000000e+00), <2 x float> %i.amh
  %i.amk = fpext <2 x float> %i.amj to <2 x double> ; 2 uses
  %i.aml = fmul <2 x float> %broadcast.splat302, %i.ali
  %i.amm = fpext <2 x float> %i.aml to <2 x double>
  %i.amn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat300, <2 x double> %i.alc, <2 x double> %i.amm)
  %i.amo = fmul <2 x float> %broadcast.splat304, %i.alr
  %i.amp = fpext <2 x float> %i.amo to <2 x double>
  %i.amq = fadd <2 x double> %i.amn, %i.amp
  %i.amr = fptrunc <2 x double> %i.amq to <2 x float> ; 2 uses
  %i.ams = fcmp ogt <2 x float> %i.amr, splat (float 1.000000e+00)
  %i.amt = select <2 x i1> %i.ams, <2 x float> splat (float 1.000000e+00), <2 x float> %i.amr
  %i.amu = fpext <2 x float> %i.amt to <2 x double> ; 2 uses
  %i.amv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.akr
  %i.amw = shufflevector <2 x double> %i.amu, <2 x double> %i.amk, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.amx = fcmp ogt <4 x double> %i.amw, zeroinitializer
  %i.amy = shufflevector <2 x double> %i.amu, <2 x double> %i.amk, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.amz = select <4 x i1> %i.amx, <4 x double> %i.amy, <4 x double> zeroinitializer
  %i.ana = shufflevector <2 x double> %i.ama, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec307 = shufflevector <4 x double> %i.amz, <4 x double> %i.ana, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec307, ptr %i.amv, align 8, !alias.scope !66, !noalias !63
  %index.next308 = add nuw i64 %index306, 2       ; 2 uses
  %i.anb = icmp eq i64 %index.next308, %n.vec286
  br i1 %i.anb, label %middle.block309, label %vector.body305, !llvm.loop !68

middle.block309:                                  ; preds = %vector.body305
  %cmp.n310 = icmp eq i64 %n.vec286, %wide.trip.count.i243.i
  br i1 %cmp.n310, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph282.preheader

scalar.ph282.preheader:                           ; preds = %vector.memcheck276, %.lr.ph.i242.i, %middle.block309
  %indvars.iv.i244.i.ph = phi i64 [ 0, %vector.memcheck276 ], [ 0, %.lr.ph.i242.i ], [ %n.vec286, %middle.block309 ]
  %i.anc = shufflevector <2 x float> %i.akp, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.and = shufflevector <4 x float> %i.anc, <4 x float> %i.akm, <2 x i32> <i32 0, i32 5>
  %i.ane = shufflevector <4 x float> %i.akm, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.anf = shufflevector <2 x float> %i.akp, <2 x float> %i.ane, <2 x i32> <i32 1, i32 3>
  br label %scalar.ph282

scalar.ph282:                                     ; preds = %scalar.ph282.preheader, %scalar.ph282
  %indvars.iv.i244.i = phi i64 [ %indvars.iv.next.i253.i, %scalar.ph282 ], [ %indvars.iv.i244.i.ph, %scalar.ph282.preheader ] ; 2 uses
  %i.ang = mul nuw nsw i64 %indvars.iv.i244.i, 3  ; 2 uses
  %i.anh = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ang ; 3 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %i.anh, i64 8
  %i.anj = getelementptr inbounds nuw i8, ptr %i.anh, i64 16
  %i.ank = load double, ptr %i.ani, align 8, !tbaa !25 ; 2 uses
  %i.anl = load double, ptr %i.anh, align 8, !tbaa !25
  %i.anm = fptrunc double %i.anl to float
  %i.ann = fadd float %i.anm, -5.000000e-01       ; 2 uses
  %i.ano = fmul float %i.akh, %i.ann
  %i.anp = fpext float %i.ano to double
  %i.anq = tail call double @llvm.fmuladd.f64(double %i.akf, double %i.ank, double %i.anp)
  %i.anr = load double, ptr %i.anj, align 8, !tbaa !25
  %i.ans = fptrunc double %i.anr to float
  %i.ant = fadd float %i.ans, -5.000000e-01       ; 2 uses
  %i.anu = fmul float %i.akj, %i.ant
  %i.anv = fpext float %i.anu to double
  %i.anw = fadd double %i.anq, %i.anv
  %i.anx = fptrunc double %i.anw to float         ; 2 uses
  %i.any = fcmp ogt float %i.anx, 1.000000e+00
  %.sroa.speculated.i.i245.i = select i1 %i.any, float 1.000000e+00, float %i.anx
  %i.anz = fpext float %.sroa.speculated.i.i245.i to double ; 2 uses
  %i.aoa = fcmp ogt double %i.anz, 0.000000e+00
  %.sroa.speculated14.i.i246.i = select i1 %i.aoa, double %i.anz, double 0.000000e+00
  %i.aob = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ang ; 2 uses
  %i.aoc = insertelement <2 x float> poison, float %i.ann, i64 0
  %i.aod = shufflevector <2 x float> %i.aoc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aoe = fmul <2 x float> %i.and, %i.aod
  %i.aof = fpext <2 x float> %i.aoe to <2 x double>
  %i.aog = insertelement <2 x double> poison, double %i.ank, i64 0
  %i.aoh = shufflevector <2 x double> %i.aog, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aoi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ako, <2 x double> %i.aoh, <2 x double> %i.aof)
  %i.aoj = insertelement <2 x float> poison, float %i.ant, i64 0
  %i.aok = shufflevector <2 x float> %i.aoj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aol = fmul <2 x float> %i.anf, %i.aok
  %i.aom = fpext <2 x float> %i.aol to <2 x double>
  %i.aon = fadd <2 x double> %i.aoi, %i.aom
  %i.aoo = fptrunc <2 x double> %i.aon to <2 x float> ; 2 uses
  %i.aop = fcmp ogt <2 x float> %i.aoo, splat (float 1.000000e+00)
  %i.aoq = select <2 x i1> %i.aop, <2 x float> splat (float 1.000000e+00), <2 x float> %i.aoo
  %i.aor = fpext <2 x float> %i.aoq to <2 x double> ; 2 uses
  %i.aos = fcmp ogt <2 x double> %i.aor, zeroinitializer
  %i.aot = select <2 x i1> %i.aos, <2 x double> %i.aor, <2 x double> zeroinitializer
  store <2 x double> %i.aot, ptr %i.aob, align 8
  %.sroa.5.0..sroa_idx.i252.i = getelementptr inbounds nuw i8, ptr %i.aob, i64 16
  store double %.sroa.speculated14.i.i246.i, ptr %.sroa.5.0..sroa_idx.i252.i, align 8
  %indvars.iv.next.i253.i = add nuw nsw i64 %indvars.iv.i244.i, 1 ; 2 uses
  %exitcond.not.i254.i = icmp eq i64 %indvars.iv.next.i253.i, %wide.trip.count.i243.i
  br i1 %exitcond.not.i254.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph282, !llvm.loop !69

bb.y:                                             ; preds = %_ZNK3dpx13GenericHeader12ColorimetricEi.exit
  switch i32 %i.f, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit [
    i32 0, label %bb.z
    i32 1, label %bb.ab
    i32 2, label %bb.ad
    i32 3, label %bb.af
    i32 4, label %bb.ah
  ]

bb.z:                                             ; preds = %bb.y
  %switch.tableidx513 = add i8 %i.h, -5           ; 2 uses
  %i.aou = icmp ult i8 %switch.tableidx513, 4
  br i1 %i.aou, label %switch.lookup514, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup514:                                 ; preds = %bb.z
  %i.aov = icmp sgt i32 %i.t, 0
  br i1 %i.aov, label %.lr.ph.i256.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i256.i:                                    ; preds = %switch.lookup514
  %i.aow = zext nneg i8 %switch.tableidx513 to i64
  %switch.gep515 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.aow
  %switch.load516 = load ptr, ptr %switch.gep515, align 8 ; 5 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %switch.load516, i64 16
  %i.aoy = load <4 x float>, ptr %switch.load516, align 16, !tbaa !23 ; 3 uses
  %i.aoz = load <2 x float>, ptr %i.aox, align 16, !tbaa !23 ; 2 uses
  %i.apa = getelementptr inbounds nuw i8, ptr %switch.load516, i64 24
  %i.apb = load float, ptr %i.apa, align 8, !tbaa !23
  %i.apc = getelementptr inbounds nuw i8, ptr %switch.load516, i64 28
  %i.apd = load float, ptr %i.apc, align 4, !tbaa !23
  %i.ape = getelementptr inbounds nuw i8, ptr %switch.load516, i64 32
  %i.apf = load float, ptr %i.ape, align 16, !tbaa !23
  %wide.trip.count.i257.i = zext nneg i32 %i.t to i64
  %i.apg = shufflevector <4 x float> %i.aoy, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.aph = shufflevector <4 x float> %i.aoy, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.api = shufflevector <2 x float> %i.aoz, <2 x float> %i.aph, <2 x i32> <i32 1, i32 3>
  %i.apj = shufflevector <2 x float> %i.aoz, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.apk = shufflevector <4 x float> %i.apj, <4 x float> %i.aoy, <2 x i32> <i32 0, i32 5>
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i256.i
  %indvars.iv.i258.i = phi i64 [ 0, %.lr.ph.i256.i ], [ %indvars.iv.next.i262.i, %bb.aa ] ; 5 uses
  %i.apl = or i64 %indvars.iv.i258.i, 1
  %i.apm = mul i64 %i.apl, 3
  %i.apn = and i64 %i.apm, 4294967295
  %i.apo = getelementptr inbounds nuw i8, ptr %2, i64 %i.apn
  %i.app = load i8, ptr %i.apo, align 1, !tbaa !17
  %i.apq = mul nuw nsw i64 %indvars.iv.i258.i, 3
  %i.apr = getelementptr inbounds nuw i8, ptr %2, i64 %i.apq ; 2 uses
  %i.aps = getelementptr inbounds nuw i8, ptr %i.apr, i64 1
  %i.apt = load i8, ptr %i.aps, align 1, !tbaa !17
  %i.apu = and i64 %indvars.iv.i258.i, 2147483646
  %i.apv = mul nuw nsw i64 %i.apu, 3
  %i.apw = and i64 %i.apv, 4294967294
  %i.apx = getelementptr inbounds nuw i8, ptr %2, i64 %i.apw
  %i.apy = load i8, ptr %i.apx, align 1, !tbaa !17
  %i.apz = shl nuw nsw i64 %indvars.iv.i258.i, 2
  %i.aqa = getelementptr inbounds nuw i8, ptr %3, i64 %i.apz ; 4 uses
  %i.aqb = uitofp i8 %i.apt to float              ; 2 uses
  %i.aqc = uitofp i8 %i.app to float
  %i.aqd = fadd nnan float %i.aqc, -1.275000e+02  ; 2 uses
  %i.aqe = uitofp i8 %i.apy to float
  %i.aqf = fadd float %i.aqe, -1.275000e+02       ; 2 uses
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqa, i64 2
  %i.aqh = insertelement <2 x float> poison, float %i.aqd, i64 0
  %i.aqi = shufflevector <2 x float> %i.aqh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aqj = fmul <2 x float> %i.apk, %i.aqi
  %i.aqk = insertelement <2 x float> poison, float %i.aqb, i64 0
  %i.aql = shufflevector <2 x float> %i.aqk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aqm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.apg, <2 x float> %i.aql, <2 x float> %i.aqj)
  %i.aqn = insertelement <2 x float> poison, float %i.aqf, i64 0
  %i.aqo = shufflevector <2 x float> %i.aqn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aqp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.api, <2 x float> %i.aqo, <2 x float> %i.aqm) ; 3 uses
  %i.aqq = fcmp ogt <2 x float> %i.aqp, splat (float 2.550000e+02) ; 2 uses
  %i.aqr = extractelement <2 x i1> %i.aqq, i64 1
  %i.aqs = extractelement <2 x float> %i.aqp, i64 1
  %i.aqt = fptoui float %i.aqs to i8
  %i.aqu = select i1 %i.aqr, i8 -1, i8 %i.aqt
  store i8 %i.aqu, ptr %i.aqg, align 1, !tbaa !17
  %i.aqv = extractelement <2 x i1> %i.aqq, i64 0
  %i.aqw = extractelement <2 x float> %i.aqp, i64 0
  %i.aqx = fptoui float %i.aqw to i8
  %i.aqy = select i1 %i.aqv, i8 -1, i8 %i.aqx
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqa, i64 1
  store i8 %i.aqy, ptr %i.aqz, align 1, !tbaa !17
  %i.ara = fmul float %i.apd, %i.aqd
  %i.arb = tail call float @llvm.fmuladd.f32(float %i.apb, float %i.aqb, float %i.ara)
  %i.arc = tail call float @llvm.fmuladd.f32(float %i.apf, float %i.aqf, float %i.arb) ; 2 uses
  %i.ard = fcmp ogt float %i.arc, 2.550000e+02
  %.sroa.speculated.2.i.i261.i = select i1 %i.ard, float 2.550000e+02, float %i.arc
  %i.are = fptoui float %.sroa.speculated.2.i.i261.i to i8
  store i8 %i.are, ptr %i.aqa, align 1, !tbaa !17
  %i.arf = getelementptr inbounds nuw i8, ptr %i.apr, i64 2
  %i.arg = load i8, ptr %i.arf, align 1, !tbaa !17
  %i.arh = getelementptr inbounds nuw i8, ptr %i.aqa, i64 3
  store i8 %i.arg, ptr %i.arh, align 1, !tbaa !17
  %indvars.iv.next.i262.i = add nuw nsw i64 %indvars.iv.i258.i, 1 ; 2 uses
  %exitcond.not.i263.i = icmp eq i64 %indvars.iv.next.i262.i, %wide.trip.count.i257.i
  br i1 %exitcond.not.i263.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.aa, !llvm.loop !70

bb.ab:                                            ; preds = %bb.y
  %switch.tableidx517 = add i8 %i.h, -5           ; 2 uses
  %i.ari = icmp ult i8 %switch.tableidx517, 4
  br i1 %i.ari, label %switch.lookup518, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup518:                                 ; preds = %bb.ab
  %i.arj = icmp sgt i32 %i.t, 0
  br i1 %i.arj, label %.lr.ph.i265.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i265.i:                                    ; preds = %switch.lookup518
  %i.ark = zext nneg i8 %switch.tableidx517 to i64
  %switch.gep519 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.ark
  %switch.load520 = load ptr, ptr %switch.gep519, align 8 ; 5 uses
  %i.arl = load float, ptr %switch.load520, align 16, !tbaa !23
  %i.arm = getelementptr inbounds nuw i8, ptr %switch.load520, i64 4
  %i.arn = load float, ptr %i.arm, align 4, !tbaa !23
  %i.aro = getelementptr inbounds nuw i8, ptr %switch.load520, i64 8
  %i.arp = load float, ptr %i.aro, align 8, !tbaa !23
  %i.arq = getelementptr inbounds nuw i8, ptr %switch.load520, i64 12
  %i.arr = getelementptr inbounds nuw i8, ptr %switch.load520, i64 28
  %i.ars = load <4 x float>, ptr %i.arq, align 4, !tbaa !23 ; 3 uses
  %i.art = load <2 x float>, ptr %i.arr, align 4, !tbaa !23 ; 2 uses
  %wide.trip.count.i266.i = zext nneg i32 %i.t to i64
  %i.aru = shufflevector <4 x float> %i.ars, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.arv = shufflevector <4 x float> %i.ars, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.arw = shufflevector <2 x float> %i.art, <2 x float> %i.arv, <2 x i32> <i32 1, i32 3>
  %i.arx = shufflevector <2 x float> %i.art, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ary = shufflevector <4 x float> %i.arx, <4 x float> %i.ars, <2 x i32> <i32 0, i32 5>
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.lr.ph.i265.i
  %indvars.iv.i267.i = phi i64 [ 0, %.lr.ph.i265.i ], [ %indvars.iv.next.i272.i, %bb.ac ] ; 5 uses
  %i.arz = or i64 %indvars.iv.i267.i, 1
  %i.asa = mul i64 %i.arz, 3
  %i.asb = and i64 %i.asa, 4294967295
  %i.asc = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.asb
  %i.asd = load i16, ptr %i.asc, align 2, !tbaa !20
  %.idx.i268.i = mul nuw nsw i64 %indvars.iv.i267.i, 6
  %i.ase = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i268.i ; 2 uses
  %i.asf = getelementptr inbounds nuw i8, ptr %i.ase, i64 2
  %i.asg = load i16, ptr %i.asf, align 2, !tbaa !20
  %i.ash = and i64 %indvars.iv.i267.i, 2147483646
  %i.asi = mul nuw nsw i64 %i.ash, 3
  %i.asj = and i64 %i.asi, 4294967294
  %i.ask = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.asj
  %i.asl = load i16, ptr %i.ask, align 2, !tbaa !20
  %.idx30.i.i = shl nuw nsw i64 %indvars.iv.i267.i, 3
  %i.asm = getelementptr inbounds nuw i8, ptr %3, i64 %.idx30.i.i ; 3 uses
  %i.asn = uitofp i16 %i.asg to float             ; 2 uses
  %i.aso = uitofp i16 %i.asd to float
  %i.asp = fadd nnan float %i.aso, -3.276750e+04  ; 2 uses
  %i.asq = fmul float %i.arn, %i.asp
  %i.asr = tail call float @llvm.fmuladd.f32(float %i.arl, float %i.asn, float %i.asq)
  %i.ass = uitofp i16 %i.asl to float
  %i.ast = fadd float %i.ass, -3.276750e+04       ; 2 uses
  %i.asu = tail call float @llvm.fmuladd.f32(float %i.arp, float %i.ast, float %i.asr) ; 2 uses
  %i.asv = fcmp ogt float %i.asu, 6.553500e+04
  %.sroa.speculated.i.i269.i = select i1 %i.asv, float 6.553500e+04, float %i.asu
  %i.asw = fptoui float %.sroa.speculated.i.i269.i to i16
  %i.asx = getelementptr inbounds nuw i8, ptr %i.asm, i64 4
  store i16 %i.asw, ptr %i.asx, align 2, !tbaa !20
  %i.asy = insertelement <2 x float> poison, float %i.asp, i64 0
  %i.asz = shufflevector <2 x float> %i.asy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ata = fmul <2 x float> %i.ary, %i.asz
  %i.atb = insertelement <2 x float> poison, float %i.asn, i64 0
  %i.atc = shufflevector <2 x float> %i.atb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.atd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aru, <2 x float> %i.atc, <2 x float> %i.ata)
  %i.ate = insertelement <2 x float> poison, float %i.ast, i64 0
  %i.atf = shufflevector <2 x float> %i.ate, <2 x float> poison, <2 x i32> zeroinitializer
  %i.atg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.arw, <2 x float> %i.atf, <2 x float> %i.atd) ; 2 uses
  %i.ath = fcmp ogt <2 x float> %i.atg, splat (float 6.553500e+04)
  %i.ati = select <2 x i1> %i.ath, <2 x float> splat (float 6.553500e+04), <2 x float> %i.atg
  %i.atj = fptoui <2 x float> %i.ati to <2 x i16>
  store <2 x i16> %i.atj, ptr %i.asm, align 2, !tbaa !20
  %i.atk = getelementptr inbounds nuw i8, ptr %i.ase, i64 4
  %i.atl = load i16, ptr %i.atk, align 2, !tbaa !20
  %i.atm = getelementptr inbounds nuw i8, ptr %i.asm, i64 6
  store i16 %i.atl, ptr %i.atm, align 2, !tbaa !20
  %indvars.iv.next.i272.i = add nuw nsw i64 %indvars.iv.i267.i, 1 ; 2 uses
  %exitcond.not.i273.i = icmp eq i64 %indvars.iv.next.i272.i, %wide.trip.count.i266.i
  br i1 %exitcond.not.i273.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.ac, !llvm.loop !71

bb.ad:                                            ; preds = %bb.y
  %switch.tableidx521 = add i8 %i.h, -5           ; 2 uses
  %i.atn = icmp ult i8 %switch.tableidx521, 4
  br i1 %i.atn, label %switch.lookup522, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup522:                                 ; preds = %bb.ad
  %i.ato = icmp sgt i32 %i.t, 0
  br i1 %i.ato, label %.lr.ph.i275.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i275.i:                                    ; preds = %switch.lookup522
  %i.atp = zext nneg i8 %switch.tableidx521 to i64
  %switch.gep523 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.atp
  %switch.load524 = load ptr, ptr %switch.gep523, align 8 ; 5 uses
  %i.atq = load float, ptr %switch.load524, align 16, !tbaa !23
  %i.atr = getelementptr inbounds nuw i8, ptr %switch.load524, i64 4
  %i.ats = load float, ptr %i.atr, align 4, !tbaa !23
  %i.att = getelementptr inbounds nuw i8, ptr %switch.load524, i64 8
  %i.atu = load float, ptr %i.att, align 8, !tbaa !23
  %i.atv = getelementptr inbounds nuw i8, ptr %switch.load524, i64 12
  %i.atw = getelementptr inbounds nuw i8, ptr %switch.load524, i64 28
  %i.atx = load <4 x float>, ptr %i.atv, align 4, !tbaa !23 ; 3 uses
  %i.aty = load <2 x float>, ptr %i.atw, align 4, !tbaa !23 ; 2 uses
  %wide.trip.count.i276.i = zext nneg i32 %i.t to i64
  %i.atz = shufflevector <4 x float> %i.atx, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.aua = shufflevector <4 x float> %i.atx, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.aub = shufflevector <2 x float> %i.aty, <2 x float> %i.aua, <2 x i32> <i32 1, i32 3>
  %i.auc = shufflevector <2 x float> %i.aty, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.aud = shufflevector <4 x float> %i.auc, <4 x float> %i.atx, <2 x i32> <i32 0, i32 5>
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.lr.ph.i275.i
  %indvars.iv.i277.i = phi i64 [ 0, %.lr.ph.i275.i ], [ %indvars.iv.next.i283.i, %bb.ae ] ; 5 uses
  %i.aue = or i64 %indvars.iv.i277.i, 1
  %i.auf = mul i64 %i.aue, 3
  %i.aug = and i64 %i.auf, 4294967295
  %i.auh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aug
  %i.aui = load i32, ptr %i.auh, align 4, !tbaa !3
  %.idx.i278.i = mul nuw nsw i64 %indvars.iv.i277.i, 12
  %i.auj = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i278.i ; 2 uses
  %i.auk = getelementptr inbounds nuw i8, ptr %i.auj, i64 4
  %i.aul = load i32, ptr %i.auk, align 4, !tbaa !3
  %i.aum = and i64 %indvars.iv.i277.i, 2147483646
  %i.aun = mul nuw nsw i64 %i.aum, 3
  %i.auo = and i64 %i.aun, 4294967294
  %i.aup = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.auo
  %i.auq = load i32, ptr %i.aup, align 4, !tbaa !3
  %.idx30.i279.i = shl nuw nsw i64 %indvars.iv.i277.i, 4
  %i.aur = getelementptr inbounds nuw i8, ptr %3, i64 %.idx30.i279.i ; 3 uses
  %i.aus = uitofp i32 %i.aul to float             ; 2 uses
  %i.aut = uitofp i32 %i.aui to float
  %i.auu = fadd nnan float %i.aut, f0xCF000000    ; 2 uses
  %i.auv = fmul float %i.ats, %i.auu
  %i.auw = tail call float @llvm.fmuladd.f32(float %i.atq, float %i.aus, float %i.auv)
  %i.aux = uitofp i32 %i.auq to float
  %i.auy = fadd float %i.aux, f0xCF000000         ; 2 uses
  %i.auz = tail call float @llvm.fmuladd.f32(float %i.atu, float %i.auy, float %i.auw) ; 2 uses
  %i.ava = fcmp ogt float %i.auz, f0x4F800000
  %.sroa.speculated.i.i280.i = select i1 %i.ava, float f0x4F800000, float %i.auz
  %i.avb = fptoui float %.sroa.speculated.i.i280.i to i32
  %i.avc = getelementptr inbounds nuw i8, ptr %i.aur, i64 8
  store i32 %i.avb, ptr %i.avc, align 4, !tbaa !3
  %i.avd = insertelement <2 x float> poison, float %i.auu, i64 0
  %i.ave = shufflevector <2 x float> %i.avd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.avf = fmul <2 x float> %i.aud, %i.ave
  %i.avg = insertelement <2 x float> poison, float %i.aus, i64 0
  %i.avh = shufflevector <2 x float> %i.avg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.avi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.atz, <2 x float> %i.avh, <2 x float> %i.avf)
  %i.avj = insertelement <2 x float> poison, float %i.auy, i64 0
  %i.avk = shufflevector <2 x float> %i.avj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.avl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aub, <2 x float> %i.avk, <2 x float> %i.avi) ; 2 uses
  %i.avm = fcmp ogt <2 x float> %i.avl, splat (float f0x4F800000)
  %i.avn = select <2 x i1> %i.avm, <2 x float> splat (float f0x4F800000), <2 x float> %i.avl
  %i.avo = fptoui <2 x float> %i.avn to <2 x i32>
  store <2 x i32> %i.avo, ptr %i.aur, align 4, !tbaa !3
  %i.avp = getelementptr inbounds nuw i8, ptr %i.auj, i64 8
  %i.avq = load i32, ptr %i.avp, align 4, !tbaa !3
  %i.avr = getelementptr inbounds nuw i8, ptr %i.aur, i64 12
  store i32 %i.avq, ptr %i.avr, align 4, !tbaa !3
  %indvars.iv.next.i283.i = add nuw nsw i64 %indvars.iv.i277.i, 1 ; 2 uses
  %exitcond.not.i284.i = icmp eq i64 %indvars.iv.next.i283.i, %wide.trip.count.i276.i
  br i1 %exitcond.not.i284.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.ae, !llvm.loop !72

bb.af:                                            ; preds = %bb.y
  %switch.tableidx525 = add i8 %i.h, -5           ; 2 uses
  %i.avs = icmp ult i8 %switch.tableidx525, 4
  br i1 %i.avs, label %switch.lookup526, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup526:                                 ; preds = %bb.af
  %i.avt = icmp sgt i32 %i.t, 0
  br i1 %i.avt, label %.lr.ph.i286.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i286.i:                                    ; preds = %switch.lookup526
  %i.avu = zext nneg i8 %switch.tableidx525 to i64
  %switch.gep527 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.avu
  %switch.load528 = load ptr, ptr %switch.gep527, align 8 ; 5 uses
  %i.avv = load float, ptr %switch.load528, align 16, !tbaa !23
  %i.avw = getelementptr inbounds nuw i8, ptr %switch.load528, i64 4
  %i.avx = load float, ptr %i.avw, align 4, !tbaa !23
  %i.avy = getelementptr inbounds nuw i8, ptr %switch.load528, i64 8
  %i.avz = load float, ptr %i.avy, align 8, !tbaa !23
  %i.awa = getelementptr inbounds nuw i8, ptr %switch.load528, i64 12
  %i.awb = getelementptr inbounds nuw i8, ptr %switch.load528, i64 28
  %i.awc = load <4 x float>, ptr %i.awa, align 4, !tbaa !23 ; 3 uses
  %i.awd = load <2 x float>, ptr %i.awb, align 4, !tbaa !23 ; 2 uses
  %wide.trip.count.i287.i = zext nneg i32 %i.t to i64
  %i.awe = shufflevector <4 x float> %i.awc, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.awf = shufflevector <4 x float> %i.awc, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.awg = shufflevector <2 x float> %i.awd, <2 x float> %i.awf, <2 x i32> <i32 1, i32 3>
  %i.awh = shufflevector <2 x float> %i.awd, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.awi = shufflevector <4 x float> %i.awh, <4 x float> %i.awc, <2 x i32> <i32 0, i32 5>
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.lr.ph.i286.i
  %indvars.iv.i288.i = phi i64 [ 0, %.lr.ph.i286.i ], [ %indvars.iv.next.i297.i, %bb.ag ] ; 5 uses
  %i.awj = or i64 %indvars.iv.i288.i, 1
  %i.awk = mul i64 %i.awj, 3
  %i.awl = and i64 %i.awk, 4294967295
  %i.awm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.awl
  %i.awn = load float, ptr %i.awm, align 4, !tbaa !23
  %.idx.i289.i = mul nuw nsw i64 %indvars.iv.i288.i, 12
  %i.awo = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i289.i ; 2 uses
  %i.awp = getelementptr inbounds nuw i8, ptr %i.awo, i64 4
  %i.awq = load float, ptr %i.awp, align 4, !tbaa !23 ; 2 uses
  %i.awr = and i64 %indvars.iv.i288.i, 2147483646
  %i.aws = mul nuw nsw i64 %i.awr, 3
  %i.awt = and i64 %i.aws, 4294967294
  %i.awu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.awt
  %i.awv = load float, ptr %i.awu, align 4, !tbaa !23
  %.idx30.i290.i = shl nuw nsw i64 %indvars.iv.i288.i, 4
  %i.aww = getelementptr inbounds nuw i8, ptr %3, i64 %.idx30.i290.i ; 3 uses
  %i.awx = fadd float %i.awn, -5.000000e-01       ; 2 uses
  %i.awy = fmul float %i.avx, %i.awx
  %i.awz = tail call float @llvm.fmuladd.f32(float %i.avv, float %i.awq, float %i.awy)
  %i.axa = fadd float %i.awv, -5.000000e-01       ; 2 uses
  %i.axb = tail call float @llvm.fmuladd.f32(float %i.avz, float %i.axa, float %i.awz) ; 2 uses
  %i.axc = fcmp ogt float %i.axb, 1.000000e+00
  %.sroa.speculated.i.i291.i = select i1 %i.axc, float 1.000000e+00, float %i.axb ; 2 uses
  %i.axd = fcmp ogt float %.sroa.speculated.i.i291.i, 0.000000e+00
  %.sroa.speculated14.i.i292.i = select i1 %i.axd, float %.sroa.speculated.i.i291.i, float 0.000000e+00
  %i.axe = getelementptr inbounds nuw i8, ptr %i.aww, i64 8
  store float %.sroa.speculated14.i.i292.i, ptr %i.axe, align 4, !tbaa !23
  %i.axf = insertelement <2 x float> poison, float %i.awx, i64 0
  %i.axg = shufflevector <2 x float> %i.axf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.axh = fmul <2 x float> %i.awi, %i.axg
  %i.axi = insertelement <2 x float> poison, float %i.awq, i64 0
  %i.axj = shufflevector <2 x float> %i.axi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.axk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.awe, <2 x float> %i.axj, <2 x float> %i.axh)
  %i.axl = insertelement <2 x float> poison, float %i.axa, i64 0
  %i.axm = shufflevector <2 x float> %i.axl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.axn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.awg, <2 x float> %i.axm, <2 x float> %i.axk) ; 2 uses
  %i.axo = fcmp ogt <2 x float> %i.axn, splat (float 1.000000e+00)
  %i.axp = select <2 x i1> %i.axo, <2 x float> splat (float 1.000000e+00), <2 x float> %i.axn ; 2 uses
  %i.axq = fcmp ogt <2 x float> %i.axp, zeroinitializer
  %i.axr = select <2 x i1> %i.axq, <2 x float> %i.axp, <2 x float> zeroinitializer
  store <2 x float> %i.axr, ptr %i.aww, align 4, !tbaa !23
  %i.axs = getelementptr inbounds nuw i8, ptr %i.awo, i64 8
  %i.axt = load float, ptr %i.axs, align 4, !tbaa !23
  %i.axu = getelementptr inbounds nuw i8, ptr %i.aww, i64 12
  store float %i.axt, ptr %i.axu, align 4, !tbaa !23
  %indvars.iv.next.i297.i = add nuw nsw i64 %indvars.iv.i288.i, 1 ; 2 uses
  %exitcond.not.i298.i = icmp eq i64 %indvars.iv.next.i297.i, %wide.trip.count.i287.i
  br i1 %exitcond.not.i298.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.ag, !llvm.loop !73

bb.ah:                                            ; preds = %bb.y
  %switch.tableidx529 = add i8 %i.h, -5           ; 2 uses
  %i.axv = icmp ult i8 %switch.tableidx529, 4
  br i1 %i.axv, label %switch.lookup530, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup530:                                 ; preds = %bb.ah
  %i.axw = icmp sgt i32 %i.t, 0
  br i1 %i.axw, label %.lr.ph.i300.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i300.i:                                    ; preds = %switch.lookup530
  %i.axx = zext nneg i8 %switch.tableidx529 to i64
  %switch.gep531 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.axx
  %switch.load532 = load ptr, ptr %switch.gep531, align 8 ; 5 uses
  %i.axy = load float, ptr %switch.load532, align 16, !tbaa !23
  %i.axz = fpext float %i.axy to double
  %i.aya = getelementptr inbounds nuw i8, ptr %switch.load532, i64 4
  %i.ayb = load float, ptr %i.aya, align 4, !tbaa !23
  %i.ayc = getelementptr inbounds nuw i8, ptr %switch.load532, i64 8
  %i.ayd = load float, ptr %i.ayc, align 8, !tbaa !23
  %i.aye = getelementptr inbounds nuw i8, ptr %switch.load532, i64 12
  %i.ayf = getelementptr inbounds nuw i8, ptr %switch.load532, i64 28
  %i.ayg = load <4 x float>, ptr %i.aye, align 4, !tbaa !23 ; 3 uses
  %i.ayh = shufflevector <4 x float> %i.ayg, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.ayi = fpext <2 x float> %i.ayh to <2 x double>
  %i.ayj = load <2 x float>, ptr %i.ayf, align 4, !tbaa !23 ; 2 uses
  %wide.trip.count.i301.i = zext nneg i32 %i.t to i64
  %i.ayk = shufflevector <2 x float> %i.ayj, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ayl = shufflevector <4 x float> %i.ayk, <4 x float> %i.ayg, <2 x i32> <i32 0, i32 5>
  %i.aym = shufflevector <4 x float> %i.ayg, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.ayn = shufflevector <2 x float> %i.ayj, <2 x float> %i.aym, <2 x i32> <i32 1, i32 3>
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.lr.ph.i300.i
  %indvars.iv.i302.i = phi i64 [ 0, %.lr.ph.i300.i ], [ %indvars.iv.next.i311.i, %bb.ai ] ; 5 uses
  %i.ayo = or i64 %indvars.iv.i302.i, 1
  %i.ayp = mul i64 %i.ayo, 3
  %i.ayq = and i64 %i.ayp, 4294967295
  %i.ayr = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ayq
  %i.ays = load double, ptr %i.ayr, align 8, !tbaa !25
  %.idx.i303.i = mul nuw nsw i64 %indvars.iv.i302.i, 24
  %i.ayt = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i303.i ; 2 uses
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.ayt, i64 8
  %i.ayv = load double, ptr %i.ayu, align 8, !tbaa !25 ; 2 uses
  %i.ayw = and i64 %indvars.iv.i302.i, 2147483646
  %i.ayx = mul nuw nsw i64 %i.ayw, 3
  %i.ayy = and i64 %i.ayx, 4294967294
  %i.ayz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ayy
  %i.aza = load double, ptr %i.ayz, align 8, !tbaa !25
  %.idx30.i304.i = shl nuw nsw i64 %indvars.iv.i302.i, 5
  %i.azb = getelementptr inbounds nuw i8, ptr %3, i64 %.idx30.i304.i ; 3 uses
  %i.azc = fptrunc double %i.ays to float
  %i.azd = fadd float %i.azc, -5.000000e-01       ; 2 uses
  %i.aze = fmul float %i.ayb, %i.azd
  %i.azf = fpext float %i.aze to double
  %i.azg = tail call double @llvm.fmuladd.f64(double %i.axz, double %i.ayv, double %i.azf)
  %i.azh = fptrunc double %i.aza to float
  %i.azi = fadd float %i.azh, -5.000000e-01       ; 2 uses
  %i.azj = fmul float %i.ayd, %i.azi
  %i.azk = fpext float %i.azj to double
  %i.azl = fadd double %i.azg, %i.azk
  %i.azm = fptrunc double %i.azl to float         ; 2 uses
  %i.azn = fcmp ogt float %i.azm, 1.000000e+00
  %.sroa.speculated.i.i305.i = select i1 %i.azn, float 1.000000e+00, float %i.azm
  %i.azo = fpext float %.sroa.speculated.i.i305.i to double ; 2 uses
  %i.azp = fcmp ogt double %i.azo, 0.000000e+00
  %.sroa.speculated14.i.i306.i = select i1 %i.azp, double %i.azo, double 0.000000e+00
  %i.azq = getelementptr inbounds nuw i8, ptr %i.azb, i64 16
  store double %.sroa.speculated14.i.i306.i, ptr %i.azq, align 8, !tbaa !25
  %i.azr = insertelement <2 x float> poison, float %i.azd, i64 0
  %i.azs = shufflevector <2 x float> %i.azr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.azt = fmul <2 x float> %i.ayl, %i.azs
  %i.azu = fpext <2 x float> %i.azt to <2 x double>
  %i.azv = insertelement <2 x double> poison, double %i.ayv, i64 0
  %i.azw = shufflevector <2 x double> %i.azv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.azx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ayi, <2 x double> %i.azw, <2 x double> %i.azu)
  %i.azy = insertelement <2 x float> poison, float %i.azi, i64 0
  %i.azz = shufflevector <2 x float> %i.azy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.baa = fmul <2 x float> %i.ayn, %i.azz
  %i.bab = fpext <2 x float> %i.baa to <2 x double>
  %i.bac = fadd <2 x double> %i.azx, %i.bab
  %i.bad = fptrunc <2 x double> %i.bac to <2 x float> ; 2 uses
  %i.bae = fcmp ogt <2 x float> %i.bad, splat (float 1.000000e+00)
  %i.baf = select <2 x i1> %i.bae, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bad
  %i.bag = fpext <2 x float> %i.baf to <2 x double> ; 2 uses
  %i.bah = fcmp ogt <2 x double> %i.bag, zeroinitializer
  %i.bai = select <2 x i1> %i.bah, <2 x double> %i.bag, <2 x double> zeroinitializer
  store <2 x double> %i.bai, ptr %i.azb, align 8, !tbaa !25
  %i.baj = getelementptr inbounds nuw i8, ptr %i.ayt, i64 16
  %i.bak = load double, ptr %i.baj, align 8, !tbaa !25
  %i.bal = getelementptr inbounds nuw i8, ptr %i.azb, i64 24
  store double %i.bak, ptr %i.bal, align 8, !tbaa !25
  %indvars.iv.next.i311.i = add nuw nsw i64 %indvars.iv.i302.i, 1 ; 2 uses
  %exitcond.not.i312.i = icmp eq i64 %indvars.iv.next.i311.i, %wide.trip.count.i301.i
  br i1 %exitcond.not.i312.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %bb.ai, !llvm.loop !74

bb.aj:                                            ; preds = %_ZNK3dpx13GenericHeader12ColorimetricEi.exit
  switch i32 %i.f, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit [
    i32 0, label %bb.ak
    i32 1, label %bb.al
    i32 2, label %bb.am
    i32 3, label %bb.an
    i32 4, label %bb.ao
  ]

bb.ak:                                            ; preds = %bb.aj
  %switch.tableidx533 = add i8 %i.h, -5           ; 2 uses
  %i.bam = icmp ult i8 %switch.tableidx533, 4
  br i1 %i.bam, label %switch.lookup534, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup534:                                 ; preds = %bb.ak
  %i.ban = icmp sgt i32 %i.t, 0
  br i1 %i.ban, label %.lr.ph.i314.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i314.i:                                    ; preds = %switch.lookup534
  %i.bao = zext nneg i8 %switch.tableidx533 to i64
  %switch.gep535 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.bao
  %switch.load536 = load ptr, ptr %switch.gep535, align 8 ; 5 uses
  %i.bap = getelementptr inbounds nuw i8, ptr %switch.load536, i64 16
  %i.baq = load <4 x float>, ptr %switch.load536, align 16, !tbaa !23 ; 7 uses
  %i.bar = load <2 x float>, ptr %i.bap, align 16, !tbaa !23 ; 4 uses
  %i.bas = getelementptr inbounds nuw i8, ptr %switch.load536, i64 24
  %i.bat = load float, ptr %i.bas, align 8, !tbaa !23 ; 2 uses
  %i.bau = getelementptr inbounds nuw i8, ptr %switch.load536, i64 28
  %i.bav = load float, ptr %i.bau, align 4, !tbaa !23 ; 2 uses
  %i.baw = getelementptr inbounds nuw i8, ptr %switch.load536, i64 32
  %i.bax = load float, ptr %i.baw, align 16, !tbaa !23 ; 2 uses
  %wide.trip.count.i315.i = zext nneg i32 %i.t to i64 ; 4 uses
  %min.iters.check248 = icmp ult i32 %i.t, 4
  br i1 %min.iters.check248, label %scalar.ph247.preheader, label %vector.memcheck241

vector.memcheck241:                               ; preds = %.lr.ph.i314.i
  %i.bay = shl nuw nsw i64 %wide.trip.count.i315.i, 2 ; 2 uses
  %scevgep242 = getelementptr i8, ptr %3, i64 %i.bay
  %scevgep243 = getelementptr i8, ptr %2, i64 %i.bay
  %bound0244 = icmp ult ptr %3, %scevgep243
  %bound1245 = icmp ult ptr %2, %scevgep242
  %found.conflict246 = and i1 %bound0244, %bound1245
  br i1 %found.conflict246, label %scalar.ph247.preheader, label %vector.ph249

vector.ph249:                                     ; preds = %vector.memcheck241
  %n.vec251 = and i64 %wide.trip.count.i315.i, 2147483644 ; 3 uses
  %broadcast.splat253 = shufflevector <4 x float> %i.baq, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat255 = shufflevector <4 x float> %i.baq, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat257 = shufflevector <4 x float> %i.baq, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat259 = shufflevector <4 x float> %i.baq, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat261 = shufflevector <2 x float> %i.bar, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat263 = shufflevector <2 x float> %i.bar, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert264 = insertelement <4 x float> poison, float %i.bat, i64 0
  %broadcast.splat265 = shufflevector <4 x float> %broadcast.splatinsert264, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert266 = insertelement <4 x float> poison, float %i.bav, i64 0
  %broadcast.splat267 = shufflevector <4 x float> %broadcast.splatinsert266, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert268 = insertelement <4 x float> poison, float %i.bax, i64 0
  %broadcast.splat269 = shufflevector <4 x float> %broadcast.splatinsert268, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body270

vector.body270:                                   ; preds = %vector.body270, %vector.ph249
  %index271 = phi i64 [ 0, %vector.ph249 ], [ %index.next272, %vector.body270 ] ; 5 uses
  %i.baz = shl nuw nsw i64 %index271, 2           ; 2 uses
  %i.bba = shl i64 %index271, 2
  %i.bbb = shl i64 %index271, 2
  %i.bbc = shl i64 %index271, 2
  %i.bbd = getelementptr inbounds nuw i8, ptr %2, i64 %i.baz ; 4 uses
  %i.bbe = getelementptr inbounds nuw i8, ptr %2, i64 %i.bba ; 4 uses
  %i.bbf = getelementptr inbounds nuw i8, ptr %i.bbe, i64 4
  %i.bbg = getelementptr inbounds nuw i8, ptr %2, i64 %i.bbb ; 4 uses
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.bbg, i64 8
  %i.bbi = getelementptr inbounds nuw i8, ptr %2, i64 %i.bbc ; 4 uses
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.bbi, i64 12
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.bbd, i64 1
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.bbe, i64 5
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.bbg, i64 9
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.bbi, i64 13
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.bbd, i64 2
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.bbe, i64 6
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.bbg, i64 10
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.bbi, i64 14
  %i.bbs = load i8, ptr %i.bbk, align 1, !tbaa !17, !alias.scope !75
  %i.bbt = load i8, ptr %i.bbl, align 1, !tbaa !17, !alias.scope !75
  %i.bbu = load i8, ptr %i.bbm, align 1, !tbaa !17, !alias.scope !75
  %i.bbv = load i8, ptr %i.bbn, align 1, !tbaa !17, !alias.scope !75
  %i.bbw = insertelement <4 x i8> poison, i8 %i.bbs, i64 0
  %i.bbx = insertelement <4 x i8> %i.bbw, i8 %i.bbt, i64 1
  %i.bby = insertelement <4 x i8> %i.bbx, i8 %i.bbu, i64 2
  %i.bbz = insertelement <4 x i8> %i.bby, i8 %i.bbv, i64 3
  %i.bca = uitofp <4 x i8> %i.bbz to <4 x float>  ; 3 uses
  %i.bcb = load i8, ptr %i.bbd, align 1, !tbaa !17, !alias.scope !75
  %i.bcc = load i8, ptr %i.bbf, align 1, !tbaa !17, !alias.scope !75
  %i.bcd = load i8, ptr %i.bbh, align 1, !tbaa !17, !alias.scope !75
  %i.bce = load i8, ptr %i.bbj, align 1, !tbaa !17, !alias.scope !75
  %i.bcf = insertelement <4 x i8> poison, i8 %i.bcb, i64 0
  %i.bcg = insertelement <4 x i8> %i.bcf, i8 %i.bcc, i64 1
  %i.bch = insertelement <4 x i8> %i.bcg, i8 %i.bcd, i64 2
  %i.bci = insertelement <4 x i8> %i.bch, i8 %i.bce, i64 3
  %i.bcj = uitofp <4 x i8> %i.bci to <4 x float>
  %i.bck = fadd nnan <4 x float> %i.bcj, splat (float -1.275000e+02) ; 3 uses
  %i.bcl = fmul <4 x float> %broadcast.splat255, %i.bck
  %i.bcm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat253, <4 x float> %i.bca, <4 x float> %i.bcl)
  %i.bcn = load i8, ptr %i.bbo, align 1, !tbaa !17, !alias.scope !75
  %i.bco = load i8, ptr %i.bbp, align 1, !tbaa !17, !alias.scope !75
  %i.bcp = load i8, ptr %i.bbq, align 1, !tbaa !17, !alias.scope !75
  %i.bcq = load i8, ptr %i.bbr, align 1, !tbaa !17, !alias.scope !75
  %i.bcr = insertelement <4 x i8> poison, i8 %i.bcn, i64 0
  %i.bcs = insertelement <4 x i8> %i.bcr, i8 %i.bco, i64 1
  %i.bct = insertelement <4 x i8> %i.bcs, i8 %i.bcp, i64 2
  %i.bcu = insertelement <4 x i8> %i.bct, i8 %i.bcq, i64 3
  %i.bcv = uitofp <4 x i8> %i.bcu to <4 x float>
  %i.bcw = fadd <4 x float> %i.bcv, splat (float -1.275000e+02) ; 3 uses
  %i.bcx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat257, <4 x float> %i.bcw, <4 x float> %i.bcm) ; 2 uses
  %i.bcy = fcmp ogt <4 x float> %i.bcx, splat (float 2.550000e+02)
  %i.bcz = select <4 x i1> %i.bcy, <4 x float> splat (float 2.550000e+02), <4 x float> %i.bcx
  %i.bda = fptoui <4 x float> %i.bcz to <4 x i8>
  %i.bdb = fmul <4 x float> %broadcast.splat261, %i.bck
  %i.bdc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat259, <4 x float> %i.bca, <4 x float> %i.bdb)
  %i.bdd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat263, <4 x float> %i.bcw, <4 x float> %i.bdc) ; 2 uses
  %i.bde = fcmp ogt <4 x float> %i.bdd, splat (float 2.550000e+02)
  %i.bdf = select <4 x i1> %i.bde, <4 x float> splat (float 2.550000e+02), <4 x float> %i.bdd
  %i.bdg = fptoui <4 x float> %i.bdf to <4 x i8>
  %i.bdh = fmul <4 x float> %broadcast.splat267, %i.bck
  %i.bdi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat265, <4 x float> %i.bca, <4 x float> %i.bdh)
  %i.bdj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat269, <4 x float> %i.bcw, <4 x float> %i.bdi) ; 2 uses
  %i.bdk = fcmp ogt <4 x float> %i.bdj, splat (float 2.550000e+02)
  %i.bdl = select <4 x i1> %i.bdk, <4 x float> splat (float 2.550000e+02), <4 x float> %i.bdj
  %i.bdm = fptoui <4 x float> %i.bdl to <4 x i8>
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.bbd, i64 3
  %i.bdo = getelementptr inbounds nuw i8, ptr %i.bbe, i64 7
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.bbg, i64 11
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.bbi, i64 15
  %i.bdr = load i8, ptr %i.bdn, align 1, !tbaa !17, !alias.scope !75
  %i.bds = load i8, ptr %i.bdo, align 1, !tbaa !17, !alias.scope !75
  %i.bdt = load i8, ptr %i.bdp, align 1, !tbaa !17, !alias.scope !75
  %i.bdu = load i8, ptr %i.bdq, align 1, !tbaa !17, !alias.scope !75
  %i.bdv = insertelement <4 x i8> poison, i8 %i.bdr, i64 0
  %i.bdw = insertelement <4 x i8> %i.bdv, i8 %i.bds, i64 1
  %i.bdx = insertelement <4 x i8> %i.bdw, i8 %i.bdt, i64 2
  %i.bdy = insertelement <4 x i8> %i.bdx, i8 %i.bdu, i64 3
  %i.bdz = getelementptr inbounds nuw i8, ptr %3, i64 %i.baz
  %i.bea = zext <4 x i8> %i.bdy to <4 x i32>
  %i.beb = shl nuw <4 x i32> %i.bea, splat (i32 24)
  %i.bec = zext <4 x i8> %i.bda to <4 x i32>
  %i.bed = shl nuw nsw <4 x i32> %i.bec, splat (i32 16)
  %i.bee = or disjoint <4 x i32> %i.bed, %i.beb
  %i.bef = zext <4 x i8> %i.bdg to <4 x i32>
  %i.beg = shl nuw nsw <4 x i32> %i.bef, splat (i32 8)
  %i.beh = or disjoint <4 x i32> %i.bee, %i.beg
  %i.bei = zext <4 x i8> %i.bdm to <4 x i32>
  %i.bej = or disjoint <4 x i32> %i.beh, %i.bei
  store <4 x i32> %i.bej, ptr %i.bdz, align 1, !alias.scope !78, !noalias !75
  %index.next272 = add nuw i64 %index271, 4       ; 2 uses
  %i.bek = icmp eq i64 %index.next272, %n.vec251
  br i1 %i.bek, label %middle.block273, label %vector.body270, !llvm.loop !80

middle.block273:                                  ; preds = %vector.body270
  %cmp.n274 = icmp eq i64 %n.vec251, %wide.trip.count.i315.i
  br i1 %cmp.n274, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph247.preheader

scalar.ph247.preheader:                           ; preds = %vector.memcheck241, %.lr.ph.i314.i, %middle.block273
  %indvars.iv.i316.i.ph = phi i64 [ 0, %vector.memcheck241 ], [ 0, %.lr.ph.i314.i ], [ %n.vec251, %middle.block273 ]
  %i.bel = shufflevector <4 x float> %i.baq, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.bem = shufflevector <2 x float> %i.bar, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ben = shufflevector <4 x float> %i.baq, <4 x float> %i.bem, <2 x i32> <i32 1, i32 4>
  %i.beo = shufflevector <4 x float> %i.baq, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bep = shufflevector <2 x float> %i.bel, <2 x float> %i.bar, <2 x i32> <i32 0, i32 3>
  br label %scalar.ph247

scalar.ph247:                                     ; preds = %scalar.ph247.preheader, %scalar.ph247
  %indvars.iv.i316.i = phi i64 [ %indvars.iv.next.i320.i, %scalar.ph247 ], [ %indvars.iv.i316.i.ph, %scalar.ph247.preheader ] ; 2 uses
  %i.beq = shl nuw nsw i64 %indvars.iv.i316.i, 2  ; 2 uses
  %i.ber = getelementptr inbounds nuw i8, ptr %2, i64 %i.beq ; 4 uses
  %i.bes = getelementptr inbounds nuw i8, ptr %i.ber, i64 1
  %i.bet = getelementptr inbounds nuw i8, ptr %i.ber, i64 2
  %i.beu = load i8, ptr %i.bes, align 1, !tbaa !17
  %i.bev = uitofp i8 %i.beu to float              ; 2 uses
  %i.bew = load i8, ptr %i.ber, align 1, !tbaa !17
  %i.bex = uitofp i8 %i.bew to float
  %i.bey = fadd nnan float %i.bex, -1.275000e+02  ; 2 uses
  %i.bez = load i8, ptr %i.bet, align 1, !tbaa !17
  %i.bfa = uitofp i8 %i.bez to float
  %i.bfb = fadd float %i.bfa, -1.275000e+02       ; 2 uses
  %i.bfc = fmul float %i.bav, %i.bey
  %i.bfd = tail call float @llvm.fmuladd.f32(float %i.bat, float %i.bev, float %i.bfc)
  %i.bfe = tail call float @llvm.fmuladd.f32(float %i.bax, float %i.bfb, float %i.bfd) ; 2 uses
  %i.bff = fcmp ogt float %i.bfe, 2.550000e+02
  %.sroa.speculated.2.i.i319.i = select i1 %i.bff, float 2.550000e+02, float %i.bfe
  %i.bfg = fptoui float %.sroa.speculated.2.i.i319.i to i8
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.ber, i64 3
  %i.bfi = load i8, ptr %i.bfh, align 1, !tbaa !17
  %i.bfj = getelementptr inbounds nuw i8, ptr %3, i64 %i.beq
  %.sroa.6.0.insert.ext.i.i = zext i8 %i.bfi to i32
  %.sroa.6.0.insert.shift.i.i = shl nuw i32 %.sroa.6.0.insert.ext.i.i, 24
  %i.bfk = insertelement <2 x float> poison, float %i.bey, i64 0
  %i.bfl = shufflevector <2 x float> %i.bfk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bfm = fmul <2 x float> %i.ben, %i.bfl
  %i.bfn = insertelement <2 x float> poison, float %i.bev, i64 0
  %i.bfo = shufflevector <2 x float> %i.bfn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bfp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.beo, <2 x float> %i.bfo, <2 x float> %i.bfm)
  %i.bfq = insertelement <2 x float> poison, float %i.bfb, i64 0
  %i.bfr = shufflevector <2 x float> %i.bfq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bfs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bep, <2 x float> %i.bfr, <2 x float> %i.bfp) ; 2 uses
  %i.bft = fcmp ogt <2 x float> %i.bfs, splat (float 2.550000e+02)
  %i.bfu = select <2 x i1> %i.bft, <2 x float> splat (float 2.550000e+02), <2 x float> %i.bfs
  %i.bfv = fptoui <2 x float> %i.bfu to <2 x i8>
  %i.bfw = zext <2 x i8> %i.bfv to <2 x i32>
  %i.bfx = shl nuw nsw <2 x i32> %i.bfw, <i32 16, i32 8> ; 2 uses
  %i.bfy = extractelement <2 x i32> %i.bfx, i64 0
  %.sroa.5.0.insert.insert.i.i = or disjoint i32 %i.bfy, %.sroa.6.0.insert.shift.i.i
  %i.bfz = extractelement <2 x i32> %i.bfx, i64 1
  %.sroa.4.0.insert.insert.i.i = or disjoint i32 %.sroa.5.0.insert.insert.i.i, %i.bfz
  %.sroa.0.0.insert.ext.i.i = zext i8 %i.bfg to i32
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.4.0.insert.insert.i.i, %.sroa.0.0.insert.ext.i.i
  store i32 %.sroa.0.0.insert.insert.i.i, ptr %i.bfj, align 1
  %indvars.iv.next.i320.i = add nuw nsw i64 %indvars.iv.i316.i, 1 ; 2 uses
  %exitcond.not.i321.i = icmp eq i64 %indvars.iv.next.i320.i, %wide.trip.count.i315.i
  br i1 %exitcond.not.i321.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph247, !llvm.loop !81

bb.al:                                            ; preds = %bb.aj
  %switch.tableidx537 = add i8 %i.h, -5           ; 2 uses
  %i.bga = icmp ult i8 %switch.tableidx537, 4
  br i1 %i.bga, label %switch.lookup538, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup538:                                 ; preds = %bb.al
  %i.bgb = icmp sgt i32 %i.t, 0
  br i1 %i.bgb, label %.lr.ph.i323.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i323.i:                                    ; preds = %switch.lookup538
  %i.bgc = zext nneg i8 %switch.tableidx537 to i64
  %switch.gep539 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.bgc
  %switch.load540 = load ptr, ptr %switch.gep539, align 8 ; 5 uses
  %i.bgd = getelementptr inbounds nuw i8, ptr %switch.load540, i64 16
  %i.bge = load <4 x float>, ptr %switch.load540, align 16, !tbaa !23 ; 7 uses
  %i.bgf = load <2 x float>, ptr %i.bgd, align 16, !tbaa !23 ; 4 uses
  %i.bgg = getelementptr inbounds nuw i8, ptr %switch.load540, i64 24
  %i.bgh = load float, ptr %i.bgg, align 8, !tbaa !23 ; 2 uses
  %i.bgi = getelementptr inbounds nuw i8, ptr %switch.load540, i64 28
  %i.bgj = load float, ptr %i.bgi, align 4, !tbaa !23 ; 2 uses
  %i.bgk = getelementptr inbounds nuw i8, ptr %switch.load540, i64 32
  %i.bgl = load float, ptr %i.bgk, align 16, !tbaa !23 ; 2 uses
  %wide.trip.count.i324.i = zext nneg i32 %i.t to i64 ; 4 uses
  %min.iters.check213 = icmp eq i32 %i.t, 1
  br i1 %min.iters.check213, label %scalar.ph212.preheader, label %vector.memcheck206

vector.memcheck206:                               ; preds = %.lr.ph.i323.i
  %i.bgm = shl nuw nsw i64 %wide.trip.count.i324.i, 3 ; 2 uses
  %scevgep207 = getelementptr i8, ptr %3, i64 %i.bgm
  %scevgep208 = getelementptr i8, ptr %2, i64 %i.bgm
  %bound0209 = icmp ult ptr %3, %scevgep208
  %bound1210 = icmp ult ptr %2, %scevgep207
  %found.conflict211 = and i1 %bound0209, %bound1210
  br i1 %found.conflict211, label %scalar.ph212.preheader, label %vector.ph214

vector.ph214:                                     ; preds = %vector.memcheck206
  %n.vec216 = and i64 %wide.trip.count.i324.i, 2147483646 ; 3 uses
  %broadcast.splat218 = shufflevector <4 x float> %i.bge, <4 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splat220 = shufflevector <4 x float> %i.bge, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat222 = shufflevector <4 x float> %i.bge, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %broadcast.splat224 = shufflevector <4 x float> %i.bge, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %broadcast.splat226 = shufflevector <2 x float> %i.bgf, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splat228 = shufflevector <2 x float> %i.bgf, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splatinsert229 = insertelement <2 x float> poison, float %i.bgh, i64 0
  %broadcast.splat230 = shufflevector <2 x float> %broadcast.splatinsert229, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert231 = insertelement <2 x float> poison, float %i.bgj, i64 0
  %broadcast.splat232 = shufflevector <2 x float> %broadcast.splatinsert231, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert233 = insertelement <2 x float> poison, float %i.bgl, i64 0
  %broadcast.splat234 = shufflevector <2 x float> %broadcast.splatinsert233, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body235

vector.body235:                                   ; preds = %vector.body235, %vector.ph214
  %index236 = phi i64 [ 0, %vector.ph214 ], [ %index.next237, %vector.body235 ] ; 3 uses
  %i.bgn = shl nuw nsw i64 %index236, 2           ; 2 uses
  %i.bgo = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bgn ; 4 uses
  %.idx462 = shl i64 %index236, 3
  %i.bgp = getelementptr inbounds nuw i8, ptr %2, i64 %.idx462 ; 4 uses
  %i.bgq = getelementptr inbounds nuw i8, ptr %i.bgp, i64 8
  %i.bgr = getelementptr inbounds nuw i8, ptr %i.bgo, i64 2
  %i.bgs = getelementptr inbounds nuw i8, ptr %i.bgp, i64 10
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.bgo, i64 4
  %i.bgu = getelementptr inbounds nuw i8, ptr %i.bgp, i64 12
  %i.bgv = load i16, ptr %i.bgr, align 2, !tbaa !20, !alias.scope !82
  %i.bgw = load i16, ptr %i.bgs, align 2, !tbaa !20, !alias.scope !82
  %i.bgx = insertelement <2 x i16> poison, i16 %i.bgv, i64 0
  %i.bgy = insertelement <2 x i16> %i.bgx, i16 %i.bgw, i64 1
  %i.bgz = uitofp <2 x i16> %i.bgy to <2 x float> ; 3 uses
  %i.bha = load i16, ptr %i.bgo, align 2, !tbaa !20, !alias.scope !82
  %i.bhb = load i16, ptr %i.bgq, align 2, !tbaa !20, !alias.scope !82
  %i.bhc = insertelement <2 x i16> poison, i16 %i.bha, i64 0
  %i.bhd = insertelement <2 x i16> %i.bhc, i16 %i.bhb, i64 1
  %i.bhe = uitofp <2 x i16> %i.bhd to <2 x float>
  %i.bhf = fadd nnan <2 x float> %i.bhe, splat (float -3.276750e+04) ; 3 uses
  %i.bhg = fmul <2 x float> %broadcast.splat220, %i.bhf
  %i.bhh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %broadcast.splat218, <2 x float> %i.bgz, <2 x float> %i.bhg)
  %i.bhi = load i16, ptr %i.bgt, align 2, !tbaa !20, !alias.scope !82
  %i.bhj = load i16, ptr %i.bgu, align 2, !tbaa !20, !alias.scope !82
  %i.bhk = insertelement <2 x i16> poison, i16 %i.bhi, i64 0
  %i.bhl = insertelement <2 x i16> %i.bhk, i16 %i.bhj, i64 1
  %i.bhm = uitofp <2 x i16> %i.bhl to <2 x float>
  %i.bhn = fadd <2 x float> %i.bhm, splat (float -3.276750e+04) ; 3 uses
  %i.bho = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %broadcast.splat222, <2 x float> %i.bhn, <2 x float> %i.bhh) ; 2 uses
  %i.bhp = fcmp ogt <2 x float> %i.bho, splat (float 6.553500e+04)
  %i.bhq = select <2 x i1> %i.bhp, <2 x float> splat (float 6.553500e+04), <2 x float> %i.bho
  %i.bhr = fptoui <2 x float> %i.bhq to <2 x i16>
  %i.bhs = fmul <2 x float> %broadcast.splat226, %i.bhf
  %i.bht = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %broadcast.splat224, <2 x float> %i.bgz, <2 x float> %i.bhs)
  %i.bhu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %broadcast.splat228, <2 x float> %i.bhn, <2 x float> %i.bht) ; 2 uses
  %i.bhv = fcmp ogt <2 x float> %i.bhu, splat (float 6.553500e+04)
  %i.bhw = select <2 x i1> %i.bhv, <2 x float> splat (float 6.553500e+04), <2 x float> %i.bhu
  %i.bhx = fptoui <2 x float> %i.bhw to <2 x i16>
  %i.bhy = fmul <2 x float> %broadcast.splat232, %i.bhf
  %i.bhz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %broadcast.splat230, <2 x float> %i.bgz, <2 x float> %i.bhy)
  %i.bia = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %broadcast.splat234, <2 x float> %i.bhn, <2 x float> %i.bhz) ; 2 uses
  %i.bib = fcmp ogt <2 x float> %i.bia, splat (float 6.553500e+04)
  %i.bic = select <2 x i1> %i.bib, <2 x float> splat (float 6.553500e+04), <2 x float> %i.bia
  %i.bid = fptoui <2 x float> %i.bic to <2 x i16>
  %i.bie = getelementptr inbounds nuw i8, ptr %i.bgo, i64 6
  %i.bif = getelementptr inbounds nuw i8, ptr %i.bgp, i64 14
  %i.big = load i16, ptr %i.bie, align 2, !tbaa !20, !alias.scope !82
  %i.bih = load i16, ptr %i.bif, align 2, !tbaa !20, !alias.scope !82
  %i.bii = insertelement <2 x i16> poison, i16 %i.big, i64 0
  %i.bij = insertelement <2 x i16> %i.bii, i16 %i.bih, i64 1
  %i.bik = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bgn
  %i.bil = zext <2 x i16> %i.bij to <2 x i64>
  %i.bim = shl nuw <2 x i64> %i.bil, splat (i64 48)
  %i.bin = zext <2 x i16> %i.bhr to <2 x i64>
  %i.bio = shl nuw nsw <2 x i64> %i.bin, splat (i64 32)
  %i.bip = or disjoint <2 x i64> %i.bio, %i.bim
  %i.biq = zext <2 x i16> %i.bhx to <2 x i64>
  %i.bir = shl nuw nsw <2 x i64> %i.biq, splat (i64 16)
  %i.bis = or disjoint <2 x i64> %i.bip, %i.bir
  %i.bit = zext <2 x i16> %i.bid to <2 x i64>
  %i.biu = or disjoint <2 x i64> %i.bis, %i.bit
  store <2 x i64> %i.biu, ptr %i.bik, align 2, !alias.scope !85, !noalias !82
  %index.next237 = add nuw i64 %index236, 2       ; 2 uses
  %i.biv = icmp eq i64 %index.next237, %n.vec216
  br i1 %i.biv, label %middle.block238, label %vector.body235, !llvm.loop !87

middle.block238:                                  ; preds = %vector.body235
  %cmp.n239 = icmp eq i64 %n.vec216, %wide.trip.count.i324.i
  br i1 %cmp.n239, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph212.preheader

scalar.ph212.preheader:                           ; preds = %vector.memcheck206, %.lr.ph.i323.i, %middle.block238
  %indvars.iv.i325.i.ph = phi i64 [ 0, %vector.memcheck206 ], [ 0, %.lr.ph.i323.i ], [ %n.vec216, %middle.block238 ]
  %i.biw = shufflevector <4 x float> %i.bge, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.bix = shufflevector <2 x float> %i.bgf, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.biy = shufflevector <4 x float> %i.bge, <4 x float> %i.bix, <2 x i32> <i32 1, i32 4>
  %i.biz = shufflevector <4 x float> %i.bge, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bja = shufflevector <2 x float> %i.biw, <2 x float> %i.bgf, <2 x i32> <i32 0, i32 3>
  br label %scalar.ph212

scalar.ph212:                                     ; preds = %scalar.ph212.preheader, %scalar.ph212
  %indvars.iv.i325.i = phi i64 [ %indvars.iv.next.i339.i, %scalar.ph212 ], [ %indvars.iv.i325.i.ph, %scalar.ph212.preheader ] ; 2 uses
  %i.bjb = shl nuw nsw i64 %indvars.iv.i325.i, 2  ; 2 uses
  %i.bjc = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bjb ; 4 uses
  %i.bjd = getelementptr inbounds nuw i8, ptr %i.bjc, i64 2
  %i.bje = getelementptr inbounds nuw i8, ptr %i.bjc, i64 4
  %i.bjf = load i16, ptr %i.bjd, align 2, !tbaa !20
  %i.bjg = uitofp i16 %i.bjf to float             ; 2 uses
  %i.bjh = load i16, ptr %i.bjc, align 2, !tbaa !20
  %i.bji = uitofp i16 %i.bjh to float
  %i.bjj = fadd nnan float %i.bji, -3.276750e+04  ; 2 uses
  %i.bjk = load i16, ptr %i.bje, align 2, !tbaa !20
  %i.bjl = uitofp i16 %i.bjk to float
  %i.bjm = fadd float %i.bjl, -3.276750e+04       ; 2 uses
  %i.bjn = fmul float %i.bgj, %i.bjj
  %i.bjo = tail call float @llvm.fmuladd.f32(float %i.bgh, float %i.bjg, float %i.bjn)
  %i.bjp = tail call float @llvm.fmuladd.f32(float %i.bgl, float %i.bjm, float %i.bjo) ; 2 uses
  %i.bjq = fcmp ogt float %i.bjp, 6.553500e+04
  %.sroa.speculated.2.i.i328.i = select i1 %i.bjq, float 6.553500e+04, float %i.bjp
  %i.bjr = fptoui float %.sroa.speculated.2.i.i328.i to i16
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.bjc, i64 6
  %i.bjt = load i16, ptr %i.bjs, align 2, !tbaa !20
  %i.bju = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bjb
  %.sroa.6.0.insert.ext.i329.i = zext i16 %i.bjt to i64
  %.sroa.6.0.insert.shift.i330.i = shl nuw i64 %.sroa.6.0.insert.ext.i329.i, 48
  %i.bjv = insertelement <2 x float> poison, float %i.bjj, i64 0
  %i.bjw = shufflevector <2 x float> %i.bjv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bjx = fmul <2 x float> %i.biy, %i.bjw
  %i.bjy = insertelement <2 x float> poison, float %i.bjg, i64 0
  %i.bjz = shufflevector <2 x float> %i.bjy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bka = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.biz, <2 x float> %i.bjz, <2 x float> %i.bjx)
  %i.bkb = insertelement <2 x float> poison, float %i.bjm, i64 0
  %i.bkc = shufflevector <2 x float> %i.bkb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bkd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bja, <2 x float> %i.bkc, <2 x float> %i.bka) ; 2 uses
  %i.bke = fcmp ogt <2 x float> %i.bkd, splat (float 6.553500e+04)
  %i.bkf = select <2 x i1> %i.bke, <2 x float> splat (float 6.553500e+04), <2 x float> %i.bkd
  %i.bkg = fptoui <2 x float> %i.bkf to <2 x i16>
  %i.bkh = zext <2 x i16> %i.bkg to <2 x i64>
  %i.bki = shl nuw nsw <2 x i64> %i.bkh, <i64 32, i64 16> ; 2 uses
  %i.bkj = extractelement <2 x i64> %i.bki, i64 0
  %.sroa.5.0.insert.insert.i333.i = or disjoint i64 %i.bkj, %.sroa.6.0.insert.shift.i330.i
  %i.bkk = extractelement <2 x i64> %i.bki, i64 1
  %.sroa.4.0.insert.insert.i336.i = or disjoint i64 %.sroa.5.0.insert.insert.i333.i, %i.bkk
  %.sroa.0.0.insert.ext.i337.i = zext i16 %i.bjr to i64
  %.sroa.0.0.insert.insert.i338.i = or disjoint i64 %.sroa.4.0.insert.insert.i336.i, %.sroa.0.0.insert.ext.i337.i
  store i64 %.sroa.0.0.insert.insert.i338.i, ptr %i.bju, align 2
  %indvars.iv.next.i339.i = add nuw nsw i64 %indvars.iv.i325.i, 1 ; 2 uses
  %exitcond.not.i340.i = icmp eq i64 %indvars.iv.next.i339.i, %wide.trip.count.i324.i
  br i1 %exitcond.not.i340.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph212, !llvm.loop !88

bb.am:                                            ; preds = %bb.aj
  %switch.tableidx541 = add i8 %i.h, -5           ; 2 uses
  %i.bkl = icmp ult i8 %switch.tableidx541, 4
  br i1 %i.bkl, label %switch.lookup542, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup542:                                 ; preds = %bb.am
  %i.bkm = icmp sgt i32 %i.t, 0
  br i1 %i.bkm, label %.lr.ph.i342.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i342.i:                                    ; preds = %switch.lookup542
  %i.bkn = zext nneg i8 %switch.tableidx541 to i64
  %switch.gep543 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.bkn
  %switch.load544 = load ptr, ptr %switch.gep543, align 8 ; 5 uses
  %i.bko = load float, ptr %switch.load544, align 16, !tbaa !23 ; 2 uses
  %i.bkp = getelementptr inbounds nuw i8, ptr %switch.load544, i64 4
  %i.bkq = load float, ptr %i.bkp, align 4, !tbaa !23 ; 2 uses
  %i.bkr = getelementptr inbounds nuw i8, ptr %switch.load544, i64 8
  %i.bks = load float, ptr %i.bkr, align 8, !tbaa !23 ; 2 uses
  %i.bkt = getelementptr inbounds nuw i8, ptr %switch.load544, i64 12
  %i.bku = getelementptr inbounds nuw i8, ptr %switch.load544, i64 28
  %i.bkv = load <4 x float>, ptr %i.bkt, align 4, !tbaa !23 ; 7 uses
  %i.bkw = load <2 x float>, ptr %i.bku, align 4, !tbaa !23 ; 4 uses
  %wide.trip.count.i343.i = zext nneg i32 %i.t to i64 ; 4 uses
  %min.iters.check177 = icmp ult i32 %i.t, 4
  br i1 %min.iters.check177, label %scalar.ph176.preheader, label %vector.memcheck170

vector.memcheck170:                               ; preds = %.lr.ph.i342.i
  %i.bkx = shl nuw nsw i64 %wide.trip.count.i343.i, 4 ; 2 uses
  %scevgep171 = getelementptr i8, ptr %3, i64 %i.bkx
  %scevgep172 = getelementptr i8, ptr %2, i64 %i.bkx
  %bound0173 = icmp ult ptr %3, %scevgep172
  %bound1174 = icmp ult ptr %2, %scevgep171
  %found.conflict175 = and i1 %bound0173, %bound1174
  br i1 %found.conflict175, label %scalar.ph176.preheader, label %vector.ph178

vector.ph178:                                     ; preds = %vector.memcheck170
  %n.vec180 = and i64 %wide.trip.count.i343.i, 2147483644 ; 3 uses
  %broadcast.splatinsert181 = insertelement <4 x float> poison, float %i.bko, i64 0
  %broadcast.splat182 = shufflevector <4 x float> %broadcast.splatinsert181, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert183 = insertelement <4 x float> poison, float %i.bkq, i64 0
  %broadcast.splat184 = shufflevector <4 x float> %broadcast.splatinsert183, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert185 = insertelement <4 x float> poison, float %i.bks, i64 0
  %broadcast.splat186 = shufflevector <4 x float> %broadcast.splatinsert185, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat188 = shufflevector <4 x float> %i.bkv, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat190 = shufflevector <4 x float> %i.bkv, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat192 = shufflevector <4 x float> %i.bkv, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat194 = shufflevector <4 x float> %i.bkv, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat196 = shufflevector <2 x float> %i.bkw, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat198 = shufflevector <2 x float> %i.bkw, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body199

vector.body199:                                   ; preds = %vector.body199, %vector.ph178
  %index200 = phi i64 [ 0, %vector.ph178 ], [ %index.next202, %vector.body199 ] ; 5 uses
  %i.bky = shl nuw nsw i64 %index200, 2           ; 2 uses
  %i.bkz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bky ; 4 uses
  %.idx459 = shl i64 %index200, 4
  %i.bla = getelementptr inbounds nuw i8, ptr %2, i64 %.idx459 ; 4 uses
  %i.blb = getelementptr inbounds nuw i8, ptr %i.bla, i64 16
  %.idx460 = shl i64 %index200, 4
  %i.blc = getelementptr inbounds nuw i8, ptr %2, i64 %.idx460 ; 4 uses
  %i.bld = getelementptr inbounds nuw i8, ptr %i.blc, i64 32
  %.idx461 = shl i64 %index200, 4
  %i.ble = getelementptr inbounds nuw i8, ptr %2, i64 %.idx461 ; 4 uses
  %i.blf = getelementptr inbounds nuw i8, ptr %i.ble, i64 48
  %i.blg = getelementptr inbounds nuw i8, ptr %i.bkz, i64 4
  %i.blh = getelementptr inbounds nuw i8, ptr %i.bla, i64 20
  %i.bli = getelementptr inbounds nuw i8, ptr %i.blc, i64 36
  %i.blj = getelementptr inbounds nuw i8, ptr %i.ble, i64 52
  %i.blk = getelementptr inbounds nuw i8, ptr %i.bkz, i64 8
  %i.bll = getelementptr inbounds nuw i8, ptr %i.bla, i64 24
  %i.blm = getelementptr inbounds nuw i8, ptr %i.blc, i64 40
  %i.bln = getelementptr inbounds nuw i8, ptr %i.ble, i64 56
  %i.blo = load i32, ptr %i.blg, align 4, !tbaa !3, !alias.scope !89
  %i.blp = load i32, ptr %i.blh, align 4, !tbaa !3, !alias.scope !89
  %i.blq = load i32, ptr %i.bli, align 4, !tbaa !3, !alias.scope !89
  %i.blr = load i32, ptr %i.blj, align 4, !tbaa !3, !alias.scope !89
  %i.bls = insertelement <4 x i32> poison, i32 %i.blo, i64 0
  %i.blt = insertelement <4 x i32> %i.bls, i32 %i.blp, i64 1
  %i.blu = insertelement <4 x i32> %i.blt, i32 %i.blq, i64 2
  %i.blv = insertelement <4 x i32> %i.blu, i32 %i.blr, i64 3
  %i.blw = uitofp <4 x i32> %i.blv to <4 x float> ; 3 uses
  %i.blx = load i32, ptr %i.bkz, align 4, !tbaa !3, !alias.scope !89
  %i.bly = load i32, ptr %i.blb, align 4, !tbaa !3, !alias.scope !89
  %i.blz = load i32, ptr %i.bld, align 4, !tbaa !3, !alias.scope !89
  %i.bma = load i32, ptr %i.blf, align 4, !tbaa !3, !alias.scope !89
  %i.bmb = insertelement <4 x i32> poison, i32 %i.blx, i64 0
  %i.bmc = insertelement <4 x i32> %i.bmb, i32 %i.bly, i64 1
  %i.bmd = insertelement <4 x i32> %i.bmc, i32 %i.blz, i64 2
  %i.bme = insertelement <4 x i32> %i.bmd, i32 %i.bma, i64 3
  %i.bmf = uitofp <4 x i32> %i.bme to <4 x float>
  %i.bmg = fadd nnan <4 x float> %i.bmf, splat (float f0xCF000000) ; 3 uses
  %i.bmh = fmul <4 x float> %broadcast.splat184, %i.bmg
  %i.bmi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat182, <4 x float> %i.blw, <4 x float> %i.bmh)
  %i.bmj = load i32, ptr %i.blk, align 4, !tbaa !3, !alias.scope !89
  %i.bmk = load i32, ptr %i.bll, align 4, !tbaa !3, !alias.scope !89
  %i.bml = load i32, ptr %i.blm, align 4, !tbaa !3, !alias.scope !89
  %i.bmm = load i32, ptr %i.bln, align 4, !tbaa !3, !alias.scope !89
  %i.bmn = insertelement <4 x i32> poison, i32 %i.bmj, i64 0
  %i.bmo = insertelement <4 x i32> %i.bmn, i32 %i.bmk, i64 1
  %i.bmp = insertelement <4 x i32> %i.bmo, i32 %i.bml, i64 2
  %i.bmq = insertelement <4 x i32> %i.bmp, i32 %i.bmm, i64 3
  %i.bmr = uitofp <4 x i32> %i.bmq to <4 x float>
  %i.bms = fadd <4 x float> %i.bmr, splat (float f0xCF000000) ; 3 uses
  %i.bmt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat186, <4 x float> %i.bms, <4 x float> %i.bmi) ; 2 uses
  %i.bmu = fcmp ogt <4 x float> %i.bmt, splat (float f0x4F800000)
  %i.bmv = select <4 x i1> %i.bmu, <4 x float> splat (float f0x4F800000), <4 x float> %i.bmt
  %i.bmw = fptoui <4 x float> %i.bmv to <4 x i32>
  %i.bmx = fmul <4 x float> %broadcast.splat190, %i.bmg
  %i.bmy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat188, <4 x float> %i.blw, <4 x float> %i.bmx)
  %i.bmz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat192, <4 x float> %i.bms, <4 x float> %i.bmy) ; 2 uses
  %i.bna = fmul <4 x float> %broadcast.splat196, %i.bmg
  %i.bnb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat194, <4 x float> %i.blw, <4 x float> %i.bna)
  %i.bnc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat198, <4 x float> %i.bms, <4 x float> %i.bnb) ; 2 uses
  %i.bnd = getelementptr inbounds nuw i8, ptr %i.bkz, i64 12
  %i.bne = getelementptr inbounds nuw i8, ptr %i.bla, i64 28
  %i.bnf = getelementptr inbounds nuw i8, ptr %i.blc, i64 44
  %i.bng = getelementptr inbounds nuw i8, ptr %i.ble, i64 60
  %i.bnh = load i32, ptr %i.bnd, align 4, !tbaa !3, !alias.scope !89
  %i.bni = load i32, ptr %i.bne, align 4, !tbaa !3, !alias.scope !89
  %i.bnj = load i32, ptr %i.bnf, align 4, !tbaa !3, !alias.scope !89
  %i.bnk = load i32, ptr %i.bng, align 4, !tbaa !3, !alias.scope !89
  %i.bnl = insertelement <4 x i32> poison, i32 %i.bnh, i64 0
  %i.bnm = insertelement <4 x i32> %i.bnl, i32 %i.bni, i64 1
  %i.bnn = insertelement <4 x i32> %i.bnm, i32 %i.bnj, i64 2
  %i.bno = insertelement <4 x i32> %i.bnn, i32 %i.bnk, i64 3
  %i.bnp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bky
  %i.bnq = shufflevector <4 x float> %i.bnc, <4 x float> %i.bmz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bnr = fcmp ogt <8 x float> %i.bnq, splat (float f0x4F800000)
  %i.bns = shufflevector <4 x float> %i.bnc, <4 x float> %i.bmz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bnt = select <8 x i1> %i.bnr, <8 x float> splat (float f0x4F800000), <8 x float> %i.bns
  %i.bnu = fptoui <8 x float> %i.bnt to <8 x i32>
  %i.bnv = shufflevector <4 x i32> %i.bmw, <4 x i32> %i.bno, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec201 = shufflevector <8 x i32> %i.bnu, <8 x i32> %i.bnv, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i32> %interleaved.vec201, ptr %i.bnp, align 4, !alias.scope !92, !noalias !89
  %index.next202 = add nuw i64 %index200, 4       ; 2 uses
  %i.bnw = icmp eq i64 %index.next202, %n.vec180
  br i1 %i.bnw, label %middle.block203, label %vector.body199, !llvm.loop !94

middle.block203:                                  ; preds = %vector.body199
  %cmp.n204 = icmp eq i64 %n.vec180, %wide.trip.count.i343.i
  br i1 %cmp.n204, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph176.preheader

scalar.ph176.preheader:                           ; preds = %vector.memcheck170, %.lr.ph.i342.i, %middle.block203
  %indvars.iv.i344.i.ph = phi i64 [ 0, %vector.memcheck170 ], [ 0, %.lr.ph.i342.i ], [ %n.vec180, %middle.block203 ]
  %i.bnx = shufflevector <2 x float> %i.bkw, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bny = shufflevector <4 x float> %i.bnx, <4 x float> %i.bkv, <2 x i32> <i32 0, i32 5>
  %i.bnz = shufflevector <4 x float> %i.bkv, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.boa = shufflevector <4 x float> %i.bkv, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.bob = shufflevector <2 x float> %i.bkw, <2 x float> %i.boa, <2 x i32> <i32 1, i32 3>
  br label %scalar.ph176

scalar.ph176:                                     ; preds = %scalar.ph176.preheader, %scalar.ph176
  %indvars.iv.i344.i = phi i64 [ %indvars.iv.next.i350.i, %scalar.ph176 ], [ %indvars.iv.i344.i.ph, %scalar.ph176.preheader ] ; 2 uses
  %i.boc = shl nuw nsw i64 %indvars.iv.i344.i, 2  ; 2 uses
  %i.bod = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.boc ; 4 uses
  %i.boe = getelementptr inbounds nuw i8, ptr %i.bod, i64 4
  %i.bof = getelementptr inbounds nuw i8, ptr %i.bod, i64 8
  %i.bog = load i32, ptr %i.boe, align 4, !tbaa !3
  %i.boh = uitofp i32 %i.bog to float             ; 2 uses
  %i.boi = load i32, ptr %i.bod, align 4, !tbaa !3
  %i.boj = uitofp i32 %i.boi to float
  %i.bok = fadd nnan float %i.boj, f0xCF000000    ; 2 uses
  %i.bol = fmul float %i.bkq, %i.bok
  %i.bom = tail call float @llvm.fmuladd.f32(float %i.bko, float %i.boh, float %i.bol)
  %i.bon = load i32, ptr %i.bof, align 4, !tbaa !3
  %i.boo = uitofp i32 %i.bon to float
  %i.bop = fadd float %i.boo, f0xCF000000         ; 2 uses
  %i.boq = tail call float @llvm.fmuladd.f32(float %i.bks, float %i.bop, float %i.bom) ; 2 uses
  %i.bor = fcmp ogt float %i.boq, f0x4F800000
  %.sroa.speculated.i.i345.i = select i1 %i.bor, float f0x4F800000, float %i.boq
  %i.bos = fptoui float %.sroa.speculated.i.i345.i to i32
  %i.bot = getelementptr inbounds nuw i8, ptr %i.bod, i64 12
  %i.bou = load i32, ptr %i.bot, align 4, !tbaa !3
  %i.bov = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.boc ; 3 uses
  %i.bow = insertelement <2 x float> poison, float %i.bok, i64 0
  %i.box = shufflevector <2 x float> %i.bow, <2 x float> poison, <2 x i32> zeroinitializer
  %i.boy = fmul <2 x float> %i.bny, %i.box
  %i.boz = insertelement <2 x float> poison, float %i.boh, i64 0
  %i.bpa = shufflevector <2 x float> %i.boz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bpb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bnz, <2 x float> %i.bpa, <2 x float> %i.boy)
  %i.bpc = insertelement <2 x float> poison, float %i.bop, i64 0
  %i.bpd = shufflevector <2 x float> %i.bpc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bpe = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bob, <2 x float> %i.bpd, <2 x float> %i.bpb) ; 2 uses
  %i.bpf = fcmp ogt <2 x float> %i.bpe, splat (float f0x4F800000)
  %i.bpg = select <2 x i1> %i.bpf, <2 x float> splat (float f0x4F800000), <2 x float> %i.bpe
  %i.bph = fptoui <2 x float> %i.bpg to <2 x i32>
  store <2 x i32> %i.bph, ptr %i.bov, align 4
  %.sroa.5.0..sroa_idx.i349.i = getelementptr inbounds nuw i8, ptr %i.bov, i64 8
  store i32 %i.bos, ptr %.sroa.5.0..sroa_idx.i349.i, align 4
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bov, i64 12
  store i32 %i.bou, ptr %.sroa.6.0..sroa_idx.i.i, align 4
  %indvars.iv.next.i350.i = add nuw nsw i64 %indvars.iv.i344.i, 1 ; 2 uses
  %exitcond.not.i351.i = icmp eq i64 %indvars.iv.next.i350.i, %wide.trip.count.i343.i
  br i1 %exitcond.not.i351.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph176, !llvm.loop !95

bb.an:                                            ; preds = %bb.aj
  %switch.tableidx545 = add i8 %i.h, -5           ; 2 uses
  %i.bpi = icmp ult i8 %switch.tableidx545, 4
  br i1 %i.bpi, label %switch.lookup546, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup546:                                 ; preds = %bb.an
  %i.bpj = icmp sgt i32 %i.t, 0
  br i1 %i.bpj, label %.lr.ph.i353.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i353.i:                                    ; preds = %switch.lookup546
  %i.bpk = zext nneg i8 %switch.tableidx545 to i64
  %switch.gep547 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.bpk
  %switch.load548 = load ptr, ptr %switch.gep547, align 8 ; 5 uses
  %i.bpl = load float, ptr %switch.load548, align 16, !tbaa !23 ; 2 uses
  %i.bpm = getelementptr inbounds nuw i8, ptr %switch.load548, i64 4
  %i.bpn = load float, ptr %i.bpm, align 4, !tbaa !23 ; 2 uses
  %i.bpo = getelementptr inbounds nuw i8, ptr %switch.load548, i64 8
  %i.bpp = load float, ptr %i.bpo, align 8, !tbaa !23 ; 2 uses
  %i.bpq = getelementptr inbounds nuw i8, ptr %switch.load548, i64 12
  %i.bpr = getelementptr inbounds nuw i8, ptr %switch.load548, i64 28
  %i.bps = load <4 x float>, ptr %i.bpq, align 4, !tbaa !23 ; 7 uses
  %i.bpt = load <2 x float>, ptr %i.bpr, align 4, !tbaa !23 ; 4 uses
  %wide.trip.count.i354.i = zext nneg i32 %i.t to i64 ; 4 uses
  %min.iters.check141 = icmp ult i32 %i.t, 4
  br i1 %min.iters.check141, label %scalar.ph140.preheader, label %vector.memcheck134

vector.memcheck134:                               ; preds = %.lr.ph.i353.i
  %i.bpu = shl nuw nsw i64 %wide.trip.count.i354.i, 4 ; 2 uses
  %scevgep135 = getelementptr i8, ptr %3, i64 %i.bpu
  %scevgep136 = getelementptr i8, ptr %2, i64 %i.bpu
  %bound0137 = icmp ult ptr %3, %scevgep136
  %bound1138 = icmp ult ptr %2, %scevgep135
  %found.conflict139 = and i1 %bound0137, %bound1138
  br i1 %found.conflict139, label %scalar.ph140.preheader, label %vector.ph142

vector.ph142:                                     ; preds = %vector.memcheck134
  %n.vec144 = and i64 %wide.trip.count.i354.i, 2147483644 ; 3 uses
  %broadcast.splatinsert145 = insertelement <4 x float> poison, float %i.bpl, i64 0
  %broadcast.splat146 = shufflevector <4 x float> %broadcast.splatinsert145, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert147 = insertelement <4 x float> poison, float %i.bpn, i64 0
  %broadcast.splat148 = shufflevector <4 x float> %broadcast.splatinsert147, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert149 = insertelement <4 x float> poison, float %i.bpp, i64 0
  %broadcast.splat150 = shufflevector <4 x float> %broadcast.splatinsert149, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat152 = shufflevector <4 x float> %i.bps, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat154 = shufflevector <4 x float> %i.bps, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat156 = shufflevector <4 x float> %i.bps, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat158 = shufflevector <4 x float> %i.bps, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat160 = shufflevector <2 x float> %i.bpt, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat162 = shufflevector <2 x float> %i.bpt, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body163

vector.body163:                                   ; preds = %vector.body163, %vector.ph142
  %index164 = phi i64 [ 0, %vector.ph142 ], [ %index.next166, %vector.body163 ] ; 5 uses
  %i.bpv = shl nuw nsw i64 %index164, 2           ; 2 uses
  %i.bpw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bpv ; 4 uses
  %.idx456 = shl i64 %index164, 4
  %i.bpx = getelementptr inbounds nuw i8, ptr %2, i64 %.idx456 ; 4 uses
  %i.bpy = getelementptr inbounds nuw i8, ptr %i.bpx, i64 16
  %.idx457 = shl i64 %index164, 4
  %i.bpz = getelementptr inbounds nuw i8, ptr %2, i64 %.idx457 ; 4 uses
  %i.bqa = getelementptr inbounds nuw i8, ptr %i.bpz, i64 32
  %.idx458 = shl i64 %index164, 4
  %i.bqb = getelementptr inbounds nuw i8, ptr %2, i64 %.idx458 ; 4 uses
  %i.bqc = getelementptr inbounds nuw i8, ptr %i.bqb, i64 48
  %i.bqd = getelementptr inbounds nuw i8, ptr %i.bpw, i64 4
  %i.bqe = getelementptr inbounds nuw i8, ptr %i.bpx, i64 20
  %i.bqf = getelementptr inbounds nuw i8, ptr %i.bpz, i64 36
  %i.bqg = getelementptr inbounds nuw i8, ptr %i.bqb, i64 52
  %i.bqh = getelementptr inbounds nuw i8, ptr %i.bpw, i64 8
  %i.bqi = getelementptr inbounds nuw i8, ptr %i.bpx, i64 24
  %i.bqj = getelementptr inbounds nuw i8, ptr %i.bpz, i64 40
  %i.bqk = getelementptr inbounds nuw i8, ptr %i.bqb, i64 56
  %i.bql = load float, ptr %i.bqd, align 4, !tbaa !23, !alias.scope !96
  %i.bqm = load float, ptr %i.bqe, align 4, !tbaa !23, !alias.scope !96
  %i.bqn = load float, ptr %i.bqf, align 4, !tbaa !23, !alias.scope !96
  %i.bqo = load float, ptr %i.bqg, align 4, !tbaa !23, !alias.scope !96
  %i.bqp = insertelement <4 x float> poison, float %i.bql, i64 0
  %i.bqq = insertelement <4 x float> %i.bqp, float %i.bqm, i64 1
  %i.bqr = insertelement <4 x float> %i.bqq, float %i.bqn, i64 2
  %i.bqs = insertelement <4 x float> %i.bqr, float %i.bqo, i64 3 ; 3 uses
  %i.bqt = load float, ptr %i.bpw, align 4, !tbaa !23, !alias.scope !96
  %i.bqu = load float, ptr %i.bpy, align 4, !tbaa !23, !alias.scope !96
  %i.bqv = load float, ptr %i.bqa, align 4, !tbaa !23, !alias.scope !96
  %i.bqw = load float, ptr %i.bqc, align 4, !tbaa !23, !alias.scope !96
  %i.bqx = insertelement <4 x float> poison, float %i.bqt, i64 0
  %i.bqy = insertelement <4 x float> %i.bqx, float %i.bqu, i64 1
  %i.bqz = insertelement <4 x float> %i.bqy, float %i.bqv, i64 2
  %i.bra = insertelement <4 x float> %i.bqz, float %i.bqw, i64 3
  %i.brb = fadd <4 x float> %i.bra, splat (float -5.000000e-01) ; 3 uses
  %i.brc = fmul <4 x float> %broadcast.splat148, %i.brb
  %i.brd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat146, <4 x float> %i.bqs, <4 x float> %i.brc)
  %i.bre = load float, ptr %i.bqh, align 4, !tbaa !23, !alias.scope !96
  %i.brf = load float, ptr %i.bqi, align 4, !tbaa !23, !alias.scope !96
  %i.brg = load float, ptr %i.bqj, align 4, !tbaa !23, !alias.scope !96
  %i.brh = load float, ptr %i.bqk, align 4, !tbaa !23, !alias.scope !96
  %i.bri = insertelement <4 x float> poison, float %i.bre, i64 0
  %i.brj = insertelement <4 x float> %i.bri, float %i.brf, i64 1
  %i.brk = insertelement <4 x float> %i.brj, float %i.brg, i64 2
  %i.brl = insertelement <4 x float> %i.brk, float %i.brh, i64 3
  %i.brm = fadd <4 x float> %i.brl, splat (float -5.000000e-01) ; 3 uses
  %i.brn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat150, <4 x float> %i.brm, <4 x float> %i.brd) ; 2 uses
  %i.bro = fcmp ogt <4 x float> %i.brn, splat (float 1.000000e+00)
  %i.brp = select <4 x i1> %i.bro, <4 x float> splat (float 1.000000e+00), <4 x float> %i.brn ; 2 uses
  %i.brq = fcmp ogt <4 x float> %i.brp, zeroinitializer
  %i.brr = select <4 x i1> %i.brq, <4 x float> %i.brp, <4 x float> zeroinitializer
  %i.brs = fmul <4 x float> %broadcast.splat154, %i.brb
  %i.brt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat152, <4 x float> %i.bqs, <4 x float> %i.brs)
  %i.bru = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat156, <4 x float> %i.brm, <4 x float> %i.brt) ; 2 uses
  %i.brv = fcmp ogt <4 x float> %i.bru, splat (float 1.000000e+00)
  %i.brw = select <4 x i1> %i.brv, <4 x float> splat (float 1.000000e+00), <4 x float> %i.bru ; 2 uses
  %i.brx = fmul <4 x float> %broadcast.splat160, %i.brb
  %i.bry = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat158, <4 x float> %i.bqs, <4 x float> %i.brx)
  %i.brz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat162, <4 x float> %i.brm, <4 x float> %i.bry) ; 2 uses
  %i.bsa = fcmp ogt <4 x float> %i.brz, splat (float 1.000000e+00)
  %i.bsb = select <4 x i1> %i.bsa, <4 x float> splat (float 1.000000e+00), <4 x float> %i.brz ; 2 uses
  %i.bsc = getelementptr inbounds nuw i8, ptr %i.bpw, i64 12
  %i.bsd = getelementptr inbounds nuw i8, ptr %i.bpx, i64 28
  %i.bse = getelementptr inbounds nuw i8, ptr %i.bpz, i64 44
  %i.bsf = getelementptr inbounds nuw i8, ptr %i.bqb, i64 60
  %i.bsg = load float, ptr %i.bsc, align 4, !tbaa !23, !alias.scope !96
  %i.bsh = load float, ptr %i.bsd, align 4, !tbaa !23, !alias.scope !96
  %i.bsi = load float, ptr %i.bse, align 4, !tbaa !23, !alias.scope !96
  %i.bsj = load float, ptr %i.bsf, align 4, !tbaa !23, !alias.scope !96
  %i.bsk = insertelement <4 x float> poison, float %i.bsg, i64 0
  %i.bsl = insertelement <4 x float> %i.bsk, float %i.bsh, i64 1
  %i.bsm = insertelement <4 x float> %i.bsl, float %i.bsi, i64 2
  %i.bsn = insertelement <4 x float> %i.bsm, float %i.bsj, i64 3
  %i.bso = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bpv
  %i.bsp = shufflevector <4 x float> %i.bsb, <4 x float> %i.brw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bsq = fcmp ogt <8 x float> %i.bsp, zeroinitializer
  %i.bsr = shufflevector <4 x float> %i.bsb, <4 x float> %i.brw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bss = select <8 x i1> %i.bsq, <8 x float> %i.bsr, <8 x float> zeroinitializer
  %i.bst = shufflevector <4 x float> %i.brr, <4 x float> %i.bsn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec165 = shufflevector <8 x float> %i.bss, <8 x float> %i.bst, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec165, ptr %i.bso, align 4, !alias.scope !99, !noalias !96
  %index.next166 = add nuw i64 %index164, 4       ; 2 uses
  %i.bsu = icmp eq i64 %index.next166, %n.vec144
  br i1 %i.bsu, label %middle.block167, label %vector.body163, !llvm.loop !101

middle.block167:                                  ; preds = %vector.body163
  %cmp.n168 = icmp eq i64 %n.vec144, %wide.trip.count.i354.i
  br i1 %cmp.n168, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph140.preheader

scalar.ph140.preheader:                           ; preds = %vector.memcheck134, %.lr.ph.i353.i, %middle.block167
  %indvars.iv.i355.i.ph = phi i64 [ 0, %vector.memcheck134 ], [ 0, %.lr.ph.i353.i ], [ %n.vec144, %middle.block167 ]
  %i.bsv = shufflevector <2 x float> %i.bpt, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bsw = shufflevector <4 x float> %i.bsv, <4 x float> %i.bps, <2 x i32> <i32 0, i32 5>
  %i.bsx = shufflevector <4 x float> %i.bps, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.bsy = shufflevector <4 x float> %i.bps, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.bsz = shufflevector <2 x float> %i.bpt, <2 x float> %i.bsy, <2 x i32> <i32 1, i32 3>
  br label %scalar.ph140

scalar.ph140:                                     ; preds = %scalar.ph140.preheader, %scalar.ph140
  %indvars.iv.i355.i = phi i64 [ %indvars.iv.next.i365.i, %scalar.ph140 ], [ %indvars.iv.i355.i.ph, %scalar.ph140.preheader ] ; 2 uses
  %i.bta = shl nuw nsw i64 %indvars.iv.i355.i, 2  ; 2 uses
  %i.btb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bta ; 4 uses
  %i.btc = getelementptr inbounds nuw i8, ptr %i.btb, i64 4
  %i.btd = getelementptr inbounds nuw i8, ptr %i.btb, i64 8
  %i.bte = load float, ptr %i.btc, align 4, !tbaa !23 ; 2 uses
  %i.btf = load float, ptr %i.btb, align 4, !tbaa !23
  %i.btg = fadd float %i.btf, -5.000000e-01       ; 2 uses
  %i.bth = fmul float %i.bpn, %i.btg
  %i.bti = tail call float @llvm.fmuladd.f32(float %i.bpl, float %i.bte, float %i.bth)
  %i.btj = load float, ptr %i.btd, align 4, !tbaa !23
  %i.btk = fadd float %i.btj, -5.000000e-01       ; 2 uses
  %i.btl = tail call float @llvm.fmuladd.f32(float %i.bpp, float %i.btk, float %i.bti) ; 2 uses
  %i.btm = fcmp ogt float %i.btl, 1.000000e+00
  %.sroa.speculated.i.i356.i = select i1 %i.btm, float 1.000000e+00, float %i.btl ; 2 uses
  %i.btn = fcmp ogt float %.sroa.speculated.i.i356.i, 0.000000e+00
  %.sroa.speculated14.i.i357.i = select i1 %i.btn, float %.sroa.speculated.i.i356.i, float 0.000000e+00
  %i.bto = getelementptr inbounds nuw i8, ptr %i.btb, i64 12
  %i.btp = load float, ptr %i.bto, align 4, !tbaa !23
  %i.btq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bta ; 3 uses
  %i.btr = insertelement <2 x float> poison, float %i.btg, i64 0
  %i.bts = shufflevector <2 x float> %i.btr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.btt = fmul <2 x float> %i.bsw, %i.bts
  %i.btu = insertelement <2 x float> poison, float %i.bte, i64 0
  %i.btv = shufflevector <2 x float> %i.btu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.btw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bsx, <2 x float> %i.btv, <2 x float> %i.btt)
  %i.btx = insertelement <2 x float> poison, float %i.btk, i64 0
  %i.bty = shufflevector <2 x float> %i.btx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.btz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bsz, <2 x float> %i.bty, <2 x float> %i.btw) ; 2 uses
  %i.bua = fcmp ogt <2 x float> %i.btz, splat (float 1.000000e+00)
  %i.bub = select <2 x i1> %i.bua, <2 x float> splat (float 1.000000e+00), <2 x float> %i.btz ; 2 uses
  %i.buc = fcmp ogt <2 x float> %i.bub, zeroinitializer
  %i.bud = select <2 x i1> %i.buc, <2 x float> %i.bub, <2 x float> zeroinitializer
  store <2 x float> %i.bud, ptr %i.btq, align 4
  %.sroa.5.0..sroa_idx.i363.i = getelementptr inbounds nuw i8, ptr %i.btq, i64 8
  store float %.sroa.speculated14.i.i357.i, ptr %.sroa.5.0..sroa_idx.i363.i, align 4
  %.sroa.6.0..sroa_idx.i364.i = getelementptr inbounds nuw i8, ptr %i.btq, i64 12
  store float %i.btp, ptr %.sroa.6.0..sroa_idx.i364.i, align 4
  %indvars.iv.next.i365.i = add nuw nsw i64 %indvars.iv.i355.i, 1 ; 2 uses
  %exitcond.not.i366.i = icmp eq i64 %indvars.iv.next.i365.i, %wide.trip.count.i354.i
  br i1 %exitcond.not.i366.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph140, !llvm.loop !102

bb.ao:                                            ; preds = %bb.aj
  %switch.tableidx549 = add i8 %i.h, -5           ; 2 uses
  %i.bue = icmp ult i8 %switch.tableidx549, 4
  br i1 %i.bue, label %switch.lookup550, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

switch.lookup550:                                 ; preds = %bb.ao
  %i.buf = icmp sgt i32 %i.t, 0
  br i1 %i.buf, label %.lr.ph.i368.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

.lr.ph.i368.i:                                    ; preds = %switch.lookup550
  %i.bug = zext nneg i8 %switch.tableidx549 to i64
  %switch.gep551 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3dpx12ConvertToRGBERKNS_6HeaderEiPKvPvRKNS_5BlockE.20, i64 %i.bug
  %switch.load552 = load ptr, ptr %switch.gep551, align 8 ; 5 uses
  %i.buh = load float, ptr %switch.load552, align 16, !tbaa !23
  %i.bui = fpext float %i.buh to double           ; 2 uses
  %i.buj = getelementptr inbounds nuw i8, ptr %switch.load552, i64 4
  %i.buk = load float, ptr %i.buj, align 4, !tbaa !23 ; 2 uses
  %i.bul = getelementptr inbounds nuw i8, ptr %switch.load552, i64 8
  %i.bum = load float, ptr %i.bul, align 8, !tbaa !23 ; 2 uses
  %i.bun = getelementptr inbounds nuw i8, ptr %switch.load552, i64 12
  %i.buo = getelementptr inbounds nuw i8, ptr %switch.load552, i64 28
  %i.bup = load <4 x float>, ptr %i.bun, align 4, !tbaa !23 ; 5 uses
  %i.buq = shufflevector <4 x float> %i.bup, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.bur = fpext <2 x float> %i.buq to <2 x double> ; 3 uses
  %i.bus = load <2 x float>, ptr %i.buo, align 4, !tbaa !23 ; 4 uses
  %wide.trip.count.i369.i = zext nneg i32 %i.t to i64 ; 4 uses
  %min.iters.check = icmp eq i32 %i.t, 1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i368.i
  %i.but = shl nuw nsw i64 %wide.trip.count.i369.i, 5 ; 2 uses
  %scevgep = getelementptr i8, ptr %3, i64 %i.but
  %scevgep117 = getelementptr i8, ptr %2, i64 %i.but
  %bound0 = icmp ult ptr %3, %scevgep117
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i369.i, 2147483646 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bui, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert118 = insertelement <2 x float> poison, float %i.buk, i64 0
  %broadcast.splat119 = shufflevector <2 x float> %broadcast.splatinsert118, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert120 = insertelement <2 x float> poison, float %i.bum, i64 0
  %broadcast.splat121 = shufflevector <2 x float> %broadcast.splatinsert120, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splat123 = shufflevector <2 x double> %i.bur, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat125 = shufflevector <4 x float> %i.bup, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat127 = shufflevector <4 x float> %i.bup, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %broadcast.splat129 = shufflevector <2 x double> %i.bur, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat131 = shufflevector <2 x float> %i.bus, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splat133 = shufflevector <2 x float> %i.bus, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.buu = shl nuw nsw i64 %index, 2              ; 2 uses
  %i.buv = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.buu ; 4 uses
  %.idx = shl i64 %index, 5
  %i.buw = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 4 uses
  %i.bux = getelementptr inbounds nuw i8, ptr %i.buw, i64 32
  %i.buy = getelementptr inbounds nuw i8, ptr %i.buv, i64 8
  %i.buz = getelementptr inbounds nuw i8, ptr %i.buw, i64 40
  %i.bva = getelementptr inbounds nuw i8, ptr %i.buv, i64 16
  %i.bvb = getelementptr inbounds nuw i8, ptr %i.buw, i64 48
  %i.bvc = load double, ptr %i.buy, align 8, !tbaa !25, !alias.scope !103
  %i.bvd = load double, ptr %i.buz, align 8, !tbaa !25, !alias.scope !103
  %i.bve = insertelement <2 x double> poison, double %i.bvc, i64 0
  %i.bvf = insertelement <2 x double> %i.bve, double %i.bvd, i64 1 ; 3 uses
  %i.bvg = load double, ptr %i.buv, align 8, !tbaa !25, !alias.scope !103
  %i.bvh = load double, ptr %i.bux, align 8, !tbaa !25, !alias.scope !103
  %i.bvi = insertelement <2 x double> poison, double %i.bvg, i64 0
  %i.bvj = insertelement <2 x double> %i.bvi, double %i.bvh, i64 1
  %i.bvk = fptrunc <2 x double> %i.bvj to <2 x float>
  %i.bvl = fadd <2 x float> %i.bvk, splat (float -5.000000e-01) ; 3 uses
  %i.bvm = fmul <2 x float> %broadcast.splat119, %i.bvl
  %i.bvn = fpext <2 x float> %i.bvm to <2 x double>
  %i.bvo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.bvf, <2 x double> %i.bvn)
  %i.bvp = load double, ptr %i.bva, align 8, !tbaa !25, !alias.scope !103
  %i.bvq = load double, ptr %i.bvb, align 8, !tbaa !25, !alias.scope !103
  %i.bvr = insertelement <2 x double> poison, double %i.bvp, i64 0
  %i.bvs = insertelement <2 x double> %i.bvr, double %i.bvq, i64 1
  %i.bvt = fptrunc <2 x double> %i.bvs to <2 x float>
  %i.bvu = fadd <2 x float> %i.bvt, splat (float -5.000000e-01) ; 3 uses
  %i.bvv = fmul <2 x float> %broadcast.splat121, %i.bvu
  %i.bvw = fpext <2 x float> %i.bvv to <2 x double>
  %i.bvx = fadd <2 x double> %i.bvo, %i.bvw
  %i.bvy = fptrunc <2 x double> %i.bvx to <2 x float> ; 2 uses
  %i.bvz = fcmp ogt <2 x float> %i.bvy, splat (float 1.000000e+00)
  %i.bwa = select <2 x i1> %i.bvz, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bvy
  %i.bwb = fpext <2 x float> %i.bwa to <2 x double> ; 2 uses
  %i.bwc = fcmp ogt <2 x double> %i.bwb, zeroinitializer
  %i.bwd = select <2 x i1> %i.bwc, <2 x double> %i.bwb, <2 x double> zeroinitializer
  %i.bwe = fmul <2 x float> %broadcast.splat125, %i.bvl
  %i.bwf = fpext <2 x float> %i.bwe to <2 x double>
  %i.bwg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat123, <2 x double> %i.bvf, <2 x double> %i.bwf)
  %i.bwh = fmul <2 x float> %broadcast.splat127, %i.bvu
  %i.bwi = fpext <2 x float> %i.bwh to <2 x double>
  %i.bwj = fadd <2 x double> %i.bwg, %i.bwi
  %i.bwk = fptrunc <2 x double> %i.bwj to <2 x float> ; 2 uses
  %i.bwl = fcmp ogt <2 x float> %i.bwk, splat (float 1.000000e+00)
  %i.bwm = select <2 x i1> %i.bwl, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bwk
  %i.bwn = fpext <2 x float> %i.bwm to <2 x double> ; 2 uses
  %i.bwo = fmul <2 x float> %broadcast.splat131, %i.bvl
  %i.bwp = fpext <2 x float> %i.bwo to <2 x double>
  %i.bwq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat129, <2 x double> %i.bvf, <2 x double> %i.bwp)
  %i.bwr = fmul <2 x float> %broadcast.splat133, %i.bvu
  %i.bws = fpext <2 x float> %i.bwr to <2 x double>
  %i.bwt = fadd <2 x double> %i.bwq, %i.bws
  %i.bwu = fptrunc <2 x double> %i.bwt to <2 x float> ; 2 uses
  %i.bwv = fcmp ogt <2 x float> %i.bwu, splat (float 1.000000e+00)
  %i.bww = select <2 x i1> %i.bwv, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bwu
  %i.bwx = fpext <2 x float> %i.bww to <2 x double> ; 2 uses
  %i.bwy = getelementptr inbounds nuw i8, ptr %i.buv, i64 24
  %i.bwz = getelementptr inbounds nuw i8, ptr %i.buw, i64 56
  %i.bxa = load double, ptr %i.bwy, align 8, !tbaa !25, !alias.scope !103
  %i.bxb = load double, ptr %i.bwz, align 8, !tbaa !25, !alias.scope !103
  %i.bxc = insertelement <2 x double> poison, double %i.bxa, i64 0
  %i.bxd = insertelement <2 x double> %i.bxc, double %i.bxb, i64 1
  %i.bxe = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.buu
  %i.bxf = shufflevector <2 x double> %i.bwx, <2 x double> %i.bwn, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bxg = fcmp ogt <4 x double> %i.bxf, zeroinitializer
  %i.bxh = shufflevector <2 x double> %i.bwx, <2 x double> %i.bwn, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bxi = select <4 x i1> %i.bxg, <4 x double> %i.bxh, <4 x double> zeroinitializer
  %i.bxj = shufflevector <2 x double> %i.bwd, <2 x double> %i.bxd, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.bxi, <4 x double> %i.bxj, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.bxe, align 8, !alias.scope !106, !noalias !103
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bxk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bxk, label %middle.block, label %vector.body, !llvm.loop !108

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i369.i
  br i1 %cmp.n, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i368.i, %middle.block
  %indvars.iv.i370.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i368.i ], [ %n.vec, %middle.block ]
  %i.bxl = shufflevector <2 x float> %i.bus, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bxm = shufflevector <4 x float> %i.bxl, <4 x float> %i.bup, <2 x i32> <i32 0, i32 5>
  %i.bxn = shufflevector <4 x float> %i.bup, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.bxo = shufflevector <2 x float> %i.bus, <2 x float> %i.bxn, <2 x i32> <i32 1, i32 3>
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i370.i = phi i64 [ %indvars.iv.next.i380.i, %scalar.ph ], [ %indvars.iv.i370.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bxp = shl nuw nsw i64 %indvars.iv.i370.i, 2  ; 2 uses
  %i.bxq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bxp ; 4 uses
  %i.bxr = getelementptr inbounds nuw i8, ptr %i.bxq, i64 8
  %i.bxs = getelementptr inbounds nuw i8, ptr %i.bxq, i64 16
  %i.bxt = load double, ptr %i.bxr, align 8, !tbaa !25 ; 2 uses
  %i.bxu = load double, ptr %i.bxq, align 8, !tbaa !25
  %i.bxv = fptrunc double %i.bxu to float
  %i.bxw = fadd float %i.bxv, -5.000000e-01       ; 2 uses
  %i.bxx = fmul float %i.buk, %i.bxw
  %i.bxy = fpext float %i.bxx to double
  %i.bxz = tail call double @llvm.fmuladd.f64(double %i.bui, double %i.bxt, double %i.bxy)
  %i.bya = load double, ptr %i.bxs, align 8, !tbaa !25
  %i.byb = fptrunc double %i.bya to float
  %i.byc = fadd float %i.byb, -5.000000e-01       ; 2 uses
  %i.byd = fmul float %i.bum, %i.byc
  %i.bye = fpext float %i.byd to double
  %i.byf = fadd double %i.bxz, %i.bye
  %i.byg = fptrunc double %i.byf to float         ; 2 uses
  %i.byh = fcmp ogt float %i.byg, 1.000000e+00
  %.sroa.speculated.i.i371.i = select i1 %i.byh, float 1.000000e+00, float %i.byg
  %i.byi = fpext float %.sroa.speculated.i.i371.i to double ; 2 uses
  %i.byj = fcmp ogt double %i.byi, 0.000000e+00
  %.sroa.speculated14.i.i372.i = select i1 %i.byj, double %i.byi, double 0.000000e+00
  %i.byk = getelementptr inbounds nuw i8, ptr %i.bxq, i64 24
  %i.byl = load double, ptr %i.byk, align 8, !tbaa !25
  %i.bym = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bxp ; 3 uses
  %i.byn = insertelement <2 x float> poison, float %i.bxw, i64 0
  %i.byo = shufflevector <2 x float> %i.byn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.byp = fmul <2 x float> %i.bxm, %i.byo
  %i.byq = fpext <2 x float> %i.byp to <2 x double>
  %i.byr = insertelement <2 x double> poison, double %i.bxt, i64 0
  %i.bys = shufflevector <2 x double> %i.byr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.byt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bur, <2 x double> %i.bys, <2 x double> %i.byq)
  %i.byu = insertelement <2 x float> poison, float %i.byc, i64 0
  %i.byv = shufflevector <2 x float> %i.byu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.byw = fmul <2 x float> %i.bxo, %i.byv
  %i.byx = fpext <2 x float> %i.byw to <2 x double>
  %i.byy = fadd <2 x double> %i.byt, %i.byx
  %i.byz = fptrunc <2 x double> %i.byy to <2 x float> ; 2 uses
  %i.bza = fcmp ogt <2 x float> %i.byz, splat (float 1.000000e+00)
  %i.bzb = select <2 x i1> %i.bza, <2 x float> splat (float 1.000000e+00), <2 x float> %i.byz
  %i.bzc = fpext <2 x float> %i.bzb to <2 x double> ; 2 uses
  %i.bzd = fcmp ogt <2 x double> %i.bzc, zeroinitializer
  %i.bze = select <2 x i1> %i.bzd, <2 x double> %i.bzc, <2 x double> zeroinitializer
  store <2 x double> %i.bze, ptr %i.bym, align 8
  %.sroa.5.0..sroa_idx.i378.i = getelementptr inbounds nuw i8, ptr %i.bym, i64 16
  store double %.sroa.speculated14.i.i372.i, ptr %.sroa.5.0..sroa_idx.i378.i, align 8
  %.sroa.6.0..sroa_idx.i379.i = getelementptr inbounds nuw i8, ptr %i.bym, i64 24
  store double %i.byl, ptr %.sroa.6.0..sroa_idx.i379.i, align 8
  %indvars.iv.next.i380.i = add nuw nsw i64 %indvars.iv.i370.i, 1 ; 2 uses
  %exitcond.not.i381.i = icmp eq i64 %indvars.iv.next.i380.i, %wide.trip.count.i369.i
  br i1 %exitcond.not.i381.i, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %scalar.ph, !llvm.loop !109

bb.ap:                                            ; preds = %_ZNK3dpx13GenericHeader12ColorimetricEi.exit.thread, %_ZNK3dpx13GenericHeader12ColorimetricEi.exit
  br label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit553.unr-lcssa: ; preds = %.lr.ph.i103.i
  %lcmp.mod589.not = icmp eq i64 %xtraiter588, 0
  br i1 %lcmp.mod589.not, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %.lr.ph.i103.i.epil.preheader

.lr.ph.i103.i.epil.preheader:                     ; preds = %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit553.unr-lcssa, %.lr.ph.preheader.i101.i
  %indvars.iv.i104.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i101.i ], [ %indvars.iv.next.i108.i.1, %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit553.unr-lcssa ]
  %lcmp.mod590 = trunc i32 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod590)
  %i.bzf = shl nuw nsw i64 %indvars.iv.i104.i.epil.init, 2 ; 4 uses
  %i.bzg = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bzf
  %i.bzh = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bzf
  %i.bzi = getelementptr inbounds nuw i8, ptr %i.bzh, i64 6
  %i.bzj = load i16, ptr %i.bzi, align 2, !tbaa !20
  %i.bzk = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bzf ; 2 uses
  %i.bzl = or disjoint i64 %i.bzf, 2              ; 2 uses
  %i.bzm = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bzl
  %i.bzn = getelementptr inbounds nuw i8, ptr %i.bzk, i64 2
  %i.bzo = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bzl
  %i.bzp = load <2 x i16>, ptr %i.bzg, align 2
  store i16 %i.bzj, ptr %i.bzk, align 2, !tbaa !20
  %i.bzq = load i16, ptr %i.bzm, align 2, !tbaa !20
  store i16 %i.bzq, ptr %i.bzn, align 2, !tbaa !20
  %i.bzr = shufflevector <2 x i16> %i.bzp, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i16> %i.bzr, ptr %i.bzo, align 2, !tbaa !20
  br label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit554.unr-lcssa: ; preds = %.lr.ph.i112.i
  %lcmp.mod584.not = icmp eq i64 %xtraiter583, 0
  br i1 %lcmp.mod584.not, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %.lr.ph.i112.i.epil.preheader

.lr.ph.i112.i.epil.preheader:                     ; preds = %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit554.unr-lcssa, %.lr.ph.preheader.i110.i
  %indvars.iv.i113.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i110.i ], [ %indvars.iv.next.i117.i.1, %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit554.unr-lcssa ]
  %lcmp.mod585 = trunc i32 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod585)
  %i.bzs = shl nuw nsw i64 %indvars.iv.i113.i.epil.init, 2 ; 4 uses
  %i.bzt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bzs
  %i.bzu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bzs
  %i.bzv = getelementptr inbounds nuw i8, ptr %i.bzu, i64 12
  %i.bzw = load i32, ptr %i.bzv, align 4, !tbaa !3
  %i.bzx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bzs ; 2 uses
  %i.bzy = or disjoint i64 %i.bzs, 2              ; 2 uses
  %i.bzz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bzy
  %i.caa = getelementptr inbounds nuw i8, ptr %i.bzx, i64 4
  %i.cab = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bzy
  %i.cac = load <2 x i32>, ptr %i.bzt, align 4
  store i32 %i.bzw, ptr %i.bzx, align 4, !tbaa !3
  %i.cad = load i32, ptr %i.bzz, align 4, !tbaa !3
  store i32 %i.cad, ptr %i.caa, align 4, !tbaa !3
  %i.cae = shufflevector <2 x i32> %i.cac, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.cae, ptr %i.cab, align 4, !tbaa !3
  br label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit555.unr-lcssa: ; preds = %.lr.ph.i121.i
  %lcmp.mod579.not = icmp eq i64 %xtraiter578, 0
  br i1 %lcmp.mod579.not, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %.lr.ph.i121.i.epil.preheader

.lr.ph.i121.i.epil.preheader:                     ; preds = %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit555.unr-lcssa, %.lr.ph.preheader.i119.i
  %indvars.iv.i122.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i119.i ], [ %indvars.iv.next.i126.i.1, %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit555.unr-lcssa ]
  %lcmp.mod580 = trunc i32 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod580)
  %i.caf = shl nuw nsw i64 %indvars.iv.i122.i.epil.init, 2 ; 4 uses
  %i.cag = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.caf
  %i.cah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.caf
  %i.cai = getelementptr inbounds nuw i8, ptr %i.cah, i64 12
  %i.caj = load float, ptr %i.cai, align 4, !tbaa !23
  %i.cak = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.caf ; 2 uses
  %i.cal = or disjoint i64 %i.caf, 2              ; 2 uses
  %i.cam = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cal
  %i.can = getelementptr inbounds nuw i8, ptr %i.cak, i64 4
  %i.cao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cal
  %i.cap = load <2 x float>, ptr %i.cag, align 4
  store float %i.caj, ptr %i.cak, align 4, !tbaa !23
  %i.caq = load float, ptr %i.cam, align 4, !tbaa !23
  store float %i.caq, ptr %i.can, align 4, !tbaa !23
  %i.car = shufflevector <2 x float> %i.cap, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.car, ptr %i.cao, align 4, !tbaa !23
  br label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit556.unr-lcssa: ; preds = %.lr.ph.i130.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit, label %.lr.ph.i130.i.epil.preheader

.lr.ph.i130.i.epil.preheader:                     ; preds = %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit556.unr-lcssa, %.lr.ph.preheader.i128.i
  %indvars.iv.i131.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i128.i ], [ %indvars.iv.next.i135.i.1, %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit556.unr-lcssa ]
  %lcmp.mod577 = trunc i32 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod577)
  %i.cas = shl nuw nsw i64 %indvars.iv.i131.i.epil.init, 2 ; 4 uses
  %i.cat = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cas
  %i.cau = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cas
  %i.cav = getelementptr inbounds nuw i8, ptr %i.cau, i64 24
  %i.caw = load double, ptr %i.cav, align 8, !tbaa !25
  %i.cax = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.cas ; 2 uses
  %i.cay = or disjoint i64 %i.cas, 2              ; 2 uses
  %i.caz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cay
  %i.cba = getelementptr inbounds nuw i8, ptr %i.cax, i64 8
  %i.cbb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.cay
  %i.cbc = load <2 x double>, ptr %i.cat, align 8
  store double %i.caw, ptr %i.cax, align 8, !tbaa !25
  %i.cbd = load double, ptr %i.caz, align 8, !tbaa !25
  store double %i.cbd, ptr %i.cba, align 8, !tbaa !25
  %i.cbe = shufflevector <2 x double> %i.cbc, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.cbe, ptr %i.cbb, align 8, !tbaa !25
  br label %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit

_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit: ; preds = %scalar.ph, %scalar.ph140, %scalar.ph176, %scalar.ph212, %scalar.ph247, %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %scalar.ph282, %scalar.ph318, %scalar.ph354, %scalar.ph390, %scalar.ph426, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %.lr.ph.i130.i.epil.preheader, %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit556.unr-lcssa, %.lr.ph.i121.i.epil.preheader, %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit555.unr-lcssa, %.lr.ph.i112.i.epil.preheader, %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit554.unr-lcssa, %.lr.ph.i103.i.epil.preheader, %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit553.unr-lcssa, %.lr.ph.i.i, %middle.block, %middle.block167, %middle.block203, %middle.block238, %middle.block273, %middle.block309, %middle.block345, %middle.block381, %middle.block417, %middle.block453, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %_ZNK3dpx13GenericHeader12ColorimetricEi.exit, %_ZNK3dpx13GenericHeader12ColorimetricEi.exit, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %switch.lookup, %switch.lookup478, %switch.lookup482, %switch.lookup486, %switch.lookup490, %bb.s, %switch.lookup494, %switch.lookup498, %switch.lookup502, %switch.lookup506, %switch.lookup510, %bb.y, %switch.lookup514, %switch.lookup518, %switch.lookup522, %switch.lookup526, %switch.lookup530, %bb.aj, %switch.lookup534, %switch.lookup538, %switch.lookup542, %switch.lookup546, %switch.lookup550, %bb.ap
  %.0.i13 = phi i1 [ false, %bb.ap ], [ true, %bb.n ], [ true, %_ZNK3dpx13GenericHeader12ColorimetricEi.exit ], [ false, %bb.aj ], [ true, %middle.block453 ], [ true, %middle.block417 ], [ true, %middle.block381 ], [ true, %middle.block345 ], [ false, %bb.b ], [ true, %middle.block309 ], [ true, %scalar.ph318 ], [ true, %scalar.ph282 ], [ true, %bb.aa ], [ true, %bb.ac ], [ false, %bb.h ], [ true, %bb.ae ], [ true, %middle.block273 ], [ true, %middle.block238 ], [ true, %middle.block203 ], [ true, %middle.block167 ], [ false, %bb.s ], [ true, %middle.block ], [ true, %scalar.ph140 ], [ true, %.lr.ph.i.i ], [ true, %.lr.ph.i103.i.epil.preheader ], [ true, %.lr.ph.i112.i.epil.preheader ], [ false, %bb.y ], [ true, %.lr.ph.i121.i.epil.preheader ], [ true, %.lr.ph.i130.i.epil.preheader ], [ true, %bb.j ], [ true, %bb.l ], [ true, %_ZNK3dpx13GenericHeader12ColorimetricEi.exit ], [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.e ], [ true, %bb.f ], [ true, %bb.g ], [ false, %bb.i ], [ true, %switch.lookup ], [ false, %bb.k ], [ true, %switch.lookup478 ], [ false, %bb.m ], [ true, %switch.lookup482 ], [ false, %bb.o ], [ true, %switch.lookup486 ], [ false, %bb.q ], [ true, %switch.lookup490 ], [ false, %bb.t ], [ true, %switch.lookup494 ], [ false, %bb.u ], [ true, %switch.lookup498 ], [ false, %bb.v ], [ true, %switch.lookup502 ], [ false, %bb.w ], [ true, %switch.lookup506 ], [ false, %bb.x ], [ true, %switch.lookup510 ], [ false, %bb.z ], [ true, %switch.lookup514 ], [ false, %bb.ab ], [ true, %switch.lookup518 ], [ false, %bb.ad ], [ true, %switch.lookup522 ], [ false, %bb.af ], [ true, %switch.lookup526 ], [ false, %bb.ah ], [ true, %switch.lookup530 ], [ false, %bb.ak ], [ true, %switch.lookup534 ], [ false, %bb.al ], [ true, %switch.lookup538 ], [ false, %bb.am ], [ true, %switch.lookup542 ], [ false, %bb.an ], [ true, %switch.lookup546 ], [ false, %bb.ao ], [ true, %switch.lookup550 ], [ true, %bb.p ], [ true, %bb.r ], [ true, %scalar.ph426 ], [ true, %scalar.ph390 ], [ true, %scalar.ph354 ], [ true, %bb.ag ], [ true, %bb.ai ], [ true, %scalar.ph247 ], [ true, %scalar.ph212 ], [ true, %scalar.ph176 ], [ true, %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit553.unr-lcssa ], [ true, %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit554.unr-lcssa ], [ true, %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit555.unr-lcssa ], [ true, %_ZN3dpxL20ConvertToRGBInternalENS_10DescriptorENS_8DataSizeENS_14CharacteristicEPKvPvi.exit.loopexit556.unr-lcssa ], [ true, %scalar.ph ]
  ret i1 %.0.i13
}

declare noundef i32 @_ZNK3dpx13GenericHeader17ComponentDataSizeEi(ptr noundef nonnull align 4 dereferenceable(1664), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN3dpx15ConvertToNativeENS_10DescriptorENS_8DataSizeENS_14CharacteristicEiiPKvPv(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readnone captures(none) %5, ptr nofree noundef readnone captures(none) %6) local_unnamed_addr #2 {
bb.a:
  %i.a = and i32 %0, -2
  %switch.i = icmp eq i32 %i.a, 50
  ret i1 %switch.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #3 section ".text.startup" {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !5, i64 20}
!8 = !{!"_ZTSN3dpx12ImageElementE", !4, i64 0, !4, i64 4, !9, i64 8, !4, i64 12, !9, i64 16, !5, i64 20, !5, i64 21, !5, i64 22, !5, i64 23, !10, i64 24, !10, i64 26, !4, i64 28, !4, i64 32, !4, i64 36, !5, i64 40}
!9 = !{!"float", !5, i64 0}
!10 = !{!"short", !5, i64 0}
!11 = !{!12, !4, i64 8}
!12 = !{!"_ZTSN3dpx5BlockE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12}
!13 = !{!12, !4, i64 0}
!14 = !{!12, !4, i64 12}
!15 = !{!12, !4, i64 4}
!16 = !{!8, !5, i64 22}
!17 = !{!5, !5, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!10, !10, i64 0}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !19}
!23 = !{!9, !9, i64 0}
!24 = distinct !{!24, !19}
!25 = !{!26, !26, i64 0}
!26 = !{!"double", !5, i64 0}
!27 = distinct !{!27, !19}
!28 = distinct !{!28, !19}
!29 = distinct !{!29, !19}
!30 = distinct !{!30, !19}
!31 = distinct !{!31, !19}
!32 = distinct !{!32, !19}
!33 = !{!34}
!34 = distinct !{!34, !35}
!35 = distinct !{!35, !"LVerDomain"}
!36 = !{!37}
!37 = distinct !{!37, !35}
!38 = distinct !{!38, !19, !39, !40}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = distinct !{!41, !19, !39}
!42 = !{!43}
!43 = distinct !{!43, !44}
!44 = distinct !{!44, !"LVerDomain"}
!45 = !{!46}
!46 = distinct !{!46, !44}
!47 = distinct !{!47, !19, !39, !40}
!48 = distinct !{!48, !19, !39}
!49 = !{!50}
!50 = distinct !{!50, !51}
!51 = distinct !{!51, !"LVerDomain"}
!52 = !{!53}
!53 = distinct !{!53, !51}
!54 = distinct !{!54, !19, !39, !40}
!55 = distinct !{!55, !19, !39}
!56 = !{!57}
!57 = distinct !{!57, !58}
!58 = distinct !{!58, !"LVerDomain"}
!59 = !{!60}
!60 = distinct !{!60, !58}
!61 = distinct !{!61, !19, !39, !40}
!62 = distinct !{!62, !19, !39}
!63 = !{!64}
!64 = distinct !{!64, !65}
!65 = distinct !{!65, !"LVerDomain"}
!66 = !{!67}
!67 = distinct !{!67, !65}
!68 = distinct !{!68, !19, !39, !40}
!69 = distinct !{!69, !19, !39}
!70 = distinct !{!70, !19}
!71 = distinct !{!71, !19}
!72 = distinct !{!72, !19}
!73 = distinct !{!73, !19}
!74 = distinct !{!74, !19}
!75 = !{!76}
!76 = distinct !{!76, !77}
!77 = distinct !{!77, !"LVerDomain"}
!78 = !{!79}
!79 = distinct !{!79, !77}
!80 = distinct !{!80, !19, !39, !40}
!81 = distinct !{!81, !19, !39}
!82 = !{!83}
!83 = distinct !{!83, !84}
!84 = distinct !{!84, !"LVerDomain"}
!85 = !{!86}
!86 = distinct !{!86, !84}
!87 = distinct !{!87, !19, !39, !40}
!88 = distinct !{!88, !19, !39}
!89 = !{!90}
!90 = distinct !{!90, !91}
!91 = distinct !{!91, !"LVerDomain"}
!92 = !{!93}
!93 = distinct !{!93, !91}
!94 = distinct !{!94, !19, !39, !40}
!95 = distinct !{!95, !19, !39}
!96 = !{!97}
!97 = distinct !{!97, !98}
!98 = distinct !{!98, !"LVerDomain"}
!99 = !{!100}
!100 = distinct !{!100, !98}
!101 = distinct !{!101, !19, !39, !40}
!102 = distinct !{!102, !19, !39}
!103 = !{!104}
!104 = distinct !{!104, !105}
!105 = distinct !{!105, !"LVerDomain"}
!106 = !{!107}
!107 = distinct !{!107, !105}
!108 = distinct !{!108, !19, !39, !40}
!109 = distinct !{!109, !19, !39}
end_hunk_1
