inline.NumInlined: 1
begin_hunk_0_@gx_sort_ht_order:bb.a
bb.b:                                             ; preds = %.preheader
  %i.d = add nsw i32 %.0, -1                      ; 2 uses
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.e ; 2 uses
  %.sroa.0.0.copyload = load i16, ptr %i.f, align 2, !tbaa !16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %.sroa.6.0.copyload = load i16, ptr %.sroa.6.0..sroa_idx, align 2, !tbaa !16
  br label %bb.e

bb.c:                                             ; preds = %.preheader
  %i.g = zext i32 %.046 to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g ; 3 uses
  %.sroa.0.0.copyload3 = load i16, ptr %i.h, align 2, !tbaa !16 ; 2 uses
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %.sroa.6.0.copyload7 = load i16, ptr %.sroa.6.0..sroa_idx6, align 2, !tbaa !16 ; 2 uses
  %i.i = load i32, ptr %0, align 2
  store i32 %i.i, ptr %i.h, align 2
  %i.j = add i32 %.046, -1                        ; 2 uses
end_hunk_0
begin_hunk_1_@gx_sort_ht_order:bb.a
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i16 %.sroa.0.0.copyload3, ptr %0, align 2, !tbaa !16
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %.sroa.6.0.copyload7, ptr %.sroa.6.0..sroa_idx8, align 2, !tbaa !16
  br label %bb.k

bb.e:                                             ; preds = %bb.c, %bb.b
  %.147 = phi i32 [ %.046, %bb.b ], [ %i.j, %bb.c ] ; 3 uses
  %.sroa.6.0 = phi i16 [ %.sroa.6.0.copyload, %bb.b ], [ %.sroa.6.0.copyload7, %bb.c ] ; 2 uses
  %.sroa.0.0 = phi i16 [ %.sroa.0.0.copyload, %bb.b ], [ %.sroa.0.0.copyload3, %bb.c ]
  %.1 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.c ]     ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %bb.e
end_hunk_1
begin_hunk_2_@gx_sort_ht_order:bb.a
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !17
  %.not51 = icmp ult i16 %.sroa.6.0, %i.ac
  br i1 %.not51, label %bb.j, label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.h
  %i.ad = zext i32 %.044 to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ad ; 2 uses
  store i16 %.sroa.0.0, ptr %i.ae, align 2, !tbaa !16
  %.sroa.6.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  store i16 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx10, align 2, !tbaa !16
  br label %.preheader

bb.j:                                             ; preds = %bb.i
end_hunk_2
