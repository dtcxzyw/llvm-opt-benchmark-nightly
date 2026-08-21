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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13   ; 4 uses
  %3 = tail call i32 @llvm.smin.i32(i32 %i.d, i32 30)
  %4 = add nsw i32 %3, -1
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = load i8, ptr %i.b, align 1, !tbaa !14
  %i.g = zext i8 %i.f to i16
  %i.h = shl nuw i16 %i.g, 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !14
  %i.k = zext i8 %i.j to i16
  %i.l = or disjoint i16 %i.h, %i.k               ; 3 uses
  switch i16 %i.l, label %_ZN6icu_78L16adjustConfidenceEDsi.exit.peel [
    i16 -257, label %.thread
    i16 0, label %.thread.fold.split
  ]

_ZN6icu_78L16adjustConfidenceEDsi.exit.peel:      ; preds = %.lr.ph.preheader
  %i.m = add i16 %i.l, -32
  %or.cond.i.peel = icmp ult i16 %i.m, 224
  %i.n = icmp eq i16 %i.l, 10
  %or.cond5.i.peel = or i1 %i.n, %or.cond.i.peel
  %spec.select.i.peel = select i1 %or.cond5.i.peel, i32 20, i32 10 ; 2 uses
  %i.o = icmp samesign ugt i32 %i.d, 3
  br i1 %i.o, label %.lr.ph.peel.next, label %.thread

.lr.ph.peel.next:                                 ; preds = %_ZN6icu_78L16adjustConfidenceEDsi.exit.peel, %_ZN6icu_78L16adjustConfidenceEDsi.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN6icu_78L16adjustConfidenceEDsi.exit ], [ 2, %_ZN6icu_78L16adjustConfidenceEDsi.exit.peel ] ; 2 uses
  %.03135 = phi i32 [ %i.ac, %_ZN6icu_78L16adjustConfidenceEDsi.exit ], [ %spec.select.i.peel, %_ZN6icu_78L16adjustConfidenceEDsi.exit.peel ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !14
  %i.r = zext i8 %i.q to i16
  %i.s = shl nuw i16 %i.r, 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !14
  %i.v = zext i8 %i.u to i16
  %i.w = or disjoint i16 %i.s, %i.v               ; 3 uses
  %i.x = icmp eq i16 %i.w, 0
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.peel.next
  %i.y = tail call i32 @llvm.usub.sat.i32(i32 %.03135, i32 10)
  br label %_ZN6icu_78L16adjustConfidenceEDsi.exit

bb.c:                                             ; preds = %.lr.ph.peel.next
  %i.z = add i16 %i.w, -32
  %or.cond.i = icmp ult i16 %i.z, 224
  %i.aa = icmp eq i16 %i.w, 10
  %or.cond5.i = or i1 %i.aa, %or.cond.i
  %i.ab = add nuw nsw i32 %.03135, 10
  %spec.select.i = select i1 %or.cond5.i, i32 %i.ab, i32 %.03135
  br label %_ZN6icu_78L16adjustConfidenceEDsi.exit

_ZN6icu_78L16adjustConfidenceEDsi.exit:           ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.y, %bb.b ], [ %spec.select.i, %bb.c ]
  %i.ac = tail call noundef range(i32 0, 101) i32 @llvm.umin.i32(i32 %.0.i, i32 100) ; 3 uses
  %.off = add nsw i32 %i.ac, -1
  %switch = icmp ult i32 %.off, 99
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %5 = trunc nuw i64 %indvars.iv.next to i32
  %6 = icmp sgt i32 %4, %5
  %or.cond = select i1 %switch, i1 %6, i1 false
  br i1 %or.cond, label %.lr.ph.peel.next, label %.thread, !llvm.loop !15

.thread.fold.split:                               ; preds = %.lr.ph.preheader
  br label %.thread

.thread:                                          ; preds = %_ZN6icu_78L16adjustConfidenceEDsi.exit, %.lr.ph.preheader, %.thread.fold.split, %_ZN6icu_78L16adjustConfidenceEDsi.exit.peel, %bb.a
  %.2 = phi i32 [ 10, %bb.a ], [ 100, %.lr.ph.preheader ], [ 0, %.thread.fold.split ], [ %spec.select.i.peel, %_ZN6icu_78L16adjustConfidenceEDsi.exit.peel ], [ %i.ac, %_ZN6icu_78L16adjustConfidenceEDsi.exit ] ; 2 uses
  %i.ad = icmp slt i32 %i.d, 4
  %i.ae = icmp samesign ult i32 %.2, 100
  %or.cond6 = and i1 %i.ad, %i.ae
  %spec.store.select = select i1 %or.cond6, i32 0, i32 %.2 ; 2 uses
  tail call void @_ZN6icu_7812CharsetMatch3setEPNS_9InputTextEPKNS_17CharsetRecognizerEiPKcS7_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %1, ptr noundef nonnull %0, i32 noundef %spec.store.select, ptr noundef null, ptr noundef null)
  %i.af = icmp ne i32 %spec.store.select, 0
  %i.ag = zext i1 %i.af to i8
  ret i8 %i.ag
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13   ; 5 uses
  %3 = tail call i32 @llvm.smin.i32(i32 %i.d, i32 30)
  %4 = add nsw i32 %3, -1
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = load i16, ptr %i.b, align 1              ; 3 uses
  switch i16 %i.f, label %_ZN6icu_78L16adjustConfidenceEDsi.exit.peel [
    i16 -257, label %bb.b
    i16 0, label %.thread
  ]

_ZN6icu_78L16adjustConfidenceEDsi.exit.peel:      ; preds = %.lr.ph.preheader
  %i.g = add i16 %i.f, -32
  %or.cond.i.peel = icmp ult i16 %i.g, 224
  %i.h = icmp eq i16 %i.f, 10
  %or.cond5.i.peel = or i1 %i.h, %or.cond.i.peel
  %spec.select.i.peel = select i1 %or.cond5.i.peel, i32 20, i32 10 ; 2 uses
  %i.i = icmp samesign ugt i32 %i.d, 3
  br i1 %i.i, label %.lr.ph.peel.next, label %.thread

bb.b:                                             ; preds = %.lr.ph.preheader
  %i.j = icmp samesign ugt i32 %i.d, 3
  br i1 %i.j, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.o = load i8, ptr %i.n, align 1, !tbaa !14
  %i.p = icmp eq i8 %i.o, 0
  %spec.select = select i1 %i.p, i32 0, i32 100
  br label %.thread

.lr.ph.peel.next:                                 ; preds = %_ZN6icu_78L16adjustConfidenceEDsi.exit.peel, %_ZN6icu_78L16adjustConfidenceEDsi.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN6icu_78L16adjustConfidenceEDsi.exit ], [ 2, %_ZN6icu_78L16adjustConfidenceEDsi.exit.peel ] ; 2 uses
  %.03438 = phi i32 [ %i.x, %_ZN6icu_78L16adjustConfidenceEDsi.exit ], [ %spec.select.i.peel, %_ZN6icu_78L16adjustConfidenceEDsi.exit.peel ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  %i.r = load i16, ptr %i.q, align 1              ; 3 uses
  %i.s = icmp eq i16 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.peel.next
  %i.t = tail call i32 @llvm.usub.sat.i32(i32 %.03438, i32 10)
  br label %_ZN6icu_78L16adjustConfidenceEDsi.exit

bb.f:                                             ; preds = %.lr.ph.peel.next
  %i.u = add i16 %i.r, -32
  %or.cond.i = icmp ult i16 %i.u, 224
  %i.v = icmp eq i16 %i.r, 10
  %or.cond5.i = or i1 %i.v, %or.cond.i
  %i.w = add nuw nsw i32 %.03438, 10
  %spec.select.i = select i1 %or.cond5.i, i32 %i.w, i32 %.03438
  br label %_ZN6icu_78L16adjustConfidenceEDsi.exit

_ZN6icu_78L16adjustConfidenceEDsi.exit:           ; preds = %bb.e, %bb.f
  %.0.i = phi i32 [ %i.t, %bb.e ], [ %spec.select.i, %bb.f ]
  %i.x = tail call noundef range(i32 0, 101) i32 @llvm.umin.i32(i32 %.0.i, i32 100) ; 3 uses
  %.off = add nsw i32 %i.x, -1
  %switch = icmp ult i32 %.off, 99
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %5 = trunc nuw i64 %indvars.iv.next to i32
  %6 = icmp sgt i32 %4, %5
  %or.cond = select i1 %switch, i1 %6, i1 false
  br i1 %or.cond, label %.lr.ph.peel.next, label %.thread, !llvm.loop !18

.thread:                                          ; preds = %_ZN6icu_78L16adjustConfidenceEDsi.exit, %.lr.ph.preheader, %_ZN6icu_78L16adjustConfidenceEDsi.exit.peel, %bb.a, %bb.c, %bb.d, %bb.b
  %.3 = phi i32 [ %spec.select, %bb.d ], [ 100, %bb.b ], [ 100, %bb.c ], [ 10, %bb.a ], [ 0, %.lr.ph.preheader ], [ %spec.select.i.peel, %_ZN6icu_78L16adjustConfidenceEDsi.exit.peel ], [ %i.x, %_ZN6icu_78L16adjustConfidenceEDsi.exit ] ; 2 uses
  %i.y = icmp slt i32 %i.d, 4
  %i.z = icmp samesign ult i32 %.3, 100
  %or.cond6 = and i1 %i.y, %i.z
  %spec.store.select = select i1 %or.cond6, i32 0, i32 %.3 ; 2 uses
  tail call void @_ZN6icu_7812CharsetMatch3setEPNS_9InputTextEPKNS_17CharsetRecognizerEiPKcS7_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %1, ptr noundef nonnull %0, i32 noundef %spec.store.select, ptr noundef null, ptr noundef null)
  %i.aa = icmp ne i32 %spec.store.select, 0
  %i.ab = zext i1 %i.aa to i8
  ret i8 %i.ab
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.e = and i32 %i.d, -4
  %i.f = icmp sgt i32 %i.d, 3
  br i1 %i.f, label %.lr.ph.preheader, label %.thread77

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !19
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
  %i.m = load ptr, ptr %0, align 8, !tbaa !19
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
  br i1 %i.u, label %.lr.ph, label %._crit_edge, !llvm.loop !21

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
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 40}
!9 = !{!"_ZTSN6icu_789InputTextE", !10, i64 0, !5, i64 8, !12, i64 16, !6, i64 24, !10, i64 32, !10, i64 40, !5, i64 48}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 short", !11, i64 0}
!13 = !{!9, !5, i64 48}
!14 = !{!6, !6, i64 0}
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.peeled.count", i32 1}
!18 = distinct !{!18, !16, !17}
!19 = !{!20, !20, i64 0}
!20 = !{!"vtable pointer", !7, i64 0}
!21 = distinct !{!21, !16}
end_hunk_0
