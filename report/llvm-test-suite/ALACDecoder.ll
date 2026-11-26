Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/ALACDecoder?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BitBuffer = type { ptr, ptr, i32, i32 }
%struct.AGParamRec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@_ZN11ALACDecoderC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11ALACDecoderC2Ev
@_ZN11ALACDecoderD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11ALACDecoderD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11ALACDecoderC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 24), (32, 64)) %0) unnamed_addr #0 align 2 !guid !24 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @_ZN11ALACDecoderD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(64) dereferenceable(64) %0) unnamed_addr #2 align 2 !guid !25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #8
  store ptr null, ptr %i.a, align 8, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %.not3 = icmp eq ptr %i.d, null
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #8
  store ptr null, ptr %i.c, align 8, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16   ; 2 uses
  %.not4 = icmp eq ptr %i.f, null
  br i1 %.not4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.f) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -108, 1) i32 @_ZN11ALACDecoder4InitEPvj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #4 align 2 !guid !26 {
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
  %i.ac = load i32, ptr %.129, align 4, !tbaa !27
  %i.ad = tail call i32 @Swap32BtoN(i32 noundef %i.ac) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.129, i64 4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.129, i64 8
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !28
  %i.ah = getelementptr inbounds nuw i8, ptr %.129, i64 9
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !29
  %i.aj = getelementptr inbounds nuw i8, ptr %.129, i64 10
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !30
  %i.al = getelementptr inbounds nuw i8, ptr %.129, i64 12
  %i.am = getelementptr inbounds nuw i8, ptr %.129, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %.129, i64 20
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ao = load <4 x i8>, ptr %i.ae, align 4, !tbaa !17
  %i.ap = load i8, ptr %i.ae, align 4, !tbaa !31
  %i.aq = tail call zeroext i16 @Swap16BtoN(i16 noundef zeroext %i.ak)
  %i.ar = load i32, ptr %i.al, align 4, !tbaa !32
  %i.as = tail call i32 @Swap32BtoN(i32 noundef %i.ar)
  %i.at = load i32, ptr %i.am, align 4, !tbaa !33
  %i.au = tail call i32 @Swap32BtoN(i32 noundef %i.at)
  %i.av = load i32, ptr %i.an, align 4, !tbaa !34
  %i.aw = tail call i32 @Swap32BtoN(i32 noundef %i.av)
  store i32 %i.ad, ptr %0, align 8, !tbaa !7
  store <4 x i8> %i.ao, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !17
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.ag, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !17
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.ai, ptr %.sroa.9.0..sroa_idx, align 1, !tbaa !17
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %i.aq, ptr %.sroa.10.0..sroa_idx, align 2, !tbaa !18
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.as, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !7
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.au, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !7
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.aw, ptr %.sroa.13.0..sroa_idx, align 4, !tbaa !7
  %i.ax = icmp eq i8 %i.ap, 0
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ay = zext i32 %i.ad to i64
  %i.az = shl nuw nsw i64 %i.ay, 2
  %i.ba = tail call noalias ptr @calloc(i64 noundef %i.az, i64 noundef 1) #9 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !14
  %i.bc = load i32, ptr %0, align 8, !tbaa !35
  %i.bd = zext i32 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.bd, 2
  %i.bf = tail call noalias ptr @calloc(i64 noundef %i.be, i64 noundef 1) #9 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !15
  %i.bh = load i32, ptr %0, align 8, !tbaa !35
  %i.bi = zext i32 %i.bh to i64
  %i.bj = shl nuw nsw i64 %i.bi, 2
  %i.bk = tail call noalias ptr @calloc(i64 noundef %i.bj, i64 noundef 1) #9 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !16
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !19
  %.not = icmp eq ptr %i.ba, null
  %.not32 = icmp eq ptr %i.bf, null
  %or.cond = or i1 %.not, %.not32
  %.not33 = icmp eq ptr %i.bk, null
  %or.cond34 = or i1 %or.cond, %.not33
  %spec.select = select i1 %or.cond34, i32 -108, i32 0
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread, %bb.k
  %.031 = phi i32 [ -50, %bb.k ], [ %spec.select, %bb.l ], [ -50, %.thread ]
  ret i32 %.031
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
define dso_local noundef i32 @_ZN11ALACDecoder6DecodeEP9BitBufferPhjjPj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #4 align 2 !guid !53 {
bb.a:
  %6 = alloca %struct.BitBuffer, align 8          ; 7 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %7 = alloca %struct.AGParamRec, align 4         ; 8 uses
  %i.c = alloca [32 x i16], align 16              ; 6 uses
  %i.d = alloca [32 x i16], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
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
  store i16 0, ptr %i.h, align 8, !tbaa !54
  store i32 %3, ptr %5, align 4, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 9 uses
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
  %.0351 = phi i32 [ 0, %bb.b ], [ %.1352, %bb.bc ] ; 16 uses
  %.0334 = phi i32 [ %3, %bb.b ], [ %.3, %bb.bc ] ; 8 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !22
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.u = icmp ult ptr %i.s, %i.t
  br i1 %i.u, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.v = load i8, ptr %i.j, align 2, !tbaa !55    ; 2 uses
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
  %i.aa = load i16, ptr %i.h, align 8, !tbaa !54
  %i.ab = trunc i32 %i.z to i16
  %i.ac = or i16 %i.aa, %i.ab
  store i16 %i.ac, ptr %i.h, align 8, !tbaa !54
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
  %i.al = load i8, ptr %i.k, align 1, !tbaa !56
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
  store i16 %i.bf, ptr %i.bg, align 2, !tbaa !18
  %indvars.iv.next553 = add nuw nsw i64 %indvars.iv552, 1 ; 2 uses
  %exitcond556.not = icmp eq i64 %indvars.iv.next553, %wide.trip.count555
  br i1 %exitcond556.not, label %._crit_edge446, label %.lr.ph445, !llvm.loop !36

._crit_edge446:                                   ; preds = %.lr.ph445, %bb.j
  %.not385 = icmp eq i8 %i.aj, 0                  ; 2 uses
  br i1 %.not385, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !59
  %i.bh = mul i32 %.1, %i.ao
  call void @BitBufferAdvance(ptr noundef nonnull %1, i32 noundef %i.bh)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge446
  %i.bi = load i8, ptr %i.n, align 1, !tbaa !60
  %i.bj = zext i8 %i.bi to i32
  %i.bk = zext i8 %i.v to i32
  %i.bl = mul nuw nsw i32 %i.bc, %i.bk
  %i.bm = lshr i32 %i.bl, 2
  %i.bn = load i8, ptr %i.o, align 8, !tbaa !61
  %i.bo = zext i8 %i.bn to i32
  %i.bp = load i16, ptr %i.p, align 2, !tbaa !62
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
  %i.cf = load ptr, ptr %i.l, align 8, !tbaa !14
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv547
  store i32 %i.ce, ptr %i.cg, align 4, !tbaa !7
  %indvars.iv.next548 = add nuw nsw i64 %indvars.iv547, 1 ; 2 uses
  %exitcond551.not = icmp eq i64 %indvars.iv.next548, %wide.trip.count550
  br i1 %exitcond551.not, label %.thread, label %bb.p, !llvm.loop !37

bb.q:                                             ; preds = %.lr.ph440, %bb.q
  %indvars.iv542 = phi i64 [ 0, %.lr.ph440 ], [ %indvars.iv.next543, %bb.q ] ; 2 uses
  %i.ch = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16)
  %i.ci = shl i32 %i.ch, 16
  %i.cj = ashr i32 %i.ci, %i.bx
  %i.ck = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext %i.ca)
  %i.cl = or i32 %i.cj, %i.ck
  %i.cm = load ptr, ptr %i.l, align 8, !tbaa !14
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv542
  store i32 %i.cl, ptr %i.cn, align 4, !tbaa !7
  %indvars.iv.next543 = add nuw nsw i64 %indvars.iv542, 1 ; 2 uses
  %exitcond546.not = icmp eq i64 %indvars.iv.next543, %wide.trip.count545
  br i1 %exitcond546.not, label %.thread, label %bb.q, !llvm.loop !38

.thread:                                          ; preds = %bb.q, %bb.p, %.preheader421, %.preheader
  %i.co = mul i32 %.1, %i.ap
  store i32 %i.co, ptr %i.a, align 4, !tbaa !7
  br label %.loopexit420

bb.r:                                             ; preds = %bb.m, %bb.n
  %.sink = phi ptr [ %i.bw, %bb.n ], [ %i.bv, %bb.m ]
  %i.cp = load ptr, ptr %i.l, align 8, !tbaa !14
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
  %i.cs = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %indvars.iv557
  store i16 %i.cr, ptr %i.ct, align 2, !tbaa !18
  %indvars.iv.next558 = add nuw nsw i64 %indvars.iv557, 1 ; 2 uses
  %exitcond561.not = icmp eq i64 %indvars.iv.next558, %wide.trip.count560
  br i1 %exitcond561.not, label %.loopexit420, label %.lr.ph449, !llvm.loop !39

.loopexit420:                                     ; preds = %.lr.ph449, %bb.s, %.thread, %bb.r
  %.not387399 = phi i1 [ true, %.thread ], [ true, %bb.r ], [ false, %bb.s ], [ false, %.lr.ph449 ] ; 2 uses
  %.shrunk504 = phi i8 [ 0, %.thread ], [ 0, %bb.r ], [ %i.aj, %bb.s ], [ %i.aj, %.lr.ph449 ]
  %i.cu = zext nneg i8 %.shrunk504 to i32         ; 2 uses
  %i.cv = load i8, ptr %i.k, align 1, !tbaa !56
  switch i8 %i.cv, label %.loopexit419 [
    i8 16, label %bb.t
    i8 20, label %bb.u
    i8 24, label %bb.v
    i8 32, label %bb.y
  ]

bb.t:                                             ; preds = %.loopexit420
  %i.cw = zext i32 %.0351 to i64
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.cw ; 6 uses
  %.not505 = icmp eq i32 %.1, 0
  br i1 %.not505, label %.loopexit419, label %.lr.ph453

.lr.ph453:                                        ; preds = %bb.t
  %i.cy = load ptr, ptr %i.l, align 8, !tbaa !14  ; 6 uses
  %wide.trip.count565 = zext i32 %.1 to i64       ; 5 uses
  %min.iters.check = icmp ugt i32 %.1, 7
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %.lr.ph453
  %n.vec = and i64 %wide.trip.count565, 4294967288 ; 4 uses
  %8 = trunc nuw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %9 = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %index ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %wide.load = load <4 x i32>, ptr %9, align 4, !tbaa !7
  %wide.load642 = load <4 x i32>, ptr %10, align 4, !tbaa !7
  %11 = trunc <4 x i32> %wide.load to <4 x i16>
  %12 = trunc <4 x i32> %wide.load642 to <4 x i16>
  %13 = and i64 %index, 4294967288
  %14 = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %13 ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store <4 x i16> %11, ptr %14, align 2, !tbaa !18
  store <4 x i16> %12, ptr %15, align 2, !tbaa !18
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %16 = icmp eq i64 %index.next, %n.vec
  br i1 %16, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count565
  br i1 %cmp.n, label %.loopexit419, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph453, %middle.block
  %indvars.iv562.ph = phi i64 [ 0, %.lr.ph453 ], [ %n.vec, %middle.block ] ; 3 uses
  %.0340451.ph = phi i32 [ 0, %.lr.ph453 ], [ %8, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count565, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv562.prol = phi i64 [ %indvars.iv.next563.prol, %scalar.ph.prol ], [ %indvars.iv562.ph, %scalar.ph.preheader ] ; 2 uses
  %.0340451.prol = phi i32 [ %22, %scalar.ph.prol ], [ %.0340451.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %17 = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv562.prol
  %18 = load i32, ptr %17, align 4, !tbaa !7
  %19 = trunc i32 %18 to i16
  %20 = zext i32 %.0340451.prol to i64
  %21 = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %20
  store i16 %19, ptr %21, align 2, !tbaa !18
  %indvars.iv.next563.prol = add nuw nsw i64 %indvars.iv562.prol, 1 ; 2 uses
  %22 = add i32 %.0340451.prol, %4                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !41

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv562.unr = phi i64 [ %indvars.iv562.ph, %scalar.ph.preheader ], [ %indvars.iv.next563.prol, %scalar.ph.prol ]
  %.0340451.unr = phi i32 [ %.0340451.ph, %scalar.ph.preheader ], [ %22, %scalar.ph.prol ]
  %23 = sub nsw i64 %indvars.iv562.ph, %wide.trip.count565
  %24 = icmp ugt i64 %23, -4
  br i1 %24, label %.loopexit419, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv562 = phi i64 [ %indvars.iv.next563.3, %scalar.ph ], [ %indvars.iv562.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.0340451 = phi i32 [ %i.dz, %scalar.ph ], [ %.0340451.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv562
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !7
  %i.db = trunc i32 %i.da to i16
  %i.dc = zext i32 %.0340451 to i64
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %i.dc
  store i16 %i.db, ptr %i.dd, align 2, !tbaa !18
  %i.de = add i32 %.0340451, %4                   ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv562
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !7
  %i.di = trunc i32 %i.dh to i16
  %i.dj = zext i32 %i.de to i64
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %i.dj
  store i16 %i.di, ptr %i.dk, align 2, !tbaa !18
  %i.dl = add i32 %i.de, %4                       ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv562
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !7
  %i.dp = trunc i32 %i.do to i16
  %i.dq = zext i32 %i.dl to i64
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %i.dq
  store i16 %i.dp, ptr %i.dr, align 2, !tbaa !18
  %i.ds = add i32 %i.dl, %4                       ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv562
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !7
  %i.dw = trunc i32 %i.dv to i16
  %i.dx = zext i32 %i.ds to i64
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %i.dx
  store i16 %i.dw, ptr %i.dy, align 2, !tbaa !18
  %indvars.iv.next563.3 = add nuw nsw i64 %indvars.iv562, 4 ; 2 uses
  %i.dz = add i32 %i.ds, %4
  %exitcond566.not.3 = icmp eq i64 %indvars.iv.next563.3, %wide.trip.count565
  br i1 %exitcond566.not.3, label %.loopexit419, label %scalar.ph, !llvm.loop !42

bb.u:                                             ; preds = %.loopexit420
  %i.ea = mul i32 %.0351, 3
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 %i.eb
  %i.ed = load ptr, ptr %i.l, align 8, !tbaa !14
  call void @copyPredictorTo20(ptr noundef %i.ed, ptr noundef nonnull %i.ec, i32 noundef %4, i32 noundef %.1)
  br label %.loopexit419

bb.v:                                             ; preds = %.loopexit420
  %i.ee = mul i32 %.0351, 3
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 %i.ef ; 2 uses
  %i.eh = load ptr, ptr %i.l, align 8, !tbaa !14  ; 2 uses
  br i1 %.not387399, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ei = load ptr, ptr %i.r, align 8, !tbaa !19
  call void @copyPredictorTo24Shift(ptr noundef %i.eh, ptr noundef %i.ei, ptr noundef nonnull %i.eg, i32 noundef %4, i32 noundef %.1, i32 noundef %i.cu)
  br label %.loopexit419

bb.x:                                             ; preds = %bb.v
  call void @copyPredictorTo24(ptr noundef %i.eh, ptr noundef nonnull %i.eg, i32 noundef %4, i32 noundef %.1)
  br label %.loopexit419

bb.y:                                             ; preds = %.loopexit420
  %i.ej = zext i32 %.0351 to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ej ; 2 uses
  %i.el = load ptr, ptr %i.l, align 8, !tbaa !14  ; 2 uses
  br i1 %.not387399, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.em = load ptr, ptr %i.r, align 8, !tbaa !19
  call void @copyPredictorTo32Shift(ptr noundef %i.el, ptr noundef %i.em, ptr noundef nonnull %i.ek, i32 noundef %4, i32 noundef %.1, i32 noundef %i.cu)
  br label %.loopexit419

bb.aa:                                            ; preds = %bb.y
  call void @copyPredictorTo32(ptr noundef %i.el, ptr noundef nonnull %i.ek, i32 noundef %4, i32 noundef %.1)
  br label %.loopexit419

.loopexit419:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.t, %bb.z, %bb.aa, %bb.w, %bb.x, %bb.u, %.loopexit420
  %i.en = add nuw i32 %.0351, 1
  store i32 %.1, ptr %5, align 4, !tbaa !7
  br label %bb.bc

bb.ab:                                            ; preds = %bb.d
  %i.eo = add i32 %.0351, 2                       ; 2 uses
  %i.ep = icmp ugt i32 %i.eo, %4
  br i1 %i.ep, label %.thread407, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eq = call zeroext i8 @BitBufferReadSmall(ptr noundef nonnull %1, i8 noundef zeroext 4)
  %i.er = zext nneg i8 %i.eq to i32
  %i.es = shl nuw i32 1, %i.er
  %i.et = load i16, ptr %i.h, align 8, !tbaa !54
  %i.eu = trunc i32 %i.es to i16
  %i.ev = or i16 %i.et, %i.eu
  store i16 %i.ev, ptr %i.h, align 8, !tbaa !54
  %i.ew = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 12)
  %i.ex = and i32 %i.ew, 65535
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %bb.ac
  %i.ez = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 4) ; 3 uses
  %i.fa = trunc i32 %i.ez to i8
  %i.fb = lshr i8 %i.fa, 1
  %i.fc = and i8 %i.fb, 3                         ; 5 uses
  %.not377 = icmp eq i8 %i.fc, 3
  br i1 %.not377, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fd = and i32 %i.ez, 1
  %i.fe = load i8, ptr %i.k, align 1, !tbaa !56
  %i.ff = zext i8 %i.fe to i32
  %i.fg = shl nuw nsw i8 %i.fc, 3                 ; 3 uses
  %i.fh = zext nneg i8 %i.fg to i32               ; 2 uses
  %i.fi = sub nsw i32 %i.ff, %i.fh
  %i.fj = add nsw i32 %i.fi, 1                    ; 6 uses
  %i.fk = and i32 %i.ez, 248
  %.not378 = icmp eq i32 %i.fk, 0
  br i1 %.not378, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fl = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16)
  %i.fm = shl i32 %i.fl, 16
  %i.fn = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16)
  %i.fo = or i32 %i.fm, %i.fn
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.2 = phi i32 [ %i.fo, %bb.af ], [ %.0334, %bb.ae ] ; 23 uses
  %i.fp = icmp eq i32 %i.fd, 0
  br i1 %i.fp, label %bb.ah, label %bb.ap

bb.ah:                                            ; preds = %bb.ag
  %i.fq = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 8)
  %i.fr = trunc i32 %i.fq to i8                   ; 3 uses
  %i.fs = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 8)
  %i.ft = trunc i32 %i.fs to i8                   ; 3 uses
  %i.fu = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 8) ; 2 uses
  %i.fv = and i32 %i.fu, 15
  %i.fw = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 8) ; 2 uses
  %i.fx = lshr i32 %i.fw, 5
  %i.fy = and i32 %i.fx, 7
  %i.fz = and i32 %i.fw, 31                       ; 3 uses
  %.not497 = icmp eq i32 %i.fz, 0
  br i1 %.not497, label %._crit_edge, label %.lr.ph431.preheader

.lr.ph431.preheader:                              ; preds = %bb.ah
  %wide.trip.count532 = zext nneg i32 %i.fz to i64
  br label %.lr.ph431

.lr.ph431:                                        ; preds = %.lr.ph431.preheader, %.lr.ph431
  %indvars.iv529 = phi i64 [ 0, %.lr.ph431.preheader ], [ %indvars.iv.next530, %.lr.ph431 ] ; 2 uses
  %i.ga = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16)
  %i.gb = trunc i32 %i.ga to i16
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv529
  store i16 %i.gb, ptr %i.gc, align 2, !tbaa !18
  %indvars.iv.next530 = add nuw nsw i64 %indvars.iv529, 1 ; 2 uses
  %exitcond533.not = icmp eq i64 %indvars.iv.next530, %wide.trip.count532
  br i1 %exitcond533.not, label %._crit_edge, label %.lr.ph431, !llvm.loop !43

._crit_edge:                                      ; preds = %.lr.ph431, %bb.ah
  %i.gd = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 8) ; 2 uses
  %i.ge = and i32 %i.gd, 15
  %i.gf = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 8) ; 2 uses
  %i.gg = lshr i32 %i.gf, 5
  %i.gh = and i32 %i.gg, 7
  %i.gi = and i32 %i.gf, 31                       ; 3 uses
  %.not498 = icmp eq i32 %i.gi, 0
  br i1 %.not498, label %._crit_edge435, label %.lr.ph434.preheader

.lr.ph434.preheader:                              ; preds = %._crit_edge
  %wide.trip.count537 = zext nneg i32 %i.gi to i64
  br label %.lr.ph434

.lr.ph434:                                        ; preds = %.lr.ph434.preheader, %.lr.ph434
  %indvars.iv534 = phi i64 [ 0, %.lr.ph434.preheader ], [ %indvars.iv.next535, %.lr.ph434 ] ; 2 uses
  %i.gj = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16)
  %i.gk = trunc i32 %i.gj to i16
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv534
  store i16 %i.gk, ptr %i.gl, align 2, !tbaa !18
  %indvars.iv.next535 = add nuw nsw i64 %indvars.iv534, 1 ; 2 uses
  %exitcond538.not = icmp eq i64 %indvars.iv.next535, %wide.trip.count537
  br i1 %exitcond538.not, label %._crit_edge435, label %.lr.ph434, !llvm.loop !44

._crit_edge435:                                   ; preds = %.lr.ph434, %._crit_edge
  %.not379 = icmp eq i8 %i.fc, 0                  ; 2 uses
  br i1 %.not379, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge435
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !59
  %i.gm = shl nuw nsw i32 %i.fh, 1
  %i.gn = mul i32 %i.gm, %.2
  call void @BitBufferAdvance(ptr noundef nonnull %1, i32 noundef %i.gn)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge435
  %i.go = load i8, ptr %i.n, align 1, !tbaa !60
  %i.gp = zext i8 %i.go to i32
  %i.gq = zext i8 %i.v to i32                     ; 2 uses
  %i.gr = mul nuw nsw i32 %i.fy, %i.gq
  %i.gs = lshr i32 %i.gr, 2
  %i.gt = load i8, ptr %i.o, align 8, !tbaa !61
  %i.gu = zext i8 %i.gt to i32
  %i.gv = load i16, ptr %i.p, align 2, !tbaa !62
  %i.gw = zext i16 %i.gv to i32
  call void @set_ag_params(ptr noundef nonnull %7, i32 noundef %i.gp, i32 noundef %i.gs, i32 noundef %i.gu, i32 noundef %.2, i32 noundef %.2, i32 noundef %i.gw)
  %i.gx = load ptr, ptr %i.q, align 8, !tbaa !16
  %i.gy = call i32 @dyn_decomp(ptr noundef nonnull %7, ptr noundef nonnull %1, ptr noundef %i.gx, i32 noundef %.2, i32 noundef %i.fj, ptr noundef nonnull %i.a) ; 2 uses
  %.not380 = icmp eq i32 %i.gy, 0
  br i1 %.not380, label %bb.ak, label %.loopexit

bb.ak:                                            ; preds = %bb.aj
  %i.gz = and i32 %i.fu, 240
  %i.ha = icmp eq i32 %i.gz, 0
  %i.hb = load ptr, ptr %i.q, align 8, !tbaa !16  ; 3 uses
  br i1 %i.ha, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @unpc_block(ptr noundef %i.hb, ptr noundef %i.hb, i32 noundef %.2, ptr noundef null, i32 noundef 31, i32 noundef %i.fj, i32 noundef 0)
  %i.hc = load ptr, ptr %i.q, align 8, !tbaa !16
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %.sink631 = phi ptr [ %i.hc, %bb.al ], [ %i.hb, %bb.ak ]
  %i.hd = load ptr, ptr %i.l, align 8, !tbaa !14
  call void @unpc_block(ptr noundef %.sink631, ptr noundef %i.hd, i32 noundef %.2, ptr noundef nonnull %i.c, i32 noundef %i.fz, i32 noundef %i.fj, i32 noundef %i.fv)
  %i.he = load i8, ptr %i.n, align 1, !tbaa !60
  %i.hf = zext i8 %i.he to i32
  %i.hg = mul nuw nsw i32 %i.gh, %i.gq
  %i.hh = lshr i32 %i.hg, 2
  %i.hi = load i8, ptr %i.o, align 8, !tbaa !61
  %i.hj = zext i8 %i.hi to i32
  %i.hk = load i16, ptr %i.p, align 2, !tbaa !62
  %i.hl = zext i16 %i.hk to i32
  call void @set_ag_params(ptr noundef nonnull %7, i32 noundef %i.hf, i32 noundef %i.hh, i32 noundef %i.hj, i32 noundef %.2, i32 noundef %.2, i32 noundef %i.hl)
  %i.hm = load ptr, ptr %i.q, align 8, !tbaa !16
  %i.hn = call i32 @dyn_decomp(ptr noundef nonnull %7, ptr noundef nonnull %1, ptr noundef %i.hm, i32 noundef %.2, i32 noundef %i.fj, ptr noundef nonnull %i.b) ; 2 uses
  %.not381 = icmp eq i32 %i.hn, 0
  br i1 %.not381, label %bb.an, label %.loopexit

bb.an:                                            ; preds = %bb.am
  %i.ho = and i32 %i.gd, 240
  %i.hp = icmp eq i32 %i.ho, 0
  %i.hq = load ptr, ptr %i.q, align 8, !tbaa !16  ; 3 uses
  br i1 %i.hp, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @unpc_block(ptr noundef %i.hq, ptr noundef %i.hq, i32 noundef %.2, ptr noundef null, i32 noundef 31, i32 noundef %i.fj, i32 noundef 0)
  %i.hr = load ptr, ptr %i.q, align 8, !tbaa !16
  br label %bb.ar

bb.ap:                                            ; preds = %bb.ag
  %i.hs = load i8, ptr %i.k, align 1, !tbaa !56   ; 5 uses
  %i.ht = zext i8 %i.hs to i32                    ; 2 uses
  %i.hu = sub nsw i32 32, %i.ht                   ; 6 uses
  %i.hv = icmp ult i8 %i.hs, 17
  br i1 %i.hv, label %.preheader424, label %bb.aq

.preheader424:                                    ; preds = %bb.ap
  %.not496 = icmp eq i32 %.2, 0
  br i1 %.not496, label %.thread400, label %.lr.ph429.preheader

.lr.ph429.preheader:                              ; preds = %.preheader424
  %wide.trip.count527 = zext i32 %.2 to i64
  br label %.lr.ph429

.lr.ph429:                                        ; preds = %.lr.ph429.preheader, %.lr.ph429
  %indvars.iv524 = phi i64 [ 0, %.lr.ph429.preheader ], [ %indvars.iv.next525, %.lr.ph429 ] ; 3 uses
  %i.hw = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext %i.hs)
  %i.hx = shl i32 %i.hw, %i.hu
  %i.hy = ashr exact i32 %i.hx, %i.hu
  %i.hz = load ptr, ptr %i.l, align 8, !tbaa !14
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %indvars.iv524
  store i32 %i.hy, ptr %i.ia, align 4, !tbaa !7
  %i.ib = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext %i.hs)
  %i.ic = shl i32 %i.ib, %i.hu
  %i.id = ashr exact i32 %i.ic, %i.hu
  %i.ie = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %indvars.iv524
  store i32 %i.id, ptr %i.if, align 4, !tbaa !7
  %indvars.iv.next525 = add nuw nsw i64 %indvars.iv524, 1 ; 2 uses
  %exitcond528.not = icmp eq i64 %indvars.iv.next525, %wide.trip.count527
  br i1 %exitcond528.not, label %.thread400, label %.lr.ph429, !llvm.loop !45

bb.aq:                                            ; preds = %bb.ap
  %i.ig = add i8 %i.hs, -16                       ; 2 uses
  %.not495 = icmp eq i32 %.2, 0
  br i1 %.not495, label %.thread400, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.aq
  %wide.trip.count = zext i32 %.2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.ih = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16)
  %i.ii = shl i32 %i.ih, 16
  %i.ij = ashr i32 %i.ii, %i.hu
  %i.ik = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext %i.ig)
  %i.il = or i32 %i.ij, %i.ik
  %i.im = load ptr, ptr %i.l, align 8, !tbaa !14
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %indvars.iv
  store i32 %i.il, ptr %i.in, align 4, !tbaa !7
  %i.io = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16)
  %i.ip = shl i32 %i.io, 16
  %i.iq = ashr i32 %i.ip, %i.hu
  %i.ir = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext %i.ig)
  %i.is = or i32 %i.iq, %i.ir
  %i.it = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %indvars.iv
  store i32 %i.is, ptr %i.iu, align 4, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread400, label %.lr.ph, !llvm.loop !46

.thread400:                                       ; preds = %.lr.ph, %.lr.ph429, %bb.aq, %.preheader424
  %i.iv = mul i32 %.2, %i.ht                      ; 2 uses
  store i32 %i.iv, ptr %i.a, align 4, !tbaa !7
  store i32 %i.iv, ptr %i.b, align 4, !tbaa !7
  br label %.loopexit423

bb.ar:                                            ; preds = %bb.an, %bb.ao
  %.sink633 = phi ptr [ %i.hr, %bb.ao ], [ %i.hq, %bb.an ]
  %i.iw = load ptr, ptr %i.m, align 8, !tbaa !15
  call void @unpc_block(ptr noundef %.sink633, ptr noundef %i.iw, i32 noundef %.2, ptr noundef nonnull %i.d, i32 noundef %i.gi, i32 noundef %i.fj, i32 noundef %i.ge)
  br i1 %.not379, label %.loopexit423, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ix = shl i32 %.2, 1                          ; 2 uses
  %.not499 = icmp eq i32 %i.ix, 0
  br i1 %.not499, label %.loopexit423, label %.lr.ph438.preheader

.lr.ph438.preheader:                              ; preds = %bb.as
  %i.iy = zext i32 %i.ix to i64
  br label %.lr.ph438

.lr.ph438:                                        ; preds = %.lr.ph438.preheader, %.lr.ph438
  %indvars.iv539 = phi i64 [ 0, %.lr.ph438.preheader ], [ %indvars.iv.next540, %.lr.ph438 ] ; 3 uses
  %i.iz = call i32 @BitBufferRead(ptr noundef nonnull %6, i8 noundef zeroext %i.fg)
  %i.ja = trunc i32 %i.iz to i16
  %i.jb = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %i.jb, i64 %indvars.iv539
  store i16 %i.ja, ptr %i.jc, align 2, !tbaa !18
  %i.jd = call i32 @BitBufferRead(ptr noundef nonnull %6, i8 noundef zeroext %i.fg)
  %i.je = trunc i32 %i.jd to i16
  %i.jf = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.jg = getelementptr inbounds nuw [2 x i8], ptr %i.jf, i64 %indvars.iv539
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 2
  store i16 %i.je, ptr %i.jh, align 2, !tbaa !18
  %indvars.iv.next540 = add nuw nsw i64 %indvars.iv539, 2 ; 2 uses
  %i.ji = icmp samesign ult i64 %indvars.iv.next540, %i.iy
  br i1 %i.ji, label %.lr.ph438, label %.loopexit423, !llvm.loop !47

.loopexit423:                                     ; preds = %.lr.ph438, %bb.as, %.thread400, %bb.ar
  %.shrunk = phi i8 [ 0, %.thread400 ], [ 0, %bb.ar ], [ %i.fc, %bb.as ], [ %i.fc, %.lr.ph438 ]
  %.0349406 = phi i8 [ 0, %.thread400 ], [ %i.ft, %bb.ar ], [ %i.ft, %bb.as ], [ %i.ft, %.lr.ph438 ] ; 4 uses
  %.0350405 = phi i8 [ 0, %.thread400 ], [ %i.fr, %bb.ar ], [ %i.fr, %bb.as ], [ %i.fr, %.lr.ph438 ] ; 4 uses
  %i.jj = zext nneg i8 %.shrunk to i32            ; 2 uses
  %i.jk = load i8, ptr %i.k, align 1, !tbaa !56
  switch i8 %i.jk, label %bb.ax [
    i8 16, label %bb.at
    i8 20, label %bb.au
    i8 24, label %bb.av
    i8 32, label %bb.aw
  ]

bb.at:                                            ; preds = %.loopexit423
  %i.jl = zext i32 %.0351 to i64
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.jl
  %i.jn = load ptr, ptr %i.l, align 8, !tbaa !14
  %i.jo = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.jp = zext i8 %.0350405 to i32
  %i.jq = sext i8 %.0349406 to i32
  call void @unmix16(ptr noundef %i.jn, ptr noundef %i.jo, ptr noundef nonnull %i.jm, i32 noundef %4, i32 noundef %.2, i32 noundef %i.jp, i32 noundef %i.jq)
  br label %bb.ax

bb.au:                                            ; preds = %.loopexit423
  %i.jr = mul i32 %.0351, 3
  %i.js = zext i32 %i.jr to i64
  %i.jt = getelementptr inbounds nuw i8, ptr %2, i64 %i.js
  %i.ju = load ptr, ptr %i.l, align 8, !tbaa !14
  %i.jv = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.jw = zext i8 %.0350405 to i32
  %i.jx = sext i8 %.0349406 to i32
  call void @unmix20(ptr noundef %i.ju, ptr noundef %i.jv, ptr noundef nonnull %i.jt, i32 noundef %4, i32 noundef %.2, i32 noundef %i.jw, i32 noundef %i.jx)
  br label %bb.ax

bb.av:                                            ; preds = %.loopexit423
  %i.jy = mul i32 %.0351, 3
  %i.jz = zext i32 %i.jy to i64
  %i.ka = getelementptr inbounds nuw i8, ptr %2, i64 %i.jz
  %i.kb = load ptr, ptr %i.l, align 8, !tbaa !14
  %i.kc = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.kd = zext i8 %.0350405 to i32
  %i.ke = sext i8 %.0349406 to i32
  %i.kf = load ptr, ptr %i.r, align 8, !tbaa !19
  call void @unmix24(ptr noundef %i.kb, ptr noundef %i.kc, ptr noundef nonnull %i.ka, i32 noundef %4, i32 noundef %.2, i32 noundef %i.kd, i32 noundef %i.ke, ptr noundef %i.kf, i32 noundef %i.jj)
  br label %bb.ax

bb.aw:                                            ; preds = %.loopexit423
  %i.kg = zext i32 %.0351 to i64
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kg
  %i.ki = load ptr, ptr %i.l, align 8, !tbaa !14
  %i.kj = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.kk = zext i8 %.0350405 to i32
  %i.kl = sext i8 %.0349406 to i32
  %i.km = load ptr, ptr %i.r, align 8, !tbaa !19
  call void @unmix32(ptr noundef %i.ki, ptr noundef %i.kj, ptr noundef nonnull %i.kh, i32 noundef %4, i32 noundef %.2, i32 noundef %i.kk, i32 noundef %i.kl, ptr noundef %i.km, i32 noundef %i.jj)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au, %bb.at, %.loopexit423
  store i32 %.2, ptr %5, align 4, !tbaa !7
  br label %bb.bc

bb.ay:                                            ; preds = %bb.d
  %i.kn = call noundef i32 @_ZN11ALACDecoder17DataStreamElementEP9BitBuffer(ptr nonnull align 8 poison, ptr noundef nonnull %1)
  br label %bb.bc

bb.az:                                            ; preds = %bb.d
  %i.ko = call zeroext i8 @BitBufferReadSmall(ptr noundef nonnull %1, i8 noundef zeroext 4) ; 2 uses
  %i.kp = zext i8 %i.ko to i32
  %i.kq = icmp eq i8 %i.ko, 15
  br i1 %i.kq, label %bb.ba, label %_ZN11ALACDecoder11FillElementEP9BitBuffer.exit

bb.ba:                                            ; preds = %bb.az
  %i.kr = call zeroext i8 @BitBufferReadSmall(ptr noundef nonnull %1, i8 noundef zeroext 8)
  %i.ks = zext i8 %i.kr to i32
  %i.kt = add nuw nsw i32 %i.ks, 14
  br label %_ZN11ALACDecoder11FillElementEP9BitBuffer.exit

_ZN11ALACDecoder11FillElementEP9BitBuffer.exit:   ; preds = %bb.az, %bb.ba
  %.0.i = phi i32 [ %i.kt, %bb.ba ], [ %i.kp, %bb.az ]
  %i.ku = shl nuw nsw i32 %.0.i, 3
  call void @BitBufferAdvance(ptr noundef nonnull %1, i32 noundef %i.ku)
  %i.kv = load ptr, ptr %1, align 8, !tbaa !22
  %i.kw = load ptr, ptr %i.i, align 8, !tbaa !23
  %.not.i = icmp ugt ptr %i.kv, %i.kw
  %..i = select i1 %.not.i, i32 -50, i32 0
  br label %bb.bc

bb.bb:                                            ; preds = %bb.d
  call void @BitBufferByteAlign(ptr noundef nonnull %1, i32 noundef 0)
  br label %.loopexit

bb.bc:                                            ; preds = %_ZN11ALACDecoder11FillElementEP9BitBuffer.exit, %bb.ay, %bb.ax, %.loopexit419, %bb.d
  %.1352 = phi i32 [ %.0351, %bb.d ], [ %i.en, %.loopexit419 ], [ %i.eo, %bb.ax ], [ %.0351, %_ZN11ALACDecoder11FillElementEP9BitBuffer.exit ], [ %.0351, %bb.ay ] ; 3 uses
  %.3338 = phi i32 [ 0, %bb.d ], [ 0, %.loopexit419 ], [ 0, %bb.ax ], [ %..i, %_ZN11ALACDecoder11FillElementEP9BitBuffer.exit ], [ %i.kn, %bb.ay ] ; 2 uses
  %.3 = phi i32 [ %.0334, %bb.d ], [ %.1, %.loopexit419 ], [ %.2, %bb.ax ], [ %.0334, %_ZN11ALACDecoder11FillElementEP9BitBuffer.exit ], [ %.0334, %bb.ay ] ; 2 uses
  %i.kx = icmp ult i32 %.1352, %4
  %i.ky = icmp eq i32 %.3338, 0
  %or.cond5 = and i1 %i.kx, %i.ky
  br i1 %or.cond5, label %bb.c, label %.thread407, !llvm.loop !48

.thread407:                                       ; preds = %bb.d, %bb.d, %bb.bc, %bb.ab
  %.2353 = phi i32 [ %.1352, %bb.bc ], [ %.0351, %bb.ab ], [ %.0351, %bb.d ], [ %.0351, %bb.d ] ; 4 uses
  %.4339 = phi i32 [ %.3338, %bb.bc ], [ 0, %bb.ab ], [ -50, %bb.d ], [ -50, %bb.d ] ; 8 uses
  %.4 = phi i32 [ %.3, %bb.bc ], [ %.0334, %bb.ab ], [ %.0334, %bb.d ], [ %.0334, %bb.d ]
  %i.kz = icmp ult i32 %.2353, %4
  br i1 %i.kz, label %.lr.ph455, label %.loopexit

.lr.ph455:                                        ; preds = %.thread407
  %.4.fr = freeze i32 %.4                         ; 3 uses
  %i.la = icmp eq i32 %4, 1
  %i.lb = mul i32 %.4.fr, %4                      ; 5 uses
  %.not.i394 = icmp eq i32 %i.lb, 0               ; 3 uses
  %i.lc = zext i32 %.4.fr to i64                  ; 2 uses
  %i.ld = shl nuw nsw i64 %i.lc, 2
  %i.le = mul i32 %.4.fr, 3                       ; 2 uses
  %i.lf = mul i32 %i.le, %4                       ; 2 uses
  %i.lg = mul i32 %4, 3
  %i.lh = zext i32 %i.le to i64
  %i.li = shl nuw nsw i64 %i.lc, 1
  br i1 %i.la, label %.lr.ph455.split.us.preheader, label %.lr.ph455.split

.lr.ph455.split.us.preheader:                     ; preds = %.lr.ph455
  %i.lj = zext i32 %.2353 to i64                  ; 3 uses
  %i.lk = load i8, ptr %i.k, align 1, !tbaa !56
  switch i8 %i.lk, label %.loopexit [
    i8 16, label %bb.bf
    i8 24, label %bb.be
    i8 32, label %bb.bd
  ]

bb.bd:                                            ; preds = %.lr.ph455.split.us.preheader
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.lj
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ll, i8 0, i64 %i.ld, i1 false)
  br label %.loopexit

bb.be:                                            ; preds = %.lr.ph455.split.us.preheader
  %i.lm = mul nuw nsw i64 %i.lj, 3
  %i.ln = and i64 %i.lm, 4294967295
  %i.lo = getelementptr inbounds nuw i8, ptr %2, i64 %i.ln
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.lo, i8 0, i64 %i.lh, i1 false)
  br label %.loopexit

bb.bf:                                            ; preds = %.lr.ph455.split.us.preheader
  %i.lp = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.lj
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.lp, i8 0, i64 %i.li, i1 false)
  br label %.loopexit

.lr.ph455.split:                                  ; preds = %.lr.ph455
  %.not.i391 = icmp eq i32 %i.lf, 0
  br i1 %.not.i391, label %.lr.ph455.split.split.us.split.split, label %.lr.ph455.split.split.preheader

.lr.ph455.split.split.preheader:                  ; preds = %.lr.ph455.split
  %i.lq = zext i32 %.2353 to i64
  %wide.trip.count570 = zext i32 %4 to i64
  %.pre598 = load i8, ptr %i.k, align 1, !tbaa !56
  br label %.lr.ph455.split.split

.lr.ph455.split.split.us.split.split:             ; preds = %.lr.ph455.split
  br i1 %.not.i394, label %.loopexit, label %.lr.ph455.split.split.us.split.split.split.split.preheader

.lr.ph455.split.split.us.split.split.split.split.preheader: ; preds = %.lr.ph455.split.split.us.split.split
  %i.lr = zext i32 %.2353 to i64
  %wide.trip.count575 = zext i32 %4 to i64
  %.pre = load i8, ptr %i.k, align 1, !tbaa !56
  br label %.lr.ph455.split.split.us.split.split.split.split

.lr.ph455.split.split.us.split.split.split.split: ; preds = %.lr.ph455.split.split.us.split.split.split.split.preheader, %_ZL6Zero16Psjj.exit.us467
  %indvars.iv572 = phi i64 [ %i.lr, %.lr.ph455.split.split.us.split.split.split.split.preheader ], [ %indvars.iv.next573, %_ZL6Zero16Psjj.exit.us467 ] ; 3 uses
  switch i8 %.pre, label %_ZL6Zero16Psjj.exit.us467 [
    i8 16, label %.preheader.i.us462
    i8 32, label %.preheader.i393.us457
  ]

.preheader.i393.us457:                            ; preds = %.lr.ph455.split.split.us.split.split.split.split
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv572
  br label %.lr.ph.i395.us459

.lr.ph.i395.us459:                                ; preds = %.lr.ph.i395.us459, %.preheader.i393.us457
  %.010.i396.us460 = phi i32 [ %i.lv, %.lr.ph.i395.us459 ], [ 0, %.preheader.i393.us457 ] ; 2 uses
  %i.lt = zext i32 %.010.i396.us460 to i64
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.lt
  store i32 0, ptr %i.lu, align 4, !tbaa !7
  %i.lv = add i32 %.010.i396.us460, %4            ; 2 uses
  %i.lw = icmp ult i32 %i.lv, %i.lb
  br i1 %i.lw, label %.lr.ph.i395.us459, label %_ZL6Zero16Psjj.exit.us467, !llvm.loop !49

.preheader.i.us462:                               ; preds = %.lr.ph455.split.split.us.split.split.split.split
  %i.lx = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv572
  br label %.lr.ph.i.us464

.lr.ph.i.us464:                                   ; preds = %.lr.ph.i.us464, %.preheader.i.us462
  %.010.i.us465 = phi i32 [ %i.ma, %.lr.ph.i.us464 ], [ 0, %.preheader.i.us462 ] ; 2 uses
  %i.ly = zext i32 %.010.i.us465 to i64
  %i.lz = getelementptr inbounds nuw [2 x i8], ptr %i.lx, i64 %i.ly
  store i16 0, ptr %i.lz, align 2, !tbaa !18
  %i.ma = add i32 %.010.i.us465, %4               ; 2 uses
  %i.mb = icmp ult i32 %i.ma, %i.lb
  br i1 %i.mb, label %.lr.ph.i.us464, label %_ZL6Zero16Psjj.exit.us467, !llvm.loop !50

_ZL6Zero16Psjj.exit.us467:                        ; preds = %.lr.ph.i395.us459, %.lr.ph.i.us464, %.lr.ph455.split.split.us.split.split.split.split
  %indvars.iv.next573 = add nuw nsw i64 %indvars.iv572, 1 ; 2 uses
  %exitcond576.not = icmp eq i64 %indvars.iv.next573, %wide.trip.count575
  br i1 %exitcond576.not, label %.loopexit, label %.lr.ph455.split.split.us.split.split.split.split, !llvm.loop !51

.lr.ph455.split.split:                            ; preds = %.lr.ph455.split.split.preheader, %_ZL6Zero16Psjj.exit
  %i.mc = phi i8 [ %.pre598, %.lr.ph455.split.split.preheader ], [ %i.na, %_ZL6Zero16Psjj.exit ] ; 2 uses
  %indvars.iv567 = phi i64 [ %i.lq, %.lr.ph455.split.split.preheader ], [ %indvars.iv.next568, %_ZL6Zero16Psjj.exit ] ; 4 uses
  switch i8 %i.mc, label %_ZL6Zero16Psjj.exit [
    i8 16, label %.preheader.i
    i8 24, label %.preheader.i390
    i8 32, label %.preheader.i393
  ]

.preheader.i:                                     ; preds = %.lr.ph455.split.split
  %i.md = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv567
  br i1 %.not.i394, label %_ZL6Zero16Psjj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.010.i = phi i32 [ %i.mg, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.me = zext i32 %.010.i to i64
  %i.mf = getelementptr inbounds nuw [2 x i8], ptr %i.md, i64 %i.me
  store i16 0, ptr %i.mf, align 2, !tbaa !18
  %i.mg = add i32 %.010.i, %4                     ; 2 uses
  %i.mh = icmp ult i32 %i.mg, %i.lb
  br i1 %i.mh, label %.lr.ph.i, label %_ZL6Zero16Psjj.exit, !llvm.loop !50

.preheader.i390:                                  ; preds = %.lr.ph455.split.split
  %i.mi = mul i64 %indvars.iv567, 3
  %i.mj = and i64 %i.mi, 4294967295
  %i.mk = getelementptr inbounds nuw i8, ptr %2, i64 %i.mj ; 3 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %.preheader.i390
  %.014.i = phi i32 [ 0, %.preheader.i390 ], [ %i.mt, %bb.bg ] ; 4 uses
  %i.ml = zext i32 %.014.i to i64
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.ml
  store i8 0, ptr %i.mm, align 1, !tbaa !17
  %i.mn = add nuw i32 %.014.i, 1
  %i.mo = zext i32 %i.mn to i64
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.mo
  store i8 0, ptr %i.mp, align 1, !tbaa !17
  %i.mq = add i32 %.014.i, 2
  %i.mr = zext i32 %i.mq to i64
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.mr
  store i8 0, ptr %i.ms, align 1, !tbaa !17
  %i.mt = add i32 %.014.i, %i.lg                  ; 2 uses
  %i.mu = icmp ult i32 %i.mt, %i.lf
  br i1 %i.mu, label %bb.bg, label %_ZL6Zero16Psjj.exit.loopexit517, !llvm.loop !52

.preheader.i393:                                  ; preds = %.lr.ph455.split.split
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv567
  br i1 %.not.i394, label %_ZL6Zero16Psjj.exit, label %.lr.ph.i395

.lr.ph.i395:                                      ; preds = %.preheader.i393, %.lr.ph.i395
  %.010.i396 = phi i32 [ %i.my, %.lr.ph.i395 ], [ 0, %.preheader.i393 ] ; 2 uses
  %i.mw = zext i32 %.010.i396 to i64
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %i.mw
  store i32 0, ptr %i.mx, align 4, !tbaa !7
  %i.my = add i32 %.010.i396, %4                  ; 2 uses
  %i.mz = icmp ult i32 %i.my, %i.lb
  br i1 %i.mz, label %.lr.ph.i395, label %_ZL6Zero16Psjj.exit, !llvm.loop !49

_ZL6Zero16Psjj.exit.loopexit517:                  ; preds = %bb.bg
  %.pre597 = load i8, ptr %i.k, align 1, !tbaa !56
  br label %_ZL6Zero16Psjj.exit

_ZL6Zero16Psjj.exit:                              ; preds = %.lr.ph.i395, %.lr.ph.i, %_ZL6Zero16Psjj.exit.loopexit517, %.preheader.i393, %.preheader.i, %.lr.ph455.split.split
  %i.na = phi i8 [ 16, %.lr.ph.i ], [ %.pre597, %_ZL6Zero16Psjj.exit.loopexit517 ], [ %i.mc, %.lr.ph455.split.split ], [ 16, %.preheader.i ], [ 32, %.preheader.i393 ], [ 32, %.lr.ph.i395 ]
  %indvars.iv.next568 = add nuw nsw i64 %indvars.iv567, 1 ; 2 uses
  %exitcond571.not = icmp eq i64 %indvars.iv.next568, %wide.trip.count570
  br i1 %exitcond571.not, label %.loopexit, label %.lr.ph455.split.split, !llvm.loop !51

.loopexit:                                        ; preds = %bb.l, %bb.aj, %bb.am, %bb.c, %bb.e, %bb.f, %bb.ac, %bb.ad, %_ZL6Zero16Psjj.exit, %_ZL6Zero16Psjj.exit.us467, %bb.bf, %bb.be, %bb.bd, %.lr.ph455.split.us.preheader, %.lr.ph455.split.split.us.split.split, %.thread407, %bb.bb, %bb.a
  %.0 = phi i32 [ %.4339, %.thread407 ], [ -50, %bb.a ], [ 0, %bb.bb ], [ %.4339, %bb.bf ], [ %.4339, %_ZL6Zero16Psjj.exit ], [ %.4339, %.lr.ph455.split.split.us.split.split ], [ %.4339, %_ZL6Zero16Psjj.exit.us467 ], [ %.4339, %.lr.ph455.split.us.preheader ], [ %.4339, %bb.bd ], [ %.4339, %bb.be ], [ -50, %bb.ad ], [ -50, %bb.f ], [ -50, %bb.ac ], [ %i.hn, %bb.am ], [ %i.gy, %bb.aj ], [ -50, %bb.c ], [ -50, %bb.e ], [ %i.bs, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
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
define dso_local noundef range(i32 -50, 1) i32 @_ZN11ALACDecoder17DataStreamElementEP9BitBuffer(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !guid !66 {
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
  tail call void @BitBufferAdvance(ptr noundef %1, i32 noundef %i.i)
  %i.j = load ptr, ptr %1, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !23
  %.not14 = icmp ugt ptr %i.j, %i.l
  %. = select i1 %.not14, i32 -50, i32 0
  ret i32 %.
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -50, 1) i32 @_ZN11ALACDecoder11FillElementEP9BitBuffer(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !guid !67 {
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
  tail call void @BitBufferAdvance(ptr noundef %1, i32 noundef %i.g)
  %i.h = load ptr, ptr %1, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23
  %.not = icmp ugt ptr %i.h, %i.j
  %. = select i1 %.not, i32 -50, i32 0
  ret i32 %.
}

declare void @BitBufferByteAlign(ptr noundef, i32 noundef) local_unnamed_addr #6

declare zeroext i8 @BitBufferReadOne(ptr noundef) local_unnamed_addr #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"short", !5, i64 0}
!9 = !{!"_ZTS18ALACSpecificConfig", !6, i64 0, !5, i64 4, !5, i64 5, !5, i64 6, !5, i64 7, !5, i64 8, !5, i64 9, !8, i64 10, !6, i64 12, !6, i64 16, !6, i64 20}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 int", !10, i64 0}
!12 = !{!"p1 short", !10, i64 0}
!13 = !{!"_ZTS11ALACDecoder", !9, i64 0, !8, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !12, i64 56}
!14 = !{!13, !11, i64 32}
!15 = !{!13, !11, i64 40}
!16 = !{!13, !11, i64 48}
!17 = !{!5, !5, i64 0}
!18 = !{!8, !8, i64 0}
!19 = !{!13, !12, i64 56}
!20 = !{!"p1 omnipotent char", !10, i64 0}
!21 = !{!"_ZTS9BitBuffer", !20, i64 0, !20, i64 8, !6, i64 16, !6, i64 20}
!22 = !{!21, !20, i64 0}
!23 = !{!21, !20, i64 8}
!24 = !{i64 6762866880834289752}
!25 = !{i64 -3581947838102546751}
!26 = !{i64 -8437934150588741723}
!27 = !{!9, !6, i64 0}
!28 = !{!9, !5, i64 8}
!29 = !{!9, !5, i64 9}
!30 = !{!9, !8, i64 10}
!31 = !{!9, !5, i64 4}
!32 = !{!9, !6, i64 12}
!33 = !{!9, !6, i64 16}
!34 = !{!9, !6, i64 20}
!35 = !{!13, !6, i64 0}
!36 = distinct !{!36, !57}
!37 = distinct !{!37, !57}
!38 = distinct !{!38, !57}
!39 = distinct !{!39, !57}
!40 = distinct !{!40, !57, !63, !64}
!41 = distinct !{!41, !65}
!42 = distinct !{!42, !57, !63}
!43 = distinct !{!43, !57}
!44 = distinct !{!44, !57}
!45 = distinct !{!45, !57}
!46 = distinct !{!46, !57}
!47 = distinct !{!47, !57}
!48 = distinct !{!48, !57}
!49 = distinct !{!49, !57}
!50 = distinct !{!50, !57}
!51 = distinct !{!51, !57}
!52 = distinct !{!52, !57}
!53 = !{i64 -7652632963270179011}
!54 = !{!13, !8, i64 24}
!55 = !{!13, !5, i64 6}
!56 = !{!13, !5, i64 5}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!20, !20, i64 0}
!59 = !{i64 0, i64 8, !58, i64 8, i64 8, !58, i64 16, i64 4, !7, i64 20, i64 4, !7}
!60 = !{!13, !5, i64 7}
!61 = !{!13, !5, i64 8}
!62 = !{!13, !8, i64 10}
!63 = !{!"llvm.loop.isvectorized", i32 1}
!64 = !{!"llvm.loop.unroll.runtime.disable"}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = !{i64 -3070104817208454669}
!67 = !{i64 2578706513568188415}
end_hunk_0
