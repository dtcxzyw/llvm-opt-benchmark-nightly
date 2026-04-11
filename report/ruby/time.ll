inline.NumInlined: 958
inline.NumDeleted: 130
begin_hunk_0_@utc_offset_arg:bb.a
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %i.g, %bb.c ], [ %i.f, %bb.b ] ; 10 uses
  %i.i = tail call ptr @rb_enc_get(i64 noundef %i.a) #19 ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 20
  %.val.i.i = load i32, ptr %i.j, align 4, !tbaa !54
end_hunk_0
begin_hunk_1_@utc_offset_arg:bb.a
    i64 1, label %bb.e
    i64 3, label %bb.m
    i64 7, label %bb.n
    i64 5, label %bb.r
    i64 9, label %bb.o
    i64 6, label %bb.q
  ]

bb.e:                                             ; preds = %bb.d
  %i.n = load i8, ptr %i.h, align 1, !tbaa !53    ; 6 uses
  %i.o = icmp eq i8 %i.n, 90
end_hunk_1
begin_hunk_2_@utc_offset_arg:bb.a
  %.not65 = icmp eq i8 %i.af, 58
  br i1 %.not65, label %bb.r, label %rb_enc_str_asciicompat_p.exit.thread

bb.r:                                             ; preds = %bb.q, %bb.d, %bb.n
  %.sink = phi i64 [ 3, %bb.d ], [ 3, %bb.n ], [ 4, %bb.q ]
  %.2 = phi ptr [ null, %bb.d ], [ %i.aa, %bb.n ], [ %.1, %bb.q ] ; 3 uses
  %i.ag = getelementptr i8, ptr %i.h, i64 %.sink  ; 4 uses
  %.not66 = icmp eq ptr %.2, null
  br i1 %.not66, label %bb.u, label %bb.s

end_hunk_2
begin_hunk_3_@utc_offset_arg:bb.a
  %op.rdx103 = add nuw nsw i32 %op.rdx, %i.ar
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  %.not69 = icmp eq ptr %i.ag, null
  br i1 %.not69, label %.thread87, label %bb.v

bb.v:                                             ; preds = %.thread91, %bb.u
  %.15696 = phi i32 [ %op.rdx103, %.thread91 ], [ -31680, %bb.u ]
  %i.as = load i8, ptr %i.ag, align 1, !tbaa !53  ; 2 uses
  %i.at = sext i8 %i.as to i32                    ; 2 uses
  %i.au = add nsw i32 %i.at, -58
  %i.av = icmp ult i32 %i.au, -10
  br i1 %i.av, label %rb_enc_str_asciicompat_p.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aw = getelementptr i8, ptr %i.ag, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !53
  %i.ay = sext i8 %i.ax to i32                    ; 2 uses
  %i.az = add nsw i32 %i.ay, -58
end_hunk_3
begin_hunk_4_@time_xmlschema:bb.a
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %ruby_nonempty_memcpy.exit.loopexit, %bb.al, %RSTRING_PTR.exit149, %bb.s
  %.4 = phi ptr [ %i.em, %bb.s ], [ %i.gx, %bb.al ], [ %i.gx, %RSTRING_PTR.exit149 ], [ %i.gq, %ruby_nonempty_memcpy.exit.loopexit ] ; 9 uses
  %i.hf = load i64, ptr %i.z, align 8
  %i.hg = and i64 %i.hf, 61572651155456
  %i.hh = icmp eq i64 %i.hg, 8796093022208
end_hunk_4
begin_hunk_5_@time_xmlschema:bb.a

bb.am:                                            ; preds = %ruby_nonempty_memcpy.exit
  store i8 90, ptr %.4, align 1, !tbaa !53
  %3 = getelementptr i8, ptr %.4, i64 1
  br label %bb.aq

bb.an:                                            ; preds = %ruby_nonempty_memcpy.exit
end_hunk_5
begin_hunk_6_@time_xmlschema:bb.a
  store i8 %i.ic, ptr %i.hz, align 1, !tbaa !53
  %i.ie = srem i8 %.lhs.trunc170, 10
  %i.if = add nsw i8 %i.ie, 48
  %4 = getelementptr i8, ptr %.4, i64 6
  store i8 %i.if, ptr %i.id, align 1, !tbaa !53
  br label %bb.aq

bb.aq:                                            ; preds = %rb_num2long_inline.exit153, %bb.am
  %.5 = phi ptr [ %3, %bb.am ], [ %4, %rb_num2long_inline.exit153 ]
  %i.ig = inttoptr i64 %.0126 to ptr              ; 2 uses
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !30
  %i.ii = and i64 %i.ih, 8192
end_hunk_6
begin_hunk_7_@time_xmlschema:bb.a

RSTRING_PTR.exit155:                              ; preds = %bb.aq, %bb.ar
  %i.il = phi ptr [ %i.ik, %bb.ar ], [ %i.ij, %bb.aq ]
  %i.im = ptrtoint ptr %.5 to i64
  %i.in = ptrtoint ptr %i.il to i64
  %i.io = sub i64 %i.im, %i.in
end_hunk_7
