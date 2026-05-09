inline.NumInlined: 732
inline.NumDeleted: 98
begin_hunk_0_@PyLong_FromLong:bb.a

.peel.begin:                                      ; preds = %bb.c
  %i.ab = tail call i64 @llvm.abs.i64(i64 %0, i1 false) ; 2 uses
  %i.ac = icmp ult i64 %i.ab, 1152921504606846976 ; 2 uses
  %spec.select = select i1 %i.ac, i64 2, i64 3
  %i.ad = tail call fastcc ptr @long_alloc(i64 noundef %spec.select) ; 4 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_PyLong_FromMedium.exit, label %.lr.ph.preheader
end_hunk_0
begin_hunk_1_@PyLong_FromLong:bb.a
.lr.ph.preheader:                                 ; preds = %.peel.begin
  %i.af = lshr i64 %0, 62
  %i.ag = and i64 %i.af, 2
  %1 = select i1 %i.ac, i64 16, i64 24
  %i.ah = or disjoint i64 %1, %i.ag
  %i.ai = getelementptr i8, ptr %i.ad, i64 16
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !25
end_hunk_1
begin_hunk_2_@PyLong_FromLongLong:bb.a

.peel.begin:                                      ; preds = %bb.c
  %i.ab = tail call i64 @llvm.abs.i64(i64 %0, i1 false) ; 2 uses
  %i.ac = icmp ult i64 %i.ab, 1152921504606846976 ; 2 uses
  %spec.select = select i1 %i.ac, i64 2, i64 3
  %i.ad = tail call fastcc ptr @long_alloc(i64 noundef %spec.select) ; 4 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_PyLong_FromMedium.exit, label %.lr.ph.preheader
end_hunk_2
begin_hunk_3_@PyLong_FromLongLong:bb.a
.lr.ph.preheader:                                 ; preds = %.peel.begin
  %i.af = lshr i64 %0, 62
  %i.ag = and i64 %i.af, 2
  %1 = select i1 %i.ac, i64 16, i64 24
  %i.ah = or disjoint i64 %1, %i.ag
  %i.ai = getelementptr i8, ptr %i.ad, i64 16
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !25
end_hunk_3
begin_hunk_4_@PyLong_FromSsize_t:bb.a

.peel.begin:                                      ; preds = %bb.c
  %i.ab = tail call i64 @llvm.abs.i64(i64 %0, i1 false) ; 2 uses
  %i.ac = icmp ult i64 %i.ab, 1152921504606846976 ; 2 uses
  %spec.select = select i1 %i.ac, i64 2, i64 3
  %i.ad = tail call fastcc ptr @long_alloc(i64 noundef %spec.select) ; 4 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_PyLong_FromMedium.exit, label %.lr.ph.preheader
end_hunk_4
begin_hunk_5_@PyLong_FromSsize_t:bb.a
.lr.ph.preheader:                                 ; preds = %.peel.begin
  %i.af = lshr i64 %0, 62
  %i.ag = and i64 %i.af, 2
  %1 = select i1 %i.ac, i64 16, i64 24
  %i.ah = or disjoint i64 %1, %i.ag
  %i.ai = getelementptr i8, ptr %i.ad, i64 16
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !25
end_hunk_5
begin_hunk_6_@PyLong_FromInt64:bb.a

.peel.begin:                                      ; preds = %bb.c
  %i.ab = tail call i64 @llvm.abs.i64(i64 %0, i1 false) ; 2 uses
  %i.ac = icmp ult i64 %i.ab, 1152921504606846976 ; 2 uses
  %spec.select = select i1 %i.ac, i64 2, i64 3
  %i.ad = tail call fastcc ptr @long_alloc(i64 noundef %spec.select) ; 4 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_PyLong_FromMedium.exit, label %.lr.ph.preheader
end_hunk_6
begin_hunk_7_@PyLong_FromInt64:bb.a
.lr.ph.preheader:                                 ; preds = %.peel.begin
  %i.af = lshr i64 %0, 62
  %i.ag = and i64 %i.af, 2
  %1 = select i1 %i.ac, i64 16, i64 24
  %i.ah = or disjoint i64 %1, %i.ag
  %i.ai = getelementptr i8, ptr %i.ad, i64 16
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !25
end_hunk_7
begin_hunk_8_@_PyLong_FromSTwoDigits:bb.a

bb.i:                                             ; preds = %bb.c
  %.018.i = tail call i64 @llvm.abs.i64(i64 %0, i1 false) ; 2 uses
  %i.ac = icmp ult i64 %.018.i, 1152921504606846976 ; 2 uses
  %spec.select.i = select i1 %i.ac, i64 2, i64 3
  %i.ad = tail call fastcc ptr @long_alloc(i64 noundef %spec.select.i), !inline_history !282 ; 4 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %_PyLong_FromMedium.exit, label %.lr.ph.preheader.i
end_hunk_8
begin_hunk_9_@_PyLong_FromSTwoDigits:bb.a
.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.ae = lshr i64 %0, 62
  %i.af = and i64 %i.ae, 2
  %1 = select i1 %i.ac, i64 16, i64 24
  %i.ag = or disjoint i64 %1, %i.af
  %i.ah = getelementptr i8, ptr %i.ad, i64 16
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !25
end_hunk_9
