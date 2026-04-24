inline.NumInlined: 2336
inline.NumDeleted: 196
begin_hunk_0_@rb_str_split_m:bb.a

.preheader470.1:                                  ; preds = %.preheader470.preheader, %bb.b
  %.sink = phi i64 [ %i.h, %bb.b ], [ 4, %.preheader470.preheader ] ; 8 uses
  %.286.i = phi i64 [ 1, %bb.b ], [ 0, %.preheader470.preheader ]
  %.286.i.a = phi i32 [ 1, %bb.b ], [ 0, %.preheader470.preheader ] ; 3 uses
  %i.i = icmp samesign ult i32 %.286.i.a, %0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader470.1
  %i.j = getelementptr [8 x i8], ptr %1, i64 %.286.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !27
  %i.l = add nuw nsw i32 %.286.i.a, 1
  br label %bb.d
end_hunk_0
begin_hunk_1_@tr_setup_table:bb.a

bb.e:                                             ; preds = %bb.d, %bb.c, %RSTRING_PTR.exit
  %i.v = phi i1 [ true, %bb.d ], [ false, %bb.c ], [ false, %RSTRING_PTR.exit ] ; 3 uses
  %.055 = phi i8 [ 1, %bb.d ], [ 0, %bb.c ], [ 0, %RSTRING_PTR.exit ] ; 2 uses
  %.not69 = phi i8 [ 0, %bb.d ], [ 1, %bb.c ], [ 1, %RSTRING_PTR.exit ]
  %.not69.a = phi i1 [ false, %bb.d ], [ true, %bb.c ], [ true, %RSTRING_PTR.exit ]
  %.055.a = phi i32 [ 1, %bb.d ], [ 0, %bb.c ], [ 0, %RSTRING_PTR.exit ]
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  br i1 %.not, label %bb.f, label %.preheader85.preheader

.preheader85.preheader:                           ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %1, i8 1, i64 256, i1 false), !tbaa !20
  %i.w = getelementptr i8, ptr %1, i64 256
  store i8 %.055, ptr %i.w, align 1, !tbaa !20
  br label %.preheader84

bb.f:                                             ; preds = %bb.e
end_hunk_1
begin_hunk_2_@tr_setup_table:bb.a
  br label %.preheader84

.preheader84:                                     ; preds = %bb.f, %bb.g, %.preheader85.preheader
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 %.055, i64 256, i1 false), !tbaa !20
  %i.aa = call fastcc i32 @trnext(ptr noundef %6, ptr noundef %5) ; 2 uses
  %.not6488 = icmp eq i32 %i.aa, -1
  br i1 %.not6488, label %vector.body, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader84
  %i.ab = getelementptr i8, ptr %1, i64 256
  br label %bb.h

.preheader.loopexit:                              ; preds = %.thread
end_hunk_2
begin_hunk_3_@tr_setup_table:bb.a

bb.i:                                             ; preds = %bb.h
  %i.cr = getelementptr i8, ptr %i.a, i64 %i.cq
  store i8 %.not69, ptr %i.cr, align 1, !tbaa !20
  br label %.thread

bb.j:                                             ; preds = %bb.h
end_hunk_3
