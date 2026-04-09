inline.NumInlined: 728
inline.NumDeleted: 161
begin_hunk_0_@rb_mod_set_temporary_name:bb.a
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !16  ; 2 uses
  %i.ak = inttoptr i64 %i.aj to ptr               ; 3 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !40 ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.m, label %bb.n

end_hunk_0
begin_hunk_1_@rb_mod_set_temporary_name:bb.a
  br label %RSTRING_END.exit.i

RSTRING_END.exit.i:                               ; preds = %bb.o, %bb.n
  %i.at = phi ptr [ %i.as, %bb.o ], [ %i.ar, %bb.n ] ; 4 uses
  %i.au = getelementptr i8, ptr %i.at, i64 %i.am  ; 5 uses
  %i.av = call ptr @rb_enc_get(i64 noundef %i.aj) #27
  %.not.i11 = icmp ult ptr %i.at, %i.au
  br i1 %.not.i11, label %bb.p, label %.loopexit
end_hunk_1
begin_hunk_2_@rb_mod_set_temporary_name:bb.a
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.128.i = phi ptr [ %.027.i, %bb.q ], [ %spec.select.i, %bb.s ], [ %.027.i, %bb.r ] ; 6 uses
  %i.bd = icmp ult ptr %.128.i, %i.au
  br i1 %i.bd, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.t, %bb.u
  %.22940.i = phi ptr [ %i.bf, %bb.u ], [ %.128.i, %bb.t ] ; 3 uses
  %i.be = load i8, ptr %.22940.i, align 1, !tbaa !42
  %.not35.i = icmp eq i8 %i.be, 58
  br i1 %.not35.i, label %.critedge.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i
  %i.bf = getelementptr i8, ptr %.22940.i, i64 1  ; 3 uses
  %4 = icmp ult ptr %i.bf, %i.au
  br i1 %4, label %.lr.ph.i, label %.critedge.i, !llvm.loop !43

.critedge.i:                                      ; preds = %bb.u, %.lr.ph.i, %bb.t
  %.229.lcssa.i = phi ptr [ %.128.i, %bb.t ], [ %.22940.i, %.lr.ph.i ], [ %i.bf, %bb.u ] ; 3 uses
  %i.bg = icmp eq ptr %.128.i, %.229.lcssa.i
  br i1 %i.bg, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %.critedge.i
  %i.bh = ptrtoint ptr %.229.lcssa.i to i64
  %5 = ptrtoint ptr %.128.i to i64
  %i.bi = sub i64 %i.bh, %5
  %i.bj = call i32 @rb_enc_symname_type(ptr noundef %.128.i, i64 noundef %i.bi, ptr noundef %i.av, i32 noundef 0) #27
  %.not36.i = icmp eq i32 %i.bj, 10
  br i1 %.not36.i, label %.preheader.i, label %.loopexit, !llvm.loop !45
end_hunk_2
begin_hunk_3_@rb_path_to_class:bb.a

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.h, %bb.b ], [ %i.g, %bb.a ] ; 5 uses
  %i.j = load i64, ptr @rb_cObject, align 8, !tbaa !16
  %i.k = getelementptr i8, ptr %i.c, i64 20
  %.val.i = load i32, ptr %i.k, align 4, !tbaa !51
end_hunk_3
begin_hunk_4_@rb_path_to_class:bb.a

bb.c:                                             ; preds = %rb_enc_asciicompat.exit
  %i.n = getelementptr i8, ptr %i.d, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !40   ; 2 uses
  %i.p = getelementptr i8, ptr %i.i, i64 %i.o     ; 3 uses
  %i.q = icmp eq i64 %i.o, 0
  br i1 %i.q, label %bb.e, label %bb.d

end_hunk_4
begin_hunk_5_@rb_path_to_class:bb.a
  unreachable

bb.f:                                             ; preds = %.preheader47, %rb_namespace_p.exit
  %.033 = phi ptr [ %.2, %rb_namespace_p.exit ], [ %i.i, %.preheader47 ] ; 2 uses
  %.032 = phi i64 [ %.0.i42, %rb_namespace_p.exit ], [ %i.j, %.preheader47 ] ; 4 uses
  %.0 = phi ptr [ %.1, %rb_namespace_p.exit ], [ %i.i, %.preheader47 ] ; 6 uses
  %i.w = icmp ult ptr %.033, %i.p
  br i1 %i.w, label %.preheader, label %bb.q

.preheader:                                       ; preds = %bb.f, %bb.g
  %.13451 = phi ptr [ %i.y, %bb.g ], [ %.033, %bb.f ] ; 9 uses
  %i.x = load i8, ptr %.13451, align 1, !tbaa !42
  %.not = icmp eq i8 %i.x, 58
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.preheader
  %i.y = getelementptr i8, ptr %.13451, i64 1     ; 4 uses
  %1 = icmp ult ptr %i.y, %i.p
  br i1 %1, label %.preheader, label %.critedge, !llvm.loop !54

.critedge:                                        ; preds = %bb.g
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %.0 to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = tail call i64 @rb_check_id_cstr(ptr noundef %.0, i64 noundef %i.ab, ptr noundef nonnull %i.c) #27
end_hunk_5
begin_hunk_6_@rb_path_to_class:bb.a

bb.l:                                             ; preds = %.critedge, %bb.k, %bb.h
  %i.ao = phi i64 [ %i.ag, %bb.k ], [ %i.ag, %bb.h ], [ %i.ac, %.critedge ] ; 3 uses
  %.2 = phi ptr [ %i.an, %bb.k ], [ %.13451, %bb.h ], [ %i.y, %.critedge ] ; 4 uses
  %.1 = phi ptr [ %i.an, %bb.k ], [ %.0, %bb.h ], [ %.0, %.critedge ]
  %.not39 = icmp eq i64 %i.ao, 0
  br i1 %.not39, label %rb_const_search.exit.thread, label %bb.m
end_hunk_6
begin_hunk_7_@rb_path_to_class:bb.a
rb_const_search.exit.thread:                      ; preds = %bb.n, %rb_const_search.exit, %bb.l, %bb.i, %bb.j
  %.3 = phi ptr [ %.13451, %bb.i ], [ %.13451, %bb.j ], [ %.2, %rb_const_search.exit ], [ %.2, %bb.l ], [ %.2, %bb.n ]
  %i.bj = load i64, ptr @rb_eArgError, align 8, !tbaa !16
  %2 = ptrtoint ptr %.3 to i64
  %i.bk = ptrtoint ptr %i.i to i64
  %i.bl = sub i64 %2, %i.bk
  %i.bm = tail call i64 @rb_str_subseq(i64 noundef %0, i64 noundef 0, i64 noundef %i.bl) #27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bj, ptr noundef nonnull @.str.8, i64 noundef %i.bm) #28
  unreachable
end_hunk_7
