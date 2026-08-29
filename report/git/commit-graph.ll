Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/commit-graph?download=true
inline.NumInlined: 313
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@write_commit_graph:bb.a

_.exit.i183:                                      ; preds = %bb.ea, %bb.dz
  %.0.i.i184 = phi ptr [ %i.rr, %bb.ea ], [ @.str.93, %bb.dz ]
  %i.rs = load ptr, ptr %i.rn, align 8, !tbaa !237
  %i.rt = call i32 (ptr, ...) @error(ptr noundef %.0.i.i184, ptr noundef %i.rs) #22 ; 0 uses
  br label %write_commit_graph_file.exit

bb.eb:                                            ; preds = %bb.dy
  %i.ru = load i8, ptr %i.o, align 8
  %i.rv = and i8 %i.ru, 4
  %.not133.i = icmp eq i8 %i.rv, 0
  br i1 %.not133.i, label %bb.ej, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.rw = load ptr, ptr %i.n, align 8, !tbaa !189
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 32
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !55
  %i.rz = call ptr (ptr, ...) @xstrfmt(ptr noundef nonnull @.str.4, ptr noundef %i.ry) #22 ; 2 uses
  %i.sa = call i32 @hold_lock_file_for_update_timeout_mode(ptr noundef nonnull %8, ptr noundef %i.rz, i32 noundef 1, i64 noundef 0, i32 noundef 292) #22 ; 0 uses
  call void @free(ptr noundef %i.rz) #22
  %i.sb = load ptr, ptr %i.rn, align 8, !tbaa !237
  %i.sc = call ptr @mks_tempfile_sm(ptr noundef %i.sb, i32 noundef 0, i32 noundef 292) #22 ; 6 uses
  store ptr %i.sc, ptr %i.f, align 8, !tbaa !238
  %.not134.i = icmp eq ptr %i.sc, null
  br i1 %.not134.i, label %bb.ed, label %bb.ef

bb.ed:                                            ; preds = %bb.ec
  %i.sd = load i32, ptr @git_gettext_enabled, align 4, !tbaa !38
  %.not4.i158.i = icmp eq i32 %i.sd, 0
  br i1 %.not4.i158.i, label %_.exit160.i, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.se = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.94, i32 noundef 5) #22
  br label %_.exit160.i

_.exit160.i:                                      ; preds = %bb.ee, %bb.ed
  %.0.i159.i = phi ptr [ %i.se, %bb.ee ], [ @.str.94, %bb.ed ]
  %i.sf = call i32 (ptr, ...) @error(ptr noundef %.0.i159.i) #22 ; 0 uses
  br label %write_commit_graph_file.exit

bb.ef:                                            ; preds = %bb.ec
  %i.sg = load ptr, ptr %16, align 8, !tbaa !184
  %i.sh = call ptr @get_tempfile_path(ptr noundef nonnull %i.sc) #22
  %i.si = call i32 @adjust_shared_perm(ptr noundef %i.sg, ptr noundef %i.sh) #22
  %.not135.i = icmp eq i32 %i.si, 0
  br i1 %.not135.i, label %bb.ei, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.sj = load i32, ptr @git_gettext_enabled, align 4, !tbaa !38
  %.not4.i161.i = icmp eq i32 %i.sj, 0
  br i1 %.not4.i161.i, label %_.exit163.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.sk = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.95, i32 noundef 5) #22
  br label %_.exit163.i

_.exit163.i:                                      ; preds = %bb.eh, %bb.eg
  %.0.i162.i = phi ptr [ %i.sk, %bb.eh ], [ @.str.95, %bb.eg ]
  %i.sl = call ptr @get_tempfile_path(ptr noundef nonnull %i.sc) #22
  %i.sm = call i32 (ptr, ...) @error(ptr noundef %.0.i162.i, ptr noundef %i.sl) #22 ; 0 uses
  br label %write_commit_graph_file.exit

bb.ei:                                            ; preds = %bb.ef
  %i.sn = load ptr, ptr %16, align 8, !tbaa !184
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 448
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !59
  %i.sq = call i32 @get_tempfile_fd(ptr noundef nonnull %i.sc) #22
  %i.sr = call ptr @get_tempfile_path(ptr noundef nonnull %i.sc) #22
  %i.ss = call ptr @hashfd(ptr noundef %i.sp, i32 noundef %i.sq, ptr noundef %i.sr) #22
  br label %bb.ek

bb.ej:                                            ; preds = %bb.eb
  %i.st = load ptr, ptr %i.rn, align 8, !tbaa !237
  %i.su = call i32 @hold_lock_file_for_update_timeout_mode(ptr noundef nonnull %8, ptr noundef %i.st, i32 noundef 1, i64 noundef 0, i32 noundef 292) #22 ; 0 uses
  %i.sv = load ptr, ptr %16, align 8, !tbaa !184
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 448
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !59
  %.val154.i = load ptr, ptr %8, align 8, !tbaa !240
  %i.sy = call i32 @get_tempfile_fd(ptr noundef %.val154.i) #22
  %.val155.i = load ptr, ptr %8, align 8, !tbaa !240
  %i.sz = call ptr @get_tempfile_path(ptr noundef %.val155.i) #22
  %i.ta = call ptr @hashfd(ptr noundef %i.sx, i32 noundef %i.sy, ptr noundef %i.sz) #22
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %.1125.i = phi ptr [ %i.ss, %bb.ei ], [ %i.ta, %bb.ej ] ; 7 uses
  %i.tb = call ptr @init_chunkfile(ptr noundef %.1125.i) #22 ; 15 uses
  call void @add_chunk(ptr noundef %i.tb, i32 noundef 1330201670, i64 noundef 1024, ptr noundef nonnull @write_graph_chunk_fanout) #22
  %i.tc = and i64 %i.rd, 4294967295               ; 5 uses
  %i.td = load i64, ptr %i.pj, align 8, !tbaa !235 ; 3 uses
  %.not.i.i185 = icmp eq i64 %i.tc, 0
  br i1 %.not.i.i185, label %st_mult.exit.i, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %mul.i.i = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.tc, i64 %i.td)
  %mul.ov.i.i = extractvalue { i64, i1 } %mul.i.i, 1
  br i1 %mul.ov.i.i, label %bb.em, label %st_mult.exit.i

bb.em:                                            ; preds = %bb.el
  call void (ptr, ...) @die(ptr noundef nonnull @.str.59, i64 noundef %i.tc, i64 noundef %i.td) #23
  unreachable

st_mult.exit.i:                                   ; preds = %bb.el, %bb.ek
  %i.te = mul i64 %i.td, %i.tc
  call void @add_chunk(ptr noundef %i.tb, i32 noundef 1330201676, i64 noundef %i.te, ptr noundef nonnull @write_graph_chunk_oids) #22
  %i.tf = add i64 %i.rd, 16
  %i.tg = and i64 %i.tf, 4294967295               ; 4 uses
  %i.th = load i64, ptr %i.pj, align 8, !tbaa !235 ; 3 uses
  %.not.i164.i = icmp eq i64 %i.tg, 0
  br i1 %.not.i164.i, label %st_mult.exit167.i, label %bb.en

bb.en:                                            ; preds = %st_mult.exit.i
  %mul.i165.i = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.tg, i64 %i.th)
  %mul.ov.i166.i = extractvalue { i64, i1 } %mul.i165.i, 1
  br i1 %mul.ov.i166.i, label %bb.eo, label %st_mult.exit167.i

bb.eo:                                            ; preds = %bb.en
  call void (ptr, ...) @die(ptr noundef nonnull @.str.59, i64 noundef %i.tg, i64 noundef %i.th) #23
  unreachable

st_mult.exit167.i:                                ; preds = %bb.en, %st_mult.exit.i
  %i.ti = mul i64 %i.th, %i.tg
  call void @add_chunk(ptr noundef %i.tb, i32 noundef 1128546644, i64 noundef %i.ti, ptr noundef nonnull @write_graph_chunk_data) #22
  %i.tj = load i8, ptr %i.o, align 8
  %i.tk = and i8 %i.tj, 32
  %.not136.i = icmp eq i8 %i.tk, 0
  br i1 %.not136.i, label %bb.er, label %bb.ep

bb.ep:                                            ; preds = %st_mult.exit167.i
  %i.tl = load i64, ptr %i.pj, align 8, !tbaa !235 ; 3 uses
  %mul.ov.i169.i = icmp ugt i64 %i.tl, 4611686018427387903
  br i1 %mul.ov.i169.i, label %bb.eq, label %st_mult.exit170.i

bb.eq:                                            ; preds = %bb.ep
  call void (ptr, ...) @die(ptr noundef nonnull @.str.59, i64 noundef 4, i64 noundef %i.tl) #23
  unreachable

st_mult.exit170.i:                                ; preds = %bb.ep
  %i.tm = shl nuw i64 %i.tl, 2
  call void @add_chunk(ptr noundef %i.tb, i32 noundef 1195655474, i64 noundef %i.tm, ptr noundef nonnull @write_graph_chunk_generation_data) #22
  br label %bb.er

bb.er:                                            ; preds = %st_mult.exit170.i, %st_mult.exit167.i
  %i.tn = getelementptr inbounds nuw i8, ptr %16, i64 84
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !242 ; 3 uses
  %.not137.i = icmp eq i32 %i.to, 0
  br i1 %.not137.i, label %bb.eu, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.tp = sext i32 %i.to to i64                   ; 2 uses
  %mul.ov.i172.i = icmp slt i32 %i.to, 0
  br i1 %mul.ov.i172.i, label %bb.et, label %st_mult.exit173.i

bb.et:                                            ; preds = %bb.es
  call void (ptr, ...) @die(ptr noundef nonnull @.str.59, i64 noundef 8, i64 noundef %i.tp) #23
  unreachable

st_mult.exit173.i:                                ; preds = %bb.es
  %i.tq = shl nuw nsw i64 %i.tp, 3
  call void @add_chunk(ptr noundef %i.tb, i32 noundef 1195659058, i64 noundef %i.tq, ptr noundef nonnull @write_graph_chunk_generation_data_overflow) #22
  br label %bb.eu

bb.eu:                                            ; preds = %st_mult.exit173.i, %bb.er
  %i.tr = load i32, ptr %i.mq, align 8, !tbaa !231 ; 3 uses
  %.not138.i = icmp eq i32 %i.tr, 0
  br i1 %.not138.i, label %bb.ex, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.ts = sext i32 %i.tr to i64                   ; 2 uses
  %mul.ov.i175.i = icmp slt i32 %i.tr, 0
  br i1 %mul.ov.i175.i, label %bb.ew, label %st_mult.exit176.i

bb.ew:                                            ; preds = %bb.ev
  call void (ptr, ...) @die(ptr noundef nonnull @.str.59, i64 noundef 4, i64 noundef %i.ts) #23
  unreachable

st_mult.exit176.i:                                ; preds = %bb.ev
  %i.tt = shl nuw nsw i64 %i.ts, 2
  call void @add_chunk(ptr noundef %i.tb, i32 noundef 1162102597, i64 noundef %i.tt, ptr noundef nonnull @write_graph_chunk_extra_edges) #22
  br label %bb.ex

bb.ex:                                            ; preds = %st_mult.exit176.i, %bb.eu
  %i.tu = load i8, ptr %i.o, align 8
  %i.tv = and i8 %i.tu, 8
  %.not139.i = icmp eq i8 %i.tv, 0
  br i1 %.not139.i, label %bb.fb, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.tw = load i64, ptr %i.pj, align 8, !tbaa !235 ; 3 uses
  %mul.ov.i178.i = icmp ugt i64 %i.tw, 4611686018427387903
  br i1 %mul.ov.i178.i, label %bb.ez, label %st_mult.exit179.i

bb.ez:                                            ; preds = %bb.ey
  call void (ptr, ...) @die(ptr noundef nonnull @.str.59, i64 noundef 4, i64 noundef %i.tw) #23
  unreachable

st_mult.exit179.i:                                ; preds = %bb.ey
  %i.tx = shl nuw i64 %i.tw, 2
  call void @add_chunk(ptr noundef %i.tb, i32 noundef 1112097880, i64 noundef %i.tx, ptr noundef nonnull @write_graph_chunk_bloom_indexes) #22
  %i.ty = getelementptr inbounds nuw i8, ptr %16, i64 200
  %i.tz = load i64, ptr %i.ty, align 8, !tbaa !243 ; 3 uses
  %20 = icmp ugt i64 %i.tz, -13
  br i1 %20, label %bb.fa, label %st_add.exit.i

bb.fa:                                            ; preds = %st_mult.exit179.i
  call void (ptr, ...) @die(ptr noundef nonnull @.str.81, i64 noundef 12, i64 noundef %i.tz) #23
  unreachable

st_add.exit.i:                                    ; preds = %st_mult.exit179.i
  %21 = add nuw i64 %i.tz, 12
  call void @add_chunk(ptr noundef %i.tb, i32 noundef 1111769428, i64 noundef %21, ptr noundef nonnull @write_graph_chunk_bloom_data) #22
  br label %bb.fb

bb.fb:                                            ; preds = %st_add.exit.i, %bb.ex
  %i.ua = getelementptr inbounds nuw i8, ptr %16, i64 132 ; 13 uses
  %i.ub = load i32, ptr %i.ua, align 4, !tbaa !236 ; 2 uses
  %i.uc = icmp sgt i32 %i.ub, 1
  br i1 %i.uc, label %st_mult.exit183.i, label %bb.fc

st_mult.exit183.i:                                ; preds = %bb.fb
  %i.ud = add nsw i32 %i.ub, -1
  %i.ue = zext nneg i32 %i.ud to i64
  %i.uf = mul nuw nsw i64 %i.tc, %i.ue
  call void @add_chunk(ptr noundef %i.tb, i32 noundef 1111577413, i64 noundef %i.uf, ptr noundef nonnull @write_graph_chunk_base) #22
  br label %bb.fc

bb.fc:                                            ; preds = %st_mult.exit183.i, %bb.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i32 1213220675, ptr %i.e, align 4, !tbaa !38
  call void @hashwrite(ptr noundef %.1125.i, ptr noundef nonnull %i.e, i32 noundef 4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 1, ptr %i.d, align 1, !tbaa !84
  call void @hashwrite(ptr noundef %.1125.i, ptr noundef nonnull %i.d, i32 noundef 1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ug = load ptr, ptr %16, align 8, !tbaa !184
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 448
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !59
  %i.uj = call zeroext i8 @oid_version(ptr noundef %i.ui) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.uj, ptr %i.c, align 1, !tbaa !84
  call void @hashwrite(ptr noundef %.1125.i, ptr noundef nonnull %i.c, i32 noundef 1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.uk = call i32 @get_num_chunks(ptr noundef %i.tb) #22
  %i.ul = trunc i32 %i.uk to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.ul, ptr %i.b, align 1, !tbaa !84
  call void @hashwrite(ptr noundef %.1125.i, ptr noundef nonnull %i.b, i32 noundef 1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.um = load i32, ptr %i.ua, align 4, !tbaa !236
  %i.un = trunc i32 %i.um to i8
  %i.uo = add i8 %i.un, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.uo, ptr %i.a, align 1, !tbaa !84
  call void @hashwrite(ptr noundef %.1125.i, ptr noundef nonnull %i.a, i32 noundef 1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.up = load i8, ptr %i.o, align 8
  %i.uq = and i8 %i.up, 2
  %.not140.i = icmp eq i8 %i.uq, 0
  br i1 %.not140.i, label %bb.fi, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.ur = call i32 @get_num_chunks(ptr noundef %i.tb) #22 ; 2 uses
  %i.us = load i32, ptr @git_gettext_enabled, align 4, !tbaa !38
  %.not.i184.i = icmp eq i32 %i.us, 0
  br i1 %.not.i184.i, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.ut = icmp eq i32 %i.ur, 1
  %i.uu = select i1 %i.ut, ptr @.str.96, ptr @.str.97
  br label %Q_.exit.i186

bb.ff:                                            ; preds = %bb.fd
  %i.uv = sext i32 %i.ur to i64
  %i.uw = call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.97, i64 noundef %i.uv, i32 noundef 5) #22
  br label %Q_.exit.i186

Q_.exit.i186:                                     ; preds = %bb.ff, %bb.fe
  %.0.i185.i = phi ptr [ %i.uw, %bb.ff ], [ %i.uu, %bb.fe ]
  %i.ux = call i32 @get_num_chunks(ptr noundef %i.tb) #22
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %9, ptr noundef %.0.i185.i, i32 noundef %i.ux) #22
  %i.uy = load ptr, ptr %16, align 8, !tbaa !184
  %i.uz = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !110
  %i.vb = call i32 @get_num_chunks(ptr noundef %i.tb) #22 ; 2 uses
  %i.vc = sext i32 %i.vb to i64                   ; 3 uses
  %i.vd = load i64, ptr %i.pj, align 8, !tbaa !235 ; 3 uses
  %.not.i186.i = icmp eq i32 %i.vb, 0
  br i1 %.not.i186.i, label %st_mult.exit189.i, label %bb.fg

bb.fg:                                            ; preds = %Q_.exit.i186
  %mul.i187.i = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.vc, i64 %i.vd)
  %mul.ov.i188.i = extractvalue { i64, i1 } %mul.i187.i, 1
  br i1 %mul.ov.i188.i, label %bb.fh, label %st_mult.exit189.i

bb.fh:                                            ; preds = %bb.fg
  call void (ptr, ...) @die(ptr noundef nonnull @.str.59, i64 noundef %i.vc, i64 noundef %i.vd) #23
  unreachable

st_mult.exit189.i:                                ; preds = %bb.fg, %Q_.exit.i186
  %i.ve = mul i64 %i.vd, %i.vc
  %i.vf = call ptr @start_delayed_progress(ptr noundef %i.uy, ptr noundef %i.va, i64 noundef %i.ve) #22
  store ptr %i.vf, ptr %i.jn, align 8, !tbaa !204
  br label %bb.fi

bb.fi:                                            ; preds = %st_mult.exit189.i, %bb.fc
  %i.vg = call i32 @write_chunkfile(ptr noundef %i.tb, ptr noundef nonnull %16) #22 ; 0 uses
  %i.vh = load i32, ptr @git_gettext_enabled, align 4, !tbaa !38
  %.not4.i.i.i187 = icmp eq i32 %i.vh, 0
  br i1 %.not4.i.i.i187, label %stop_progress.exit.i188, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.vi = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.56, i32 noundef 5) #22
  br label %stop_progress.exit.i188

stop_progress.exit.i188:                          ; preds = %bb.fj, %bb.fi
  %.0.i.i.i189 = phi ptr [ %i.vi, %bb.fj ], [ @.str.56, %bb.fi ]
  call void @stop_progress_msg(ptr noundef nonnull %i.jn, ptr noundef %.0.i.i.i189) #22
  call void @strbuf_release(ptr noundef nonnull %9) #22
  %i.vj = load i8, ptr %i.o, align 8
  %i.vk = and i8 %i.vj, 4
  %.not141.i = icmp ne i8 %i.vk, 0
  %i.vl = getelementptr inbounds nuw i8, ptr %16, i64 120 ; 2 uses
  %i.vm = load ptr, ptr %i.vl, align 8
  %.not142.i = icmp ne ptr %i.vm, null
  %or.cond218.not221 = select i1 %.not141.i, i1 %.not142.i, i1 false
  %i.vn = load i32, ptr %i.ua, align 4
  %i.vo = icmp sgt i32 %i.vn, 1
  %or.cond220 = select i1 %or.cond218.not221, i1 %i.vo, i1 false
  br i1 %or.cond220, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %stop_progress.exit.i188
  %i.vp = getelementptr inbounds nuw i8, ptr %16, i64 168 ; 2 uses
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !244
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 32
  %i.vs = call ptr @oid_to_hex(ptr noundef nonnull %i.vr) #22
  %i.vt = call ptr @xstrdup(ptr noundef %i.vs) #22 ; 2 uses
  %i.vu = load ptr, ptr %i.vp, align 8, !tbaa !244
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 80
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !79
  %i.vx = getelementptr i8, ptr %i.vw, i64 32
  %.val153.i = load ptr, ptr %i.vx, align 8, !tbaa !55
  %i.vy = call ptr (ptr, ...) @xstrfmt(ptr noundef nonnull @.str.39, ptr noundef %.val153.i, ptr noundef %i.vt) #22
  %i.vz = getelementptr inbounds nuw i8, ptr %16, i64 144 ; 2 uses
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !245
  %i.wb = load i32, ptr %i.ua, align 4, !tbaa !236
  %i.wc = sext i32 %i.wb to i64
  %i.wd = getelementptr [8 x i8], ptr %i.wa, i64 %i.wc
  %i.we = getelementptr i8, ptr %i.wd, i64 -16
  %i.wf = load ptr, ptr %i.we, align 8, !tbaa !196
  call void @free(ptr noundef %i.wf) #22
  %i.wg = getelementptr inbounds nuw i8, ptr %16, i64 152 ; 2 uses
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !246
  %i.wi = load i32, ptr %i.ua, align 4, !tbaa !236
  %i.wj = sext i32 %i.wi to i64
  %i.wk = getelementptr [8 x i8], ptr %i.wh, i64 %i.wj
  %i.wl = getelementptr i8, ptr %i.wk, i64 -16
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !196
  call void @free(ptr noundef %i.wm) #22
  %i.wn = load ptr, ptr %i.vz, align 8, !tbaa !245
  %i.wo = load i32, ptr %i.ua, align 4, !tbaa !236
  %i.wp = sext i32 %i.wo to i64                   ; 2 uses
  %i.wq = getelementptr [8 x i8], ptr %i.wn, i64 %i.wp
  %i.wr = getelementptr i8, ptr %i.wq, i64 -16
  store ptr %i.vy, ptr %i.wr, align 8, !tbaa !196
  %i.ws = load ptr, ptr %i.wg, align 8, !tbaa !246
  %i.wt = getelementptr [8 x i8], ptr %i.ws, i64 %i.wp
  %i.wu = getelementptr i8, ptr %i.wt, i64 -16
  store ptr %i.vt, ptr %i.wu, align 8, !tbaa !196
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %stop_progress.exit.i188
  %i.wv = load ptr, ptr %16, align 8, !tbaa !184
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 16
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !125
  call void @close_commit_graph(ptr noundef %i.wx)
  %i.wy = call i32 @finalize_hashfile(ptr noundef %.1125.i, ptr noundef nonnull %i.g, i32 noundef 8, i32 noundef 6) #22 ; 0 uses
  call void @free_chunkfile(ptr noundef %i.tb) #22
  %i.wz = load i8, ptr %i.o, align 8
  %i.xa = and i8 %i.wz, 4
  %.not143.i = icmp eq i8 %i.xa, 0
  br i1 %.not143.i, label %bb.fx, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %.val156.i = load ptr, ptr %8, align 8, !tbaa !240
  %i.xb = call ptr @fdopen_tempfile(ptr noundef %.val156.i, ptr noundef nonnull @.str.98) #22
  %.not144.i = icmp eq ptr %i.xb, null
  br i1 %.not144.i, label %bb.fn, label %bb.fp

bb.fn:                                            ; preds = %bb.fm
  %i.xc = load i32, ptr @git_gettext_enabled, align 4, !tbaa !38
  %.not4.i190.i = icmp eq i32 %i.xc, 0
  br i1 %.not4.i190.i, label %_.exit192.i, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.xd = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.99, i32 noundef 5) #22
  br label %_.exit192.i

_.exit192.i:                                      ; preds = %bb.fo, %bb.fn
  %.0.i191.i = phi ptr [ %i.xd, %bb.fo ], [ @.str.99, %bb.fn ]
  %i.xe = call i32 (ptr, ...) @error(ptr noundef %.0.i191.i) #22 ; 0 uses
  br label %write_commit_graph_file.exit

bb.fp:                                            ; preds = %bb.fm
  %i.xf = load ptr, ptr %i.vl, align 8, !tbaa !247 ; 3 uses
  %.not145.i = icmp eq ptr %i.xf, null
  br i1 %.not145.i, label %bb.ft, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.xg = load i32, ptr %i.ua, align 4, !tbaa !236 ; 2 uses
  %i.xh = icmp sgt i32 %i.xg, 1
end_hunk_0
begin_hunk_1_@replace_refs_enabled

declare void @prepare_replace_object(ptr noundef) local_unnamed_addr #2

declare void @prepare_commit_graft(ptr noundef) local_unnamed_addr #2

declare i32 @is_repository_shallow(ptr noundef) local_unnamed_addr #2

declare void @strbuf_addf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @add_packed_git(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @open_pack_index(ptr noundef) local_unnamed_addr #2

declare void @close_pack(ptr noundef) local_unnamed_addr #2

declare i32 @for_each_object_in_pack(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @add_packed_commits(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %4 = alloca %struct.object_info, align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.b = tail call i64 @nth_packed_object_offset(ptr noundef %1, i32 noundef %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, i8 0, i64 72, i1 false)
  store ptr %i.a, ptr %4, align 8, !tbaa !216
  %i.d = call i32 @packed_object_info(ptr noundef %1, i64 noundef %i.b, ptr noundef nonnull %4) #22
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = call fastcc ptr @_(ptr noundef nonnull @.str.68)
  %i.g = call ptr @oid_to_hex(ptr noundef %0) #22
  call void (ptr, ...) @die(ptr noundef %i.f, ptr noundef %i.g) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = call i32 @add_packed_commits_oi(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 0
}

; Function Attrs: nounwind
declare ptr @dcngettext(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #16

declare void @strbuf_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

declare i64 @nth_packed_object_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @packed_object_info(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @add_packed_commits_oi(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !204  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !205
  %i.e = add nsw i32 %i.d, 1                      ; 2 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !205
  %i.f = sext i32 %i.e to i64
  tail call void @display_progress(ptr noundef nonnull %i.b, i64 noundef %i.f) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !216
  %i.h = load i32, ptr %i.g, align 4, !tbaa !38
  %.not9 = icmp eq i32 %i.h, 1
  br i1 %.not9, label %bb.d, label %set_commit_pos.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @oid_array_append(ptr noundef nonnull %i.i, ptr noundef %0) #22
  %i.j = load ptr, ptr %2, align 8, !tbaa !184
  %i.k = tail call ptr @lookup_commit(ptr noundef %i.j, ptr noundef %0) #22 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %set_commit_pos.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr @set_commit_pos.max_pos, align 4, !tbaa !38 ; 2 uses
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr @set_commit_pos.max_pos, align 4, !tbaa !38
  %i.n = getelementptr i8, ptr %i.k, i64 72
  %.val.i = load i32, ptr %i.n, align 8, !tbaa !40 ; 2 uses
  %i.o = udiv i32 %.val.i, 131064                 ; 6 uses
  %i.p = urem i32 %.val.i, 131064
  %i.q = load i32, ptr @commit_pos.2, align 8, !tbaa !307
  %.not.i.i.i = icmp ugt i32 %i.q, %i.o
  %.pre.i.i.i = load ptr, ptr @commit_pos.3, align 8, !tbaa !309 ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %st_mult.exit.i.i.i

st_mult.exit.i.i.i:                               ; preds = %bb.e
  %i.r = add nuw nsw i32 %i.o, 1                  ; 2 uses
  %i.s = shl nuw nsw i32 %i.r, 3
  %i.t = zext nneg i32 %i.s to i64
  %i.u = tail call ptr @xrealloc(ptr noundef %.pre.i.i.i, i64 noundef %i.t) #22 ; 4 uses
  store ptr %i.u, ptr @commit_pos.3, align 8, !tbaa !309
  %i.v = load i32, ptr @commit_pos.2, align 8, !tbaa !307 ; 5 uses
  %.not332.i.i.i = icmp ugt i32 %i.v, %i.o
  br i1 %.not332.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %st_mult.exit.i.i.i
  %i.w = add nuw nsw i32 %i.o, 1
  %i.x = sub nuw i32 %i.w, %i.v                   ; 3 uses
  %min.iters.check = icmp samesign ult i32 %i.x, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader14, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i32 %i.x, 131068                   ; 3 uses
  %i.y = add i32 %i.v, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = add i32 %i.v, %index
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.ab, align 8, !tbaa !150
  store <2 x ptr> splat (ptr null), ptr %i.ac, align 8, !tbaa !150
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.ad = icmp eq i32 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !310

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.x, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader14

.lr.ph.i.i.i.preheader14:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.0303.i.i.i.ph = phi i32 [ %i.v, %.lr.ph.i.i.i.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader14, %.lr.ph.i.i.i
  %.0303.i.i.i = phi i32 [ %i.ag, %.lr.ph.i.i.i ], [ %.0303.i.i.i.ph, %.lr.ph.i.i.i.preheader14 ] ; 2 uses
  %i.ae = zext i32 %.0303.i.i.i to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ae
  store ptr null, ptr %i.af, align 8, !tbaa !150
  %i.ag = add i32 %.0303.i.i.i, 1                 ; 2 uses
  %.not33.i.i.i = icmp ugt i32 %i.ag, %i.o
  br i1 %.not33.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !311

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block, %st_mult.exit.i.i.i
  store i32 %i.r, ptr @commit_pos.2, align 8, !tbaa !307
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.i, %bb.e
  %i.ah = phi ptr [ %i.u, %._crit_edge.i.i.i ], [ %.pre.i.i.i, %bb.e ]
  %i.ai = zext nneg i32 %i.o to i64               ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !150 ; 2 uses
  %.not34.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not34.i.i.i, label %bb.g, label %commit_pos_at.exit.i

bb.g:                                             ; preds = %bb.f
  %i.al = tail call ptr @xcalloc(i64 noundef 131064, i64 noundef 4) #22 ; 2 uses
  %i.am = load ptr, ptr @commit_pos.3, align 8, !tbaa !309
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ai
  store ptr %i.al, ptr %i.an, align 8, !tbaa !150
  br label %commit_pos_at.exit.i

commit_pos_at.exit.i:                             ; preds = %bb.g, %bb.f
  %i.ao = phi ptr [ %i.ak, %bb.f ], [ %i.al, %bb.g ]
  %i.ap = zext nneg i32 %i.p to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ap
  store i32 %i.l, ptr %i.aq, align 4, !tbaa !38
  br label %set_commit_pos.exit

set_commit_pos.exit:                              ; preds = %commit_pos_at.exit.i, %bb.d, %bb.c
  ret i32 0
}

declare i32 @packfile_store_for_each_object(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @unparse_commit(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @repo_parse_commit_internal(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @oid_array_sort(ptr noundef) local_unnamed_addr #2

declare i32 @commit_list_count(ptr noundef) local_unnamed_addr #2

declare void @commit_stack_push(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @st_add(i64 noundef %0, i64 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 %1)
  %i.b = extractvalue { i64, i1 } %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.81, i64 noundef %0, i64 noundef %1) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %2 = add nuw i64 %1, %0
  ret i64 %2
}

declare void @commit_stack_grow(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @lookup_commit_reference_gently(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @commit_compare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !170
  %i.b = load ptr, ptr %1, align 8, !tbaa !170
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = tail call i32 @memcmp(ptr noundef nonnull readonly dereferenceable(32) %i.c, ptr noundef nonnull readonly dereferenceable(32) %i.d, i64 noundef 32) #25
  ret i32 %i.e
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define internal range(i64 0, 4294967296) i64 @get_topo_level(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !192  ; 8 uses
  %i.c = getelementptr i8, ptr %0, i64 72
  %.val = load i32, ptr %i.c, align 8, !tbaa !40  ; 2 uses
  %i.d = load i32, ptr %i.b, align 8, !tbaa !145  ; 2 uses
  %i.e = udiv i32 %.val, %i.d                     ; 7 uses
  %i.f = urem i32 %.val, %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !148
  %.not.i.i = icmp ugt i32 %i.h, %i.e
  br i1 %.not.i.i, label %._crit_edge4.i.i, label %st_mult.exit.i.i

._crit_edge4.i.i:                                 ; preds = %bb.a
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !149
  br label %bb.b

st_mult.exit.i.i:                                 ; preds = %bb.a
  %i.i = add i32 %i.e, 1                          ; 2 uses
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !149
  %i.m = shl nuw nsw i64 %i.j, 3
  %i.n = tail call ptr @xrealloc(ptr noundef %i.l, i64 noundef %i.m) #22 ; 4 uses
  store ptr %i.n, ptr %i.k, align 8, !tbaa !149
  %i.o = load i32, ptr %i.g, align 8, !tbaa !148  ; 9 uses
  %.not332.i.i = icmp ugt i32 %i.o, %i.e
  br i1 %.not332.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %st_mult.exit.i.i
  %i.p = add i32 %i.o, 1
  %i.q = add i32 %i.e, 1
  %i.r = tail call i32 @llvm.umax.i32(i32 %i.p, i32 %i.q)
  %i.s = sub i32 %i.r, %i.o                       ; 3 uses
  %min.iters.check = icmp ult i32 %i.s, 18
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader5, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i.preheader
  %i.t = add i32 %i.o, 1
  %i.u = add i32 %i.e, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %i.t, i32 %i.u)
  %i.v = add i32 %umax, -1
  %i.w = icmp ult i32 %i.v, %i.o
  br i1 %i.w, label %.lr.ph.i.i.preheader5, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i32 %i.s, -4                       ; 3 uses
  %i.x = add i32 %i.o, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = add i32 %i.o, %index
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.aa, align 8, !tbaa !150
  store <2 x ptr> splat (ptr null), ptr %i.ab, align 8, !tbaa !150
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.ac = icmp eq i32 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !312

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.s, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader5

.lr.ph.i.i.preheader5:                            ; preds = %vector.scevcheck, %.lr.ph.i.i.preheader, %middle.block
  %.0303.i.i.ph = phi i32 [ %i.o, %vector.scevcheck ], [ %i.o, %.lr.ph.i.i.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader5, %.lr.ph.i.i
  %.0303.i.i = phi i32 [ %i.af, %.lr.ph.i.i ], [ %.0303.i.i.ph, %.lr.ph.i.i.preheader5 ] ; 2 uses
  %i.ad = zext i32 %.0303.i.i to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ad
  store ptr null, ptr %i.ae, align 8, !tbaa !150
  %i.af = add i32 %.0303.i.i, 1                   ; 2 uses
  %.not33.i.i = icmp ugt i32 %i.af, %i.e
  br i1 %.not33.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !313

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block, %st_mult.exit.i.i
  store i32 %i.i, ptr %i.g, align 8, !tbaa !148
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i, %._crit_edge4.i.i
  %i.ag = phi ptr [ %.pre.i.i, %._crit_edge4.i.i ], [ %i.n, %._crit_edge.i.i ]
  %i.ah = zext i32 %i.e to i64                    ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !150 ; 2 uses
  %.not34.i.i = icmp eq ptr %i.aj, null
  br i1 %.not34.i.i, label %bb.c, label %topo_level_slab_at.exit

bb.c:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.al = load i32, ptr %i.b, align 8, !tbaa !145
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !155
  %i.ap = zext i32 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 2
  %i.ar = tail call ptr @xcalloc(i64 noundef %i.am, i64 noundef %i.aq) #22 ; 2 uses
  %i.as = load ptr, ptr %i.ak, align 8, !tbaa !149
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ah
  store ptr %i.ar, ptr %i.at, align 8, !tbaa !150
  br label %topo_level_slab_at.exit

topo_level_slab_at.exit:                          ; preds = %bb.b, %bb.c
  %i.au = phi ptr [ %i.aj, %bb.b ], [ %i.ar, %bb.c ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !155
  %i.ax = mul i32 %i.aw, %i.f
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !38
  %i.bb = zext i32 %i.ba to i64
  ret i64 %i.bb
}

; Function Attrs: nounwind uwtable
define internal void @set_topo_level(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !192  ; 8 uses
  %i.c = getelementptr i8, ptr %0, i64 72
  %.val = load i32, ptr %i.c, align 8, !tbaa !40  ; 2 uses
  %i.d = load i32, ptr %i.b, align 8, !tbaa !145  ; 2 uses
  %i.e = udiv i32 %.val, %i.d                     ; 7 uses
  %i.f = urem i32 %.val, %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !148
  %.not.i.i = icmp ugt i32 %i.h, %i.e
  br i1 %.not.i.i, label %._crit_edge4.i.i, label %st_mult.exit.i.i

._crit_edge4.i.i:                                 ; preds = %bb.a
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !149
  br label %bb.b

st_mult.exit.i.i:                                 ; preds = %bb.a
  %i.i = add i32 %i.e, 1                          ; 2 uses
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !149
  %i.m = shl nuw nsw i64 %i.j, 3
  %i.n = tail call ptr @xrealloc(ptr noundef %i.l, i64 noundef %i.m) #22 ; 4 uses
  store ptr %i.n, ptr %i.k, align 8, !tbaa !149
  %i.o = load i32, ptr %i.g, align 8, !tbaa !148  ; 9 uses
  %.not332.i.i = icmp ugt i32 %i.o, %i.e
  br i1 %.not332.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %st_mult.exit.i.i
  %i.p = add i32 %i.o, 1
  %i.q = add i32 %i.e, 1
  %i.r = tail call i32 @llvm.umax.i32(i32 %i.p, i32 %i.q)
  %i.s = sub i32 %i.r, %i.o                       ; 3 uses
  %min.iters.check = icmp ult i32 %i.s, 18
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader5, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i.preheader
  %i.t = add i32 %i.o, 1
  %i.u = add i32 %i.e, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %i.t, i32 %i.u)
  %i.v = add i32 %umax, -1
  %i.w = icmp ult i32 %i.v, %i.o
  br i1 %i.w, label %.lr.ph.i.i.preheader5, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i32 %i.s, -4                       ; 3 uses
  %i.x = add i32 %i.o, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = add i32 %i.o, %index
end_hunk_1
