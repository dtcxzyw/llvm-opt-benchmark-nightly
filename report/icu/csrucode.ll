Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/csrucode?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"UTF-16BE\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"UTF-16LE\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"UTF-32BE\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"UTF-32LE\00", align 1
@_ZTVN6icu_7820CharsetRecog_UnicodeE = local_unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN6icu_7820CharsetRecog_UnicodeE, ptr @__cxa_pure_virtual, ptr @_ZNK6icu_7817CharsetRecognizer11getLanguageEv, ptr @__cxa_pure_virtual, ptr @_ZN6icu_7820CharsetRecog_UnicodeD1Ev, ptr @_ZN6icu_7820CharsetRecog_UnicodeD0Ev] }, align 8
@_ZTIN6icu_7820CharsetRecog_UnicodeE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6icu_7820CharsetRecog_UnicodeE, ptr @_ZTIN6icu_7817CharsetRecognizerE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6icu_7820CharsetRecog_UnicodeE = constant [32 x i8] c"N6icu_7820CharsetRecog_UnicodeE\00", align 1
@_ZTIN6icu_7817CharsetRecognizerE = external constant ptr
@_ZTVN6icu_7822CharsetRecog_UTF_16_BEE = local_unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN6icu_7822CharsetRecog_UTF_16_BEE, ptr @_ZNK6icu_7822CharsetRecog_UTF_16_BE7getNameEv, ptr @_ZNK6icu_7817CharsetRecognizer11getLanguageEv, ptr @_ZNK6icu_7822CharsetRecog_UTF_16_BE5matchEPNS_9InputTextEPNS_12CharsetMatchE, ptr @_ZN6icu_7822CharsetRecog_UTF_16_BED1Ev, ptr @_ZN6icu_7822CharsetRecog_UTF_16_BED0Ev] }, align 8
@_ZTIN6icu_7822CharsetRecog_UTF_16_BEE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6icu_7822CharsetRecog_UTF_16_BEE, ptr @_ZTIN6icu_7820CharsetRecog_UnicodeE }, align 8
@_ZTSN6icu_7822CharsetRecog_UTF_16_BEE = constant [34 x i8] c"N6icu_7822CharsetRecog_UTF_16_BEE\00", align 1
@_ZTVN6icu_7822CharsetRecog_UTF_16_LEE = local_unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN6icu_7822CharsetRecog_UTF_16_LEE, ptr @_ZNK6icu_7822CharsetRecog_UTF_16_LE7getNameEv, ptr @_ZNK6icu_7817CharsetRecognizer11getLanguageEv, ptr @_ZNK6icu_7822CharsetRecog_UTF_16_LE5matchEPNS_9InputTextEPNS_12CharsetMatchE, ptr @_ZN6icu_7822CharsetRecog_UTF_16_LED1Ev, ptr @_ZN6icu_7822CharsetRecog_UTF_16_LED0Ev] }, align 8
@_ZTIN6icu_7822CharsetRecog_UTF_16_LEE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6icu_7822CharsetRecog_UTF_16_LEE, ptr @_ZTIN6icu_7820CharsetRecog_UnicodeE }, align 8
@_ZTSN6icu_7822CharsetRecog_UTF_16_LEE = constant [34 x i8] c"N6icu_7822CharsetRecog_UTF_16_LEE\00", align 1
@_ZTVN6icu_7819CharsetRecog_UTF_32E = local_unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN6icu_7819CharsetRecog_UTF_32E, ptr @__cxa_pure_virtual, ptr @_ZNK6icu_7817CharsetRecognizer11getLanguageEv, ptr @_ZNK6icu_7819CharsetRecog_UTF_325matchEPNS_9InputTextEPNS_12CharsetMatchE, ptr @_ZN6icu_7819CharsetRecog_UTF_32D1Ev, ptr @_ZN6icu_7819CharsetRecog_UTF_32D0Ev, ptr @__cxa_pure_virtual] }, align 8
@_ZTIN6icu_7819CharsetRecog_UTF_32E = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6icu_7819CharsetRecog_UTF_32E, ptr @_ZTIN6icu_7820CharsetRecog_UnicodeE }, align 8
@_ZTSN6icu_7819CharsetRecog_UTF_32E = constant [31 x i8] c"N6icu_7819CharsetRecog_UTF_32E\00", align 1
@_ZTVN6icu_7822CharsetRecog_UTF_32_BEE = local_unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN6icu_7822CharsetRecog_UTF_32_BEE, ptr @_ZNK6icu_7822CharsetRecog_UTF_32_BE7getNameEv, ptr @_ZNK6icu_7817CharsetRecognizer11getLanguageEv, ptr @_ZNK6icu_7819CharsetRecog_UTF_325matchEPNS_9InputTextEPNS_12CharsetMatchE, ptr @_ZN6icu_7822CharsetRecog_UTF_32_BED1Ev, ptr @_ZN6icu_7822CharsetRecog_UTF_32_BED0Ev, ptr @_ZNK6icu_7822CharsetRecog_UTF_32_BE7getCharEPKhi] }, align 8
@_ZTIN6icu_7822CharsetRecog_UTF_32_BEE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6icu_7822CharsetRecog_UTF_32_BEE, ptr @_ZTIN6icu_7819CharsetRecog_UTF_32E }, align 8
@_ZTSN6icu_7822CharsetRecog_UTF_32_BEE = constant [34 x i8] c"N6icu_7822CharsetRecog_UTF_32_BEE\00", align 1
@_ZTVN6icu_7822CharsetRecog_UTF_32_LEE = local_unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN6icu_7822CharsetRecog_UTF_32_LEE, ptr @_ZNK6icu_7822CharsetRecog_UTF_32_LE7getNameEv, ptr @_ZNK6icu_7817CharsetRecognizer11getLanguageEv, ptr @_ZNK6icu_7819CharsetRecog_UTF_325matchEPNS_9InputTextEPNS_12CharsetMatchE, ptr @_ZN6icu_7822CharsetRecog_UTF_32_LED1Ev, ptr @_ZN6icu_7822CharsetRecog_UTF_32_LED0Ev, ptr @_ZNK6icu_7822CharsetRecog_UTF_32_LE7getCharEPKhi] }, align 8
@_ZTIN6icu_7822CharsetRecog_UTF_32_LEE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6icu_7822CharsetRecog_UTF_32_LEE, ptr @_ZTIN6icu_7819CharsetRecog_UTF_32E }, align 8
@_ZTSN6icu_7822CharsetRecog_UTF_32_LEE = constant [34 x i8] c"N6icu_7822CharsetRecog_UTF_32_LEE\00", align 1

@_ZN6icu_7820CharsetRecog_UnicodeD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6icu_7820CharsetRecog_UnicodeD2Ev
@_ZN6icu_7822CharsetRecog_UTF_16_BED2Ev = unnamed_addr alias void (ptr), ptr @_ZN6icu_7820CharsetRecog_UnicodeD2Ev
@_ZN6icu_7822CharsetRecog_UTF_16_BED1Ev = unnamed_addr alias void (ptr), ptr @_ZN6icu_7822CharsetRecog_UTF_16_BED2Ev
@_ZN6icu_7822CharsetRecog_UTF_16_LED2Ev = unnamed_addr alias void (ptr), ptr @_ZN6icu_7820CharsetRecog_UnicodeD2Ev
@_ZN6icu_7822CharsetRecog_UTF_16_LED1Ev = unnamed_addr alias void (ptr), ptr @_ZN6icu_7822CharsetRecog_UTF_16_LED2Ev
@_ZN6icu_7819CharsetRecog_UTF_32D2Ev = unnamed_addr alias void (ptr), ptr @_ZN6icu_7820CharsetRecog_UnicodeD2Ev
@_ZN6icu_7819CharsetRecog_UTF_32D1Ev = unnamed_addr alias void (ptr), ptr @_ZN6icu_7819CharsetRecog_UTF_32D2Ev
@_ZN6icu_7822CharsetRecog_UTF_32_BED2Ev = unnamed_addr alias void (ptr), ptr @_ZN6icu_7819CharsetRecog_UTF_32D2Ev
@_ZN6icu_7822CharsetRecog_UTF_32_BED1Ev = unnamed_addr alias void (ptr), ptr @_ZN6icu_7822CharsetRecog_UTF_32_BED2Ev
@_ZN6icu_7822CharsetRecog_UTF_32_LED2Ev = unnamed_addr alias void (ptr), ptr @_ZN6icu_7819CharsetRecog_UTF_32D2Ev
@_ZN6icu_7822CharsetRecog_UTF_32_LED1Ev = unnamed_addr alias void (ptr), ptr @_ZN6icu_7822CharsetRecog_UTF_32_LED2Ev

; Function Attrs: nounwind
declare void @_ZN6icu_7817CharsetRecognizerD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7820CharsetRecog_UnicodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_7817CharsetRecognizerD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #9
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN6icu_7820CharsetRecog_UnicodeD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @llvm.trap() #10
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #3

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7822CharsetRecog_UTF_16_BED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_7822CharsetRecog_UTF_16_BED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #9
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZNK6icu_7822CharsetRecog_UTF_16_BE7getNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 {
bb.a:
  ret ptr @.str
}

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_7822CharsetRecog_UTF_16_BE5matchEPNS_9InputTextEPNS_12CharsetMatchE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13   ; 4 uses
  %i.e = tail call i32 @llvm.smin.i32(i32 %i.d, i32 30)
  %i.f = add nsw i32 %i.e, -1
  %i.g = icmp sgt i32 %i.d, 1
  br i1 %i.g, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %3 = load i16, ptr %i.b, align 1                ; 3 uses
  switch i16 %3, label %_ZN6icu_78L16adjustConfidenceEDsi.exit.peel [
    i16 -2, label %.thread
    i16 0, label %.thread.fold.split
  ]

_ZN6icu_78L16adjustConfidenceEDsi.exit.peel:      ; preds = %.lr.ph.preheader
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %i.h = add i16 %4, -32
  %or.cond.i.peel = icmp ult i16 %i.h, 224
  %i.i = icmp eq i16 %3, 2560
  %or.cond5.i.peel = or i1 %i.i, %or.cond.i.peel
  %spec.select.i.peel = select i1 %or.cond5.i.peel, i32 20, i32 10 ; 2 uses
  %i.j = icmp samesign ugt i32 %i.d, 3
  br i1 %i.j, label %.lr.ph.peel.next, label %.thread

.lr.ph.peel.next:                                 ; preds = %_ZN6icu_78L16adjustConfidenceEDsi.exit.peel, %_ZN6icu_78L16adjustConfidenceEDsi.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN6icu_78L16adjustConfidenceEDsi.exit ], [ 2, %_ZN6icu_78L16adjustConfidenceEDsi.exit.peel ] ; 2 uses
  %.03135 = phi i32 [ %i.q, %_ZN6icu_78L16adjustConfidenceEDsi.exit ], [ %spec.select.i.peel, %_ZN6icu_78L16adjustConfidenceEDsi.exit.peel ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  %5 = load i16, ptr %i.k, align 1                ; 3 uses
  %i.l = icmp eq i16 %5, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.peel.next
  %i.m = tail call i32 @llvm.usub.sat.i32(i32 %.03135, i32 10)
  br label %_ZN6icu_78L16adjustConfidenceEDsi.exit

bb.c:                                             ; preds = %.lr.ph.peel.next
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %i.n = add i16 %6, -32
  %or.cond.i = icmp ult i16 %i.n, 224
  %i.o = icmp eq i16 %5, 2560
  %or.cond5.i = or i1 %i.o, %or.cond.i
  %i.p = add nuw nsw i32 %.03135, 10
  %spec.select.i = select i1 %or.cond5.i, i32 %i.p, i32 %.03135
  br label %_ZN6icu_78L16adjustConfidenceEDsi.exit

_ZN6icu_78L16adjustConfidenceEDsi.exit:           ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.m, %bb.b ], [ %spec.select.i, %bb.c ]
  %i.q = tail call noundef range(i32 0, 101) i32 @llvm.umin.i32(i32 %.0.i, i32 100) ; 3 uses
  %.off = add nsw i32 %i.q, -1
  %switch = icmp ult i32 %.off, 99
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.r = trunc nuw i64 %indvars.iv.next to i32
  %i.s = icmp sgt i32 %i.f, %i.r
  %or.cond = select i1 %switch, i1 %i.s, i1 false
  br i1 %or.cond, label %.lr.ph.peel.next, label %.thread, !llvm.loop !16

.thread.fold.split:                               ; preds = %.lr.ph.preheader
  br label %.thread

.thread:                                          ; preds = %_ZN6icu_78L16adjustConfidenceEDsi.exit, %.lr.ph.preheader, %.thread.fold.split, %_ZN6icu_78L16adjustConfidenceEDsi.exit.peel, %bb.a
  %.2 = phi i32 [ 10, %bb.a ], [ 100, %.lr.ph.preheader ], [ 0, %.thread.fold.split ], [ %spec.select.i.peel, %_ZN6icu_78L16adjustConfidenceEDsi.exit.peel ], [ %i.q, %_ZN6icu_78L16adjustConfidenceEDsi.exit ] ; 2 uses
  %i.t = icmp slt i32 %i.d, 4
  %i.u = icmp samesign ult i32 %.2, 100
  %or.cond6 = and i1 %i.t, %i.u
  %spec.store.select = select i1 %or.cond6, i32 0, i32 %.2 ; 2 uses
  tail call void @_ZN6icu_7812CharsetMatch3setEPNS_9InputTextEPKNS_17CharsetRecognizerEiPKcS7_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %1, ptr noundef nonnull %0, i32 noundef %spec.store.select, ptr noundef null, ptr noundef null)
  %i.v = icmp ne i32 %spec.store.select, 0
  %i.w = zext i1 %i.v to i8
  ret i8 %i.w
}

declare void @_ZN6icu_7812CharsetMatch3setEPNS_9InputTextEPKNS_17CharsetRecognizerEiPKcS7_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7822CharsetRecog_UTF_16_LED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_7822CharsetRecog_UTF_16_LED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #9
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZNK6icu_7822CharsetRecog_UTF_16_LE7getNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 {
bb.a:
  ret ptr @.str.1
}

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_7822CharsetRecog_UTF_16_LE5matchEPNS_9InputTextEPNS_12CharsetMatchE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13   ; 5 uses
  %i.e = tail call i32 @llvm.smin.i32(i32 %i.d, i32 30)
  %i.f = add nsw i32 %i.e, -1
  %i.g = icmp sgt i32 %i.d, 1
  br i1 %i.g, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.h = load i16, ptr %i.b, align 1              ; 3 uses
  switch i16 %i.h, label %_ZN6icu_78L16adjustConfidenceEDsi.exit.peel [
    i16 -257, label %bb.b
    i16 0, label %.thread
  ]

_ZN6icu_78L16adjustConfidenceEDsi.exit.peel:      ; preds = %.lr.ph.preheader
  %i.i = add i16 %i.h, -32
  %or.cond.i.peel = icmp ult i16 %i.i, 224
  %i.j = icmp eq i16 %i.h, 10
  %or.cond5.i.peel = or i1 %i.j, %or.cond.i.peel
  %spec.select.i.peel = select i1 %or.cond5.i.peel, i32 20, i32 10 ; 2 uses
  %i.k = icmp samesign ugt i32 %i.d, 3
  br i1 %i.k, label %.lr.ph.peel.next, label %.thread

bb.b:                                             ; preds = %.lr.ph.preheader
  %i.l = icmp samesign ugt i32 %i.d, 3
  br i1 %i.l, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !18
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.q = load i8, ptr %i.p, align 1, !tbaa !18
  %i.r = icmp eq i8 %i.q, 0
  %spec.select = select i1 %i.r, i32 0, i32 100
  br label %.thread

.lr.ph.peel.next:                                 ; preds = %_ZN6icu_78L16adjustConfidenceEDsi.exit.peel, %_ZN6icu_78L16adjustConfidenceEDsi.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN6icu_78L16adjustConfidenceEDsi.exit ], [ 2, %_ZN6icu_78L16adjustConfidenceEDsi.exit.peel ] ; 2 uses
  %.03438 = phi i32 [ %i.z, %_ZN6icu_78L16adjustConfidenceEDsi.exit ], [ %spec.select.i.peel, %_ZN6icu_78L16adjustConfidenceEDsi.exit.peel ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  %i.t = load i16, ptr %i.s, align 1              ; 3 uses
  %i.u = icmp eq i16 %i.t, 0
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.peel.next
  %i.v = tail call i32 @llvm.usub.sat.i32(i32 %.03438, i32 10)
  br label %_ZN6icu_78L16adjustConfidenceEDsi.exit

bb.f:                                             ; preds = %.lr.ph.peel.next
  %i.w = add i16 %i.t, -32
  %or.cond.i = icmp ult i16 %i.w, 224
  %i.x = icmp eq i16 %i.t, 10
  %or.cond5.i = or i1 %i.x, %or.cond.i
  %i.y = add nuw nsw i32 %.03438, 10
  %spec.select.i = select i1 %or.cond5.i, i32 %i.y, i32 %.03438
  br label %_ZN6icu_78L16adjustConfidenceEDsi.exit

_ZN6icu_78L16adjustConfidenceEDsi.exit:           ; preds = %bb.e, %bb.f
  %.0.i = phi i32 [ %i.v, %bb.e ], [ %spec.select.i, %bb.f ]
  %i.z = tail call noundef range(i32 0, 101) i32 @llvm.umin.i32(i32 %.0.i, i32 100) ; 3 uses
  %.off = add nsw i32 %i.z, -1
  %switch = icmp ult i32 %.off, 99
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.aa = trunc nuw i64 %indvars.iv.next to i32
  %i.ab = icmp sgt i32 %i.f, %i.aa
  %or.cond = select i1 %switch, i1 %i.ab, i1 false
  br i1 %or.cond, label %.lr.ph.peel.next, label %.thread, !llvm.loop !17

.thread:                                          ; preds = %_ZN6icu_78L16adjustConfidenceEDsi.exit, %.lr.ph.preheader, %_ZN6icu_78L16adjustConfidenceEDsi.exit.peel, %bb.a, %bb.c, %bb.d, %bb.b
  %.3 = phi i32 [ %spec.select, %bb.d ], [ 100, %bb.b ], [ 100, %bb.c ], [ 10, %bb.a ], [ 0, %.lr.ph.preheader ], [ %spec.select.i.peel, %_ZN6icu_78L16adjustConfidenceEDsi.exit.peel ], [ %i.z, %_ZN6icu_78L16adjustConfidenceEDsi.exit ] ; 2 uses
  %i.ac = icmp slt i32 %i.d, 4
  %i.ad = icmp samesign ult i32 %.3, 100
  %or.cond6 = and i1 %i.ac, %i.ad
  %spec.store.select = select i1 %or.cond6, i32 0, i32 %.3 ; 2 uses
  tail call void @_ZN6icu_7812CharsetMatch3setEPNS_9InputTextEPKNS_17CharsetRecognizerEiPKcS7_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %1, ptr noundef nonnull %0, i32 noundef %spec.store.select, ptr noundef null, ptr noundef null)
  %i.ae = icmp ne i32 %spec.store.select, 0
  %i.af = zext i1 %i.ae to i8
  ret i8 %i.af
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN6icu_7819CharsetRecog_UTF_32D0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @llvm.trap() #10
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_7819CharsetRecog_UTF_325matchEPNS_9InputTextEPNS_12CharsetMatchE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.e = and i32 %i.d, -4
  %i.f = icmp sgt i32 %i.d, 3
  br i1 %i.f, label %.lr.ph.preheader, label %.thread77

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i32 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.b, i32 noundef 0)
  %i.k = icmp eq i32 %i.j, 65279                  ; 2 uses
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.l = icmp eq i32 %.1, 0                       ; 3 uses
  %or.cond5 = select i1 %i.k, i1 %i.l, i1 false
  br i1 %or.cond5, label %.thread77, label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.052 = phi i32 [ %i.t, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.04151 = phi i32 [ %.1, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.04250 = phi i32 [ %.143, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.m = load ptr, ptr %0, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef i32 %i.o(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.b, i32 noundef %.052) ; 2 uses
  %or.cond = icmp ult i32 %i.p, 1114111
  %i.q = and i32 %i.p, 2095104
  %or.cond3 = icmp ne i32 %i.q, 55296
  %or.cond45.not = and i1 %or.cond, %or.cond3     ; 2 uses
  %i.r = zext i1 %or.cond45.not to i32
  %.143 = add nuw nsw i32 %.04250, %i.r           ; 4 uses
  %not.or.cond45.not = xor i1 %or.cond45.not, true
  %i.s = zext i1 %not.or.cond45.not to i32
  %.1 = add nuw nsw i32 %.04151, %i.s             ; 3 uses
  %i.t = add nuw nsw i32 %.052, 4                 ; 2 uses
  %i.u = icmp slt i32 %i.t, %i.e
  br i1 %i.u, label %.lr.ph, label %._crit_edge, !llvm.loop !19

bb.b:                                             ; preds = %._crit_edge
  %i.v = mul nuw nsw i32 %.1, 10
  %i.w = icmp samesign ugt i32 %.143, %i.v
  %cond.fr = freeze i1 %i.w                       ; 3 uses
  %or.cond47 = and i1 %i.k, %cond.fr
  br i1 %or.cond47, label %.thread77, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = icmp samesign ugt i32 %.143, 3
  %or.cond7 = select i1 %i.x, i1 %i.l, i1 false
  br i1 %or.cond7, label %.thread77, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = icmp ne i32 %.143, 0
  %or.cond9 = select i1 %i.y, i1 %i.l, i1 false
  br i1 %or.cond9, label %.thread77, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.select48 = zext i1 %cond.fr to i8
  %spec.select = select i1 %cond.fr, i32 25, i32 0
  br label %.thread77

.thread77:                                        ; preds = %bb.e, %bb.a, %bb.d, %bb.c, %bb.b, %._crit_edge
  %i.z = phi i8 [ 1, %bb.d ], [ 1, %._crit_edge ], [ 1, %bb.b ], [ 1, %bb.c ], [ 0, %bb.a ], [ %spec.select48, %bb.e ]
  %.039 = phi i32 [ 80, %bb.d ], [ 100, %._crit_edge ], [ 80, %bb.b ], [ 100, %bb.c ], [ 0, %bb.a ], [ %spec.select, %bb.e ]
  tail call void @_ZN6icu_7812CharsetMatch3setEPNS_9InputTextEPKNS_17CharsetRecognizerEiPKcS7_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %1, ptr noundef nonnull %0, i32 noundef %.039, ptr noundef null, ptr noundef null)
  ret i8 %i.z
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7822CharsetRecog_UTF_32_BED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_7822CharsetRecog_UTF_32_BED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #9
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZNK6icu_7822CharsetRecog_UTF_32_BE7getNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 {
bb.a:
  ret ptr @.str.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK6icu_7822CharsetRecog_UTF_32_BE7getCharEPKhi(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #7 align 2 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr inbounds i8, ptr %1, i64 %i.a
  %i.c = load i32, ptr %i.b, align 1
  %i.d = tail call i32 @llvm.bswap.i32(i32 %i.c)
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7822CharsetRecog_UTF_32_LED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_7822CharsetRecog_UTF_32_LED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #9
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZNK6icu_7822CharsetRecog_UTF_32_LE7getNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 {
bb.a:
  ret ptr @.str.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK6icu_7822CharsetRecog_UTF_32_LE7getCharEPKhi(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #7 align 2 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr i8, ptr %1, i64 %i.a
  %i.c = load i32, ptr %i.b, align 1
  ret i32 %i.c
}

declare void @__cxa_pure_virtual() unnamed_addr

declare noundef ptr @_ZNK6icu_7817CharsetRecognizer11getLanguageEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

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
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"p1 short", !8, i64 0}
!11 = !{!"_ZTSN6icu_789InputTextE", !9, i64 0, !5, i64 8, !10, i64 16, !4, i64 24, !9, i64 32, !9, i64 40, !5, i64 48}
!12 = !{!11, !9, i64 40}
!13 = !{!11, !5, i64 48}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.peeled.count", i32 1}
!16 = distinct !{!16, !14, !15}
!17 = distinct !{!17, !14, !15}
!18 = !{!4, !4, i64 0}
!19 = distinct !{!19, !14}
!20 = !{!"vtable pointer", !3, i64 0}
!21 = !{!20, !20, i64 0}
end_hunk_0
