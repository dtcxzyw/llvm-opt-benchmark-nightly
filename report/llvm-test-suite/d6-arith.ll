inline.NumInlined: 10
inline.NumDeleted: 5
begin_hunk_0_@_Z9pushbinopP9Classfile:bb.a
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  store ptr %i.d, ptr @stkptr, align 8, !tbaa !8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12   ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 -16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12   ; 3 uses
  %i.h = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #9 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
end_hunk_0
begin_hunk_1_@_Z9pushbinopP9Classfile:bb.a
  store ptr %i.g, ptr %i.ae, align 8, !tbaa !29
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.e, ptr %i.af, align 8, !tbaa !30
  %1 = load ptr, ptr @stkptr, align 8, !tbaa !8
  %2 = getelementptr inbounds i8, ptr %1, i64 -8
  store ptr %i.h, ptr %2, align 8, !tbaa !12
  ret i32 0

bb.f:                                             ; preds = %bb.d
end_hunk_1
begin_hunk_2_@_Z8pushunopP9Classfile:bb.a
bb.a:
  %i.a = load i32, ptr @currpc, align 4, !tbaa !4 ; 4 uses
  %i.b = add i32 %i.a, -1                         ; 13 uses
  %i.c = load ptr, ptr @stkptr, align 8, !tbaa !8 ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12   ; 15 uses
  %i.f = load i32, ptr @ch, align 4, !tbaa !4
end_hunk_2
begin_hunk_3_@_Z8pushunopP9Classfile:bb.a
  store i32 %i.aw, ptr %i.az, align 8, !tbaa !43
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i32 1, ptr %i.ba, align 8, !tbaa !24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  store i32 %i.b, ptr %i.bb, align 8, !tbaa !14
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 %i.b, ptr %i.bc, align 4, !tbaa !25
end_hunk_3
begin_hunk_4_@_Z8pushunopP9Classfile:bb.a
  store ptr %i.av, ptr %i.be, align 8, !tbaa !44
  store ptr %i.bd, ptr %i.au, align 8, !tbaa !17
  %i.bf = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #9 ; 8 uses
  %1 = load i32, ptr %i.bb, align 8, !tbaa !14
  %.57 = tail call i32 @llvm.umin.i32(i32 %1, i32 %i.b)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i32 1, ptr %i.bg, align 8, !tbaa !24
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 %i.b, ptr %i.bh, align 4, !tbaa !25
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i32 %.57, ptr %i.bi, align 8, !tbaa !14
  %i.bj = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #9
          to label %bb.n unwind label %bb.q       ; 2 uses

end_hunk_4
begin_hunk_5_@_Z8pushunopP9Classfile:bb.a
  store ptr %i.au, ptr %i.bk, align 8, !tbaa !29
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  store ptr null, ptr %i.bl, align 8, !tbaa !30
  %2 = load ptr, ptr @stkptr, align 8, !tbaa !8   ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bm, ptr @stkptr, align 8, !tbaa !8
  store ptr %i.bf, ptr %2, align 8, !tbaa !12
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.a
  %.048 = phi ptr [ %i.au, %bb.n ], [ %i.e, %bb.a ]
  br label %bb.af

end_hunk_5
begin_hunk_6_@_Z8pushunopP9Classfile:bb.a
  unreachable

bb.af:                                            ; preds = %bb.a, %bb.a, %bb.a, %bb.o, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.1 = phi ptr [ %i.e, %bb.b ], [ %.048, %bb.o ], [ %i.e, %bb.c ], [ %i.e, %bb.d ], [ %i.e, %bb.e ], [ %i.e, %bb.f ], [ %i.e, %bb.g ], [ %i.e, %bb.h ], [ %i.e, %bb.a ], [ %i.e, %bb.a ], [ %i.e, %bb.a ] ; 2 uses
  %.047 = phi i32 [ 14, %bb.b ], [ 18, %bb.o ], [ 15, %bb.c ], [ 15, %bb.d ], [ 15, %bb.e ], [ 15, %bb.f ], [ 15, %bb.g ], [ 15, %bb.h ], [ 15, %bb.a ], [ 15, %bb.a ], [ 15, %bb.a ]
  %.046 = phi i32 [ %i.i, %bb.b ], [ 0, %bb.o ], [ 5, %bb.c ], [ 6, %bb.d ], [ 7, %bb.e ], [ 1, %bb.f ], [ 2, %bb.g ], [ 3, %bb.h ], [ 4, %bb.a ], [ 4, %bb.a ], [ 4, %bb.a ]
end_hunk_6
begin_hunk_7_@_Z8pushunopP9Classfile:bb.a
  store ptr %.1, ptr %i.el, align 8, !tbaa !29
  %i.em = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  store ptr null, ptr %i.em, align 8, !tbaa !30
  %3 = load ptr, ptr @stkptr, align 8, !tbaa !8
  %i.en = getelementptr inbounds i8, ptr %3, i64 -8
  store ptr %i.eb, ptr %i.en, align 8, !tbaa !12
  br label %bb.ai

end_hunk_7
