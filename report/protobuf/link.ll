begin_hunk_0
  %.val30 = load i8, ptr %i.e, align 2, !tbaa !8  ; 2 uses
  %i.f = getelementptr i8, ptr %i.d, i64 11
  %.val31 = load i8, ptr %i.f, align 1, !tbaa !12
  %i.g = and i8 %.val31, 16
  %.not.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i, label %upb_MiniTableField_CType.exit, label %bb.b
end_hunk_0
begin_hunk_1
  ]

upb_MiniTableField_CType.exit:                    ; preds = %bb.b, %.lr.ph
  %2 = and i8 %.val30, -2
  %3 = icmp eq i8 %2, 10
  br i1 %3, label %bb.c, label %.critedge

bb.c:                                             ; preds = %upb_MiniTableField_CType.exit
  store ptr %i.d, ptr %.035, align 8, !tbaa !15
end_hunk_1
begin_hunk_2
  %.val69 = load i8, ptr %i.e, align 2, !tbaa !8  ; 3 uses
  %i.f = getelementptr i8, ptr %i.d, i64 11       ; 2 uses
  %.val70 = load i8, ptr %i.f, align 1, !tbaa !12 ; 2 uses
  %i.g = and i8 %.val70, 16
  %.not.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i, label %upb_MiniTableField_CType.exit, label %bb.c
end_hunk_2
begin_hunk_3
  ]

upb_MiniTableField_CType.exit:                    ; preds = %bb.c, %bb.b
  %5 = and i8 %.val69, -2
  %6 = icmp eq i8 %5, 10
  br i1 %6, label %bb.d, label %.critedge87

bb.d:                                             ; preds = %upb_MiniTableField_CType.exit
  %i.h = add i32 %.04395, 1                       ; 3 uses
end_hunk_3
begin_hunk_4
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.o = load i8, ptr %i.n, align 4, !tbaa !7
  %i.p = and i8 %i.o, 4
  %.not.i = icmp eq i8 %i.p, 0                    ; 2 uses
  %.not.i.a = icmp eq i8 %.val69, 11
  br i1 %.not.i.a, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  br i1 %.not.i, label %upb_MiniTable_SetSubMessage.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = load i8, ptr %i.b, align 4, !tbaa !7
end_hunk_4
begin_hunk_5
  br label %upb_MiniTable_SetSubMessage.exit

bb.j:                                             ; preds = %bb.f
  br i1 %.not.i, label %upb_MiniTable_SetSubMessage.exit, label %.critedge.thread78, !prof !11

upb_MiniTable_SetSubMessage.exit:                 ; preds = %bb.g, %bb.i, %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8
end_hunk_5
begin_hunk_6
  %i.av = select i1 %i.at, i1 %i.au, i1 false
  br label %.critedge.thread78

.critedge.thread78:                               ; preds = %bb.h, %bb.j, %bb.d, %bb.o, %bb.l, %.critedge65
  %.10 = phi i1 [ %i.av, %.critedge65 ], [ false, %bb.o ], [ false, %bb.l ], [ false, %bb.d ], [ false, %bb.j ], [ false, %bb.h ]
  ret i1 %.10
}

end_hunk_6
