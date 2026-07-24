inline.NumInlined: 12
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZN6hermes9base64vlqL11Base64CharsE = internal unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 16

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(36) ptr @_ZN6hermes9base64vlq6encodeERN4llvh11raw_ostreamEi(ptr noundef nonnull returned align 8 dereferenceable(36) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = shl nsw i64 %i.a, 1                      ; 2 uses
  %i.c = icmp slt i32 %1, 0
  %i.d = sub nsw i64 1, %i.b
  %.011 = select i1 %i.c, i64 %i.d, i64 %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvh11raw_ostreamlsEc.exit, %bb.a
  %.1 = phi i64 [ %.011, %bb.a ], [ %i.h, %_ZN4llvh11raw_ostreamlsEc.exit ] ; 2 uses
  %i.g = and i64 %.1, 31                          ; 2 uses
  %i.h = lshr i64 %.1, 5                          ; 2 uses
  %.not = icmp eq i64 %i.h, 0                     ; 2 uses
  %i.i = or disjoint i64 %i.g, 32
  %spec.select = select i1 %.not, i64 %i.g, i64 %i.i
  %i.j = getelementptr inbounds nuw i8, ptr @_ZN6hermes9base64vlqL11Base64CharsE, i64 %spec.select
  %i.k = load i8, ptr %i.j, align 1, !tbaa !7     ; 2 uses
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !8    ; 3 uses
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !13
  %.not.i = icmp ult ptr %i.l, %i.m
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %0, i8 noundef zeroext %i.k) #3 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store ptr %i.o, ptr %i.e, align 8, !tbaa !8
  store i8 %i.k, ptr %i.l, align 1, !tbaa !7
  br label %_ZN4llvh11raw_ostreamlsEc.exit

_ZN4llvh11raw_ostreamlsEc.exit:                   ; preds = %bb.c, %bb.d
  br i1 %.not, label %bb.e, label %bb.b, !llvm.loop !14

bb.e:                                             ; preds = %_ZN4llvh11raw_ostreamlsEc.exit
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i64 0, 8589934592) i64 @_ZN6hermes9base64vlq6decodeERPKcS2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16     ; 3 uses
  %2 = ptrtoint ptr %i.a to i64
  %.not3246 = icmp ult ptr %i.a, %1
  br i1 %.not3246, label %.lr.ph.a, label %.critedge

.lr.ph.a:                                         ; preds = %bb.a, %bb.f
  %.048 = phi i64 [ %i.l, %bb.f ], [ 0, %bb.a ]
  %.02447 = phi ptr [ %i.u, %bb.f ], [ %i.a, %bb.a ] ; 4 uses
  %i.b = load i8, ptr %.02447, align 1, !tbaa !7
  switch i8 %i.b, label %.critedge [
    i8 65, label %_ZN6hermes9base64vlqL12base64DecodeEc.exit
    i8 66, label %.loopexit.fold.split.i
    i8 67, label %.loopexit.fold.split15.i
    i8 68, label %.loopexit.fold.split16.i
    i8 69, label %.loopexit.fold.split17.i
    i8 70, label %.loopexit.fold.split18.i
    i8 71, label %.loopexit.fold.split19.i
    i8 72, label %.loopexit.fold.split20.i
    i8 73, label %.loopexit.fold.split21.i
    i8 74, label %.loopexit.fold.split22.i
    i8 75, label %.loopexit.fold.split23.i
    i8 76, label %.loopexit.fold.split24.i
    i8 77, label %.loopexit.fold.split25.i
    i8 78, label %.loopexit.fold.split26.i
    i8 79, label %.loopexit.fold.split27.i
    i8 80, label %.loopexit.fold.split28.i
    i8 81, label %.loopexit.fold.split29.i
    i8 82, label %.loopexit.fold.split30.i
    i8 83, label %.loopexit.fold.split31.i
    i8 84, label %.loopexit.fold.split32.i
    i8 85, label %.loopexit.fold.split33.i
    i8 86, label %.loopexit.fold.split34.i
    i8 87, label %.loopexit.fold.split35.i
    i8 88, label %.loopexit.fold.split36.i
    i8 89, label %.loopexit.fold.split37.i
    i8 90, label %.loopexit.fold.split38.i
    i8 97, label %.loopexit.fold.split39.i
    i8 98, label %.loopexit.fold.split40.i
    i8 99, label %.loopexit.fold.split41.i
    i8 100, label %.loopexit.fold.split42.i
    i8 101, label %.loopexit.fold.split43.i
    i8 102, label %.loopexit.fold.split44.i
    i8 103, label %.loopexit.fold.split45.i
    i8 104, label %.loopexit.fold.split46.i
    i8 105, label %.loopexit.fold.split47.i
    i8 106, label %.loopexit.fold.split48.i
    i8 107, label %.loopexit.fold.split49.i
    i8 108, label %.loopexit.fold.split50.i
    i8 109, label %.loopexit.fold.split51.i
    i8 110, label %.loopexit.fold.split52.i
    i8 111, label %.loopexit.fold.split53.i
    i8 112, label %.loopexit.fold.split54.i
    i8 113, label %.loopexit.fold.split55.i
    i8 114, label %.loopexit.fold.split56.i
    i8 115, label %.loopexit.fold.split57.i
    i8 116, label %.loopexit.fold.split58.i
    i8 117, label %.loopexit.fold.split59.i
    i8 118, label %.loopexit.fold.split60.i
    i8 119, label %.loopexit.fold.split61.i
    i8 120, label %.loopexit.fold.split62.i
    i8 121, label %.loopexit.fold.split63.i
    i8 122, label %.loopexit.fold.split64.i
    i8 48, label %.loopexit.fold.split65.i
    i8 49, label %.loopexit.fold.split66.i
    i8 50, label %.loopexit.fold.split67.i
    i8 51, label %.loopexit.fold.split68.i
    i8 52, label %.loopexit.fold.split69.i
    i8 53, label %.loopexit.fold.split70.i
    i8 54, label %.loopexit.fold.split71.i
    i8 55, label %.loopexit.fold.split72.i
    i8 56, label %.loopexit.fold.split73.i
    i8 57, label %.loopexit.fold.split74.i
    i8 43, label %.loopexit.fold.split75.i
    i8 47, label %.loopexit.fold.split76.i
    i8 0, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.a
  br label %_ZN6hermes9base64vlqL12base64DecodeEc.exit

.loopexit.fold.split.i:                           ; preds = %.lr.ph.a
  br label %_ZN6hermes9base64vlqL12base64DecodeEc.exit

.loopexit.fold.split15.i:                         ; preds = %.lr.ph.a
  br label %_ZN6hermes9base64vlqL12base64DecodeEc.exit

.loopexit.fold.split16.i:                         ; preds = %.lr.ph.a
  br label %_ZN6hermes9base64vlqL12base64DecodeEc.exit

.loopexit.fold.split17.i:                         ; preds = %.lr.ph.a
  br label %_ZN6hermes9base64vlqL12base64DecodeEc.exit

.loopexit.fold.split18.i:                         ; preds = %.lr.ph.a
  br label %_ZN6hermes9base64vlqL12base64DecodeEc.exit

.loopexit.fold.split19.i:                         ; preds = %.lr.ph.a
  br label %_ZN6hermes9base64vlqL12base64DecodeEc.exit

.loopexit.fold.split20.i:                         ; preds = %.lr.ph.a
  br label %_ZN6hermes9base64vlqL12base64DecodeEc.exit

.loopexit.fold.split21.i:                         ; preds = %.lr.ph.a
  br label %_ZN6hermes9base64vlqL12base64DecodeEc.exit

.loopexit.fold.split22.i:                         ; preds = %.lr.ph.a
  br label %_ZN6hermes9base64vlqL12base64DecodeEc.exit

.loopexit.fold.split23.i:                         ; preds = %.lr.ph.a
  br label %_ZN6hermes9base64vlqL12base64DecodeEc.exit

.loopexit.fold.split24.i:                         ; preds = %.lr.ph.a
  br label %_ZN6hermes9base64vlqL12base64DecodeEc.exit

.loopexit.fold.split25.i:                         ; preds = %.lr.ph.a
  br label %_ZN6hermes9base64vlqL12base64DecodeEc.exit

.loopexit.fold.split26.i:                         ; preds = %.lr.ph.a
  br label %_ZN6hermes9base64vlqL12base64DecodeEc.exit

.loopexit.fold.split27.i:                         ; preds = %.lr.ph.a
  br label %_ZN6hermes9base64vlqL12base64DecodeEc.exit

.loopexit.fold.split28.i:                         ; preds = %.lr.ph.a
  br label %_ZN6hermes9base64vlqL12base64DecodeEc.exit

.loopexit.fold.split29.i:                         ; preds = %.lr.ph.a
  br label %_ZN6hermes9base64vlqL12base64DecodeEc.exit

.loopexit.fold.split30.i:                         ; preds = %.lr.ph.a
  br label %_ZN6hermes9base64vlqL12base64DecodeEc.exit

.loopexit.fold.split31.i:                         ; preds = %.lr.ph.a
  br label %_ZN6hermes9base64vlqL12base64DecodeEc.exit

.loopexit.fold.split32.i:                         ; preds = %.lr.ph.a
  br label %_ZN6hermes9base64vlqL12base64DecodeEc.exit

.loopexit.fold.split33.i:                         ; preds = %.lr.ph.a
  br label %_ZN6hermes9base64vlqL12base64DecodeEc.exit

.loopexit.fold.split34.i:                         ; preds = %.lr.ph.a
  br label %_ZN6hermes9base64vlqL12base64DecodeEc.exit

.loopexit.fold.split35.i:                         ; preds = %.lr.ph.a
  br label %_ZN6hermes9base64vlqL12base64DecodeEc.exit

.loopexit.fold.split36.i:                         ; preds = %.lr.ph.a
  br label %_ZN6hermes9base64vlqL12base64DecodeEc.exit

.loopexit.fold.split37.i:                         ; preds = %.lr.ph.a
  br label %_ZN6hermes9base64vlqL12base64DecodeEc.exit

.loopexit.fold.split38.i:                         ; preds = %.lr.ph.a
  br label %_ZN6hermes9base64vlqL12base64DecodeEc.exit

.loopexit.fold.split39.i:                         ; preds = %.lr.ph.a
  br label %_ZN6hermes9base64vlqL12base64DecodeEc.exit

.loopexit.fold.split40.i:                         ; preds = %.lr.ph.a
  br label %_ZN6hermes9base64vlqL12base64DecodeEc.exit

.loopexit.fold.split41.i:                         ; preds = %.lr.ph.a
  br label %_ZN6hermes9base64vlqL12base64DecodeEc.exit

.loopexit.fold.split42.i:                         ; preds = %.lr.ph.a
  br label %_ZN6hermes9base64vlqL12base64DecodeEc.exit

.loopexit.fold.split43.i:                         ; preds = %.lr.ph.a
  br label %_ZN6hermes9base64vlqL12base64DecodeEc.exit

.loopexit.fold.split44.i:                         ; preds = %.lr.ph.a
  br label %_ZN6hermes9base64vlqL12base64DecodeEc.exit

.loopexit.fold.split45.i:                         ; preds = %.lr.ph.a
  br label %_ZN6hermes9base64vlqL12base64DecodeEc.exit

.loopexit.fold.split46.i:                         ; preds = %.lr.ph.a
  br label %_ZN6hermes9base64vlqL12base64DecodeEc.exit

.loopexit.fold.split47.i:                         ; preds = %.lr.ph.a
  br label %_ZN6hermes9base64vlqL12base64DecodeEc.exit

.loopexit.fold.split48.i:                         ; preds = %.lr.ph.a
  br label %_ZN6hermes9base64vlqL12base64DecodeEc.exit

.loopexit.fold.split49.i:                         ; preds = %.lr.ph.a
  br label %_ZN6hermes9base64vlqL12base64DecodeEc.exit

.loopexit.fold.split50.i:                         ; preds = %.lr.ph.a
  br label %_ZN6hermes9base64vlqL12base64DecodeEc.exit

.loopexit.fold.split51.i:                         ; preds = %.lr.ph.a
  br label %_ZN6hermes9base64vlqL12base64DecodeEc.exit

.loopexit.fold.split52.i:                         ; preds = %.lr.ph.a
  br label %_ZN6hermes9base64vlqL12base64DecodeEc.exit

.loopexit.fold.split53.i:                         ; preds = %.lr.ph.a
  br label %_ZN6hermes9base64vlqL12base64DecodeEc.exit

.loopexit.fold.split54.i:                         ; preds = %.lr.ph.a
  br label %_ZN6hermes9base64vlqL12base64DecodeEc.exit

.loopexit.fold.split55.i:                         ; preds = %.lr.ph.a
  br label %_ZN6hermes9base64vlqL12base64DecodeEc.exit

.loopexit.fold.split56.i:                         ; preds = %.lr.ph.a
  br label %_ZN6hermes9base64vlqL12base64DecodeEc.exit
end_hunk_0
