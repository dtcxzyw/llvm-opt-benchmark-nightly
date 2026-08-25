Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/graph?download=true
inline.NumInlined: 133
inline.NumDeleted: 40
begin_hunk_0_@graph_update:bb.a

bb.ay:                                            ; preds = %bb.ax
  %indvars.iv.next.i.i110.i = add nuw nsw i64 %indvars.iv.i.i109.i, 1 ; 2 uses
  %exitcond.not.i.i111.i = icmp eq i64 %indvars.iv.next.i.i110.i, %wide.trip.count.i.i108.i
  br i1 %exitcond.not.i.i111.i, label %graph_find_new_column_by_commit.exit.thread.i88.i, label %bb.ax, !llvm.loop !121

graph_find_new_column_by_commit.exit.i112.i:      ; preds = %bb.ax
  %i.hf = trunc nuw nsw i64 %indvars.iv.i.i109.i to i32
  br label %bb.bc

graph_find_new_column_by_commit.exit.thread.i88.i: ; preds = %bb.ay, %bb.aw
  %i.hg = add nsw i32 %i.gz, 1
  store i32 %i.hg, ptr %i.aw, align 8, !tbaa !109
  %i.hh = sext i32 %i.gz to i64                   ; 2 uses
  %i.hi = getelementptr inbounds [16 x i8], ptr %i.hb, i64 %i.hh
  store ptr %.064.i, ptr %i.hi, align 8, !tbaa !119
  %i.hj = icmp sgt i32 %i.cv, 0
  br i1 %i.hj, label %.lr.ph.i42.i102.i, label %._crit_edge.i.i89.i

.lr.ph.i42.i102.i:                                ; preds = %graph_find_new_column_by_commit.exit.thread.i88.i
  %i.hk = load ptr, ptr %i.at, align 8, !tbaa !90
  br label %bb.ba

bb.az:                                            ; preds = %bb.ba
  %indvars.iv.next.i45.i105.i = add nuw nsw i64 %indvars.iv.i44.i104.i, 1 ; 2 uses
  %exitcond.not.i46.i106.i = icmp eq i64 %indvars.iv.next.i45.i105.i, %i.cw
  br i1 %exitcond.not.i46.i106.i, label %._crit_edge.i.i89.i, label %bb.ba, !llvm.loop !122

bb.ba:                                            ; preds = %bb.az, %.lr.ph.i42.i102.i
  %indvars.iv.i44.i104.i = phi i64 [ 0, %.lr.ph.i42.i102.i ], [ %indvars.iv.next.i45.i105.i, %bb.az ] ; 2 uses
  %i.hl = getelementptr inbounds nuw [16 x i8], ptr %i.hk, i64 %indvars.iv.i44.i104.i ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !119
  %i.hn = icmp eq ptr %i.hm, %.064.i
  br i1 %i.hn, label %bb.bb, label %bb.az

bb.bb:                                            ; preds = %bb.ba
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  br label %graph_find_commit_color.exit.i92.i

._crit_edge.i.i89.i:                              ; preds = %bb.az, %graph_find_new_column_by_commit.exit.thread.i88.i
  %i.hp = load ptr, ptr %i.cr, align 8, !tbaa !87
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 1768
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !123
  %i.hs = tail call zeroext i1 @want_color_fd(i32 noundef 1, i32 noundef %i.hr) #16
  %.0.in.i.i.i90.i = select i1 %i.hs, ptr %i.cs, ptr @column_colors_max
  %.pre54.i91.i = load ptr, ptr %i.au, align 8, !tbaa !92
  br label %graph_find_commit_color.exit.i92.i

graph_find_commit_color.exit.i92.i:               ; preds = %._crit_edge.i.i89.i, %bb.bb
  %i.ht = phi ptr [ %i.hb, %bb.bb ], [ %.pre54.i91.i, %._crit_edge.i.i89.i ]
  %.09.in.i.i93.i = phi ptr [ %i.ho, %bb.bb ], [ %.0.in.i.i.i90.i, %._crit_edge.i.i89.i ]
  %.09.i.i94.i = load i16, ptr %.09.in.i.i93.i, align 2, !tbaa !16
  %i.hu = getelementptr inbounds [16 x i8], ptr %i.ht, i64 %i.hh
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  store i16 %.09.i.i94.i, ptr %i.hv, align 8, !tbaa !124
  br label %bb.bc

bb.bc:                                            ; preds = %graph_find_commit_color.exit.i92.i, %graph_find_new_column_by_commit.exit.i112.i
  %.0.i95.i = phi i32 [ %i.gz, %graph_find_commit_color.exit.i92.i ], [ %i.hf, %graph_find_new_column_by_commit.exit.i112.i ] ; 2 uses
  %i.hw = load i32, ptr %i.cn, align 8, !tbaa !115
  %i.hx = icmp sgt i32 %i.hw, 0
  br i1 %i.hx, label %bb.bd, label %._crit_edge.i96.i

._crit_edge.i96.i:                                ; preds = %bb.bc
  %.pre56.i98.i = load i32, ptr %i.cm, align 4, !tbaa !114
  %.pre.pre.i = load ptr, ptr %i.ct, align 8, !tbaa !93
  br label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.hy = load ptr, ptr %i.ct, align 8, !tbaa !93 ; 3 uses
  %i.hz = load i32, ptr %i.cm, align 4, !tbaa !114 ; 2 uses
  %i.ia = add nsw i32 %i.hz, -2
  %i.ib = sext i32 %i.ia to i64                   ; 2 uses
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %i.ib
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !77
  %i.ie = icmp eq i32 %.0.i95.i, %i.id
  br i1 %i.ie, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store i32 -1, ptr %i.cn, align 8, !tbaa !115
  br label %graph_insert_into_new_columns.exit113.i

bb.bf:                                            ; preds = %bb.bd, %._crit_edge.i96.i
  %.pre.i = phi ptr [ %.pre.pre.i, %._crit_edge.i96.i ], [ %i.hy, %bb.bd ]
  %i.if = phi i32 [ %.pre56.i98.i, %._crit_edge.i96.i ], [ %i.hz, %bb.bd ] ; 2 uses
  %i.ig = add nsw i32 %i.if, 2
  store i32 %i.ig, ptr %i.cm, align 4, !tbaa !114
  %.pre157.i = sext i32 %i.if to i64
  br label %graph_insert_into_new_columns.exit113.i

graph_insert_into_new_columns.exit113.i:          ; preds = %bb.bf, %bb.be
  %.pre-phi.i = phi i64 [ %i.ib, %bb.be ], [ %.pre157.i, %bb.bf ]
  %i.ih = phi ptr [ %i.hy, %bb.be ], [ %.pre.i, %bb.bf ]
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.ih, i64 %.pre-phi.i
  store i32 %.0.i95.i, ptr %i.ii, align 4, !tbaa !77
  br label %bb.bg

bb.bg:                                            ; preds = %graph_insert_into_new_columns.exit113.i, %bb.av, %._crit_edge130.i
  %.271.ph.i = phi i32 [ %.069132.i, %graph_insert_into_new_columns.exit113.i ], [ 1, %._crit_edge130.i ], [ 1, %bb.av ]
  %indvars.iv.next152.i = add nuw nsw i64 %indvars.iv151.i, 1
  %i.ij = load i32, ptr %i.ay, align 4, !tbaa !110 ; 3 uses
  %i.ik = sext i32 %i.ij to i64
  %.not.not.i = icmp slt i64 %indvars.iv151.i, %i.ik
  br i1 %.not.not.i, label %bb.r, label %._crit_edge138.i, !llvm.loop !126

._crit_edge138.i:                                 ; preds = %bb.bg, %bb.s, %._crit_edge.i
  %i.il = phi i32 [ %i.cq, %._crit_edge.i ], [ %i.ij, %bb.bg ], [ %i.cv, %bb.s ]
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !87
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 1448
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !127 ; 2 uses
  %i.iq = icmp sgt i32 %i.ip, 0
  br i1 %i.iq, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %._crit_edge138.i
  %i.ir = shl nuw nsw i32 %i.ip, 1
  %i.is = add nuw nsw i32 %i.ir, 2                ; 2 uses
  %i.it = load i32, ptr %i.cm, align 4, !tbaa !114
  %i.iu = icmp sgt i32 %i.it, %i.is
  br i1 %i.iu, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 %i.is, ptr %i.cm, align 4, !tbaa !114
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %._crit_edge138.i
  %.pr.i = load i32, ptr %i.ce, align 4, !tbaa !112 ; 2 uses
  %i.iv = icmp sgt i32 %.pr.i, 1
  br i1 %i.iv, label %.lr.ph141.i, label %graph_update_columns.exit

.lr.ph141.i:                                      ; preds = %bb.bj
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !93
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bl, %.lr.ph141.i
  %i.iy = phi i32 [ %.pr.i, %.lr.ph141.i ], [ %i.je, %bb.bl ] ; 3 uses
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = getelementptr [4 x i8], ptr %i.ix, i64 %i.iz
  %i.jb = getelementptr i8, ptr %i.ja, i64 -4
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !77
  %i.jd = icmp slt i32 %i.jc, 0
  br i1 %i.jd, label %bb.bl, label %graph_update_columns.exit

bb.bl:                                            ; preds = %bb.bk
  %i.je = add nsw i32 %i.iy, -1                   ; 2 uses
  store i32 %i.je, ptr %i.ce, align 4, !tbaa !112
  %i.jf = icmp sgt i32 %i.iy, 2
  br i1 %i.jf, label %bb.bk, label %graph_update_columns.exit, !llvm.loop !128

graph_update_columns.exit:                        ; preds = %bb.bk, %bb.bl, %bb.bj
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.jg, align 8, !tbaa !129
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !130
  %.not17 = icmp eq i32 %i.ji, 0
  br i1 %.not17, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %graph_update_columns.exit
  %i.jj = load i32, ptr %i.a, align 8, !tbaa !88  ; 2 uses
  %i.jk = icmp sgt i32 %i.jj, 2
  br i1 %i.jk, label %bb.bn, label %graph_needs_pre_commit_line.exit.thread

bb.bn:                                            ; preds = %bb.bm
  %i.jl = load i32, ptr %i.aq, align 4, !tbaa !107
  %i.jm = add nsw i32 %i.il, -1
  %i.jn = icmp slt i32 %i.jl, %i.jm
  br i1 %i.jn, label %graph_needs_pre_commit_line.exit, label %graph_needs_pre_commit_line.exit.thread

graph_needs_pre_commit_line.exit:                 ; preds = %bb.bn
  %i.jo = getelementptr i8, ptr %0, i64 44
  %.val5.i = load i32, ptr %i.jo, align 4, !tbaa !118
  %i.jp = add nsw i32 %i.jj, -3
  %i.jq = add i32 %i.jp, %.val5.i
  %i.jr = icmp slt i32 %i.jq, 1
  br i1 %i.jr, label %graph_needs_pre_commit_line.exit.thread, label %bb.bo

graph_needs_pre_commit_line.exit.thread:          ; preds = %bb.bm, %bb.bn, %graph_needs_pre_commit_line.exit
  br label %bb.bo

bb.bo:                                            ; preds = %graph_needs_pre_commit_line.exit, %graph_update_columns.exit, %graph_needs_pre_commit_line.exit.thread
  %.sink = phi i32 [ 1, %graph_update_columns.exit ], [ 3, %graph_needs_pre_commit_line.exit.thread ], [ 2, %graph_needs_pre_commit_line.exit ]
  store i32 %.sink, ptr %i.jh, align 4, !tbaa !130
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @graph_width(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !114
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2) i32 @graph_next_line(ptr nofree noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.graph_line, align 8         ; 36 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store ptr %1, ptr %2, align 8, !tbaa !131
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 32 uses
  store i64 0, ptr %i.a, align 8, !tbaa !134
  %i.b = load ptr, ptr %0, align 8, !tbaa !82     ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %graph_pad_horizontally.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 11 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !130
  switch i32 %i.d, label %graph_output_padding_line.exit [
    i32 0, label %bb.c
    i32 1, label %bb.f
    i32 2, label %bb.h
    i32 3, label %bb.aa
    i32 4, label %bb.bv
    i32 5, label %bb.dm
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !109
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.i, label %graph_output_padding_line.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.e

bb.d:                                             ; preds = %graph_line_addch.exit.i
  %.val.i = load ptr, ptr %i.h, align 8, !tbaa !87
  %i.j = getelementptr i8, ptr %.val.i, i64 1448
  %.val.val.i = load i32, ptr %i.j, align 8, !tbaa !127 ; 2 uses
  %i.k = icmp slt i32 %.val.val.i, 1
  %i.l = sext i32 %.val.val.i to i64
  %i.m = icmp slt i64 %indvars.iv.next.i, %i.l
  %.not11.i = or i1 %i.k, %i.m
  br i1 %.not11.i, label %bb.e, label %._crit_edge, !llvm.loop !135

._crit_edge:                                      ; preds = %bb.d
  %i.n = add i64 %i.ac, 3
  tail call void @strbuf_add(ptr noundef nonnull %i.q, ptr noundef nonnull @.str.7, i64 noundef 2) #16
  store i64 %i.n, ptr %i.a, align 8, !tbaa !134
  br label %graph_output_padding_line.exit

bb.e:                                             ; preds = %.lr.ph.i, %bb.d
  %indvars.iv.i363 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !92
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %indvars.iv.i363
  call fastcc void @graph_line_write_column(ptr noundef nonnull %2, ptr noundef %i.p, i8 noundef signext 124)
  %i.q = load ptr, ptr %2, align 8, !tbaa !131    ; 7 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !136  ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i.i, label %strbuf_avail.exit.thread.i.i.i, label %strbuf_avail.exit.i.i.i

strbuf_avail.exit.i.i.i:                          ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !33   ; 2 uses
  %.neg.i.i.i = add i64 %i.t, 1                   ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.r, %.neg.i.i.i
  br i1 %.not.i.i.i, label %strbuf_avail.exit.thread.i.i.i, label %graph_line_addch.exit.i

strbuf_avail.exit.thread.i.i.i:                   ; preds = %strbuf_avail.exit.i.i.i, %bb.e
  tail call void @strbuf_grow(ptr noundef nonnull %i.q, i64 noundef 1) #16
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !33 ; 2 uses
  %.pre7.i.i.i = add i64 %.pre.i.i.i, 1
  br label %graph_line_addch.exit.i

graph_line_addch.exit.i:                          ; preds = %strbuf_avail.exit.thread.i.i.i, %strbuf_avail.exit.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre7.i.i.i, %strbuf_avail.exit.thread.i.i.i ], [ %.neg.i.i.i, %strbuf_avail.exit.i.i.i ]
  %i.u = phi i64 [ %.pre.i.i.i, %strbuf_avail.exit.thread.i.i.i ], [ %i.t, %strbuf_avail.exit.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store i64 %.pre-phi.i.i.i, ptr %i.x, align 8, !tbaa !33
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 32, ptr %i.y, align 1, !tbaa !36
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !35
  %i.aa = load i64, ptr %i.x, align 8, !tbaa !33
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  store i8 0, ptr %i.ab, align 1, !tbaa !36
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !134 ; 2 uses
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !134
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i363, 1 ; 3 uses
  %i.ae = load i32, ptr %i.e, align 8, !tbaa !109
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp slt i64 %indvars.iv.next.i, %i.af
  br i1 %i.ag, label %bb.d, label %graph_output_padding_line.exit, !llvm.loop !135

bb.f:                                             ; preds = %bb.b
  tail call void @strbuf_add(ptr noundef %1, ptr noundef nonnull @.str.8, i64 noundef 3) #16
  store i64 3, ptr %i.a, align 8, !tbaa !134
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !88 ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 2
  br i1 %i.aj, label %bb.g, label %graph_needs_pre_commit_line.exit.thread.i

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !107
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.an = load i32, ptr %i.am, align 4, !tbaa !110
  %i.ao = add nsw i32 %i.an, -1
  %i.ap = icmp slt i32 %i.al, %i.ao
  br i1 %i.ap, label %graph_needs_pre_commit_line.exit.i, label %graph_needs_pre_commit_line.exit.thread.i

graph_needs_pre_commit_line.exit.i:               ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !129
  %i.as = getelementptr i8, ptr %0, i64 44
  %.val5.i.i = load i32, ptr %i.as, align 4, !tbaa !118
  %i.at = add nsw i32 %i.ai, -3
  %i.au = add i32 %i.at, %.val5.i.i
  %i.av = shl nsw i32 %i.au, 1
  %.not.i = icmp slt i32 %i.ar, %i.av
  br i1 %.not.i, label %graph_output_skip_line.exit, label %graph_needs_pre_commit_line.exit.thread.i

graph_needs_pre_commit_line.exit.thread.i:        ; preds = %graph_needs_pre_commit_line.exit.i, %bb.g, %bb.f
  br label %graph_output_skip_line.exit

graph_output_skip_line.exit:                      ; preds = %graph_needs_pre_commit_line.exit.i, %graph_needs_pre_commit_line.exit.thread.i
  %.sink.i = phi i32 [ 3, %graph_needs_pre_commit_line.exit.thread.i ], [ 2, %graph_needs_pre_commit_line.exit.i ]
  %i.aw = load i32, ptr %i.c, align 4, !tbaa !130
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.aw, ptr %i.ax, align 8, !tbaa !137
  store i32 %.sink.i, ptr %i.c, align 4, !tbaa !130
  br label %graph_output_padding_line.exit

bb.h:                                             ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !88 ; 2 uses
  %i.ba = icmp sgt i32 %i.az, 2
  br i1 %i.ba, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, i32 noundef 913, ptr noundef nonnull @__PRETTY_FUNCTION__.graph_output_pre_commit_line) #14
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !129 ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, -1
  br i1 %i.bd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr i8, ptr %0, i64 44        ; 2 uses
  %.val45.i = load i32, ptr %i.be, align 4, !tbaa !118
  %i.bf = add nsw i32 %i.az, -3
  %i.bg = add i32 %i.bf, %.val45.i
  %i.bh = shl nsw i32 %i.bg, 1
  %i.bi = icmp slt i32 %i.bc, %i.bh
  br i1 %i.bi, label %.preheader.i, label %bb.l

.preheader.i:                                     ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !110
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %.lr.ph.i15, label %.loopexit.i

.lr.ph.i15:                                       ; preds = %.preheader.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bn = getelementptr i8, ptr %0, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2, i32 noundef 920, ptr noundef nonnull @__PRETTY_FUNCTION__.graph_output_pre_commit_line) #14
  unreachable

bb.m:                                             ; preds = %bb.y, %.lr.ph.i15
  %i.bq = phi i64 [ 0, %.lr.ph.i15 ], [ %i.dc, %bb.y ]
  %i.br = phi ptr [ %1, %.lr.ph.i15 ], [ %i.co, %bb.y ]
  %indvars.iv.i16 = phi i64 [ 0, %.lr.ph.i15 ], [ %indvars.iv.next.i25, %bb.y ] ; 4 uses
  %.03857.i = phi i32 [ 0, %.lr.ph.i15 ], [ %.1.i, %bb.y ] ; 2 uses
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !90
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %indvars.iv.i16 ; 6 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !119
  %i.bv = load ptr, ptr %0, align 8, !tbaa !82
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call fastcc void @graph_line_write_column(ptr noundef nonnull %2, ptr noundef nonnull %i.bt, i8 noundef signext 124)
  %i.bx = load i32, ptr %i.bb, align 8, !tbaa !129
  %i.by = sext i32 %i.bx to i64                   ; 2 uses
  %i.bz = load ptr, ptr %2, align 8, !tbaa !131
  tail call void @strbuf_addchars(ptr noundef %i.bz, i32 noundef 32, i64 noundef %i.by) #16
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !134
  %i.cb = add i64 %i.ca, %i.by
  store i64 %i.cb, ptr %i.a, align 8, !tbaa !134
  br label %bb.w

bb.o:                                             ; preds = %bb.m
  %.not.i17 = icmp eq i32 %.03857.i, 0
  br i1 %.not.i17, label %.critedge43.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val.i18 = load ptr, ptr %i.bn, align 8, !tbaa !87
end_hunk_0
begin_hunk_1_@graph_next_line:bb.a
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !97 ; 5 uses
  %.not.i.i49 = icmp eq ptr %i.ln, null
  br i1 %.not.i.i49, label %first_interesting_parent.exit.i54, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !102 ; 2 uses
  %i.lp = getelementptr i8, ptr %0, i64 8         ; 3 uses
  %.val.i.i50 = load ptr, ptr %i.lp, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i51 = icmp eq ptr %.val.i.i50, null
  br i1 %.not.i.i.i51, label %graph_is_interesting.exit.i.i89, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.lq = getelementptr inbounds nuw i8, ptr %.val.i.i50, i64 332
  %i.lr = load i64, ptr %i.lq, align 4
  %i.ls = and i64 %i.lr, 12582912
  %.not6.i.i.i52 = icmp eq i64 %i.ls, 0
  br i1 %.not6.i.i.i52, label %graph_is_interesting.exit.i.i89, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.lt = load i64, ptr %i.lo, align 8
  %i.lu = and i64 %i.lt, 274877906944
  %.not7.i.i.i53 = icmp eq i64 %i.lu, 0
  br i1 %.not7.i.i.i53, label %graph_is_interesting.exit.i.i89, label %first_interesting_parent.exit.i54

graph_is_interesting.exit.i.i89:                  ; preds = %bb.by, %bb.bx, %bb.bw
  %i.lv = tail call i32 @get_commit_action(ptr noundef %.val.i.i50, ptr noundef %i.lo) #16
  %.not14.i.i90 = icmp eq i32 %i.lv, 1
  br i1 %.not14.i.i90, label %first_interesting_parent.exit.i54, label %bb.bz

bb.bz:                                            ; preds = %graph_is_interesting.exit.i.i89
  %i.lw = load ptr, ptr %i.lp, align 8, !tbaa !87
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 332
  %i.ly = load i64, ptr %i.lx, align 4
  %i.lz = and i64 %i.ly, 549755813888
  %.not.i10.i.i91 = icmp eq i64 %i.lz, 0
  br i1 %.not.i10.i.i91, label %.preheader.i.i.i92, label %first_interesting_parent.exit.i54

.preheader.i.i.i92:                               ; preds = %bb.bz, %graph_is_interesting.exit.i.i.i101
  %.pn.i.i.i93 = phi ptr [ %.0.i11.i.i95, %graph_is_interesting.exit.i.i.i101 ], [ %i.ln, %bb.bz ]
  %.0.in.i.i.i94 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i93, i64 8
  %.0.i11.i.i95 = load ptr, ptr %.0.in.i.i.i94, align 8, !tbaa !104 ; 5 uses
  %.not9.i.i.i96 = icmp eq ptr %.0.i11.i.i95, null
  br i1 %.not9.i.i.i96, label %first_interesting_parent.exit.i54, label %bb.ca

bb.ca:                                            ; preds = %.preheader.i.i.i92
  %i.ma = load ptr, ptr %.0.i11.i.i95, align 8, !tbaa !102 ; 2 uses
  %.val.i.i.i97 = load ptr, ptr %i.lp, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i98 = icmp eq ptr %.val.i.i.i97, null
  br i1 %.not.i.i.i.i98, label %graph_is_interesting.exit.i.i.i101, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.mb = getelementptr inbounds nuw i8, ptr %.val.i.i.i97, i64 332
  %i.mc = load i64, ptr %i.mb, align 4
  %i.md = and i64 %i.mc, 12582912
  %.not6.i.i.i.i99 = icmp eq i64 %i.md, 0
  br i1 %.not6.i.i.i.i99, label %graph_is_interesting.exit.i.i.i101, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.me = load i64, ptr %i.ma, align 8
  %i.mf = and i64 %i.me, 274877906944
  %.not7.i.i.i.i100 = icmp eq i64 %i.mf, 0
  br i1 %.not7.i.i.i.i100, label %graph_is_interesting.exit.i.i.i101, label %first_interesting_parent.exit.i54

graph_is_interesting.exit.i.i.i101:               ; preds = %bb.cc, %bb.cb, %bb.ca
  %i.mg = tail call i32 @get_commit_action(ptr noundef %.val.i.i.i97, ptr noundef %i.ma) #16
  %.not13.i.i.i102 = icmp eq i32 %i.mg, 1
  br i1 %.not13.i.i.i102, label %first_interesting_parent.exit.i54, label %.preheader.i.i.i92, !llvm.loop !105

first_interesting_parent.exit.i54:                ; preds = %graph_is_interesting.exit.i.i.i101, %bb.cc, %.preheader.i.i.i92, %bb.bz, %graph_is_interesting.exit.i.i89, %bb.by, %bb.bv
  %.0.i.i = phi ptr [ null, %bb.bv ], [ %i.ln, %bb.by ], [ %i.ln, %graph_is_interesting.exit.i.i89 ], [ null, %bb.bz ], [ null, %.preheader.i.i.i92 ], [ %.0.i11.i.i95, %bb.cc ], [ %.0.i11.i.i95, %graph_is_interesting.exit.i.i.i101 ] ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !110 ; 2 uses
  %.not195.i = icmp slt i32 %i.mi, 0
  br i1 %.not195.i, label %.thread171.i, label %.lr.ph199.i

.lr.ph199.i:                                      ; preds = %first_interesting_parent.exit.i54
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.mk = getelementptr i8, ptr %0, i64 8         ; 5 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.cd

bb.cd:                                            ; preds = %.thread.i60, %.lr.ph199.i
  %indvars.iv.i55 = phi i64 [ 0, %.lr.ph199.i ], [ %indvars.iv.next.i61, %.thread.i60 ] ; 8 uses
  %i.mr = phi i32 [ %i.mi, %.lr.ph199.i ], [ %i.ta, %.thread.i60 ]
  %.086198.i = phi ptr [ null, %.lr.ph199.i ], [ %spec.select.i, %.thread.i60 ] ; 3 uses
  %.090196.i = phi i32 [ 0, %.lr.ph199.i ], [ %.191.i, %.thread.i60 ] ; 2 uses
  %i.ms = load ptr, ptr %i.mj, align 8, !tbaa !90
  %i.mt = getelementptr inbounds nuw [16 x i8], ptr %i.ms, i64 %indvars.iv.i55 ; 4 uses
  %i.mu = zext i32 %i.mr to i64
  %i.mv = icmp eq i64 %indvars.iv.i55, %i.mu
  br i1 %i.mv, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %.not95.i = icmp eq i32 %.090196.i, 0
  br i1 %.not95.i, label %bb.cf, label %.thread171.i

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.085.in.i = phi ptr [ %0, %bb.ce ], [ %i.mt, %bb.cd ]
  %.085.i = load ptr, ptr %.085.in.i, align 8, !tbaa !117 ; 2 uses
  %i.mw = load ptr, ptr %0, align 8, !tbaa !82
  %i.mx = icmp eq ptr %.085.i, %i.mw
  br i1 %i.mx, label %bb.cg, label %bb.db

bb.cg:                                            ; preds = %bb.cf
  %i.my = load i32, ptr %i.mo, align 8, !tbaa !88
  %.not107.not190.i = icmp sgt i32 %i.my, 0
  br i1 %.not107.not190.i, label %.lr.ph.preheader.i, label %.critedge.i63

.lr.ph.preheader.i:                               ; preds = %bb.cg
  %i.mz = load i32, ptr %i.mm, align 4, !tbaa !118
  %i.na = trunc nuw nsw i64 %indvars.iv.i55 to i32 ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8
  %.val6.i.i = load ptr, ptr %2, align 8          ; 13 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 8 ; 12 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 16 ; 6 uses
  br label %.lr.ph.i64

.lr.ph.i64:                                       ; preds = %next_interesting_parent.exit.i, %.lr.ph.preheader.i
  %i.nd = phi i64 [ %i.qd, %next_interesting_parent.exit.i ], [ %.promoted, %.lr.ph.preheader.i ] ; 3 uses
  %.081194.i = phi i32 [ %.1.i76, %next_interesting_parent.exit.i ], [ %i.mz, %.lr.ph.preheader.i ] ; 3 uses
  %.082193.i = phi ptr [ %.08.i.i, %next_interesting_parent.exit.i ], [ %.0.i.i, %.lr.ph.preheader.i ] ; 2 uses
  %.088191.i = phi i32 [ %i.qp, %next_interesting_parent.exit.i ], [ 0, %.lr.ph.preheader.i ] ; 6 uses
  %i.ne = load ptr, ptr %.082193.i, align 8, !tbaa !102
  %i.nf = load i32, ptr %i.mp, align 8, !tbaa !109 ; 2 uses
  %i.ng = icmp sgt i32 %i.nf, 0
  br i1 %i.ng, label %.lr.ph.i.i65, label %graph_find_new_column_by_commit.exit.thread.i

.lr.ph.i.i65:                                     ; preds = %.lr.ph.i64
  %i.nh = load ptr, ptr %i.mq, align 8, !tbaa !92
  %wide.trip.count.i.i66 = zext nneg i32 %i.nf to i64
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ci, %.lr.ph.i.i65
  %indvars.iv.i.i67 = phi i64 [ 0, %.lr.ph.i.i65 ], [ %indvars.iv.next.i.i68, %bb.ci ] ; 2 uses
  %i.ni = getelementptr inbounds nuw [16 x i8], ptr %i.nh, i64 %indvars.iv.i.i67 ; 2 uses
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !119
  %i.nk = icmp eq ptr %i.nj, %i.ne
  br i1 %i.nk, label %graph_find_new_column_by_commit.exit.i70, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %indvars.iv.next.i.i68 = add nuw nsw i64 %indvars.iv.i.i67, 1 ; 2 uses
  %exitcond.not.i.i69 = icmp eq i64 %indvars.iv.next.i.i68, %wide.trip.count.i.i66
  br i1 %exitcond.not.i.i69, label %graph_find_new_column_by_commit.exit.thread.i, label %bb.ch, !llvm.loop !121

graph_find_new_column_by_commit.exit.thread.i:    ; preds = %.lr.ph.i64, %bb.ci
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.2, i32 noundef 1198, ptr noundef nonnull @__PRETTY_FUNCTION__.graph_output_post_merge_line) #14
  unreachable

graph_find_new_column_by_commit.exit.i70:         ; preds = %bb.ch
  %i.nl = sext i32 %.081194.i to i64
  %i.nm = getelementptr inbounds i8, ptr @merge_chars, i64 %i.nl
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !36
  %i.no = getelementptr inbounds nuw i8, ptr %i.ni, i64 8 ; 2 uses
  %i.np = load i16, ptr %i.no, align 8, !tbaa !124 ; 2 uses
  %i.nq = load i16, ptr @column_colors_max, align 2, !tbaa !16
  %i.nr = icmp ult i16 %i.np, %i.nq
  br i1 %i.nr, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %graph_find_new_column_by_commit.exit.i70
  %i.ns = load ptr, ptr @column_colors, align 8, !tbaa !12
  %i.nt = zext i16 %i.np to i64
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.ns, i64 %i.nt
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !38 ; 2 uses
  %i.nw = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.nv) #15
  tail call void @strbuf_add(ptr noundef %.val6.i.i, ptr noundef nonnull %i.nv, i64 noundef %i.nw) #16
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %graph_find_new_column_by_commit.exit.i70
  %i.nx = load i64, ptr %.val6.i.i, align 8, !tbaa !136 ; 2 uses
  %.not.i.i.i.i.i71 = icmp eq i64 %i.nx, 0
  br i1 %.not.i.i.i.i.i71, label %strbuf_avail.exit.thread.i.i.i.i85, label %strbuf_avail.exit.i.i.i.i72

strbuf_avail.exit.i.i.i.i72:                      ; preds = %bb.ck
  %i.ny = load i64, ptr %i.nb, align 8, !tbaa !33 ; 2 uses
  %.neg.i.i.i.i73 = add i64 %i.ny, 1              ; 2 uses
  %.not.i.i.i112.i = icmp eq i64 %i.nx, %.neg.i.i.i.i73
  br i1 %.not.i.i.i112.i, label %strbuf_avail.exit.thread.i.i.i.i85, label %graph_line_addch.exit.i.i74

strbuf_avail.exit.thread.i.i.i.i85:               ; preds = %strbuf_avail.exit.i.i.i.i72, %bb.ck
  tail call void @strbuf_grow(ptr noundef nonnull %.val6.i.i, i64 noundef 1) #16
  %.pre.i.i.i.i87 = load i64, ptr %i.nb, align 8, !tbaa !33 ; 2 uses
  %.pre7.i.i.i.i88 = add i64 %.pre.i.i.i.i87, 1
  br label %graph_line_addch.exit.i.i74

graph_line_addch.exit.i.i74:                      ; preds = %strbuf_avail.exit.thread.i.i.i.i85, %strbuf_avail.exit.i.i.i.i72
  %.pre-phi.i.i.i.i75 = phi i64 [ %.pre7.i.i.i.i88, %strbuf_avail.exit.thread.i.i.i.i85 ], [ %.neg.i.i.i.i73, %strbuf_avail.exit.i.i.i.i72 ]
  %i.nz = phi i64 [ %.pre.i.i.i.i87, %strbuf_avail.exit.thread.i.i.i.i85 ], [ %i.ny, %strbuf_avail.exit.i.i.i.i72 ]
  %i.oa = load ptr, ptr %i.nc, align 8, !tbaa !35
  store i64 %.pre-phi.i.i.i.i75, ptr %i.nb, align 8, !tbaa !33
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 %i.nz
  store i8 %i.nn, ptr %i.ob, align 1, !tbaa !36
  %i.oc = load ptr, ptr %i.nc, align 8, !tbaa !35
  %i.od = load i64, ptr %i.nb, align 8, !tbaa !33
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.od
  store i8 0, ptr %i.oe, align 1, !tbaa !36
  %i.of = add i64 %i.nd, 1                        ; 5 uses
  store i64 %i.of, ptr %i.a, align 8, !tbaa !134
  %i.og = load i16, ptr %i.no, align 8, !tbaa !124
  %i.oh = load i16, ptr @column_colors_max, align 2, !tbaa !16 ; 2 uses
  %i.oi = icmp ult i16 %i.og, %i.oh
  br i1 %i.oi, label %bb.cl, label %graph_line_write_column.exit.i

bb.cl:                                            ; preds = %graph_line_addch.exit.i.i74
  %i.oj = load ptr, ptr @column_colors, align 8, !tbaa !12
  %i.ok = zext i16 %i.oh to i64
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %i.ok
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !38 ; 2 uses
  %i.on = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.om) #15
  tail call void @strbuf_add(ptr noundef nonnull %.val6.i.i, ptr noundef nonnull %i.om, i64 noundef %i.on) #16
  br label %graph_line_write_column.exit.i

graph_line_write_column.exit.i:                   ; preds = %bb.cl, %graph_line_addch.exit.i.i74
  %i.oo = lshr i32 %.088191.i, 1
  %i.op = add nuw nsw i32 %i.oo, %i.na            ; 2 uses
  %.val111.i = load ptr, ptr %i.mk, align 8, !tbaa !87 ; 3 uses
  %i.oq = getelementptr i8, ptr %.val111.i, i64 1448
  %.val111.val.i = load i32, ptr %i.oq, align 8, !tbaa !127 ; 3 uses
  %i.or = icmp sgt i32 %.val111.val.i, 0          ; 2 uses
  %i.os = icmp sge i32 %i.op, %.val111.val.i
  %i.ot = and i1 %i.or, %i.os
  br i1 %i.ot, label %bb.cm, label %bb.cp

bb.cm:                                            ; preds = %graph_line_write_column.exit.i
  %i.ou = load i32, ptr %i.mh, align 4, !tbaa !110
  %.not103.i = icmp sgt i32 %i.op, %i.ou
  br i1 %.not103.i, label %bb.cp, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ov = and i32 %.088191.i, 1
  %.not105.i = icmp eq i32 %i.ov, 0
  br i1 %.not105.i, label %.thread171.sink.split.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ow = load i64, ptr %.val6.i.i, align 8, !tbaa !136 ; 2 uses
  %.not.i.i.i114.i = icmp eq i64 %i.ow, 0
  br i1 %.not.i.i.i114.i, label %strbuf_avail.exit.thread.i.i.i81, label %strbuf_avail.exit.i.i.i77

strbuf_avail.exit.i.i.i77:                        ; preds = %bb.co
  %i.ox = load i64, ptr %i.nb, align 8, !tbaa !33 ; 2 uses
  %.neg.i.i.i78 = add i64 %i.ox, 1                ; 2 uses
  %.not.i.i115.i = icmp eq i64 %i.ow, %.neg.i.i.i78
  br i1 %.not.i.i115.i, label %strbuf_avail.exit.thread.i.i.i81, label %graph_line_addch.exit.i79

strbuf_avail.exit.thread.i.i.i81:                 ; preds = %strbuf_avail.exit.i.i.i77, %bb.co
  tail call void @strbuf_grow(ptr noundef nonnull %.val6.i.i, i64 noundef 1) #16
  %.pre.i.i.i83 = load i64, ptr %i.nb, align 8, !tbaa !33 ; 2 uses
  %.pre7.i.i.i84 = add i64 %.pre.i.i.i83, 1
  br label %graph_line_addch.exit.i79

graph_line_addch.exit.i79:                        ; preds = %strbuf_avail.exit.thread.i.i.i81, %strbuf_avail.exit.i.i.i77
  %.pre-phi.i.i.i80 = phi i64 [ %.pre7.i.i.i84, %strbuf_avail.exit.thread.i.i.i81 ], [ %.neg.i.i.i78, %strbuf_avail.exit.i.i.i77 ]
  %i.oy = phi i64 [ %.pre.i.i.i83, %strbuf_avail.exit.thread.i.i.i81 ], [ %i.ox, %strbuf_avail.exit.i.i.i77 ]
  %i.oz = load ptr, ptr %i.nc, align 8, !tbaa !35
  store i64 %.pre-phi.i.i.i80, ptr %i.nb, align 8, !tbaa !33
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 %i.oy
  store i8 32, ptr %i.pa, align 1, !tbaa !36
  %i.pb = load ptr, ptr %i.nc, align 8, !tbaa !35
  %i.pc = load i64, ptr %i.nb, align 8, !tbaa !33
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.pc
  store i8 0, ptr %i.pd, align 1, !tbaa !36
  %i.pe = add i64 %i.nd, 2
  br label %.thread171.sink.split.i

bb.cp:                                            ; preds = %bb.cm, %graph_line_write_column.exit.i
  %i.pf = icmp eq i32 %.081194.i, 2
  br i1 %i.pf, label %bb.cq, label %bb.cv

bb.cq:                                            ; preds = %bb.cp
  %i.pg = add nuw nsw i32 %.088191.i, 1
  %i.ph = lshr i32 %i.pg, 1
  %i.pi = add nuw nsw i32 %i.ph, %i.na
  %i.pj = icmp sge i32 %i.pi, %.val111.val.i
  %i.pk = and i1 %i.or, %i.pj
  br i1 %i.pk, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.pl = load i32, ptr %i.mo, align 8, !tbaa !88
  %i.pm = add nsw i32 %i.pl, -1
  %i.pn = icmp slt i32 %.088191.i, %i.pm
  br i1 %i.pn, label %.thread171.sink.split.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.po = load i32, ptr %i.ml, align 8, !tbaa !115
  %i.pp = icmp sgt i32 %i.po, 0
  br i1 %i.pp, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.pq = load i32, ptr %i.mo, align 8, !tbaa !88
  %i.pr = add nsw i32 %i.pq, -1
  %i.ps = icmp slt i32 %.088191.i, %i.pr
  br i1 %i.ps, label %bb.cu, label %bb.cw

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.pt = load i64, ptr %.val6.i.i, align 8, !tbaa !136 ; 2 uses
  %.not.i.i.i116.i = icmp eq i64 %i.pt, 0
  br i1 %.not.i.i.i116.i, label %strbuf_avail.exit.thread.i.i121.i, label %strbuf_avail.exit.i.i117.i

strbuf_avail.exit.i.i117.i:                       ; preds = %bb.cu
  %i.pu = load i64, ptr %i.nb, align 8, !tbaa !33 ; 2 uses
  %.neg.i.i118.i = add i64 %i.pu, 1               ; 2 uses
  %.not.i.i119.i = icmp eq i64 %i.pt, %.neg.i.i118.i
  br i1 %.not.i.i119.i, label %strbuf_avail.exit.thread.i.i121.i, label %graph_line_addch.exit125.i

strbuf_avail.exit.thread.i.i121.i:                ; preds = %strbuf_avail.exit.i.i117.i, %bb.cu
  tail call void @strbuf_grow(ptr noundef nonnull %.val6.i.i, i64 noundef 1) #16
  %.pre.i.i123.i = load i64, ptr %i.nb, align 8, !tbaa !33 ; 2 uses
  %.pre7.i.i124.i = add i64 %.pre.i.i123.i, 1
  br label %graph_line_addch.exit125.i

graph_line_addch.exit125.i:                       ; preds = %strbuf_avail.exit.thread.i.i121.i, %strbuf_avail.exit.i.i117.i
  %.pre-phi.i.i120.i = phi i64 [ %.pre7.i.i124.i, %strbuf_avail.exit.thread.i.i121.i ], [ %.neg.i.i118.i, %strbuf_avail.exit.i.i117.i ]
  %i.pv = phi i64 [ %.pre.i.i123.i, %strbuf_avail.exit.thread.i.i121.i ], [ %i.pu, %strbuf_avail.exit.i.i117.i ]
  %i.pw = load ptr, ptr %i.nc, align 8, !tbaa !35
  store i64 %.pre-phi.i.i120.i, ptr %i.nb, align 8, !tbaa !33
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 %i.pv
  store i8 32, ptr %i.px, align 1, !tbaa !36
  %i.py = load ptr, ptr %i.nc, align 8, !tbaa !35
  %i.pz = load i64, ptr %i.nb, align 8, !tbaa !33
  %i.qa = getelementptr inbounds nuw i8, ptr %i.py, i64 %i.pz
  store i8 0, ptr %i.qa, align 1, !tbaa !36
  %i.qb = add i64 %i.nd, 2                        ; 2 uses
  store i64 %i.qb, ptr %i.a, align 8, !tbaa !134
  %.pre.i = load ptr, ptr %i.mk, align 8, !tbaa !87
  br label %bb.cw

bb.cv:                                            ; preds = %bb.cp
  %i.qc = add nsw i32 %.081194.i, 1
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %graph_line_addch.exit125.i, %bb.ct
  %i.qd = phi i64 [ %i.qb, %graph_line_addch.exit125.i ], [ %i.of, %bb.ct ], [ %i.of, %bb.cv ]
  %i.qe = phi ptr [ %.pre.i, %graph_line_addch.exit125.i ], [ %.val111.i, %bb.ct ], [ %.val111.i, %bb.cv ]
  %.1.i76 = phi i32 [ 2, %graph_line_addch.exit125.i ], [ 2, %bb.ct ], [ %i.qc, %bb.cv ]
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 332
  %i.qg = load i64, ptr %i.qf, align 4
  %i.qh = and i64 %i.qg, 549755813888
  %.not.i126.i = icmp eq i64 %i.qh, 0
  br i1 %.not.i126.i, label %.preheader.i.i, label %next_interesting_parent.exit.i

.preheader.i.i:                                   ; preds = %bb.cw, %graph_is_interesting.exit.i132.i
  %.pn.i.i = phi ptr [ %.0.i127.i, %graph_is_interesting.exit.i132.i ], [ %.082193.i, %bb.cw ]
  %.0.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 8
  %.0.i127.i = load ptr, ptr %.0.in.i.i, align 8, !tbaa !104 ; 5 uses
  %.not9.i.i = icmp eq ptr %.0.i127.i, null
  br i1 %.not9.i.i, label %next_interesting_parent.exit.i, label %bb.cx

bb.cx:                                            ; preds = %.preheader.i.i
  %i.qi = load ptr, ptr %.0.i127.i, align 8, !tbaa !102 ; 2 uses
  %.val.i128.i = load ptr, ptr %i.mk, align 8, !tbaa !87 ; 3 uses
  %.not.i.i129.i = icmp eq ptr %.val.i128.i, null
  br i1 %.not.i.i129.i, label %graph_is_interesting.exit.i132.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.qj = getelementptr inbounds nuw i8, ptr %.val.i128.i, i64 332
  %i.qk = load i64, ptr %i.qj, align 4
  %i.ql = and i64 %i.qk, 12582912
  %.not6.i.i130.i = icmp eq i64 %i.ql, 0
  br i1 %.not6.i.i130.i, label %graph_is_interesting.exit.i132.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.qm = load i64, ptr %i.qi, align 8
  %i.qn = and i64 %i.qm, 274877906944
  %.not7.i.i131.i = icmp eq i64 %i.qn, 0
  br i1 %.not7.i.i131.i, label %graph_is_interesting.exit.i132.i, label %next_interesting_parent.exit.i

graph_is_interesting.exit.i132.i:                 ; preds = %bb.cz, %bb.cy, %bb.cx
  %i.qo = tail call i32 @get_commit_action(ptr noundef %.val.i128.i, ptr noundef %i.qi) #16
  %.not13.i.i = icmp eq i32 %i.qo, 1
  br i1 %.not13.i.i, label %next_interesting_parent.exit.i, label %.preheader.i.i, !llvm.loop !105

next_interesting_parent.exit.i:                   ; preds = %graph_is_interesting.exit.i132.i, %bb.cz, %.preheader.i.i, %bb.cw
  %.08.i.i = phi ptr [ null, %bb.cw ], [ %.0.i127.i, %bb.cz ], [ null, %.preheader.i.i ], [ %.0.i127.i, %graph_is_interesting.exit.i132.i ]
  %i.qp = add nuw nsw i32 %.088191.i, 1           ; 2 uses
  %i.qq = load i32, ptr %i.mo, align 8, !tbaa !88
  %.not107.not.i = icmp slt i32 %i.qp, %i.qq
  br i1 %.not107.not.i, label %.lr.ph.i64, label %.critedge.i63, !llvm.loop !142

.critedge.i63:                                    ; preds = %next_interesting_parent.exit.i, %bb.cg
  %i.qr = load i32, ptr %i.ml, align 8, !tbaa !115
  %i.qs = icmp eq i32 %i.qr, 0
  br i1 %i.qs, label %bb.da, label %.thread.i60

bb.da:                                            ; preds = %.critedge.i63
  %i.qt = load ptr, ptr %2, align 8, !tbaa !131   ; 6 uses
  %i.qu = load i64, ptr %i.qt, align 8, !tbaa !136 ; 2 uses
  %.not.i.i.i133.i = icmp eq i64 %i.qu, 0
  br i1 %.not.i.i.i133.i, label %strbuf_avail.exit.thread.i.i138.i, label %strbuf_avail.exit.i.i134.i

strbuf_avail.exit.i.i134.i:                       ; preds = %bb.da
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qt, i64 8
  %i.qw = load i64, ptr %i.qv, align 8, !tbaa !33 ; 2 uses
  %.neg.i.i135.i = add i64 %i.qw, 1               ; 2 uses
  %.not.i.i136.i = icmp eq i64 %i.qu, %.neg.i.i135.i
  br i1 %.not.i.i136.i, label %strbuf_avail.exit.thread.i.i138.i, label %graph_line_addch.exit142.i

strbuf_avail.exit.thread.i.i138.i:                ; preds = %strbuf_avail.exit.i.i134.i, %bb.da
  tail call void @strbuf_grow(ptr noundef nonnull %i.qt, i64 noundef 1) #16
  %.phi.trans.insert.i.i139.i = getelementptr inbounds nuw i8, ptr %i.qt, i64 8
  %.pre.i.i140.i = load i64, ptr %.phi.trans.insert.i.i139.i, align 8, !tbaa !33 ; 2 uses
  %.pre7.i.i141.i = add i64 %.pre.i.i140.i, 1
  br label %graph_line_addch.exit142.i

graph_line_addch.exit142.i:                       ; preds = %strbuf_avail.exit.thread.i.i138.i, %strbuf_avail.exit.i.i134.i
  %.pre-phi.i.i137.i = phi i64 [ %.pre7.i.i141.i, %strbuf_avail.exit.thread.i.i138.i ], [ %.neg.i.i135.i, %strbuf_avail.exit.i.i134.i ]
  %i.qx = phi i64 [ %.pre.i.i140.i, %strbuf_avail.exit.thread.i.i138.i ], [ %i.qw, %strbuf_avail.exit.i.i134.i ]
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qt, i64 16 ; 2 uses
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !35
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qt, i64 8 ; 2 uses
  store i64 %.pre-phi.i.i137.i, ptr %i.ra, align 8, !tbaa !33
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qz, i64 %i.qx
  store i8 32, ptr %i.rb, align 1, !tbaa !36
  %i.rc = load ptr, ptr %i.qy, align 8, !tbaa !35
  %i.rd = load i64, ptr %i.ra, align 8, !tbaa !33
  %i.re = getelementptr inbounds nuw i8, ptr %i.rc, i64 %i.rd
  store i8 0, ptr %i.re, align 1, !tbaa !36
  %i.rf = load i64, ptr %i.a, align 8, !tbaa !134
  %i.rg = add i64 %i.rf, 1
  store i64 %i.rg, ptr %i.a, align 8, !tbaa !134
  br label %.thread.i60

bb.db:                                            ; preds = %bb.cf
  %.val109.i = load ptr, ptr %i.mk, align 8, !tbaa !87
  %i.rh = getelementptr i8, ptr %.val109.i, i64 1448
  %.val109.val.i = load i32, ptr %i.rh, align 8, !tbaa !127 ; 2 uses
  %i.ri = icmp slt i32 %.val109.val.i, 1
  %i.rj = sext i32 %.val109.val.i to i64
  %i.rk = icmp slt i64 %indvars.iv.i55, %i.rj
  %.not179.i = or i1 %i.ri, %i.rk
  br i1 %.not179.i, label %bb.dc, label %.thread171.sink.split.i.loopexit165

bb.dc:                                            ; preds = %bb.db
  %.not97.i = icmp eq i32 %.090196.i, 0
  br i1 %.not97.i, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.rl = load i32, ptr %i.ml, align 8, !tbaa !115
  %i.rm = icmp sgt i32 %i.rl, 0
  %..i = select i1 %i.rm, i8 92, i8 124
  call fastcc void @graph_line_write_column(ptr noundef nonnull %2, ptr noundef %i.mt, i8 noundef signext %..i)
  %.val.i58 = load ptr, ptr %i.mk, align 8, !tbaa !87
  %i.rn = getelementptr i8, ptr %.val.i58, i64 1448
  %.val.val.i59 = load i32, ptr %i.rn, align 8, !tbaa !127 ; 2 uses
  %i.ro = icmp slt i32 %.val.val.i59, 1
  %i.rp = trunc i64 %indvars.iv.i55 to i32
  %i.rq = add i32 %i.rp, 1
  %i.rr = icmp slt i32 %i.rq, %.val.val.i59
  %.not182.i = or i1 %i.ro, %i.rr
  br i1 %.not182.i, label %bb.de, label %.thread.i60

bb.de:                                            ; preds = %bb.dd
  %i.rs = load ptr, ptr %2, align 8, !tbaa !131   ; 6 uses
  %i.rt = load i64, ptr %i.rs, align 8, !tbaa !136 ; 2 uses
  %.not.i.i.i143.i = icmp eq i64 %i.rt, 0
  br i1 %.not.i.i.i143.i, label %strbuf_avail.exit.thread.i.i148.i, label %strbuf_avail.exit.i.i144.i

strbuf_avail.exit.i.i144.i:                       ; preds = %bb.de
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rs, i64 8
  %i.rv = load i64, ptr %i.ru, align 8, !tbaa !33 ; 2 uses
  %.neg.i.i145.i = add i64 %i.rv, 1               ; 2 uses
  %.not.i.i146.i = icmp eq i64 %i.rt, %.neg.i.i145.i
  br i1 %.not.i.i146.i, label %strbuf_avail.exit.thread.i.i148.i, label %graph_line_addch.exit152.i

strbuf_avail.exit.thread.i.i148.i:                ; preds = %strbuf_avail.exit.i.i144.i, %bb.de
  tail call void @strbuf_grow(ptr noundef nonnull %i.rs, i64 noundef 1) #16
  %.phi.trans.insert.i.i149.i = getelementptr inbounds nuw i8, ptr %i.rs, i64 8
  %.pre.i.i150.i = load i64, ptr %.phi.trans.insert.i.i149.i, align 8, !tbaa !33 ; 2 uses
  %.pre7.i.i151.i = add i64 %.pre.i.i150.i, 1
  br label %graph_line_addch.exit152.i

graph_line_addch.exit152.i:                       ; preds = %strbuf_avail.exit.thread.i.i148.i, %strbuf_avail.exit.i.i144.i
  %.pre-phi.i.i147.i = phi i64 [ %.pre7.i.i151.i, %strbuf_avail.exit.thread.i.i148.i ], [ %.neg.i.i145.i, %strbuf_avail.exit.i.i144.i ]
  %i.rw = phi i64 [ %.pre.i.i150.i, %strbuf_avail.exit.thread.i.i148.i ], [ %i.rv, %strbuf_avail.exit.i.i144.i ]
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rs, i64 16 ; 2 uses
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !35
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rs, i64 8 ; 2 uses
  store i64 %.pre-phi.i.i147.i, ptr %i.rz, align 8, !tbaa !33
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.rw
  store i8 32, ptr %i.sa, align 1, !tbaa !36
  %i.sb = load ptr, ptr %i.rx, align 8, !tbaa !35
  %i.sc = load i64, ptr %i.rz, align 8, !tbaa !33
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sb, i64 %i.sc
  store i8 0, ptr %i.sd, align 1, !tbaa !36
  %i.se = load i64, ptr %i.a, align 8, !tbaa !134
  %i.sf = add i64 %i.se, 1
  store i64 %i.sf, ptr %i.a, align 8, !tbaa !134
  br label %.thread.i60

bb.df:                                            ; preds = %bb.dc
  call fastcc void @graph_line_write_column(ptr noundef nonnull %2, ptr noundef %i.mt, i8 noundef signext 124)
  %i.sg = load i32, ptr %i.mm, align 4, !tbaa !118
  %.not98.i = icmp eq i32 %i.sg, 0
  br i1 %.not98.i, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.sh = load i32, ptr %i.mn, align 4, !tbaa !107
  %i.si = add nsw i32 %i.sh, -1
  %i.sj = zext i32 %i.si to i64
  %.not99.i = icmp eq i64 %indvars.iv.i55, %i.sj
  br i1 %.not99.i, label %.thread.i60, label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.not100.i = icmp eq ptr %.086198.i, null
  br i1 %.not100.i, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call fastcc void @graph_line_write_column(ptr noundef nonnull %2, ptr noundef nonnull %.086198.i, i8 noundef signext 95)
  br label %.thread.i60

bb.dj:                                            ; preds = %bb.dh
  %i.sk = load ptr, ptr %2, align 8, !tbaa !131   ; 6 uses
  %i.sl = load i64, ptr %i.sk, align 8, !tbaa !136 ; 2 uses
  %.not.i.i.i153.i = icmp eq i64 %i.sl, 0
  br i1 %.not.i.i.i153.i, label %strbuf_avail.exit.thread.i.i158.i, label %strbuf_avail.exit.i.i154.i

strbuf_avail.exit.i.i154.i:                       ; preds = %bb.dj
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  %i.sn = load i64, ptr %i.sm, align 8, !tbaa !33 ; 2 uses
  %.neg.i.i155.i = add i64 %i.sn, 1               ; 2 uses
  %.not.i.i156.i = icmp eq i64 %i.sl, %.neg.i.i155.i
  br i1 %.not.i.i156.i, label %strbuf_avail.exit.thread.i.i158.i, label %graph_line_addch.exit162.i

strbuf_avail.exit.thread.i.i158.i:                ; preds = %strbuf_avail.exit.i.i154.i, %bb.dj
  tail call void @strbuf_grow(ptr noundef nonnull %i.sk, i64 noundef 1) #16
  %.phi.trans.insert.i.i159.i = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  %.pre.i.i160.i = load i64, ptr %.phi.trans.insert.i.i159.i, align 8, !tbaa !33 ; 2 uses
  %.pre7.i.i161.i = add i64 %.pre.i.i160.i, 1
  br label %graph_line_addch.exit162.i

graph_line_addch.exit162.i:                       ; preds = %strbuf_avail.exit.thread.i.i158.i, %strbuf_avail.exit.i.i154.i
  %.pre-phi.i.i157.i = phi i64 [ %.pre7.i.i161.i, %strbuf_avail.exit.thread.i.i158.i ], [ %.neg.i.i155.i, %strbuf_avail.exit.i.i154.i ]
  %i.so = phi i64 [ %.pre.i.i160.i, %strbuf_avail.exit.thread.i.i158.i ], [ %i.sn, %strbuf_avail.exit.i.i154.i ]
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sk, i64 16 ; 2 uses
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !35
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sk, i64 8 ; 2 uses
  store i64 %.pre-phi.i.i157.i, ptr %i.sr, align 8, !tbaa !33
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sq, i64 %i.so
  store i8 32, ptr %i.ss, align 1, !tbaa !36
  %i.st = load ptr, ptr %i.sp, align 8, !tbaa !35
  %i.su = load i64, ptr %i.sr, align 8, !tbaa !33
  %i.sv = getelementptr inbounds nuw i8, ptr %i.st, i64 %i.su
  store i8 0, ptr %i.sv, align 1, !tbaa !36
  %i.sw = load i64, ptr %i.a, align 8, !tbaa !134
  %i.sx = add i64 %i.sw, 1
  store i64 %i.sx, ptr %i.a, align 8, !tbaa !134
  br label %.thread.i60

.thread.i60:                                      ; preds = %graph_line_addch.exit162.i, %bb.di, %bb.dg, %graph_line_addch.exit152.i, %bb.dd, %graph_line_addch.exit142.i, %.critedge.i63
  %.191.i = phi i32 [ 1, %graph_line_addch.exit142.i ], [ 1, %bb.dd ], [ 1, %graph_line_addch.exit152.i ], [ 0, %bb.di ], [ 0, %graph_line_addch.exit162.i ], [ 0, %bb.dg ], [ 1, %.critedge.i63 ]
  %i.sy = load ptr, ptr %.0.i.i, align 8, !tbaa !102
  %i.sz = icmp eq ptr %.085.i, %i.sy
  %spec.select.i = select i1 %i.sz, ptr %i.mt, ptr %.086198.i
  %indvars.iv.next.i61 = add nuw nsw i64 %indvars.iv.i55, 1
  %i.ta = load i32, ptr %i.mh, align 4, !tbaa !110 ; 2 uses
  %i.tb = sext i32 %i.ta to i64
  %.not.not.i62 = icmp slt i64 %indvars.iv.i55, %i.tb
  br i1 %.not.not.i62, label %bb.cd, label %.thread171.i, !llvm.loop !143

.thread171.sink.split.i.loopexit165:              ; preds = %bb.db
  %.pre = load ptr, ptr %2, align 8, !tbaa !131
  %storemerge.in.i.pre = load i64, ptr %i.a, align 8, !tbaa !134
  br label %.thread171.sink.split.i

.thread171.sink.split.i:                          ; preds = %bb.cr, %.thread171.sink.split.i.loopexit165, %graph_line_addch.exit.i79, %bb.cn
  %storemerge.in.i = phi i64 [ %storemerge.in.i.pre, %.thread171.sink.split.i.loopexit165 ], [ %i.of, %bb.cn ], [ %i.pe, %graph_line_addch.exit.i79 ], [ %i.of, %bb.cr ]
  %i.tc = phi ptr [ %.pre, %.thread171.sink.split.i.loopexit165 ], [ %.val6.i.i, %bb.cn ], [ %.val6.i.i, %graph_line_addch.exit.i79 ], [ %.val6.i.i, %bb.cr ]
  tail call void @strbuf_add(ptr noundef %i.tc, ptr noundef nonnull @.str.7, i64 noundef 2) #16
  %storemerge.i = add i64 %storemerge.in.i, 2
  store i64 %storemerge.i, ptr %i.a, align 8, !tbaa !134
  br label %.thread171.i

.thread171.i:                                     ; preds = %.thread.i60, %bb.ce, %.thread171.sink.split.i, %first_interesting_parent.exit.i54
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.te = load i32, ptr %i.td, align 4, !tbaa !112 ; 2 uses
  %i.tf = icmp sgt i32 %i.te, 0
  br i1 %i.tf, label %.lr.ph.i163.i, label %graph_output_post_merge_line.exit

.lr.ph.i163.i:                                    ; preds = %.thread171.i
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 88
end_hunk_1
