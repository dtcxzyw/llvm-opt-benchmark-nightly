inline.NumInlined: 269
inline.NumDeleted: 70
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6icu_7814MessagePattern5clearEv:bb.a
  %.not.i = icmp eq i16 %i.c, 0
  %i.d = and i16 %i.b, 30
  %storemerge.i = select i1 %.not.i, i16 %i.d, i16 2
  store i16 %storemerge.i, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.f, i8 0, i64 7, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(127) ptr @_ZN6icu_7814MessagePatternaSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(127) %0, ptr noundef nonnull align 8 dereferenceable(127) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.d, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 8 dereferenceable(64) %i.f) #15 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.j = load i8, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i8 %i.j, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 125
  %i.m = load i8, ptr %i.l, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 125
  store i8 %i.m, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 126
  %i.p = load i8, ptr %i.o, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 126
  store i8 %i.p, ptr %i.q, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4
  %i.r = call noundef signext i8 @_ZN6icu_7814MessagePattern11copyStorageERKS0_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef nonnull align 8 dereferenceable(127) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %.not = icmp eq i8 %i.r, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = load i16, ptr %i.s, align 8              ; 2 uses
  %i.u = and i16 %i.t, 1
  %.not.i.i = icmp eq i16 %i.u, 0
  %i.v = and i16 %i.t, 30
  %storemerge.i.i = select i1 %.not.i.i, i16 %i.v, i16 2
  store i16 %storemerge.i.i, ptr %i.s, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.x, i8 0, i64 7, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7814MessagePatternD2Ev(ptr noundef nonnull align 8 dereferenceable(127) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7814MessagePatternE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.e = load i8, ptr %i.d, align 4
  %.not.i.i.i = icmp eq i8 %i.e, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8
  tail call void @uprv_free_78(ptr noundef %i.f) #15
  br label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EED2Ev.exit

_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EED2Ev.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.b) #15
  br label %bb.d

bb.d:                                             ; preds = %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EED2Ev.exit, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load ptr, ptr %i.g, align 8              ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.k = load i8, ptr %i.j, align 4
  %.not.i.i.i2 = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i2, label %_ZN6icu_7818MessagePatternListIdLi8EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %i.h, align 8
  tail call void @uprv_free_78(ptr noundef %i.l) #15
  br label %_ZN6icu_7818MessagePatternListIdLi8EED2Ev.exit

_ZN6icu_7818MessagePatternListIdLi8EED2Ev.exit:   ; preds = %bb.e, %bb.f
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.h) #15
  br label %bb.g

bb.g:                                             ; preds = %_ZN6icu_7818MessagePatternListIdLi8EED2Ev.exit, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.m) #15
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7814MessagePatternD0Ev(ptr noundef nonnull align 8 dereferenceable(127) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6icu_7814MessagePatternD2Ev(ptr noundef nonnull align 8 dereferenceable(127) %0) #15
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7814MessagePattern8preParseERKNS_13UnicodeStringEP11UParseErrorR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not8 = icmp eq ptr %2, null
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %2, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i16 0, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i16 0, ptr %i.e, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %1) #15 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.i, i8 0, i64 7, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN6icu_7814MessagePattern12parseMessageEiii22UMessagePatternArgTypeP11UParseErrorR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %6, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7814MessagePattern12addLimitPartEi23UMessagePatternPartTypeiiiR10UErrorCode.exit195

bb.b:                                             ; preds = %bb.a
  %i.c = icmp sgt i32 %3, 1023
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 8, ptr %6, align 4
  br label %_ZN6icu_7814MessagePattern12addLimitPartEi23UMessagePatternPartTypeiiiR10UErrorCode.exit195

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 30 uses
  %i.e = load i32, ptr %i.d, align 8              ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 23 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = icmp sgt i32 %i.i, %i.e
  br i1 %i.j, label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = shl nsw i32 %i.e, 1                      ; 3 uses
  %i.l = icmp sgt i32 %i.e, 0
  br i1 %i.l, label %bb.f, label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.m = zext nneg i32 %i.k to i64
  %i.n = shl nuw nsw i64 %i.m, 4
  %i.o = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.n) #16 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load i32, ptr %i.h, align 8
  %spec.select.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %i.p)
  %.1.i.i.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i.i.i, i32 %i.k)
  %i.q = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.r = sext i32 %.1.i.i.i to i64
  %i.s = shl nsw i64 %i.r, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.q, i64 %i.s, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 2 uses
  %i.u = load i8, ptr %i.t, align 4
  %.not.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i, label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @uprv_free_78(ptr noundef %i.q) #15
  br label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i

_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i: ; preds = %bb.h, %bb.g
  store ptr %i.o, ptr %i.g, align 8
  store i32 %i.k, ptr %i.h, align 8
  store i8 1, ptr %i.t, align 4
  %.pre.i = load ptr, ptr %i.f, align 8
  %.pre12.i = load i32, ptr %i.d, align 8
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit

_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit.thread: ; preds = %bb.e, %bb.f
  store i32 7, ptr %6, align 4
  br label %_ZN6icu_7814MessagePattern12addLimitPartEi23UMessagePatternPartTypeiiiR10UErrorCode.exit195

_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit: ; preds = %bb.d, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i
  %i.v = phi i32 [ %.pre12.i, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i ], [ %i.e, %bb.d ] ; 2 uses
  %i.w = phi ptr [ %.pre.i, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i ], [ %i.g, %bb.d ]
  %i.x = add nsw i32 %i.v, 1
  store i32 %i.x, ptr %i.d, align 8
  %i.y = sext i32 %i.v to i64
  %i.z = load ptr, ptr %i.w, align 8
  %i.aa = getelementptr inbounds [16 x i8], ptr %i.z, i64 %i.y ; 5 uses
  store i32 0, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i32 %1, ptr %i.ab, align 4
  %i.ac = trunc i32 %2 to i16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i16 %i.ac, ptr %i.ad, align 4
  %i.ae = trunc i32 %3 to i16
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 10
  store i16 %i.ae, ptr %i.af, align 2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.ag, align 4
  %.pre = load i32, ptr %6, align 4
  %i.ah = icmp slt i32 %.pre, 1
  br i1 %i.ah, label %.lr.ph, label %_ZN6icu_7814MessagePattern12addLimitPartEi23UMessagePatternPartTypeiiiR10UErrorCode.exit195

.lr.ph:                                           ; preds = %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit
  %i.ai = add nsw i32 %2, %1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ao = icmp eq i32 %4, 3
  %i.ap = icmp eq i32 %4, 5
  %or.cond15 = or i1 %i.ao, %i.ap                 ; 2 uses
  %i.aq = icmp sgt i32 %3, 0                      ; 2 uses
  %i.ar = icmp eq i32 %4, 2                       ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 126 ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit136
  %.0102225 = phi i32 [ %i.ai, %.lr.ph ], [ %.3105.ph, %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit136 ] ; 14 uses
  %i.au = load i16, ptr %i.ak, align 8            ; 3 uses
  %i.av = icmp slt i16 %i.au, 0
  %i.aw = ashr i16 %i.au, 5
  %i.ax = sext i16 %i.aw to i32
  %i.ay = load i32, ptr %i.al, align 4
  %i.az = select i1 %i.av, i32 %i.ay, i32 %i.ax   ; 6 uses
  %.not113 = icmp slt i32 %.0102225, %i.az
  br i1 %.not113, label %bb.j, label %bb.bt

bb.j:                                             ; preds = %bb.i
  %i.ba = add nsw i32 %.0102225, 1                ; 11 uses
  %i.bb = icmp ult i32 %.0102225, %i.az
  br i1 %i.bb, label %_ZNK6icu_7813UnicodeString6charAtEi.exit, label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit136

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.j
  %i.bc = and i16 %i.au, 2
  %.not.i.i.i115 = icmp eq i16 %i.bc, 0
  %i.bd = load ptr, ptr %i.an, align 8
  %i.be = select i1 %.not.i.i.i115, ptr %i.bd, ptr %i.am ; 2 uses
  %i.bf = sext i32 %.0102225 to i64
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2            ; 5 uses
  %i.bi = icmp eq i16 %i.bh, 39
  br i1 %i.bi, label %bb.k, label %bb.bc

bb.k:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.bj = icmp eq i32 %i.ba, %i.az
  br i1 %i.bj, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.bk = load ptr, ptr %i.f, align 8             ; 5 uses
  %i.bl = load i32, ptr %i.d, align 8             ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 8
  %i.bo = icmp sgt i32 %i.bn, %i.bl
  br i1 %i.bo, label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i123, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = shl nsw i32 %i.bl, 1                    ; 3 uses
  %i.bq = icmp sgt i32 %i.bl, 0
  br i1 %i.bq, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.br = zext nneg i32 %i.bp to i64
  %i.bs = shl nuw nsw i64 %i.br, 4
  %i.bt = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.bs) #16 ; 3 uses
  %.not.i.i.i116 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i116, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bu = load i32, ptr %i.bm, align 8
  %spec.select.i.i.i117 = tail call i32 @llvm.smin.i32(i32 %i.bl, i32 %i.bu)
  %.1.i.i.i118 = tail call i32 @llvm.smin.i32(i32 %spec.select.i.i.i117, i32 %i.bp)
  %i.bv = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.bw = sext i32 %.1.i.i.i118 to i64
  %i.bx = shl nsw i64 %i.bw, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bt, ptr align 4 %i.bv, i64 %i.bx, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bk, i64 12 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 4
  %.not.i.i.i.i119 = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i119, label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i120, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @uprv_free_78(ptr noundef %i.bv) #15
  br label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i120

_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i120: ; preds = %bb.p, %bb.o
  store ptr %i.bt, ptr %i.bk, align 8
  store i32 %i.bp, ptr %i.bm, align 8
  store i8 1, ptr %i.by, align 4
  %.pre.i121 = load ptr, ptr %i.f, align 8
  %.pre12.i122 = load i32, ptr %i.d, align 8
  br label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i123

bb.q:                                             ; preds = %bb.n, %bb.m
  store i32 7, ptr %6, align 4
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit124

_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i123: ; preds = %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i120, %bb.l
  %i.ca = phi i32 [ %.pre12.i122, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i120 ], [ %i.bl, %bb.l ] ; 2 uses
  %i.cb = phi ptr [ %.pre.i121, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i120 ], [ %i.bk, %bb.l ]
  %i.cc = add nsw i32 %i.ca, 1
  store i32 %i.cc, ptr %i.d, align 8
  %i.cd = sext i32 %i.ca to i64
  %i.ce = load ptr, ptr %i.cb, align 8
  %i.cf = getelementptr inbounds [16 x i8], ptr %i.ce, i64 %i.cd ; 5 uses
  store i32 3, ptr %i.cf, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  store i32 %i.az, ptr %i.cg, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i16 0, ptr %i.ch, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 10
  store i16 39, ptr %i.ci, align 2
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  store i32 0, ptr %i.cj, align 4
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit124

_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit124: ; preds = %bb.q, %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i123
  store i8 1, ptr %i.at, align 2
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit136

bb.r:                                             ; preds = %bb.k
  %i.ck = icmp ult i32 %i.ba, %i.az
  br i1 %i.ck, label %_ZNK6icu_7813UnicodeString6charAtEi.exit127, label %_ZNK6icu_7813UnicodeString6charAtEi.exit127.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit127:      ; preds = %bb.r
  %i.cl = sext i32 %i.ba to i64
  %i.cm = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.cl
  %i.cn = load i16, ptr %i.cm, align 2            ; 2 uses
  %i.co = icmp eq i16 %i.cn, 39
  br i1 %i.co, label %bb.s, label %_ZNK6icu_7813UnicodeString6charAtEi.exit127.thread

bb.s:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit127
  %i.cp = add nuw nsw i32 %.0102225, 2
  %i.cq = load ptr, ptr %i.f, align 8             ; 5 uses
  %i.cr = load i32, ptr %i.d, align 8             ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 3 uses
  %i.ct = load i32, ptr %i.cs, align 8
  %i.cu = icmp sgt i32 %i.ct, %i.cr
  br i1 %i.cu, label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i135, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cv = shl nsw i32 %i.cr, 1                    ; 3 uses
  %i.cw = icmp sgt i32 %i.cr, 0
  br i1 %i.cw, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.cx = zext nneg i32 %i.cv to i64
  %i.cy = shl nuw nsw i64 %i.cx, 4
  %i.cz = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.cy) #16 ; 3 uses
  %.not.i.i.i128 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i128, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.da = load i32, ptr %i.cs, align 8
  %spec.select.i.i.i129 = tail call i32 @llvm.smin.i32(i32 %i.cr, i32 %i.da)
  %.1.i.i.i130 = tail call i32 @llvm.smin.i32(i32 %spec.select.i.i.i129, i32 %i.cv)
  %i.db = load ptr, ptr %i.cq, align 8            ; 2 uses
  %i.dc = sext i32 %.1.i.i.i130 to i64
  %i.dd = shl nsw i64 %i.dc, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cz, ptr align 4 %i.db, i64 %i.dd, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %i.cq, i64 12 ; 2 uses
  %i.df = load i8, ptr %i.de, align 4
  %.not.i.i.i.i131 = icmp eq i8 %i.df, 0
  br i1 %.not.i.i.i.i131, label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i132, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @uprv_free_78(ptr noundef %i.db) #15
  br label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i132

_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i132: ; preds = %bb.w, %bb.v
  store ptr %i.cz, ptr %i.cq, align 8
  store i32 %i.cv, ptr %i.cs, align 8
  store i8 1, ptr %i.de, align 4
  %.pre.i133 = load ptr, ptr %i.f, align 8
  %.pre12.i134 = load i32, ptr %i.d, align 8
  br label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i135

bb.x:                                             ; preds = %bb.u, %bb.t
  store i32 7, ptr %6, align 4
  br label %_ZN6icu_7814MessagePattern12addLimitPartEi23UMessagePatternPartTypeiiiR10UErrorCode.exit195

_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i135: ; preds = %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i132, %bb.s
  %i.dg = phi i32 [ %.pre12.i134, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i132 ], [ %i.cr, %bb.s ] ; 2 uses
  %i.dh = phi ptr [ %.pre.i133, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i132 ], [ %i.cq, %bb.s ]
  %i.di = add nsw i32 %i.dg, 1
  store i32 %i.di, ptr %i.d, align 8
  %i.dj = sext i32 %i.dg to i64
  %i.dk = load ptr, ptr %i.dh, align 8
  %i.dl = getelementptr inbounds [16 x i8], ptr %i.dk, i64 %i.dj ; 5 uses
  store i32 2, ptr %i.dl, align 4
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store i32 %i.ba, ptr %i.dm, align 4
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i16 1, ptr %i.dn, align 4
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 10
  store i16 0, ptr %i.do, align 2
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  store i32 0, ptr %i.dp, align 4
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit136

_ZNK6icu_7813UnicodeString6charAtEi.exit127.thread: ; preds = %bb.r, %_ZNK6icu_7813UnicodeString6charAtEi.exit127
  %.0.i.i125199 = phi i16 [ %i.cn, %_ZNK6icu_7813UnicodeString6charAtEi.exit127 ], [ -1, %bb.r ] ; 3 uses
  %i.dq = load i32, ptr %i.as, align 8
  %.fr = freeze i32 %i.dq
  %i.dr = icmp eq i32 %.fr, 1
  br i1 %i.dr, label %bb.z, label %switch.early.test

switch.early.test:                                ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit127.thread
  switch i16 %.0.i.i125199, label %bb.y [
    i16 125, label %bb.z
    i16 123, label %bb.z
  ]

bb.y:                                             ; preds = %switch.early.test
  %i.ds = icmp eq i16 %.0.i.i125199, 124
  %or.cond8 = and i1 %i.ar, %i.ds
  %i.dt = icmp eq i16 %.0.i.i125199, 35
  %or.cond13 = and i1 %or.cond15, %i.dt
  %or.cond = or i1 %or.cond8, %or.cond13
  br i1 %or.cond, label %bb.z, label %bb.bb

bb.z:                                             ; preds = %switch.early.test, %switch.early.test, %_ZNK6icu_7813UnicodeString6charAtEi.exit127.thread, %bb.y
  %i.du = load ptr, ptr %i.f, align 8             ; 5 uses
  %i.dv = load i32, ptr %i.d, align 8             ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 3 uses
  %i.dx = load i32, ptr %i.dw, align 8
  %i.dy = icmp sgt i32 %i.dx, %i.dv
  br i1 %i.dy, label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i144, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dz = shl nsw i32 %i.dv, 1                    ; 3 uses
  %i.ea = icmp sgt i32 %i.dv, 0
  br i1 %i.ea, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.eb = zext nneg i32 %i.dz to i64
  %i.ec = shl nuw nsw i64 %i.eb, 4
  %i.ed = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.ec) #16 ; 3 uses
  %.not.i.i.i137 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i137, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ee = load i32, ptr %i.dw, align 8
  %spec.select.i.i.i138 = tail call i32 @llvm.smin.i32(i32 %i.dv, i32 %i.ee)
  %.1.i.i.i139 = tail call i32 @llvm.smin.i32(i32 %spec.select.i.i.i138, i32 %i.dz)
  %i.ef = load ptr, ptr %i.du, align 8            ; 2 uses
  %i.eg = sext i32 %.1.i.i.i139 to i64
  %i.eh = shl nsw i64 %i.eg, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ed, ptr align 4 %i.ef, i64 %i.eh, i1 false)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.du, i64 12 ; 2 uses
  %i.ej = load i8, ptr %i.ei, align 4
  %.not.i.i.i.i140 = icmp eq i8 %i.ej, 0
  br i1 %.not.i.i.i.i140, label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i141, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @uprv_free_78(ptr noundef %i.ef) #15
  br label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i141

_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i141: ; preds = %bb.ad, %bb.ac
  store ptr %i.ed, ptr %i.du, align 8
  store i32 %i.dz, ptr %i.dw, align 8
  store i8 1, ptr %i.ei, align 4
  %.pre.i142 = load ptr, ptr %i.f, align 8
  %.pre12.i143 = load i32, ptr %i.d, align 8
  br label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i144

bb.ae:                                            ; preds = %bb.ab, %bb.aa
  store i32 7, ptr %6, align 4
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit145.preheader

_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i144: ; preds = %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i141, %bb.z
  %i.ek = phi i32 [ %.pre12.i143, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i141 ], [ %i.dv, %bb.z ] ; 2 uses
  %i.el = phi ptr [ %.pre.i142, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i141 ], [ %i.du, %bb.z ]
  %i.em = add nsw i32 %i.ek, 1
  store i32 %i.em, ptr %i.d, align 8
  %i.en = sext i32 %i.ek to i64
  %i.eo = load ptr, ptr %i.el, align 8
  %i.ep = getelementptr inbounds [16 x i8], ptr %i.eo, i64 %i.en ; 5 uses
  store i32 2, ptr %i.ep, align 4
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  store i32 %.0102225, ptr %i.eq, align 4
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store i16 1, ptr %i.er, align 4
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 10
  store i16 0, ptr %i.es, align 2
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  store i32 0, ptr %i.et, align 4
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit145.preheader

_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit145.preheader: ; preds = %bb.ae, %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i144
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit145

_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit145: ; preds = %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit145.backedge, %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit145.preheader
  %.1103 = phi i32 [ %i.ba, %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit145.preheader ], [ %i.fh, %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit145.backedge ] ; 2 uses
  %i.eu = icmp slt i32 %.1103, -1
  %.pre.i146 = load i16, ptr %i.ak, align 8       ; 4 uses
  br i1 %i.eu, label %._ZNK6icu_7813UnicodeString8pinIndexERi.exit_crit_edge.i, label %bb.af

._ZNK6icu_7813UnicodeString8pinIndexERi.exit_crit_edge.i: ; preds = %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit145
  %.pre4.i = load i32, ptr %i.al, align 4
  %.pre5.i = ashr i16 %.pre.i146, 5
  %.pre6.i = sext i16 %.pre5.i to i32
  br label %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit

bb.af:                                            ; preds = %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit145
  %i.ev = add nsw i32 %.1103, 1
  %i.ew = icmp slt i16 %.pre.i146, 0
  %i.ex = ashr i16 %.pre.i146, 5
  %i.ey = sext i16 %i.ex to i32                   ; 2 uses
  %i.ez = load i32, ptr %i.al, align 4            ; 2 uses
  %i.fa = select i1 %i.ew, i32 %i.ez, i32 %i.ey
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.ev, i32 %i.fa)
  br label %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit

_ZNK6icu_7813UnicodeString7indexOfEDsi.exit:      ; preds = %._ZNK6icu_7813UnicodeString8pinIndexERi.exit_crit_edge.i, %bb.af
  %.pre-phi7.i = phi i32 [ %.pre6.i, %._ZNK6icu_7813UnicodeString8pinIndexERi.exit_crit_edge.i ], [ %i.ey, %bb.af ]
  %i.fb = phi i32 [ %.pre4.i, %._ZNK6icu_7813UnicodeString8pinIndexERi.exit_crit_edge.i ], [ %i.ez, %bb.af ]
  %.0.i = phi i32 [ 0, %._ZNK6icu_7813UnicodeString8pinIndexERi.exit_crit_edge.i ], [ %spec.select.i, %bb.af ] ; 2 uses
  %i.fc = icmp slt i16 %.pre.i146, 0
  %i.fd = select i1 %i.fc, i32 %i.fb, i32 %.pre-phi7.i
  %i.fe = sub nsw i32 %i.fd, %.0.i
  %i.ff = tail call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, i16 noundef zeroext 39, i32 noundef %.0.i, i32 noundef %i.fe) #15 ; 3 uses
  %i.fg = icmp sgt i32 %i.ff, -1
  br i1 %i.fg, label %bb.ag, label %bb.au

bb.ag:                                            ; preds = %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit
  %i.fh = add nuw nsw i32 %i.ff, 1                ; 5 uses
  %i.fi = load i16, ptr %i.ak, align 8            ; 3 uses
  %i.fj = icmp slt i16 %i.fi, 0
  %i.fk = ashr i16 %i.fi, 5
  %i.fl = sext i16 %i.fk to i32
  %i.fm = load i32, ptr %i.al, align 4
  %i.fn = select i1 %i.fj, i32 %i.fm, i32 %i.fl
  %i.fo = icmp ult i32 %i.fh, %i.fn
  br i1 %i.fo, label %_ZNK6icu_7813UnicodeString6charAtEi.exit149, label %_ZNK6icu_7813UnicodeString6charAtEi.exit149.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit149:      ; preds = %bb.ag
  %i.fp = and i16 %i.fi, 2
  %.not.i.i.i148 = icmp eq i16 %i.fp, 0
  %i.fq = load ptr, ptr %i.an, align 8
  %i.fr = select i1 %.not.i.i.i148, ptr %i.fq, ptr %i.am
  %i.fs = zext nneg i32 %i.fh to i64
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %i.fs
  %i.fu = load i16, ptr %i.ft, align 2
  %i.fv = icmp eq i16 %i.fu, 39
  br i1 %i.fv, label %bb.ah, label %_ZNK6icu_7813UnicodeString6charAtEi.exit149.thread

bb.ah:                                            ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit149
  %i.fw = load ptr, ptr %i.f, align 8             ; 5 uses
  %i.fx = load i32, ptr %i.d, align 8             ; 5 uses
  %i.fy = load i32, ptr %6, align 4
  %i.fz = icmp slt i32 %i.fy, 1
  br i1 %i.fz, label %bb.ai, label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit145.backedge

_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit145.backedge: ; preds = %bb.ah, %bb.an, %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i157
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit145, !llvm.loop !5

bb.ai:                                            ; preds = %bb.ah
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 8 ; 3 uses
  %i.gb = load i32, ptr %i.ga, align 8
  %i.gc = icmp sgt i32 %i.gb, %i.fx
  br i1 %i.gc, label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i157, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gd = shl nsw i32 %i.fx, 1                    ; 3 uses
  %i.ge = icmp sgt i32 %i.fx, 0
  br i1 %i.ge, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.gf = zext nneg i32 %i.gd to i64
  %i.gg = shl nuw nsw i64 %i.gf, 4
  %i.gh = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.gg) #16 ; 3 uses
  %.not.i.i.i150 = icmp eq ptr %i.gh, null
  br i1 %.not.i.i.i150, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gi = load i32, ptr %i.ga, align 8
  %spec.select.i.i.i151 = tail call i32 @llvm.smin.i32(i32 %i.fx, i32 %i.gi)
  %.1.i.i.i152 = tail call i32 @llvm.smin.i32(i32 %spec.select.i.i.i151, i32 %i.gd)
  %i.gj = load ptr, ptr %i.fw, align 8            ; 2 uses
  %i.gk = sext i32 %.1.i.i.i152 to i64
  %i.gl = shl nsw i64 %i.gk, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gh, ptr align 4 %i.gj, i64 %i.gl, i1 false)
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fw, i64 12 ; 2 uses
  %i.gn = load i8, ptr %i.gm, align 4
  %.not.i.i.i.i153 = icmp eq i8 %i.gn, 0
  br i1 %.not.i.i.i.i153, label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i154, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @uprv_free_78(ptr noundef %i.gj) #15
  br label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i154

_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i154: ; preds = %bb.am, %bb.al
  store ptr %i.gh, ptr %i.fw, align 8
  store i32 %i.gd, ptr %i.ga, align 8
  store i8 1, ptr %i.gm, align 4
  %.pre.i155 = load ptr, ptr %i.f, align 8
  %.pre12.i156 = load i32, ptr %i.d, align 8
  br label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i157

bb.an:                                            ; preds = %bb.ak, %bb.aj
  store i32 7, ptr %6, align 4
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit145.backedge

_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i157: ; preds = %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i154, %bb.ai
  %i.go = phi i32 [ %.pre12.i156, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i154 ], [ %i.fx, %bb.ai ] ; 2 uses
  %i.gp = phi ptr [ %.pre.i155, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i154 ], [ %i.fw, %bb.ai ]
  %i.gq = add nsw i32 %i.go, 1
  store i32 %i.gq, ptr %i.d, align 8
  %i.gr = sext i32 %i.go to i64
  %i.gs = load ptr, ptr %i.gp, align 8
  %i.gt = getelementptr inbounds [16 x i8], ptr %i.gs, i64 %i.gr ; 5 uses
  store i32 2, ptr %i.gt, align 4
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 4
  store i32 %i.fh, ptr %i.gu, align 4
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  store i16 1, ptr %i.gv, align 4
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 10
  store i16 0, ptr %i.gw, align 2
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 12
  store i32 0, ptr %i.gx, align 4
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit145.backedge

_ZNK6icu_7813UnicodeString6charAtEi.exit149.thread: ; preds = %bb.ag, %_ZNK6icu_7813UnicodeString6charAtEi.exit149
  %i.gy = load ptr, ptr %i.f, align 8             ; 5 uses
  %i.gz = load i32, ptr %i.d, align 8             ; 5 uses
  %i.ha = load i32, ptr %6, align 4
  %i.hb = icmp slt i32 %i.ha, 1
  br i1 %i.hb, label %bb.ao, label %_ZN6icu_7814MessagePattern12addLimitPartEi23UMessagePatternPartTypeiiiR10UErrorCode.exit195

bb.ao:                                            ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit149.thread
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 8 ; 3 uses
  %i.hd = load i32, ptr %i.hc, align 8
  %i.he = icmp sgt i32 %i.hd, %i.gz
  br i1 %i.he, label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i166, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hf = shl nsw i32 %i.gz, 1                    ; 3 uses
  %i.hg = icmp sgt i32 %i.gz, 0
  br i1 %i.hg, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.hh = zext nneg i32 %i.hf to i64
  %i.hi = shl nuw nsw i64 %i.hh, 4
  %i.hj = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.hi) #16 ; 3 uses
  %.not.i.i.i159 = icmp eq ptr %i.hj, null
  br i1 %.not.i.i.i159, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hk = load i32, ptr %i.hc, align 8
  %spec.select.i.i.i160 = tail call i32 @llvm.smin.i32(i32 %i.gz, i32 %i.hk)
  %.1.i.i.i161 = tail call i32 @llvm.smin.i32(i32 %spec.select.i.i.i160, i32 %i.hf)
  %i.hl = load ptr, ptr %i.gy, align 8            ; 2 uses
  %i.hm = sext i32 %.1.i.i.i161 to i64
  %i.hn = shl nsw i64 %i.hm, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.hj, ptr align 4 %i.hl, i64 %i.hn, i1 false)
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gy, i64 12 ; 2 uses
  %i.hp = load i8, ptr %i.ho, align 4
  %.not.i.i.i.i162 = icmp eq i8 %i.hp, 0
  br i1 %.not.i.i.i.i162, label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i163, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void @uprv_free_78(ptr noundef %i.hl) #15
  br label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i163

_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i163: ; preds = %bb.as, %bb.ar
  store ptr %i.hj, ptr %i.gy, align 8
  store i32 %i.hf, ptr %i.hc, align 8
  store i8 1, ptr %i.ho, align 4
  %.pre.i164 = load ptr, ptr %i.f, align 8
  %.pre12.i165 = load i32, ptr %i.d, align 8
  br label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i166

bb.at:                                            ; preds = %bb.aq, %bb.ap
  store i32 7, ptr %6, align 4
  br label %_ZN6icu_7814MessagePattern12addLimitPartEi23UMessagePatternPartTypeiiiR10UErrorCode.exit195

_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i166: ; preds = %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i163, %bb.ao
  %i.hq = phi i32 [ %.pre12.i165, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i163 ], [ %i.gz, %bb.ao ] ; 2 uses
  %i.hr = phi ptr [ %.pre.i164, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i163 ], [ %i.gy, %bb.ao ]
  %i.hs = add nsw i32 %i.hq, 1
  store i32 %i.hs, ptr %i.d, align 8
  %i.ht = sext i32 %i.hq to i64
  %i.hu = load ptr, ptr %i.hr, align 8
  %i.hv = getelementptr inbounds [16 x i8], ptr %i.hu, i64 %i.ht ; 5 uses
  store i32 2, ptr %i.hv, align 4
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
  store i32 %i.ff, ptr %i.hw, align 4
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store i16 1, ptr %i.hx, align 4
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 10
  store i16 0, ptr %i.hy, align 2
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 12
  store i32 0, ptr %i.hz, align 4
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit136

bb.au:                                            ; preds = %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit
  %i.ia = load i16, ptr %i.ak, align 8            ; 2 uses
  %i.ib = icmp slt i16 %i.ia, 0
  %i.ic = ashr i16 %i.ia, 5
  %i.id = sext i16 %i.ic to i32
  %i.ie = load i32, ptr %i.al, align 4
  %i.if = select i1 %i.ib, i32 %i.ie, i32 %i.id   ; 2 uses
  %i.ig = load ptr, ptr %i.f, align 8             ; 5 uses
  %i.ih = load i32, ptr %i.d, align 8             ; 5 uses
  %i.ii = load i32, ptr %6, align 4
  %i.ij = icmp slt i32 %i.ii, 1
  br i1 %i.ij, label %bb.av, label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit176

bb.av:                                            ; preds = %bb.au
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ig, i64 8 ; 3 uses
  %i.il = load i32, ptr %i.ik, align 8
  %i.im = icmp sgt i32 %i.il, %i.ih
  br i1 %i.im, label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i175, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.in = shl nsw i32 %i.ih, 1                    ; 3 uses
  %i.io = icmp sgt i32 %i.ih, 0
  br i1 %i.io, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.ip = zext nneg i32 %i.in to i64
  %i.iq = shl nuw nsw i64 %i.ip, 4
  %i.ir = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.iq) #16 ; 3 uses
  %.not.i.i.i168 = icmp eq ptr %i.ir, null
  br i1 %.not.i.i.i168, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.is = load i32, ptr %i.ik, align 8
  %spec.select.i.i.i169 = tail call i32 @llvm.smin.i32(i32 %i.ih, i32 %i.is)
  %.1.i.i.i170 = tail call i32 @llvm.smin.i32(i32 %spec.select.i.i.i169, i32 %i.in)
  %i.it = load ptr, ptr %i.ig, align 8            ; 2 uses
  %i.iu = sext i32 %.1.i.i.i170 to i64
  %i.iv = shl nsw i64 %i.iu, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ir, ptr align 4 %i.it, i64 %i.iv, i1 false)
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ig, i64 12 ; 2 uses
  %i.ix = load i8, ptr %i.iw, align 4
  %.not.i.i.i.i171 = icmp eq i8 %i.ix, 0
  br i1 %.not.i.i.i.i171, label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i172, label %bb.az

bb.az:                                            ; preds = %bb.ay
  tail call void @uprv_free_78(ptr noundef %i.it) #15
  br label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i172

_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i172: ; preds = %bb.az, %bb.ay
  store ptr %i.ir, ptr %i.ig, align 8
  store i32 %i.in, ptr %i.ik, align 8
  store i8 1, ptr %i.iw, align 4
  %.pre.i173 = load ptr, ptr %i.f, align 8
  %.pre12.i174 = load i32, ptr %i.d, align 8
  br label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i175

bb.ba:                                            ; preds = %bb.ax, %bb.aw
  store i32 7, ptr %6, align 4
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit176

_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i175: ; preds = %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i172, %bb.av
  %i.iy = phi i32 [ %.pre12.i174, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i172 ], [ %i.ih, %bb.av ] ; 2 uses
  %i.iz = phi ptr [ %.pre.i173, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i172 ], [ %i.ig, %bb.av ]
  %i.ja = add nsw i32 %i.iy, 1
  store i32 %i.ja, ptr %i.d, align 8
  %i.jb = sext i32 %i.iy to i64
  %i.jc = load ptr, ptr %i.iz, align 8
  %i.jd = getelementptr inbounds [16 x i8], ptr %i.jc, i64 %i.jb ; 5 uses
  store i32 3, ptr %i.jd, align 4
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 4
  store i32 %i.if, ptr %i.je, align 4
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  store i16 0, ptr %i.jf, align 4
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 10
  store i16 39, ptr %i.jg, align 2
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jd, i64 12
  store i32 0, ptr %i.jh, align 4
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit176

_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit176: ; preds = %bb.au, %bb.ba, %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i175
  store i8 1, ptr %i.at, align 2
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit136

bb.bb:                                            ; preds = %bb.y
  tail call void @_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef 3, i32 noundef %i.ba, i32 noundef 0, i32 noundef 39, ptr noundef nonnull align 4 dereferenceable(4) %6)
  store i8 1, ptr %i.at, align 2
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit136

bb.bc:                                            ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.ji = icmp eq i16 %i.bh, 35
  %or.cond18 = and i1 %or.cond15, %i.ji
  br i1 %or.cond18, label %bb.bd, label %bb.bj

bb.bd:                                            ; preds = %bb.bc
  %i.jj = load ptr, ptr %i.f, align 8             ; 5 uses
  %i.jk = load i32, ptr %i.d, align 8             ; 5 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 8 ; 3 uses
  %i.jm = load i32, ptr %i.jl, align 8
  %i.jn = icmp sgt i32 %i.jm, %i.jk
  br i1 %i.jn, label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i184, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jo = shl nsw i32 %i.jk, 1                    ; 3 uses
  %i.jp = icmp sgt i32 %i.jk, 0
  br i1 %i.jp, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %i.jq = zext nneg i32 %i.jo to i64
  %i.jr = shl nuw nsw i64 %i.jq, 4
  %i.js = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.jr) #16 ; 3 uses
  %.not.i.i.i177 = icmp eq ptr %i.js, null
  br i1 %.not.i.i.i177, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jt = load i32, ptr %i.jl, align 8
  %spec.select.i.i.i178 = tail call i32 @llvm.smin.i32(i32 %i.jk, i32 %i.jt)
  %.1.i.i.i179 = tail call i32 @llvm.smin.i32(i32 %spec.select.i.i.i178, i32 %i.jo)
  %i.ju = load ptr, ptr %i.jj, align 8            ; 2 uses
  %i.jv = sext i32 %.1.i.i.i179 to i64
  %i.jw = shl nsw i64 %i.jv, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.js, ptr align 4 %i.ju, i64 %i.jw, i1 false)
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jj, i64 12 ; 2 uses
  %i.jy = load i8, ptr %i.jx, align 4
  %.not.i.i.i.i180 = icmp eq i8 %i.jy, 0
  br i1 %.not.i.i.i.i180, label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i181, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void @uprv_free_78(ptr noundef %i.ju) #15
  br label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i181

_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i181: ; preds = %bb.bh, %bb.bg
  store ptr %i.js, ptr %i.jj, align 8
  store i32 %i.jo, ptr %i.jl, align 8
  store i8 1, ptr %i.jx, align 4
  %.pre.i182 = load ptr, ptr %i.f, align 8
  %.pre12.i183 = load i32, ptr %i.d, align 8
  br label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i184

bb.bi:                                            ; preds = %bb.bf, %bb.be
  store i32 7, ptr %6, align 4
  br label %_ZN6icu_7814MessagePattern12addLimitPartEi23UMessagePatternPartTypeiiiR10UErrorCode.exit195

_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i184: ; preds = %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i181, %bb.bd
  %i.jz = phi i32 [ %.pre12.i183, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i181 ], [ %i.jk, %bb.bd ] ; 2 uses
  %i.ka = phi ptr [ %.pre.i182, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i181 ], [ %i.jj, %bb.bd ]
  %i.kb = add nsw i32 %i.jz, 1
  store i32 %i.kb, ptr %i.d, align 8
  %i.kc = sext i32 %i.jz to i64
  %i.kd = load ptr, ptr %i.ka, align 8
  %i.ke = getelementptr inbounds [16 x i8], ptr %i.kd, i64 %i.kc ; 5 uses
  store i32 4, ptr %i.ke, align 4
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 4
  store i32 %.0102225, ptr %i.kf, align 4
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  store i16 1, ptr %i.kg, align 4
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 10
  store i16 0, ptr %i.kh, align 2
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ke, i64 12
  store i32 0, ptr %i.ki, align 4
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit136

bb.bj:                                            ; preds = %bb.bc
  %i.kj = icmp eq i16 %i.bh, 123
  br i1 %i.kj, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.kk = tail call noundef i32 @_ZN6icu_7814MessagePattern8parseArgEiiiP11UParseErrorR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef %.0102225, i32 noundef 1, i32 noundef %3, ptr noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %6)
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit136

bb.bl:                                            ; preds = %bb.bj
  %i.kl = icmp eq i16 %i.bh, 125                  ; 2 uses
  %or.cond21 = and i1 %i.aq, %i.kl
  %i.km = icmp eq i16 %i.bh, 124
  %or.cond24 = and i1 %i.ar, %i.km
  %or.cond226 = or i1 %or.cond21, %or.cond24
  br i1 %or.cond226, label %bb.bm, label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit136

bb.bm:                                            ; preds = %bb.bl
  %i.kn = and i1 %i.ar, %i.kl
  %not. = xor i1 %i.kn, true
  %i.ko = load i32, ptr %i.d, align 8             ; 6 uses
  %i.kp = load ptr, ptr %i.f, align 8
  %i.kq = sext i32 %i.e to i64
  %i.kr = load ptr, ptr %i.kp, align 8
  %i.ks = getelementptr inbounds [16 x i8], ptr %i.kr, i64 %i.kq
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 12
  store i32 %i.ko, ptr %i.kt, align 4
  %i.ku = load ptr, ptr %i.f, align 8             ; 5 uses
  %i.kv = load i32, ptr %6, align 4
  %i.kw = icmp slt i32 %i.kv, 1
  br i1 %i.kw, label %bb.bn, label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit136.thread

bb.bn:                                            ; preds = %bb.bm
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ku, i64 8 ; 3 uses
  %i.ky = load i32, ptr %i.kx, align 8
  %i.kz = icmp sgt i32 %i.ky, %i.ko
  br i1 %i.kz, label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.la = shl nsw i32 %i.ko, 1                    ; 3 uses
  %i.lb = icmp sgt i32 %i.ko, 0
  br i1 %i.lb, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %bb.bo
  %i.lc = zext nneg i32 %i.la to i64
  %i.ld = shl nuw nsw i64 %i.lc, 4
  %i.le = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.ld) #16 ; 3 uses
  %.not.i.i.i.i186 = icmp eq ptr %i.le, null
  br i1 %.not.i.i.i.i186, label %bb.bs, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.lf = load i32, ptr %i.kx, align 8
  %spec.select.i.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.ko, i32 %i.lf)
  %.1.i.i.i.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i.i.i.i, i32 %i.la)
  %i.lg = load ptr, ptr %i.ku, align 8            ; 2 uses
  %i.lh = sext i32 %.1.i.i.i.i to i64
  %i.li = shl nsw i64 %i.lh, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.le, ptr align 4 %i.lg, i64 %i.li, i1 false)
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ku, i64 12 ; 2 uses
  %i.lk = load i8, ptr %i.lj, align 4
  %.not.i.i.i.i.i = icmp eq i8 %i.lk, 0
  br i1 %.not.i.i.i.i.i, label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  tail call void @uprv_free_78(ptr noundef %i.lg) #15
  br label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i.i

_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i.i: ; preds = %bb.br, %bb.bq
  store ptr %i.le, ptr %i.ku, align 8
  store i32 %i.la, ptr %i.kx, align 8
  store i8 1, ptr %i.lj, align 4
  %.pre.i.i = load ptr, ptr %i.f, align 8
  %.pre12.i.i = load i32, ptr %i.d, align 8
  br label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i.i

bb.bs:                                            ; preds = %bb.bp, %bb.bo
  store i32 7, ptr %6, align 4
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit136.thread

_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i.i: ; preds = %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i.i, %bb.bn
  %i.ll = phi i32 [ %.pre12.i.i, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i.i ], [ %i.ko, %bb.bn ] ; 2 uses
  %i.lm = phi ptr [ %.pre.i.i, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i.i ], [ %i.ku, %bb.bn ]
  %i.ln = add nsw i32 %i.ll, 1
  store i32 %i.ln, ptr %i.d, align 8
  %i.lo = sext i32 %i.ll to i64
  %i.lp = load ptr, ptr %i.lm, align 8
  %i.lq = getelementptr inbounds [16 x i8], ptr %i.lp, i64 %i.lo ; 5 uses
  store i32 1, ptr %i.lq, align 4
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 4
  store i32 %.0102225, ptr %i.lr, align 4
  %i.ls = zext i1 %not. to i16
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  store i16 %i.ls, ptr %i.lt, align 4
  %i.lu = trunc i32 %3 to i16
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lq, i64 10
  store i16 %i.lu, ptr %i.lv, align 2
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lq, i64 12
  store i32 0, ptr %i.lw, align 4
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit136.thread

_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit136.thread: ; preds = %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i.i, %bb.bs, %bb.bm
  %.0102. = select i1 %i.ar, i32 %.0102225, i32 %i.ba
  br label %_ZN6icu_7814MessagePattern12addLimitPartEi23UMessagePatternPartTypeiiiR10UErrorCode.exit195

_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit136: ; preds = %bb.bl, %bb.j, %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i184, %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i166, %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i135, %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit176, %bb.bb, %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit124, %bb.bk
  %.3105.ph = phi i32 [ %i.ba, %bb.j ], [ %i.kk, %bb.bk ], [ %i.fh, %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i166 ], [ %i.ba, %bb.bb ], [ %i.if, %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit176 ], [ %i.cp, %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i135 ], [ %i.ba, %bb.bl ], [ %i.az, %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit124 ], [ %i.ba, %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i184 ]
  %.pr = load i32, ptr %6, align 4
  %i.lx = icmp slt i32 %.pr, 1
  br i1 %i.lx, label %bb.i, label %_ZN6icu_7814MessagePattern12addLimitPartEi23UMessagePatternPartTypeiiiR10UErrorCode.exit195, !llvm.loop !7

bb.bt:                                            ; preds = %bb.i
  br i1 %i.aq, label %bb.bu, label %._crit_edge

._crit_edge:                                      ; preds = %bb.bt
  %.pre233 = load ptr, ptr %i.f, align 8
  %.pre234 = load ptr, ptr %.pre233, align 8
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.ly = icmp eq i32 %3, 1
  %or.cond.i = and i1 %i.ly, %i.ar
  br i1 %or.cond.i, label %_ZN6icu_7814MessagePattern23inTopLevelChoiceMessageEi22UMessagePatternArgType.exit, label %_ZN6icu_7814MessagePattern23inTopLevelChoiceMessageEi22UMessagePatternArgType.exit.thread

_ZN6icu_7814MessagePattern23inTopLevelChoiceMessageEi22UMessagePatternArgType.exit: ; preds = %bb.bu
  %i.lz = load ptr, ptr %i.f, align 8
  %i.ma = load ptr, ptr %i.lz, align 8            ; 2 uses
  %i.mb = load i32, ptr %i.ma, align 4
  %.not = icmp eq i32 %i.mb, 0
  br i1 %.not, label %_ZN6icu_7814MessagePattern23inTopLevelChoiceMessageEi22UMessagePatternArgType.exit.thread, label %bb.bv

_ZN6icu_7814MessagePattern23inTopLevelChoiceMessageEi22UMessagePatternArgType.exit.thread: ; preds = %bb.bu, %_ZN6icu_7814MessagePattern23inTopLevelChoiceMessageEi22UMessagePatternArgType.exit
  tail call void @_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef %5, i32 noundef 0)
  store i32 65801, ptr %6, align 4
  br label %_ZN6icu_7814MessagePattern12addLimitPartEi23UMessagePatternPartTypeiiiR10UErrorCode.exit195

bb.bv:                                            ; preds = %._crit_edge, %_ZN6icu_7814MessagePattern23inTopLevelChoiceMessageEi22UMessagePatternArgType.exit
  %i.mc = phi ptr [ %.pre234, %._crit_edge ], [ %i.ma, %_ZN6icu_7814MessagePattern23inTopLevelChoiceMessageEi22UMessagePatternArgType.exit ]
  %i.md = load i32, ptr %i.d, align 8             ; 6 uses
  %i.me = sext i32 %i.e to i64
  %i.mf = getelementptr inbounds [16 x i8], ptr %i.mc, i64 %i.me
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 12
  store i32 %i.md, ptr %i.mg, align 4
  %i.mh = load ptr, ptr %i.f, align 8             ; 5 uses
  %i.mi = load i32, ptr %6, align 4
  %i.mj = icmp slt i32 %i.mi, 1
  br i1 %i.mj, label %bb.bw, label %_ZN6icu_7814MessagePattern12addLimitPartEi23UMessagePatternPartTypeiiiR10UErrorCode.exit195

bb.bw:                                            ; preds = %bb.bv
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mh, i64 8 ; 3 uses
  %i.ml = load i32, ptr %i.mk, align 8
  %i.mm = icmp sgt i32 %i.ml, %i.md
  br i1 %i.mm, label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i.i194, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.mn = shl nsw i32 %i.md, 1                    ; 3 uses
  %i.mo = icmp sgt i32 %i.md, 0
  br i1 %i.mo, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %bb.bx
  %i.mp = zext nneg i32 %i.mn to i64
  %i.mq = shl nuw nsw i64 %i.mp, 4
  %i.mr = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.mq) #16 ; 3 uses
  %.not.i.i.i.i187 = icmp eq ptr %i.mr, null
  br i1 %.not.i.i.i.i187, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ms = load i32, ptr %i.mk, align 8
  %spec.select.i.i.i.i188 = tail call i32 @llvm.smin.i32(i32 %i.md, i32 %i.ms)
  %.1.i.i.i.i189 = tail call i32 @llvm.smin.i32(i32 %spec.select.i.i.i.i188, i32 %i.mn)
  %i.mt = load ptr, ptr %i.mh, align 8            ; 2 uses
  %i.mu = sext i32 %.1.i.i.i.i189 to i64
  %i.mv = shl nsw i64 %i.mu, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.mr, ptr align 4 %i.mt, i64 %i.mv, i1 false)
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mh, i64 12 ; 2 uses
  %i.mx = load i8, ptr %i.mw, align 4
  %.not.i.i.i.i.i190 = icmp eq i8 %i.mx, 0
  br i1 %.not.i.i.i.i.i190, label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i.i191, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  tail call void @uprv_free_78(ptr noundef %i.mt) #15
  br label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i.i191

_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i.i191: ; preds = %bb.ca, %bb.bz
  store ptr %i.mr, ptr %i.mh, align 8
  store i32 %i.mn, ptr %i.mk, align 8
  store i8 1, ptr %i.mw, align 4
  %.pre.i.i192 = load ptr, ptr %i.f, align 8
  %.pre12.i.i193 = load i32, ptr %i.d, align 8
  br label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i.i194

bb.cb:                                            ; preds = %bb.by, %bb.bx
  store i32 7, ptr %6, align 4
  br label %_ZN6icu_7814MessagePattern12addLimitPartEi23UMessagePatternPartTypeiiiR10UErrorCode.exit195

_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i.i194: ; preds = %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i.i191, %bb.bw
  %i.my = phi i32 [ %.pre12.i.i193, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i.i191 ], [ %i.md, %bb.bw ] ; 2 uses
  %i.mz = phi ptr [ %.pre.i.i192, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i.i191 ], [ %i.mh, %bb.bw ]
  %i.na = add nsw i32 %i.my, 1
  store i32 %i.na, ptr %i.d, align 8
  %i.nb = sext i32 %i.my to i64
  %i.nc = load ptr, ptr %i.mz, align 8
  %i.nd = getelementptr inbounds [16 x i8], ptr %i.nc, i64 %i.nb ; 5 uses
  store i32 1, ptr %i.nd, align 4
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 4
  store i32 %.0102225, ptr %i.ne, align 4
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  store i16 0, ptr %i.nf, align 4
  %i.ng = trunc i32 %3 to i16
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nd, i64 10
  store i16 %i.ng, ptr %i.nh, align 2
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nd, i64 12
  store i32 0, ptr %i.ni, align 4
  br label %_ZN6icu_7814MessagePattern12addLimitPartEi23UMessagePatternPartTypeiiiR10UErrorCode.exit195

_ZN6icu_7814MessagePattern12addLimitPartEi23UMessagePatternPartTypeiiiR10UErrorCode.exit195: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit149.thread, %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit136, %bb.x, %bb.at, %bb.bi, %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit.thread, %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit, %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i.i194, %bb.cb, %bb.bv, %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit136.thread, %_ZN6icu_7814MessagePattern23inTopLevelChoiceMessageEi22UMessagePatternArgType.exit.thread, %bb.a, %bb.c
  %.4 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ %.0102., %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit136.thread ], [ %.0102225, %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i.i194 ], [ 0, %_ZN6icu_7814MessagePattern23inTopLevelChoiceMessageEi22UMessagePatternArgType.exit.thread ], [ %.0102225, %bb.bv ], [ %.0102225, %bb.cb ], [ 0, %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit ], [ 0, %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit.thread ], [ 0, %bb.x ], [ 0, %bb.bi ], [ 0, %bb.at ], [ 0, %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit136 ], [ 0, %_ZNK6icu_7813UnicodeString6charAtEi.exit149.thread ]
  ret i32 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN6icu_7814MessagePattern9postParseEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(127) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.c, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not2 = icmp eq ptr %i.f, null
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.g, ptr %i.h, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(127) ptr @_ZN6icu_7814MessagePattern16parseChoiceStyleERKNS_13UnicodeStringEP11UParseErrorR10UErrorCode(ptr noundef nonnull returned align 8 dereferenceable(127) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7814MessagePattern8preParseERKNS_13UnicodeStringEP11UParseErrorR10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  %.not8.i = icmp eq ptr %2, null
  br i1 %.not8.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %2, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i16 0, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i16 0, ptr %i.e, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %1) #15 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.i, i8 0, i64 7, i1 false)
  br label %_ZN6icu_7814MessagePattern8preParseERKNS_13UnicodeStringEP11UParseErrorR10UErrorCode.exit

_ZN6icu_7814MessagePattern8preParseERKNS_13UnicodeStringEP11UParseErrorR10UErrorCode.exit: ; preds = %bb.a, %bb.d
  %i.j = tail call noundef i32 @_ZN6icu_7814MessagePattern16parseChoiceStyleEiiP11UParseErrorR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef 0, i32 noundef 0, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN6icu_7814MessagePattern8preParseERKNS_13UnicodeStringEP11UParseErrorR10UErrorCode.exit
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.m, ptr %i.n, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN6icu_7814MessagePattern8preParseERKNS_13UnicodeStringEP11UParseErrorR10UErrorCode.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not2.i = icmp eq ptr %i.p, null
  br i1 %.not2.i, label %_ZN6icu_7814MessagePattern9postParseEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.q, ptr %i.r, align 8
  br label %_ZN6icu_7814MessagePattern9postParseEv.exit

_ZN6icu_7814MessagePattern9postParseEv.exit:      ; preds = %bb.f, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN6icu_7814MessagePattern16parseChoiceStyleEiiP11UParseErrorR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %4, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.d = load i16, ptr %i.c, align 8              ; 4 uses
  %i.e = and i16 %i.d, 17
  %.not.i.i = icmp eq i16 %i.e, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN6icu_7814MessagePattern14skipWhiteSpaceEi.exit

bb.c:                                             ; preds = %bb.b
  %i.f = and i16 %i.d, 2
  %.not2.i.i = icmp eq i16 %i.f, 0
  br i1 %.not2.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 26
  br label %_ZN6icu_7814MessagePattern14skipWhiteSpaceEi.exit

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8
  br label %_ZN6icu_7814MessagePattern14skipWhiteSpaceEi.exit

_ZN6icu_7814MessagePattern14skipWhiteSpaceEi.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.i, %bb.e ], [ %i.g, %bb.d ], [ null, %bb.b ] ; 2 uses
  %i.j = icmp slt i16 %i.d, 0
  %i.k = ashr i16 %i.d, 5
  %i.l = sext i16 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 7 uses
  %i.n = load i32, ptr %i.m, align 4
  %i.o = select i1 %i.j, i32 %i.n, i32 %i.l
  %i.p = sext i32 %1 to i64
  %i.q = getelementptr inbounds [2 x i8], ptr %.0.i.i, i64 %i.p
  %i.r = sub nsw i32 %i.o, %1
  %i.s = tail call noundef ptr @_ZN6icu_7812PatternProps14skipWhiteSpaceEPKDsi(ptr noundef %i.q, i32 noundef %i.r) #15
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %.0.i.i to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = lshr exact i64 %i.v, 1
  %i.x = trunc i64 %i.w to i32                    ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = load i16, ptr %i.c, align 8              ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN6icu_7814MessagePattern16parseChoiceStyleEiiP11UParseErrorR10UErrorCode:bb.a
  br i1 %i.aw, label %.thread.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.ax, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  tail call void @_ZNK6icu_7813UnicodeString9doExtractEiiPDsi(ptr noundef nonnull align 8 dereferenceable(64) %i.y, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.ay, i32 noundef 0) #15
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.ay) #15, !srcloc !8
  store i16 0, ptr %i.ay, align 4
  %i.az = load i16, ptr %i.c, align 8             ; 3 uses
  %i.ba = icmp slt i16 %i.az, 0
  %i.bb = ashr i16 %i.az, 5
  %i.bc = sext i16 %i.bb to i32
  %i.bd = load i32, ptr %i.m, align 4
  %i.be = select i1 %i.ba, i32 %i.bd, i32 %i.bc   ; 2 uses
  %i.bf = icmp sgt i32 %i.be, 15
  br i1 %i.bf, label %bb.i, label %_ZNK6icu_7813UnicodeStringixEi.exit33.i

bb.i:                                             ; preds = %bb.h
  %i.bg = and i16 %i.az, 2
  %.not.i.i.i32.i = icmp eq i16 %i.bg, 0
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = select i1 %.not.i.i.i32.i, ptr %i.bj, ptr %i.bh
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 28
  %i.bm = load i16, ptr %i.bl, align 2
  %i.bn = and i16 %i.bm, -1024
  %i.bo = icmp eq i16 %i.bn, -10240
  %i.bp = select i1 %i.bo, i32 14, i32 15
  br label %_ZNK6icu_7813UnicodeStringixEi.exit33.i

_ZNK6icu_7813UnicodeStringixEi.exit33.i:          ; preds = %bb.i, %bb.h
  %.1.i = phi i32 [ %i.be, %bb.h ], [ %i.bp, %bb.i ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  tail call void @_ZNK6icu_7813UnicodeString9doExtractEiiPDsi(ptr noundef nonnull align 8 dereferenceable(64) %i.y, i32 noundef 0, i32 noundef %.1.i, ptr noundef nonnull %i.bq, i32 noundef 0) #15
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.bq) #15, !srcloc !8
  %i.br = sext i32 %.1.i to i64
  %i.bs = getelementptr inbounds [2 x i8], ptr %i.bq, i64 %i.br
  store i16 0, ptr %i.bs, align 2
  br label %.thread.sink.split

_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i.lr.ph, %_ZNK6icu_7813UnicodeString6charAtEi.exit85.thread
  %i.bt = phi i32 [ %i.ae, %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i.lr.ph ], [ %i.ga, %_ZNK6icu_7813UnicodeString6charAtEi.exit85.thread ] ; 3 uses
  %i.bu = phi i16 [ %i.z, %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i.lr.ph ], [ %i.fv, %_ZNK6icu_7813UnicodeString6charAtEi.exit85.thread ]
  %.059104 = phi i32 [ %i.x, %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i.lr.ph ], [ %i.fu, %_ZNK6icu_7813UnicodeString6charAtEi.exit85.thread ] ; 5 uses
  %i.bv = and i16 %i.bu, 2
  %.not.i.i.i.i = icmp eq i16 %i.bv, 0
  %i.bw = load ptr, ptr %i.aj, align 8
  %i.bx = select i1 %.not.i.i.i.i, ptr %i.bw, ptr %i.ai
  %i.by = sext i32 %.059104 to i64
  %i.bz = sext i32 %i.bt to i64
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i

_ZNK6icu_7813UnicodeString6charAtEi.exit.i:       ; preds = %.thread39.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.by, %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i ], [ %indvars.iv.next.i, %.thread39.i ] ; 4 uses
  %i.ca = getelementptr inbounds [2 x i8], ptr %i.bx, i64 %indvars.iv.i
  %i.cb = load i16, ptr %i.ca, align 2            ; 4 uses
  %i.cc = icmp ult i16 %i.cb, 48
  br i1 %i.cc, label %switch.early.test.i, label %bb.j

switch.early.test.i:                              ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i
  switch i16 %i.cb, label %.thread44.loopexit.split.loop.exit.i [
    i16 46, label %.thread39.i
    i16 45, label %.thread39.i
    i16 43, label %.thread39.i
  ]

bb.j:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i
  %i.cd = icmp ugt i16 %i.cb, 57
  br i1 %i.cd, label %switch.early.test32.i, label %.thread39.i

switch.early.test32.i:                            ; preds = %bb.j
  switch i16 %i.cb, label %.thread44.loopexit.split.loop.exit54.i [
    i16 8734, label %.thread39.i
    i16 101, label %.thread39.i
    i16 69, label %.thread39.i
  ]

.thread39.i:                                      ; preds = %switch.early.test32.i, %switch.early.test32.i, %switch.early.test32.i, %bb.j, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.ce = icmp slt i64 %indvars.iv.next.i, %i.bz
  %i.cf = trunc nsw i64 %indvars.iv.next.i to i32
  %i.cg = icmp ugt i32 %i.bt, %i.cf
  %or.cond.i = and i1 %i.ce, %i.cg
  br i1 %or.cond.i, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, label %_ZN6icu_7814MessagePattern10skipDoubleEi.exit

.thread44.loopexit.split.loop.exit.i:             ; preds = %switch.early.test.i
  %i.ch = trunc nsw i64 %indvars.iv.i to i32
  br label %_ZN6icu_7814MessagePattern10skipDoubleEi.exit

.thread44.loopexit.split.loop.exit54.i:           ; preds = %switch.early.test32.i
  %i.ci = trunc nsw i64 %indvars.iv.i to i32
  br label %_ZN6icu_7814MessagePattern10skipDoubleEi.exit

_ZN6icu_7814MessagePattern10skipDoubleEi.exit:    ; preds = %.thread39.i, %.thread44.loopexit.split.loop.exit.i, %.thread44.loopexit.split.loop.exit54.i
  %.031.lcssa.i = phi i32 [ %i.ch, %.thread44.loopexit.split.loop.exit.i ], [ %i.ci, %.thread44.loopexit.split.loop.exit54.i ], [ %i.bt, %.thread39.i ] ; 5 uses
  %i.cj = icmp eq i32 %.031.lcssa.i, %.059104
  br i1 %i.cj, label %_ZN6icu_7814MessagePattern10skipDoubleEi.exit.thread, label %bb.k

_ZN6icu_7814MessagePattern10skipDoubleEi.exit.thread: ; preds = %_ZN6icu_7814MessagePattern10skipDoubleEi.exit, %_ZNK6icu_7813UnicodeString6charAtEi.exit85.thread, %bb.f, %.critedge.preheader
  tail call void @_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef %3, i32 noundef %1)
  br label %.thread.sink.split

bb.k:                                             ; preds = %_ZN6icu_7814MessagePattern10skipDoubleEi.exit
  %i.ck = sub nsw i32 %.031.lcssa.i, %.059104
  %i.cl = icmp sgt i32 %i.ck, 65535
  br i1 %i.cl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef %3, i32 noundef %.059104)
  br label %.thread.sink.split

bb.m:                                             ; preds = %bb.k
  tail call void @_ZN6icu_7814MessagePattern11parseDoubleEiiaP11UParseErrorR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef %.059104, i32 noundef %.031.lcssa.i, i8 noundef signext 1, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %i.cm = load i32, ptr %4, align 4
  %i.cn = icmp slt i32 %i.cm, 1
  br i1 %i.cn, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.co = load i16, ptr %i.c, align 8             ; 4 uses
  %i.cp = and i16 %i.co, 17
  %.not.i.i74 = icmp eq i16 %i.cp, 0
  br i1 %.not.i.i74, label %bb.o, label %_ZN6icu_7814MessagePattern14skipWhiteSpaceEi.exit77

bb.o:                                             ; preds = %bb.n
  %i.cq = and i16 %i.co, 2
  %.not2.i.i76 = icmp eq i16 %i.cq, 0
  br i1 %.not2.i.i76, label %bb.p, label %_ZN6icu_7814MessagePattern14skipWhiteSpaceEi.exit77

bb.p:                                             ; preds = %bb.o
  %i.cr = load ptr, ptr %i.aj, align 8
  br label %_ZN6icu_7814MessagePattern14skipWhiteSpaceEi.exit77

_ZN6icu_7814MessagePattern14skipWhiteSpaceEi.exit77: ; preds = %bb.o, %bb.n, %bb.p
  %.0.i.i75 = phi ptr [ %i.cr, %bb.p ], [ null, %bb.n ], [ %i.ai, %bb.o ] ; 2 uses
  %i.cs = icmp slt i16 %i.co, 0
  %i.ct = ashr i16 %i.co, 5
  %i.cu = sext i16 %i.ct to i32
  %i.cv = load i32, ptr %i.m, align 4
  %i.cw = select i1 %i.cs, i32 %i.cv, i32 %i.cu
  %i.cx = sext i32 %.031.lcssa.i to i64
  %i.cy = getelementptr inbounds [2 x i8], ptr %.0.i.i75, i64 %i.cx
  %i.cz = sub nsw i32 %i.cw, %.031.lcssa.i
  %i.da = tail call noundef ptr @_ZN6icu_7812PatternProps14skipWhiteSpaceEPKDsi(ptr noundef %i.cy, i32 noundef %i.cz) #15
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = ptrtoint ptr %.0.i.i75 to i64
  %i.dd = sub i64 %i.db, %i.dc                    ; 2 uses
  %i.de = lshr exact i64 %i.dd, 1
  %i.df = trunc i64 %i.de to i32                  ; 4 uses
  %i.dg = load i16, ptr %i.c, align 8             ; 3 uses
  %i.dh = icmp slt i16 %i.dg, 0
  %i.di = ashr i16 %i.dg, 5
  %i.dj = sext i16 %i.di to i32
  %i.dk = load i32, ptr %i.m, align 4
  %i.dl = select i1 %i.dh, i32 %i.dk, i32 %i.dj   ; 2 uses
  %i.dm = icmp eq i32 %i.dl, %i.df
  br i1 %i.dm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN6icu_7814MessagePattern14skipWhiteSpaceEi.exit77
  tail call void @_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef %3, i32 noundef %1)
  br label %.thread.sink.split

bb.r:                                             ; preds = %_ZN6icu_7814MessagePattern14skipWhiteSpaceEi.exit77
  %i.dn = icmp ugt i32 %i.dl, %i.df
  br i1 %i.dn, label %_ZNK6icu_7813UnicodeString6charAtEi.exit80, label %_ZNK6icu_7813UnicodeString6charAtEi.exit80.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit80:       ; preds = %bb.r
  %i.do = and i16 %i.dg, 2
  %.not.i.i.i79 = icmp eq i16 %i.do, 0
  %i.dp = load ptr, ptr %i.aj, align 8
  %i.dq = select i1 %.not.i.i.i79, ptr %i.dp, ptr %i.ai
  %sext94 = shl i64 %i.dd, 31
  %i.dr = ashr i64 %sext94, 32
  %i.ds = getelementptr inbounds [2 x i8], ptr %i.dq, i64 %i.dr
  %i.dt = load i16, ptr %i.ds, align 2
  switch i16 %i.dt, label %_ZNK6icu_7813UnicodeString6charAtEi.exit80.thread [
    i16 8804, label %bb.s
    i16 60, label %bb.s
    i16 35, label %bb.s
  ]

_ZNK6icu_7813UnicodeString6charAtEi.exit80.thread: ; preds = %bb.r, %_ZNK6icu_7813UnicodeString6charAtEi.exit80
  tail call void @_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef %3, i32 noundef %1)
  br label %.thread.sink.split

bb.s:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit80, %_ZNK6icu_7813UnicodeString6charAtEi.exit80, %_ZNK6icu_7813UnicodeString6charAtEi.exit80
  %i.du = load ptr, ptr %i.ak, align 8            ; 5 uses
  %i.dv = load i32, ptr %i.al, align 8            ; 5 uses
  %i.dw = load i32, ptr %4, align 4
  %i.dx = icmp slt i32 %i.dw, 1
  br i1 %i.dx, label %bb.t, label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit

bb.t:                                             ; preds = %bb.s
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 3 uses
  %i.dz = load i32, ptr %i.dy, align 8
  %i.ea = icmp sgt i32 %i.dz, %i.dv
  br i1 %i.ea, label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eb = shl nsw i32 %i.dv, 1                    ; 3 uses
  %i.ec = icmp sgt i32 %i.dv, 0
  br i1 %i.ec, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.ed = zext nneg i32 %i.eb to i64
  %i.ee = shl nuw nsw i64 %i.ed, 4
  %i.ef = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.ee) #16 ; 3 uses
  %.not.i.i.i81 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i81, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eg = load i32, ptr %i.dy, align 8
  %spec.select.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.dv, i32 %i.eg)
  %.1.i.i.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i.i.i, i32 %i.eb)
  %i.eh = load ptr, ptr %i.du, align 8            ; 2 uses
  %i.ei = sext i32 %.1.i.i.i to i64
  %i.ej = shl nsw i64 %i.ei, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ef, ptr align 4 %i.eh, i64 %i.ej, i1 false)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.du, i64 12 ; 2 uses
  %i.el = load i8, ptr %i.ek, align 4
  %.not.i.i.i.i82 = icmp eq i8 %i.el, 0
  br i1 %.not.i.i.i.i82, label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @uprv_free_78(ptr noundef %i.eh) #15
  br label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i

_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i: ; preds = %bb.x, %bb.w
  store ptr %i.ef, ptr %i.du, align 8
  store i32 %i.eb, ptr %i.dy, align 8
  store i8 1, ptr %i.ek, align 4
  %.pre.i = load ptr, ptr %i.ak, align 8
  %.pre12.i = load i32, ptr %i.al, align 8
  br label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i

bb.y:                                             ; preds = %bb.v, %bb.u
  store i32 7, ptr %4, align 4
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit

_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i: ; preds = %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i, %bb.t
  %i.em = phi i32 [ %.pre12.i, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i ], [ %i.dv, %bb.t ] ; 2 uses
  %i.en = phi ptr [ %.pre.i, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i ], [ %i.du, %bb.t ]
  %i.eo = add nsw i32 %i.em, 1
  store i32 %i.eo, ptr %i.al, align 8
  %i.ep = sext i32 %i.em to i64
  %i.eq = load ptr, ptr %i.en, align 8
  %i.er = getelementptr inbounds [16 x i8], ptr %i.eq, i64 %i.ep ; 5 uses
  store i32 11, ptr %i.er, align 4
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  store i32 %i.df, ptr %i.es, align 4
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store i16 1, ptr %i.et, align 4
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 10
  store i16 0, ptr %i.eu, align 2
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  store i32 0, ptr %i.ev, align 4
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit

_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit: ; preds = %bb.s, %bb.y, %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i
  %i.ew = add nuw nsw i32 %i.df, 1
  %i.ex = tail call noundef i32 @_ZN6icu_7814MessagePattern12parseMessageEiii22UMessagePatternArgTypeP11UParseErrorR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef %i.ew, i32 noundef 0, i32 noundef %i.am, i32 noundef 2, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4) ; 7 uses
  %i.ey = load i32, ptr %4, align 4
  %i.ez = icmp slt i32 %i.ey, 1
  br i1 %i.ez, label %bb.z, label %.thread

bb.z:                                             ; preds = %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit
  %i.fa = load i16, ptr %i.c, align 8             ; 3 uses
  %i.fb = icmp slt i16 %i.fa, 0
  %i.fc = ashr i16 %i.fa, 5
  %i.fd = sext i16 %i.fc to i32
  %i.fe = load i32, ptr %i.m, align 4
  %i.ff = select i1 %i.fb, i32 %i.fe, i32 %i.fd   ; 2 uses
  %i.fg = icmp eq i32 %i.ex, %i.ff
  br i1 %i.fg, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fh = icmp ult i32 %i.ex, %i.ff
  br i1 %i.fh, label %_ZNK6icu_7813UnicodeString6charAtEi.exit85, label %_ZNK6icu_7813UnicodeString6charAtEi.exit85.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit85:       ; preds = %bb.aa
  %i.fi = and i16 %i.fa, 2
  %.not.i.i.i84 = icmp eq i16 %i.fi, 0
  %i.fj = load ptr, ptr %i.aj, align 8
  %i.fk = select i1 %.not.i.i.i84, ptr %i.fj, ptr %i.ai
  %i.fl = sext i32 %i.ex to i64
  %i.fm = getelementptr inbounds [2 x i8], ptr %i.fk, i64 %i.fl
  %i.fn = load i16, ptr %i.fm, align 2
  %i.fo = icmp eq i16 %i.fn, 125
  br i1 %i.fo, label %bb.ab, label %_ZNK6icu_7813UnicodeString6charAtEi.exit85.thread

bb.ab:                                            ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit85
  %i.fp = icmp sgt i32 %2, 0
  br i1 %i.fp, label %.thread, label %_ZN6icu_7814MessagePattern22inMessageFormatPatternEi.exit

_ZN6icu_7814MessagePattern22inMessageFormatPatternEi.exit: ; preds = %bb.ab
  %i.fq = load ptr, ptr %i.ak, align 8
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = load i32, ptr %i.fr, align 4
  %.not = icmp eq i32 %i.fs, 0
  br i1 %.not, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %_ZN6icu_7814MessagePattern22inMessageFormatPatternEi.exit
  tail call void @_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef %3, i32 noundef %1)
  br label %.thread.sink.split

_ZNK6icu_7813UnicodeString6charAtEi.exit85.thread: ; preds = %bb.aa, %_ZNK6icu_7813UnicodeString6charAtEi.exit85
  %i.ft = add nsw i32 %i.ex, 1
  %i.fu = tail call noundef i32 @_ZN6icu_7814MessagePattern14skipWhiteSpaceEi(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef %i.ft) ; 3 uses
  %i.fv = load i16, ptr %i.c, align 8             ; 3 uses
  %i.fw = icmp slt i16 %i.fv, 0
  %i.fx = ashr i16 %i.fv, 5
  %i.fy = sext i16 %i.fx to i32
  %i.fz = load i32, ptr %i.m, align 4
  %i.ga = select i1 %i.fw, i32 %i.fz, i32 %i.fy   ; 3 uses
  %i.gb = icmp slt i32 %i.fu, %i.ga
  %i.gc = icmp ult i32 %i.fu, %i.ga
  %or.cond47.i = and i1 %i.gb, %i.gc
  br i1 %or.cond47.i, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i, label %_ZN6icu_7814MessagePattern10skipDoubleEi.exit.thread, !llvm.loop !9

.thread.sink.split:                               ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit33.i, %bb.g, %_ZN6icu_7814MessagePattern10skipDoubleEi.exit.thread, %bb.l, %bb.q, %_ZNK6icu_7813UnicodeString6charAtEi.exit80.thread, %bb.ac
  %.sink = phi i32 [ 65799, %bb.ac ], [ 65799, %_ZNK6icu_7813UnicodeString6charAtEi.exit80.thread ], [ 65799, %bb.q ], [ 8, %bb.l ], [ 65799, %_ZN6icu_7814MessagePattern10skipDoubleEi.exit.thread ], [ 65799, %bb.g ], [ 65799, %_ZNK6icu_7813UnicodeStringixEi.exit33.i ]
  store i32 %.sink, ptr %4, align 4
  br label %.thread

.thread:                                          ; preds = %bb.z, %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit, %bb.m, %.thread.sink.split, %bb.ab, %_ZN6icu_7814MessagePattern22inMessageFormatPatternEi.exit, %bb.a
  %.4 = phi i32 [ 0, %bb.a ], [ 0, %.thread.sink.split ], [ %i.ex, %bb.ab ], [ %i.ex, %_ZN6icu_7814MessagePattern22inMessageFormatPatternEi.exit ], [ 0, %bb.m ], [ 0, %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit ], [ %i.ex, %bb.z ]
  ret i32 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(127) ptr @_ZN6icu_7814MessagePattern16parsePluralStyleERKNS_13UnicodeStringEP11UParseErrorR10UErrorCode(ptr noundef nonnull returned align 8 dereferenceable(127) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7814MessagePattern8preParseERKNS_13UnicodeStringEP11UParseErrorR10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  %.not8.i = icmp eq ptr %2, null
  br i1 %.not8.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %2, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i16 0, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i16 0, ptr %i.e, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %1) #15 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.i, i8 0, i64 7, i1 false)
  br label %_ZN6icu_7814MessagePattern8preParseERKNS_13UnicodeStringEP11UParseErrorR10UErrorCode.exit

_ZN6icu_7814MessagePattern8preParseERKNS_13UnicodeStringEP11UParseErrorR10UErrorCode.exit: ; preds = %bb.a, %bb.d
  %i.j = tail call noundef i32 @_ZN6icu_7814MessagePattern24parsePluralOrSelectStyleE22UMessagePatternArgTypeiiP11UParseErrorR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef 3, i32 noundef 0, i32 noundef 0, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN6icu_7814MessagePattern8preParseERKNS_13UnicodeStringEP11UParseErrorR10UErrorCode.exit
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.m, ptr %i.n, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN6icu_7814MessagePattern8preParseERKNS_13UnicodeStringEP11UParseErrorR10UErrorCode.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not2.i = icmp eq ptr %i.p, null
  br i1 %.not2.i, label %_ZN6icu_7814MessagePattern9postParseEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.q, ptr %i.r, align 8
  br label %_ZN6icu_7814MessagePattern9postParseEv.exit

_ZN6icu_7814MessagePattern9postParseEv.exit:      ; preds = %bb.f, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN6icu_7814MessagePattern24parsePluralOrSelectStyleE22UMessagePatternArgTypeiiP11UParseErrorR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %5, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %.preheader, label %.thread201

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
end_hunk_1
begin_hunk_2_@_ZN6icu_7814MessagePattern24parsePluralOrSelectStyleE22UMessagePatternArgTypeiiP11UParseErrorR10UErrorCode:bb.a
  %i.ad = trunc i64 %i.ac to i32                  ; 15 uses
  %i.ae = load i16, ptr %i.c, align 8             ; 6 uses
  %i.af = icmp slt i16 %i.ae, 0
  %i.ag = ashr i16 %i.ae, 5
  %i.ah = sext i16 %i.ag to i32
  %i.ai = load i32, ptr %i.d, align 4
  %i.aj = select i1 %i.af, i32 %i.ai, i32 %i.ah   ; 8 uses
  %i.ak = icmp eq i32 %i.aj, %i.ad                ; 2 uses
  br i1 %i.ak, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN6icu_7814MessagePattern14skipWhiteSpaceEi.exit
  %i.al = icmp ugt i32 %i.aj, %i.ad               ; 2 uses
  br i1 %i.al, label %_ZNK6icu_7813UnicodeString6charAtEi.exit, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.d
  %i.am = and i16 %i.ae, 2
  %.not.i.i.i = icmp eq i16 %i.am, 0
  %i.an = load ptr, ptr %i.f, align 8
  %i.ao = select i1 %.not.i.i.i, ptr %i.an, ptr %i.e
  %sext = shl i64 %i.ab, 31
  %i.ap = ashr i64 %sext, 32
  %i.aq = getelementptr inbounds [2 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2
  %i.as = icmp eq i16 %i.ar, 125
  br i1 %i.as, label %bb.e, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

bb.e:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit, %_ZN6icu_7814MessagePattern14skipWhiteSpaceEi.exit
  %i.at = icmp sgt i32 %3, 0
  br i1 %i.at, label %_ZN6icu_7814MessagePattern22inMessageFormatPatternEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = load ptr, ptr %i.j, align 8
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = icmp eq i32 %i.aw, 0
  %i.ay = zext i1 %i.ax to i8
  br label %_ZN6icu_7814MessagePattern22inMessageFormatPatternEi.exit

_ZN6icu_7814MessagePattern22inMessageFormatPatternEi.exit: ; preds = %bb.e, %bb.f
  %i.az = phi i8 [ 1, %bb.e ], [ %i.ay, %bb.f ]
  %i.ba = zext i1 %i.ak to i8
  %i.bb = icmp eq i8 %i.az, %i.ba
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN6icu_7814MessagePattern22inMessageFormatPatternEi.exit
  tail call void @_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef %4, i32 noundef %2)
  br label %.thread201.sink.split

bb.h:                                             ; preds = %_ZN6icu_7814MessagePattern22inMessageFormatPatternEi.exit
  %.not136 = icmp eq i8 %.0113.ph, 0
  br i1 %.not136, label %bb.i, label %.thread201

bb.i:                                             ; preds = %bb.h
  %i.bc = icmp eq ptr %4, null
  br i1 %i.bc, label %.thread201.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.bd, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  tail call void @_ZNK6icu_7813UnicodeString9doExtractEiiPDsi(ptr noundef nonnull align 8 dereferenceable(64) %i.g, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.be, i32 noundef 0) #15
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.be) #15, !srcloc !8
  store i16 0, ptr %i.be, align 4
  %i.bf = load i16, ptr %i.c, align 8             ; 3 uses
  %i.bg = icmp slt i16 %i.bf, 0
  %i.bh = ashr i16 %i.bf, 5
  %i.bi = sext i16 %i.bh to i32
  %i.bj = load i32, ptr %i.d, align 4
  %i.bk = select i1 %i.bg, i32 %i.bj, i32 %i.bi   ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, 15
  br i1 %i.bl, label %bb.k, label %_ZNK6icu_7813UnicodeStringixEi.exit33.i

bb.k:                                             ; preds = %bb.j
  %i.bm = and i16 %i.bf, 2
  %.not.i.i.i32.i = icmp eq i16 %i.bm, 0
  %i.bn = load ptr, ptr %i.f, align 8
  %i.bo = select i1 %.not.i.i.i32.i, ptr %i.bn, ptr %i.e
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 28
  %i.bq = load i16, ptr %i.bp, align 2
  %i.br = and i16 %i.bq, -1024
  %i.bs = icmp eq i16 %i.br, -10240
  %i.bt = select i1 %i.bs, i32 14, i32 15
  br label %_ZNK6icu_7813UnicodeStringixEi.exit33.i

_ZNK6icu_7813UnicodeStringixEi.exit33.i:          ; preds = %bb.k, %bb.j
  %.1.i = phi i32 [ %i.bk, %bb.j ], [ %i.bt, %bb.k ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  tail call void @_ZNK6icu_7813UnicodeString9doExtractEiiPDsi(ptr noundef nonnull align 8 dereferenceable(64) %i.g, i32 noundef 0, i32 noundef %.1.i, ptr noundef nonnull %i.bu, i32 noundef 0) #15
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.bu) #15, !srcloc !8
  %i.bv = sext i32 %.1.i to i64
  %i.bw = getelementptr inbounds [2 x i8], ptr %i.bu, i64 %i.bv
  store i16 0, ptr %i.bw, align 2
  br label %.thread201.sink.split

_ZNK6icu_7813UnicodeString6charAtEi.exit.thread:  ; preds = %bb.d, %_ZNK6icu_7813UnicodeString6charAtEi.exit
  switch i32 %1, label %_ZNK6icu_7813UnicodeString6charAtEi.exit142.thread [
    i32 5, label %bb.l
    i32 3, label %bb.l
  ]

bb.l:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread
  br i1 %i.al, label %_ZNK6icu_7813UnicodeString6charAtEi.exit142, label %_ZNK6icu_7813UnicodeString6charAtEi.exit142.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit142:      ; preds = %bb.l
  %i.bx = and i16 %i.ae, 2
  %.not.i.i.i141 = icmp eq i16 %i.bx, 0
  %i.by = load ptr, ptr %i.f, align 8
  %i.bz = select i1 %.not.i.i.i141, ptr %i.by, ptr %i.e ; 2 uses
  %sext214 = shl i64 %i.ab, 31
  %i.ca = ashr i64 %sext214, 32
  %i.cb = getelementptr inbounds [2 x i8], ptr %i.bz, i64 %i.ca
  %i.cc = load i16, ptr %i.cb, align 2
  %i.cd = icmp eq i16 %i.cc, 61
  br i1 %i.cd, label %bb.m, label %_ZNK6icu_7813UnicodeString6charAtEi.exit142.thread

bb.m:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit142
  %i.ce = add nuw nsw i32 %i.ad, 1                ; 5 uses
  %i.cf = icmp slt i32 %i.ce, %i.aj
  %i.cg = icmp ult i32 %i.ce, %i.aj
  %or.cond47.i = and i1 %i.cf, %i.cg
  br i1 %or.cond47.i, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i, label %_ZN6icu_7814MessagePattern10skipDoubleEi.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i: ; preds = %bb.m
  %i.ch = sext i32 %i.ce to i64
  %i.ci = sext i32 %i.aj to i64
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i

_ZNK6icu_7813UnicodeString6charAtEi.exit.i:       ; preds = %.thread39.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ch, %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i ], [ %indvars.iv.next.i, %.thread39.i ] ; 4 uses
  %i.cj = getelementptr inbounds [2 x i8], ptr %i.bz, i64 %indvars.iv.i
  %i.ck = load i16, ptr %i.cj, align 2            ; 4 uses
  %i.cl = icmp ult i16 %i.ck, 48
  br i1 %i.cl, label %switch.early.test.i, label %bb.n

switch.early.test.i:                              ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i
  switch i16 %i.ck, label %.thread44.loopexit.split.loop.exit.i [
    i16 46, label %.thread39.i
    i16 45, label %.thread39.i
    i16 43, label %.thread39.i
  ]

bb.n:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i
  %i.cm = icmp ugt i16 %i.ck, 57
  br i1 %i.cm, label %switch.early.test32.i, label %.thread39.i

switch.early.test32.i:                            ; preds = %bb.n
  switch i16 %i.ck, label %.thread44.loopexit.split.loop.exit54.i [
    i16 8734, label %.thread39.i
    i16 101, label %.thread39.i
    i16 69, label %.thread39.i
  ]

.thread39.i:                                      ; preds = %switch.early.test32.i, %switch.early.test32.i, %switch.early.test32.i, %bb.n, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.cn = icmp slt i64 %indvars.iv.next.i, %i.ci
  %i.co = trunc nsw i64 %indvars.iv.next.i to i32
  %i.cp = icmp ugt i32 %i.aj, %i.co
  %or.cond.i = and i1 %i.cn, %i.cp
  br i1 %or.cond.i, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, label %_ZN6icu_7814MessagePattern10skipDoubleEi.exit

.thread44.loopexit.split.loop.exit.i:             ; preds = %switch.early.test.i
  %i.cq = trunc nsw i64 %indvars.iv.i to i32
  br label %_ZN6icu_7814MessagePattern10skipDoubleEi.exit

.thread44.loopexit.split.loop.exit54.i:           ; preds = %switch.early.test32.i
  %i.cr = trunc nsw i64 %indvars.iv.i to i32
  br label %_ZN6icu_7814MessagePattern10skipDoubleEi.exit

_ZN6icu_7814MessagePattern10skipDoubleEi.exit:    ; preds = %.thread39.i, %bb.m, %.thread44.loopexit.split.loop.exit.i, %.thread44.loopexit.split.loop.exit54.i
  %.031.lcssa.i = phi i32 [ %i.ce, %bb.m ], [ %i.cr, %.thread44.loopexit.split.loop.exit54.i ], [ %i.cq, %.thread44.loopexit.split.loop.exit.i ], [ %i.aj, %.thread39.i ] ; 3 uses
  %i.cs = sub nsw i32 %.031.lcssa.i, %i.ad        ; 3 uses
  %i.ct = icmp eq i32 %i.cs, 1
  br i1 %i.ct, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN6icu_7814MessagePattern10skipDoubleEi.exit
  tail call void @_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef %4, i32 noundef %2)
  br label %.thread201.sink.split

bb.p:                                             ; preds = %_ZN6icu_7814MessagePattern10skipDoubleEi.exit
  %i.cu = icmp sgt i32 %i.cs, 65535
  br i1 %i.cu, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef %4, i32 noundef %i.ad)
  br label %.thread201.sink.split

bb.r:                                             ; preds = %bb.p
  %i.cv = load ptr, ptr %i.j, align 8             ; 5 uses
  %i.cw = load i32, ptr %i.k, align 8             ; 5 uses
  %i.cx = load i32, ptr %5, align 4
  %i.cy = icmp slt i32 %i.cx, 1
  br i1 %i.cy, label %bb.s, label %bb.y

bb.s:                                             ; preds = %bb.r
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 3 uses
  %i.da = load i32, ptr %i.cz, align 8
  %i.db = icmp sgt i32 %i.da, %i.cw
  br i1 %i.db, label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dc = shl nsw i32 %i.cw, 1                    ; 3 uses
  %i.dd = icmp sgt i32 %i.cw, 0
  br i1 %i.dd, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.de = zext nneg i32 %i.dc to i64
  %i.df = shl nuw nsw i64 %i.de, 4
  %i.dg = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.df) #16 ; 3 uses
  %.not.i.i.i143 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i143, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dh = load i32, ptr %i.cz, align 8
  %spec.select.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.cw, i32 %i.dh)
  %.1.i.i.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i.i.i, i32 %i.dc)
  %i.di = load ptr, ptr %i.cv, align 8            ; 2 uses
  %i.dj = sext i32 %.1.i.i.i to i64
  %i.dk = shl nsw i64 %i.dj, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dg, ptr align 4 %i.di, i64 %i.dk, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cv, i64 12 ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 4
  %.not.i.i.i.i144 = icmp eq i8 %i.dm, 0
  br i1 %.not.i.i.i.i144, label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @uprv_free_78(ptr noundef %i.di) #15
  br label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i

_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i: ; preds = %bb.w, %bb.v
  store ptr %i.dg, ptr %i.cv, align 8
  store i32 %i.dc, ptr %i.cz, align 8
  store i8 1, ptr %i.dl, align 4
  %.pre.i = load ptr, ptr %i.j, align 8
  %.pre12.i = load i32, ptr %i.k, align 8
  br label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i

bb.x:                                             ; preds = %bb.u, %bb.t
  store i32 7, ptr %5, align 4
  br label %bb.y

_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i: ; preds = %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i, %bb.s
  %i.dn = phi i32 [ %.pre12.i, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i ], [ %i.cw, %bb.s ] ; 2 uses
  %i.do = phi ptr [ %.pre.i, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i ], [ %i.cv, %bb.s ]
  %i.dp = add nsw i32 %i.dn, 1
  store i32 %i.dp, ptr %i.k, align 8
  %i.dq = sext i32 %i.dn to i64
  %i.dr = load ptr, ptr %i.do, align 8
  %i.ds = getelementptr inbounds [16 x i8], ptr %i.dr, i64 %i.dq ; 5 uses
  store i32 11, ptr %i.ds, align 4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store i32 %i.ad, ptr %i.dt, align 4
  %i.du = trunc i32 %i.cs to i16
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store i16 %i.du, ptr %i.dv, align 4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 10
  store i16 0, ptr %i.dw, align 2
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  store i32 0, ptr %i.dx, align 4
  br label %bb.y

bb.y:                                             ; preds = %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i, %bb.x, %bb.r
  tail call void @_ZN6icu_7814MessagePattern11parseDoubleEiiaP11UParseErrorR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef %i.ce, i32 noundef %.031.lcssa.i, i8 noundef signext 0, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  br label %bb.ax

_ZNK6icu_7813UnicodeString6charAtEi.exit142.thread: ; preds = %bb.l, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread, %_ZNK6icu_7813UnicodeString6charAtEi.exit142
  %i.dy = and i16 %i.ae, 17
  %.not.i.i145 = icmp eq i16 %i.dy, 0
  br i1 %.not.i.i145, label %bb.z, label %_ZN6icu_7814MessagePattern14skipIdentifierEi.exit

bb.z:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit142.thread
  %i.dz = and i16 %i.ae, 2
  %.not2.i.i147 = icmp eq i16 %i.dz, 0
  br i1 %.not2.i.i147, label %bb.aa, label %_ZN6icu_7814MessagePattern14skipIdentifierEi.exit

bb.aa:                                            ; preds = %bb.z
  %i.ea = load ptr, ptr %i.f, align 8
  br label %_ZN6icu_7814MessagePattern14skipIdentifierEi.exit

_ZN6icu_7814MessagePattern14skipIdentifierEi.exit: ; preds = %bb.z, %_ZNK6icu_7813UnicodeString6charAtEi.exit142.thread, %bb.aa
  %.0.i.i146 = phi ptr [ %i.ea, %bb.aa ], [ null, %_ZNK6icu_7813UnicodeString6charAtEi.exit142.thread ], [ %i.e, %bb.z ] ; 2 uses
  %sext215 = shl i64 %i.ab, 31
  %i.eb = ashr i64 %sext215, 32
  %i.ec = getelementptr inbounds [2 x i8], ptr %.0.i.i146, i64 %i.eb
  %i.ed = sub nsw i32 %i.aj, %i.ad
  %i.ee = tail call noundef ptr @_ZN6icu_7812PatternProps14skipIdentifierEPKDsi(ptr noundef %i.ec, i32 noundef %i.ed) #15
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = ptrtoint ptr %.0.i.i146 to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = lshr exact i64 %i.eh, 1
  %i.ej = trunc i64 %i.ei to i32                  ; 5 uses
  %i.ek = sub nsw i32 %i.ej, %i.ad                ; 4 uses
  %i.el = icmp eq i32 %i.ej, %i.ad
  br i1 %i.el, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZN6icu_7814MessagePattern14skipIdentifierEi.exit
  tail call void @_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef %4, i32 noundef %2)
  br label %.thread201.sink.split

bb.ac:                                            ; preds = %_ZN6icu_7814MessagePattern14skipIdentifierEi.exit
  %i.em = icmp eq i32 %i.ek, 6
  %or.cond6 = select i1 %or.cond, i1 %i.em, i1 false
  br i1 %or.cond6, label %bb.ad, label %bb.ao

bb.ad:                                            ; preds = %bb.ac
  %i.en = load i16, ptr %i.c, align 8             ; 2 uses
  %i.eo = icmp slt i16 %i.en, 0
  %i.ep = ashr i16 %i.en, 5
  %i.eq = sext i16 %i.ep to i32
  %i.er = load i32, ptr %i.d, align 4
  %i.es = select i1 %i.eo, i32 %i.er, i32 %i.eq
  %i.et = icmp sgt i32 %i.es, %i.ej
  br i1 %i.et, label %bb.ae, label %.thread189

bb.ae:                                            ; preds = %bb.ad
  %i.eu = tail call noundef signext i8 @_ZNK6icu_7813UnicodeString9doCompareEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.g, i32 noundef %i.ad, i32 noundef 7, ptr noundef nonnull @_ZN6icu_78L12kOffsetColonE, i32 noundef 0, i32 noundef 7) #15
  %i.ev = icmp eq i8 %i.eu, 0
  br i1 %i.ev, label %bb.af, label %.thread189

bb.af:                                            ; preds = %bb.ae
  br i1 %.not131, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef %4, i32 noundef %2)
  br label %.thread201.sink.split

bb.ah:                                            ; preds = %bb.af
  %i.ew = add nsw i32 %i.ej, 1                    ; 2 uses
  %i.ex = load i16, ptr %i.c, align 8             ; 4 uses
  %i.ey = and i16 %i.ex, 17
  %.not.i.i148 = icmp eq i16 %i.ey, 0
  br i1 %.not.i.i148, label %bb.ai, label %_ZN6icu_7814MessagePattern14skipWhiteSpaceEi.exit151

bb.ai:                                            ; preds = %bb.ah
  %i.ez = and i16 %i.ex, 2
  %.not2.i.i150 = icmp eq i16 %i.ez, 0
  br i1 %.not2.i.i150, label %bb.aj, label %_ZN6icu_7814MessagePattern14skipWhiteSpaceEi.exit151

bb.aj:                                            ; preds = %bb.ai
  %i.fa = load ptr, ptr %i.f, align 8
  br label %_ZN6icu_7814MessagePattern14skipWhiteSpaceEi.exit151

_ZN6icu_7814MessagePattern14skipWhiteSpaceEi.exit151: ; preds = %bb.ai, %bb.ah, %bb.aj
  %.0.i.i149 = phi ptr [ %i.fa, %bb.aj ], [ null, %bb.ah ], [ %i.e, %bb.ai ] ; 2 uses
  %i.fb = icmp slt i16 %i.ex, 0
  %i.fc = ashr i16 %i.ex, 5
  %i.fd = sext i16 %i.fc to i32
  %i.fe = load i32, ptr %i.d, align 4
  %i.ff = select i1 %i.fb, i32 %i.fe, i32 %i.fd
  %i.fg = sext i32 %i.ew to i64
  %i.fh = getelementptr inbounds [2 x i8], ptr %.0.i.i149, i64 %i.fg
  %i.fi = sub nsw i32 %i.ff, %i.ew
  %i.fj = tail call noundef ptr @_ZN6icu_7812PatternProps14skipWhiteSpaceEPKDsi(ptr noundef %i.fh, i32 noundef %i.fi) #15
  %i.fk = ptrtoint ptr %i.fj to i64
  %i.fl = ptrtoint ptr %.0.i.i149 to i64
  %i.fm = sub i64 %i.fk, %i.fl                    ; 2 uses
  %i.fn = lshr exact i64 %i.fm, 1
  %i.fo = trunc i64 %i.fn to i32                  ; 6 uses
  %i.fp = load i16, ptr %i.c, align 8             ; 3 uses
  %i.fq = icmp slt i16 %i.fp, 0
  %i.fr = ashr i16 %i.fp, 5
  %i.fs = sext i16 %i.fr to i32
  %i.ft = load i32, ptr %i.d, align 4
  %i.fu = select i1 %i.fq, i32 %i.ft, i32 %i.fs   ; 5 uses
  %i.fv = icmp sgt i32 %i.fu, %i.fo
  %i.fw = icmp ugt i32 %i.fu, %i.fo
  %or.cond47.i152 = and i1 %i.fv, %i.fw
  br i1 %or.cond47.i152, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i154, label %_ZN6icu_7814MessagePattern10skipDoubleEi.exit165.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i154: ; preds = %_ZN6icu_7814MessagePattern14skipWhiteSpaceEi.exit151
  %i.fx = and i16 %i.fp, 2
  %.not.i.i.i.i155 = icmp eq i16 %i.fx, 0
  %i.fy = load ptr, ptr %i.f, align 8
  %i.fz = select i1 %.not.i.i.i.i155, ptr %i.fy, ptr %i.e
  %sext217 = shl i64 %i.fm, 31
  %i.ga = ashr i64 %sext217, 32
  %i.gb = sext i32 %i.fu to i64
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i156

_ZNK6icu_7813UnicodeString6charAtEi.exit.i156:    ; preds = %.thread39.i158, %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i154
  %indvars.iv.i157 = phi i64 [ %i.ga, %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i154 ], [ %indvars.iv.next.i159, %.thread39.i158 ] ; 4 uses
  %i.gc = getelementptr inbounds [2 x i8], ptr %i.fz, i64 %indvars.iv.i157
  %i.gd = load i16, ptr %i.gc, align 2            ; 4 uses
  %i.ge = icmp ult i16 %i.gd, 48
  br i1 %i.ge, label %switch.early.test.i163, label %bb.ak

switch.early.test.i163:                           ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i156
  switch i16 %i.gd, label %.thread44.loopexit.split.loop.exit.i164 [
    i16 46, label %.thread39.i158
    i16 45, label %.thread39.i158
    i16 43, label %.thread39.i158
  ]

bb.ak:                                            ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i156
  %i.gf = icmp ugt i16 %i.gd, 57
  br i1 %i.gf, label %switch.early.test32.i161, label %.thread39.i158

switch.early.test32.i161:                         ; preds = %bb.ak
  switch i16 %i.gd, label %.thread44.loopexit.split.loop.exit54.i162 [
    i16 8734, label %.thread39.i158
    i16 101, label %.thread39.i158
    i16 69, label %.thread39.i158
  ]

.thread39.i158:                                   ; preds = %switch.early.test32.i161, %switch.early.test32.i161, %switch.early.test32.i161, %bb.ak, %switch.early.test.i163, %switch.early.test.i163, %switch.early.test.i163
  %indvars.iv.next.i159 = add nuw nsw i64 %indvars.iv.i157, 1 ; 3 uses
  %i.gg = icmp slt i64 %indvars.iv.next.i159, %i.gb
  %i.gh = trunc nsw i64 %indvars.iv.next.i159 to i32
  %i.gi = icmp ugt i32 %i.fu, %i.gh
  %or.cond.i160 = and i1 %i.gg, %i.gi
  br i1 %or.cond.i160, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i156, label %_ZN6icu_7814MessagePattern10skipDoubleEi.exit165

.thread44.loopexit.split.loop.exit.i164:          ; preds = %switch.early.test.i163
  %i.gj = trunc nsw i64 %indvars.iv.i157 to i32
  br label %_ZN6icu_7814MessagePattern10skipDoubleEi.exit165

.thread44.loopexit.split.loop.exit54.i162:        ; preds = %switch.early.test32.i161
  %i.gk = trunc nsw i64 %indvars.iv.i157 to i32
  br label %_ZN6icu_7814MessagePattern10skipDoubleEi.exit165

_ZN6icu_7814MessagePattern10skipDoubleEi.exit165: ; preds = %.thread39.i158, %.thread44.loopexit.split.loop.exit.i164, %.thread44.loopexit.split.loop.exit54.i162
  %.031.lcssa.i153 = phi i32 [ %i.gj, %.thread44.loopexit.split.loop.exit.i164 ], [ %i.gk, %.thread44.loopexit.split.loop.exit54.i162 ], [ %i.fu, %.thread39.i158 ] ; 4 uses
  %i.gl = icmp eq i32 %.031.lcssa.i153, %i.fo
  br i1 %i.gl, label %_ZN6icu_7814MessagePattern10skipDoubleEi.exit165.thread, label %bb.al

_ZN6icu_7814MessagePattern10skipDoubleEi.exit165.thread: ; preds = %_ZN6icu_7814MessagePattern14skipWhiteSpaceEi.exit151, %_ZN6icu_7814MessagePattern10skipDoubleEi.exit165
  tail call void @_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef %4, i32 noundef %2)
  br label %.thread201.sink.split

bb.al:                                            ; preds = %_ZN6icu_7814MessagePattern10skipDoubleEi.exit165
  %i.gm = sub nsw i32 %.031.lcssa.i153, %i.fo
  %i.gn = icmp sgt i32 %i.gm, 65535
  br i1 %i.gn, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  tail call void @_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef %4, i32 noundef %i.fo)
  br label %.thread201.sink.split

bb.an:                                            ; preds = %bb.al
  tail call void @_ZN6icu_7814MessagePattern11parseDoubleEiiaP11UParseErrorR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef %i.fo, i32 noundef %.031.lcssa.i153, i8 noundef signext 0, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %i.go = load i32, ptr %5, align 4
  %i.gp = icmp slt i32 %i.go, 1
  br i1 %i.gp, label %.thread191, label %.thread201, !llvm.loop !10

bb.ao:                                            ; preds = %bb.ac
  %i.gq = icmp sgt i32 %i.ek, 65535
  br i1 %i.gq, label %bb.ap, label %.thread189

bb.ap:                                            ; preds = %bb.ao
  tail call void @_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef %4, i32 noundef %i.ad)
  br label %.thread201.sink.split

.thread189:                                       ; preds = %bb.ad, %bb.ae, %bb.ao
  %i.gr = load ptr, ptr %i.j, align 8             ; 5 uses
  %i.gs = load i32, ptr %i.k, align 8             ; 5 uses
  %i.gt = load i32, ptr %5, align 4
  %i.gu = icmp slt i32 %i.gt, 1
  br i1 %i.gu, label %bb.aq, label %bb.aw

bb.aq:                                            ; preds = %.thread189
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 8 ; 3 uses
  %i.gw = load i32, ptr %i.gv, align 8
  %i.gx = icmp sgt i32 %i.gw, %i.gs
  br i1 %i.gx, label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i173, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gy = shl nsw i32 %i.gs, 1                    ; 3 uses
  %i.gz = icmp sgt i32 %i.gs, 0
  br i1 %i.gz, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.ha = zext nneg i32 %i.gy to i64
  %i.hb = shl nuw nsw i64 %i.ha, 4
  %i.hc = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.hb) #16 ; 3 uses
  %.not.i.i.i166 = icmp eq ptr %i.hc, null
  br i1 %.not.i.i.i166, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hd = load i32, ptr %i.gv, align 8
  %spec.select.i.i.i167 = tail call i32 @llvm.smin.i32(i32 %i.gs, i32 %i.hd)
  %.1.i.i.i168 = tail call i32 @llvm.smin.i32(i32 %spec.select.i.i.i167, i32 %i.gy)
  %i.he = load ptr, ptr %i.gr, align 8            ; 2 uses
  %i.hf = sext i32 %.1.i.i.i168 to i64
  %i.hg = shl nsw i64 %i.hf, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.hc, ptr align 4 %i.he, i64 %i.hg, i1 false)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gr, i64 12 ; 2 uses
  %i.hi = load i8, ptr %i.hh, align 4
  %.not.i.i.i.i169 = icmp eq i8 %i.hi, 0
  br i1 %.not.i.i.i.i169, label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i170, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @uprv_free_78(ptr noundef %i.he) #15
  br label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i170

_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i170: ; preds = %bb.au, %bb.at
  store ptr %i.hc, ptr %i.gr, align 8
  store i32 %i.gy, ptr %i.gv, align 8
  store i8 1, ptr %i.hh, align 4
  %.pre.i171 = load ptr, ptr %i.j, align 8
  %.pre12.i172 = load i32, ptr %i.k, align 8
  br label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i173

bb.av:                                            ; preds = %bb.as, %bb.ar
  store i32 7, ptr %5, align 4
  br label %bb.aw

_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i173: ; preds = %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i170, %bb.aq
  %i.hj = phi i32 [ %.pre12.i172, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i170 ], [ %i.gs, %bb.aq ] ; 2 uses
  %i.hk = phi ptr [ %.pre.i171, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i170 ], [ %i.gr, %bb.aq ]
  %i.hl = add nsw i32 %i.hj, 1
  store i32 %i.hl, ptr %i.k, align 8
  %i.hm = sext i32 %i.hj to i64
  %i.hn = load ptr, ptr %i.hk, align 8
  %i.ho = getelementptr inbounds [16 x i8], ptr %i.hn, i64 %i.hm ; 5 uses
  store i32 11, ptr %i.ho, align 4
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  store i32 %i.ad, ptr %i.hp, align 4
  %i.hq = trunc i32 %i.ek to i16
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  store i16 %i.hq, ptr %i.hr, align 4
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ho, i64 10
  store i16 0, ptr %i.hs, align 2
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 12
  store i32 0, ptr %i.ht, align 4
  br label %bb.aw

bb.aw:                                            ; preds = %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i173, %bb.av, %.thread189
  %i.hu = tail call noundef signext i8 @_ZNK6icu_7813UnicodeString9doCompareEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.g, i32 noundef %i.ad, i32 noundef %i.ek, ptr noundef nonnull @_ZN6icu_78L6kOtherE, i32 noundef 0, i32 noundef 5) #15
  %i.hv = icmp eq i8 %i.hu, 0
  %spec.select = select i1 %i.hv, i8 1, i8 %.0113.ph
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.y
  %.3116 = phi i8 [ %.0113.ph, %bb.y ], [ %spec.select, %bb.aw ]
  %.2104 = phi i32 [ %.031.lcssa.i, %bb.y ], [ %i.ej, %bb.aw ] ; 2 uses
  %i.hw = load i32, ptr %5, align 4
  %i.hx = icmp slt i32 %i.hw, 1
  br i1 %i.hx, label %bb.ay, label %.thread201

bb.ay:                                            ; preds = %bb.ax
  %i.hy = load i16, ptr %i.c, align 8             ; 4 uses
  %i.hz = and i16 %i.hy, 17
  %.not.i.i175 = icmp eq i16 %i.hz, 0
  br i1 %.not.i.i175, label %bb.az, label %_ZN6icu_7814MessagePattern14skipWhiteSpaceEi.exit178

bb.az:                                            ; preds = %bb.ay
  %i.ia = and i16 %i.hy, 2
  %.not2.i.i177 = icmp eq i16 %i.ia, 0
  br i1 %.not2.i.i177, label %bb.ba, label %_ZN6icu_7814MessagePattern14skipWhiteSpaceEi.exit178

bb.ba:                                            ; preds = %bb.az
  %i.ib = load ptr, ptr %i.f, align 8
  br label %_ZN6icu_7814MessagePattern14skipWhiteSpaceEi.exit178

_ZN6icu_7814MessagePattern14skipWhiteSpaceEi.exit178: ; preds = %bb.az, %bb.ay, %bb.ba
  %.0.i.i176 = phi ptr [ %i.ib, %bb.ba ], [ null, %bb.ay ], [ %i.e, %bb.az ] ; 2 uses
  %i.ic = icmp slt i16 %i.hy, 0
  %i.id = ashr i16 %i.hy, 5
  %i.ie = sext i16 %i.id to i32
  %i.if = load i32, ptr %i.d, align 4
  %i.ig = select i1 %i.ic, i32 %i.if, i32 %i.ie
  %i.ih = sext i32 %.2104 to i64
  %i.ii = getelementptr inbounds [2 x i8], ptr %.0.i.i176, i64 %i.ih
  %i.ij = sub nsw i32 %i.ig, %.2104
  %i.ik = tail call noundef ptr @_ZN6icu_7812PatternProps14skipWhiteSpaceEPKDsi(ptr noundef %i.ii, i32 noundef %i.ij) #15
  %i.il = ptrtoint ptr %i.ik to i64
  %i.im = ptrtoint ptr %.0.i.i176 to i64
  %i.in = sub i64 %i.il, %i.im                    ; 2 uses
  %i.io = lshr exact i64 %i.in, 1
  %i.ip = trunc i64 %i.io to i32                  ; 2 uses
  %i.iq = load i16, ptr %i.c, align 8             ; 3 uses
  %i.ir = icmp slt i16 %i.iq, 0
  %i.is = ashr i16 %i.iq, 5
  %i.it = sext i16 %i.is to i32
  %i.iu = load i32, ptr %i.d, align 4
  %i.iv = select i1 %i.ir, i32 %i.iu, i32 %i.it
  %i.iw = icmp ugt i32 %i.iv, %i.ip
  br i1 %i.iw, label %_ZNK6icu_7813UnicodeString6charAtEi.exit181, label %_ZNK6icu_7813UnicodeString6charAtEi.exit181.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit181:      ; preds = %_ZN6icu_7814MessagePattern14skipWhiteSpaceEi.exit178
  %i.ix = and i16 %i.iq, 2
  %.not.i.i.i180 = icmp eq i16 %i.ix, 0
  %i.iy = load ptr, ptr %i.f, align 8
  %i.iz = select i1 %.not.i.i.i180, ptr %i.iy, ptr %i.e
  %sext216 = shl i64 %i.in, 31
  %i.ja = ashr i64 %sext216, 32
  %i.jb = getelementptr inbounds [2 x i8], ptr %i.iz, i64 %i.ja
  %i.jc = load i16, ptr %i.jb, align 2
  %.not134 = icmp eq i16 %i.jc, 123
  br i1 %.not134, label %bb.bb, label %_ZNK6icu_7813UnicodeString6charAtEi.exit181.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit181.thread: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit181, %_ZN6icu_7814MessagePattern14skipWhiteSpaceEi.exit178
  tail call void @_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef %4, i32 noundef %i.ad)
  br label %.thread201.sink.split

bb.bb:                                            ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit181
  %i.jd = tail call noundef i32 @_ZN6icu_7814MessagePattern12parseMessageEiii22UMessagePatternArgTypeP11UParseErrorR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef %i.ip, i32 noundef 1, i32 noundef %i.l, i32 noundef %1, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %i.je = load i32, ptr %5, align 4
  %i.jf = icmp slt i32 %i.je, 1
  br i1 %i.jf, label %.thread191.outer, label %.thread201

.thread201.sink.split:                            ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit33.i, %bb.i, %bb.g, %_ZNK6icu_7813UnicodeString6charAtEi.exit181.thread, %bb.o, %bb.q, %bb.ab, %bb.am, %_ZN6icu_7814MessagePattern10skipDoubleEi.exit165.thread, %bb.ap, %bb.ag
  %.sink = phi i32 [ 65799, %bb.ag ], [ 8, %bb.ap ], [ 65799, %_ZN6icu_7814MessagePattern10skipDoubleEi.exit165.thread ], [ 8, %bb.am ], [ 65799, %bb.ab ], [ 8, %bb.q ], [ 65799, %bb.o ], [ 65799, %_ZNK6icu_7813UnicodeString6charAtEi.exit181.thread ], [ 65799, %bb.g ], [ 65807, %bb.i ], [ 65807, %_ZNK6icu_7813UnicodeStringixEi.exit33.i ]
  store i32 %.sink, ptr %5, align 4
  br label %.thread201

.thread201:                                       ; preds = %bb.an, %bb.ax, %bb.bb, %.thread201.sink.split, %bb.h, %bb.a
  %.7 = phi i32 [ 0, %bb.a ], [ %i.ad, %bb.h ], [ 0, %.thread201.sink.split ], [ 0, %bb.bb ], [ 0, %bb.ax ], [ 0, %bb.an ]
  ret i32 %.7
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(127) ptr @_ZN6icu_7814MessagePattern16parseSelectStyleERKNS_13UnicodeStringEP11UParseErrorR10UErrorCode(ptr noundef nonnull returned align 8 dereferenceable(127) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7814MessagePattern8preParseERKNS_13UnicodeStringEP11UParseErrorR10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  %.not8.i = icmp eq ptr %2, null
  br i1 %.not8.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %2, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i16 0, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i16 0, ptr %i.e, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %1) #15 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.i, i8 0, i64 7, i1 false)
  br label %_ZN6icu_7814MessagePattern8preParseERKNS_13UnicodeStringEP11UParseErrorR10UErrorCode.exit

_ZN6icu_7814MessagePattern8preParseERKNS_13UnicodeStringEP11UParseErrorR10UErrorCode.exit: ; preds = %bb.a, %bb.d
  %i.j = tail call noundef i32 @_ZN6icu_7814MessagePattern24parsePluralOrSelectStyleE22UMessagePatternArgTypeiiP11UParseErrorR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef 4, i32 noundef 0, i32 noundef 0, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN6icu_7814MessagePattern8preParseERKNS_13UnicodeStringEP11UParseErrorR10UErrorCode.exit
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.m, ptr %i.n, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN6icu_7814MessagePattern8preParseERKNS_13UnicodeStringEP11UParseErrorR10UErrorCode.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not2.i = icmp eq ptr %i.p, null
  br i1 %.not2.i, label %_ZN6icu_7814MessagePattern9postParseEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.q, ptr %i.r, align 8
  br label %_ZN6icu_7814MessagePattern9postParseEv.exit

_ZN6icu_7814MessagePattern9postParseEv.exit:      ; preds = %bb.f, %bb.g
end_hunk_2
begin_hunk_3_@_ZNK6icu_7814MessagePattern8hashCodeEv:bb.a
  %i.af = mul nsw i32 %i.ae, 37
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = add nsw i32 %i.af, %i.ah
  %i.aj = mul nsw i32 %i.ai, 37
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.al = load i16, ptr %i.ak, align 4
  %i.am = zext i16 %i.al to i32
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 10
  %i.ao = load i16, ptr %i.an, align 2
  %i.ap = sext i16 %i.ao to i32
  %i.aq = add i32 %.056, %i.am
  %reass.add = add i32 %i.aq, %i.aj
  %reass.mul = mul i32 %reass.add, 37
  %i.ar = add i32 %reass.mul, %i.ap
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %indvars.iv ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i32, ptr %i.at, align 4
  %i.av = mul nsw i32 %i.au, 37
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 20
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = add nsw i32 %i.av, %i.ax
  %i.az = mul nsw i32 %i.ay, 37
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.bb = load i16, ptr %i.ba, align 4
  %i.bc = zext i16 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 26
  %i.be = load i16, ptr %i.bd, align 2
  %i.bf = sext i16 %i.be to i32
  %i.bg = add i32 %i.ar, %i.bc
  %reass.add.1 = add i32 %i.bg, %i.az
  %reass.mul.1 = mul i32 %reass.add.1, 37
  %i.bh = add i32 %reass.mul.1, %i.bf             ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !12
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN6icu_7814MessagePattern20validateArgumentNameERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8              ; 4 uses
  %i.c = and i16 %i.b, 17
  %.not.i = icmp eq i16 %i.c, 0
  br i1 %.not.i, label %bb.b, label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = and i16 %i.b, 2
  %.not2.i = icmp eq i16 %i.d, 0
  br i1 %.not2.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 10
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

_ZNK6icu_7813UnicodeString9getBufferEv.exit:      ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.g, %bb.d ], [ %i.e, %bb.c ], [ null, %bb.a ]
  %i.h = icmp slt i16 %i.b, 0
  %i.i = ashr i16 %i.b, 5
  %i.j = sext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = select i1 %i.h, i32 %i.l, i32 %i.j
  %i.n = tail call noundef signext i8 @_ZN6icu_7812PatternProps12isIdentifierEPKDsi(ptr noundef %.0.i, i32 noundef %i.m) #15
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %_ZN6icu_7814MessagePattern14parseArgNumberERKNS_13UnicodeStringEii.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK6icu_7813UnicodeString9getBufferEv.exit
  %i.o = load i16, ptr %i.a, align 8
  %.fr53.i = freeze i16 %i.o                      ; 4 uses
  %i.p = icmp slt i16 %.fr53.i, 0                 ; 2 uses
  %i.q = lshr i16 %.fr53.i, 5
  %i.r = zext nneg i16 %i.q to i32
  %i.s = load i32, ptr %i.k, align 4              ; 2 uses
  %i.t = select i1 %i.p, i32 %i.s, i32 %i.r       ; 5 uses
  %.not.i4 = icmp sgt i32 %i.t, 0
  br i1 %.not.i4, label %bb.f, label %_ZN6icu_7814MessagePattern14parseArgNumberERKNS_13UnicodeStringEii.exit

bb.f:                                             ; preds = %bb.e
  %i.u = lshr i16 %.fr53.i, 5
  %i.v = zext nneg i16 %i.u to i32
  %i.w = select i1 %i.p, i32 %i.s, i32 %i.v       ; 2 uses
  %.not6 = icmp eq i32 %i.w, 0
  br i1 %.not6, label %_ZN6icu_7814MessagePattern14parseArgNumberERKNS_13UnicodeStringEii.exit, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i

_ZNK6icu_7813UnicodeString6charAtEi.exit.i:       ; preds = %bb.f
  %i.x = and i16 %.fr53.i, 2
  %.not.i.i.i.i = icmp eq i16 %i.x, 0             ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = select i1 %.not.i.i.i.i, ptr %i.aa, ptr %i.y
  %i.ac = load i16, ptr %i.ab, align 2            ; 3 uses
  %i.ad = zext i16 %i.ac to i32
  %i.ae = icmp eq i16 %i.ac, 48
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i
  %i.af = icmp eq i32 %i.t, 1
  br i1 %i.af, label %_ZN6icu_7814MessagePattern14parseArgNumberERKNS_13UnicodeStringEii.exit, label %.lr.ph.i

bb.h:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i
  %i.ag = add i16 %i.ac, -49
  %or.cond.i = icmp ult i16 %i.ag, 9
  br i1 %or.cond.i, label %bb.i, label %_ZN6icu_7814MessagePattern14parseArgNumberERKNS_13UnicodeStringEii.exit

bb.i:                                             ; preds = %bb.h
  %i.ah = add nsw i32 %i.ad, -48                  ; 2 uses
  %.not7 = icmp eq i32 %i.t, 1
  br i1 %.not7, label %_ZN6icu_7814MessagePattern14parseArgNumberERKNS_13UnicodeStringEii.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.i
  %.0.i525 = phi i8 [ 0, %bb.i ], [ 1, %bb.g ]    ; 2 uses
  %.026.i24 = phi i32 [ %i.ah, %bb.i ], [ 0, %bb.g ] ; 2 uses
  %wide.trip.count14 = zext i32 %i.w to i64       ; 2 uses
  br i1 %.not.i.i.i.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.j
  %indvars.iv56.i = phi i64 [ %indvars.iv.next57.i, %bb.j ], [ 1, %.lr.ph.i ] ; 3 uses
  %.150.us.i = phi i8 [ %.2.us.i, %bb.j ], [ %.0.i525, %.lr.ph.i ]
  %.12749.us.i = phi i32 [ %.228.us.i, %bb.j ], [ %.026.i24, %.lr.ph.i ] ; 3 uses
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1 ; 2 uses
  %exitcond15.not = icmp eq i64 %indvars.iv56.i, %wide.trip.count14
  br i1 %exitcond15.not, label %_ZN6icu_7814MessagePattern14parseArgNumberERKNS_13UnicodeStringEii.exit, label %_ZNK6icu_7813UnicodeString6charAtEi.exit39.us.i

_ZNK6icu_7813UnicodeString6charAtEi.exit39.us.i:  ; preds = %.lr.ph.split.us.i
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %indvars.iv56.i
  %i.aj = load i16, ptr %i.ai, align 2            ; 2 uses
  %i.ak = add i16 %i.aj, -48
  %or.cond5.us.i = icmp ult i16 %i.ak, 10
  br i1 %or.cond5.us.i, label %bb.j, label %_ZN6icu_7814MessagePattern14parseArgNumberERKNS_13UnicodeStringEii.exit

bb.j:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit39.us.i
  %i.al = zext nneg i16 %i.aj to i32
  %i.am = icmp sgt i32 %.12749.us.i, 214748363    ; 2 uses
  %i.an = mul nsw i32 %.12749.us.i, 10
  %i.ao = add i32 %i.an, -48
  %i.ap = add i32 %i.ao, %i.al
  %.228.us.i = select i1 %i.am, i32 %.12749.us.i, i32 %i.ap ; 2 uses
  %.2.us.i = select i1 %i.am, i8 1, i8 %.150.us.i ; 2 uses
  %lftr.wideiv16 = trunc i64 %indvars.iv.next57.i to i32
  %exitcond17 = icmp eq i32 %i.t, %lftr.wideiv16
  br i1 %exitcond17, label %._crit_edge.i, label %.lr.ph.split.us.i, !llvm.loop !13

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.k
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.k ], [ 1, %.lr.ph.i ] ; 3 uses
  %.150.i = phi i8 [ %.2.i, %bb.k ], [ %.0.i525, %.lr.ph.i ]
  %.12749.i = phi i32 [ %.228.i, %bb.k ], [ %.026.i24, %.lr.ph.i ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.i, %wide.trip.count14
  br i1 %exitcond.not, label %_ZN6icu_7814MessagePattern14parseArgNumberERKNS_13UnicodeStringEii.exit, label %_ZNK6icu_7813UnicodeString6charAtEi.exit39.i

_ZNK6icu_7813UnicodeString6charAtEi.exit39.i:     ; preds = %.lr.ph.split.i
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.ar = load i16, ptr %i.aq, align 2            ; 2 uses
  %i.as = add i16 %i.ar, -48
  %or.cond5.i = icmp ult i16 %i.as, 10
  br i1 %or.cond5.i, label %bb.k, label %_ZN6icu_7814MessagePattern14parseArgNumberERKNS_13UnicodeStringEii.exit

bb.k:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit39.i
  %i.at = zext nneg i16 %i.ar to i32
  %i.au = icmp sgt i32 %.12749.i, 214748363       ; 2 uses
  %i.av = mul nsw i32 %.12749.i, 10
  %i.aw = add i32 %i.av, -48
  %i.ax = add i32 %i.aw, %i.at
  %.228.i = select i1 %i.au, i32 %.12749.i, i32 %i.ax ; 2 uses
  %.2.i = select i1 %i.au, i8 1, i8 %.150.i       ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond12 = icmp eq i32 %i.t, %lftr.wideiv
  br i1 %exitcond12, label %._crit_edge.i, label %.lr.ph.split.i, !llvm.loop !13

._crit_edge.i:                                    ; preds = %bb.k, %bb.j
  %.127.lcssa.i = phi i32 [ %.228.us.i, %bb.j ], [ %.228.i, %bb.k ]
  %.1.lcssa.i = phi i8 [ %.2.us.i, %bb.j ], [ %.2.i, %bb.k ]
  %.1.lcssa.i.fr = freeze i8 %.1.lcssa.i
  %.not36.i = icmp eq i8 %.1.lcssa.i.fr, 0
  %spec.select = select i1 %.not36.i, i32 %.127.lcssa.i, i32 -2
  br label %_ZN6icu_7814MessagePattern14parseArgNumberERKNS_13UnicodeStringEii.exit

_ZN6icu_7814MessagePattern14parseArgNumberERKNS_13UnicodeStringEii.exit: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit39.i, %.lr.ph.split.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit39.us.i, %.lr.ph.split.us.i, %._crit_edge.i, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZNK6icu_7813UnicodeString9getBufferEv.exit
  %.0 = phi i32 [ -2, %_ZNK6icu_7813UnicodeString9getBufferEv.exit ], [ -2, %bb.e ], [ 0, %bb.g ], [ -1, %bb.h ], [ %i.ah, %bb.i ], [ -1, %bb.f ], [ %spec.select, %._crit_edge.i ], [ -1, %_ZNK6icu_7813UnicodeString6charAtEi.exit39.us.i ], [ -1, %.lr.ph.split.us.i ], [ -1, %.lr.ph.split.i ], [ -1, %_ZNK6icu_7813UnicodeString6charAtEi.exit39.i ]
  ret i32 %.0
}

declare noundef signext i8 @_ZN6icu_7812PatternProps12isIdentifierEPKDsi(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZN6icu_7814MessagePattern14parseArgNumberERKNS_13UnicodeStringEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 align 2 {
bb.a:
  %.not = icmp slt i32 %1, %2
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.a = add nsw i32 %1, 1                        ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i16, ptr %i.b, align 8
  %.fr53 = freeze i16 %i.c                        ; 3 uses
  %i.d = icmp slt i16 %.fr53, 0
  %i.e = lshr i16 %.fr53, 5
  %i.f = zext nneg i16 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4
  %i.i = select i1 %i.d, i32 %i.h, i32 %i.f       ; 3 uses
  %i.j = icmp ult i32 %1, %i.i
  br i1 %i.j, label %_ZNK6icu_7813UnicodeString6charAtEi.exit, label %.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.b
  %i.k = and i16 %.fr53, 2
  %.not.i.i.i = icmp eq i16 %i.k, 0               ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = select i1 %.not.i.i.i, ptr %i.n, ptr %i.l
  %i.p = sext i32 %1 to i64
  %i.q = getelementptr inbounds [2 x i8], ptr %i.o, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2              ; 3 uses
  %i.s = zext i16 %i.r to i32
  %i.t = icmp eq i16 %i.r, 48
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.u = icmp eq i32 %i.a, %2
  br i1 %i.u, label %.thread, label %bb.f

bb.d:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.v = add i16 %i.r, -49
  %or.cond = icmp ult i16 %i.v, 9
  br i1 %or.cond, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.w = add nsw i32 %i.s, -48
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %.026 = phi i32 [ %i.w, %bb.e ], [ 0, %bb.c ]   ; 3 uses
  %.0 = phi i8 [ 0, %bb.e ], [ 1, %bb.c ]         ; 3 uses
  %i.x = icmp slt i32 %i.a, %2
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.y = sext i32 %i.a to i64                     ; 2 uses
  br i1 %.not.i.i.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.g
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %bb.g ], [ %i.y, %.lr.ph ] ; 3 uses
  %.150.us = phi i8 [ %.2.us, %bb.g ], [ %.0, %.lr.ph ]
  %.12749.us = phi i32 [ %.228.us, %bb.g ], [ %.026, %.lr.ph ] ; 3 uses
  %indvars.iv.next57 = add nsw i64 %indvars.iv56, 1 ; 2 uses
  %i.z = trunc nsw i64 %indvars.iv56 to i32
  %i.aa = icmp ugt i32 %i.i, %i.z
  br i1 %i.aa, label %_ZNK6icu_7813UnicodeString6charAtEi.exit39.us, label %.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit39.us:    ; preds = %.lr.ph.split.us
  %i.ab = getelementptr inbounds [2 x i8], ptr %i.n, i64 %indvars.iv56
  %i.ac = load i16, ptr %i.ab, align 2            ; 2 uses
  %i.ad = add i16 %i.ac, -48
  %or.cond5.us = icmp ult i16 %i.ad, 10
  br i1 %or.cond5.us, label %bb.g, label %.thread

bb.g:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit39.us
  %i.ae = zext nneg i16 %i.ac to i32
  %i.af = icmp sgt i32 %.12749.us, 214748363      ; 2 uses
  %i.ag = mul nsw i32 %.12749.us, 10
  %i.ah = add i32 %i.ag, -48
  %i.ai = add i32 %i.ah, %i.ae
  %.228.us = select i1 %i.af, i32 %.12749.us, i32 %i.ai ; 2 uses
  %.2.us = select i1 %i.af, i8 1, i8 %.150.us     ; 2 uses
  %lftr.wideiv58 = trunc i64 %indvars.iv.next57 to i32
  %exitcond59.not = icmp eq i32 %2, %lftr.wideiv58
  br i1 %exitcond59.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !13

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ %i.y, %.lr.ph ] ; 3 uses
  %.150 = phi i8 [ %.2, %bb.h ], [ %.0, %.lr.ph ]
  %.12749 = phi i32 [ %.228, %bb.h ], [ %.026, %.lr.ph ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.aj = trunc nsw i64 %indvars.iv to i32
  %i.ak = icmp ugt i32 %i.i, %i.aj
  br i1 %i.ak, label %_ZNK6icu_7813UnicodeString6charAtEi.exit39, label %.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit39:       ; preds = %.lr.ph.split
  %i.al = getelementptr inbounds [2 x i8], ptr %i.l, i64 %indvars.iv
  %i.am = load i16, ptr %i.al, align 2            ; 2 uses
  %i.an = add i16 %i.am, -48
  %or.cond5 = icmp ult i16 %i.an, 10
  br i1 %or.cond5, label %bb.h, label %.thread

bb.h:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit39
  %i.ao = zext nneg i16 %i.am to i32
  %i.ap = icmp sgt i32 %.12749, 214748363         ; 2 uses
  %i.aq = mul nsw i32 %.12749, 10
  %i.ar = add i32 %i.aq, -48
  %i.as = add i32 %i.ar, %i.ao
  %.228 = select i1 %i.ap, i32 %.12749, i32 %i.as ; 2 uses
  %.2 = select i1 %i.ap, i8 1, i8 %.150           ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.h, %bb.g, %bb.f
  %.127.lcssa = phi i32 [ %.026, %bb.f ], [ %.228.us, %bb.g ], [ %.228, %bb.h ]
  %.1.lcssa = phi i8 [ %.0, %bb.f ], [ %.2.us, %bb.g ], [ %.2, %bb.h ]
  %.not36 = icmp eq i8 %.1.lcssa, 0
  %.127. = select i1 %.not36, i32 %.127.lcssa, i32 -2
  br label %.thread

.thread:                                          ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit39, %.lr.ph.split, %_ZNK6icu_7813UnicodeString6charAtEi.exit39.us, %.lr.ph.split.us, %bb.b, %bb.c, %bb.d, %._crit_edge, %bb.a
  %.130 = phi i32 [ -2, %bb.a ], [ 0, %bb.c ], [ -1, %bb.d ], [ %.127., %._crit_edge ], [ -1, %bb.b ], [ -1, %_ZNK6icu_7813UnicodeString6charAtEi.exit39.us ], [ -1, %.lr.ph.split.us ], [ -1, %.lr.ph.split ], [ -1, %_ZNK6icu_7813UnicodeString6charAtEi.exit39 ]
  ret i32 %.130
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK6icu_7814MessagePattern23autoQuoteApostropheDeepEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(127) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 126
  %i.c = load i8, ptr %i.b, align 2
  %.not = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.d) #15
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.i = zext nneg i32 %i.f to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ %i.i, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.j = load ptr, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %indvars.iv.next ; 3 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp eq i32 %i.l, 3
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.o = load i32, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  %i.q = load i16, ptr %i.p, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.q, ptr %i.a, align 2
  %i.r = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.o, i32 noundef 0, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.s, label %bb.c, label %.loopexit, !llvm.loop !14

.loopexit:                                        ; preds = %bb.e, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef double @_ZNK6icu_7814MessagePattern15getNumericValueERKNS0_4PartE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(127) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  switch i32 %i.a, label %bb.d [
    i32 12, label %bb.b
    i32 13, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.c = load i16, ptr %i.b, align 2
  %i.d = sitofp i16 %i.c to double
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.h = load i16, ptr %i.g, align 2
  %i.i = sext i16 %i.h to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.i
  %i.k = load double, ptr %i.j, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi double [ %i.d, %bb.b ], [ %i.k, %bb.c ], [ f0xC19D6F3454000000, %bb.a ]
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef double @_ZNK6icu_7814MessagePattern15getPluralOffsetEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(127) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = and i32 %i.e, -2
  %.not = icmp eq i32 %i.f, 12
  br i1 %.not, label %bb.b, label %_ZNK6icu_7814MessagePattern15getNumericValueERKNS0_4PartE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %i.e, 12
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %i.i = load i16, ptr %i.h, align 2
  %i.j = sitofp i16 %i.i to double
  br label %_ZNK6icu_7814MessagePattern15getNumericValueERKNS0_4PartE.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %i.n = load i16, ptr %i.m, align 2
  %i.o = sext i16 %i.n to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.o
  %i.q = load double, ptr %i.p, align 8
  br label %_ZNK6icu_7814MessagePattern15getNumericValueERKNS0_4PartE.exit

_ZNK6icu_7814MessagePattern15getNumericValueERKNS0_4PartE.exit: ; preds = %bb.d, %bb.c, %bb.a
  %.0 = phi double [ 0.000000e+00, %bb.a ], [ %i.j, %bb.c ], [ %i.q, %bb.d ]
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK6icu_7814MessagePattern4ParteqERKS1_(ptr nofree noundef nonnull readonly align 4 captures(address) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(address) dereferenceable(16) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4
  %i.c = load i32, ptr %1, align 4
  %i.d = icmp eq i32 %i.b, %i.c
  br i1 %i.d, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp eq i32 %i.f, %i.h
  br i1 %i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i16, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i16, ptr %i.l, align 4
  %i.n = icmp eq i16 %i.k, %i.m
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.p = load i16, ptr %i.o, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.r = load i16, ptr %i.q, align 2
  %i.s = icmp eq i16 %i.p, %i.r
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.u = load i32, ptr %i.t, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.w = load i32, ptr %i.v, align 4
  %i.x = icmp eq i32 %i.u, %i.w
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ %i.x, %bb.f ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(127) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8              ; 5 uses
  %i.e = load i32, ptr %5, align 4
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp sgt i32 %i.h, %i.d
  br i1 %i.i, label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = shl nsw i32 %i.d, 1                      ; 3 uses
  %i.k = icmp sgt i32 %i.d, 0
  br i1 %i.k, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.l = zext nneg i32 %i.j to i64
  %i.m = shl nuw nsw i64 %i.l, 4
  %i.n = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.m) #16 ; 3 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load i32, ptr %i.g, align 8
  %spec.select.i.i = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %i.o)
  %.1.i.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i.i, i32 %i.j)
  %i.p = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.q = sext i32 %.1.i.i to i64
  %i.r = shl nsw i64 %i.q, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.n, ptr align 4 %i.p, i64 %i.r, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4
  %.not.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @uprv_free_78(ptr noundef %i.p) #15
  br label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i

_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i: ; preds = %bb.f, %bb.e
  store ptr %i.n, ptr %i.b, align 8
  store i32 %i.j, ptr %i.g, align 8
  store i8 1, ptr %i.s, align 4
  %.pre = load ptr, ptr %i.a, align 8
  %.pre12 = load i32, ptr %i.c, align 8
  br label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit

bb.g:                                             ; preds = %bb.d, %bb.c
  store i32 7, ptr %5, align 4
  br label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.thread

_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit: ; preds = %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i, %bb.b
  %i.u = phi i32 [ %.pre12, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.v = phi ptr [ %.pre, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i ], [ %i.b, %bb.b ]
  %i.w = add nsw i32 %i.u, 1
  store i32 %i.w, ptr %i.c, align 8
  %i.x = sext i32 %i.u to i64
  %i.y = load ptr, ptr %i.v, align 8
  %i.z = getelementptr inbounds [16 x i8], ptr %i.y, i64 %i.x ; 5 uses
  store i32 %1, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 %2, ptr %i.aa, align 4
  %i.ab = trunc i32 %3 to i16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i16 %i.ab, ptr %i.ac, align 4
  %i.ad = trunc i32 %4 to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 10
  store i16 %i.ad, ptr %i.ae, align 2
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 0, ptr %i.af, align 4
  br label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.thread

_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.thread: ; preds = %bb.a, %bb.g, %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 -2147483647, -2147483648) i32 @_ZN6icu_7814MessagePattern8parseArgEiiiP11UParseErrorR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8              ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 9 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 5 uses
  %i.e = load i32, ptr %5, align 4
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %.critedge147

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp sgt i32 %i.h, %i.b
  br i1 %i.i, label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = shl nsw i32 %i.b, 1                      ; 3 uses
  %i.k = icmp sgt i32 %i.b, 0
  br i1 %i.k, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.l = zext nneg i32 %i.j to i64
  %i.m = shl nuw nsw i64 %i.l, 4
  %i.n = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.m) #16 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load i32, ptr %i.g, align 8
  %spec.select.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.b, i32 %i.o)
  %.1.i.i.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i.i.i, i32 %i.j)
  %i.p = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.q = sext i32 %.1.i.i.i to i64
  %i.r = shl nsw i64 %i.q, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.n, ptr align 4 %i.p, i64 %i.r, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4
  %.not.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i, label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @uprv_free_78(ptr noundef %i.p) #15
  br label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i

_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i: ; preds = %bb.f, %bb.e
  store ptr %i.n, ptr %i.d, align 8
  store i32 %i.j, ptr %i.g, align 8
  store i8 1, ptr %i.s, align 4
  %.pre.i = load ptr, ptr %i.c, align 8
  %.pre12.i = load i32, ptr %i.a, align 8
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit

bb.g:                                             ; preds = %bb.d, %bb.c
  store i32 7, ptr %5, align 4
  br label %.critedge147

_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit: ; preds = %bb.b, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i
  %i.u = phi i32 [ %.pre12.i, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i ], [ %i.b, %bb.b ] ; 2 uses
  %i.v = phi ptr [ %.pre.i, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i ], [ %i.d, %bb.b ]
  %i.w = add nsw i32 %i.u, 1
  store i32 %i.w, ptr %i.a, align 8
  %i.x = sext i32 %i.u to i64
  %i.y = load ptr, ptr %i.v, align 8
  %i.z = getelementptr inbounds [16 x i8], ptr %i.y, i64 %i.x ; 5 uses
  store i32 5, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 %1, ptr %i.aa, align 4
  %i.ab = trunc i32 %2 to i16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i16 %i.ab, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 10
  store i16 0, ptr %i.ad, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 0, ptr %i.ae, align 4
  %.pre = load i32, ptr %5, align 4
  %i.af = icmp slt i32 %.pre, 1
  br i1 %i.af, label %bb.h, label %.critedge147

bb.h:                                             ; preds = %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit
  %i.ag = add nsw i32 %2, %1                      ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.ai = load i16, ptr %i.ah, align 8            ; 4 uses
  %i.aj = and i16 %i.ai, 17
  %.not.i.i = icmp eq i16 %i.aj, 0
  br i1 %.not.i.i, label %bb.i, label %_ZN6icu_7814MessagePattern14skipWhiteSpaceEi.exit

bb.i:                                             ; preds = %bb.h
  %i.ak = and i16 %i.ai, 2
  %.not2.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not2.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 26
  br label %_ZN6icu_7814MessagePattern14skipWhiteSpaceEi.exit

bb.k:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.an = load ptr, ptr %i.am, align 8
  br label %_ZN6icu_7814MessagePattern14skipWhiteSpaceEi.exit

_ZN6icu_7814MessagePattern14skipWhiteSpaceEi.exit: ; preds = %bb.h, %bb.j, %bb.k
  %.0.i.i = phi ptr [ %i.an, %bb.k ], [ %i.al, %bb.j ], [ null, %bb.h ] ; 2 uses
  %i.ao = icmp slt i16 %i.ai, 0
  %i.ap = ashr i16 %i.ai, 5
  %i.aq = sext i16 %i.ap to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 8 uses
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = select i1 %i.ao, i32 %i.as, i32 %i.aq
  %i.au = sext i32 %i.ag to i64
  %i.av = getelementptr inbounds [2 x i8], ptr %.0.i.i, i64 %i.au
  %i.aw = sub nsw i32 %i.at, %i.ag
  %i.ax = tail call noundef ptr @_ZN6icu_7812PatternProps14skipWhiteSpaceEPKDsi(ptr noundef %i.av, i32 noundef %i.aw) #15
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %.0.i.i to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 2 uses
  %i.bb = lshr exact i64 %i.ba, 1
  %i.bc = trunc i64 %i.bb to i32                  ; 14 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.be = load i16, ptr %i.ah, align 8            ; 4 uses
  %i.bf = icmp slt i16 %i.be, 0
  %i.bg = ashr i16 %i.be, 5
  %i.bh = sext i16 %i.bg to i32
  %i.bi = load i32, ptr %i.ar, align 4
  %i.bj = select i1 %i.bf, i32 %i.bi, i32 %i.bh   ; 2 uses
  %i.bk = icmp eq i32 %i.bj, %i.bc
  br i1 %i.bk, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZN6icu_7814MessagePattern14skipWhiteSpaceEi.exit
  %i.bl = icmp eq ptr %4, null
  br i1 %i.bl, label %_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  tail call void @_ZNK6icu_7813UnicodeString9doExtractEiiPDsi(ptr noundef nonnull align 8 dereferenceable(64) %i.bd, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.bn, i32 noundef 0) #15
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.bn) #15, !srcloc !8
  store i16 0, ptr %i.bn, align 4
  %i.bo = load i16, ptr %i.ah, align 8            ; 3 uses
  %i.bp = icmp slt i16 %i.bo, 0
  %i.bq = ashr i16 %i.bo, 5
  %i.br = sext i16 %i.bq to i32
  %i.bs = load i32, ptr %i.ar, align 4
  %i.bt = select i1 %i.bp, i32 %i.bs, i32 %i.br   ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, 15
  br i1 %i.bu, label %bb.n, label %_ZNK6icu_7813UnicodeStringixEi.exit33.i

bb.n:                                             ; preds = %bb.m
  %i.bv = and i16 %i.bo, 2
  %.not.i.i.i32.i = icmp eq i16 %i.bv, 0
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = select i1 %.not.i.i.i32.i, ptr %i.by, ptr %i.bw
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 28
  %i.cb = load i16, ptr %i.ca, align 2
  %i.cc = and i16 %i.cb, -1024
  %i.cd = icmp eq i16 %i.cc, -10240
  %i.ce = select i1 %i.cd, i32 14, i32 15
  br label %_ZNK6icu_7813UnicodeStringixEi.exit33.i

_ZNK6icu_7813UnicodeStringixEi.exit33.i:          ; preds = %bb.n, %bb.m
  %.1.i = phi i32 [ %i.bt, %bb.m ], [ %i.ce, %bb.n ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  tail call void @_ZNK6icu_7813UnicodeString9doExtractEiiPDsi(ptr noundef nonnull align 8 dereferenceable(64) %i.bd, i32 noundef 0, i32 noundef %.1.i, ptr noundef nonnull %i.cf, i32 noundef 0) #15
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.cf) #15, !srcloc !8
  %i.cg = sext i32 %.1.i to i64
  %i.ch = getelementptr inbounds [2 x i8], ptr %i.cf, i64 %i.cg
  store i16 0, ptr %i.ch, align 2
  br label %_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori.exit

_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori.exit: ; preds = %bb.l, %_ZNK6icu_7813UnicodeStringixEi.exit33.i
  store i32 65801, ptr %5, align 4
  br label %.critedge147

bb.o:                                             ; preds = %_ZN6icu_7814MessagePattern14skipWhiteSpaceEi.exit
  %i.ci = and i16 %i.be, 17
  %.not.i.i148 = icmp eq i16 %i.ci, 0
  br i1 %.not.i.i148, label %bb.p, label %_ZN6icu_7814MessagePattern14skipIdentifierEi.exit

bb.p:                                             ; preds = %bb.o
  %i.cj = and i16 %i.be, 2
  %.not2.i.i150 = icmp eq i16 %i.cj, 0
  br i1 %.not2.i.i150, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 26
  br label %_ZN6icu_7814MessagePattern14skipIdentifierEi.exit

bb.r:                                             ; preds = %bb.p
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cm = load ptr, ptr %i.cl, align 8
  br label %_ZN6icu_7814MessagePattern14skipIdentifierEi.exit

_ZN6icu_7814MessagePattern14skipIdentifierEi.exit: ; preds = %bb.o, %bb.q, %bb.r
  %.0.i.i149 = phi ptr [ %i.cm, %bb.r ], [ %i.ck, %bb.q ], [ null, %bb.o ] ; 2 uses
  %sext = shl i64 %i.ba, 31
  %i.cn = ashr i64 %sext, 32
  %i.co = getelementptr inbounds [2 x i8], ptr %.0.i.i149, i64 %i.cn
  %i.cp = sub nsw i32 %i.bj, %i.bc
  %i.cq = tail call noundef ptr @_ZN6icu_7812PatternProps14skipIdentifierEPKDsi(ptr noundef %i.co, i32 noundef %i.cp) #15
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %.0.i.i149 to i64
  %i.ct = sub i64 %i.cr, %i.cs                    ; 2 uses
  %i.cu = lshr exact i64 %i.ct, 1
  %i.cv = trunc i64 %i.cu to i32                  ; 4 uses
  %i.cw = tail call noundef i32 @_ZN6icu_7814MessagePattern14parseArgNumberERKNS_13UnicodeStringEii(ptr noundef nonnull align 8 dereferenceable(64) %i.bd, i32 noundef %i.bc, i32 noundef %i.cv) ; 4 uses
  %i.cx = icmp sgt i32 %i.cw, -1
  br i1 %i.cx, label %bb.s, label %bb.aa

bb.s:                                             ; preds = %_ZN6icu_7814MessagePattern14skipIdentifierEi.exit
  %i.cy = sub nsw i32 %i.cv, %i.bc                ; 2 uses
  %i.cz = icmp slt i32 %i.cy, 65536
  %i.da = icmp samesign ult i32 %i.cw, 32768
  %or.cond.not = and i1 %i.da, %i.cz
  br i1 %or.cond.not, label %bb.t, label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit159

bb.t:                                             ; preds = %bb.s
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 125
  store i8 1, ptr %i.db, align 1
  %i.dc = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.dd = load i32, ptr %i.a, align 8             ; 5 uses
  %i.de = load i32, ptr %5, align 4
  %i.df = icmp slt i32 %i.de, 1
  br i1 %i.df, label %bb.u, label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit159.thread

bb.u:                                             ; preds = %bb.t
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 3 uses
  %i.dh = load i32, ptr %i.dg, align 8
  %i.di = icmp sgt i32 %i.dh, %i.dd
  br i1 %i.di, label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i158, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dj = shl nsw i32 %i.dd, 1                    ; 3 uses
  %i.dk = icmp sgt i32 %i.dd, 0
  br i1 %i.dk, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.dl = zext nneg i32 %i.dj to i64
  %i.dm = shl nuw nsw i64 %i.dl, 4
  %i.dn = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.dm) #16 ; 3 uses
  %.not.i.i.i151 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i151, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.do = load i32, ptr %i.dg, align 8
  %spec.select.i.i.i152 = tail call i32 @llvm.smin.i32(i32 %i.dd, i32 %i.do)
  %.1.i.i.i153 = tail call i32 @llvm.smin.i32(i32 %spec.select.i.i.i152, i32 %i.dj)
  %i.dp = load ptr, ptr %i.dc, align 8            ; 2 uses
  %i.dq = sext i32 %.1.i.i.i153 to i64
  %i.dr = shl nsw i64 %i.dq, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dn, ptr align 4 %i.dp, i64 %i.dr, i1 false)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dc, i64 12 ; 2 uses
  %i.dt = load i8, ptr %i.ds, align 4
  %.not.i.i.i.i154 = icmp eq i8 %i.dt, 0
  br i1 %.not.i.i.i.i154, label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i155, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @uprv_free_78(ptr noundef %i.dp) #15
  br label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i155

_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i155: ; preds = %bb.y, %bb.x
  store ptr %i.dn, ptr %i.dc, align 8
  store i32 %i.dj, ptr %i.dg, align 8
  store i8 1, ptr %i.ds, align 4
  %.pre.i156 = load ptr, ptr %i.c, align 8
  %.pre12.i157 = load i32, ptr %i.a, align 8
  br label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i158

bb.z:                                             ; preds = %bb.w, %bb.v
  store i32 7, ptr %5, align 4
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit159.thread

_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i158: ; preds = %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i155, %bb.u
  %i.du = phi i32 [ %.pre12.i157, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i155 ], [ %i.dd, %bb.u ] ; 2 uses
  %i.dv = phi ptr [ %.pre.i156, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i155 ], [ %i.dc, %bb.u ]
  %i.dw = add nsw i32 %i.du, 1
  store i32 %i.dw, ptr %i.a, align 8
  %i.dx = sext i32 %i.du to i64
  %i.dy = load ptr, ptr %i.dv, align 8
  %i.dz = getelementptr inbounds [16 x i8], ptr %i.dy, i64 %i.dx ; 5 uses
  store i32 7, ptr %i.dz, align 4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  store i32 %i.bc, ptr %i.ea, align 4
  %i.eb = trunc i32 %i.cy to i16
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store i16 %i.eb, ptr %i.ec, align 4
  %i.ed = trunc nuw nsw i32 %i.cw to i16
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 10
  store i16 %i.ed, ptr %i.ee, align 2
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dz, i64 12
  store i32 0, ptr %i.ef, align 4
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit159.thread

_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit159: ; preds = %bb.s
  tail call void @_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef %4, i32 noundef %i.bc)
  store i32 8, ptr %5, align 4
  br label %.critedge147

bb.aa:                                            ; preds = %_ZN6icu_7814MessagePattern14skipIdentifierEi.exit
  %i.eg = icmp eq i32 %i.cw, -1
  br i1 %i.eg, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.eh = sub nsw i32 %i.cv, %i.bc                ; 2 uses
  %i.ei = icmp slt i32 %i.eh, 65536
  br i1 %i.ei, label %.thread, label %bb.ac

.thread:                                          ; preds = %bb.ab
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i8 1, ptr %i.ej, align 4
  tail call void @_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef 8, i32 noundef %i.bc, i32 noundef %i.eh, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %5)
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit159.thread

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef %4, i32 noundef %i.bc)
  store i32 8, ptr %5, align 4
  br label %.critedge147

bb.ad:                                            ; preds = %bb.aa
  tail call void @_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef %4, i32 noundef %i.bc)
  store i32 65799, ptr %5, align 4
  br label %.critedge147

_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit159.thread: ; preds = %bb.t, %bb.z, %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i158, %.thread
  %i.ek = load i16, ptr %i.ah, align 8            ; 4 uses
  %i.el = and i16 %i.ek, 17
  %.not.i.i160 = icmp eq i16 %i.el, 0
  br i1 %.not.i.i160, label %bb.ae, label %_ZN6icu_7814MessagePattern14skipWhiteSpaceEi.exit163

bb.ae:                                            ; preds = %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit159.thread
  %i.em = and i16 %i.ek, 2
  %.not2.i.i162 = icmp eq i16 %i.em, 0
  br i1 %.not2.i.i162, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 26
  br label %_ZN6icu_7814MessagePattern14skipWhiteSpaceEi.exit163

bb.ag:                                            ; preds = %bb.ae
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ep = load ptr, ptr %i.eo, align 8
  br label %_ZN6icu_7814MessagePattern14skipWhiteSpaceEi.exit163

_ZN6icu_7814MessagePattern14skipWhiteSpaceEi.exit163: ; preds = %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit159.thread, %bb.af, %bb.ag
  %.0.i.i161 = phi ptr [ %i.ep, %bb.ag ], [ %i.en, %bb.af ], [ null, %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit159.thread ] ; 2 uses
  %i.eq = icmp slt i16 %i.ek, 0
  %i.er = ashr i16 %i.ek, 5
  %i.es = sext i16 %i.er to i32
  %i.et = load i32, ptr %i.ar, align 4
  %i.eu = select i1 %i.eq, i32 %i.et, i32 %i.es
  %sext208 = shl i64 %i.ct, 31
  %i.ev = ashr i64 %sext208, 32
  %i.ew = getelementptr inbounds [2 x i8], ptr %.0.i.i161, i64 %i.ev
  %i.ex = sub nsw i32 %i.eu, %i.cv
  %i.ey = tail call noundef ptr @_ZN6icu_7812PatternProps14skipWhiteSpaceEPKDsi(ptr noundef %i.ew, i32 noundef %i.ex) #15
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = ptrtoint ptr %.0.i.i161 to i64
  %i.fb = sub i64 %i.ez, %i.fa                    ; 2 uses
  %i.fc = lshr exact i64 %i.fb, 1
  %i.fd = trunc i64 %i.fc to i32                  ; 4 uses
  %i.fe = load i16, ptr %i.ah, align 8            ; 3 uses
  %i.ff = icmp slt i16 %i.fe, 0
  %i.fg = ashr i16 %i.fe, 5
  %i.fh = sext i16 %i.fg to i32
  %i.fi = load i32, ptr %i.ar, align 4
  %i.fj = select i1 %i.ff, i32 %i.fi, i32 %i.fh   ; 2 uses
  %i.fk = icmp eq i32 %i.fj, %i.fd
  br i1 %i.fk, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %_ZN6icu_7814MessagePattern14skipWhiteSpaceEi.exit163
  %i.fl = icmp eq ptr %4, null
  br i1 %i.fl, label %_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori.exit167, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.fm, align 4
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  tail call void @_ZNK6icu_7813UnicodeString9doExtractEiiPDsi(ptr noundef nonnull align 8 dereferenceable(64) %i.bd, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.fn, i32 noundef 0) #15
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.fn) #15, !srcloc !8
  store i16 0, ptr %i.fn, align 4
  %i.fo = load i16, ptr %i.ah, align 8            ; 3 uses
  %i.fp = icmp slt i16 %i.fo, 0
  %i.fq = ashr i16 %i.fo, 5
  %i.fr = sext i16 %i.fq to i32
  %i.fs = load i32, ptr %i.ar, align 4
  %i.ft = select i1 %i.fp, i32 %i.fs, i32 %i.fr   ; 2 uses
  %i.fu = icmp sgt i32 %i.ft, 15
  br i1 %i.fu, label %bb.aj, label %_ZNK6icu_7813UnicodeStringixEi.exit33.i164

bb.aj:                                            ; preds = %bb.ai
  %i.fv = and i16 %i.fo, 2
  %.not.i.i.i32.i166 = icmp eq i16 %i.fv, 0
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fy = load ptr, ptr %i.fx, align 8
  %i.fz = select i1 %.not.i.i.i32.i166, ptr %i.fy, ptr %i.fw
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 28
  %i.gb = load i16, ptr %i.ga, align 2
  %i.gc = and i16 %i.gb, -1024
  %i.gd = icmp eq i16 %i.gc, -10240
  %i.ge = select i1 %i.gd, i32 14, i32 15
  br label %_ZNK6icu_7813UnicodeStringixEi.exit33.i164

_ZNK6icu_7813UnicodeStringixEi.exit33.i164:       ; preds = %bb.aj, %bb.ai
  %.1.i165 = phi i32 [ %i.ft, %bb.ai ], [ %i.ge, %bb.aj ] ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  tail call void @_ZNK6icu_7813UnicodeString9doExtractEiiPDsi(ptr noundef nonnull align 8 dereferenceable(64) %i.bd, i32 noundef 0, i32 noundef %.1.i165, ptr noundef nonnull %i.gf, i32 noundef 0) #15
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.gf) #15, !srcloc !8
  %i.gg = sext i32 %.1.i165 to i64
  %i.gh = getelementptr inbounds [2 x i8], ptr %i.gf, i64 %i.gg
  store i16 0, ptr %i.gh, align 2
  br label %_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori.exit167

_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori.exit167: ; preds = %bb.ah, %_ZNK6icu_7813UnicodeStringixEi.exit33.i164
  store i32 65801, ptr %5, align 4
  br label %.critedge147

bb.ak:                                            ; preds = %_ZN6icu_7814MessagePattern14skipWhiteSpaceEi.exit163
  %i.gi = icmp ugt i32 %i.fj, %i.fd
  br i1 %i.gi, label %_ZNK6icu_7813UnicodeString6charAtEi.exit, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.ak
  %i.gj = and i16 %i.fe, 2
  %.not.i.i.i169 = icmp eq i16 %i.gj, 0
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.gm = load ptr, ptr %i.gl, align 8
  %i.gn = select i1 %.not.i.i.i169, ptr %i.gm, ptr %i.gk
  %sext209 = shl i64 %i.fb, 31
  %i.go = ashr i64 %sext209, 32
  %i.gp = getelementptr inbounds [2 x i8], ptr %i.gn, i64 %i.go
  %i.gq = load i16, ptr %i.gp, align 2
  switch i16 %i.gq, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread [
end_hunk_3
begin_hunk_4_@_ZN6icu_7814MessagePattern8parseArgEiiiP11UParseErrorR10UErrorCode:bb.a
  %or.cond = and i1 %i.hk, %i.hm
  br i1 %or.cond, label %_ZNK6icu_7813UnicodeString6charAtEi.exit172, label %.critedge, !llvm.loop !15

.critedge.loopexit.split.loop.exit245:            ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit172
  %i.hn = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.am, %.critedge.loopexit.split.loop.exit245, %bb.al
  %.0116.lcssa = phi i32 [ %i.gs, %bb.al ], [ %i.hn, %.critedge.loopexit.split.loop.exit245 ], [ %i.gy, %bb.am ] ; 3 uses
  %i.ho = sub nsw i32 %.0116.lcssa, %i.gs         ; 3 uses
  %i.hp = tail call noundef i32 @_ZN6icu_7814MessagePattern14skipWhiteSpaceEi(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef %.0116.lcssa) ; 7 uses
  %i.hq = load i16, ptr %i.ah, align 8            ; 3 uses
  %i.hr = icmp slt i16 %i.hq, 0
  %i.hs = ashr i16 %i.hq, 5
  %i.ht = sext i16 %i.hs to i32
  %i.hu = load i32, ptr %i.ar, align 4
  %i.hv = select i1 %i.hr, i32 %i.hu, i32 %i.ht   ; 2 uses
  %i.hw = icmp eq i32 %i.hp, %i.hv
  br i1 %i.hw, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.critedge
  tail call void @_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef %4, i32 noundef 0)
  store i32 65801, ptr %5, align 4
  br label %.critedge147

bb.ao:                                            ; preds = %.critedge
  %i.hx = icmp ne i32 %.0116.lcssa, %i.gs
  %i.hy = icmp ult i32 %i.hp, %i.hv
  %or.cond207 = and i1 %i.hx, %i.hy
  br i1 %or.cond207, label %_ZNK6icu_7813UnicodeString6charAtEi.exit175, label %_ZNK6icu_7813UnicodeString6charAtEi.exit175.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit175:      ; preds = %bb.ao
  %i.hz = and i16 %i.hq, 2
  %.not.i.i.i174 = icmp eq i16 %i.hz, 0
  %i.ia = load ptr, ptr %i.gl, align 8
  %i.ib = select i1 %.not.i.i.i174, ptr %i.ia, ptr %i.gk
  %i.ic = sext i32 %i.hp to i64
  %i.id = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.ic
  %i.ie = load i16, ptr %i.id, align 2            ; 5 uses
  switch i16 %i.ie, label %_ZNK6icu_7813UnicodeString6charAtEi.exit175.thread [
    i16 125, label %bb.ap
    i16 44, label %bb.ap
  ]

_ZNK6icu_7813UnicodeString6charAtEi.exit175.thread: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit175, %bb.ao
  tail call void @_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef %4, i32 noundef %i.bc)
  store i32 65799, ptr %5, align 4
  br label %.critedge147

bb.ap:                                            ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit175, %_ZNK6icu_7813UnicodeString6charAtEi.exit175
  %i.if = icmp sgt i32 %i.ho, 65535
  br i1 %i.if, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  tail call void @_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef %4, i32 noundef %i.bc)
  store i32 8, ptr %5, align 4
  br label %.critedge147

bb.ar:                                            ; preds = %bb.ap
  switch i32 %i.ho, label %.thread181 [
    i32 6, label %bb.as
    i32 13, label %bb.av
  ]

bb.as:                                            ; preds = %bb.ar
  %i.ig = tail call noundef signext i8 @_ZN6icu_7814MessagePattern8isChoiceEi(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef %i.gs)
  %.not139 = icmp eq i8 %i.ig, 0
  br i1 %.not139, label %bb.at, label %.thread188

bb.at:                                            ; preds = %bb.as
  %i.ih = tail call noundef signext i8 @_ZN6icu_7814MessagePattern8isPluralEi(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef %i.gs)
  %.not140 = icmp eq i8 %i.ih, 0
  br i1 %.not140, label %bb.au, label %.thread188.thread

bb.au:                                            ; preds = %bb.at
  %i.ii = tail call noundef signext i8 @_ZN6icu_7814MessagePattern8isSelectEi(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef %i.gs)
  %.not141 = icmp eq i8 %i.ii, 0                  ; 2 uses
  %i.ij = select i1 %.not141, i16 1, i16 4
  %i.ik = load ptr, ptr %i.c, align 8
  %i.il = sext i32 %i.b to i64
  %i.im = load ptr, ptr %i.ik, align 8
  %i.in = getelementptr inbounds [16 x i8], ptr %i.im, i64 %i.il
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 10
  store i16 %i.ij, ptr %i.io, align 2
  br i1 %.not141, label %.thread236, label %bb.ax

bb.av:                                            ; preds = %bb.ar
  %i.ip = tail call noundef signext i8 @_ZN6icu_7814MessagePattern8isSelectEi(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef %i.gs)
  %.not137 = icmp eq i8 %i.ip, 0
  br i1 %.not137, label %.thread181, label %bb.aw

.thread181:                                       ; preds = %bb.ar, %bb.av
  %i.iq = load ptr, ptr %i.c, align 8
  %i.ir = sext i32 %i.b to i64
  %i.is = load ptr, ptr %i.iq, align 8
  %i.it = getelementptr inbounds [16 x i8], ptr %i.is, i64 %i.ir
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 10
  store i16 1, ptr %i.iu, align 2
  br label %.thread236

bb.aw:                                            ; preds = %bb.av
  %i.iv = add nsw i32 %i.gs, 6
  %i.iw = tail call noundef signext i8 @_ZN6icu_7814MessagePattern9isOrdinalEi(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef %i.iv)
  %.not138 = icmp eq i8 %i.iw, 0                  ; 2 uses
  %i.ix = select i1 %.not138, i16 1, i16 5
  %i.iy = load ptr, ptr %i.c, align 8
  %i.iz = sext i32 %i.b to i64
  %i.ja = load ptr, ptr %i.iy, align 8
  %i.jb = getelementptr inbounds [16 x i8], ptr %i.ja, i64 %i.iz
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 10
  store i16 %i.ix, ptr %i.jc, align 2
  br i1 %.not138, label %.thread236, label %bb.ax

bb.ax:                                            ; preds = %bb.au, %bb.aw
  %.0120183 = phi i32 [ 4, %bb.au ], [ 5, %bb.aw ]
  %i.jd = icmp eq i16 %i.ie, 125
  br i1 %i.jd, label %.thread192, label %.thread197

.thread236:                                       ; preds = %bb.aw, %.thread181, %bb.au
  tail call void @_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef 9, i32 noundef %i.gs, i32 noundef %i.ho, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %i.je = icmp eq i16 %i.ie, 125
  br i1 %i.je, label %.thread240, label %bb.ay

.thread188:                                       ; preds = %bb.as
  %i.jf = load ptr, ptr %i.c, align 8
  %i.jg = sext i32 %i.b to i64
  %i.jh = load ptr, ptr %i.jf, align 8
  %i.ji = getelementptr inbounds [16 x i8], ptr %i.jh, i64 %i.jg
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 10
  store i16 2, ptr %i.jj, align 2
  %i.jk = icmp eq i16 %i.ie, 125
  br i1 %i.jk, label %.thread192, label %bb.az

.thread188.thread:                                ; preds = %bb.at
  %i.jl = load ptr, ptr %i.c, align 8
  %i.jm = sext i32 %i.b to i64
  %i.jn = load ptr, ptr %i.jl, align 8
  %i.jo = getelementptr inbounds [16 x i8], ptr %i.jn, i64 %i.jm
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 10
  store i16 3, ptr %i.jp, align 2
  %i.jq = icmp eq i16 %i.ie, 125
  br i1 %i.jq, label %.thread192, label %.thread197

.thread192:                                       ; preds = %bb.ax, %.thread188.thread, %.thread188
  tail call void @_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef %4, i32 noundef %i.bc)
  store i32 65799, ptr %5, align 4
  br label %.critedge147

bb.ay:                                            ; preds = %.thread236
  %i.jr = add nuw nsw i32 %i.hp, 1
  %i.js = tail call noundef i32 @_ZN6icu_7814MessagePattern16parseSimpleStyleEiP11UParseErrorR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef %i.jr, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  br label %.thread240

bb.az:                                            ; preds = %.thread188
  %i.jt = add nuw nsw i32 %i.hp, 1
  %i.ju = tail call noundef i32 @_ZN6icu_7814MessagePattern16parseChoiceStyleEiiP11UParseErrorR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef %i.jt, i32 noundef %3, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  br label %.thread240

.thread197:                                       ; preds = %bb.ax, %.thread188.thread
  %.0120183190196199 = phi i32 [ 3, %.thread188.thread ], [ %.0120183, %bb.ax ] ; 2 uses
  %i.jv = add nuw nsw i32 %i.hp, 1
  %i.jw = tail call noundef i32 @_ZN6icu_7814MessagePattern24parsePluralOrSelectStyleE22UMessagePatternArgTypeiiP11UParseErrorR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef %.0120183190196199, i32 noundef %i.jv, i32 noundef %3, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  br label %.thread240

.thread240:                                       ; preds = %.thread236, %bb.ay, %.thread197, %bb.az, %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %.2122 = phi i32 [ 0, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ 1, %bb.ay ], [ 2, %bb.az ], [ %.0120183190196199, %.thread197 ], [ 1, %.thread236 ]
  %.3119 = phi i32 [ %i.fd, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ %i.js, %bb.ay ], [ %i.ju, %bb.az ], [ %i.jw, %.thread197 ], [ %i.hp, %.thread236 ] ; 2 uses
  tail call void @_ZN6icu_7814MessagePattern12addLimitPartEi23UMessagePatternPartTypeiiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef %i.b, i32 noundef 6, i32 noundef %.3119, i32 noundef 1, i32 noundef %.2122, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %i.jx = add nsw i32 %.3119, 1
  br label %.critedge147

.critedge147:                                     ; preds = %bb.g, %bb.a, %bb.ac, %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit159, %_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori.exit, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread, %.thread240, %.thread192, %bb.aq, %_ZNK6icu_7813UnicodeString6charAtEi.exit175.thread, %bb.an, %_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori.exit167, %bb.ad, %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit
  %.7 = phi i32 [ 0, %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit ], [ 0, %_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori.exit ], [ 0, %_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori.exit167 ], [ 0, %bb.ad ], [ 0, %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit159 ], [ 0, %bb.ac ], [ %i.jx, %.thread240 ], [ 0, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread ], [ 0, %.thread192 ], [ 0, %bb.aq ], [ 0, %_ZNK6icu_7813UnicodeString6charAtEi.exit175.thread ], [ 0, %bb.an ], [ 0, %bb.a ], [ 0, %bb.g ]
  ret i32 %.7
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7814MessagePattern12addLimitPartEi23UMessagePatternPartTypeiiiR10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(127) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8              ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = sext i32 %1 to i64
  %i.f = load ptr, ptr %i.d, align 8
  %i.g = getelementptr inbounds [16 x i8], ptr %i.f, i64 %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 %i.b, ptr %i.h, align 4
  %i.i = load ptr, ptr %i.c, align 8              ; 5 uses
  %i.j = load i32, ptr %6, align 4
  %i.k = icmp slt i32 %i.j, 1
  br i1 %i.k, label %bb.b, label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8
  %i.n = icmp sgt i32 %i.m, %i.b
  br i1 %i.n, label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = shl nsw i32 %i.b, 1                      ; 3 uses
  %i.p = icmp sgt i32 %i.b, 0
  br i1 %i.p, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.q = zext nneg i32 %i.o to i64
  %i.r = shl nuw nsw i64 %i.q, 4
  %i.s = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.r) #16 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i32, ptr %i.l, align 8
  %spec.select.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.b, i32 %i.t)
  %.1.i.i.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i.i.i, i32 %i.o)
  %i.u = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.v = sext i32 %.1.i.i.i to i64
  %i.w = shl nsw i64 %i.v, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.s, ptr align 4 %i.u, i64 %i.w, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 2 uses
  %i.y = load i8, ptr %i.x, align 4
  %.not.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i.i, label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @uprv_free_78(ptr noundef %i.u) #15
  br label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i

_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i: ; preds = %bb.f, %bb.e
  store ptr %i.s, ptr %i.i, align 8
  store i32 %i.o, ptr %i.l, align 8
  store i8 1, ptr %i.x, align 4
  %.pre.i = load ptr, ptr %i.c, align 8
  %.pre12.i = load i32, ptr %i.a, align 8
  br label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i

bb.g:                                             ; preds = %bb.d, %bb.c
  store i32 7, ptr %6, align 4
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit

_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i: ; preds = %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i, %bb.b
  %i.z = phi i32 [ %.pre12.i, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i ], [ %i.b, %bb.b ] ; 2 uses
  %i.aa = phi ptr [ %.pre.i, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i ], [ %i.i, %bb.b ]
  %i.ab = add nsw i32 %i.z, 1
  store i32 %i.ab, ptr %i.a, align 8
  %i.ac = sext i32 %i.z to i64
  %i.ad = load ptr, ptr %i.aa, align 8
  %i.ae = getelementptr inbounds [16 x i8], ptr %i.ad, i64 %i.ac ; 5 uses
  store i32 %2, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 %3, ptr %i.af, align 4
  %i.ag = trunc i32 %4 to i16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i16 %i.ag, ptr %i.ah, align 4
  %i.ai = trunc i32 %5 to i16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 10
  store i16 %i.ai, ptr %i.aj, align 2
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.ak, align 4
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit

_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit: ; preds = %bb.a, %bb.g, %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZN6icu_7814MessagePattern23inTopLevelChoiceMessageEi22UMessagePatternArgType(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(127) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 1
  %i.b = icmp eq i32 %2, 2
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp ne i32 %i.f, 0
  %i.h = zext i1 %i.g to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi i8 [ %i.h, %bb.b ], [ 0, %bb.a ]
  ret i8 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %2, ptr %i.b, align 4
  %i.c = icmp sgt i32 %2, 15
  br i1 %i.c, label %bb.c, label %_ZNK6icu_7813UnicodeStringixEi.exit

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %2, -15                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i16, ptr %i.e, align 8              ; 3 uses
  %i.g = icmp slt i16 %i.f, 0
  %i.h = ashr i16 %i.f, 5
  %i.i = sext i16 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.k = load i32, ptr %i.j, align 4
  %i.l = select i1 %i.g, i32 %i.k, i32 %i.i
  %i.m = icmp ult i32 %i.d, %i.l
  br i1 %i.m, label %bb.d, label %_ZNK6icu_7813UnicodeStringixEi.exit

bb.d:                                             ; preds = %bb.c
  %i.n = and i16 %i.f, 2
  %.not.i.i.i = icmp eq i16 %i.n, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %.not.i.i.i, ptr %i.q, ptr %i.o
  %i.s = zext nneg i32 %i.d to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2
  %i.v = and i16 %i.u, -1024
  %i.w = icmp eq i16 %i.v, -9216
  %i.x = select i1 %i.w, i32 14, i32 15
  br label %_ZNK6icu_7813UnicodeStringixEi.exit

_ZNK6icu_7813UnicodeStringixEi.exit:              ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %2, %bb.b ], [ %i.x, %bb.d ], [ 15, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = sub nsw i32 %2, %.0
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  tail call void @_ZNK6icu_7813UnicodeString9doExtractEiiPDsi(ptr noundef nonnull align 8 dereferenceable(64) %i.y, i32 noundef %i.z, i32 noundef %.0, ptr noundef nonnull %i.aa, i32 noundef 0) #15
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.aa) #15, !srcloc !8
  %i.ab = sext i32 %.0 to i64
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.aa, i64 %i.ab
  store i16 0, ptr %i.ac, align 2
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i16, ptr %i.ad, align 8            ; 3 uses
  %i.af = icmp slt i16 %i.ae, 0
  %i.ag = ashr i16 %i.ae, 5
  %i.ah = sext i16 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = select i1 %i.af, i32 %i.aj, i32 %i.ah   ; 2 uses
  %i.al = sub nsw i32 %i.ak, %2                   ; 2 uses
  %i.am = icmp sgt i32 %i.al, 15
  br i1 %i.am, label %bb.e, label %_ZNK6icu_7813UnicodeStringixEi.exit33

bb.e:                                             ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit
  %i.an = add nsw i32 %2, 14                      ; 2 uses
  %i.ao = icmp ult i32 %i.an, %i.ak
  br i1 %i.ao, label %bb.f, label %_ZNK6icu_7813UnicodeStringixEi.exit33

bb.f:                                             ; preds = %bb.e
  %i.ap = and i16 %i.ae, 2
  %.not.i.i.i32 = icmp eq i16 %i.ap, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = select i1 %.not.i.i.i32, ptr %i.as, ptr %i.aq
  %i.au = sext i32 %i.an to i64
  %i.av = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2
  %i.ax = and i16 %i.aw, -1024
  %i.ay = icmp eq i16 %i.ax, -10240
  %i.az = select i1 %i.ay, i32 14, i32 15
  br label %_ZNK6icu_7813UnicodeStringixEi.exit33

_ZNK6icu_7813UnicodeStringixEi.exit33:            ; preds = %bb.f, %bb.e, %_ZNK6icu_7813UnicodeStringixEi.exit
  %.1 = phi i32 [ %i.al, %_ZNK6icu_7813UnicodeStringixEi.exit ], [ %i.az, %bb.f ], [ 15, %bb.e ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  tail call void @_ZNK6icu_7813UnicodeString9doExtractEiiPDsi(ptr noundef nonnull align 8 dereferenceable(64) %i.y, i32 noundef %2, i32 noundef %.1, ptr noundef nonnull %i.ba, i32 noundef 0) #15
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.ba) #15, !srcloc !8
  %i.bb = sext i32 %.1 to i64
  %i.bc = getelementptr inbounds [2 x i8], ptr %i.ba, i64 %i.bb
  store i16 0, ptr %i.bc, align 2
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZNK6icu_7813UnicodeStringixEi.exit33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN6icu_7814MessagePattern14skipWhiteSpaceEi(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i16, ptr %i.a, align 8              ; 4 uses
  %i.c = and i16 %i.b, 17
  %.not.i = icmp eq i16 %i.c, 0
  br i1 %.not.i, label %bb.b, label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = and i16 %i.b, 2
  %.not2.i = icmp eq i16 %i.d, 0
  br i1 %.not2.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 26
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

end_hunk_4
begin_hunk_5_@_ZN6icu_7814MessagePattern9isOrdinalEi:bb.a
  %i.o = sext i32 %1 to i64
  %i.p = getelementptr inbounds [2 x i8], ptr %i.n, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2
  %i.r = and i16 %i.q, -33
  %or.cond = icmp eq i16 %i.r, 79
  br i1 %or.cond, label %bb.b, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

bb.b:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.s = add nuw nsw i32 %1, 1                    ; 2 uses
  %i.t = icmp ult i32 %i.s, %i.h
  br i1 %i.t, label %_ZNK6icu_7813UnicodeString6charAtEi.exit33, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit33:       ; preds = %bb.b
  %i.u = sext i32 %i.s to i64
  %i.v = getelementptr inbounds [2 x i8], ptr %i.n, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2
  %i.x = and i16 %i.w, -33
  %or.cond5 = icmp eq i16 %i.x, 82
  br i1 %or.cond5, label %bb.c, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

bb.c:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit33
  %i.y = add nuw nsw i32 %1, 2                    ; 2 uses
  %i.z = icmp ult i32 %i.y, %i.h
  br i1 %i.z, label %_ZNK6icu_7813UnicodeString6charAtEi.exit36, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit36:       ; preds = %bb.c
  %i.aa = sext i32 %i.y to i64
  %i.ab = getelementptr inbounds [2 x i8], ptr %i.n, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = and i16 %i.ac, -33
  %or.cond8 = icmp eq i16 %i.ad, 68
  br i1 %or.cond8, label %bb.d, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

bb.d:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit36
  %i.ae = add nuw nsw i32 %1, 3                   ; 2 uses
  %i.af = icmp ult i32 %i.ae, %i.h
  br i1 %i.af, label %_ZNK6icu_7813UnicodeString6charAtEi.exit39, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit39:       ; preds = %bb.d
  %i.ag = sext i32 %i.ae to i64
  %i.ah = getelementptr inbounds [2 x i8], ptr %i.n, i64 %i.ag
  %i.ai = load i16, ptr %i.ah, align 2
  %i.aj = and i16 %i.ai, -33
  %or.cond11 = icmp eq i16 %i.aj, 73
  br i1 %or.cond11, label %bb.e, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

bb.e:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit39
  %i.ak = add nuw nsw i32 %1, 4                   ; 2 uses
  %i.al = icmp ult i32 %i.ak, %i.h
  br i1 %i.al, label %_ZNK6icu_7813UnicodeString6charAtEi.exit42, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit42:       ; preds = %bb.e
  %i.am = sext i32 %i.ak to i64
  %i.an = getelementptr inbounds [2 x i8], ptr %i.n, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2
  %i.ap = and i16 %i.ao, -33
  %or.cond14 = icmp eq i16 %i.ap, 78
  br i1 %or.cond14, label %bb.f, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

bb.f:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit42
  %i.aq = add nuw nsw i32 %1, 5                   ; 2 uses
  %i.ar = icmp ult i32 %i.aq, %i.h
  br i1 %i.ar, label %_ZNK6icu_7813UnicodeString6charAtEi.exit45, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit45:       ; preds = %bb.f
  %i.as = sext i32 %i.aq to i64
  %i.at = getelementptr inbounds [2 x i8], ptr %i.n, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2
  %i.av = and i16 %i.au, -33
  %or.cond17 = icmp eq i16 %i.av, 65
  br i1 %or.cond17, label %bb.g, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

bb.g:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit45
  %i.aw = add nuw nsw i32 %1, 6                   ; 2 uses
  %i.ax = icmp ult i32 %i.aw, %i.h
  br i1 %i.ax, label %bb.h, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ay = sext i32 %i.aw to i64
  %i.az = getelementptr inbounds [2 x i8], ptr %i.n, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2
  %i.bb = and i16 %i.ba, -33
  %i.bc = icmp eq i16 %i.bb, 76
  %i.bd = zext i1 %i.bc to i8
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit.thread:  ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %_ZNK6icu_7813UnicodeString6charAtEi.exit45, %_ZNK6icu_7813UnicodeString6charAtEi.exit42, %_ZNK6icu_7813UnicodeString6charAtEi.exit39, %_ZNK6icu_7813UnicodeString6charAtEi.exit36, %_ZNK6icu_7813UnicodeString6charAtEi.exit33, %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.be = phi i8 [ 0, %_ZNK6icu_7813UnicodeString6charAtEi.exit45 ], [ 0, %_ZNK6icu_7813UnicodeString6charAtEi.exit42 ], [ 0, %_ZNK6icu_7813UnicodeString6charAtEi.exit39 ], [ 0, %_ZNK6icu_7813UnicodeString6charAtEi.exit36 ], [ 0, %_ZNK6icu_7813UnicodeString6charAtEi.exit33 ], [ 0, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ %i.bd, %bb.h ], [ 0, %bb.g ]
  ret i8 %i.be
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, -1) i32 @_ZN6icu_7814MessagePattern16parseSimpleStyleEiP11UParseErrorR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %.preheader, label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit.thread

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.f = load i16, ptr %i.d, align 8              ; 3 uses
  %i.g = icmp slt i16 %i.f, 0                     ; 2 uses
  %i.h = ashr i16 %i.f, 5
  %i.i = sext i16 %i.h to i32                     ; 2 uses
  %i.j = load i32, ptr %i.e, align 4              ; 2 uses
  %i.k = select i1 %i.g, i32 %i.j, i32 %i.i       ; 2 uses
  %i.l = icmp slt i32 %1, %i.k
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit
  %i.o = phi i32 [ %i.j, %.lr.ph ], [ %i.br, %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit ] ; 5 uses
  %i.p = phi i16 [ %i.f, %.lr.ph ], [ %i.bs, %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit ] ; 5 uses
  %i.q = phi i32 [ %i.k, %.lr.ph ], [ %i.bw, %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit ]
  %i.r = phi i32 [ %i.i, %.lr.ph ], [ %i.bv, %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit ]
  %i.s = phi i1 [ %i.g, %.lr.ph ], [ %i.bt, %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit ]
  %.03255 = phi i32 [ %1, %.lr.ph ], [ %.234, %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit ] ; 8 uses
  %.03554 = phi i32 [ 0, %.lr.ph ], [ %.237, %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit ] ; 6 uses
  %i.t = add nsw i32 %.03255, 1                   ; 5 uses
  %i.u = icmp ult i32 %.03255, %i.q
  br i1 %i.u, label %_ZNK6icu_7813UnicodeString6charAtEi.exit, label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.b
  %i.v = and i16 %i.p, 2
  %.not.i.i.i = icmp eq i16 %i.v, 0
  %i.w = load ptr, ptr %i.n, align 8
  %i.x = select i1 %.not.i.i.i, ptr %i.w, ptr %i.m
  %i.y = sext i32 %.03255 to i64
  %i.z = getelementptr inbounds [2 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2
  switch i16 %i.aa, label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit [
    i16 39, label %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit
    i16 123, label %bb.e
    i16 125, label %bb.f
  ]

_ZNK6icu_7813UnicodeString7indexOfEDsi.exit:      ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.ab = icmp slt i32 %.03255, -1
  %.0.i = select i1 %i.ab, i32 0, i32 %i.t        ; 2 uses
  %i.ac = select i1 %i.s, i32 %i.o, i32 %i.r
  %i.ad = sub nsw i32 %i.ac, %.0.i
  %i.ae = tail call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i16 noundef zeroext 39, i32 noundef %.0.i, i32 noundef %i.ad) #15 ; 2 uses
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit
  tail call void @_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef %2, i32 noundef %1)
  store i32 65799, ptr %3, align 4
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit.thread

bb.d:                                             ; preds = %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit
  %i.ag = add nuw nsw i32 %i.ae, 1
  %.pre = load i16, ptr %i.d, align 8
  %.pre58 = load i32, ptr %i.e, align 4
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit

bb.e:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.ah = add nsw i32 %.03554, 1
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit

bb.f:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.ai = icmp sgt i32 %.03554, 0
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = add nsw i32 %.03554, -1
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit

bb.h:                                             ; preds = %bb.f
  %i.ak = sub nsw i32 %.03255, %1                 ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 65535
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef %2, i32 noundef %1)
  store i32 8, ptr %3, align 4
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 8            ; 5 uses
  %i.aq = load i32, ptr %3, align 4
  %i.ar = icmp slt i32 %i.aq, 1
  br i1 %i.ar, label %bb.k, label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  %i.at = load i32, ptr %i.as, align 8
  %i.au = icmp sgt i32 %i.at, %i.ap
  br i1 %i.au, label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = shl nsw i32 %i.ap, 1                    ; 3 uses
  %i.aw = icmp sgt i32 %i.ap, 0
  br i1 %i.aw, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ax = zext nneg i32 %i.av to i64
  %i.ay = shl nuw nsw i64 %i.ax, 4
  %i.az = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.ay) #16 ; 3 uses
  %.not.i.i.i42 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i42, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = load i32, ptr %i.as, align 8
  %spec.select.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.ap, i32 %i.ba)
  %.1.i.i.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i.i.i, i32 %i.av)
  %i.bb = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.bc = sext i32 %.1.i.i.i to i64
  %i.bd = shl nsw i64 %i.bc, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.az, ptr align 4 %i.bb, i64 %i.bd, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.an, i64 12 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 4
  %.not.i.i.i.i = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i.i, label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @uprv_free_78(ptr noundef %i.bb) #15
  br label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i

_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i: ; preds = %bb.o, %bb.n
  store ptr %i.az, ptr %i.an, align 8
  store i32 %i.av, ptr %i.as, align 8
  store i8 1, ptr %i.be, align 4
  %.pre.i43 = load ptr, ptr %i.am, align 8
  %.pre12.i = load i32, ptr %i.ao, align 8
  br label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i

bb.p:                                             ; preds = %bb.m, %bb.l
  store i32 7, ptr %3, align 4
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit.thread

_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i: ; preds = %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i, %bb.k
  %i.bg = phi i32 [ %.pre12.i, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i ], [ %i.ap, %bb.k ] ; 2 uses
  %i.bh = phi ptr [ %.pre.i43, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i ], [ %i.an, %bb.k ]
  %i.bi = add nsw i32 %i.bg, 1
  store i32 %i.bi, ptr %i.ao, align 8
  %i.bj = sext i32 %i.bg to i64
  %i.bk = load ptr, ptr %i.bh, align 8
  %i.bl = getelementptr inbounds [16 x i8], ptr %i.bk, i64 %i.bj ; 5 uses
  store i32 10, ptr %i.bl, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store i32 %1, ptr %i.bm, align 4
  %i.bn = trunc i32 %i.ak to i16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i16 %i.bn, ptr %i.bo, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 10
  store i16 0, ptr %i.bp, align 2
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 0, ptr %i.bq, align 4
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit.thread

_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit: ; preds = %bb.b, %bb.d, %bb.g, %bb.e, %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.br = phi i32 [ %i.o, %bb.g ], [ %i.o, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ %i.o, %bb.e ], [ %.pre58, %bb.d ], [ %i.o, %bb.b ] ; 2 uses
  %i.bs = phi i16 [ %i.p, %bb.g ], [ %i.p, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ %i.p, %bb.e ], [ %.pre, %bb.d ], [ %i.p, %bb.b ] ; 3 uses
  %.237 = phi i32 [ %i.aj, %bb.g ], [ %.03554, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ %i.ah, %bb.e ], [ %.03554, %bb.d ], [ %.03554, %bb.b ]
  %.234 = phi i32 [ %i.t, %bb.g ], [ %i.t, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ %i.t, %bb.e ], [ %i.ag, %bb.d ], [ %i.t, %bb.b ] ; 2 uses
  %i.bt = icmp slt i16 %i.bs, 0                   ; 2 uses
  %i.bu = ashr i16 %i.bs, 5
  %i.bv = sext i16 %i.bu to i32                   ; 2 uses
  %i.bw = select i1 %i.bt, i32 %i.br, i32 %i.bv   ; 2 uses
  %i.bx = icmp slt i32 %.234, %i.bw
  br i1 %i.bx, label %bb.b, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit, %.preheader
  %i.by = icmp eq ptr %2, null
  br i1 %i.by, label %_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.bz, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  tail call void @_ZNK6icu_7813UnicodeString9doExtractEiiPDsi(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.ca, i32 noundef 0) #15
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.ca) #15, !srcloc !8
  store i16 0, ptr %i.ca, align 4
  %i.cb = load i16, ptr %i.d, align 8             ; 3 uses
  %i.cc = icmp slt i16 %i.cb, 0
  %i.cd = ashr i16 %i.cb, 5
  %i.ce = sext i16 %i.cd to i32
  %i.cf = load i32, ptr %i.e, align 4
  %i.cg = select i1 %i.cc, i32 %i.cf, i32 %i.ce   ; 2 uses
  %i.ch = icmp sgt i32 %i.cg, 15
  br i1 %i.ch, label %bb.r, label %_ZNK6icu_7813UnicodeStringixEi.exit33.i

bb.r:                                             ; preds = %bb.q
  %i.ci = and i16 %i.cb, 2
  %.not.i.i.i32.i = icmp eq i16 %i.ci, 0
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = select i1 %.not.i.i.i32.i, ptr %i.cl, ptr %i.cj
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 28
  %i.co = load i16, ptr %i.cn, align 2
  %i.cp = and i16 %i.co, -1024
  %i.cq = icmp eq i16 %i.cp, -10240
  %i.cr = select i1 %i.cq, i32 14, i32 15
  br label %_ZNK6icu_7813UnicodeStringixEi.exit33.i

_ZNK6icu_7813UnicodeStringixEi.exit33.i:          ; preds = %bb.r, %bb.q
  %.1.i = phi i32 [ %i.cg, %bb.q ], [ %i.cr, %bb.r ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  tail call void @_ZNK6icu_7813UnicodeString9doExtractEiiPDsi(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i32 noundef 0, i32 noundef %.1.i, ptr noundef nonnull %i.cs, i32 noundef 0) #15
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.cs) #15, !srcloc !8
  %i.ct = sext i32 %.1.i to i64
  %i.cu = getelementptr inbounds [2 x i8], ptr %i.cs, i64 %i.ct
  store i16 0, ptr %i.cu, align 2
  br label %_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori.exit

_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori.exit: ; preds = %._crit_edge, %_ZNK6icu_7813UnicodeStringixEi.exit33.i
  store i32 65801, ptr %3, align 4
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit.thread

_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit.thread: ; preds = %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i, %bb.p, %bb.j, %bb.i, %bb.c, %_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori.exit, %bb.a
  %.4 = phi i32 [ 0, %bb.a ], [ 0, %_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori.exit ], [ %.03255, %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i ], [ %.03255, %bb.p ], [ %.03255, %bb.j ], [ 0, %bb.i ], [ 0, %bb.c ]
  ret i32 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZN6icu_7814MessagePattern10skipDoubleEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(127) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i16, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e       ; 5 uses
  %i.i = icmp slt i32 %1, %i.h
  %i.j = icmp ult i32 %1, %i.h
  %or.cond47 = and i1 %i.i, %i.j
  br i1 %or.cond47, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph, label %.thread44

_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph:   ; preds = %bb.a
  %i.k = and i16 %i.b, 2
  %.not.i.i.i = icmp eq i16 %i.k, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = select i1 %.not.i.i.i, ptr %i.n, ptr %i.l
  %i.p = sext i32 %1 to i64
  %i.q = sext i32 %i.h to i64
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph, %.thread39
  %indvars.iv = phi i64 [ %i.p, %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph ], [ %indvars.iv.next, %.thread39 ] ; 4 uses
  %i.r = getelementptr inbounds [2 x i8], ptr %i.o, i64 %indvars.iv
  %i.s = load i16, ptr %i.r, align 2              ; 4 uses
  %i.t = icmp ult i16 %i.s, 48
  br i1 %i.t, label %switch.early.test, label %bb.b

switch.early.test:                                ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  switch i16 %i.s, label %.thread44.loopexit.split.loop.exit [
    i16 46, label %.thread39
    i16 45, label %.thread39
    i16 43, label %.thread39
  ]

bb.b:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.u = icmp ugt i16 %i.s, 57
  br i1 %i.u, label %switch.early.test32, label %.thread39

switch.early.test32:                              ; preds = %bb.b
  switch i16 %i.s, label %.thread44.loopexit.split.loop.exit54 [
    i16 8734, label %.thread39
    i16 101, label %.thread39
    i16 69, label %.thread39
  ]

.thread39:                                        ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %bb.b, %switch.early.test32, %switch.early.test32, %switch.early.test32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.v = icmp slt i64 %indvars.iv.next, %i.q
  %i.w = trunc nsw i64 %indvars.iv.next to i32
  %i.x = icmp ugt i32 %i.h, %i.w
  %or.cond = and i1 %i.v, %i.x
  br i1 %or.cond, label %_ZNK6icu_7813UnicodeString6charAtEi.exit, label %.thread44

.thread44.loopexit.split.loop.exit:               ; preds = %switch.early.test
  %i.y = trunc nsw i64 %indvars.iv to i32
  br label %.thread44

.thread44.loopexit.split.loop.exit54:             ; preds = %switch.early.test32
  %i.z = trunc nsw i64 %indvars.iv to i32
  br label %.thread44

.thread44:                                        ; preds = %.thread39, %.thread44.loopexit.split.loop.exit, %.thread44.loopexit.split.loop.exit54, %bb.a
  %.031.lcssa = phi i32 [ %1, %bb.a ], [ %i.z, %.thread44.loopexit.split.loop.exit54 ], [ %i.y, %.thread44.loopexit.split.loop.exit ], [ %i.h, %.thread39 ]
  ret i32 %.031.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7814MessagePattern11parseDoubleEiiaP11UParseErrorR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef %1, i32 noundef %2, i8 noundef signext %3, ptr noundef %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 7 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = load i32, ptr %5, align 4
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = add nsw i32 %1, 1                        ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i16, ptr %i.g, align 8
  %.fr104 = freeze i16 %i.h                       ; 4 uses
  %i.i = icmp slt i16 %.fr104, 0
  %i.j = lshr i16 %.fr104, 5
  %i.k = zext nneg i16 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.m = load i32, ptr %i.l, align 4
  %i.n = select i1 %i.i, i32 %i.m, i32 %i.k       ; 5 uses
  %i.o = icmp ult i32 %1, %i.n
  br i1 %i.o, label %_ZNK6icu_7813UnicodeString6charAtEi.exit, label %._crit_edge

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.b
  %i.p = and i16 %.fr104, 2
  %.not.i.i.i = icmp eq i16 %i.p, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = select i1 %.not.i.i.i, ptr %i.s, ptr %i.q ; 2 uses
  %i.u = sext i32 %1 to i64
  %i.v = getelementptr inbounds [2 x i8], ptr %i.t, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2              ; 2 uses
  switch i16 %i.w, label %_ZNK6icu_7813UnicodeString6charAtEi.exit76 [
    i16 45, label %bb.c
    i16 43, label %bb.e
  ]

bb.c:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.x = icmp eq i32 %i.f, %2
  br i1 %i.x, label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit.thread93, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = icmp ult i32 %i.f, %i.n
  br i1 %i.y, label %_ZNK6icu_7813UnicodeString6charAtEi.exit76.sink.split, label %._crit_edge

bb.e:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.z = icmp eq i32 %i.f, %2
  br i1 %i.z, label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit.thread93, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = icmp ult i32 %i.f, %i.n
  br i1 %i.aa, label %_ZNK6icu_7813UnicodeString6charAtEi.exit76.sink.split, label %._crit_edge

_ZNK6icu_7813UnicodeString6charAtEi.exit76.sink.split: ; preds = %bb.f, %bb.d
  %.not70.not87.ph = phi i1 [ true, %bb.d ], [ false, %bb.f ]
  %.055.ph = phi i32 [ 32768, %bb.d ], [ 32767, %bb.f ]
  %.056.ph = add nsw i32 %1, 2
  %i.ab = sext i32 %i.f to i64
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.t, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit76

_ZNK6icu_7813UnicodeString6charAtEi.exit76:       ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit76.sink.split, %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %.not70.not87 = phi i1 [ false, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ %.not70.not87.ph, %_ZNK6icu_7813UnicodeString6charAtEi.exit76.sink.split ] ; 2 uses
  %.057 = phi i16 [ %i.w, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ %i.ad, %_ZNK6icu_7813UnicodeString6charAtEi.exit76.sink.split ] ; 4 uses
  %.056 = phi i32 [ %i.f, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ %.056.ph, %_ZNK6icu_7813UnicodeString6charAtEi.exit76.sink.split ] ; 2 uses
  %.055 = phi i32 [ 32767, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ %.055.ph, %_ZNK6icu_7813UnicodeString6charAtEi.exit76.sink.split ] ; 2 uses
  %i.ae = icmp eq i16 %.057, 8734
  br i1 %i.ae, label %bb.i, label %.preheader

.preheader:                                       ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit76
  %i.af = add i16 %.057, -48
  %i.ag = icmp ult i16 %i.af, 10
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ah = and i16 %.fr104, 2
  %.not.i.i.i82 = icmp eq i16 %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = sext i32 %.056 to i64                   ; 2 uses
  %sext111 = sext i32 %2 to i64                   ; 2 uses
  br i1 %.not.i.i.i82, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNK6icu_7813UnicodeString6charAtEi.exit83.us
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %_ZNK6icu_7813UnicodeString6charAtEi.exit83.us ], [ %i.ak, %.lr.ph ] ; 4 uses
  %.0102.us = phi i32 [ %i.ao, %_ZNK6icu_7813UnicodeString6charAtEi.exit83.us ], [ 0, %.lr.ph ]
  %.158100.us = phi i16 [ %i.av, %_ZNK6icu_7813UnicodeString6charAtEi.exit83.us ], [ %.057, %.lr.ph ]
  %i.al = zext nneg i16 %.158100.us to i32
  %i.am = mul nsw i32 %.0102.us, 10
  %i.an = add nsw i32 %i.al, -48
  %i.ao = add nsw i32 %i.an, %i.am                ; 3 uses
  %i.ap = icmp sgt i32 %i.ao, %.055
  br i1 %i.ap, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us
  %i.aq = icmp eq i64 %indvars.iv109, %sext111
  br i1 %i.aq, label %.split.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = trunc nsw i64 %indvars.iv109 to i32
  %i.as = icmp ugt i32 %i.n, %i.ar
  br i1 %i.as, label %_ZNK6icu_7813UnicodeString6charAtEi.exit83.us, label %._crit_edge

_ZNK6icu_7813UnicodeString6charAtEi.exit83.us:    ; preds = %bb.h
  %indvars.iv.next110 = add nsw i64 %indvars.iv109, 1
  %i.at = load ptr, ptr %i.aj, align 8
  %i.au = getelementptr inbounds [2 x i8], ptr %i.at, i64 %indvars.iv109
  %i.av = load i16, ptr %i.au, align 2            ; 2 uses
  %i.aw = add i16 %i.av, -48
  %i.ax = icmp ult i16 %i.aw, 10
  br i1 %i.ax, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !17

bb.i:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit76
  %.not72 = icmp ne i8 %3, 0
  %i.ay = icmp eq i32 %.056, %2
  %or.cond = select i1 %.not72, i1 %i.ay, i1 false
  br i1 %or.cond, label %bb.j, label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit.thread93

bb.j:                                             ; preds = %bb.i
  %i.az = tail call double @uprv_getInfinity_78() #15 ; 2 uses
  %i.ba = fneg double %i.az
  %i.bb = select i1 %.not70.not87, double %i.ba, double %i.az
  %i.bc = sub nsw i32 %2, %1
  tail call void @_ZN6icu_7814MessagePattern16addArgDoublePartEdiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(127) %0, double noundef %i.bb, i32 noundef %1, i32 noundef %i.bc, ptr noundef nonnull align 4 dereferenceable(4) %5)
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit.thread

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNK6icu_7813UnicodeString6charAtEi.exit83
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK6icu_7813UnicodeString6charAtEi.exit83 ], [ %i.ak, %.lr.ph ] ; 4 uses
  %.0102 = phi i32 [ %i.bg, %_ZNK6icu_7813UnicodeString6charAtEi.exit83 ], [ 0, %.lr.ph ]
  %.158100 = phi i16 [ %i.ct, %_ZNK6icu_7813UnicodeString6charAtEi.exit83 ], [ %.057, %.lr.ph ]
  %i.bd = zext nneg i16 %.158100 to i32
  %i.be = mul nsw i32 %.0102, 10
  %i.bf = add nsw i32 %i.bd, -48
  %i.bg = add nsw i32 %i.bf, %i.be                ; 3 uses
  %i.bh = icmp sgt i32 %i.bg, %.055
  br i1 %i.bh, label %._crit_edge, label %bb.k

bb.k:                                             ; preds = %.lr.ph.split
  %i.bi = icmp eq i64 %indvars.iv, %sext111
  br i1 %i.bi, label %.split.us, label %bb.q

.split.us:                                        ; preds = %bb.k, %bb.g
  %.us-phi = phi i32 [ %i.ao, %bb.g ], [ %i.bg, %bb.k ] ; 2 uses
  %i.bj = sub nsw i32 %2, %1
  %i.bk = sub nsw i32 0, %.us-phi
  %i.bl = select i1 %.not70.not87, i32 %i.bk, i32 %.us-phi
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8            ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.bp = load i32, ptr %i.bo, align 8            ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 3 uses
  %i.br = load i32, ptr %i.bq, align 8
  %i.bs = icmp sgt i32 %i.br, %i.bp
  br i1 %i.bs, label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i, label %bb.l

bb.l:                                             ; preds = %.split.us
  %i.bt = shl nsw i32 %i.bp, 1                    ; 3 uses
  %i.bu = icmp sgt i32 %i.bp, 0
  br i1 %i.bu, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bv = zext nneg i32 %i.bt to i64
  %i.bw = shl nuw nsw i64 %i.bv, 4
  %i.bx = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.bw) #16 ; 3 uses
  %.not.i.i.i80 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i80, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.by = load i32, ptr %i.bq, align 8
  %spec.select.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.bp, i32 %i.by)
  %.1.i.i.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i.i.i, i32 %i.bt)
  %i.bz = load ptr, ptr %i.bn, align 8            ; 2 uses
  %i.ca = sext i32 %.1.i.i.i to i64
  %i.cb = shl nsw i64 %i.ca, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bx, ptr align 4 %i.bz, i64 %i.cb, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bn, i64 12 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 4
  %.not.i.i.i.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i.i.i, label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @uprv_free_78(ptr noundef %i.bz) #15
  br label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i

_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i: ; preds = %bb.o, %bb.n
  store ptr %i.bx, ptr %i.bn, align 8
  store i32 %i.bt, ptr %i.bq, align 8
  store i8 1, ptr %i.cc, align 4
  %.pre.i = load ptr, ptr %i.bm, align 8
  %.pre12.i = load i32, ptr %i.bo, align 8
  br label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i

bb.p:                                             ; preds = %bb.m, %bb.l
  store i32 7, ptr %5, align 4
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit.thread

_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i: ; preds = %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i, %.split.us
  %i.ce = phi i32 [ %.pre12.i, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i ], [ %i.bp, %.split.us ] ; 2 uses
  %i.cf = phi ptr [ %.pre.i, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i ], [ %i.bn, %.split.us ]
  %i.cg = add nsw i32 %i.ce, 1
  store i32 %i.cg, ptr %i.bo, align 8
  %i.ch = sext i32 %i.ce to i64
  %i.ci = load ptr, ptr %i.cf, align 8
  %i.cj = getelementptr inbounds [16 x i8], ptr %i.ci, i64 %i.ch ; 5 uses
  store i32 12, ptr %i.cj, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  store i32 %1, ptr %i.ck, align 4
  %i.cl = trunc i32 %i.bj to i16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i16 %i.cl, ptr %i.cm, align 4
  %i.cn = trunc i32 %i.bl to i16
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 10
  store i16 %i.cn, ptr %i.co, align 2
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  store i32 0, ptr %i.cp, align 4
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit.thread

bb.q:                                             ; preds = %bb.k
  %i.cq = trunc nsw i64 %indvars.iv to i32
  %i.cr = icmp ugt i32 %i.n, %i.cq
  br i1 %i.cr, label %_ZNK6icu_7813UnicodeString6charAtEi.exit83, label %._crit_edge

_ZNK6icu_7813UnicodeString6charAtEi.exit83:       ; preds = %bb.q
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.cs = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %indvars.iv
  %i.ct = load i16, ptr %i.cs, align 2            ; 2 uses
  %i.cu = add i16 %i.ct, -48
  %i.cv = icmp ult i16 %i.cu, 10
  br i1 %i.cv, label %.lr.ph.split, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.q, %_ZNK6icu_7813UnicodeString6charAtEi.exit83, %.lr.ph.split, %bb.h, %_ZNK6icu_7813UnicodeString6charAtEi.exit83.us, %.lr.ph.split.us, %bb.d, %bb.f, %bb.b, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.cw = sub nsw i32 %2, %1                      ; 5 uses
  %i.cx = icmp sgt i32 %i.cw, 127
  br i1 %i.cx, label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit.thread93.sink.split, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  %i.cy = call noundef i32 @_ZNK6icu_7813UnicodeString7extractEiiPciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64) %i.e, i32 noundef %1, i32 noundef %i.cw, ptr noundef nonnull %i.a, i32 noundef 128, i32 noundef 0) #15 ; 0 uses
  %i.cz = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #17
  %i.da = trunc i64 %i.cz to i32
  %i.db = icmp sgt i32 %i.cw, %i.da
  br i1 %i.db, label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit.thread93.sink.split, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.dc = call double @strtod(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #15
  %i.dd = load ptr, ptr %i.b, align 8
  %i.de = sext i32 %i.cw to i64
  %i.df = getelementptr inbounds i8, ptr %i.a, i64 %i.de
  %.not71 = icmp eq ptr %i.dd, %i.df
  br i1 %.not71, label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit, label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit.thread98

_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit.thread98: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit.thread93.sink.split

_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit: ; preds = %bb.s
  call void @_ZN6icu_7814MessagePattern16addArgDoublePartEdiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(127) %0, double noundef %i.dc, i32 noundef %1, i32 noundef %i.cw, ptr noundef nonnull align 4 dereferenceable(4) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit.thread

_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit.thread93.sink.split: ; preds = %bb.r, %._crit_edge, %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit.thread98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit.thread93

_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit.thread93: ; preds = %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit.thread93.sink.split, %bb.e, %bb.i, %bb.c
  call void @_ZN6icu_7814MessagePattern13setParseErrorEP11UParseErrori(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef %4, i32 noundef %1)
  store i32 65799, ptr %5, align 4
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit.thread

_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit.thread: ; preds = %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i, %bb.p, %bb.j, %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit, %bb.a, %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit.thread93
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZN6icu_7814MessagePattern22inMessageFormatPatternEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(127) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, 0
  %i.g = zext i1 %i.f to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i8 [ 1, %bb.a ], [ %i.g, %bb.b ]
  ret i8 %i.h
}

declare double @uprv_getInfinity_78() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7814MessagePattern16addArgDoublePartEdiiR10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(127) %0, double noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %4, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8              ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 80) #15 ; 7 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i8 0, i64 72, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.k, ptr %i.h, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 8, ptr %i.l, align 8
  store ptr %i.h, ptr %i.e, align 8
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  store ptr null, ptr %i.e, align 8
  store i32 7, ptr %4, align 4
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit

bb.f:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8
  %i.o = icmp sgt i32 %i.n, %i.d
  br i1 %i.o, label %_ZN6icu_7818MessagePatternListIdLi8EE24ensureCapacityForOneMoreEiR10UErrorCode.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = shl nsw i32 %i.d, 1                      ; 3 uses
  %i.q = icmp sgt i32 %i.d, 0
  br i1 %i.q, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.r = zext nneg i32 %i.p to i64
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.s) #16 ; 3 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = load i32, ptr %i.m, align 8
  %spec.select.i.i = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %i.u)
  %.1.i.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i.i, i32 %i.p)
  %i.v = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.w = sext i32 %.1.i.i to i64
  %i.x = shl nsw i64 %i.w, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.v, i64 %i.x, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 2 uses
  %i.z = load i8, ptr %i.y, align 4
  %.not.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7815MaybeStackArrayIdLi8EE6resizeEii.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @uprv_free_78(ptr noundef %i.v) #15
  br label %_ZN6icu_7815MaybeStackArrayIdLi8EE6resizeEii.exit.i

_ZN6icu_7815MaybeStackArrayIdLi8EE6resizeEii.exit.i: ; preds = %bb.j, %bb.i
  store ptr %i.t, ptr %i.f, align 8
  store i32 %i.p, ptr %i.m, align 8
  store i8 1, ptr %i.y, align 4
  br label %_ZN6icu_7818MessagePatternListIdLi8EE24ensureCapacityForOneMoreEiR10UErrorCode.exit

bb.k:                                             ; preds = %bb.h, %bb.g
  store i32 7, ptr %4, align 4
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit

_ZN6icu_7818MessagePatternListIdLi8EE24ensureCapacityForOneMoreEiR10UErrorCode.exit: ; preds = %_ZN6icu_7815MaybeStackArrayIdLi8EE6resizeEii.exit.i, %bb.f
  %i.aa = icmp sgt i32 %i.d, 32767
  br i1 %i.aa, label %bb.l, label %_ZN6icu_7818MessagePatternListIdLi8EE24ensureCapacityForOneMoreEiR10UErrorCode.exit._crit_edge

_ZN6icu_7818MessagePatternListIdLi8EE24ensureCapacityForOneMoreEiR10UErrorCode.exit._crit_edge: ; preds = %_ZN6icu_7818MessagePatternListIdLi8EE24ensureCapacityForOneMoreEiR10UErrorCode.exit
  %.pre = load ptr, ptr %i.e, align 8
  br label %bb.m

bb.l:                                             ; preds = %_ZN6icu_7818MessagePatternListIdLi8EE24ensureCapacityForOneMoreEiR10UErrorCode.exit
  store i32 8, ptr %4, align 4
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit

bb.m:                                             ; preds = %_ZN6icu_7818MessagePatternListIdLi8EE24ensureCapacityForOneMoreEiR10UErrorCode.exit._crit_edge, %bb.d
  %i.ab = phi ptr [ %.pre, %_ZN6icu_7818MessagePatternListIdLi8EE24ensureCapacityForOneMoreEiR10UErrorCode.exit._crit_edge ], [ %i.h, %bb.d ]
  %i.ac = load i32, ptr %i.c, align 8             ; 2 uses
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.c, align 8
  %i.ae = sext i32 %i.ac to i64
  %i.af = load ptr, ptr %i.ab, align 8
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ae
  store double %1, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8            ; 5 uses
  %i.al = load i32, ptr %4, align 4
  %i.am = icmp slt i32 %i.al, 1
  br i1 %i.am, label %bb.n, label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = icmp sgt i32 %i.ao, %i.ak
  br i1 %i.ap, label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = shl nsw i32 %i.ak, 1                    ; 3 uses
  %i.ar = icmp sgt i32 %i.ak, 0
  br i1 %i.ar, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.as = zext nneg i32 %i.aq to i64
  %i.at = shl nuw nsw i64 %i.as, 4
  %i.au = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.at) #16 ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i12, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = load i32, ptr %i.an, align 8
  %spec.select.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.ak, i32 %i.av)
  %.1.i.i.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i.i.i, i32 %i.aq)
  %i.aw = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ax = sext i32 %.1.i.i.i to i64
  %i.ay = shl nsw i64 %i.ax, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.au, ptr align 4 %i.aw, i64 %i.ay, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ai, i64 12 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 4
  %.not.i.i.i.i = icmp eq i8 %i.ba, 0
  br i1 %.not.i.i.i.i, label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @uprv_free_78(ptr noundef %i.aw) #15
  br label %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i

_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i: ; preds = %bb.r, %bb.q
  store ptr %i.au, ptr %i.ai, align 8
  store i32 %i.aq, ptr %i.an, align 8
  store i8 1, ptr %i.az, align 4
  %.pre.i = load ptr, ptr %i.ah, align 8
  %.pre12.i = load i32, ptr %i.aj, align 8
  br label %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i

bb.s:                                             ; preds = %bb.p, %bb.o
  store i32 7, ptr %4, align 4
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit

_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i: ; preds = %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i, %bb.n
  %i.bb = phi i32 [ %.pre12.i, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i ], [ %i.ak, %bb.n ] ; 2 uses
  %i.bc = phi ptr [ %.pre.i, %_ZN6icu_7815MaybeStackArrayINS_14MessagePattern4PartELi32EE6resizeEii.exit.i.i ], [ %i.ai, %bb.n ]
  %i.bd = add nsw i32 %i.bb, 1
  store i32 %i.bd, ptr %i.aj, align 8
  %i.be = sext i32 %i.bb to i64
  %i.bf = load ptr, ptr %i.bc, align 8
  %i.bg = getelementptr inbounds [16 x i8], ptr %i.bf, i64 %i.be ; 5 uses
  store i32 13, ptr %i.bg, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store i32 %2, ptr %i.bh, align 4
  %i.bi = trunc i32 %3 to i16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i16 %i.bi, ptr %i.bj, align 4
  %i.bk = trunc i32 %i.d to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 10
  store i16 %i.bk, ptr %i.bl, align 2
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store i32 0, ptr %i.bm, align 4
  br label %_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit

_ZN6icu_7814MessagePattern7addPartE23UMessagePatternPartTypeiiiR10UErrorCode.exit: ; preds = %bb.k, %_ZN6icu_7818MessagePatternListINS_14MessagePattern4PartELi32EE24ensureCapacityForOneMoreEiR10UErrorCode.exit.i, %bb.s, %bb.m, %bb.e, %bb.l, %bb.a
  ret void
}

declare noundef i32 @_ZNK6icu_7813UnicodeString7extractEiiPciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #11

declare noundef ptr @_ZN6icu_7812PatternProps14skipWhiteSpaceEPKDsi(ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef ptr @_ZN6icu_7812PatternProps14skipIdentifierEPKDsi(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7811MessageImpl24appendReducedApostrophesERKNS_13UnicodeStringEiiRS1_(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.021 = phi i32 [ -1, %bb.a ], [ %.021.be, %.backedge ]
  %.020 = phi i32 [ %1, %bb.a ], [ %.020.be, %.backedge ] ; 7 uses
  %i.c = icmp slt i32 %.020, 0
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 8 ; 3 uses
  %.pre5.i = ashr i16 %.pre.i, 5
  %.pre6.i = sext i16 %.pre5.i to i32             ; 2 uses
  br i1 %i.c, label %._ZNK6icu_7813UnicodeString8pinIndexERi.exit_crit_edge.i, label %bb.c

._ZNK6icu_7813UnicodeString8pinIndexERi.exit_crit_edge.i: ; preds = %bb.b
  %.pre4.i = load i32, ptr %i.b, align 4
  br label %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit

bb.c:                                             ; preds = %bb.b
  %i.d = icmp slt i16 %.pre.i, 0
  %i.e = load i32, ptr %i.b, align 4              ; 2 uses
  %i.f = select i1 %i.d, i32 %i.e, i32 %.pre6.i
  %spec.select.i = call i32 @llvm.smin.i32(i32 %.020, i32 %i.f)
  br label %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit

_ZNK6icu_7813UnicodeString7indexOfEDsi.exit:      ; preds = %._ZNK6icu_7813UnicodeString8pinIndexERi.exit_crit_edge.i, %bb.c
  %i.g = phi i32 [ %.pre4.i, %._ZNK6icu_7813UnicodeString8pinIndexERi.exit_crit_edge.i ], [ %i.e, %bb.c ]
  %.0.i = phi i32 [ 0, %._ZNK6icu_7813UnicodeString8pinIndexERi.exit_crit_edge.i ], [ %spec.select.i, %bb.c ] ; 2 uses
  %i.h = icmp slt i16 %.pre.i, 0
  %i.i = select i1 %i.h, i32 %i.g, i32 %.pre6.i
  %i.j = sub nsw i32 %i.i, %.0.i
  %i.k = call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, i16 noundef zeroext 39, i32 noundef %.0.i, i32 noundef %i.j) #15 ; 5 uses
  %i.l = icmp sgt i32 %i.k, -1
  %.not = icmp slt i32 %i.k, %2
  %or.cond = and i1 %i.l, %.not
  br i1 %or.cond, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit
  %i.m = icmp eq i32 %i.k, %.021
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 39, ptr %i.a, align 2
  %i.n = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = add nsw i32 %.020, 1
  br label %.backedge

.backedge:                                        ; preds = %bb.e, %bb.f
  %.021.be = phi i32 [ %i.r, %bb.f ], [ -1, %bb.e ]
  %.020.be = phi i32 [ %i.r, %bb.f ], [ %i.o, %bb.e ]
  br label %bb.b

bb.f:                                             ; preds = %bb.d
  %i.p = sub nsw i32 %i.k, %.020
  %i.q = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %.020, i32 noundef %i.p) #15 ; 0 uses
  %i.r = add nuw nsw i32 %i.k, 1                  ; 2 uses
  br label %.backedge

bb.g:                                             ; preds = %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit
  %i.s = sub nsw i32 %2, %.020
  %i.t = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %.020, i32 noundef %i.s) #15 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7811MessageImpl33appendSubMessageWithoutSkipSyntaxERKNS_14MessagePatternEiRNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [16 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load i16, ptr %i.h, align 4
  %i.j = zext i16 %i.i to i32
  %i.k = add nsw i32 %i.g, %i.j
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.l = phi ptr [ %i.c, %bb.a ], [ %.pre, %bb.e ]
  %.041 = phi i32 [ %1, %bb.a ], [ %.243, %bb.e ]
  %.039 = phi i32 [ %i.k, %bb.a ], [ %.2, %bb.e ] ; 7 uses
  %i.m = add nsw i32 %.041, 1                     ; 4 uses
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds [16 x i8], ptr %i.l, i64 %i.n ; 3 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4              ; 4 uses
  switch i32 %i.p, label %bb.e [
    i32 1, label %bb.f
    i32 2, label %bb.c
    i32 5, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.s = sub nsw i32 %i.r, %.039
  %i.t = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i32 noundef %.039, i32 noundef %i.s) #15 ; 0 uses
  %i.u = load i32, ptr %i.q, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.w = load i16, ptr %i.v, align 4
  %i.x = zext i16 %i.w to i32
  %i.y = add nsw i32 %i.u, %i.x
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.z = sub nsw i32 %i.r, %.039
  %i.aa = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i32 noundef %.039, i32 noundef %i.z) #15 ; 0 uses
  %i.ab = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ac = getelementptr inbounds [16 x i8], ptr %i.ab, i64 %i.n
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.ae = load i32, ptr %i.ad, align 4
  %..i = tail call noundef i32 @llvm.smax.i32(i32 %i.ae, i32 %i.m) ; 2 uses
  %i.af = sext i32 %..i to i64
  %i.ag = getelementptr inbounds [16 x i8], ptr %i.ab, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
end_hunk_5
