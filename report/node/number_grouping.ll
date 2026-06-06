inline.NumInlined: 15
inline.NumDeleted: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"NumberElements/minimumGroupingDigits\00", align 1
@switch.table._ZN6icu_786number4impl7Grouper11forStrategyE23UNumberGroupingStrategy = private unnamed_addr constant [5 x i64] [i64 281466386776064, i64 281462091808768, i64 281466386776064, i64 4294967296, i64 4294967296], align 8
@switch.table._ZN6icu_786number4impl7Grouper11forStrategyE23UNumberGroupingStrategy.1 = private unnamed_addr constant [5 x i16] [i16 -1, i16 -2, i16 -2, i16 -4, i16 3], align 8

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local { i64, i32 } @_ZN6icu_786number4impl7Grouper11forStrategyE23UNumberGroupingStrategy(i32 noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ult i32 %0, 5
  br i1 %i.a, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #6
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN6icu_786number4impl7Grouper11forStrategyE23UNumberGroupingStrategy, i64 %i.b
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.c = zext nneg i32 %0 to i64
  %switch.gep11 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN6icu_786number4impl7Grouper11forStrategyE23UNumberGroupingStrategy.1, i64 %i.c
  %switch.load12 = load i16, ptr %switch.gep11, align 2
  %switch.ext = zext i16 %switch.load12 to i64    ; 2 uses
  %.sroa.6.0.insert.shift = shl nuw nsw i64 %switch.ext, 16
  %.sroa.6.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %switch.load
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.insert, %switch.ext
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.0.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %0, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { i64, i32 } @_ZN6icu_786number4impl7Grouper13forPropertiesERKNS1_23DecimalFormatPropertiesE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(757) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !range !5, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.e = load i32, ptr %i.d, align 4
  %i.f = trunc i32 %i.e to i16                    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.h = load i32, ptr %i.g, align 8
  %i.i = trunc i32 %i.h to i16                    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp sgt i16 %i.f, 0
  %i.m = icmp slt i16 %i.i, 1                     ; 2 uses
  %i.n = select i1 %i.l, i1 true, i1 %i.m
  %i.o = select i1 %i.n, i16 %i.f, i16 %i.i
  %i.p = select i1 %i.m, i16 %i.f, i16 %i.i
  %i.q = and i32 %i.k, 65535
  %i.r = zext nneg i32 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 32
  %i.t = zext i16 %i.p to i64
  %i.u = shl nuw nsw i64 %i.t, 16
  %i.v = or disjoint i64 %i.u, %i.s
  %i.w = zext i16 %i.o to i64
  %i.x = or disjoint i64 %i.v, %i.w
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.5.sroa.2.0 = phi i32 [ 5, %bb.b ], [ 0, %bb.a ]
  %.sroa.0.0.insert.insert = phi i64 [ %i.x, %bb.b ], [ 281470681743359, %bb.a ]
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.0.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.5.sroa.2.0, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_786number4impl7Grouper13setLocaleDataERKNS1_17ParsedPatternInfoERKNS_6LocaleE(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(433) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.f = load i16, ptr %i.e, align 4
  switch i16 %i.f, label %bb.j [
    i16 -2, label %bb.b
    i16 -3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 0, ptr %i.c, align 4
  %i.g = tail call noundef ptr @_ZNK6icu_786Locale7getNameEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #7
  %i.h = call ptr @ures_open_78(ptr noundef null, ptr noundef %i.g, ptr noundef nonnull %i.c) #7 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4
  %i.i = call ptr @ures_getStringByKeyWithFallback_78(ptr noundef %i.h, ptr noundef nonnull @.str, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #7
  %i.j = load i32, ptr %i.c, align 4
  %i.k = icmp sgt i32 %i.j, 0
  %i.l = load i32, ptr %i.d, align 4
  %i.m = icmp ne i32 %i.l, 1
  %or.cond.i = select i1 %i.k, i1 true, i1 %i.m
  br i1 %or.cond.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i16, ptr %i.i, align 2
  %i.o = add i16 %i.n, -48
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i16 [ %i.o, %bb.c ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_123getMinGroupingForLocaleERKN6icu_786LocaleE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @ures_close_78(ptr noundef nonnull %i.h) #7
  br label %_ZN12_GLOBAL__N_123getMinGroupingForLocaleERKN6icu_786LocaleE.exit

_ZN12_GLOBAL__N_123getMinGroupingForLocaleERKN6icu_786LocaleE.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4
  %i.p = tail call noundef ptr @_ZNK6icu_786Locale7getNameEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #7
  %i.q = call ptr @ures_open_78(ptr noundef null, ptr noundef %i.p, ptr noundef nonnull %i.a) #7 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 0, ptr %i.b, align 4
  %i.r = call ptr @ures_getStringByKeyWithFallback_78(ptr noundef %i.q, ptr noundef nonnull @.str, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #7
  %i.s = load i32, ptr %i.a, align 4
  %i.t = icmp sgt i32 %i.s, 0
  %i.u = load i32, ptr %i.b, align 4
  %i.v = icmp ne i32 %i.u, 1
  %or.cond.i14 = select i1 %i.t, i1 true, i1 %i.v
  br i1 %or.cond.i14, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load i16, ptr %i.r, align 2
  %i.x = add i16 %i.w, -48
  %i.y = sext i16 %i.x to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i15 = phi i32 [ %i.y, %bb.g ], [ 1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %.not.i.i16 = icmp eq ptr %i.q, null
  br i1 %.not.i.i16, label %_ZN12_GLOBAL__N_123getMinGroupingForLocaleERKN6icu_786LocaleE.exit17, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @ures_close_78(ptr noundef nonnull %i.q) #7
  br label %_ZN12_GLOBAL__N_123getMinGroupingForLocaleERKN6icu_786LocaleE.exit17

_ZN12_GLOBAL__N_123getMinGroupingForLocaleERKN6icu_786LocaleE.exit17: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.z = call i32 @uprv_max_78(i32 noundef 2, i32 noundef %.0.i15) #7
  %i.aa = trunc i32 %i.z to i16
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN12_GLOBAL__N_123getMinGroupingForLocaleERKN6icu_786LocaleE.exit, %_ZN12_GLOBAL__N_123getMinGroupingForLocaleERKN6icu_786LocaleE.exit17
  %.sink = phi i16 [ %i.aa, %_ZN12_GLOBAL__N_123getMinGroupingForLocaleERKN6icu_786LocaleE.exit17 ], [ %.0.i, %_ZN12_GLOBAL__N_123getMinGroupingForLocaleERKN6icu_786LocaleE.exit ]
  store i16 %.sink, ptr %i.e, align 4
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.a
  %i.ab = load i16, ptr %0, align 4               ; 2 uses
  %.not = icmp eq i16 %i.ab, -2
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 2
  %.not12 = icmp eq i16 %i.ad, -4
  %or.cond = select i1 %.not, i1 true, i1 %.not12
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.af = load i64, ptr %i.ae, align 8            ; 3 uses
  %i.ag = trunc i64 %i.af to i16
  %i.ah = lshr i64 %i.af, 16
  %i.ai = trunc i64 %i.ah to i16                  ; 2 uses
  %i.aj = icmp eq i16 %i.ai, -1
  %i.ak = icmp eq i16 %i.ab, -4
  %i.al = select i1 %i.ak, i16 3, i16 -1
  %.0 = select i1 %i.aj, i16 %i.al, i16 %i.ag     ; 2 uses
  %i.am = and i64 %i.af, 281470681743360
  %i.an = icmp eq i64 %i.am, 281470681743360
  %.010 = select i1 %i.an, i16 %.0, i16 %i.ai
  store i16 %.0, ptr %0, align 4
  store i16 %.010, ptr %i.ac, align 2
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  ret void
}

declare i32 @uprv_max_78(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK6icu_786number4impl7Grouper15groupAtPositionEiRKNS1_15DecimalQuantityE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(66) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 4                ; 2 uses
  %.off = add i16 %i.a, -1
  %switch = icmp ult i16 %.off, -2
  br i1 %switch, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = sext i16 %i.a to i32
  %i.c = sub nsw i32 %1, %i.b                     ; 2 uses
  %i.d = icmp sgt i32 %i.c, -1
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = load i16, ptr %i.e, align 2
  %i.g = sext i16 %i.f to i32
  %i.h = srem i32 %i.c, %i.g
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = tail call noundef i32 @_ZNK6icu_786number4impl15DecimalQuantity24getUpperDisplayMagnitudeEv(ptr noundef nonnull align 8 dereferenceable(66) %2) #7
end_hunk_0
