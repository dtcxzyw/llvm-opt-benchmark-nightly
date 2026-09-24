Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/feedback-vector?download=true
inline.NumInlined: 1787
inline.NumDeleted: 887
begin_hunk_0_@_ZN2v88internal18FeedbackVectorSpec7AddSlotENS0_16FeedbackSlotKindE:bb.a
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
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit
  %.016 = phi i32 [ %i.ac, %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit ], [ 0, %.preheader ] ; 5 uses
  %.not19 = icmp slt i32 %.016, %i.h              ; 3 uses
  br i1 %.not19, label %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i.i, label %.critedge

_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i.i: ; preds = %bb.b
  %i.o = udiv i32 %.016, 6                        ; 2 uses
  %i.p = urem i32 %.016, 6
  %.not21 = icmp ugt i32 %i.o, %i.n
  br i1 %.not21, label %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.thread.i.i, label %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit, !prof !10

_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.thread.i.i: ; preds = %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.37) #18
  unreachable

_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit: ; preds = %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i.i
  %i.q = shl nuw nsw i32 %i.o, 2
  %narrow = add nuw i32 %i.q, 15
  %i.r = zext i32 %narrow to i64
  %i.s = add i64 %i.i, %i.r
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load i32, ptr %i.t, align 4
  %i.v = mul nuw nsw i32 %i.p, 5
  %i.w = lshr i32 %i.u, %i.v
  %i.x = trunc i32 %i.w to i8
  %i.y = and i8 %i.x, 31                          ; 2 uses
  switch i8 %i.y, label %bb.e [
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
  %.0.i = phi i32 [ 2, %bb.c ], [ 1, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit ], [ 1, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit ], [ 1, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit ], [ 1, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit ], [ 1, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit ], [ 1, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit ], [ 1, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit ]
  %i.z = zext nneg i32 %.016 to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1
  %.not18 = icmp eq i8 %i.y, %i.ab
  %i.ac = add nuw nsw i32 %.0.i, %.016
  br i1 %.not18, label %bb.b, label %.critedge, !llvm.loop !19

.critedge:                                        ; preds = %bb.b, %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit, %bb.a
  %.4 = phi i1 [ true, %bb.a ], [ %.not19, %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit ], [ %.not19, %bb.b ]
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
  br i1 %i.ad, label %bb.e, label %.lr.ph81.preheader, !prof !11

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
  %i.bk = load i64, ptr %i.bj, align 262144
  %i.bl = and i64 %i.bk, 32
  %.not.i.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i.i, label %_ZN2v88internal10HeapObject34AllocateAndInstallJSDispatchHandleINS0_12DirectHandleINS0_12FeedbackCellEEEEENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEET_mPNS0_7IsolateEtNS3_INS0_4CodeEEENS0_16WriteBarrierModeE.exit, label %bb.h, !prof !9

bb.h:                                             ; preds = %_ZNK2v88internal16FeedbackMetadata30GetCreateClosureParameterCountEi.exit
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE(i64 %i.bh, i32 %i.bd) #17
  br label %_ZN2v88internal10HeapObject34AllocateAndInstallJSDispatchHandleINS0_12DirectHandleINS0_12FeedbackCellEEEEENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEET_mPNS0_7IsolateEtNS3_INS0_4CodeEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal10HeapObject34AllocateAndInstallJSDispatchHandleINS0_12DirectHandleINS0_12FeedbackCellEEEEENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEET_mPNS0_7IsolateEtNS3_INS0_4CodeEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZNK2v88internal16FeedbackMetadata30GetCreateClosureParameterCountEi.exit, %bb.h
  %i.bm = ptrtoint ptr %i.ai to i64               ; 2 uses
  %.not.i.i.i29 = icmp eq ptr %.sroa.10.076, %.sroa.17.075
  br i1 %.not.i.i.i29, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal10HeapObject34AllocateAndInstallJSDispatchHandleINS0_12DirectHandleINS0_12FeedbackCellEEEEENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEET_mPNS0_7IsolateEtNS3_INS0_4CodeEEENS0_16WriteBarrierModeE.exit
  store i64 %i.bm, ptr %.sroa.10.076, align 8
  br label %_ZN2v88internal18DirectHandleVectorINS0_12FeedbackCellEE9push_backERKNS0_12DirectHandleIS2_EE.exit

bb.j:                                             ; preds = %_ZN2v88internal10HeapObject34AllocateAndInstallJSDispatchHandleINS0_12DirectHandleINS0_12FeedbackCellEEEEENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEET_mPNS0_7IsolateEtNS3_INS0_4CodeEEENS0_16WriteBarrierModeE.exit
  %i.bn = ptrtoint ptr %.sroa.10.076 to i64
  %i.bo = ptrtoint ptr %.sroa.042.077 to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.k, label %_ZNKSt6vectorIN2v88internal21DirectHandleUncheckedINS1_12FeedbackCellEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #18
  unreachable

_ZNKSt6vectorIN2v88internal21DirectHandleUncheckedINS1_12FeedbackCellEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.j
  %i.br = ashr exact i64 %i.bp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %.not.i.i.i.i.i30 = icmp ne i64 %i.bv, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i30)
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #19 ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp
  store i64 %i.bm, ptr %i.by, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %.sroa.042.077, %.sroa.10.076
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_12FeedbackCellEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorIN2v88internal21DirectHandleUncheckedINS1_12FeedbackCellEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bx, %_ZNKSt6vectorIN2v88internal21DirectHandleUncheckedINS1_12FeedbackCellEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.042.077, %_ZNKSt6vectorIN2v88internal21DirectHandleUncheckedINS1_12FeedbackCellEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %i.bz = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !27, !noalias !26
  store i64 %i.bz, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !26, !noalias !27
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ca, %.sroa.10.076
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_12FeedbackCellEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !23

_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_12FeedbackCellEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorIN2v88internal21DirectHandleUncheckedINS1_12FeedbackCellEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bx, %_ZNKSt6vectorIN2v88internal21DirectHandleUncheckedINS1_12FeedbackCellEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.cb, %.lr.ph.i.i.i.i.i.i.i ]
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
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_16FeedbackMetadataEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !11

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
  %.0183 = phi i32 [ %i.bd, %._crit_edge ], [ 0, %_ZN2v88internal6HandleINS0_16FeedbackMetadataEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ] ; 5 uses
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
  %i.ay = zext i32 %narrow193 to i64
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = add nuw nsw i64 %i.az, 47
  %i.bb = add i64 %i.ax, %i.ba
  %i.bc = inttoptr i64 %i.bb to ptr
  store atomic volatile i64 %.sroa.095.0, ptr %i.bc monotonic, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.i
  %i.bd = add nuw nsw i32 %.0.i, %.0183           ; 2 uses
  %i.be = icmp slt i32 %i.bd, %i.p
  br i1 %i.be, label %.lr.ph184, label %._crit_edge185, !llvm.loop !28

bb.j:                                             ; preds = %._crit_edge185
  %i.bf = load i64, ptr %i.q, align 8
  %i.bg = add i64 %i.bf, 23
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = load i64, ptr %i.bh, align 8            ; 3 uses
  %i.bj = add i64 %i.bi, 15
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load atomic volatile i64, ptr %i.bk acquire, align 8 ; 2 uses
  %i.bm = trunc i64 %i.bl to i1
  br i1 %i.bm, label %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.i.i, label %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.thread.i.i

_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.i.i: ; preds = %bb.j
  %i.bn = add nsw i64 %i.bl, -1
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = load atomic volatile i64, ptr %i.bo monotonic, align 8
  %i.bq = add i64 %i.bp, 11
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = load atomic volatile i16, ptr %i.br monotonic, align 2
  %i.bt = icmp eq i16 %i.bs, 144
  br i1 %i.bt, label %_ZN2v88internal14FeedbackVector29AddToVectorsForProfilingToolsEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit, label %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.thread.i.i

_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.thread.i.i: ; preds = %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.i.i, %bb.j
  %i.bu = add i64 %i.bi, 7
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load atomic volatile i64, ptr %i.bv acquire, align 8 ; 2 uses
  %i.bx = trunc i64 %i.bw to i1
  br i1 %i.bx, label %_ZNK2v88internal18SharedFunctionInfo27HasWasmExportedFunctionDataENS0_17IsolateForSandboxE.exit.i.i, label %_ZNK2v88internal18SharedFunctionInfo27HasWasmExportedFunctionDataENS0_17IsolateForSandboxE.exit.thread.i.i

_ZNK2v88internal18SharedFunctionInfo27HasWasmExportedFunctionDataENS0_17IsolateForSandboxE.exit.i.i: ; preds = %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.thread.i.i
end_hunk_0
begin_hunk_1_@_ZN2v88internal14FeedbackVector13NewForTestingEPNS0_7IsolateEPKNS0_18FeedbackVectorSpecE:bb.a
  %i.e = load i64, ptr %i.a, align 8              ; 5 uses
  %i.f = add i64 %i.d, 31                         ; 3 uses
  %i.g = inttoptr i64 %i.f to ptr
  store atomic volatile i64 %i.e, ptr %i.g monotonic, align 8
  %i.h = trunc i64 %i.e to i1
  br i1 %i.h, label %bb.b, label %_ZN2v88internal18SharedFunctionInfo45set_raw_outer_scope_info_or_feedback_metadataENS0_6TaggedINS0_5UnionIJNS0_9ScopeInfoENS0_16FeedbackMetadataENS0_7TheHoleEEEEEENS0_16WriteBarrierModeE.exit

bb.b:                                             ; preds = %bb.a
  %i.i = and i64 %i.d, -262144
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i64, ptr %i.j, align 262144         ; 2 uses
  %i.l = and i64 %i.k, 32
  %.not.i.i.i.i = icmp eq i64 %i.l, 0
  %i.m = and i64 %i.k, 25
  %.not38.i.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not38.i.i.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.n = and i64 %i.e, -262144
  %i.o = inttoptr i64 %i.n to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i = load i64, ptr %i.o, align 262144
  %i.p = and i64 %.sroa.0.0.copyload.i28.i.i.i.i, 25
  %.not39.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not39.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.d, i64 noundef %i.f, i64 %i.e) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br i1 %.not.i.i.i.i, label %_ZN2v88internal18SharedFunctionInfo45set_raw_outer_scope_info_or_feedback_metadataENS0_6TaggedINS0_5UnionIJNS0_9ScopeInfoENS0_16FeedbackMetadataENS0_7TheHoleEEEEEENS0_16WriteBarrierModeE.exit, label %bb.f, !prof !9

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.d, i64 %i.f, i64 %i.e) #17
  br label %_ZN2v88internal18SharedFunctionInfo45set_raw_outer_scope_info_or_feedback_metadataENS0_6TaggedINS0_5UnionIJNS0_9ScopeInfoENS0_16FeedbackMetadataENS0_7TheHoleEEEEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal18SharedFunctionInfo45set_raw_outer_scope_info_or_feedback_metadataENS0_6TaggedINS0_5UnionIJNS0_9ScopeInfoENS0_16FeedbackMetadataENS0_7TheHoleEEEEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.a, %bb.e, %bb.f
  %i.q = tail call ptr @_ZN2v88internal24ClosureFeedbackCellArray3NewEPNS0_7IsolateENS0_12DirectHandleINS0_18SharedFunctionInfoEEENS0_14AllocationTypeE(ptr noundef nonnull %0, ptr nonnull %i.c, i8 noundef zeroext 0)
  %i.r = tail call ptr @_ZN2v88internal7Factory17NewNoClosuresCellEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  %i.s = load i64, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @_ZN2v88internal15IsCompiledScopeC2ENS0_6TaggedINS0_18SharedFunctionInfoEEEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(9) %2, i64 %i.s, ptr noundef nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.t = call ptr @_ZN2v88internal14FeedbackVector3NewEPNS0_7IsolateENS0_12DirectHandleINS0_18SharedFunctionInfoEEENS4_INS0_24ClosureFeedbackCellArrayEEENS4_INS0_12FeedbackCellEEEPNS0_15IsCompiledScopeE(ptr noundef nonnull %0, ptr nonnull %i.c, ptr %i.q, ptr %i.r, ptr nonnull poison)
  ret ptr %i.t
}

declare ptr @_ZN2v88internal7Factory31NewSharedFunctionInfoForBuiltinENS0_17MaybeDirectHandleINS0_6StringEEENS0_7BuiltinEiNS0_14AdaptArgumentsENS0_12FunctionKindE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal14FeedbackVector30NewWithOneBinarySlotForTestingEPNS0_4ZoneEPNS0_7IsolateE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::FeedbackVectorSpec", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store ptr %0, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_16FeedbackSlotKindEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef 16)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp ult ptr %i.e, %i.g
  br i1 %i.h, label %_ZN2v88internal18FeedbackVectorSpec17AddBinaryOpICSlotEv.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %reass.sub.i = add i64 %i.k, 1
  %i.l = sub i64 %reass.sub.i, %i.j
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_16FeedbackSlotKindEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %i.l)
  %.pre.i.i.i.i = load ptr, ptr %i.d, align 8
  br label %_ZN2v88internal18FeedbackVectorSpec17AddBinaryOpICSlotEv.exit

_ZN2v88internal18FeedbackVectorSpec17AddBinaryOpICSlotEv.exit: ; preds = %bb.a, %bb.b
  %i.m = phi ptr [ %i.e, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store ptr %i.n, ptr %i.d, align 8
  store i8 16, ptr %i.m, align 1
  %i.o = call ptr @_ZN2v88internal14FeedbackVector13NewForTestingEPNS0_7IsolateEPKNS0_18FeedbackVectorSpecE(ptr noundef %1, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret ptr %i.o
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal14FeedbackVector31NewWithOneCompareSlotForTestingEPNS0_4ZoneEPNS0_7IsolateE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::FeedbackVectorSpec", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store ptr %0, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_16FeedbackSlotKindEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef 16)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp ult ptr %i.e, %i.g
  br i1 %i.h, label %_ZN2v88internal18FeedbackVectorSpec16AddCompareICSlotEv.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %reass.sub.i = add i64 %i.k, 1
  %i.l = sub i64 %reass.sub.i, %i.j
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_16FeedbackSlotKindEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %i.l)
  %.pre.i.i.i.i = load ptr, ptr %i.d, align 8
  br label %_ZN2v88internal18FeedbackVectorSpec16AddCompareICSlotEv.exit

_ZN2v88internal18FeedbackVectorSpec16AddCompareICSlotEv.exit: ; preds = %bb.a, %bb.b
  %i.m = phi ptr [ %i.e, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store ptr %i.n, ptr %i.d, align 8
  store i8 17, ptr %i.m, align 1
  %i.o = call ptr @_ZN2v88internal14FeedbackVector13NewForTestingEPNS0_7IsolateEPKNS0_18FeedbackVectorSpecE(ptr noundef %1, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret ptr %i.o
}

declare ptr @_ZN2v88internal9ArrayList3AddEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6ObjectEEENS0_14AllocationTypeE(ptr noundef, ptr, ptr, i8 noundef zeroext) local_unnamed_addr #2

declare void @_ZN2v88internal7Isolate35SetFeedbackVectorsForProfilingToolsENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(64320), i64) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal14FeedbackVector23set_tiering_in_progressEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i1 noundef zeroext %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = add i64 %i.a, 21
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2
  %i.e = and i16 %i.d, -2
  %i.f = zext i1 %1 to i16
  %i.g = or disjoint i16 %i.e, %i.f
  store i16 %i.g, ptr %i.c, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal14FeedbackVector11reset_flagsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = add i64 %i.a, 21
  %i.c = inttoptr i64 %i.b to ptr
  store i16 0, ptr %i.c, align 2
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14FeedbackVector19SetOptimizedOsrCodeEPNS0_7IsolateENS0_12FeedbackSlotENS0_6TaggedINS0_4CodeEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readnone captures(none) %1, i32 %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = shl nsw i32 %2, 3
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8
  %i.b = sext i32 %i.a to i64
  %i.c = add nsw i64 %i.b, 47                     ; 4 uses
  %i.d = add i64 %.sroa.0.0.copyload.i.i.i, %i.c
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8 ; 2 uses
  %i.g = and i64 %i.f, 4294967295
  %i.h = icmp eq i64 %i.g, 3
  br i1 %i.h, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = and i64 %i.f, -3
  %i.j = add i64 %i.i, 7
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i64, ptr %i.k acquire, align 8
  %i.m = add i64 %i.l, 51
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = load atomic volatile i32, ptr %i.n monotonic, align 4
  %i.p = and i32 %i.o, 64
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %_ZNRSt8optionalIN2v88internal6TaggedINS1_4CodeEEEE5valueEv.exit, label %_ZN2v88internal14FeedbackVector3SetENS0_12FeedbackSlotENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit.i

_ZN2v88internal14FeedbackVector3SetENS0_12FeedbackSlotENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit.i: ; preds = %bb.b
  %.sroa.04.0.copyload.i.i.i = load i64, ptr %0, align 8
  %i.q = add i64 %.sroa.04.0.copyload.i.i.i, %i.c
  %i.r = inttoptr i64 %i.q to ptr
  store atomic volatile i64 3, ptr %i.r monotonic, align 8
  br label %.critedge

_ZNRSt8optionalIN2v88internal6TaggedINS1_4CodeEEEE5valueEv.exit: ; preds = %bb.b
  %i.s = load atomic volatile i32, ptr %i.n monotonic, align 4
  %i.t = trunc i32 %i.s to i8
  %i.u = and i8 %i.t, 15
  %i.v = add i64 %3, 51
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load atomic volatile i32, ptr %i.w monotonic, align 4
  %i.y = trunc i32 %i.x to i8
  %i.z = and i8 %i.y, 15
  %i.aa = icmp samesign ugt i8 %i.u, %i.z
  br i1 %i.aa, label %bb.k, label %.critedge, !prof !11

.critedge:                                        ; preds = %_ZN2v88internal14FeedbackVector3SetENS0_12FeedbackSlotENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit.i, %bb.a, %_ZNRSt8optionalIN2v88internal6TaggedINS1_4CodeEEEE5valueEv.exit
  %i.ab = add i64 %3, 23
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = or i64 %i.ad, 3                         ; 3 uses
  %.sroa.04.0.copyload.i.i = load i64, ptr %0, align 8
  %i.af = add i64 %.sroa.04.0.copyload.i.i, %i.c
  %i.ag = inttoptr i64 %i.af to ptr
  store atomic volatile i64 %i.ae, ptr %i.ag monotonic, align 8
  %.sroa.02.0.copyload.i.i = load i64, ptr %0, align 8 ; 4 uses
  %i.ah = add i64 %.sroa.02.0.copyload.i.i, %i.c  ; 2 uses
  %i.ai = and i64 %i.ae, 4294967295
  %.not = icmp eq i64 %i.ai, 3
  br i1 %.not, label %_ZN2v88internal14FeedbackVector3SetENS0_12FeedbackSlotENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.aj = and i64 %i.ae, -3                       ; 2 uses
  %i.ak = and i64 %.sroa.02.0.copyload.i.i, -262144
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load i64, ptr %i.al, align 262144       ; 2 uses
  %i.an = and i64 %i.am, 32
  %.not.i.i.i.i = icmp eq i64 %i.an, 0
  %i.ao = and i64 %i.am, 25
  %.not38.i.i.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not38.i.i.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ap = and i64 %i.ad, -262144
  %i.aq = inttoptr i64 %i.ap to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i = load i64, ptr %i.aq, align 262144
  %i.ar = and i64 %.sroa.0.0.copyload.i28.i.i.i.i, 25
  %.not39.i.i.i.i = icmp eq i64 %i.ar, 0
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
  ], !prof !12

bb.h:                                             ; preds = %_ZN2v88internal14FeedbackVector3SetENS0_12FeedbackSlotENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit
  %i.ax = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 612), align 4, !range !13, !noundef !14
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
  %i.e = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 314), align 2, !range !13, !noundef !14
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
  %i.r = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 314), align 2, !range !13, !noundef !14
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
  %i.ae = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 314), align 2, !range !13, !noundef !14
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
  %i.aj = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 314), align 2, !range !13, !noundef !14
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
  unreachable

bb.m:                                             ; preds = %bb.i, %bb.k, %bb.j, %bb.g, %bb.h, %bb.e, %bb.f, %bb.b, %bb.d, %bb.c, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ true, %bb.d ], [ false, %bb.e ], [ true, %bb.f ], [ false, %bb.g ], [ true, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ true, %bb.k ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, ptr } @_ZNK2v88internal11NexusConfig9NewHandleENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 7 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8                ; 6 uses
  %i.d = and i64 %1, 3
  %i.e = icmp eq i64 %i.d, 3
  %i.f = and i64 %1, 4294967295
  %i.g = icmp ne i64 %i.f, 3
  %i.h = and i1 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = and i64 %1, -3
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 560 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 568
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %bb.d, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i.i, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.o = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.c) #17
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i.i

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi ptr [ %i.o, %bb.d ], [ %i.k, %bb.c ] ; 3 uses
  %i.p = ptrtoint ptr %.0.i.i.i to i64
  %i.q = add i64 %i.p, 8
  %i.r = inttoptr i64 %i.q to ptr
  store ptr %i.r, ptr %i.j, align 8
  store i64 %i.i, ptr %.0.i.i.i, align 8
  br label %_ZN2v88internal6handleENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEEPNS0_7IsolateE.exit

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i: ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 560 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 568
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = icmp eq ptr %i.t, %i.v
  br i1 %i.w, label %bb.e, label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i, !prof !11

bb.e:                                             ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i
  %i.x = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.c) #17
  br label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i

_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i: ; preds = %bb.e, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i
  %.0.i.i.i.i = phi ptr [ %i.x, %bb.e ], [ %i.t, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i ] ; 3 uses
  %i.y = ptrtoint ptr %.0.i.i.i.i to i64
  %i.z = add i64 %i.y, 8
  %i.aa = inttoptr i64 %i.z to ptr
  store ptr %i.aa, ptr %i.s, align 8
  store i64 %1, ptr %.0.i.i.i.i, align 8
  br label %_ZN2v88internal6handleENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEEPNS0_7IsolateE.exit

bb.f:                                             ; preds = %bb.a
  %i.ab = and i64 %1, 3
  %i.ac = icmp eq i64 %i.ab, 3
  %i.ad = and i64 %1, 4294967295
  %i.ae = icmp ne i64 %i.ad, 3
  %i.af = and i1 %i.ac, %i.ae
  br i1 %i.af, label %bb.g, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i6

bb.g:                                             ; preds = %bb.f
  %i.ag = and i64 %1, -3                          ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ai = load i8, ptr %i.ah, align 8, !range !13, !noundef !14
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = tail call noundef ptr @_ZN2v88internal16LocalHandleScope19GetMainThreadHandleEPNS0_9LocalHeapEm(ptr noundef nonnull %i.b, i64 noundef %i.ag) #17
  br label %_ZN2v88internal6handleENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEEPNS0_7IsolateE.exit

bb.i:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.am = load ptr, ptr %i.al, align 8            ; 5 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = icmp eq ptr %i.an, %i.ap
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ar = tail call noundef ptr @_ZN2v88internal12LocalHandles8AddBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %i.am) #17
  %.pre19.i.i = load ptr, ptr %i.am, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.as = phi ptr [ %.pre19.i.i, %bb.j ], [ %i.an, %bb.i ]
  %.0.i.i.i11 = phi ptr [ %i.ar, %bb.j ], [ %i.an, %bb.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.at, ptr %i.am, align 8
  store i64 %i.ag, ptr %.0.i.i.i11, align 8
  br label %_ZN2v88internal6handleENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEEPNS0_7IsolateE.exit

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i6: ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.av = load i8, ptr %i.au, align 8, !range !13, !noundef !14
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i6
  %i.ax = tail call noundef ptr @_ZN2v88internal16LocalHandleScope19GetMainThreadHandleEPNS0_9LocalHeapEm(ptr noundef nonnull %i.b, i64 noundef %1) #17
  br label %_ZN2v88internal6handleENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEEPNS0_7IsolateE.exit

bb.m:                                             ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i6
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.az = load ptr, ptr %i.ay, align 8            ; 5 uses
  %i.ba = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = icmp eq ptr %i.ba, %i.bc
  br i1 %i.bd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.be = tail call noundef ptr @_ZN2v88internal12LocalHandles8AddBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %i.az) #17
  %.pre.i.i = load ptr, ptr %i.az, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bf = phi ptr [ %.pre.i.i, %bb.n ], [ %i.ba, %bb.m ]
  %.0.i.i.i.i7 = phi ptr [ %i.be, %bb.n ], [ %i.ba, %bb.m ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bg, ptr %i.az, align 8
  store i64 %1, ptr %.0.i.i.i.i7, align 8
  br label %_ZN2v88internal6handleENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEEPNS0_7IsolateE.exit

_ZN2v88internal6handleENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEEPNS0_7IsolateE.exit: ; preds = %bb.o, %bb.l, %bb.k, %bb.h, %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i.i
  %storemerge.i.i.pn = phi i32 [ 0, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i.i ], [ 1, %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i ], [ 0, %bb.k ], [ 0, %bb.h ], [ 1, %bb.l ], [ 1, %bb.o ]
  %storemerge18.i.i.pn = phi ptr [ %.0.i.i.i, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i.i ], [ %.0.i.i.i.i, %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i ], [ %.0.i.i.i11, %bb.k ], [ %i.ak, %bb.h ], [ %i.ax, %bb.l ], [ %.0.i.i.i.i7, %bb.o ]
  %.fca.0.insert.i.pn = insertvalue { i32, ptr } poison, i32 %storemerge.i.i.pn, 0
  %.pn = insertvalue { i32, ptr } %.fca.0.insert.i.pn, ptr %storemerge18.i.i.pn, 1
  ret { i32, ptr } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal11NexusConfig15SetFeedbackPairENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotENS2_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeES9_SA_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i64 %1, i32 %2, i64 %3, i32 noundef %4, i64 %5, i32 noundef %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = add i64 %1, 7
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i32, ptr %i.d, align 4
  %i.f = add nsw i32 %2, 1                        ; 2 uses
  %i.g = icmp sgt i32 %i.e, %i.f
  br i1 %i.g, label %bb.e, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.29) #18
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 58688 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #17
  %i.j = shl nsw i32 %2, 3
  %i.k = sext i32 %i.j to i64
  %i.l = add i64 %1, 47                           ; 2 uses
  %i.m = add i64 %i.l, %i.k                       ; 3 uses
  %i.n = inttoptr i64 %i.m to ptr
  store atomic volatile i64 %3, ptr %i.n monotonic, align 8
  %i.o = icmp slt i32 %4, 2
  br i1 %i.o, label %_ZN2v88internal14FeedbackVector3SetENS0_12FeedbackSlotENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = trunc i64 %3 to i1
  %i.q = and i64 %3, 4294967295
  %i.r = icmp ne i64 %i.q, 3
  %i.s = and i1 %i.r, %i.p
  br i1 %i.s, label %bb.g, label %_ZN2v88internal14FeedbackVector3SetENS0_12FeedbackSlotENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit

bb.g:                                             ; preds = %bb.f
  %i.t = and i64 %3, -3                           ; 2 uses
  %i.u = and i64 %1, -262144
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load i64, ptr %i.v, align 262144         ; 2 uses
  %i.x = and i64 %i.w, 32
  %.not.i.i.i.i = icmp eq i64 %i.x, 0
  %i.y = and i64 %i.w, 25
  %.not38.i.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not38.i.i.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.z = and i64 %3, -262144
  %i.aa = inttoptr i64 %i.z to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i = load i64, ptr %i.aa, align 262144
  %i.ab = and i64 %.sroa.0.0.copyload.i28.i.i.i.i, 25
  %.not39.i.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not39.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %1, i64 noundef %i.m, i64 %i.t) #17
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  br i1 %.not.i.i.i.i, label %_ZN2v88internal14FeedbackVector3SetENS0_12FeedbackSlotENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit, label %bb.k, !prof !9

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %1, i64 %i.m, i64 %i.t) #17
  br label %_ZN2v88internal14FeedbackVector3SetENS0_12FeedbackSlotENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal14FeedbackVector3SetENS0_12FeedbackSlotENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.e, %bb.f, %bb.j, %bb.k
  %i.ac = shl nsw i32 %i.f, 3
  %i.ad = sext i32 %i.ac to i64
  %i.ae = add i64 %i.l, %i.ad                     ; 3 uses
  %i.af = inttoptr i64 %i.ae to ptr
  store atomic volatile i64 %5, ptr %i.af monotonic, align 8
  %i.ag = icmp slt i32 %6, 2
  br i1 %i.ag, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal14FeedbackVector3SetENS0_12FeedbackSlotENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit
  %i.ah = trunc i64 %5 to i1
  %i.ai = and i64 %5, 4294967295
  %i.aj = icmp ne i64 %i.ai, 3
  %i.ak = and i1 %i.aj, %i.ah
  br i1 %i.ak, label %bb.m, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.al = and i64 %5, -3                          ; 2 uses
  %i.am = and i64 %1, -262144
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load i64, ptr %i.an, align 262144       ; 2 uses
  %i.ap = and i64 %i.ao, 32
  %.not.i.i.i.i10 = icmp eq i64 %i.ap, 0
  %i.aq = and i64 %i.ao, 25
  %.not38.i.i.i.i11 = icmp eq i64 %i.aq, 0
  br i1 %.not38.i.i.i.i11, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ar = and i64 %5, -262144
  %i.as = inttoptr i64 %i.ar to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i12 = load i64, ptr %i.as, align 262144
  %i.at = and i64 %.sroa.0.0.copyload.i28.i.i.i.i12, 25
  %.not39.i.i.i.i13 = icmp eq i64 %i.at, 0
  br i1 %.not39.i.i.i.i13, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %1, i64 noundef %i.ae, i64 %i.al) #17
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  br i1 %.not.i.i.i.i10, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %bb.q, !prof !9

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %1, i64 %i.ae, i64 %i.al) #17
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %_ZN2v88internal14FeedbackVector3SetENS0_12FeedbackSlotENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit, %bb.l, %bb.p, %bb.q
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i64 } @_ZNK2v88internal11NexusConfig15GetFeedbackPairENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i64 %1, i32 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %.not16.not = icmp eq ptr %i.b, null            ; 2 uses
  br i1 %.not16.not, label %_ZN2v84base12MutexGuardIfC2EPNS0_5MutexEb.exit, label %_ZNSt8optionalIN2v84base9LockGuardINS1_5MutexEEEE7emplaceIJRPS3_EEENSt9enable_ifIX18is_constructible_vIS4_DpT_EERS4_E4typeEDpOSA_.exit.i

_ZNSt8optionalIN2v84base9LockGuardINS1_5MutexEEEE7emplaceIJRPS3_EEENSt9enable_ifIX18is_constructible_vIS4_DpT_EERS4_E4typeEDpOSA_.exit.i: ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 58688 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #17
  br label %_ZN2v84base12MutexGuardIfC2EPNS0_5MutexEb.exit

_ZN2v84base12MutexGuardIfC2EPNS0_5MutexEb.exit:   ; preds = %bb.a, %_ZNSt8optionalIN2v84base9LockGuardINS1_5MutexEEEE7emplaceIJRPS3_EEENSt9enable_ifIX18is_constructible_vIS4_DpT_EERS4_E4typeEDpOSA_.exit.i
  %.sroa.07.0 = phi ptr [ %i.d, %_ZNSt8optionalIN2v84base9LockGuardINS1_5MutexEEEE7emplaceIJRPS3_EEENSt9enable_ifIX18is_constructible_vIS4_DpT_EERS4_E4typeEDpOSA_.exit.i ], [ undef, %bb.a ] ; 2 uses
  %i.e = shl i32 %2, 3                            ; 2 uses
  %i.f = sext i32 %i.e to i64
  %i.g = add i64 %1, 47                           ; 2 uses
  %i.h = add i64 %i.g, %i.f
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8
  %i.k = add i32 %i.e, 8
  %i.l = sext i32 %i.k to i64
  %i.m = add i64 %i.g, %i.l
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.07.0, null
  %or.cond = or i1 %.not16.not, %.not.i.i.i.i.i.i
  br i1 %or.cond, label %_ZN2v84base12MutexGuardIfD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN2v84base12MutexGuardIfC2EPNS0_5MutexEb.exit
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.07.0) #17
  br label %_ZN2v84base12MutexGuardIfD2Ev.exit

_ZN2v84base12MutexGuardIfD2Ev.exit:               ; preds = %_ZN2v84base12MutexGuardIfC2EPNS0_5MutexEb.exit, %bb.b
  %.fca.0.insert.i = insertvalue { i64, i64 } poison, i64 %i.j, 0
  %.fca.1.insert.i = insertvalue { i64, i64 } %.fca.0.insert.i, i64 %i.o, 1
end_hunk_1
begin_hunk_2_@_ZN2v88internal13FeedbackNexus22ConfigureUninitializedEv:bb.a
  %i.al = add i64 %.sroa.0.0.i.i9, 7
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = add nsw i32 %.sroa.0.0.copyload.i.i10, 1 ; 2 uses
  %i.ap = icmp sgt i32 %i.an, %i.ao
  br i1 %i.ap, label %_ZNK2v88internal11NexusConfig15SetFeedbackPairENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotENS2_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeES9_SA_.exit21, label %bb.i, !prof !9

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.29) #18
  unreachable

_ZNK2v88internal11NexusConfig15SetFeedbackPairENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotENS2_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeES9_SA_.exit21: ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 58688 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aq) #17
  %i.ar = shl nsw i32 %.sroa.0.0.copyload.i.i10, 3
  %i.as = sext i32 %i.ar to i64
  %i.at = add i64 %.sroa.0.0.i.i9, 47             ; 2 uses
  %i.au = add i64 %i.at, %i.as
  %i.av = inttoptr i64 %i.au to ptr
  store atomic volatile i64 %i.ae, ptr %i.av monotonic, align 8
  %i.aw = shl nsw i32 %i.ao, 3
  %i.ax = sext i32 %i.aw to i64
  %i.ay = add i64 %i.at, %i.ax
  %i.az = inttoptr i64 %i.ay to ptr
  store atomic volatile i64 0, ptr %i.az monotonic, align 8
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aq) #17
  br label %bb.q

bb.j:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 7864
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = load ptr, ptr %0, align 8               ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.in.i.i11 = select i1 %i.bf, ptr %i.bg, ptr %i.be
  %.sroa.0.0.i.i12 = load i64, ptr %.sroa.0.0.in.i.i11, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i13 = load i32, ptr %i.bh, align 8
  %i.bi = shl nsw i32 %.sroa.0.0.copyload.i.i13, 3
  %i.bj = sext i32 %i.bi to i64
  %i.bk = add i64 %.sroa.0.0.i.i12, 47
  %i.bl = add i64 %i.bk, %i.bj
  %i.bm = inttoptr i64 %i.bl to ptr
  store atomic volatile i64 %i.bd, ptr %i.bm release, align 8
  br label %bb.q

bb.k:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 7864
  %i.bq = load i64, ptr %i.bp, align 8            ; 2 uses
  %i.br = load ptr, ptr %0, align 8               ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.in.i.i14 = select i1 %i.bs, ptr %i.bt, ptr %i.br
  %.sroa.0.0.i.i15 = load i64, ptr %.sroa.0.0.in.i.i14, align 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i16 = load i32, ptr %i.bu, align 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bw = load ptr, ptr %i.bv, align 8
  %.not.i.i22 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i22, label %bb.m, label %bb.l, !prof !9

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #18
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bx = add i64 %.sroa.0.0.i.i15, 7
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = add nsw i32 %.sroa.0.0.copyload.i.i16, 1 ; 2 uses
  %i.cb = icmp sgt i32 %i.bz, %i.ca
  br i1 %i.cb, label %_ZNK2v88internal11NexusConfig15SetFeedbackPairENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotENS2_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeES9_SA_.exit23, label %bb.n, !prof !9

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.29) #18
  unreachable

_ZNK2v88internal11NexusConfig15SetFeedbackPairENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotENS2_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeES9_SA_.exit23: ; preds = %bb.m
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bo, i64 58688 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cc) #17
  %i.cd = shl nsw i32 %.sroa.0.0.copyload.i.i16, 3
  %i.ce = sext i32 %i.cd to i64
  %i.cf = add i64 %.sroa.0.0.i.i15, 47            ; 2 uses
  %i.cg = add i64 %i.cf, %i.ce
  %i.ch = inttoptr i64 %i.cg to ptr
  store atomic volatile i64 %i.bq, ptr %i.ch monotonic, align 8
  %i.ci = shl nsw i32 %i.ca, 3
  %i.cj = sext i32 %i.ci to i64
  %i.ck = add i64 %i.cf, %i.cj
  %i.cl = inttoptr i64 %i.ck to ptr
  store atomic volatile i64 %i.bq, ptr %i.cl monotonic, align 8
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cc) #17
  br label %bb.q

bb.o:                                             ; preds = %bb.a
  %i.cm = load ptr, ptr %0, align 8               ; 2 uses
  %i.cn = icmp eq ptr %i.cm, null
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.in.i.i17 = select i1 %i.cn, ptr %i.co, ptr %i.cm
  %.sroa.0.0.i.i18 = load i64, ptr %.sroa.0.0.in.i.i17, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i19 = load i32, ptr %i.cp, align 8
  %i.cq = shl nsw i32 %.sroa.0.0.copyload.i.i19, 3
  %i.cr = sext i32 %i.cq to i64
  %i.cs = add i64 %.sroa.0.0.i.i18, 47
  %i.ct = add i64 %i.cs, %i.cr
  %i.cu = inttoptr i64 %i.ct to ptr
  store atomic volatile i64 3, ptr %i.cu release, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.26) #18
  unreachable

bb.q:                                             ; preds = %bb.o, %_ZNK2v88internal11NexusConfig15SetFeedbackPairENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotENS2_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeES9_SA_.exit23, %bb.j, %_ZNK2v88internal11NexusConfig15SetFeedbackPairENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotENS2_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeES9_SA_.exit21, %_ZNK2v88internal11NexusConfig15SetFeedbackPairENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotENS2_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeES9_SA_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal13FeedbackNexus20ConfigureMegamorphicEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 7872
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = tail call { i64, i64 } @_ZNK2v88internal13FeedbackNexus15GetFeedbackPairEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = icmp ne i64 %i.f, %i.d                   ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.in.i.i = select i1 %i.i, ptr %i.j, ptr %i.h
  %.sroa.0.0.i.i = load i64, ptr %.sroa.0.0.in.i.i, align 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.k, align 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #18
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.n = add i64 %.sroa.0.0.i.i, 7
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i32, ptr %i.o, align 4
  %i.q = add nsw i32 %.sroa.0.0.copyload.i.i, 1   ; 2 uses
  %i.r = icmp sgt i32 %i.p, %i.q
  br i1 %i.r, label %_ZNK2v88internal11NexusConfig15SetFeedbackPairENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotENS2_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeES9_SA_.exit, label %bb.e, !prof !9

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.29) #18
  unreachable

_ZNK2v88internal11NexusConfig15SetFeedbackPairENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotENS2_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeES9_SA_.exit: ; preds = %bb.d
  %i.s = load ptr, ptr %i.a, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 58688 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t) #17
  %i.u = shl nsw i32 %.sroa.0.0.copyload.i.i, 3
  %i.v = sext i32 %i.u to i64
  %i.w = add i64 %.sroa.0.0.i.i, 47               ; 2 uses
  %i.x = add i64 %i.w, %i.v
  %i.y = inttoptr i64 %i.x to ptr
  store atomic volatile i64 %i.d, ptr %i.y monotonic, align 8
  %i.z = shl nsw i32 %i.q, 3
  %i.aa = sext i32 %i.z to i64
  %i.ab = add i64 %i.w, %i.aa
  %i.ac = inttoptr i64 %i.ab to ptr
  store atomic volatile i64 3, ptr %i.ac monotonic, align 8
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZNK2v88internal11NexusConfig15SetFeedbackPairENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotENS2_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeES9_SA_.exit
  ret i1 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal13FeedbackNexus16ConfigureMegaDOMERKNS0_23MaybeObjectDirectHandleE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 7888
  %i.d = load i64, ptr %i.c, align 8
  %i.e = load i32, ptr %1, align 8
  %i.f = icmp eq i32 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = icmp eq ptr %i.h, null                   ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.c, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i, !prof !11

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.41) #18
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.h, align 8
  %i.k = or i64 %i.j, 3
  br label %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit

bb.d:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.e, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i, !prof !11

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.41) #18
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.h, align 8
  br label %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit

_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i
  %.sroa.05.0.i = phi i64 [ %i.k, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i ], [ %i.l, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i ]
  %i.m = load ptr, ptr %0, align 8                ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.in.i.i = select i1 %i.n, ptr %i.o, ptr %i.m
  %.sroa.0.0.i.i = load i64, ptr %.sroa.0.0.in.i.i, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.p, align 8
  tail call void @_ZNK2v88internal11NexusConfig15SetFeedbackPairENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotENS2_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeES9_SA_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 %.sroa.0.0.i.i, i32 %.sroa.0.0.copyload.i.i, i64 %i.d, i32 noundef 0, i64 %.sroa.05.0.i, i32 noundef 4)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal13FeedbackNexus20ConfigureMegamorphicENS0_11IcCheckTypeE(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 7872
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = sext i32 %1 to i64
  %i.f = shl nsw i64 %i.e, 32                     ; 2 uses
  %i.g = tail call { i64, i64 } @_ZNK2v88internal13FeedbackNexus15GetFeedbackPairEv(ptr noundef nonnull align 8 dereferenceable(88) %0) ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.g, 0
  %i.i = extractvalue { i64, i64 } %i.g, 1
  %i.j = icmp ne i64 %i.h, %i.d
  %i.k = icmp ne i64 %i.i, %i.f
  %or.cond = select i1 %i.j, i1 true, i1 %i.k     ; 2 uses
  br i1 %or.cond, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8                ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.in.i.i = select i1 %i.m, ptr %i.n, ptr %i.l
  %.sroa.0.0.i.i = load i64, ptr %.sroa.0.0.in.i.i, align 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.o, align 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load ptr, ptr %i.p, align 8
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %.thread
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #18
  unreachable

bb.c:                                             ; preds = %.thread
  %i.r = add i64 %.sroa.0.0.i.i, 7
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load i32, ptr %i.s, align 4
  %i.u = add nsw i32 %.sroa.0.0.copyload.i.i, 1   ; 2 uses
  %i.v = icmp sgt i32 %i.t, %i.u
  br i1 %i.v, label %_ZNK2v88internal11NexusConfig15SetFeedbackPairENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotENS2_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeES9_SA_.exit, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.29) #18
  unreachable

_ZNK2v88internal11NexusConfig15SetFeedbackPairENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotENS2_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeES9_SA_.exit: ; preds = %bb.c
  %i.w = load ptr, ptr %i.a, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 58688 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #17
  %i.y = shl nsw i32 %.sroa.0.0.copyload.i.i, 3
  %i.z = sext i32 %i.y to i64
  %i.aa = add i64 %.sroa.0.0.i.i, 47              ; 2 uses
  %i.ab = add i64 %i.aa, %i.z
  %i.ac = inttoptr i64 %i.ab to ptr
  store atomic volatile i64 %i.d, ptr %i.ac monotonic, align 8
  %i.ad = shl nsw i32 %i.u, 3
  %i.ae = sext i32 %i.ad to i64
  %i.af = add i64 %i.aa, %i.ae
  %i.ag = inttoptr i64 %i.af to ptr
  store atomic volatile i64 %i.f, ptr %i.ag monotonic, align 8
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZNK2v88internal11NexusConfig15SetFeedbackPairENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotENS2_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeES9_SA_.exit
  ret i1 %or.cond
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i64 } @_ZNK2v88internal13FeedbackNexus15GetFeedbackPairEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null                  ; 3 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i8, ptr %i.e, align 8, !range !13, !noundef !14
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.210.0.copyload = load ptr, ptr %.sroa.210.0..sroa_idx, align 8 ; 2 uses
  %i.h = icmp eq ptr %.sroa.210.0.copyload, null
  br i1 %i.h, label %_ZNK2v88internal13FeedbackNexus10FromHandleENS0_23MaybeObjectDirectHandleE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.08.0.copyload = load i32, ptr %i.d, align 8
  %i.i = icmp eq i32 %.sroa.08.0.copyload, 0
  %i.j = load i64, ptr %.sroa.210.0.copyload, align 8 ; 2 uses
  %i.k = or i64 %i.j, 3
  %spec.select.i = select i1 %i.i, i64 %i.k, i64 %i.j
  br label %_ZNK2v88internal13FeedbackNexus10FromHandleENS0_23MaybeObjectDirectHandleE.exit

_ZNK2v88internal13FeedbackNexus10FromHandleENS0_23MaybeObjectDirectHandleE.exit: ; preds = %bb.c, %bb.d
  %.sroa.03.0.i = phi i64 [ 3, %bb.c ], [ %spec.select.i, %bb.d ] ; 2 uses
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.27.0.copyload = load ptr, ptr %.sroa.27.0..sroa_idx, align 8 ; 2 uses
  %i.l = icmp eq ptr %.sroa.27.0.copyload, null
  br i1 %i.l, label %_ZNSt8optionalISt4pairIN2v88internal17MaybeObjectHandleES3_EEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK2v88internal13FeedbackNexus10FromHandleENS0_23MaybeObjectDirectHandleE.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.06.0.copyload = load i32, ptr %i.m, align 8
  %i.n = icmp eq i32 %.sroa.06.0.copyload, 0
  %i.o = load i64, ptr %.sroa.27.0.copyload, align 8 ; 2 uses
  %i.p = or i64 %i.o, 3
  %spec.select.i15 = select i1 %i.n, i64 %i.p, i64 %i.o
  br label %_ZNSt8optionalISt4pairIN2v88internal17MaybeObjectHandleES3_EEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.r = load i8, ptr %i.q, align 4
  switch i8 %i.r, label %bb.h [
    i8 20, label %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit
    i8 21, label %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit
    i8 22, label %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit
    i8 17, label %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit
    i8 16, label %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit
    i8 19, label %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit
    i8 25, label %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit
    i8 4, label %bb.i
    i8 23, label %bb.i
    i8 5, label %bb.i
    i8 7, label %bb.i
    i8 6, label %bb.i
    i8 8, label %bb.i
    i8 9, label %bb.i
    i8 2, label %bb.i
    i8 11, label %bb.i
    i8 12, label %bb.i
    i8 13, label %bb.i
    i8 1, label %bb.i
    i8 10, label %bb.i
    i8 3, label %bb.i
    i8 14, label %bb.i
    i8 15, label %bb.i
    i8 18, label %bb.i
    i8 24, label %bb.i
    i8 0, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.26) #18
  unreachable

bb.h:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.26) #18
  unreachable

bb.i:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.s = load ptr, ptr %0, align 8                ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.in.i = select i1 %i.t, ptr %i.u, ptr %i.s
  %.sroa.0.0.i = load i64, ptr %.sroa.0.0.in.i, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i = load i32, ptr %i.v, align 8
  br i1 %.not, label %_ZN2v84base12MutexGuardIfC2EPNS0_5MutexEb.exit.i, label %_ZNSt8optionalIN2v84base9LockGuardINS1_5MutexEEEE7emplaceIJRPS3_EEENSt9enable_ifIX18is_constructible_vIS4_DpT_EERS4_E4typeEDpOSA_.exit.i.i

_ZNSt8optionalIN2v84base9LockGuardINS1_5MutexEEEE7emplaceIJRPS3_EEENSt9enable_ifIX18is_constructible_vIS4_DpT_EERS4_E4typeEDpOSA_.exit.i.i: ; preds = %bb.i
  %i.w = load ptr, ptr %i.a, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 58688 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #17
  br label %_ZN2v84base12MutexGuardIfC2EPNS0_5MutexEb.exit.i

_ZN2v84base12MutexGuardIfC2EPNS0_5MutexEb.exit.i: ; preds = %_ZNSt8optionalIN2v84base9LockGuardINS1_5MutexEEEE7emplaceIJRPS3_EEENSt9enable_ifIX18is_constructible_vIS4_DpT_EERS4_E4typeEDpOSA_.exit.i.i, %bb.i
  %.sroa.07.0.i = phi ptr [ %i.x, %_ZNSt8optionalIN2v84base9LockGuardINS1_5MutexEEEE7emplaceIJRPS3_EEENSt9enable_ifIX18is_constructible_vIS4_DpT_EERS4_E4typeEDpOSA_.exit.i.i ], [ undef, %bb.i ] ; 2 uses
  %i.y = shl i32 %.sroa.0.0.copyload.i, 3         ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = add i64 %.sroa.0.0.i, 47                ; 2 uses
  %i.ab = add i64 %i.aa, %i.z
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load atomic volatile i64, ptr %i.ac monotonic, align 8 ; 2 uses
  %i.ae = add i32 %i.y, 8
  %i.af = sext i32 %i.ae to i64
  %i.ag = add i64 %i.aa, %i.af
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load atomic volatile i64, ptr %i.ah monotonic, align 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.07.0.i, null
  %or.cond.i = or i1 %.not, %.not.i.i.i.i.i.i.i
  br i1 %or.cond.i, label %_ZNK2v88internal11NexusConfig15GetFeedbackPairENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN2v84base12MutexGuardIfC2EPNS0_5MutexEb.exit.i
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.07.0.i) #17
  br label %_ZNK2v88internal11NexusConfig15GetFeedbackPairENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotE.exit

_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit: ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.aj = load ptr, ptr %0, align 8               ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.in.i18 = select i1 %i.ak, ptr %i.al, ptr %i.aj
  %.sroa.0.0.i19 = load i64, ptr %.sroa.0.0.in.i18, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i20 = load i32, ptr %i.am, align 8
  %i.an = shl nsw i32 %.sroa.0.0.copyload.i20, 3
  %i.ao = sext i32 %i.an to i64
  %i.ap = add i64 %.sroa.0.0.i19, 47
  %i.aq = add i64 %i.ap, %i.ao
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load atomic volatile i64, ptr %i.ar acquire, align 8
  br label %_ZNK2v88internal11NexusConfig15GetFeedbackPairENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotE.exit

_ZNK2v88internal11NexusConfig15GetFeedbackPairENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotE.exit: ; preds = %bb.j, %_ZN2v84base12MutexGuardIfC2EPNS0_5MutexEb.exit.i, %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit
  %.pn50 = phi i64 [ %i.as, %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit ], [ %i.ad, %_ZN2v84base12MutexGuardIfC2EPNS0_5MutexEb.exit.i ], [ %i.ad, %bb.j ] ; 6 uses
  %.pn48 = phi i64 [ 0, %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit ], [ %i.ai, %_ZN2v84base12MutexGuardIfC2EPNS0_5MutexEb.exit.i ], [ %i.ai, %bb.j ] ; 6 uses
  %i.at = load ptr, ptr %i.b, align 8
  %.not51 = icmp eq ptr %i.at, null
  br i1 %.not51, label %_ZNSt8optionalISt4pairIN2v88internal17MaybeObjectHandleES3_EEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK2v88internal11NexusConfig15GetFeedbackPairENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotE.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.aw = load i8, ptr %i.av, align 8, !range !13, !noundef !14
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %_ZNSt8optionalISt4pairIN2v88internal17MaybeObjectHandleES3_EEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = and i64 %.pn50, 4294967295
  %i.az = icmp eq i64 %i.ay, 3
  br i1 %i.az, label %_ZNK2v88internal13FeedbackNexus8ToHandleENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = tail call { i32, ptr } @_ZNK2v88internal11NexusConfig9NewHandleENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 %.pn50) ; 2 uses
  %i.bb = extractvalue { i32, ptr } %i.ba, 0
  %i.bc = extractvalue { i32, ptr } %i.ba, 1
  br label %_ZNK2v88internal13FeedbackNexus8ToHandleENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit

_ZNK2v88internal13FeedbackNexus8ToHandleENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit: ; preds = %bb.l, %bb.m
  %.sroa.02.0.i = phi i32 [ %i.bb, %bb.m ], [ 1, %bb.l ]
  %.sroa.3.0.i = phi ptr [ %i.bc, %bb.m ], [ null, %bb.l ]
  %i.bd = and i64 %.pn48, 4294967295
  %i.be = icmp eq i64 %i.bd, 3
  br i1 %i.be, label %_ZNK2v88internal13FeedbackNexus8ToHandleENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit29, label %bb.n

bb.n:                                             ; preds = %_ZNK2v88internal13FeedbackNexus8ToHandleENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit
  %i.bf = tail call { i32, ptr } @_ZNK2v88internal11NexusConfig9NewHandleENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 %.pn48) ; 2 uses
  %i.bg = extractvalue { i32, ptr } %i.bf, 0
  %i.bh = extractvalue { i32, ptr } %i.bf, 1
  br label %_ZNK2v88internal13FeedbackNexus8ToHandleENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit29

_ZNK2v88internal13FeedbackNexus8ToHandleENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit29: ; preds = %_ZNK2v88internal13FeedbackNexus8ToHandleENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit, %bb.n
  %.sroa.02.0.i25 = phi i32 [ %i.bg, %bb.n ], [ 1, %_ZNK2v88internal13FeedbackNexus8ToHandleENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit ]
  %.sroa.3.0.i26 = phi ptr [ %i.bh, %bb.n ], [ null, %_ZNK2v88internal13FeedbackNexus8ToHandleENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit ]
  %i.bi = load i8, ptr %i.av, align 8, !range !13, !noundef !14
  %i.bj = trunc nuw i8 %i.bi to i1
  store i32 %.sroa.02.0.i, ptr %i.au, align 8
  %.sroa.6.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.3.0.i, ptr %.sroa.6.0..sroa_idx38, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.02.0.i25, ptr %i.bk, align 8
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.3.0.i26, ptr %.sroa.10.16..sroa_idx, align 8
  br i1 %i.bj, label %_ZNSt8optionalISt4pairIN2v88internal17MaybeObjectHandleES3_EEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK2v88internal13FeedbackNexus8ToHandleENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit29
  store i8 1, ptr %i.av, align 8
  br label %_ZNSt8optionalISt4pairIN2v88internal17MaybeObjectHandleES3_EEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit

_ZNSt8optionalISt4pairIN2v88internal17MaybeObjectHandleES3_EEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit: ; preds = %_ZNK2v88internal13FeedbackNexus8ToHandleENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit29, %bb.e, %_ZNK2v88internal13FeedbackNexus10FromHandleENS0_23MaybeObjectDirectHandleE.exit, %bb.o, %_ZNK2v88internal11NexusConfig15GetFeedbackPairENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotE.exit, %bb.k
  %.sroa.03.0.i.pn = phi i64 [ %.pn50, %bb.o ], [ %.pn50, %bb.k ], [ %.pn50, %_ZNK2v88internal11NexusConfig15GetFeedbackPairENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotE.exit ], [ %.sroa.03.0.i, %bb.e ], [ %.sroa.03.0.i, %_ZNK2v88internal13FeedbackNexus10FromHandleENS0_23MaybeObjectDirectHandleE.exit ], [ %.pn50, %_ZNK2v88internal13FeedbackNexus8ToHandleENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit29 ]
  %.sroa.03.0.i16.pn = phi i64 [ %.pn48, %bb.o ], [ %.pn48, %bb.k ], [ %.pn48, %_ZNK2v88internal11NexusConfig15GetFeedbackPairENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotE.exit ], [ %spec.select.i15, %bb.e ], [ 3, %_ZNK2v88internal13FeedbackNexus10FromHandleENS0_23MaybeObjectDirectHandleE.exit ], [ %.pn48, %_ZNK2v88internal13FeedbackNexus8ToHandleENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit29 ]
  %.fca.0.insert.i.pn = insertvalue { i64, i64 } poison, i64 %.sroa.03.0.i.pn, 0
  %.fca.1.insert.merged = insertvalue { i64, i64 } %.fca.0.insert.i.pn, i64 %.sroa.03.0.i16.pn, 1
  ret { i64, i64 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZNK2v88internal13FeedbackNexus11GetFirstMapEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::FeedbackIterator", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @_ZN2v88internal16FeedbackIteratorC2EPKNS0_13FeedbackNexusE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i8, ptr %i.a, align 8, !range !13, !noundef !14
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8
  %.sroa.01.0 = select i1 %i.c, i64 0, i64 %.sroa.0.0.copyload.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret i64 %.sroa.01.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 1, 8) i32 @_ZNK2v88internal13FeedbackNexus8ic_stateEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { i64, i64 } @_ZNK2v88internal13FeedbackNexus15GetFeedbackPairEv(ptr noundef nonnull align 8 dereferenceable(88) %0) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0        ; 24 uses
  %i.c = extractvalue { i64, i64 } %i.a, 1        ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i8, ptr %i.d, align 4               ; 2 uses
  switch i8 %i.e, label %.critedge [
    i8 19, label %bb.b
    i8 1, label %bb.c
    i8 10, label %bb.c
    i8 6, label %bb.c
    i8 7, label %bb.c
    i8 25, label %bb.c
    i8 2, label %bb.e
    i8 11, label %bb.e
    i8 3, label %bb.e
    i8 14, label %bb.e
    i8 15, label %bb.e
    i8 12, label %bb.e
    i8 13, label %bb.e
    i8 5, label %bb.e
    i8 8, label %bb.e
    i8 9, label %bb.e
    i8 4, label %bb.l
    i8 16, label %bb.u
    i8 24, label %bb.u
    i8 17, label %bb.v
    i8 20, label %bb.x
    i8 22, label %bb.y
    i8 21, label %bb.aa
    i8 18, label %bb.ac
    i8 23, label %bb.ae
    i8 0, label %bb.ah
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %i.b, 1
  %i.g = icmp eq i64 %i.f, 0
  %. = select i1 %i.g, i32 1, i32 2
  br label %.critedge

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.h = and i64 %i.b, 4294967295
  %or.cond = icmp eq i64 %i.h, 3
  br i1 %or.cond, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 7864
  %i.l = load i64, ptr %i.k, align 8
  %.not210 = icmp eq i64 %i.c, %i.l
  %spec.select = select i1 %.not210, i32 1, i32 2
  br label %.critedge

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load ptr, ptr %i.m, align 8              ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 7864
  %i.p = load i64, ptr %i.o, align 8
  %i.q = icmp eq i64 %i.b, %i.p
  br i1 %i.q, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 7872
  %i.s = load i64, ptr %i.r, align 8
  %i.t = icmp eq i64 %i.b, %i.s
  br i1 %i.t, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 7888
  %i.v = load i64, ptr %i.u, align 8
  %i.w = icmp eq i64 %i.b, %i.v
  br i1 %i.w, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = and i64 %i.b, 3
  switch i64 %i.x, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit [
    i64 3, label %.critedge
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.y = add i64 %i.b, -1
  %i.z = inttoptr i64 %i.y to ptr                 ; 2 uses
  %i.aa = load atomic volatile i64, ptr %i.z monotonic, align 8
  %i.ab = add i64 %i.aa, 11
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load atomic volatile i16, ptr %i.ac monotonic, align 2
  %i.ae = add i16 %i.ad, -257
  %i.af = icmp ult i16 %i.ae, 2
  br i1 %i.af, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = load atomic volatile i64, ptr %i.z monotonic, align 8
  %i.ah = add i64 %i.ag, 11
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load atomic volatile i16, ptr %i.ai monotonic, align 2
  %i.ak = icmp ult i16 %i.aj, 129
  br i1 %i.ak, label %bb.k, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit

bb.k:                                             ; preds = %bb.j
  %i.al = add i64 %i.c, -1
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = lshr i64 %i.ao, 32
  %i.aq = trunc nuw i64 %i.ap to i32
  %i.ar = icmp sgt i32 %i.aq, 2
  %i.as = select i1 %i.ar, i32 4, i32 2
  br label %.critedge

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %bb.h, %bb.j
  %i.at = load ptr, ptr %0, align 8               ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.in.i = select i1 %i.au, ptr %i.av, ptr %i.at
  %.sroa.0.0.i = load i64, ptr %.sroa.0.0.in.i, align 8 ; 2 uses
  %i.aw = inttoptr i64 %i.b to ptr
  %i.ax = inttoptr i64 %i.c to ptr
  %i.ay = inttoptr i64 %.sroa.0.0.i to ptr
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = load i32, ptr %i.az, align 8            ; 2 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = zext nneg i8 %i.e to i64
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = shl nsw i32 %i.ba, 3
  %i.bg = add nsw i32 %i.bf, 48
  %i.bh = sext i32 %i.bg to i64
  %i.bi = add i64 %.sroa.0.0.i, %i.bh
  %i.bj = inttoptr i64 %i.bi to ptr
  tail call void @_ZN2v88internal7Isolate16PushParamsAndDieEPvS2_S2_S2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(64320) %i.n, ptr noundef %i.aw, ptr noundef %i.ax, ptr noundef %i.ay, ptr noundef %i.bc, ptr noundef %i.be, ptr noundef %i.bj) #17
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.26) #18
  unreachable

bb.l:                                             ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 7872
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = icmp eq i64 %i.b, %i.bn
  br i1 %i.bo, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = and i64 %i.b, 3
  switch i64 %i.bp, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit68 [
    i64 3, label %bb.n
    i64 1, label %bb.s
  ]

bb.n:                                             ; preds = %bb.m
  %i.bq = and i64 %i.b, 4294967295
  %.not = icmp eq i64 %i.bq, 3
  br i1 %.not, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.br = and i64 %i.b, -3
  %i.bs = add i64 %i.br, -1
  %i.bt = inttoptr i64 %i.bs to ptr               ; 3 uses
  %i.bu = load atomic volatile i64, ptr %i.bt monotonic, align 8
  %i.bv = add i64 %i.bu, 11
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = load atomic volatile i16, ptr %i.bw monotonic, align 2
  %i.by = icmp eq i16 %i.bx, 156
  br i1 %i.by, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = load atomic volatile i64, ptr %i.bt monotonic, align 8
  %i.ca = add i64 %i.bz, 11
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = load atomic volatile i16, ptr %i.cb monotonic, align 2
  %i.cd = add i16 %i.cc, -2065
  %i.ce = icmp ult i16 %i.cd, 17
  br i1 %i.ce, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cf = load atomic volatile i64, ptr %i.bt monotonic, align 8
  %i.cg = add i64 %i.cf, 11
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = load atomic volatile i16, ptr %i.ch monotonic, align 2
  %.not209 = icmp eq i16 %i.ci, 2063
  br i1 %.not209, label %.critedge, label %bb.r, !prof !9

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.30) #18
  unreachable

bb.s:                                             ; preds = %bb.m
  %i.cj = add i64 %i.b, -1
end_hunk_2
begin_hunk_3_@_ZNK2v88internal13FeedbackNexus26GetBinaryOperationFeedbackEv:bb.a

_ZN2v88internal31BinaryOperationHintFromFeedbackEi.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.0.i = phi i8 [ 10, %bb.k ], [ 9, %bb.j ], [ 1, %bb.b ], [ 2, %bb.c ], [ 3, %bb.d ], [ 4, %bb.e ], [ 5, %bb.f ], [ 6, %bb.g ], [ 7, %bb.h ], [ 8, %bb.i ], [ 0, %bb.a ]
  ret i8 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext range(i8 0, 14) i8 @_ZNK2v88internal13FeedbackNexus27GetCompareOperationFeedbackEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { i64, i64 } @_ZNK2v88internal13FeedbackNexus15GetFeedbackPairEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.b = extractvalue { i64, i64 } %i.a, 0        ; 5 uses
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = lshr i64 %i.b, 32
  %i.f = trunc nuw i64 %i.e to i32                ; 9 uses
  switch i32 %i.f, label %bb.b [
    i32 0, label %_ZN2v88internal32CompareOperationHintFromFeedbackEi.exit
    i32 1, label %.fold.split.i
  ]

bb.b:                                             ; preds = %bb.a
  %.not.i16.i = icmp ult i64 %i.b, 17179869184
  br i1 %.not.i16.i, label %_ZN2v88internal32CompareOperationHintFromFeedbackEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i17.i = icmp ult i64 %i.b, 34359738368
  br i1 %.not.i17.i, label %_ZN2v88internal32CompareOperationHintFromFeedbackEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i18.i = icmp ult i64 %i.b, 68719476736
  br i1 %.not.i18.i, label %_ZN2v88internal32CompareOperationHintFromFeedbackEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = and i32 %i.f, -17
  %.not.i19.i = icmp eq i32 %i.g, 0
  br i1 %.not.i19.i, label %_ZN2v88internal32CompareOperationHintFromFeedbackEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = and i32 %i.f, -49
  %.not.i20.i = icmp eq i32 %i.h, 0
  br i1 %.not.i20.i, label %_ZN2v88internal32CompareOperationHintFromFeedbackEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = and i32 %i.f, -61
  %.not.i21.i = icmp eq i32 %i.i, 0
  br i1 %.not.i21.i, label %_ZN2v88internal32CompareOperationHintFromFeedbackEi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = and i32 %i.f, -513
  %.not.i23.i = icmp eq i32 %i.j, 0
  br i1 %.not.i23.i, label %_ZN2v88internal32CompareOperationHintFromFeedbackEi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = and i32 %i.f, -521
  %.not.i24.i = icmp eq i32 %i.k, 0
  br i1 %.not.i24.i, label %_ZN2v88internal32CompareOperationHintFromFeedbackEi.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.l = and i32 %i.f, -129
  %.not.i25.i = icmp eq i32 %i.l, 0
  br i1 %.not.i25.i, label %_ZN2v88internal32CompareOperationHintFromFeedbackEi.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.m = and i32 %i.f, -385
  %.not.i26.i = icmp eq i32 %i.m, 0
  br i1 %.not.i26.i, label %_ZN2v88internal32CompareOperationHintFromFeedbackEi.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.n = and i32 %i.f, -65
  %.not.i27.i = icmp eq i32 %i.n, 0
  %..i = select i1 %.not.i27.i, i8 7, i8 13
  br label %_ZN2v88internal32CompareOperationHintFromFeedbackEi.exit

.fold.split.i:                                    ; preds = %bb.a
  br label %_ZN2v88internal32CompareOperationHintFromFeedbackEi.exit

_ZN2v88internal32CompareOperationHintFromFeedbackEi.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %.fold.split.i
  %.0.i = phi i8 [ 6, %bb.f ], [ 0, %bb.a ], [ 8, %bb.k ], [ 2, %bb.b ], [ 3, %bb.c ], [ 4, %bb.d ], [ 5, %bb.e ], [ 1, %.fold.split.i ], [ 10, %bb.h ], [ 11, %bb.i ], [ 9, %bb.j ], [ %..i, %bb.l ], [ 12, %bb.g ]
  ret i8 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext range(i8 0, 4) i8 @_ZNK2v88internal13FeedbackNexus16GetForInFeedbackEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
_ZN2v88internal21ForInHintFromFeedbackENS0_13ForInFeedbackE.exit:
  %i.a = tail call { i64, i64 } @_ZNK2v88internal13FeedbackNexus15GetFeedbackPairEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.b = extractvalue { i64, i64 } %i.a, 0        ; 3 uses
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = and i64 %i.b, 1082331758592
  %i.f = icmp eq i64 %i.e, 0
  %sh.diff = lshr i64 %i.b, 29
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %switch.shiftamt = and i32 %tr.sh.diff, 2040
  %switch.downshift = lshr i32 33751296, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %.0.i = select i1 %i.f, i8 %switch.masked, i8 3
  ret i8 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal13FeedbackNexus25ConfigurePropertyCellModeENS0_12DirectHandleINS0_12PropertyCellEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = or i64 %i.a, 3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 7864
  %i.f = load i64, ptr %i.e, align 8
  %i.g = load ptr, ptr %0, align 8                ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.in.i.i = select i1 %i.h, ptr %i.i, ptr %i.g
  %.sroa.0.0.i.i = load i64, ptr %.sroa.0.0.in.i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.j, align 8
  tail call void @_ZNK2v88internal11NexusConfig15SetFeedbackPairENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotENS2_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeES9_SA_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 %.sroa.0.0.i.i, i32 %.sroa.0.0.copyload.i.i, i64 %i.b, i32 noundef 4, i64 %i.f, i32 noundef 0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal13FeedbackNexus23ConfigureLexicalVarModeEiib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ult i32 %1, 4096
  %i.b = icmp ult i32 %2, 262144
  %or.cond = and i1 %i.a, %i.b                    ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = shl nuw nsw i32 %2, 12
  %i.d = select i1 %3, i32 1073741824, i32 0
  %i.e = or disjoint i32 %i.d, %i.c
  %i.f = or disjoint i32 %i.e, %1
  %i.g = zext nneg i32 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 7864
  %i.l = load i64, ptr %i.k, align 8
  %i.m = load ptr, ptr %0, align 8                ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.in.i.i = select i1 %i.n, ptr %i.o, ptr %i.m
  %.sroa.0.0.i.i = load i64, ptr %.sroa.0.0.in.i.i, align 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.p, align 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load ptr, ptr %i.q, align 8
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #18
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.s = add i64 %.sroa.0.0.i.i, 7
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load i32, ptr %i.t, align 4
  %i.v = add nsw i32 %.sroa.0.0.copyload.i.i, 1   ; 2 uses
  %i.w = icmp sgt i32 %i.u, %i.v
  br i1 %i.w, label %_ZNK2v88internal11NexusConfig15SetFeedbackPairENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotENS2_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeES9_SA_.exit, label %bb.e, !prof !9

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.29) #18
  unreachable

_ZNK2v88internal11NexusConfig15SetFeedbackPairENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotENS2_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeES9_SA_.exit: ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 58688 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #17
  %i.y = shl nsw i32 %.sroa.0.0.copyload.i.i, 3
  %i.z = sext i32 %i.y to i64
  %i.aa = add i64 %.sroa.0.0.i.i, 47              ; 2 uses
  %i.ab = add i64 %i.aa, %i.z
  %i.ac = inttoptr i64 %i.ab to ptr
  store atomic volatile i64 %i.h, ptr %i.ac monotonic, align 8
  %i.ad = shl nsw i32 %i.v, 3
  %i.ae = sext i32 %i.ad to i64
  %i.af = add i64 %i.aa, %i.ae
  %i.ag = inttoptr i64 %i.af to ptr
  store atomic volatile i64 %i.l, ptr %i.ag monotonic, align 8
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZNK2v88internal11NexusConfig15SetFeedbackPairENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotENS2_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeES9_SA_.exit
  ret i1 %or.cond
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal13FeedbackNexus20ConfigureHandlerModeERKNS0_23MaybeObjectDirectHandleE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8
  %i.b = icmp eq i32 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = icmp eq ptr %i.d, null                   ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.c, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i, !prof !11

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.41) #18
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.d, align 8
  %i.g = or i64 %i.f, 3
  br label %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit

bb.d:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.e, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i, !prof !11

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.41) #18
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.d, align 8
  br label %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit

_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i
  %.sroa.05.0.i = phi i64 [ %i.g, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i ], [ %i.h, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load ptr, ptr %0, align 8                ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.in.i.i = select i1 %i.k, ptr %i.l, ptr %i.j
  %.sroa.0.0.i.i = load i64, ptr %.sroa.0.0.in.i.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.m, align 8
  tail call void @_ZNK2v88internal11NexusConfig15SetFeedbackPairENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotENS2_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeES9_SA_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 %.sroa.0.0.i.i, i32 %.sroa.0.0.copyload.i.i, i64 3, i32 noundef 4, i64 %.sroa.05.0.i, i32 noundef 4)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal13FeedbackNexus20ConfigureCloneObjectENS0_12DirectHandleINS0_3MapEEERKNS0_17MaybeObjectHandleE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.fr257 = freeze ptr %1                         ; 10 uses
  %.sroa.0192.0.copyload = load i32, ptr %2, align 8 ; 4 uses
  %.sroa.7193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7193.0.copyload = load ptr, ptr %.sroa.7193.0..sroa_idx, align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 7 uses
  %i.c = tail call { i64, i64 } @_ZNK2v88internal13FeedbackNexus15GetFeedbackPairEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.d = extractvalue { i64, i64 } %i.c, 0        ; 3 uses
  %i.e = trunc i64 %i.d to i1
  %i.f = and i64 %i.d, 4294967295
  %i.g = icmp ne i64 %i.f, 3
  %i.h = and i1 %i.g, %i.e
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = and i64 %i.d, -3
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 560 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %bb.c, label %_ZN2v88internal12DirectHandleINS0_10HeapObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.o = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.b) #17
  br label %_ZN2v88internal12DirectHandleINS0_10HeapObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal12DirectHandleINS0_10HeapObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.o, %bb.c ], [ %i.k, %bb.b ] ; 3 uses
  %i.p = ptrtoint ptr %.0.i.i to i64
  %i.q = add i64 %i.p, 8
  %i.r = inttoptr i64 %i.q to ptr
  store ptr %i.r, ptr %i.j, align 8
  store i64 %i.i, ptr %.0.i.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN2v88internal12DirectHandleINS0_10HeapObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.sroa.0187.0 = phi ptr [ %.0.i.i, %_ZN2v88internal12DirectHandleINS0_10HeapObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ null, %bb.a ] ; 11 uses
  %i.s = tail call noundef i32 @_ZNK2v88internal13FeedbackNexus8ic_stateEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  switch i32 %i.s, label %bb.bx [
    i32 1, label %bb.e
    i32 2, label %bb.j
    i32 4, label %bb.ao
  ]

bb.e:                                             ; preds = %bb.d
  %i.t = load i64, ptr %.fr257, align 8
  %i.u = or i64 %i.t, 3
  %i.v = icmp eq i32 %.sroa.0192.0.copyload, 0
  %i.w = icmp eq ptr %.sroa.7193.0.copyload, null ; 2 uses
  br i1 %i.v, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %i.w, label %bb.g, label %._ZNK2v88internal17MaybeObjectHandledeEv.exit11_crit_edge.i, !prof !11

._ZNK2v88internal17MaybeObjectHandledeEv.exit11_crit_edge.i: ; preds = %bb.f
  %.sroa.05.0.i9.in.pre.i = load i64, ptr %.sroa.7193.0.copyload, align 8
  br label %_ZNK2v88internal17MaybeObjectHandledeEv.exit11.i

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.41) #18
  unreachable

bb.h:                                             ; preds = %bb.e
  br i1 %i.w, label %bb.i, label %_ZNK2v88internal17MaybeObjectHandledeEv.exit.thread.i, !prof !11

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.41) #18
  unreachable

_ZNK2v88internal17MaybeObjectHandledeEv.exit.thread.i: ; preds = %bb.h
  %i.x = load i64, ptr %.sroa.7193.0.copyload, align 8 ; 3 uses
  %i.y = and i64 %i.x, 1
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %"_ZZN2v88internal13FeedbackNexus20ConfigureCloneObjectENS0_12DirectHandleINS0_3MapEEERKNS0_17MaybeObjectHandleEENK3$_0clEv.exit", label %_ZNK2v88internal17MaybeObjectHandledeEv.exit11.i

_ZNK2v88internal17MaybeObjectHandledeEv.exit11.i: ; preds = %_ZNK2v88internal17MaybeObjectHandledeEv.exit.thread.i, %._ZNK2v88internal17MaybeObjectHandledeEv.exit11_crit_edge.i
  %.sroa.05.0.i9.in.i = phi i64 [ %.sroa.05.0.i9.in.pre.i, %._ZNK2v88internal17MaybeObjectHandledeEv.exit11_crit_edge.i ], [ %i.x, %_ZNK2v88internal17MaybeObjectHandledeEv.exit.thread.i ]
  %.sroa.05.0.i9.i = or i64 %.sroa.05.0.i9.in.i, 3
  br label %"_ZZN2v88internal13FeedbackNexus20ConfigureCloneObjectENS0_12DirectHandleINS0_3MapEEERKNS0_17MaybeObjectHandleEENK3$_0clEv.exit"

"_ZZN2v88internal13FeedbackNexus20ConfigureCloneObjectENS0_12DirectHandleINS0_3MapEEERKNS0_17MaybeObjectHandleEENK3$_0clEv.exit": ; preds = %_ZNK2v88internal17MaybeObjectHandledeEv.exit.thread.i, %_ZNK2v88internal17MaybeObjectHandledeEv.exit11.i
  %.sroa.03.0.i = phi i64 [ %.sroa.05.0.i9.i, %_ZNK2v88internal17MaybeObjectHandledeEv.exit11.i ], [ %i.x, %_ZNK2v88internal17MaybeObjectHandledeEv.exit.thread.i ]
  %i.aa = load ptr, ptr %0, align 8               ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.in.i.i = select i1 %i.ab, ptr %i.ac, ptr %i.aa
  %.sroa.0.0.i.i = load i64, ptr %.sroa.0.0.in.i.i, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ad, align 8
  tail call void @_ZNK2v88internal11NexusConfig15SetFeedbackPairENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotENS2_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeES9_SA_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 %.sroa.0.0.i.i, i32 %.sroa.0.0.copyload.i.i, i64 %i.u, i32 noundef 4, i64 %.sroa.03.0.i, i32 noundef 4)
  br label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit146

bb.j:                                             ; preds = %bb.d
  %i.ae = icmp eq ptr %.sroa.0187.0, null
  %i.af = icmp eq ptr %.sroa.0187.0, %.fr257
  %or.cond = or i1 %i.ae, %i.af
  br i1 %or.cond, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = icmp eq ptr %.fr257, null
  %.pre = load i64, ptr %.sroa.0187.0, align 8    ; 2 uses
  br i1 %i.ag, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit68.thread235, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit68

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit68: ; preds = %bb.k
  %i.ah = load i64, ptr %.fr257, align 8
  %i.ai = icmp eq i64 %.pre, %i.ah
  br i1 %i.ai, label %.critedge, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit68.thread235

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit68.thread235: ; preds = %bb.k, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit68
  %i.aj = add i64 %.pre, 15
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load atomic volatile i32, ptr %i.ak acquire, align 4
  %i.am = and i32 %i.al, 16777216
  %.not243 = icmp eq i32 %i.am, 0
  br i1 %.not243, label %bb.p, label %.critedge

.critedge:                                        ; preds = %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit68, %bb.j, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit68.thread235
  %i.an = load i64, ptr %.fr257, align 8
  %i.ao = or i64 %i.an, 3
  %i.ap = icmp eq i32 %.sroa.0192.0.copyload, 0
  %i.aq = icmp eq ptr %.sroa.7193.0.copyload, null ; 2 uses
  br i1 %i.ap, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.critedge
  br i1 %i.aq, label %bb.m, label %._ZNK2v88internal17MaybeObjectHandledeEv.exit11_crit_edge.i82, !prof !11

._ZNK2v88internal17MaybeObjectHandledeEv.exit11_crit_edge.i82: ; preds = %bb.l
  %.sroa.05.0.i9.in.pre.i83 = load i64, ptr %.sroa.7193.0.copyload, align 8
  br label %_ZNK2v88internal17MaybeObjectHandledeEv.exit11.i78

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.41) #18
  unreachable

bb.n:                                             ; preds = %.critedge
  br i1 %i.aq, label %bb.o, label %_ZNK2v88internal17MaybeObjectHandledeEv.exit.thread.i77, !prof !11

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.41) #18
  unreachable

_ZNK2v88internal17MaybeObjectHandledeEv.exit.thread.i77: ; preds = %bb.n
  %i.ar = load i64, ptr %.sroa.7193.0.copyload, align 8 ; 3 uses
  %i.as = and i64 %i.ar, 1
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %"_ZZN2v88internal13FeedbackNexus20ConfigureCloneObjectENS0_12DirectHandleINS0_3MapEEERKNS0_17MaybeObjectHandleEENK3$_0clEv.exit84", label %_ZNK2v88internal17MaybeObjectHandledeEv.exit11.i78

_ZNK2v88internal17MaybeObjectHandledeEv.exit11.i78: ; preds = %_ZNK2v88internal17MaybeObjectHandledeEv.exit.thread.i77, %._ZNK2v88internal17MaybeObjectHandledeEv.exit11_crit_edge.i82
  %.sroa.05.0.i9.in.i79 = phi i64 [ %.sroa.05.0.i9.in.pre.i83, %._ZNK2v88internal17MaybeObjectHandledeEv.exit11_crit_edge.i82 ], [ %i.ar, %_ZNK2v88internal17MaybeObjectHandledeEv.exit.thread.i77 ]
  %.sroa.05.0.i9.i80 = or i64 %.sroa.05.0.i9.in.i79, 3
  br label %"_ZZN2v88internal13FeedbackNexus20ConfigureCloneObjectENS0_12DirectHandleINS0_3MapEEERKNS0_17MaybeObjectHandleEENK3$_0clEv.exit84"

"_ZZN2v88internal13FeedbackNexus20ConfigureCloneObjectENS0_12DirectHandleINS0_3MapEEERKNS0_17MaybeObjectHandleEENK3$_0clEv.exit84": ; preds = %_ZNK2v88internal17MaybeObjectHandledeEv.exit.thread.i77, %_ZNK2v88internal17MaybeObjectHandledeEv.exit11.i78
  %.sroa.03.0.i81 = phi i64 [ %.sroa.05.0.i9.i80, %_ZNK2v88internal17MaybeObjectHandledeEv.exit11.i78 ], [ %i.ar, %_ZNK2v88internal17MaybeObjectHandledeEv.exit.thread.i77 ]
  %i.au = load ptr, ptr %0, align 8               ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.in.i.i85 = select i1 %i.av, ptr %i.aw, ptr %i.au
  %.sroa.0.0.i.i86 = load i64, ptr %.sroa.0.0.in.i.i85, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i87 = load i32, ptr %i.ax, align 8
  tail call void @_ZNK2v88internal11NexusConfig15SetFeedbackPairENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotENS2_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeES9_SA_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 %.sroa.0.0.i.i86, i32 %.sroa.0.0.copyload.i.i87, i64 %i.ao, i32 noundef 4, i64 %.sroa.03.0.i81, i32 noundef 4)
  br label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit146

bb.p:                                             ; preds = %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit68.thread235
  %i.ay = load ptr, ptr %i.a, align 8
  %i.az = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewWeakFixedArrayEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %i.ay, i32 noundef 4, i8 noundef zeroext 0) #17
  %i.ba = load i64, ptr %i.az, align 8            ; 2 uses
  %i.bb = add i64 %i.ba, -1                       ; 9 uses
  %i.bc = inttoptr i64 %i.bb to ptr               ; 4 uses
  %i.bd = load i64, ptr %.sroa.0187.0, align 8    ; 2 uses
  %i.be = or i64 %i.bd, 3                         ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  store atomic volatile i64 %i.be, ptr %i.bf monotonic, align 8
  %i.bg = and i64 %i.be, 4294967295
  %.not244 = icmp eq i64 %i.bg, 3
  br i1 %.not244, label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = and i64 %i.be, -3                       ; 2 uses
  %i.bi = or disjoint i64 %i.bb, 1                ; 2 uses
  %i.bj = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bk = and i64 %i.bb, -262144
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = load i64, ptr %i.bl, align 262144       ; 2 uses
  %i.bn = and i64 %i.bm, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.bn, 0
  %i.bo = and i64 %i.bm, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not38.i.i.i.i.i, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bp = and i64 %i.bd, -262144
  %i.bq = inttoptr i64 %i.bp to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i = load i64, ptr %i.bq, align 262144
  %i.br = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i, 25
  %.not39.i.i.i.i.i = icmp eq i64 %i.br, 0
  br i1 %.not39.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.bi, i64 noundef %i.bj, i64 %i.bh) #17
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit, label %bb.u, !prof !9

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.bi, i64 %i.bj, i64 %i.bh) #17
  br label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.p, %bb.t, %bb.u
  %i.bs = tail call { i64, i64 } @_ZNK2v88internal13FeedbackNexus15GetFeedbackPairEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.bt = extractvalue { i64, i64 } %i.bs, 1      ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 2 uses
  store atomic volatile i64 %i.bt, ptr %i.bu monotonic, align 8
  %i.bv = trunc i64 %i.bt to i1
  %i.bw = and i64 %i.bt, 4294967295
  %i.bx = icmp ne i64 %i.bw, 3
  %i.by = and i1 %i.bx, %i.bv
  br i1 %i.by, label %bb.v, label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit92

bb.v:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit
  %i.bz = and i64 %i.bt, -3                       ; 2 uses
  %i.ca = or disjoint i64 %i.bb, 1                ; 2 uses
  %i.cb = ptrtoint ptr %i.bu to i64               ; 2 uses
  %i.cc = and i64 %i.bb, -262144
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = load i64, ptr %i.cd, align 262144       ; 2 uses
  %i.cf = and i64 %i.ce, 32
  %.not.i.i.i.i.i88 = icmp eq i64 %i.cf, 0
  %i.cg = and i64 %i.ce, 25
  %.not38.i.i.i.i.i89 = icmp eq i64 %i.cg, 0
  br i1 %.not38.i.i.i.i.i89, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ch = and i64 %i.bt, -262144
  %i.ci = inttoptr i64 %i.ch to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i90 = load i64, ptr %i.ci, align 262144
  %i.cj = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i90, 25
  %.not39.i.i.i.i.i91 = icmp eq i64 %i.cj, 0
  br i1 %.not39.i.i.i.i.i91, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ca, i64 noundef %i.cb, i64 %i.bz) #17
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  br i1 %.not.i.i.i.i.i88, label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit92, label %bb.z, !prof !9

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ca, i64 %i.cb, i64 %i.bz) #17
  br label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit92

_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit92: ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit, %bb.y, %bb.z
  %i.ck = load i64, ptr %.fr257, align 8          ; 2 uses
  %i.cl = or i64 %i.ck, 3                         ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bc, i64 32 ; 2 uses
  store atomic volatile i64 %i.cl, ptr %i.cm monotonic, align 8
  %i.cn = and i64 %i.cl, 4294967295
  %.not245 = icmp eq i64 %i.cn, 3
  br i1 %.not245, label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit97, label %bb.aa

bb.aa:                                            ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit92
  %i.co = and i64 %i.cl, -3                       ; 2 uses
  %i.cp = or disjoint i64 %i.bb, 1                ; 2 uses
  %i.cq = ptrtoint ptr %i.cm to i64               ; 2 uses
  %i.cr = and i64 %i.bb, -262144
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = load i64, ptr %i.cs, align 262144       ; 2 uses
  %i.cu = and i64 %i.ct, 32
  %.not.i.i.i.i.i93 = icmp eq i64 %i.cu, 0
  %i.cv = and i64 %i.ct, 25
  %.not38.i.i.i.i.i94 = icmp eq i64 %i.cv, 0
  br i1 %.not38.i.i.i.i.i94, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.cw = and i64 %i.ck, -262144
  %i.cx = inttoptr i64 %i.cw to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i95 = load i64, ptr %i.cx, align 262144
  %i.cy = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i95, 25
  %.not39.i.i.i.i.i96 = icmp eq i64 %i.cy, 0
  br i1 %.not39.i.i.i.i.i96, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.cp, i64 noundef %i.cq, i64 %i.co) #17
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  br i1 %.not.i.i.i.i.i93, label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit97, label %bb.ae, !prof !9

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.cp, i64 %i.cq, i64 %i.co) #17
  br label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit97

_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit97: ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit92, %bb.ad, %bb.ae
  %i.cz = icmp eq i32 %.sroa.0192.0.copyload, 0
  %i.da = icmp eq ptr %.sroa.7193.0.copyload, null ; 2 uses
  br i1 %i.cz, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit97
  br i1 %i.da, label %bb.ag, label %._ZNK2v88internal17MaybeObjectHandledeEv.exit11_crit_edge.i103, !prof !11

._ZNK2v88internal17MaybeObjectHandledeEv.exit11_crit_edge.i103: ; preds = %bb.af
  %.sroa.05.0.i9.in.pre.i104 = load i64, ptr %.sroa.7193.0.copyload, align 8
  br label %_ZNK2v88internal17MaybeObjectHandledeEv.exit11.i99

bb.ag:                                            ; preds = %bb.af
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.41) #18
  unreachable

bb.ah:                                            ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit97
  br i1 %i.da, label %bb.ai, label %_ZNK2v88internal17MaybeObjectHandledeEv.exit.thread.i98, !prof !11

bb.ai:                                            ; preds = %bb.ah
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.41) #18
  unreachable

_ZNK2v88internal17MaybeObjectHandledeEv.exit.thread.i98: ; preds = %bb.ah
  %i.db = load i64, ptr %.sroa.7193.0.copyload, align 8 ; 3 uses
  %i.dc = and i64 %i.db, 1
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %"_ZZN2v88internal13FeedbackNexus20ConfigureCloneObjectENS0_12DirectHandleINS0_3MapEEERKNS0_17MaybeObjectHandleEENK3$_0clEv.exit105", label %_ZNK2v88internal17MaybeObjectHandledeEv.exit11.i99

_ZNK2v88internal17MaybeObjectHandledeEv.exit11.i99: ; preds = %_ZNK2v88internal17MaybeObjectHandledeEv.exit.thread.i98, %._ZNK2v88internal17MaybeObjectHandledeEv.exit11_crit_edge.i103
  %.sroa.05.0.i9.in.i100 = phi i64 [ %.sroa.05.0.i9.in.pre.i104, %._ZNK2v88internal17MaybeObjectHandledeEv.exit11_crit_edge.i103 ], [ %i.db, %_ZNK2v88internal17MaybeObjectHandledeEv.exit.thread.i98 ]
  %.sroa.05.0.i9.i101 = or i64 %.sroa.05.0.i9.in.i100, 3
  br label %"_ZZN2v88internal13FeedbackNexus20ConfigureCloneObjectENS0_12DirectHandleINS0_3MapEEERKNS0_17MaybeObjectHandleEENK3$_0clEv.exit105"

"_ZZN2v88internal13FeedbackNexus20ConfigureCloneObjectENS0_12DirectHandleINS0_3MapEEERKNS0_17MaybeObjectHandleEENK3$_0clEv.exit105": ; preds = %_ZNK2v88internal17MaybeObjectHandledeEv.exit.thread.i98, %_ZNK2v88internal17MaybeObjectHandledeEv.exit11.i99
  %.sroa.03.0.i102 = phi i64 [ %.sroa.05.0.i9.i101, %_ZNK2v88internal17MaybeObjectHandledeEv.exit11.i99 ], [ %i.db, %_ZNK2v88internal17MaybeObjectHandledeEv.exit.thread.i98 ] ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.bc, i64 40 ; 2 uses
  store atomic volatile i64 %.sroa.03.0.i102, ptr %i.de monotonic, align 8
  %i.df = trunc i64 %.sroa.03.0.i102 to i1
  %i.dg = and i64 %.sroa.03.0.i102, 4294967295
  %i.dh = icmp ne i64 %i.dg, 3
  %i.di = and i1 %i.dh, %i.df
  br i1 %i.di, label %bb.aj, label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit110

bb.aj:                                            ; preds = %"_ZZN2v88internal13FeedbackNexus20ConfigureCloneObjectENS0_12DirectHandleINS0_3MapEEERKNS0_17MaybeObjectHandleEENK3$_0clEv.exit105"
  %i.dj = and i64 %.sroa.03.0.i102, -3            ; 2 uses
  %i.dk = or disjoint i64 %i.bb, 1                ; 2 uses
  %i.dl = ptrtoint ptr %i.de to i64               ; 2 uses
  %i.dm = and i64 %i.bb, -262144
  %i.dn = inttoptr i64 %i.dm to ptr
  %i.do = load i64, ptr %i.dn, align 262144       ; 2 uses
  %i.dp = and i64 %i.do, 32
  %.not.i.i.i.i.i106 = icmp eq i64 %i.dp, 0
  %i.dq = and i64 %i.do, 25
  %.not38.i.i.i.i.i107 = icmp eq i64 %i.dq, 0
  br i1 %.not38.i.i.i.i.i107, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.dr = and i64 %.sroa.03.0.i102, -262144
  %i.ds = inttoptr i64 %i.dr to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i108 = load i64, ptr %i.ds, align 262144
  %i.dt = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i108, 25
  %.not39.i.i.i.i.i109 = icmp eq i64 %i.dt, 0
  br i1 %.not39.i.i.i.i.i109, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.dk, i64 noundef %i.dl, i64 %i.dj) #17
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  br i1 %.not.i.i.i.i.i106, label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit110, label %bb.an, !prof !9

bb.an:                                            ; preds = %bb.am
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.dk, i64 %i.dl, i64 %i.dj) #17
  br label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit110

_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit110: ; preds = %"_ZZN2v88internal13FeedbackNexus20ConfigureCloneObjectENS0_12DirectHandleINS0_3MapEEERKNS0_17MaybeObjectHandleEENK3$_0clEv.exit105", %bb.am, %bb.an
  %i.du = load ptr, ptr %0, align 8               ; 2 uses
  %i.dv = icmp eq ptr %i.du, null
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.in.i.i111 = select i1 %i.dv, ptr %i.dw, ptr %i.du
  %.sroa.0.0.i.i112 = load i64, ptr %.sroa.0.0.in.i.i111, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i113 = load i32, ptr %i.dx, align 8
  tail call void @_ZNK2v88internal11NexusConfig15SetFeedbackPairENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotENS2_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeES9_SA_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 %.sroa.0.0.i.i112, i32 %.sroa.0.0.copyload.i.i113, i64 %i.ba, i32 noundef 4, i64 3, i32 noundef 4)
  br label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit146

bb.ao:                                            ; preds = %bb.d
  %i.dy = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1496), align 8
  %i.dz = shl nsw i32 %i.dy, 1
  %i.ea = load i64, ptr %.sroa.0187.0, align 8
  %i.eb = add i64 %i.ea, -1
  %i.ec = inttoptr i64 %i.eb to ptr               ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = lshr i64 %i.ee, 32
  %i.eg = trunc nuw i64 %i.ef to i32
  %i.eh = icmp sgt i32 %i.eg, 0
  br i1 %i.eh, label %.lr.ph, label %.critedge2.thread

.lr.ph:                                           ; preds = %bb.ao
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 560 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 568 ; 2 uses
  %i.ek = icmp eq ptr %.fr257, null
  br i1 %i.ek, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.critedge2.us
  %indvars.iv261 = phi i64 [ %indvars.iv.next262, %.critedge2.us ], [ 0, %.lr.ph ] ; 4 uses
  %i.el = phi ptr [ %i.ff, %.critedge2.us ], [ %i.ec, %.lr.ph ]
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv261
  %i.eo = load atomic volatile i64, ptr %i.en monotonic, align 8 ; 2 uses
  %i.ep = and i64 %i.eo, 4294967295
  %i.eq = icmp eq i64 %i.ep, 3
  br i1 %i.eq, label %.critedge2.thread.loopexit.split.loop.exit287, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.split.us
  %i.er = and i64 %i.eo, -3                       ; 2 uses
  %i.es = load ptr, ptr %i.ei, align 8            ; 2 uses
  %i.et = load ptr, ptr %i.ej, align 8
  %i.eu = icmp eq ptr %i.es, %i.et
  br i1 %i.eu, label %bb.aq, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread238.us, !prof !11

bb.aq:                                            ; preds = %bb.ap
  %i.ev = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.b) #17
  br label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread238.us

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread238.us: ; preds = %bb.ap, %bb.aq
  %.0.i.i69.us = phi ptr [ %i.ev, %bb.aq ], [ %i.es, %bb.ap ] ; 2 uses
  %i.ew = ptrtoint ptr %.0.i.i69.us to i64
  %i.ex = add i64 %i.ew, 8
  %i.ey = inttoptr i64 %i.ex to ptr
  store ptr %i.ey, ptr %i.ei, align 8
  store i64 %i.er, ptr %.0.i.i69.us, align 8
  %i.ez = add i64 %i.er, 15
  %i.fa = inttoptr i64 %i.ez to ptr
  %i.fb = load atomic volatile i32, ptr %i.fa acquire, align 4
  %i.fc = and i32 %i.fb, 16777216
  %.not241.us = icmp eq i32 %i.fc, 0
  br i1 %.not241.us, label %.critedge2.us, label %.critedge2.thread.loopexit.split.loop.exit

.critedge2.us:                                    ; preds = %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread238.us
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 2 ; 2 uses
  %indvars263 = trunc i64 %indvars.iv.next262 to i32 ; 2 uses
  %i.fd = load i64, ptr %.sroa.0187.0, align 8
  %i.fe = add i64 %i.fd, -1
  %i.ff = inttoptr i64 %i.fe to ptr               ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load i64, ptr %i.fg, align 8
  %i.fi = lshr i64 %i.fh, 32
  %i.fj = trunc nuw i64 %i.fi to i32
  %i.fk = icmp slt i32 %indvars263, %i.fj
  br i1 %i.fk, label %.lr.ph.split.us, label %.critedge2.thread, !llvm.loop !30

.lr.ph.split:                                     ; preds = %.lr.ph, %.critedge2
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge2 ], [ 0, %.lr.ph ] ; 6 uses
  %i.fl = phi ptr [ %i.gi, %.critedge2 ], [ %i.ec, %.lr.ph ]
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv
  %i.fo = load atomic volatile i64, ptr %i.fn monotonic, align 8 ; 2 uses
  %i.fp = and i64 %i.fo, 4294967295
  %i.fq = icmp eq i64 %i.fp, 3
  br i1 %i.fq, label %.critedge2.thread.loopexit274.split.loop.exit280, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.split
  %i.fr = and i64 %i.fo, -3                       ; 3 uses
  %i.fs = load ptr, ptr %i.ei, align 8            ; 2 uses
  %i.ft = load ptr, ptr %i.ej, align 8
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %bb.as, label %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !11

bb.as:                                            ; preds = %bb.ar
  %i.fv = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.b) #17
  br label %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.ar, %bb.as
  %.0.i.i69 = phi ptr [ %i.fv, %bb.as ], [ %i.fs, %bb.ar ] ; 3 uses
  %i.fw = ptrtoint ptr %.0.i.i69 to i64
  %i.fx = add i64 %i.fw, 8
  %i.fy = inttoptr i64 %i.fx to ptr
  store ptr %i.fy, ptr %i.ei, align 8
  store i64 %i.fr, ptr %.0.i.i69, align 8
  %i.fz = icmp eq ptr %.0.i.i69, %.fr257
  br i1 %i.fz, label %.critedge2.thread.loopexit274.split.loop.exit276, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit: ; preds = %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.ga = load i64, ptr %.fr257, align 8
  %i.gb = icmp eq i64 %i.fr, %i.ga
  br i1 %i.gb, label %.critedge2.thread.loopexit274.split.loop.exit278, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread238

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread238: ; preds = %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit
  %i.gc = add i64 %i.fr, 15
  %i.gd = inttoptr i64 %i.gc to ptr
  %i.ge = load atomic volatile i32, ptr %i.gd acquire, align 4
  %i.gf = and i32 %i.ge, 16777216
  %.not241 = icmp eq i32 %i.gf, 0
  br i1 %.not241, label %.critedge2, label %.critedge2.thread.loopexit274.split.loop.exit

.critedge2:                                       ; preds = %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread238
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  %i.gg = load i64, ptr %.sroa.0187.0, align 8
  %i.gh = add i64 %i.gg, -1
  %i.gi = inttoptr i64 %i.gh to ptr               ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = load i64, ptr %i.gj, align 8
  %i.gl = lshr i64 %i.gk, 32
  %i.gm = trunc nuw i64 %i.gl to i32
  %i.gn = icmp slt i32 %indvars, %i.gm
  br i1 %i.gn, label %.lr.ph.split, label %.critedge2.thread, !llvm.loop !30

.critedge2.thread.loopexit.split.loop.exit:       ; preds = %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread238.us
  %i.go = trunc nuw nsw i64 %indvars.iv261 to i32
  br label %.critedge2.thread

.critedge2.thread.loopexit.split.loop.exit287:    ; preds = %.lr.ph.split.us
  %i.gp = trunc nuw nsw i64 %indvars.iv261 to i32
  br label %.critedge2.thread

.critedge2.thread.loopexit274.split.loop.exit:    ; preds = %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread238
  %i.gq = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge2.thread

.critedge2.thread.loopexit274.split.loop.exit276: ; preds = %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.gr = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge2.thread

.critedge2.thread.loopexit274.split.loop.exit278: ; preds = %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit
  %i.gs = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge2.thread

.critedge2.thread.loopexit274.split.loop.exit280: ; preds = %.lr.ph.split
  %i.gt = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge2.thread

.critedge2.thread:                                ; preds = %.critedge2, %.critedge2.us, %.critedge2.thread.loopexit274.split.loop.exit, %.critedge2.thread.loopexit274.split.loop.exit276, %.critedge2.thread.loopexit274.split.loop.exit278, %.critedge2.thread.loopexit274.split.loop.exit280, %.critedge2.thread.loopexit.split.loop.exit, %.critedge2.thread.loopexit.split.loop.exit287, %bb.ao
  %.0.lcssa = phi i32 [ 0, %bb.ao ], [ %indvars263, %.critedge2.us ], [ %i.go, %.critedge2.thread.loopexit.split.loop.exit ], [ %i.gp, %.critedge2.thread.loopexit.split.loop.exit287 ], [ %i.gs, %.critedge2.thread.loopexit274.split.loop.exit278 ], [ %i.gt, %.critedge2.thread.loopexit274.split.loop.exit280 ], [ %i.gr, %.critedge2.thread.loopexit274.split.loop.exit276 ], [ %i.gq, %.critedge2.thread.loopexit274.split.loop.exit ], [ %indvars, %.critedge2 ] ; 3 uses
  %i.gu = load i64, ptr %.sroa.0187.0, align 8
  %i.gv = add i64 %i.gu, -1
  %i.gw = inttoptr i64 %i.gv to ptr
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gy = load i64, ptr %i.gx, align 8
  %i.gz = lshr i64 %i.gy, 32
  %i.ha = trunc nuw i64 %i.gz to i32              ; 2 uses
  %.not = icmp slt i32 %.0.lcssa, %i.ha
  br i1 %.not, label %_ZN2v88internal13FeedbackNexus11SetFeedbackINS0_14WeakFixedArrayEEEvNS0_6TaggedIT_EENS0_16WriteBarrierModeE.exit, label %bb.at

bb.at:                                            ; preds = %.critedge2.thread
  %i.hb = icmp eq i32 %.0.lcssa, %i.dz
  br i1 %i.hb, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %bb.at
  %i.hc = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 7872
  %i.he = load i64, ptr %i.hd, align 8
  %i.hf = load ptr, ptr %0, align 8               ; 2 uses
  %i.hg = icmp eq ptr %i.hf, null
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.in.i.i114 = select i1 %i.hg, ptr %i.hh, ptr %i.hf
  %.sroa.0.0.i.i115 = load i64, ptr %.sroa.0.0.in.i.i114, align 8 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i116 = load i32, ptr %i.hi, align 8 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hk = load ptr, ptr %i.hj, align 8
  %.not.i.i = icmp eq ptr %i.hk, null
  br i1 %.not.i.i, label %bb.aw, label %bb.av, !prof !9

bb.av:                                            ; preds = %bb.au
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #18
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.hl = add i64 %.sroa.0.0.i.i115, 7
  %i.hm = inttoptr i64 %i.hl to ptr
  %i.hn = load i32, ptr %i.hm, align 4
  %i.ho = add nsw i32 %.sroa.0.0.copyload.i.i116, 1 ; 2 uses
  %i.hp = icmp sgt i32 %i.hn, %i.ho
  br i1 %i.hp, label %_ZNK2v88internal11NexusConfig15SetFeedbackPairENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotENS2_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeES9_SA_.exit, label %bb.ax, !prof !9

bb.ax:                                            ; preds = %bb.aw
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.29) #18
  unreachable

_ZNK2v88internal11NexusConfig15SetFeedbackPairENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotENS2_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeES9_SA_.exit: ; preds = %bb.aw
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hc, i64 58688 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hq) #17
  %i.hr = shl nsw i32 %.sroa.0.0.copyload.i.i116, 3
  %i.hs = sext i32 %i.hr to i64
  %i.ht = add i64 %.sroa.0.0.i.i115, 47           ; 2 uses
  %i.hu = add i64 %i.ht, %i.hs
  %i.hv = inttoptr i64 %i.hu to ptr
  store atomic volatile i64 %i.he, ptr %i.hv monotonic, align 8
  %i.hw = shl nsw i32 %i.ho, 3
  %i.hx = sext i32 %i.hw to i64
  %i.hy = add i64 %i.ht, %i.hx
  %i.hz = inttoptr i64 %i.hy to ptr
  store atomic volatile i64 3, ptr %i.hz monotonic, align 8
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hq) #17
  br label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit146

bb.ay:                                            ; preds = %bb.at
  %i.ia = add nsw i32 %i.ha, 2
  %i.ib = load ptr, ptr %i.a, align 8
  %i.ic = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewWeakFixedArrayEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %i.ib, i32 noundef %i.ia, i8 noundef zeroext 0) #17 ; 5 uses
  %i.id = load i64, ptr %.sroa.0187.0, align 8
  %i.ie = add i64 %i.id, -1
  %i.if = inttoptr i64 %i.ie to ptr               ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ih = load i64, ptr %i.ig, align 8
  %i.ii = lshr i64 %i.ih, 32
  %i.ij = trunc nuw i64 %i.ii to i32
  %i.ik = icmp sgt i32 %i.ij, 0
  br i1 %i.ik, label %.lr.ph256, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit128, %bb.ay
  %i.il = load i64, ptr %i.ic, align 8            ; 5 uses
  %i.im = load ptr, ptr %0, align 8               ; 2 uses
  %i.in = icmp eq ptr %i.im, null
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.in.i.i117 = select i1 %i.in, ptr %i.io, ptr %i.im
  %.sroa.0.0.i.i118 = load i64, ptr %.sroa.0.0.in.i.i117, align 8 ; 4 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i119 = load i32, ptr %i.ip, align 8
  %i.iq = shl nsw i32 %.sroa.0.0.copyload.i.i119, 3
  %i.ir = sext i32 %i.iq to i64
  %i.is = add i64 %.sroa.0.0.i.i118, 47
  %i.it = add i64 %i.is, %i.ir                    ; 3 uses
  %i.iu = inttoptr i64 %i.it to ptr
  store atomic volatile i64 %i.il, ptr %i.iu release, align 8
  %i.iv = trunc i64 %i.il to i1
  %i.iw = and i64 %i.il, 4294967295
  %i.ix = icmp ne i64 %i.iw, 3
  %i.iy = and i1 %i.ix, %i.iv
  br i1 %i.iy, label %bb.az, label %_ZN2v88internal13FeedbackNexus11SetFeedbackINS0_14WeakFixedArrayEEEvNS0_6TaggedIT_EENS0_16WriteBarrierModeE.exit

bb.az:                                            ; preds = %._crit_edge
  %i.iz = and i64 %i.il, -3                       ; 2 uses
  %i.ja = and i64 %.sroa.0.0.i.i118, -262144
  %i.jb = inttoptr i64 %i.ja to ptr
  %i.jc = load i64, ptr %i.jb, align 262144       ; 2 uses
  %i.jd = and i64 %i.jc, 32
  %.not.i.i.i.i.i120 = icmp eq i64 %i.jd, 0
  %i.je = and i64 %i.jc, 25
  %.not38.i.i.i.i.i121 = icmp eq i64 %i.je, 0
  br i1 %.not38.i.i.i.i.i121, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.jf = and i64 %i.il, -262144
  %i.jg = inttoptr i64 %i.jf to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i122 = load i64, ptr %i.jg, align 262144
  %i.jh = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i122, 25
  %.not39.i.i.i.i.i123 = icmp eq i64 %i.jh, 0
  br i1 %.not39.i.i.i.i.i123, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %.sroa.0.0.i.i118, i64 noundef %i.it, i64 %i.iz) #17
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  br i1 %.not.i.i.i.i.i120, label %_ZN2v88internal13FeedbackNexus11SetFeedbackINS0_14WeakFixedArrayEEEvNS0_6TaggedIT_EENS0_16WriteBarrierModeE.exit, label %bb.bd, !prof !9

bb.bd:                                            ; preds = %bb.bc
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %.sroa.0.0.i.i118, i64 %i.it, i64 %i.iz) #17
  br label %_ZN2v88internal13FeedbackNexus11SetFeedbackINS0_14WeakFixedArrayEEEvNS0_6TaggedIT_EENS0_16WriteBarrierModeE.exit

.lr.ph256:                                        ; preds = %bb.ay, %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit128
  %indvars.iv265 = phi i64 [ %indvars.iv.next266, %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit128 ], [ 0, %bb.ay ] ; 3 uses
  %i.ji = phi ptr [ %i.ki, %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit128 ], [ %i.if, %bb.ay ]
  %i.jj = load i64, ptr %i.ic, align 8
  %i.jk = add i64 %i.jj, -1                       ; 3 uses
  %i.jl = inttoptr i64 %i.jk to ptr
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %indvars.iv265
  %i.jo = load atomic volatile i64, ptr %i.jn monotonic, align 8 ; 5 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %indvars.iv265 ; 2 uses
  store atomic volatile i64 %i.jo, ptr %i.jq monotonic, align 8
  %i.jr = trunc i64 %i.jo to i1
  %i.js = and i64 %i.jo, 4294967295
  %i.jt = icmp ne i64 %i.js, 3
  %i.ju = and i1 %i.jt, %i.jr
  br i1 %i.ju, label %bb.be, label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit128

bb.be:                                            ; preds = %.lr.ph256
  %i.jv = and i64 %i.jo, -3                       ; 2 uses
  %i.jw = or disjoint i64 %i.jk, 1                ; 2 uses
  %i.jx = ptrtoint ptr %i.jq to i64               ; 2 uses
  %i.jy = and i64 %i.jk, -262144
  %i.jz = inttoptr i64 %i.jy to ptr
  %i.ka = load i64, ptr %i.jz, align 262144       ; 2 uses
  %i.kb = and i64 %i.ka, 32
  %.not.i.i.i.i.i124 = icmp eq i64 %i.kb, 0
  %i.kc = and i64 %i.ka, 25
  %.not38.i.i.i.i.i125 = icmp eq i64 %i.kc, 0
  br i1 %.not38.i.i.i.i.i125, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.kd = and i64 %i.jo, -262144
  %i.ke = inttoptr i64 %i.kd to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i126 = load i64, ptr %i.ke, align 262144
  %i.kf = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i126, 25
  %.not39.i.i.i.i.i127 = icmp eq i64 %i.kf, 0
  br i1 %.not39.i.i.i.i.i127, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.jw, i64 noundef %i.jx, i64 %i.jv) #17
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.be
  br i1 %.not.i.i.i.i.i124, label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit128, label %bb.bi, !prof !9

bb.bi:                                            ; preds = %bb.bh
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.jw, i64 %i.jx, i64 %i.jv) #17
  br label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit128

_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit128: ; preds = %.lr.ph256, %bb.bh, %bb.bi
  %indvars.iv.next266 = add nuw nsw i64 %indvars.iv265, 1 ; 2 uses
  %i.kg = load i64, ptr %.sroa.0187.0, align 8
  %i.kh = add i64 %i.kg, -1
  %i.ki = inttoptr i64 %i.kh to ptr               ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kk = load i64, ptr %i.kj, align 8
  %i.kl = ashr i64 %i.kk, 32
  %i.km = icmp slt i64 %indvars.iv.next266, %i.kl
  br i1 %i.km, label %.lr.ph256, label %._crit_edge, !llvm.loop !31

_ZN2v88internal13FeedbackNexus11SetFeedbackINS0_14WeakFixedArrayEEEvNS0_6TaggedIT_EENS0_16WriteBarrierModeE.exit: ; preds = %bb.bd, %bb.bc, %._crit_edge, %.critedge2.thread
  %.sroa.0173.0 = phi ptr [ %.sroa.0187.0, %.critedge2.thread ], [ %i.ic, %._crit_edge ], [ %i.ic, %bb.bc ], [ %i.ic, %bb.bd ] ; 2 uses
  %i.kn = load i64, ptr %.sroa.0173.0, align 8
  %i.ko = add i64 %i.kn, -1                       ; 3 uses
  %i.kp = inttoptr i64 %i.ko to ptr
  %i.kq = load i64, ptr %.fr257, align 8          ; 2 uses
  %i.kr = or i64 %i.kq, 3                         ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.kt = zext nneg i32 %.0.lcssa to i64          ; 2 uses
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %i.kt ; 2 uses
  store atomic volatile i64 %i.kr, ptr %i.ku monotonic, align 8
  %i.kv = and i64 %i.kr, 4294967295
  %.not242 = icmp eq i64 %i.kv, 3
  br i1 %.not242, label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit133, label %bb.bj

bb.bj:                                            ; preds = %_ZN2v88internal13FeedbackNexus11SetFeedbackINS0_14WeakFixedArrayEEEvNS0_6TaggedIT_EENS0_16WriteBarrierModeE.exit
  %i.kw = and i64 %i.kr, -3                       ; 2 uses
  %i.kx = or disjoint i64 %i.ko, 1                ; 2 uses
  %i.ky = ptrtoint ptr %i.ku to i64               ; 2 uses
  %i.kz = and i64 %i.ko, -262144
  %i.la = inttoptr i64 %i.kz to ptr
  %i.lb = load i64, ptr %i.la, align 262144       ; 2 uses
  %i.lc = and i64 %i.lb, 32
  %.not.i.i.i.i.i129 = icmp eq i64 %i.lc, 0
  %i.ld = and i64 %i.lb, 25
  %.not38.i.i.i.i.i130 = icmp eq i64 %i.ld, 0
  br i1 %.not38.i.i.i.i.i130, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %i.le = and i64 %i.kq, -262144
  %i.lf = inttoptr i64 %i.le to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i131 = load i64, ptr %i.lf, align 262144
  %i.lg = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i131, 25
  %.not39.i.i.i.i.i132 = icmp eq i64 %i.lg, 0
  br i1 %.not39.i.i.i.i.i132, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.kx, i64 noundef %i.ky, i64 %i.kw) #17
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %bb.bj
  br i1 %.not.i.i.i.i.i129, label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit133, label %bb.bn, !prof !9

bb.bn:                                            ; preds = %bb.bm
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.kx, i64 %i.ky, i64 %i.kw) #17
  br label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit133

_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit133: ; preds = %_ZN2v88internal13FeedbackNexus11SetFeedbackINS0_14WeakFixedArrayEEEvNS0_6TaggedIT_EENS0_16WriteBarrierModeE.exit, %bb.bm, %bb.bn
  %i.lh = load i64, ptr %.sroa.0173.0, align 8
  %i.li = add i64 %i.lh, -1                       ; 3 uses
  %i.lj = inttoptr i64 %i.li to ptr
  %i.lk = icmp eq i32 %.sroa.0192.0.copyload, 0
  %i.ll = icmp eq ptr %.sroa.7193.0.copyload, null ; 2 uses
  br i1 %i.lk, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit133
  br i1 %i.ll, label %bb.bp, label %._ZNK2v88internal17MaybeObjectHandledeEv.exit11_crit_edge.i139, !prof !11

._ZNK2v88internal17MaybeObjectHandledeEv.exit11_crit_edge.i139: ; preds = %bb.bo
  %.sroa.05.0.i9.in.pre.i140 = load i64, ptr %.sroa.7193.0.copyload, align 8
  br label %_ZNK2v88internal17MaybeObjectHandledeEv.exit11.i135

bb.bp:                                            ; preds = %bb.bo
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.41) #18
  unreachable

bb.bq:                                            ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit133
  br i1 %i.ll, label %bb.br, label %_ZNK2v88internal17MaybeObjectHandledeEv.exit.thread.i134, !prof !11

bb.br:                                            ; preds = %bb.bq
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.41) #18
  unreachable

_ZNK2v88internal17MaybeObjectHandledeEv.exit.thread.i134: ; preds = %bb.bq
  %i.lm = load i64, ptr %.sroa.7193.0.copyload, align 8 ; 3 uses
  %i.ln = and i64 %i.lm, 1
  %i.lo = icmp eq i64 %i.ln, 0
  br i1 %i.lo, label %"_ZZN2v88internal13FeedbackNexus20ConfigureCloneObjectENS0_12DirectHandleINS0_3MapEEERKNS0_17MaybeObjectHandleEENK3$_0clEv.exit141", label %_ZNK2v88internal17MaybeObjectHandledeEv.exit11.i135

_ZNK2v88internal17MaybeObjectHandledeEv.exit11.i135: ; preds = %_ZNK2v88internal17MaybeObjectHandledeEv.exit.thread.i134, %._ZNK2v88internal17MaybeObjectHandledeEv.exit11_crit_edge.i139
  %.sroa.05.0.i9.in.i136 = phi i64 [ %.sroa.05.0.i9.in.pre.i140, %._ZNK2v88internal17MaybeObjectHandledeEv.exit11_crit_edge.i139 ], [ %i.lm, %_ZNK2v88internal17MaybeObjectHandledeEv.exit.thread.i134 ]
  %.sroa.05.0.i9.i137 = or i64 %.sroa.05.0.i9.in.i136, 3
  br label %"_ZZN2v88internal13FeedbackNexus20ConfigureCloneObjectENS0_12DirectHandleINS0_3MapEEERKNS0_17MaybeObjectHandleEENK3$_0clEv.exit141"

"_ZZN2v88internal13FeedbackNexus20ConfigureCloneObjectENS0_12DirectHandleINS0_3MapEEERKNS0_17MaybeObjectHandleEENK3$_0clEv.exit141": ; preds = %_ZNK2v88internal17MaybeObjectHandledeEv.exit.thread.i134, %_ZNK2v88internal17MaybeObjectHandledeEv.exit11.i135
  %.sroa.03.0.i138 = phi i64 [ %.sroa.05.0.i9.i137, %_ZNK2v88internal17MaybeObjectHandledeEv.exit11.i135 ], [ %i.lm, %_ZNK2v88internal17MaybeObjectHandledeEv.exit.thread.i134 ] ; 5 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %i.kt
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 24 ; 2 uses
  store atomic volatile i64 %.sroa.03.0.i138, ptr %i.lq monotonic, align 8
  %i.lr = trunc i64 %.sroa.03.0.i138 to i1
  %i.ls = and i64 %.sroa.03.0.i138, 4294967295
  %i.lt = icmp ne i64 %i.ls, 3
  %i.lu = and i1 %i.lt, %i.lr
  br i1 %i.lu, label %bb.bs, label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit146

bb.bs:                                            ; preds = %"_ZZN2v88internal13FeedbackNexus20ConfigureCloneObjectENS0_12DirectHandleINS0_3MapEEERKNS0_17MaybeObjectHandleEENK3$_0clEv.exit141"
  %i.lv = and i64 %.sroa.03.0.i138, -3            ; 2 uses
  %i.lw = or disjoint i64 %i.li, 1                ; 2 uses
  %i.lx = ptrtoint ptr %i.lq to i64               ; 2 uses
  %i.ly = and i64 %i.li, -262144
  %i.lz = inttoptr i64 %i.ly to ptr
  %i.ma = load i64, ptr %i.lz, align 262144       ; 2 uses
  %i.mb = and i64 %i.ma, 32
  %.not.i.i.i.i.i142 = icmp eq i64 %i.mb, 0
  %i.mc = and i64 %i.ma, 25
  %.not38.i.i.i.i.i143 = icmp eq i64 %i.mc, 0
  br i1 %.not38.i.i.i.i.i143, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %i.md = and i64 %.sroa.03.0.i138, -262144
  %i.me = inttoptr i64 %i.md to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i144 = load i64, ptr %i.me, align 262144
  %i.mf = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i144, 25
  %.not39.i.i.i.i.i145 = icmp eq i64 %i.mf, 0
  br i1 %.not39.i.i.i.i.i145, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.lw, i64 noundef %i.lx, i64 %i.lv) #17
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %bb.bs
  br i1 %.not.i.i.i.i.i142, label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit146, label %bb.bw, !prof !9

bb.bw:                                            ; preds = %bb.bv
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.lw, i64 %i.lx, i64 %i.lv) #17
  br label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit146

bb.bx:                                            ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.26) #18
  unreachable

_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit146: ; preds = %_ZNK2v88internal11NexusConfig15SetFeedbackPairENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotENS2_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeES9_SA_.exit, %"_ZZN2v88internal13FeedbackNexus20ConfigureCloneObjectENS0_12DirectHandleINS0_3MapEEERKNS0_17MaybeObjectHandleEENK3$_0clEv.exit141", %bb.bv, %bb.bw, %"_ZZN2v88internal13FeedbackNexus20ConfigureCloneObjectENS0_12DirectHandleINS0_3MapEEERKNS0_17MaybeObjectHandleEENK3$_0clEv.exit84", %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit110, %"_ZZN2v88internal13FeedbackNexus20ConfigureCloneObjectENS0_12DirectHandleINS0_3MapEEERKNS0_17MaybeObjectHandleEENK3$_0clEv.exit"
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 536870912) i32 @_ZN2v88internal13FeedbackNexus12GetCallCountEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { i64, i64 } @_ZNK2v88internal13FeedbackNexus15GetFeedbackPairEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.b = extractvalue { i64, i64 } %i.a, 1        ; 2 uses
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.32) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %sum.shift = lshr i64 %i.b, 35
  %i.e = trunc nuw nsw i64 %sum.shift to i32
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal13FeedbackNexus18SetSpeculationModeENS0_15SpeculationModeE(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { i64, i64 } @_ZNK2v88internal13FeedbackNexus15GetFeedbackPairEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.b = extractvalue { i64, i64 } %i.a, 1        ; 2 uses
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.32) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = lshr i64 %i.b, 32
  %i.f = trunc nuw i64 %i.e to i32
  %i.g = and i32 %i.f, -4
  %i.h = or i32 %i.g, %1
  %i.i = tail call { i64, i64 } @_ZNK2v88internal13FeedbackNexus15GetFeedbackPairEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.j = extractvalue { i64, i64 } %i.i, 0
  %i.k = sext i32 %i.h to i64
  %i.l = shl nsw i64 %i.k, 32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load ptr, ptr %0, align 8                ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.in.i.i = select i1 %i.o, ptr %i.p, ptr %i.n
  %.sroa.0.0.i.i = load i64, ptr %.sroa.0.0.in.i.i, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.q, align 8
  tail call void @_ZNK2v88internal11NexusConfig15SetFeedbackPairENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotENS2_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeES9_SA_(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 %.sroa.0.0.i.i, i32 %.sroa.0.0.copyload.i.i, i64 %i.j, i32 noundef 4, i64 %i.l, i32 noundef 0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal13FeedbackNexus19NextSpeculationModeENS0_15SpeculationModeE(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { i64, i64 } @_ZNK2v88internal13FeedbackNexus15GetFeedbackPairEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.b = extractvalue { i64, i64 } %i.a, 1        ; 2 uses
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZN2v88internal13FeedbackNexus18GetSpeculationModeEv.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.32) #18
  unreachable

_ZN2v88internal13FeedbackNexus18GetSpeculationModeEv.exit: ; preds = %bb.a
  %i.e = and i64 %i.b, 12884901888
  %i.f = icmp eq i64 %i.e, 0
  %i.g = tail call { i64, i64 } @_ZNK2v88internal13FeedbackNexus15GetFeedbackPairEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.h = extractvalue { i64, i64 } %i.g, 1        ; 3 uses
  %i.i = and i64 %i.h, 1
  %i.j = icmp eq i64 %i.i, 0                      ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN2v88internal13FeedbackNexus18GetSpeculationModeEv.exit
  br i1 %i.j, label %_ZN2v88internal13FeedbackNexus18SetSpeculationModeENS0_15SpeculationModeE.exit, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.32) #18
  unreachable

_ZN2v88internal13FeedbackNexus18SetSpeculationModeENS0_15SpeculationModeE.exit: ; preds = %bb.c
  %i.k = lshr i64 %i.h, 32
  %i.l = trunc nuw i64 %i.k to i32
  %i.m = and i32 %i.l, -4
  %i.n = or i32 %i.m, %1
  %i.o = tail call { i64, i64 } @_ZNK2v88internal13FeedbackNexus15GetFeedbackPairEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = sext i32 %i.n to i64
  %i.r = shl nsw i64 %i.q, 32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = load ptr, ptr %0, align 8                ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.in.i.i.i = select i1 %i.u, ptr %i.v, ptr %i.t
  %.sroa.0.0.i.i.i = load i64, ptr %.sroa.0.0.in.i.i.i, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.w, align 8
  tail call void @_ZNK2v88internal11NexusConfig15SetFeedbackPairENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotENS2_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeES9_SA_(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 %.sroa.0.0.i.i.i, i32 %.sroa.0.0.copyload.i.i.i, i64 %i.p, i32 noundef 4, i64 %i.r, i32 noundef 0)
  br label %bb.g

bb.e:                                             ; preds = %_ZN2v88internal13FeedbackNexus18GetSpeculationModeEv.exit
  br i1 %i.j, label %_ZN2v88internal13FeedbackNexus18SetSpeculationModeENS0_15SpeculationModeE.exit5, label %bb.f, !prof !9

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.32) #18
  unreachable

_ZN2v88internal13FeedbackNexus18SetSpeculationModeENS0_15SpeculationModeE.exit5: ; preds = %bb.e
  %i.x = tail call { i64, i64 } @_ZNK2v88internal13FeedbackNexus15GetFeedbackPairEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.y = extractvalue { i64, i64 } %i.x, 0
  %i.z = and i64 %i.h, -17179869184
  %i.aa = or disjoint i64 %i.z, 12884901888
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %0, align 8               ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.in.i.i.i2 = select i1 %i.ad, ptr %i.ae, ptr %i.ac
  %.sroa.0.0.i.i.i3 = load i64, ptr %.sroa.0.0.in.i.i.i2, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i4 = load i32, ptr %i.af, align 8
  tail call void @_ZNK2v88internal11NexusConfig15SetFeedbackPairENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotENS2_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeES9_SA_(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 %.sroa.0.0.i.i.i3, i32 %.sroa.0.0.copyload.i.i.i4, i64 %i.y, i32 noundef 4, i64 %i.aa, i32 noundef 0)
  br label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal13FeedbackNexus18SetSpeculationModeENS0_15SpeculationModeE.exit5, %_ZN2v88internal13FeedbackNexus18SetSpeculationModeENS0_15SpeculationModeE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 4) i32 @_ZN2v88internal13FeedbackNexus18GetSpeculationModeEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { i64, i64 } @_ZNK2v88internal13FeedbackNexus15GetFeedbackPairEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.b = extractvalue { i64, i64 } %i.a, 1        ; 2 uses
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.32) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = lshr i64 %i.b, 32
  %i.f = trunc nuw i64 %i.e to i32
  %i.g = and i32 %i.f, 3
  ret i32 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN2v88internal13FeedbackNexus22GetCallFeedbackContentEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { i64, i64 } @_ZNK2v88internal13FeedbackNexus15GetFeedbackPairEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.b = extractvalue { i64, i64 } %i.a, 1        ; 2 uses
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.32) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %sum.shift = lshr i64 %i.b, 34
  %i.e = trunc nuw nsw i64 %sum.shift to i32
  %i.f = and i32 %i.e, 1
  ret i32 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef float @_ZN2v88internal13FeedbackNexus20ComputeCallFrequencyEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.in.i = select i1 %i.b, ptr %i.c, ptr %i.a
  %.sroa.0.0.i = load i64, ptr %.sroa.0.0.in.i, align 8
  %i.d = add i64 %.sroa.0.0.i, 11
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i32, ptr %i.e monotonic, align 4 ; 2 uses
  %i.g = tail call { i64, i64 } @_ZNK2v88internal13FeedbackNexus15GetFeedbackPairEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.h = extractvalue { i64, i64 } %i.g, 1        ; 2 uses
  %i.i = and i64 %i.h, 1
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZN2v88internal13FeedbackNexus12GetCallCountEv.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.32) #18
  unreachable

_ZN2v88internal13FeedbackNexus12GetCallCountEv.exit: ; preds = %bb.a
  %sum.shift.i = lshr i64 %i.h, 35
  %i.k = trunc nuw nsw i64 %sum.shift.i to i32
  %i.l = icmp eq i32 %i.f, 0
  %i.m = sitofp i32 %i.f to double
  %i.n = uitofp nneg i32 %i.k to double
  %i.o = fdiv double %i.n, %i.m
  %i.p = fptrunc double %i.o to float
  %.0 = select i1 %i.l, float 0.000000e+00, float %i.p
  ret float %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal13FeedbackNexus20ConfigureMonomorphicENS0_12DirectHandleINS0_4NameEEENS2_INS0_3MapEEERKNS0_23MaybeObjectDirectHandleE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr nofree readonly captures(address_is_null) %1, ptr nofree readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i8, ptr %i.a, align 4
  %i.c = icmp eq i8 %i.b, 18
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %2, align 8
  %i.e = or i64 %i.d, 3
  %i.f = load i64, ptr %1, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.in.i.i = select i1 %i.i, ptr %i.j, ptr %i.h
  %.sroa.0.0.i.i = load i64, ptr %.sroa.0.0.in.i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.k, align 8
  tail call void @_ZNK2v88internal11NexusConfig15SetFeedbackPairENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotENS2_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeES9_SA_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 %.sroa.0.0.i.i, i32 %.sroa.0.0.copyload.i.i, i64 %i.e, i32 noundef 4, i64 %i.f, i32 noundef 4)
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq ptr %1, null
  br i1 %i.l, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %2, align 8
  %i.n = or i64 %i.m, 3
  %i.o = load i32, ptr %3, align 8
  %i.p = icmp eq i32 %i.o, 0
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  %i.s = icmp eq ptr %i.r, null                   ; 2 uses
  br i1 %i.p, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  br i1 %i.s, label %bb.f, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i, !prof !11

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.41) #18
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i: ; preds = %bb.e
  %i.t = load i64, ptr %i.r, align 8
  %i.u = or i64 %i.t, 3
  br label %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit

bb.g:                                             ; preds = %bb.d
  br i1 %i.s, label %bb.h, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i, !prof !11

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.41) #18
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i: ; preds = %bb.g
  %i.v = load i64, ptr %i.r, align 8
  br label %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit

_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i
  %.sroa.05.0.i = phi i64 [ %i.u, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i ], [ %i.v, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = load ptr, ptr %0, align 8                ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.in.i.i15 = select i1 %i.y, ptr %i.z, ptr %i.x
  %.sroa.0.0.i.i16 = load i64, ptr %.sroa.0.0.in.i.i15, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i17 = load i32, ptr %i.aa, align 8
  tail call void @_ZNK2v88internal11NexusConfig15SetFeedbackPairENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotENS2_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeES9_SA_(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 %.sroa.0.0.i.i16, i32 %.sroa.0.0.copyload.i.i17, i64 %i.n, i32 noundef 4, i64 %.sroa.05.0.i, i32 noundef 4)
  br label %bb.x

bb.i:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewWeakFixedArrayEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %i.ac, i32 noundef 2, i8 noundef zeroext 0) #17 ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = add i64 %i.ae, -1                       ; 3 uses
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load i64, ptr %2, align 8               ; 2 uses
  %i.ai = or i64 %i.ah, 3                         ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  store atomic volatile i64 %i.ai, ptr %i.aj monotonic, align 8
  %i.ak = and i64 %i.ai, 4294967295
  %.not = icmp eq i64 %i.ak, 3
  br i1 %.not, label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = and i64 %i.ai, -3                       ; 2 uses
  %i.am = or disjoint i64 %i.af, 1                ; 2 uses
  %i.an = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.ao = and i64 %i.af, -262144
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load i64, ptr %i.ap, align 262144       ; 2 uses
  %i.ar = and i64 %i.aq, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.ar, 0
  %i.as = and i64 %i.aq, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not38.i.i.i.i.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.at = and i64 %i.ah, -262144
  %i.au = inttoptr i64 %i.at to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i = load i64, ptr %i.au, align 262144
  %i.av = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i, 25
  %.not39.i.i.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not39.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.am, i64 noundef %i.an, i64 %i.al) #17
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit, label %bb.n, !prof !9

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.am, i64 %i.an, i64 %i.al) #17
  br label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.i, %bb.m, %bb.n
  %i.aw = load i64, ptr %i.ad, align 8
  %i.ax = add i64 %i.aw, -1                       ; 3 uses
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = load i32, ptr %3, align 8
  %i.ba = icmp eq i32 %i.az, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8            ; 3 uses
  %i.bd = icmp eq ptr %i.bc, null                 ; 2 uses
  br i1 %i.ba, label %bb.o, label %bb.q

bb.o:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit
  br i1 %i.bd, label %bb.p, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i20, !prof !11

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.41) #18
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i20: ; preds = %bb.o
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = or i64 %i.be, 3
  br label %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit21

bb.q:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit
  br i1 %i.bd, label %bb.r, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i18, !prof !11

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.41) #18
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i18: ; preds = %bb.q
  %i.bg = load i64, ptr %i.bc, align 8
  br label %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit21

_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit21: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i20, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i18
  %.sroa.05.0.i19 = phi i64 [ %i.bf, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i20 ], [ %i.bg, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i18 ] ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 2 uses
  store atomic volatile i64 %.sroa.05.0.i19, ptr %i.bh monotonic, align 8
  %i.bi = trunc i64 %.sroa.05.0.i19 to i1
  %i.bj = and i64 %.sroa.05.0.i19, 4294967295
  %i.bk = icmp ne i64 %i.bj, 3
  %i.bl = and i1 %i.bk, %i.bi
  br i1 %i.bl, label %bb.s, label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit26

bb.s:                                             ; preds = %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit21
  %i.bm = and i64 %.sroa.05.0.i19, -3             ; 2 uses
  %i.bn = or disjoint i64 %i.ax, 1                ; 2 uses
  %i.bo = ptrtoint ptr %i.bh to i64               ; 2 uses
  %i.bp = and i64 %i.ax, -262144
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = load i64, ptr %i.bq, align 262144       ; 2 uses
  %i.bs = and i64 %i.br, 32
  %.not.i.i.i.i.i22 = icmp eq i64 %i.bs, 0
  %i.bt = and i64 %i.br, 25
  %.not38.i.i.i.i.i23 = icmp eq i64 %i.bt, 0
  br i1 %.not38.i.i.i.i.i23, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bu = and i64 %.sroa.05.0.i19, -262144
  %i.bv = inttoptr i64 %i.bu to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i24 = load i64, ptr %i.bv, align 262144
  %i.bw = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i24, 25
  %.not39.i.i.i.i.i25 = icmp eq i64 %i.bw, 0
  br i1 %.not39.i.i.i.i.i25, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.bn, i64 noundef %i.bo, i64 %i.bm) #17
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  br i1 %.not.i.i.i.i.i22, label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit26, label %bb.w, !prof !9

bb.w:                                             ; preds = %bb.v
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.bn, i64 %i.bo, i64 %i.bm) #17
  br label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit26

_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit26: ; preds = %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit21, %bb.v, %bb.w
  %i.bx = load i64, ptr %1, align 8
  %i.by = load i64, ptr %i.ad, align 8
  %i.bz = load ptr, ptr %0, align 8               ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.in.i.i27 = select i1 %i.ca, ptr %i.cb, ptr %i.bz
  %.sroa.0.0.i.i28 = load i64, ptr %.sroa.0.0.in.i.i27, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i29 = load i32, ptr %i.cc, align 8
  tail call void @_ZNK2v88internal11NexusConfig15SetFeedbackPairENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotENS2_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeES9_SA_(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 %.sroa.0.0.i.i28, i32 %.sroa.0.0.copyload.i.i29, i64 %i.bx, i32 noundef 4, i64 %i.by, i32 noundef 4)
  br label %bb.x

bb.x:                                             ; preds = %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit, %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit26, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal13FeedbackNexus20ConfigurePolymorphicENS0_12DirectHandleINS0_4NameEEERKNS0_15MapsAndHandlersE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr nofree readonly captures(address_is_null) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %2, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 3                   ; 2 uses
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = shl nsw i32 %i.h, 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewWeakFixedArrayEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %i.k, i32 noundef %i.i, i8 noundef zeroext 0) #17 ; 4 uses
  %i.m = icmp sgt i32 %i.h, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 56
  %wide.trip.count = and i64 %i.g, 2147483647
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit24, %bb.a
  %i.p = icmp eq ptr %1, null
  br i1 %i.p, label %bb.q, label %bb.r

bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit24
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit24 ] ; 5 uses
  %i.q = load ptr, ptr %i.n, align 8, !noalias !35
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 4, !noalias !35 ; 2 uses
  %switch = icmp ult i32 %i.s, 2
  br i1 %switch, label %.sink.split.i, label %_ZNK2v88internal15MapsAndHandlersixEm.exit

.sink.split.i:                                    ; preds = %bb.b
  %i.t = load ptr, ptr %i.o, align 8, !noalias !35
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %.sroa.0.0.copyload.i19 = load ptr, ptr %i.u, align 8, !noalias !35
  %i.v = icmp eq i32 %i.s, 0
  br label %_ZNK2v88internal15MapsAndHandlersixEm.exit

_ZNK2v88internal15MapsAndHandlersixEm.exit:       ; preds = %bb.b, %.sink.split.i
  %.sroa.09.0.i = phi i1 [ false, %bb.b ], [ %i.v, %.sink.split.i ]
  %.sroa.7.0.i = phi ptr [ null, %bb.b ], [ %.sroa.0.0.copyload.i19, %.sink.split.i ] ; 3 uses
  %i.w = load ptr, ptr %2, align 8, !noalias !35
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.y = load i64, ptr %i.x, align 8, !noalias !35
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load i64, ptr %i.l, align 8
  %i.ab = add i64 %i.aa, -1                       ; 3 uses
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = shl nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.ae = load i64, ptr %i.z, align 8             ; 2 uses
  %i.af = or i64 %i.ae, 3                         ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ad ; 2 uses
  store atomic volatile i64 %i.af, ptr %i.ah monotonic, align 8
  %i.ai = and i64 %i.af, 4294967295
  %.not = icmp eq i64 %i.ai, 3
  br i1 %.not, label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK2v88internal15MapsAndHandlersixEm.exit
  %i.aj = and i64 %i.af, -3                       ; 2 uses
  %i.ak = or disjoint i64 %i.ab, 1                ; 2 uses
  %i.al = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.am = and i64 %i.ab, -262144
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load i64, ptr %i.an, align 262144       ; 2 uses
  %i.ap = and i64 %i.ao, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.ap, 0
  %i.aq = and i64 %i.ao, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not38.i.i.i.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ar = and i64 %i.ae, -262144
  %i.as = inttoptr i64 %i.ar to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i = load i64, ptr %i.as, align 262144
  %i.at = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i, 25
  %.not39.i.i.i.i.i = icmp eq i64 %i.at, 0
  br i1 %.not39.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ak, i64 noundef %i.al, i64 %i.aj) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit, label %bb.g, !prof !9

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ak, i64 %i.al, i64 %i.aj) #17
  br label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZNK2v88internal15MapsAndHandlersixEm.exit, %bb.f, %bb.g
  %i.au = load i64, ptr %i.l, align 8
  %i.av = add i64 %i.au, -1                       ; 3 uses
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = icmp eq ptr %.sroa.7.0.i, null          ; 2 uses
  br i1 %.sroa.09.0.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit
  br i1 %i.ax, label %bb.i, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i, !prof !11

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.41) #18
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i: ; preds = %bb.h
  %i.ay = load i64, ptr %.sroa.7.0.i, align 8
  %i.az = or i64 %i.ay, 3
  br label %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit

bb.j:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit
  br i1 %i.ax, label %bb.k, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i, !prof !11

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.41) #18
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i: ; preds = %bb.j
  %i.ba = load i64, ptr %.sroa.7.0.i, align 8
  br label %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit

_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i
  %.sroa.05.0.i = phi i64 [ %i.az, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i ], [ %i.ba, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i ] ; 5 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ad
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24 ; 2 uses
  store atomic volatile i64 %.sroa.05.0.i, ptr %i.bc monotonic, align 8
  %i.bd = trunc i64 %.sroa.05.0.i to i1
  %i.be = and i64 %.sroa.05.0.i, 4294967295
  %i.bf = icmp ne i64 %i.be, 3
  %i.bg = and i1 %i.bf, %i.bd
  br i1 %i.bg, label %bb.l, label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit24

bb.l:                                             ; preds = %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit
  %i.bh = and i64 %.sroa.05.0.i, -3               ; 2 uses
  %i.bi = or disjoint i64 %i.av, 1                ; 2 uses
  %i.bj = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.bk = and i64 %i.av, -262144
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = load i64, ptr %i.bl, align 262144       ; 2 uses
  %i.bn = and i64 %i.bm, 32
  %.not.i.i.i.i.i20 = icmp eq i64 %i.bn, 0
  %i.bo = and i64 %i.bm, 25
  %.not38.i.i.i.i.i21 = icmp eq i64 %i.bo, 0
  br i1 %.not38.i.i.i.i.i21, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bp = and i64 %.sroa.05.0.i, -262144
  %i.bq = inttoptr i64 %i.bp to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i22 = load i64, ptr %i.bq, align 262144
  %i.br = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i22, 25
  %.not39.i.i.i.i.i23 = icmp eq i64 %i.br, 0
  br i1 %.not39.i.i.i.i.i23, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.bi, i64 noundef %i.bj, i64 %i.bh) #17
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  br i1 %.not.i.i.i.i.i20, label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit24, label %bb.p, !prof !9

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.bi, i64 %i.bj, i64 %i.bh) #17
  br label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit24

_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit24: ; preds = %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit, %bb.o, %bb.p
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !34

bb.q:                                             ; preds = %._crit_edge
  %i.bs = load i64, ptr %i.l, align 8
  %i.bt = load ptr, ptr %i.j, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 7864
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = load ptr, ptr %0, align 8               ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.in.i.i = select i1 %i.bx, ptr %i.by, ptr %i.bw
  %.sroa.0.0.i.i = load i64, ptr %.sroa.0.0.in.i.i, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bz, align 8
  tail call void @_ZNK2v88internal11NexusConfig15SetFeedbackPairENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotENS2_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeES9_SA_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 %.sroa.0.0.i.i, i32 %.sroa.0.0.copyload.i.i, i64 %i.bs, i32 noundef 4, i64 %i.bv, i32 noundef 0)
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge
  %i.ca = load i64, ptr %1, align 8
  %i.cb = load i64, ptr %i.l, align 8
  %i.cc = load ptr, ptr %0, align 8               ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.in.i.i25 = select i1 %i.cd, ptr %i.ce, ptr %i.cc
  %.sroa.0.0.i.i26 = load i64, ptr %.sroa.0.0.in.i.i25, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i27 = load i32, ptr %i.cf, align 8
  tail call void @_ZNK2v88internal11NexusConfig15SetFeedbackPairENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotENS2_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeES9_SA_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 %.sroa.0.0.i.i26, i32 %.sroa.0.0.copyload.i.i27, i64 %i.ca, i32 noundef 4, i64 %i.cb, i32 noundef 4)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZNK2v88internal13FeedbackNexus11ExtractMapsEPNS0_23DirectHandleSmallVectorINS0_3MapELm4EEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::FeedbackIterator", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZN2v88internal16FeedbackIteratorC2EPKNS0_13FeedbackNexusE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %0)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.promoted21 = load i8, ptr %i.a, align 8
  %i.b = trunc nuw i8 %.promoted21 to i1
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = load i32, ptr %i.h, align 8
  %.sroa.0.0.copyload.i9.i = load ptr, ptr %2, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.promoted28 = load i64, ptr %i.c, align 8
  %.promoted32 = load i32, ptr %i.j, align 4
  br label %bb.b

._crit_edge:                                      ; preds = %bb.k, %._crit_edge.i, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.ap, %._crit_edge.i ], [ %i.ap, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret i32 %.0.lcssa

bb.b:                                             ; preds = %_ZN2v88internal16FeedbackIterator7AdvanceEv.exit, %.lr.ph
  %.lcssa1535 = phi i32 [ %.promoted32, %.lr.ph ], [ %i.by, %_ZN2v88internal16FeedbackIterator7AdvanceEv.exit ] ; 4 uses
  %i.k = phi i64 [ %.promoted28, %.lr.ph ], [ %i.bv, %_ZN2v88internal16FeedbackIterator7AdvanceEv.exit ] ; 3 uses
  %.025 = phi i32 [ 0, %.lr.ph ], [ %i.ap, %_ZN2v88internal16FeedbackIterator7AdvanceEv.exit ]
  %i.l = load ptr, ptr %i.d, align 8              ; 4 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 560 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 568
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %i.o, %i.q
  br i1 %i.r, label %bb.d, label %_ZN2v88internal6handleINS0_3MapEEENS0_6HandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.s = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.m) #17
  br label %_ZN2v88internal6handleINS0_3MapEEENS0_6HandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6handleINS0_3MapEEENS0_6HandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.o, %bb.c ] ; 3 uses
  %i.t = ptrtoint ptr %.0.i.i.i.i to i64
  %i.u = add i64 %i.t, 8
  %i.v = inttoptr i64 %i.u to ptr
  store ptr %i.v, ptr %i.n, align 8
  store i64 %i.k, ptr %.0.i.i.i.i, align 8
  br label %_ZNK2v88internal11NexusConfig9NewHandleINS0_3MapEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit

bb.e:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.x = load i8, ptr %i.w, align 8, !range !13, !noundef !14
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = tail call noundef ptr @_ZN2v88internal16LocalHandleScope19GetMainThreadHandleEPNS0_9LocalHeapEm(ptr noundef nonnull %i.l, i64 noundef %i.k) #17
  br label %_ZNK2v88internal11NexusConfig9NewHandleINS0_3MapEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit

bb.g:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8            ; 5 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = icmp eq ptr %i.ac, %i.ae
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = tail call noundef ptr @_ZN2v88internal12LocalHandles8AddBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ab) #17
  %.pre.i = load ptr, ptr %i.ab, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ah = phi ptr [ %.pre.i, %bb.h ], [ %i.ac, %bb.g ]
  %.0.i.i.i = phi ptr [ %i.ag, %bb.h ], [ %i.ac, %bb.g ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.ai, ptr %i.ab, align 8
  store i64 %i.k, ptr %.0.i.i.i, align 8
  br label %_ZNK2v88internal11NexusConfig9NewHandleINS0_3MapEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit

_ZNK2v88internal11NexusConfig9NewHandleINS0_3MapEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit: ; preds = %_ZN2v88internal6handleINS0_3MapEEENS0_6HandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i, %bb.f, %bb.i
  %.sroa.04.0.i = phi ptr [ %.0.i.i.i.i, %_ZN2v88internal6handleINS0_3MapEEENS0_6HandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i ], [ %i.z, %bb.f ], [ %.0.i.i.i, %bb.i ]
  %i.aj = ptrtoint ptr %.sroa.04.0.i to i64
  %i.ak = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.al = load ptr, ptr %i.g, align 8
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.j, label %bb.k, !prof !11

bb.j:                                             ; preds = %_ZNK2v88internal11NexusConfig9NewHandleINS0_3MapEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_3MapEEELm4ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
  %.pre.i.i.i = load ptr, ptr %i.f, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK2v88internal11NexusConfig9NewHandleINS0_3MapEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit
  %i.an = phi ptr [ %.pre.i.i.i, %bb.j ], [ %i.ak, %_ZNK2v88internal11NexusConfig9NewHandleINS0_3MapEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ao, ptr %i.f, align 8
  store i64 %i.aj, ptr %i.an, align 8
  %i.ap = add nuw nsw i32 %.025, 1                ; 3 uses
  switch i32 %i.i, label %bb.l [
    i32 0, label %._crit_edge
    i32 1, label %bb.m
  ], !prof !12

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.34) #18
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.aq = load i64, ptr %.sroa.0.0.copyload.i9.i, align 8
  %i.ar = add i64 %i.aq, -1
  %i.as = inttoptr i64 %i.ar to ptr               ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %i.av = lshr i64 %i.au, 32
  %i.aw = trunc nuw i64 %i.av to i32              ; 2 uses
  %i.ax = icmp slt i32 %.lcssa1535, %i.aw
  br i1 %i.ax, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.m
  %i.ay = sext i32 %.lcssa1535 to i64             ; 3 uses
  %i.az = ashr i64 %i.au, 32                      ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 3 uses
  %i.bb = getelementptr [8 x i8], ptr %i.ba, i64 %i.ay
  %i.bc = load atomic volatile i64, ptr %i.bb monotonic, align 8 ; 3 uses
  %i.bd = and i64 %i.bc, 3
  %i.be = icmp eq i64 %i.bd, 3
  %i.bf = and i64 %i.bc, 4294967295
  %i.bg = icmp ne i64 %i.bf, 3
  %i.bh = and i1 %i.be, %i.bg
  br i1 %i.bh, label %_ZN2v88internal16FeedbackIterator7AdvanceEv.exit, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.preheader

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.preheader: ; preds = %.lr.ph.preheader.i
  %indvars.iv.next.i93 = add nsw i64 %i.ay, 2     ; 3 uses
  %i.bi = icmp slt i64 %indvars.iv.next.i93, %i.az
  br i1 %i.bi, label %.lr.ph.i.lr.ph, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.preheader.._crit_edge.i.loopexit_crit_edge, !llvm.loop !0

.lr.ph.i.lr.ph:                                   ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.preheader
  br label %.lr.ph.i, !llvm.loop !0

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i
  %indvars.iv.next.i94 = phi i64 [ %indvars.iv.next.i93, %.lr.ph.i.lr.ph ], [ %indvars.iv.next.i, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i ] ; 4 uses
  %i.bj = getelementptr [8 x i8], ptr %i.ba, i64 %indvars.iv.next.i94
  %i.bk = load atomic volatile i64, ptr %i.bj monotonic, align 8 ; 3 uses
  %i.bl = and i64 %i.bk, 3
  %i.bm = icmp eq i64 %i.bl, 3
  %i.bn = and i64 %i.bk, 4294967295
  %i.bo = icmp ne i64 %i.bn, 3
  %i.bp = and i1 %i.bm, %i.bo
  br i1 %i.bp, label %_ZN2v88internal16FeedbackIterator7AdvanceEv.exit.loopexit, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i, !llvm.loop !0

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i: ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.next.i94, 2 ; 3 uses
  %i.bq = icmp slt i64 %indvars.iv.next.i, %i.az
  br i1 %i.bq, label %.lr.ph.i, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.._crit_edge.i.loopexit_crit_edge, !llvm.loop !0

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.preheader.._crit_edge.i.loopexit_crit_edge: ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.preheader
  br label %._crit_edge.i.loopexit, !llvm.loop !0

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.._crit_edge.i.loopexit_crit_edge: ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i
  br label %._crit_edge.i.loopexit, !llvm.loop !0

._crit_edge.i.loopexit:                           ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.._crit_edge.i.loopexit_crit_edge, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.preheader.._crit_edge.i.loopexit_crit_edge
  %indvars.iv.next.i.lcssa = phi i64 [ %indvars.iv.next.i, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.._crit_edge.i.loopexit_crit_edge ], [ %indvars.iv.next.i93, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.preheader.._crit_edge.i.loopexit_crit_edge ]
  %i.br = trunc nsw i64 %indvars.iv.next.i.lcssa to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.m, %._crit_edge.i.loopexit
  %.lcssa1534 = phi i32 [ %i.br, %._crit_edge.i.loopexit ], [ %.lcssa1535, %bb.m ]
  %i.bs = icmp eq i32 %.lcssa1534, %i.aw
  br i1 %i.bs, label %._crit_edge, label %bb.n, !prof !9

bb.n:                                             ; preds = %._crit_edge.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.35) #18
  unreachable

_ZN2v88internal16FeedbackIterator7AdvanceEv.exit.loopexit: ; preds = %.lr.ph.i
  %i.bt = trunc nsw i64 %indvars.iv.next.i94 to i32
  br label %_ZN2v88internal16FeedbackIterator7AdvanceEv.exit

_ZN2v88internal16FeedbackIterator7AdvanceEv.exit: ; preds = %_ZN2v88internal16FeedbackIterator7AdvanceEv.exit.loopexit, %.lr.ph.preheader.i
  %.pre-phi = phi i32 [ %.lcssa1535, %.lr.ph.preheader.i ], [ %i.bt, %_ZN2v88internal16FeedbackIterator7AdvanceEv.exit.loopexit ]
  %indvars.iv.i.lcssa13 = phi i64 [ %i.ay, %.lr.ph.preheader.i ], [ %indvars.iv.next.i94, %_ZN2v88internal16FeedbackIterator7AdvanceEv.exit.loopexit ]
  %.lcssa = phi i64 [ %i.bc, %.lr.ph.preheader.i ], [ %i.bk, %_ZN2v88internal16FeedbackIterator7AdvanceEv.exit.loopexit ]
  %i.bu = getelementptr [8 x i8], ptr %i.ba, i64 %indvars.iv.i.lcssa13
  %i.bv = and i64 %.lcssa, -3
  %i.bw = getelementptr i8, ptr %i.bu, i64 8
  %i.bx = load atomic volatile i64, ptr %i.bw monotonic, align 8 ; 0 uses
  %i.by = add nsw i32 %.pre-phi, 2
  br label %bb.b, !llvm.loop !36
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal16FeedbackIterator7AdvanceEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !13, !noundef !14
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.33) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8
  switch i32 %i.e, label %bb.e [
    i32 0, label %bb.d
    i32 1, label %bb.f
  ], !prof !12

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.a, align 8
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.34) #18
  unreachable

bb.f:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal16FeedbackIterator18AdvancePolymorphicEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, ptr } @_ZN2v88internal13FeedbackNexus21ExtractMegaDOMHandlerEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { i64, i64 } @_ZNK2v88internal13FeedbackNexus15GetFeedbackPairEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.b = extractvalue { i64, i64 } %i.a, 1        ; 2 uses
  %i.c = and i64 %i.b, 4294967295
  %i.d = icmp eq i64 %i.c, 3
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = tail call { i32, ptr } @_ZNK2v88internal11NexusConfig9NewHandleENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 %i.b) ; 2 uses
  %i.g = extractvalue { i32, ptr } %i.f, 0
  %i.h = extractvalue { i32, ptr } %i.f, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.04.0 = phi i32 [ %i.g, %bb.b ], [ 1, %bb.a ]
  %.sroa.3.0 = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.04.0, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.3.0, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZNK2v88internal13FeedbackNexus22ExtractMapsAndHandlersEPNS0_15MapsAndHandlersESt8functionIFNS0_11MaybeHandleINS0_3MapEEENS0_6HandleIS6_EEEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::Handle.657", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::FeedbackIterator", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @_ZN2v88internal16FeedbackIteratorC2EPKNS0_13FeedbackNexusE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull %0)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.promoted39 = load i8, ptr %i.a, align 8
  %i.b = trunc nuw i8 %.promoted39 to i1
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.r = load i32, ptr %i.q, align 8
  %.sroa.0.0.copyload.i9.i = load ptr, ptr %4, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 28
  %.promoted46 = load i64, ptr %i.d, align 8
  %.promoted50 = load i64, ptr %i.f, align 8
  %.promoted54 = load i32, ptr %i.s, align 4
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK2v88internal11MaybeHandleINS0_3MapEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit, %._crit_edge.i, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.3, %._crit_edge.i ], [ %.3, %_ZNK2v88internal11MaybeHandleINS0_3MapEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret i32 %.0.lcssa

bb.b:                                             ; preds = %_ZN2v88internal16FeedbackIterator7AdvanceEv.exit, %.lr.ph
  %.lcssa3357 = phi i32 [ %.promoted54, %.lr.ph ], [ %i.dc, %_ZN2v88internal16FeedbackIterator7AdvanceEv.exit ] ; 4 uses
  %i.t = phi i64 [ %.promoted50, %.lr.ph ], [ %i.db, %_ZN2v88internal16FeedbackIterator7AdvanceEv.exit ] ; 2 uses
  %i.u = phi i64 [ %.promoted46, %.lr.ph ], [ %i.cz, %_ZN2v88internal16FeedbackIterator7AdvanceEv.exit ] ; 3 uses
  %.043 = phi i32 [ 0, %.lr.ph ], [ %.3, %_ZN2v88internal16FeedbackIterator7AdvanceEv.exit ] ; 3 uses
  %i.v = load ptr, ptr %i.e, align 8              ; 4 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 560 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 568
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = icmp eq ptr %i.y, %i.aa
  br i1 %i.ab, label %bb.d, label %_ZN2v88internal6handleINS0_3MapEEENS0_6HandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.ac = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.w) #17
  br label %_ZN2v88internal6handleINS0_3MapEEENS0_6HandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6handleINS0_3MapEEENS0_6HandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.ac, %bb.d ], [ %i.y, %bb.c ] ; 3 uses
  %i.ad = ptrtoint ptr %.0.i.i.i.i to i64
  %i.ae = add i64 %i.ad, 8
  %i.af = inttoptr i64 %i.ae to ptr
  store ptr %i.af, ptr %i.x, align 8
  store i64 %i.u, ptr %.0.i.i.i.i, align 8
  br label %_ZNK2v88internal11NexusConfig9NewHandleINS0_3MapEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit

bb.e:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ah = load i8, ptr %i.ag, align 8, !range !13, !noundef !14
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = call noundef ptr @_ZN2v88internal16LocalHandleScope19GetMainThreadHandleEPNS0_9LocalHeapEm(ptr noundef nonnull %i.v, i64 noundef %i.u) #17
  br label %_ZNK2v88internal11NexusConfig9NewHandleINS0_3MapEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit

bb.g:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.al = load ptr, ptr %i.ak, align 8            ; 5 uses
  %i.am = load ptr, ptr %i.al, align 8            ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = icmp eq ptr %i.am, %i.ao
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = call noundef ptr @_ZN2v88internal12LocalHandles8AddBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %i.al) #17
  %.pre.i = load ptr, ptr %i.al, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ar = phi ptr [ %.pre.i, %bb.h ], [ %i.am, %bb.g ]
  %.0.i.i.i = phi ptr [ %i.aq, %bb.h ], [ %i.am, %bb.g ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.as, ptr %i.al, align 8
  store i64 %i.u, ptr %.0.i.i.i, align 8
  br label %_ZNK2v88internal11NexusConfig9NewHandleINS0_3MapEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit

_ZNK2v88internal11NexusConfig9NewHandleINS0_3MapEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit: ; preds = %_ZN2v88internal6handleINS0_3MapEEENS0_6HandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i, %bb.f, %bb.i
  %.sroa.04.0.i = phi ptr [ %.0.i.i.i.i, %_ZN2v88internal6handleINS0_3MapEEENS0_6HandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i ], [ %i.aj, %bb.f ], [ %.0.i.i.i, %bb.i ] ; 2 uses
  %i.at = and i64 %i.t, 4294967295
  %i.au = icmp eq i64 %i.at, 3
  br i1 %i.au, label %_ZNK2v88internal11MaybeHandleINS0_3MapEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK2v88internal11NexusConfig9NewHandleINS0_3MapEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit
  %i.av = call { i32, ptr } @_ZNK2v88internal11NexusConfig9NewHandleENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 %i.t) ; 2 uses
  %i.aw = extractvalue { i32, ptr } %i.av, 0
  %i.ax = extractvalue { i32, ptr } %i.av, 1
  %i.ay = load ptr, ptr %i.g, align 8
  %.not.i.i.not = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.not, label %.critedge, label %_ZNKSt8functionIFN2v88internal11MaybeHandleINS1_3MapEEENS1_6HandleIS3_EEEEclES6_.exit

_ZNKSt8functionIFN2v88internal11MaybeHandleINS1_3MapEEENS1_6HandleIS3_EEEEclES6_.exit: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %.sroa.04.0.i, ptr %3, align 8
  %i.az = load ptr, ptr %i.h, align 8
  %i.ba = call ptr %i.az(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #17, !inline_history !37 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %_ZNK2v88internal11MaybeHandleINS0_3MapEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit, label %.critedge

.critedge:                                        ; preds = %_ZNKSt8functionIFN2v88internal11MaybeHandleINS1_3MapEEENS1_6HandleIS3_EEEEclES6_.exit, %bb.j
  %.sroa.018.0 = phi ptr [ %.sroa.04.0.i, %bb.j ], [ %i.ba, %_ZNKSt8functionIFN2v88internal11MaybeHandleINS1_3MapEEENS1_6HandleIS3_EEEEclES6_.exit ]
  %i.bc = ptrtoint ptr %.sroa.018.0 to i64
  %i.bd = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.be = load ptr, ptr %i.j, align 8
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %bb.k, label %_ZN2v88internal23DirectHandleSmallVectorINS0_3MapELm4EE9push_backERKNS0_12DirectHandleIS2_EE.exit.i, !prof !11

bb.k:                                             ; preds = %.critedge
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_3MapEEELm4ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(152) %1)
  %.pre.i.i.i.i = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal23DirectHandleSmallVectorINS0_3MapELm4EE9push_backERKNS0_12DirectHandleIS2_EE.exit.i

_ZN2v88internal23DirectHandleSmallVectorINS0_3MapELm4EE9push_backERKNS0_12DirectHandleIS2_EE.exit.i: ; preds = %bb.k, %.critedge
  %i.bg = phi ptr [ %.pre.i.i.i.i, %bb.k ], [ %i.bd, %.critedge ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bh, ptr %i.i, align 8
  store i64 %i.bc, ptr %i.bg, align 8
  %i.bi = ptrtoint ptr %i.ax to i64
  %i.bj = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.bk = load ptr, ptr %i.l, align 8
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %bb.l, label %_ZN2v88internal23DirectHandleSmallVectorINS0_6ObjectELm4EE9push_backERKNS0_12DirectHandleIS2_EE.exit.i, !prof !11

bb.l:                                             ; preds = %_ZN2v88internal23DirectHandleSmallVectorINS0_3MapELm4EE9push_backERKNS0_12DirectHandleIS2_EE.exit.i
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_6ObjectEEELm4ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %i.m)
  %.pre.i.i.i1.i = load ptr, ptr %i.k, align 8
  br label %_ZN2v88internal23DirectHandleSmallVectorINS0_6ObjectELm4EE9push_backERKNS0_12DirectHandleIS2_EE.exit.i

_ZN2v88internal23DirectHandleSmallVectorINS0_6ObjectELm4EE9push_backERKNS0_12DirectHandleIS2_EE.exit.i: ; preds = %bb.l, %_ZN2v88internal23DirectHandleSmallVectorINS0_3MapELm4EE9push_backERKNS0_12DirectHandleIS2_EE.exit.i
  %i.bm = phi ptr [ %.pre.i.i.i1.i, %bb.l ], [ %i.bj, %_ZN2v88internal23DirectHandleSmallVectorINS0_3MapELm4EE9push_backERKNS0_12DirectHandleIS2_EE.exit.i ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.bn, ptr %i.k, align 8
  store i64 %i.bi, ptr %i.bm, align 8
  %i.bo = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.bp = load ptr, ptr %i.o, align 8
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %bb.m, label %_ZN2v88internal15MapsAndHandlers12emplace_backENS0_12DirectHandleINS0_3MapEEENS0_23MaybeObjectDirectHandleE.exit, !prof !11

bb.m:                                             ; preds = %_ZN2v88internal23DirectHandleSmallVectorINS0_6ObjectELm4EE9push_backERKNS0_12DirectHandleIS2_EE.exit.i
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal23HeapObjectReferenceTypeELm4ESaIS3_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(40) %i.p)
  %.pre.i.i.i = load ptr, ptr %i.n, align 8
  br label %_ZN2v88internal15MapsAndHandlers12emplace_backENS0_12DirectHandleINS0_3MapEEENS0_23MaybeObjectDirectHandleE.exit

_ZN2v88internal15MapsAndHandlers12emplace_backENS0_12DirectHandleINS0_3MapEEENS0_23MaybeObjectDirectHandleE.exit: ; preds = %_ZN2v88internal23DirectHandleSmallVectorINS0_6ObjectELm4EE9push_backERKNS0_12DirectHandleIS2_EE.exit.i, %bb.m
  %i.br = phi ptr [ %.pre.i.i.i, %bb.m ], [ %i.bo, %_ZN2v88internal23DirectHandleSmallVectorINS0_6ObjectELm4EE9push_backERKNS0_12DirectHandleIS2_EE.exit.i ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store ptr %i.bs, ptr %i.n, align 8
  store i32 %i.aw, ptr %i.br, align 4
  %i.bt = add nsw i32 %.043, 1
  br label %_ZNK2v88internal11MaybeHandleINS0_3MapEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_3MapEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit: ; preds = %_ZNK2v88internal11NexusConfig9NewHandleINS0_3MapEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit, %_ZN2v88internal15MapsAndHandlers12emplace_backENS0_12DirectHandleINS0_3MapEEENS0_23MaybeObjectDirectHandleE.exit, %_ZNKSt8functionIFN2v88internal11MaybeHandleINS1_3MapEEENS1_6HandleIS3_EEEEclES6_.exit
  %.3 = phi i32 [ %.043, %_ZNK2v88internal11NexusConfig9NewHandleINS0_3MapEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit ], [ %i.bt, %_ZN2v88internal15MapsAndHandlers12emplace_backENS0_12DirectHandleINS0_3MapEEENS0_23MaybeObjectDirectHandleE.exit ], [ %.043, %_ZNKSt8functionIFN2v88internal11MaybeHandleINS1_3MapEEENS1_6HandleIS3_EEEEclES6_.exit ] ; 3 uses
  switch i32 %i.r, label %bb.n [
    i32 0, label %._crit_edge
    i32 1, label %bb.o
  ], !prof !12

bb.n:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_3MapEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.34) #18
  unreachable

bb.o:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_3MapEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit
  %i.bu = load i64, ptr %.sroa.0.0.copyload.i9.i, align 8
  %i.bv = add i64 %i.bu, -1
  %i.bw = inttoptr i64 %i.bv to ptr               ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i64, ptr %i.bx, align 8            ; 2 uses
  %i.bz = lshr i64 %i.by, 32
  %i.ca = trunc nuw i64 %i.bz to i32              ; 2 uses
  %i.cb = icmp slt i32 %.lcssa3357, %i.ca
  br i1 %i.cb, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.o
  %i.cc = sext i32 %.lcssa3357 to i64             ; 3 uses
  %i.cd = ashr i64 %i.by, 32                      ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 3 uses
  %i.cf = getelementptr [8 x i8], ptr %i.ce, i64 %i.cc
  %i.cg = load atomic volatile i64, ptr %i.cf monotonic, align 8 ; 3 uses
  %i.ch = and i64 %i.cg, 3
  %i.ci = icmp eq i64 %i.ch, 3
  %i.cj = and i64 %i.cg, 4294967295
  %i.ck = icmp ne i64 %i.cj, 3
  %i.cl = and i1 %i.ci, %i.ck
  br i1 %i.cl, label %_ZN2v88internal16FeedbackIterator7AdvanceEv.exit, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.preheader

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.preheader: ; preds = %.lr.ph.preheader.i
  %indvars.iv.next.i115 = add nsw i64 %i.cc, 2    ; 3 uses
  %i.cm = icmp slt i64 %indvars.iv.next.i115, %i.cd
  br i1 %i.cm, label %.lr.ph.i.lr.ph, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.preheader.._crit_edge.i.loopexit_crit_edge, !llvm.loop !0

.lr.ph.i.lr.ph:                                   ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.preheader
  br label %.lr.ph.i, !llvm.loop !0

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i
  %indvars.iv.next.i116 = phi i64 [ %indvars.iv.next.i115, %.lr.ph.i.lr.ph ], [ %indvars.iv.next.i, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i ] ; 4 uses
  %i.cn = getelementptr [8 x i8], ptr %i.ce, i64 %indvars.iv.next.i116
  %i.co = load atomic volatile i64, ptr %i.cn monotonic, align 8 ; 3 uses
  %i.cp = and i64 %i.co, 3
  %i.cq = icmp eq i64 %i.cp, 3
  %i.cr = and i64 %i.co, 4294967295
  %i.cs = icmp ne i64 %i.cr, 3
  %i.ct = and i1 %i.cq, %i.cs
  br i1 %i.ct, label %_ZN2v88internal16FeedbackIterator7AdvanceEv.exit.loopexit, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i, !llvm.loop !0

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i: ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.next.i116, 2 ; 3 uses
  %i.cu = icmp slt i64 %indvars.iv.next.i, %i.cd
  br i1 %i.cu, label %.lr.ph.i, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.._crit_edge.i.loopexit_crit_edge, !llvm.loop !0

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.preheader.._crit_edge.i.loopexit_crit_edge: ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.preheader
  br label %._crit_edge.i.loopexit, !llvm.loop !0

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.._crit_edge.i.loopexit_crit_edge: ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i
  br label %._crit_edge.i.loopexit, !llvm.loop !0

._crit_edge.i.loopexit:                           ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.._crit_edge.i.loopexit_crit_edge, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.preheader.._crit_edge.i.loopexit_crit_edge
  %indvars.iv.next.i.lcssa = phi i64 [ %indvars.iv.next.i, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.._crit_edge.i.loopexit_crit_edge ], [ %indvars.iv.next.i115, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.preheader.._crit_edge.i.loopexit_crit_edge ]
  %i.cv = trunc nsw i64 %indvars.iv.next.i.lcssa to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.o, %._crit_edge.i.loopexit
  %.lcssa3356 = phi i32 [ %i.cv, %._crit_edge.i.loopexit ], [ %.lcssa3357, %bb.o ]
  %i.cw = icmp eq i32 %.lcssa3356, %i.ca
  br i1 %i.cw, label %._crit_edge, label %bb.p, !prof !9

bb.p:                                             ; preds = %._crit_edge.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.35) #18
  unreachable

_ZN2v88internal16FeedbackIterator7AdvanceEv.exit.loopexit: ; preds = %.lr.ph.i
  %i.cx = trunc nsw i64 %indvars.iv.next.i116 to i32
  br label %_ZN2v88internal16FeedbackIterator7AdvanceEv.exit

_ZN2v88internal16FeedbackIterator7AdvanceEv.exit: ; preds = %_ZN2v88internal16FeedbackIterator7AdvanceEv.exit.loopexit, %.lr.ph.preheader.i
  %.pre-phi = phi i32 [ %.lcssa3357, %.lr.ph.preheader.i ], [ %i.cx, %_ZN2v88internal16FeedbackIterator7AdvanceEv.exit.loopexit ]
  %indvars.iv.i.lcssa31 = phi i64 [ %i.cc, %.lr.ph.preheader.i ], [ %indvars.iv.next.i116, %_ZN2v88internal16FeedbackIterator7AdvanceEv.exit.loopexit ]
  %.lcssa = phi i64 [ %i.cg, %.lr.ph.preheader.i ], [ %i.co, %_ZN2v88internal16FeedbackIterator7AdvanceEv.exit.loopexit ]
  %i.cy = getelementptr [8 x i8], ptr %i.ce, i64 %indvars.iv.i.lcssa31
  %i.cz = and i64 %.lcssa, -3
  %i.da = getelementptr i8, ptr %i.cy, i64 8
  %i.db = load atomic volatile i64, ptr %i.da monotonic, align 8
  %i.dc = add nsw i32 %.pre-phi, 2
  br label %bb.b, !llvm.loop !38
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, ptr } @_ZNK2v88internal13FeedbackNexus17FindHandlerForMapENS0_12DirectHandleINS0_3MapEEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::FeedbackIterator", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZN2v88internal16FeedbackIteratorC2EPKNS0_13FeedbackNexusE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %0)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.promoted27 = load i8, ptr %i.a, align 8
  %i.b = trunc nuw i8 %.promoted27 to i1
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %1, align 8                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %.sroa.0.0.copyload.i9.i = load ptr, ptr %2, align 8
  %.promoted33 = load i64, ptr %i.c, align 8
  %.promoted38 = load i64, ptr %i.e, align 8      ; 4 uses
  %.fr = freeze i32 %i.g
  %i.h = icmp ne i64 %.promoted33, %i.d
  %i.i = and i64 %.promoted38, 4294967295
  %i.j = icmp eq i64 %i.i, 3
  %or.cond90 = select i1 %i.h, i1 true, i1 %i.j   ; 3 uses
  switch i32 %.fr, label %.lr.ph.split [
    i32 0, label %.lr.ph.split.us
    i32 1, label %.lr.ph.split.us56.preheader
  ], !prof !12

.lr.ph.split.us56.preheader:                      ; preds = %.lr.ph
  br i1 %or.cond90, label %.critedge.us59.preheader, label %.split.us

.critedge.us59.preheader:                         ; preds = %.lr.ph.split.us56.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.promoted43 = load i32, ptr %i.k, align 4
  %i.l = load i64, ptr %.sroa.0.0.copyload.i9.i, align 8
  %i.m = add i64 %i.l, -1
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = lshr i64 %i.p, 32
  %i.r = trunc nuw i64 %i.q to i32                ; 2 uses
  %i.s = ashr i64 %i.p, 32                        ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  br label %.critedge.us59

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %or.cond90, label %._crit_edge, label %.split.us

.critedge.us59:                                   ; preds = %.critedge.us59.preheader, %_ZN2v88internal16FeedbackIterator7AdvanceEv.exit.us60
  %.lcssa2146.us57131 = phi i32 [ %i.as, %_ZN2v88internal16FeedbackIterator7AdvanceEv.exit.us60 ], [ %.promoted43, %.critedge.us59.preheader ] ; 3 uses
  %i.u = icmp slt i32 %.lcssa2146.us57131, %i.r
  br i1 %i.u, label %.lr.ph.preheader.i.us, label %._crit_edge.i.us

.lr.ph.preheader.i.us:                            ; preds = %.critedge.us59
  %i.v = sext i32 %.lcssa2146.us57131 to i64      ; 3 uses
  %i.w = getelementptr [8 x i8], ptr %i.t, i64 %i.v
  %i.x = load atomic volatile i64, ptr %i.w monotonic, align 8 ; 3 uses
  %i.y = and i64 %i.x, 3
  %i.z = icmp eq i64 %i.y, 3
  %i.aa = and i64 %i.x, 4294967295
  %i.ab = icmp ne i64 %i.aa, 3
  %i.ac = and i1 %i.z, %i.ab
  br i1 %i.ac, label %_ZN2v88internal16FeedbackIterator7AdvanceEv.exit.us60, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.us.preheader

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.us.preheader: ; preds = %.lr.ph.preheader.i.us
  %indvars.iv.next.i.us125 = add nsw i64 %i.v, 2  ; 3 uses
  %i.ad = icmp slt i64 %indvars.iv.next.i.us125, %i.s
  br i1 %i.ad, label %.lr.ph.i.us.lr.ph, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.us.preheader.._crit_edge.i.loopexit.us_crit_edge, !llvm.loop !0

.lr.ph.i.us.lr.ph:                                ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.us.preheader
  br label %.lr.ph.i.us, !llvm.loop !0

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.lr.ph, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.us
  %indvars.iv.next.i.us126 = phi i64 [ %indvars.iv.next.i.us125, %.lr.ph.i.us.lr.ph ], [ %indvars.iv.next.i.us, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.us ] ; 3 uses
  %i.ae = getelementptr [8 x i8], ptr %i.t, i64 %indvars.iv.next.i.us126
  %i.af = load atomic volatile i64, ptr %i.ae monotonic, align 8 ; 3 uses
  %i.ag = and i64 %i.af, 3
  %i.ah = icmp eq i64 %i.ag, 3
  %i.ai = and i64 %i.af, 4294967295
  %i.aj = icmp ne i64 %i.ai, 3
  %i.ak = and i1 %i.ah, %i.aj
  br i1 %i.ak, label %_ZN2v88internal16FeedbackIterator7AdvanceEv.exit.us60, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.us, !llvm.loop !0

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.us: ; preds = %.lr.ph.i.us
  %indvars.iv.next.i.us = add nsw i64 %indvars.iv.next.i.us126, 2 ; 3 uses
  %i.al = icmp slt i64 %indvars.iv.next.i.us, %i.s
  br i1 %i.al, label %.lr.ph.i.us, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.us.._crit_edge.i.loopexit.us_crit_edge, !llvm.loop !0

._crit_edge.i.us:                                 ; preds = %.critedge.us59, %._crit_edge.i.loopexit.us
  %.lcssa2145.us = phi i32 [ %i.aw, %._crit_edge.i.loopexit.us ], [ %.lcssa2146.us57131, %.critedge.us59 ]
  %i.am = icmp eq i32 %.lcssa2145.us, %i.r
  br i1 %i.am, label %._crit_edge, label %.split74.us, !prof !9

_ZN2v88internal16FeedbackIterator7AdvanceEv.exit.us60: ; preds = %.lr.ph.i.us, %.lr.ph.preheader.i.us
  %indvars.iv.i.lcssa19.us = phi i64 [ %i.v, %.lr.ph.preheader.i.us ], [ %indvars.iv.next.i.us126, %.lr.ph.i.us ] ; 2 uses
  %.lcssa.us = phi i64 [ %i.x, %.lr.ph.preheader.i.us ], [ %i.af, %.lr.ph.i.us ]
  %i.an = getelementptr [8 x i8], ptr %i.t, i64 %indvars.iv.i.lcssa19.us
  %i.ao = trunc nsw i64 %indvars.iv.i.lcssa19.us to i32
  %i.ap = and i64 %.lcssa.us, -3
  %i.aq = getelementptr i8, ptr %i.an, i64 8
  %i.ar = load atomic volatile i64, ptr %i.aq monotonic, align 8 ; 2 uses
  %i.as = add nsw i32 %i.ao, 2
  %i.at = icmp ne i64 %i.ap, %i.d
  %i.au = and i64 %i.ar, 4294967295
  %i.av = icmp eq i64 %i.au, 3
  %or.cond = select i1 %i.at, i1 true, i1 %i.av
  br i1 %or.cond, label %.critedge.us59, label %.split.us, !llvm.loop !39

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.us.preheader.._crit_edge.i.loopexit.us_crit_edge: ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.us.preheader
  br label %._crit_edge.i.loopexit.us, !llvm.loop !0

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.us.._crit_edge.i.loopexit.us_crit_edge: ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.us
  br label %._crit_edge.i.loopexit.us, !llvm.loop !0

._crit_edge.i.loopexit.us:                        ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.us.._crit_edge.i.loopexit.us_crit_edge, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.us.preheader.._crit_edge.i.loopexit.us_crit_edge
  %indvars.iv.next.i.us.lcssa = phi i64 [ %indvars.iv.next.i.us, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.us.._crit_edge.i.loopexit.us_crit_edge ], [ %indvars.iv.next.i.us125, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.us.preheader.._crit_edge.i.loopexit.us_crit_edge ]
  %i.aw = trunc nsw i64 %indvars.iv.next.i.us.lcssa to i32
  br label %._crit_edge.i.us

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %or.cond90, label %.critedge, label %.split.us

.critedge:                                        ; preds = %.lr.ph.split
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.34) #18
  unreachable

.split74.us:                                      ; preds = %._crit_edge.i.us
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.35) #18
  unreachable

.split.us:                                        ; preds = %_ZN2v88internal16FeedbackIterator7AdvanceEv.exit.us60, %.lr.ph.split.us56.preheader, %.lr.ph.split.us, %.lr.ph.split
  %.us-phi48 = phi i64 [ %.promoted38, %.lr.ph.split.us ], [ %.promoted38, %.lr.ph.split ], [ %.promoted38, %.lr.ph.split.us56.preheader ], [ %i.ar, %_ZN2v88internal16FeedbackIterator7AdvanceEv.exit.us60 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ay = tail call { i32, ptr } @_ZNK2v88internal11NexusConfig9NewHandleENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 %.us-phi48) ; 2 uses
  %i.az = extractvalue { i32, ptr } %i.ay, 0
  %i.ba = extractvalue { i32, ptr } %i.ay, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %._crit_edge.i.us, %.lr.ph.split.us, %.split.us
  %.sroa.08.1 = phi i32 [ %i.az, %.split.us ], [ 1, %.lr.ph.split.us ], [ 1, %._crit_edge.i.us ], [ 1, %bb.a ]
  %.sroa.3.1 = phi ptr [ %i.ba, %.split.us ], [ null, %.lr.ph.split.us ], [ null, %._crit_edge.i.us ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.08.1, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.3.1, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i64 0, -2) i64 @_ZNK2v88internal13FeedbackNexus7GetNameEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4               ; 2 uses
  switch i8 %i.b, label %.thread [
    i8 14, label %bb.b
    i8 3, label %bb.b
    i8 8, label %bb.b
    i8 9, label %bb.b
    i8 13, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.c = tail call { i64, i64 } @_ZNK2v88internal13FeedbackNexus15GetFeedbackPairEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.d = extractvalue { i64, i64 } %i.c, 0        ; 7 uses
  %i.e = and i64 %i.d, 3
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %.threadthread-pre-split

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i64 %i.d, -1
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = load atomic volatile i64, ptr %i.h monotonic, align 8
  %i.j = add i64 %i.i, 11
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i16, ptr %i.k monotonic, align 2
  %i.m = icmp ult i16 %i.l, 128
  br i1 %i.m, label %.thread19, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load atomic volatile i64, ptr %i.h monotonic, align 8
  %i.o = add i64 %i.n, 11
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i16, ptr %i.p monotonic, align 2
  %i.r = icmp eq i16 %i.q, 128
  br i1 %i.r, label %bb.e, label %.threadthread-pre-split

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 10624
  %i.u = load ptr, ptr %i.t, align 8              ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 7312
  %i.w = load i64, ptr %i.v, align 8
  %.not.i = icmp eq i64 %i.d, %i.w
  br i1 %.not.i, label %.threadthread-pre-split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 7336
  %i.y = load i64, ptr %i.x, align 8
  %.not41.i = icmp eq i64 %i.d, %i.y
  br i1 %.not41.i, label %.threadthread-pre-split, label %_ZN2v88internalL22IsPropertyNameFeedbackENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit

_ZN2v88internalL22IsPropertyNameFeedbackENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit: ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 7320
  %i.aa = load i64, ptr %i.z, align 8
  %.not = icmp eq i64 %i.d, %i.aa
  br i1 %.not, label %.threadthread-pre-split, label %.thread19

.threadthread-pre-split:                          ; preds = %_ZN2v88internalL22IsPropertyNameFeedbackENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit, %bb.e, %bb.f, %bb.b, %bb.d
  %.pr = load i8, ptr %i.a, align 4
  br label %.thread

.thread:                                          ; preds = %.threadthread-pre-split, %bb.a
  %i.ab = phi i8 [ %.pr, %.threadthread-pre-split ], [ %i.b, %bb.a ]
  %i.ac = icmp eq i8 %i.ab, 18
  br i1 %i.ac, label %bb.g, label %.thread19

bb.g:                                             ; preds = %.thread
  %i.ad = tail call { i64, i64 } @_ZNK2v88internal13FeedbackNexus15GetFeedbackPairEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.ae = extractvalue { i64, i64 } %i.ad, 1      ; 7 uses
  %i.af = and i64 %i.ae, 3
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.h, label %.thread26

bb.h:                                             ; preds = %bb.g
  %i.ah = add nsw i64 %i.ae, -1
  %i.ai = inttoptr i64 %i.ah to ptr               ; 2 uses
  %i.aj = load atomic volatile i64, ptr %i.ai monotonic, align 8
  %i.ak = add i64 %i.aj, 11
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load atomic volatile i16, ptr %i.al monotonic, align 2
  %i.an = icmp ult i16 %i.am, 128
  br i1 %i.an, label %.thread19, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load atomic volatile i64, ptr %i.ai monotonic, align 8
  %i.ap = add i64 %i.ao, 11
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load atomic volatile i16, ptr %i.aq monotonic, align 2
  %i.as = icmp eq i16 %i.ar, 128
  br i1 %i.as, label %bb.j, label %.thread26

bb.j:                                             ; preds = %bb.i
  %i.at = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 10624
  %i.av = load ptr, ptr %i.au, align 8            ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 7312
  %i.ax = load i64, ptr %i.aw, align 8
  %.not.i8 = icmp eq i64 %i.ae, %i.ax
  br i1 %.not.i8, label %.thread26, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 7336
  %i.az = load i64, ptr %i.ay, align 8
  %.not41.i9 = icmp eq i64 %i.ae, %i.az
  br i1 %.not41.i9, label %.thread26, label %_ZN2v88internalL22IsPropertyNameFeedbackENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit10

_ZN2v88internalL22IsPropertyNameFeedbackENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit10: ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 7320
  %i.bb = load i64, ptr %i.ba, align 8
  %.not29 = icmp eq i64 %i.ae, %i.bb
  br i1 %.not29, label %.thread26, label %.thread19

.thread26:                                        ; preds = %_ZN2v88internalL22IsPropertyNameFeedbackENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit10, %bb.i, %bb.g, %bb.k, %bb.j
  br label %.thread19

.thread19:                                        ; preds = %_ZN2v88internalL22IsPropertyNameFeedbackENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit10, %bb.h, %bb.c, %.thread, %.thread26, %_ZN2v88internalL22IsPropertyNameFeedbackENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit
  %.sroa.012.3 = phi i64 [ %i.ae, %bb.h ], [ 0, %.thread ], [ %i.d, %_ZN2v88internalL22IsPropertyNameFeedbackENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit ], [ %i.d, %bb.c ], [ 0, %.thread26 ], [ %i.ae, %_ZN2v88internalL22IsPropertyNameFeedbackENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit10 ]
  ret i64 %.sroa.012.3
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i8 @_ZNK2v88internal13FeedbackNexus22GetKeyedAccessLoadModeEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::MapsAndHandlers", align 8 ; 18 uses
  %2 = alloca %"class.std::function", align 8     ; 5 uses
  %i.a = tail call noundef i32 @_ZNK2v88internal13FeedbackNexus10GetKeyTypeEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  store ptr %i.c, ptr %1, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  store ptr %i.f, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  store ptr %i.g, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  store ptr %i.j, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  store ptr %i.k, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 120
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 152
  store ptr %i.n, ptr %i.m, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.o = call noundef i32 @_ZNK2v88internal13FeedbackNexus22ExtractMapsAndHandlersEPNS0_15MapsAndHandlersESt8functionIFNS0_11MaybeHandleINS0_3MapEEENS0_6HandleIS6_EEEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = call noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #17, !inline_history !1 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  %i.s = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.t = load ptr, ptr %1, align 8                ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3
  %.not21 = icmp eq ptr %i.s, %i.t
  br i1 %.not21, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit, %_ZNSt14_Function_baseD2Ev.exit
  %.06.lcssa = phi i8 [ 0, %_ZNSt14_Function_baseD2Ev.exit ], [ %i.aj, %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit ]
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal23HeapObjectReferenceTypeELm4ESaIS3_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(40) %i.j)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_6ObjectEEELm4ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %i.f)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_3MapEEELm4ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.g

.lr.ph:                                           ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit
  %.0623 = phi i8 [ %i.aj, %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit ], [ 0, %_ZNSt14_Function_baseD2Ev.exit ]
  %.sroa.4.022 = phi i64 [ %i.ak, %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit ], [ 0, %_ZNSt14_Function_baseD2Ev.exit ] ; 3 uses
  %i.y = load ptr, ptr %i.j, align 8, !noalias !44
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.sroa.4.022
  %i.aa = load i32, ptr %i.z, align 4, !noalias !44 ; 2 uses
  %switch.i = icmp ult i32 %i.aa, 2
  br i1 %switch.i, label %_ZNK2v88internal15MapsAndHandlers8IteratordeEv.exit, label %.thread, !prof !45

_ZNK2v88internal15MapsAndHandlers8IteratordeEv.exit: ; preds = %.lr.ph
  %i.ab = load ptr, ptr %i.f, align 8, !noalias !44
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.sroa.4.022
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ac, align 8, !noalias !44 ; 3 uses
  %i.ad = icmp eq i32 %i.aa, 0
  %i.ae = icmp eq ptr %.sroa.0.0.copyload.i.i, null ; 2 uses
  br i1 %i.ad, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZNK2v88internal15MapsAndHandlers8IteratordeEv.exit
  br i1 %i.ae, label %bb.e, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i, !prof !11

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.41) #18
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i: ; preds = %bb.d
  %i.af = load i64, ptr %.sroa.0.0.copyload.i.i, align 8
  %i.ag = or i64 %i.af, 3
  br label %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit

bb.f:                                             ; preds = %_ZNK2v88internal15MapsAndHandlers8IteratordeEv.exit
  br i1 %i.ae, label %.thread, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i, !prof !10

.thread:                                          ; preds = %.lr.ph, %bb.f
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.41) #18
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i: ; preds = %bb.f
  %i.ah = load i64, ptr %.sroa.0.0.copyload.i.i, align 8
  br label %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit

_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i
  %.sroa.05.0.i = phi i64 [ %i.ag, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i ], [ %i.ah, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i ]
  %i.ai = call noundef zeroext i8 @_ZN2v88internal11LoadHandler22GetKeyedAccessLoadModeENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE(i64 %.sroa.05.0.i) #17
  %i.aj = or i8 %i.ai, %.0623                     ; 2 uses
  %i.ak = add i64 %.sroa.4.022, 1                 ; 2 uses
  %.not = icmp eq i64 %i.ak, %i.x
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %bb.a, %._crit_edge
  %.0 = phi i8 [ %.06.lcssa, %._crit_edge ], [ 0, %bb.a ]
  ret i8 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZNK2v88internal13FeedbackNexus10GetKeyTypeEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { i64, i64 } @_ZNK2v88internal13FeedbackNexus15GetFeedbackPairEv(ptr noundef nonnull align 8 dereferenceable(88) %0) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0        ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.a, 1        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 7872
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp eq i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = lshr i64 %i.c, 32
  %i.j = trunc nuw i64 %i.i to i32
  br label %_ZN2v88internalL22IsPropertyNameFeedbackENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.l = load i8, ptr %i.k, align 4               ; 2 uses
  switch i8 %i.l, label %_ZNK2v88internal13FeedbackNexus17IsOneMapManyNamesEv.exit.thread [
    i8 8, label %bb.d
    i8 14, label %bb.d
    i8 3, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c
  %i.m = tail call { i64, i64 } @_ZNK2v88internal13FeedbackNexus15GetFeedbackPairEv(ptr noundef nonnull align 8 dereferenceable(88) %0) ; 2 uses
  %i.n = extractvalue { i64, i64 } %i.m, 0        ; 3 uses
  %i.o = extractvalue { i64, i64 } %i.m, 1
  %i.p = and i64 %i.n, 3
  %i.q = icmp eq i64 %i.p, 3
  %i.r = and i64 %i.n, 4294967295
  %i.s = icmp ne i64 %i.r, 3
  %i.t = and i1 %i.q, %i.s
  br i1 %i.t, label %bb.e, label %_ZNK2v88internal13FeedbackNexus17IsOneMapManyNamesEv.exit.threadthread-pre-split

bb.e:                                             ; preds = %bb.d
  %i.u = and i64 %i.n, -3                         ; 2 uses
  %i.v = add nsw i64 %i.u, -1
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load atomic volatile i64, ptr %i.w monotonic, align 8
  %i.y = add i64 %i.x, 11
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load atomic volatile i16, ptr %i.z monotonic, align 2
  %i.ab = icmp eq i16 %i.aa, 276
  br i1 %i.ab, label %bb.f, label %_ZNK2v88internal13FeedbackNexus17IsOneMapManyNamesEv.exit.threadthread-pre-split

bb.f:                                             ; preds = %bb.e
  %i.ac = add i64 %i.u, 11
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load atomic volatile i16, ptr %i.ad monotonic, align 2
  %i.af = and i16 %i.ae, -2
  %i.ag = icmp eq i16 %i.af, 300
  %i.ah = and i64 %i.o, -17179869185
  %i.ai = icmp eq i64 %i.ah, 47244640256
  %or.cond = select i1 %i.ag, i1 %i.ai, i1 false
  br i1 %or.cond, label %_ZN2v88internalL22IsPropertyNameFeedbackENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit, label %_ZNK2v88internal13FeedbackNexus17IsOneMapManyNamesEv.exit.threadthread-pre-split

_ZNK2v88internal13FeedbackNexus17IsOneMapManyNamesEv.exit.threadthread-pre-split: ; preds = %bb.d, %bb.f, %bb.e
  %.pr = load i8, ptr %i.k, align 4
  br label %_ZNK2v88internal13FeedbackNexus17IsOneMapManyNamesEv.exit.thread

_ZNK2v88internal13FeedbackNexus17IsOneMapManyNamesEv.exit.thread: ; preds = %_ZNK2v88internal13FeedbackNexus17IsOneMapManyNamesEv.exit.threadthread-pre-split, %bb.c
  %i.aj = phi i8 [ %.pr, %_ZNK2v88internal13FeedbackNexus17IsOneMapManyNamesEv.exit.threadthread-pre-split ], [ %i.l, %bb.c ]
  switch i8 %i.aj, label %bb.h [
    i8 18, label %bb.g
    i8 13, label %bb.g
  ]

bb.g:                                             ; preds = %_ZNK2v88internal13FeedbackNexus17IsOneMapManyNamesEv.exit.thread, %_ZNK2v88internal13FeedbackNexus17IsOneMapManyNamesEv.exit.thread
  br label %bb.h

bb.h:                                             ; preds = %_ZNK2v88internal13FeedbackNexus17IsOneMapManyNamesEv.exit.thread, %bb.g
  %.sroa.speculated = phi i64 [ %i.c, %bb.g ], [ %i.b, %_ZNK2v88internal13FeedbackNexus17IsOneMapManyNamesEv.exit.thread ] ; 5 uses
  %i.ak = and i64 %.sroa.speculated, 3
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.i, label %_ZN2v88internalL22IsPropertyNameFeedbackENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit

bb.i:                                             ; preds = %bb.h
  %i.am = add nsw i64 %.sroa.speculated, -1
  %i.an = inttoptr i64 %i.am to ptr               ; 2 uses
  %i.ao = load atomic volatile i64, ptr %i.an monotonic, align 8
  %i.ap = add i64 %i.ao, 11
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load atomic volatile i16, ptr %i.aq monotonic, align 2
  %i.as = icmp ult i16 %i.ar, 128
  br i1 %i.as, label %_ZN2v88internalL22IsPropertyNameFeedbackENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = load atomic volatile i64, ptr %i.an monotonic, align 8
  %i.au = add i64 %i.at, 11
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load atomic volatile i16, ptr %i.av monotonic, align 2
  %i.ax = icmp eq i16 %i.aw, 128
  br i1 %i.ax, label %bb.k, label %_ZN2v88internalL22IsPropertyNameFeedbackENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 10624
  %i.ba = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 7312
  %i.bc = load i64, ptr %i.bb, align 8
  %.not.i = icmp eq i64 %.sroa.speculated, %i.bc
  br i1 %.not.i, label %_ZN2v88internalL22IsPropertyNameFeedbackENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 7336
  %i.be = load i64, ptr %i.bd, align 8
  %.not41.i = icmp eq i64 %.sroa.speculated, %i.be
  br i1 %.not41.i, label %_ZN2v88internalL22IsPropertyNameFeedbackENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 7320
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = icmp ne i64 %.sroa.speculated, %i.bg
  %i.bi = zext i1 %i.bh to i32
  br label %_ZN2v88internalL22IsPropertyNameFeedbackENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit

_ZN2v88internalL22IsPropertyNameFeedbackENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.f, %bb.b
  %.0 = phi i32 [ %i.j, %bb.b ], [ 1, %bb.f ], [ 0, %bb.j ], [ 0, %bb.h ], [ 1, %bb.i ], [ 0, %bb.l ], [ 0, %bb.k ], [ %i.bi, %bb.m ]
  ret i32 %.0
}

declare noundef zeroext i8 @_ZN2v88internal11LoadHandler22GetKeyedAccessLoadModeENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE(i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i8 @_ZNK2v88internal13FeedbackNexus23GetKeyedAccessStoreModeEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::MapsAndHandlers", align 8 ; 18 uses
  %2 = alloca %"class.std::function", align 8     ; 5 uses
  %i.a = tail call noundef i32 @_ZNK2v88internal13FeedbackNexus10GetKeyTypeEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  store ptr %i.c, ptr %1, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  store ptr %i.f, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  store ptr %i.g, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  store ptr %i.j, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  store ptr %i.k, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 120
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 152
  store ptr %i.n, ptr %i.m, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.o = call noundef i32 @_ZNK2v88internal13FeedbackNexus22ExtractMapsAndHandlersEPNS0_15MapsAndHandlersESt8functionIFNS0_11MaybeHandleINS0_3MapEEENS0_6HandleIS6_EEEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = call noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #17, !inline_history !1 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  %i.s = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.t = load ptr, ptr %1, align 8                ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3
  %.not161 = icmp eq ptr %i.s, %i.t
  br i1 %.not161, label %.thread144, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN2v88internal12_GLOBAL__N_130KeyedAccessStoreModeForBuiltinENS0_7BuiltinE.exit.thread138
  %.sroa.4.0162 = phi i64 [ 0, %.lr.ph ], [ %i.bj, %_ZN2v88internal12_GLOBAL__N_130KeyedAccessStoreModeForBuiltinENS0_7BuiltinE.exit.thread138 ] ; 3 uses
  %i.z = load ptr, ptr %i.j, align 8, !noalias !50
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.sroa.4.0162
  %i.ab = load i32, ptr %i.aa, align 4, !noalias !50 ; 3 uses
  %switch.i = icmp ult i32 %i.ab, 2
  br i1 %switch.i, label %_ZNK2v88internal15MapsAndHandlers8IteratordeEv.exit, label %_ZNK2v88internal15MapsAndHandlers8IteratordeEv.exit.thread

_ZNK2v88internal15MapsAndHandlers8IteratordeEv.exit: ; preds = %bb.d
  %i.ac = load ptr, ptr %i.f, align 8, !noalias !50
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.sroa.4.0162
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ad, align 8, !noalias !50 ; 2 uses
  %i.ae = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  br i1 %i.ae, label %_ZNK2v88internal15MapsAndHandlers8IteratordeEv.exit.thread, label %_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit, !prof !10

_ZNK2v88internal15MapsAndHandlers8IteratordeEv.exit.thread: ; preds = %bb.d, %_ZNK2v88internal15MapsAndHandlers8IteratordeEv.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.41) #18
  unreachable

_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit: ; preds = %_ZNK2v88internal15MapsAndHandlers8IteratordeEv.exit
  %i.af = load i64, ptr %.sroa.0.0.copyload.i.i, align 8 ; 9 uses
  %i.ag = trunc i64 %i.af to i1
  br i1 %i.ag, label %_ZN2v88internal14IsStoreHandlerENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit62

_ZN2v88internal14IsStoreHandlerENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit
  %i.ah = add nsw i64 %i.af, -1
  %i.ai = inttoptr i64 %i.ah to ptr               ; 2 uses
  %i.aj = load atomic volatile i64, ptr %i.ai monotonic, align 8
  %i.ak = add i64 %i.aj, 11
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load atomic volatile i16, ptr %i.al monotonic, align 2
  %i.an = icmp eq i16 %i.am, 138
  br i1 %i.an, label %_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit61, label %_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit62

_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit61: ; preds = %_ZN2v88internal14IsStoreHandlerENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ap = load i64, ptr %i.ao, align 8            ; 3 uses
  %i.aq = and i64 %i.ap, 1
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_ZN2v88internal12_GLOBAL__N_130KeyedAccessStoreModeForBuiltinENS0_7BuiltinE.exit, label %_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit69

_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit62: ; preds = %_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit, %_ZN2v88internal14IsStoreHandlerENS0_6TaggedINS0_6ObjectEEE.exit
  %i.as = and i64 %i.af, 1
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit63, label %bb.e

_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit63: ; preds = %_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit62
  %i.au = icmp eq i64 %i.af, 42949672960
  br i1 %i.au, label %_ZN2v88internal12_GLOBAL__N_130KeyedAccessStoreModeForBuiltinENS0_7BuiltinE.exit.thread138, label %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit

_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit: ; preds = %_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit63
  %i.av = icmp eq i32 %i.ab, 0
  %i.aw = or i64 %i.af, 3
  %spec.select = select i1 %i.av, i64 %i.aw, i64 %i.af
  %i.ax = call noundef zeroext i8 @_ZN2v88internal12StoreHandler23GetKeyedAccessStoreModeENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE(i64 %spec.select) #17 ; 2 uses
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %_ZN2v88internal12_GLOBAL__N_130KeyedAccessStoreModeForBuiltinENS0_7BuiltinE.exit.thread138, label %.thread144

bb.e:                                             ; preds = %_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit62
  %i.az = load i8, ptr %i.y, align 4
  %i.ba = icmp eq i8 %i.az, 13
  br i1 %i.ba, label %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit67, label %_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit69

_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit67: ; preds = %bb.e
  %i.bb = icmp eq i32 %i.ab, 0
  %i.bc = or i64 %i.af, 3
  %spec.select160 = select i1 %i.bb, i64 %i.bc, i64 %i.af
  %i.bd = call noundef zeroext i8 @_ZN2v88internal12StoreHandler23GetKeyedAccessStoreModeENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE(i64 %spec.select160) #17 ; 2 uses
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %_ZN2v88internal12_GLOBAL__N_130KeyedAccessStoreModeForBuiltinENS0_7BuiltinE.exit.thread138, label %.thread144

_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit69: ; preds = %bb.e, %_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit61
  %.151.in.in.in.in = phi i64 [ %i.ap, %_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit61 ], [ %i.af, %bb.e ]
  %.151.in.in.in = add i64 %.151.in.in.in.in, 89
  %.151.in.in = inttoptr i64 %.151.in.in.in to ptr
  %.151.in = load i16, ptr %.151.in.in, align 2   ; 2 uses
  %.151 = sext i16 %.151.in to i32
  %.off.i = add nsw i32 %.151, -168
  %switch.i70 = icmp ult i32 %.off.i, 12
  br i1 %switch.i70, label %switch.lookup, label %_ZN2v88internal12_GLOBAL__N_130KeyedAccessStoreModeForBuiltinENS0_7BuiltinE.exit.thread138

switch.lookup:                                    ; preds = %_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit69
  %i.bf = sext i16 %.151.in to i64
  %i.bg = getelementptr i8, ptr @switch.table._ZNK2v88internal13FeedbackNexus23GetKeyedAccessStoreModeEv, i64 %i.bf
  %switch.gep = getelementptr i8, ptr %i.bg, i64 -168
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %.thread144

_ZN2v88internal12_GLOBAL__N_130KeyedAccessStoreModeForBuiltinENS0_7BuiltinE.exit: ; preds = %_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit61
  %i.bh = call noundef zeroext i8 @_ZN2v88internal12StoreHandler23GetKeyedAccessStoreModeENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE(i64 %i.ap) #17 ; 2 uses
  %i.bi = icmp eq i8 %i.bh, 0
  br i1 %i.bi, label %_ZN2v88internal12_GLOBAL__N_130KeyedAccessStoreModeForBuiltinENS0_7BuiltinE.exit.thread138, label %.thread144

_ZN2v88internal12_GLOBAL__N_130KeyedAccessStoreModeForBuiltinENS0_7BuiltinE.exit.thread138: ; preds = %_ZN2v88internal12_GLOBAL__N_130KeyedAccessStoreModeForBuiltinENS0_7BuiltinE.exit, %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit67, %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit, %_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit63, %_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit69
  %i.bj = add i64 %.sroa.4.0162, 1                ; 2 uses
  %.not = icmp eq i64 %i.bj, %i.x
  br i1 %.not, label %.thread144, label %bb.d

.thread144:                                       ; preds = %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit, %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit67, %_ZN2v88internal12_GLOBAL__N_130KeyedAccessStoreModeForBuiltinENS0_7BuiltinE.exit.thread138, %_ZN2v88internal12_GLOBAL__N_130KeyedAccessStoreModeForBuiltinENS0_7BuiltinE.exit, %switch.lookup, %_ZNSt14_Function_baseD2Ev.exit
  %i.bk = phi i8 [ 0, %_ZNSt14_Function_baseD2Ev.exit ], [ %switch.load, %switch.lookup ], [ 0, %_ZN2v88internal12_GLOBAL__N_130KeyedAccessStoreModeForBuiltinENS0_7BuiltinE.exit.thread138 ], [ %i.ax, %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit ], [ %i.bd, %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit67 ], [ %i.bh, %_ZN2v88internal12_GLOBAL__N_130KeyedAccessStoreModeForBuiltinENS0_7BuiltinE.exit ]
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal23HeapObjectReferenceTypeELm4ESaIS3_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(40) %i.j)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_6ObjectEEELm4ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %i.f)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_3MapEEELm4ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %.thread144
  %.6 = phi i8 [ %i.bk, %.thread144 ], [ 0, %bb.a ]
  ret i8 %.6
}

declare noundef zeroext i8 @_ZN2v88internal12StoreHandler23GetKeyedAccessStoreModeENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE(i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal13FeedbackNexus17IsOneMapManyNamesEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i8, ptr %i.a, align 4
  switch i8 %i.b, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit [
    i8 8, label %bb.b
    i8 14, label %bb.b
    i8 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.c = tail call { i64, i64 } @_ZNK2v88internal13FeedbackNexus15GetFeedbackPairEv(ptr noundef nonnull align 8 dereferenceable(88) %0) ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0        ; 3 uses
  %i.e = extractvalue { i64, i64 } %i.c, 1        ; 2 uses
  %i.f = and i64 %i.d, 3
  %i.g = icmp eq i64 %i.f, 3
  %i.h = and i64 %i.d, 4294967295
  %i.i = icmp ne i64 %i.h, 3
  %i.j = and i1 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit

bb.c:                                             ; preds = %bb.b
  %i.k = and i64 %i.d, -3                         ; 2 uses
  %i.l = add nsw i64 %i.k, -1
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load atomic volatile i64, ptr %i.m monotonic, align 8
  %i.o = add i64 %i.n, 11
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i16, ptr %i.p monotonic, align 2
  %i.r = icmp eq i16 %i.q, 276
  br i1 %i.r, label %bb.d, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit

bb.d:                                             ; preds = %bb.c
  %i.s = add i64 %i.k, 11
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load atomic volatile i16, ptr %i.t monotonic, align 2
  %i.v = and i16 %i.u, -2
  %i.w = icmp eq i16 %i.v, 300
  %i.x = and i64 %i.e, 1
  %i.y = icmp eq i64 %i.x, 0
  %or.cond = select i1 %i.w, i1 %i.y, i1 false
  br i1 %or.cond, label %bb.e, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit

bb.e:                                             ; preds = %bb.d
  %i.z = and i64 %i.e, -17179869186
  %spec.select = icmp eq i64 %i.z, 47244640256
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %bb.e, %bb.a, %bb.c, %bb.d, %bb.b
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.c ], [ %spec.select, %bb.e ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZNK2v88internal13FeedbackNexus17GetTypeOfFeedbackEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { i64, i64 } @_ZNK2v88internal13FeedbackNexus15GetFeedbackPairEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.b = extractvalue { i64, i64 } %i.a, 0        ; 2 uses
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = lshr i64 %i.b, 32
  %i.f = trunc nuw i64 %i.e to i32
  ret i32 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZNK2v88internal13FeedbackNexus22GetConstructorFeedbackEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { i64, i64 } @_ZNK2v88internal13FeedbackNexus15GetFeedbackPairEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.b = extractvalue { i64, i64 } %i.a, 0        ; 3 uses
  %i.c = and i64 %i.b, 3
  %i.d = icmp eq i64 %i.c, 3
  %i.e = and i64 %i.b, 4294967295
  %i.f = icmp ne i64 %i.e, 3
  %i.g = and i1 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %_ZNK2v88internal11NexusConfig9NewHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit

bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %i.b, -3                         ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8              ; 4 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 560 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 568
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp eq ptr %i.n, %i.p
  br i1 %i.q, label %bb.d, label %_ZN2v88internal6HandleINS0_8JSObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.r = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.l) #17
  br label %_ZN2v88internal6HandleINS0_8JSObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_8JSObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi ptr [ %i.r, %bb.d ], [ %i.n, %bb.c ] ; 3 uses
  %i.s = ptrtoint ptr %.0.i.i.i to i64
  %i.t = add i64 %i.s, 8
  %i.u = inttoptr i64 %i.t to ptr
  store ptr %i.u, ptr %i.m, align 8
  store i64 %i.h, ptr %.0.i.i.i, align 8
  br label %_ZNK2v88internal11NexusConfig9NewHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit

bb.e:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.w = load i8, ptr %i.v, align 8, !range !13, !noundef !14
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = tail call noundef ptr @_ZN2v88internal16LocalHandleScope19GetMainThreadHandleEPNS0_9LocalHeapEm(ptr noundef nonnull %i.j, i64 noundef %i.h) #17
  br label %_ZNK2v88internal11NexusConfig9NewHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit

bb.g:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.aa = load ptr, ptr %i.z, align 8             ; 5 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = icmp eq ptr %i.ab, %i.ad
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = tail call noundef ptr @_ZN2v88internal12LocalHandles8AddBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %i.aa) #17
  %.pre.i = load ptr, ptr %i.aa, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ag = phi ptr [ %.pre.i, %bb.h ], [ %i.ab, %bb.g ]
  %.0.i.i5.i = phi ptr [ %i.af, %bb.h ], [ %i.ab, %bb.g ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.ah, ptr %i.aa, align 8
  store i64 %i.h, ptr %.0.i.i5.i, align 8
  br label %_ZNK2v88internal11NexusConfig9NewHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit

_ZNK2v88internal11NexusConfig9NewHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit: ; preds = %bb.a, %bb.i, %bb.f, %_ZN2v88internal6HandleINS0_8JSObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %.sroa.05.0 = phi ptr [ %.0.i.i5.i, %bb.i ], [ %.0.i.i.i, %_ZN2v88internal6HandleINS0_8JSObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %i.y, %bb.f ], [ null, %bb.a ]
  ret ptr %.sroa.05.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal16FeedbackIteratorC2EPKNS0_13FeedbackNexusE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) initializes((0, 25), (28, 36)) %0, ptr noundef nonnull %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %0, i8 0, i64 25, i1 false)
  store i32 -1, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store i32 2, ptr %i.e, align 8
  %i.f = tail call { i64, i64 } @_ZNK2v88internal13FeedbackNexus15GetFeedbackPairEv(ptr noundef nonnull align 8 dereferenceable(88) %1) ; 2 uses
  %i.g = extractvalue { i64, i64 } %i.f, 0        ; 10 uses
  %i.h = extractvalue { i64, i64 } %i.f, 1        ; 4 uses
  %i.i = and i64 %i.g, 3                          ; 2 uses
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.b, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.k = add nsw i64 %i.g, -1
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = load atomic volatile i64, ptr %i.l monotonic, align 8
  %i.n = add i64 %i.m, 11
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load atomic volatile i16, ptr %i.o monotonic, align 2
  %i.q = icmp ult i16 %i.p, 128
  %i.r = load atomic volatile i64, ptr %i.l monotonic, align 8
  %i.s = add i64 %i.r, 11
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load atomic volatile i16, ptr %i.t monotonic, align 2
  br i1 %i.q, label %.thread73, label %bb.c

.thread73:                                        ; preds = %bb.b
  store i32 0, ptr %i.d, align 4
  store i32 1, ptr %i.e, align 8
  br label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.v = icmp eq i16 %i.u, 128
  br i1 %i.v, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 10624
  %i.y = load ptr, ptr %i.x, align 8              ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 7312
  %i.aa = load i64, ptr %i.z, align 8
  %.not.i = icmp eq i64 %i.g, %i.aa
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 7336
  %i.ac = load i64, ptr %i.ab, align 8
  %.not41.i = icmp eq i64 %i.g, %i.ac
  br i1 %.not41.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 7320
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = icmp ne i64 %i.g, %i.ae
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.0.i50.ph = phi i1 [ false, %bb.c ], [ %i.af, %bb.f ], [ false, %bb.e ], [ false, %bb.d ] ; 2 uses
  %i.ag = load atomic volatile i64, ptr %i.l monotonic, align 8
  %i.ah = add i64 %i.ag, 11
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load atomic volatile i16, ptr %i.ai monotonic, align 2
  %i.ak = add i16 %i.aj, -257
  %i.al = icmp ult i16 %i.ak, 2
  %or.cond = or i1 %.0.i50.ph, %i.al
  br i1 %or.cond, label %bb.h, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.thread61

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.d, align 4
  store i32 1, ptr %i.e, align 8
  br i1 %.0.i50.ph, label %bb.i, label %bb.q

bb.i:                                             ; preds = %.thread73, %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.an = load ptr, ptr %i.am, align 8            ; 4 uses
  %.not.i22 = icmp eq ptr %i.an, null
  br i1 %.not.i22, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8            ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 560 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 568
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = icmp eq ptr %i.ar, %i.at
  br i1 %i.au, label %bb.k, label %_ZN2v88internal6HandleINS0_14WeakFixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !11

bb.k:                                             ; preds = %bb.j
  %i.av = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.ap) #17
  br label %_ZN2v88internal6HandleINS0_14WeakFixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_14WeakFixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi ptr [ %i.av, %bb.k ], [ %i.ar, %bb.j ] ; 3 uses
  %i.aw = ptrtoint ptr %.0.i.i.i to i64
  %i.ax = add i64 %i.aw, 8
  %i.ay = inttoptr i64 %i.ax to ptr
  store ptr %i.ay, ptr %i.aq, align 8
  store i64 %i.h, ptr %.0.i.i.i, align 8
  br label %_ZNK2v88internal11NexusConfig9NewHandleINS0_14WeakFixedArrayEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit

bb.l:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ba = load i8, ptr %i.az, align 8, !range !13, !noundef !14
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bc = tail call noundef ptr @_ZN2v88internal16LocalHandleScope19GetMainThreadHandleEPNS0_9LocalHeapEm(ptr noundef nonnull %i.an, i64 noundef %i.h) #17
  br label %_ZNK2v88internal11NexusConfig9NewHandleINS0_14WeakFixedArrayEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit

bb.n:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.be = load ptr, ptr %i.bd, align 8            ; 5 uses
  %i.bf = load ptr, ptr %i.be, align 8            ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = icmp eq ptr %i.bf, %i.bh
  br i1 %i.bi, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bj = tail call noundef ptr @_ZN2v88internal12LocalHandles8AddBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %i.be) #17
  %.pre.i = load ptr, ptr %i.be, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bk = phi ptr [ %.pre.i, %bb.o ], [ %i.bf, %bb.n ]
  %.0.i.i5.i = phi ptr [ %i.bj, %bb.o ], [ %i.bf, %bb.n ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bl, ptr %i.be, align 8
  store i64 %i.h, ptr %.0.i.i5.i, align 8
  br label %_ZNK2v88internal11NexusConfig9NewHandleINS0_14WeakFixedArrayEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit

bb.q:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bn = load ptr, ptr %i.bm, align 8            ; 4 uses
  %.not.i23 = icmp eq ptr %i.bn, null
  br i1 %.not.i23, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bp = load ptr, ptr %i.bo, align 8            ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 560 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 568
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = icmp eq ptr %i.br, %i.bt
  br i1 %i.bu, label %bb.s, label %_ZN2v88internal6HandleINS0_14WeakFixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i27, !prof !11

bb.s:                                             ; preds = %bb.r
  %i.bv = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.bp) #17
  br label %_ZN2v88internal6HandleINS0_14WeakFixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i27

_ZN2v88internal6HandleINS0_14WeakFixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i27: ; preds = %bb.s, %bb.r
  %.0.i.i.i28 = phi ptr [ %i.bv, %bb.s ], [ %i.br, %bb.r ] ; 3 uses
  %i.bw = ptrtoint ptr %.0.i.i.i28 to i64
  %i.bx = add i64 %i.bw, 8
  %i.by = inttoptr i64 %i.bx to ptr
  store ptr %i.by, ptr %i.bq, align 8
  store i64 %i.g, ptr %.0.i.i.i28, align 8
  br label %_ZNK2v88internal11NexusConfig9NewHandleINS0_14WeakFixedArrayEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit

bb.t:                                             ; preds = %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.ca = load i8, ptr %i.bz, align 8, !range !13, !noundef !14
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cc = tail call noundef ptr @_ZN2v88internal16LocalHandleScope19GetMainThreadHandleEPNS0_9LocalHeapEm(ptr noundef nonnull %i.bn, i64 noundef %i.g) #17
  br label %_ZNK2v88internal11NexusConfig9NewHandleINS0_14WeakFixedArrayEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit

bb.v:                                             ; preds = %bb.t
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %i.ce = load ptr, ptr %i.cd, align 8            ; 5 uses
  %i.cf = load ptr, ptr %i.ce, align 8            ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = icmp eq ptr %i.cf, %i.ch
  br i1 %i.ci, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cj = tail call noundef ptr @_ZN2v88internal12LocalHandles8AddBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ce) #17
  %.pre.i26 = load ptr, ptr %i.ce, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ck = phi ptr [ %.pre.i26, %bb.w ], [ %i.cf, %bb.v ]
  %.0.i.i5.i24 = phi ptr [ %i.cj, %bb.w ], [ %i.cf, %bb.v ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.cl, ptr %i.ce, align 8
  store i64 %i.g, ptr %.0.i.i5.i24, align 8
  br label %_ZNK2v88internal11NexusConfig9NewHandleINS0_14WeakFixedArrayEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit

_ZNK2v88internal11NexusConfig9NewHandleINS0_14WeakFixedArrayEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit: ; preds = %bb.x, %bb.u, %_ZN2v88internal6HandleINS0_14WeakFixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i27, %bb.p, %bb.m, %_ZN2v88internal6HandleINS0_14WeakFixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %storemerge.in = phi ptr [ %.0.i.i5.i, %bb.p ], [ %.0.i.i.i, %_ZN2v88internal6HandleINS0_14WeakFixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %i.bc, %bb.m ], [ %.0.i.i.i28, %_ZN2v88internal6HandleINS0_14WeakFixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i27 ], [ %i.cc, %bb.u ], [ %.0.i.i5.i24, %bb.x ]
  %storemerge = ptrtoint ptr %storemerge.in to i64
  store i64 %storemerge, ptr %0, align 8
  tail call void @_ZN2v88internal16FeedbackIterator18AdvancePolymorphicEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  br label %bb.z

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %bb.a
  %i.cm = icmp eq i64 %i.i, 3
  %i.cn = and i64 %i.g, 4294967295
  %i.co = icmp ne i64 %i.cn, 3
  %i.cp = and i1 %i.cm, %i.co
  br i1 %i.cp, label %bb.y, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.thread61

bb.y:                                             ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit
  %i.cq = and i64 %i.g, -3
  store i32 0, ptr %i.e, align 8
  store i64 %i.cq, ptr %i.a, align 8
  store i64 %i.h, ptr %i.b, align 8
  br label %bb.z

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.thread61: ; preds = %bb.g, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit
  store i8 1, ptr %i.c, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.thread61, %_ZNK2v88internal11NexusConfig9NewHandleINS0_14WeakFixedArrayEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal16FeedbackIterator18AdvancePolymorphicEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !13, !noundef !14
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.33) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.e, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.34) #18
  unreachable

bb.e:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i9 = load ptr, ptr %0, align 8 ; 2 uses
  %i.g = load i64, ptr %.sroa.0.0.copyload.i9, align 8
  %i.h = add i64 %i.g, -1
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = lshr i64 %i.k, 32
  %i.m = trunc nuw i64 %i.l to i32                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4              ; 3 uses
  %i.p = icmp slt i32 %i.o, %i.m
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.q = sext i32 %i.o to i64
  %i.r = ashr i64 %i.k, 32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit
  %indvars.iv = phi i64 [ %i.q, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit ] ; 4 uses
  %i.s = load i64, ptr %.sroa.0.0.copyload.i9, align 8
  %i.t = add i64 %i.s, -1
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.w = getelementptr [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = load atomic volatile i64, ptr %i.w monotonic, align 8 ; 3 uses
  %i.y = and i64 %i.x, 3
  %i.z = icmp eq i64 %i.y, 3
  %i.aa = and i64 %i.x, 4294967295
  %i.ab = icmp ne i64 %i.aa, 3
  %i.ac = and i1 %i.z, %i.ab
  br i1 %i.ac, label %bb.f, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit

bb.f:                                             ; preds = %.lr.ph
  %i.ad = getelementptr [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.ae = trunc nsw i64 %indvars.iv to i32
  %i.af = and i64 %i.x, -3
  %i.ag = getelementptr i8, ptr %i.ad, i64 8
  %i.ah = load atomic volatile i64, ptr %i.ag monotonic, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.af, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ah, ptr %i.aj, align 8
  %i.ak = add nsw i32 %i.ae, 2
  store i32 %i.ak, ptr %i.n, align 4
  br label %bb.i

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, 2   ; 3 uses
  %i.al = trunc nsw i64 %indvars.iv.next to i32   ; 2 uses
  store i32 %i.al, ptr %i.n, align 4
  %i.am = icmp slt i64 %indvars.iv.next, %i.r
  br i1 %i.am, label %.lr.ph, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit, %bb.e
  %.lcssa = phi i32 [ %i.o, %bb.e ], [ %i.al, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit ]
  %i.an = icmp eq i32 %.lcssa, %i.m
  br i1 %i.an, label %bb.h, label %bb.g, !prof !9

bb.g:                                             ; preds = %._crit_edge
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.35) #18
  unreachable

bb.h:                                             ; preds = %._crit_edge
  store i8 1, ptr %i.a, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_16FeedbackSlotKindEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = shl i64 %i.l, 1
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 2 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i = icmp eq i64 %1, -1
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.36) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = add i64 %i.o, 7
  %i.r = and i64 %i.q, -8                         ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_16FeedbackSlotKindEA_S3_EEPT_m.exit, !prof !11

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #17
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_16FeedbackSlotKindEA_S3_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_16FeedbackSlotKindEA_S3_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_16FeedbackSlotKindEA_S3_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr nonnull align 1 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayINS0_16FeedbackSlotKindEA_S3_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayINS0_16FeedbackSlotKindEA_S3_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

declare preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

declare void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64, i64 noundef, i64) local_unnamed_addr #2

declare void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64, i64, i64) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK2v88internal6Script16IsUserJavaScriptEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal16LocalHandleScope19GetMainThreadHandleEPNS0_9LocalHeapEm(ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal12LocalHandles8AddBlockEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #12

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_6ObjectEEELm4ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #9 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_6ObjectEEELm4ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_6ObjectEEELm4ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.h)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.j = sub nuw nsw i64 64, %i.i                 ; 2 uses
  %i.k = icmp ugt i64 %spec.select.i.i, 576460752303423487
  br i1 %i.k, label %bb.b, label %bb.e, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 8, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #19 ; 4 uses
  %i.p = load ptr, ptr %0, align 8                ; 2 uses
  %i.q = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt18uninitialized_moveIPN2v88internal21DirectHandleUncheckedINS1_6ObjectEEES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i ], [ %i.o, %bb.e ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i ], [ %i.p, %bb.e ] ; 2 uses
  %i.s = load i64, ptr %.sroa.04.07.i.i.i.i, align 8
  store i64 %i.s, ptr %.08.i.i.i.i, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  %i.v = icmp eq ptr %i.t, %i.q
  br i1 %i.v, label %_ZSt18uninitialized_moveIPN2v88internal21DirectHandleUncheckedINS1_6ObjectEEES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !51

_ZSt18uninitialized_moveIPN2v88internal21DirectHandleUncheckedINS1_6ObjectEEES5_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i, %bb.e
  %i.w = shl nuw i64 1, %i.j
  %i.x = ptrtoint ptr %i.m to i64
  %i.y = sub i64 %i.x, %i.f
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_6ObjectEEELm4ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  store ptr %i.o, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.y
  store ptr %i.z, ptr %i.a, align 8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.w
  store ptr %i.aa, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_6ObjectEEELm4ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #9 comdat align 2 {
_ZSt9destroy_nIPN2v88internal21DirectHandleUncheckedINS1_6ObjectEEElET_S6_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal21DirectHandleUncheckedINS1_6ObjectEEElET_S6_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #20
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal21DirectHandleUncheckedINS1_6ObjectEEElET_S6_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #13

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal23HeapObjectReferenceTypeELm4ESaIS3_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #9 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal23HeapObjectReferenceTypeELm4ESaIS3_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal23HeapObjectReferenceTypeELm4ESaIS3_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.h)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.j = sub nuw nsw i64 64, %i.i                 ; 2 uses
  %i.k = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.k, label %bb.b, label %bb.e, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 4, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #19 ; 5 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = load ptr, ptr %i.a, align 8
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = icmp sgt i64 %i.t, 4
  br i1 %i.u, label %bb.f, label %bb.g, !prof !9

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.p, i64 %i.t, i1 false)
  br label %_ZSt18uninitialized_moveIPN2v88internal23HeapObjectReferenceTypeES3_ET0_T_S5_S4_.exit

bb.g:                                             ; preds = %bb.e
  %i.v = icmp eq i64 %i.t, 4
  br i1 %i.v, label %bb.h, label %_ZSt18uninitialized_moveIPN2v88internal23HeapObjectReferenceTypeES3_ET0_T_S5_S4_.exit

bb.h:                                             ; preds = %bb.g
  %i.w = load i32, ptr %i.p, align 4
  store i32 %i.w, ptr %i.o, align 4
  br label %_ZSt18uninitialized_moveIPN2v88internal23HeapObjectReferenceTypeES3_ET0_T_S5_S4_.exit

_ZSt18uninitialized_moveIPN2v88internal23HeapObjectReferenceTypeES3_ET0_T_S5_S4_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.x = shl nuw i64 1, %i.j
  %i.y = ptrtoint ptr %i.m to i64
  %i.z = sub i64 %i.y, %i.f
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal23HeapObjectReferenceTypeELm4ESaIS3_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  store ptr %i.o, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.z
  store ptr %i.aa, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.x
  store ptr %i.ab, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal23HeapObjectReferenceTypeELm4ESaIS3_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #9 comdat align 2 {
_ZSt9destroy_nIPN2v88internal23HeapObjectReferenceTypeElET_S4_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal23HeapObjectReferenceTypeElET_S4_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #20
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal23HeapObjectReferenceTypeElET_S4_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_3MapEEELm4ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #9 comdat align 2 {
_ZSt9destroy_nIPN2v88internal21DirectHandleUncheckedINS1_3MapEEElET_S6_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal21DirectHandleUncheckedINS1_3MapEEElET_S6_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #20
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal21DirectHandleUncheckedINS1_3MapEEElET_S6_T0_.exit
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

declare void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_3MapEEELm4ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #9 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_3MapEEELm4ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_3MapEEELm4ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.h)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.j = sub nuw nsw i64 64, %i.i                 ; 2 uses
  %i.k = icmp ugt i64 %spec.select.i.i, 576460752303423487
  br i1 %i.k, label %bb.b, label %bb.e, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 8, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #19 ; 4 uses
  %i.p = load ptr, ptr %0, align 8                ; 2 uses
  %i.q = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt18uninitialized_moveIPN2v88internal21DirectHandleUncheckedINS1_3MapEEES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i ], [ %i.o, %bb.e ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i ], [ %i.p, %bb.e ] ; 2 uses
  %i.s = load i64, ptr %.sroa.04.07.i.i.i.i, align 8
  store i64 %i.s, ptr %.08.i.i.i.i, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  %i.v = icmp eq ptr %i.t, %i.q
  br i1 %i.v, label %_ZSt18uninitialized_moveIPN2v88internal21DirectHandleUncheckedINS1_3MapEEES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !52

_ZSt18uninitialized_moveIPN2v88internal21DirectHandleUncheckedINS1_3MapEEES5_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i, %bb.e
  %i.w = shl nuw i64 1, %i.j
  %i.x = ptrtoint ptr %i.m to i64
  %i.y = sub i64 %i.x, %i.f
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_3MapEEELm4ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  store ptr %i.o, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.y
  store ptr %i.z, ptr %i.a, align 8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.w
  store ptr %i.aa, ptr %i.c, align 8
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

declare i32 @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewJSDispatchHandleEtNS0_12DirectHandleINS0_4CodeEEEPNS0_19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE31SpaceWithBlackAllocationSupportE(ptr noundef nonnull align 1 dereferenceable(1), i16 noundef zeroext, ptr, ptr noundef) local_unnamed_addr #2

declare void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE(i64, i32) local_unnamed_addr #2

declare i64 @_ZN2v88internal11FactoryBaseINS0_7FactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i8 noundef zeroext, i8, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal15IsCompiledScopeC2ENS0_6TaggedINS0_18SharedFunctionInfoEEEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(9) %0, i64 %1, ptr noundef %2) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i8 0, ptr %i.a, align 8
  %i.b = add i64 %1, 7
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = load atomic volatile i64, ptr %i.c acquire, align 8 ; 6 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %_ZN2v88internal2IsINS0_4CodeENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i, label %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread

_ZN2v88internal2IsINS0_4CodeENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i: ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i64, ptr %i.g monotonic, align 8
  %i.i = add i64 %i.h, 11
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load atomic volatile i16, ptr %i.j monotonic, align 2
  %i.l = icmp eq i16 %i.k, 185
  br i1 %i.l, label %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit, label %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread

_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit: ; preds = %_ZN2v88internal2IsINS0_4CodeENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i
  %i.m = add i64 %i.d, 51
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i32, ptr %i.n monotonic, align 4
  %i.p = and i32 %i.o, 15
  %i.q = icmp eq i32 %i.p, 10
  br i1 %i.q, label %_ZNK2v88internal4Code28bytecode_or_interpreter_dataEv.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.45) #18
  unreachable

_ZNK2v88internal4Code28bytecode_or_interpreter_dataEv.exit: ; preds = %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit
  %i.r = add i64 %i.d, 7
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load i64, ptr %i.s, align 8
  br label %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread

_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread: ; preds = %bb.a, %_ZN2v88internal2IsINS0_4CodeENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i, %_ZNK2v88internal4Code28bytecode_or_interpreter_dataEv.exit
  %.sroa.027.0 = phi i64 [ %i.t, %_ZNK2v88internal4Code28bytecode_or_interpreter_dataEv.exit ], [ %i.d, %_ZN2v88internal2IsINS0_4CodeENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i ], [ %i.d, %bb.a ] ; 3 uses
  %i.u = trunc i64 %.sroa.027.0 to i1
  br i1 %i.u, label %_ZN2v88internal2IsINS0_13BytecodeArrayENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i, label %_ZN2v88internal16IsUncompiledDataENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal2IsINS0_13BytecodeArrayENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i: ; preds = %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread
  %i.v = add nsw i64 %.sroa.027.0, -1
  %i.w = inttoptr i64 %i.v to ptr                 ; 4 uses
  %i.x = load atomic volatile i64, ptr %i.w monotonic, align 8
  %i.y = add i64 %i.x, 11
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load atomic volatile i16, ptr %i.z monotonic, align 2
  %i.ab = icmp eq i16 %i.aa, 184
  br i1 %i.ab, label %_ZN2v88internal7TryCastINS0_13BytecodeArrayENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit, label %_ZN2v88internal2IsINS0_15InterpreterDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i

_ZN2v88internal7TryCastINS0_13BytecodeArrayENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit: ; preds = %_ZN2v88internal2IsINS0_13BytecodeArrayENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 568
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = icmp eq ptr %i.ad, %i.af
  br i1 %i.ag, label %bb.c, label %_ZN2v88internal6HandleINS0_13BytecodeArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !11

bb.c:                                             ; preds = %_ZN2v88internal7TryCastINS0_13BytecodeArrayENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit
  %i.ah = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #17
  br label %_ZN2v88internal6HandleINS0_13BytecodeArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_13BytecodeArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal7TryCastINS0_13BytecodeArrayENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit, %bb.c
  %.0.i.i = phi ptr [ %i.ah, %bb.c ], [ %i.ad, %_ZN2v88internal7TryCastINS0_13BytecodeArrayENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit ] ; 2 uses
  %i.ai = ptrtoint ptr %.0.i.i to i64             ; 2 uses
  %i.aj = add i64 %i.ai, 8
  %i.ak = inttoptr i64 %i.aj to ptr
  store ptr %i.ak, ptr %i.ac, align 8
  store i64 %.sroa.027.0, ptr %.0.i.i, align 8
  store i64 %i.ai, ptr %0, align 8
  br label %_ZNK2v88internal18SharedFunctionInfo11is_compiledEv.exit

_ZN2v88internal2IsINS0_15InterpreterDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i: ; preds = %_ZN2v88internal2IsINS0_13BytecodeArrayENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i
  %i.al = load atomic volatile i64, ptr %i.w monotonic, align 8
  %i.am = add i64 %i.al, 11
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load atomic volatile i16, ptr %i.an monotonic, align 2
  %i.ap = icmp eq i16 %i.ao, 186
  br i1 %i.ap, label %_ZN2v88internal7TryCastINS0_15InterpreterDataENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit, label %_ZN2v88internal16IsUncompiledDataENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal7TryCastINS0_15InterpreterDataENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit: ; preds = %_ZN2v88internal2IsINS0_15InterpreterDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 568
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = icmp eq ptr %i.at, %i.av
  br i1 %i.aw, label %bb.d, label %_ZN2v88internal6HandleINS0_13BytecodeArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit14, !prof !11

bb.d:                                             ; preds = %_ZN2v88internal7TryCastINS0_15InterpreterDataENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit
  %i.ax = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #17
  br label %_ZN2v88internal6HandleINS0_13BytecodeArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit14

_ZN2v88internal6HandleINS0_13BytecodeArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit14: ; preds = %_ZN2v88internal7TryCastINS0_15InterpreterDataENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit, %bb.d
  %.0.i.i13 = phi ptr [ %i.ax, %bb.d ], [ %i.at, %_ZN2v88internal7TryCastINS0_15InterpreterDataENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit ] ; 2 uses
  %i.ay = ptrtoint ptr %.0.i.i13 to i64           ; 2 uses
  %i.az = add i64 %i.ay, 8
  %i.ba = inttoptr i64 %i.az to ptr
  store ptr %i.ba, ptr %i.as, align 8
  store i64 %i.ar, ptr %.0.i.i13, align 8
  store i64 %i.ay, ptr %0, align 8
  br label %_ZNK2v88internal18SharedFunctionInfo11is_compiledEv.exit

_ZN2v88internal16IsUncompiledDataENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal2IsINS0_15InterpreterDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i
  %i.bb = load atomic volatile i64, ptr %i.w monotonic, align 8
  %i.bc = add i64 %i.bb, 11
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = load atomic volatile i16, ptr %i.bd monotonic, align 2
  %i.bf = add i16 %i.be, -173
  %i.bg = icmp ult i16 %i.bf, 4
  br i1 %i.bg, label %bb.e, label %_ZN2v88internal16IsUncompiledDataENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.e:                                             ; preds = %_ZN2v88internal16IsUncompiledDataENS0_6TaggedINS0_6ObjectEEE.exit
  store i64 0, ptr %0, align 8
  br label %_ZNK2v88internal18SharedFunctionInfo11is_compiledEv.exit

_ZN2v88internal16IsUncompiledDataENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread, %_ZN2v88internal16IsUncompiledDataENS0_6TaggedINS0_6ObjectEEE.exit
  store i64 0, ptr %0, align 8
  %i.bh = add i64 %1, 15
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = load atomic volatile i64, ptr %i.bi acquire, align 8
  %.not.i = icmp eq i64 %i.bj, 446676598784
  br i1 %.not.i, label %_ZNK2v88internal18SharedFunctionInfo11is_compiledEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal16IsUncompiledDataENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.bk = load atomic volatile i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.bl = trunc i64 %i.bk to i1
  br i1 %i.bl, label %bb.g, label %_ZNK2v88internal18SharedFunctionInfo11is_compiledEv.exit

bb.g:                                             ; preds = %bb.f
  %i.bm = add nsw i64 %i.bk, -1
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = load atomic volatile i64, ptr %i.bn monotonic, align 8
  %i.bp = add i64 %i.bo, 11
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = load atomic volatile i16, ptr %i.bq monotonic, align 2
  %i.bs = add i16 %i.br, -177
  %i.bt = icmp ult i16 %i.bs, -4
  %i.bu = zext i1 %i.bt to i8
  br label %_ZNK2v88internal18SharedFunctionInfo11is_compiledEv.exit

_ZNK2v88internal18SharedFunctionInfo11is_compiledEv.exit: ; preds = %bb.g, %bb.f, %_ZN2v88internal16IsUncompiledDataENS0_6TaggedINS0_6ObjectEEE.exit.thread, %_ZN2v88internal6HandleINS0_13BytecodeArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit14, %bb.e, %_ZN2v88internal6HandleINS0_13BytecodeArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.sink = phi i8 [ 1, %_ZN2v88internal6HandleINS0_13BytecodeArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit14 ], [ 1, %_ZN2v88internal6HandleINS0_13BytecodeArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ 0, %bb.e ], [ 0, %_ZN2v88internal16IsUncompiledDataENS0_6TaggedINS0_6ObjectEEE.exit.thread ], [ 1, %bb.f ], [ %i.bu, %bb.g ]
  store i8 %.sink, ptr %i.a, align 8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #12

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { builtin nounwind allocsize(0) }
attributes #20 = { builtin nounwind }

!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !{!0, !8}
!1 = distinct !{null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!10 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!13 = !{i8 0, i8 2}
!14 = !{}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !"_ZSt19__relocate_object_aIN2v88internal21DirectHandleUncheckedINS1_12FeedbackCellEEES4_SaIS4_EEvPT_PT0_RT1_"}
!21 = distinct !{!21, !20, !"_ZSt19__relocate_object_aIN2v88internal21DirectHandleUncheckedINS1_12FeedbackCellEEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!22 = distinct !{!22, !20, !"_ZSt19__relocate_object_aIN2v88internal21DirectHandleUncheckedINS1_12FeedbackCellEEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!23 = distinct !{!23, !8}
!24 = distinct !{!24, !8}
!25 = distinct !{!25, !8}
!26 = !{!21}
!27 = !{!22}
!28 = distinct !{!28, !8}
!29 = distinct !{!29, !8}
!30 = distinct !{!30, !8}
!31 = distinct !{!31, !8}
!32 = distinct !{!32, !"_ZNK2v88internal15MapsAndHandlersixEm"}
!33 = distinct !{!33, !32, !"_ZNK2v88internal15MapsAndHandlersixEm: argument 0"}
!34 = distinct !{!34, !8}
!35 = !{!33}
!36 = distinct !{!36, !8}
!37 = distinct !{null}
!38 = distinct !{!38, !8}
!39 = distinct !{!39, !8}
!40 = distinct !{!40, !"_ZNK2v88internal15MapsAndHandlers8IteratordeEv"}
!41 = distinct !{!41, !40, !"_ZNK2v88internal15MapsAndHandlers8IteratordeEv: argument 0"}
!42 = distinct !{!42, !"_ZNK2v88internal15MapsAndHandlersixEm"}
!43 = distinct !{!43, !42, !"_ZNK2v88internal15MapsAndHandlersixEm: argument 0"}
!44 = !{!43, !41}
!45 = !{!"branch_weights", i32 2146410443, i32 1073205}
!46 = distinct !{!46, !"_ZNK2v88internal15MapsAndHandlers8IteratordeEv"}
!47 = distinct !{!47, !46, !"_ZNK2v88internal15MapsAndHandlers8IteratordeEv: argument 0"}
!48 = distinct !{!48, !"_ZNK2v88internal15MapsAndHandlersixEm"}
!49 = distinct !{!49, !48, !"_ZNK2v88internal15MapsAndHandlersixEm: argument 0"}
!50 = !{!49, !47}
!51 = distinct !{!51, !8}
!52 = distinct !{!52, !8}
end_hunk_3
