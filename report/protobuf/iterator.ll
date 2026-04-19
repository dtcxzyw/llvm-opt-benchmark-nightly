inline.NumInlined: 28
inline.NumDeleted: 24
begin_hunk_0_@_upb_Message_NextBaseField_dont_copy_me__upb_internal_use_only:bb.a
  br i1 %i.f, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %bb.p
  %5 = phi i64 [ %i.bh, %bb.p ], [ %i.e, %bb.a ]  ; 3 uses
  %.sroa.10.058 = phi i64 [ %.sroa.10.1, %bb.p ], [ undef, %bb.a ] ; 3 uses
  %.sroa.0.057 = phi ptr [ %.sroa.0.1, %bb.p ], [ undef, %bb.a ] ; 2 uses
  %.val26 = load ptr, ptr %1, align 8, !tbaa !11
  %i.g = and i64 %5, 4294967295
  %i.h = getelementptr inbounds nuw [12 x i8], ptr %.val26, i64 %i.g ; 6 uses
  %i.i = getelementptr i8, ptr %i.h, i64 4
  %.val27 = load i16, ptr %i.i, align 4, !tbaa !14
end_hunk_0
begin_hunk_1_@_upb_Message_NextBaseField_dont_copy_me__upb_internal_use_only:bb.a

bb.b:                                             ; preds = %.lr.ph
  %i.n = load i8, ptr %i.k, align 1               ; 2 uses
  %6 = ptrtoint ptr %.sroa.0.057 to i64
  %.sroa.0.0.insert.ext41 = zext i8 %i.n to i64
  %.sroa.0.0.insert.mask42 = and i64 %6, -256
  %.sroa.0.0.insert.insert43 = or disjoint i64 %.sroa.0.0.insert.mask42, %.sroa.0.0.insert.ext41
  %i.o = inttoptr i64 %.sroa.0.0.insert.insert43 to ptr
  br label %_upb_MiniTableField_DataCopy_dont_copy_me__upb_internal_use_only.exit

bb.c:                                             ; preds = %.lr.ph
  %i.p = load i32, ptr %i.k, align 1              ; 2 uses
  %7 = ptrtoint ptr %.sroa.0.057 to i64
  %.sroa.0.0.insert.ext = zext i32 %i.p to i64
  %.sroa.0.0.insert.mask = and i64 %7, -4294967296
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.0.insert.mask, %.sroa.0.0.insert.ext
  %i.q = inttoptr i64 %.sroa.0.0.insert.insert to ptr
  %i.r = trunc i32 %i.p to i8
  br label %_upb_MiniTableField_DataCopy_dont_copy_me__upb_internal_use_only.exit

end_hunk_1
begin_hunk_2_@_upb_Message_NextBaseField_dont_copy_me__upb_internal_use_only:bb.a

_upb_MiniTableField_DataCopy_dont_copy_me__upb_internal_use_only.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %lhsc.i.i = phi i8 [ %i.n, %bb.b ], [ %i.r, %bb.c ], [ %i.u, %bb.d ], [ %i.w, %bb.e ]
  %.sroa.0.1 = phi ptr [ %i.o, %bb.b ], [ %i.q, %bb.c ], [ %i.t, %bb.d ], [ %.sroa.0.0.copyload37, %bb.e ] ; 4 uses
  %.sroa.10.1 = phi i64 [ %.sroa.10.058, %bb.b ], [ %.sroa.10.058, %bb.c ], [ %.sroa.10.058, %bb.d ], [ %.sroa.10.0.copyload39, %bb.e ] ; 2 uses
  %i.x = and i8 %.val28, 8
  %.not.i = icmp eq i8 %i.x, 0                    ; 2 uses
  br i1 %.not.i, label %upb_MiniTableField_HasPresence.exit, label %bb.f
end_hunk_2
begin_hunk_3_@_upb_Message_NextBaseField_dont_copy_me__upb_internal_use_only:bb.a
  store ptr %.sroa.0.1, ptr %3, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.10.1, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !21
  store i64 %5, ptr %4, align 8, !tbaa !9
  br label %.loopexit

bb.p:                                             ; preds = %bb.k, %bb.l, %bb.j, %bb.h, %bb.o, %bb.n, %_upb_MiniTableField_DataIsZero_dont_copy_me__upb_internal_use_only.exit, %upb_Message_HasBaseField.exit
  %i.bh = add nuw nsw i64 %5, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.bh, %i.c
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

end_hunk_3
