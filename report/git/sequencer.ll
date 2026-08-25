Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/sequencer?download=true
inline.NumInlined: 1007
inline.NumDeleted: 148
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumUnrolled: 35
begin_hunk_0_@sequencer_continue:bb.a
  %i.hs = load ptr, ptr @rebase_path_amend.ret, align 8, !tbaa !12 ; 2 uses
  %.not.i122.i = icmp eq ptr %i.hs, null
  br i1 %.not.i122.i, label %bb.cy, label %rebase_path_amend.exit.i

bb.cy:                                            ; preds = %bb.cx
  %i.ht = load ptr, ptr @the_repository, align 8, !tbaa !15
  %i.hu = call ptr (ptr, ptr, ...) @repo_git_path(ptr noundef %i.ht, ptr noundef nonnull @.str.278) #21 ; 2 uses
  store ptr %i.hu, ptr @rebase_path_amend.ret, align 8, !tbaa !12
  br label %rebase_path_amend.exit.i

rebase_path_amend.exit.i:                         ; preds = %bb.cy, %bb.cx
  %i.hv = phi ptr [ %i.hu, %bb.cy ], [ %i.hs, %bb.cx ]
  %i.hw = call i32 @file_exists(ptr noundef %i.hv) #21
  %.not87.i = icmp eq i32 %i.hw, 0
  br i1 %.not87.i, label %.thread229.i, label %bb.cz

bb.cz:                                            ; preds = %rebase_path_amend.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.hx = call i32 @repo_get_oid(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef nonnull %3) #21
  %.not88.i = icmp eq i32 %i.hx, 0
  br i1 %.not88.i, label %bb.dc, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.hy = load i32, ptr @git_gettext_enabled, align 4, !tbaa !27
  %.not4.i123.i = icmp eq i32 %i.hy, 0
  br i1 %.not4.i123.i, label %_.exit125.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.hz = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.262, i32 noundef 5) #21
  br label %_.exit125.i

_.exit125.i:                                      ; preds = %bb.db, %bb.da
  %.0.i124.i = phi ptr [ %i.hz, %bb.db ], [ @.str.262, %bb.da ]
  %i.ia = call i32 (ptr, ...) @error(ptr noundef %.0.i124.i) #21 ; 0 uses
  br label %.thread221.i

bb.dc:                                            ; preds = %bb.cz
  %i.ib = load ptr, ptr @rebase_path_amend.ret, align 8, !tbaa !12 ; 2 uses
  %.not.i126.i = icmp eq ptr %i.ib, null
  br i1 %.not.i126.i, label %bb.dd, label %rebase_path_amend.exit127.i

bb.dd:                                            ; preds = %bb.dc
  %i.ic = load ptr, ptr @the_repository, align 8, !tbaa !15
  %i.id = call ptr (ptr, ptr, ...) @repo_git_path(ptr noundef %i.ic, ptr noundef nonnull @.str.278) #21 ; 2 uses
  store ptr %i.id, ptr @rebase_path_amend.ret, align 8, !tbaa !12
  br label %rebase_path_amend.exit127.i

rebase_path_amend.exit127.i:                      ; preds = %bb.dd, %bb.dc
  %i.ie = phi ptr [ %i.id, %bb.dd ], [ %i.ib, %bb.dc ]
  %i.if = call i32 @read_oneliner(ptr noundef nonnull %2, ptr noundef %i.ie, i32 noundef 0)
  %.not89.i = icmp eq i32 %i.if, 0
  br i1 %.not89.i, label %bb.de, label %bb.dh

bb.de:                                            ; preds = %rebase_path_amend.exit127.i
  %i.ig = load i32, ptr @git_gettext_enabled, align 4, !tbaa !27
  %.not4.i128.i = icmp eq i32 %i.ig, 0
  br i1 %.not4.i128.i, label %_.exit130.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ih = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.263, i32 noundef 5) #21
  br label %_.exit130.i

_.exit130.i:                                      ; preds = %bb.df, %bb.de
  %.0.i129.i = phi ptr [ %i.ih, %bb.df ], [ @.str.263, %bb.de ]
  %i.ii = load ptr, ptr @rebase_path_amend.ret, align 8, !tbaa !12 ; 2 uses
  %.not.i131.i = icmp eq ptr %i.ii, null
  br i1 %.not.i131.i, label %bb.dg, label %rebase_path_amend.exit132.i

bb.dg:                                            ; preds = %_.exit130.i
  %i.ij = load ptr, ptr @the_repository, align 8, !tbaa !15
  %i.ik = call ptr (ptr, ptr, ...) @repo_git_path(ptr noundef %i.ij, ptr noundef nonnull @.str.278) #21 ; 2 uses
  store ptr %i.ik, ptr @rebase_path_amend.ret, align 8, !tbaa !12
  br label %rebase_path_amend.exit132.i

rebase_path_amend.exit132.i:                      ; preds = %bb.dg, %_.exit130.i
  %i.il = phi ptr [ %i.ik, %bb.dg ], [ %i.ii, %_.exit130.i ]
  %i.im = call i32 (ptr, ...) @error(ptr noundef %.0.i129.i, ptr noundef %i.il) #21 ; 0 uses
  br label %.thread221.i

bb.dh:                                            ; preds = %rebase_path_amend.exit127.i
  %i.in = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !37
  %i.ip = call i32 @get_oid_hex(ptr noundef %i.io, ptr noundef nonnull %4) #21
  %.not90.i = icmp eq i32 %i.ip, 0
  br i1 %.not90.i, label %bb.dl, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.iq = load i32, ptr @git_gettext_enabled, align 4, !tbaa !27
  %.not4.i133.i = icmp eq i32 %i.iq, 0
  br i1 %.not4.i133.i, label %_.exit135.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ir = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.264, i32 noundef 5) #21
  br label %_.exit135.i

_.exit135.i:                                      ; preds = %bb.dj, %bb.di
  %.0.i134.i = phi ptr [ %i.ir, %bb.dj ], [ @.str.264, %bb.di ]
  %i.is = load ptr, ptr @rebase_path_amend.ret, align 8, !tbaa !12 ; 2 uses
  %.not.i136.i = icmp eq ptr %i.is, null
  br i1 %.not.i136.i, label %bb.dk, label %rebase_path_amend.exit137.i

bb.dk:                                            ; preds = %_.exit135.i
  %i.it = load ptr, ptr @the_repository, align 8, !tbaa !15
  %i.iu = call ptr (ptr, ptr, ...) @repo_git_path(ptr noundef %i.it, ptr noundef nonnull @.str.278) #21 ; 2 uses
  store ptr %i.iu, ptr @rebase_path_amend.ret, align 8, !tbaa !12
  br label %rebase_path_amend.exit137.i

rebase_path_amend.exit137.i:                      ; preds = %bb.dk, %_.exit135.i
  %i.iv = phi ptr [ %i.iu, %bb.dk ], [ %i.is, %_.exit135.i ]
  %i.iw = call i32 (ptr, ...) @error(ptr noundef %.0.i134.i, ptr noundef %i.iv) #21 ; 0 uses
  br label %.thread221.i

bb.dl:                                            ; preds = %bb.dh
  br i1 %.not85.i, label %.critedge114.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ix = load i128, ptr %3, align 4
  %i.iy = load i128, ptr %4, align 4
  %i.iz = xor i128 %i.ix, %i.iy
  %i.ja = getelementptr i8, ptr %3, i64 16
  %i.jb = getelementptr i8, ptr %4, i64 16
  %i.jc = load i128, ptr %i.ja, align 4
  %i.jd = load i128, ptr %i.jb, align 4
  %i.je = xor i128 %i.jc, %i.jd
  %i.jf = or i128 %i.iz, %i.je
  %i.jg = icmp ne i128 %i.jf, 0
  %i.jh = zext i1 %i.jg to i32
  %.not.i138.not.i = icmp eq i32 %i.jh, 0
  br i1 %.not.i138.not.i, label %.thread251.i, label %bb.dn

.thread251.i:                                     ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %.thread237.i

bb.dn:                                            ; preds = %bb.dm
  %i.ji = load i32, ptr @git_gettext_enabled, align 4, !tbaa !27
  %.not4.i139.i = icmp eq i32 %i.ji, 0
  br i1 %.not4.i139.i, label %_.exit141.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.jj = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.265, i32 noundef 5) #21
  br label %_.exit141.i

_.exit141.i:                                      ; preds = %bb.do, %bb.dn
  %.0.i140.i = phi ptr [ %i.jj, %bb.do ], [ @.str.265, %bb.dn ]
  %i.jk = call i32 (ptr, ...) @error(ptr noundef %.0.i140.i) #21 ; 0 uses
  br label %.thread221.i

.critedge114.i:                                   ; preds = %bb.dl
  %i.jl = getelementptr inbounds nuw i8, ptr %i.gy, i64 48 ; 5 uses
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !184
  %.not92.i = icmp eq i32 %i.jm, 0
  br i1 %.not92.i, label %.sink.split.i62, label %bb.dp

bb.dp:                                            ; preds = %.critedge114.i
  %i.jn = load i128, ptr %3, align 4
  %i.jo = load i128, ptr %4, align 4
  %i.jp = xor i128 %i.jn, %i.jo
  %i.jq = getelementptr i8, ptr %3, i64 16
  %i.jr = getelementptr i8, ptr %4, i64 16
  %i.js = load i128, ptr %i.jq, align 4
  %i.jt = load i128, ptr %i.jr, align 4
  %i.ju = xor i128 %i.js, %i.jt
  %i.jv = or i128 %i.jp, %i.ju
  %i.jw = icmp ne i128 %i.jv, 0
  %i.jx = zext i1 %i.jw to i32
  %.not.i143.not.i = icmp eq i32 %i.jx, 0
  br i1 %.not.i143.not.i, label %bb.dq, label %bb.ds

bb.dq:                                            ; preds = %bb.dp
  %i.jy = load ptr, ptr @rebase_path_stopped_sha.ret, align 8, !tbaa !12 ; 2 uses
  %.not.i144.i = icmp eq ptr %i.jy, null
  br i1 %.not.i144.i, label %bb.dr, label %rebase_path_stopped_sha.exit.i

bb.dr:                                            ; preds = %bb.dq
  %i.jz = load ptr, ptr @the_repository, align 8, !tbaa !15
  %i.ka = call ptr (ptr, ptr, ...) @repo_git_path(ptr noundef %i.jz, ptr noundef nonnull @.str.304) #21 ; 2 uses
  store ptr %i.ka, ptr @rebase_path_stopped_sha.ret, align 8, !tbaa !12
  br label %rebase_path_stopped_sha.exit.i

rebase_path_stopped_sha.exit.i:                   ; preds = %bb.dr, %bb.dq
  %i.kb = phi ptr [ %i.ka, %bb.dr ], [ %i.jy, %bb.dq ]
  %i.kc = call i32 @file_exists(ptr noundef %i.kb) #21
  %.not94.i = icmp eq i32 %i.kc, 0
  br i1 %.not94.i, label %bb.ds, label %bb.dy

bb.ds:                                            ; preds = %rebase_path_stopped_sha.exit.i, %bb.dp
  %i.kd = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ke = load i32, ptr %i.kd, align 8, !tbaa !147 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !146 ; 2 uses
  %i.kh = icmp slt i32 %i.ke, %i.kg
  br i1 %i.kh, label %.lr.ph.i.i63, label %peek_command.exit.thread.i

.lr.ph.i.i63:                                     ; preds = %bb.ds
  %i.ki = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !138
  %i.kk = sext i32 %i.ke to i64
  br label %bb.du

bb.dt:                                            ; preds = %bb.du
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next.i.i to i32
  %exitcond271.not.i = icmp eq i32 %i.kg, %lftr.wideiv.i.i
  br i1 %exitcond271.not.i, label %peek_command.exit.thread.i, label %bb.du, !llvm.loop !187

bb.du:                                            ; preds = %bb.dt, %.lr.ph.i.i63
  %indvars.iv.i.i = phi i64 [ %i.kk, %.lr.ph.i.i63 ], [ %indvars.iv.next.i.i, %bb.dt ] ; 2 uses
  %i.kl = getelementptr inbounds [40 x i8], ptr %i.kj, i64 %indvars.iv.i.i
  %i.km = load i32, ptr %i.kl, align 8, !tbaa !151 ; 2 uses
  %i.kn = icmp ult i32 %i.km, 12
  br i1 %i.kn, label %peek_command.exit.i, label %bb.dt

peek_command.exit.i:                              ; preds = %bb.du
  %i.ko = and i32 %i.km, 14
  %.not257.i = icmp eq i32 %i.ko, 4
  br i1 %.not257.i, label %.sink.split.i62, label %peek_command.exit.thread.i

peek_command.exit.thread.i:                       ; preds = %bb.dt, %peek_command.exit.i, %bb.ds
  %i.kp = load ptr, ptr @rebase_path_fixup_msg.ret, align 8, !tbaa !12 ; 2 uses
  %.not.i145.i = icmp eq ptr %i.kp, null
  br i1 %.not.i145.i, label %bb.dv, label %rebase_path_fixup_msg.exit.i

bb.dv:                                            ; preds = %peek_command.exit.thread.i
  %i.kq = load ptr, ptr @the_repository, align 8, !tbaa !15
  %i.kr = call ptr (ptr, ptr, ...) @repo_git_path(ptr noundef %i.kq, ptr noundef nonnull @.str.279) #21 ; 2 uses
  store ptr %i.kr, ptr @rebase_path_fixup_msg.ret, align 8, !tbaa !12
  br label %rebase_path_fixup_msg.exit.i

rebase_path_fixup_msg.exit.i:                     ; preds = %bb.dv, %peek_command.exit.thread.i
  %i.ks = phi ptr [ %i.kr, %bb.dv ], [ %i.kp, %peek_command.exit.thread.i ]
  %i.kt = call i32 @unlink(ptr noundef %i.ks) #21 ; 0 uses
  %i.ku = load ptr, ptr @rebase_path_squash_msg.ret, align 8, !tbaa !12 ; 2 uses
  %.not.i146.i = icmp eq ptr %i.ku, null
  br i1 %.not.i146.i, label %bb.dw, label %rebase_path_squash_msg.exit.i

bb.dw:                                            ; preds = %rebase_path_fixup_msg.exit.i
  %i.kv = load ptr, ptr @the_repository, align 8, !tbaa !15
  %i.kw = call ptr (ptr, ptr, ...) @repo_git_path(ptr noundef %i.kv, ptr noundef nonnull @.str.280) #21 ; 2 uses
  store ptr %i.kw, ptr @rebase_path_squash_msg.ret, align 8, !tbaa !12
  br label %rebase_path_squash_msg.exit.i

rebase_path_squash_msg.exit.i:                    ; preds = %bb.dw, %rebase_path_fixup_msg.exit.i
  %i.kx = phi ptr [ %i.kw, %bb.dw ], [ %i.ku, %rebase_path_fixup_msg.exit.i ]
  %i.ky = call i32 @unlink(ptr noundef %i.kx) #21 ; 0 uses
  %i.kz = load ptr, ptr @rebase_path_current_fixups.ret, align 8, !tbaa !12 ; 2 uses
  %.not.i147.i = icmp eq ptr %i.kz, null
  br i1 %.not.i147.i, label %bb.dx, label %rebase_path_current_fixups.exit.i61

bb.dx:                                            ; preds = %rebase_path_squash_msg.exit.i
  %i.la = load ptr, ptr @the_repository, align 8, !tbaa !15
  %i.lb = call ptr (ptr, ptr, ...) @repo_git_path(ptr noundef %i.la, ptr noundef nonnull @.str.233) #21 ; 2 uses
  store ptr %i.lb, ptr @rebase_path_current_fixups.ret, align 8, !tbaa !12
  br label %rebase_path_current_fixups.exit.i61

rebase_path_current_fixups.exit.i61:              ; preds = %bb.dx, %rebase_path_squash_msg.exit.i
  %i.lc = phi ptr [ %i.lb, %bb.dx ], [ %i.kz, %rebase_path_squash_msg.exit.i ]
  %i.ld = call i32 @unlink(ptr noundef %i.lc) #21 ; 0 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  call fastcc void @strbuf_setlen(ptr noundef nonnull %i.le, i64 noundef 0)
  store i32 0, ptr %i.jl, align 8, !tbaa !184
  br label %.sink.split.i62

bb.dy:                                            ; preds = %rebase_path_stopped_sha.exit.i
  %i.lf = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.lg = getelementptr inbounds nuw i8, ptr %i.gy, i64 40
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !182 ; 5 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.gy, i64 32
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !188 ; 2 uses
  %i.lk = load i32, ptr %i.jl, align 8, !tbaa !184
  %i.ll = add nsw i32 %i.lk, -1
  store i32 %i.ll, ptr %i.jl, align 8, !tbaa !184
  %i.lm = and i64 %i.lj, 4294967295
  %.not96.i = icmp eq i64 %i.lm, 0
  br i1 %.not96.i, label %bb.dz, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.dy
  %sext.i = shl i64 %i.lj, 32
  %i.ln = ashr exact i64 %sext.i, 32
  br label %.preheader.i

bb.dz:                                            ; preds = %bb.dy
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.71, i32 noundef 5334, ptr noundef nonnull @.str.266, ptr noundef %i.lh) #23
  unreachable

.preheader.i:                                     ; preds = %bb.ea, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ %i.ln, %.preheader.preheader.i ], [ %indvars.iv.next.i, %bb.ea ] ; 3 uses
  %i.lo = getelementptr i8, ptr %i.lh, i64 %indvars.iv.i
  %i.lp = getelementptr i8, ptr %i.lo, i64 -1
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !30
  %.not98.i = icmp eq i8 %i.lq, 10
  br i1 %.not98.i, label %.critedge.i, label %bb.ea

bb.ea:                                            ; preds = %.preheader.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %.not97.i = icmp eq i64 %indvars.iv.next.i, 0
  br i1 %.not97.i, label %.critedge.i, label %.preheader.i, !llvm.loop !189

.critedge.i:                                      ; preds = %bb.ea, %.preheader.i
  %.0.lcssa.i = phi i64 [ 0, %bb.ea ], [ %indvars.iv.i, %.preheader.i ] ; 2 uses
  call fastcc void @strbuf_setlen(ptr noundef nonnull %i.lf, i64 noundef %.0.lcssa.i)
  %i.lr = load ptr, ptr @rebase_path_current_fixups.ret, align 8, !tbaa !12 ; 2 uses
  %.not.i148.i = icmp eq ptr %i.lr, null
  br i1 %.not.i148.i, label %bb.eb, label %rebase_path_current_fixups.exit149.i

bb.eb:                                            ; preds = %.critedge.i
  %i.ls = load ptr, ptr @the_repository, align 8, !tbaa !15
  %i.lt = call ptr (ptr, ptr, ...) @repo_git_path(ptr noundef %i.ls, ptr noundef nonnull @.str.233) #21 ; 2 uses
  store ptr %i.lt, ptr @rebase_path_current_fixups.ret, align 8, !tbaa !12
  br label %rebase_path_current_fixups.exit149.i

rebase_path_current_fixups.exit149.i:             ; preds = %bb.eb, %.critedge.i
  %i.lu = phi ptr [ %i.lt, %bb.eb ], [ %i.lr, %.critedge.i ]
  %i.lv = call fastcc i32 @write_message(ptr noundef nonnull %i.lh, i64 noundef %.0.lcssa.i, ptr noundef %i.lu, i32 noundef 0)
  %i.lw = icmp slt i32 %i.lv, 0
  br i1 %i.lw, label %bb.ec, label %bb.ef

bb.ec:                                            ; preds = %rebase_path_current_fixups.exit149.i
  %i.lx = load i32, ptr @git_gettext_enabled, align 4, !tbaa !27
  %.not4.i150.i = icmp eq i32 %i.lx, 0
  br i1 %.not4.i150.i, label %_.exit152.i, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.ly = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.267, i32 noundef 5) #21
  br label %_.exit152.i

_.exit152.i:                                      ; preds = %bb.ed, %bb.ec
  %.0.i151.i = phi ptr [ %i.ly, %bb.ed ], [ @.str.267, %bb.ec ]
  %i.lz = load ptr, ptr @rebase_path_current_fixups.ret, align 8, !tbaa !12 ; 2 uses
  %.not.i153.i = icmp eq ptr %i.lz, null
  br i1 %.not.i153.i, label %bb.ee, label %rebase_path_current_fixups.exit154.i

bb.ee:                                            ; preds = %_.exit152.i
  %i.ma = load ptr, ptr @the_repository, align 8, !tbaa !15
  %i.mb = call ptr (ptr, ptr, ...) @repo_git_path(ptr noundef %i.ma, ptr noundef nonnull @.str.233) #21 ; 2 uses
  store ptr %i.mb, ptr @rebase_path_current_fixups.ret, align 8, !tbaa !12
  br label %rebase_path_current_fixups.exit154.i

rebase_path_current_fixups.exit154.i:             ; preds = %bb.ee, %_.exit152.i
  %i.mc = phi ptr [ %i.mb, %bb.ee ], [ %i.lz, %_.exit152.i ]
  %i.md = call i32 (ptr, ...) @error(ptr noundef %.0.i151.i, ptr noundef %i.mc) #21 ; 0 uses
  br label %.thread221.i

bb.ef:                                            ; preds = %rebase_path_current_fixups.exit149.i
  %i.me = load i32, ptr %i.jl, align 8, !tbaa !184
  %i.mf = icmp sgt i32 %i.me, 0
  %i.mg = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.mh = load i32, ptr %i.mg, align 8, !tbaa !147 ; 4 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.mj = load i32, ptr %i.mi, align 8, !tbaa !146 ; 4 uses
  br i1 %i.mf, label %bb.eg, label %._crit_edge.i

bb.eg:                                            ; preds = %bb.ef
  %i.mk = icmp slt i32 %i.mh, %i.mj
  br i1 %i.mk, label %.lr.ph.i156.i, label %peek_command.exit159.thread.i

.lr.ph.i156.i:                                    ; preds = %bb.eg
  %i.ml = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !138
  %i.mn = sext i32 %i.mh to i64
  br label %bb.ei

bb.eh:                                            ; preds = %bb.ei
  %indvars.iv.next.i158.i = add nsw i64 %indvars.iv.i157.i, 1 ; 2 uses
  %lftr.wideiv.i159.i = trunc i64 %indvars.iv.next.i158.i to i32
  %exitcond.not.i.a = icmp eq i32 %i.mj, %lftr.wideiv.i159.i
  br i1 %exitcond.not.i.a, label %peek_command.exit159.thread.i, label %bb.ei, !llvm.loop !187

bb.ei:                                            ; preds = %bb.eh, %.lr.ph.i156.i
  %indvars.iv.i157.i = phi i64 [ %i.mn, %.lr.ph.i156.i ], [ %indvars.iv.next.i158.i, %bb.eh ] ; 2 uses
  %i.mo = getelementptr inbounds [40 x i8], ptr %i.mm, i64 %indvars.iv.i157.i
  %i.mp = load i32, ptr %i.mo, align 8, !tbaa !151 ; 2 uses
  %i.mq = icmp ult i32 %i.mp, 12
  br i1 %i.mq, label %peek_command.exit159.i, label %bb.eh

peek_command.exit159.i:                           ; preds = %bb.ei
  %i.mr = and i32 %i.mp, 14
  %.not255.i = icmp eq i32 %i.mr, 4
  br i1 %.not255.i, label %._crit_edge.i, label %peek_command.exit159.thread.i

peek_command.exit159.thread.i:                    ; preds = %bb.eh, %peek_command.exit159.i, %bb.eg
  %i.ms = call zeroext i1 @starts_with(ptr noundef nonnull %i.lh, ptr noundef nonnull @.str.268) #21
  br i1 %i.ms, label %.sink.split.i62, label %bb.ej

bb.ej:                                            ; preds = %peek_command.exit159.thread.i
  %i.mt = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.lh, ptr noundef nonnull dereferenceable(1) @.str.269) #22
  %.not100.i = icmp eq ptr %i.mt, null
  %i.mu = select i1 %.not100.i, i32 13, i32 7
  br label %.sink.split.i62

._crit_edge.i:                                    ; preds = %peek_command.exit159.i, %bb.ef
  %i.mv = icmp slt i32 %i.mh, %i.mj
  br i1 %i.mv, label %.lr.ph.i161.i, label %.sink.split.i62

.lr.ph.i161.i:                                    ; preds = %._crit_edge.i
  %i.mw = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !138
  %i.my = sext i32 %i.mh to i64
  br label %bb.el

bb.ek:                                            ; preds = %bb.el
  %indvars.iv.next.i163.i = add nsw i64 %indvars.iv.i162.i, 1 ; 2 uses
  %lftr.wideiv.i166.i = trunc i64 %indvars.iv.next.i163.i to i32
  %exitcond270.not.i = icmp eq i32 %i.mj, %lftr.wideiv.i166.i
  br i1 %exitcond270.not.i, label %.sink.split.i62, label %bb.el, !llvm.loop !187

bb.el:                                            ; preds = %bb.ek, %.lr.ph.i161.i
  %indvars.iv.i162.i = phi i64 [ %i.my, %.lr.ph.i161.i ], [ %indvars.iv.next.i163.i, %bb.ek ] ; 2 uses
  %i.mz = getelementptr inbounds [40 x i8], ptr %i.mx, i64 %indvars.iv.i162.i
  %i.na = load i32, ptr %i.mz, align 8, !tbaa !151 ; 2 uses
  %i.nb = icmp ult i32 %i.na, 12
  br i1 %i.nb, label %peek_command.exit164.i, label %bb.ek

peek_command.exit164.i:                           ; preds = %bb.el
  %i.nc = and i32 %i.na, 14
  %.not256.i = icmp eq i32 %i.nc, 4
  br i1 %.not256.i, label %bb.em, label %.sink.split.i62

bb.em:                                            ; preds = %peek_command.exit164.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.nd = load ptr, ptr @rebase_path_squash_msg.ret, align 8, !tbaa !12 ; 2 uses
  %.not.i165.i = icmp eq ptr %i.nd, null
  br i1 %.not.i165.i, label %bb.en, label %rebase_path_squash_msg.exit166.i

bb.en:                                            ; preds = %bb.em
  %i.ne = load ptr, ptr @the_repository, align 8, !tbaa !15
  %i.nf = call ptr (ptr, ptr, ...) @repo_git_path(ptr noundef %i.ne, ptr noundef nonnull @.str.280) #21 ; 2 uses
  store ptr %i.nf, ptr @rebase_path_squash_msg.ret, align 8, !tbaa !12
  br label %rebase_path_squash_msg.exit166.i

rebase_path_squash_msg.exit166.i:                 ; preds = %bb.en, %bb.em
  %i.ng = phi ptr [ %i.nf, %bb.en ], [ %i.nd, %bb.em ] ; 2 uses
  %i.nh = call ptr @get_commit_output_encoding() #21
  %i.ni = call fastcc i32 @parse_head(ptr noundef %0, ptr noundef %i.a)
  %.not102.i = icmp eq i32 %i.ni, 0
  br i1 %.not102.i, label %bb.eq, label %bb.eo

bb.eo:                                            ; preds = %rebase_path_squash_msg.exit166.i
  %i.nj = load i32, ptr @git_gettext_enabled, align 4, !tbaa !27
  %.not4.i167.i = icmp eq i32 %i.nj, 0
  br i1 %.not4.i167.i, label %_.exit169.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.nk = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.270, i32 noundef 5) #21
  br label %_.exit169.i

_.exit169.i:                                      ; preds = %bb.ep, %bb.eo
  %.0.i168.i = phi ptr [ %i.nk, %bb.ep ], [ @.str.270, %bb.eo ]
  %i.nl = call i32 (ptr, ...) @error(ptr noundef %.0.i168.i) #21 ; 0 uses
  br label %.thread208.i

bb.eq:                                            ; preds = %rebase_path_squash_msg.exit166.i
  %i.nm = load ptr, ptr %i.a, align 8, !tbaa !190 ; 4 uses
  %i.nn = call ptr @repo_logmsg_reencode(ptr noundef %0, ptr noundef %i.nm, ptr noundef null, ptr noundef %i.nh) #21 ; 4 uses
  %.not103.i = icmp eq ptr %i.nn, null
  br i1 %.not103.i, label %bb.er, label %bb.et

bb.er:                                            ; preds = %bb.eq
  %i.no = load i32, ptr @git_gettext_enabled, align 4, !tbaa !27
  %.not4.i170.i = icmp eq i32 %i.no, 0
  br i1 %.not4.i170.i, label %_.exit172.i, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.np = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.271, i32 noundef 5) #21
  br label %_.exit172.i

_.exit172.i:                                      ; preds = %bb.es, %bb.er
  %.0.i171.i = phi ptr [ %i.np, %bb.es ], [ @.str.271, %bb.er ]
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  %i.nr = call ptr @oid_to_hex(ptr noundef nonnull %i.nq) #21
  %i.ns = call i32 (ptr, ...) @error(ptr noundef %.0.i171.i, ptr noundef %i.nr) #21 ; 0 uses
  br label %bb.ew

bb.et:                                            ; preds = %bb.eq
  %i.nt = call i32 @find_commit_subject(ptr noundef nonnull %i.nn, ptr noundef nonnull %i.b) #21 ; 0 uses
  %i.nu = load ptr, ptr %i.b, align 8, !tbaa !12  ; 2 uses
  %i.nv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.nu) #22
  %i.nw = call fastcc i32 @write_message(ptr noundef nonnull %i.nu, i64 noundef %i.nv, ptr noundef %i.ng, i32 noundef 0)
  %.not104.i = icmp eq i32 %i.nw, 0
  br i1 %.not104.i, label %bb.ex, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.nx = load i32, ptr @git_gettext_enabled, align 4, !tbaa !27
  %.not4.i173.i = icmp eq i32 %i.nx, 0
  br i1 %.not4.i173.i, label %_.exit175.i, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.ny = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.267, i32 noundef 5) #21
  br label %_.exit175.i

_.exit175.i:                                      ; preds = %bb.ev, %bb.eu
  %.0.i174.i = phi ptr [ %i.ny, %bb.ev ], [ @.str.267, %bb.eu ]
  %i.nz = call i32 (ptr, ...) @error(ptr noundef %.0.i174.i, ptr noundef %i.ng) #21 ; 0 uses
  br label %bb.ew

bb.ew:                                            ; preds = %_.exit175.i, %_.exit172.i
  call void @repo_unuse_commit_buffer(ptr noundef %0, ptr noundef %i.nm, ptr noundef %i.nn) #21
  br label %.thread208.i

.thread208.i:                                     ; preds = %bb.ew, %_.exit169.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.thread221.i

bb.ex:                                            ; preds = %bb.et
  call void @repo_unuse_commit_buffer(ptr noundef %0, ptr noundef %i.nm, ptr noundef nonnull %i.nn) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.sink.split.i62

.thread221.i:                                     ; preds = %.thread208.i, %rebase_path_current_fixups.exit154.i, %_.exit141.i, %rebase_path_amend.exit137.i, %rebase_path_amend.exit132.i, %_.exit125.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %commit_staged_changes.exit.thread

.thread229.i:                                     ; preds = %rebase_path_amend.exit.i
  br i1 %.not85.i, label %bb.ey, label %.thread237.i

.sink.split.i62:                                  ; preds = %bb.ek, %bb.ex, %peek_command.exit164.i, %._crit_edge.i, %bb.ej, %peek_command.exit159.thread.i, %rebase_path_current_fixups.exit.i61, %peek_command.exit.i, %.critedge114.i
  %.477235.ph.i = phi i1 [ true, %.critedge114.i ], [ true, %._crit_edge.i ], [ true, %peek_command.exit.i ], [ true, %rebase_path_current_fixups.exit.i61 ], [ true, %peek_command.exit164.i ], [ true, %bb.ex ], [ false, %bb.ej ], [ false, %peek_command.exit159.thread.i ], [ true, %bb.ek ]
  %.482234.ph.i = phi i32 [ 7, %.critedge114.i ], [ 7, %._crit_edge.i ], [ 7, %peek_command.exit.i ], [ 7, %rebase_path_current_fixups.exit.i61 ], [ 7, %peek_command.exit164.i ], [ 7, %bb.ex ], [ %i.mu, %bb.ej ], [ 7, %peek_command.exit159.thread.i ], [ 7, %bb.ek ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.ey

bb.ey:                                            ; preds = %.sink.split.i62, %.thread229.i
  %.477235.i = phi i1 [ true, %.thread229.i ], [ %.477235.ph.i, %.sink.split.i62 ]
  %.482234.i = phi i32 [ 3, %.thread229.i ], [ %.482234.ph.i, %.sink.split.i62 ]
  %i.oa = call ptr @get_main_ref_store(ptr noundef %0) #21
  %i.ob = call i32 @refs_ref_exists(ptr noundef %i.oa, ptr noundef nonnull @.str.51) #21
  %.not106.i = icmp eq i32 %i.ob, 0
  br i1 %.not106.i, label %bb.fc, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.oc = call ptr @get_main_ref_store(ptr noundef %0) #21
  %i.od = call i32 @refs_delete_ref(ptr noundef %i.oc, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.51, ptr noundef null, i32 noundef 1) #21
  %.not107.i = icmp eq i32 %i.od, 0
  br i1 %.not107.i, label %bb.fc, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.oe = load i32, ptr @git_gettext_enabled, align 4, !tbaa !27
  %.not4.i176.i = icmp eq i32 %i.oe, 0
  br i1 %.not4.i176.i, label %_.exit178.i, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.of = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.272, i32 noundef 5) #21
  br label %_.exit178.i

_.exit178.i:                                      ; preds = %bb.fb, %bb.fa
  %.0.i177.i = phi ptr [ %i.of, %bb.fb ], [ @.str.272, %bb.fa ]
  %i.og = call i32 (ptr, ...) @error(ptr noundef %.0.i177.i) #21 ; 0 uses
  br label %commit_staged_changes.exit.thread

bb.fc:                                            ; preds = %bb.ez, %bb.ey
  %i.oh = call ptr @git_path_merge_msg(ptr noundef %0) #21
  %i.oi = call i32 @unlink(ptr noundef %i.oh) #21
  %.not108.i = icmp eq i32 %i.oi, 0
  br i1 %.not108.i, label %bb.fg, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.oj = tail call ptr @__errno_location() #24
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !27
  %.not109.i = icmp eq i32 %i.ok, 2
  br i1 %.not109.i, label %bb.fg, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.ol = load i32, ptr @git_gettext_enabled, align 4, !tbaa !27
  %.not4.i179.i = icmp eq i32 %i.ol, 0
  br i1 %.not4.i179.i, label %_.exit181.i, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.om = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #21
  br label %_.exit181.i

_.exit181.i:                                      ; preds = %bb.ff, %bb.fe
  %.0.i180.i = phi ptr [ %i.om, %bb.ff ], [ @.str.6, %bb.fe ]
  %i.on = call ptr @git_path_merge_msg(ptr noundef %0) #21
  %i.oo = call i32 (ptr, ...) @error_errno(ptr noundef %.0.i180.i, ptr noundef %i.on) #21 ; 0 uses
  br label %commit_staged_changes.exit.thread

bb.fg:                                            ; preds = %bb.fd, %bb.fc
  br i1 %.477235.i, label %commit_staged_changes.exit, label %rebase_path_message.exit183.i

.thread237.i:                                     ; preds = %.thread229.i, %.thread251.i
  %.482233241.i = phi i32 [ 7, %.thread251.i ], [ 3, %.thread229.i ] ; 2 uses
  %i.op = load ptr, ptr @rebase_path_message.ret, align 8, !tbaa !12 ; 2 uses
  %.not.i182.i = icmp eq ptr %i.op, null
  br i1 %.not.i182.i, label %bb.fh, label %rebase_path_message.exit183.i

bb.fh:                                            ; preds = %.thread237.i
  %i.oq = load ptr, ptr @the_repository, align 8, !tbaa !15
  %i.or = call ptr (ptr, ptr, ...) @repo_git_path(ptr noundef %i.oq, ptr noundef nonnull @.str.276) #21 ; 2 uses
  store ptr %i.or, ptr @rebase_path_message.ret, align 8, !tbaa !12
  br label %rebase_path_message.exit183.i

rebase_path_message.exit183.i:                    ; preds = %bb.fh, %.thread237.i, %bb.fg
  %.482232.i = phi i32 [ %.482233241.i, %bb.fh ], [ %.482234.i, %bb.fg ], [ %.482233241.i, %.thread237.i ]
  %.not111228.i = phi i1 [ true, %bb.fh ], [ false, %bb.fg ], [ true, %.thread237.i ]
  %i.os = phi ptr [ %i.or, %bb.fh ], [ null, %bb.fg ], [ %i.op, %.thread237.i ]
  %i.ot = call fastcc i32 @run_git_commit(ptr noundef %i.os, ptr noundef %i.gz, ptr noundef nonnull %1, i32 noundef %.482232.i)
  %.not112.i = icmp eq i32 %i.ot, 0
  br i1 %.not112.i, label %bb.fk, label %bb.fi

end_hunk_0
begin_hunk_1_@sequencer_continue:bb.a
  br i1 %.not.i189.i, label %bb.fn, label %rebase_path_fixup_msg.exit190.i

bb.fn:                                            ; preds = %bb.fm
  %i.ph = load ptr, ptr @the_repository, align 8, !tbaa !15
  %i.pi = call ptr (ptr, ptr, ...) @repo_git_path(ptr noundef %i.ph, ptr noundef nonnull @.str.279) #21 ; 2 uses
  store ptr %i.pi, ptr @rebase_path_fixup_msg.ret, align 8, !tbaa !12
  br label %rebase_path_fixup_msg.exit190.i

rebase_path_fixup_msg.exit190.i:                  ; preds = %bb.fn, %bb.fm
  %i.pj = phi ptr [ %i.pi, %bb.fn ], [ %i.pg, %bb.fm ]
  %i.pk = call i32 @unlink(ptr noundef %i.pj) #21 ; 0 uses
  %i.pl = load ptr, ptr @rebase_path_squash_msg.ret, align 8, !tbaa !12 ; 2 uses
  %.not.i191.i = icmp eq ptr %i.pl, null
  br i1 %.not.i191.i, label %bb.fo, label %rebase_path_squash_msg.exit192.i

bb.fo:                                            ; preds = %rebase_path_fixup_msg.exit190.i
  %i.pm = load ptr, ptr @the_repository, align 8, !tbaa !15
  %i.pn = call ptr (ptr, ptr, ...) @repo_git_path(ptr noundef %i.pm, ptr noundef nonnull @.str.280) #21 ; 2 uses
  store ptr %i.pn, ptr @rebase_path_squash_msg.ret, align 8, !tbaa !12
  br label %rebase_path_squash_msg.exit192.i

rebase_path_squash_msg.exit192.i:                 ; preds = %bb.fo, %rebase_path_fixup_msg.exit190.i
  %i.po = phi ptr [ %i.pn, %bb.fo ], [ %i.pl, %rebase_path_fixup_msg.exit190.i ]
  %i.pp = call i32 @unlink(ptr noundef %i.po) #21 ; 0 uses
  br label %bb.fp

bb.fp:                                            ; preds = %rebase_path_squash_msg.exit192.i, %rebase_path_amend.exit188.i
  %i.pq = getelementptr inbounds nuw i8, ptr %i.gy, i64 48 ; 2 uses
  %i.pr = load i32, ptr %i.pq, align 8, !tbaa !184
  %i.ps = icmp sgt i32 %i.pr, 0
  br i1 %i.ps, label %bb.fq, label %commit_staged_changes.exit

bb.fq:                                            ; preds = %bb.fp
  %i.pt = load ptr, ptr @rebase_path_current_fixups.ret, align 8, !tbaa !12 ; 2 uses
  %.not.i193.i = icmp eq ptr %i.pt, null
  br i1 %.not.i193.i, label %bb.fr, label %rebase_path_current_fixups.exit194.i

bb.fr:                                            ; preds = %bb.fq
  %i.pu = load ptr, ptr @the_repository, align 8, !tbaa !15
  %i.pv = call ptr (ptr, ptr, ...) @repo_git_path(ptr noundef %i.pu, ptr noundef nonnull @.str.233) #21 ; 2 uses
  store ptr %i.pv, ptr @rebase_path_current_fixups.ret, align 8, !tbaa !12
  br label %rebase_path_current_fixups.exit194.i

rebase_path_current_fixups.exit194.i:             ; preds = %bb.fr, %bb.fq
  %i.pw = phi ptr [ %i.pv, %bb.fr ], [ %i.pt, %bb.fq ]
  %i.px = call i32 @unlink(ptr noundef %i.pw) #21 ; 0 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.gy, i64 32
  store i64 0, ptr %i.py, align 8, !tbaa !39
  %i.pz = getelementptr inbounds nuw i8, ptr %i.gy, i64 40
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !37 ; 2 uses
  %.not9.i.i58 = icmp eq ptr %i.qa, @strbuf_slopbuf
  br i1 %.not9.i.i58, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %rebase_path_current_fixups.exit194.i
  store i8 0, ptr %i.qa, align 1, !tbaa !30
  br label %strbuf_setlen.exit.i59

bb.ft:                                            ; preds = %rebase_path_current_fixups.exit194.i
  %i.qb = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !30
  %.not10.i.i60 = icmp eq i8 %i.qb, 0
  br i1 %.not10.i.i60, label %strbuf_setlen.exit.i59, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  call void @__assert_fail(ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.123, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #23
  unreachable

strbuf_setlen.exit.i59:                           ; preds = %bb.ft, %bb.fs
  store i32 0, ptr %i.pq, align 8, !tbaa !184
  br label %commit_staged_changes.exit

commit_staged_changes.exit.thread:                ; preds = %_.exit.i55, %_.exit178.i, %_.exit181.i, %_.exit186.i, %_.exit121.i, %.thread221.i
  call void @strbuf_release(ptr noundef nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.gp

commit_staged_changes.exit:                       ; preds = %bb.fg, %bb.fp, %strbuf_setlen.exit.i59
  call void @strbuf_release(ptr noundef nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.fy

bb.fv:                                            ; preds = %read_populate_opts.exit.thread
  %i.qc = load ptr, ptr @git_path_todo_file.ret, align 8, !tbaa !12 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.qc, null
  br i1 %.not.i2.i, label %rebase_path_todo.exit.sink.split.i, label %get_todo_path.exit

rebase_path_todo.exit.sink.split.i:               ; preds = %bb.fv
  %i.qd = load ptr, ptr @the_repository, align 8, !tbaa !15
  %i.qe = call ptr (ptr, ptr, ...) @repo_git_path(ptr noundef %i.qd, ptr noundef nonnull @.str.133) #21 ; 2 uses
  store ptr %i.qe, ptr @git_path_todo_file.ret, align 8, !tbaa !12
  br label %get_todo_path.exit

get_todo_path.exit:                               ; preds = %bb.fv, %rebase_path_todo.exit.sink.split.i
  %.0.i = phi ptr [ %i.qe, %rebase_path_todo.exit.sink.split.i ], [ %i.qc, %bb.fv ]
  %i.qf = call i32 @file_exists(ptr noundef %.0.i) #21
  %.not34 = icmp eq i32 %i.qf, 0
  br i1 %.not34, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %get_todo_path.exit
  %i.qg = call fastcc i32 @continue_single_pick(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.gq

bb.fx:                                            ; preds = %get_todo_path.exit
  %i.qh = call fastcc i32 @read_populate_todo(ptr noundef %0, ptr noundef %6, ptr noundef nonnull %1)
  %.not35 = icmp eq i32 %i.qh, 0
  br i1 %.not35, label %bb.fy, label %bb.gp

bb.fy:                                            ; preds = %commit_staged_changes.exit, %bb.fx
  %.val = load i32, ptr %1, align 8, !tbaa !31
  %.not88 = icmp eq i32 %.val, 2
  br i1 %.not88, label %bb.gf, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.qi = call ptr @get_main_ref_store(ptr noundef %0) #21
  %i.qj = call i32 @refs_ref_exists(ptr noundef %i.qi, ptr noundef nonnull @.str.51) #21
  %.not41 = icmp eq i32 %i.qj, 0
  br i1 %.not41, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.qk = call ptr @get_main_ref_store(ptr noundef %0) #21
  %i.ql = call i32 @refs_ref_exists(ptr noundef %i.qk, ptr noundef nonnull @.str.53) #21
  %.not42 = icmp eq i32 %i.ql, 0
  br i1 %.not42, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %i.qm = call fastcc i32 @continue_single_pick(ptr noundef %0, ptr noundef nonnull %1) ; 2 uses
  %.not43 = icmp eq i32 %i.qm, 0
  br i1 %.not43, label %bb.gc, label %bb.gp

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %i.qn = call i32 @index_differs_from(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef null, i32 noundef 0) #21
  %.not44 = icmp eq i32 %i.qn, 0
  br i1 %.not44, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.qo = call fastcc i32 @error_dirty_index(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.gp

bb.ge:                                            ; preds = %bb.gc
  %i.qp = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.qq = load i32, ptr %i.qp, align 8, !tbaa !147
  %i.qr = add nsw i32 %i.qq, 1
  store i32 %i.qr, ptr %i.qp, align 8, !tbaa !147
  br label %bb.go

bb.gf:                                            ; preds = %bb.fy
  %i.qs = load ptr, ptr @rebase_path_stopped_sha.ret, align 8, !tbaa !12 ; 2 uses
  %.not.i69 = icmp eq ptr %i.qs, null
  br i1 %.not.i69, label %bb.gg, label %rebase_path_stopped_sha.exit

bb.gg:                                            ; preds = %bb.gf
  %i.qt = load ptr, ptr @the_repository, align 8, !tbaa !15
  %i.qu = call ptr (ptr, ptr, ...) @repo_git_path(ptr noundef %i.qt, ptr noundef nonnull @.str.304) #21 ; 2 uses
  store ptr %i.qu, ptr @rebase_path_stopped_sha.ret, align 8, !tbaa !12
  br label %rebase_path_stopped_sha.exit

rebase_path_stopped_sha.exit:                     ; preds = %bb.gf, %bb.gg
  %i.qv = phi ptr [ %i.qu, %bb.gg ], [ %i.qs, %bb.gf ]
  %i.qw = call i32 @file_exists(ptr noundef %i.qv) #21
  %.not45 = icmp eq i32 %i.qw, 0
  br i1 %.not45, label %bb.go, label %bb.gh

bb.gh:                                            ; preds = %rebase_path_stopped_sha.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) @__const.make_script_with_merges.label_from_message, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.qx = load ptr, ptr @rebase_path_stopped_sha.ret, align 8, !tbaa !12 ; 2 uses
  %.not.i70 = icmp eq ptr %i.qx, null
  br i1 %.not.i70, label %bb.gi, label %rebase_path_stopped_sha.exit71

bb.gi:                                            ; preds = %bb.gh
  %i.qy = load ptr, ptr @the_repository, align 8, !tbaa !15
  %i.qz = call ptr (ptr, ptr, ...) @repo_git_path(ptr noundef %i.qy, ptr noundef nonnull @.str.304) #21 ; 2 uses
  store ptr %i.qz, ptr @rebase_path_stopped_sha.ret, align 8, !tbaa !12
  br label %rebase_path_stopped_sha.exit71

rebase_path_stopped_sha.exit71:                   ; preds = %bb.gh, %bb.gi
  %i.ra = phi ptr [ %i.qz, %bb.gi ], [ %i.qx, %bb.gh ]
  %i.rb = call i32 @read_oneliner(ptr noundef nonnull %7, ptr noundef %i.ra, i32 noundef 1)
  %.not46 = icmp eq i32 %i.rb, 0
  br i1 %.not46, label %bb.gn, label %bb.gj

bb.gj:                                            ; preds = %rebase_path_stopped_sha.exit71
  %i.rc = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !37
  %i.re = call i32 @get_oid_hex(ptr noundef %i.rd, ptr noundef nonnull %8) #21
  %.not47 = icmp eq i32 %i.re, 0
  br i1 %.not47, label %bb.gk, label %bb.gn

bb.gk:                                            ; preds = %bb.gj
  %i.rf = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.rg = load i32, ptr %i.rf, align 8, !tbaa !147 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ri = load i32, ptr %i.rh, align 8, !tbaa !146 ; 2 uses
  %i.rj = icmp slt i32 %i.rg, %i.ri
  br i1 %i.rj, label %.lr.ph.i73, label %peek_command.exit

.lr.ph.i73:                                       ; preds = %bb.gk
  %i.rk = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !138
  %i.rm = sext i32 %i.rg to i64
  br label %bb.gm

bb.gl:                                            ; preds = %bb.gm
  %indvars.iv.next.i75 = add nsw i64 %indvars.iv.i74, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i75 to i32
  %exitcond.not = icmp eq i32 %i.ri, %lftr.wideiv.i
  br i1 %exitcond.not, label %peek_command.exit, label %bb.gm, !llvm.loop !187

bb.gm:                                            ; preds = %bb.gl, %.lr.ph.i73
  %indvars.iv.i74 = phi i64 [ %i.rm, %.lr.ph.i73 ], [ %indvars.iv.next.i75, %bb.gl ] ; 2 uses
  %i.rn = getelementptr inbounds [40 x i8], ptr %i.rl, i64 %indvars.iv.i74
  %i.ro = load i32, ptr %i.rn, align 8, !tbaa !151 ; 2 uses
  %i.rp = icmp ult i32 %i.ro, 12
  br i1 %i.rp, label %peek_command.exit, label %bb.gl

peek_command.exit:                                ; preds = %bb.gl, %bb.gm, %bb.gk
  %.09.i = phi i32 [ -1, %bb.gk ], [ -1, %bb.gl ], [ %i.ro, %bb.gm ]
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
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !138
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
  %i.b = load ptr, ptr %0, align 8, !tbaa !191
  %i.c = call i32 @sequencer_get_update_refs_state(ptr noundef %i.b, ptr noundef nonnull %2) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !64   ; 2 uses
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
  %i.j = load i32, ptr %i.i, align 8, !tbaa !146  ; 2 uses
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
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !61   ; 3 uses
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
  %i.ad = load i32, ptr %i.f, align 8, !tbaa !146 ; 2 uses
  %smax = call i32 @llvm.smax.i32(i32 %i.ad, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  %exitcond.not115 = icmp slt i32 %i.ad, 1
  br i1 %exitcond.not115, label %.critedge, label %.lr.ph117.preheader

.lr.ph117.preheader:                              ; preds = %.preheader71
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !138
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !141
  br label %.lr.ph117

.lr.ph117:                                        ; preds = %.lr.ph117.preheader, %.backedge112
  %indvars.iv116 = phi i64 [ %indvars.iv.be, %.backedge112 ], [ 0, %.lr.ph117.preheader ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %i.ae, i64 %indvars.iv116 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !142
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ai
  %i.ak = load i32, ptr %i.ag, align 8, !tbaa !151
  %.not65 = icmp eq i32 %i.ak, 11
  br i1 %.not65, label %bb.c, label %.backedge112

bb.c:                                             ; preds = %.lr.ph117
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.am = load i32, ptr %i.al, align 4, !tbaa !153
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
  br i1 %exitcond.not, label %.critedge, label %.lr.ph117, !llvm.loop !192

.critedge:                                        ; preds = %.backedge112, %.preheader71
  call void @free(ptr noundef %i.s) #21
  %i.ap = load ptr, ptr %2, align 8, !tbaa !67
  %i.aq = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %i.q
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !63
  call void @free(ptr noundef %i.as) #21
  %i.at = load i64, ptr %i.d, align 8, !tbaa !64
  %i.au = add i64 %i.at, -1                       ; 3 uses
  store i64 %i.au, ptr %i.d, align 8, !tbaa !64
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
  %.pre99.pre = load i64, ptr %i.d, align 8, !tbaa !64
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
  br i1 %i.bg, label %bb.b, label %.preheader70, !llvm.loop !193

bb.f:                                             ; preds = %.lr.ph84, %bb.h
  %i.bh = phi i32 [ %i.j, %.lr.ph84 ], [ %i.dd, %bb.h ] ; 2 uses
  %indvars.iv95 = phi i64 [ 0, %.lr.ph84 ], [ %indvars.iv.next96, %bb.h ] ; 2 uses
  %.35782 = phi i32 [ %.054.lcssa, %.lr.ph84 ], [ %.5, %bb.h ] ; 2 uses
  %i.bi = load ptr, ptr %i.l, align 8, !tbaa !138
  %i.bj = getelementptr inbounds nuw [40 x i8], ptr %i.bi, i64 %indvars.iv95 ; 4 uses
  %i.bk = load ptr, ptr %i.m, align 8, !tbaa !141
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !142
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %i.bj, align 8, !tbaa !151
  %.not61 = icmp eq i32 %i.bo, 11
  br i1 %.not61, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.f
  %i.bp = load i64, ptr %i.d, align 8             ; 3 uses
end_hunk_1
begin_hunk_2_@pick_commits:bb.a
  br i1 %.not7.i, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  %i.eu = load ptr, ptr @the_repository, align 8, !tbaa !15
  %i.ev = call ptr @get_commit_output_encoding() #21
  %i.ew = call ptr @repo_logmsg_reencode(ptr noundef %i.eu, ptr noundef nonnull %i.es, ptr noundef null, ptr noundef %i.ev) #21 ; 2 uses
  %i.ex = load ptr, ptr @the_repository, align 8, !tbaa !15
  %i.ey = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.ez = load i32, ptr @default_abbrev, align 4, !tbaa !27
  %i.fa = call ptr @repo_find_unique_abbrev(ptr noundef %i.ex, ptr noundef nonnull %i.ey, i32 noundef %i.ez) #21
  %i.fb = call i32 @find_commit_subject(ptr noundef %i.ew, ptr noundef nonnull %i.e) #21
  %i.fc = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.fd = sext i32 %i.fb to i64
  %i.fe = call ptr @xmemdupz(ptr noundef %i.fc, i64 noundef %i.fd) #21 ; 2 uses
  %i.ff = call ptr (ptr, ...) @xstrfmt(ptr noundef nonnull @.str.334, ptr noundef %i.fa, ptr noundef %i.fe) #21 ; 3 uses
  %i.fg = call ptr (ptr, ...) @xstrfmt(ptr noundef nonnull @.str.335, ptr noundef %i.ff) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  %i.fh = load ptr, ptr @stderr, align 8, !tbaa !200
  %i.fi = load i32, ptr @git_gettext_enabled, align 4, !tbaa !27
  %.not4.i.i = icmp eq i32 %i.fi, 0
  br i1 %.not4.i.i, label %_.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fj = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.333, i32 noundef 5) #21
  br label %_.exit.i

_.exit.i:                                         ; preds = %bb.ag, %bb.af
  %.0.i.i = phi ptr [ %i.fj, %bb.ag ], [ @.str.333, %bb.af ]
  %i.fk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fh, ptr noundef %.0.i.i, ptr noundef %i.ff) #25 ; 0 uses
  call void @free(ptr noundef %i.fg) #21
  call void @free(ptr noundef %i.ff) #21
  call void @free(ptr noundef %i.fe) #21
  %i.fl = load ptr, ptr @the_repository, align 8, !tbaa !15
  call void @repo_unuse_commit_buffer(ptr noundef %i.fl, ptr noundef nonnull %i.es, ptr noundef %i.ew) #21
  br label %stopped_at_head.exit

bb.ah:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.fm = load ptr, ptr @stderr, align 8, !tbaa !200
  %i.fn = load i32, ptr @git_gettext_enabled, align 4, !tbaa !27
  %.not4.i8.i = icmp eq i32 %i.fn, 0
  br i1 %.not4.i8.i, label %_.exit10.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fo = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.332, i32 noundef 5) #21
  br label %_.exit10.i

_.exit10.i:                                       ; preds = %bb.ai, %bb.ah
  %.0.i9.i = phi ptr [ %i.fo, %bb.ai ], [ @.str.332, %bb.ah ]
  %i.fp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fm, ptr noundef %.0.i9.i) #25 ; 0 uses
  br label %stopped_at_head.exit

stopped_at_head.exit:                             ; preds = %_.exit.i, %_.exit10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  br label %.thread363

bb.aj:                                            ; preds = %rebase_path_author_script.exit, %bb.q
  store i64 0, ptr %i.bi, align 8, !tbaa !39
  %i.fq = load ptr, ptr %i.bj, align 8, !tbaa !37 ; 2 uses
  %.not9.i = icmp eq ptr %i.fq, @strbuf_slopbuf
  br i1 %.not9.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i8 0, ptr %i.fq, align 1, !tbaa !30
  br label %strbuf_setlen.exit

bb.al:                                            ; preds = %bb.aj
  %i.fr = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !30
  %.not10.i = icmp eq i8 %i.fr, 0
  br i1 %.not10.i, label %strbuf_setlen.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @__assert_fail(ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.123, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #23
  unreachable

strbuf_setlen.exit:                               ; preds = %bb.ak, %bb.al
  %i.fs = load i8, ptr %i.bk, align 4
  %i.ft = and i8 %i.fs, -2
  store i8 %i.ft, ptr %i.bk, align 4
  %i.fu = load i32, ptr %i.de, align 8, !tbaa !151 ; 4 uses
  %i.fv = icmp ult i32 %i.fu, 6
  br i1 %i.fv, label %bb.an, label %bb.cb

bb.an:                                            ; preds = %strbuf_setlen.exit
  %i.fw = load ptr, ptr %i.bc, align 8, !tbaa !138 ; 2 uses
  %i.fx = load i32, ptr %i.ax, align 8, !tbaa !147
  %i.fy = sext i32 %i.fx to i64                   ; 2 uses
  %i.fz = getelementptr inbounds [40 x i8], ptr %i.fw, i64 %i.fy ; 13 uses
  %i.ga = load ptr, ptr %i.bd, align 8, !tbaa !141
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !142
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.gc ; 5 uses
  %i.ge = load i32, ptr %i.fz, align 8, !tbaa !151
  %i.gf = and i32 %i.ge, -2
  %.not.i.i = icmp eq i32 %i.gf, 4
  br i1 %.not.i.i, label %.preheader.i.i, label %is_final_fixup.exit.i

.preheader.i.i:                                   ; preds = %bb.an
  %i.gg = load i32, ptr %i.ay, align 8, !tbaa !146
  %i.gh = sext i32 %i.gg to i64                   ; 2 uses
  %indvars.iv.next.i.i589 = add nsw i64 %i.fy, 1  ; 2 uses
  %i.gi = icmp slt i64 %indvars.iv.next.i.i589, %i.gh
  br i1 %i.gi, label %.lr.ph591, label %is_final_fixup.exit.i

bb.ao:                                            ; preds = %bb.ap
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.next.i.i590, 1 ; 2 uses
  %i.gj = icmp slt i64 %indvars.iv.next.i.i, %i.gh
  br i1 %i.gj, label %.lr.ph591, label %is_final_fixup.exit.i, !llvm.loop !211

.lr.ph591:                                        ; preds = %.preheader.i.i, %bb.ao
  %indvars.iv.next.i.i590 = phi i64 [ %indvars.iv.next.i.i, %bb.ao ], [ %indvars.iv.next.i.i589, %.preheader.i.i ] ; 2 uses
  %i.gk = getelementptr inbounds [40 x i8], ptr %i.fw, i64 %indvars.iv.next.i.i590
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !151 ; 2 uses
  %i.gm = and i32 %i.gl, -2
  %.not13.i.i = icmp eq i32 %i.gm, 4
  br i1 %.not13.i.i, label %is_final_fixup.exit.i, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph591
  %i.gn = icmp ult i32 %i.gl, 12
  br i1 %i.gn, label %.is_final_fixup.exit.i.loopexit_crit_edge594, label %bb.ao, !llvm.loop !211

.is_final_fixup.exit.i.loopexit_crit_edge594:     ; preds = %bb.ap
  br label %is_final_fixup.exit.i, !llvm.loop !211

is_final_fixup.exit.i:                            ; preds = %bb.ao, %.lr.ph591, %.preheader.i.i, %.is_final_fixup.exit.i.loopexit_crit_edge594, %bb.an
  %.09.i.i = phi i32 [ 0, %bb.an ], [ 1, %.preheader.i.i ], [ 1, %.is_final_fixup.exit.i.loopexit_crit_edge594 ], [ 0, %.lr.ph591 ], [ 1, %bb.ao ]
  %i.go = call fastcc i32 @do_pick_commit(ptr noundef %0, ptr noundef nonnull %i.fz, ptr noundef %2, i32 noundef %.09.i.i, ptr noundef nonnull %i.f) ; 9 uses
  %.val74.i = load i32, ptr %2, align 8, !tbaa !31
  %i.gp = icmp eq i32 %.val74.i, 2                ; 2 uses
  %i.gq = icmp slt i32 %i.go, 0
  %or.cond.i = select i1 %i.gp, i1 %i.gq, i1 false
  br i1 %or.cond.i, label %.thread, label %bb.aq

bb.aq:                                            ; preds = %is_final_fixup.exit.i
  %i.gr = load i32, ptr %i.fz, align 8, !tbaa !151
  %i.gs = icmp eq i32 %i.gr, 2
  br i1 %i.gs, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %bb.aq
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !152 ; 3 uses
  %.not71.i = icmp eq i32 %i.go, 0
  br i1 %.not71.i, label %bb.as, label %.split.i

.split.i:                                         ; preds = %bb.ar
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fz, i64 20
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !153
  %i.gx = call fastcc i32 @error_with_patch(ptr noundef %0, ptr noundef %i.gu, ptr noundef %i.gd, i32 noundef %i.gw, ptr noundef nonnull %2, i32 noundef %i.go, i32 noundef 0)
  br label %pick_one_commit.exit

bb.as:                                            ; preds = %bb.ar
  %i.gy = load i32, ptr %i.bh, align 4, !tbaa !164
  %.not72.i = icmp eq i32 %i.gy, 0
  br i1 %.not72.i, label %bb.at, label %.split61.i

bb.at:                                            ; preds = %bb.as
  call void @term_clear_line() #21
  br label %.split61.i

.split61.i:                                       ; preds = %bb.at, %bb.as
  %i.gz = load ptr, ptr @stderr, align 8, !tbaa !200
  %i.ha = load i32, ptr @git_gettext_enabled, align 4, !tbaa !27
  %.not4.i.i210 = icmp eq i32 %i.ha, 0
  br i1 %.not4.i.i210, label %_.exit.i211, label %bb.au

bb.au:                                            ; preds = %.split61.i
  %i.hb = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.336, i32 noundef 5) #21
  br label %_.exit.i211

_.exit.i211:                                      ; preds = %bb.au, %.split61.i
  %.0.i.i212 = phi ptr [ %i.hb, %bb.au ], [ @.str.336, %.split61.i ]
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.hd = load i32, ptr @default_abbrev, align 4, !tbaa !27
  %i.he = call ptr @repo_find_unique_abbrev(ptr noundef %0, ptr noundef nonnull %i.hc, i32 noundef %i.hd) #21
  %i.hf = getelementptr inbounds nuw i8, ptr %i.fz, i64 20 ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !153
  %i.hh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gz, ptr noundef %.0.i.i212, ptr noundef %i.he, i32 noundef %i.hg, ptr noundef %i.gd) #25 ; 0 uses
  %i.hi = load i32, ptr %i.hf, align 4, !tbaa !153
  %i.hj = call fastcc i32 @error_with_patch(ptr noundef %0, ptr noundef %i.gu, ptr noundef %i.gd, i32 noundef %i.hi, ptr noundef nonnull %2, i32 noundef 0, i32 noundef 1)
  br label %pick_one_commit.exit

bb.av:                                            ; preds = %bb.aq
  %i.hk = icmp eq i32 %i.go, 0                    ; 2 uses
  %or.cond3.not.i = select i1 %i.gp, i1 %i.hk, i1 false
  br i1 %or.cond3.not.i, label %bb.aw, label %record_in_rewritten.exit.i

bb.aw:                                            ; preds = %bb.av
  %i.hl = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !152
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = load i32, ptr %i.ax, align 8, !tbaa !147 ; 2 uses
  %i.hp = add nsw i32 %i.ho, 1
  %i.hq = load i32, ptr %i.ay, align 8, !tbaa !146 ; 2 uses
  %i.hr = icmp slt i32 %i.hp, %i.hq
  br i1 %i.hr, label %.lr.ph.i.i, label %peek_command.exit.i

.lr.ph.i.i:                                       ; preds = %bb.aw
  %i.hs = load ptr, ptr %i.bc, align 8, !tbaa !138
  %i.ht = sext i32 %i.ho to i64
  %i.hu = add nsw i64 %i.ht, 1
  br label %bb.ay

bb.ax:                                            ; preds = %bb.ay
  %indvars.iv.next.i77.i = add nsw i64 %indvars.iv.i76.i, 1 ; 2 uses
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next.i77.i to i32
  %exitcond.not.i.a = icmp eq i32 %i.hq, %lftr.wideiv.i.i
  br i1 %exitcond.not.i.a, label %peek_command.exit.loopexit.i, label %bb.ay, !llvm.loop !187

bb.ay:                                            ; preds = %bb.ax, %.lr.ph.i.i
  %indvars.iv.i76.i = phi i64 [ %i.hu, %.lr.ph.i.i ], [ %indvars.iv.next.i77.i, %bb.ax ] ; 2 uses
  %i.hv = getelementptr inbounds [40 x i8], ptr %i.hs, i64 %indvars.iv.i76.i
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !151 ; 2 uses
  %i.hx = icmp ult i32 %i.hw, 12
  br i1 %i.hx, label %peek_command.exit.loopexit.i, label %bb.ax

peek_command.exit.loopexit.i:                     ; preds = %bb.ay, %bb.ax
  %.09.i75.ph.i = phi i32 [ %i.hw, %bb.ay ], [ -1, %bb.ax ]
  %i.hy = and i32 %.09.i75.ph.i, -2
  %i.hz = icmp eq i32 %i.hy, 4
  br label %peek_command.exit.i

peek_command.exit.i:                              ; preds = %peek_command.exit.loopexit.i, %bb.aw
  %.09.i75.i = phi i1 [ false, %bb.aw ], [ %i.hz, %peek_command.exit.loopexit.i ]
  %i.ia = load ptr, ptr @rebase_path_rewritten_pending.ret, align 8, !tbaa !12 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ia, null
  br i1 %.not.i.i.i, label %bb.az, label %rebase_path_rewritten_pending.exit.i.i

bb.az:                                            ; preds = %peek_command.exit.i
  %i.ib = load ptr, ptr @the_repository, align 8, !tbaa !15
  %i.ic = call ptr (ptr, ptr, ...) @repo_git_path(ptr noundef %i.ib, ptr noundef nonnull @.str.306) #21 ; 2 uses
  store ptr %i.ic, ptr @rebase_path_rewritten_pending.ret, align 8, !tbaa !12
  br label %rebase_path_rewritten_pending.exit.i.i

rebase_path_rewritten_pending.exit.i.i:           ; preds = %bb.az, %peek_command.exit.i
  %i.id = phi ptr [ %i.ic, %bb.az ], [ %i.ia, %peek_command.exit.i ]
  %i.ie = call ptr @fopen_or_warn(ptr noundef %i.id, ptr noundef nonnull @.str.305) #21 ; 3 uses
  %.not.i78.i = icmp eq ptr %i.ie, null
  br i1 %.not.i78.i, label %record_in_rewritten.exit.i, label %bb.ba

bb.ba:                                            ; preds = %rebase_path_rewritten_pending.exit.i.i
  %i.if = call ptr @oid_to_hex(ptr noundef nonnull %i.hn) #21
  %i.ig = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.ie, ptr noundef nonnull @.str.56, ptr noundef %i.if) #21 ; 0 uses
  %i.ih = call i32 @fclose(ptr noundef nonnull %i.ie) ; 0 uses
  br i1 %.09.i75.i, label %record_in_rewritten.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call fastcc void @flush_rewritten_pending()
  br label %record_in_rewritten.exit.i

record_in_rewritten.exit.i:                       ; preds = %bb.bb, %bb.ba, %rebase_path_rewritten_pending.exit.i.i, %bb.av
  br i1 %i.hk, label %pick_one_commit.exit.thread325, label %bb.bc

bb.bc:                                            ; preds = %record_in_rewritten.exit.i
  %i.ii = load i32, ptr %i.fz, align 8, !tbaa !151 ; 2 uses
  %i.ij = and i32 %i.ii, -2
  %.not.i208 = icmp eq i32 %i.ij, 4
  br i1 %.not.i208, label %bb.bd, label %bb.bs

bb.bd:                                            ; preds = %bb.bc
  %i.ik = icmp eq i32 %i.go, 1
  br i1 %i.ik, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.il = call fastcc i32 @intend_to_amend()      ; 0 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.im = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !152
  %i.io = getelementptr inbounds nuw i8, ptr %i.fz, i64 20
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !153
  %i.iq = load ptr, ptr @rebase_path_message.ret, align 8, !tbaa !12 ; 2 uses
  %.not.i.i79.i = icmp eq ptr %i.iq, null
  br i1 %.not.i.i79.i, label %bb.bg, label %rebase_path_message.exit.i.i

bb.bg:                                            ; preds = %bb.bf
  %i.ir = load ptr, ptr @the_repository, align 8, !tbaa !15
  %i.is = call ptr (ptr, ptr, ...) @repo_git_path(ptr noundef %i.ir, ptr noundef nonnull @.str.276) #21 ; 2 uses
  store ptr %i.is, ptr @rebase_path_message.ret, align 8, !tbaa !12
  br label %rebase_path_message.exit.i.i

rebase_path_message.exit.i.i:                     ; preds = %bb.bg, %bb.bf
  %i.it = phi ptr [ %i.is, %bb.bg ], [ %i.iq, %bb.bf ]
  %i.iu = load ptr, ptr @rebase_path_squash_msg.ret, align 8, !tbaa !12 ; 2 uses
  %.not.i9.i.i = icmp eq ptr %i.iu, null
  br i1 %.not.i9.i.i, label %bb.bh, label %rebase_path_squash_msg.exit.i.i

bb.bh:                                            ; preds = %rebase_path_message.exit.i.i
  %i.iv = load ptr, ptr @the_repository, align 8, !tbaa !15
  %i.iw = call ptr (ptr, ptr, ...) @repo_git_path(ptr noundef %i.iv, ptr noundef nonnull @.str.280) #21 ; 2 uses
  store ptr %i.iw, ptr @rebase_path_squash_msg.ret, align 8, !tbaa !12
  br label %rebase_path_squash_msg.exit.i.i

rebase_path_squash_msg.exit.i.i:                  ; preds = %bb.bh, %rebase_path_message.exit.i.i
  %i.ix = phi ptr [ %i.iw, %bb.bh ], [ %i.iu, %rebase_path_message.exit.i.i ]
  %i.iy = call i32 @copy_file(ptr noundef %i.it, ptr noundef %i.ix, i32 noundef 438) #21
  %.not.i80.i = icmp eq i32 %i.iy, 0
  br i1 %.not.i80.i, label %bb.bm, label %bb.bi

bb.bi:                                            ; preds = %rebase_path_squash_msg.exit.i.i
  %i.iz = load i32, ptr @git_gettext_enabled, align 4, !tbaa !27
  %.not4.i.i.i = icmp eq i32 %i.iz, 0
  br i1 %.not4.i.i.i, label %_.exit.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ja = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.344, i32 noundef 5) #21
  br label %_.exit.i.i

_.exit.i.i:                                       ; preds = %bb.bj, %bb.bi
  %.0.i.i.i = phi ptr [ %i.ja, %bb.bj ], [ @.str.344, %bb.bi ]
  %i.jb = load ptr, ptr @rebase_path_squash_msg.ret, align 8, !tbaa !12 ; 2 uses
  %.not.i10.i.i = icmp eq ptr %i.jb, null
  br i1 %.not.i10.i.i, label %bb.bk, label %rebase_path_squash_msg.exit11.i.i

bb.bk:                                            ; preds = %_.exit.i.i
  %i.jc = load ptr, ptr @the_repository, align 8, !tbaa !15
  %i.jd = call ptr (ptr, ptr, ...) @repo_git_path(ptr noundef %i.jc, ptr noundef nonnull @.str.280) #21 ; 2 uses
  store ptr %i.jd, ptr @rebase_path_squash_msg.ret, align 8, !tbaa !12
  br label %rebase_path_squash_msg.exit11.i.i

rebase_path_squash_msg.exit11.i.i:                ; preds = %bb.bk, %_.exit.i.i
  %i.je = phi ptr [ %i.jd, %bb.bk ], [ %i.jb, %_.exit.i.i ]
  %i.jf = load ptr, ptr @rebase_path_message.ret, align 8, !tbaa !12 ; 2 uses
  %.not.i12.i.i = icmp eq ptr %i.jf, null
  br i1 %.not.i12.i.i, label %bb.bl, label %rebase_path_message.exit13.i.i

bb.bl:                                            ; preds = %rebase_path_squash_msg.exit11.i.i
  %i.jg = load ptr, ptr @the_repository, align 8, !tbaa !15
  %i.jh = call ptr (ptr, ptr, ...) @repo_git_path(ptr noundef %i.jg, ptr noundef nonnull @.str.276) #21 ; 2 uses
  store ptr %i.jh, ptr @rebase_path_message.ret, align 8, !tbaa !12
  br label %rebase_path_message.exit13.i.i

rebase_path_message.exit13.i.i:                   ; preds = %bb.bl, %rebase_path_squash_msg.exit11.i.i
  %i.ji = phi ptr [ %i.jh, %bb.bl ], [ %i.jf, %rebase_path_squash_msg.exit11.i.i ]
  %i.jj = call i32 (ptr, ...) @error(ptr noundef %.0.i.i.i, ptr noundef %i.je, ptr noundef %i.ji) #21 ; 0 uses
  br label %pick_one_commit.exit.thread

bb.bm:                                            ; preds = %rebase_path_squash_msg.exit.i.i
  %i.jk = call ptr @git_path_merge_msg(ptr noundef %0) #21
  %i.jl = call i32 @unlink(ptr noundef %i.jk) #21 ; 0 uses
  %i.jm = call ptr @git_path_merge_msg(ptr noundef %0) #21
  %i.jn = load ptr, ptr @rebase_path_message.ret, align 8, !tbaa !12 ; 2 uses
  %.not.i14.i.i = icmp eq ptr %i.jn, null
  br i1 %.not.i14.i.i, label %bb.bn, label %rebase_path_message.exit15.i.i

bb.bn:                                            ; preds = %bb.bm
  %i.jo = load ptr, ptr @the_repository, align 8, !tbaa !15
  %i.jp = call ptr (ptr, ptr, ...) @repo_git_path(ptr noundef %i.jo, ptr noundef nonnull @.str.276) #21 ; 2 uses
  store ptr %i.jp, ptr @rebase_path_message.ret, align 8, !tbaa !12
  br label %rebase_path_message.exit15.i.i

rebase_path_message.exit15.i.i:                   ; preds = %bb.bn, %bb.bm
  %i.jq = phi ptr [ %i.jp, %bb.bn ], [ %i.jn, %bb.bm ]
  %i.jr = call i32 @copy_file(ptr noundef %i.jm, ptr noundef %i.jq, i32 noundef 438) #21
  %.not8.i.i = icmp eq i32 %i.jr, 0
  br i1 %.not8.i.i, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %rebase_path_message.exit15.i.i
  %i.js = load i32, ptr @git_gettext_enabled, align 4, !tbaa !27
  %.not4.i16.i.i = icmp eq i32 %i.js, 0
  br i1 %.not4.i16.i.i, label %_.exit18.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jt = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.344, i32 noundef 5) #21
  br label %_.exit18.i.i

_.exit18.i.i:                                     ; preds = %bb.bp, %bb.bo
  %.0.i17.i.i = phi ptr [ %i.jt, %bb.bp ], [ @.str.344, %bb.bo ]
  %i.ju = load ptr, ptr @rebase_path_message.ret, align 8, !tbaa !12 ; 2 uses
  %.not.i19.i.i = icmp eq ptr %i.ju, null
  br i1 %.not.i19.i.i, label %bb.bq, label %rebase_path_message.exit20.i.i

bb.bq:                                            ; preds = %_.exit18.i.i
  %i.jv = load ptr, ptr @the_repository, align 8, !tbaa !15
  %i.jw = call ptr (ptr, ptr, ...) @repo_git_path(ptr noundef %i.jv, ptr noundef nonnull @.str.276) #21 ; 2 uses
  store ptr %i.jw, ptr @rebase_path_message.ret, align 8, !tbaa !12
  br label %rebase_path_message.exit20.i.i

rebase_path_message.exit20.i.i:                   ; preds = %bb.bq, %_.exit18.i.i
  %i.jx = phi ptr [ %i.jw, %bb.bq ], [ %i.ju, %_.exit18.i.i ]
  %i.jy = call ptr @git_path_merge_msg(ptr noundef %0) #21
  %i.jz = call i32 (ptr, ...) @error(ptr noundef %.0.i17.i.i, ptr noundef %i.jx, ptr noundef %i.jy) #21 ; 0 uses
  br label %pick_one_commit.exit.thread

bb.br:                                            ; preds = %rebase_path_message.exit15.i.i
  %i.ka = call fastcc i32 @error_with_patch(ptr noundef %0, ptr noundef %i.in, ptr noundef %i.gd, i32 noundef %i.ip, ptr noundef nonnull readonly %2, i32 noundef 1, i32 noundef 0)
  br label %pick_one_commit.exit

bb.bs:                                            ; preds = %bb.bc
  %.val.i = load i32, ptr %2, align 8, !tbaa !31
  %.not86.i = icmp eq i32 %.val.i, 2
  br i1 %.not86.i, label %bb.bt, label %pick_one_commit.exit.thread

bb.bt:                                            ; preds = %bb.bs
  %i.kb = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 2 uses
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !152 ; 2 uses
  %.not66.i = icmp eq ptr %i.kc, null
  br i1 %.not66.i, label %pick_one_commit.exit.thread, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  %i.kd = icmp eq i32 %i.ii, 3
  br i1 %i.kd, label %bb.bv, label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  %i.ke = call i32 @repo_get_oid(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef nonnull %23) #21
end_hunk_2
begin_hunk_3_@pick_commits:bb.a
  %i.yl = call i32 @run_command(ptr noundef nonnull %12) #21 ; 2 uses
  %.not228.i = icmp eq i32 %i.yl, 0
  br i1 %.not228.i, label %bb.gs, label %bb.gv

bb.gs:                                            ; preds = %._crit_edge316.i
  %i.ym = load ptr, ptr %i.ca, align 8, !tbaa !199
  call void @discard_index(ptr noundef %i.ym) #21
  %i.yn = call i32 @repo_read_index(ptr noundef %0) #21
  %i.yo = icmp slt i32 %i.yn, 0
  br i1 %i.yo, label %bb.gt, label %bb.gv

bb.gt:                                            ; preds = %bb.gs
  %i.yp = load i32, ptr @git_gettext_enabled, align 4, !tbaa !27
  %.not4.i254.i = icmp eq i32 %i.yp, 0
  br i1 %.not4.i254.i, label %_.exit256.i, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.yq = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.206, i32 noundef 5) #21
  br label %_.exit256.i

_.exit256.i:                                      ; preds = %bb.gu, %bb.gt
  %.0.i255.i = phi ptr [ %i.yq, %bb.gu ], [ @.str.206, %bb.gt ]
  %i.yr = call i32 (ptr, ...) @error(ptr noundef %.0.i255.i) #21 ; 0 uses
  br label %bb.gv

bb.gv:                                            ; preds = %_.exit256.i, %bb.gs, %._crit_edge316.i, %_.exit253.i
  %.2.i = phi i32 [ -1, %_.exit253.i ], [ %i.yl, %._crit_edge316.i ], [ -1, %_.exit256.i ], [ 0, %bb.gs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %do_merge.exit

bb.gw:                                            ; preds = %bb.gc
  %i.ys = load ptr, ptr %i.wq, align 8, !tbaa !234 ; 4 uses
  %i.yt = call i32 @repo_get_merge_bases(ptr noundef %0, ptr noundef nonnull %i.ra, ptr noundef %i.ys, ptr noundef nonnull %i.b) #21
  %i.yu = icmp slt i32 %i.yt, 0
  br i1 %i.yu, label %do_merge.exit, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.yv = load ptr, ptr %i.b, align 8, !tbaa !232 ; 2 uses
  %.not215.i = icmp eq ptr %i.yv, null
  br i1 %.not215.i, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.yw = getelementptr inbounds nuw i8, ptr %i.ys, i64 8 ; 2 uses
  %i.yx = load ptr, ptr %i.yv, align 8, !tbaa !234
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 8 ; 2 uses
  %i.yz = load i128, ptr %i.yw, align 1
  %i.za = load i128, ptr %i.yy, align 1
  %i.zb = xor i128 %i.yz, %i.za
  %i.zc = getelementptr i8, ptr %i.yw, i64 16
  %i.zd = getelementptr i8, ptr %i.yy, i64 16
  %i.ze = load i128, ptr %i.zc, align 1
  %i.zf = load i128, ptr %i.zd, align 1
  %i.zg = xor i128 %i.ze, %i.zf
  %i.zh = or i128 %i.zb, %i.zg
  %i.zi = icmp ne i128 %i.zh, 0
  %i.zj = zext i1 %i.zi to i32
  %.not.i258.not.i = icmp eq i32 %i.zj, 0
  br i1 %.not.i258.not.i, label %do_merge.exit, label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %bb.gx
  %i.zk = getelementptr inbounds nuw i8, ptr %i.ys, i64 8
  %i.zl = call ptr @oid_to_hex(ptr noundef nonnull %i.zk) #21
  %i.zm = load ptr, ptr @the_repository, align 8, !tbaa !15
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 448
  %i.zo = load ptr, ptr %i.zn, align 8, !tbaa !74
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 24
  %i.zq = load i64, ptr %i.zp, align 8, !tbaa !240
  %i.zr = call ptr @git_path_merge_head(ptr noundef %0) #21
  %i.zs = call fastcc i32 @write_message(ptr noundef %i.zl, i64 noundef %i.zq, ptr noundef %i.zr, i32 noundef 0) ; 0 uses
  %i.zt = call ptr @git_path_merge_mode(ptr noundef %0) #21
  %i.zu = call fastcc i32 @write_message(ptr noundef nonnull @.str.424, i64 noundef 5, ptr noundef %i.zt, i32 noundef 0) ; 0 uses
  %i.zv = load ptr, ptr %i.b, align 8, !tbaa !232
  %i.zw = call ptr @commit_list_reverse(ptr noundef %i.zv) #21
  store ptr %i.zw, ptr %i.b, align 8, !tbaa !232
  %i.zx = call i32 @repo_read_index(ptr noundef %0) #21 ; 0 uses
  call void @init_ui_merge_options(ptr noundef nonnull %10, ptr noundef %0) #21
  store ptr @.str.29, ptr %i.cb, align 8, !tbaa !241
  %i.zy = load ptr, ptr %i.cc, align 8, !tbaa !37
  store ptr %i.zy, ptr %i.cd, align 8, !tbaa !244
  store i32 2, ptr %i.ce, align 4, !tbaa !245
  %i.zz = load ptr, ptr %i.b, align 8, !tbaa !232
  %i.aaa = call i32 @merge_ort_recursive(ptr noundef nonnull %10, ptr noundef nonnull %i.ra, ptr noundef %i.ys, ptr noundef %i.zz, ptr noundef nonnull %i.a) #21 ; 4 uses
  %i.aab = icmp slt i32 %i.aaa, 1
  br i1 %i.aab, label %bb.ha, label %.thread271.i

.thread271.i:                                     ; preds = %bb.gz
  call void @strbuf_release(ptr noundef nonnull %i.cf) #21
  br label %bb.hd

bb.ha:                                            ; preds = %bb.gz
  %i.aac = load ptr, ptr %i.cg, align 8, !tbaa !246
  %i.aad = load ptr, ptr @stdout, align 8, !tbaa !200
  %i.aae = call i32 @fputs(ptr noundef %i.aac, ptr noundef %i.aad) ; 0 uses
  call void @strbuf_release(ptr noundef nonnull %i.cf) #21
  %i.aaf = icmp slt i32 %i.aaa, 0
  br i1 %i.aaf, label %bb.hb, label %bb.hd

bb.hb:                                            ; preds = %bb.ha
  %i.aag = load i32, ptr @git_gettext_enabled, align 4, !tbaa !27
  %.not4.i259.i = icmp eq i32 %i.aag, 0
  br i1 %.not4.i259.i, label %_.exit261.i, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.aah = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.425, i32 noundef 5) #21
  br label %_.exit261.i

_.exit261.i:                                      ; preds = %bb.hc, %bb.hb
  %.0.i260.i = phi ptr [ %i.aah, %bb.hc ], [ @.str.425, %bb.hb ]
  %i.aai = call i32 (ptr, ...) @error(ptr noundef %.0.i260.i, i32 noundef %.0170292.i, ptr noundef %i.di) #21 ; 0 uses
  %i.aaj = call ptr @git_path_merge_msg(ptr noundef %0) #21
  %i.aak = call i32 @unlink(ptr noundef %i.aaj) #21 ; 0 uses
  br label %do_merge.exit

bb.hd:                                            ; preds = %bb.ha, %.thread271.i
  %.not217.i = icmp eq i32 %i.aaa, 0
  %i.aal = load ptr, ptr %i.ca, align 8, !tbaa !199 ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 20
  %i.aan = load i32, ptr %i.aam, align 4, !tbaa !247
  %.not218.i = icmp eq i32 %i.aan, 0
  br i1 %.not218.i, label %bb.hh, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.aao = call i32 @write_locked_index(ptr noundef nonnull %i.aal, ptr noundef nonnull @do_merge.lock, i32 noundef 1) #21
  %.not219.i = icmp eq i32 %i.aao, 0
  br i1 %.not219.i, label %bb.hh, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.aap = load i32, ptr @git_gettext_enabled, align 4, !tbaa !27
  %.not4.i262.i = icmp eq i32 %i.aap, 0
  br i1 %.not4.i262.i, label %_.exit264.i, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.aaq = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.426, i32 noundef 5) #21
  br label %_.exit264.i

_.exit264.i:                                      ; preds = %bb.hg, %bb.hf
  %.0.i263.i = phi ptr [ %i.aaq, %bb.hg ], [ @.str.426, %bb.hf ]
  %i.aar = call i32 (ptr, ...) @error(ptr noundef %.0.i263.i) #21 ; 0 uses
  br label %do_merge.exit

bb.hh:                                            ; preds = %bb.he, %bb.hd
  %i.aas = call i32 @rollback_lock_file(ptr noundef nonnull @do_merge.lock) #21 ; 0 uses
  br i1 %.not217.i, label %.thread272.i, label %bb.hi

.thread272.i:                                     ; preds = %bb.hh
  %i.aat = load i32, ptr %i.ch, align 8, !tbaa !167
  %i.aau = call i32 @repo_rerere(ptr noundef nonnull %0, i32 noundef %i.aat) #21 ; 0 uses
  br label %do_merge.exit

bb.hi:                                            ; preds = %bb.hh
  %i.aav = call ptr @git_path_merge_msg(ptr noundef nonnull %0) #21
  %i.aaw = call fastcc i32 @run_git_commit(ptr noundef %i.aav, ptr noundef %i.qx, ptr noundef nonnull %2, i32 noundef 0)
  %.not279.i = icmp eq i32 %i.aaw, 0
  br i1 %.not279.i, label %bb.hj, label %do_merge.exit

bb.hj:                                            ; preds = %bb.hi
  %i.aax = and i32 %i.qq, 1
  %.not220.i = icmp eq i32 %i.aax, 0
  br i1 %.not220.i, label %do_merge.exit, label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.fq
  store i32 1, ptr %i.f, align 4, !tbaa !27
  %i.aay = call fastcc i32 @run_git_commit(ptr noundef null, ptr noundef %i.qx, ptr noundef nonnull %2, i32 noundef 22)
  %i.aaz = icmp ne i32 %i.aay, 0
  %i.aba = zext i1 %i.aaz to i32
  br label %do_merge.exit

do_merge.exit:                                    ; preds = %._crit_edge326.i, %_.exit.i239, %_.exit234.i, %_.exit237.i, %_.exit240.i, %bb.fk, %bb.fq, %bb.ft, %_.exit250.i, %bb.gv, %bb.gw, %bb.gy, %_.exit261.i, %_.exit264.i, %.thread272.i, %bb.hi, %bb.hj, %bb.hk
  %.4.i = phi i32 [ -1, %_.exit.i239 ], [ -1, %_.exit240.i ], [ %i.tn, %bb.fk ], [ %i.aba, %bb.hk ], [ %i.vd, %bb.fq ], [ -1, %_.exit250.i ], [ %.2.i, %bb.gv ], [ -1, %._crit_edge326.i ], [ -1, %bb.gw ], [ %i.aaa, %_.exit261.i ], [ -1, %_.exit264.i ], [ 1, %bb.hi ], [ 0, %bb.hj ], [ -1, %bb.ft ], [ -1, %_.exit237.i ], [ -1, %_.exit234.i ], [ 0, %bb.gy ], [ 1, %.thread272.i ] ; 4 uses
  call void @strbuf_release(ptr noundef nonnull %9) #21
  %i.abb = call i32 @rollback_lock_file(ptr noundef nonnull @do_merge.lock) #21 ; 0 uses
  %i.abc = load ptr, ptr %i.c, align 8, !tbaa !232
  call void @commit_list_free(ptr noundef %i.abc) #21
  %i.abd = load ptr, ptr %i.b, align 8, !tbaa !232
  call void @commit_list_free(ptr noundef %i.abd) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.abe = icmp slt i32 %.4.i, 0
  br i1 %i.abe, label %.thread, label %bb.hl

bb.hl:                                            ; preds = %do_merge.exit
  %i.abf = load ptr, ptr %i.ql, align 8, !tbaa !152 ; 2 uses
  %.not182 = icmp eq ptr %i.abf, null
  br i1 %.not182, label %record_in_rewritten.exit, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 8
  %i.abh = load i32, ptr %i.ax, align 8, !tbaa !147 ; 2 uses
  %i.abi = add nsw i32 %i.abh, 1
  %i.abj = load i32, ptr %i.ay, align 8, !tbaa !146 ; 2 uses
  %i.abk = icmp slt i32 %i.abi, %i.abj
  br i1 %i.abk, label %.lr.ph.i243, label %peek_command.exit

.lr.ph.i243:                                      ; preds = %bb.hm
  %i.abl = load ptr, ptr %i.bc, align 8, !tbaa !138
  %i.abm = sext i32 %i.abh to i64
  %i.abn = add nsw i64 %i.abm, 1
  br label %bb.ho

bb.hn:                                            ; preds = %bb.ho
  %indvars.iv.next.i245 = add nsw i64 %indvars.iv.i244, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i245 to i32
  %exitcond.not = icmp eq i32 %i.abj, %lftr.wideiv.i
  br i1 %exitcond.not, label %peek_command.exit.loopexit, label %bb.ho, !llvm.loop !187

bb.ho:                                            ; preds = %bb.hn, %.lr.ph.i243
  %indvars.iv.i244 = phi i64 [ %i.abn, %.lr.ph.i243 ], [ %indvars.iv.next.i245, %bb.hn ] ; 2 uses
  %i.abo = getelementptr inbounds [40 x i8], ptr %i.abl, i64 %indvars.iv.i244
  %i.abp = load i32, ptr %i.abo, align 8, !tbaa !151 ; 2 uses
  %i.abq = icmp ult i32 %i.abp, 12
  br i1 %i.abq, label %peek_command.exit.loopexit, label %bb.hn

peek_command.exit.loopexit:                       ; preds = %bb.ho, %bb.hn
  %.09.i.ph = phi i32 [ %i.abp, %bb.ho ], [ -1, %bb.hn ]
  %i.abr = and i32 %.09.i.ph, -2
  %i.abs = icmp eq i32 %i.abr, 4
  br label %peek_command.exit

peek_command.exit:                                ; preds = %peek_command.exit.loopexit, %bb.hm
  %.09.i = phi i1 [ false, %bb.hm ], [ %i.abs, %peek_command.exit.loopexit ]
  %i.abt = load ptr, ptr @rebase_path_rewritten_pending.ret, align 8, !tbaa !12 ; 2 uses
  %.not.i.i246 = icmp eq ptr %i.abt, null
  br i1 %.not.i.i246, label %bb.hp, label %rebase_path_rewritten_pending.exit.i

bb.hp:                                            ; preds = %peek_command.exit
  %i.abu = load ptr, ptr @the_repository, align 8, !tbaa !15
  %i.abv = call ptr (ptr, ptr, ...) @repo_git_path(ptr noundef %i.abu, ptr noundef nonnull @.str.306) #21 ; 2 uses
  store ptr %i.abv, ptr @rebase_path_rewritten_pending.ret, align 8, !tbaa !12
  br label %rebase_path_rewritten_pending.exit.i

rebase_path_rewritten_pending.exit.i:             ; preds = %bb.hp, %peek_command.exit
  %i.abw = phi ptr [ %i.abv, %bb.hp ], [ %i.abt, %peek_command.exit ]
  %i.abx = call ptr @fopen_or_warn(ptr noundef %i.abw, ptr noundef nonnull @.str.305) #21 ; 3 uses
  %.not.i247 = icmp eq ptr %i.abx, null
  br i1 %.not.i247, label %record_in_rewritten.exit, label %bb.hq

bb.hq:                                            ; preds = %rebase_path_rewritten_pending.exit.i
  %i.aby = call ptr @oid_to_hex(ptr noundef nonnull %i.abg) #21
  %i.abz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.abx, ptr noundef nonnull @.str.56, ptr noundef %i.aby) #21 ; 0 uses
  %i.aca = call i32 @fclose(ptr noundef nonnull %i.abx) ; 0 uses
  br i1 %.09.i, label %record_in_rewritten.exit, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  call fastcc void @flush_rewritten_pending()
  br label %record_in_rewritten.exit

record_in_rewritten.exit:                         ; preds = %bb.hr, %bb.hq, %rebase_path_rewritten_pending.exit.i, %bb.hl
  %.not385 = icmp eq i32 %.4.i, 0
  br i1 %.not385, label %pick_one_commit.exit.thread, label %bb.hs

bb.hs:                                            ; preds = %record_in_rewritten.exit
  %i.acb = getelementptr inbounds nuw i8, ptr %i.de, i64 20
  %i.acc = load ptr, ptr %i.ql, align 8, !tbaa !152
  %i.acd = load i32, ptr %i.acb, align 4, !tbaa !153
  %i.ace = call fastcc i32 @error_with_patch(ptr noundef %0, ptr noundef %i.acc, ptr noundef %i.di, i32 noundef %i.acd, ptr noundef nonnull %2, i32 noundef %.4.i, i32 noundef 0)
  br label %.thread363

bb.ht:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(24) @__const.make_script_with_merges.label_from_message, i64 24, i1 false)
  %i.acf = getelementptr inbounds nuw i8, ptr %i.de, i64 20
  %i.acg = load i32, ptr %i.acf, align 4, !tbaa !153
  %i.ach = sext i32 %i.acg to i64
  call void @strbuf_add(ptr noundef nonnull %25, ptr noundef %i.di, i64 noundef %i.ach) #21
  %i.aci = load ptr, ptr %i.bl, align 8, !tbaa !37
  %.val200 = load ptr, ptr %0, align 8, !tbaa !191
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, i8 0, i64 40, i1 false)
  store i8 1, ptr %i.bm, align 8
  %i.acj = call i32 @sequencer_get_update_refs_state(ptr noundef %.val200, ptr noundef nonnull %8)
  %.not.i248 = icmp eq i32 %i.acj, 0
  br i1 %.not.i248, label %bb.hu, label %bb.hx

bb.hu:                                            ; preds = %bb.ht
  %i.ack = load ptr, ptr %8, align 8, !tbaa !67   ; 3 uses
  %.not112.i = icmp eq ptr %i.ack, null
  br i1 %.not112.i, label %do_update_ref.exit, label %.lr.ph.i250

.lr.ph.i250:                                      ; preds = %bb.hu
  %i.acl = load i64, ptr %i.bn, align 8, !tbaa !64 ; 2 uses
  %.idx = shl nuw nsw i64 %i.acl, 4
  %i.acm = getelementptr inbounds nuw i8, ptr %i.ack, i64 %.idx
  %.not417 = icmp eq i64 %i.acl, 0
  br i1 %.not417, label %do_update_ref.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i250, %bb.hw
  %.093.i413 = phi ptr [ %i.acv, %bb.hw ], [ %i.ack, %.lr.ph.i250 ] ; 3 uses
  %i.acn = load ptr, ptr %.093.i413, align 8, !tbaa !61
  %i.aco = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.acn, ptr noundef nonnull readonly dereferenceable(1) %i.aci) #22
  %.not12.i = icmp eq i32 %i.aco, 0
  br i1 %.not12.i, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %.lr.ph
  %i.acp = getelementptr inbounds nuw i8, ptr %.093.i413, i64 8
  %i.acq = load ptr, ptr %i.acp, align 8, !tbaa !63
  %i.acr = load ptr, ptr @the_repository, align 8, !tbaa !15
  %i.acs = call ptr @get_main_ref_store(ptr noundef %i.acr) #21
  %i.act = getelementptr inbounds nuw i8, ptr %i.acq, i64 36
  %i.acu = call i32 @refs_read_ref(ptr noundef %i.acs, ptr noundef nonnull @.str.29, ptr noundef nonnull %i.act) #21
  %.not13.i = icmp eq i32 %i.acu, 0
  br i1 %.not13.i, label %do_update_ref.exit, label %bb.hx

bb.hw:                                            ; preds = %.lr.ph
  %i.acv = getelementptr inbounds nuw i8, ptr %.093.i413, i64 16 ; 2 uses
  %i.acw = icmp ult ptr %i.acv, %i.acm
  br i1 %i.acw, label %.lr.ph, label %do_update_ref.exit

do_update_ref.exit:                               ; preds = %bb.hw, %.lr.ph.i250, %bb.hu, %bb.hv
  %i.acx = call fastcc i32 @write_update_refs_state(ptr noundef %8) ; 0 uses
  call void @string_list_clear(ptr noundef nonnull %8, i32 noundef 1) #21
  br label %bb.hx

bb.hx:                                            ; preds = %bb.ht, %bb.hv, %do_update_ref.exit
  %.1.i249347 = phi i32 [ 0, %do_update_ref.exit ], [ -1, %bb.hv ], [ -1, %bb.ht ]
  %.3317 = phi i32 [ %.0415, %do_update_ref.exit ], [ 1, %bb.hv ], [ 1, %bb.ht ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @strbuf_release(ptr noundef nonnull %25) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  br label %pick_one_commit.exit.thread

bb.hy:                                            ; preds = %bb.cb
  %i.acy = icmp ult i32 %i.fu, 12
  br i1 %i.acy, label %bb.hz, label %pick_one_commit.exit.thread

bb.hz:                                            ; preds = %bb.hy
  %i.acz = load i32, ptr @git_gettext_enabled, align 4, !tbaa !27
  %.not4.i252 = icmp eq i32 %i.acz, 0
  br i1 %.not4.i252, label %_.exit254, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.ada = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.313, i32 noundef 5) #21
  %.pre = load i32, ptr %i.de, align 8, !tbaa !151
  br label %_.exit254

_.exit254:                                        ; preds = %bb.hz, %bb.ia
  %i.adb = phi i32 [ %.pre, %bb.ia ], [ %i.fu, %bb.hz ]
  %.0.i253 = phi ptr [ %i.ada, %bb.ia ], [ @.str.313, %bb.hz ]
  %i.adc = call i32 (ptr, ...) @error(ptr noundef %.0.i253, i32 noundef %i.adb) #21 ; 0 uses
  br label %.thread363

pick_one_commit.exit.thread:                      ; preds = %rebase_path_message.exit13.i.i, %bb.bs, %bb.ca, %bb.bt, %rebase_path_message.exit20.i.i, %bb.ct, %do_reset.exit, %bb.hx, %bb.hy, %record_in_rewritten.exit, %do_label.exit, %pick_one_commit.exit, %pick_one_commit.exit.thread325
  %.4318 = phi i32 [ %.0415, %pick_one_commit.exit.thread325 ], [ %.0415, %pick_one_commit.exit ], [ %.0415, %bb.hy ], [ %.1, %bb.ct ], [ %.0415, %do_label.exit ], [ %.0415, %record_in_rewritten.exit ], [ %.0415, %do_reset.exit ], [ %.3317, %bb.hx ], [ %.0415, %bb.bs ], [ %.0415, %bb.ca ], [ %.0415, %bb.bt ], [ %.0415, %rebase_path_message.exit13.i.i ], [ %.0415, %rebase_path_message.exit20.i.i ] ; 2 uses
  %.1134 = phi i32 [ 0, %pick_one_commit.exit.thread325 ], [ %.059.i, %pick_one_commit.exit ], [ 0, %bb.hy ], [ %.013.i333, %bb.ct ], [ 0, %do_label.exit ], [ 0, %record_in_rewritten.exit ], [ 0, %do_reset.exit ], [ %.1.i249347, %bb.hx ], [ %i.go, %bb.bs ], [ %i.lh, %bb.ca ], [ %i.go, %bb.bt ], [ -1, %rebase_path_message.exit13.i.i ], [ -1, %rebase_path_message.exit20.i.i ] ; 3 uses
  %.not189 = icmp eq i32 %.4318, 0
  br i1 %.not189, label %bb.ii, label %.thread

.thread:                                          ; preds = %is_final_fixup.exit.i, %do_merge.exit, %do_reset.exit, %do_label.exit, %do_reset.exit.thread, %do_label.exit.thread, %do_label.exit.thread337, %pick_one_commit.exit.thread
  %.1134354 = phi i32 [ %.1134, %pick_one_commit.exit.thread ], [ %.380.i, %do_reset.exit ], [ -1, %do_label.exit ], [ -1, %do_reset.exit.thread ], [ -1, %do_label.exit.thread337 ], [ -1, %do_label.exit.thread ], [ %.4.i, %do_merge.exit ], [ -1, %is_final_fixup.exit.i ] ; 3 uses
  %.4318352 = phi i32 [ %.4318, %pick_one_commit.exit.thread ], [ 1, %do_reset.exit ], [ 1, %do_label.exit ], [ 1, %do_reset.exit.thread ], [ 1, %do_label.exit.thread337 ], [ 1, %do_label.exit.thread ], [ 1, %do_merge.exit ], [ 1, %is_final_fixup.exit.i ] ; 4 uses
  %i.add = load i32, ptr @git_gettext_enabled, align 4, !tbaa !27
  %.not4.i255 = icmp eq i32 %i.add, 0
  br i1 %.not4.i255, label %_.exit257, label %bb.ib

bb.ib:                                            ; preds = %.thread
  %i.ade = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @rescheduled_advice, i32 noundef 5) #21
  br label %_.exit257

_.exit257:                                        ; preds = %.thread, %bb.ib
  %.0.i256 = phi ptr [ %i.ade, %bb.ib ], [ @rescheduled_advice, %.thread ]
  %i.adf = load i32, ptr %i.ax, align 8, !tbaa !147 ; 3 uses
  %i.adg = add nsw i32 %i.adf, 1                  ; 2 uses
  %i.adh = load i32, ptr %i.ay, align 8, !tbaa !146 ; 2 uses
  %i.adi = icmp slt i32 %i.adg, %i.adh
  br i1 %i.adi, label %bb.ic, label %get_item_line_offset.exit.i

bb.ic:                                            ; preds = %_.exit257
  %i.adj = load ptr, ptr %i.bc, align 8, !tbaa !138
  %i.adk = sext i32 %i.adg to i64
  %i.adl = getelementptr inbounds [40 x i8], ptr %i.adj, i64 %i.adk
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adl, i64 24
  br label %get_item_line_offset.exit.i

get_item_line_offset.exit.i:                      ; preds = %_.exit257, %bb.ic
  %.in.i.i = phi ptr [ %i.adm, %bb.ic ], [ %i.cy, %_.exit257 ]
  %i.adn = load i64, ptr %.in.i.i, align 8, !tbaa !248
  %i.ado = icmp slt i32 %i.adf, %i.adh
  br i1 %i.ado, label %bb.id, label %get_item_line.exit

bb.id:                                            ; preds = %get_item_line_offset.exit.i
  %i.adp = load ptr, ptr %i.bc, align 8, !tbaa !138
  %i.adq = sext i32 %i.adf to i64
  %i.adr = getelementptr inbounds [40 x i8], ptr %i.adp, i64 %i.adq
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 24
  br label %get_item_line.exit

get_item_line.exit:                               ; preds = %get_item_line_offset.exit.i, %bb.id
  %.sink556.in = phi ptr [ %i.ads, %bb.id ], [ %i.cy, %get_item_line_offset.exit.i ]
  %.sink = trunc i64 %i.adn to i32
  %.sink556 = load i64, ptr %.sink556.in, align 8, !tbaa !248 ; 2 uses
  %i.adt = trunc i64 %.sink556 to i32
  %i.adu = sub nsw i32 %.sink, %i.adt
  %i.adv = load ptr, ptr %i.bd, align 8, !tbaa !141
  %sext.i260 = shl i64 %.sink556, 32
  %i.adw = ashr exact i64 %sext.i260, 32
  %i.adx = getelementptr inbounds i8, ptr %i.adv, i64 %i.adw
  call void (ptr, ...) @advise(ptr noundef %.0.i256, i32 noundef %i.adu, ptr noundef %i.adx) #21
  %i.ady = call fastcc i32 @save_todo(ptr noundef %1, ptr noundef %2, i32 noundef %.4318352)
  %.not194 = icmp eq i32 %i.ady, 0
  br i1 %.not194, label %bb.ie, label %.thread363

bb.ie:                                            ; preds = %get_item_line.exit
  %i.adz = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.aea = load ptr, ptr %i.adz, align 8, !tbaa !152 ; 2 uses
end_hunk_3
