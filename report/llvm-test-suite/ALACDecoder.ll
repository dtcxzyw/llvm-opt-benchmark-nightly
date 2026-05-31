inline.NumInlined: 4
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BitBuffer = type { ptr, ptr, i32, i32 }
%struct.AGParamRec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@_ZN11ALACDecoderC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11ALACDecoderC2Ev
@_ZN11ALACDecoderD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11ALACDecoderD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11ALACDecoderC2Ev(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 24), (32, 64)) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @_ZN11ALACDecoderD2Ev(ptr noundef nonnull align 8 captures(none) dead_on_return(64) dereferenceable(64) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #9
  store ptr null, ptr %i.a, align 8, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %.not3 = icmp eq ptr %i.d, null
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #9
  store ptr null, ptr %i.c, align 8, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16   ; 2 uses
  %.not4 = icmp eq ptr %i.f, null
  br i1 %.not4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.f) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -108, 1) i32 @_ZN11ALACDecoder4InitEPvj(ptr noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i8, ptr %i.a, align 1, !tbaa !17    ; 2 uses
  %i.c = icmp eq i8 %i.b, 102
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.e = load i8, ptr %i.d, align 1, !tbaa !17
  %i.f = icmp eq i8 %i.e, 114
  br i1 %i.f, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.h = load i8, ptr %i.g, align 1, !tbaa !17
  %i.i = icmp eq i8 %i.h, 109
  br i1 %i.i, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.k = load i8, ptr %i.j, align 1, !tbaa !17
  %i.l = icmp eq i8 %i.k, 97
  br i1 %i.l, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.n = add i32 %2, -12
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %i.o = phi i8 [ %.pre, %bb.e ], [ %i.b, %bb.a ]
  %.028 = phi ptr [ %i.m, %bb.e ], [ %1, %bb.a ]  ; 8 uses
  %.0 = phi i32 [ %i.n, %bb.e ], [ %2, %bb.a ]    ; 5 uses
  %i.p = icmp eq i8 %i.o, 97
  br i1 %i.p, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.028, i64 5
  %i.r = load i8, ptr %i.q, align 1, !tbaa !17
  %i.s = icmp eq i8 %i.r, 108
  br i1 %i.s, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %.028, i64 6
  %i.u = load i8, ptr %i.t, align 1, !tbaa !17
  %i.v = icmp eq i8 %i.u, 97
  br i1 %i.v, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %.028, i64 7
  %i.x = load i8, ptr %i.w, align 1, !tbaa !17
  %i.y = icmp eq i8 %i.x, 99
  br i1 %i.y, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %.028, i64 12
  %i.aa = add i32 %.0, -12
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.129 = phi ptr [ %i.z, %bb.j ], [ %.028, %bb.i ], [ %.028, %bb.h ], [ %.028, %bb.g ], [ %.028, %bb.f ], [ %1, %bb.d ], [ %1, %bb.c ], [ %1, %bb.b ] ; 8 uses
  %.1 = phi i32 [ %i.aa, %bb.j ], [ %.0, %bb.i ], [ %.0, %bb.h ], [ %.0, %bb.g ], [ %.0, %bb.f ], [ %2, %bb.d ], [ %2, %bb.c ], [ %2, %bb.b ]
  %i.ab = icmp ugt i32 %.1, 23
  br i1 %i.ab, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.thread
  %i.ac = load i32, ptr %.129, align 4, !tbaa !18
  %i.ad = tail call i32 @Swap32BtoN(i32 noundef %i.ac) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.129, i64 4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.129, i64 8
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !19
  %i.ah = getelementptr inbounds nuw i8, ptr %.129, i64 9
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %.129, i64 10
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %.129, i64 12
  %i.am = getelementptr inbounds nuw i8, ptr %.129, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %.129, i64 20
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ao = load <4 x i8>, ptr %i.ae, align 4, !tbaa !17
  %i.ap = load i8, ptr %i.ae, align 4, !tbaa !22
  %i.aq = tail call zeroext i16 @Swap16BtoN(i16 noundef zeroext %i.ak)
  %i.ar = load i32, ptr %i.al, align 4, !tbaa !23
  %i.as = tail call i32 @Swap32BtoN(i32 noundef %i.ar)
  %i.at = load i32, ptr %i.am, align 4, !tbaa !24
  %i.au = tail call i32 @Swap32BtoN(i32 noundef %i.at)
  %i.av = load i32, ptr %i.an, align 4, !tbaa !25
  %i.aw = tail call i32 @Swap32BtoN(i32 noundef %i.av)
  store i32 %i.ad, ptr %0, align 8, !tbaa !4
  store <4 x i8> %i.ao, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !17
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.ag, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !17
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.ai, ptr %.sroa.9.0..sroa_idx, align 1, !tbaa !17
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %i.aq, ptr %.sroa.10.0..sroa_idx, align 2, !tbaa !26
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.as, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.au, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.aw, ptr %.sroa.13.0..sroa_idx, align 4, !tbaa !4
  %i.ax = icmp eq i8 %i.ap, 0
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ay = zext i32 %i.ad to i64
  %i.az = shl nuw nsw i64 %i.ay, 2
  %i.ba = tail call noalias ptr @calloc(i64 noundef %i.az, i64 noundef 1) #10 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !8
  %i.bc = load i32, ptr %0, align 8, !tbaa !27
  %i.bd = zext i32 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.bd, 2
  %i.bf = tail call noalias ptr @calloc(i64 noundef %i.be, i64 noundef 1) #10 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !15
  %i.bh = load i32, ptr %0, align 8, !tbaa !27
  %i.bi = zext i32 %i.bh to i64
  %i.bj = shl nuw nsw i64 %i.bi, 2
  %i.bk = tail call noalias ptr @calloc(i64 noundef %i.bj, i64 noundef 1) #10 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !16
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !28
  %.not = icmp eq ptr %i.ba, null
  %.not32 = icmp eq ptr %i.bf, null
  %or.cond = or i1 %.not, %.not32
  %.not33 = icmp eq ptr %i.bk, null
  %or.cond34 = or i1 %or.cond, %.not33
  %spec.select = select i1 %or.cond34, i32 -108, i32 0
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread, %bb.k
  %.030 = phi i32 [ -50, %bb.k ], [ %spec.select, %bb.l ], [ -50, %.thread ]
  ret i32 %.030
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

declare i32 @Swap32BtoN(i32 noundef) local_unnamed_addr #6

declare zeroext i16 @Swap16BtoN(i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11ALACDecoder6DecodeEP9BitBufferPhjjPj(ptr noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef writeonly captures(address_is_null) %5) local_unnamed_addr #4 align 2 {
bb.a:
  %6 = alloca %struct.BitBuffer, align 8          ; 7 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %7 = alloca %struct.AGParamRec, align 4         ; 8 uses
  %i.c = alloca [32 x i16], align 16              ; 6 uses
  %i.d = alloca [32 x i16], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.e = icmp eq ptr %1, null
  %i.f = icmp eq ptr %2, null
  %or.cond.not416 = or i1 %i.e, %i.f
  %i.g = icmp eq ptr %5, null
  %or.cond3.not413 = or i1 %or.cond.not416, %i.g
  %.not = icmp eq i32 %4, 0
  %or.cond388 = or i1 %.not, %or.cond3.not413
  br i1 %or.cond388, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store i16 0, ptr %i.h, align 8, !tbaa !29
  store i32 %3, ptr %5, align 4, !tbaa !4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 14 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 7 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  %ident.check.not = icmp eq i32 %4, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.bc
  %.0347 = phi i32 [ 0, %bb.b ], [ %.1348, %bb.bc ] ; 16 uses
  %.0334 = phi i32 [ %3, %bb.b ], [ %.3, %bb.bc ] ; 8 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !30
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !33
  %i.u = icmp ult ptr %i.s, %i.t
  br i1 %i.u, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.v = load i8, ptr %i.j, align 2, !tbaa !34    ; 2 uses
  %i.w = call zeroext i8 @BitBufferReadSmall(ptr noundef nonnull %1, i8 noundef zeroext 3)
  switch i8 %i.w, label %bb.bc [
    i8 0, label %bb.e
    i8 3, label %bb.e
    i8 1, label %bb.ab
    i8 2, label %.thread407
    i8 5, label %.thread407
    i8 4, label %bb.ay
    i8 6, label %bb.az
    i8 7, label %bb.bb
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.x = call zeroext i8 @BitBufferReadSmall(ptr noundef nonnull %1, i8 noundef zeroext 4)
  %i.y = zext nneg i8 %i.x to i32
  %i.z = shl nuw i32 1, %i.y
  %i.aa = load i16, ptr %i.h, align 8, !tbaa !29
  %i.ab = trunc i32 %i.z to i16
  %i.ac = or i16 %i.aa, %i.ab
  store i16 %i.ac, ptr %i.h, align 8, !tbaa !29
  %i.ad = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 12)
  %i.ae = and i32 %i.ad, 65535
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.ag = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 4) ; 3 uses
  %i.ah = trunc i32 %i.ag to i8
  %i.ai = lshr i8 %i.ah, 1
  %i.aj = and i8 %i.ai, 3                         ; 5 uses
  %.not383 = icmp eq i8 %i.aj, 3
  br i1 %.not383, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = and i32 %i.ag, 1
  %i.al = load i8, ptr %i.k, align 1, !tbaa !35
  %i.am = zext i8 %i.al to i32
  %i.an = shl nuw nsw i8 %i.aj, 3                 ; 2 uses
  %i.ao = zext nneg i8 %i.an to i32               ; 2 uses
  %i.ap = sub nsw i32 %i.am, %i.ao                ; 8 uses
  %i.aq = and i32 %i.ag, 248
  %.not384 = icmp eq i32 %i.aq, 0
  br i1 %.not384, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16)
  %i.as = shl i32 %i.ar, 16
  %i.at = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16)
  %i.au = or i32 %i.as, %i.at
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1 = phi i32 [ %i.au, %bb.h ], [ %.0334, %bb.g ] ; 22 uses
  %i.av = icmp eq i32 %i.ak, 0
  br i1 %i.av, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.aw = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 8) ; 0 uses
  %i.ax = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 8) ; 0 uses
  %i.ay = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 8) ; 2 uses
  %i.az = and i32 %i.ay, 15
  %i.ba = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 8) ; 2 uses
  %i.bb = lshr i32 %i.ba, 5
  %i.bc = and i32 %i.bb, 7
  %i.bd = and i32 %i.ba, 31                       ; 3 uses
  %.not502 = icmp eq i32 %i.bd, 0
  br i1 %.not502, label %._crit_edge446, label %.lr.ph445.preheader

.lr.ph445.preheader:                              ; preds = %bb.j
  %wide.trip.count555 = zext nneg i32 %i.bd to i64
  br label %.lr.ph445

.lr.ph445:                                        ; preds = %.lr.ph445.preheader, %.lr.ph445
  %indvars.iv552 = phi i64 [ 0, %.lr.ph445.preheader ], [ %indvars.iv.next553, %.lr.ph445 ] ; 2 uses
  %i.be = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16)
  %i.bf = trunc i32 %i.be to i16
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv552
  store i16 %i.bf, ptr %i.bg, align 2, !tbaa !26
  %indvars.iv.next553 = add nuw nsw i64 %indvars.iv552, 1 ; 2 uses
  %exitcond556.not = icmp eq i64 %indvars.iv.next553, %wide.trip.count555
  br i1 %exitcond556.not, label %._crit_edge446, label %.lr.ph445, !llvm.loop !36

._crit_edge446:                                   ; preds = %.lr.ph445, %bb.j
  %.not385 = icmp eq i8 %i.aj, 0                  ; 2 uses
  br i1 %.not385, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !38
  %i.bh = mul i32 %.1, %i.ao
  call void @BitBufferAdvance(ptr noundef nonnull %1, i32 noundef %i.bh)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge446
  %i.bi = load i8, ptr %i.n, align 1, !tbaa !40
  %i.bj = zext i8 %i.bi to i32
  %i.bk = zext i8 %i.v to i32
  %i.bl = mul nuw nsw i32 %i.bc, %i.bk
  %i.bm = lshr i32 %i.bl, 2
  %i.bn = load i8, ptr %i.o, align 8, !tbaa !41
  %i.bo = zext i8 %i.bn to i32
  %i.bp = load i16, ptr %i.p, align 2, !tbaa !42
  %i.bq = zext i16 %i.bp to i32
  call void @set_ag_params(ptr noundef nonnull %7, i32 noundef %i.bj, i32 noundef %i.bm, i32 noundef %i.bo, i32 noundef %.1, i32 noundef %.1, i32 noundef %i.bq)
  %i.br = load ptr, ptr %i.q, align 8, !tbaa !16
  %i.bs = call i32 @dyn_decomp(ptr noundef nonnull %7, ptr noundef nonnull %1, ptr noundef %i.br, i32 noundef %.1, i32 noundef %i.ap, ptr noundef nonnull %i.a) ; 2 uses
  %.not386 = icmp eq i32 %i.bs, 0
  br i1 %.not386, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.bt = and i32 %i.ay, 240
  %i.bu = icmp eq i32 %i.bt, 0
  %i.bv = load ptr, ptr %i.q, align 8, !tbaa !16  ; 3 uses
  br i1 %i.bu, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @unpc_block(ptr noundef %i.bv, ptr noundef %i.bv, i32 noundef %.1, ptr noundef null, i32 noundef 31, i32 noundef %i.ap, i32 noundef 0)
  %i.bw = load ptr, ptr %i.q, align 8, !tbaa !16
  br label %bb.r

bb.o:                                             ; preds = %bb.i
  %i.bx = sub nsw i32 32, %i.ap                   ; 3 uses
  %i.by = icmp ult i32 %i.ap, 17
  %.not501 = icmp eq i32 %.1, 0                   ; 2 uses
  br i1 %i.by, label %.preheader, label %.preheader421

.preheader421:                                    ; preds = %bb.o
  br i1 %.not501, label %.thread, label %.lr.ph440

.lr.ph440:                                        ; preds = %.preheader421
  %i.bz = trunc i32 %i.ap to i8
  %i.ca = add i8 %i.bz, -16
  %wide.trip.count545 = zext i32 %.1 to i64
  br label %bb.q

.preheader:                                       ; preds = %bb.o
  br i1 %.not501, label %.thread, label %.lr.ph442

.lr.ph442:                                        ; preds = %.preheader
  %i.cb = trunc nuw nsw i32 %i.ap to i8
  %wide.trip.count550 = zext i32 %.1 to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph442, %bb.p
  %indvars.iv547 = phi i64 [ 0, %.lr.ph442 ], [ %indvars.iv.next548, %bb.p ] ; 2 uses
  %i.cc = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext %i.cb)
  %i.cd = shl i32 %i.cc, %i.bx
  %i.ce = ashr exact i32 %i.cd, %i.bx
  %i.cf = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv547
  store i32 %i.ce, ptr %i.cg, align 4, !tbaa !4
  %indvars.iv.next548 = add nuw nsw i64 %indvars.iv547, 1 ; 2 uses
  %exitcond551.not = icmp eq i64 %indvars.iv.next548, %wide.trip.count550
  br i1 %exitcond551.not, label %.thread, label %bb.p, !llvm.loop !43

bb.q:                                             ; preds = %.lr.ph440, %bb.q
  %indvars.iv542 = phi i64 [ 0, %.lr.ph440 ], [ %indvars.iv.next543, %bb.q ] ; 2 uses
  %i.ch = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16)
  %i.ci = shl i32 %i.ch, 16
  %i.cj = ashr i32 %i.ci, %i.bx
  %i.ck = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext %i.ca)
  %i.cl = or i32 %i.cj, %i.ck
  %i.cm = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv542
  store i32 %i.cl, ptr %i.cn, align 4, !tbaa !4
  %indvars.iv.next543 = add nuw nsw i64 %indvars.iv542, 1 ; 2 uses
  %exitcond546.not = icmp eq i64 %indvars.iv.next543, %wide.trip.count545
  br i1 %exitcond546.not, label %.thread, label %bb.q, !llvm.loop !44

.thread:                                          ; preds = %bb.q, %bb.p, %.preheader421, %.preheader
  %i.co = mul i32 %.1, %i.ap
  store i32 %i.co, ptr %i.a, align 4, !tbaa !4
  br label %.loopexit420

bb.r:                                             ; preds = %bb.m, %bb.n
  %.sink = phi ptr [ %i.bw, %bb.n ], [ %i.bv, %bb.m ]
  %i.cp = load ptr, ptr %i.l, align 8, !tbaa !8
  call void @unpc_block(ptr noundef %.sink, ptr noundef %i.cp, i32 noundef %.1, ptr noundef nonnull %i.c, i32 noundef %i.bd, i32 noundef %i.ap, i32 noundef %i.az)
  br i1 %.not385, label %.loopexit420, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not503 = icmp eq i32 %.1, 0
  br i1 %.not503, label %.loopexit420, label %.lr.ph449.preheader

.lr.ph449.preheader:                              ; preds = %bb.s
  %wide.trip.count560 = zext i32 %.1 to i64
  br label %.lr.ph449

.lr.ph449:                                        ; preds = %.lr.ph449.preheader, %.lr.ph449
  %indvars.iv557 = phi i64 [ 0, %.lr.ph449.preheader ], [ %indvars.iv.next558, %.lr.ph449 ] ; 2 uses
  %i.cq = call i32 @BitBufferRead(ptr noundef nonnull %6, i8 noundef zeroext %i.an)
  %i.cr = trunc i32 %i.cq to i16
  %i.cs = load ptr, ptr %i.r, align 8, !tbaa !28
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %indvars.iv557
  store i16 %i.cr, ptr %i.ct, align 2, !tbaa !26
  %indvars.iv.next558 = add nuw nsw i64 %indvars.iv557, 1 ; 2 uses
  %exitcond561.not = icmp eq i64 %indvars.iv.next558, %wide.trip.count560
  br i1 %exitcond561.not, label %.loopexit420, label %.lr.ph449, !llvm.loop !45

.loopexit420:                                     ; preds = %.lr.ph449, %bb.s, %.thread, %bb.r
  %.not387399 = phi i1 [ true, %.thread ], [ true, %bb.r ], [ false, %bb.s ], [ false, %.lr.ph449 ] ; 2 uses
  %.shrunk504 = phi i8 [ 0, %.thread ], [ 0, %bb.r ], [ %i.aj, %bb.s ], [ %i.aj, %.lr.ph449 ]
  %i.cu = zext nneg i8 %.shrunk504 to i32         ; 2 uses
  %i.cv = load i8, ptr %i.k, align 1, !tbaa !35
  %8 = zext i8 %i.cv to i32
  %9 = add nsw i32 %8, -16                        ; 2 uses
  %10 = call i32 @llvm.fshl.i32(i32 %9, i32 %9, i32 30)
  switch i32 %10, label %.loopexit419 [
    i32 0, label %bb.t
    i32 1, label %bb.u
    i32 2, label %bb.v
    i32 4, label %bb.y
  ]

bb.t:                                             ; preds = %.loopexit420
  %i.cw = zext i32 %.0347 to i64
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.cw ; 6 uses
  %.not505 = icmp eq i32 %.1, 0
  br i1 %.not505, label %.loopexit419, label %.lr.ph453

.lr.ph453:                                        ; preds = %bb.t
  %i.cy = load ptr, ptr %i.l, align 8, !tbaa !8   ; 6 uses
  %wide.trip.count565 = zext i32 %.1 to i64       ; 5 uses
  %min.iters.check = icmp ugt i32 %.1, 7
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %.lr.ph453
  %n.vec = and i64 %wide.trip.count565, 4294967288 ; 4 uses
  %i.cz = trunc nuw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %index ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %wide.load = load <4 x i32>, ptr %i.da, align 4, !tbaa !4
  %wide.load642 = load <4 x i32>, ptr %i.db, align 4, !tbaa !4
  %i.dc = trunc <4 x i32> %wide.load to <4 x i16>
  %i.dd = trunc <4 x i32> %wide.load642 to <4 x i16>
  %i.de = and i64 %index, 4294967288
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %i.de ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store <4 x i16> %i.dc, ptr %i.df, align 2, !tbaa !26
  store <4 x i16> %i.dd, ptr %i.dg, align 2, !tbaa !26
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count565
  br i1 %cmp.n, label %.loopexit419, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph453, %middle.block
  %indvars.iv562.ph = phi i64 [ 0, %.lr.ph453 ], [ %n.vec, %middle.block ] ; 3 uses
  %.0340451.ph = phi i32 [ 0, %.lr.ph453 ], [ %i.cz, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count565, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv562.prol = phi i64 [ %indvars.iv.next563.prol, %scalar.ph.prol ], [ %indvars.iv562.ph, %scalar.ph.preheader ] ; 2 uses
  %.0340451.prol = phi i32 [ %i.dn, %scalar.ph.prol ], [ %.0340451.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv562.prol
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !4
  %i.dk = trunc i32 %i.dj to i16
  %i.dl = zext i32 %.0340451.prol to i64
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %i.dl
  store i16 %i.dk, ptr %i.dm, align 2, !tbaa !26
  %indvars.iv.next563.prol = add nuw nsw i64 %indvars.iv562.prol, 1 ; 2 uses
  %i.dn = add i32 %.0340451.prol, %4              ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !49

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv562.unr = phi i64 [ %indvars.iv562.ph, %scalar.ph.preheader ], [ %indvars.iv.next563.prol, %scalar.ph.prol ]
  %.0340451.unr = phi i32 [ %.0340451.ph, %scalar.ph.preheader ], [ %i.dn, %scalar.ph.prol ]
  %i.do = sub nsw i64 %indvars.iv562.ph, %wide.trip.count565
  %i.dp = icmp ugt i64 %i.do, -4
  br i1 %i.dp, label %.loopexit419, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv562 = phi i64 [ %indvars.iv.next563.3, %scalar.ph ], [ %indvars.iv562.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.0340451 = phi i32 [ %i.eq, %scalar.ph ], [ %.0340451.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv562
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !4
  %i.ds = trunc i32 %i.dr to i16
  %i.dt = zext i32 %.0340451 to i64
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %i.dt
  store i16 %i.ds, ptr %i.du, align 2, !tbaa !26
  %i.dv = add i32 %.0340451, %4                   ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv562
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !4
  %i.dz = trunc i32 %i.dy to i16
  %i.ea = zext i32 %i.dv to i64
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %i.ea
  store i16 %i.dz, ptr %i.eb, align 2, !tbaa !26
  %i.ec = add i32 %i.dv, %4                       ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv562
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !4
  %i.eg = trunc i32 %i.ef to i16
  %i.eh = zext i32 %i.ec to i64
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %i.eh
  store i16 %i.eg, ptr %i.ei, align 2, !tbaa !26
  %i.ej = add i32 %i.ec, %4                       ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv562
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 12
  %i.em = load i32, ptr %i.el, align 4, !tbaa !4
  %i.en = trunc i32 %i.em to i16
  %i.eo = zext i32 %i.ej to i64
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %i.eo
  store i16 %i.en, ptr %i.ep, align 2, !tbaa !26
  %indvars.iv.next563.3 = add nuw nsw i64 %indvars.iv562, 4 ; 2 uses
  %i.eq = add i32 %i.ej, %4
  %exitcond566.not.3 = icmp eq i64 %indvars.iv.next563.3, %wide.trip.count565
  br i1 %exitcond566.not.3, label %.loopexit419, label %scalar.ph, !llvm.loop !51

bb.u:                                             ; preds = %.loopexit420
  %i.er = mul i32 %.0347, 3
  %i.es = zext i32 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 %i.es
  %i.eu = load ptr, ptr %i.l, align 8, !tbaa !8
  call void @copyPredictorTo20(ptr noundef %i.eu, ptr noundef nonnull %i.et, i32 noundef %4, i32 noundef %.1)
  br label %.loopexit419

bb.v:                                             ; preds = %.loopexit420
  %i.ev = mul i32 %.0347, 3
  %i.ew = zext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 %i.ew ; 2 uses
  %i.ey = load ptr, ptr %i.l, align 8, !tbaa !8   ; 2 uses
  br i1 %.not387399, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ez = load ptr, ptr %i.r, align 8, !tbaa !28
  call void @copyPredictorTo24Shift(ptr noundef %i.ey, ptr noundef %i.ez, ptr noundef nonnull %i.ex, i32 noundef %4, i32 noundef %.1, i32 noundef %i.cu)
  br label %.loopexit419

bb.x:                                             ; preds = %bb.v
  call void @copyPredictorTo24(ptr noundef %i.ey, ptr noundef nonnull %i.ex, i32 noundef %4, i32 noundef %.1)
  br label %.loopexit419

bb.y:                                             ; preds = %.loopexit420
  %i.fa = zext i32 %.0347 to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fa ; 2 uses
  %i.fc = load ptr, ptr %i.l, align 8, !tbaa !8   ; 2 uses
  br i1 %.not387399, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fd = load ptr, ptr %i.r, align 8, !tbaa !28
  call void @copyPredictorTo32Shift(ptr noundef %i.fc, ptr noundef %i.fd, ptr noundef nonnull %i.fb, i32 noundef %4, i32 noundef %.1, i32 noundef %i.cu)
  br label %.loopexit419

bb.aa:                                            ; preds = %bb.y
  call void @copyPredictorTo32(ptr noundef %i.fc, ptr noundef nonnull %i.fb, i32 noundef %4, i32 noundef %.1)
  br label %.loopexit419

.loopexit419:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.t, %bb.z, %bb.aa, %bb.w, %bb.x, %bb.u, %.loopexit420
  %i.fe = add nuw i32 %.0347, 1
  store i32 %.1, ptr %5, align 4, !tbaa !4
  br label %bb.bc

bb.ab:                                            ; preds = %bb.d
  %i.ff = add i32 %.0347, 2                       ; 2 uses
  %i.fg = icmp ugt i32 %i.ff, %4
  br i1 %i.fg, label %.thread407, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fh = call zeroext i8 @BitBufferReadSmall(ptr noundef nonnull %1, i8 noundef zeroext 4)
  %i.fi = zext nneg i8 %i.fh to i32
  %i.fj = shl nuw i32 1, %i.fi
  %i.fk = load i16, ptr %i.h, align 8, !tbaa !29
  %i.fl = trunc i32 %i.fj to i16
  %i.fm = or i16 %i.fk, %i.fl
  store i16 %i.fm, ptr %i.h, align 8, !tbaa !29
  %i.fn = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 12)
  %i.fo = and i32 %i.fn, 65535
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %bb.ac
  %i.fq = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 4) ; 3 uses
  %i.fr = trunc i32 %i.fq to i8
  %i.fs = lshr i8 %i.fr, 1
  %i.ft = and i8 %i.fs, 3                         ; 5 uses
  %.not377 = icmp eq i8 %i.ft, 3
  br i1 %.not377, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fu = and i32 %i.fq, 1
  %i.fv = load i8, ptr %i.k, align 1, !tbaa !35
  %i.fw = zext i8 %i.fv to i32
  %i.fx = shl nuw nsw i8 %i.ft, 3                 ; 3 uses
  %i.fy = zext nneg i8 %i.fx to i32               ; 2 uses
  %i.fz = sub nsw i32 %i.fw, %i.fy
  %i.ga = add nsw i32 %i.fz, 1                    ; 6 uses
  %i.gb = and i32 %i.fq, 248
  %.not378 = icmp eq i32 %i.gb, 0
  br i1 %.not378, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gc = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16)
  %i.gd = shl i32 %i.gc, 16
  %i.ge = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16)
  %i.gf = or i32 %i.gd, %i.ge
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.2 = phi i32 [ %i.gf, %bb.af ], [ %.0334, %bb.ae ] ; 23 uses
end_hunk_0
begin_hunk_1_@_ZN11ALACDecoder6DecodeEP9BitBufferPhjjPj:bb.a

._crit_edge:                                      ; preds = %.lr.ph431, %bb.ah
  %i.gu = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 8) ; 2 uses
  %i.gv = and i32 %i.gu, 15
  %i.gw = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 8) ; 2 uses
  %i.gx = lshr i32 %i.gw, 5
  %i.gy = and i32 %i.gx, 7
  %i.gz = and i32 %i.gw, 31                       ; 3 uses
  %.not498 = icmp eq i32 %i.gz, 0
  br i1 %.not498, label %._crit_edge435, label %.lr.ph434.preheader

.lr.ph434.preheader:                              ; preds = %._crit_edge
  %wide.trip.count537 = zext nneg i32 %i.gz to i64
  br label %.lr.ph434

.lr.ph434:                                        ; preds = %.lr.ph434.preheader, %.lr.ph434
  %indvars.iv534 = phi i64 [ 0, %.lr.ph434.preheader ], [ %indvars.iv.next535, %.lr.ph434 ] ; 2 uses
  %i.ha = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16)
  %i.hb = trunc i32 %i.ha to i16
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv534
  store i16 %i.hb, ptr %i.hc, align 2, !tbaa !26
  %indvars.iv.next535 = add nuw nsw i64 %indvars.iv534, 1 ; 2 uses
  %exitcond538.not = icmp eq i64 %indvars.iv.next535, %wide.trip.count537
  br i1 %exitcond538.not, label %._crit_edge435, label %.lr.ph434, !llvm.loop !53

._crit_edge435:                                   ; preds = %.lr.ph434, %._crit_edge
  %.not379 = icmp eq i8 %i.ft, 0                  ; 2 uses
  br i1 %.not379, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge435
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !38
  %i.hd = shl nuw nsw i32 %i.fy, 1
  %i.he = mul i32 %i.hd, %.2
  call void @BitBufferAdvance(ptr noundef nonnull %1, i32 noundef %i.he)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge435
  %i.hf = load i8, ptr %i.n, align 1, !tbaa !40
  %i.hg = zext i8 %i.hf to i32
  %i.hh = zext i8 %i.v to i32                     ; 2 uses
  %i.hi = mul nuw nsw i32 %i.gp, %i.hh
  %i.hj = lshr i32 %i.hi, 2
  %i.hk = load i8, ptr %i.o, align 8, !tbaa !41
  %i.hl = zext i8 %i.hk to i32
  %i.hm = load i16, ptr %i.p, align 2, !tbaa !42
  %i.hn = zext i16 %i.hm to i32
  call void @set_ag_params(ptr noundef nonnull %7, i32 noundef %i.hg, i32 noundef %i.hj, i32 noundef %i.hl, i32 noundef %.2, i32 noundef %.2, i32 noundef %i.hn)
  %i.ho = load ptr, ptr %i.q, align 8, !tbaa !16
  %i.hp = call i32 @dyn_decomp(ptr noundef nonnull %7, ptr noundef nonnull %1, ptr noundef %i.ho, i32 noundef %.2, i32 noundef %i.ga, ptr noundef nonnull %i.a) ; 2 uses
  %.not380 = icmp eq i32 %i.hp, 0
  br i1 %.not380, label %bb.ak, label %.loopexit

bb.ak:                                            ; preds = %bb.aj
  %i.hq = and i32 %i.gl, 240
  %i.hr = icmp eq i32 %i.hq, 0
  %i.hs = load ptr, ptr %i.q, align 8, !tbaa !16  ; 3 uses
  br i1 %i.hr, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @unpc_block(ptr noundef %i.hs, ptr noundef %i.hs, i32 noundef %.2, ptr noundef null, i32 noundef 31, i32 noundef %i.ga, i32 noundef 0)
  %i.ht = load ptr, ptr %i.q, align 8, !tbaa !16
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %.sink630 = phi ptr [ %i.ht, %bb.al ], [ %i.hs, %bb.ak ]
  %i.hu = load ptr, ptr %i.l, align 8, !tbaa !8
  call void @unpc_block(ptr noundef %.sink630, ptr noundef %i.hu, i32 noundef %.2, ptr noundef nonnull %i.c, i32 noundef %i.gq, i32 noundef %i.ga, i32 noundef %i.gm)
  %i.hv = load i8, ptr %i.n, align 1, !tbaa !40
  %i.hw = zext i8 %i.hv to i32
  %i.hx = mul nuw nsw i32 %i.gy, %i.hh
  %i.hy = lshr i32 %i.hx, 2
  %i.hz = load i8, ptr %i.o, align 8, !tbaa !41
  %i.ia = zext i8 %i.hz to i32
  %i.ib = load i16, ptr %i.p, align 2, !tbaa !42
  %i.ic = zext i16 %i.ib to i32
  call void @set_ag_params(ptr noundef nonnull %7, i32 noundef %i.hw, i32 noundef %i.hy, i32 noundef %i.ia, i32 noundef %.2, i32 noundef %.2, i32 noundef %i.ic)
  %i.id = load ptr, ptr %i.q, align 8, !tbaa !16
  %i.ie = call i32 @dyn_decomp(ptr noundef nonnull %7, ptr noundef nonnull %1, ptr noundef %i.id, i32 noundef %.2, i32 noundef %i.ga, ptr noundef nonnull %i.b) ; 2 uses
  %.not381 = icmp eq i32 %i.ie, 0
  br i1 %.not381, label %bb.an, label %.loopexit

bb.an:                                            ; preds = %bb.am
  %i.if = and i32 %i.gu, 240
  %i.ig = icmp eq i32 %i.if, 0
  %i.ih = load ptr, ptr %i.q, align 8, !tbaa !16  ; 3 uses
  br i1 %i.ig, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @unpc_block(ptr noundef %i.ih, ptr noundef %i.ih, i32 noundef %.2, ptr noundef null, i32 noundef 31, i32 noundef %i.ga, i32 noundef 0)
  %i.ii = load ptr, ptr %i.q, align 8, !tbaa !16
  br label %bb.ar

bb.ap:                                            ; preds = %bb.ag
  %i.ij = load i8, ptr %i.k, align 1, !tbaa !35   ; 5 uses
  %i.ik = zext i8 %i.ij to i32                    ; 2 uses
  %i.il = sub nsw i32 32, %i.ik                   ; 6 uses
  %i.im = icmp ult i8 %i.ij, 17
  br i1 %i.im, label %.preheader424, label %bb.aq

.preheader424:                                    ; preds = %bb.ap
  %.not496 = icmp eq i32 %.2, 0
  br i1 %.not496, label %.thread400, label %.lr.ph429.preheader

.lr.ph429.preheader:                              ; preds = %.preheader424
  %wide.trip.count527 = zext i32 %.2 to i64
  br label %.lr.ph429

.lr.ph429:                                        ; preds = %.lr.ph429.preheader, %.lr.ph429
  %indvars.iv524 = phi i64 [ 0, %.lr.ph429.preheader ], [ %indvars.iv.next525, %.lr.ph429 ] ; 3 uses
  %i.in = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext %i.ij)
  %i.io = shl i32 %i.in, %i.il
  %i.ip = ashr exact i32 %i.io, %i.il
  %i.iq = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv524
  store i32 %i.ip, ptr %i.ir, align 4, !tbaa !4
  %i.is = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext %i.ij)
  %i.it = shl i32 %i.is, %i.il
  %i.iu = ashr exact i32 %i.it, %i.il
  %i.iv = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv524
  store i32 %i.iu, ptr %i.iw, align 4, !tbaa !4
  %indvars.iv.next525 = add nuw nsw i64 %indvars.iv524, 1 ; 2 uses
  %exitcond528.not = icmp eq i64 %indvars.iv.next525, %wide.trip.count527
  br i1 %exitcond528.not, label %.thread400, label %.lr.ph429, !llvm.loop !54

bb.aq:                                            ; preds = %bb.ap
  %i.ix = add i8 %i.ij, -16                       ; 2 uses
  %.not495 = icmp eq i32 %.2, 0
  br i1 %.not495, label %.thread400, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.aq
  %wide.trip.count = zext i32 %.2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.iy = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16)
  %i.iz = shl i32 %i.iy, 16
  %i.ja = ashr i32 %i.iz, %i.il
  %i.jb = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext %i.ix)
  %i.jc = or i32 %i.ja, %i.jb
  %i.jd = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %indvars.iv
  store i32 %i.jc, ptr %i.je, align 4, !tbaa !4
  %i.jf = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16)
  %i.jg = shl i32 %i.jf, 16
  %i.jh = ashr i32 %i.jg, %i.il
  %i.ji = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext %i.ix)
  %i.jj = or i32 %i.jh, %i.ji
  %i.jk = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %indvars.iv
  store i32 %i.jj, ptr %i.jl, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread400, label %.lr.ph, !llvm.loop !55

.thread400:                                       ; preds = %.lr.ph, %.lr.ph429, %bb.aq, %.preheader424
  %i.jm = mul i32 %.2, %i.ik                      ; 2 uses
  store i32 %i.jm, ptr %i.a, align 4, !tbaa !4
  store i32 %i.jm, ptr %i.b, align 4, !tbaa !4
  br label %.loopexit423

bb.ar:                                            ; preds = %bb.an, %bb.ao
  %.sink632 = phi ptr [ %i.ii, %bb.ao ], [ %i.ih, %bb.an ]
  %i.jn = load ptr, ptr %i.m, align 8, !tbaa !15
  call void @unpc_block(ptr noundef %.sink632, ptr noundef %i.jn, i32 noundef %.2, ptr noundef nonnull %i.d, i32 noundef %i.gz, i32 noundef %i.ga, i32 noundef %i.gv)
  br i1 %.not379, label %.loopexit423, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jo = shl i32 %.2, 1                          ; 2 uses
  %.not499 = icmp eq i32 %i.jo, 0
  br i1 %.not499, label %.loopexit423, label %.lr.ph438.preheader

.lr.ph438.preheader:                              ; preds = %bb.as
  %i.jp = zext i32 %i.jo to i64
  br label %.lr.ph438

.lr.ph438:                                        ; preds = %.lr.ph438.preheader, %.lr.ph438
  %indvars.iv539 = phi i64 [ 0, %.lr.ph438.preheader ], [ %indvars.iv.next540, %.lr.ph438 ] ; 3 uses
  %i.jq = call i32 @BitBufferRead(ptr noundef nonnull %6, i8 noundef zeroext %i.fx)
  %i.jr = trunc i32 %i.jq to i16
  %i.js = load ptr, ptr %i.r, align 8, !tbaa !28
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %i.js, i64 %indvars.iv539
  store i16 %i.jr, ptr %i.jt, align 2, !tbaa !26
  %i.ju = call i32 @BitBufferRead(ptr noundef nonnull %6, i8 noundef zeroext %i.fx)
  %i.jv = trunc i32 %i.ju to i16
  %i.jw = load ptr, ptr %i.r, align 8, !tbaa !28
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr %i.jw, i64 %indvars.iv539
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 2
  store i16 %i.jv, ptr %i.jy, align 2, !tbaa !26
  %indvars.iv.next540 = add nuw nsw i64 %indvars.iv539, 2 ; 2 uses
  %i.jz = icmp samesign ult i64 %indvars.iv.next540, %i.jp
  br i1 %i.jz, label %.lr.ph438, label %.loopexit423, !llvm.loop !56

.loopexit423:                                     ; preds = %.lr.ph438, %bb.as, %.thread400, %bb.ar
  %.shrunk = phi i8 [ 0, %.thread400 ], [ 0, %bb.ar ], [ %i.ft, %bb.as ], [ %i.ft, %.lr.ph438 ]
  %.0351406 = phi i8 [ 0, %.thread400 ], [ %i.gi, %bb.ar ], [ %i.gi, %bb.as ], [ %i.gi, %.lr.ph438 ] ; 4 uses
  %.0352405 = phi i8 [ 0, %.thread400 ], [ %i.gk, %bb.ar ], [ %i.gk, %bb.as ], [ %i.gk, %.lr.ph438 ] ; 4 uses
  %i.ka = zext nneg i8 %.shrunk to i32            ; 2 uses
  %i.kb = load i8, ptr %i.k, align 1, !tbaa !35
  %11 = zext i8 %i.kb to i32
  %12 = add nsw i32 %11, -16                      ; 2 uses
  %13 = call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 30)
  switch i32 %13, label %bb.ax [
    i32 0, label %bb.at
    i32 1, label %bb.au
    i32 2, label %bb.av
    i32 4, label %bb.aw
  ]

bb.at:                                            ; preds = %.loopexit423
  %i.kc = zext i32 %.0347 to i64
  %i.kd = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.kc
  %i.ke = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.kf = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.kg = zext i8 %.0351406 to i32
  %i.kh = sext i8 %.0352405 to i32
  call void @unmix16(ptr noundef %i.ke, ptr noundef %i.kf, ptr noundef nonnull %i.kd, i32 noundef %4, i32 noundef %.2, i32 noundef %i.kg, i32 noundef %i.kh)
  br label %bb.ax

bb.au:                                            ; preds = %.loopexit423
  %i.ki = mul i32 %.0347, 3
  %i.kj = zext i32 %i.ki to i64
  %i.kk = getelementptr inbounds nuw i8, ptr %2, i64 %i.kj
  %i.kl = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.km = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.kn = zext i8 %.0351406 to i32
  %i.ko = sext i8 %.0352405 to i32
  call void @unmix20(ptr noundef %i.kl, ptr noundef %i.km, ptr noundef nonnull %i.kk, i32 noundef %4, i32 noundef %.2, i32 noundef %i.kn, i32 noundef %i.ko)
  br label %bb.ax

bb.av:                                            ; preds = %.loopexit423
  %i.kp = mul i32 %.0347, 3
  %i.kq = zext i32 %i.kp to i64
  %i.kr = getelementptr inbounds nuw i8, ptr %2, i64 %i.kq
  %i.ks = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.kt = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.ku = zext i8 %.0351406 to i32
  %i.kv = sext i8 %.0352405 to i32
  %i.kw = load ptr, ptr %i.r, align 8, !tbaa !28
  call void @unmix24(ptr noundef %i.ks, ptr noundef %i.kt, ptr noundef nonnull %i.kr, i32 noundef %4, i32 noundef %.2, i32 noundef %i.ku, i32 noundef %i.kv, ptr noundef %i.kw, i32 noundef %i.ka)
  br label %bb.ax

bb.aw:                                            ; preds = %.loopexit423
  %i.kx = zext i32 %.0347 to i64
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kx
  %i.kz = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.la = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.lb = zext i8 %.0351406 to i32
  %i.lc = sext i8 %.0352405 to i32
  %i.ld = load ptr, ptr %i.r, align 8, !tbaa !28
  call void @unmix32(ptr noundef %i.kz, ptr noundef %i.la, ptr noundef nonnull %i.ky, i32 noundef %4, i32 noundef %.2, i32 noundef %i.lb, i32 noundef %i.lc, ptr noundef %i.ld, i32 noundef %i.ka)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au, %bb.at, %.loopexit423
  store i32 %.2, ptr %5, align 4, !tbaa !4
  br label %bb.bc

bb.ay:                                            ; preds = %bb.d
  %i.le = call noundef i32 @_ZN11ALACDecoder17DataStreamElementEP9BitBuffer(ptr nonnull align 8 poison, ptr noundef nonnull %1)
  br label %bb.bc

bb.az:                                            ; preds = %bb.d
  %i.lf = call zeroext i8 @BitBufferReadSmall(ptr noundef nonnull %1, i8 noundef zeroext 4) ; 2 uses
  %i.lg = zext i8 %i.lf to i32
  %i.lh = icmp eq i8 %i.lf, 15
  br i1 %i.lh, label %bb.ba, label %_ZN11ALACDecoder11FillElementEP9BitBuffer.exit

bb.ba:                                            ; preds = %bb.az
  %i.li = call zeroext i8 @BitBufferReadSmall(ptr noundef nonnull %1, i8 noundef zeroext 8)
  %i.lj = zext i8 %i.li to i32
  %i.lk = add nuw nsw i32 %i.lj, 14
  br label %_ZN11ALACDecoder11FillElementEP9BitBuffer.exit

_ZN11ALACDecoder11FillElementEP9BitBuffer.exit:   ; preds = %bb.az, %bb.ba
  %.0.i = phi i32 [ %i.lk, %bb.ba ], [ %i.lg, %bb.az ]
  %i.ll = shl nuw nsw i32 %.0.i, 3
  %i.lm = and i32 %i.ll, 524280
  call void @BitBufferAdvance(ptr noundef nonnull %1, i32 noundef %i.lm)
  %i.ln = load ptr, ptr %1, align 8, !tbaa !30
  %i.lo = load ptr, ptr %i.i, align 8, !tbaa !33
  %.not.i = icmp ugt ptr %i.ln, %i.lo
  %..i = select i1 %.not.i, i32 -50, i32 0
  br label %bb.bc

bb.bb:                                            ; preds = %bb.d
  call void @BitBufferByteAlign(ptr noundef nonnull %1, i32 noundef 0)
  br label %.loopexit

bb.bc:                                            ; preds = %_ZN11ALACDecoder11FillElementEP9BitBuffer.exit, %bb.ay, %bb.ax, %.loopexit419, %bb.d
  %.1348 = phi i32 [ %.0347, %bb.d ], [ %i.fe, %.loopexit419 ], [ %i.ff, %bb.ax ], [ %.0347, %_ZN11ALACDecoder11FillElementEP9BitBuffer.exit ], [ %.0347, %bb.ay ] ; 3 uses
  %.3338 = phi i32 [ 0, %bb.d ], [ 0, %.loopexit419 ], [ 0, %bb.ax ], [ %..i, %_ZN11ALACDecoder11FillElementEP9BitBuffer.exit ], [ %i.le, %bb.ay ] ; 2 uses
  %.3 = phi i32 [ %.0334, %bb.d ], [ %.1, %.loopexit419 ], [ %.2, %bb.ax ], [ %.0334, %_ZN11ALACDecoder11FillElementEP9BitBuffer.exit ], [ %.0334, %bb.ay ] ; 2 uses
  %i.lp = icmp ult i32 %.1348, %4
  %i.lq = icmp eq i32 %.3338, 0
  %or.cond5 = and i1 %i.lp, %i.lq
  br i1 %or.cond5, label %bb.c, label %.thread407, !llvm.loop !57

.thread407:                                       ; preds = %bb.d, %bb.d, %bb.bc, %bb.ab
  %.2349 = phi i32 [ %.1348, %bb.bc ], [ %.0347, %bb.ab ], [ %.0347, %bb.d ], [ %.0347, %bb.d ] ; 4 uses
  %.4339 = phi i32 [ %.3338, %bb.bc ], [ 0, %bb.ab ], [ -50, %bb.d ], [ -50, %bb.d ] ; 8 uses
  %.4 = phi i32 [ %.3, %bb.bc ], [ %.0334, %bb.ab ], [ %.0334, %bb.d ], [ %.0334, %bb.d ]
  %i.lr = icmp ult i32 %.2349, %4
  br i1 %i.lr, label %.lr.ph455, label %.loopexit

.lr.ph455:                                        ; preds = %.thread407
  %.4.fr = freeze i32 %.4                         ; 3 uses
  %i.ls = icmp eq i32 %4, 1
  %i.lt = mul i32 %.4.fr, %4                      ; 5 uses
  %.not.i394 = icmp eq i32 %i.lt, 0               ; 3 uses
  %i.lu = zext i32 %.4.fr to i64                  ; 2 uses
  %i.lv = shl nuw nsw i64 %i.lu, 2
  %i.lw = mul i32 %.4.fr, 3                       ; 2 uses
  %i.lx = mul i32 %i.lw, %4                       ; 2 uses
  %i.ly = mul i32 %4, 3
  %i.lz = zext i32 %i.lw to i64
  %i.ma = shl nuw nsw i64 %i.lu, 1
  br i1 %i.ls, label %.lr.ph455.split.us.preheader, label %.lr.ph455.split

.lr.ph455.split.us.preheader:                     ; preds = %.lr.ph455
  %i.mb = zext i32 %.2349 to i64                  ; 3 uses
  %i.mc = load i8, ptr %i.k, align 1, !tbaa !35
  switch i8 %i.mc, label %.loopexit [
    i8 16, label %bb.bf
    i8 24, label %bb.be
    i8 32, label %bb.bd
  ]

bb.bd:                                            ; preds = %.lr.ph455.split.us.preheader
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.mb
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.md, i8 0, i64 %i.lv, i1 false)
  br label %.loopexit

bb.be:                                            ; preds = %.lr.ph455.split.us.preheader
  %i.me = mul nuw nsw i64 %i.mb, 3
  %i.mf = and i64 %i.me, 4294967295
  %i.mg = getelementptr inbounds nuw i8, ptr %2, i64 %i.mf
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.mg, i8 0, i64 %i.lz, i1 false)
  br label %.loopexit

bb.bf:                                            ; preds = %.lr.ph455.split.us.preheader
  %i.mh = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.mb
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.mh, i8 0, i64 %i.ma, i1 false)
  br label %.loopexit

.lr.ph455.split:                                  ; preds = %.lr.ph455
  %.not.i391 = icmp eq i32 %i.lx, 0
  br i1 %.not.i391, label %.lr.ph455.split.split.us.split.split, label %.lr.ph455.split.split.preheader

.lr.ph455.split.split.preheader:                  ; preds = %.lr.ph455.split
  %i.mi = zext i32 %.2349 to i64
  %wide.trip.count570 = zext i32 %4 to i64
  br label %.lr.ph455.split.split

.lr.ph455.split.split.us.split.split:             ; preds = %.lr.ph455.split
  br i1 %.not.i394, label %.loopexit, label %.lr.ph455.split.split.us.split.split.split.split.preheader

.lr.ph455.split.split.us.split.split.split.split.preheader: ; preds = %.lr.ph455.split.split.us.split.split
  %i.mj = zext i32 %.2349 to i64
  %wide.trip.count575 = zext i32 %4 to i64
  %.pre = load i8, ptr %i.k, align 1, !tbaa !35
  br label %.lr.ph455.split.split.us.split.split.split.split

.lr.ph455.split.split.us.split.split.split.split: ; preds = %.lr.ph455.split.split.us.split.split.split.split.preheader, %_ZL6Zero16Psjj.exit.us463
  %indvars.iv572 = phi i64 [ %i.mj, %.lr.ph455.split.split.us.split.split.split.split.preheader ], [ %indvars.iv.next573, %_ZL6Zero16Psjj.exit.us463 ] ; 3 uses
  switch i8 %.pre, label %_ZL6Zero16Psjj.exit.us463 [
    i8 16, label %.preheader.i.us460
    i8 32, label %.preheader.i393.us457
  ]

.preheader.i393.us457:                            ; preds = %.lr.ph455.split.split.us.split.split.split.split
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv572
  br label %.lr.ph.i395.us458

.lr.ph.i395.us458:                                ; preds = %.preheader.i393.us457, %.lr.ph.i395.us458
  %.010.i396.us459 = phi i32 [ %i.mn, %.lr.ph.i395.us458 ], [ 0, %.preheader.i393.us457 ] ; 2 uses
  %i.ml = zext i32 %.010.i396.us459 to i64
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %i.ml
  store i32 0, ptr %i.mm, align 4, !tbaa !4
  %i.mn = add i32 %.010.i396.us459, %4            ; 2 uses
  %i.mo = icmp ult i32 %i.mn, %i.lt
  br i1 %i.mo, label %.lr.ph.i395.us458, label %_ZL6Zero16Psjj.exit.us463, !llvm.loop !58

.preheader.i.us460:                               ; preds = %.lr.ph455.split.split.us.split.split.split.split
  %i.mp = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv572
  br label %.lr.ph.i.us461

.lr.ph.i.us461:                                   ; preds = %.preheader.i.us460, %.lr.ph.i.us461
  %.010.i.us462 = phi i32 [ %i.ms, %.lr.ph.i.us461 ], [ 0, %.preheader.i.us460 ] ; 2 uses
  %i.mq = zext i32 %.010.i.us462 to i64
  %i.mr = getelementptr inbounds nuw [2 x i8], ptr %i.mp, i64 %i.mq
  store i16 0, ptr %i.mr, align 2, !tbaa !26
  %i.ms = add i32 %.010.i.us462, %4               ; 2 uses
  %i.mt = icmp ult i32 %i.ms, %i.lt
  br i1 %i.mt, label %.lr.ph.i.us461, label %_ZL6Zero16Psjj.exit.us463, !llvm.loop !59

_ZL6Zero16Psjj.exit.us463:                        ; preds = %.lr.ph.i395.us458, %.lr.ph.i.us461, %.lr.ph455.split.split.us.split.split.split.split
  %indvars.iv.next573 = add nuw nsw i64 %indvars.iv572, 1 ; 2 uses
  %exitcond576.not = icmp eq i64 %indvars.iv.next573, %wide.trip.count575
  br i1 %exitcond576.not, label %.loopexit, label %.lr.ph455.split.split.us.split.split.split.split, !llvm.loop !60

.lr.ph455.split.split:                            ; preds = %.lr.ph455.split.split.preheader, %_ZL6Zero16Psjj.exit
  %indvars.iv567 = phi i64 [ %i.mi, %.lr.ph455.split.split.preheader ], [ %indvars.iv.next568, %_ZL6Zero16Psjj.exit ] ; 4 uses
  %i.mu = load i8, ptr %i.k, align 1, !tbaa !35
  switch i8 %i.mu, label %_ZL6Zero16Psjj.exit [
    i8 16, label %.preheader.i
    i8 24, label %.preheader.i390
    i8 32, label %.preheader.i393
  ]

.preheader.i:                                     ; preds = %.lr.ph455.split.split
  %i.mv = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv567
  br i1 %.not.i394, label %_ZL6Zero16Psjj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.010.i = phi i32 [ %i.my, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.mw = zext i32 %.010.i to i64
  %i.mx = getelementptr inbounds nuw [2 x i8], ptr %i.mv, i64 %i.mw
  store i16 0, ptr %i.mx, align 2, !tbaa !26
  %i.my = add i32 %.010.i, %4                     ; 2 uses
  %i.mz = icmp ult i32 %i.my, %i.lt
  br i1 %i.mz, label %.lr.ph.i, label %_ZL6Zero16Psjj.exit, !llvm.loop !59

.preheader.i390:                                  ; preds = %.lr.ph455.split.split
  %i.na = mul i64 %indvars.iv567, 3
  %i.nb = and i64 %i.na, 4294967295
  %i.nc = getelementptr inbounds nuw i8, ptr %2, i64 %i.nb ; 3 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %.preheader.i390
  %.014.i = phi i32 [ 0, %.preheader.i390 ], [ %i.nl, %bb.bg ] ; 4 uses
  %i.nd = zext i32 %.014.i to i64
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.nd
  store i8 0, ptr %i.ne, align 1, !tbaa !17
  %i.nf = add nuw i32 %.014.i, 1
  %i.ng = zext i32 %i.nf to i64
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.ng
  store i8 0, ptr %i.nh, align 1, !tbaa !17
  %i.ni = add i32 %.014.i, 2
  %i.nj = zext i32 %i.ni to i64
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.nj
  store i8 0, ptr %i.nk, align 1, !tbaa !17
  %i.nl = add i32 %.014.i, %i.ly                  ; 2 uses
  %i.nm = icmp ult i32 %i.nl, %i.lx
  br i1 %i.nm, label %bb.bg, label %_ZL6Zero16Psjj.exit, !llvm.loop !61

.preheader.i393:                                  ; preds = %.lr.ph455.split.split
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv567
  br i1 %.not.i394, label %_ZL6Zero16Psjj.exit, label %.lr.ph.i395

.lr.ph.i395:                                      ; preds = %.preheader.i393, %.lr.ph.i395
  %.010.i396 = phi i32 [ %i.nq, %.lr.ph.i395 ], [ 0, %.preheader.i393 ] ; 2 uses
  %i.no = zext i32 %.010.i396 to i64
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %i.no
  store i32 0, ptr %i.np, align 4, !tbaa !4
  %i.nq = add i32 %.010.i396, %4                  ; 2 uses
  %i.nr = icmp ult i32 %i.nq, %i.lt
  br i1 %i.nr, label %.lr.ph.i395, label %_ZL6Zero16Psjj.exit, !llvm.loop !58

_ZL6Zero16Psjj.exit:                              ; preds = %.lr.ph.i395, %bb.bg, %.lr.ph.i, %.preheader.i393, %.preheader.i, %.lr.ph455.split.split
  %indvars.iv.next568 = add nuw nsw i64 %indvars.iv567, 1 ; 2 uses
  %exitcond571.not = icmp eq i64 %indvars.iv.next568, %wide.trip.count570
  br i1 %exitcond571.not, label %.loopexit, label %.lr.ph455.split.split, !llvm.loop !60

.loopexit:                                        ; preds = %bb.l, %bb.aj, %bb.am, %bb.c, %bb.e, %bb.f, %bb.ac, %bb.ad, %_ZL6Zero16Psjj.exit, %_ZL6Zero16Psjj.exit.us463, %bb.bf, %bb.be, %bb.bd, %.lr.ph455.split.us.preheader, %.lr.ph455.split.split.us.split.split, %.thread407, %bb.bb, %bb.a
  %.0 = phi i32 [ %.4339, %.thread407 ], [ -50, %bb.a ], [ 0, %bb.bb ], [ %.4339, %bb.bf ], [ %.4339, %_ZL6Zero16Psjj.exit ], [ %.4339, %.lr.ph455.split.split.us.split.split ], [ %.4339, %_ZL6Zero16Psjj.exit.us463 ], [ %.4339, %.lr.ph455.split.us.preheader ], [ %.4339, %bb.bd ], [ %.4339, %bb.be ], [ -50, %bb.ad ], [ -50, %bb.f ], [ -50, %bb.ac ], [ %i.ie, %bb.am ], [ %i.hp, %bb.aj ], [ -50, %bb.c ], [ -50, %bb.e ], [ %i.bs, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  ret i32 %.0
}

declare zeroext i8 @BitBufferReadSmall(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

declare i32 @BitBufferRead(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

declare void @BitBufferAdvance(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @set_ag_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @dyn_decomp(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare void @unpc_block(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @copyPredictorTo20(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @copyPredictorTo24Shift(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @copyPredictorTo24(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @copyPredictorTo32Shift(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @copyPredictorTo32(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @unmix16(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @unmix20(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @unmix24(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @unmix32(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -50, 1) i32 @_ZN11ALACDecoder17DataStreamElementEP9BitBuffer(ptr nonnull readnone align 8 captures(none) %0, ptr noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call zeroext i8 @BitBufferReadSmall(ptr noundef %1, i8 noundef zeroext 4) ; 0 uses
  %i.b = tail call zeroext i8 @BitBufferReadOne(ptr noundef %1)
  %i.c = tail call zeroext i8 @BitBufferReadSmall(ptr noundef %1, i8 noundef zeroext 8) ; 2 uses
  %i.d = zext i8 %i.c to i32
  %i.e = icmp eq i8 %i.c, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call zeroext i8 @BitBufferReadSmall(ptr noundef %1, i8 noundef zeroext 8)
  %i.g = zext i8 %i.f to i32
  %i.h = add nuw nsw i32 %i.g, 255
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.h, %bb.b ], [ %i.d, %bb.a ]
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @BitBufferByteAlign(ptr noundef %1, i32 noundef 0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = shl nuw nsw i32 %.0, 3
  %i.j = and i32 %i.i, 524280
  tail call void @BitBufferAdvance(ptr noundef %1, i32 noundef %i.j)
  %i.k = load ptr, ptr %1, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !33
  %.not14 = icmp ugt ptr %i.k, %i.m
  %. = select i1 %.not14, i32 -50, i32 0
  ret i32 %.
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -50, 1) i32 @_ZN11ALACDecoder11FillElementEP9BitBuffer(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call zeroext i8 @BitBufferReadSmall(ptr noundef %1, i8 noundef zeroext 4) ; 2 uses
  %i.b = zext i8 %i.a to i32
  %i.c = icmp eq i8 %i.a, 15
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i8 @BitBufferReadSmall(ptr noundef %1, i8 noundef zeroext 8)
  %i.e = zext i8 %i.d to i32
  %i.f = add nuw nsw i32 %i.e, 14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.b, %bb.a ]
  %i.g = shl nuw nsw i32 %.0, 3
  %i.h = and i32 %i.g, 524280
  tail call void @BitBufferAdvance(ptr noundef %1, i32 noundef %i.h)
  %i.i = load ptr, ptr %1, align 8, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33
  %.not = icmp ugt ptr %i.i, %i.k
  %. = select i1 %.not, i32 -50, i32 0
  ret i32 %.
}

declare void @BitBufferByteAlign(ptr noundef, i32 noundef) local_unnamed_addr #6

declare zeroext i8 @BitBufferReadOne(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !12, i64 32}
!9 = !{!"_ZTS11ALACDecoder", !10, i64 0, !11, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !14, i64 56}
!10 = !{!"_ZTS18ALACSpecificConfig", !5, i64 0, !6, i64 4, !6, i64 5, !6, i64 6, !6, i64 7, !6, i64 8, !6, i64 9, !11, i64 10, !5, i64 12, !5, i64 16, !5, i64 20}
!11 = !{!"short", !6, i64 0}
!12 = !{!"p1 int", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!"p1 short", !13, i64 0}
!15 = !{!9, !12, i64 40}
!16 = !{!9, !12, i64 48}
!17 = !{!6, !6, i64 0}
!18 = !{!10, !5, i64 0}
!19 = !{!10, !6, i64 8}
!20 = !{!10, !6, i64 9}
!21 = !{!10, !11, i64 10}
!22 = !{!10, !6, i64 4}
!23 = !{!10, !5, i64 12}
!24 = !{!10, !5, i64 16}
!25 = !{!10, !5, i64 20}
!26 = !{!11, !11, i64 0}
!27 = !{!9, !5, i64 0}
!28 = !{!9, !14, i64 56}
!29 = !{!9, !11, i64 24}
!30 = !{!31, !32, i64 0}
!31 = !{!"_ZTS9BitBuffer", !32, i64 0, !32, i64 8, !5, i64 16, !5, i64 20}
!32 = !{!"p1 omnipotent char", !13, i64 0}
!33 = !{!31, !32, i64 8}
!34 = !{!9, !6, i64 6}
!35 = !{!9, !6, i64 5}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{i64 0, i64 8, !39, i64 8, i64 8, !39, i64 16, i64 4, !4, i64 20, i64 4, !4}
!39 = !{!32, !32, i64 0}
!40 = !{!9, !6, i64 7}
!41 = !{!9, !6, i64 8}
!42 = !{!9, !11, i64 10}
!43 = distinct !{!43, !37}
!44 = distinct !{!44, !37}
!45 = distinct !{!45, !37}
!46 = distinct !{!46, !37, !47, !48}
!47 = !{!"llvm.loop.isvectorized", i32 1}
!48 = !{!"llvm.loop.unroll.runtime.disable"}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = distinct !{!51, !37, !47}
!52 = distinct !{!52, !37}
!53 = distinct !{!53, !37}
!54 = distinct !{!54, !37}
!55 = distinct !{!55, !37}
!56 = distinct !{!56, !37}
!57 = distinct !{!57, !37}
!58 = distinct !{!58, !37}
!59 = distinct !{!59, !37}
!60 = distinct !{!60, !37}
!61 = distinct !{!61, !37}
end_hunk_1
