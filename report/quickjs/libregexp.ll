Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/libregexp?download=true
inline.NumInlined: 313
inline.NumDeleted: 50
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@re_parse_disjunction:bb.a
bb.al:                                            ; preds = %bb.ak
  store ptr %i.fi, ptr %0, align 8, !tbaa !35
  store i64 %.0.i42.us, ptr %i.ay, align 8, !tbaa !33
  br label %dbuf_claim.exit44.us

dbuf_claim.exit44.us:                             ; preds = %.dbuf_claim.exit44.us_crit_edge, %bb.al
  %i.fj = phi ptr [ %.pre88, %.dbuf_claim.exit44.us_crit_edge ], [ %i.fi, %bb.al ]
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.em ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.eu
  %i.fm = sub i64 %i.et, %i.em
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.fl, ptr align 1 %i.fk, i64 %i.fm, i1 false)
  %i.fn = load ptr, ptr %0, align 8, !tbaa !42    ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.em
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.et
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fo, ptr align 1 %i.fp, i64 %i.eu, i1 false)
  %i.fq = load ptr, ptr %i.f, align 8, !tbaa !18  ; 2 uses
  %i.fr = load ptr, ptr %i.g, align 8, !tbaa !19
  %.not.i34.us = icmp ult ptr %i.fq, %i.fr
  br i1 %.not.i34.us, label %.lr.ph76.split.us, label %._crit_edge

.lr.ph76.split:                                   ; preds = %.lr.ph76, %bb.an
  %i.fs = phi ptr [ %i.fv, %bb.an ], [ %i.en, %.lr.ph76 ]
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !12
  switch i8 %i.ft, label %bb.am [
    i8 124, label %._crit_edge
    i8 41, label %._crit_edge
  ]

bb.am:                                            ; preds = %.lr.ph76.split
  %i.fu = tail call fastcc i32 @re_parse_term(ptr noundef nonnull %0, i1 noundef zeroext false), !inline_history !49
  %.not33.i36 = icmp eq i32 %i.fu, 0
  br i1 %.not33.i36, label %bb.an, label %re_parse_alternative.exit38

bb.an:                                            ; preds = %bb.am
  %i.fv = load ptr, ptr %i.f, align 8, !tbaa !18  ; 2 uses
  %i.fw = load ptr, ptr %i.g, align 8, !tbaa !19
  %.not.i34 = icmp ult ptr %i.fv, %i.fw
  br i1 %.not.i34, label %.lr.ph76.split, label %._crit_edge

.split.us79:                                      ; preds = %bb.ak
  store i8 1, ptr %i.az, align 8, !tbaa !39
  br label %re_parse_alternative.exit38.sink.split

._crit_edge:                                      ; preds = %bb.an, %.lr.ph76.split, %.lr.ph76.split, %dbuf_claim.exit44.us, %.lr.ph76.split.us, %.lr.ph76.split.us, %bb.af
  %.val = load i8, ptr %i.az, align 8, !tbaa !39, !range !40, !noundef !41
  %i.fx = trunc nuw i8 %.val to i1
  br i1 %i.fx, label %re_parse_alternative.exit38.sink.split, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge
  %i.fy = load i64, ptr %i.d, align 8, !tbaa !36
  %i.fz = trunc i64 %i.fy to i32
  %reass.sub = sub i32 %i.fz, %i.dc
  %i.ga = add i32 %reass.sub, -4
  %i.gb = load ptr, ptr %0, align 8, !tbaa !42
  %sext56 = shl i64 %i.ct, 32
  %i.gc = ashr exact i64 %sext56, 32
  %i.gd = getelementptr inbounds i8, ptr %i.gb, i64 %i.gc
  store i32 %i.ga, ptr %i.gd, align 1
  %i.ge = load ptr, ptr %i.f, align 8, !tbaa !18  ; 2 uses
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !12
  %i.gg = icmp eq i8 %i.gf, 124
  br i1 %i.gg, label %bb.k, label %re_parse_alternative.exit38, !llvm.loop !55

re_parse_alternative.exit38.sink.split:           ; preds = %bb.d, %bb.f, %._crit_edge, %re_has_named_captures.exit.thread, %bb.m, %bb.k, %bb.ah, %bb.aj, %.split.us79, %bb.o, %.split.us, %bb.a
  %.str.40.sink = phi ptr [ @.str.2, %bb.a ], [ @.str.3, %re_has_named_captures.exit.thread ], [ @.str.40, %.split.us79 ], [ @.str.40, %bb.o ], [ @.str.40, %.split.us ], [ @.str.40, %bb.ah ], [ @.str.40, %bb.aj ], [ @.str.40, %bb.k ], [ @.str.40, %bb.m ], [ @.str.40, %._crit_edge ], [ @.str.40, %bb.f ], [ @.str.40, %bb.d ]
  tail call void (ptr, ptr, ...) @re_parse_error(ptr noundef %0, ptr noundef nonnull %.str.40.sink)
  br label %re_parse_alternative.exit38

re_parse_alternative.exit38:                      ; preds = %bb.i, %bb.c, %bb.ao, %bb.am, %bb.ag, %re_parse_alternative.exit38.sink.split, %re_parse_alternative.exit
  %.0 = phi i32 [ -1, %bb.ag ], [ 0, %re_parse_alternative.exit ], [ -1, %bb.c ], [ -1, %bb.am ], [ 0, %bb.ao ], [ -1, %re_parse_alternative.exit38.sink.split ], [ -1, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind uwtable
define internal void @re_parse_error(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1, ...) unnamed_addr #5 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 128, ptr noundef %1, ptr noundef nonnull %2) #20 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @dbuf_put(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !32
  %i.c = add i64 %i.b, %2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !33
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !34

bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc i32 @dbuf_claim(ptr noundef %0, i64 noundef %2)
  %.not = icmp ne i32 %i.g, 0
  %.not13 = icmp eq i64 %2, 0
  %or.cond = or i1 %.not, %.not13
  br i1 %or.cond, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %.not13.old = icmp eq i64 %2, 0
  br i1 %.not13.old, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.h = load ptr, ptr %0, align 8, !tbaa !35
  %i.i = load i64, ptr %i.a, align 8, !tbaa !32
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %1, i64 %2, i1 false)
  %i.k = load i64, ptr %i.a, align 8, !tbaa !32
  %i.l = add i64 %i.k, %2
  store i64 %i.l, ptr %i.a, align 8, !tbaa !32
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i32 0, 65536) i32 @lre_get_flags(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %.val = load i16, ptr %0, align 1
  %i.a = zext i16 %.val to i32
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -3, 2) i32 @lre_exec(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #2 {
bb.a:
  %7 = alloca %struct.REExecContext, align 8      ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %.val.i = load i16, ptr %1, align 1
  %i.a = and i16 %.val.i, 272
  %i.b = icmp ne i16 %i.a, 0                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 8 uses
  %i.d = zext i1 %i.b to i8
  store i8 %i.d, ptr %i.c, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.f = load i8, ptr %i.e, align 1, !tbaa !12    ; 2 uses
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 9 uses
  store i32 %i.g, ptr %i.h, align 4, !tbaa !58
  store ptr %2, ptr %7, align 8, !tbaa !59
  %i.i = shl i32 %4, %5
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds i8, ptr %2, i64 %i.j ; 21 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !60
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.n = icmp eq i32 %5, 1
  %or.cond = select i1 %i.n, i1 %i.b, i1 false
  %spec.store.select = select i1 %or.cond, i32 2, i32 %5 ; 3 uses
  store i32 %spec.store.select, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 28 ; 13 uses
  store i32 10000, ptr %i.o, align 4, !tbaa !61
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 6 uses
  store ptr %6, ptr %i.p, align 8, !tbaa !62
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 31 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !63
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 12 uses
  store i64 32, ptr %i.s, align 8, !tbaa !64
  %.not88 = icmp eq i8 %i.f, 0
  br i1 %.not88, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.t = shl nuw nsw i32 %i.g, 1
  %i.u = add nsw i32 %i.t, -2
  %i.v = zext nneg i32 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %0, i8 0, i64 %i.x, i1 false), !tbaa !9
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  %i.y = shl i32 %3, %5
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds i8, ptr %2, i64 %i.z ; 5 uses
  %i.ab = icmp sgt i32 %3, 0
  %i.ac = icmp slt i32 %3, %4
  %or.cond50 = and i1 %i.ab, %i.ac
  %i.ad = icmp eq i32 %spec.store.select, 2       ; 17 uses
  %or.cond52 = select i1 %or.cond50, i1 %i.ad, i1 false
  br i1 %or.cond52, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.ae = load i16, ptr %i.aa, align 2, !tbaa !65
  %i.af = and i16 %i.ae, -1024
  %i.ag = icmp eq i16 %i.af, -9216
  br i1 %i.ag, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds i8, ptr %i.aa, i64 -2 ; 2 uses
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !65
  %i.aj = and i16 %i.ai, -1024
  %i.ak = icmp eq i16 %i.aj, -10240
  %spec.select = select i1 %i.ak, ptr %i.ah, ptr %i.aa
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge
  %.1 = phi ptr [ %i.aa, %._crit_edge ], [ %i.aa, %bb.b ], [ %spec.select, %bb.c ]
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 312
  %i.an = icmp eq i32 %spec.store.select, 0       ; 14 uses
  br label %is_line_terminator.exit1283.i

is_line_terminator.exit1283.i:                    ; preds = %is_line_terminator.exit1283.i.backedge, %bb.d
  %.01070.i = phi ptr [ %i.al, %bb.d ], [ %.01070.i.be, %is_line_terminator.exit1283.i.backedge ] ; 20 uses
  %.01051.i = phi ptr [ %.1, %bb.d ], [ %.01051.i.be, %is_line_terminator.exit1283.i.backedge ] ; 100 uses
  %.0984.i = phi ptr [ %i.q, %bb.d ], [ %.0984.i.be, %is_line_terminator.exit1283.i.backedge ] ; 90 uses
  %.0946.i = phi ptr [ %i.q, %bb.d ], [ %.0946.i.be, %is_line_terminator.exit1283.i.backedge ] ; 88 uses
  %.0921.i = phi ptr [ %i.am, %bb.d ], [ %.0921.i.be, %is_line_terminator.exit1283.i.backedge ] ; 85 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.01070.i, i64 1 ; 36 uses
  %i.ap = load i8, ptr %.01070.i, align 1, !tbaa !12 ; 15 uses
  %i.aq = zext i8 %i.ap to i32                    ; 2 uses
  switch i8 %i.ap, label %bb.gr [
    i8 16, label %lre_exec_backtrack.exit
    i8 17, label %.preheader1551.i
    i8 18, label %.preheader1552.i
    i8 3, label %bb.j
    i8 4, label %bb.j
    i8 1, label %bb.k
    i8 2, label %bb.k
    i8 14, label %bb.u
    i8 15, label %bb.u
    i8 40, label %bb.w
    i8 41, label %bb.w
    i8 13, label %bb.z
    i8 9, label %bb.ab
    i8 10, label %bb.ab
    i8 11, label %bb.aj
    i8 12, label %bb.aj
    i8 5, label %bb.ar
    i8 6, label %bb.ay
    i8 7, label %bb.bd
    i8 8, label %bb.bk
    i8 19, label %bb.br
    i8 20, label %bb.br
    i8 21, label %bb.bv
    i8 27, label %bb.cd
    i8 22, label %bb.cj
    i8 23, label %bb.cr
    i8 24, label %bb.cr
    i8 25, label %bb.cr
    i8 26, label %bb.cr
    i8 42, label %bb.df
    i8 43, label %bb.dl
    i8 28, label %bb.dm
    i8 29, label %bb.dm
    i8 30, label %bb.dm
    i8 31, label %bb.dm
    i8 32, label %bb.ed
    i8 33, label %bb.ed
    i8 34, label %bb.ed
    i8 35, label %bb.ed
    i8 36, label %bb.fh
    i8 37, label %bb.fh
    i8 38, label %bb.fx
    i8 39, label %bb.fx
    i8 44, label %bb.gm
  ]

.preheader1552.i:                                 ; preds = %is_line_terminator.exit1283.i
  %i.ar = load ptr, ptr %i.r, align 8, !tbaa !63
  br label %bb.i

is_line_terminator.exit.i:                        ; preds = %bb.gk, %bb.fw, %bb.ef, %bb.fg, %bb.ev, %bb.et, %bb.ei, %._crit_edge.i, %bb.gm, %bb.gg, %bb.gf, %bb.fx, %bb.fs, %bb.fp, %bb.fh, %bb.ec, %bb.dl, %bb.da, %lre_is_space.exit1292.i, %bb.bk, %lre_is_space.exit.i, %bb.bd, %bb.ay, %bb.ax, %bb.ax, %bb.ax, %bb.ax, %bb.ar, %bb.aq, %bb.ak, %bb.ai, %bb.ac, %bb.t, %bb.l
  %.1985.i = phi ptr [ %.0984.i, %bb.fg ], [ %.0984.i, %bb.l ], [ %.0984.i, %bb.t ], [ %.0984.i, %bb.ac ], [ %.0984.i, %bb.gm ], [ %.0984.i, %bb.ak ], [ %.0984.i, %bb.ai ], [ %.0984.i, %bb.ar ], [ %.361020.i, %bb.da ], [ %.0984.i, %bb.ay ], [ %.0984.i, %bb.bd ], [ %.0984.i, %lre_is_space.exit.i ], [ %.0984.i, %bb.bk ], [ %.0984.i, %lre_is_space.exit1292.i ], [ %.0984.i, %bb.aq ], [ %.0984.i, %bb.dl ], [ %.0984.i, %bb.ec ], [ %.0984.i, %bb.ax ], [ %.0984.i, %bb.gf ], [ %.0984.i, %bb.fw ], [ %.0984.i, %bb.ax ], [ %.0984.i, %bb.ax ], [ %.0984.i, %bb.ax ], [ %.0984.i, %bb.fx ], [ %i.dg, %._crit_edge.i ], [ %.0984.i, %bb.et ], [ %.0984.i, %bb.ef ], [ %.0984.i, %bb.fs ], [ %.0984.i, %bb.fh ], [ %.0984.i, %bb.fp ], [ %.0984.i, %bb.gg ], [ %.0984.i, %bb.ei ], [ %.0984.i, %bb.ev ], [ %.0984.i, %bb.gk ]
  %.1947.i = phi ptr [ %.0946.i, %bb.fg ], [ %.0946.i, %bb.l ], [ %.0946.i, %bb.t ], [ %.0946.i, %bb.ac ], [ %.0946.i, %bb.gm ], [ %.0946.i, %bb.ak ], [ %.0946.i, %bb.ai ], [ %.0946.i, %bb.ar ], [ %.31977.i, %bb.da ], [ %.0946.i, %bb.ay ], [ %.0946.i, %bb.bd ], [ %.0946.i, %lre_is_space.exit.i ], [ %.0946.i, %bb.bk ], [ %.0946.i, %lre_is_space.exit1292.i ], [ %.0946.i, %bb.aq ], [ %.0946.i, %bb.dl ], [ %.0946.i, %bb.ec ], [ %.0946.i, %bb.ax ], [ %.0946.i, %bb.gf ], [ %.0946.i, %bb.fw ], [ %.0946.i, %bb.ax ], [ %.0946.i, %bb.ax ], [ %.0946.i, %bb.ax ], [ %.0946.i, %bb.fx ], [ %i.dk, %._crit_edge.i ], [ %.0946.i, %bb.et ], [ %.0946.i, %bb.ef ], [ %.0946.i, %bb.fs ], [ %.0946.i, %bb.fh ], [ %.0946.i, %bb.fp ], [ %.0946.i, %bb.gg ], [ %.0946.i, %bb.ei ], [ %.0946.i, %bb.ev ], [ %.0946.i, %bb.gk ]
  %.1922.i = phi ptr [ %.0921.i, %bb.fg ], [ %.0921.i, %bb.l ], [ %.0921.i, %bb.t ], [ %.0921.i, %bb.ac ], [ %.0921.i, %bb.gm ], [ %.0921.i, %bb.ak ], [ %.0921.i, %bb.ai ], [ %.0921.i, %bb.ar ], [ %.27.i, %bb.da ], [ %.0921.i, %bb.ay ], [ %.0921.i, %bb.bd ], [ %.0921.i, %lre_is_space.exit.i ], [ %.0921.i, %bb.bk ], [ %.0921.i, %lre_is_space.exit1292.i ], [ %.0921.i, %bb.aq ], [ %.0921.i, %bb.dl ], [ %.0921.i, %bb.ec ], [ %.0921.i, %bb.ax ], [ %.0921.i, %bb.gf ], [ %.0921.i, %bb.fw ], [ %.0921.i, %bb.ax ], [ %.0921.i, %bb.ax ], [ %.0921.i, %bb.ax ], [ %.0921.i, %bb.fx ], [ %.0921.i, %._crit_edge.i ], [ %.0921.i, %bb.et ], [ %.0921.i, %bb.ef ], [ %.0921.i, %bb.fs ], [ %.0921.i, %bb.fh ], [ %.0921.i, %bb.fp ], [ %.0921.i, %bb.gg ], [ %.0921.i, %bb.ei ], [ %.0921.i, %bb.ev ], [ %.0921.i, %bb.gk ] ; 2 uses
  %i.as = load ptr, ptr %i.r, align 8, !tbaa !63  ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge1605.i, %is_line_terminator.exit.i
  %.2986.i = phi ptr [ %.1985.i, %is_line_terminator.exit.i ], [ %i.bb, %._crit_edge1605.i ] ; 3 uses
  %.2948.i = phi ptr [ %.1947.i, %is_line_terminator.exit.i ], [ %i.bi, %._crit_edge1605.i ] ; 3 uses
  %i.at = icmp eq ptr %.2948.i, %i.as
  br i1 %i.at, label %lre_exec_backtrack.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %i.au = icmp ugt ptr %.2986.i, %.2948.i
  br i1 %i.au, label %.lr.ph1604.i, label %._crit_edge1605.i

.lr.ph1604.i:                                     ; preds = %.preheader.i, %.lr.ph1604.i
  %.39871603.i = phi ptr [ %i.ax, %.lr.ph1604.i ], [ %.2986.i, %.preheader.i ] ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.39871603.i, i64 -8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !12
  %i.ax = getelementptr inbounds i8, ptr %.39871603.i, i64 -16 ; 4 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !12
  %i.az = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ay
  store ptr %i.aw, ptr %i.az, align 8, !tbaa !9
  %i.ba = icmp ugt ptr %i.ax, %.2948.i
  br i1 %i.ba, label %.lr.ph1604.i, label %._crit_edge1605.i, !llvm.loop !67

._crit_edge1605.i:                                ; preds = %.lr.ph1604.i, %.preheader.i
  %.3987.lcssa.i = phi ptr [ %.2986.i, %.preheader.i ], [ %i.ax, %.lr.ph1604.i ] ; 3 uses
  %i.bb = getelementptr inbounds i8, ptr %.3987.lcssa.i, i64 -24 ; 4 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !12 ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %.3987.lcssa.i, i64 -16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !12 ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %.3987.lcssa.i, i64 -8
  %i.bg = load i64, ptr %i.bf, align 8            ; 2 uses
  %i.bh = and i64 %i.bg, 2305843009213693951
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.bh ; 3 uses
  %.mask1227.i = and i64 %i.bg, -2305843009213693952
  %.not1226.i = icmp eq i64 %.mask1227.i, 2305843009213693952
  br i1 %.not1226.i, label %bb.e, label %bb.f

bb.f:                                             ; preds = %._crit_edge1605.i
  %i.bj = load i32, ptr %i.o, align 4, !tbaa !61  ; 2 uses
  %i.bk = add nsw i32 %i.bj, -1
  store i32 %i.bk, ptr %i.o, align 4, !tbaa !61
  %i.bl = icmp slt i32 %i.bj, 2
  br i1 %i.bl, label %bb.g, label %is_line_terminator.exit1283.i.backedge, !prof !34

bb.g:                                             ; preds = %bb.f
  store i32 10000, ptr %i.o, align 4, !tbaa !61
  %i.bm = load ptr, ptr %i.p, align 8, !tbaa !62
  %i.bn = call i32 @lre_check_timeout(ptr noundef %i.bm) #20
  %.not.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i, label %is_line_terminator.exit1283.i.backedge, label %lre_exec_backtrack.exit

.preheader1551.i:                                 ; preds = %is_line_terminator.exit1283.i, %.preheader1551.i
  %.5989.i = phi ptr [ %i.bo, %.preheader1551.i ], [ %.0984.i, %is_line_terminator.exit1283.i ]
  %.4950.i = phi ptr [ %i.bw, %.preheader1551.i ], [ %.0946.i, %is_line_terminator.exit1283.i ] ; 3 uses
  %i.bo = getelementptr inbounds i8, ptr %.4950.i, i64 -24 ; 7 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !12 ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %.4950.i, i64 -16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !12 ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %.4950.i, i64 -8 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8            ; 2 uses
  %i.bu = load ptr, ptr %i.r, align 8, !tbaa !63
  %i.bv = and i64 %i.bt, 2305843009213693951
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bv ; 3 uses
  store ptr %.5989.i, ptr %i.bs, align 8, !tbaa !12
  %.mask1229.i = and i64 %i.bt, -2305843009213693952
  %i.bx = icmp eq i64 %.mask1229.i, 2305843009213693952
  br i1 %i.bx, label %bb.h, label %.preheader1551.i

bb.h:                                             ; preds = %.preheader1551.i
  %i.by = load ptr, ptr %i.r, align 8, !tbaa !63
  %.not1230.i = icmp ne ptr %i.bo, %i.by
  %i.bz = icmp ult ptr %i.bo, %.0984.i
  %or.cond1617.i = select i1 %.not1230.i, i1 %i.bz, i1 false
  br i1 %or.cond1617.i, label %.lr.ph1615.i, label %is_line_terminator.exit1283.i.backedge

.loopexit.i:                                      ; preds = %.lr.ph1610.i, %middle.block, %.lr.ph1615.i
  %.7991.lcssa.i = phi ptr [ %.69901613.i, %.lr.ph1615.i ], [ %i.cq, %middle.block ], [ %i.cv, %.lr.ph1610.i ] ; 2 uses
  %.1914.lcssa.i = phi ptr [ %i.cd, %.lr.ph1615.i ], [ %i.cp, %middle.block ], [ %i.cw, %.lr.ph1610.i ] ; 2 uses
  %i.ca = icmp ult ptr %.1914.lcssa.i, %.0984.i
  br i1 %i.ca, label %.lr.ph1615.i, label %is_line_terminator.exit1283.i.backedge, !llvm.loop !68

.lr.ph1615.i:                                     ; preds = %bb.h, %.loopexit.i
  %.09131614.i = phi ptr [ %.1914.lcssa.i, %.loopexit.i ], [ %i.bo, %bb.h ] ; 3 uses
  %.69901613.i = phi ptr [ %.7991.lcssa.i, %.loopexit.i ], [ %i.bo, %bb.h ] ; 6 uses
  %.69901613.i221 = ptrtoaddr ptr %.69901613.i to i64
  %.09131614.i222 = ptrtoaddr ptr %.09131614.i to i64 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.09131614.i, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !12 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.09131614.i, i64 24 ; 6 uses
  %i.ce = icmp ult ptr %i.cd, %i.cc
  br i1 %i.ce, label %.lr.ph1610.i.preheader, label %.loopexit.i

.lr.ph1610.i.preheader:                           ; preds = %.lr.ph1615.i
  %i.cf = ptrtoaddr ptr %i.cc to i64
  %i.cg = add i64 %.09131614.i222, 32
  %i.ch = call i64 @llvm.umax.i64(i64 %i.cf, i64 %i.cg)
  %i.ci = add i64 %i.ch, -25
  %i.cj = sub i64 %i.ci, %.09131614.i222          ; 2 uses
  %i.ck = lshr i64 %i.cj, 3
  %i.cl = add nuw nsw i64 %i.ck, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cj, 56
  br i1 %min.iters.check, label %.lr.ph1610.i.preheader226, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph1610.i.preheader
  %i.cm = sub i64 %.69901613.i221, %.09131614.i222
  %i.cn = add i64 %i.cm, -25
  %diff.check = icmp ult i64 %i.cn, 31
  br i1 %diff.check, label %.lr.ph1610.i.preheader226, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cl, 4611686018427387900     ; 3 uses
  %i.co = shl i64 %n.vec, 3                       ; 2 uses
  %i.cp = getelementptr i8, ptr %i.cd, i64 %i.co  ; 2 uses
  %i.cq = getelementptr i8, ptr %.69901613.i, i64 %i.co ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cr = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cd, i64 %i.cr ; 2 uses
  %next.gep223 = getelementptr i8, ptr %.69901613.i, i64 %i.cr ; 2 uses
  %i.cs = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !12
  %wide.load224 = load <2 x i64>, ptr %i.cs, align 8, !tbaa !12
  %i.ct = getelementptr i8, ptr %next.gep223, i64 16
  store <2 x i64> %wide.load, ptr %next.gep223, align 8, !tbaa !12
  store <2 x i64> %wide.load224, ptr %i.ct, align 8, !tbaa !12
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cl, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph1610.i.preheader226

.lr.ph1610.i.preheader226:                        ; preds = %vector.memcheck, %.lr.ph1610.i.preheader, %middle.block
  %.19141608.i.ph = phi ptr [ %i.cd, %vector.memcheck ], [ %i.cd, %.lr.ph1610.i.preheader ], [ %i.cp, %middle.block ]
  %.79911607.i.ph = phi ptr [ %.69901613.i, %vector.memcheck ], [ %.69901613.i, %.lr.ph1610.i.preheader ], [ %i.cq, %middle.block ]
  br label %.lr.ph1610.i

.lr.ph1610.i:                                     ; preds = %.lr.ph1610.i.preheader226, %.lr.ph1610.i
  %.19141608.i = phi ptr [ %i.cw, %.lr.ph1610.i ], [ %.19141608.i.ph, %.lr.ph1610.i.preheader226 ] ; 2 uses
end_hunk_0
begin_hunk_1_@lre_exec:bb.a
  br i1 %i.aek, label %is_line_terminator.exit.i, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.ael = add nsw i32 %i.adm, -1                 ; 2 uses
  %i.aem = shl nsw i32 %i.ael, 2
  %i.aen = zext i32 %i.aem to i64
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.adn, i64 %i.aen
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 2
  %.val1268.i = load i16, ptr %i.aep, align 1     ; 2 uses
  %i.aeq = zext i16 %.val1268.i to i32
  %i.aer = icmp ugt i32 %.191045.i, 65534
  br i1 %i.aer, label %bb.fr, label %bb.fs, !prof !34

bb.fr:                                            ; preds = %bb.fq
  %i.aes = icmp eq i16 %.val1268.i, -1
  br i1 %i.aes, label %.loopexit1567.i, label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %i.aet = icmp ugt i32 %.191045.i, %i.aeq
  br i1 %i.aet, label %is_line_terminator.exit.i, label %.preheader1565.preheader.i

.preheader1565.preheader.i:                       ; preds = %bb.fs
  %i.aeu = trunc nuw i32 %.191045.i to i16
  br label %.preheader1565.i

.preheader1565.i:                                 ; preds = %bb.fw, %.preheader1565.preheader.i
  %.08791590.i = phi i32 [ %.1880.i, %bb.fw ], [ %i.ael, %.preheader1565.preheader.i ] ; 2 uses
  %.08811589.i = phi i32 [ %.1882.i, %bb.fw ], [ 0, %.preheader1565.preheader.i ] ; 2 uses
  %i.aev = add i32 %.08811589.i, %.08791590.i
  %i.aew = lshr i32 %i.aev, 1                     ; 3 uses
  %i.aex = shl i32 %i.aew, 2
  %i.aey = zext i32 %i.aex to i64
  %i.aez = getelementptr inbounds nuw i8, ptr %i.adn, i64 %i.aey ; 2 uses
  %.val1267.i = load i16, ptr %i.aez, align 1
  %i.afa = zext i16 %.val1267.i to i32
  %i.afb = icmp ult i32 %.191045.i, %i.afa
  br i1 %i.afb, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %.preheader1565.i
  %i.afc = add nsw i32 %i.aew, -1
  br label %bb.fw

bb.fu:                                            ; preds = %.preheader1565.i
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aez, i64 2
  %.val1266.i = load i16, ptr %i.afd, align 1
  %i.afe = icmp ult i16 %.val1266.i, %i.aeu
  br i1 %i.afe, label %bb.fv, label %.loopexit1567.i

bb.fv:                                            ; preds = %bb.fu
  %i.aff = add nuw i32 %i.aew, 1
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.ft
  %.1882.i = phi i32 [ %.08811589.i, %bb.ft ], [ %i.aff, %bb.fv ] ; 2 uses
  %.1880.i = phi i32 [ %i.afc, %bb.ft ], [ %.08791590.i, %bb.fv ] ; 2 uses
  %.not1196.i = icmp ugt i32 %.1882.i, %.1880.i
  br i1 %.not1196.i, label %is_line_terminator.exit.i, label %.preheader1565.i, !llvm.loop !78

.loopexit1567.i:                                  ; preds = %bb.fu, %bb.fr
  %i.afg = shl nuw nsw i32 %i.adm, 2
  %i.afh = zext nneg i32 %i.afg to i64
  %i.afi = getelementptr inbounds nuw i8, ptr %i.adn, i64 %i.afh
  br label %is_line_terminator.exit1283.i.backedge

bb.fx:                                            ; preds = %is_line_terminator.exit1283.i, %is_line_terminator.exit1283.i
  %.val1265.i = load i16, ptr %i.ao, align 1
  %i.afj = zext i16 %.val1265.i to i32            ; 2 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %.01070.i, i64 3 ; 4 uses
  %.not.i = icmp ult ptr %.01051.i, %i.k
  br i1 %.not.i, label %bb.fy, label %is_line_terminator.exit.i

bb.fy:                                            ; preds = %bb.fx
  br i1 %i.an, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.afl = getelementptr inbounds nuw i8, ptr %.01051.i, i64 1
  %i.afm = load i8, ptr %.01051.i, align 1, !tbaa !12
  %i.afn = zext i8 %i.afm to i32
  br label %bb.gd

bb.ga:                                            ; preds = %bb.fy
  %i.afo = getelementptr inbounds nuw i8, ptr %.01051.i, i64 2 ; 4 uses
  %i.afp = load i16, ptr %.01051.i, align 2, !tbaa !65
  %i.afq = zext i16 %i.afp to i32                 ; 4 uses
  %.mask.i1313.i = and i32 %i.afq, 64512
  %i.afr = icmp eq i32 %.mask.i1313.i, 55296
  %or.cond56.i = select i1 %i.afr, i1 %i.ad, i1 false
  %i.afs = icmp ult ptr %i.afo, %i.k
  %or.cond1248.i = select i1 %or.cond56.i, i1 %i.afs, i1 false
  br i1 %or.cond1248.i, label %bb.gb, label %bb.gd

bb.gb:                                            ; preds = %bb.ga
  %i.aft = load i16, ptr %i.afo, align 2, !tbaa !65
  %i.afu = zext i16 %i.aft to i32                 ; 2 uses
  %.mask.i1314.i = and i32 %i.afu, 64512
  %i.afv = icmp eq i32 %.mask.i1314.i, 56320
  br i1 %i.afv, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.afw = getelementptr inbounds nuw i8, ptr %.01051.i, i64 4
  %i.afx = shl nuw nsw i32 %i.afq, 10
  %i.afy = and i32 %i.afx, 1047552
  %i.afz = add nuw nsw i32 %i.afy, 65536
  %i.aga = and i32 %i.afu, 1023
  %i.agb = or disjoint i32 %i.aga, %i.afz
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb, %bb.ga, %bb.fz
  %.161067.i = phi ptr [ %i.afl, %bb.fz ], [ %i.afw, %bb.gc ], [ %i.afo, %bb.gb ], [ %i.afo, %bb.ga ]
  %.211047.i = phi i32 [ %i.afn, %bb.fz ], [ %i.agb, %bb.gc ], [ %i.afq, %bb.gb ], [ %i.afq, %bb.ga ] ; 2 uses
  %i.agc = icmp eq i8 %i.ap, 39
  br i1 %i.agc, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.agd = load i8, ptr %i.c, align 8, !tbaa !56, !range !40, !noundef !41
  %i.age = trunc nuw i8 %i.agd to i1
  %i.agf = call i32 @lre_canonicalize(i32 noundef %.211047.i, i1 noundef zeroext %i.age) #20
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd
  %.221048.i = phi i32 [ %i.agf, %bb.ge ], [ %.211047.i, %bb.gd ] ; 4 uses
  %.val1256.i = load i32, ptr %i.afk, align 1
  %i.agg = icmp ult i32 %.221048.i, %.val1256.i
  br i1 %i.agg, label %is_line_terminator.exit.i, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.agh = add nsw i32 %i.afj, -1                 ; 2 uses
  %i.agi = shl nsw i32 %i.agh, 3
  %i.agj = zext i32 %i.agi to i64
  %i.agk = getelementptr inbounds nuw i8, ptr %i.afk, i64 %i.agj
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agk, i64 4
  %.val1255.i = load i32, ptr %i.agl, align 1
  %i.agm = icmp ugt i32 %.221048.i, %.val1255.i
  br i1 %i.agm, label %is_line_terminator.exit.i, label %.preheader1568.i

.preheader1568.i:                                 ; preds = %bb.gg, %bb.gk
  %.08751588.i = phi i32 [ %.1.i, %bb.gk ], [ %i.agh, %bb.gg ] ; 2 uses
  %.08761587.i = phi i32 [ %.1877.i, %bb.gk ], [ 0, %bb.gg ] ; 2 uses
  %i.agn = add i32 %.08761587.i, %.08751588.i
  %i.ago = lshr i32 %i.agn, 1                     ; 3 uses
  %i.agp = shl i32 %i.ago, 3
  %i.agq = zext i32 %i.agp to i64
  %i.agr = getelementptr inbounds nuw i8, ptr %i.afk, i64 %i.agq ; 2 uses
  %.val1254.i = load i32, ptr %i.agr, align 1
  %i.ags = icmp ult i32 %.221048.i, %.val1254.i
  br i1 %i.ags, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %.preheader1568.i
  %i.agt = add nsw i32 %i.ago, -1
  br label %bb.gk

bb.gi:                                            ; preds = %.preheader1568.i
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agr, i64 4
  %.val.i54 = load i32, ptr %i.agu, align 1
  %i.agv = icmp ugt i32 %.221048.i, %.val.i54
  br i1 %i.agv, label %bb.gj, label %bb.gl

bb.gj:                                            ; preds = %bb.gi
  %i.agw = add nuw i32 %i.ago, 1
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gh
  %.1877.i = phi i32 [ %.08761587.i, %bb.gh ], [ %i.agw, %bb.gj ] ; 2 uses
  %.1.i = phi i32 [ %i.agt, %bb.gh ], [ %.08751588.i, %bb.gj ] ; 2 uses
  %.not1194.i = icmp ugt i32 %.1877.i, %.1.i
  br i1 %.not1194.i, label %is_line_terminator.exit.i, label %.preheader1568.i, !llvm.loop !79

bb.gl:                                            ; preds = %bb.gi
  %i.agx = shl nuw nsw i32 %i.afj, 3
  %i.agy = zext nneg i32 %i.agx to i64
  %i.agz = getelementptr inbounds nuw i8, ptr %i.afk, i64 %i.agy
  br label %is_line_terminator.exit1283.i.backedge

bb.gm:                                            ; preds = %is_line_terminator.exit1283.i
  %i.aha = load ptr, ptr %7, align 8, !tbaa !59   ; 2 uses
  %i.ahb = icmp eq ptr %.01051.i, %i.aha
  br i1 %i.ahb, label %is_line_terminator.exit.i, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  br i1 %i.an, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  %i.ahc = getelementptr inbounds i8, ptr %.01051.i, i64 -1
  br label %is_line_terminator.exit1283.i.backedge

bb.gp:                                            ; preds = %bb.gn
  %i.ahd = getelementptr inbounds i8, ptr %.01051.i, i64 -2 ; 4 uses
  %i.ahe = load i16, ptr %i.ahd, align 2, !tbaa !65
  %i.ahf = and i16 %i.ahe, -1024
  %i.ahg = icmp eq i16 %i.ahf, -9216
  %or.cond58.i = select i1 %i.ahg, i1 %i.ad, i1 false
  %i.ahh = icmp ugt ptr %i.ahd, %i.aha
  %or.cond1249.i = and i1 %i.ahh, %or.cond58.i
  br i1 %or.cond1249.i, label %bb.gq, label %is_line_terminator.exit1283.i.backedge

bb.gq:                                            ; preds = %bb.gp
  %i.ahi = getelementptr inbounds i8, ptr %.01051.i, i64 -4 ; 2 uses
  %i.ahj = load i16, ptr %i.ahi, align 2, !tbaa !65
  %i.ahk = and i16 %i.ahj, -1024
  %i.ahl = icmp eq i16 %i.ahk, -10240
  %spec.select.i = select i1 %i.ahl, ptr %i.ahi, ptr %i.ahd
  br label %is_line_terminator.exit1283.i.backedge

is_line_terminator.exit1283.i.backedge:           ; preds = %bb.ee, %bb.eu, %.preheader1557.i, %bb.cc, %.loopexit.i, %bb.gq, %bb.gp, %bb.go, %bb.gl, %.loopexit1567.i, %bb.ed, %bb.ec, %bb.dl, %.thread1495.i.a, %bb.de, %bb.db, %bb.cy, %bb.cx, %bb.cq, %bb.cp, %.loopexit1555.i, %.thread1410.i, %bb.by, %bb.bu, %lre_is_space.exit1292.i, %lre_is_space.exit.i, %bb.bc, %bb.bb, %bb.ba, %bb.ax, %bb.aq, %bb.aq, %bb.aq, %bb.aq, %bb.aj, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ab, %bb.aa, %bb.z, %bb.y, %.thread1342.i, %bb.t, %bb.h, %bb.g, %bb.f
  %.01070.i.be = phi ptr [ %i.ao, %bb.bb ], [ %i.zq, %bb.ed ], [ %i.dn, %bb.t ], [ %.51075.i, %.thread1342.i ], [ %i.fl, %bb.y ], [ %i.bc, %bb.g ], [ %i.ao, %bb.ab ], [ %i.gr, %bb.aa ], [ %i.ao, %bb.aj ], [ %i.ao, %bb.ai ], [ %i.ao, %bb.gq ], [ %i.ao, %bb.ba ], [ %i.bp, %bb.h ], [ %i.ao, %lre_is_space.exit.i ], [ %i.ao, %lre_is_space.exit1292.i ], [ %i.lj, %bb.bu ], [ %i.ao, %bb.ax ], [ %i.po, %.thread1410.i ], [ %i.qy, %.loopexit1555.i ], [ %i.sg, %bb.cq ], [ %i.vv, %.thread1495.i.a ], [ %i.xc, %bb.dl ], [ %i.ao, %bb.ec ], [ %i.ao, %bb.aq ], [ %i.afi, %.loopexit1567.i ], [ %i.agz, %bb.gl ], [ %i.ao, %bb.go ], [ %i.uc, %bb.cx ], [ %i.ao, %bb.bc ], [ %i.uc, %bb.cy ], [ %i.ao, %bb.gp ], [ %i.mq, %bb.cc ], [ %i.bp, %.loopexit.i ], [ %i.mq, %bb.by ], [ %i.bc, %bb.f ], [ %i.gr, %bb.z ], [ %i.ao, %bb.ai ], [ %i.ao, %bb.ai ], [ %i.ao, %bb.ai ], [ %i.ao, %bb.aq ], [ %i.ao, %bb.aq ], [ %i.ao, %bb.aq ], [ %i.sg, %bb.cp ], [ %i.st, %bb.db ], [ %.81078.i, %bb.de ], [ %i.zq, %.preheader1557.i ], [ %i.zq, %bb.eu ], [ %i.zq, %bb.ee ]
  %.01051.i.be = phi ptr [ %i.jc, %bb.bb ], [ %.01051.i, %bb.ed ], [ %.41055.i, %bb.t ], [ %.01051.i, %.thread1342.i ], [ %.01051.i, %bb.y ], [ %i.be, %bb.g ], [ %.01051.i, %bb.ab ], [ %.01051.i, %bb.aa ], [ %.01051.i, %bb.aj ], [ %.01051.i, %bb.ai ], [ %spec.select.i, %bb.gq ], [ %i.jb, %bb.ba ], [ %i.br, %bb.h ], [ %.610571358.i, %lre_is_space.exit.i ], [ %.710581370.i, %lre_is_space.exit1292.i ], [ %.01051.i, %bb.bu ], [ %.51056.i, %bb.ax ], [ %.01051.i, %.thread1410.i ], [ %.01051.i, %.loopexit1555.i ], [ %.01051.i, %bb.cq ], [ %.01051.i, %.thread1495.i.a ], [ %.01051.i, %bb.dl ], [ %.01051.i, %bb.ec ], [ %.01051.i, %bb.aq ], [ %.141065.i, %.loopexit1567.i ], [ %.161067.i, %bb.gl ], [ %i.ahc, %bb.go ], [ %.01051.i, %bb.cx ], [ %spec.select1549.i, %bb.bc ], [ %.01051.i, %bb.cy ], [ %i.ahd, %bb.gp ], [ %.01051.i, %bb.cc ], [ %i.br, %.loopexit.i ], [ %.01051.i, %bb.by ], [ %i.be, %bb.f ], [ %.01051.i, %bb.z ], [ %.01051.i, %bb.ai ], [ %.01051.i, %bb.ai ], [ %.01051.i, %bb.ai ], [ %.01051.i, %bb.aq ], [ %.01051.i, %bb.aq ], [ %.01051.i, %bb.aq ], [ %.01051.i, %bb.cp ], [ %.01051.i, %bb.db ], [ %.01051.i, %bb.de ], [ %.81059.i, %.preheader1557.i ], [ %.101061.i, %bb.eu ], [ %.01051.i, %bb.ee ]
  %.0984.i.be = phi ptr [ %.0984.i, %bb.bb ], [ %.0984.i, %bb.ed ], [ %.0984.i, %bb.t ], [ %i.fk, %.thread1342.i ], [ %i.go, %bb.y ], [ %i.bb, %bb.g ], [ %.0984.i, %bb.ab ], [ %.0984.i, %bb.aa ], [ %.0984.i, %bb.aj ], [ %.0984.i, %bb.ai ], [ %.0984.i, %bb.gq ], [ %.0984.i, %bb.ba ], [ %i.bo, %bb.h ], [ %.0984.i, %lre_is_space.exit.i ], [ %.0984.i, %lre_is_space.exit1292.i ], [ %i.ml, %bb.bu ], [ %.0984.i, %bb.ax ], [ %.281012.i, %.thread1410.i ], [ %.321016.i, %.loopexit1555.i ], [ %.321016.i, %bb.cq ], [ %.44.i, %.thread1495.i.a ], [ %.0984.i, %bb.dl ], [ %.0984.i, %bb.ec ], [ %.0984.i, %bb.aq ], [ %.0984.i, %.loopexit1567.i ], [ %.0984.i, %bb.gl ], [ %.0984.i, %bb.go ], [ %.361020.i, %bb.cx ], [ %.0984.i, %bb.bc ], [ %.361020.i, %bb.cy ], [ %.0984.i, %bb.gp ], [ %i.ph, %bb.cc ], [ %.7991.lcssa.i, %.loopexit.i ], [ %.191003.i, %bb.by ], [ %i.bb, %bb.f ], [ %.0984.i, %bb.z ], [ %.0984.i, %bb.ai ], [ %.0984.i, %bb.ai ], [ %.0984.i, %bb.ai ], [ %.0984.i, %bb.aq ], [ %.0984.i, %bb.aq ], [ %.0984.i, %bb.aq ], [ %.321016.i, %bb.cp ], [ %.361020.i, %bb.db ], [ %i.vp, %bb.de ], [ %.0984.i, %.preheader1557.i ], [ %.0984.i, %bb.eu ], [ %.0984.i, %bb.ee ]
  %.0946.i.be = phi ptr [ %.0946.i, %bb.bb ], [ %.0946.i, %bb.ed ], [ %.0946.i, %bb.t ], [ %i.fk, %.thread1342.i ], [ %i.go, %bb.y ], [ %i.bi, %bb.g ], [ %.0946.i, %bb.ab ], [ %.0946.i, %bb.aa ], [ %.0946.i, %bb.aj ], [ %.0946.i, %bb.ai ], [ %.0946.i, %bb.gq ], [ %.0946.i, %bb.ba ], [ %i.bw, %bb.h ], [ %.0946.i, %lre_is_space.exit.i ], [ %.0946.i, %lre_is_space.exit1292.i ], [ %.12958.i, %bb.bu ], [ %.0946.i, %bb.ax ], [ %.23969.i, %.thread1410.i ], [ %.27973.i, %.loopexit1555.i ], [ %.27973.i, %bb.cq ], [ %.39.i, %.thread1495.i.a ], [ %.0946.i, %bb.dl ], [ %.0946.i, %bb.ec ], [ %.0946.i, %bb.aq ], [ %.0946.i, %.loopexit1567.i ], [ %.0946.i, %bb.gl ], [ %.0946.i, %bb.go ], [ %.31977.i, %bb.cx ], [ %.0946.i, %bb.bc ], [ %.31977.i, %bb.cy ], [ %.0946.i, %bb.gp ], [ %.19965.i, %bb.cc ], [ %i.bw, %.loopexit.i ], [ %.14960.i, %bb.by ], [ %i.bi, %bb.f ], [ %.0946.i, %bb.z ], [ %.0946.i, %bb.ai ], [ %.0946.i, %bb.ai ], [ %.0946.i, %bb.ai ], [ %.0946.i, %bb.aq ], [ %.0946.i, %bb.aq ], [ %.0946.i, %bb.aq ], [ %.27973.i, %bb.cp ], [ %.31977.i, %bb.db ], [ %i.vp, %bb.de ], [ %.0946.i, %.preheader1557.i ], [ %.0946.i, %bb.eu ], [ %.0946.i, %bb.ee ]
  %.0921.i.be = phi ptr [ %.0921.i, %bb.bb ], [ %.0921.i, %bb.ed ], [ %.0921.i, %bb.t ], [ %.3924.i, %.thread1342.i ], [ %.6927.i, %bb.y ], [ %.1922.i, %bb.g ], [ %.0921.i, %bb.ab ], [ %.0921.i, %bb.aa ], [ %.0921.i, %bb.aj ], [ %.0921.i, %bb.ai ], [ %.0921.i, %bb.gq ], [ %.0921.i, %bb.ba ], [ %.0921.i, %bb.h ], [ %.0921.i, %lre_is_space.exit.i ], [ %.0921.i, %lre_is_space.exit1292.i ], [ %.8929.i, %bb.bu ], [ %.0921.i, %bb.ax ], [ %.19940.i, %.thread1410.i ], [ %.23944.i, %.loopexit1555.i ], [ %.23944.i, %bb.cq ], [ %.35.i, %.thread1495.i.a ], [ %.0921.i, %bb.dl ], [ %.0921.i, %bb.ec ], [ %.0921.i, %bb.aq ], [ %.0921.i, %.loopexit1567.i ], [ %.0921.i, %bb.gl ], [ %.0921.i, %bb.go ], [ %.27.i, %bb.cx ], [ %.0921.i, %bb.bc ], [ %.27.i, %bb.cy ], [ %.0921.i, %bb.gp ], [ %.15936.i, %bb.cc ], [ %.0921.i, %.loopexit.i ], [ %.10931.i, %bb.by ], [ %.1922.i, %bb.f ], [ %.0921.i, %bb.z ], [ %.0921.i, %bb.ai ], [ %.0921.i, %bb.ai ], [ %.0921.i, %bb.ai ], [ %.0921.i, %bb.aq ], [ %.0921.i, %bb.aq ], [ %.0921.i, %bb.aq ], [ %.23944.i, %bb.cp ], [ %.27.i, %bb.db ], [ %.30.i, %bb.de ], [ %.0921.i, %.preheader1557.i ], [ %.0921.i, %bb.eu ], [ %.0921.i, %bb.ee ]
  br label %is_line_terminator.exit1283.i

bb.gr:                                            ; preds = %is_line_terminator.exit1283.i
  call void @abort() #21
  unreachable

lre_exec_backtrack.exit:                          ; preds = %is_line_terminator.exit1283.i, %bb.g, %bb.v, %bb.x, %bb.aa, %bb.br, %bb.bt, %bb.bv, %bb.bx, %bb.ch, %bb.cn, %bb.cq, %bb.cv, %bb.cy, %bb.dd, %bb.dj, %bb.bz, %bb.cb, %bb.e
  %.411125.i = phi i32 [ -1, %bb.bz ], [ 0, %bb.e ], [ -1, %bb.cb ], [ 1, %is_line_terminator.exit1283.i ], [ -2, %bb.g ], [ -1, %bb.v ], [ -3, %bb.br ], [ -1, %bb.x ], [ -2, %bb.aa ], [ -2, %bb.cy ], [ -1, %bb.bt ], [ -2, %bb.cq ], [ -1, %bb.cn ], [ -1, %bb.ch ], [ -3, %bb.bv ], [ -1, %bb.bx ], [ -1, %bb.dd ], [ -1, %bb.dj ], [ -1, %bb.cv ]
  %i.ahm = load ptr, ptr %i.r, align 8, !tbaa !63 ; 2 uses
  %.not = icmp eq ptr %i.ahm, %i.q
  br i1 %.not, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %lre_exec_backtrack.exit
  %i.ahn = load ptr, ptr %i.p, align 8, !tbaa !62
  %i.aho = call ptr @lre_realloc(ptr noundef %i.ahn, ptr noundef %i.ahm, i64 noundef 0) #20 ; 0 uses
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %lre_exec_backtrack.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  ret i32 %.411125.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i32 0, 766) i32 @lre_get_alloc_count(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i8, ptr %i.a, align 1, !tbaa !12
  %i.c = zext i8 %i.b to i32
  %i.d = shl nuw nsw i32 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !12
  %i.g = zext i8 %i.f to i32
  %i.h = add nuw nsw i32 %i.d, %i.g
  ret i32 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i32 -1, 1) i32 @lre_check_bytecode(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp slt i32 %1, 8
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val = load i32, ptr %i.b, align 1
  %i.c = add nsw i32 %1, -8
  %i.d = icmp ugt i32 %.val, %i.c
  %. = sext i1 %i.d to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %., %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i32 0, 256) i32 @lre_get_capture_count(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i8, ptr %i.a, align 1, !tbaa !12
  %i.c = zext i8 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden ptr @lre_get_groupnames(ptr nofree noundef readonly captures(ret: address, provenance) %0) local_unnamed_addr #7 {
bb.a:
  %.val.i = load i16, ptr %0, align 1
  %i.a = and i16 %.val.i, 128
  %i.b = icmp eq i16 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val = load i32, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = zext i32 %.val to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @__dbuf_put_u16(ptr nofree noundef nonnull captures(none) %0, i16 noundef zeroext %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = add i64 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !33
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !34

bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc i32 @dbuf_claim(ptr noundef nonnull %0, i64 noundef 2)
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %._crit_edge, label %dbuf_put.exit

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i64, ptr %i.a, align 8, !tbaa !32
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.h = phi i64 [ %.pre, %._crit_edge ], [ %i.b, %bb.a ]
  %i.i = load ptr, ptr %0, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h
  store i16 %1, ptr %i.j, align 1
  %i.k = load i64, ptr %i.a, align 8, !tbaa !32
  %i.l = add i64 %i.k, 2
  store i64 %i.l, ptr %i.a, align 8, !tbaa !32
  br label %dbuf_put.exit

dbuf_put.exit:                                    ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @__dbuf_putc(ptr nofree noundef nonnull captures(none) %0, i8 noundef zeroext %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = add i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !33
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !34

bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc i32 @dbuf_claim(ptr noundef nonnull %0, i64 noundef 1)
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %._crit_edge, label %dbuf_put.exit

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i64, ptr %i.a, align 8, !tbaa !32
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.h = phi i64 [ %.pre, %._crit_edge ], [ %i.b, %bb.a ]
  %i.i = load ptr, ptr %0, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h
  store i8 %1, ptr %i.j, align 1
  %i.k = load i64, ptr %i.a, align 8, !tbaa !32
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.a, align 8, !tbaa !32
  br label %dbuf_put.exit

dbuf_put.exit:                                    ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @__dbuf_put_u32(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = add i64 %i.b, 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !33
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !34

bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc i32 @dbuf_claim(ptr noundef nonnull %0, i64 noundef 4)
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %._crit_edge, label %dbuf_put.exit

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i64, ptr %i.a, align 8, !tbaa !32
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.h = phi i64 [ %.pre, %._crit_edge ], [ %i.b, %bb.a ]
  %i.i = load ptr, ptr %0, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h
  store i32 %1, ptr %i.j, align 1
  %i.k = load i64, ptr %i.a, align 8, !tbaa !32
  %i.l = add i64 %i.k, 4
  store i64 %i.l, ptr %i.a, align 8, !tbaa !32
  br label %dbuf_put.exit

dbuf_put.exit:                                    ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ -1, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0.i
}

declare zeroext i1 @lre_check_stack_overflow(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @dbuf_insert(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, i32 noundef range(i32 3, 14) %2) unnamed_addr #2 {
bb.a:
  %i.a = zext nneg i32 %2 to i64                  ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %i.d = add i64 %i.c, %i.a                       ; 4 uses
  %i.e = icmp ult i64 %i.d, %i.a
  br i1 %i.e, label %dbuf_claim.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !33   ; 4 uses
  %i.h = icmp ugt i64 %i.d, %i.g
  br i1 %i.h, label %bb.c, label %.dbuf_claim.exit_crit_edge

.dbuf_claim.exit_crit_edge:                       ; preds = %bb.b
  %.pre = load ptr, ptr %0, align 8, !tbaa !35
end_hunk_1
