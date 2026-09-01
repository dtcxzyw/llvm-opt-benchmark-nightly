Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/isocline?download=true
inline.NumInlined: 1215
inline.NumDeleted: 328
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 23
begin_hunk_0_@edit_line:bb.a
  %.val157.i.i = load i64, ptr %i.os, align 8, !tbaa !172 ; 2 uses
  %i.ot = icmp slt i64 %.val157.i.i, 1
  br i1 %i.ot, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %mem_strndup.exit.i
  %i.ou = load ptr, ptr %i.aa, align 8, !tbaa !137
  %i.ov = getelementptr i8, ptr %i.ou, i64 33
  %.val156.i.i = load i8, ptr %i.ov, align 1, !tbaa !165, !range !130, !noundef !131
  %i.ow = trunc nuw i8 %.val156.i.i to i1
  br i1 %i.ow, label %edit_history_search_with_current_word.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ox = load ptr, ptr @stderr, align 8, !tbaa !75
  %fputc.i.i.i = call i32 @fputc(i32 7, ptr %i.ox) ; 0 uses
  %i.oy = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.oz = call i32 @fflush(ptr noundef %i.oy)     ; 0 uses
  br label %edit_history_search_with_current_word.exit

bb.ch:                                            ; preds = %mem_strndup.exit.i
  %i.pa = load i8, ptr %i.ah, align 8, !tbaa !328, !range !130, !noundef !131
  %i.pb = trunc nuw i8 %i.pa to i1
  br i1 %i.pb, label %bb.ci, label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  %i.pc = load ptr, ptr %6, align 8, !tbaa !320   ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 16
  %i.pe = load i64, ptr %i.pd, align 8, !tbaa !46
  %i.pf = icmp slt i64 %i.pe, 0
  br i1 %i.pf, label %history_update.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ci
  %i.pg = load ptr, ptr %i.pc, align 8, !tbaa !49 ; 2 uses
  %i.ph = add nsw i64 %.val157.i.i, -1
  %i.pi = getelementptr inbounds nuw i8, ptr %i.os, i64 32
  %i.pj = getelementptr inbounds nuw i8, ptr %i.os, i64 16
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cj, %.lr.ph.i.i.i.i.i
  %.017.i.i.i.i.i = phi i64 [ %i.ph, %.lr.ph.i.i.i.i.i ], [ %i.pp, %bb.cj ] ; 2 uses
  %i.pk = load ptr, ptr %i.pi, align 8, !tbaa !173
  %i.pl = load ptr, ptr %i.pj, align 8, !tbaa !174
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.pl, i64 %.017.i.i.i.i.i
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !61
  %i.po = getelementptr i8, ptr %i.pk, i64 16
  %.val.i.i.i.i.i = load ptr, ptr %i.po, align 8, !tbaa !50
  call void %.val.i.i.i.i.i(ptr noundef %i.pn) #28, !inline_history !347
  %i.pp = add nuw nsw i64 %.017.i.i.i.i.i, 1      ; 2 uses
  %i.pq = load i64, ptr %i.os, align 8, !tbaa !172 ; 2 uses
  %i.pr = icmp slt i64 %i.pp, %i.pq
  br i1 %i.pr, label %bb.cj, label %history_remove_last.exit.i.i.i, !llvm.loop !176

history_remove_last.exit.i.i.i:                   ; preds = %bb.cj
  %i.ps = icmp eq ptr %i.pg, null
  %spec.select.i36.i = select i1 %i.ps, ptr @.str.3, ptr %i.pg
  %i.pt = add nsw i64 %i.pq, -1
  store i64 %i.pt, ptr %i.os, align 8, !tbaa !172
  %i.pu = call fastcc zeroext i1 @history_push(ptr noundef nonnull %i.os, ptr noundef nonnull readonly %spec.select.i36.i) ; 0 uses
  br label %history_update.exit.i.i

history_update.exit.i.i:                          ; preds = %history_remove_last.exit.i.i.i, %bb.ci
  store i64 0, ptr %i.ak, align 8, !tbaa !348
  store i8 0, ptr %i.ah, align 8, !tbaa !328
  br label %bb.ck

bb.ck:                                            ; preds = %history_update.exit.i.i, %bb.ch
  %i.pv = load i8, ptr %i.ca, align 1, !tbaa !335, !range !130, !noundef !131
  %i.pw = trunc nuw i8 %i.pv to i1
  br i1 %i.pw, label %editor_undo_capture.exit.i.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.px = load ptr, ptr %i.l, align 8, !tbaa !317 ; 3 uses
  %i.py = load ptr, ptr %6, align 8, !tbaa !320   ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 16
  %i.qa = load i64, ptr %i.pz, align 8, !tbaa !46
  %i.qb = icmp slt i64 %i.qa, 0
  br i1 %i.qb, label %sbuf_string.exit.i.i.i.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.qc = load ptr, ptr %i.py, align 8, !tbaa !49 ; 2 uses
  %i.qd = icmp eq ptr %i.qc, null
  %spec.select.i.i.i.i.i.i = select i1 %i.qd, ptr @.str.3, ptr %i.qc
  br label %sbuf_string.exit.i.i.i.i

sbuf_string.exit.i.i.i.i:                         ; preds = %bb.cm, %bb.cl
  %.0.i.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i.i, %bb.cm ], [ null, %bb.cl ] ; 2 uses
  %i.qe = load i64, ptr %i.ae, align 8, !tbaa !325 ; 2 uses
  %.val.i.i.i163.i.i = load ptr, ptr %i.px, align 8, !tbaa !33
  %i.qf = call ptr %.val.i.i.i163.i.i(i64 noundef 24) #28, !inline_history !349 ; 9 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.qf, null
  br i1 %.not.i.i.i.i.i.i, label %editor_undo_capture.exit.i.i, label %bb.cn

bb.cn:                                            ; preds = %sbuf_string.exit.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.qf, i8 0, i64 24, i1 false)
  %i.qg = icmp eq ptr %.0.i.i.i.i.i.i, null
  %spec.store.select.i.i.i.i.i = select i1 %i.qg, ptr @.str.3, ptr %.0.i.i.i.i.i.i ; 2 uses
  %i.qh = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %spec.store.select.i.i.i.i.i) #29
  %i.qi = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.qh, i64 0)
  %i.qj = add nuw nsw i64 %i.qi, 1                ; 2 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %i.px, align 8, !tbaa !33
  %i.qk = call ptr %.val.i.i.i.i.i.i(i64 noundef %i.qj) #28, !inline_history !350 ; 3 uses
  %i.ql = icmp eq ptr %i.qk, null
  br i1 %i.ql, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  store ptr null, ptr %i.qm, align 8, !tbaa !338
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qf, i64 16
  store i64 %i.qe, ptr %i.qn, align 8, !tbaa !340
  %i.qo = getelementptr i8, ptr %i.px, i64 16
  %.val14.i.i.i.i.i = load ptr, ptr %i.qo, align 8, !tbaa !50
  call void %.val14.i.i.i.i.i(ptr noundef nonnull %i.qf) #28, !inline_history !351
  br label %editor_undo_capture.exit.i.i

bb.cp:                                            ; preds = %bb.cn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.qk, ptr noundef nonnull readonly align 1 dereferenceable(1) %spec.store.select.i.i.i.i.i, i64 %i.qj, i1 false)
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  store ptr %i.qk, ptr %i.qp, align 8, !tbaa !338
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qf, i64 16
  store i64 %i.qe, ptr %i.qq, align 8, !tbaa !340
  %i.qr = load ptr, ptr %i.al, align 8, !tbaa !342
  store ptr %i.qr, ptr %i.qf, align 8, !tbaa !343
  store ptr %i.qf, ptr %i.al, align 8, !tbaa !342
  br label %editor_undo_capture.exit.i.i

editor_undo_capture.exit.i.i:                     ; preds = %bb.cp, %bb.co, %sbuf_string.exit.i.i.i.i, %bb.ck
  store i8 1, ptr %i.ca, align 1, !tbaa !335
  %i.qs = load ptr, ptr @rpenv, align 8, !tbaa !121 ; 2 uses
  %i.qt = icmp eq ptr %i.qs, null
  br i1 %i.qt, label %bb.cq, label %ic_get_env.exit.thread6.i.i.i

bb.cq:                                            ; preds = %editor_undo_capture.exit.i.i
  %i.qu = call fastcc ptr @ic_env_create(ptr noundef null, ptr noundef null, ptr noundef null) ; 2 uses
  store ptr %i.qu, ptr @rpenv, align 8, !tbaa !121
  %.not.i.i.i.i = icmp eq ptr %i.qu, null
  br i1 %.not.i.i.i.i, label %ic_enable_hint.exit.i.i, label %ic_get_env.exit.i.i.i

ic_get_env.exit.i.i.i:                            ; preds = %bb.cq
  %i.qv = call i32 @atexit(ptr noundef nonnull @ic_atexit) #28 ; 0 uses
  %.pre.i.i.i.i = load ptr, ptr @rpenv, align 8, !tbaa !121 ; 2 uses
  %i.qw = icmp eq ptr %.pre.i.i.i.i, null
  br i1 %i.qw, label %ic_enable_hint.exit.i.i, label %ic_get_env.exit.thread6.i.i.i

ic_get_env.exit.thread6.i.i.i:                    ; preds = %ic_get_env.exit.i.i.i, %editor_undo_capture.exit.i.i
  %i.qx = phi ptr [ %.pre.i.i.i.i, %ic_get_env.exit.i.i.i ], [ %i.qs, %editor_undo_capture.exit.i.i ]
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 112 ; 2 uses
  %i.qz = load i8, ptr %i.qy, align 8, !tbaa !193, !range !130, !noundef !131
  store i8 1, ptr %i.qy, align 8, !tbaa !193
  br label %ic_enable_hint.exit.i.i

ic_enable_hint.exit.i.i:                          ; preds = %ic_get_env.exit.thread6.i.i.i, %ic_get_env.exit.i.i.i, %bb.cq
  %i.ra = phi i8 [ %i.qz, %ic_get_env.exit.thread6.i.i.i ], [ 1, %ic_get_env.exit.i.i.i ], [ 1, %bb.cq ]
  %i.rb = load ptr, ptr %i.aj, align 8, !tbaa !329
  store ptr @.str.312, ptr %i.aj, align 8, !tbaa !329
  %.not.i33.i = icmp eq ptr %.1.i, null
  br i1 %.not.i33.i, label %bb.cz, label %ic_strlen.exit.i.i

ic_strlen.exit.i.i:                               ; preds = %ic_enable_hint.exit.i.i
  %i.rc = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.1.i) #29 ; 4 uses
  %i.rd = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.rc, i64 0)
  %.not498.i.i = icmp slt i64 %i.rc, 1
  br i1 %.not498.i.i, label %.thread.i.i, label %.lr.ph.i34.i

.lr.ph.i34.i:                                     ; preds = %ic_strlen.exit.i.i, %bb.cw
  %.0145487.i.i = phi i64 [ %i.rn, %bb.cw ], [ 0, %ic_strlen.exit.i.i ] ; 3 uses
  %.0340486.i.i = phi i64 [ %.1341.i.i, %bb.cw ], [ 0, %ic_strlen.exit.i.i ] ; 5 uses
  %.0343485.i.i = phi i64 [ %.6349379.i.i, %bb.cw ], [ 0, %ic_strlen.exit.i.i ] ; 5 uses
  %.0351484.i.i = phi i64 [ %.6357377.i.i, %bb.cw ], [ 1, %ic_strlen.exit.i.i ] ; 8 uses
  %.0362483.i.i = phi ptr [ %.9371.i.i, %bb.cw ], [ null, %ic_strlen.exit.i.i ] ; 3 uses
  %i.re = call fastcc i64 @str_next_ofs(ptr noundef nonnull %.1.i, i64 noundef %i.rd, i64 noundef %.0145487.i.i, ptr noundef null) ; 2 uses
  %i.rf = icmp slt i64 %i.re, 0
  br i1 %i.rf, label %.thread.i.i, label %bb.cr

bb.cr:                                            ; preds = %.lr.ph.i34.i
  %i.rg = load ptr, ptr %i.l, align 8, !tbaa !317
  %.val162.i.i = load ptr, ptr %i.rg, align 8, !tbaa !33
  %i.rh = call ptr %.val162.i.i(i64 noundef 40) #28, !inline_history !352 ; 8 uses
  %.not.i.i165.i.i = icmp eq ptr %i.rh, null
  br i1 %.not.i.i165.i.i, label %hsearch_push.exit.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ri, i8 0, i64 7, i1 false)
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  store i64 %.0351484.i.i, ptr %i.rj, align 8, !tbaa !353
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rh, i64 16
  store i64 %.0343485.i.i, ptr %i.rk, align 8, !tbaa !356
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rh, i64 24
  store i64 %.0340486.i.i, ptr %i.rl, align 8, !tbaa !357
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rh, i64 32
  store i8 1, ptr %i.rm, align 8, !tbaa !358
  store ptr %.0362483.i.i, ptr %i.rh, align 8, !tbaa !359
  br label %hsearch_push.exit.i.i

hsearch_push.exit.i.i:                            ; preds = %bb.cs, %bb.cr
  %.9371.i.i = phi ptr [ %.0362483.i.i, %bb.cr ], [ %i.rh, %bb.cs ] ; 2 uses
  %i.rn = add nuw nsw i64 %i.re, %.0145487.i.i    ; 6 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %.1.i, i64 %i.rn ; 3 uses
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !9
  store i8 0, ptr %i.ro, align 1, !tbaa !9
  %i.rq = load ptr, ptr %i.bv, align 8, !tbaa !167 ; 2 uses
  %i.rr = load i64, ptr %i.rq, align 8, !tbaa !172 ; 4 uses
  %i.rs = icmp slt i64 %.0351484.i.i, %i.rr
  br i1 %i.rs, label %history_get.exit.lr.ph.i.i.i, label %.loopexit434.i.i

history_get.exit.lr.ph.i.i.i:                     ; preds = %hsearch_push.exit.i.i
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rq, i64 16
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !174
  %i.rv = getelementptr [8 x i8], ptr %i.ru, i64 %i.rr
  %i.rw = icmp sgt i64 %.0351484.i.i, -1
  call void @llvm.assume(i1 %i.rw)
  br label %history_get.exit.i.i.i

history_get.exit.i.i.i:                           ; preds = %bb.ct, %history_get.exit.lr.ph.i.i.i
  %.058.i.i.i = phi i64 [ %.0351484.i.i, %history_get.exit.lr.ph.i.i.i ], [ %i.sb, %bb.ct ] ; 4 uses
  %i.rx = xor i64 %.058.i.i.i, -1
  %i.ry = getelementptr [8 x i8], ptr %i.rv, i64 %i.rx
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !61 ; 2 uses
  %i.sa = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.rz, ptr noundef nonnull readonly dereferenceable(1) %.1.i) #29 ; 2 uses
  %.not35.i.i.i = icmp eq ptr %i.sa, null
  br i1 %.not35.i.i.i, label %bb.ct, label %.thread46.i.i.i

bb.ct:                                            ; preds = %history_get.exit.i.i.i
  %i.sb = add i64 %.058.i.i.i, 1                  ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.sb, %i.rr
  br i1 %exitcond.not.i.i.i, label %.loopexit434.i.i, label %history_get.exit.i.i.i, !llvm.loop !360

.thread46.i.i.i:                                  ; preds = %history_get.exit.i.i.i
  %.not.i39.i.i.i = icmp slt i64 %.058.i.i.i, %i.rr
  %i.sc = ptrtoint ptr %i.rz to i64
  %spec.select423.i.i = select i1 %.not.i39.i.i.i, i64 %i.sc, i64 0
  %i.sd = ptrtoint ptr %i.sa to i64
  %i.se = sub i64 %i.sd, %spec.select423.i.i
  br label %bb.cw

.loopexit434.i.i:                                 ; preds = %bb.ct, %hsearch_push.exit.i.i
  %.not150.i.i = icmp sgt i64 %i.rc, %i.rn
  br i1 %.not150.i.i, label %bb.cw, label %bb.cu

bb.cu:                                            ; preds = %.loopexit434.i.i
  %i.sf = load ptr, ptr %i.aa, align 8, !tbaa !137
  %i.sg = getelementptr i8, ptr %i.sf, i64 33
  %.val155.i.i = load i8, ptr %i.sg, align 1, !tbaa !165, !range !130, !noundef !131
  %i.sh = trunc nuw i8 %.val155.i.i to i1
  br i1 %i.sh, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.si = load ptr, ptr @stderr, align 8, !tbaa !75
  %fputc.i166.i.i = call i32 @fputc(i32 7, ptr %i.si) ; 0 uses
  %i.sj = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.sk = call i32 @fflush(ptr noundef %i.sj)     ; 0 uses
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu, %.loopexit434.i.i, %.thread46.i.i.i
  %.6349379.i.i = phi i64 [ %i.se, %.thread46.i.i.i ], [ %.0343485.i.i, %.loopexit434.i.i ], [ %.0343485.i.i, %bb.cu ], [ %.0343485.i.i, %bb.cv ] ; 2 uses
  %.6357377.i.i = phi i64 [ %.058.i.i.i, %.thread46.i.i.i ], [ %.0351484.i.i, %.loopexit434.i.i ], [ %.0351484.i.i, %bb.cu ], [ %.0351484.i.i, %bb.cv ] ; 2 uses
  %.1341.i.i = phi i64 [ %i.rn, %.thread46.i.i.i ], [ %.0340486.i.i, %.loopexit434.i.i ], [ %.0340486.i.i, %bb.cu ], [ %.0340486.i.i, %bb.cv ] ; 2 uses
  store i8 %i.rp, ptr %i.ro, align 1, !tbaa !9
  %i.sl = icmp sgt i64 %i.rc, %i.rn
  br i1 %i.sl, label %.lr.ph.i34.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.cw, %.lr.ph.i34.i, %ic_strlen.exit.i.i
  %.0362.lcssa.i.i = phi ptr [ null, %ic_strlen.exit.i.i ], [ %.0362483.i.i, %.lr.ph.i34.i ], [ %.9371.i.i, %bb.cw ]
  %.0351.lcssa.i.i = phi i64 [ 1, %ic_strlen.exit.i.i ], [ %.0351484.i.i, %.lr.ph.i34.i ], [ %.6357377.i.i, %bb.cw ]
  %.0343.lcssa.i.i = phi i64 [ 0, %ic_strlen.exit.i.i ], [ %.0343485.i.i, %.lr.ph.i34.i ], [ %.6349379.i.i, %bb.cw ]
  %.0340.lcssa.i.i = phi i64 [ 0, %ic_strlen.exit.i.i ], [ %.0340486.i.i, %.lr.ph.i34.i ], [ %.1341.i.i, %bb.cw ]
  %.0145.lcssa.i.i = phi i64 [ 0, %ic_strlen.exit.i.i ], [ %.0145487.i.i, %.lr.ph.i34.i ], [ %i.rn, %bb.cw ]
  %i.sm = load ptr, ptr %6, align 8, !tbaa !320   ; 5 uses
  %i.sn = icmp eq ptr %i.sm, null
  br i1 %i.sn, label %sbuf_len.exit.i.i.i.i, label %sbuf_len.exit.i.thread.i.i.i

sbuf_len.exit.i.i.i.i:                            ; preds = %.thread.i.i
  %.pre.i.i169.i.i = load i64, ptr inttoptr (i64 16 to ptr), align 16, !tbaa !46 ; 2 uses
  %.not.i.i.i.i.i = icmp sgt i64 %.pre.i.i169.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.cx, label %sbuf_replace.exit.i.i

sbuf_len.exit.i.thread.i.i.i:                     ; preds = %.thread.i.i
  %i.so = getelementptr inbounds nuw i8, ptr %i.sm, i64 16 ; 2 uses
  %i.sp = load i64, ptr %i.so, align 8, !tbaa !46 ; 4 uses
  %.not.i.i6.i.i.i = icmp sgt i64 %i.sp, 0
  br i1 %.not.i.i6.i.i.i, label %bb.cx, label %sbuf_replace.exit.i.i

bb.cx:                                            ; preds = %sbuf_len.exit.i.thread.i.i.i, %sbuf_len.exit.i.i.i.i
  %i.sq = phi ptr [ %i.so, %sbuf_len.exit.i.thread.i.i.i ], [ inttoptr (i64 16 to ptr), %sbuf_len.exit.i.i.i.i ] ; 3 uses
  %.0.i.i7.i.i.i = phi i64 [ %i.sp, %sbuf_len.exit.i.thread.i.i.i ], [ 0, %sbuf_len.exit.i.i.i.i ] ; 3 uses
  %i.sr = phi i64 [ %i.sp, %sbuf_len.exit.i.thread.i.i.i ], [ %.pre.i.i169.i.i, %sbuf_len.exit.i.i.i.i ]
  %i.ss = sub nsw i64 %i.sr, %.0.i.i7.i.i.i       ; 3 uses
  %i.st = icmp slt i64 %i.ss, 1
  br i1 %i.st, label %sbuf_clear.exit.thread.i.i.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.su = load ptr, ptr %i.sm, align 8, !tbaa !49 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 %.0.i.i7.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.su, ptr readonly align 1 %i.sv, i64 %i.ss, i1 false)
  %.pre.i.i.i.i.i = load i64, ptr %i.sq, align 8, !tbaa !46
  %.pre2.i.i.i.i = sub nsw i64 %.pre.i.i.i.i.i, %.0.i.i7.i.i.i
  br label %sbuf_clear.exit.thread.i.i.i

sbuf_clear.exit.thread.i.i.i:                     ; preds = %bb.cy, %bb.cx
  %.pre-phi.i.i.i.i = phi i64 [ %.pre2.i.i.i.i, %bb.cy ], [ %i.ss, %bb.cx ] ; 2 uses
  store i64 %.pre-phi.i.i.i.i, ptr %i.sq, align 8, !tbaa !46
  %i.sw = load ptr, ptr %i.sm, align 8, !tbaa !49
  %i.sx = getelementptr inbounds i8, ptr %i.sw, i64 %.pre-phi.i.i.i.i
  store i8 0, ptr %i.sx, align 1, !tbaa !9
  %.pre.i.i.i205 = load i64, ptr %i.sq, align 8, !tbaa !46
  br label %sbuf_replace.exit.i.i

sbuf_replace.exit.i.i:                            ; preds = %sbuf_clear.exit.thread.i.i.i, %sbuf_len.exit.i.thread.i.i.i, %sbuf_len.exit.i.i.i.i
  %.0.i.i4.i.i.i = phi i64 [ 0, %sbuf_len.exit.i.i.i.i ], [ %.pre.i.i.i205, %sbuf_clear.exit.thread.i.i.i ], [ %i.sp, %sbuf_len.exit.i.thread.i.i.i ]
  %i.sy = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.1.i) #29
  %i.sz = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.sy, i64 0)
  %i.ta = call fastcc i64 @sbuf_insert_at_n(ptr noundef %i.sm, ptr noundef nonnull readonly %.1.i, i64 noundef %i.sz, i64 noundef %.0.i.i4.i.i.i) ; 0 uses
  br label %sbuf_clear.exit.i.i

bb.cz:                                            ; preds = %ic_enable_hint.exit.i.i
  %i.tb = load ptr, ptr %6, align 8, !tbaa !320   ; 5 uses
  %i.tc = icmp eq ptr %i.tb, null
  br i1 %i.tc, label %.sbuf_len.exit_crit_edge.i.i.i, label %bb.da

.sbuf_len.exit_crit_edge.i.i.i:                   ; preds = %bb.cz
  %.pre.i173.i.i = load i64, ptr inttoptr (i64 16 to ptr), align 16, !tbaa !46 ; 2 uses
  %i.td = call i64 @llvm.smin.i64(i64 %.pre.i173.i.i, i64 0)
  br label %sbuf_len.exit.i.i.i

bb.da:                                            ; preds = %bb.cz
  %i.te = getelementptr inbounds nuw i8, ptr %i.tb, i64 16
  %i.tf = load i64, ptr %i.te, align 8, !tbaa !46 ; 2 uses
  br label %sbuf_len.exit.i.i.i

sbuf_len.exit.i.i.i:                              ; preds = %bb.da, %.sbuf_len.exit_crit_edge.i.i.i
  %i.tg = phi i64 [ %i.tf, %bb.da ], [ %.pre.i173.i.i, %.sbuf_len.exit_crit_edge.i.i.i ] ; 2 uses
  %.0.i.i170.i.i = phi i64 [ %i.tf, %bb.da ], [ %i.td, %.sbuf_len.exit_crit_edge.i.i.i ] ; 3 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.tb, i64 16 ; 2 uses
  %.not.i.i171.i.i = icmp sgt i64 %i.tg, 0
  br i1 %.not.i.i171.i.i, label %bb.db, label %sbuf_clear.exit.i.i

bb.db:                                            ; preds = %sbuf_len.exit.i.i.i
  %i.ti = sub i64 %i.tg, %.0.i.i170.i.i           ; 3 uses
  %i.tj = icmp slt i64 %i.ti, 1
  br i1 %i.tj, label %ic_memmove.exit.i.i.i.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.tk = load ptr, ptr %i.tb, align 8, !tbaa !49 ; 2 uses
  %i.tl = getelementptr inbounds i8, ptr %i.tk, i64 %.0.i.i170.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.tk, ptr readonly align 1 %i.tl, i64 %i.ti, i1 false)
  %.pre.i.i172.i.i = load i64, ptr %i.th, align 8, !tbaa !46
  %.pre2.i.i.i = sub nsw i64 %.pre.i.i172.i.i, %.0.i.i170.i.i
  br label %ic_memmove.exit.i.i.i.i

ic_memmove.exit.i.i.i.i:                          ; preds = %bb.dc, %bb.db
  %.pre-phi.i.i.i = phi i64 [ %.pre2.i.i.i, %bb.dc ], [ %i.ti, %bb.db ] ; 2 uses
  store i64 %.pre-phi.i.i.i, ptr %i.th, align 8, !tbaa !46
  %i.tm = load ptr, ptr %i.tb, align 8, !tbaa !49
  %i.tn = getelementptr inbounds i8, ptr %i.tm, i64 %.pre-phi.i.i.i
  store i8 0, ptr %i.tn, align 1, !tbaa !9
  br label %sbuf_clear.exit.i.i

sbuf_clear.exit.i.i:                              ; preds = %ic_memmove.exit.i.i.i.i, %sbuf_len.exit.i.i.i, %sbuf_replace.exit.i.i
  %.sink.i.i = phi i64 [ %.0145.lcssa.i.i, %sbuf_replace.exit.i.i ], [ 0, %sbuf_len.exit.i.i.i ], [ 0, %ic_memmove.exit.i.i.i.i ]
  %.3365.i.i = phi ptr [ %.0362.lcssa.i.i, %sbuf_replace.exit.i.i ], [ null, %sbuf_len.exit.i.i.i ], [ null, %ic_memmove.exit.i.i.i.i ]
  %.3354.i.i = phi i64 [ %.0351.lcssa.i.i, %sbuf_replace.exit.i.i ], [ 1, %sbuf_len.exit.i.i.i ], [ 1, %ic_memmove.exit.i.i.i.i ]
  %.3346.i.i = phi i64 [ %.0343.lcssa.i.i, %sbuf_replace.exit.i.i ], [ 0, %sbuf_len.exit.i.i.i ], [ 0, %ic_memmove.exit.i.i.i.i ]
  %.4.i.i = phi i64 [ %.0340.lcssa.i.i, %sbuf_replace.exit.i.i ], [ 0, %sbuf_len.exit.i.i.i ], [ 0, %ic_memmove.exit.i.i.i.i ]
  store i64 %.sink.i.i, ptr %i.ae, align 8, !tbaa !325
  br label %.outer.outer.i.i

.outer.outer.i.i:                                 ; preds = %.outer.outer.i.i.backedge, %sbuf_clear.exit.i.i
  %.4366.ph.ph.i.i = phi ptr [ %.3365.i.i, %sbuf_clear.exit.i.i ], [ %.4366.ph.ph.i.i.be, %.outer.outer.i.i.backedge ]
  %.4355.ph.ph.i.i = phi i64 [ %.3354.i.i, %sbuf_clear.exit.i.i ], [ %.4355.ph.ph.i.i.be, %.outer.outer.i.i.backedge ]
  %.4347.ph.ph.i.i = phi i64 [ %.3346.i.i, %sbuf_clear.exit.i.i ], [ %.4347.ph.ph.i.i.be, %.outer.outer.i.i.backedge ]
  %.5.ph.ph.i.i = phi i64 [ %.4.i.i, %sbuf_clear.exit.i.i ], [ %.5.ph.ph.i.i.be, %.outer.outer.i.i.backedge ] ; 11 uses
  br label %.outer.i.i.outer

.outer.i.i.outer:                                 ; preds = %.outer.i.i.outer.backedge, %.outer.outer.i.i
  %.4366.ph.i.i.ph = phi ptr [ %.4366.ph.ph.i.i, %.outer.outer.i.i ], [ %.4366.ph.i.i.ph.be, %.outer.i.i.outer.backedge ]
  %.4355.ph.i.i.ph = phi i64 [ %.4355.ph.ph.i.i, %.outer.outer.i.i ], [ %.4355.ph.i.i.ph.be, %.outer.i.i.outer.backedge ] ; 22 uses
  %.4347.ph.i.i.ph = phi i64 [ %.4347.ph.ph.i.i, %.outer.outer.i.i ], [ %.4347.ph.i.i.ph.be, %.outer.i.i.outer.backedge ] ; 11 uses
  %i.to = icmp slt i64 %.4355.ph.i.i.ph, 0
  %i.tp = xor i64 %.4355.ph.i.i.ph, -1
  %i.tq = icmp sgt i64 %.4355.ph.i.i.ph, 0
  %i.tr = add nsw i64 %.4355.ph.i.i.ph, 1         ; 2 uses
  %i.ts = icmp sgt i64 %.4355.ph.i.i.ph, -2
  br label %.outer.i.i

.outer.i.i:                                       ; preds = %.outer.i.i.backedge, %.outer.i.i.outer
  %.4366.ph.i.i = phi ptr [ %.4366.ph.i.i.ph, %.outer.i.i.outer ], [ %.4366.ph.i.i.be, %.outer.i.i.backedge ] ; 19 uses
  br label %bb.dd

bb.dd:                                            ; preds = %bb.fd, %.outer.i.i
  %i.tt = load ptr, ptr %i.bv, align 8, !tbaa !167 ; 2 uses
  br i1 %i.to, label %.thread391.i.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.tu = load i64, ptr %i.tt, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i201 = icmp slt i64 %.4355.ph.i.i.ph, %i.tu
  br i1 %.not.i.i.i201, label %history_get.exit.i.i, label %.thread391.i.i

history_get.exit.i.i:                             ; preds = %bb.de
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tt, i64 16
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !174
  %i.tx = getelementptr [8 x i8], ptr %i.tw, i64 %i.tu
  %i.ty = getelementptr [8 x i8], ptr %i.tx, i64 %i.tp
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !61 ; 4 uses
  %.not151.i.i = icmp eq ptr %i.tz, null
  br i1 %.not151.i.i, label %.thread391.i.i, label %bb.df

bb.df:                                            ; preds = %history_get.exit.i.i
  %i.ua = load ptr, ptr %i.r, align 8, !tbaa !321
  call void (ptr, ptr, ...) @sbuf_appendf(ptr noundef %i.ua, ptr noundef nonnull @.str.313, i64 noundef %.4355.ph.i.i.ph)
  %i.ub = load ptr, ptr %i.r, align 8, !tbaa !321 ; 3 uses
  %i.uc = icmp eq ptr %i.ub, null
  br i1 %i.uc, label %sbuf_append_n.exit.i.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ub, i64 16
  %i.ue = load i64, ptr %i.ud, align 8, !tbaa !46
  br label %sbuf_append_n.exit.i.i

sbuf_append_n.exit.i.i:                           ; preds = %bb.dg, %bb.df
  %.0.i.i176.i.i = phi i64 [ %i.ue, %bb.dg ], [ 0, %bb.df ]
  %i.uf = call fastcc i64 @sbuf_insert_at_n(ptr noundef %i.ub, ptr noundef nonnull readonly %i.tz, i64 noundef %.4347.ph.i.i.ph, i64 noundef %.0.i.i176.i.i) ; 0 uses
  %i.ug = load ptr, ptr %i.r, align 8, !tbaa !321 ; 3 uses
  %i.uh = icmp eq ptr %i.ug, null
  br i1 %i.uh, label %sbuf_append.exit.i.i, label %bb.dh

bb.dh:                                            ; preds = %sbuf_append_n.exit.i.i
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ug, i64 16
  %i.uj = load i64, ptr %i.ui, align 8, !tbaa !46
  br label %sbuf_append.exit.i.i

sbuf_append.exit.i.i:                             ; preds = %bb.dh, %sbuf_append_n.exit.i.i
  %.0.i.i178.i.i = phi i64 [ %i.uj, %bb.dh ], [ 0, %sbuf_append_n.exit.i.i ]
  %i.uk = call fastcc i64 @sbuf_insert_at_n(ptr noundef %i.ug, ptr noundef nonnull readonly @.str.314, i64 noundef 27, i64 noundef %.0.i.i178.i.i) ; 0 uses
end_hunk_0
begin_hunk_1_@edit_line:bb.a
  %.pre.i.i226.i.i = load i64, ptr inttoptr (i64 16 to ptr), align 16, !tbaa !46 ; 2 uses
  %.not.i.i.i227.i.i = icmp sgt i64 %.pre.i.i226.i.i, 0
  br i1 %.not.i.i.i227.i.i, label %bb.eh, label %sbuf_len.exit.i3.i216.i.i

sbuf_len.exit.i.thread.i214.i.i:                  ; preds = %editor_undo_forget.exit.i.i
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yf, i64 16 ; 2 uses
  %i.yi = load i64, ptr %i.yh, align 8, !tbaa !46 ; 4 uses
  %.not.i.i6.i215.i.i = icmp sgt i64 %i.yi, 0
  br i1 %.not.i.i6.i215.i.i, label %bb.eh, label %sbuf_len.exit.i3.i216.i.i

bb.eh:                                            ; preds = %sbuf_len.exit.i.thread.i214.i.i, %sbuf_len.exit.i.i225.i.i
  %i.yj = phi ptr [ %i.yh, %sbuf_len.exit.i.thread.i214.i.i ], [ inttoptr (i64 16 to ptr), %sbuf_len.exit.i.i225.i.i ] ; 3 uses
  %.0.i.i7.i219.i.i = phi i64 [ %i.yi, %sbuf_len.exit.i.thread.i214.i.i ], [ 0, %sbuf_len.exit.i.i225.i.i ] ; 3 uses
  %i.yk = phi i64 [ %i.yi, %sbuf_len.exit.i.thread.i214.i.i ], [ %.pre.i.i226.i.i, %sbuf_len.exit.i.i225.i.i ]
  %i.yl = sub nsw i64 %i.yk, %.0.i.i7.i219.i.i    ; 3 uses
  %i.ym = icmp slt i64 %i.yl, 1
  br i1 %i.ym, label %sbuf_clear.exit.thread.i222.i.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.yn = load ptr, ptr %i.yf, align 8, !tbaa !49 ; 2 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 %.0.i.i7.i219.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.yn, ptr readonly align 1 %i.yo, i64 %i.yl, i1 false)
  %.pre.i.i.i220.i.i = load i64, ptr %i.yj, align 8, !tbaa !46
  %.pre2.i.i221.i.i = sub nsw i64 %.pre.i.i.i220.i.i, %.0.i.i7.i219.i.i
  br label %sbuf_clear.exit.thread.i222.i.i

sbuf_clear.exit.thread.i222.i.i:                  ; preds = %bb.ei, %bb.eh
  %.pre-phi.i.i223.i.i = phi i64 [ %.pre2.i.i221.i.i, %bb.ei ], [ %i.yl, %bb.eh ] ; 2 uses
  store i64 %.pre-phi.i.i223.i.i, ptr %i.yj, align 8, !tbaa !46
  %i.yp = load ptr, ptr %i.yf, align 8, !tbaa !49
  %i.yq = getelementptr inbounds i8, ptr %i.yp, i64 %.pre-phi.i.i223.i.i
  store i8 0, ptr %i.yq, align 1, !tbaa !9
  %.pre.i224.i.i = load i64, ptr %i.yj, align 8, !tbaa !46
  br label %sbuf_len.exit.i3.i216.i.i

sbuf_len.exit.i3.i216.i.i:                        ; preds = %sbuf_clear.exit.thread.i222.i.i, %sbuf_len.exit.i.thread.i214.i.i, %sbuf_len.exit.i.i225.i.i
  %.0.i.i4.i217.i.i = phi i64 [ 0, %sbuf_len.exit.i.i225.i.i ], [ %.pre.i224.i.i, %sbuf_clear.exit.thread.i222.i.i ], [ %i.yi, %sbuf_len.exit.i.thread.i214.i.i ]
  br i1 %.not151390394.i.i, label %sbuf_replace.exit228.i.i, label %bb.ej

bb.ej:                                            ; preds = %sbuf_len.exit.i3.i216.i.i
  %i.yr = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0.i174389395.i.i) #29
  %i.ys = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.yr, i64 0)
  br label %sbuf_replace.exit228.i.i

sbuf_replace.exit228.i.i:                         ; preds = %bb.ej, %sbuf_len.exit.i3.i216.i.i
  %.0.i.i.i.i218.i.i = phi i64 [ %i.ys, %bb.ej ], [ 0, %sbuf_len.exit.i3.i216.i.i ]
  %i.yt = call fastcc i64 @sbuf_insert_at_n(ptr noundef %i.yf, ptr noundef readonly %.0.i174389395.i.i, i64 noundef %.0.i.i.i.i218.i.i, i64 noundef %.0.i.i4.i217.i.i) ; 0 uses
  %i.yu = load ptr, ptr %6, align 8, !tbaa !320   ; 2 uses
  %i.yv = icmp eq ptr %i.yu, null
  br i1 %i.yv, label %sbuf_len.exit.i.i203, label %bb.ek

bb.ek:                                            ; preds = %sbuf_replace.exit228.i.i
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yu, i64 16
  %i.yx = load i64, ptr %i.yw, align 8, !tbaa !46
  br label %sbuf_len.exit.i.i203

sbuf_len.exit.i.i203:                             ; preds = %bb.ek, %sbuf_replace.exit228.i.i
  %.0.i229.i.i = phi i64 [ %i.yx, %bb.ek ], [ 0, %sbuf_replace.exit228.i.i ]
  store i64 %.0.i229.i.i, ptr %i.ae, align 8, !tbaa !325
  store i8 0, ptr %i.ah, align 8, !tbaa !328
  store i64 %.4355.ph.i.i.ph, ptr %i.ak, align 8, !tbaa !348
  br label %editor_restore.exit

bb.el:                                            ; preds = %sbuf_clear.exit211.i.i, %sbuf_clear.exit211.i.i
  %.not430.i.i = icmp eq ptr %.4366.ph.i.i, null
  br i1 %.not430.i.i, label %.outer.outer.i.i.backedge, label %hsearch_pop.exit.i.i

hsearch_pop.exit.i.i:                             ; preds = %bb.el
  %i.yy = load ptr, ptr %0, align 8, !tbaa !87
  %i.yz = load ptr, ptr %.4366.ph.i.i, align 8, !tbaa !359 ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %.4366.ph.i.i, i64 8
  %i.zb = load i64, ptr %i.za, align 8, !tbaa !353 ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %.4366.ph.i.i, i64 16
  %i.zd = load i64, ptr %i.zc, align 8, !tbaa !356 ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %.4366.ph.i.i, i64 24
  %i.zf = load i64, ptr %i.ze, align 8, !tbaa !357 ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %.4366.ph.i.i, i64 32
  %i.zh = load i8, ptr %i.zg, align 8, !tbaa !358, !range !130, !noundef !131
  %i.zi = getelementptr i8, ptr %i.yy, i64 16
  %.val.i231.i.i = load ptr, ptr %i.zi, align 8, !tbaa !50
  call void %.val.i231.i.i(ptr noundef nonnull %.4366.ph.i.i) #28, !inline_history !365
  %i.zj = trunc nuw i8 %i.zh to i1
  %i.zk = load i64, ptr %i.ae, align 8
  %i.zl = icmp sgt i64 %i.zk, 0
  %or.cond639.not = select i1 %i.zj, i1 %i.zl, i1 false
  br i1 %or.cond639.not, label %bb.em, label %.outer.outer.i.i.backedge

bb.em:                                            ; preds = %hsearch_pop.exit.i.i
  call fastcc void @editor_start_modify(ptr noundef nonnull %6)
  %i.zm = load ptr, ptr %6, align 8, !tbaa !320   ; 3 uses
  %i.zn = load i64, ptr %i.ae, align 8, !tbaa !325 ; 8 uses
  %.val.i.i232.i.i = load ptr, ptr %i.zm, align 8, !tbaa !49 ; 4 uses
  %i.zo = icmp ne ptr %.val.i.i232.i.i, null
  %i.zp = icmp sgt i64 %i.zn, 0
  %or.cond.i.i.i.i.i.i = and i1 %i.zp, %i.zo
  br i1 %or.cond.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.preheader, label %sbuf_delete_char_before.exit.i.i.i

.preheader.i.i.i.i.i.i.preheader:                 ; preds = %bb.em
  %exitcond.not.i.i.i.i.i.i1130 = icmp eq i64 %i.zn, 1
  br i1 %exitcond.not.i.i.i.i.i.i1130, label %sbuf_prev_ofs.exit.i.i.i.i, label %.lr.ph1132

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph1132
  %i.zq = add nuw i64 %.021.i.i.i.i.i.i1131, 1    ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.zq, %i.zn
  br i1 %exitcond.not.i.i.i.i.i.i, label %sbuf_prev_ofs.exit.i.i.i.i, label %.lr.ph1132

.lr.ph1132:                                       ; preds = %.preheader.i.i.i.i.i.i.preheader, %.preheader.i.i.i.i.i.i
  %.021.i.i.i.i.i.i1131 = phi i64 [ %i.zq, %.preheader.i.i.i.i.i.i ], [ 1, %.preheader.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.zr = sub nuw nsw i64 %i.zn, %.021.i.i.i.i.i.i1131
  %i.zs = getelementptr inbounds nuw i8, ptr %.val.i.i232.i.i, i64 %i.zr
  %i.zt = load i8, ptr %i.zs, align 1, !tbaa !9
  %or.cond4.i.i.i.i.i.i = icmp sgt i8 %i.zt, -65
  br i1 %or.cond4.i.i.i.i.i.i, label %sbuf_prev_ofs.exit.i.i.i.i, label %.preheader.i.i.i.i.i.i

sbuf_prev_ofs.exit.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i, %.lr.ph1132, %.preheader.i.i.i.i.i.i.preheader
  %.2.i.i.i.i.i.i = phi i64 [ %i.zn, %.preheader.i.i.i.i.i.i.preheader ], [ %i.zn, %.preheader.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i1131, %.lr.ph1132 ] ; 3 uses
  %i.zu = icmp slt i64 %.2.i.i.i.i.i.i, 1
  br i1 %i.zu, label %sbuf_delete_char_before.exit.i.i.i, label %bb.en

bb.en:                                            ; preds = %sbuf_prev_ofs.exit.i.i.i.i
  %i.zv = sub nsw i64 %i.zn, %.2.i.i.i.i.i.i      ; 8 uses
  %i.zw = icmp slt i64 %i.zv, 0
  br i1 %i.zw, label %sbuf_delete_char_before.exit.i.i.i, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zm, i64 16 ; 3 uses
  %i.zy = load i64, ptr %i.zx, align 8, !tbaa !46 ; 5 uses
  %.not.i.i.i234.i.i = icmp slt i64 %i.zv, %i.zy
  br i1 %.not.i.i.i234.i.i, label %bb.ep, label %sbuf_delete_char_before.exit.i.i.i

bb.ep:                                            ; preds = %bb.eo
  %i.zz = icmp sgt i64 %i.zn, %i.zy
  %i.aaa = sub nuw nsw i64 %i.zy, %i.zv
  %spec.select.i.i.i235.i.i = select i1 %i.zz, i64 %i.aaa, i64 %.2.i.i.i.i.i.i ; 3 uses
  %i.aab = add nuw i64 %i.zv, %spec.select.i.i.i235.i.i
  %i.aac = sub i64 %i.zy, %i.aab                  ; 2 uses
  %i.aad = icmp slt i64 %i.aac, 1
  br i1 %i.aad, label %ic_memmove.exit.i.i.i.i.i, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.aae = getelementptr inbounds nuw i8, ptr %.val.i.i232.i.i, i64 %i.zv ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 %spec.select.i.i.i235.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aae, ptr nonnull readonly align 1 %i.aaf, i64 %i.aac, i1 false)
  %.pre.i.i.i236.i.i = load i64, ptr %i.zx, align 8, !tbaa !46
  %.pre.i.i237.i.i = load ptr, ptr %i.zm, align 8, !tbaa !49
  br label %ic_memmove.exit.i.i.i.i.i

ic_memmove.exit.i.i.i.i.i:                        ; preds = %bb.eq, %bb.ep
  %i.aag = phi ptr [ %.val.i.i232.i.i, %bb.ep ], [ %.pre.i.i237.i.i, %bb.eq ]
  %i.aah = phi i64 [ %i.zy, %bb.ep ], [ %.pre.i.i.i236.i.i, %bb.eq ]
  %i.aai = sub nsw i64 %i.aah, %spec.select.i.i.i235.i.i ; 2 uses
  store i64 %i.aai, ptr %i.zx, align 8, !tbaa !46
  %i.aaj = getelementptr inbounds i8, ptr %i.aag, i64 %i.aai
  store i8 0, ptr %i.aaj, align 1, !tbaa !9
  br label %sbuf_delete_char_before.exit.i.i.i

sbuf_delete_char_before.exit.i.i.i:               ; preds = %ic_memmove.exit.i.i.i.i.i, %bb.eo, %bb.en, %sbuf_prev_ofs.exit.i.i.i.i, %bb.em
  %.0.i.i233.i.i = phi i64 [ %i.zv, %ic_memmove.exit.i.i.i.i.i ], [ 0, %sbuf_prev_ofs.exit.i.i.i.i ], [ %i.zv, %bb.en ], [ %i.zv, %bb.eo ], [ 0, %bb.em ]
  store i64 %.0.i.i233.i.i, ptr %i.ae, align 8, !tbaa !325
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %.outer.outer.i.i.backedge

bb.er:                                            ; preds = %sbuf_clear.exit211.i.i, %sbuf_clear.exit211.i.i, %sbuf_clear.exit211.i.i
  %i.aak = load ptr, ptr %0, align 8, !tbaa !87
  %.val161.i.i = load ptr, ptr %i.aak, align 8, !tbaa !33
  %i.aal = call ptr %.val161.i.i(i64 noundef 40) #28, !inline_history !352 ; 8 uses
  %.not.i.i238.i.i = icmp eq ptr %i.aal, null
  br i1 %.not.i.i238.i.i, label %hsearch_push.exit239.i.i, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.aam, i8 0, i64 7, i1 false)
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aal, i64 8
  store i64 %.4355.ph.i.i.ph, ptr %i.aan, align 8, !tbaa !353
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aal, i64 16
  store i64 %.4347.ph.i.i.ph, ptr %i.aao, align 8, !tbaa !356
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aal, i64 24
  store i64 %.5.ph.ph.i.i, ptr %i.aap, align 8, !tbaa !357
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aal, i64 32
  store i8 0, ptr %i.aaq, align 8, !tbaa !358
  store ptr %.4366.ph.i.i, ptr %i.aal, align 8, !tbaa !359
  br label %hsearch_push.exit239.i.i

hsearch_push.exit239.i.i:                         ; preds = %bb.es, %bb.er
  %.11.i.i = phi ptr [ %.4366.ph.i.i, %bb.er ], [ %i.aal, %bb.es ] ; 4 uses
  %i.aar = load ptr, ptr %i.bv, align 8, !tbaa !167 ; 2 uses
  %i.aas = load ptr, ptr %6, align 8, !tbaa !320  ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 16
  %i.aau = load i64, ptr %i.aat, align 8, !tbaa !46
  %i.aav = icmp slt i64 %i.aau, 0
  br i1 %i.aav, label %sbuf_string.exit242.i.i, label %bb.et

bb.et:                                            ; preds = %hsearch_push.exit239.i.i
  %i.aaw = load ptr, ptr %i.aas, align 8, !tbaa !49 ; 2 uses
  %i.aax = icmp eq ptr %i.aaw, null
  %spec.select.i.i240.i.i = select i1 %i.aax, ptr @.str.3, ptr %i.aaw
  br label %sbuf_string.exit242.i.i

sbuf_string.exit242.i.i:                          ; preds = %bb.et, %hsearch_push.exit239.i.i
  %.0.i.i241.i.i = phi ptr [ %spec.select.i.i240.i.i, %bb.et ], [ null, %hsearch_push.exit239.i.i ]
  %i.aay = load i64, ptr %i.aar, align 8, !tbaa !172 ; 4 uses
  %i.aaz = icmp slt i64 %i.tr, %i.aay
  br i1 %i.aaz, label %history_get.exit.lr.ph.i243.i.i, label %.loopexit432.i.i

history_get.exit.lr.ph.i243.i.i:                  ; preds = %sbuf_string.exit242.i.i
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aar, i64 16
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !174
  %i.abc = getelementptr [8 x i8], ptr %i.abb, i64 %i.aay
  call void @llvm.assume(i1 %i.ts)
  br label %history_get.exit.i244.i.i

history_get.exit.i244.i.i:                        ; preds = %bb.eu, %history_get.exit.lr.ph.i243.i.i
  %.058.i245.i.i = phi i64 [ %i.tr, %history_get.exit.lr.ph.i243.i.i ], [ %i.abh, %bb.eu ] ; 4 uses
  %i.abd = xor i64 %.058.i245.i.i, -1
  %i.abe = getelementptr [8 x i8], ptr %i.abc, i64 %i.abd
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !61 ; 2 uses
  %i.abg = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.abf, ptr noundef nonnull readonly dereferenceable(1) %.0.i.i241.i.i) #29 ; 2 uses
  %.not35.i246.i.i = icmp eq ptr %i.abg, null
  br i1 %.not35.i246.i.i, label %bb.eu, label %.thread46.i247.i.i

bb.eu:                                            ; preds = %history_get.exit.i244.i.i
  %i.abh = add i64 %.058.i245.i.i, 1              ; 2 uses
  %exitcond.not.i251.i.i = icmp eq i64 %i.abh, %i.aay
  br i1 %exitcond.not.i251.i.i, label %.loopexit432.i.i, label %history_get.exit.i244.i.i, !llvm.loop !360

.thread46.i247.i.i:                               ; preds = %history_get.exit.i244.i.i
  %.not.i39.i248.i.i = icmp slt i64 %.058.i245.i.i, %i.aay
  %i.abi = ptrtoint ptr %i.abf to i64
  %spec.select424.i.i = select i1 %.not.i39.i248.i.i, i64 %i.abi, i64 0
  %i.abj = ptrtoint ptr %i.abg to i64
  %i.abk = sub i64 %i.abj, %spec.select424.i.i
  br label %.outer.i.i.outer.backedge

.outer.i.i.outer.backedge:                        ; preds = %.thread46.i247.i.i, %.thread46.i263.i.i
  %.4366.ph.i.i.ph.be = phi ptr [ %.13.i.i, %.thread46.i263.i.i ], [ %.11.i.i, %.thread46.i247.i.i ]
  %.4355.ph.i.i.ph.be = phi i64 [ %.157.i.i.i, %.thread46.i263.i.i ], [ %.058.i245.i.i, %.thread46.i247.i.i ]
  %.4347.ph.i.i.ph.be = phi i64 [ %i.act, %.thread46.i263.i.i ], [ %i.abk, %.thread46.i247.i.i ]
  br label %.outer.i.i.outer

.loopexit432.i.i:                                 ; preds = %bb.eu, %sbuf_string.exit242.i.i
  %.not429.i.i = icmp eq ptr %.11.i.i, null
  br i1 %.not429.i.i, label %hsearch_pop.exit254.i.i, label %bb.ev

bb.ev:                                            ; preds = %.loopexit432.i.i
  %i.abl = load ptr, ptr %0, align 8, !tbaa !87
  %i.abm = load ptr, ptr %.11.i.i, align 8, !tbaa !359
  %i.abn = getelementptr i8, ptr %i.abl, i64 16
  %.val.i253.i.i = load ptr, ptr %i.abn, align 8, !tbaa !50
  call void %.val.i253.i.i(ptr noundef nonnull %.11.i.i) #28, !inline_history !365
  br label %hsearch_pop.exit254.i.i

hsearch_pop.exit254.i.i:                          ; preds = %bb.ev, %.loopexit432.i.i
  %.12.i.i = phi ptr [ %i.abm, %bb.ev ], [ null, %.loopexit432.i.i ] ; 2 uses
  %i.abo = load ptr, ptr %i.aa, align 8, !tbaa !137
  %i.abp = getelementptr i8, ptr %i.abo, i64 33
  %.val154.i.i = load i8, ptr %i.abp, align 1, !tbaa !165, !range !130, !noundef !131
  %i.abq = trunc nuw i8 %.val154.i.i to i1
  br i1 %i.abq, label %.outer.i.i.backedge, label %bb.ew

bb.ew:                                            ; preds = %hsearch_pop.exit254.i.i
  %i.abr = load ptr, ptr @stderr, align 8, !tbaa !75
  %fputc.i255.i.i = call i32 @fputc(i32 7, ptr %i.abr) ; 0 uses
  %i.abs = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.abt = call i32 @fflush(ptr noundef %i.abs)   ; 0 uses
  br label %.outer.i.i.backedge

bb.ex:                                            ; preds = %sbuf_clear.exit211.i.i, %sbuf_clear.exit211.i.i, %sbuf_clear.exit211.i.i
  %i.abu = load ptr, ptr %0, align 8, !tbaa !87
  %.val160.i.i = load ptr, ptr %i.abu, align 8, !tbaa !33
  %i.abv = call ptr %.val160.i.i(i64 noundef 40) #28, !inline_history !352 ; 8 uses
  %.not.i.i257.i.i = icmp eq ptr %i.abv, null
  br i1 %.not.i.i257.i.i, label %hsearch_push.exit258.i.i, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.abw, i8 0, i64 7, i1 false)
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abv, i64 8
  store i64 %.4355.ph.i.i.ph, ptr %i.abx, align 8, !tbaa !353
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abv, i64 16
  store i64 %.4347.ph.i.i.ph, ptr %i.aby, align 8, !tbaa !356
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abv, i64 24
  store i64 %.5.ph.ph.i.i, ptr %i.abz, align 8, !tbaa !357
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abv, i64 32
  store i8 0, ptr %i.aca, align 8, !tbaa !358
  store ptr %.4366.ph.i.i, ptr %i.abv, align 8, !tbaa !359
  br label %hsearch_push.exit258.i.i

hsearch_push.exit258.i.i:                         ; preds = %bb.ey, %bb.ex
  %.13.i.i = phi ptr [ %.4366.ph.i.i, %bb.ex ], [ %i.abv, %bb.ey ] ; 4 uses
  %i.acb = load ptr, ptr %i.bv, align 8, !tbaa !167 ; 2 uses
  %i.acc = load ptr, ptr %6, align 8, !tbaa !320  ; 2 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 16
  %i.ace = load i64, ptr %i.acd, align 8, !tbaa !46
  %i.acf = icmp slt i64 %i.ace, 0
  br i1 %i.acf, label %sbuf_string.exit261.i.i, label %bb.ez

bb.ez:                                            ; preds = %hsearch_push.exit258.i.i
  %i.acg = load ptr, ptr %i.acc, align 8, !tbaa !49 ; 2 uses
  %i.ach = icmp eq ptr %i.acg, null
  %spec.select.i.i259.i.i = select i1 %i.ach, ptr @.str.3, ptr %i.acg
  br label %sbuf_string.exit261.i.i

sbuf_string.exit261.i.i:                          ; preds = %bb.ez, %hsearch_push.exit258.i.i
  %.0.i.i260.i.i = phi ptr [ %spec.select.i.i259.i.i, %bb.ez ], [ null, %hsearch_push.exit258.i.i ]
  br i1 %i.tq, label %history_get.exit38.lr.ph.i.i.i, label %.loopexit433.i.i

history_get.exit38.lr.ph.i.i.i:                   ; preds = %sbuf_string.exit261.i.i
  %i.aci = load i64, ptr %i.acb, align 8, !tbaa !172 ; 2 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %i.acb, i64 16
  %i.ack = load ptr, ptr %i.acj, align 8, !tbaa !174
  %i.acl = getelementptr [8 x i8], ptr %i.ack, i64 %i.aci
  %.not.i36.i.i.i = icmp sle i64 %.4355.ph.i.i.ph, %i.aci
  call void @llvm.assume(i1 %.not.i36.i.i.i)
  br label %history_get.exit38.i.i.i

history_get.exit38.i.i.i:                         ; preds = %bb.fa, %history_get.exit38.lr.ph.i.i.i
  %.157.i.in.i.i = phi i64 [ %.4355.ph.i.i.ph, %history_get.exit38.lr.ph.i.i.i ], [ %.157.i.i.i, %bb.fa ] ; 3 uses
  %.157.i.i.i = add nsw i64 %.157.i.in.i.i, -1    ; 2 uses
  %i.acm = sub nsw i64 0, %.157.i.in.i.i
  %i.acn = getelementptr [8 x i8], ptr %i.acl, i64 %i.acm
  %i.aco = load ptr, ptr %i.acn, align 8, !tbaa !61 ; 2 uses
  %i.acp = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.aco, ptr noundef nonnull readonly dereferenceable(1) %.0.i.i260.i.i) #29 ; 2 uses
  %.not.i262.i.i = icmp eq ptr %i.acp, null
  br i1 %.not.i262.i.i, label %bb.fa, label %.thread46.i263.i.i

bb.fa:                                            ; preds = %history_get.exit38.i.i.i
  %i.acq = icmp samesign ugt i64 %.157.i.in.i.i, 1
  br i1 %i.acq, label %history_get.exit38.i.i.i, label %.loopexit433.i.i, !llvm.loop !366

.thread46.i263.i.i:                               ; preds = %history_get.exit38.i.i.i
  %i.acr = ptrtoint ptr %i.aco to i64
  %i.acs = ptrtoint ptr %i.acp to i64
  %i.act = sub i64 %i.acs, %i.acr
  br label %.outer.i.i.outer.backedge

.loopexit433.i.i:                                 ; preds = %bb.fa, %sbuf_string.exit261.i.i
  %.not428.i.i = icmp eq ptr %.13.i.i, null
  br i1 %.not428.i.i, label %hsearch_pop.exit269.i.i, label %bb.fb

bb.fb:                                            ; preds = %.loopexit433.i.i
  %i.acu = load ptr, ptr %0, align 8, !tbaa !87
  %i.acv = load ptr, ptr %.13.i.i, align 8, !tbaa !359
  %i.acw = getelementptr i8, ptr %i.acu, i64 16
  %.val.i268.i.i = load ptr, ptr %i.acw, align 8, !tbaa !50
  call void %.val.i268.i.i(ptr noundef nonnull %.13.i.i) #28, !inline_history !365
  br label %hsearch_pop.exit269.i.i

hsearch_pop.exit269.i.i:                          ; preds = %bb.fb, %.loopexit433.i.i
  %.14.i.i = phi ptr [ %i.acv, %bb.fb ], [ null, %.loopexit433.i.i ] ; 2 uses
  %i.acx = load ptr, ptr %i.aa, align 8, !tbaa !137
  %i.acy = getelementptr i8, ptr %i.acx, i64 33
  %.val153.i.i = load i8, ptr %i.acy, align 1, !tbaa !165, !range !130, !noundef !131
  %i.acz = trunc nuw i8 %.val153.i.i to i1
  br i1 %i.acz, label %.outer.i.i.backedge, label %bb.fc

bb.fc:                                            ; preds = %hsearch_pop.exit269.i.i
  %i.ada = load ptr, ptr @stderr, align 8, !tbaa !75
  %fputc.i270.i.i = call i32 @fputc(i32 7, ptr %i.ada) ; 0 uses
  %i.adb = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.adc = call i32 @fflush(ptr noundef %i.adb)   ; 0 uses
  br label %.outer.i.i.backedge

.outer.i.i.backedge:                              ; preds = %bb.fc, %hsearch_pop.exit269.i.i, %bb.ew, %hsearch_pop.exit254.i.i
  %.4366.ph.i.i.be = phi ptr [ %.14.i.i, %bb.fc ], [ %.12.i.i, %bb.ew ], [ %.14.i.i, %hsearch_pop.exit269.i.i ], [ %.12.i.i, %hsearch_pop.exit254.i.i ]
  br label %.outer.i.i

bb.fd:                                            ; preds = %sbuf_clear.exit211.i.i
  call fastcc void @edit_show_help(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %bb.dd

bb.fe:                                            ; preds = %sbuf_clear.exit211.i.i
  %i.add = add i32 %i.vy, -32
  %or.cond.i.i.i = icmp ult i32 %i.add, 96
  %i.ade = trunc nuw nsw i32 %i.vy to i8
  br i1 %or.cond.i.i.i, label %bb.ff, label %bb.fh

bb.ff:                                            ; preds = %bb.fe
  %i.adf = load ptr, ptr %0, align 8, !tbaa !87
  %.val159.i.i = load ptr, ptr %i.adf, align 8, !tbaa !33
  %i.adg = call ptr %.val159.i.i(i64 noundef 40) #28, !inline_history !352 ; 8 uses
  %.not.i.i272.i.i = icmp eq ptr %i.adg, null
  br i1 %.not.i.i272.i.i, label %hsearch_push.exit273.i.i, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.adh, i8 0, i64 7, i1 false)
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adg, i64 8
  store i64 %.4355.ph.i.i.ph, ptr %i.adi, align 8, !tbaa !353
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adg, i64 16
  store i64 %.4347.ph.i.i.ph, ptr %i.adj, align 8, !tbaa !356
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adg, i64 24
  store i64 %.5.ph.ph.i.i, ptr %i.adk, align 8, !tbaa !357
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adg, i64 32
  store i8 1, ptr %i.adl, align 8, !tbaa !358
  store ptr %.4366.ph.i.i, ptr %i.adg, align 8, !tbaa !359
  br label %hsearch_push.exit273.i.i

hsearch_push.exit273.i.i:                         ; preds = %bb.fg, %bb.ff
  %.15.i.i = phi ptr [ %.4366.ph.i.i, %bb.ff ], [ %i.adg, %bb.fg ]
  call fastcc void @edit_insert_char(ptr noundef nonnull %0, ptr noundef nonnull %6, i8 noundef signext %i.ade)
  br label %bb.fm

bb.fh:                                            ; preds = %bb.fe
  %i.adm = icmp ult i32 %i.vy, 1114112
  br i1 %i.adm, label %bb.fi, label %bb.fk

bb.fi:                                            ; preds = %bb.fh
  %i.adn = load ptr, ptr %0, align 8, !tbaa !87
  %.val158.i.i = load ptr, ptr %i.adn, align 8, !tbaa !33
  %i.ado = call ptr %.val158.i.i(i64 noundef 40) #28, !inline_history !352 ; 8 uses
  %.not.i.i274.i.i = icmp eq ptr %i.ado, null
  br i1 %.not.i.i274.i.i, label %hsearch_push.exit275.i.i, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.adp, i8 0, i64 7, i1 false)
  %i.adq = getelementptr inbounds nuw i8, ptr %i.ado, i64 8
  store i64 %.4355.ph.i.i.ph, ptr %i.adq, align 8, !tbaa !353
  %i.adr = getelementptr inbounds nuw i8, ptr %i.ado, i64 16
  store i64 %.4347.ph.i.i.ph, ptr %i.adr, align 8, !tbaa !356
  %i.ads = getelementptr inbounds nuw i8, ptr %i.ado, i64 24
  store i64 %.5.ph.ph.i.i, ptr %i.ads, align 8, !tbaa !357
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ado, i64 32
  store i8 1, ptr %i.adt, align 8, !tbaa !358
  store ptr %.4366.ph.i.i, ptr %i.ado, align 8, !tbaa !359
  br label %hsearch_push.exit275.i.i

hsearch_push.exit275.i.i:                         ; preds = %bb.fj, %bb.fi
  %.16.i.i = phi ptr [ %.4366.ph.i.i, %bb.fi ], [ %i.ado, %bb.fj ]
  call fastcc void @edit_insert_unicode(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef %i.vy)
  br label %bb.fm

bb.fk:                                            ; preds = %bb.fh
  %i.adu = load ptr, ptr %i.aa, align 8, !tbaa !137
  %i.adv = getelementptr i8, ptr %i.adu, i64 33
  %.val152.i.i = load i8, ptr %i.adv, align 1, !tbaa !165, !range !130, !noundef !131
  %i.adw = trunc nuw i8 %.val152.i.i to i1
  br i1 %i.adw, label %.outer.outer.i.i.backedge, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.adx = load ptr, ptr @stderr, align 8, !tbaa !75
  %fputc.i276.i.i = call i32 @fputc(i32 7, ptr %i.adx) ; 0 uses
  %i.ady = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.adz = call i32 @fflush(ptr noundef %i.ady)   ; 0 uses
  br label %.outer.outer.i.i.backedge

bb.fm:                                            ; preds = %hsearch_push.exit275.i.i, %hsearch_push.exit273.i.i
  %.7369.i.i = phi ptr [ %.15.i.i, %hsearch_push.exit273.i.i ], [ %.16.i.i, %hsearch_push.exit275.i.i ] ; 3 uses
  %i.aea = load ptr, ptr %i.bv, align 8, !tbaa !167 ; 2 uses
  %i.aeb = load ptr, ptr %6, align 8, !tbaa !320  ; 3 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 16
  %i.aed = load i64, ptr %i.aec, align 8, !tbaa !46 ; 2 uses
  %i.aee = icmp slt i64 %i.aed, 0
  br i1 %i.aee, label %sbuf_string.exit280.i.i, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.aef = load ptr, ptr %i.aeb, align 8, !tbaa !49 ; 2 uses
  %i.aeg = icmp eq ptr %i.aef, null
  %spec.select.i.i278.i.i = select i1 %i.aeg, ptr @.str.3, ptr %i.aef
  br label %sbuf_string.exit280.i.i

sbuf_string.exit280.i.i:                          ; preds = %bb.fn, %bb.fm
  %.0.i.i279.i.i = phi ptr [ %spec.select.i.i278.i.i, %bb.fn ], [ null, %bb.fm ]
  %i.aeh = load i64, ptr %i.aea, align 8, !tbaa !172 ; 4 uses
  %i.aei = icmp slt i64 %.4355.ph.i.i.ph, %i.aeh
  br i1 %i.aei, label %history_get.exit.lr.ph.i281.i.i, label %.loopexit.i.i

history_get.exit.lr.ph.i281.i.i:                  ; preds = %sbuf_string.exit280.i.i
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aea, i64 16
  %i.aek = load ptr, ptr %i.aej, align 8, !tbaa !174
  %i.ael = getelementptr [8 x i8], ptr %i.aek, i64 %i.aeh
  %i.aem = icmp sgt i64 %.4355.ph.i.i.ph, -1
  call void @llvm.assume(i1 %i.aem)
  br label %history_get.exit.i282.i.i

history_get.exit.i282.i.i:                        ; preds = %bb.fo, %history_get.exit.lr.ph.i281.i.i
  %.058.i283.i.i = phi i64 [ %.4355.ph.i.i.ph, %history_get.exit.lr.ph.i281.i.i ], [ %i.aer, %bb.fo ] ; 4 uses
  %i.aen = xor i64 %.058.i283.i.i, -1
  %i.aeo = getelementptr [8 x i8], ptr %i.ael, i64 %i.aen
  %i.aep = load ptr, ptr %i.aeo, align 8, !tbaa !61 ; 2 uses
  %i.aeq = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.aep, ptr noundef nonnull readonly dereferenceable(1) %.0.i.i279.i.i) #29 ; 2 uses
  %.not35.i284.i.i = icmp eq ptr %i.aeq, null
  br i1 %.not35.i284.i.i, label %bb.fo, label %.thread46.i285.i.i

bb.fo:                                            ; preds = %history_get.exit.i282.i.i
  %i.aer = add i64 %.058.i283.i.i, 1              ; 2 uses
  %exitcond.not.i289.i.i = icmp eq i64 %i.aer, %i.aeh
  br i1 %exitcond.not.i289.i.i, label %.loopexit.i.i, label %history_get.exit.i282.i.i, !llvm.loop !360

.thread46.i285.i.i:                               ; preds = %history_get.exit.i282.i.i
  %.not.i39.i286.i.i = icmp slt i64 %.058.i283.i.i, %i.aeh
  %i.aes = ptrtoint ptr %i.aep to i64
  %spec.select426.i.i = select i1 %.not.i39.i286.i.i, i64 %i.aes, i64 0
  %i.aet = ptrtoint ptr %i.aeq to i64
  %i.aeu = sub i64 %i.aet, %spec.select426.i.i
  %i.aev = icmp eq ptr %i.aeb, null
  %spec.select427.i.i = select i1 %i.aev, i64 0, i64 %i.aed
  br label %.outer.outer.i.i.backedge

.loopexit.i.i:                                    ; preds = %bb.fo, %sbuf_string.exit280.i.i
  %i.aew = load ptr, ptr %i.aa, align 8, !tbaa !137
  %i.aex = getelementptr i8, ptr %i.aew, i64 33
  %.val.i35.i = load i8, ptr %i.aex, align 1, !tbaa !165, !range !130, !noundef !131
  %i.aey = trunc nuw i8 %.val.i35.i to i1
  br i1 %i.aey, label %.outer.outer.i.i.backedge, label %bb.fp

bb.fp:                                            ; preds = %.loopexit.i.i
  %i.aez = load ptr, ptr @stderr, align 8, !tbaa !75
  %fputc.i293.i.i = call i32 @fputc(i32 7, ptr %i.aez) ; 0 uses
  %i.afa = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.afb = call i32 @fflush(ptr noundef %i.afa)   ; 0 uses
  br label %.outer.outer.i.i.backedge

.outer.outer.i.i.backedge:                        ; preds = %bb.fp, %.loopexit.i.i, %.thread46.i285.i.i, %bb.fl, %bb.fk, %sbuf_delete_char_before.exit.i.i.i, %hsearch_pop.exit.i.i, %bb.el
  %.4366.ph.ph.i.i.be = phi ptr [ null, %bb.el ], [ %i.yz, %sbuf_delete_char_before.exit.i.i.i ], [ %i.yz, %hsearch_pop.exit.i.i ], [ %.7369.i.i, %.loopexit.i.i ], [ %.4366.ph.i.i, %bb.fl ], [ %.7369.i.i, %bb.fp ], [ %.4366.ph.i.i, %bb.fk ], [ %.7369.i.i, %.thread46.i285.i.i ]
  %.4355.ph.ph.i.i.be = phi i64 [ %.4355.ph.i.i.ph, %bb.el ], [ %i.zb, %sbuf_delete_char_before.exit.i.i.i ], [ %i.zb, %hsearch_pop.exit.i.i ], [ %.4355.ph.i.i.ph, %.loopexit.i.i ], [ %.4355.ph.i.i.ph, %bb.fl ], [ %.4355.ph.i.i.ph, %bb.fp ], [ %.4355.ph.i.i.ph, %bb.fk ], [ %.058.i283.i.i, %.thread46.i285.i.i ]
  %.4347.ph.ph.i.i.be = phi i64 [ %.4347.ph.i.i.ph, %bb.el ], [ %i.zd, %sbuf_delete_char_before.exit.i.i.i ], [ %i.zd, %hsearch_pop.exit.i.i ], [ %.4347.ph.i.i.ph, %.loopexit.i.i ], [ %.4347.ph.i.i.ph, %bb.fl ], [ %.4347.ph.i.i.ph, %bb.fp ], [ %.4347.ph.i.i.ph, %bb.fk ], [ %i.aeu, %.thread46.i285.i.i ]
  %.5.ph.ph.i.i.be = phi i64 [ %.5.ph.ph.i.i, %bb.el ], [ %i.zf, %sbuf_delete_char_before.exit.i.i.i ], [ %i.zf, %hsearch_pop.exit.i.i ], [ %.5.ph.ph.i.i, %.loopexit.i.i ], [ %.5.ph.ph.i.i, %bb.fl ], [ %.5.ph.ph.i.i, %bb.fp ], [ %.5.ph.ph.i.i, %bb.fk ], [ %spec.select427.i.i, %.thread46.i285.i.i ]
  br label %.outer.outer.i.i

editor_restore.exit:                              ; preds = %sbuf_replace.exit.i, %bb.dz, %sbuf_len.exit.i.i203
  store i8 0, ptr %i.ca, align 1, !tbaa !335
  %.not5.i.i.i = icmp eq ptr %.4366.ph.i.i, null
  br i1 %.not5.i.i.i, label %hsearch_done.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %editor_restore.exit
  %i.afc = load ptr, ptr %0, align 8, !tbaa !87
  %i.afd = getelementptr i8, ptr %i.afc, i64 16
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fq, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %.4366.ph.i.i, %.lr.ph.i.i.i ], [ %i.afe, %bb.fq ] ; 2 uses
  %i.afe = load ptr, ptr %.06.i.i.i, align 8, !tbaa !359 ; 2 uses
  %.val.i295.i.i = load ptr, ptr %i.afd, align 8, !tbaa !50
  call void %.val.i295.i.i(ptr noundef nonnull %.06.i.i.i) #28, !inline_history !367
  %.not.i296.i.i = icmp eq ptr %i.afe, null
  br i1 %.not.i296.i.i, label %hsearch_done.exit.i.i, label %bb.fq, !llvm.loop !368

hsearch_done.exit.i.i:                            ; preds = %bb.fq, %editor_restore.exit
  store ptr %i.rb, ptr %i.aj, align 8, !tbaa !329
  %i.aff = load ptr, ptr @rpenv, align 8, !tbaa !121 ; 2 uses
  %i.afg = icmp eq ptr %i.aff, null
  br i1 %i.afg, label %bb.fr, label %ic_get_env.exit.thread6.i297.i.i

bb.fr:                                            ; preds = %hsearch_done.exit.i.i
  %i.afh = call fastcc ptr @ic_env_create(ptr noundef null, ptr noundef null, ptr noundef null) ; 2 uses
  store ptr %i.afh, ptr @rpenv, align 8, !tbaa !121
  %.not.i.i299.i.i = icmp eq ptr %i.afh, null
  br i1 %.not.i.i299.i.i, label %ic_enable_hint.exit302.i.i, label %ic_get_env.exit.i300.i.i

ic_get_env.exit.i300.i.i:                         ; preds = %bb.fr
  %i.afi = call i32 @atexit(ptr noundef nonnull @ic_atexit) #28 ; 0 uses
  %.pre.i.i301.i.i = load ptr, ptr @rpenv, align 8, !tbaa !121 ; 2 uses
  %i.afj = icmp eq ptr %.pre.i.i301.i.i, null
  br i1 %i.afj, label %ic_enable_hint.exit302.i.i, label %ic_get_env.exit.thread6.i297.i.i

ic_get_env.exit.thread6.i297.i.i:                 ; preds = %ic_get_env.exit.i300.i.i, %hsearch_done.exit.i.i
  %i.afk = phi ptr [ %.pre.i.i301.i.i, %ic_get_env.exit.i300.i.i ], [ %i.aff, %hsearch_done.exit.i.i ]
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 112
  store i8 %i.ra, ptr %i.afl, align 8, !tbaa !193
  br label %ic_enable_hint.exit302.i.i

ic_enable_hint.exit302.i.i:                       ; preds = %ic_get_env.exit.thread6.i297.i.i, %ic_get_env.exit.i300.i.i, %bb.fr
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %edit_history_search_with_current_word.exit

edit_history_search_with_current_word.exit:       ; preds = %bb.cf, %bb.cg, %ic_enable_hint.exit302.i.i
  %i.afm = load ptr, ptr %0, align 8, !tbaa !87
  %i.afn = getelementptr i8, ptr %i.afm, i64 16
  %.val.i204 = load ptr, ptr %i.afn, align 8, !tbaa !50
  call void %.val.i204(ptr noundef %.1.i) #28, !inline_history !369
  br label %edit_multiline_eol.exit.backedge

bb.fs:                                            ; preds = %bb.bh
  call fastcc void @edit_history_at(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef 1)
  br label %edit_multiline_eol.exit.backedge

bb.ft:                                            ; preds = %bb.bh
  call fastcc void @edit_history_at(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef -1)
  br label %edit_multiline_eol.exit.backedge

bb.fu:                                            ; preds = %bb.bh
  %i.afo = load i64, ptr %i.af, align 8, !tbaa !326
  %i.afp = load ptr, ptr %i.aa, align 8, !tbaa !137
  %i.afq = getelementptr i8, ptr %i.afp, i64 16
  %.val.i208 = load i64, ptr %i.afq, align 8, !tbaa !254
  %i.afr = add nsw i64 %.val.i208, -1
  store i64 %i.afr, ptr %i.af, align 8, !tbaa !326
  call fastcc void @edit_clear(ptr noundef nonnull %0, ptr noundef nonnull %6)
  store i64 %i.afo, ptr %i.af, align 8, !tbaa !326
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %edit_multiline_eol.exit.backedge

bb.fv:                                            ; preds = %bb.bh, %bb.bh
  call fastcc void @editor_restore(ptr noundef nonnull %6, ptr noundef %i.al, ptr noundef nonnull %i.am)
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %edit_multiline_eol.exit.backedge

bb.fw:                                            ; preds = %bb.bh
  call fastcc void @editor_restore(ptr noundef nonnull %6, ptr noundef %i.am, ptr noundef nonnull %i.al)
  store i8 0, ptr %i.ah, align 8, !tbaa !328
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %edit_multiline_eol.exit.backedge

bb.fx:                                            ; preds = %bb.bh
  call fastcc void @edit_show_help(ptr noundef %0, ptr noundef %6)
  br label %edit_multiline_eol.exit.backedge

bb.fy:                                            ; preds = %bb.bh, %bb.bh
  %i.afs = load ptr, ptr %6, align 8, !tbaa !320
  %i.aft = load i64, ptr %i.ae, align 8, !tbaa !325 ; 6 uses
  %.val.i209 = load ptr, ptr %i.afs, align 8, !tbaa !49 ; 3 uses
  %i.afu = icmp ne ptr %.val.i209, null
  %i.afv = icmp sgt i64 %i.aft, 0
  %or.cond.i.i.i.i = and i1 %i.afv, %i.afu
  br i1 %or.cond.i.i.i.i, label %.preheader.i.i.i.i.preheader, label %edit_multiline_eol.exit.backedge

edit_multiline_eol.exit.backedge:                 ; preds = %bb.fy, %bb.kx, %bb.la, %bb.kz, %sbuf_swap_char.exit.i, %sbuf_len.exit.i365, %bb.kj, %sbuf_delete_from_to.exit.i356, %sbuf_find_line_end.exit.i351, %sbuf_find_line_start.exit.i348, %bb.js, %sbuf_find_line_end.exit.thread.i, %sbuf_find_line_start.exit.i, %sbuf_delete_from_to.exit.i, %bb.ia, %sbuf_delete_char_at.exit.i268, %sbuf_len.exit.i260, %sbuf_delete_char_before.exit.i, %bb.hd, %bb.hc, %sbuf_string.exit.i243, %bb.gw, %bb.gv, %bb.gq, %sbuf_find_line_end.exit.i, %bb.fz, %sbuf_prev.exit.i, %sbuf_clear.exit.i, %sbuf_len.exit.i180, %bb.bk, %sbuf_delete_char_at.exit.i, %sbuf_len.exit.i171, %sbuf_delete_at.exit.i, %sbuf_string.exit.i, %bb.al, %bb.ku, %bb.kv, %bb.gu, %bb.gc, %bb.gd, %edit_delete_to_start_of_word.exit, %edit_delete_to_start_of_ws_word.exit, %edit_cursor_to_end.exit, %bb.gx, %bb.gr, %edit_cursor_line_start.exit, %edit_cursor_row_down.exit, %edit_cursor_row_up.exit, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %edit_history_search_with_current_word.exit, %bb.ca, %bb.bz, %bb.by
  br label %edit_multiline_eol.exit

.preheader.i.i.i.i.preheader:                     ; preds = %bb.fy
  %exitcond.not.i.i.i.i1123 = icmp eq i64 %i.aft, 1
  br i1 %exitcond.not.i.i.i.i1123, label %sbuf_prev.exit.i, label %.lr.ph1125

.preheader.i.i.i.i:                               ; preds = %.lr.ph1125
  %i.afw = add nuw i64 %.021.i.i.i.i1124, 1       ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.afw, %i.aft
  br i1 %exitcond.not.i.i.i.i, label %sbuf_prev.exit.i, label %.lr.ph1125

.lr.ph1125:                                       ; preds = %.preheader.i.i.i.i.preheader, %.preheader.i.i.i.i
  %.021.i.i.i.i1124 = phi i64 [ %i.afw, %.preheader.i.i.i.i ], [ 1, %.preheader.i.i.i.i.preheader ] ; 3 uses
  %i.afx = sub nuw nsw i64 %i.aft, %.021.i.i.i.i1124 ; 2 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %.val.i209, i64 %i.afx
  %i.afz = load i8, ptr %i.afy, align 1, !tbaa !9
  %or.cond4.i.i.i.i = icmp sgt i8 %i.afz, -65
  br i1 %or.cond4.i.i.i.i, label %sbuf_prev.exit.i, label %.preheader.i.i.i.i

sbuf_prev.exit.i:                                 ; preds = %.preheader.i.i.i.i, %.lr.ph1125, %.preheader.i.i.i.i.preheader
  %.pre-phi.i211 = phi i64 [ 0, %.preheader.i.i.i.i.preheader ], [ 0, %.preheader.i.i.i.i ], [ %i.afx, %.lr.ph1125 ] ; 2 uses
  %.2.i.i.i.i = phi i64 [ %i.aft, %.preheader.i.i.i.i.preheader ], [ %i.aft, %.preheader.i.i.i.i ], [ %.021.i.i.i.i1124, %.lr.ph1125 ] ; 2 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %.val.i209, i64 %.pre-phi.i211
  %i.agb = call fastcc i64 @char_column_width(ptr noundef nonnull readonly %i.aga, i64 noundef %.2.i.i.i.i) ; 0 uses
  %i.agc = icmp slt i64 %.2.i.i.i.i, 1
  br i1 %i.agc, label %edit_multiline_eol.exit.backedge, label %bb.fz

bb.fz:                                            ; preds = %sbuf_prev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %.val.i.i212 = load ptr, ptr %i.aj, align 8, !tbaa !329
  %i.agd = load ptr, ptr %i.bh, align 8, !tbaa !146
  %i.age = call fastcc i64 @bbcode_column_width(ptr noundef %i.agd, ptr noundef %.val.i.i212)
  %i.agf = load ptr, ptr %i.bh, align 8, !tbaa !146
  %i.agg = load ptr, ptr %.in.i, align 8, !tbaa !141
  %i.agh = call fastcc i64 @bbcode_column_width(ptr noundef %i.agf, ptr noundef %i.agg)
  %i.agi = load ptr, ptr %i.bh, align 8, !tbaa !146
  %i.agj = load ptr, ptr %i.cd, align 8, !tbaa !161
  %i.agk = call fastcc i64 @bbcode_column_width(ptr noundef %i.agi, ptr noundef %i.agj) ; 2 uses
  %i.agl = add nsw i64 %i.agh, %i.age             ; 2 uses
  %i.agm = load i8, ptr %i.ce, align 2, !tbaa !192, !range !130, !noundef !131
  %i.agn = trunc nuw i8 %i.agm to i1
  %i.ago = call i64 @llvm.smax.i64(i64 %i.agl, i64 %i.agk)
  %i.agp = select i1 %i.agn, i64 %i.agk, i64 %i.ago
  %i.agq = load ptr, ptr %6, align 8, !tbaa !320  ; 2 uses
  %i.agr = load i64, ptr %i.ad, align 8, !tbaa !324
  %i.ags = load i64, ptr %i.ae, align 8, !tbaa !325
  %.val6.i.i213 = load ptr, ptr %i.agq, align 8, !tbaa !49
  %i.agt = getelementptr i8, ptr %i.agq, i64 16
  %.val7.i.i214 = load i64, ptr %i.agt, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %i.ags, ptr %i.e, align 8, !tbaa !62
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  %i.agu = call fastcc i64 @str_for_each_row(ptr noundef %.val6.i.i213, i64 noundef %.val7.i.i214, i64 noundef %i.agr, i64 noundef %i.agl, i64 noundef %i.agp, ptr noundef nonnull @str_get_current_pos_iter, ptr noundef %i.e, ptr noundef nonnull %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %.pre-phi.i211, ptr %i.ae, align 8, !tbaa !325
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %edit_multiline_eol.exit.backedge

bb.ga:                                            ; preds = %bb.bh, %bb.bh
  %i.agv = load i64, ptr %i.ae, align 8, !tbaa !325
  %i.agw = load ptr, ptr %6, align 8, !tbaa !320  ; 2 uses
  %i.agx = icmp eq ptr %i.agw, null
  br i1 %i.agx, label %sbuf_len.exit216, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agw, i64 16
  %i.agz = load i64, ptr %i.agy, align 8, !tbaa !46
  br label %sbuf_len.exit216

sbuf_len.exit216:                                 ; preds = %bb.ga, %bb.gb
  %.0.i215 = phi i64 [ %i.agz, %bb.gb ], [ 0, %bb.ga ]
  %i.aha = icmp eq i64 %i.agv, %.0.i215
  br i1 %i.aha, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %sbuf_len.exit216
  call fastcc void @edit_generate_completions(ptr noundef %0, ptr noundef %6, i1 noundef zeroext false)
end_hunk_1
