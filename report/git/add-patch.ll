Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/add-patch?download=true
inline.NumInlined: 162
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@prompt_yesno:bb.a
.loopexit.loopexit:                               ; preds = %bb.i
  br label %.loopexit

.loopexit:                                        ; preds = %read_single_character.exit, %bb.i, %.loopexit.loopexit
  %.0 = phi i32 [ 1, %bb.i ], [ -1, %read_single_character.exit ], [ 0, %.loopexit.loopexit ]
  ret i32 %.0
}

declare void @strbuf_commented_addf(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @strbuf_edit_interactively(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @reassemble_patch(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, 2) %2, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 9 uses
  %4 = alloca %struct.hunk, align 8               ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !89   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8
  %i.g = and i8 %i.f, 4
  %.not.i = icmp eq i8 %i.g, 0
  br i1 %.not.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !73   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !77
  %.not32.i = icmp eq i32 %i.k, 2
  br i1 %.not32.i, label %.critedge.i, label %bb.c

.critedge.i:                                      ; preds = %bb.b, %bb.a
  tail call fastcc void @render_hunk(ptr noundef nonnull %0, ptr noundef nonnull readonly %1, i64 noundef 0, i32 noundef 0, ptr noundef nonnull %3)
  br label %render_diff_header.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !79   ; 2 uses
  %i.n = load i64, ptr %1, align 8, !tbaa !68     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = load i64, ptr %i.i, align 8, !tbaa !68
  %i.q = sub i64 %i.p, %i.n
  tail call void @strbuf_add(ptr noundef nonnull %3, ptr noundef %i.o, i64 noundef %i.q) #17
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !74   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !74
  %i.w = sub i64 %i.v, %i.s
  tail call void @strbuf_add(ptr noundef nonnull %3, ptr noundef %i.t, i64 noundef %i.w) #17
  br label %render_diff_header.exit

render_diff_header.exit:                          ; preds = %.critedge.i, %bb.c
  %i.x = load i8, ptr %i.e, align 8
  %i.y = lshr i8 %i.x, 2
  %i.z = and i8 %i.y, 1
  %i.aa = zext nneg i8 %i.z to i64                ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  store i64 %i.aa, ptr %i.a, align 8, !tbaa !87
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !72 ; 2 uses
  %i.ad = icmp ugt i64 %i.ac, %i.aa
  br i1 %i.ad, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %render_diff_header.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %.not = icmp eq i32 %2, 0
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  br i1 %.not, label %.lr.ph.split.us, label %.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.h
  %i.ag = phi i64 [ %i.ax, %bb.h ], [ %i.ac, %.lr.ph ]
  %.029.us = phi i64 [ %.1.us, %bb.h ], [ 0, %.lr.ph ] ; 2 uses
  %storemerge28.us = phi i64 [ %i.az, %bb.h ], [ %i.aa, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %4, i8 0, i64 128, i1 false)
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !73
  %i.ai = getelementptr inbounds nuw [128 x i8], ptr %i.ah, i64 %storemerge28.us ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !77
  %.not25.us = icmp eq i32 %i.ak, 2
  br i1 %.not25.us, label %.split23.us, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.am = load i64, ptr %i.al, align 8, !tbaa !178
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !179
  %i.ap = sub i64 %i.am, %i.ao
  br label %bb.h

.split23.us:                                      ; preds = %.lr.ph.split.us
  %i.aq = call fastcc i32 @merge_hunks(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.a, i32 noundef 0, ptr noundef %4)
  %.not26.us = icmp eq i32 %i.aq, 0               ; 2 uses
  %spec.select.us = select i1 %.not26.us, ptr %i.ai, ptr %4
  call fastcc void @render_hunk(ptr noundef %0, ptr noundef %spec.select.us, i64 noundef %.029.us, i32 noundef 0, ptr noundef %3)
  %i.ar = load i64, ptr %i.b, align 8, !tbaa !63
  %spec.select.i.us = tail call i64 @llvm.usub.sat.i64(i64 %i.ar, i64 1)
  %i.as = icmp ugt i64 %i.d, %spec.select.i.us
  br i1 %i.as, label %.split31.us, label %bb.e

bb.e:                                             ; preds = %.split23.us
  store i64 %i.d, ptr %i.c, align 8, !tbaa !62
  %i.at = load ptr, ptr %i.af, align 8, !tbaa !57 ; 2 uses
  %.not9.i.us = icmp eq ptr %i.at, @strbuf_slopbuf
  br i1 %.not9.i.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.d
  store i8 0, ptr %i.au, align 1, !tbaa !17
  br label %strbuf_setlen.exit.us

bb.g:                                             ; preds = %bb.e
  %i.av = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !17
  %.not10.i.us = icmp eq i8 %i.av, 0
  br i1 %.not10.i.us, label %strbuf_setlen.exit.us, label %.split33.us

strbuf_setlen.exit.us:                            ; preds = %bb.g, %bb.f
  %spec.select.sroa.sel.v.us.sroa.sel.v.sroa.sel.v = select i1 %.not26.us, ptr %i.ai, ptr %4
  %spec.select.sroa.sel.v.us.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.select.sroa.sel.v.us.sroa.sel.v.sroa.sel.v, i64 40
  %i.aw = load i64, ptr %spec.select.sroa.sel.v.us.sroa.sel.v.sroa.sel, align 8, !tbaa !92
  %.pre = load i64, ptr %i.a, align 8, !tbaa !87
  %.pre40 = load i64, ptr %i.ab, align 8, !tbaa !72
  br label %bb.h

bb.h:                                             ; preds = %strbuf_setlen.exit.us, %bb.d
  %i.ax = phi i64 [ %.pre40, %strbuf_setlen.exit.us ], [ %i.ag, %bb.d ] ; 2 uses
  %i.ay = phi i64 [ %.pre, %strbuf_setlen.exit.us ], [ %storemerge28.us, %bb.d ]
  %.pn.us = phi i64 [ %i.aw, %strbuf_setlen.exit.us ], [ %i.ap, %bb.d ]
  %.1.us = add i64 %.pn.us, %.029.us
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.az = add i64 %i.ay, 1                        ; 3 uses
  store i64 %i.az, ptr %i.a, align 8, !tbaa !87
  %i.ba = icmp ult i64 %i.az, %i.ax
  br i1 %i.ba, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !177

.split:                                           ; preds = %.lr.ph, %strbuf_setlen.exit
  %.029 = phi i64 [ %.1, %strbuf_setlen.exit ], [ 0, %.lr.ph ] ; 2 uses
  %storemerge28 = phi i64 [ %i.bl, %strbuf_setlen.exit ], [ %i.aa, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %4, i8 0, i64 128, i1 false)
  %i.bb = load ptr, ptr %i.ae, align 8, !tbaa !73
  %i.bc = getelementptr inbounds nuw [128 x i8], ptr %i.bb, i64 %storemerge28 ; 2 uses
  %i.bd = call fastcc i32 @merge_hunks(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.a, i32 noundef 1, ptr noundef %4)
  %.not26 = icmp eq i32 %i.bd, 0                  ; 2 uses
  %spec.select = select i1 %.not26, ptr %i.bc, ptr %4
  call fastcc void @render_hunk(ptr noundef %0, ptr noundef %spec.select, i64 noundef %.029, i32 noundef 0, ptr noundef %3)
  %i.be = load i64, ptr %i.b, align 8, !tbaa !63
  %spec.select.i = tail call i64 @llvm.usub.sat.i64(i64 %i.be, i64 1)
  %i.bf = icmp ugt i64 %i.d, %spec.select.i
  br i1 %i.bf, label %.split31.us, label %bb.i

.split31.us:                                      ; preds = %.split, %.split23.us
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.125, i32 noundef 167, ptr noundef nonnull @.str.126) #19
  unreachable

bb.i:                                             ; preds = %.split
  store i64 %i.d, ptr %i.c, align 8, !tbaa !62
  %i.bg = load ptr, ptr %i.af, align 8, !tbaa !57 ; 2 uses
  %.not9.i = icmp eq ptr %i.bg, @strbuf_slopbuf
  br i1 %.not9.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.d
  store i8 0, ptr %i.bh, align 1, !tbaa !17
  br label %strbuf_setlen.exit

bb.k:                                             ; preds = %bb.i
  %i.bi = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !17
  %.not10.i = icmp eq i8 %i.bi, 0
  br i1 %.not10.i, label %strbuf_setlen.exit, label %.split33.us

.split33.us:                                      ; preds = %bb.k, %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.125, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #19
  unreachable

strbuf_setlen.exit:                               ; preds = %bb.j, %bb.k
  %spec.select.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not26, ptr %i.bc, ptr %4
  %spec.select.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.select.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.bj = load i64, ptr %spec.select.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !92
  %.1 = add i64 %i.bj, %.029
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.bk = load i64, ptr %i.a, align 8, !tbaa !87
  %i.bl = add i64 %i.bk, 1                        ; 3 uses
  store i64 %i.bl, ptr %i.a, align 8, !tbaa !87
  %i.bm = load i64, ptr %i.ab, align 8, !tbaa !72
  %i.bn = icmp ult i64 %i.bl, %i.bm
  br i1 %i.bn, label %.split, label %._crit_edge, !llvm.loop !177

._crit_edge:                                      ; preds = %strbuf_setlen.exit, %bb.h, %render_diff_header.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 2) i32 @merge_hunks(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2, i32 noundef range(i32 0, 2) %3, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !87     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73
  %i.d = getelementptr inbounds nuw [128 x i8], ptr %i.c, i64 %i.a ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.not = icmp eq i32 %3, 0                       ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !77
  %.not137 = icmp eq i32 %i.g, 2
  br i1 %.not137, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef nonnull align 8 dereferenceable(128) %i.d, i64 128, i1 false), !tbaa.struct !90
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.k = add i64 %i.a, 1                          ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.l = load i64, ptr %i.j, align 8, !tbaa !72   ; 2 uses
  %i.m = icmp ult i64 %i.k, %i.l
  br i1 %i.m, label %.lr.ph196, label %._crit_edge197

.lr.ph196:                                        ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph196, %bb.x
  %i.w = phi i64 [ %i.l, %.lr.ph196 ], [ %i.dd, %bb.x ]
  %i.x = phi i64 [ %i.k, %.lr.ph196 ], [ %i.dr, %bb.x ] ; 3 uses
  %.0122193 = phi ptr [ %i.d, %.lr.ph196 ], [ %i.y, %bb.x ] ; 11 uses
  %.0126192 = phi i64 [ %i.a, %.lr.ph196 ], [ %i.x, %bb.x ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0122193, i64 128 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0122193, i64 184
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.0122193, i64 176
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !77
  %.not138 = icmp eq i32 %i.ab, 2
  br i1 %.not138, label %bb.f, label %._crit_edge197

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ac = load i64, ptr %i.n, align 8, !tbaa !85  ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0122193, i64 200 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !85 ; 2 uses
  %i.af = load i64, ptr %i.o, align 8, !tbaa !92
  %i.ag = add i64 %i.af, %i.ae                    ; 4 uses
  %.not139 = icmp ult i64 %i.ac, %i.ag
  br i1 %.not139, label %bb.g, label %._crit_edge197

bb.g:                                             ; preds = %bb.f
  %i.ah = load i64, ptr %i.p, align 8, !tbaa !86
  %i.ai = add i64 %i.ah, %i.ac                    ; 3 uses
  %i.aj = icmp ult i64 %i.ai, %i.ag
  br i1 %i.aj, label %._crit_edge197, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = load i64, ptr %4, align 8, !tbaa !68    ; 4 uses
  %i.al = load i64, ptr %i.y, align 8, !tbaa !68  ; 8 uses
  %i.am = icmp ult i64 %i.ak, %i.al
  br i1 %i.am, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.an = load i64, ptr %i.q, align 8, !tbaa !74
  %i.ao = icmp ugt i64 %i.an, %i.al
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.0122193, i64 136
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !74
  store i64 %i.aq, ptr %i.q, align 8, !tbaa !74
  %i.ar = getelementptr inbounds nuw i8, ptr %.0122193, i64 152
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !75
  store i64 %i.as, ptr %i.h, align 8, !tbaa !75
  br label %bb.x

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.at = load ptr, ptr %i.s, align 8, !tbaa !79  ; 11 uses
  %i.au = sub nuw i64 %i.ai, %i.ag                ; 2 uses
  %.not205 = icmp eq i64 %i.ai, %i.ag
  br i1 %.not205, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.av = load i64, ptr %i.t, align 8, !tbaa !62  ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0122193, i64 136 ; 2 uses
  %i.ax = ptrtoint ptr %i.at to i64
  %invariant.op = sub i64 1, %i.ax
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %normalize_marker.exit.thread
  %.0117190 = phi i64 [ 0, %.lr.ph ], [ %i.by, %normalize_marker.exit.thread ] ; 2 uses
  %.0119189 = phi i64 [ %i.al, %.lr.ph ], [ %.0.i, %normalize_marker.exit.thread ] ; 5 uses
  %.not.i = icmp ult i64 %.0119189, %i.av
  br i1 %.not.i, label %find_next_line.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = trunc i64 %.0119189 to i32
  %i.az = trunc i64 %i.av to i32
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.107, i32 noundef 783, ptr noundef nonnull @.str.174, i32 noundef %i.ay, i32 noundef %i.az, ptr noundef %i.at) #19
  unreachable

find_next_line.exit:                              ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 %.0119189 ; 3 uses
  %i.bb = sub nuw i64 %i.av, %.0119189
  %i.bc = tail call ptr @memchr(ptr noundef %i.ba, i32 noundef 10, i64 noundef %i.bb) #18 ; 2 uses
  %.not17.i = icmp eq ptr %i.bc, null
  %i.bd = ptrtoint ptr %i.bc to i64
  %.reass.reass = add i64 %i.bd, %invariant.op
  %.0.i = select i1 %.not17.i, i64 %i.av, i64 %.reass.reass ; 3 uses
  %i.be = load i64, ptr %i.aw, align 8, !tbaa !74 ; 3 uses
  %i.bf = icmp ugt i64 %.0.i, %i.be
  br i1 %i.bf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %find_next_line.exit
  %i.bg = trunc i64 %i.au to i32
  %i.bh = sub i64 %i.be, %i.al
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.al
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.107, i32 noundef 953, ptr noundef nonnull @.str.190, i32 noundef %i.bg, i32 noundef %i.bi, ptr noundef %i.bj) #19
  unreachable

bb.o:                                             ; preds = %find_next_line.exit
  %i.bk = load i8, ptr %i.ba, align 1, !tbaa !17
  switch i8 %i.bk, label %normalize_marker.exit.thread148 [
    i8 10, label %normalize_marker.exit.thread
    i8 13, label %bb.p
    i8 32, label %normalize_marker.exit.thread
  ]

bb.p:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !17
  %i.bn = icmp eq i8 %i.bm, 10
  br i1 %i.bn, label %normalize_marker.exit.thread, label %normalize_marker.exit.thread148

normalize_marker.exit.thread148:                  ; preds = %bb.o, %bb.p
  %i.bo = load i32, ptr @git_gettext_enabled, align 4, !tbaa !23
  %.not4.i = icmp eq i32 %i.bo, 0
  br i1 %.not4.i, label %_.exit, label %bb.q

bb.q:                                             ; preds = %normalize_marker.exit.thread148
  %i.bp = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.191, i32 noundef 5) #17
  %.pre = load i64, ptr %i.aw, align 8, !tbaa !74
  %.pre241 = load i64, ptr %i.y, align 8, !tbaa !68
  br label %_.exit

_.exit:                                           ; preds = %normalize_marker.exit.thread148, %bb.q
  %i.bq = phi i64 [ %.pre241, %bb.q ], [ %i.al, %normalize_marker.exit.thread148 ] ; 2 uses
  %i.br = phi i64 [ %.pre, %bb.q ], [ %i.be, %normalize_marker.exit.thread148 ]
  %.0.i143 = phi ptr [ %i.bp, %bb.q ], [ @.str.191, %normalize_marker.exit.thread148 ]
  %i.bs = trunc i64 %.0117190 to i32
  %i.bt = add i32 %i.bs, 1
  %i.bu = sub i64 %i.br, %i.bq
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bq
  %i.bx = tail call i32 (ptr, ...) @error(ptr noundef %.0.i143, i32 noundef %i.bt, i32 noundef %i.bv, ptr noundef %i.bw) #17 ; 0 uses
  br label %.critedge

normalize_marker.exit.thread:                     ; preds = %bb.o, %bb.o, %bb.p
  %i.by = add nuw i64 %.0117190, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.by, %i.au
  br i1 %exitcond.not, label %._crit_edge, label %bb.l, !llvm.loop !180

._crit_edge:                                      ; preds = %normalize_marker.exit.thread, %bb.k
  %.0119.lcssa = phi i64 [ %i.al, %bb.k ], [ %.0.i, %normalize_marker.exit.thread ] ; 3 uses
  %.0118.lcssa = phi i64 [ %i.al, %bb.k ], [ %.0119189, %normalize_marker.exit.thread ] ; 3 uses
  %i.bz = sub i64 %.0119.lcssa, %.0118.lcssa      ; 4 uses
  %i.ca = load i64, ptr %i.q, align 8, !tbaa !74  ; 3 uses
  %i.cb = sub i64 %i.ca, %i.ak                    ; 3 uses
  %i.cc = icmp ugt i64 %i.bz, %i.cb
  br i1 %i.cc, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  %i.cd = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ca
  %i.ce = sub i64 0, %i.bz
  %i.cf = getelementptr inbounds i8, ptr %i.cd, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.at, i64 %.0118.lcssa
  %bcmp = tail call i32 @bcmp(ptr %i.cf, ptr %i.cg, i64 %i.bz)
  %.not140 = icmp eq i32 %bcmp, 0
  br i1 %.not140, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge
  %i.ch = load i32, ptr @git_gettext_enabled, align 4, !tbaa !23
  %.not4.i144 = icmp eq i32 %i.ch, 0
  br i1 %.not4.i144, label %_.exit146, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ci = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.192, i32 noundef 5) #17
  %.pre242 = load i64, ptr %i.q, align 8, !tbaa !74
  %.pre243 = load i64, ptr %4, align 8, !tbaa !68 ; 2 uses
  %.pre247.a = sub i64 %.pre242, %.pre243
  br label %_.exit146

_.exit146:                                        ; preds = %bb.s, %bb.t
  %.pre-phi = phi i64 [ %i.cb, %bb.s ], [ %.pre247.a, %bb.t ]
  %i.cj = phi i64 [ %i.ak, %bb.s ], [ %.pre243, %bb.t ]
  %.0.i145 = phi ptr [ @.str.192, %bb.s ], [ %i.ci, %bb.t ]
  %i.ck = trunc i64 %.pre-phi to i32
  %i.cl = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.cj
  %i.cm = trunc i64 %i.bz to i32
  %i.cn = getelementptr inbounds nuw i8, ptr %i.at, i64 %.0118.lcssa
  %i.co = tail call i32 (ptr, ...) @error(ptr noundef %.0.i145, i32 noundef %i.ck, ptr noundef %i.cl, i32 noundef %i.cm, ptr noundef %i.cn) #17 ; 0 uses
  br label %.critedge

bb.u:                                             ; preds = %bb.r
  %i.cp = load i64, ptr %i.t, align 8, !tbaa !89  ; 2 uses
  %.not141 = icmp eq i64 %i.ca, %i.cp
  br i1 %.not141, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cq = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ak
  tail call void @strbuf_add(ptr noundef nonnull %i.r, ptr noundef %i.cq, i64 noundef %i.cb) #17
  %i.cr = load ptr, ptr %i.s, align 8, !tbaa !79
  store i64 %i.cp, ptr %4, align 8, !tbaa !68
  %i.cs = load i64, ptr %i.t, align 8, !tbaa !89
  store i64 %i.cs, ptr %i.q, align 8, !tbaa !74
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0120 = phi ptr [ %i.cr, %bb.v ], [ %i.at, %bb.u ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.0120, i64 %.0119.lcssa
  %i.cu = getelementptr inbounds nuw i8, ptr %.0122193, i64 136
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !74
  %i.cw = sub i64 %i.cv, %.0119.lcssa
  tail call void @strbuf_add(ptr noundef nonnull %i.r, ptr noundef %i.ct, i64 noundef %i.cw) #17
  %i.cx = load i64, ptr %i.t, align 8, !tbaa !89
  store i64 %i.cx, ptr %i.q, align 8, !tbaa !74
  %i.cy = getelementptr inbounds nuw i8, ptr %.0122193, i64 160
  %i.cz = load i64, ptr %i.o, align 8, !tbaa !92
  %i.da = load <2 x i64>, ptr %i.u, align 8, !tbaa !87
  %i.db = load <2 x i64>, ptr %i.cy, align 8, !tbaa !87
  %i.dc = add <2 x i64> %i.db, %i.da
  store <2 x i64> %i.dc, ptr %i.u, align 8, !tbaa !87
  %.pre244 = load i64, ptr %i.ad, align 8, !tbaa !85
  %.pre245 = load i64, ptr %i.n, align 8, !tbaa !85
  %.pre246 = load i64, ptr %i.j, align 8, !tbaa !72
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.j
  %i.dd = phi i64 [ %i.w, %bb.j ], [ %.pre246, %bb.w ] ; 2 uses
  %i.de = phi i64 [ %i.ac, %bb.j ], [ %.pre245, %bb.w ]
  %i.df = phi i64 [ %i.ae, %bb.j ], [ %.pre244, %bb.w ]
  %.2125 = phi i64 [ 0, %bb.j ], [ %i.cz, %bb.w ]
  %i.dg = load i64, ptr %i.z, align 8, !tbaa !83
  %i.dh = getelementptr inbounds nuw i8, ptr %.0122193, i64 192
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !84
  %i.dj = add i64 %i.di, %i.dg
  %i.dk = load i64, ptr %i.e, align 8, !tbaa !83
  %i.dl = sub i64 %i.dj, %i.dk
  store i64 %i.dl, ptr %i.v, align 8, !tbaa !84
  %i.dm = add i64 %i.df, %.2125
  %i.dn = getelementptr inbounds nuw i8, ptr %.0122193, i64 208
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !86
  %i.dp = add i64 %i.dm, %i.do
  %i.dq = sub i64 %i.dp, %i.de
  store i64 %i.dq, ptr %i.p, align 8, !tbaa !86
  %i.dr = add nuw i64 %i.x, 1                     ; 2 uses
  %i.ds = icmp ult i64 %i.dr, %i.dd
  br i1 %i.ds, label %bb.d, label %._crit_edge197, !llvm.loop !181

._crit_edge197:                                   ; preds = %bb.x, %bb.g, %bb.f, %bb.e, %bb.c
  %.0126.lcssa = phi i64 [ %i.a, %bb.c ], [ %.0126192, %bb.e ], [ %.0126192, %bb.f ], [ %.0126192, %bb.g ], [ %i.x, %bb.x ] ; 2 uses
  %i.dt = load i64, ptr %2, align 8, !tbaa !87
  %i.du = icmp eq i64 %.0126.lcssa, %i.dt
  br i1 %i.du, label %.critedge, label %bb.y

bb.y:                                             ; preds = %._crit_edge197
  store i64 %.0126.lcssa, ptr %2, align 8, !tbaa !87
  br label %.critedge

.critedge:                                        ; preds = %_.exit, %_.exit146, %._crit_edge197, %bb.b, %bb.y
  %.3 = phi i32 [ 0, %bb.b ], [ 1, %bb.y ], [ 0, %._crit_edge197 ], [ -1, %_.exit146 ], [ -1, %_.exit ]
  ret i32 %.3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #1

declare i32 @read_index_from(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #1

declare void @strbuf_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn }
attributes #13 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"interactive_config", !9, i64 0, !9, i64 4, !8, i64 8, !8, i64 83, !8, i64 158, !8, i64 233, !8, i64 308, !8, i64 383, !8, i64 458, !8, i64 533, !8, i64 608, !8, i64 683, !9, i64 760, !13, i64 768, !13, i64 776, !9, i64 784, !9, i64 788, !9, i64 792}
!15 = !{!13, !13, i64 0}
!16 = !{!14, !9, i64 0}
!17 = !{!8, !8, i64 0}
!18 = !{!14, !9, i64 4}
!19 = !{!14, !13, i64 768}
!20 = !{!14, !13, i64 776}
!21 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!9, !9, i64 0}
!24 = !{!"p1 _ZTS10repository", !12, i64 0}
!25 = !{!"p1 _ZTS11index_state", !12, i64 0}
!26 = !{!"long", !8, i64 0}
!27 = !{!"strbuf", !26, i64 0, !26, i64 8, !13, i64 16}
!28 = !{!"p1 _ZTS9file_diff", !12, i64 0}
!29 = !{!"p1 _ZTS10patch_mode", !12, i64 0}
!30 = !{!"add_p_state", !24, i64 0, !25, i64 8, !13, i64 16, !14, i64 24, !27, i64 824, !27, i64 848, !27, i64 872, !27, i64 896, !28, i64 920, !26, i64 928, !29, i64 936, !13, i64 944}
!31 = !{!30, !24, i64 0}
!32 = !{!"p1 _ZTS15object_database", !12, i64 0}
!33 = !{!"p1 _ZTS18parsed_object_pool", !12, i64 0}
!34 = !{!"p1 _ZTS9ref_store", !12, i64 0}
!35 = !{!"_Bool", !8, i64 0}
!36 = !{!"any p2 pointer", !12, i64 0}
!37 = !{!"p2 _ZTS13hashmap_entry", !36, i64 0}
!38 = !{!"hashmap", !37, i64 0, !12, i64 8, !12, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40}
!39 = !{!"p1 _ZTS8mem_pool", !12, i64 0}
!40 = !{!"strmap", !38, i64 0, !39, i64 48, !9, i64 56}
!41 = !{!"repo_path_cache", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48}
!42 = !{!"p1 _ZTS18fsmonitor_settings", !12, i64 0}
!43 = !{!"repo_settings", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !42, i64 56, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !26, i64 96, !26, i64 104, !26, i64 112, !26, i64 120, !9, i64 128, !13, i64 136}
!44 = !{!"p1 _ZTS10config_set", !12, i64 0}
!45 = !{!"p1 _ZTS15submodule_cache", !12, i64 0}
!46 = !{!"p1 _ZTS12remote_state", !12, i64 0}
!47 = !{!"p1 _ZTS13git_hash_algo", !12, i64 0}
!48 = !{!"repo_config_values", !13, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44}
!49 = !{!"p1 _ZTS6strmap", !12, i64 0}
!50 = !{!"p1 _ZTS16string_list_item", !12, i64 0}
!51 = !{!"string_list", !50, i64 0, !26, i64 8, !26, i64 16, !9, i64 24, !12, i64 32}
!52 = !{!"p1 _ZTS22promisor_remote_config", !12, i64 0}
!53 = !{!"repository", !13, i64 0, !13, i64 8, !32, i64 16, !33, i64 24, !34, i64 32, !35, i64 40, !40, i64 48, !40, i64 112, !41, i64 176, !13, i64 232, !13, i64 240, !13, i64 248, !35, i64 256, !35, i64 257, !13, i64 264, !43, i64 272, !44, i64 416, !45, i64 424, !25, i64 432, !46, i64 440, !47, i64 448, !47, i64 456, !48, i64 464, !9, i64 512, !13, i64 520, !9, i64 528, !9, i64 532, !49, i64 536, !9, i64 544, !40, i64 552, !51, i64 616, !13, i64 656, !52, i64 664, !9, i64 672, !9, i64 676, !9, i64 680, !9, i64 684, !9, i64 688, !35, i64 689, !35, i64 690}
!54 = !{!53, !25, i64 432}
!55 = !{!30, !25, i64 8}
!56 = !{!30, !13, i64 16}
!57 = !{!27, !13, i64 16}
!58 = !{!30, !29, i64 936}
!59 = !{!30, !13, i64 944}
!60 = !{!53, !47, i64 448}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!27, !26, i64 8}
!63 = !{!27, !26, i64 0}
!64 = !{!"hunk_header", !26, i64 0, !26, i64 8, !26, i64 16, !26, i64 24, !26, i64 32, !26, i64 40, !26, i64 48, !26, i64 56, !9, i64 64}
!65 = !{!"hunk", !26, i64 0, !26, i64 8, !26, i64 16, !26, i64 24, !26, i64 32, !26, i64 40, !9, i64 48, !64, i64 56}
!66 = !{!30, !26, i64 928}
!67 = !{!30, !28, i64 920}
!68 = !{!65, !26, i64 0}
!69 = !{!65, !26, i64 16}
!70 = !{!"p1 _ZTS4hunk", !12, i64 0}
!71 = !{!"file_diff", !65, i64 0, !70, i64 128, !26, i64 136, !26, i64 144, !9, i64 152, !9, i64 152, !9, i64 152, !9, i64 152}
!72 = !{!71, !26, i64 136}
!73 = !{!71, !70, i64 128}
!74 = !{!65, !26, i64 8}
!75 = !{!65, !26, i64 24}
!76 = !{!30, !26, i64 904}
!77 = !{!65, !9, i64 48}
!78 = !{!30, !13, i64 912}
!79 = !{!30, !13, i64 888}
!80 = !{!30, !13, i64 864}
!81 = !{!30, !9, i64 784}
!82 = !{!30, !13, i64 840}
!83 = !{!64, !26, i64 0}
!84 = !{!64, !26, i64 8}
!85 = !{!64, !26, i64 16}
!86 = !{!64, !26, i64 24}
!87 = !{!26, !26, i64 0}
!88 = !{!65, !26, i64 56}
!89 = !{!30, !26, i64 880}
!90 = !{i64 0, i64 8, !87, i64 8, i64 8, !87, i64 16, i64 8, !87, i64 24, i64 8, !87, i64 32, i64 8, !87, i64 40, i64 8, !87, i64 48, i64 4, !23, i64 56, i64 8, !87, i64 64, i64 8, !87, i64 72, i64 8, !87, i64 80, i64 8, !87, i64 88, i64 8, !87, i64 96, i64 8, !87, i64 104, i64 8, !87, i64 112, i64 8, !87, i64 120, i64 1, !17}
!91 = !{!30, !26, i64 856}
!92 = !{!65, !26, i64 40}
!93 = !{!64, !26, i64 48}
!94 = !{!64, !26, i64 56}
!95 = !{!14, !9, i64 784}
!96 = !{!14, !9, i64 788}
!97 = !{!"interactive_options", !9, i64 0, !9, i64 4, !9, i64 8}
!98 = !{!97, !9, i64 8}
!99 = !{!14, !9, i64 792}
!100 = !{!14, !9, i64 760}
!101 = !{!97, !9, i64 0}
!102 = !{!97, !9, i64 4}
!103 = !{!53, !13, i64 240}
!104 = distinct !{!104, !61}
!105 = distinct !{!105, !61}
!106 = distinct !{!106, !61}
!107 = distinct !{!107, !61}
!108 = distinct !{!108, !61}
!109 = distinct !{!109, !61}
!110 = distinct !{!110, !61}
!111 = distinct !{!111, !61}
!112 = distinct !{!112, !61}
!113 = distinct !{!113, !61}
!114 = distinct !{!114, !61}
!115 = distinct !{!115, !61}
!116 = distinct !{!116, !61}
!117 = distinct !{!117, !61}
!118 = distinct !{!118, !61}
!119 = distinct !{!119, !61}
!120 = distinct !{!120, !61, !152, !153}
!121 = distinct !{!121, !61, !153, !152}
!122 = distinct !{!122, !61}
!123 = distinct !{null}
!124 = distinct !{!124, !61}
!125 = !{!30, !9, i64 808}
!126 = !{!30, !9, i64 812}
!127 = !{!30, !13, i64 800}
end_hunk_0
