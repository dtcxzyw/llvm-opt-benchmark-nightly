inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UConverterStaticData = type { i32, [60 x i8], i32, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i8, i8, [19 x i8] }
%struct.UConverterImpl = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.UConverterSharedData = type { i32, i32, ptr, ptr, i8, i8, ptr, i32, %struct.UConverterMBCSTable }
%struct.UConverterMBCSTable = type { i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, [64 x i16], ptr, ptr, i32, i8, i8, i8, i16, i32, ptr, ptr, ptr, ptr }

@_ZL13_HZStaticData = internal constant %struct.UConverterStaticData { i32 100, [60 x i8] c"HZ\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i8 0, i8 23, i8 1, i8 4, [4 x i8] c"\1A\00\00\00", i8 1, i8 0, i8 0, i8 0, i8 0, [19 x i8] zeroinitializer }, align 4
@_ZL7_HZImpl = internal constant %struct.UConverterImpl { i32 23, ptr null, ptr null, ptr @_ZL7_HZOpenP10UConverterP18UConverterLoadArgsP10UErrorCode, ptr @_ZL8_HZCloseP10UConverter, ptr @_ZL8_HZResetP10UConverter21UConverterResetChoice, ptr @_ZL37UConverter_toUnicode_HZ_OFFSETS_LOGICP23UConverterToUnicodeArgsP10UErrorCode, ptr @_ZL37UConverter_toUnicode_HZ_OFFSETS_LOGICP23UConverterToUnicodeArgsP10UErrorCode, ptr @_ZL39UConverter_fromUnicode_HZ_OFFSETS_LOGICP25UConverterFromUnicodeArgsP10UErrorCode, ptr @_ZL39UConverter_fromUnicode_HZ_OFFSETS_LOGICP25UConverterFromUnicodeArgsP10UErrorCode, ptr null, ptr null, ptr null, ptr @_ZL12_HZ_WriteSubP25UConverterFromUnicodeArgsiP10UErrorCode, ptr @_ZL13_HZ_SafeClonePK10UConverterPvPiP10UErrorCode, ptr @_ZL17_HZ_GetUnicodeSetPK10UConverterPK9USetAdder20UConverterUnicodeSetP10UErrorCode, ptr null, ptr null }, align 8
@_HZData_78 = dso_local local_unnamed_addr constant %struct.UConverterSharedData { i32 296, i32 -1, ptr null, ptr @_ZL13_HZStaticData, i8 0, i8 0, ptr @_ZL7_HZImpl, i32 0, %struct.UConverterMBCSTable zeroinitializer }, align 8
@.str = private unnamed_addr constant [4 x i8] c"GBK\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL7_HZOpenP10UConverterP18UConverterLoadArgsP10UErrorCode(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i8, ptr %i.a, align 8
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call signext i8 @ucnv_canCreateConverter_78(ptr noundef nonnull @.str, ptr noundef %2) #6 ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @ucnv_open_78(ptr noundef nonnull @.str, ptr noundef %2) #6 ; 2 uses
  %i.e = load i32, ptr %2, align 4
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.h = tail call noalias dereferenceable_or_null(24) ptr @uprv_calloc_78(i64 noundef 1, i64 noundef 24) #7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.i, align 8
  %.not15 = icmp eq ptr %i.h, null
  br i1 %.not15, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.d, ptr %i.h, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @ucnv_close_78(ptr noundef %i.d) #6
  store i32 7, ptr %2, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.f, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL8_HZCloseP10UConverter(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @ucnv_close_78(ptr noundef %i.c) #6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 62
  %i.e = load i8, ptr %i.d, align 2
  %.not5 = icmp eq i8 %i.e, 0
  br i1 %.not5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.a, align 8
  tail call void @uprv_free_78(ptr noundef %i.f) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr null, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL8_HZResetP10UConverter21UConverterResetChoice(ptr nofree noundef captures(none) %0, i32 noundef %1) #1 {
bb.a:
  %i.a = icmp slt i32 %1, 2
  br i1 %i.a, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  store i8 0, ptr %i.f, align 1
  %i.g = load ptr, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 19
  store i8 0, ptr %i.h, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.not14 = icmp eq i32 %1, 1
  br i1 %.not14, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.a, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 0, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not15 = icmp eq ptr %i.l, null
  br i1 %.not15, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i8 0, ptr %i.m, align 8
  %i.n = load ptr, ptr %i.k, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 0, ptr %i.o, align 8
  %i.p = load ptr, ptr %i.k, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 0, ptr %i.q, align 4
  %i.r = load ptr, ptr %i.k, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 18
  store i8 0, ptr %i.s, align 2
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL37UConverter_toUnicode_HZ_OFFSETS_LOGICP23UConverterToUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 15 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
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
  %.0.ph205 = phi ptr [ %i.c, %.lr.ph.lr.ph ], [ %i.t, %.outer.backedge ]
  %.0111.ph204 = phi ptr [ %i.e, %.lr.ph.lr.ph ], [ %.0111.ph.be, %.outer.backedge ] ; 12 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %.0199 = phi ptr [ %.0.ph205, %.lr.ph ], [ %i.t, %.backedge ] ; 6 uses
  %i.r = load ptr, ptr %i.n, align 8
  %i.s = icmp ult ptr %.0111.ph204, %i.r
  br i1 %i.s, label %bb.c, label %bb.ab

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.0199, i64 1 ; 13 uses
  %i.u = load i8, ptr %.0199, align 1             ; 12 uses
  %i.v = zext i8 %i.u to i32                      ; 5 uses
  %i.w = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 76 ; 4 uses
  %i.y = load i32, ptr %i.x, align 4
  %i.z = icmp eq i32 %i.y, 126
  br i1 %i.z, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.x, align 4
  switch i8 %i.u, label %bb.k [
    i8 10, label %.backedge
    i8 126, label %bb.e
    i8 123, label %bb.h
    i8 125, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.q, align 8             ; 2 uses
  %.not124 = icmp eq ptr %i.aa, null
  br i1 %.not124, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.b, align 8
  %i.ac = ptrtoint ptr %i.t to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = trunc i64 %i.ae to i32
  %i.ag = add i32 %i.af, -2
  %i.ah = load ptr, ptr %i.d, align 8
  %i.ai = ptrtoint ptr %.0111.ph204 to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 1
  %i.am = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.al
  store i32 %i.ag, ptr %i.am, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i16 126, ptr %.0111.ph204, align 2
  store i8 0, ptr %i.p, align 1
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.g, %bb.aa
  %.0111.ph.be = getelementptr inbounds nuw i8, ptr %.0111.ph204, i64 2 ; 2 uses
  %i.an = icmp ult ptr %i.t, %i.g
  br i1 %i.an, label %.lr.ph, label %.loopexit, !llvm.loop !5

bb.h:                                             ; preds = %bb.d, %bb.d
  %i.ao = icmp eq i8 %i.u, 123
  %i.ap = zext i1 %i.ao to i8
  store i8 %i.ap, ptr %i.o, align 1
  %i.aq = load i8, ptr %i.p, align 1
  %.not123 = icmp eq i8 %i.aq, 0
  br i1 %.not123, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %i.p, align 1
  store i32 18, ptr %1, align 4
  %i.ar = load ptr, ptr %i.h, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 284
  store i32 2, ptr %i.as, align 4
  %i.at = load ptr, ptr %i.h, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 65
  store i8 126, ptr %i.au, align 1
  %i.av = load ptr, ptr %i.h, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 66
  store i8 %i.u, ptr %i.aw, align 1
  %i.ax = load ptr, ptr %i.h, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  store i8 2, ptr %i.ay, align 8
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  store i8 1, ptr %i.p, align 1
  br label %.backedge

.backedge:                                        ; preds = %bb.s, %bb.t, %bb.j, %bb.w, %bb.d
  %i.az = icmp ult ptr %i.t, %i.g
  br i1 %i.az, label %bb.b, label %.loopexit, !llvm.loop !5

bb.k:                                             ; preds = %bb.d
  store i8 0, ptr %i.p, align 1
  store i32 18, ptr %1, align 4
  %i.ba = load ptr, ptr %i.h, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 65
  store i8 126, ptr %i.bb, align 1
  %i.bc = load i8, ptr %i.o, align 1
  %.not125 = icmp eq i8 %i.bc, 0
  br i1 %.not125, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = add i8 %i.u, -33
  %or.cond = icmp ult i8 %i.bd, 94
  br i1 %or.cond, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.be = icmp sgt i8 %i.u, -1
  br i1 %i.be, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bf = load ptr, ptr %i.h, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 66
  store i8 %i.u, ptr %i.bg, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.n
  %.sink = phi i8 [ 2, %bb.n ], [ 1, %bb.l ], [ 1, %bb.m ]
  %.1 = phi ptr [ %i.t, %bb.n ], [ %.0199, %bb.l ], [ %.0199, %bb.m ]
  %i.bh = load ptr, ptr %i.h, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  store i8 %.sink, ptr %i.bi, align 8
  br label %.loopexit

bb.p:                                             ; preds = %bb.c
  %i.bj = load i8, ptr %i.o, align 1
  %.not = icmp eq i8 %i.bj, 0
  br i1 %.not, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %i.w, i64 72 ; 3 uses
  %i.bl = load i32, ptr %i.bk, align 8            ; 5 uses
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.bn = icmp eq i8 %i.u, 126
  br i1 %i.bn, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 126, ptr %i.x, align 4
  br label %.backedge

bb.t:                                             ; preds = %bb.r
  %i.bo = or disjoint i32 %i.v, 256
  store i32 %i.bo, ptr %i.bk, align 8
  store i8 0, ptr %i.p, align 1
  br label %.backedge

bb.u:                                             ; preds = %bb.q
  %i.bp = add i32 %i.bl, 223
  %i.bq = and i32 %i.bp, 255
  %i.br = icmp samesign ult i32 %i.bq, 93
  %i.bs = add i8 %i.u, -33
  %i.bt = icmp ult i8 %i.bs, 94                   ; 2 uses
  %or.cond3 = select i1 %i.br, i1 %i.bt, i1 false
  br i1 %or.cond3, label %bb.y, label %.thread138

.thread138:                                       ; preds = %bb.u
  %i.bu = and i32 %i.bl, 255                      ; 2 uses
  %i.bv = shl nuw nsw i32 %i.bu, 8
  %i.bw = or disjoint i32 %i.bv, %i.v
  %i.bx = or disjoint i32 %i.bw, 65536
  store i32 0, ptr %i.bk, align 8
  store i32 12, ptr %1, align 4
  br i1 %i.bt, label %.thread143.thread268, label %.thread143.thread263

bb.v:                                             ; preds = %bb.p
  %i.by = icmp eq i8 %i.u, 126
  br i1 %i.by, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 126, ptr %i.x, align 4
  br label %.backedge

bb.x:                                             ; preds = %bb.v
  %i.bz = icmp sgt i8 %i.u, -1
  store i8 0, ptr %i.p, align 1
  br i1 %i.bz, label %.thread, label %.thread143.thread

.thread143.thread:                                ; preds = %bb.x
  store i32 12, ptr %1, align 4
  br label %.thread143.thread268

bb.y:                                             ; preds = %bb.u
  %i.ca = trunc i32 %i.bl to i8
  %i.cb = xor i8 %i.ca, -128
end_hunk_0
