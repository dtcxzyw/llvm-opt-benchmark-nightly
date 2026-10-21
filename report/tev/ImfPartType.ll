Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ImfPartType?download=true
inline.NumInlined: 31
inline.NumDeleted: 14
begin_hunk_0_@_ZN7Imf_3_47isImageERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE:bb.a

.preheader.i:                                     ; preds = %bb.b
  %.not1922.i = icmp eq i8 %i.e, 0
  br i1 %.not1922.i, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit14, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.01525.pn.i = phi ptr [ %.01525.i, %.lr.ph.i ], [ %0, %.preheader.i ]
  %.024.i = phi ptr [ %i.k, %.lr.ph.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L13SCANLINEIMAGEE, i64 1), %.preheader.i ] ; 2 uses
  %.01623.i = phi i64 [ %i.j, %.lr.ph.i ], [ %i.f, %.preheader.i ]
  %.01525.i = getelementptr inbounds nuw i8, ptr %.01525.pn.i, i64 1 ; 2 uses
  %i.h = load i8, ptr %.01525.i, align 1, !tbaa !9
  %i.i = load i8, ptr %.024.i, align 1, !tbaa !9
  %.not20.i = icmp eq i8 %i.h, %i.i               ; 2 uses
  %i.j = add nsw i64 %.01623.i, -1                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.024.i, i64 1
  %.not19.i = icmp ne i64 %i.j, 0
  %or.cond.not = select i1 %.not20.i, i1 %.not19.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit14, !llvm.loop !0

bb.c:                                             ; preds = %bb.a
  br i1 %i.b, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit14.sink.split, label %.preheader.i4

.preheader.i4:                                    ; preds = %bb.c
  %.not1922.i5 = icmp eq i8 %i.e, 0
  br i1 %.not1922.i5, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit14, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %.preheader.i4, %.lr.ph.i6
  %.01525.pn.i7 = phi ptr [ %.01525.i10, %.lr.ph.i6 ], [ %0, %.preheader.i4 ]
  %.024.i8 = phi ptr [ %i.o, %.lr.ph.i6 ], [ getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L10TILEDIMAGEE, i64 1), %.preheader.i4 ] ; 2 uses
  %.01623.i9 = phi i64 [ %i.n, %.lr.ph.i6 ], [ %i.f, %.preheader.i4 ]
  %.01525.i10 = getelementptr inbounds nuw i8, ptr %.01525.pn.i7, i64 1 ; 2 uses
  %i.l = load i8, ptr %.01525.i10, align 1, !tbaa !9
  %i.m = load i8, ptr %.024.i8, align 1, !tbaa !9
  %.not20.i11 = icmp eq i8 %i.l, %i.m             ; 2 uses
  %i.n = add nsw i64 %.01623.i9, -1               ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.024.i8, i64 1
  %.not19.i12 = icmp ne i64 %i.n, 0
  %or.cond32.not = select i1 %.not20.i11, i1 %.not19.i12, i1 false
  br i1 %or.cond32.not, label %.lr.ph.i6, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit14, !llvm.loop !0

_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit14.sink.split: ; preds = %bb.c, %bb.b
  %.sink26 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L13SCANLINEIMAGEE, i64 1), %bb.b ], [ getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L10TILEDIMAGEE, i64 1), %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %bcmp.i = tail call i32 @bcmp(ptr %i.q, ptr nonnull %.sink26, i64 %i.d)
  %i.r = icmp eq i32 %bcmp.i, 0
  br label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit14

_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit14: ; preds = %.lr.ph.i6, %.lr.ph.i, %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit14.sink.split, %bb.a, %.preheader.i, %.preheader.i4
  %i.s = phi i1 [ false, %bb.a ], [ true, %.preheader.i ], [ %i.r, %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit14.sink.split ], [ %.not20.i, %.lr.ph.i ], [ true, %.preheader.i4 ], [ %.not20.i11, %.lr.ph.i6 ]
  ret i1 %i.s
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7Imf_3_47isTiledERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8                 ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = lshr i8 %i.a, 1                          ; 3 uses
  %i.f = zext nneg i8 %i.e to i64                 ; 3 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  switch i64 %i.g, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit14 [
    i64 10, label %bb.b
    i64 8, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit14.sink.split, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %.not1922.i = icmp eq i8 %i.e, 0
  br i1 %.not1922.i, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit14, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.01525.pn.i = phi ptr [ %.01525.i, %.lr.ph.i ], [ %0, %.preheader.i ]
  %.024.i = phi ptr [ %i.k, %.lr.ph.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L10TILEDIMAGEE, i64 1), %.preheader.i ] ; 2 uses
  %.01623.i = phi i64 [ %i.j, %.lr.ph.i ], [ %i.f, %.preheader.i ]
  %.01525.i = getelementptr inbounds nuw i8, ptr %.01525.pn.i, i64 1 ; 2 uses
  %i.h = load i8, ptr %.01525.i, align 1, !tbaa !9
  %i.i = load i8, ptr %.024.i, align 1, !tbaa !9
  %.not20.i = icmp eq i8 %i.h, %i.i               ; 2 uses
  %i.j = add nsw i64 %.01623.i, -1                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.024.i, i64 1
  %.not19.i = icmp ne i64 %i.j, 0
  %or.cond.not = select i1 %.not20.i, i1 %.not19.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit14, !llvm.loop !0

bb.c:                                             ; preds = %bb.a
  br i1 %i.b, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit14.sink.split, label %.preheader.i4

.preheader.i4:                                    ; preds = %bb.c
  %.not1922.i5 = icmp eq i8 %i.e, 0
  br i1 %.not1922.i5, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit14, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %.preheader.i4, %.lr.ph.i6
  %.01525.pn.i7 = phi ptr [ %.01525.i10, %.lr.ph.i6 ], [ %0, %.preheader.i4 ]
  %.024.i8 = phi ptr [ %i.o, %.lr.ph.i6 ], [ getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L8DEEPTILEE, i64 1), %.preheader.i4 ] ; 2 uses
  %.01623.i9 = phi i64 [ %i.n, %.lr.ph.i6 ], [ %i.f, %.preheader.i4 ]
  %.01525.i10 = getelementptr inbounds nuw i8, ptr %.01525.pn.i7, i64 1 ; 2 uses
  %i.l = load i8, ptr %.01525.i10, align 1, !tbaa !9
  %i.m = load i8, ptr %.024.i8, align 1, !tbaa !9
  %.not20.i11 = icmp eq i8 %i.l, %i.m             ; 2 uses
  %i.n = add nsw i64 %.01623.i9, -1               ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.024.i8, i64 1
  %.not19.i12 = icmp ne i64 %i.n, 0
  %or.cond32.not = select i1 %.not20.i11, i1 %.not19.i12, i1 false
  br i1 %or.cond32.not, label %.lr.ph.i6, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit14, !llvm.loop !0

_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit14.sink.split: ; preds = %bb.c, %bb.b
  %.sink26 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L10TILEDIMAGEE, i64 1), %bb.b ], [ getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L8DEEPTILEE, i64 1), %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %bcmp.i = tail call i32 @bcmp(ptr %i.q, ptr nonnull %.sink26, i64 %i.d)
  %i.r = icmp eq i32 %bcmp.i, 0
  br label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit14

_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit14: ; preds = %.lr.ph.i6, %.lr.ph.i, %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit14.sink.split, %bb.a, %.preheader.i, %.preheader.i4
  %i.s = phi i1 [ false, %bb.a ], [ true, %.preheader.i ], [ %i.r, %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit14.sink.split ], [ %.not20.i, %.lr.ph.i ], [ true, %.preheader.i4 ], [ %.not20.i11, %.lr.ph.i6 ]
  ret i1 %i.s
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7Imf_3_410isDeepDataERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8                 ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = lshr i8 %i.a, 1                          ; 3 uses
  %i.f = zext nneg i8 %i.e to i64                 ; 3 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  switch i64 %i.g, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit14 [
    i64 8, label %bb.b
    i64 12, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit14.sink.split, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %.not1922.i = icmp eq i8 %i.e, 0
  br i1 %.not1922.i, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit14, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.01525.pn.i = phi ptr [ %.01525.i, %.lr.ph.i ], [ %0, %.preheader.i ]
  %.024.i = phi ptr [ %i.k, %.lr.ph.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L8DEEPTILEE, i64 1), %.preheader.i ] ; 2 uses
  %.01623.i = phi i64 [ %i.j, %.lr.ph.i ], [ %i.f, %.preheader.i ]
  %.01525.i = getelementptr inbounds nuw i8, ptr %.01525.pn.i, i64 1 ; 2 uses
  %i.h = load i8, ptr %.01525.i, align 1, !tbaa !9
  %i.i = load i8, ptr %.024.i, align 1, !tbaa !9
  %.not20.i = icmp eq i8 %i.h, %i.i               ; 2 uses
  %i.j = add nsw i64 %.01623.i, -1                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.024.i, i64 1
  %.not19.i = icmp ne i64 %i.j, 0
  %or.cond.not = select i1 %.not20.i, i1 %.not19.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit14, !llvm.loop !0

bb.c:                                             ; preds = %bb.a
  br i1 %i.b, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit14.sink.split, label %.preheader.i4

.preheader.i4:                                    ; preds = %bb.c
  %.not1922.i5 = icmp eq i8 %i.e, 0
  br i1 %.not1922.i5, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit14, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %.preheader.i4, %.lr.ph.i6
  %.01525.pn.i7 = phi ptr [ %.01525.i10, %.lr.ph.i6 ], [ %0, %.preheader.i4 ]
  %.024.i8 = phi ptr [ %i.o, %.lr.ph.i6 ], [ getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L12DEEPSCANLINEE, i64 1), %.preheader.i4 ] ; 2 uses
  %.01623.i9 = phi i64 [ %i.n, %.lr.ph.i6 ], [ %i.f, %.preheader.i4 ]
  %.01525.i10 = getelementptr inbounds nuw i8, ptr %.01525.pn.i7, i64 1 ; 2 uses
  %i.l = load i8, ptr %.01525.i10, align 1, !tbaa !9
  %i.m = load i8, ptr %.024.i8, align 1, !tbaa !9
  %.not20.i11 = icmp eq i8 %i.l, %i.m             ; 2 uses
  %i.n = add nsw i64 %.01623.i9, -1               ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.024.i8, i64 1
  %.not19.i12 = icmp ne i64 %i.n, 0
  %or.cond32.not = select i1 %.not20.i11, i1 %.not19.i12, i1 false
  br i1 %or.cond32.not, label %.lr.ph.i6, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit14, !llvm.loop !0

_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit14.sink.split: ; preds = %bb.c, %bb.b
  %.sink26 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L8DEEPTILEE, i64 1), %bb.b ], [ getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L12DEEPSCANLINEE, i64 1), %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %bcmp.i = tail call i32 @bcmp(ptr %i.q, ptr nonnull %.sink26, i64 %i.d)
  %i.r = icmp eq i32 %bcmp.i, 0
  br label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit14

_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit14: ; preds = %.lr.ph.i6, %.lr.ph.i, %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit14.sink.split, %bb.a, %.preheader.i, %.preheader.i4
  %i.s = phi i1 [ false, %bb.a ], [ true, %.preheader.i ], [ %i.r, %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit14.sink.split ], [ %.not20.i, %.lr.ph.i ], [ true, %.preheader.i4 ], [ %.not20.i11, %.lr.ph.i6 ]
  ret i1 %i.s
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7Imf_3_415isSupportedTypeERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8                 ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8              ; 5 uses
  %i.e = lshr i8 %i.a, 1                          ; 7 uses
  %i.f = zext nneg i8 %i.e to i64                 ; 5 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  switch i64 %i.g, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit42 [
    i64 13, label %bb.b
    i64 10, label %bb.c
    i64 12, label %bb.f
    i64 8, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %.not1922.i = icmp eq i8 %i.e, 0
  br i1 %.not1922.i, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit42, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.01525.pn.i = phi ptr [ %.01525.i, %.lr.ph.i ], [ %0, %.preheader.i ]
  %.024.i = phi ptr [ %i.k, %.lr.ph.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L13SCANLINEIMAGEE, i64 1), %.preheader.i ] ; 2 uses
  %.01623.i = phi i64 [ %i.j, %.lr.ph.i ], [ %i.f, %.preheader.i ]
  %.01525.i = getelementptr inbounds nuw i8, ptr %.01525.pn.i, i64 1 ; 2 uses
  %i.h = load i8, ptr %.01525.i, align 1, !tbaa !9
  %i.i = load i8, ptr %.024.i, align 1, !tbaa !9
  %.not20.i = icmp eq i8 %i.h, %i.i               ; 2 uses
  %i.j = add nsw i64 %.01623.i, -1                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.024.i, i64 1
  %.not19.i = icmp ne i64 %i.j, 0
  %or.cond.not = select i1 %.not20.i, i1 %.not19.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit42, !llvm.loop !0

_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %bcmp.i = tail call i32 @bcmp(ptr %i.m, ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L13SCANLINEIMAGEE, i64 1), i64 %i.d)
  %i.n = icmp eq i32 %bcmp.i, 0
  br i1 %i.n, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit42, label %.thread62

bb.c:                                             ; preds = %bb.a
  br i1 %i.b, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit16, label %.preheader.i6

.preheader.i6:                                    ; preds = %bb.c
  %.not1922.i7 = icmp eq i8 %i.e, 0
  br i1 %.not1922.i7, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit42, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %.preheader.i6, %bb.d
  %.01525.pn.i9 = phi ptr [ %.01525.i12, %bb.d ], [ %0, %.preheader.i6 ]
  %.024.i10 = phi ptr [ %i.r, %bb.d ], [ getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L10TILEDIMAGEE, i64 1), %.preheader.i6 ] ; 2 uses
  %.01623.i11 = phi i64 [ %i.q, %bb.d ], [ %i.f, %.preheader.i6 ]
  %.01525.i12 = getelementptr inbounds nuw i8, ptr %.01525.pn.i9, i64 1 ; 2 uses
  %i.o = load i8, ptr %.01525.i12, align 1, !tbaa !9
  %i.p = load i8, ptr %.024.i10, align 1, !tbaa !9
  %.not20.i13 = icmp eq i8 %i.o, %i.p
  br i1 %.not20.i13, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i8
  %i.q = add nsw i64 %.01623.i11, -1              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.024.i10, i64 1
  %.not19.i14 = icmp eq i64 %i.q, 0
  br i1 %.not19.i14, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit42, label %.lr.ph.i8, !llvm.loop !0

_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit16: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %bcmp.i15 = tail call i32 @bcmp(ptr %i.t, ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L10TILEDIMAGEE, i64 1), i64 %i.d)
  %i.u = icmp eq i32 %bcmp.i15, 0
  br i1 %i.u, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit42, label %.thread62

bb.e:                                             ; preds = %.lr.ph.i8
  switch i8 %i.e, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit42 [
    i8 12, label %.lr.ph.i21.preheader
    i8 8, label %bb.i
  ]

bb.f:                                             ; preds = %bb.a
  br i1 %i.b, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit29, label %.preheader.i19

.preheader.i19:                                   ; preds = %bb.f
  %.not1922.i20 = icmp eq i8 %i.e, 0
  br i1 %.not1922.i20, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit42, label %.lr.ph.i21.preheader

.lr.ph.i21.preheader:                             ; preds = %bb.e, %.preheader.i19
  br label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.lr.ph.i21.preheader, %bb.g
  %.01525.pn.i22 = phi ptr [ %.01525.i25, %bb.g ], [ %0, %.lr.ph.i21.preheader ]
  %.024.i23 = phi ptr [ %i.y, %bb.g ], [ getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L12DEEPSCANLINEE, i64 1), %.lr.ph.i21.preheader ] ; 2 uses
  %.01623.i24 = phi i64 [ %i.x, %bb.g ], [ %i.f, %.lr.ph.i21.preheader ]
  %.01525.i25 = getelementptr inbounds nuw i8, ptr %.01525.pn.i22, i64 1 ; 2 uses
  %i.v = load i8, ptr %.01525.i25, align 1, !tbaa !9
  %i.w = load i8, ptr %.024.i23, align 1, !tbaa !9
  %.not20.i26 = icmp eq i8 %i.v, %i.w
  br i1 %.not20.i26, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i21
  %i.x = add nsw i64 %.01623.i24, -1              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.024.i23, i64 1
  %.not19.i27 = icmp eq i64 %i.x, 0
  br i1 %.not19.i27, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit42, label %.lr.ph.i21, !llvm.loop !0

_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit29: ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %bcmp.i28 = tail call i32 @bcmp(ptr %i.aa, ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L12DEEPSCANLINEE, i64 1), i64 %i.d)
  %i.ab = icmp eq i32 %bcmp.i28, 0
  br label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit42

.thread62:                                        ; preds = %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit, %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit16
  br label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit42

bb.h:                                             ; preds = %.lr.ph.i21
  %.not.i30 = icmp eq i8 %i.e, 8
  br i1 %.not.i30, label %bb.i, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit42

bb.i:                                             ; preds = %bb.a, %bb.e, %bb.h
  br i1 %i.b, label %bb.j, label %.preheader.i32

.preheader.i32:                                   ; preds = %bb.i
  %.not1922.i33 = icmp eq i8 %i.e, 0
  br i1 %.not1922.i33, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit42, label %.lr.ph.i34

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %bcmp.i41 = tail call i32 @bcmp(ptr %i.ad, ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L8DEEPTILEE, i64 1), i64 %i.d)
  %i.ae = icmp eq i32 %bcmp.i41, 0
  br label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit42

.lr.ph.i34:                                       ; preds = %.preheader.i32, %.lr.ph.i34
  %.01525.pn.i35 = phi ptr [ %.01525.i38, %.lr.ph.i34 ], [ %0, %.preheader.i32 ]
  %.024.i36 = phi ptr [ %i.ai, %.lr.ph.i34 ], [ getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L8DEEPTILEE, i64 1), %.preheader.i32 ] ; 2 uses
  %.01623.i37 = phi i64 [ %i.ah, %.lr.ph.i34 ], [ %i.f, %.preheader.i32 ]
  %.01525.i38 = getelementptr inbounds nuw i8, ptr %.01525.pn.i35, i64 1 ; 2 uses
  %i.af = load i8, ptr %.01525.i38, align 1, !tbaa !9
  %i.ag = load i8, ptr %.024.i36, align 1, !tbaa !9
  %.not20.i39 = icmp eq i8 %i.af, %i.ag           ; 2 uses
  %i.ah = add nsw i64 %.01623.i37, -1             ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.024.i36, i64 1
  %.not19.i40 = icmp ne i64 %i.ah, 0
  %or.cond83.not = select i1 %.not20.i39, i1 %.not19.i40, i1 false
  br i1 %or.cond83.not, label %.lr.ph.i34, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit42, !llvm.loop !0

_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit42: ; preds = %bb.d, %bb.g, %.lr.ph.i34, %.lr.ph.i, %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit29, %bb.a, %bb.e, %.preheader.i19, %.preheader.i6, %.preheader.i, %bb.j, %.preheader.i32, %bb.h, %.thread62, %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit16, %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit
  %i.aj = phi i1 [ false, %bb.a ], [ true, %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit16 ], [ true, %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit ], [ true, %.preheader.i6 ], [ false, %.thread62 ], [ %i.ab, %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit29 ], [ false, %bb.h ], [ %i.ae, %bb.j ], [ true, %.preheader.i32 ], [ false, %bb.e ], [ true, %bb.g ], [ true, %.preheader.i19 ], [ true, %.preheader.i ], [ %.not20.i, %.lr.ph.i ], [ %.not20.i39, %.lr.ph.i34 ], [ true, %bb.d ]
  ret i1 %i.aj
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !10}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
end_hunk_0
