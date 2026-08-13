inline.NumInlined: 81
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@cmd_clean:bb.a
  %i.di = load i32, ptr %i.e, align 4             ; 2 uses
  %i.dj = icmp ne i32 %i.di, 0
  %or.cond7 = select i1 %i.dh, i1 %i.dj, i1 false
  br i1 %or.cond7, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.dk = call fastcc ptr @_(ptr noundef nonnull @.str.14)
  call void (ptr, ...) @die(ptr noundef %i.dk, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #16
  unreachable

bb.g:                                             ; preds = %bb.e
  br i1 %i.dh, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @setup_standard_excludes(ptr noundef nonnull %8) #15
  %.pr = load i32, ptr %i.e, align 4, !tbaa !15
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.dl = phi i32 [ %.pr, %bb.h ], [ %i.di, %bb.g ] ; 2 uses
  %.not = icmp eq i32 %i.dl, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dm = load i32, ptr %8, align 8, !tbaa !30
  %i.dn = or i32 %i.dm, 1
  store i32 %i.dn, ptr %8, align 8, !tbaa !30
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.not60 = icmp eq i32 %i.cs, 0
  br i1 %.not60, label %._crit_edge121, label %bb.l

._crit_edge121:                                   ; preds = %bb.k
  %.pre122 = load i32, ptr %i.b, align 4, !tbaa !15
  %i.do = icmp eq i32 %.pre122, 0
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 1, ptr %i.b, align 4, !tbaa !15
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge121, %bb.l
  %i.dp = phi i1 [ %i.do, %._crit_edge121 ], [ false, %bb.l ]
  %i.dq = icmp ne i32 %i.dl, 0
  %or.cond9 = or i1 %i.dq, %i.dp
  br i1 %or.cond9, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dr = load i32, ptr %8, align 8, !tbaa !30
  %i.ds = load i32, ptr %i.d, align 4, !tbaa !15
  %.not61 = icmp eq i32 %i.ds, 0
  %spec.select137.v = select i1 %.not61, i32 288, i32 32
  %spec.select137 = or i32 %i.dr, %spec.select137.v
  %i.dt = or i32 %spec.select137, 128
  store i32 %i.dt, ptr %8, align 8, !tbaa !30
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.du = load ptr, ptr @the_repository, align 8, !tbaa !28
  call void @prepare_repo_settings(ptr noundef %i.du) #15
  %i.dv = load ptr, ptr @the_repository, align 8, !tbaa !28 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 296
  store i32 0, ptr %i.dw, align 8, !tbaa !43
  %i.dx = call i32 @repo_read_index(ptr noundef %i.dv) #15
  %i.dy = icmp slt i32 %i.dx, 0
  br i1 %i.dy, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dz = call fastcc ptr @_(ptr noundef nonnull @.str.17)
  call void (ptr, ...) @die(ptr noundef %i.dz) #16
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ea = call ptr @add_pattern_list(ptr noundef nonnull %8, i32 noundef 0, ptr noundef nonnull @.str.18) #15
  %i.eb = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !66
  %.not110 = icmp eq i64 %i.ec, 0
  br i1 %.not110, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.q ] ; 3 uses
  %i.ed = load ptr, ptr %11, align 8, !tbaa !67
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.ed, i64 %indvars.iv
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !68
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.eg = trunc nuw nsw i64 %indvars.iv to i32
  %i.eh = xor i32 %i.eg, -1
  call void @add_pattern(ptr noundef %i.ef, ptr noundef nonnull @.str.19, i32 noundef 0, ptr noundef %i.ea, i32 noundef %i.eh) #15
  %i.ei = load i64, ptr %i.eb, align 8, !tbaa !66
  %i.ej = icmp ugt i64 %i.ei, %indvars.iv.next
  br i1 %i.ej, label %.lr.ph, label %._crit_edge, !llvm.loop !70

._crit_edge:                                      ; preds = %.lr.ph, %bb.q
  call void @parse_pathspec(ptr noundef nonnull %9, i32 noundef 0, i32 noundef 1, ptr noundef %2, ptr noundef %1) #15
  %i.ek = load ptr, ptr @the_repository, align 8, !tbaa !28
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 432
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !72
  %i.en = call i32 @fill_directory(ptr noundef nonnull %8, ptr noundef %i.em, ptr noundef nonnull %9) #15 ; 0 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 7 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !73
  %i.eq = icmp sgt i32 %i.ep, 0
  br i1 %i.eq, label %.preheader.lr.ph.i, label %correct_untracked_entries.exit.thread

correct_untracked_entries.exit.thread:            ; preds = %._crit_edge
  store i32 0, ptr %i.eo, align 4, !tbaa !73
  br label %._crit_edge101

.preheader.lr.ph.i:                               ; preds = %._crit_edge
  %i.er = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.es = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %.critedge2.i, %.preheader.lr.ph.i
  %.052.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %i.go, %.critedge2.i ] ; 6 uses
  %.03451.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %.135.lcssa65.i, %.critedge2.i ] ; 3 uses
  %.03650.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %.137.i, %.critedge2.i ] ; 3 uses
  %i.eu = load i32, ptr %i.es, align 8, !tbaa !74
  %i.ev = icmp slt i32 %.03451.i, %i.eu
  br i1 %i.ev, label %.lr.ph.i, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.preheader.i
  %.pre6164.i = load ptr, ptr %i.er, align 8, !tbaa !75
  %.pre123 = sext i32 %.052.i to i64
  br label %.critedge._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ew = sext i32 %.052.i to i64                 ; 5 uses
  %i.ex = sext i32 %.03451.i to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ex, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.s ] ; 3 uses
  %i.ey = load ptr, ptr %i.er, align 8, !tbaa !75
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.ey, i64 %i.ew
  %i.fa = load ptr, ptr %i.et, align 8, !tbaa !76
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %indvars.iv.i
  %i.fc = call i32 @cmp_dir_entry(ptr noundef %i.ez, ptr noundef %i.fb) #15
  %i.fd = icmp sgt i32 %i.fc, -1
  %.pre.pre.i = load i32, ptr %i.es, align 8, !tbaa !74 ; 2 uses
  br i1 %i.fd, label %bb.s, label %.critedge.i

bb.s:                                             ; preds = %bb.r
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.fe = sext i32 %.pre.pre.i to i64
  %i.ff = icmp slt i64 %indvars.iv.next.i, %i.fe
  br i1 %i.ff, label %bb.r, label %.critedge.i, !llvm.loop !77

.critedge.i:                                      ; preds = %bb.s, %bb.r
  %.135.lcssa.ph.in.i = phi i64 [ %indvars.iv.i, %bb.r ], [ %indvars.iv.next.i, %bb.s ] ; 2 uses
  %.135.lcssa.ph.i = trunc i64 %.135.lcssa.ph.in.i to i32 ; 4 uses
  %i.fg = icmp sgt i32 %.pre.pre.i, %.135.lcssa.ph.i
  %.pre61.i = load ptr, ptr %i.er, align 8, !tbaa !75 ; 2 uses
  br i1 %i.fg, label %bb.t, label %.critedge._crit_edge.i

bb.t:                                             ; preds = %.critedge.i
  %i.fh = getelementptr inbounds [8 x i8], ptr %.pre61.i, i64 %i.ew
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !78
  %i.fj = load ptr, ptr %i.et, align 8, !tbaa !76
  %sext.i = shl i64 %.135.lcssa.ph.in.i, 32
  %i.fk = ashr exact i64 %sext.i, 29
  %i.fl = getelementptr inbounds i8, ptr %i.fj, i64 %i.fk
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !78
  %i.fn = call i32 @check_dir_entry_contains(ptr noundef %i.fi, ptr noundef %i.fm) #15
  %.not.i = icmp eq i32 %i.fn, 0
  %.pre60.i = load ptr, ptr %i.er, align 8, !tbaa !75 ; 2 uses
  br i1 %.not.i, label %.critedge._crit_edge.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fo = getelementptr inbounds [8 x i8], ptr %.pre60.i, i64 %i.ew
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !78
  call void @free(ptr noundef %i.fp) #15
  br label %.critedge2.i

.critedge._crit_edge.i:                           ; preds = %.critedge.thread.i, %.critedge.i, %bb.t
  %.135.lcssa66.i = phi i32 [ %.135.lcssa.ph.i, %bb.t ], [ %.135.lcssa.ph.i, %.critedge.i ], [ %.03451.i, %.critedge.thread.i ] ; 4 uses
  %.pre-phi.i = phi i64 [ %i.ew, %bb.t ], [ %i.ew, %.critedge.i ], [ %.pre123, %.critedge.thread.i ]
  %i.fq = phi ptr [ %.pre60.i, %bb.t ], [ %.pre61.i, %.critedge.i ], [ %.pre6164.i, %.critedge.thread.i ] ; 3 uses
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %.pre-phi.i
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !78 ; 3 uses
  %i.ft = add nsw i32 %.03650.i, 1                ; 4 uses
  %i.fu = sext i32 %.03650.i to i64
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.fu
  store ptr %i.fs, ptr %i.fv, align 8, !tbaa !78
  %.143.i = add nsw i32 %.052.i, 1                ; 2 uses
  %i.fw = load i32, ptr %i.eo, align 4, !tbaa !73
  %i.fx = icmp slt i32 %.143.i, %i.fw
  br i1 %i.fx, label %.lr.ph46.preheader.i, label %.critedge2.i

.lr.ph46.preheader.i:                             ; preds = %.critedge._crit_edge.i
  %i.fy = sext i32 %.143.i to i64                 ; 2 uses
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.fy
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !78
  %i.gb = call i32 @check_dir_entry_contains(ptr noundef %i.fs, ptr noundef %i.ga) #15
  %.not38.i95 = icmp eq i32 %i.gb, 0
  br i1 %.not38.i95, label %.critedge2.i, label %.lr.ph97

.lr.ph46.i:                                       ; preds = %.lr.ph97
  %i.gc = load ptr, ptr %i.er, align 8, !tbaa !75
  %i.gd = getelementptr [8 x i8], ptr %i.gc, i64 %indvars.iv56.i96
  %15 = getelementptr i8, ptr %i.gd, i64 8
  %i.ge = load ptr, ptr %15, align 8, !tbaa !78
  %i.gf = call i32 @check_dir_entry_contains(ptr noundef %i.fs, ptr noundef %i.ge) #15
  %.not38.i = icmp eq i32 %i.gf, 0
  br i1 %.not38.i, label %.critedge2.i.loopexit, label %.lr.ph97, !llvm.loop !80

.lr.ph97:                                         ; preds = %.lr.ph46.preheader.i, %.lr.ph46.i
  %indvars.iv56.i96 = phi i64 [ %indvars.iv.next57.i, %.lr.ph46.i ], [ %i.fy, %.lr.ph46.preheader.i ] ; 5 uses
  %i.gg = load ptr, ptr %i.er, align 8, !tbaa !75
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.gg, i64 %indvars.iv56.i96
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !78
  call void @free(ptr noundef %i.gi) #15
  %indvars.iv.next57.i = add nsw i64 %indvars.iv56.i96, 1 ; 2 uses
  %i.gj = load i32, ptr %i.eo, align 4, !tbaa !73
  %i.gk = sext i32 %i.gj to i64
  %i.gl = icmp slt i64 %indvars.iv.next57.i, %i.gk
  br i1 %i.gl, label %.lr.ph46.i, label %..critedge2.i.loopexit_crit_edge, !llvm.loop !80

..critedge2.i.loopexit_crit_edge:                 ; preds = %.lr.ph97
  %i.gm = trunc nsw i64 %indvars.iv56.i96 to i32
  br label %.critedge2.i, !llvm.loop !80

.critedge2.i.loopexit:                            ; preds = %.lr.ph46.i
  %i.gn = trunc nsw i64 %indvars.iv56.i96 to i32
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %.critedge2.i.loopexit, %.lr.ph46.preheader.i, %..critedge2.i.loopexit_crit_edge, %.critedge._crit_edge.i, %bb.u
  %.135.lcssa65.i = phi i32 [ %.135.lcssa.ph.i, %bb.u ], [ %.135.lcssa66.i, %.critedge._crit_edge.i ], [ %.135.lcssa66.i, %.lr.ph46.preheader.i ], [ %.135.lcssa66.i, %..critedge2.i.loopexit_crit_edge ], [ %.135.lcssa66.i, %.critedge2.i.loopexit ]
  %.137.i = phi i32 [ %.03650.i, %bb.u ], [ %i.ft, %.critedge._crit_edge.i ], [ %i.ft, %.lr.ph46.preheader.i ], [ %i.ft, %..critedge2.i.loopexit_crit_edge ], [ %i.ft, %.critedge2.i.loopexit ] ; 3 uses
  %.2.i = phi i32 [ %.052.i, %bb.u ], [ %.052.i, %.critedge._crit_edge.i ], [ %.052.i, %.lr.ph46.preheader.i ], [ %i.gm, %..critedge2.i.loopexit_crit_edge ], [ %i.gn, %.critedge2.i.loopexit ]
  %i.go = add nsw i32 %.2.i, 1                    ; 2 uses
  %i.gp = load i32, ptr %i.eo, align 4, !tbaa !73
  %i.gq = icmp slt i32 %i.go, %i.gp
  br i1 %i.gq, label %.preheader.i, label %correct_untracked_entries.exit, !llvm.loop !81

correct_untracked_entries.exit:                   ; preds = %.critedge2.i
  store i32 %.137.i, ptr %i.eo, align 4, !tbaa !73
  %i.gr = icmp sgt i32 %.137.i, 0
  br i1 %i.gr, label %.lr.ph100, label %._crit_edge101

.lr.ph100:                                        ; preds = %correct_untracked_entries.exit
  %i.gs = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.gt = getelementptr inbounds nuw i8, ptr %13, i64 24
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph100, %bb.aa
  %indvars.iv118 = phi i64 [ 0, %.lr.ph100 ], [ %indvars.iv.next119, %bb.aa ] ; 2 uses
  %i.gu = load ptr, ptr %i.gs, align 8, !tbaa !75
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv118
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !78 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  %i.gx = load ptr, ptr @the_repository, align 8, !tbaa !28
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 432
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !72
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 4 ; 4 uses
  %i.hb = load i32, ptr %i.gw, align 4, !tbaa !15
  %i.hc = call i32 @index_name_is_other(ptr noundef %i.gz, ptr noundef nonnull %i.ha, i32 noundef %i.hb) #15
  %.not71 = icmp eq i32 %i.hc, 0
  br i1 %.not71, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hd = call i32 @lstat64(ptr noundef nonnull %i.ha, ptr noundef nonnull %13) #15
  %.not72 = icmp eq i32 %i.hd, 0
  br i1 %.not72, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @die_errno(ptr noundef nonnull @.str.20, ptr noundef nonnull %i.ha) #16
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.he = load i32, ptr %i.gt, align 8, !tbaa !82
  %i.hf = and i32 %i.he, 61440
  %i.hg = icmp ne i32 %i.hf, 16384
  %i.hh = load i32, ptr %i.b, align 4
  %i.hi = icmp ne i32 %i.hh, 0
  %or.cond11 = select i1 %i.hg, i1 true, i1 %i.hi
  br i1 %or.cond11, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.hj = call ptr @relative_path(ptr noundef nonnull %i.ha, ptr noundef %2, ptr noundef nonnull %10) #15
  %i.hk = call ptr @string_list_append(ptr noundef nonnull @del_list, ptr noundef %i.hj) #15 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.v, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %i.hl = load i32, ptr %i.eo, align 4, !tbaa !73
  %i.hm = sext i32 %i.hl to i64
  %i.hn = icmp slt i64 %indvars.iv.next119, %i.hm
  br i1 %i.hn, label %bb.v, label %._crit_edge101, !llvm.loop !85

._crit_edge101:                                   ; preds = %bb.aa, %correct_untracked_entries.exit.thread, %correct_untracked_entries.exit
  call void @dir_clear(ptr noundef nonnull %8) #15
  %i.ho = load i32, ptr @interactive, align 4, !tbaa !15
  %i.hp = icmp ne i32 %i.ho, 0
  %i.hq = load i64, ptr getelementptr inbounds nuw (i8, ptr @del_list, i64 8), align 8
  %i.hr = icmp ne i64 %i.hq, 0
  %or.cond13 = select i1 %i.hp, i1 %i.hr, i1 false
  br i1 %or.cond13, label %.preheader.i75, label %bb.al

.preheader.i75:                                   ; preds = %._crit_edge101
  %i.hs = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ht = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.hu = getelementptr inbounds nuw i8, ptr %5, i64 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ak, %.preheader.i75
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %6, ptr noundef nonnull align 16 dereferenceable(192) @__const.interactive_main_loop.menus, i64 192, i1 false)
  store <2 x ptr> <ptr @.str.41, ptr @.str.42>, ptr %4, align 16, !tbaa !12
  store i32 1, ptr %i.hs, align 16, !tbaa !86
  store i32 2, ptr %5, align 8, !tbaa !88
  store ptr %6, ptr %i.ht, align 8, !tbaa !90
  store i32 6, ptr %i.hu, align 4, !tbaa !91
  %i.hv = load i32, ptr @clean_use_color, align 4, !tbaa !15
  %i.hw = call zeroext i1 @want_color_fd(i32 noundef 1, i32 noundef %i.hv) #15
  %.0.i.i.i = select i1 %i.hw, ptr getelementptr inbounds nuw (i8, ptr @clean_colors, i64 225), ptr @.str.19
  %i.hx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.55, ptr noundef nonnull %.0.i.i.i) ; 0 uses
  %i.hy = load i64, ptr getelementptr inbounds nuw (i8, ptr @del_list, i64 8), align 8, !tbaa !66 ; 2 uses
  %i.hz = load i32, ptr @git_gettext_enabled, align 4, !tbaa !15
  %.not.i.i = icmp eq i32 %i.hz, 0
  br i1 %.not.i.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ia = icmp eq i64 %i.hy, 1
  %i.ib = select i1 %i.ia, ptr @.str.43, ptr @.str.44
  br label %Q_.exit.i

bb.ad:                                            ; preds = %bb.ab
  %i.ic = call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i64 noundef %i.hy, i32 noundef 5) #15
  br label %Q_.exit.i

Q_.exit.i:                                        ; preds = %bb.ad, %bb.ac
  %.0.i.i = phi ptr [ %i.ic, %bb.ad ], [ %i.ib, %bb.ac ]
  %i.id = call i32 (ptr, ...) @printf_ln(ptr noundef %.0.i.i) #15 ; 0 uses
  %i.ie = load i32, ptr @clean_use_color, align 4, !tbaa !15
  %i.if = call zeroext i1 @want_color_fd(i32 noundef 1, i32 noundef %i.ie) #15
  %.0.i.i12.i = select i1 %i.if, ptr @clean_colors, ptr @.str.19
  %i.ig = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.55, ptr noundef nonnull %.0.i.i12.i) ; 0 uses
  call fastcc void @pretty_print_dels()
  %i.ih = call fastcc ptr @list_and_choose(ptr noundef %4, ptr noundef %5) ; 3 uses
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !15 ; 2 uses
  %.not9.i = icmp eq i32 %i.ii, -1
  br i1 %.not9.i, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %Q_.exit.i
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr inbounds [32 x i8], ptr %6, i64 %i.ij
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !92
  %i.in = call i32 %i.im() #15, !inline_history !94
  %.not10.i = icmp eq i32 %i.in, 10
  br i1 %.not10.i, label %.thread19.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @free(ptr noundef nonnull %i.ih) #15
  %i.io = load i64, ptr getelementptr inbounds nuw (i8, ptr @del_list, i64 8), align 8, !tbaa !66
  %.not11.i = icmp eq i64 %i.io, 0
  br i1 %.not11.i, label %bb.ag, label %bb.ak, !llvm.loop !95

bb.ag:                                            ; preds = %bb.af
  %i.ip = load i32, ptr @clean_use_color, align 4, !tbaa !15
  %i.iq = call zeroext i1 @want_color_fd(i32 noundef 1, i32 noundef %i.ip) #15
  %.0.i.i13.i = select i1 %i.iq, ptr getelementptr inbounds nuw (i8, ptr @clean_colors, i64 375), ptr @.str.19
  %i.ir = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.55, ptr noundef nonnull %.0.i.i13.i) ; 0 uses
  %i.is = load i32, ptr @git_gettext_enabled, align 4, !tbaa !15
  %.not4.i.i = icmp eq i32 %i.is, 0
  br i1 %.not4.i.i, label %.thread23.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.it = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #15
  br label %.thread23.i

.thread23.i:                                      ; preds = %bb.ah, %bb.ag
  %.0.i14.i = phi ptr [ %i.it, %bb.ah ], [ @.str.45, %bb.ag ]
  %i.iu = call i32 (ptr, ...) @printf_ln(ptr noundef %.0.i14.i) #15 ; 0 uses
  %i.iv = load i32, ptr @clean_use_color, align 4, !tbaa !15
  %i.iw = call zeroext i1 @want_color_fd(i32 noundef 1, i32 noundef %i.iv) #15
  %.0.i.i15.i = select i1 %i.iw, ptr @clean_colors, ptr @.str.19
  %i.ix = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.55, ptr noundef nonnull %.0.i.i15.i) ; 0 uses
  br label %interactive_main_loop.exit

bb.ai:                                            ; preds = %Q_.exit.i
  call void @string_list_clear(ptr noundef nonnull @del_list, i32 noundef 0) #15
  %i.iy = load i32, ptr @git_gettext_enabled, align 4, !tbaa !15
  %.not4.i.i.i = icmp eq i32 %i.iy, 0
  br i1 %.not4.i.i.i, label %quit_cmd.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.iz = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.53, i32 noundef 5) #15
  br label %quit_cmd.exit.i

quit_cmd.exit.i:                                  ; preds = %bb.aj, %bb.ai
  %.0.i.i16.i = phi ptr [ %i.iz, %bb.aj ], [ @.str.53, %bb.ai ]
  %i.ja = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.0.i.i16.i) ; 0 uses
  br label %.thread19.i

.thread19.i:                                      ; preds = %bb.ae, %quit_cmd.exit.i
  call void @free(ptr noundef nonnull %i.ih) #15
  br label %interactive_main_loop.exit

bb.ak:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.ab

interactive_main_loop.exit:                       ; preds = %.thread23.i, %.thread19.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
end_hunk_0
