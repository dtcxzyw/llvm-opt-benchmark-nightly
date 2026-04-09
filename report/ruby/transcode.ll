inline.NumInlined: 403
inline.NumDeleted: 97
begin_hunk_0_@econv_s_search_convpath:bb.a

.thread73.i.sink.split:                           ; preds = %RARRAY_AREF.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.am
  %.4.i.ph = phi i32 [ %i.bl, %bb.am ], [ %i.bk, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.bk, %RARRAY_AREF.exit.i ]
  %i.dw = add nsw i32 %.025.i.i, -1
  %i.dx = add i32 %i.dw, %i.bk
  %i.dy = sext i32 %i.dx to i64
  call void @rb_ary_store(i64 noundef %i.t, i64 noundef %i.dy, i64 noundef %i.br) #20
  br label %.thread73.i
end_hunk_0
begin_hunk_1_@trans_open_i:bb.a
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %4 = add i32 %2, 1
  %i.d = getelementptr i8, ptr %3, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !34
  %i.f = add i32 %4, %i.e
  %i.g = sext i32 %i.f to i64
  %i.h = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.g, i64 noundef 8) #24
  store ptr %i.h, ptr %3, align 8, !tbaa !31
end_hunk_1
begin_hunk_2_@transcode_restartable0:bb.a
bb.h:                                             ; preds = %bb.ar, %bb.g
  %i.q = phi i32 [ %.pre1291.a, %bb.g ], [ %i.fo, %bb.ar ]
  %i.r = phi i8 [ %i.o, %bb.g ], [ %i.fk, %bb.ar ] ; 3 uses
  %.01091.pn = phi ptr [ %.01091, %bb.g ], [ %.51134, %bb.ar ] ; 3 uses
  %.21095 = phi ptr [ %.11094, %bb.g ], [ %.51098, %bb.ar ] ; 21 uses
  %.1 = phi ptr [ %.01091, %bb.g ], [ %.4, %bb.ar ] ; 28 uses
  %.01091.pn1288 = ptrtoint ptr %.01091.pn to i64
  %.21131 = getelementptr i8, ptr %.01091.pn, i64 1 ; 20 uses
  %i.s = zext i8 %i.r to i64
end_hunk_2
begin_hunk_3_@transcode_restartable0:bb.a
  %i.al = lshr i32 %i.ak, 2
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr [4 x i8], ptr %i.w, i64 %i.am
  %6 = add nuw nsw i64 %i.s, 2
  %7 = sub nsw i64 %6, %i.ae
  %i.ao = getelementptr i8, ptr %i.ac, i64 %7
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !30
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr [4 x i8], ptr %i.an, i64 %i.aq
end_hunk_3
begin_hunk_4_@transcode_restartable0:bb.a

.lr.ph:                                           ; preds = %bb.m
  %i.bi = getelementptr i8, ptr %4, i64 80        ; 6 uses
  %8 = add i64 %.01091.pn1288, 1
  %i.bj = sub i64 %8, %i.aw                       ; 2 uses
  %scevgep = getelementptr i8, ptr %.1, i64 %i.bj
  %xtraiter = and i64 %i.bj, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph
  %i.bk = getelementptr i8, ptr %.1, i64 1
end_hunk_4
begin_hunk_5_@transcode_restartable0:bb.a

.lr.ph.new:                                       ; preds = %.prol.loopexit, %bb.r
  %.010921287 = phi ptr [ %i.ch, %bb.r ], [ %.010921287.unr, %.prol.loopexit ] ; 3 uses
  %i.bw = getelementptr i8, ptr %.010921287, i64 1
  %i.bx = load i8, ptr %.010921287, align 1, !tbaa !30
  %i.by = load ptr, ptr %4, align 8, !tbaa !62
  %i.bz = getelementptr i8, ptr %i.by, i64 64
end_hunk_5
begin_hunk_6_@transcode_restartable0:bb.a
  store i64 %i.cf, ptr %i.bg, align 8, !tbaa !200
  %i.cg = getelementptr i8, ptr %i.cd, i64 %i.ce
  store i8 %i.bx, ptr %i.cg, align 1, !tbaa !30
  %i.ch = getelementptr i8, ptr %.010921287, i64 2 ; 2 uses
  %i.ci = load i8, ptr %i.bw, align 1, !tbaa !30
  %i.cj = load ptr, ptr %4, align 8, !tbaa !62
  %i.ck = getelementptr i8, ptr %i.cj, i64 64
end_hunk_6
begin_hunk_7_@transcode_restartable0:bb.a
  store i64 %i.cq, ptr %i.bg, align 8, !tbaa !200
  %i.cr = getelementptr i8, ptr %i.co, i64 %i.cp
  store i8 %i.ci, ptr %i.cr, align 1, !tbaa !30
  %exitcond.not.1 = icmp eq ptr %i.ch, %scevgep
  br i1 %exitcond.not.1, label %._crit_edge.loopexit, label %.lr.ph.new, !llvm.loop !201

._crit_edge.loopexit:                             ; preds = %bb.r, %.prol.loopexit
end_hunk_7
