inline.NumInlined: 4
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.OpenImageIO_v3_1_Imf__3_3_5::CpuId" = type { i8, i8, i8, i8, i8, i8, i8 }

@.str = private unnamed_addr constant [25 x i8] c"Data compression failed.\00", align 1
@_ZTIN7Iex_3_37BaseExcE = external constant ptr
@.str.1 = private unnamed_addr constant [27 x i8] c"Data decompression failed.\00", align 1
@_ZTIN7Iex_3_38InputExcE = external constant ptr
@_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110interleaveE = internal unnamed_addr global ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117interleave_scalarEPKcmPc, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Integer multiplication overflow.\00", align 1
@_ZTIN7Iex_3_311OverflowExcE = external constant ptr

@_ZN27OpenImageIO_v3_1_Imf__3_3_53ZipC1Emi = hidden unnamed_addr alias void (ptr, i64, i32), ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_53ZipC2Emi
@_ZN27OpenImageIO_v3_1_Imf__3_3_53ZipC1Emmi = hidden unnamed_addr alias void (ptr, i64, i64, i32), ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_53ZipC2Emmi
@_ZN27OpenImageIO_v3_1_Imf__3_3_53ZipD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_53ZipD2Ev

; Function Attrs: mustprogress uwtable
define hidden void @_ZN27OpenImageIO_v3_1_Imf__3_3_53ZipC2Emi(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(20) initializes((0, 20)) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  store i64 %1, ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %2, ptr %i.b, align 8, !tbaa !13
  %i.c = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %1) #13
  store ptr %i.c, ptr %i.a, align 8, !tbaa !12
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN27OpenImageIO_v3_1_Imf__3_3_53ZipC2Emmi(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(20) initializes((0, 20)) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store i32 %3, ptr %i.a, align 8, !tbaa !13
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZN27OpenImageIO_v3_1_Imf__3_3_56uiMultImEET_S1_S1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %mul.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2)
  %mul.ov.i = extractvalue { i64, i1 } %mul.i, 1
  br i1 %mul.ov.i, label %bb.c, label %_ZN27OpenImageIO_v3_1_Imf__3_3_56uiMultImEET_S1_S1_.exit

bb.c:                                             ; preds = %bb.b
  %i.b = tail call ptr @__cxa_allocate_exception(i64 72) #14 ; 3 uses
  invoke void @_ZN7Iex_3_311OverflowExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull @.str.2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN7Iex_3_311OverflowExcE, ptr nonnull @_ZN7Iex_3_311OverflowExcD1Ev) #15
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #14
  resume { ptr, i32 } %i.c

_ZN27OpenImageIO_v3_1_Imf__3_3_56uiMultImEET_S1_S1_.exit: ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = mul i64 %2, %1                           ; 2 uses
  store i64 %i.e, ptr %0, align 8, !tbaa !7
  %i.f = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #13
  store ptr %i.f, ptr %i.d, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN27OpenImageIO_v3_1_Imf__3_3_53ZipD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(20) dereferenceable(20) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZN27OpenImageIO_v3_1_Imf__3_3_53Zip10maxRawSizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !7
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN27OpenImageIO_v3_1_Imf__3_3_53Zip17maxCompressedSizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !7
  %i.b = tail call i64 @exr_compress_max_buffer_size(i64 noundef %i.a)
  ret i64 %i.b
}

declare i64 @exr_compress_max_buffer_size(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN27OpenImageIO_v3_1_Imf__3_3_53Zip8compressEPKciPc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 3 uses
  %i.d = sext i32 %2 to i64                       ; 4 uses
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d ; 2 uses
  %i.f = icmp sgt i32 %2, 0
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge40

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = add nuw nsw i32 %2, 1
  %i.h = lshr i32 %i.g, 1
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.i
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.033 = phi ptr [ %i.o, %bb.b ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %.02532 = phi ptr [ %i.n, %bb.b ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %.02631 = phi ptr [ %i.q, %bb.b ], [ %i.j, %.lr.ph.preheader ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.033, i64 1 ; 2 uses
  %i.l = load i8, ptr %.033, align 1, !tbaa !14
  store i8 %i.l, ptr %.02532, align 1, !tbaa !14
  %i.m = icmp ult ptr %i.k, %i.e
  br i1 %i.m, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %.02532, i64 1
  %i.o = getelementptr inbounds nuw i8, ptr %.033, i64 2 ; 2 uses
  %i.p = load i8, ptr %i.k, align 1, !tbaa !14
  %i.q = getelementptr inbounds nuw i8, ptr %.02631, i64 1
  store i8 %i.p, ptr %.02631, align 1, !tbaa !14
  %i.r = icmp ult ptr %i.o, %i.e
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !12  ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.d
  %.not44 = icmp eq i32 %2, 1
  br i1 %.not44, label %._crit_edge40, label %.lr.ph39.preheader

.lr.ph39.preheader:                               ; preds = %._crit_edge
  %.pre45 = ptrtoint ptr %.pre to i64             ; 3 uses
  %.02835 = getelementptr inbounds nuw i8, ptr %.pre, i64 1 ; 3 uses
  %i.t = load i8, ptr %.pre, align 1, !tbaa !14   ; 2 uses
  %i.u = add i64 %.pre45, %i.d
  %i.v = add i64 %.pre45, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.v)
  %i.w = xor i64 %.pre45, -1
  %i.x = add i64 %umax, %i.w                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.x, 32
  br i1 %min.iters.check, label %.lr.ph39.preheader47, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph39.preheader
  %n.vec = and i64 %i.x, -32                      ; 3 uses
  %i.y = getelementptr i8, ptr %.02835, i64 %n.vec
  %vector.recur.init = insertelement <16 x i8> poison, i8 %i.t, i64 15
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <16 x i8> [ %vector.recur.init, %vector.ph ], [ %wide.load46, %vector.body ]
  %next.gep = getelementptr i8, ptr %.02835, i64 %index ; 3 uses
  %i.z = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !14 ; 3 uses
  %wide.load46 = load <16 x i8>, ptr %i.z, align 1, !tbaa !14 ; 4 uses
  %i.aa = shufflevector <16 x i8> %vector.recur, <16 x i8> %wide.load, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  %i.ab = shufflevector <16 x i8> %wide.load, <16 x i8> %wide.load46, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  %i.ac = sub <16 x i8> %wide.load, %i.aa
  %i.ad = sub <16 x i8> %wide.load46, %i.ab
  %i.ae = xor <16 x i8> %i.ac, splat (i8 -128)
  %i.af = xor <16 x i8> %i.ad, splat (i8 -128)
  store <16 x i8> %i.ae, ptr %next.gep, align 1, !tbaa !14
  store <16 x i8> %i.af, ptr %i.z, align 1, !tbaa !14
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <16 x i8> %wide.load46, i64 15
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %._crit_edge40.loopexit, label %.lr.ph39.preheader47

.lr.ph39.preheader47:                             ; preds = %.lr.ph39.preheader, %middle.block
  %.02837.ph = phi ptr [ %.02835, %.lr.ph39.preheader ], [ %i.y, %middle.block ]
  %.02736.ph = phi i8 [ %i.t, %.lr.ph39.preheader ], [ %vector.recur.extract, %middle.block ]
  br label %.lr.ph39

.lr.ph39:                                         ; preds = %.lr.ph39.preheader47, %.lr.ph39
  %.02837 = phi ptr [ %.028, %.lr.ph39 ], [ %.02837.ph, %.lr.ph39.preheader47 ] ; 3 uses
  %.02736 = phi i8 [ %i.ah, %.lr.ph39 ], [ %.02736.ph, %.lr.ph39.preheader47 ]
  %i.ah = load i8, ptr %.02837, align 1, !tbaa !14 ; 2 uses
  %i.ai = sub i8 %i.ah, %.02736
  %i.aj = xor i8 %i.ai, -128
  store i8 %i.aj, ptr %.02837, align 1, !tbaa !14
  %.028 = getelementptr inbounds nuw i8, ptr %.02837, i64 1 ; 2 uses
  %i.ak = icmp ult ptr %.028, %i.s
  br i1 %i.ak, label %.lr.ph39, label %._crit_edge40.loopexit, !llvm.loop !20

._crit_edge40.loopexit:                           ; preds = %.lr.ph39, %middle.block
  %.pre41 = load ptr, ptr %i.b, align 8, !tbaa !12
  br label %._crit_edge40

._crit_edge40:                                    ; preds = %bb.a, %._crit_edge40.loopexit, %._crit_edge
  %i.al = phi ptr [ %.pre41, %._crit_edge40.loopexit ], [ %.pre, %._crit_edge ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !13
  %i.ao = load i64, ptr %0, align 8, !tbaa !7
  %i.ap = tail call noundef i64 @exr_compress_max_buffer_size(i64 noundef %i.ao)
  %i.aq = call i32 @exr_compress_buffer(ptr noundef null, i32 noundef %i.an, ptr noundef %i.al, i64 noundef %i.d, ptr noundef %3, i64 noundef %i.ap, ptr noundef nonnull %i.a)
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %._crit_edge40
  %i.ar = call ptr @__cxa_allocate_exception(i64 72) #14 ; 3 uses
  invoke void @_ZN7Iex_3_37BaseExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.ar, ptr noundef nonnull @.str)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @__cxa_throw(ptr nonnull %i.ar, ptr nonnull @_ZTIN7Iex_3_37BaseExcE, ptr nonnull @_ZN7Iex_3_37BaseExcD1Ev) #15
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ar) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  resume { ptr, i32 } %i.as

bb.f:                                             ; preds = %._crit_edge40
  %i.at = load i64, ptr %i.a, align 8, !tbaa !21
  %i.au = trunc i64 %i.at to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %i.au
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

declare i32 @exr_compress_buffer(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN7Iex_3_37BaseExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN7Iex_3_37BaseExcD1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #7

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN27OpenImageIO_v3_1_Imf__3_3_53Zip10uncompressEPKciPc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 0, ptr %i.a, align 8, !tbaa !21
  %i.b = sext i32 %2 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.e = load i64, ptr %0, align 8, !tbaa !7
  %i.f = call i32 @exr_uncompress_buffer(ptr noundef null, ptr noundef %1, i64 noundef %i.b, ptr noundef %i.d, i64 noundef %i.e, ptr noundef nonnull %i.a)
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call ptr @__cxa_allocate_exception(i64 72) #14 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull @.str.1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN7Iex_3_38InputExcE, ptr nonnull @_ZN7Iex_3_38InputExcD1Ev) #15
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  resume { ptr, i32 } %i.h

bb.e:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.a, align 8, !tbaa !21   ; 3 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !12   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  %.not7 = icmp eq i64 %i.i, 1
  br i1 %.not7, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_118reconstruct_scalarEPcm.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.f
  %.09.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %.pre.i = load i8, ptr %i.k, align 1, !tbaa !14
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %i.m = phi i8 [ %i.p, %.lr.ph.i ], [ %.pre.i, %.lr.ph.preheader.i ]
  %.011.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.09.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.n = load i8, ptr %.011.i, align 1, !tbaa !14
  %i.o = add i8 %i.n, %i.m
  %i.p = xor i8 %i.o, -128                        ; 2 uses
  store i8 %i.p, ptr %.011.i, align 1, !tbaa !14
  %.0.i = getelementptr inbounds nuw i8, ptr %.011.i, i64 1 ; 2 uses
  %i.q = icmp ult ptr %.0.i, %i.l
  br i1 %i.q, label %.lr.ph.i, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_118reconstruct_scalarEPcm.exit.loopexit, !llvm.loop !22

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_118reconstruct_scalarEPcm.exit.loopexit: ; preds = %.lr.ph.i
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !12
  %.pre8 = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_118reconstruct_scalarEPcm.exit

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_118reconstruct_scalarEPcm.exit: ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_118reconstruct_scalarEPcm.exit.loopexit, %bb.f
  %i.r = phi i64 [ %.pre8, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_118reconstruct_scalarEPcm.exit.loopexit ], [ 1, %bb.f ]
  %i.s = phi ptr [ %.pre, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_118reconstruct_scalarEPcm.exit.loopexit ], [ %i.k, %bb.f ]
  %i.t = load ptr, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110interleaveE, align 8, !tbaa !23
  call void %i.t(ptr noundef %i.s, i64 noundef %i.r, ptr noundef %3), !callees !24
  %i.u = load i64, ptr %i.a, align 8, !tbaa !21
  %i.v = trunc i64 %i.u to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_118reconstruct_scalarEPcm.exit
  %.0 = phi i32 [ %i.v, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_118reconstruct_scalarEPcm.exit ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0
}

declare i32 @exr_uncompress_buffer(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN7Iex_3_38InputExcD1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZN27OpenImageIO_v3_1_Imf__3_3_53Zip15initializeFuncsEv() local_unnamed_addr #0 align 2 {
bb.a:
  %0 = alloca %"class.OpenImageIO_v3_1_Imf__3_3_5::CpuId", align 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #14
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_55CpuIdC1Ev(ptr noundef nonnull align 1 dereferenceable(7) %0)
end_hunk_0
