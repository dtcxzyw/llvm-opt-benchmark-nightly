inline.NumInlined: 47
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@show_files:bb.a
bb.y:                                             ; preds = %strbuf_setlen.exit.i
  %i.dk = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dj) #15
  call void @strbuf_add(ptr noundef nonnull %2, ptr noundef nonnull %i.dj, i64 noundef %i.dk) #14
  br label %construct_fullname.exit

construct_fullname.exit:                          ; preds = %strbuf_setlen.exit.i, %bb.y
  %i.dl = getelementptr inbounds nuw i8, ptr %.068, i64 108 ; 3 uses
  %i.dm = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dl) #15
  call void @strbuf_add(ptr noundef nonnull %2, ptr noundef nonnull %i.dl, i64 noundef %i.dm) #14
  %i.dn = load i32, ptr %1, align 8, !tbaa !58
  %i.do = and i32 %i.dn, 1
  %.not72 = icmp eq i32 %i.do, 0
  br i1 %.not72, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %construct_fullname.exit
  %i.dp = load ptr, ptr %i.cm, align 8, !tbaa !72
  %i.dq = load ptr, ptr %i.cr, align 8, !tbaa !102
  %i.dr = getelementptr i8, ptr %.068, i64 52
  %.068.val = load i32, ptr %i.dr, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.ds = lshr i32 %.068.val, 8
  %i.dt = and i32 %i.ds, 61440                    ; 2 uses
  %i.du = call i32 @llvm.fshl.i32(i32 %i.dt, i32 %i.dt, i32 19)
  %switch.tableidx = add i32 %i.du, -2            ; 2 uses
  %i.dv = icmp ult i32 %switch.tableidx, 6
  br i1 %i.dv, label %switch.lookup, label %ce_excluded.exit

switch.lookup:                                    ; preds = %bb.z
  %i.dw = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.show_files, i64 %i.dw
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %ce_excluded.exit

ce_excluded.exit:                                 ; preds = %bb.z, %switch.lookup
  %.0.i.i = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.z ]
  store i32 %.0.i.i, ptr %i.a, align 4, !tbaa !12
  %i.dx = call i32 @is_excluded(ptr noundef nonnull %1, ptr noundef %i.dp, ptr noundef %i.dq, ptr noundef nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %.not73 = icmp eq i32 %i.dx, 0
  br i1 %.not73, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %ce_excluded.exit, %construct_fullname.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %.068, i64 56 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !12 ; 3 uses
  %i.ea = and i32 %i.dz, 65536
  %.not74 = icmp eq i32 %i.ea, 0
  br i1 %.not74, label %bb.ab, label %.loopexit

bb.ab:                                            ; preds = %bb.aa
  %i.eb = load i32, ptr @show_cached, align 4, !tbaa !12
  %i.ec = icmp ne i32 %i.eb, 0
  %i.ed = load i32, ptr @show_stage, align 4
  %i.ee = icmp ne i32 %i.ed, 0
  %or.cond11 = select i1 %i.ec, i1 true, i1 %i.ee
  br i1 %or.cond11, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %i.ef = load i32, ptr @show_unmerged, align 4, !tbaa !12
  %.not75 = icmp ne i32 %i.ef, 0
  %i.eg = and i32 %i.dz, 12288
  %.not76 = icmp eq i32 %i.eg, 0                  ; 2 uses
  %or.cond89 = and i1 %.not76, %.not75
  br i1 %or.cond89, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eh = load ptr, ptr %i.cr, align 8, !tbaa !102
  br i1 %.not76, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ei = load ptr, ptr @tag_unmerged, align 8, !tbaa !51
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.ej = and i32 %i.dz, 1073741824
  %.not78 = icmp eq i32 %i.ej, 0
  %i.ek = load ptr, ptr @tag_skip_worktree, align 8
  %i.el = load ptr, ptr @tag_cached, align 8
  %i.em = select i1 %.not78, ptr %i.el, ptr %i.ek
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.en = phi ptr [ %i.ei, %bb.ae ], [ %i.em, %bb.af ]
  call fastcc void @show_ce(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %.068, ptr noundef %i.eh, ptr noundef %i.en)
  %i.eo = load i32, ptr @skipping_duplicates, align 4, !tbaa !12
  %.not79 = icmp eq i32 %i.eo, 0
  br i1 %.not79, label %bb.ah, label %bb.as

bb.ah:                                            ; preds = %bb.ac, %bb.ag, %bb.ab
  %i.ep = load i32, ptr @show_deleted, align 4, !tbaa !12
  %i.eq = icmp ne i32 %i.ep, 0
  %i.er = load i32, ptr @show_modified, align 4
  %i.es = icmp ne i32 %i.er, 0
  %or.cond13 = select i1 %i.eq, i1 true, i1 %i.es
  br i1 %or.cond13, label %bb.ai, label %.loopexit

bb.ai:                                            ; preds = %bb.ah
  %i.et = load i32, ptr %i.dy, align 8, !tbaa !12
  %i.eu = and i32 %i.et, 1073741824
  %.not80 = icmp eq i32 %i.eu, 0
  br i1 %.not80, label %bb.aj, label %.loopexit

bb.aj:                                            ; preds = %bb.ai
  %i.ev = load i32, ptr @pathspec, align 8, !tbaa !86
  %i.ew = icmp eq i32 %i.ev, 1
  br i1 %i.ew, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ex = load ptr, ptr %i.cm, align 8, !tbaa !72
  %i.ey = load ptr, ptr %i.cr, align 8, !tbaa !102
  %i.ez = load i64, ptr %i.cq, align 8, !tbaa !101
  %i.fa = trunc i64 %i.ez to i32
  %i.fb = load i32, ptr @max_prefix_len, align 4, !tbaa !12
  %i.fc = getelementptr inbounds nuw i8, ptr %.068, i64 52
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !12
  %i.fe = and i32 %i.fd, 61440                    ; 2 uses
  %i.ff = icmp eq i32 %i.fe, 16384
  %i.fg = icmp eq i32 %i.fe, 57344
  %narrow = or i1 %i.ff, %i.fg
  %i.fh = zext i1 %narrow to i32
  %i.fi = call i32 @match_pathspec(ptr noundef %i.ex, ptr noundef nonnull @pathspec, ptr noundef %i.ey, i32 noundef %i.fa, i32 noundef %i.fb, ptr noundef null, i32 noundef %i.fh) #14
  %.not81 = icmp eq i32 %i.fi, 0
  br i1 %.not81, label %.loopexit, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.fj = load ptr, ptr %i.cr, align 8, !tbaa !102
  %i.fk = call i32 @lstat64(ptr noundef %i.fj, ptr noundef nonnull %3) #14
  %.not99 = icmp eq i32 %i.fk, 0
  br i1 %.not99, label %.thread96, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fl = tail call ptr @__errno_location() #18
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !12
  switch i32 %i.fm, label %bb.an [
    i32 2, label %bb.ao
    i32 20, label %bb.ao
  ]

bb.an:                                            ; preds = %bb.am
  %i.fn = load ptr, ptr %i.cr, align 8, !tbaa !102
  %i.fo = call i32 (ptr, ...) @error_errno(ptr noundef nonnull @.str.83, ptr noundef %i.fn) #14 ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.am, %bb.an
  %i.fp = load i32, ptr @show_deleted, align 4
  %.not100 = icmp eq i32 %i.fp, 0
  br i1 %.not100, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fq = load ptr, ptr %i.cr, align 8, !tbaa !102
  %i.fr = load ptr, ptr @tag_removed, align 8, !tbaa !51
  call fastcc void @show_ce(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %.068, ptr noundef %i.fq, ptr noundef %i.fr)
  %i.fs = load i32, ptr @skipping_duplicates, align 4, !tbaa !12
  %.not84 = icmp eq i32 %i.fs, 0
  br i1 %.not84, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.ft = load i32, ptr @show_modified, align 4, !tbaa !12
  %.not85 = icmp eq i32 %i.ft, 0
  br i1 %.not85, label %.loopexit, label %bb.ar

.thread96:                                        ; preds = %bb.al
  %i.fu = load i32, ptr @show_modified, align 4, !tbaa !12
  %.not8597 = icmp eq i32 %i.fu, 0
  br i1 %.not8597, label %.loopexit, label %.thread98

.thread98:                                        ; preds = %.thread96
  %i.fv = load ptr, ptr %i.cm, align 8, !tbaa !72
  %i.fw = call i32 @ie_modified(ptr noundef %i.fv, ptr noundef nonnull %.068, ptr noundef nonnull %3, i32 noundef 0) #14
  %.not86 = icmp eq i32 %i.fw, 0
  br i1 %.not86, label %.loopexit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.thread98
  %i.fx = load ptr, ptr %i.cr, align 8, !tbaa !102
  %i.fy = load ptr, ptr @tag_modified, align 8, !tbaa !51
  call fastcc void @show_ce(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %.068, ptr noundef %i.fx, ptr noundef %i.fy)
  %i.fz = load i32, ptr @skipping_duplicates, align 4, !tbaa !12
  %.not87 = icmp eq i32 %i.fz, 0
  br i1 %.not87, label %.loopexit, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ap, %bb.ag
  %i.ga = load ptr, ptr %i.cm, align 8, !tbaa !72 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !83
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 12
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !73 ; 3 uses
  %i.ge = add nuw i32 %.0111, 1
  %umax = call i32 @llvm.umax.i32(i32 %i.gd, i32 %i.ge)
  %i.gf = add i32 %umax, -1                       ; 2 uses
  %indvars.iv.next154 = add nuw nsw i64 %i.cv, 1  ; 2 uses
  %i.gg = trunc nsw i64 %indvars.iv.next154 to i32
  %i.gh = icmp ugt i32 %i.gd, %i.gg
  br i1 %i.gh, label %.lr.ph158, label %.loopexit

bb.at:                                            ; preds = %.lr.ph158
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next156, 1 ; 2 uses
  %i.gi = trunc nsw i64 %indvars.iv.next to i32
  %i.gj = icmp ugt i32 %i.gd, %i.gi
  br i1 %i.gj, label %.lr.ph158, label %.loopexit, !llvm.loop !104

.lr.ph158:                                        ; preds = %bb.as, %bb.at
  %indvars.iv.next156 = phi i64 [ %indvars.iv.next, %bb.at ], [ %indvars.iv.next154, %bb.as ] ; 2 uses
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %bb.at ], [ %i.cv, %bb.as ] ; 2 uses
  %i.gk = getelementptr [8 x i8], ptr %i.gb, i64 %indvars.iv155
  %4 = getelementptr i8, ptr %i.gk, i64 8
  %i.gl = load ptr, ptr %4, align 8, !tbaa !84
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 108
  %i.gn = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.dl, ptr noundef nonnull dereferenceable(1) %i.gm) #15
  %.not88 = icmp eq i32 %i.gn, 0
  br i1 %.not88, label %bb.at, label %.loopexit.loopexit.split.loop.exit, !llvm.loop !104

.loopexit.loopexit.split.loop.exit:               ; preds = %.lr.ph158
  %i.go = trunc nsw i64 %indvars.iv155 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.at, %bb.as, %.loopexit.loopexit.split.loop.exit, %.thread96, %bb.aq, %.thread98, %bb.ar, %bb.ak, %bb.ai, %bb.ah, %bb.aa, %ce_excluded.exit
  %.1 = phi i32 [ %.0111, %ce_excluded.exit ], [ %.0111, %bb.aq ], [ %.0111, %bb.ah ], [ %.0111, %bb.ak ], [ %.0111, %bb.ai ], [ %.0111, %bb.aa ], [ %.0111, %bb.ar ], [ %.0111, %.thread98 ], [ %.0111, %.thread96 ], [ %i.go, %.loopexit.loopexit.split.loop.exit ], [ %i.gf, %bb.as ], [ %i.gf, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %i.gp = add nuw nsw i32 %.1, 1                  ; 2 uses
  %i.gq = load ptr, ptr %i.cm, align 8, !tbaa !72 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 12
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !73
  %i.gt = icmp ult i32 %i.gp, %i.gs
  br i1 %i.gt, label %bb.s, label %._crit_edge, !llvm.loop !105

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  call void @strbuf_release(ptr noundef nonnull %2) #14
  br label %bb.au

bb.au:                                            ; preds = %show_killed_files.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void
}

declare i32 @report_path_error(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @string_list_clear(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dir_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noreturn
declare void @BUG_fl(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

declare ptr @string_list_append(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @add_patterns_from_file(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @setup_standard_excludes(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

declare i32 @index_name_pos(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @fill_directory(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ensure_full_index(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @show_ce(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.stat, align 8               ; 4 uses
  %i.a = alloca ptr, align 8                      ; 19 uses
  %6 = alloca %struct.strbuf, align 8             ; 27 uses
  %7 = alloca %struct.stat, align 8               ; 4 uses
  %8 = alloca %struct.repository, align 8         ; 6 uses
  %i.b = load i32, ptr @max_prefix_len, align 4, !tbaa !12 ; 3 uses
  %i.c = sext i32 %i.b to i64
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #15
  %i.e = icmp ult i64 %i.d, %i.c
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.90) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = load i32, ptr @recurse_submodules, align 4, !tbaa !12
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.h = load i32, ptr %i.g, align 4, !tbaa !12
  %i.i = and i32 %i.h, 61440
  %i.j = icmp eq i32 %i.i, 57344
  br i1 %i.j, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 108 ; 2 uses
  %i.l = tail call i32 @is_submodule_active(ptr noundef %0, ptr noundef nonnull %i.k) #14
  %.not30 = icmp eq i32 %i.l, 0
  br i1 %.not30, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.e
  %.pre = load i32, ptr @max_prefix_len, align 4, !tbaa !12
  br label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !106
  %i.o = tail call ptr @null_oid(ptr noundef %i.n) #14, !inline_history !107
  %i.p = call i32 @repo_submodule_init(ptr noundef nonnull %8, ptr noundef %0, ptr noundef nonnull %i.k, ptr noundef %i.o) #14, !inline_history !107
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.g, label %show_submodule.exit

bb.g:                                             ; preds = %bb.f
  %i.q = call i32 @repo_read_index(ptr noundef nonnull %8) #14, !inline_history !107
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @die(ptr noundef nonnull @.str.58) #16, !inline_history !107
  unreachable

bb.i:                                             ; preds = %bb.g
  call fastcc void @show_files(ptr noundef nonnull %8, ptr noundef nonnull %1), !inline_history !107
  call void @repo_clear(ptr noundef nonnull %8) #14, !inline_history !107
  br label %show_submodule.exit

show_submodule.exit:                              ; preds = %bb.f, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %bb.eo

bb.j:                                             ; preds = %._crit_edge, %bb.d, %bb.c
  %i.s = phi i32 [ %.pre, %._crit_edge ], [ %i.b, %bb.d ], [ %i.b, %bb.c ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !72
  %i.v = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #15
  %i.w = trunc i64 %i.v to i32
  %i.x = load ptr, ptr @ps_matched, align 8, !tbaa !51
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 8 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !12
  %i.aa = and i32 %i.z, 61440                     ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 16384
  %i.ac = icmp eq i32 %i.aa, 57344
  %narrow = or i1 %i.ab, %i.ac
  %i.ad = zext i1 %narrow to i32
  %i.ae = tail call i32 @match_pathspec(ptr noundef %i.u, ptr noundef nonnull @pathspec, ptr noundef nonnull %3, i32 noundef %i.w, i32 noundef %i.s, ptr noundef %i.x, i32 noundef %i.ad) #14
  %.not31 = icmp eq i32 %i.ae, 0
  br i1 %.not31, label %bb.eo, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = load ptr, ptr @format, align 8, !tbaa !51 ; 2 uses
  %.not32 = icmp eq ptr %i.af, null
  br i1 %.not32, label %bb.du, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.af, ptr %i.a, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) @__const.write_name_to_buf.buf, i64 24, i1 false)
  %i.ag = call i32 @strbuf_expand_step(ptr noundef nonnull %6, ptr noundef nonnull %i.a) #14
  %.not82.i = icmp eq i32 %i.ag, 0
  br i1 %.not82.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.dt, %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !51  ; 3 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !71
  %i.ap = icmp eq i8 %i.ao, 37
  br i1 %i.ap, label %bb.n, label %skip_prefix_impl.exit.i

bb.n:                                             ; preds = %bb.m
  %scevgep.i = getelementptr i8, ptr %i.an, i64 1
  store ptr %scevgep.i, ptr %i.a, align 8, !tbaa !51
  %i.aq = load i64, ptr %6, align 8, !tbaa !108   ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i.i, label %strbuf_avail.exit.thread.i.i, label %strbuf_avail.exit.i.i

strbuf_avail.exit.i.i:                            ; preds = %bb.n
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !101 ; 2 uses
  %.neg.i.i = add i64 %i.ar, 1                    ; 2 uses
  %.not.i20.i = icmp eq i64 %i.aq, %.neg.i.i
  br i1 %.not.i20.i, label %strbuf_avail.exit.thread.i.i, label %strbuf_addch.exit.i

strbuf_avail.exit.thread.i.i:                     ; preds = %strbuf_avail.exit.i.i, %bb.n
  call void @strbuf_grow(ptr noundef nonnull %6, i64 noundef 1) #14
  %.pre.i.i = load i64, ptr %i.al, align 8, !tbaa !101 ; 2 uses
  %.pre7.i.i = add i64 %.pre.i.i, 1
  br label %strbuf_addch.exit.i
end_hunk_0
