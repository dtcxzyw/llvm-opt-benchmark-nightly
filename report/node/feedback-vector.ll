Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/feedback-vector?download=true
inline.NumInlined: 1787
inline.NumDeleted: 887
begin_hunk_0_@_ZN2v88internal18FeedbackVectorSpec7AddSlotENS0_16FeedbackSlotKindE:bb.a
    i8 17, label %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit
    i8 16, label %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit
    i8 19, label %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit
    i8 25, label %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit
    i8 4, label %bb.b
    i8 23, label %bb.b
    i8 5, label %bb.b
    i8 7, label %bb.b
    i8 6, label %bb.b
    i8 8, label %bb.b
    i8 9, label %bb.b
    i8 2, label %bb.b
    i8 11, label %bb.b
    i8 12, label %bb.b
    i8 13, label %bb.b
    i8 1, label %bb.b
    i8 10, label %bb.b
    i8 3, label %bb.b
    i8 14, label %bb.b
    i8 15, label %bb.b
    i8 18, label %bb.b
    i8 24, label %bb.b
    i8 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit

bb.c:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.26) #18
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.26) #18
  unreachable

_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %i.f = phi i1 [ true, %bb.b ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp ult ptr %i.b, %i.h
  br i1 %i.i, label %_ZN2v88internal18FeedbackVectorSpec6appendENS0_16FeedbackSlotKindE.exit, label %bb.e, !prof !9

bb.e:                                             ; preds = %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit
  %i.j = ptrtoint ptr %i.h to i64
  %reass.sub = sub i64 %i.j, %i.e
  %i.k = add i64 %reass.sub, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_16FeedbackSlotKindEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %i.k)
  %.pre.i.i = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal18FeedbackVectorSpec6appendENS0_16FeedbackSlotKindE.exit

_ZN2v88internal18FeedbackVectorSpec6appendENS0_16FeedbackSlotKindE.exit: ; preds = %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit, %bb.e
  %i.l = phi ptr [ %i.b, %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit ], [ %.pre.i.i, %bb.e ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store ptr %i.m, ptr %i.a, align 8
  store i8 %1, ptr %i.l, align 1
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal18FeedbackVectorSpec6appendENS0_16FeedbackSlotKindE.exit
  %i.n = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.p = icmp ult ptr %i.n, %i.o
  br i1 %i.p, label %_ZN2v88internal18FeedbackVectorSpec6appendENS0_16FeedbackSlotKindE.exit7, label %bb.f, !prof !9

._crit_edge:                                      ; preds = %_ZN2v88internal18FeedbackVectorSpec6appendENS0_16FeedbackSlotKindE.exit7, %_ZN2v88internal18FeedbackVectorSpec6appendENS0_16FeedbackSlotKindE.exit
  %i.q = ptrtoint ptr %i.b to i64
  %i.r = sub i64 %i.q, %i.e
  %i.s = trunc i64 %i.r to i32
  ret i32 %i.s

bb.f:                                             ; preds = %.lr.ph.preheader
  %i.t = load ptr, ptr %i.c, align 8
  %i.u = ptrtoint ptr %i.o to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = add i64 %i.u, 1
  %i.x = sub i64 %i.w, %i.v
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_16FeedbackSlotKindEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %i.x)
  %.pre.i.i6 = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal18FeedbackVectorSpec6appendENS0_16FeedbackSlotKindE.exit7

_ZN2v88internal18FeedbackVectorSpec6appendENS0_16FeedbackSlotKindE.exit7: ; preds = %.lr.ph.preheader, %bb.f
  %i.y = phi ptr [ %i.n, %.lr.ph.preheader ], [ %.pre.i.i6, %bb.f ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store ptr %i.z, ptr %i.a, align 8
  store i8 0, ptr %i.y, align 1
  br label %._crit_edge
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoNS0_16FeedbackSlotKindE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i8 %1, 26
  br i1 %i.a, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.26) #18
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i8 %1 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2v88internal16FeedbackMetadata11Kind2StringENS0_16FeedbackSlotKindE, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 2 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %switch.load) #17
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %switch.load, i64 noundef %i.c) #17 ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull ptr @_ZN2v88internal16FeedbackMetadata11Kind2StringENS0_16FeedbackSlotKindE(i8 noundef zeroext %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ult i8 %0, 26
  br i1 %i.a, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.26) #18
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i8 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2v88internal16FeedbackMetadata11Kind2StringENS0_16FeedbackSlotKindE, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  ret ptr %switch.load
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext range(i8 0, 32) i8 @_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = sdiv i32 %1, 6                           ; 2 uses
  %i.b = srem i32 %1, 6
  %i.c = load i64, ptr %0, align 8                ; 2 uses
  %i.d = add i64 %i.c, 7
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.thread.i, label %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i

_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i: ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1
  %i.i = sdiv i32 %i.h, 6
  %i.j = add nsw i32 %i.i, 1
  %i.k = icmp ult i32 %i.a, %i.j
  br i1 %i.k, label %_ZNK2v88internal16FeedbackMetadata3getEi.exit, label %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.thread.i, !prof !7

_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.thread.i: ; preds = %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i, %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.37) #18
  unreachable

_ZNK2v88internal16FeedbackMetadata3getEi.exit:    ; preds = %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i
  %i.l = shl nsw i32 %i.a, 2
  %i.m = sext i32 %i.l to i64
  %i.n = add nsw i64 %i.m, 15
  %i.o = add i64 %i.n, %i.c
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i32, ptr %i.p, align 4
  %i.r = mul nsw i32 %i.b, 5
  %i.s = lshr i32 %i.q, %i.r
  %i.t = trunc i32 %i.s to i8
  %i.u = and i8 %i.t, 31
  ret i8 %i.u
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i16 @_ZNK2v88internal16FeedbackMetadata30GetCreateClosureParameterCountEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = add i64 %i.a, 7
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.d, -1
  %i.g = sdiv i32 %i.f, 6
  %i.h = shl nsw i32 %i.g, 2
  %i.i = add nsw i32 %i.h, 20
  br label %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit

_ZNK2v88internal16FeedbackMetadata10word_countEv.exit: ; preds = %bb.a, %bb.b
  %.0.i.i.i = phi i32 [ %i.i, %bb.b ], [ 16, %bb.a ]
  %i.j = shl nsw i32 %1, 1
  %i.k = add nsw i32 %.0.i.i.i, %i.j
  %i.l = sext i32 %i.k to i64
  %i.m = add i64 %i.a, -1
  %i.n = add i64 %i.m, %i.l
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i16, ptr %i.o, align 2
  ret i16 %i.p
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal16FeedbackMetadata15SpecDiffersFromEPKNS0_18FeedbackVectorSpecE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32                    ; 3 uses
  %i.i = load i64, ptr %0, align 8                ; 2 uses
  %i.j = add i64 %i.i, 7
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i32, ptr %i.k, align 4
  %.not = icmp eq i32 %i.l, %i.h
  br i1 %.not, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.a
  %i.m = add nsw i32 %i.h, -1
  %i.n = sdiv i32 %i.m, 6
  %i.o = add nsw i32 %i.n, 1
  br label %.preheader.split

.preheader.split:                                 ; preds = %.preheader, %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit
  %.016 = phi i32 [ %i.ae, %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit ], [ 0, %.preheader ] ; 5 uses
  %.not19 = icmp slt i32 %.016, %i.h              ; 3 uses
  br i1 %.not19, label %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i.i, label %.critedge

_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i.i: ; preds = %.preheader.split
  %i.p = udiv i32 %.016, 6                        ; 2 uses
  %i.q = urem i32 %.016, 6
  %i.r = icmp ult i32 %i.p, %i.o
  br i1 %i.r, label %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, label %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.thread.i.i, !prof !7

_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.thread.i.i: ; preds = %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.37) #18
  unreachable

_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit: ; preds = %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i.i
  %i.s = shl nuw nsw i32 %i.p, 2
  %narrow = add nuw i32 %i.s, 15
  %i.t = zext i32 %narrow to i64
  %i.u = add i64 %i.i, %i.t
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load i32, ptr %i.v, align 4
  %i.x = mul nuw nsw i32 %i.q, 5
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i8
  %i.aa = and i8 %i.z, 31                         ; 2 uses
  switch i8 %i.aa, label %bb.d [
    i8 20, label %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit
    i8 21, label %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit
    i8 22, label %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit
    i8 17, label %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit
    i8 16, label %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit
    i8 19, label %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit
    i8 25, label %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit
    i8 4, label %bb.b
    i8 23, label %bb.b
    i8 5, label %bb.b
    i8 7, label %bb.b
    i8 6, label %bb.b
    i8 8, label %bb.b
    i8 9, label %bb.b
    i8 2, label %bb.b
    i8 11, label %bb.b
    i8 12, label %bb.b
    i8 13, label %bb.b
    i8 1, label %bb.b
    i8 10, label %bb.b
    i8 3, label %bb.b
    i8 14, label %bb.b
    i8 15, label %bb.b
    i8 18, label %bb.b
    i8 24, label %bb.b
    i8 0, label %bb.c
  ]

bb.b:                                             ; preds = %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit
  br label %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit

bb.c:                                             ; preds = %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.26) #18
  unreachable

bb.d:                                             ; preds = %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.26) #18
  unreachable

_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit: ; preds = %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %bb.b
  %.0.i = phi i32 [ 2, %bb.b ], [ 1, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit ], [ 1, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit ], [ 1, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit ], [ 1, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit ], [ 1, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit ], [ 1, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit ], [ 1, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit ]
  %i.ab = zext nneg i32 %.016 to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1
  %.not18 = icmp eq i8 %i.aa, %i.ad
  %i.ae = add nuw nsw i32 %.0.i, %.016
  br i1 %.not18, label %.preheader.split, label %.critedge, !llvm.loop !19

.critedge:                                        ; preds = %.preheader.split, %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit, %bb.a
  %.4 = phi i1 [ true, %bb.a ], [ %.not19, %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit ], [ %.not19, %.preheader.split ]
  ret i1 %.4
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext range(i8 0, 32) i8 @_ZNK2v88internal14FeedbackVector7GetKindENS0_12FeedbackSlotE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8
  %i.a = add i64 %.sroa.0.0.copyload.i.i.i, 23
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, 31
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = sdiv i32 %1, 6                           ; 2 uses
  %i.h = srem i32 %1, 6
  %i.i = add i64 %i.f, 7
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.thread.i.i, label %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i.i

_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i.i: ; preds = %bb.a
  %i.m = add nsw i32 %i.k, -1
  %i.n = sdiv i32 %i.m, 6
  %i.o = add nsw i32 %i.n, 1
  %i.p = icmp ult i32 %i.g, %i.o
  br i1 %i.p, label %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, label %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.thread.i.i, !prof !7

_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.thread.i.i: ; preds = %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i.i, %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.37) #18
  unreachable

_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit: ; preds = %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i.i
  %i.q = shl nsw i32 %i.g, 2
  %i.r = sext i32 %i.q to i64
  %i.s = add nsw i64 %i.r, 15
  %i.t = add i64 %i.s, %i.f
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load i32, ptr %i.u, align 4
  %i.w = mul nsw i32 %i.h, 5
  %i.x = lshr i32 %i.v, %i.w
  %i.y = trunc i32 %i.x to i8
  %i.z = and i8 %i.y, 31
  ret i8 %i.z
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext range(i8 0, 32) i8 @_ZNK2v88internal14FeedbackVector7GetKindENS0_12FeedbackSlotENS_14AcquireLoadTagE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8
  %i.a = add i64 %.sroa.0.0.copyload.i.i.i, 23
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, 31
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = sdiv i32 %1, 6                           ; 2 uses
  %i.h = srem i32 %1, 6
  %i.i = add i64 %i.f, 7
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.thread.i.i, label %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i.i

_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i.i: ; preds = %bb.a
  %i.m = add nsw i32 %i.k, -1
  %i.n = sdiv i32 %i.m, 6
  %i.o = add nsw i32 %i.n, 1
  %i.p = icmp ult i32 %i.g, %i.o
  br i1 %i.p, label %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, label %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.thread.i.i, !prof !7

_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.thread.i.i: ; preds = %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i.i, %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.37) #18
  unreachable

_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit: ; preds = %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i.i
  %i.q = shl nsw i32 %i.g, 2
  %i.r = sext i32 %i.q to i64
  %i.s = add nsw i64 %i.r, 15
  %i.t = add i64 %i.s, %i.f
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load i32, ptr %i.u, align 4
  %i.w = mul nsw i32 %i.h, 5
  %i.x = lshr i32 %i.v, %i.w
  %i.y = trunc i32 %i.x to i8
  %i.z = and i8 %i.y, 31
  ret i8 %i.z
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal24ClosureFeedbackCellArray3NewEPNS0_7IsolateENS0_12DirectHandleINS0_18SharedFunctionInfoEEENS0_14AllocationTypeE(ptr noundef %0, ptr nofree readonly captures(none) %1, i8 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, 31
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i32, ptr %i.f, align 4              ; 6 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1848
  br label %_ZN2v88internal18DirectHandleVectorINS0_12FeedbackCellEED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.j = sext i32 %i.g to i64                     ; 3 uses
  %i.k = icmp slt i32 %i.g, 0
  br i1 %i.k, label %bb.d, label %.lr.ph

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #18
  unreachable

.lr.ph:                                           ; preds = %bb.c
  %i.l = shl nuw nsw i64 %i.j, 3
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #19 ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.j
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 58992
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 55920
  br label %bb.f

._crit_edge:                                      ; preds = %_ZN2v88internal18DirectHandleVectorINS0_12FeedbackCellEE9push_backERKNS0_12DirectHandleIS2_EE.exit
  %i.q = shl nuw nsw i32 %i.g, 3
  %i.r = add nuw i32 %i.q, 16
  %i.s = tail call i64 @_ZN2v88internal11FactoryBaseINS0_7FactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.r, i8 noundef zeroext %2, i8 0, i8 noundef zeroext 0) #17 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.u = load i64, ptr %i.t, align 8
  %i.v = add i64 %i.s, -1
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  store atomic volatile i64 %i.u, ptr %i.w monotonic, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = shl nuw nsw i64 %i.j, 32
  store atomic volatile i64 %i.y, ptr %i.x monotonic, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = icmp eq ptr %i.aa, %i.ac
  br i1 %i.ad, label %bb.e, label %.lr.ph81.preheader, !prof !10

bb.e:                                             ; preds = %._crit_edge
  %i.ae = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #17
  br label %.lr.ph81.preheader

.lr.ph81.preheader:                               ; preds = %bb.e, %._crit_edge
  %.0.i.i.i = phi ptr [ %i.ae, %bb.e ], [ %i.aa, %._crit_edge ] ; 4 uses
  %i.af = ptrtoint ptr %.0.i.i.i to i64
  %i.ag = add i64 %i.af, 8
  %i.ah = inttoptr i64 %i.ag to ptr
  store ptr %i.ah, ptr %i.z, align 8
  store i64 %i.s, ptr %.0.i.i.i, align 8
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %.lr.ph81

bb.f:                                             ; preds = %.lr.ph, %_ZN2v88internal18DirectHandleVectorINS0_12FeedbackCellEE9push_backERKNS0_12DirectHandleIS2_EE.exit
  %.02578 = phi i32 [ 0, %.lr.ph ], [ %i.cd, %_ZN2v88internal18DirectHandleVectorINS0_12FeedbackCellEE9push_backERKNS0_12DirectHandleIS2_EE.exit ] ; 2 uses
  %.sroa.042.077 = phi ptr [ %i.m, %.lr.ph ], [ %.sroa.042.2, %_ZN2v88internal18DirectHandleVectorINS0_12FeedbackCellEE9push_backERKNS0_12DirectHandleIS2_EE.exit ] ; 5 uses
  %.sroa.10.076 = phi ptr [ %i.m, %.lr.ph ], [ %.sroa.10.2, %_ZN2v88internal18DirectHandleVectorINS0_12FeedbackCellEE9push_backERKNS0_12DirectHandleIS2_EE.exit ] ; 6 uses
  %.sroa.17.075 = phi ptr [ %i.n, %.lr.ph ], [ %.sroa.17.2, %_ZN2v88internal18DirectHandleVectorINS0_12FeedbackCellEE9push_backERKNS0_12DirectHandleIS2_EE.exit ] ; 2 uses
  %i.ai = tail call ptr @_ZN2v88internal7Factory17NewNoClosuresCellEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #17 ; 3 uses
  %i.aj = load i64, ptr %1, align 8
  %i.ak = add i64 %i.aj, 31
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %i.an = add i64 %i.am, 7
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %_ZNK2v88internal16FeedbackMetadata30GetCreateClosureParameterCountEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = add nsw i32 %i.ap, -1
  %i.as = sdiv i32 %i.ar, 6
  %i.at = shl nsw i32 %i.as, 2
  %i.au = add nsw i32 %i.at, 20
  br label %_ZNK2v88internal16FeedbackMetadata30GetCreateClosureParameterCountEi.exit

_ZNK2v88internal16FeedbackMetadata30GetCreateClosureParameterCountEi.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.au, %bb.g ], [ 16, %bb.f ]
  %i.av = shl nuw nsw i32 %.02578, 1
  %i.aw = add nsw i32 %.0.i.i.i.i, %i.av
  %i.ax = sext i32 %i.aw to i64
  %i.ay = add i64 %i.am, -1
  %i.az = add i64 %i.ay, %i.ax
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load i16, ptr %i.ba, align 2
  %i.bc = tail call ptr @_ZN2v88internal8Builtins11code_handleENS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(20) %i.o, i32 noundef 104) #17
  %i.bd = tail call i32 @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewJSDispatchHandleEtNS0_12DirectHandleINS0_4CodeEEEPNS0_19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE31SpaceWithBlackAllocationSupportE(ptr noundef nonnull align 1 dereferenceable(1) %0, i16 noundef zeroext %i.bb, ptr %i.bc, ptr noundef nonnull %i.p) #17 ; 2 uses
  %i.be = load i64, ptr %i.ai, align 8
  %i.bf = add i64 %i.be, 15
  %i.bg = inttoptr i64 %i.bf to ptr
  store atomic volatile i32 %i.bd, ptr %i.bg release, align 4
  %i.bh = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.bi = and i64 %i.bh, -262144
  %i.bj = inttoptr i64 %i.bi to ptr
end_hunk_0
begin_hunk_1_@_ZN2v88internal24ClosureFeedbackCellArray3NewEPNS0_7IsolateENS0_12DirectHandleINS0_18SharedFunctionInfoEEENS0_14AllocationTypeE:bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.042.077, i64 noundef %i.bp) #20
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv
  br label %_ZN2v88internal18DirectHandleVectorINS0_12FeedbackCellEE9push_backERKNS0_12DirectHandleIS2_EE.exit

_ZN2v88internal18DirectHandleVectorINS0_12FeedbackCellEE9push_backERKNS0_12DirectHandleIS2_EE.exit: ; preds = %bb.i, %_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_12FeedbackCellEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i
  %.sroa.17.2 = phi ptr [ %i.cc, %_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_12FeedbackCellEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.17.075, %bb.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i, %_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_12FeedbackCellEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.10.076, %bb.i ]
  %.sroa.042.2 = phi ptr [ %i.bx, %_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_12FeedbackCellEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.042.077, %bb.i ] ; 4 uses
  %.sroa.10.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.pn, i64 8
  %i.cd = add nuw nsw i32 %.02578, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.cd, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !24

._crit_edge82:                                    ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_24ClosureFeedbackCellArrayENS0_29ClosureFeedbackCellArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_12FeedbackCellEEENS0_16WriteBarrierModeE.exit
  %i.ce = ptrtoint ptr %.sroa.17.2 to i64
  %i.cf = ptrtoint ptr %.sroa.042.2 to i64
  %i.cg = sub i64 %i.ce, %i.cf
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.042.2, i64 noundef %i.cg) #20
  br label %_ZN2v88internal18DirectHandleVectorINS0_12FeedbackCellEED2Ev.exit

.lr.ph81:                                         ; preds = %.lr.ph81.preheader, %_ZN2v88internal15TaggedArrayBaseINS0_24ClosureFeedbackCellArrayENS0_29ClosureFeedbackCellArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_12FeedbackCellEEENS0_16WriteBarrierModeE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph81.preheader ], [ %indvars.iv.next, %_ZN2v88internal15TaggedArrayBaseINS0_24ClosureFeedbackCellArrayENS0_29ClosureFeedbackCellArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_12FeedbackCellEEENS0_16WriteBarrierModeE.exit ] ; 3 uses
  %i.ch = load i64, ptr %.0.i.i.i, align 8
  %i.ci = add i64 %i.ch, -1                       ; 3 uses
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.sroa.042.2, i64 %indvars.iv
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = load i64, ptr %i.cl, align 8            ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv ; 2 uses
  store atomic volatile i64 %i.cm, ptr %i.co monotonic, align 8
  %i.cp = trunc i64 %i.cm to i1
  br i1 %i.cp, label %bb.l, label %_ZN2v88internal15TaggedArrayBaseINS0_24ClosureFeedbackCellArrayENS0_29ClosureFeedbackCellArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_12FeedbackCellEEENS0_16WriteBarrierModeE.exit

bb.l:                                             ; preds = %.lr.ph81
  %i.cq = or disjoint i64 %i.ci, 1                ; 2 uses
  %i.cr = ptrtoint ptr %i.co to i64               ; 2 uses
  %i.cs = and i64 %i.ci, -262144
  %i.ct = inttoptr i64 %i.cs to ptr
  %i.cu = load i64, ptr %i.ct, align 262144       ; 2 uses
  %i.cv = and i64 %i.cu, 32
  %.not.i.i.i.i.i31 = icmp eq i64 %i.cv, 0
  %i.cw = and i64 %i.cu, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.cw, 0
  br i1 %.not38.i.i.i.i.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cx = and i64 %i.cm, -262144
  %i.cy = inttoptr i64 %i.cx to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i = load i64, ptr %i.cy, align 262144
  %i.cz = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i, 25
  %.not39.i.i.i.i.i = icmp eq i64 %i.cz, 0
  br i1 %.not39.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.cq, i64 noundef %i.cr, i64 %i.cm) #17
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  br i1 %.not.i.i.i.i.i31, label %_ZN2v88internal15TaggedArrayBaseINS0_24ClosureFeedbackCellArrayENS0_29ClosureFeedbackCellArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_12FeedbackCellEEENS0_16WriteBarrierModeE.exit, label %bb.p, !prof !9

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.cq, i64 %i.cr, i64 %i.cm) #17
  br label %_ZN2v88internal15TaggedArrayBaseINS0_24ClosureFeedbackCellArrayENS0_29ClosureFeedbackCellArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_12FeedbackCellEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_24ClosureFeedbackCellArrayENS0_29ClosureFeedbackCellArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_12FeedbackCellEEENS0_16WriteBarrierModeE.exit: ; preds = %.lr.ph81, %bb.o, %bb.p
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond84.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond84.not, label %._crit_edge82, label %.lr.ph81, !llvm.loop !25

_ZN2v88internal18DirectHandleVectorINS0_12FeedbackCellEED2Ev.exit: ; preds = %._crit_edge82, %bb.b
  %.sroa.060.0 = phi ptr [ %i.i, %bb.b ], [ %.0.i.i.i, %._crit_edge82 ]
  ret ptr %.sroa.060.0
}

declare ptr @_ZN2v88internal7Factory17NewNoClosuresCellEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare ptr @_ZN2v88internal8Builtins11code_handleENS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(20), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal14FeedbackVector3NewEPNS0_7IsolateENS0_12DirectHandleINS0_18SharedFunctionInfoEEENS4_INS0_24ClosureFeedbackCellArrayEEENS4_INS0_12FeedbackCellEEEPNS0_15IsCompiledScopeE(ptr noundef %0, ptr %1, ptr %2, ptr %3, ptr nofree readnone captures(none) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.702", align 8 ; 4 uses
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, 31
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_16FeedbackMetadataEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #17
  br label %_ZN2v88internal6HandleINS0_16FeedbackMetadataEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_16FeedbackMetadataEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 3 uses
  %i.k = ptrtoint ptr %.0.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i.i, align 8
  %i.n = add i64 %i.d, 7
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  %i.q = tail call ptr @_ZN2v88internal7Factory17NewFeedbackVectorENS0_12DirectHandleINS0_18SharedFunctionInfoEEENS2_INS0_24ClosureFeedbackCellArrayEEENS2_INS0_12FeedbackCellEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %1, ptr %2, ptr %3) #17 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 7864
  %i.s = icmp sgt i32 %i.p, 0
  br i1 %i.s, label %.lr.ph184, label %._crit_edge185

._crit_edge185:                                   ; preds = %._crit_edge, %_ZN2v88internal6HandleINS0_16FeedbackMetadataEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 59176
  %i.u = load atomic i32, ptr %i.t monotonic, align 8
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZN2v88internal14FeedbackVector29AddToVectorsForProfilingToolsEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit, label %bb.j

.lr.ph184:                                        ; preds = %_ZN2v88internal6HandleINS0_16FeedbackMetadataEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %._crit_edge
  %.0183 = phi i32 [ %i.ba, %._crit_edge ], [ 0, %_ZN2v88internal6HandleINS0_16FeedbackMetadataEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ] ; 5 uses
  %i.w = load i64, ptr %.0.i.i, align 8           ; 2 uses
  %i.x = udiv i32 %.0183, 6                       ; 2 uses
  %i.y = urem i32 %.0183, 6
  %i.z = add i64 %i.w, 7
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.thread.i.i, label %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i.i

_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i.i: ; preds = %.lr.ph184
  %i.ad = add nsw i32 %i.ab, -1
  %i.ae = sdiv i32 %i.ad, 6
  %i.af = add nsw i32 %i.ae, 1
  %i.ag = icmp ult i32 %i.x, %i.af
  br i1 %i.ag, label %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, label %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.thread.i.i, !prof !7

_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.thread.i.i: ; preds = %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i.i, %.lr.ph184
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.37) #18
  unreachable

_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit: ; preds = %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i.i
  %i.ah = shl nuw nsw i32 %i.x, 2
  %narrow = add nuw i32 %i.ah, 15
  %i.ai = zext i32 %narrow to i64
  %i.aj = add i64 %i.w, %i.ai
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = mul nuw nsw i32 %i.y, 5
  %i.an = lshr i32 %i.al, %i.am
  %i.ao = trunc i32 %i.an to i8
  %i.ap = and i8 %i.ao, 31                        ; 2 uses
  switch i8 %i.ap, label %bb.e [
    i8 20, label %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit
    i8 21, label %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit
    i8 22, label %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit
    i8 17, label %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit
    i8 16, label %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit
    i8 19, label %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit
    i8 25, label %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit
    i8 4, label %bb.c
    i8 23, label %bb.c
    i8 5, label %bb.c
    i8 7, label %bb.c
    i8 6, label %bb.c
    i8 8, label %bb.c
    i8 9, label %bb.c
    i8 2, label %bb.c
    i8 11, label %bb.c
    i8 12, label %bb.c
    i8 13, label %bb.c
    i8 1, label %bb.c
    i8 10, label %bb.c
    i8 3, label %bb.c
    i8 14, label %bb.c
    i8 15, label %bb.c
    i8 18, label %bb.c
    i8 24, label %bb.c
    i8 0, label %bb.d
  ]

bb.c:                                             ; preds = %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit
  br label %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit

bb.d:                                             ; preds = %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.26) #18
  unreachable

bb.e:                                             ; preds = %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.26) #18
  unreachable

_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit: ; preds = %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, %bb.c
  %i.aq = phi i1 [ true, %bb.c ], [ false, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit ], [ false, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit ], [ false, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit ], [ false, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit ], [ false, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit ], [ false, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit ], [ false, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit ]
  %.0.i = phi i32 [ 2, %bb.c ], [ 1, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit ], [ 1, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit ], [ 1, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit ], [ 1, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit ], [ 1, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit ], [ 1, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit ], [ 1, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit ]
  %i.ar = load i64, ptr %i.r, align 8             ; 9 uses
  %i.as = load i64, ptr %i.q, align 8
  %i.at = shl nuw nsw i32 %.0183, 3
  %narrow180 = add nuw i32 %i.at, 47
  %i.au = zext i32 %narrow180 to i64
  %i.av = add i64 %i.as, %i.au
  %i.aw = inttoptr i64 %i.av to ptr
  switch i8 %i.ap, label %default.unreachable [
    i8 7, label %bb.i
    i8 6, label %bb.i
    i8 1, label %bb.i
    i8 10, label %bb.i
    i8 25, label %bb.i
    i8 20, label %bb.f
    i8 17, label %bb.f
    i8 16, label %bb.f
    i8 22, label %bb.f
    i8 19, label %bb.f
    i8 4, label %bb.g
    i8 23, label %bb.h
    i8 5, label %bb.h
    i8 8, label %bb.h
    i8 9, label %bb.h
    i8 2, label %bb.h
    i8 11, label %bb.h
    i8 12, label %bb.h
    i8 13, label %bb.h
    i8 3, label %bb.h
    i8 14, label %bb.h
    i8 15, label %bb.h
    i8 18, label %bb.h
    i8 21, label %bb.h
    i8 24, label %bb.f
  ]

bb.f:                                             ; preds = %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit, %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit, %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit, %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit, %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit, %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit
  br label %bb.i

bb.g:                                             ; preds = %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit
  br label %bb.i

bb.h:                                             ; preds = %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit, %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit, %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit, %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit, %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit, %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit, %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit, %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit, %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit, %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit, %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit, %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit, %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit
  br label %bb.i

default.unreachable:                              ; preds = %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit
  unreachable

bb.i:                                             ; preds = %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit, %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit, %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit, %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit, %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit, %bb.h, %bb.g, %bb.f
  %.sink = phi i64 [ 3, %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit ], [ %i.ar, %bb.h ], [ %i.ar, %bb.g ], [ 3, %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit ], [ 0, %bb.f ], [ 3, %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit ], [ 3, %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit ], [ 3, %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit ]
  %.sroa.095.0 = phi i64 [ %i.ar, %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit ], [ %i.ar, %bb.h ], [ 0, %bb.g ], [ %i.ar, %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit ], [ %i.ar, %bb.f ], [ %i.ar, %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit ], [ %i.ar, %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit ], [ %i.ar, %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit ]
  store atomic volatile i64 %.sink, ptr %i.aw monotonic, align 8
  br i1 %i.aq, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.ax = load i64, ptr %i.q, align 8
  %narrow193 = add nuw i32 %.0183, 1
  %6 = zext i32 %narrow193 to i64
  %7 = shl nuw nsw i64 %6, 3
  %8 = add nuw nsw i64 %7, 47
  %i.ay = add i64 %i.ax, %8
  %i.az = inttoptr i64 %i.ay to ptr
  store atomic volatile i64 %.sroa.095.0, ptr %i.az monotonic, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.i
  %i.ba = add nuw nsw i32 %.0.i, %.0183           ; 2 uses
  %i.bb = icmp slt i32 %i.ba, %i.p
  br i1 %i.bb, label %.lr.ph184, label %._crit_edge185, !llvm.loop !28

bb.j:                                             ; preds = %._crit_edge185
  %i.bc = load i64, ptr %i.q, align 8
  %i.bd = add i64 %i.bc, 23
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load i64, ptr %i.be, align 8            ; 3 uses
  %i.bg = add i64 %i.bf, 15
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = load atomic volatile i64, ptr %i.bh acquire, align 8 ; 2 uses
  %i.bj = trunc i64 %i.bi to i1
  br i1 %i.bj, label %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.i.i, label %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.thread.i.i

_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.i.i: ; preds = %bb.j
  %i.bk = add nsw i64 %i.bi, -1
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = load atomic volatile i64, ptr %i.bl monotonic, align 8
  %i.bn = add i64 %i.bm, 11
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = load atomic volatile i16, ptr %i.bo monotonic, align 2
  %i.bq = icmp eq i16 %i.bp, 144
  br i1 %i.bq, label %_ZN2v88internal14FeedbackVector29AddToVectorsForProfilingToolsEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit, label %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.thread.i.i

_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.thread.i.i: ; preds = %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.i.i, %bb.j
  %i.br = add i64 %i.bf, 7
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = load atomic volatile i64, ptr %i.bs acquire, align 8 ; 2 uses
  %i.bu = trunc i64 %i.bt to i1
  br i1 %i.bu, label %_ZNK2v88internal18SharedFunctionInfo27HasWasmExportedFunctionDataENS0_17IsolateForSandboxE.exit.i.i, label %_ZNK2v88internal18SharedFunctionInfo27HasWasmExportedFunctionDataENS0_17IsolateForSandboxE.exit.thread.i.i

_ZNK2v88internal18SharedFunctionInfo27HasWasmExportedFunctionDataENS0_17IsolateForSandboxE.exit.i.i: ; preds = %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.thread.i.i
  %i.bv = add nsw i64 %i.bt, -1
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = load atomic volatile i64, ptr %i.bw monotonic, align 8
  %i.by = add i64 %i.bx, 11
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = load atomic volatile i16, ptr %i.bz monotonic, align 2
  %i.cb = icmp eq i16 %i.ca, 179
  br i1 %i.cb, label %_ZN2v88internal14FeedbackVector29AddToVectorsForProfilingToolsEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit, label %_ZNK2v88internal18SharedFunctionInfo27HasWasmExportedFunctionDataENS0_17IsolateForSandboxE.exit.thread.i.i

_ZNK2v88internal18SharedFunctionInfo27HasWasmExportedFunctionDataENS0_17IsolateForSandboxE.exit.thread.i.i: ; preds = %_ZNK2v88internal18SharedFunctionInfo27HasWasmExportedFunctionDataENS0_17IsolateForSandboxE.exit.i.i, %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.thread.i.i
  %i.cc = add i64 %i.bf, 39
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = load atomic volatile i64, ptr %i.cd acquire, align 8 ; 2 uses
  %i.cf = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 10624
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 96
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = icmp eq i64 %i.ce, %i.cj
  br i1 %i.ck, label %_ZN2v88internal14FeedbackVector29AddToVectorsForProfilingToolsEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit, label %_ZNK2v88internal18SharedFunctionInfo20IsSubjectToDebuggingEv.exit.i

_ZNK2v88internal18SharedFunctionInfo20IsSubjectToDebuggingEv.exit.i: ; preds = %_ZNK2v88internal18SharedFunctionInfo27HasWasmExportedFunctionDataENS0_17IsolateForSandboxE.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store i64 %i.ce, ptr %5, align 8
  %i.cl = call noundef zeroext i1 @_ZNK2v88internal6Script16IsUserJavaScriptEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br i1 %i.cl, label %bb.k, label %_ZN2v88internal14FeedbackVector29AddToVectorsForProfilingToolsEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit

bb.k:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo20IsSubjectToDebuggingEv.exit.i
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 9672
  %i.cn = call ptr @_ZN2v88internal9ArrayList3AddEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6ObjectEEENS0_14AllocationTypeE(ptr noundef nonnull %0, ptr nonnull %i.cm, ptr nonnull %i.q, i8 noundef zeroext 0) #17
  %i.co = load i64, ptr %i.cn, align 8
  call void @_ZN2v88internal7Isolate35SetFeedbackVectorsForProfilingToolsENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.co) #17
  br label %_ZN2v88internal14FeedbackVector29AddToVectorsForProfilingToolsEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit

_ZN2v88internal14FeedbackVector29AddToVectorsForProfilingToolsEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit: ; preds = %bb.k, %_ZNK2v88internal18SharedFunctionInfo20IsSubjectToDebuggingEv.exit.i, %_ZNK2v88internal18SharedFunctionInfo27HasWasmExportedFunctionDataENS0_17IsolateForSandboxE.exit.thread.i.i, %_ZNK2v88internal18SharedFunctionInfo27HasWasmExportedFunctionDataENS0_17IsolateForSandboxE.exit.i.i, %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.i.i, %._crit_edge185
  %i.cp = load i64, ptr %3, align 8               ; 4 uses
  %i.cq = load i64, ptr %i.q, align 8             ; 5 uses
  %i.cr = add i64 %i.cp, 7                        ; 3 uses
  %i.cs = inttoptr i64 %i.cr to ptr
  store atomic volatile i64 %i.cq, ptr %i.cs release, align 8
  %i.ct = trunc i64 %i.cq to i1
  br i1 %i.ct, label %bb.l, label %_ZN2v88internal12FeedbackCell9set_valueENS0_6TaggedINS0_10HeapObjectEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit

bb.l:                                             ; preds = %_ZN2v88internal14FeedbackVector29AddToVectorsForProfilingToolsEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit
  %i.cu = and i64 %i.cp, -262144
  %i.cv = inttoptr i64 %i.cu to ptr
  %i.cw = load i64, ptr %i.cv, align 262144       ; 2 uses
  %i.cx = and i64 %i.cw, 32
  %.not.i.i.i = icmp eq i64 %i.cx, 0
  %i.cy = and i64 %i.cw, 25
  %.not38.i.i.i = icmp eq i64 %i.cy, 0
  br i1 %.not38.i.i.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cz = and i64 %i.cq, -262144
  %i.da = inttoptr i64 %i.cz to ptr
  %.sroa.0.0.copyload.i28.i.i.i = load i64, ptr %i.da, align 262144
  %i.db = and i64 %.sroa.0.0.copyload.i28.i.i.i, 25
  %.not39.i.i.i = icmp eq i64 %i.db, 0
  br i1 %.not39.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.cp, i64 noundef %i.cr, i64 %i.cq) #17
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  br i1 %.not.i.i.i, label %_ZN2v88internal12FeedbackCell9set_valueENS0_6TaggedINS0_10HeapObjectEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit, label %bb.p, !prof !9

bb.p:                                             ; preds = %bb.o
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.cp, i64 %i.cr, i64 %i.cq) #17
  br label %_ZN2v88internal12FeedbackCell9set_valueENS0_6TaggedINS0_10HeapObjectEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit

_ZN2v88internal12FeedbackCell9set_valueENS0_6TaggedINS0_10HeapObjectEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit: ; preds = %_ZN2v88internal14FeedbackVector29AddToVectorsForProfilingToolsEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit, %bb.o, %bb.p
  ret ptr %i.q
}

declare ptr @_ZN2v88internal7Factory17NewFeedbackVectorENS0_12DirectHandleINS0_18SharedFunctionInfoEEENS2_INS0_24ClosureFeedbackCellArrayEEENS2_INS0_12FeedbackCellEEE(ptr noundef nonnull align 1 dereferenceable(1), ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14FeedbackVector29AddToVectorsForProfilingToolsEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.702", align 8 ; 4 uses
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, 23
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  %i.e = add i64 %i.d, 15
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.i, label %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.thread.i

_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.i: ; preds = %bb.a
  %i.i = add nsw i64 %i.g, -1
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load atomic volatile i64, ptr %i.j monotonic, align 8
  %i.l = add i64 %i.k, 11
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load atomic volatile i16, ptr %i.m monotonic, align 2
  %i.o = icmp eq i16 %i.n, 144
  br i1 %i.o, label %_ZNK2v88internal18SharedFunctionInfo20IsSubjectToDebuggingEv.exit.thread, label %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.thread.i

_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.thread.i: ; preds = %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.i, %bb.a
  %i.p = add i64 %i.d, 7
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i64, ptr %i.q acquire, align 8 ; 2 uses
  %i.s = trunc i64 %i.r to i1
  br i1 %i.s, label %_ZNK2v88internal18SharedFunctionInfo27HasWasmExportedFunctionDataENS0_17IsolateForSandboxE.exit.i, label %_ZNK2v88internal18SharedFunctionInfo27HasWasmExportedFunctionDataENS0_17IsolateForSandboxE.exit.thread.i

_ZNK2v88internal18SharedFunctionInfo27HasWasmExportedFunctionDataENS0_17IsolateForSandboxE.exit.i: ; preds = %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.thread.i
  %i.t = add nsw i64 %i.r, -1
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load atomic volatile i64, ptr %i.u monotonic, align 8
  %i.w = add i64 %i.v, 11
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load atomic volatile i16, ptr %i.x monotonic, align 2
  %i.z = icmp eq i16 %i.y, 179
  br i1 %i.z, label %_ZNK2v88internal18SharedFunctionInfo20IsSubjectToDebuggingEv.exit.thread, label %_ZNK2v88internal18SharedFunctionInfo27HasWasmExportedFunctionDataENS0_17IsolateForSandboxE.exit.thread.i

_ZNK2v88internal18SharedFunctionInfo27HasWasmExportedFunctionDataENS0_17IsolateForSandboxE.exit.thread.i: ; preds = %_ZNK2v88internal18SharedFunctionInfo27HasWasmExportedFunctionDataENS0_17IsolateForSandboxE.exit.i, %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.thread.i
  %i.aa = add i64 %i.d, 39
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load atomic volatile i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 10624
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = icmp eq i64 %i.ac, %i.ah
  br i1 %i.ai, label %_ZNK2v88internal18SharedFunctionInfo20IsSubjectToDebuggingEv.exit.thread, label %_ZNK2v88internal18SharedFunctionInfo20IsSubjectToDebuggingEv.exit

_ZNK2v88internal18SharedFunctionInfo20IsSubjectToDebuggingEv.exit: ; preds = %_ZNK2v88internal18SharedFunctionInfo27HasWasmExportedFunctionDataENS0_17IsolateForSandboxE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store i64 %i.ac, ptr %2, align 8
  %i.aj = call noundef zeroext i1 @_ZNK2v88internal6Script16IsUserJavaScriptEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br i1 %i.aj, label %bb.b, label %_ZNK2v88internal18SharedFunctionInfo20IsSubjectToDebuggingEv.exit.thread

bb.b:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo20IsSubjectToDebuggingEv.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 9672
  %i.al = call ptr @_ZN2v88internal9ArrayList3AddEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6ObjectEEENS0_14AllocationTypeE(ptr noundef nonnull %0, ptr nonnull %i.ak, ptr nonnull %1, i8 noundef zeroext 0) #17
  %i.am = load i64, ptr %i.al, align 8
  call void @_ZN2v88internal7Isolate35SetFeedbackVectorsForProfilingToolsENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.am) #17
  br label %_ZNK2v88internal18SharedFunctionInfo20IsSubjectToDebuggingEv.exit.thread

_ZNK2v88internal18SharedFunctionInfo20IsSubjectToDebuggingEv.exit.thread: ; preds = %_ZNK2v88internal18SharedFunctionInfo27HasWasmExportedFunctionDataENS0_17IsolateForSandboxE.exit.thread.i, %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.i, %_ZNK2v88internal18SharedFunctionInfo27HasWasmExportedFunctionDataENS0_17IsolateForSandboxE.exit.i, %_ZNK2v88internal18SharedFunctionInfo20IsSubjectToDebuggingEv.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal14FeedbackVector13NewForTestingEPNS0_7IsolateEPKNS0_18FeedbackVectorSpecE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::IsCompiledScope", align 8 ; 3 uses
  %i.a = tail call ptr @_ZN2v88internal16FeedbackMetadata3NewINS0_7IsolateEEENS0_6HandleIS1_EEPT_PKNS0_18FeedbackVectorSpecE(ptr noundef %0, ptr noundef %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.c = tail call ptr @_ZN2v88internal7Factory31NewSharedFunctionInfoForBuiltinENS0_17MaybeDirectHandleINS0_6StringEEENS0_7BuiltinEiNS0_14AdaptArgumentsENS0_12FunctionKindE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.b, i32 noundef 196, i32 noundef 0, i32 noundef 1, i8 noundef zeroext 0) #17 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8              ; 4 uses
  %i.e = load i64, ptr %i.a, align 8              ; 5 uses
  %i.f = add i64 %i.d, 31                         ; 3 uses
  %i.g = inttoptr i64 %i.f to ptr
  store atomic volatile i64 %i.e, ptr %i.g monotonic, align 8
end_hunk_1
begin_hunk_2_@_ZN2v88internal14FeedbackVector19SetOptimizedOsrCodeEPNS0_7IsolateENS0_12FeedbackSlotENS0_6TaggedINS0_4CodeEEE:bb.a
  br i1 %.not39.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %.sroa.02.0.copyload.i.i, i64 noundef %i.ah, i64 %i.aj) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  br i1 %.not.i.i.i.i, label %_ZN2v88internal14FeedbackVector3SetENS0_12FeedbackSlotENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit, label %bb.g, !prof !9

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %.sroa.02.0.copyload.i.i, i64 %i.ah, i64 %i.aj) #17
  br label %_ZN2v88internal14FeedbackVector3SetENS0_12FeedbackSlotENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal14FeedbackVector3SetENS0_12FeedbackSlotENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit: ; preds = %.critedge, %bb.f, %bb.g
  %i.as = add i64 %3, 51
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load atomic volatile i32, ptr %i.at monotonic, align 4
  %i.av = trunc i32 %i.au to i8
  %i.aw = and i8 %i.av, 15
  switch i8 %i.aw, label %bb.j [
    i8 11, label %bb.h
    i8 12, label %_ZN2v88internal14FeedbackVector32set_maybe_has_optimized_osr_codeEbNS0_8CodeKindE.exit
  ], !prof !11

bb.h:                                             ; preds = %_ZN2v88internal14FeedbackVector3SetENS0_12FeedbackSlotENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit
  %i.ax = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 612), align 4, !range !12, !noundef !13
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %_ZN2v88internal14FeedbackVector32set_maybe_has_optimized_osr_codeEbNS0_8CodeKindE.exit, label %bb.i, !prof !9

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.39) #18
  unreachable

bb.j:                                             ; preds = %_ZN2v88internal14FeedbackVector3SetENS0_12FeedbackSlotENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.40) #18
  unreachable

_ZN2v88internal14FeedbackVector32set_maybe_has_optimized_osr_codeEbNS0_8CodeKindE.exit: ; preds = %_ZN2v88internal14FeedbackVector3SetENS0_12FeedbackSlotENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit, %bb.h
  %.sink9.i = phi i8 [ -9, %bb.h ], [ -17, %_ZN2v88internal14FeedbackVector3SetENS0_12FeedbackSlotENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit ]
  %.sink.i = phi i8 [ 8, %bb.h ], [ 16, %_ZN2v88internal14FeedbackVector3SetENS0_12FeedbackSlotENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit ]
  %i.az = load i64, ptr %0, align 8
  %i.ba = add i64 %i.az, 20
  %i.bb = inttoptr i64 %i.ba to ptr               ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = and i8 %i.bc, %.sink9.i
  %i.be = or disjoint i8 %i.bd, %.sink.i
  store i8 %i.be, ptr %i.bb, align 1
  br label %bb.k

bb.k:                                             ; preds = %_ZNRSt8optionalIN2v88internal6TaggedINS1_4CodeEEEE5valueEv.exit, %_ZN2v88internal14FeedbackVector32set_maybe_has_optimized_osr_codeEbNS0_8CodeKindE.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal14FeedbackVector23osr_tiering_in_progressEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = add i64 %i.a, 21
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i16, ptr %i.c, align 2
  %i.e = and i16 %i.d, 2
  %i.f = icmp ne i16 %i.e, 0
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal14FeedbackVector27set_osr_tiering_in_progressEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i1 noundef zeroext %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = add i64 %i.a, 21
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2
  %i.e = and i16 %i.d, -3
  %i.f = select i1 %1, i16 2, i16 0
  %i.g = or disjoint i16 %i.e, %i.f
  store i16 %i.g, ptr %i.c, align 2
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal14FeedbackVector10ClearSlotsEPNS0_7IsolateENS0_13ClearBehaviorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::FeedbackNexus", align 8 ; 10 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8
  %i.a = add i64 %.sroa.0.0.copyload.i.i, 23
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, 31
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i64, ptr %i.e, align 8              ; 4 uses
  %i.g = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 10624
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp eq i64 %i.f, %i.k
  br i1 %i.l, label %_ZNK2v88internal18SharedFunctionInfo19HasFeedbackMetadataEv.exit.thread, label %_ZNK2v88internal18SharedFunctionInfo19HasFeedbackMetadataEv.exit

_ZNK2v88internal18SharedFunctionInfo19HasFeedbackMetadataEv.exit: ; preds = %bb.a
  %i.m = add i64 %i.f, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.p = add i64 %i.o, 11
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i16, ptr %i.q monotonic, align 2
  %i.s = icmp eq i16 %i.r, 268
  br i1 %i.s, label %bb.b, label %_ZNK2v88internal18SharedFunctionInfo19HasFeedbackMetadataEv.exit.thread

bb.b:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo19HasFeedbackMetadataEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 7864
  %i.u = load i64, ptr %i.t, align 8
  %i.v = add i64 %i.f, 7
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4              ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.cont.lr.ph, label %_ZNK2v88internal18SharedFunctionInfo19HasFeedbackMetadataEv.exit.thread

.cont.lr.ph:                                      ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 20
  br label %.cont

.cont:                                            ; preds = %.cont.lr.ph, %.cont22
  %i.af = phi i32 [ %i.x, %.cont.lr.ph ], [ %i.ca, %.cont22 ] ; 3 uses
  %.01439 = phi i1 [ false, %.cont.lr.ph ], [ %.1, %.cont22 ] ; 2 uses
  %.sroa.10.038 = phi i32 [ 0, %.cont.lr.ph ], [ %i.aw, %.cont22 ] ; 5 uses
  %i.ag = udiv i32 %.sroa.10.038, 6               ; 3 uses
  %i.ah = urem i32 %.sroa.10.038, 6
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.thread.i.i.i, label %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i.i.i

_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i.i.i: ; preds = %.cont
  %i.aj = add nsw i32 %i.af, -1
  %i.ak = sdiv i32 %i.aj, 6
  %i.al = add nsw i32 %i.ak, 1
  %i.am = icmp ult i32 %i.ag, %i.al
  br i1 %i.am, label %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, label %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.thread.i.i.i, !prof !7

_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.thread.i.i.i: ; preds = %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i.i.i, %.cont
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.37) #18
  unreachable

_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i: ; preds = %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i.i.i
  %i.an = shl nuw nsw i32 %i.ag, 2
  %narrow = add nuw i32 %i.an, 15
  %i.ao = zext i32 %narrow to i64                 ; 2 uses
  %i.ap = add i64 %i.f, %i.ao
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = mul nuw nsw i32 %i.ah, 5                ; 2 uses
  %i.at = lshr i32 %i.ar, %i.as
  %i.au = trunc i32 %i.at to i8
  %i.av = and i8 %i.au, 31
  switch i8 %i.av, label %bb.e [
    i8 20, label %_ZN2v88internal24FeedbackMetadataIterator4NextEv.exit
    i8 21, label %_ZN2v88internal24FeedbackMetadataIterator4NextEv.exit
    i8 22, label %_ZN2v88internal24FeedbackMetadataIterator4NextEv.exit
    i8 17, label %_ZN2v88internal24FeedbackMetadataIterator4NextEv.exit
    i8 16, label %_ZN2v88internal24FeedbackMetadataIterator4NextEv.exit
    i8 19, label %_ZN2v88internal24FeedbackMetadataIterator4NextEv.exit
    i8 25, label %_ZN2v88internal24FeedbackMetadataIterator4NextEv.exit
    i8 4, label %bb.c
    i8 23, label %bb.c
    i8 5, label %bb.c
    i8 7, label %bb.c
    i8 6, label %bb.c
    i8 8, label %bb.c
    i8 9, label %bb.c
    i8 2, label %bb.c
    i8 11, label %bb.c
    i8 12, label %bb.c
    i8 13, label %bb.c
    i8 1, label %bb.c
    i8 10, label %bb.c
    i8 3, label %bb.c
    i8 14, label %bb.c
    i8 15, label %bb.c
    i8 18, label %bb.c
    i8 24, label %bb.c
    i8 0, label %bb.d
  ]

bb.c:                                             ; preds = %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i
  br label %_ZN2v88internal24FeedbackMetadataIterator4NextEv.exit

bb.d:                                             ; preds = %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.26) #18
  unreachable

bb.e:                                             ; preds = %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.26) #18
  unreachable

_ZN2v88internal24FeedbackMetadataIterator4NextEv.exit: ; preds = %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %bb.c
  %.0.i.i.i = phi i32 [ 2, %bb.c ], [ 1, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i ], [ 1, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i ], [ 1, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i ], [ 1, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i ], [ 1, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i ], [ 1, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i ], [ 1, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i ]
  %i.aw = add nuw nsw i32 %.0.i.i.i, %.sroa.10.038 ; 2 uses
  %i.ax = shl nuw nsw i32 %.sroa.10.038, 3
  %.sroa.0.0.copyload.i.i.i17 = load i64, ptr %0, align 8 ; 4 uses
  %narrow33 = add nuw i32 %i.ax, 47
  %i.ay = zext i32 %narrow33 to i64
  %i.az = add i64 %.sroa.0.0.copyload.i.i.i17, %i.ay
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load atomic volatile i64, ptr %i.ba monotonic, align 8
  %.not = icmp eq i64 %i.bb, %i.u
  br i1 %.not, label %.cont22, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal24FeedbackMetadataIterator4NextEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr null, ptr %3, align 8
  store i64 %.sroa.0.0.copyload.i.i.i17, ptr %i.z, align 8
  store i32 %.sroa.10.038, ptr %i.aa, align 8
  store i8 0, ptr %i.ab, align 8
  store ptr %1, ptr %i.ac, align 8
  store ptr null, ptr %i.ad, align 8
  %i.bc = icmp eq i64 %.sroa.0.0.copyload.i.i.i17, 0
  br i1 %i.bc, label %_ZN2v88internal13FeedbackNexusC2EPNS0_7IsolateENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = add i64 %.sroa.0.0.copyload.i.i.i17, 23
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = add i64 %i.bf, 31
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = load i64, ptr %i.bh, align 8            ; 2 uses
  %i.bj = add i64 %i.bi, 7
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load i32, ptr %i.bk, align 4            ; 2 uses
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.thread.i.i.i.i, label %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i.i.i.i

_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i.i.i.i: ; preds = %bb.g
  %i.bn = add nsw i32 %i.bl, -1
  %i.bo = sdiv i32 %i.bn, 6
  %i.bp = add nsw i32 %i.bo, 1
  %i.bq = icmp ult i32 %i.ag, %i.bp
  br i1 %i.bq, label %_ZNK2v88internal14FeedbackVector7GetKindENS0_12FeedbackSlotE.exit.i, label %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.thread.i.i.i.i, !prof !7

_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.thread.i.i.i.i: ; preds = %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i.i.i.i, %bb.g
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.37) #18
  unreachable

_ZNK2v88internal14FeedbackVector7GetKindENS0_12FeedbackSlotE.exit.i: ; preds = %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i.i.i.i
  %i.br = add i64 %i.bi, %i.ao
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = lshr i32 %i.bt, %i.as
  %i.bv = trunc i32 %i.bu to i8
  %i.bw = and i8 %i.bv, 31
  br label %_ZN2v88internal13FeedbackNexusC2EPNS0_7IsolateENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotE.exit

_ZN2v88internal13FeedbackNexusC2EPNS0_7IsolateENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotE.exit: ; preds = %bb.f, %_ZNK2v88internal14FeedbackVector7GetKindENS0_12FeedbackSlotE.exit.i
  %i.bx = phi i8 [ %i.bw, %_ZNK2v88internal14FeedbackVector7GetKindENS0_12FeedbackSlotE.exit.i ], [ 0, %bb.f ]
  store i8 %i.bx, ptr %i.ae, align 4
  %i.by = call noundef zeroext i1 @_ZN2v88internal13FeedbackNexus5ClearENS0_13ClearBehaviorE(ptr noundef nonnull align 8 dereferenceable(88) %3, i32 noundef %2)
  %i.bz = or i1 %.01439, %i.by
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %.pre = load i32, ptr %i.w, align 4
  br label %.cont22

.cont22:                                          ; preds = %_ZN2v88internal13FeedbackNexusC2EPNS0_7IsolateENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotE.exit, %_ZN2v88internal24FeedbackMetadataIterator4NextEv.exit
  %i.ca = phi i32 [ %.pre, %_ZN2v88internal13FeedbackNexusC2EPNS0_7IsolateENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotE.exit ], [ %i.af, %_ZN2v88internal24FeedbackMetadataIterator4NextEv.exit ] ; 2 uses
  %.1 = phi i1 [ %i.bz, %_ZN2v88internal13FeedbackNexusC2EPNS0_7IsolateENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotE.exit ], [ %.01439, %_ZN2v88internal24FeedbackMetadataIterator4NextEv.exit ] ; 2 uses
  %i.cb = icmp slt i32 %i.aw, %i.ca
  br i1 %i.cb, label %.cont, label %_ZNK2v88internal18SharedFunctionInfo19HasFeedbackMetadataEv.exit.thread, !llvm.loop !29

_ZNK2v88internal18SharedFunctionInfo19HasFeedbackMetadataEv.exit.thread: ; preds = %.cont22, %bb.b, %bb.a, %_ZNK2v88internal18SharedFunctionInfo19HasFeedbackMetadataEv.exit
  %.0 = phi i1 [ false, %bb.a ], [ false, %_ZNK2v88internal18SharedFunctionInfo19HasFeedbackMetadataEv.exit ], [ false, %bb.b ], [ %.1, %.cont22 ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal13FeedbackNexus5ClearENS0_13ClearBehaviorE(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i8, ptr %i.a, align 4
  switch i8 %i.b, label %bb.m [
    i8 17, label %bb.b
    i8 20, label %bb.b
    i8 16, label %bb.b
    i8 22, label %bb.b
    i8 19, label %bb.e
    i8 2, label %bb.g
    i8 11, label %bb.g
    i8 3, label %bb.g
    i8 14, label %bb.g
    i8 15, label %bb.g
    i8 12, label %bb.g
    i8 13, label %bb.g
    i8 5, label %bb.g
    i8 8, label %bb.g
    i8 9, label %bb.g
    i8 1, label %bb.g
    i8 10, label %bb.g
    i8 6, label %bb.g
    i8 7, label %bb.g
    i8 4, label %bb.g
    i8 21, label %bb.g
    i8 18, label %bb.g
    i8 23, label %bb.g
    i8 25, label %bb.g
    i8 24, label %bb.i
    i8 0, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.c = icmp eq i32 %1, 0
  br i1 %i.c, label %bb.m, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef i32 @_ZNK2v88internal13FeedbackNexus8ic_stateEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.e = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 314), align 2, !range !12, !noundef !13
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = icmp ne i32 %i.d, 1
  %.not18 = and i1 %i.g, %i.f
  br i1 %.not18, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.in.i.i = select i1 %i.i, ptr %i.j, ptr %i.h
  %.sroa.0.0.i.i = load i64, ptr %.sroa.0.0.in.i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.k, align 8
  %i.l = shl nsw i32 %.sroa.0.0.copyload.i.i, 3
  %i.m = sext i32 %i.l to i64
  %i.n = add i64 %.sroa.0.0.i.i, 47
  %i.o = add i64 %i.n, %i.m
  %i.p = inttoptr i64 %i.o to ptr
  store atomic volatile i64 0, ptr %i.p release, align 8
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.q = tail call noundef i32 @_ZNK2v88internal13FeedbackNexus8ic_stateEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.r = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 314), align 2, !range !12, !noundef !13
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = icmp ne i32 %i.q, 1
  %.not17 = and i1 %i.t, %i.s
  br i1 %.not17, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %0, align 8                ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.in.i.i7 = select i1 %i.v, ptr %i.w, ptr %i.u
  %.sroa.0.0.i.i8 = load i64, ptr %.sroa.0.0.in.i.i7, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i9 = load i32, ptr %i.x, align 8
  %i.y = shl nsw i32 %.sroa.0.0.copyload.i.i9, 3
  %i.z = sext i32 %i.y to i64
  %i.aa = add i64 %.sroa.0.0.i.i8, 47
  %i.ab = add i64 %i.aa, %i.z
  %i.ac = inttoptr i64 %i.ab to ptr
  store atomic volatile i64 0, ptr %i.ac release, align 8
  br label %bb.m

bb.g:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.ad = tail call noundef i32 @_ZNK2v88internal13FeedbackNexus8ic_stateEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.ae = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 314), align 2, !range !12, !noundef !13
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = icmp ne i32 %i.ad, 1
  %.not16 = and i1 %i.ag, %i.af
  br i1 %.not16, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal13FeedbackNexus22ConfigureUninitializedEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  br label %bb.m

bb.i:                                             ; preds = %bb.a
  %i.ah = icmp eq i32 %1, 0
  br i1 %i.ah, label %bb.m, label %bb.j, !prof !9

bb.j:                                             ; preds = %bb.i
  %i.ai = tail call noundef i32 @_ZNK2v88internal13FeedbackNexus8ic_stateEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.aj = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 314), align 2, !range !12, !noundef !13
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = icmp ne i32 %i.ai, 1
  %.not15 = and i1 %i.al, %i.ak
  br i1 %.not15, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 7864
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = load ptr, ptr %0, align 8               ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.in.i.i12 = select i1 %i.ar, ptr %i.as, ptr %i.aq
  %.sroa.0.0.i.i13 = load i64, ptr %.sroa.0.0.in.i.i12, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i14 = load i32, ptr %i.at, align 8
  tail call void @_ZNK2v88internal11NexusConfig15SetFeedbackPairENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotENS2_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeES9_SA_(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 %.sroa.0.0.i.i13, i32 %.sroa.0.0.copyload.i.i14, i64 0, i32 noundef 0, i64 %i.ap, i32 noundef 0)
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.26) #18
end_hunk_2
