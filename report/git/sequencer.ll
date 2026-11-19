Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/sequencer?download=true
inline.NumInlined: 1007
inline.NumDeleted: 148
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumUnrolled: 35
begin_hunk_0_@sequencer_continue:bb.a
  call fastcc void @record_in_rewritten(ptr noundef nonnull %8, i32 noundef %.09.i)
  br label %bb.gn

bb.gn:                                            ; preds = %peek_command.exit, %bb.gj, %rebase_path_stopped_sha.exit71
  call void @strbuf_release(ptr noundef nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.go

bb.go:                                            ; preds = %rebase_path_stopped_sha.exit, %bb.gn, %bb.ge
  %i.rq = call fastcc i32 @pick_commits(ptr noundef %0, ptr noundef %6, ptr noundef %1)
  br label %bb.gp

bb.gp:                                            ; preds = %commit_staged_changes.exit.thread, %bb.gb, %bb.fx, %bb.ci, %bb.cf, %bb.go, %bb.gd
  %.0 = phi i32 [ -1, %bb.cf ], [ %i.gs, %bb.ci ], [ -1, %bb.fx ], [ %i.rq, %bb.go ], [ %i.qm, %bb.gb ], [ %i.qo, %bb.gd ], [ -1, %commit_staged_changes.exit.thread ]
  call void @strbuf_release(ptr noundef nonnull %6) #21
  %i.rr = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !132
  call void @free(ptr noundef %i.rs) #21
  br label %bb.gq

bb.gq:                                            ; preds = %read_populate_opts.exit, %read_populate_opts.exit.thread78, %bb.a, %bb.gp, %bb.fw
  %.027 = phi i32 [ %i.qg, %bb.fw ], [ -1, %bb.a ], [ %.0, %bb.gp ], [ -1, %read_populate_opts.exit ], [ -1, %read_populate_opts.exit.thread78 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  ret i32 %.027
}

declare void @advise(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @todo_list_filter_update_refs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.string_list, align 8        ; 14 uses
  %3 = alloca %struct.strbuf, align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 1, ptr %i.a, align 8
  %i.b = load ptr, ptr %0, align 8, !tbaa !173
  %i.c = call i32 @sequencer_get_update_refs_state(ptr noundef %i.b, ptr noundef nonnull %2) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !66   ; 2 uses
  %.not88 = icmp eq i64 %i.e, 0
  br i1 %.not88, label %.preheader70, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre98 = load ptr, ptr %2, align 8, !tbaa !67
  br label %bb.b

.preheader70:                                     ; preds = %.critedge68, %bb.a
  %.054.lcssa = phi i32 [ 0, %bb.a ], [ %.256, %.critedge68 ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !138  ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph84, label %._crit_edge85

.lr.ph84:                                         ; preds = %.preheader70
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.f

bb.b:                                             ; preds = %.lr.ph, %.critedge68
  %i.o = phi i64 [ %i.e, %.lr.ph ], [ %i.bc, %.critedge68 ] ; 2 uses
  %i.p = phi ptr [ %.pre98, %.lr.ph ], [ %i.bd, %.critedge68 ] ; 3 uses
  %i.q = phi i64 [ 0, %.lr.ph ], [ %i.bf, %.critedge68 ] ; 6 uses
  %.077 = phi i32 [ 0, %.lr.ph ], [ %i.be, %.critedge68 ] ; 3 uses
  %.05476 = phi i32 [ 0, %.lr.ph ], [ %.256, %.critedge68 ] ; 2 uses
  %i.r = getelementptr inbounds [16 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !62   ; 3 uses
  %i.t = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.s) #22 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 36 ; 2 uses
  %i.x = load i128, ptr %i.w, align 1
  %i.y = getelementptr i8, ptr %i.w, i64 16
  %i.z = load i128, ptr %i.y, align 1
  %i.aa = or i128 %i.x, %i.z
  %i.ab = icmp ne i128 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  %.not.i.not = icmp eq i32 %i.ac, 0
  br i1 %.not.i.not, label %.preheader71, label %.critedge68

.preheader71:                                     ; preds = %bb.b
  %i.ad = load i32, ptr %i.f, align 8, !tbaa !138 ; 2 uses
  %smax = call i32 @llvm.smax.i32(i32 %i.ad, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  %exitcond.not115 = icmp slt i32 %i.ad, 1
  br i1 %exitcond.not115, label %.critedge, label %.lr.ph117.preheader

.lr.ph117.preheader:                              ; preds = %.preheader71
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !132
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !133
  br label %.lr.ph117

.lr.ph117:                                        ; preds = %.lr.ph117.preheader, %.backedge112
  %indvars.iv116 = phi i64 [ %indvars.iv.be, %.backedge112 ], [ 0, %.lr.ph117.preheader ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %i.ae, i64 %indvars.iv116 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !136
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ai
  %i.ak = load i32, ptr %i.ag, align 8, !tbaa !143
  %.not65 = icmp eq i32 %i.ak, 11
  br i1 %.not65, label %bb.c, label %.backedge112

bb.c:                                             ; preds = %.lr.ph117
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.am = load i32, ptr %i.al, align 4, !tbaa !145
  %i.an = sext i32 %i.am to i64
  %.not66 = icmp eq i64 %i.t, %i.an
  br i1 %.not66, label %.split, label %.backedge112

.split:                                           ; preds = %bb.c
  %i.ao = call i32 @strncmp(ptr noundef %i.aj, ptr noundef nonnull %i.s, i64 noundef %i.t) #22
  %.not67.not = icmp eq i32 %i.ao, 0
  br i1 %.not67.not, label %.critedge68, label %.backedge112

.backedge112:                                     ; preds = %.lr.ph117, %bb.c, %.split
  %indvars.iv.be = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.be, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph117, !llvm.loop !233

.critedge:                                        ; preds = %.backedge112, %.preheader71
  call void @free(ptr noundef %i.s) #21
  %i.ap = load ptr, ptr %2, align 8, !tbaa !67
  %i.aq = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %i.q
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !63
  call void @free(ptr noundef %i.as) #21
  %i.at = load i64, ptr %i.d, align 8, !tbaa !66
  %i.au = add i64 %i.at, -1                       ; 3 uses
  store i64 %i.au, ptr %i.d, align 8, !tbaa !66
  %i.av = load ptr, ptr %2, align 8, !tbaa !67    ; 2 uses
  %i.aw = getelementptr inbounds [16 x i8], ptr %i.av, i64 %i.q ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = sub i64 %i.au, %i.q                     ; 3 uses
  %.not.i69 = icmp eq i64 %i.au, %i.q
  br i1 %.not.i69, label %move_array.exit, label %bb.d

bb.d:                                             ; preds = %.critedge
  %mul.ov.i.i = icmp ugt i64 %i.ay, 1152921504606846975
  br i1 %mul.ov.i.i, label %bb.e, label %st_mult.exit.i

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @die(ptr noundef nonnull @.str.480, i64 noundef range(i64 4, 41) 16, i64 noundef %i.ay) #23
  unreachable

st_mult.exit.i:                                   ; preds = %bb.d
  %i.az = shl nuw i64 %i.ay, 4
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.aw, ptr nonnull readonly align 1 %i.ax, i64 %i.az, i1 false)
  %.pre = load ptr, ptr %2, align 8, !tbaa !67
  %.pre99.pre = load i64, ptr %i.d, align 8, !tbaa !66
  br label %move_array.exit

move_array.exit:                                  ; preds = %.critedge, %st_mult.exit.i
  %.pre99 = phi i64 [ %i.q, %.critedge ], [ %.pre99.pre, %st_mult.exit.i ]
  %i.ba = phi ptr [ %i.av, %.critedge ], [ %.pre, %st_mult.exit.i ]
  %i.bb = add nsw i32 %.077, -1
  br label %.critedge68

.critedge68:                                      ; preds = %.split, %move_array.exit, %bb.b
  %i.bc = phi i64 [ %i.o, %bb.b ], [ %.pre99, %move_array.exit ], [ %i.o, %.split ] ; 2 uses
  %i.bd = phi ptr [ %i.p, %bb.b ], [ %i.ba, %move_array.exit ], [ %i.p, %.split ]
  %.256 = phi i32 [ %.05476, %bb.b ], [ 1, %move_array.exit ], [ %.05476, %.split ] ; 2 uses
  %.2 = phi i32 [ %.077, %bb.b ], [ %i.bb, %move_array.exit ], [ %.077, %.split ]
  %i.be = add nsw i32 %.2, 1                      ; 2 uses
  %i.bf = sext i32 %i.be to i64                   ; 2 uses
  %i.bg = icmp ugt i64 %i.bc, %i.bf
  br i1 %i.bg, label %bb.b, label %.preheader70, !llvm.loop !234

bb.f:                                             ; preds = %.lr.ph84, %bb.h
  %i.bh = phi i32 [ %i.j, %.lr.ph84 ], [ %i.dd, %bb.h ] ; 2 uses
  %indvars.iv95 = phi i64 [ 0, %.lr.ph84 ], [ %indvars.iv.next96, %bb.h ] ; 2 uses
  %.35782 = phi i32 [ %.054.lcssa, %.lr.ph84 ], [ %.5, %bb.h ] ; 2 uses
  %i.bi = load ptr, ptr %i.l, align 8, !tbaa !132
  %i.bj = getelementptr inbounds nuw [40 x i8], ptr %i.bi, i64 %indvars.iv95 ; 4 uses
  %i.bk = load ptr, ptr %i.m, align 8, !tbaa !133
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !136
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %i.bj, align 8, !tbaa !143
  %.not61 = icmp eq i32 %i.bo, 11
  br i1 %.not61, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.f
  %i.bp = load i64, ptr %i.d, align 8             ; 3 uses
  %.not89 = icmp eq i64 %i.bp, 0
  br i1 %.not89, label %.critedge87, label %.lr.ph80

.lr.ph80:                                         ; preds = %.preheader
  %i.bq = load ptr, ptr %2, align 8, !tbaa !67
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 20
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !145
  %i.bt = sext i32 %i.bs to i64                   ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph80
  %indvars.iv92 = phi i64 [ 0, %.lr.ph80 ], [ %indvars.iv92.be, %.backedge.backedge ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %indvars.iv92
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !62 ; 2 uses
  %i.bw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bv) #22
  %i.bx = icmp eq i64 %i.bw, %i.bt
  br i1 %i.bx, label %bb.g, label %.thread

bb.g:                                             ; preds = %.backedge
  %i.by = call i32 @strncmp(ptr noundef nonnull %i.bv, ptr noundef %i.bn, i64 noundef %i.bt) #22
  %i.bz = icmp ne i32 %i.by, 0                    ; 2 uses
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %i.ca = icmp ugt i64 %i.bp, %indvars.iv.next93
  %i.cb = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %i.cb, label %.backedge.backedge, label %._crit_edge

.backedge.backedge:                               ; preds = %bb.g, %.thread
  %indvars.iv92.be = phi i64 [ %indvars.iv.next93, %bb.g ], [ %indvars.iv.next93111, %.thread ]
  br label %.backedge, !llvm.loop !235

.thread:                                          ; preds = %.backedge
  %indvars.iv.next93111 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %i.cc = icmp ugt i64 %i.bp, %indvars.iv.next93111
  br i1 %i.cc, label %.backedge.backedge, label %.critedge87

._crit_edge:                                      ; preds = %bb.g
  br i1 %i.bz, label %.critedge87, label %bb.h

.critedge87:                                      ; preds = %.thread, %.preheader, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) @__const.make_script_with_merges.label_from_message, i64 24, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bj, i64 20
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !145
  %i.cf = sext i32 %i.ce to i64
  call void @strbuf_add(ptr noundef nonnull %3, ptr noundef %i.bn, i64 noundef %i.cf) #21
  %i.cg = load ptr, ptr %i.n, align 8, !tbaa !43
  %i.ch = call ptr @string_list_insert(ptr noundef nonnull %2, ptr noundef %i.cg) #21
  %i.ci = load ptr, ptr %i.n, align 8, !tbaa !43
  %i.cj = call ptr @xcalloc(i64 noundef 1, i64 noundef 72) #21 ; 6 uses
  %i.ck = load ptr, ptr @the_repository, align 8, !tbaa !21
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 448
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !85
  %i.cn = call ptr @null_oid(ptr noundef %i.cm) #21 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.cj, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.cn, i64 32, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !165
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !165
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cj, i64 36
  %i.cs = load ptr, ptr @the_repository, align 8, !tbaa !21
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 448
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !85
  %i.cv = call ptr @null_oid(ptr noundef %i.cu) #21 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.cr, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.cv, i64 32, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !165
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cj, i64 68
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !165
  %i.cz = load ptr, ptr @the_repository, align 8, !tbaa !21
  %i.da = call ptr @get_main_ref_store(ptr noundef %i.cz) #21
  %i.db = call i32 @refs_read_ref(ptr noundef %i.da, ptr noundef %i.ci, ptr noundef nonnull %i.cj) #21 ; 0 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %i.cj, ptr %i.dc, align 8, !tbaa !63
  call void @strbuf_release(ptr noundef nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %.pre100 = load i32, ptr %i.i, align 8, !tbaa !138
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %.critedge87, %bb.f
  %i.dd = phi i32 [ %i.bh, %bb.f ], [ %i.bh, %._crit_edge ], [ %.pre100, %.critedge87 ] ; 2 uses
  %.5 = phi i32 [ %.35782, %bb.f ], [ %.35782, %._crit_edge ], [ 1, %.critedge87 ] ; 2 uses
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %i.de = sext i32 %i.dd to i64
  %i.df = icmp slt i64 %indvars.iv.next96, %i.de
  br i1 %i.df, label %bb.f, label %._crit_edge85, !llvm.loop !236

._crit_edge85:                                    ; preds = %bb.h, %.preheader70
  %.357.lcssa = phi i32 [ %.054.lcssa, %.preheader70 ], [ %.5, %bb.h ]
  %.not = icmp eq i32 %.357.lcssa, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge85
  %i.dg = call fastcc i32 @write_update_refs_state(ptr noundef %2) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge85
  call void @string_list_clear(ptr noundef nonnull %2, i32 noundef 1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @sequencer_get_update_refs_state(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.strbuf, align 8             ; 7 uses
  %3 = alloca %struct.strbuf, align 8             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @__const.make_script_with_merges.label_from_message, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) @__const.make_script_with_merges.label_from_message, i64 24, i1 false)
  %i.a = tail call ptr (ptr, ...) @xstrfmt(ptr noundef nonnull @.str.486, ptr noundef %0) #21 ; 3 uses
  %i.b = tail call ptr @git_fopen(ptr noundef %i.a, ptr noundef nonnull @.str.62) #21 ; 6 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = call i32 @strbuf_getline(ptr noundef nonnull %2, ptr noundef nonnull %i.b) #21
  %.not2543 = icmp eq i32 %i.c, -1
  br i1 %.not2543, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %i.f = call ptr @xcalloc(i64 noundef 1, i64 noundef 72) #21 ; 4 uses
  %i.g = call i32 @strbuf_getline(ptr noundef nonnull %3, ptr noundef nonnull %i.b) #21
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.j = call i32 @get_oid_hex(ptr noundef %i.i, ptr noundef %i.f) #21
  %.not26 = icmp eq i32 %i.j, 0
  br i1 %.not26, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = load i32, ptr @git_gettext_enabled, align 4, !tbaa !32
  %.not4.i = icmp eq i32 %i.k, 0
  br i1 %.not4.i, label %.thread.sink.split, label %.thread.sink.split.sink.split

bb.e:                                             ; preds = %bb.c
  %i.l = call i32 @strbuf_getline(ptr noundef nonnull %3, ptr noundef nonnull %i.b) #21
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.p = call i32 @get_oid_hex(ptr noundef %i.n, ptr noundef nonnull %i.o) #21
  %.not27 = icmp eq i32 %i.p, 0
  br i1 %.not27, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = load i32, ptr @git_gettext_enabled, align 4, !tbaa !32
  %.not4.i28 = icmp eq i32 %i.q, 0
  br i1 %.not4.i28, label %.thread.sink.split, label %.thread.sink.split.sink.split

bb.h:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.s = call ptr @string_list_insert(ptr noundef %1, ptr noundef %i.r) #21
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.f, ptr %i.t, align 8, !tbaa !63
  %i.u = call i32 @strbuf_getline(ptr noundef nonnull %2, ptr noundef nonnull %i.b) #21
  %.not25 = icmp eq i32 %i.u, -1
  br i1 %.not25, label %.thread, label %bb.b

.thread.sink.split.sink.split:                    ; preds = %bb.g, %bb.d
  %i.v = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.116, i32 noundef 5) #21
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %.thread.sink.split.sink.split, %bb.g, %bb.d
  %.0.i29.sink = phi ptr [ @.str.116, %bb.d ], [ @.str.116, %bb.g ], [ %i.v, %.thread.sink.split.sink.split ]
  call void (ptr, ...) @warning(ptr noundef %.0.i29.sink, ptr noundef %i.a) #21
  br label %.thread

.thread:                                          ; preds = %bb.h, %.thread.sink.split, %.preheader
  %.222.ph = phi i32 [ 0, %.preheader ], [ -1, %.thread.sink.split ], [ 0, %bb.h ]
  %.2.ph = phi ptr [ null, %.preheader ], [ %i.f, %.thread.sink.split ], [ null, %bb.h ]
  %i.w = call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %.thread
  %.241 = phi ptr [ %.2.ph, %.thread ], [ null, %bb.a ]
  %.22239 = phi i32 [ %.222.ph, %.thread ], [ 0, %bb.a ]
  call void @free(ptr noundef %i.a) #21
  call void @free(ptr noundef %.241) #21
  call void @strbuf_release(ptr noundef nonnull %2) #21
  call void @strbuf_release(ptr noundef nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret i32 %.22239
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #4

declare ptr @string_list_insert(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @write_update_refs_state(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.lock_file, align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.a = load ptr, ptr @the_repository, align 8, !tbaa !21
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !173
  %i.c = tail call ptr (ptr, ...) @xstrfmt(ptr noundef nonnull @.str.486, ptr noundef %i.b) #21 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !66
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @unlink(ptr noundef %i.c) #21
  %.not23 = icmp eq i32 %i.f, 0
  br i1 %.not23, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @__errno_location() #24
  %i.h = load i32, ptr %i.g, align 4, !tbaa !32
  %.not24 = icmp eq i32 %i.h, 2
  br i1 %.not24, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr @git_gettext_enabled, align 4, !tbaa !32
  %.not4.i = icmp eq i32 %i.i, 0
  br i1 %.not4.i, label %_.exit, label %bb.e

end_hunk_0
