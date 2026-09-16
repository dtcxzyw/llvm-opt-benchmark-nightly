Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ucnvhz?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UConverterStaticData = type { i32, [60 x i8], i32, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i8, i8, [19 x i8] }
%struct.UConverterImpl = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.UConverterSharedData = type { i32, i32, ptr, ptr, i8, i8, ptr, i32, %struct.UConverterMBCSTable }
%struct.UConverterMBCSTable = type { i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, [64 x i16], ptr, ptr, i32, i8, i8, i8, i16, i32, ptr, ptr, ptr, ptr }

@_ZL13_HZStaticData = internal constant %struct.UConverterStaticData { i32 100, [60 x i8] c"HZ\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i8 0, i8 23, i8 1, i8 4, [4 x i8] c"\1A\00\00\00", i8 1, i8 0, i8 0, i8 0, i8 0, [19 x i8] zeroinitializer }, align 4
@_ZL7_HZImpl = internal constant %struct.UConverterImpl { i32 23, ptr null, ptr null, ptr @_ZL7_HZOpenP10UConverterP18UConverterLoadArgsP10UErrorCode, ptr @_ZL8_HZCloseP10UConverter, ptr @_ZL8_HZResetP10UConverter21UConverterResetChoice, ptr @_ZL37UConverter_toUnicode_HZ_OFFSETS_LOGICP23UConverterToUnicodeArgsP10UErrorCode, ptr @_ZL37UConverter_toUnicode_HZ_OFFSETS_LOGICP23UConverterToUnicodeArgsP10UErrorCode, ptr @_ZL39UConverter_fromUnicode_HZ_OFFSETS_LOGICP25UConverterFromUnicodeArgsP10UErrorCode, ptr @_ZL39UConverter_fromUnicode_HZ_OFFSETS_LOGICP25UConverterFromUnicodeArgsP10UErrorCode, ptr null, ptr null, ptr null, ptr @_ZL12_HZ_WriteSubP25UConverterFromUnicodeArgsiP10UErrorCode, ptr @_ZL13_HZ_SafeClonePK10UConverterPvPiP10UErrorCode, ptr @_ZL17_HZ_GetUnicodeSetPK10UConverterPK9USetAdder20UConverterUnicodeSetP10UErrorCode, ptr null, ptr null }, align 8
@_HZData_78 = local_unnamed_addr constant %struct.UConverterSharedData { i32 296, i32 -1, ptr null, ptr @_ZL13_HZStaticData, i8 0, i8 0, ptr @_ZL7_HZImpl, i32 0, %struct.UConverterMBCSTable zeroinitializer }, align 8
@.str = private unnamed_addr constant [4 x i8] c"GBK\00", align 1

; Function Attrs: mustprogress uwtable
define internal void @_ZL7_HZOpenP10UConverterP18UConverterLoadArgsP10UErrorCode(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !38
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call signext i8 @ucnv_canCreateConverter_78(ptr noundef nonnull @.str, ptr noundef %2) ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @ucnv_open_78(ptr noundef nonnull @.str, ptr noundef %2) ; 2 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !12
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.h = tail call noalias dereferenceable_or_null(24) ptr @uprv_calloc_78(i64 noundef 1, i64 noundef 24) #6 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !16
  %.not15 = icmp eq ptr %i.h, null
  br i1 %.not15, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.d, ptr %i.h, align 8, !tbaa !19
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @ucnv_close_78(ptr noundef %i.d)
  store i32 7, ptr %2, align 4, !tbaa !12
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.f, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL8_HZCloseP10UConverter(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  tail call void @ucnv_close_78(ptr noundef %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 62
  %i.e = load i8, ptr %i.d, align 2, !tbaa !39
  %.not5 = icmp eq i8 %i.e, 0
  br i1 %.not5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !16
  tail call void @uprv_free_78(ptr noundef %i.f)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL8_HZResetP10UConverter21UConverterResetChoice(ptr nofree noundef captures(none) %0, i32 noundef %1) #1 {
bb.a:
  %i.a = icmp slt i32 %1, 2
  br i1 %i.a, label %bb.b, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !16
  br label %.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.b, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.c, align 4, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16   ; 4 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  store i8 0, ptr %i.f, align 1, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 19
  store i8 0, ptr %i.g, align 1, !tbaa !23
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.not14 = icmp eq i32 %1, 1
  br i1 %.not14, label %bb.f, label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.d
  %i.h = phi ptr [ %.pre, %..thread_crit_edge ], [ %i.e, %bb.d ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.i, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 0, ptr %i.j, align 4, !tbaa !24
  %.not15 = icmp eq ptr %i.h, null
  br i1 %.not15, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 18
  store i8 0, ptr %i.l, align 2, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.k, i8 0, i64 9, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL37UConverter_toUnicode_HZ_OFFSETS_LOGICP23UConverterToUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !45   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !46   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.m = icmp ult ptr %i.c, %i.g
  br i1 %i.m, label %.lr.ph.lr.ph, label %.loopexit

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 17 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 19 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer.backedge
  %i.r = phi ptr [ %i.i, %.lr.ph.lr.ph ], [ %i.ao, %.outer.backedge ] ; 11 uses
  %.0113.ph249 = phi ptr [ %i.e, %.lr.ph.lr.ph ], [ %.0113.ph.be, %.outer.backedge ] ; 12 uses
  %.0114.ph248 = phi ptr [ %i.c, %.lr.ph.lr.ph ], [ %i.x, %.outer.backedge ] ; 2 uses
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !47
  %i.t = icmp ult ptr %.0113.ph249, %i.s
  br i1 %i.t, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 76 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 72 ; 3 uses
  %.pre = load i32, ptr %i.u, align 4, !tbaa !21
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us, %.backedge
  %i.w = phi i32 [ %.pre, %.lr.ph.split.us ], [ %7, %.backedge ] ; 2 uses
  %.0114199.us = phi ptr [ %.0114.ph248, %.lr.ph.split.us ], [ %i.x, %.backedge ] ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0114199.us, i64 1 ; 13 uses
  %i.y = load i8, ptr %.0114199.us, align 1, !tbaa !28 ; 12 uses
  %i.z = zext i8 %i.y to i32                      ; 5 uses
  %i.aa = icmp eq i32 %i.w, 126
  br i1 %i.aa, label %bb.c, label %9

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.u, align 4, !tbaa !21
  switch i8 %i.y, label %.split214.us [
    i8 10, label %.backedge
    i8 126, label %.split221.us
    i8 123, label %2
    i8 125, label %2
  ]

.split221.us:                                     ; preds = %bb.c
  %i.ab = load ptr, ptr %i.q, align 8, !tbaa !48  ; 2 uses
  %.not124 = icmp eq ptr %i.ab, null
  br i1 %.not124, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.split221.us
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.ad = ptrtoint ptr %i.x to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = trunc i64 %i.af to i32
  %i.ah = add i32 %i.ag, -2
  %i.ai = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.aj = ptrtoint ptr %.0113.ph249 to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 1
  %i.an = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.am
  store i32 %i.ah, ptr %i.an, align 4, !tbaa !29
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.split221.us
  store i16 126, ptr %.0113.ph249, align 2, !tbaa !31
  store i8 0, ptr %i.p, align 1, !tbaa !23
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.e, %bb.l
  %i.ao = phi ptr [ %i.r, %bb.e ], [ %i.bu, %bb.l ]
  %.0113.ph.be = getelementptr inbounds nuw i8, ptr %.0113.ph249, i64 2 ; 2 uses
  %i.ap = icmp ult ptr %i.x, %i.g
  br i1 %i.ap, label %.lr.ph, label %.loopexit, !llvm.loop !41

2:                                                ; preds = %bb.c, %bb.c
  %3 = icmp eq i8 %i.y, 123
  %4 = zext i1 %3 to i8
  store i8 %4, ptr %i.o, align 1, !tbaa !22
  %5 = load i8, ptr %i.p, align 1, !tbaa !23
  %.not123 = icmp eq i8 %5, 0
  br i1 %.not123, label %6, label %.split224.us

.split224.us:                                     ; preds = %2
  store i8 0, ptr %i.p, align 1, !tbaa !23
  store i32 18, ptr %1, align 4, !tbaa !12
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 284
  store i32 2, ptr %i.aq, align 4, !tbaa !49
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 65
  store i8 126, ptr %i.ar, align 1, !tbaa !28
  %i.as = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 66
  store i8 %i.y, ptr %i.at, align 1, !tbaa !28
  %i.au = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  store i8 2, ptr %i.av, align 8, !tbaa !50
  br label %.loopexit

6:                                                ; preds = %2
  store i8 1, ptr %i.p, align 1, !tbaa !23
  br label %.backedge

.backedge:                                        ; preds = %16, %17, %6, %27, %bb.c
  %7 = phi i32 [ 126, %16 ], [ %i.w, %17 ], [ 0, %6 ], [ 126, %27 ], [ 0, %bb.c ]
  %8 = icmp ult ptr %i.x, %i.g
  br i1 %8, label %bb.b, label %.loopexit, !llvm.loop !41

.split214.us:                                     ; preds = %bb.c
  store i8 0, ptr %i.p, align 1, !tbaa !23
  store i32 18, ptr %1, align 4, !tbaa !12
  %i.aw = getelementptr inbounds nuw i8, ptr %i.r, i64 65
  store i8 126, ptr %i.aw, align 1, !tbaa !28
  %i.ax = load i8, ptr %i.o, align 1, !tbaa !22
  %.not125 = icmp eq i8 %i.ax, 0
  br i1 %.not125, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.split214.us
  %i.ay = add i8 %i.y, -33
  %or.cond = icmp ult i8 %i.ay, 94
  br i1 %or.cond, label %bb.i, label %bb.h

bb.g:                                             ; preds = %.split214.us
  %i.az = icmp sgt i8 %i.y, -1
  br i1 %i.az, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ba = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 66
  store i8 %i.y, ptr %i.bb, align 1, !tbaa !28
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.h
  %.sink = phi i8 [ 2, %bb.h ], [ 1, %bb.f ], [ 1, %bb.g ]
  %.1115 = phi ptr [ %i.x, %bb.h ], [ %.0114199.us, %bb.f ], [ %.0114199.us, %bb.g ]
  %i.bc = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  store i8 %.sink, ptr %i.bd, align 8, !tbaa !50
  br label %.loopexit

9:                                                ; preds = %bb.b
  %10 = load i8, ptr %i.o, align 1, !tbaa !22
  %.not = icmp eq i8 %10, 0
  br i1 %.not, label %25, label %11

11:                                               ; preds = %9
  %12 = load i32, ptr %i.v, align 8, !tbaa !20    ; 5 uses
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = icmp eq i8 %i.y, 126
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  store i32 126, ptr %i.u, align 4, !tbaa !21
  br label %.backedge

17:                                               ; preds = %14
  %18 = or disjoint i32 %i.z, 256
  store i32 %18, ptr %i.v, align 8, !tbaa !20
  store i8 0, ptr %i.p, align 1, !tbaa !23
  br label %.backedge

19:                                               ; preds = %11
  %20 = add i32 %12, 223
  %21 = and i32 %20, 255
  %22 = icmp samesign ult i32 %21, 93
  %23 = add i8 %i.y, -33
  %24 = icmp ult i8 %23, 94                       ; 2 uses
  %or.cond3 = select i1 %22, i1 %24, i1 false
  br i1 %or.cond3, label %bb.j, label %.thread138

.thread138:                                       ; preds = %19
  %i.be = and i32 %12, 255                        ; 2 uses
  %i.bf = shl nuw nsw i32 %i.be, 8
  %i.bg = or disjoint i32 %i.bf, %i.z
  %i.bh = or disjoint i32 %i.bg, 65536
  store i32 0, ptr %i.v, align 8, !tbaa !20
  store i32 12, ptr %1, align 4, !tbaa !12
  br i1 %24, label %.thread143.thread319, label %.thread143.thread314

25:                                               ; preds = %9
  %26 = icmp eq i8 %i.y, 126
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  store i32 126, ptr %i.u, align 4, !tbaa !21
  br label %.backedge

28:                                               ; preds = %25
  %29 = icmp sgt i8 %i.y, -1
  store i8 0, ptr %i.p, align 1, !tbaa !23
  br i1 %29, label %.thread, label %.thread143.thread

.thread143.thread:                                ; preds = %28
  store i32 12, ptr %1, align 4, !tbaa !12
  br label %.thread143.thread319

bb.j:                                             ; preds = %19
  %i.bi = trunc i32 %12 to i8
  %i.bj = xor i8 %i.bi, -128
  store i8 %i.bj, ptr %i.a, align 1, !tbaa !28
  %i.bk = or disjoint i8 %i.y, -128
  store i8 %i.bk, ptr %i.l, align 1, !tbaa !28
  %i.bl = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !33
  %i.bo = getelementptr inbounds nuw i8, ptr %i.r, i64 63
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !34
  %i.bq = call i32 @ucnv_MBCSSimpleGetNextUChar_78(ptr noundef %i.bn, ptr noundef nonnull %i.a, i32 noundef 2, i8 noundef signext %i.bp)
  %.fr = freeze i32 %i.bq                         ; 3 uses
  %i.br = load ptr, ptr %i.h, align 8, !tbaa !46  ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 72
  store i32 0, ptr %i.bs, align 8, !tbaa !20
  %i.bt = icmp slt i32 %.fr, 65534
  br i1 %i.bt, label %.thread, label %.thread143

.thread:                                          ; preds = %28, %bb.j
  %i.bu = phi ptr [ %i.br, %bb.j ], [ %i.r, %28 ]
  %.1112130 = phi i32 [ %.fr, %bb.j ], [ %i.z, %28 ]
  %i.bv = load ptr, ptr %i.q, align 8, !tbaa !48  ; 2 uses
  %.not122 = icmp eq ptr %i.bv, null
  br i1 %.not122, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.thread
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.bx = ptrtoint ptr %i.x to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = xor i64 %i.by, -1
  %i.ca = add i64 %i.bz, %i.bx
  %i.cb = load i8, ptr %i.o, align 1, !tbaa !22
  %i.cc = sext i8 %i.cb to i64
  %i.cd = sub i64 %i.ca, %i.cc
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.cg = ptrtoint ptr %.0113.ph249 to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = ashr exact i64 %i.ci, 1
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.cj
  store i32 %i.ce, ptr %i.ck, align 4, !tbaa !29
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread
  %i.cl = trunc i32 %.1112130 to i16
  store i16 %i.cl, ptr %.0113.ph249, align 2, !tbaa !31
  br label %.outer.backedge

.thread143:                                       ; preds = %bb.j
  %i.cm = shl i32 %12, 8
  %i.cn = and i32 %i.cm, 65280                    ; 2 uses
  %i.co = or disjoint i32 %i.cn, %i.z             ; 2 uses
  %i.cp = icmp eq i32 %.fr, 65534
  %spec.select = select i1 %i.cp, i32 10, i32 12
  store i32 %spec.select, ptr %1, align 4, !tbaa !12
  %.not.a = icmp eq i32 %i.cn, 0
  br i1 %.not.a, label %.thread143.thread319, label %.thread143.thread314

.thread143.thread314:                             ; preds = %.thread138, %.thread143
  %.1137148318 = phi i32 [ %i.co, %.thread143 ], [ %i.bh, %.thread138 ] ; 2 uses
  %i.cq = phi ptr [ %i.br, %.thread143 ], [ %i.r, %.thread138 ]
  %i.cr = lshr i32 %.1137148318, 8
  %i.cs = trunc i32 %i.cr to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 65
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !28
  %i.cu = trunc i32 %.1137148318 to i8
  %i.cv = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 66
  store i8 %i.cu, ptr %i.cw, align 1, !tbaa !28
  %i.cx = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 64
  store i8 2, ptr %i.cy, align 8, !tbaa !50
  br label %.loopexit

.thread143.thread319:                             ; preds = %.thread138, %.thread143.thread, %.thread143
  %i.cz = phi ptr [ %i.r, %.thread143.thread ], [ %i.br, %.thread143 ], [ %i.r, %.thread138 ]
  %.1137148153 = phi i32 [ %i.z, %.thread143.thread ], [ %i.co, %.thread143 ], [ %i.be, %.thread138 ]
  %.3135149152 = phi ptr [ %i.x, %.thread143.thread ], [ %i.x, %.thread143 ], [ %.0114199.us, %.thread138 ]
  %i.da = trunc nuw i32 %.1137148153 to i8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 65
  store i8 %i.da, ptr %i.db, align 1, !tbaa !28
  %i.dc = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  store i8 1, ptr %i.dd, align 8, !tbaa !50
  br label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph
  store i32 15, ptr %1, align 4, !tbaa !12
  br label %.loopexit

.loopexit:                                        ; preds = %.outer.backedge, %.backedge, %.lr.ph.split, %.thread143.thread319, %.thread143.thread314, %bb.a, %bb.i, %.split224.us
  %.0113.ph196.sink = phi ptr [ %.0113.ph249, %.split224.us ], [ %.0113.ph249, %bb.i ], [ %.0113.ph249, %.thread143.thread314 ], [ %.0113.ph249, %.thread143.thread319 ], [ %.0113.ph249, %.lr.ph.split ], [ %.0113.ph249, %.backedge ], [ %i.e, %bb.a ], [ %.0113.ph.be, %.outer.backedge ]
  %.4.sink = phi ptr [ %i.x, %.split224.us ], [ %.1115, %bb.i ], [ %i.x, %.thread143.thread314 ], [ %.3135149152, %.thread143.thread319 ], [ %.0114.ph248, %.lr.ph.split ], [ %i.x, %.backedge ], [ %i.c, %bb.a ], [ %i.x, %.outer.backedge ]
  store ptr %.0113.ph196.sink, ptr %i.d, align 8, !tbaa !44
  store ptr %.4.sink, ptr %i.b, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL39UConverter_fromUnicode_HZ_OFFSETS_LOGICP25UConverterFromUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !53   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.e to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = trunc i64 %i.l to i32                    ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !56
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.c to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = lshr exact i64 %i.r, 1                   ; 2 uses
  %i.t = trunc i64 %i.s to i32                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !36   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !16   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 18 ; 3 uses
  %i.z = load i8, ptr %i.y, align 2, !tbaa !25    ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 84
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !24 ; 2 uses
  %.not = icmp ne i32 %i.ab, 0
  %i.ac = icmp sgt i32 %i.m, 0
  %or.cond = select i1 %.not, i1 %i.ac, i1 false
  br i1 %or.cond, label %bb.an, label %.preheader198

.preheader198:                                    ; preds = %bb.a
  %i.ad = icmp sgt i32 %i.t, 0
  br i1 %i.ad, label %.lr.ph.lr.ph, label %.loopexit199

.lr.ph.lr.ph:                                     ; preds = %.preheader198
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  %i.af = and i64 %i.s, 2147483647
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.0140.ph240 = phi i8 [ %i.z, %.lr.ph.lr.ph ], [ %i.cc, %.outer ] ; 6 uses
  %.0146.ph239 = phi i32 [ 0, %.lr.ph.lr.ph ], [ %.10, %.outer ]
  %.0150.ph238 = phi i64 [ 0, %.lr.ph.lr.ph ], [ %indvars.iv.next, %.outer ]
  %.0155.ph237 = phi ptr [ %i.g, %.lr.ph.lr.ph ], [ %.12, %.outer ]
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ %.0150.ph238, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 6 uses
  %.0146225 = phi i32 [ %.0146.ph239, %.lr.ph ], [ %.2148.1, %.loopexit ] ; 15 uses
  %.0155223 = phi ptr [ %.0155.ph237, %.lr.ph ], [ %.3158.1, %.loopexit ] ; 11 uses
  store i32 65535, ptr %i.a, align 4, !tbaa !29
  %i.ag = icmp slt i32 %.0146225, %i.m
  br i1 %i.ag, label %bb.c, label %bb.ar

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 6 uses
  %i.ah = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !31 ; 3 uses
  %i.aj = icmp eq i16 %i.ai, 126
  br i1 %i.aj, label %.preheader.preheader, label %bb.i

.preheader.preheader:                             ; preds = %bb.c
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.al = sext i32 %.0146225 to i64
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.al
  store i8 126, ptr %i.am, align 1, !tbaa !28
  %i.an = load ptr, ptr %i.f, align 8, !tbaa !54
  %.not181 = icmp eq ptr %i.an, null
  br i1 %.not181, label %.preheader.1, label %bb.d

bb.d:                                             ; preds = %.preheader.preheader
  %i.ao = getelementptr inbounds nuw i8, ptr %.0155223, i64 4
  %i.ap = trunc nsw i64 %indvars.iv to i32
  store i32 %i.ap, ptr %.0155223, align 4, !tbaa !29
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader, %bb.d
  %.2157 = phi ptr [ %i.ao, %bb.d ], [ %.0155223, %.preheader.preheader ] ; 4 uses
  %i.aq = add nsw i32 %.0146225, 1                ; 3 uses
  %i.ar = icmp slt i32 %i.aq, %i.m
  br i1 %i.ar, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader.1
  %i.as = load ptr, ptr %i.u, align 8, !tbaa !36  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 104
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 91 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !57  ; 2 uses
  %i.aw = add i8 %i.av, 1
  store i8 %i.aw, ptr %i.au, align 1, !tbaa !57
  %i.ax = sext i8 %i.av to i64
  %i.ay = getelementptr inbounds i8, ptr %i.at, i64 %i.ax
  store i8 126, ptr %i.ay, align 1, !tbaa !28
  store i32 15, ptr %1, align 4, !tbaa !12
  br label %.loopexit

bb.f:                                             ; preds = %.preheader.1
  %i.az = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 %i.ba
  store i8 126, ptr %i.bb, align 1, !tbaa !28
  %i.bc = load ptr, ptr %i.f, align 8, !tbaa !54
  %.not181.1 = icmp eq ptr %i.bc, null
  br i1 %.not181.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %.2157, i64 4
  %i.be = trunc nsw i64 %indvars.iv to i32
  store i32 %i.be, ptr %.2157, align 4, !tbaa !29
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2157.1 = phi ptr [ %i.bd, %bb.g ], [ %.2157, %bb.f ]
  %i.bf = add nsw i32 %.0146225, 2
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %bb.e
  %.3158.1 = phi ptr [ %.2157.1, %bb.h ], [ %.2157, %bb.e ]
  %.2148.1 = phi i32 [ %i.bf, %bb.h ], [ %i.aq, %bb.e ] ; 2 uses
  %i.bg = icmp slt i64 %indvars.iv.next, %i.af
  br i1 %i.bg, label %bb.b, label %.loopexit199

bb.i:                                             ; preds = %bb.c
  %i.bh = trunc nsw i64 %indvars.iv to i32        ; 7 uses
  %i.bi = trunc nsw i64 %indvars.iv.next to i32   ; 4 uses
  %i.bj = zext i16 %i.ai to i32                   ; 10 uses
  %i.bk = icmp ult i16 %i.ai, 128
  br i1 %i.bk, label %.thread185, label %bb.j

.thread185:                                       ; preds = %bb.i
  store i32 %i.bj, ptr %i.a, align 4, !tbaa !29
  br label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bl = load ptr, ptr %i.x, align 8, !tbaa !19
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !33
  %i.bo = load ptr, ptr %i.u, align 8, !tbaa !36
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 63
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !34
  %i.br = call i32 @ucnv_MBCSFromUChar32_78(ptr noundef %i.bn, i32 noundef %i.bj, ptr noundef nonnull %i.a, i8 noundef signext %i.bq)
  %i.bs = icmp eq i32 %i.br, 2
  br i1 %i.bs, label %bb.k, label %.loopexit200

bb.k:                                             ; preds = %bb.j
  %i.bt = load i32, ptr %i.a, align 4, !tbaa !29  ; 3 uses
  %i.bu = add i32 %i.bt, 24159
  %i.bv = and i32 %i.bu, 65534
  %i.bw = icmp samesign ult i32 %i.bv, 23646
  br i1 %i.bw, label %bb.l, label %.loopexit200

bb.l:                                             ; preds = %bb.k
  %i.bx = add i32 %i.bt, 95
  %i.by = and i32 %i.bx, 254
  %i.bz = icmp samesign ult i32 %i.by, 94
  br i1 %i.bz, label %bb.m, label %.loopexit200

bb.m:                                             ; preds = %bb.l
  %i.ca = add i32 %i.bt, -32896                   ; 3 uses
  store i32 %i.ca, ptr %i.a, align 4, !tbaa !29
  %.not173 = icmp eq i32 %i.ca, 65535
  br i1 %.not173, label %.loopexit200, label %bb.n

bb.n:                                             ; preds = %.thread185, %bb.m
  %storemerge172188 = phi i32 [ %i.bj, %.thread185 ], [ %i.ca, %bb.m ]
  %i.cb = icmp ugt i32 %storemerge172188, 255     ; 4 uses
  %i.cc = zext i1 %i.cb to i8                     ; 3 uses
  store i8 %i.cc, ptr %i.y, align 2, !tbaa !25
  %i.cd = sext i8 %.0140.ph240 to i32
  %i.ce = zext i1 %i.cb to i32
  %.not174 = icmp eq i32 %i.cd, %i.ce
  br i1 %.not174, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cf = load i8, ptr %i.ae, align 8, !tbaa !58
  %.not175 = icmp eq i8 %i.cf, 0
  br i1 %.not175, label %bb.p, label %bb.aa

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cg = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.ch = sext i32 %.0146225 to i64
  %i.ci = getelementptr inbounds i8, ptr %i.cg, i64 %i.ch
  store i8 126, ptr %i.ci, align 1, !tbaa !28
  %i.cj = load ptr, ptr %i.f, align 8, !tbaa !54
  %.not180 = icmp eq ptr %i.cj, null              ; 2 uses
  br i1 %i.cb, label %.preheader196.preheader, label %.preheader197.preheader

.preheader197.preheader:                          ; preds = %bb.p
  br i1 %.not180, label %.preheader197.1, label %bb.q

bb.q:                                             ; preds = %.preheader197.preheader
  %i.ck = getelementptr inbounds nuw i8, ptr %.0155223, i64 4
  store i32 %i.bh, ptr %.0155223, align 4, !tbaa !29
  br label %.preheader197.1

.preheader197.1:                                  ; preds = %.preheader197.preheader, %bb.q
  %.5160 = phi ptr [ %i.ck, %bb.q ], [ %.0155223, %.preheader197.preheader ] ; 4 uses
  %i.cl = add nsw i32 %.0146225, 1                ; 3 uses
  %i.cm = icmp slt i32 %i.cl, %i.m
  br i1 %i.cm, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.preheader197.1
  %i.cn = load ptr, ptr %i.u, align 8, !tbaa !36  ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 104
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 91 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !57  ; 2 uses
  %i.cr = add i8 %i.cq, 1
  store i8 %i.cr, ptr %i.cp, align 1, !tbaa !57
  %i.cs = sext i8 %i.cq to i64
  %i.ct = getelementptr inbounds i8, ptr %i.co, i64 %i.cs
  store i8 125, ptr %i.ct, align 1, !tbaa !28
  store i32 15, ptr %1, align 4, !tbaa !12
  br label %.thread284

bb.s:                                             ; preds = %.preheader197.1
  %i.cu = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.cv = sext i32 %i.cl to i64
  %i.cw = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  store i8 125, ptr %i.cw, align 1, !tbaa !28
  %i.cx = load ptr, ptr %i.f, align 8, !tbaa !54
  %.not176.1 = icmp eq ptr %i.cx, null
  br i1 %.not176.1, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cy = getelementptr inbounds nuw i8, ptr %.5160, i64 4
  store i32 %i.bh, ptr %.5160, align 4, !tbaa !29
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.5160.1 = phi ptr [ %i.cy, %bb.t ], [ %.5160, %bb.s ]
  %i.cz = add nsw i32 %.0146225, 2
  br label %.thread284

.thread284:                                       ; preds = %bb.r, %bb.u
  %.6161.1 = phi ptr [ %.5160.1, %bb.u ], [ %.5160, %bb.r ]
  %.4.1 = phi i32 [ %i.cz, %bb.u ], [ %i.cl, %bb.r ]
  store i8 1, ptr %i.ae, align 8, !tbaa !58
  br label %bb.ah

.preheader196.preheader:                          ; preds = %bb.p
  br i1 %.not180, label %.preheader196.1, label %bb.v

bb.v:                                             ; preds = %.preheader196.preheader
  %i.da = getelementptr inbounds nuw i8, ptr %.0155223, i64 4
  store i32 %i.bh, ptr %.0155223, align 4, !tbaa !29
  br label %.preheader196.1

.preheader196.1:                                  ; preds = %.preheader196.preheader, %bb.v
  %.8163 = phi ptr [ %i.da, %bb.v ], [ %.0155223, %.preheader196.preheader ] ; 4 uses
  %i.db = add nsw i32 %.0146225, 1                ; 3 uses
  %i.dc = icmp slt i32 %i.db, %i.m
  br i1 %i.dc, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.preheader196.1
  %i.dd = load ptr, ptr %i.u, align 8, !tbaa !36  ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 104
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 91 ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !57  ; 2 uses
  %i.dh = add i8 %i.dg, 1
  store i8 %i.dh, ptr %i.df, align 1, !tbaa !57
  %i.di = sext i8 %i.dg to i64
  %i.dj = getelementptr inbounds i8, ptr %i.de, i64 %i.di
  store i8 123, ptr %i.dj, align 1, !tbaa !28
  store i32 15, ptr %1, align 4, !tbaa !12
  br label %.thread279

bb.x:                                             ; preds = %.preheader196.1
  %i.dk = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.dl = sext i32 %i.db to i64
  %i.dm = getelementptr inbounds i8, ptr %i.dk, i64 %i.dl
  store i8 123, ptr %i.dm, align 1, !tbaa !28
  %i.dn = load ptr, ptr %i.f, align 8, !tbaa !54
  %.not180.1 = icmp eq ptr %i.dn, null
  br i1 %.not180.1, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.do = getelementptr inbounds nuw i8, ptr %.8163, i64 4
  store i32 %i.bh, ptr %.8163, align 4, !tbaa !29
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.8163.1 = phi ptr [ %i.do, %bb.y ], [ %.8163, %bb.x ]
  %i.dp = add nsw i32 %.0146225, 2
  br label %.thread279

.thread279:                                       ; preds = %bb.w, %bb.z
  %.9164.1 = phi ptr [ %.8163.1, %bb.z ], [ %.8163, %bb.w ]
  %.6.1 = phi i32 [ %i.dp, %bb.z ], [ %i.db, %bb.w ]
  store i8 1, ptr %i.ae, align 8, !tbaa !58
  br label %bb.ab

bb.aa:                                            ; preds = %bb.o
  br i1 %i.cb, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %.thread279, %bb.aa
  %.7283 = phi i32 [ %.6.1, %.thread279 ], [ %.0146225, %bb.aa ] ; 6 uses
  %.10165282 = phi ptr [ %.9164.1, %.thread279 ], [ %.0155223, %bb.aa ] ; 5 uses
  %i.dq = icmp slt i32 %.7283, %i.m
  %i.dr = load i32, ptr %i.a, align 4, !tbaa !29  ; 3 uses
  %i.ds = lshr i32 %i.dr, 8
  %i.dt = trunc i32 %i.ds to i8                   ; 2 uses
  br i1 %i.dq, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.du = add nsw i32 %.7283, 1                   ; 5 uses
  %i.dv = sext i32 %.7283 to i64
  %i.dw = getelementptr inbounds i8, ptr %i.e, i64 %i.dv
  store i8 %i.dt, ptr %i.dw, align 1, !tbaa !28
  %.not178 = icmp eq ptr %.10165282, null
  br i1 %.not178, label %.thread189, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dx = getelementptr inbounds nuw i8, ptr %.10165282, i64 4 ; 2 uses
  store i32 %i.bh, ptr %.10165282, align 4, !tbaa !29
  %i.dy = icmp slt i32 %i.du, %i.m
  %.pre = load i32, ptr %i.a, align 4, !tbaa !29  ; 2 uses
  br i1 %i.dy, label %bb.ae, label %bb.af

.thread189:                                       ; preds = %bb.ac
  %i.dz = icmp slt i32 %i.du, %i.m
  br i1 %i.dz, label %.thread193, label %bb.af

.thread193:                                       ; preds = %.thread189
  %i.ea = trunc i32 %i.dr to i8
  %i.eb = add nsw i32 %.7283, 2
  %i.ec = sext i32 %i.du to i64
  %i.ed = getelementptr inbounds i8, ptr %i.e, i64 %i.ec
  store i8 %i.ea, ptr %i.ed, align 1, !tbaa !28
  br label %.outer

bb.ae:                                            ; preds = %bb.ad
  %i.ee = trunc i32 %.pre to i8
  %i.ef = add nsw i32 %.7283, 2
  %i.eg = sext i32 %i.du to i64
  %i.eh = getelementptr inbounds i8, ptr %i.e, i64 %i.eg
  store i8 %i.ee, ptr %i.eh, align 1, !tbaa !28
  %i.ei = getelementptr inbounds nuw i8, ptr %.10165282, i64 8
  store i32 %i.bh, ptr %i.dx, align 4, !tbaa !29
  br label %.outer

bb.af:                                            ; preds = %.thread189, %bb.ad
  %i.ej = phi i32 [ %i.dr, %.thread189 ], [ %.pre, %bb.ad ]
  %.11166192 = phi ptr [ null, %.thread189 ], [ %i.dx, %bb.ad ]
  %i.ek = trunc i32 %i.ej to i8
  %i.el = load ptr, ptr %i.u, align 8, !tbaa !36  ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 104
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 91 ; 2 uses
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !57  ; 2 uses
  %i.ep = add i8 %i.eo, 1
  store i8 %i.ep, ptr %i.en, align 1, !tbaa !57
  %i.eq = sext i8 %i.eo to i64
  %i.er = getelementptr inbounds i8, ptr %i.em, i64 %i.eq
  store i8 %i.ek, ptr %i.er, align 1, !tbaa !28
  store i32 15, ptr %1, align 4, !tbaa !12
  br label %.outer

bb.ag:                                            ; preds = %bb.ab
  %i.es = load ptr, ptr %i.u, align 8, !tbaa !36  ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 104
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 91 ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !57  ; 2 uses
  %i.ew = add i8 %i.ev, 1
  store i8 %i.ew, ptr %i.eu, align 1, !tbaa !57
  %i.ex = sext i8 %i.ev to i64
  %i.ey = getelementptr inbounds i8, ptr %i.et, i64 %i.ex
  store i8 %i.dt, ptr %i.ey, align 1, !tbaa !28
  %i.ez = load i32, ptr %i.a, align 4, !tbaa !29
  %i.fa = trunc i32 %i.ez to i8
  %i.fb = load ptr, ptr %i.u, align 8, !tbaa !36  ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 104
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 91 ; 2 uses
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !57  ; 2 uses
  %i.ff = add i8 %i.fe, 1
  store i8 %i.ff, ptr %i.fd, align 1, !tbaa !57
  %i.fg = sext i8 %i.fe to i64
  %i.fh = getelementptr inbounds i8, ptr %i.fc, i64 %i.fg
  store i8 %i.fa, ptr %i.fh, align 1, !tbaa !28
  store i32 15, ptr %1, align 4, !tbaa !12
  br label %.outer

bb.ah:                                            ; preds = %.thread284, %bb.aa
  %.7288 = phi i32 [ %.4.1, %.thread284 ], [ %.0146225, %bb.aa ] ; 4 uses
  %.10165287 = phi ptr [ %.6161.1, %.thread284 ], [ %.0155223, %bb.aa ] ; 4 uses
  %i.fi = icmp slt i32 %.7288, %i.m
  %i.fj = load i32, ptr %i.a, align 4, !tbaa !29
  %i.fk = trunc i32 %i.fj to i8                   ; 2 uses
  br i1 %i.fi, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.fl = add nsw i32 %.7288, 1                   ; 2 uses
  %i.fm = sext i32 %.7288 to i64
  %i.fn = getelementptr inbounds i8, ptr %i.e, i64 %i.fm
  store i8 %i.fk, ptr %i.fn, align 1, !tbaa !28
  %.not177 = icmp eq ptr %.10165287, null
  br i1 %.not177, label %.outer, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fo = getelementptr inbounds nuw i8, ptr %.10165287, i64 4
  store i32 %i.bh, ptr %.10165287, align 4, !tbaa !29
  br label %.outer

bb.ak:                                            ; preds = %bb.ah
  %i.fp = load ptr, ptr %i.u, align 8, !tbaa !36  ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 104
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 91 ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !57  ; 2 uses
  %i.ft = add i8 %i.fs, 1
  store i8 %i.ft, ptr %i.fr, align 1, !tbaa !57
  %i.fu = sext i8 %i.fs to i64
  %i.fv = getelementptr inbounds i8, ptr %i.fq, i64 %i.fu
  store i8 %i.fk, ptr %i.fv, align 1, !tbaa !28
  store i32 15, ptr %1, align 4, !tbaa !12
  br label %.outer

.loopexit200:                                     ; preds = %bb.m, %bb.k, %bb.l, %bb.j
  %i.fw = and i32 %i.bj, 63488
  %i.fx = icmp eq i32 %i.fw, 55296
  br i1 %i.fx, label %bb.al, label %bb.aq

bb.al:                                            ; preds = %.loopexit200
  %i.fy = and i32 %i.bj, 1024
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %bb.al
  %i.ga = load ptr, ptr %i.u, align 8, !tbaa !36  ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 84
  store i32 %i.bj, ptr %i.gb, align 4, !tbaa !24
  br label %bb.an

bb.an:                                            ; preds = %bb.a, %bb.am
  %i.gc = phi i32 [ %i.ab, %bb.a ], [ %i.bj, %bb.am ]
  %i.gd = phi ptr [ %i.v, %bb.a ], [ %i.ga, %bb.am ]
  %.1151 = phi i32 [ 0, %bb.a ], [ %i.bi, %bb.am ] ; 5 uses
  %.8 = phi i32 [ 0, %bb.a ], [ %.0146225, %bb.am ] ; 3 uses
  %.0143 = phi i32 [ 0, %bb.a ], [ %i.bj, %bb.am ] ; 2 uses
  %.1141 = phi i8 [ %i.z, %bb.a ], [ %.0140.ph240, %bb.am ] ; 3 uses
  %i.ge = icmp slt i32 %.1151, %i.t
  br i1 %i.ge, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.gf = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.gg = sext i32 %.1151 to i64
  %i.gh = getelementptr inbounds [2 x i8], ptr %i.gf, i64 %i.gg
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !31
  %i.gj = zext i16 %i.gi to i32                   ; 2 uses
  %i.gk = and i32 %i.gj, 64512
  %i.gl = icmp eq i32 %i.gk, 56320
  br i1 %i.gl, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gm = add nsw i32 %.1151, 1
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gd, i64 84
  %i.go = shl i32 %i.gc, 10
  %i.gp = add nuw nsw i32 %i.gj, -56613888
  %i.gq = add i32 %i.gp, %i.go
  store i32 0, ptr %i.gn, align 4, !tbaa !24
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit200, %bb.al, %bb.an, %bb.ap, %bb.ao
  %.sink = phi i32 [ 0, %bb.an ], [ 12, %bb.ao ], [ 12, %bb.al ], [ 10, %bb.ap ], [ 10, %.loopexit200 ]
  %.3153 = phi i32 [ %.1151, %bb.an ], [ %.1151, %bb.ao ], [ %i.bi, %bb.al ], [ %i.gm, %bb.ap ], [ %i.bi, %.loopexit200 ]
  %.9 = phi i32 [ %.8, %bb.an ], [ %.8, %bb.ao ], [ %.0146225, %bb.al ], [ %.8, %bb.ap ], [ %.0146225, %.loopexit200 ]
  %.2145 = phi i32 [ %.0143, %bb.an ], [ %.0143, %bb.ao ], [ %i.bj, %bb.al ], [ %i.gq, %bb.ap ], [ %i.bj, %.loopexit200 ]
  %.2142 = phi i8 [ %.1141, %bb.an ], [ %.1141, %bb.ao ], [ %.0140.ph240, %bb.al ], [ %.1141, %bb.ap ], [ %.0140.ph240, %.loopexit200 ]
  store i32 %.sink, ptr %1, align 4, !tbaa !12
  %i.gr = load ptr, ptr %i.u, align 8, !tbaa !36
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 84
  store i32 %.2145, ptr %i.gs, align 4, !tbaa !24
  %i.gt = sext i32 %.3153 to i64
  br label %.loopexit199

bb.ar:                                            ; preds = %bb.b
  store i32 15, ptr %1, align 4, !tbaa !12
  br label %.loopexit199

.outer:                                           ; preds = %.thread193, %bb.ak, %bb.aj, %bb.ai, %bb.ag, %bb.ae, %bb.af
  %.12 = phi ptr [ %i.ei, %bb.ae ], [ null, %.thread193 ], [ %.11166192, %bb.af ], [ %.10165282, %bb.ag ], [ %i.fo, %bb.aj ], [ null, %bb.ai ], [ %.10165287, %bb.ak ]
  %.10 = phi i32 [ %i.ef, %bb.ae ], [ %i.eb, %.thread193 ], [ %i.du, %bb.af ], [ %.7283, %bb.ag ], [ %i.fl, %bb.aj ], [ %i.fl, %bb.ai ], [ %.7288, %bb.ak ] ; 2 uses
  store i32 65535, ptr %i.a, align 4, !tbaa !29
  %i.gu = icmp slt i32 %i.bi, %i.t
  br i1 %i.gu, label %.lr.ph, label %.loopexit199, !llvm.loop !51

.loopexit199:                                     ; preds = %.outer, %.loopexit, %.preheader198, %bb.ar, %bb.aq
  %.4154 = phi i64 [ %i.gt, %bb.aq ], [ %indvars.iv, %bb.ar ], [ %indvars.iv.next, %.loopexit ], [ 0, %.preheader198 ], [ %indvars.iv.next, %.outer ]
  %.11 = phi i32 [ %.9, %bb.aq ], [ %.0146225, %bb.ar ], [ %.2148.1, %.loopexit ], [ 0, %.preheader198 ], [ %.10, %.outer ]
  %.3 = phi i8 [ %.2142, %bb.aq ], [ %.0140.ph240, %bb.ar ], [ %.0140.ph240, %.loopexit ], [ %i.z, %.preheader198 ], [ %i.cc, %.outer ]
  %i.gv = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.gw = sext i32 %.11 to i64
  %i.gx = getelementptr inbounds i8, ptr %i.gv, i64 %i.gw
  store ptr %i.gx, ptr %i.d, align 8, !tbaa !53
  %i.gy = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.gz = getelementptr inbounds [2 x i8], ptr %i.gy, i64 %.4154
  store ptr %i.gz, ptr %i.b, align 8, !tbaa !52
  store i8 %.3, ptr %i.y, align 2, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL12_HZ_WriteSubP25UConverterFromUnicodeArgsiP10UErrorCode(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 18 ; 2 uses
  %i.g = load i8, ptr %i.f, align 2, !tbaa !25
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 126, ptr %i.a, align 1, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 125, ptr %i.h, align 1, !tbaa !28
  store i8 0, ptr %i.f, align 2, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.i, %bb.b ], [ %i.a, %bb.a ]  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !59
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store i8 %i.l, ptr %.0, align 1, !tbaa !28
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.a to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = trunc i64 %i.p to i32
  call void @ucnv_cbFromUWriteBytes_78(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef %i.q, i32 noundef %1, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZL13_HZ_SafeClonePK10UConverterPvPiP10UErrorCode(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = load i32, ptr %3, align 4, !tbaa !12
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %2, align 4, !tbaa !29
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 600, ptr %2, align 4, !tbaa !29
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 576 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 1 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.i, align 8, !tbaa !61
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 62
  store i8 1, ptr %i.j, align 2, !tbaa !62
  store i32 288, ptr %i.a, align 4, !tbaa !29
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.n = call ptr @ucnv_safeClone_78(ptr noundef %i.l, ptr noundef nonnull %i.m, ptr noundef nonnull %i.a, ptr noundef nonnull %3)
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !61
  store ptr %i.n, ptr %i.o, align 8, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi ptr [ %1, %bb.d ], [ null, %bb.c ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL17_HZ_GetUnicodeSetPK10UConverterPK9USetAdder20UConverterUnicodeSetP10UErrorCode(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65
  %i.c = load ptr, ptr %1, align 8, !tbaa !66
  tail call void %i.b(ptr noundef %i.c, i32 noundef 0, i32 noundef 127)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !33
  tail call void @ucnv_MBCSGetFilteredUnicodeSetForUnicode_78(ptr noundef %i.h, ptr noundef nonnull %1, i32 noundef %2, i32 noundef 5, ptr noundef %3)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare signext i8 @ucnv_canCreateConverter_78(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ucnv_open_78(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0,1)
declare noalias ptr @uprv_calloc_78(i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @ucnv_close_78(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #3

declare i32 @ucnv_MBCSSimpleGetNextUChar_78(ptr noundef, ptr noundef, i32 noundef, i8 noundef signext) local_unnamed_addr #3

declare i32 @ucnv_MBCSFromUChar32_78(ptr noundef, i32 noundef, ptr noundef, i8 noundef signext) local_unnamed_addr #3

declare void @ucnv_cbFromUWriteBytes_78(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare ptr @ucnv_safeClone_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ucnv_MBCSGetFilteredUnicodeSetForUnicode_78(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { allocsize(0,1) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"short", !4, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"_ZTS10UErrorCode", !4, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"p1 _ZTS20UConverterSharedData", !9, i64 0}
!14 = !{!"_ZTS24UConverterCallbackReason", !4, i64 0}
!15 = !{!"_ZTS10UConverter", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !10, i64 40, !13, i64 48, !5, i64 56, !4, i64 60, !4, i64 61, !4, i64 62, !4, i64 63, !4, i64 64, !4, i64 65, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !4, i64 88, !4, i64 89, !4, i64 90, !4, i64 91, !4, i64 92, !4, i64 93, !4, i64 94, !4, i64 95, !4, i64 96, !4, i64 104, !4, i64 136, !4, i64 140, !4, i64 144, !5, i64 208, !4, i64 212, !4, i64 250, !4, i64 281, !4, i64 282, !4, i64 283, !14, i64 284}
!16 = !{!15, !9, i64 16}
!17 = !{!"p1 _ZTS10UConverter", !9, i64 0}
!18 = !{!"_ZTS16UConverterDataHZ", !17, i64 0, !5, i64 8, !5, i64 12, !4, i64 16, !4, i64 17, !4, i64 18, !4, i64 19}
!19 = !{!18, !17, i64 0}
!20 = !{!15, !5, i64 72}
!21 = !{!15, !5, i64 76}
!22 = !{!18, !4, i64 17}
!23 = !{!18, !4, i64 19}
!24 = !{!15, !5, i64 84}
!25 = !{!18, !4, i64 18}
!26 = !{!"p1 char16_t", !9, i64 0}
!27 = !{!"p1 int", !9, i64 0}
!28 = !{!4, !4, i64 0}
!29 = !{!5, !5, i64 0}
!30 = !{!"char16_t", !4, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!15, !13, i64 48}
!34 = !{!15, !4, i64 63}
!35 = !{!"_ZTS25UConverterFromUnicodeArgs", !8, i64 0, !4, i64 2, !17, i64 8, !26, i64 16, !26, i64 24, !10, i64 32, !10, i64 40, !27, i64 48}
!36 = !{!35, !17, i64 8}
!37 = !{!"_ZTS18UConverterLoadArgs", !5, i64 0, !5, i64 4, !4, i64 8, !4, i64 9, !8, i64 10, !5, i64 12, !10, i64 16, !10, i64 24, !10, i64 32}
!38 = !{!37, !4, i64 8}
!39 = !{!15, !4, i64 62}
!40 = !{!15, !5, i64 80}
!41 = distinct !{!41, !32}
!42 = !{!"_ZTS23UConverterToUnicodeArgs", !8, i64 0, !4, i64 2, !17, i64 8, !10, i64 16, !10, i64 24, !26, i64 32, !26, i64 40, !27, i64 48}
!43 = !{!42, !10, i64 16}
!44 = !{!42, !26, i64 32}
!45 = !{!42, !10, i64 24}
!46 = !{!42, !17, i64 8}
!47 = !{!42, !26, i64 40}
!48 = !{!42, !27, i64 48}
!49 = !{!15, !14, i64 284}
!50 = !{!15, !4, i64 64}
!51 = distinct !{!51, !32}
!52 = !{!35, !26, i64 16}
!53 = !{!35, !10, i64 32}
!54 = !{!35, !27, i64 48}
!55 = !{!35, !10, i64 40}
!56 = !{!35, !26, i64 24}
!57 = !{!15, !4, i64 91}
!58 = !{!18, !4, i64 16}
!59 = !{!15, !10, i64 40}
!60 = !{!"_ZTS13cloneHZStruct", !15, i64 0, !15, i64 288, !18, i64 576}
!61 = !{!60, !9, i64 16}
!62 = !{!60, !4, i64 62}
!63 = !{!"p1 _ZTS4USet", !9, i64 0}
!64 = !{!"_ZTS9USetAdder", !63, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40}
!65 = !{!64, !9, i64 16}
!66 = !{!64, !63, i64 0}
end_hunk_0
