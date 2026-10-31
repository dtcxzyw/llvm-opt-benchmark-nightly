Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/kodak?download=true
inline.NumInlined: 14
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZZN6LibRaw15parse_kodak_ifdExE9wbtag_kdc = internal unnamed_addr constant [7 x i32] [i32 82, i32 2, i32 3, i32 1, i32 -1, i32 -1, i32 11], align 16
@_ZZN6LibRaw15parse_kodak_ifdExE9wbtag_dcr = internal unnamed_addr constant [6 x i32] [i32 1, i32 3, i32 2, i32 4, i32 83, i32 82], align 16
@.str = private unnamed_addr constant [11 x i8] c"EOS D2000C\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Camera body:\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Lens:\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Aperture:\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"ISO Speed:\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Focal Length:\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Max Aperture:\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"Min Aperture:\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw16Kodak_KDC_WBtagsEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 187224
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.b ; 5 uses
  %i.d = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.d, ptr %i.c, align 8, !tbaa !11
  %i.e = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  store i32 %i.e, ptr %i.f, align 4, !tbaa !11
  %i.g = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.g, ptr %i.h, align 8, !tbaa !11
  %i.i = load i32, ptr %i.f, align 4, !tbaa !11   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %i.i, ptr %i.j, align 4, !tbaa !11
  %i.k = icmp eq i32 %2, %1
  br i1 %i.k, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 153252
  %i.m = load i32, ptr %i.c, align 8, !tbaa !11
  %i.n = insertelement <4 x i32> poison, i32 %i.m, i64 0
  %i.o = insertelement <4 x i32> %i.n, i32 %i.i, i64 1
  %i.p = insertelement <4 x i32> %i.o, i32 %i.g, i64 2
  %i.q = sitofp <4 x i32> %i.p to <4 x float>
  %i.r = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  store <4 x float> %i.r, ptr %i.l, align 4, !tbaa !13
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw16Kodak_DCR_WBtagsEiji(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %2)
  %i.b = tail call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %2) ; 2 uses
  %i.c = fptrunc reassoc nsz arcp contract afn double %i.b to float
  %i.d = fcmp reassoc nsz arcp contract afn ole double %i.b, f0x3F50624DEFFFFFFF
  %i.e = select reassoc nsz arcp contract afn i1 %i.d, float 1.000000e+00, float %i.c ; 3 uses
  %i.f = tail call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %2)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 187224
  %i.h = sext i32 %1 to i64
  %i.i = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.h
  %i.j = fmul reassoc nsz arcp contract afn float %i.e, %i.e
  %i.k = insertelement <2 x double> poison, double %i.a, i64 0
  %i.l = insertelement <2 x double> %i.k, double %i.f, i64 1 ; 2 uses
  %i.m = fptrunc reassoc nsz arcp contract afn <2 x double> %i.l to <2 x float>
  %i.n = fcmp reassoc nsz arcp contract afn ole <2 x double> %i.l, splat (double f0x3F50624DEFFFFFFF)
  %i.o = select <2 x i1> %i.n, <2 x float> splat (float 1.000000e+00), <2 x float> %i.m
  %i.p = insertelement <2 x float> poison, float %i.j, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %i.r = shufflevector <2 x float> %i.o, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.s = fdiv reassoc nsz arcp contract afn <4 x float> %i.q, %i.r
  %i.t = insertelement <4 x float> %i.s, float %i.e, i64 1
  %i.u = fptosi <4 x float> %i.t to <4 x i32>     ; 2 uses
  %i.v = shufflevector <4 x i32> %i.u, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  store <4 x i32> %i.v, ptr %i.i, align 8, !tbaa !11
  %i.w = icmp eq i32 %3, %1
  br i1 %i.w, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 153252
  %i.y = sitofp <4 x i32> %i.u to <4 x float>
  %i.z = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  store <4 x float> %i.z, ptr %i.x, align 4, !tbaa !13
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef signext range(i16 0, 2) i16 @_ZN6LibRaw16KodakIllumMatrixEjPf(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  switch i32 %1, label %.loopexit [
    i32 10, label %.preheader.preheader
    i32 9, label %.preheader41.preheader
  ]

.preheader41.preheader:                           ; preds = %bb.a
  %i.a = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.b = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.c = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.d = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.e = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.f = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.g = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.h = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.i = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.j = insertelement <3 x i32> poison, i32 %i.a, i64 0
  %i.k = insertelement <3 x i32> %i.j, i32 %i.d, i64 1
  %i.l = insertelement <3 x i32> %i.k, i32 %i.g, i64 2 ; 2 uses
  %i.m = insertelement <3 x i32> poison, i32 %i.b, i64 0
  %i.n = insertelement <3 x i32> %i.m, i32 %i.e, i64 1
  %i.o = insertelement <3 x i32> %i.n, i32 %i.h, i64 2 ; 2 uses
  %i.p = add nsw <3 x i32> %i.l, %i.o
  %i.q = insertelement <3 x i32> poison, i32 %i.c, i64 0
  %i.r = insertelement <3 x i32> %i.q, i32 %i.f, i64 1
  %i.s = insertelement <3 x i32> %i.r, i32 %i.i, i64 2
  %i.t = add nsw <3 x i32> %i.p, %i.s             ; 3 uses
  %i.u = extractelement <3 x i32> %i.t, i64 2     ; 2 uses
  %i.v = shufflevector <3 x i32> %i.t, <3 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.w = icmp sgt <2 x i32> %i.v, splat (i32 8191) ; 2 uses
  %i.x = extractelement <2 x i1> %i.w, i64 0
  %i.y = extractelement <2 x i1> %i.w, i64 1
  %or.cond = select i1 %i.x, i1 %i.y, i1 false
  %i.z = icmp sgt i32 %i.u, 8191
  %or.cond5 = select i1 %or.cond, i1 %i.z, i1 false
  br i1 %or.cond5, label %.preheader38.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.a
  %i.aa = tail call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 10)
  %i.ab = fptrunc reassoc nsz arcp contract afn double %i.aa to float
  store float %i.ab, ptr %2, align 4, !tbaa !13
  %i.ac = tail call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 10)
  %i.ad = fptrunc reassoc nsz arcp contract afn double %i.ac to float
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.ad, ptr %i.ae, align 4, !tbaa !13
  %i.af = tail call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 10)
  %i.ag = fptrunc reassoc nsz arcp contract afn double %i.af to float
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.ag, ptr %i.ah, align 4, !tbaa !13
  %i.ai = tail call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 10)
  %i.aj = fptrunc reassoc nsz arcp contract afn double %i.ai to float
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float %i.aj, ptr %i.ak, align 4, !tbaa !13
  %i.al = tail call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 10)
  %i.am = fptrunc reassoc nsz arcp contract afn double %i.al to float
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float %i.am, ptr %i.an, align 4, !tbaa !13
  %i.ao = tail call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 10)
  %i.ap = fptrunc reassoc nsz arcp contract afn double %i.ao to float
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 20
  store float %i.ap, ptr %i.aq, align 4, !tbaa !13
  %i.ar = tail call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 10)
  %i.as = fptrunc reassoc nsz arcp contract afn double %i.ar to float
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 24
  store float %i.as, ptr %i.at, align 4, !tbaa !13
  %i.au = tail call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 10)
  %i.av = fptrunc reassoc nsz arcp contract afn double %i.au to float
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 28
  store float %i.av, ptr %i.aw, align 4, !tbaa !13
  %i.ax = tail call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 10)
  %i.ay = fptrunc reassoc nsz arcp contract afn double %i.ax to float
  br label %.loopexit.sink.split

.preheader38.preheader:                           ; preds = %.preheader41.preheader
  %i.az = shufflevector <3 x i32> %i.t, <3 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %i.ba = uitofp nneg <8 x i32> %i.az to <8 x float>
  %i.bb = shufflevector <3 x i32> %i.l, <3 x i32> %i.o, <8 x i32> <i32 0, i32 3, i32 poison, i32 1, i32 4, i32 poison, i32 2, i32 5>
  %i.bc = insertelement <8 x i32> %i.bb, i32 %i.c, i64 2
  %i.bd = insertelement <8 x i32> %i.bc, i32 %i.f, i64 5
  %i.be = sitofp reassoc nsz arcp contract afn <8 x i32> %i.bd to <8 x float>
  %i.bf = uitofp nneg i32 %i.u to float
  %i.bg = fdiv reassoc nsz arcp contract afn <8 x float> %i.be, %i.ba
  store <8 x float> %i.bg, ptr %2, align 4, !tbaa !13
  %i.bh = sitofp reassoc nsz arcp contract afn i32 %i.i to float
  %i.bi = fdiv reassoc nsz arcp contract afn float %i.bh, %i.bf
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.preheader.preheader, %.preheader38.preheader
  %.sink = phi float [ %i.bi, %.preheader38.preheader ], [ %i.ay, %.preheader.preheader ]
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 32
  store float %.sink, ptr %i.bj, align 4, !tbaa !13
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %.preheader41.preheader, %bb.a
  %.035 = phi i16 [ 0, %bb.a ], [ 0, %.preheader41.preheader ], [ 1, %.loopexit.sink.split ]
  ret i16 %.035
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw15parse_kodak_ifdEx(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 26 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca [1024 x i8], align 16             ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.g = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 3 uses
  %i.h = icmp ugt i16 %i.g, 1024
  br i1 %i.h, label %.loopexit176, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 10 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !84   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !86
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef i64 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j), !call_target !94
  %.not186 = icmp eq i16 %i.g, 0
  br i1 %.not186, label %.loopexit176, label %.lr.ph189

.lr.ph189:                                        ; preds = %bb.b
  %i.o = zext nneg i16 %i.g to i32
  %i.p = shl nsw i64 %i.n, 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 768280
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 768296
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 381728
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4792
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1356
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1488 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1492
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 192688 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1496
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1500
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3786
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 153088 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 3784
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 186 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 182 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 3790 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 3788 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 5110
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4014
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4016
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 153100 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4012
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 5174
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4024
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4020
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 3976
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 3940
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 3904
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 3868
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 3832
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 3796 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4804
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 4800
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 153252
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 153256
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 153260
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph189, %.loopexit
  %.in = phi i32 [ %i.o, %.lr.ph189 ], [ %i.bf, %.loopexit ]
  %.0141187 = phi i32 [ -1, %.lr.ph189 ], [ %.2, %.loopexit ] ; 63 uses
  %i.bf = add nsw i32 %.in, -1                    ; 2 uses
  call void @_ZN6LibRaw8tiff_getExPjS0_S0_Px(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %i.bg = load ptr, ptr %i.i, align 8, !tbaa !84  ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !86
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = call noundef i64 %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.bg), !call_target !95 ; 2 uses
  %i.bl = load i32, ptr %i.c, align 4, !tbaa !11  ; 3 uses
  %i.bm = icmp ugt i32 %i.bl, 8
  %i.bn = zext i32 %i.bl to i64
  %i.bo = add nsw i64 %i.bk, %i.bn
  %i.bp = icmp sgt i64 %i.bo, %i.p
  %or.cond192 = select i1 %i.bm, i1 %i.bp, i1 false
  br i1 %or.cond192, label %.loopexit, label %bb.d, !llvm.loop !15

bb.d:                                             ; preds = %bb.c
  %i.bq = load ptr, ptr %i.q, align 8, !tbaa !97  ; 2 uses
  %.not156 = icmp eq ptr %i.bq, null
  br i1 %.not156, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.br = load ptr, ptr %i.r, align 8, !tbaa !98
  %i.bs = load i32, ptr %i.a, align 4, !tbaa !11
  %i.bt = or i32 %i.bs, 131072
  %i.bu = load i32, ptr %i.b, align 4, !tbaa !11
  %i.bv = load i16, ptr %i.s, align 8, !tbaa !99
  %i.bw = sext i16 %i.bv to i32
  %i.bx = load ptr, ptr %i.i, align 8, !tbaa !84
  call void %i.bq(ptr noundef %i.br, i32 noundef %i.bt, i32 noundef %i.bu, i32 noundef %i.bl, i32 noundef %i.bw, ptr noundef %i.bx, i64 noundef %1)
  %i.by = load ptr, ptr %i.i, align 8, !tbaa !84  ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !86
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = call noundef i32 %i.cb(ptr noundef nonnull align 8 dereferenceable(8) %i.by, i64 noundef %i.bk, i32 noundef 0), !call_target !103 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.cd = load i32, ptr %i.a, align 4, !tbaa !11  ; 17 uses
  switch i32 %i.cd, label %bb.ar [
    i32 1003, label %bb.g
    i32 1004, label %bb.h
    i32 1005, label %bb.i
    i32 1006, label %bb.j
    i32 1007, label %bb.k
    i32 1008, label %bb.n
    i32 1009, label %bb.s
    i32 1011, label %bb.ao
    i32 1020, label %bb.ap
  ]

bb.g:                                             ; preds = %bb.f
  %i.ce = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i16 %i.ce, ptr %i.ah, align 2, !tbaa !105
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.cf = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i16 %i.cf, ptr %i.ag, align 8, !tbaa !106
  br label %.loopexit

bb.i:                                             ; preds = %bb.f
  %i.cg = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i16 %i.cg, ptr %i.af, align 2, !tbaa !107
  br label %.loopexit

bb.j:                                             ; preds = %bb.f
  %i.ch = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i16 %i.ch, ptr %i.ae, align 4, !tbaa !108
  br label %.loopexit

bb.k:                                             ; preds = %bb.f
  %i.ci = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aa, ptr noundef nonnull dereferenceable(11) @.str) #10
  %.not171 = icmp eq i32 %i.ci, 0
  %i.cj = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  br i1 %.not171, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ck = zext i16 %i.cj to i32
  store i32 %i.ck, ptr %i.ac, align 8, !tbaa !109
  br label %.loopexit

bb.m:                                             ; preds = %bb.k
  store i16 %i.cj, ptr %i.ad, align 8, !tbaa !110
  br label %.loopexit

bb.n:                                             ; preds = %bb.f
  %i.cl = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aa, ptr noundef nonnull dereferenceable(11) @.str) #10
  %.not169 = icmp eq i32 %i.cl, 0
  br i1 %.not169, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.cm = load i32, ptr %i.ac, align 8, !tbaa !109 ; 2 uses
  %.not170 = icmp eq i32 %i.cm, 0
  %i.cn = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.co = zext i16 %i.cn to i32                   ; 2 uses
  br i1 %.not170, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cp = add i32 %i.cm, %i.co
  %i.cq = lshr i32 %i.cp, 1
  store i32 %i.cq, ptr %i.ac, align 8, !tbaa !109
  br label %.loopexit

bb.q:                                             ; preds = %bb.o
  store i32 %i.co, ptr %i.ac, align 8, !tbaa !109
  br label %.loopexit
end_hunk_0
