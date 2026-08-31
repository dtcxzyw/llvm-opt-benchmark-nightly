Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/cat-file?download=true
inline.NumInlined: 62
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@cmd_cat_file:switch.edge
  %.not50.i.i = icmp eq i8 %i.of, 0
  br i1 %.not50.i.i, label %bb.by, label %bb.bk

bb.bk:                                            ; preds = %.loopexit.i.i
  %i.og = call fastcc ptr @_(ptr noundef nonnull @.str.111)
  call void (ptr, ...) @die(ptr noundef %i.og, ptr noundef nonnull @.str.113) #15
  unreachable

skip_prefix_impl.exit.i.i:                        ; preds = %.preheader.preheader.i.i
  %scevgep161.i.i = getelementptr i8, ptr %i.my, i64 4 ; 3 uses
  %i.oh = icmp eq i8 %i.mz, 105
  br i1 %i.oh, label %bb.bl, label %skip_prefix_impl.exit.1.i.i

bb.bl:                                            ; preds = %skip_prefix_impl.exit.i.i
  %i.oi = load i8, ptr %i.ne, align 1, !tbaa !92
  %i.oj = icmp eq i8 %i.oi, 110
  br i1 %i.oj, label %bb.bm, label %skip_prefix_impl.exit.3.i.i

bb.bm:                                            ; preds = %bb.bl
  %i.ok = getelementptr inbounds nuw i8, ptr %i.my, i64 2
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !92
  %i.om = icmp eq i8 %i.ol, 102
  br i1 %i.om, label %bb.bn, label %skip_prefix_impl.exit.3.i.i

bb.bn:                                            ; preds = %bb.bm
  %i.on = getelementptr inbounds nuw i8, ptr %i.my, i64 3
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !92
  %i.op = icmp eq i8 %i.oo, 111
  br i1 %i.op, label %bb.bh, label %skip_prefix_impl.exit.3.i.i

skip_prefix_impl.exit.1.i.i:                      ; preds = %skip_prefix_impl.exit.i.i
  %scevgep160.i.i = getelementptr i8, ptr %i.my, i64 5 ; 2 uses
  %i.oq = icmp eq i8 %i.mz, 102
  br i1 %i.oq, label %bb.bo, label %skip_prefix_impl.exit.2.i.i

bb.bo:                                            ; preds = %skip_prefix_impl.exit.1.i.i
  %i.or = load i8, ptr %i.ne, align 1, !tbaa !92
  %i.os = icmp eq i8 %i.or, 108
  br i1 %i.os, label %bb.bp, label %skip_prefix_impl.exit.3.i.i

bb.bp:                                            ; preds = %bb.bo
  %i.ot = getelementptr inbounds nuw i8, ptr %i.my, i64 2
  %i.ou = load i8, ptr %i.ot, align 1, !tbaa !92
  %i.ov = icmp eq i8 %i.ou, 117
  br i1 %i.ov, label %bb.bq, label %skip_prefix_impl.exit.3.i.i

bb.bq:                                            ; preds = %bb.bp
  %i.ow = getelementptr inbounds nuw i8, ptr %i.my, i64 3
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !92
  %i.oy = icmp eq i8 %i.ox, 115
  br i1 %i.oy, label %bb.br, label %skip_prefix_impl.exit.3.i.i

bb.br:                                            ; preds = %bb.bq
  %i.oz = load i8, ptr %scevgep161.i.i, align 1, !tbaa !92
  %i.pa = icmp eq i8 %i.oz, 104
  br i1 %i.pa, label %.loopexit.i.i, label %skip_prefix_impl.exit.3.i.i

skip_prefix_impl.exit.2.i.i:                      ; preds = %skip_prefix_impl.exit.1.i.i
  %scevgep.i.i = getelementptr i8, ptr %i.my, i64 7
  %i.pb = icmp eq i8 %i.mz, 109
  br i1 %i.pb, label %bb.bs, label %skip_prefix_impl.exit.3.i.i

bb.bs:                                            ; preds = %skip_prefix_impl.exit.2.i.i
  %i.pc = load i8, ptr %i.ne, align 1, !tbaa !92
  %i.pd = icmp eq i8 %i.pc, 97
  br i1 %i.pd, label %bb.bt, label %skip_prefix_impl.exit.3.i.i

bb.bt:                                            ; preds = %bb.bs
  %i.pe = getelementptr inbounds nuw i8, ptr %i.my, i64 2
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !92
  %i.pg = icmp eq i8 %i.pf, 105
  br i1 %i.pg, label %bb.bu, label %skip_prefix_impl.exit.3.i.i

bb.bu:                                            ; preds = %bb.bt
  %i.ph = getelementptr inbounds nuw i8, ptr %i.my, i64 3
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !92
  %i.pj = icmp eq i8 %i.pi, 108
  br i1 %i.pj, label %bb.bv, label %skip_prefix_impl.exit.3.i.i

bb.bv:                                            ; preds = %bb.bu
  %i.pk = load i8, ptr %scevgep161.i.i, align 1, !tbaa !92
  %i.pl = icmp eq i8 %i.pk, 109
  br i1 %i.pl, label %bb.bw, label %skip_prefix_impl.exit.3.i.i

bb.bw:                                            ; preds = %bb.bv
  %i.pm = load i8, ptr %scevgep160.i.i, align 1, !tbaa !92
  %i.pn = icmp eq i8 %i.pm, 97
  br i1 %i.pn, label %bb.bx, label %skip_prefix_impl.exit.3.i.i

bb.bx:                                            ; preds = %bb.bw
  %i.po = getelementptr inbounds nuw i8, ptr %i.my, i64 6
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !92
  %i.pq = icmp eq i8 %i.pp, 112
  br i1 %i.pq, label %bb.bh, label %skip_prefix_impl.exit.3.i.i

skip_prefix_impl.exit.3.i.i:                      ; preds = %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %skip_prefix_impl.exit.2.i.i, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba
  %i.pr = call fastcc ptr @_(ptr noundef nonnull @.str.112)
  %i.ps = load ptr, ptr %i.mv, align 8, !tbaa !91
  call void (ptr, ...) @die(ptr noundef %i.pr, ptr noundef %i.ps) #15
  unreachable

bb.by:                                            ; preds = %.loopexit.i.i, %bb.bj
  %.lcssa141169.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @commands, i64 48), %.loopexit.i.i ], [ %.lcssa141.ph.i.i, %bb.bj ] ; 3 uses
  %.0.ph.i.i = phi ptr [ null, %.loopexit.i.i ], [ %i.oe, %bb.bj ] ; 3 uses
  %i.pt = load ptr, ptr %.lcssa141169.i.i, align 8, !tbaa !93
  %i.pu = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.pt, ptr noundef nonnull dereferenceable(6) @.str.113) #16
  %.not53.i.i = icmp eq i32 %i.pu, 0
  %i.pv = load i32, ptr %i.fm, align 4, !tbaa !29
  %.not.i55.i.i = icmp eq i32 %i.pv, 0            ; 2 uses
  br i1 %.not53.i.i, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  br i1 %.not.i55.i.i, label %bb.ca, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.bz
  %i.pw = trunc i64 %.089130.i.i to i32
  %i.px = icmp sgt i32 %i.pw, 0
  br i1 %i.px, label %.lr.ph.preheader.i.i.i, label %dispatch_calls.exit.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i.i.i
  %wide.trip.count.i.i.i = and i64 %.089130.i.i, 2147483647
  br label %.lr.ph.i.i.i

bb.ca:                                            ; preds = %bb.bz
  %i.py = call fastcc ptr @_(ptr noundef nonnull @.str.119)
  call void (ptr, ...) @die(ptr noundef %i.py) #15
  unreachable

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.pz = getelementptr inbounds nuw [16 x i8], ptr %.040131.i.i, i64 %indvars.iv.i.i.i ; 2 uses
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !95
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pz, i64 8
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !97
  call void %i.qa(ptr noundef nonnull %19, ptr noundef %i.qc, ptr noundef nonnull %13, ptr noundef nonnull %14) #14, !inline_history !98
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %dispatch_calls.exit.thread.i.i, label %.lr.ph.i.i.i, !llvm.loop !99

dispatch_calls.exit.thread.i.i:                   ; preds = %.lr.ph.i.i.i
  %i.qd = load ptr, ptr @stdout, align 8, !tbaa !88
  %i.qe = call i32 @fflush(ptr noundef %i.qd)     ; 0 uses
  br label %.lr.ph.i57.i.i.preheader

dispatch_calls.exit.i.i:                          ; preds = %.preheader.i.i.i
  %i.qf = load ptr, ptr @stdout, align 8, !tbaa !88
  %i.qg = call i32 @fflush(ptr noundef %i.qf)     ; 0 uses
  %.not.i56.i.i = icmp eq i64 %.089130.i.i, 0
  br i1 %.not.i56.i.i, label %free_cmds.exit.i.i, label %.lr.ph.i57.i.i.preheader

.lr.ph.i57.i.i.preheader:                         ; preds = %dispatch_calls.exit.i.i, %dispatch_calls.exit.thread.i.i
  br label %.lr.ph.i57.i.i

.lr.ph.i57.i.i:                                   ; preds = %.lr.ph.i57.i.i.preheader, %.lr.ph.i57.i.i
  %.07.i58.i.i = phi i64 [ %i.qk, %.lr.ph.i57.i.i ], [ 0, %.lr.ph.i57.i.i.preheader ] ; 2 uses
  %i.qh = getelementptr inbounds nuw [16 x i8], ptr %.040131.i.i, i64 %.07.i58.i.i
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 8 ; 2 uses
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !97
  call void @free(ptr noundef %i.qj) #14
  store ptr null, ptr %i.qi, align 8, !tbaa !97
  %i.qk = add nuw i64 %.07.i58.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.qk, %.089130.i.i
  br i1 %exitcond.not.i.i, label %free_cmds.exit.i.i, label %.lr.ph.i57.i.i, !llvm.loop !101

bb.cb:                                            ; preds = %bb.by
  br i1 %.not.i55.i.i, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.ql = getelementptr inbounds nuw i8, ptr %.lcssa141169.i.i, i64 8
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !102
  call void %i.qm(ptr noundef nonnull %19, ptr noundef %.0.ph.i.i, ptr noundef nonnull %13, ptr noundef nonnull %14) #14, !inline_history !103
  br label %free_cmds.exit.i.i

bb.cd:                                            ; preds = %bb.cb
  %i.qn = add i64 %.089130.i.i, 1                 ; 3 uses
  %i.qo = icmp ugt i64 %i.qn, %.039132.i.i
  br i1 %i.qo, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %i.qp = mul i64 %.039132.i.i, 3
  %i.qq = add i64 %i.qp, 48
  %i.qr = lshr i64 %i.qq, 1
  %..i.i = call i64 @llvm.umax.i64(i64 %i.qr, i64 %i.qn) ; 4 uses
  %i.qs = icmp ugt i64 %..i.i, 1152921504606846975
  br i1 %i.qs, label %bb.cf, label %st_mult.exit.i.i

bb.cf:                                            ; preds = %bb.ce
  call void (ptr, ...) @die(ptr noundef nonnull @.str.120, i64 noundef 16, i64 noundef %..i.i) #15
  unreachable

st_mult.exit.i.i:                                 ; preds = %bb.ce
  %i.qt = shl nuw i64 %..i.i, 4
  %i.qu = call ptr @xrealloc(ptr noundef %.040131.i.i, i64 noundef %i.qt) #14
  br label %bb.cg

bb.cg:                                            ; preds = %st_mult.exit.i.i, %bb.cd
  %.141.i.i = phi ptr [ %i.qu, %st_mult.exit.i.i ], [ %.040131.i.i, %bb.cd ] ; 2 uses
  %.2.i.i = phi i64 [ %..i.i, %st_mult.exit.i.i ], [ %.039132.i.i, %bb.cd ]
  %i.qv = getelementptr inbounds nuw i8, ptr %.lcssa141169.i.i, i64 8
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !102
  %.not.i59.i.i = icmp eq ptr %.0.ph.i.i, null
  br i1 %.not.i59.i.i, label %xstrdup_or_null.exit.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.qx = call ptr @xstrdup(ptr noundef nonnull %.0.ph.i.i) #14
  br label %xstrdup_or_null.exit.i.i

xstrdup_or_null.exit.i.i:                         ; preds = %bb.ch, %bb.cg
  %21 = phi ptr [ %i.qx, %bb.ch ], [ null, %bb.cg ]
  %i.qy = getelementptr inbounds nuw [16 x i8], ptr %.141.i.i, i64 %.089130.i.i ; 2 uses
  store ptr %i.qw, ptr %i.qy, align 8, !tbaa !104
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  store ptr %21, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !37
  br label %free_cmds.exit.i.i

free_cmds.exit.i.i:                               ; preds = %.lr.ph.i57.i.i, %xstrdup_or_null.exit.i.i, %bb.cc, %dispatch_calls.exit.i.i
  %.190.i.i = phi i64 [ %i.qn, %xstrdup_or_null.exit.i.i ], [ %.089130.i.i, %bb.cc ], [ 0, %dispatch_calls.exit.i.i ], [ 0, %.lr.ph.i57.i.i ] ; 7 uses
  %.242.i.i = phi ptr [ %.141.i.i, %xstrdup_or_null.exit.i.i ], [ %.040131.i.i, %bb.cc ], [ %.040131.i.i, %dispatch_calls.exit.i.i ], [ %.040131.i.i, %.lr.ph.i57.i.i ] ; 7 uses
  %.3.i.i = phi i64 [ %.2.i.i, %xstrdup_or_null.exit.i.i ], [ %.039132.i.i, %bb.cc ], [ %.039132.i.i, %dispatch_calls.exit.i.i ], [ %.039132.i.i, %.lr.ph.i57.i.i ]
  %i.qz = load ptr, ptr @stdin, align 8, !tbaa !88
  %i.ra = load i8, ptr %i.ki, align 4, !tbaa !40
  %i.rb = sext i8 %i.ra to i32
  %i.rc = call i32 @strbuf_getdelim_strip_crlf(ptr noundef nonnull %11, ptr noundef %i.qz, i32 noundef %i.rb) #14
  %.not.i.i = icmp eq i32 %i.rc, -1
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.aw, !llvm.loop !105

._crit_edge.i.i:                                  ; preds = %free_cmds.exit.i.i
  %i.rd = load i32, ptr %i.fm, align 4, !tbaa !29
  %i.re = icmp ne i32 %i.rd, 0
  %i.rf = icmp ne i64 %.190.i.i, 0
  %or.cond.i.i = select i1 %i.re, i1 %i.rf, i1 false
  br i1 %or.cond.i.i, label %bb.ci, label %free_cmds.exit72.i.i

bb.ci:                                            ; preds = %._crit_edge.i.i
  %i.rg = call i32 @git_env_bool(ptr noundef nonnull @.str.114, i32 noundef 0) #14
  %.not46.i.i = icmp eq i32 %i.rg, 0
  br i1 %.not46.i.i, label %bb.cj, label %.lr.ph.i74.i.i.preheader

bb.cj:                                            ; preds = %bb.ci
  %i.rh = load i32, ptr %i.fm, align 4, !tbaa !29
  %.not.i60.i.i = icmp eq i32 %i.rh, 0
  br i1 %.not.i60.i.i, label %bb.ck, label %.preheader.i61.i.i

.preheader.i61.i.i:                               ; preds = %bb.cj
  %i.ri = trunc i64 %.190.i.i to i32
  %i.rj = icmp sgt i32 %i.ri, 0
  br i1 %i.rj, label %.lr.ph.preheader.i62.i.i, label %dispatch_calls.exit68.i.i

.lr.ph.preheader.i62.i.i:                         ; preds = %.preheader.i61.i.i
  %wide.trip.count.i63.i.i = and i64 %.190.i.i, 2147483647
  br label %.lr.ph.i64.i.i

bb.ck:                                            ; preds = %bb.cj
  %i.rk = call fastcc ptr @_(ptr noundef nonnull @.str.119)
  call void (ptr, ...) @die(ptr noundef %i.rk) #15
  unreachable

.lr.ph.i64.i.i:                                   ; preds = %.lr.ph.i64.i.i, %.lr.ph.preheader.i62.i.i
  %indvars.iv.i65.i.i = phi i64 [ 0, %.lr.ph.preheader.i62.i.i ], [ %indvars.iv.next.i66.i.i, %.lr.ph.i64.i.i ] ; 2 uses
  %i.rl = getelementptr inbounds nuw [16 x i8], ptr %.242.i.i, i64 %indvars.iv.i65.i.i ; 2 uses
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !95
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !97
  call void %i.rm(ptr noundef nonnull %19, ptr noundef %i.ro, ptr noundef nonnull %13, ptr noundef nonnull %14) #14, !inline_history !98
  %indvars.iv.next.i66.i.i = add nuw nsw i64 %indvars.iv.i65.i.i, 1 ; 2 uses
  %exitcond.not.i67.i.i = icmp eq i64 %indvars.iv.next.i66.i.i, %wide.trip.count.i63.i.i
  br i1 %exitcond.not.i67.i.i, label %dispatch_calls.exit68.i.i, label %.lr.ph.i64.i.i, !llvm.loop !99

dispatch_calls.exit68.i.i:                        ; preds = %.lr.ph.i64.i.i, %.preheader.i61.i.i
  %i.rp = load ptr, ptr @stdout, align 8, !tbaa !88
  %i.rq = call i32 @fflush(ptr noundef %i.rp)     ; 0 uses
  br label %.lr.ph.i70.i.i

.lr.ph.i70.i.i:                                   ; preds = %.lr.ph.i70.i.i, %dispatch_calls.exit68.i.i
  %.07.i71.i.i = phi i64 [ %i.ru, %.lr.ph.i70.i.i ], [ 0, %dispatch_calls.exit68.i.i ] ; 2 uses
  %i.rr = getelementptr inbounds nuw [16 x i8], ptr %.242.i.i, i64 %.07.i71.i.i
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 8 ; 2 uses
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !97
  call void @free(ptr noundef %i.rt) #14
  store ptr null, ptr %i.rs, align 8, !tbaa !97
  %i.ru = add nuw i64 %.07.i71.i.i, 1             ; 2 uses
  %exitcond164.not.i.i = icmp eq i64 %i.ru, %.190.i.i
  br i1 %exitcond164.not.i.i, label %batch_objects_command.exit.i, label %.lr.ph.i70.i.i, !llvm.loop !101

free_cmds.exit72.i.i:                             ; preds = %._crit_edge.i.i
  %.not.i73.i.i = icmp eq i64 %.190.i.i, 0
  br i1 %.not.i73.i.i, label %batch_objects_command.exit.i, label %.lr.ph.i74.i.i.preheader

.lr.ph.i74.i.i.preheader:                         ; preds = %free_cmds.exit72.i.i, %bb.ci
  br label %.lr.ph.i74.i.i

.lr.ph.i74.i.i:                                   ; preds = %.lr.ph.i74.i.i.preheader, %.lr.ph.i74.i.i
  %.07.i75.i.i = phi i64 [ %i.ry, %.lr.ph.i74.i.i ], [ 0, %.lr.ph.i74.i.i.preheader ] ; 2 uses
  %i.rv = getelementptr inbounds nuw [16 x i8], ptr %.242.i.i, i64 %.07.i75.i.i
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 8 ; 2 uses
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !97
  call void @free(ptr noundef %i.rx) #14
  store ptr null, ptr %i.rw, align 8, !tbaa !97
  %i.ry = add nuw i64 %.07.i75.i.i, 1             ; 2 uses
  %exitcond163.not.i.i = icmp eq i64 %i.ry, %.190.i.i
  br i1 %exitcond163.not.i.i, label %batch_objects_command.exit.i, label %.lr.ph.i74.i.i, !llvm.loop !101

batch_objects_command.exit.i:                     ; preds = %.lr.ph.i74.i.i, %.lr.ph.i70.i.i, %free_cmds.exit72.i.i, %bb.av
  %.040.lcssa182.i.i = phi ptr [ null, %bb.av ], [ %.242.i.i, %.lr.ph.i70.i.i ], [ %.242.i.i, %free_cmds.exit72.i.i ], [ %.242.i.i, %.lr.ph.i74.i.i ]
  call void @free(ptr noundef %.040.lcssa182.i.i) #14
  call void @strbuf_release(ptr noundef nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  br label %.loopexit.i

bb.cl:                                            ; preds = %bb.co, %.lr.ph53.i
  %i.rz = load i32, ptr %i.mn, align 8, !tbaa !74
  %.not38.i = icmp eq i32 %i.rz, 0
  %.pre55.i = load ptr, ptr %i.mo, align 8, !tbaa !91 ; 4 uses
  br i1 %.not38.i, label %bb.co, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.sa = call ptr @strpbrk(ptr noundef %.pre55.i, ptr noundef nonnull @.str.72) #16 ; 4 uses
  %.not39.i = icmp eq ptr %i.sa, null
  br i1 %.not39.i, label %.critedge.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.cm
  %i.sb = load i8, ptr %i.sa, align 1, !tbaa !92  ; 2 uses
  %.not4048.i = icmp eq i8 %i.sb, 0
  br i1 %.not4048.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.cn
  %i.sc = phi i8 [ %i.sh, %bb.cn ], [ %i.sb, %.preheader.i ] ; 2 uses
  %.049.i = phi ptr [ %i.sg, %bb.cn ], [ %i.sa, %.preheader.i ] ; 3 uses
  %i.sd = zext nneg i8 %i.sc to i64
  %memchr.bounds.i = icmp ugt i8 %i.sc, 63
  %i.se = shl nuw i64 1, %i.sd
  %i.sf = and i64 %i.se, 4294967809
  %memchr.bits.i = icmp eq i64 %i.sf, 0
  %memchr41.not.i = select i1 %memchr.bounds.i, i1 true, i1 %memchr.bits.i
  br i1 %memchr41.not.i, label %.critedge.loopexit.i, label %bb.cn

bb.cn:                                            ; preds = %.lr.ph.i
  %i.sg = getelementptr inbounds nuw i8, ptr %.049.i, i64 1 ; 3 uses
  store i8 0, ptr %.049.i, align 1, !tbaa !92
  %i.sh = load i8, ptr %i.sg, align 1, !tbaa !92  ; 2 uses
  %.not40.i = icmp eq i8 %i.sh, 0
  br i1 %.not40.i, label %.critedge.loopexit.i, label %.lr.ph.i, !llvm.loop !106

.critedge.loopexit.i:                             ; preds = %bb.cn, %.lr.ph.i
  %.1.ph.i = phi ptr [ %.049.i, %.lr.ph.i ], [ %i.sg, %bb.cn ]
  %.pre.pre.i = load ptr, ptr %i.mo, align 8, !tbaa !91
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.preheader.i, %bb.cm
  %.pre.i = phi ptr [ %.pre55.i, %bb.cm ], [ %.pre55.i, %.preheader.i ], [ %.pre.pre.i, %.critedge.loopexit.i ]
  %.1.i = phi ptr [ null, %bb.cm ], [ %i.sa, %.preheader.i ], [ %.1.ph.i, %.critedge.loopexit.i ]
  store ptr %.1.i, ptr %i.mp, align 8, !tbaa !107
  br label %bb.co

bb.co:                                            ; preds = %.critedge.i, %bb.cl
  %i.si = phi ptr [ %.pre.i, %.critedge.i ], [ %.pre55.i, %bb.cl ]
  call fastcc void @batch_one_object(ptr noundef %i.si, ptr noundef nonnull %13, ptr noundef nonnull %19, ptr noundef nonnull %14)
  %i.sj = load ptr, ptr @stdin, align 8, !tbaa !88
  %i.sk = load i8, ptr %i.ki, align 4, !tbaa !40
  %i.sl = sext i8 %i.sk to i32
  %i.sm = call i32 @strbuf_getdelim_strip_crlf(ptr noundef nonnull %12, ptr noundef %i.sj, i32 noundef %i.sl) #14
  %.not37.i = icmp eq i32 %i.sm, -1
  br i1 %.not37.i, label %.loopexit.i, label %bb.cl, !llvm.loop !108

.loopexit.i:                                      ; preds = %bb.co, %batch_objects_command.exit.i, %.preheader47.i
  %i.sn = phi i32 [ %i.mf, %batch_objects_command.exit.i ], [ %i.mh, %.preheader47.i ], [ %i.mh, %bb.co ]
  %i.so = phi ptr [ %i.me, %batch_objects_command.exit.i ], [ %i.mi, %.preheader47.i ], [ %i.mi, %bb.co ]
  call void @strbuf_release(ptr noundef nonnull %12) #14
  call void @strbuf_release(ptr noundef nonnull %13) #14
  store i32 %i.sn, ptr %i.so, align 4, !tbaa !77
  br label %batch_objects.exit

batch_objects.exit:                               ; preds = %bb.at, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  br label %bb.eu

bb.cp:                                            ; preds = %bb.y
  %.not47 = icmp eq i32 %i.kr, 0
  br i1 %.not47, label %bb.cy, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.sp = icmp eq i32 %i.ip, 0                    ; 3 uses
  %i.sq = icmp eq i32 %i.kr, 99
  %or.cond9 = and i1 %i.sp, %i.sq
  br i1 %or.cond9, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.sr = call fastcc ptr @_(ptr noundef nonnull @.str.60)
  call void (ptr, ptr, ptr, ...) @usage_msg_optf(ptr noundef %i.sr, ptr noundef nonnull %i.m, ptr noundef nonnull %20, ptr noundef nonnull @.str.51) #15
  unreachable

bb.cs:                                            ; preds = %bb.cq
  %i.ss = icmp eq i32 %i.kr, 119
  %or.cond11 = and i1 %i.sp, %i.ss
  br i1 %or.cond11, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.st = call fastcc ptr @_(ptr noundef nonnull @.str.60)
  call void (ptr, ptr, ptr, ...) @usage_msg_optf(ptr noundef %i.st, ptr noundef nonnull %i.m, ptr noundef nonnull %20, ptr noundef nonnull @.str.50) #15
  unreachable

bb.cu:                                            ; preds = %bb.cs
  %or.cond13 = and i1 %i.sp, %i.is
  br i1 %or.cond13, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.su = call fastcc ptr @_(ptr noundef nonnull @.str.61)
  %i.sv = load i32, ptr %i.i, align 4, !tbaa !12
  call void (ptr, ptr, ptr, ...) @usage_msg_optf(ptr noundef %i.su, ptr noundef nonnull %i.m, ptr noundef nonnull %20, i32 noundef %i.sv) #15
  unreachable

end_hunk_0
