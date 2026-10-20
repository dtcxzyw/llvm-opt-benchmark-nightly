Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/file_functions?download=true
inline.NumInlined: 13
inline.NumDeleted: 12
begin_hunk_0_@load_sacctmgr_cfg_file:bb.a
bb.y:                                             ; preds = %bb.x
  %i.cp = load ptr, ptr @db_conn, align 8
  %i.cq = call ptr @slurmdb_clusters_get(ptr noundef %i.cp, ptr noundef null) #11 ; 4 uses
  %.not554 = icmp eq ptr %i.cq, null
  br i1 %.not554, label %.critedge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cr = call i32 @list_count(ptr noundef nonnull %i.cq) #11
  %i.cs = icmp sgt i32 %i.cr, 1
  br i1 %i.cs, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 1, ptr @exit_code, align 4
  %i.ct = load ptr, ptr @stderr, align 8
  %fwrite689 = call i64 @fwrite(ptr nonnull @.str.59, i64 92, i64 1, ptr %i.ct) #12 ; 0 uses
  call void @slurm_xfree(ptr noundef nonnull %i.s) #11
  call void @list_destroy(ptr noundef nonnull %i.cq) #11
  br label %bb.nq

bb.ab:                                            ; preds = %bb.z
  call void @list_destroy(ptr noundef nonnull %i.cq) #11
  br label %.critedge

.critedge:                                        ; preds = %bb.ab, %bb.y, %bb.x
  %i.cu = call ptr @list_create(ptr noundef nonnull @slurmdb_destroy_account_rec) #11 ; 7 uses
  %i.cv = call ptr @list_create(ptr noundef nonnull @slurmdb_destroy_assoc_rec) #11 ; 8 uses
  %i.cw = call ptr @list_create(ptr noundef nonnull @slurmdb_destroy_qos_rec) #11 ; 9 uses
  %i.cx = call ptr @list_create(ptr noundef nonnull @slurmdb_destroy_user_rec) #11 ; 7 uses
  %i.cy = call ptr @list_create(ptr noundef nonnull @slurmdb_destroy_assoc_rec) #11 ; 7 uses
  %i.cz = call ptr @list_create(ptr noundef nonnull @slurmdb_destroy_account_rec) #11 ; 6 uses
  %i.da = call ptr @list_create(ptr noundef nonnull @_destory_local_mod_qos) #11 ; 7 uses
  %i.db = call ptr @list_create(ptr noundef nonnull @slurmdb_destroy_user_rec) #11 ; 6 uses
  %i.dc = call ptr @list_create(ptr noundef nonnull @slurmdb_destroy_assoc_rec) #11 ; 6 uses
  %i.dd = call ptr @list_create(ptr noundef nonnull @xfree_ptr) #11 ; 11 uses
  %i.de = and i64 %i.cn, 8
  %.not564 = icmp eq i64 %i.de, 0                 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.dm = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.dn = and i64 %i.cn, 1
  %.not577 = icmp eq i64 %i.dn, 0
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.dp = and i64 %i.cn, 2
  %.not582 = icmp eq i64 %i.dp, 0
  %i.dq = and i64 %i.cn, 4
  %.not586 = icmp eq i64 %i.dq, 0
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %12, i64 88 ; 2 uses
  %.not592 = icmp eq i32 %.6481, 0
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  br label %.outer

.outer:                                           ; preds = %bb.iv, %.critedge
  %.0482.ph = phi i32 [ %i.fw, %bb.iv ], [ 0, %.critedge ]
  %.0457.ph = phi i32 [ %.14471, %bb.iv ], [ 0, %.critedge ] ; 5 uses
  %.0445.ph = phi ptr [ %i.ws, %bb.iv ], [ null, %.critedge ] ; 22 uses
  %.0441.ph = phi ptr [ %i.tz, %bb.iv ], [ null, %.critedge ] ; 19 uses
  %.1437.ph = phi ptr [ %i.tx, %bb.iv ], [ null, %.critedge ] ; 18 uses
  %.0429.ph = phi ptr [ %.3432, %bb.iv ], [ null, %.critedge ] ; 14 uses
  %.0422.ph = phi i32 [ %.2424, %bb.iv ], [ 0, %.critedge ]
  br label %.outer817

.outer817:                                        ; preds = %.outer817.backedge, %.outer
  %.0482.ph818 = phi i32 [ %.0482.ph, %.outer ], [ %i.fw, %.outer817.backedge ]
  %.0422.ph819 = phi i32 [ %.0422.ph, %.outer ], [ %.0422.ph819.be, %.outer817.backedge ] ; 35 uses
  br label %bb.ac

bb.ac:                                            ; preds = %.backedge, %.outer817
  %.0482 = phi i32 [ %.0482.ph818, %.outer817 ], [ %i.fw, %.backedge ]
  %i.dv = call ptr @fgets(ptr noundef nonnull %i.p, i32 noundef 4096, ptr noundef nonnull %i.cf)
  %.not30.i = icmp eq ptr %i.dv, null
  br i1 %.not30.i, label %_strip_continuation.exit.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ac, %bb.ai
  %.033.i = phi i32 [ %i.dw, %bb.ai ], [ 0, %bb.ac ]
  %.01732.i = phi i32 [ %i.fh, %bb.ai ], [ 4096, %bb.ac ]
  %.01831.i = phi ptr [ %i.fg, %bb.ai ], [ %i.p, %bb.ac ] ; 8 uses
  %i.dw = add nuw nsw i32 %.033.i, 1              ; 5 uses
  %i.dx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.01831.i) #15 ; 2 uses
  %i.dy = trunc i64 %i.dx to i32
  %i.dz = icmp sgt i32 %i.dy, 0
  br i1 %i.dz, label %.lr.ph.preheader.i.i, label %_strip_comments.exit.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.i
  %wide.trip.count.i.i = and i64 %i.dx, 2147483647
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ae, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.ae ] ; 3 uses
  %.015.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %.1.i.i, %bb.ae ] ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.01831.i, i64 %indvars.iv.i.i
  %i.eb = load i8, ptr %i.ea, align 1             ; 2 uses
  %i.ec = icmp eq i8 %i.eb, 35
  %i.ed = and i32 %.015.i.i, 1
  %i.ee = icmp eq i32 %i.ed, 0
  %or.cond.i.i = select i1 %i.ec, i1 %i.ee, i1 false
  br i1 %or.cond.i.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %.01831.i, i64 %indvars.iv.i.i
  store i8 0, ptr %i.ef, align 1
  br label %_strip_comments.exit.i

bb.ae:                                            ; preds = %.lr.ph.i.i
  %i.eg = icmp eq i8 %i.eb, 92
  %i.eh = add nsw i32 %.015.i.i, 1
  %.1.i.i = select i1 %i.eg, i32 %i.eh, i32 0
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_strip_comments.exit.i, label %.lr.ph.i.i, !llvm.loop !18

_strip_comments.exit.i:                           ; preds = %bb.ae, %bb.ad, %.lr.ph.i
  %i.ei = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.01831.i) #15 ; 2 uses
  %i.ej = trunc i64 %i.ei to i32                  ; 2 uses
  %.not21.i.i = icmp slt i32 %i.ej, 1
  br i1 %.not21.i.i, label %_strip_continuation.exit.thread.i, label %.lr.ph.i20.preheader.i

.lr.ph.i20.preheader.i:                           ; preds = %_strip_comments.exit.i
  %sext.i = and i64 %i.ei, 2147483647
  %i.ek = getelementptr i8, ptr %.01831.i, i64 %sext.i
  %.01720.i.i = getelementptr i8, ptr %i.ek, i64 -1
  br label %.lr.ph.i20.i

.lr.ph.i20.i:                                     ; preds = %bb.ah, %.lr.ph.i20.preheader.i
  %.01723.i.i = phi ptr [ %.017.i.i, %bb.ah ], [ %.01720.i.i, %.lr.ph.i20.preheader.i ] ; 3 uses
  %.022.i.i = phi i32 [ %.1.i22.i, %bb.ah ], [ 0, %.lr.ph.i20.preheader.i ] ; 3 uses
  %i.el = load i8, ptr %.01723.i.i, align 1       ; 2 uses
  %i.em = icmp eq i8 %i.el, 92
  br i1 %i.em, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph.i20.i
  %i.en = add nsw i32 %.022.i.i, 1
  br label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.i20.i
  %i.eo = tail call ptr @__ctype_b_loc() #14
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = sext i8 %i.el to i64
  %i.er = getelementptr inbounds [2 x i8], ptr %i.ep, i64 %i.eq
  %i.es = load i16, ptr %i.er, align 2
  %i.et = and i16 %i.es, 8192
  %i.eu = icmp ne i16 %i.et, 0
  %i.ev = icmp eq i32 %.022.i.i, 0
  %or.cond.i21.i = select i1 %i.eu, i1 %i.ev, i1 false
  br i1 %or.cond.i21.i, label %bb.ah, label %._crit_edge.i.i

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.1.i22.i = phi i32 [ %i.en, %bb.af ], [ 0, %bb.ag ] ; 2 uses
  %.017.i.i = getelementptr inbounds i8, ptr %.01723.i.i, i64 -1 ; 3 uses
  %.not.i.i = icmp ult ptr %.017.i.i, %.01831.i
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i20.i, !llvm.loop !19

._crit_edge.i.i:                                  ; preds = %bb.ah, %bb.ag
  %.0.lcssa.i.i = phi i32 [ %.022.i.i, %bb.ag ], [ %.1.i22.i, %bb.ah ] ; 2 uses
  %.017.lcssa.i.i = phi ptr [ %.01723.i.i, %bb.ag ], [ %.017.i.i, %bb.ah ]
  %i.ew = and i32 %.0.lcssa.i.i, -2147483647
  %i.ex = icmp eq i32 %i.ew, 1
  br i1 %i.ex, label %_strip_continuation.exit.i, label %_strip_continuation.exit.thread.i

_strip_continuation.exit.i:                       ; preds = %._crit_edge.i.i
  %i.ey = zext nneg i32 %.0.lcssa.i.i to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %.017.lcssa.i.i, i64 %i.ey ; 2 uses
  store i8 0, ptr %i.ez, align 1
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = ptrtoint ptr %.01831.i to i64
  %i.fc = sub i64 %i.fa, %i.fb                    ; 2 uses
  %i.fd = trunc i64 %i.fc to i32                  ; 2 uses
  %i.fe = icmp slt i32 %i.fd, %i.ej
  br i1 %i.fe, label %bb.ai, label %_strip_continuation.exit.thread.i

bb.ai:                                            ; preds = %_strip_continuation.exit.i
  %sext28.i = shl i64 %i.fc, 32
  %i.ff = ashr exact i64 %sext28.i, 32
  %i.fg = getelementptr inbounds i8, ptr %.01831.i, i64 %i.ff ; 2 uses
  %i.fh = sub nsw i32 %.01732.i, %i.fd            ; 2 uses
  %i.fi = call ptr @fgets(ptr noundef nonnull %i.fg, i32 noundef %i.fh, ptr noundef nonnull %i.cf)
  %.not.i = icmp eq ptr %i.fi, null
  br i1 %.not.i, label %_strip_continuation.exit.thread.i, label %.lr.ph.i, !llvm.loop !20

_strip_continuation.exit.thread.i:                ; preds = %bb.ai, %_strip_continuation.exit.i, %._crit_edge.i.i, %_strip_comments.exit.i, %bb.ac
  %.1.i = phi i32 [ 0, %bb.ac ], [ %i.dw, %_strip_comments.exit.i ], [ %i.dw, %._crit_edge.i.i ], [ %i.dw, %_strip_continuation.exit.i ], [ %i.dw, %bb.ai ] ; 2 uses
  %i.fj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #15
  %i.fk = trunc i64 %i.fj to i32                  ; 2 uses
  %.not12.i.i = icmp slt i32 %i.fk, 0
  br i1 %.not12.i.i, label %_get_next_line.exit, label %.lr.ph.i23.i

.lr.ph.i23.i:                                     ; preds = %_strip_continuation.exit.thread.i, %.lr.ph.i23.i
  %indvars.iv.i24.i = phi i64 [ %indvars.iv.next.i25.i, %.lr.ph.i23.i ], [ 0, %_strip_continuation.exit.thread.i ] ; 2 uses
  %.01113.i.i = phi i32 [ %i.fu, %.lr.ph.i23.i ], [ 0, %_strip_continuation.exit.thread.i ] ; 2 uses
  %i.fl = sext i32 %.01113.i.i to i64
  %i.fm = getelementptr inbounds i8, ptr %i.p, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1
  %i.fo = icmp eq i8 %i.fn, 92
  %i.fp = zext i1 %i.fo to i32
  %spec.select.i.i = add nsw i32 %.01113.i.i, %i.fp ; 2 uses
  %i.fq = sext i32 %spec.select.i.i to i64
  %i.fr = getelementptr inbounds i8, ptr %i.p, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1
  %i.ft = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv.i24.i
  store i8 %i.fs, ptr %i.ft, align 1
  %i.fu = add nsw i32 %spec.select.i.i, 1         ; 2 uses
  %indvars.iv.next.i25.i = add nuw nsw i64 %indvars.iv.i24.i, 1
  %.not.i26.i = icmp sgt i32 %i.fu, %i.fk
  br i1 %.not.i26.i, label %_get_next_line.exit, label %.lr.ph.i23.i, !llvm.loop !21

_get_next_line.exit:                              ; preds = %.lr.ph.i23.i, %_strip_continuation.exit.thread.i
  %i.fv = icmp sgt i32 %.1.i, 0
  br i1 %i.fv, label %bb.aj, label %.thread737

bb.aj:                                            ; preds = %_get_next_line.exit
  %i.fw = add nuw nsw i32 %.1.i, %.0482           ; 12 uses
  %i.fx = load i8, ptr %i.p, align 16
  %i.fy = icmp eq i8 %i.fx, 0
  br i1 %i.fy, label %.backedge, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fz = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #15 ; 2 uses
  %i.ga = trunc i64 %i.fz to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(25) %i.t, i8 0, i64 25, i1 false)
  %i.gb = icmp sgt i32 %i.ga, 0
  br i1 %i.gb, label %.lr.ph1053.preheader, label %.backedge

.lr.ph1053.preheader:                             ; preds = %bb.ak
  %wide.trip.count1281 = and i64 %i.fz, 2147483647
  br label %.lr.ph1053

.lr.ph1053:                                       ; preds = %.lr.ph1053.preheader, %bb.am
  %indvars.iv1278 = phi i64 [ 0, %.lr.ph1053.preheader ], [ %indvars.iv.next1279, %bb.am ] ; 5 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv1278
  %i.gd = load i8, ptr %i.gc, align 1
  %i.ge = icmp eq i8 %i.gd, 45
  br i1 %i.ge, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.lr.ph1053
  %i.gf = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv1278
  %i.gg = trunc nuw nsw i64 %indvars.iv1278 to i32
  %i.gh = getelementptr i8, ptr %i.gf, i64 -1
  %i.gi = load i8, ptr %i.gh, align 1
  %i.gj = icmp eq i8 %i.gi, 32
  %i.gk = sext i1 %i.gj to i32
  %spec.select702 = add nsw i32 %i.gg, %i.gk      ; 2 uses
  %i.gl = icmp ult i32 %spec.select702, 25
  br i1 %i.gl, label %.loopexit, label %.backedge

bb.am:                                            ; preds = %.lr.ph1053
  %indvars.iv.next1279 = add nuw nsw i64 %indvars.iv1278, 1 ; 2 uses
  %exitcond1282.not = icmp eq i64 %indvars.iv.next1279, %wide.trip.count1281
  br i1 %exitcond1282.not, label %.backedge, label %.lr.ph1053, !llvm.loop !22

.loopexit:                                        ; preds = %bb.al
  %i.gm = add nuw nsw i32 %spec.select702, 1
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = call i64 @strlcpy(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(1) %i.p, i64 noundef %i.gn) #11 ; 0 uses
  %.pre1286 = load i8, ptr %i.t, align 16
  %i.gp = icmp eq i8 %.pre1286, 0
  br i1 %i.gp, label %.backedge, label %.preheader816

.preheader816:                                    ; preds = %.loopexit, %.preheader816
  %indvars.iv1283 = phi i64 [ %indvars.iv.next1284, %.preheader816 ], [ %indvars.iv1278, %.loopexit ] ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv1283
  %i.gr = load i8, ptr %i.gq, align 1
  %i.gs = icmp ne i8 %i.gr, 32
  %i.gt = trunc nuw i64 %indvars.iv1283 to i32    ; 2 uses
  %i.gu = icmp slt i32 %i.gt, %i.ga               ; 2 uses
  %i.gv = and i1 %i.gu, %i.gs
  %indvars.iv.next1284 = add nuw nsw i64 %indvars.iv1283, 1
  br i1 %i.gv, label %.preheader816, label %bb.an, !llvm.loop !23

bb.an:                                            ; preds = %.preheader816
  br i1 %i.gu, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store i32 1, ptr @exit_code, align 4
  %i.gw = load ptr, ptr @stderr, align 8
  %i.gx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gw, ptr noundef nonnull @.str.60, ptr noundef nonnull %i.t, i32 noundef %i.fw) #13 ; 0 uses
  br label %.thread737

bb.ap:                                            ; preds = %bb.an
  %i.gy = add nuw nsw i32 %i.gt, 1                ; 5 uses
  %i.gz = call i32 @xstrcasecmp(ptr noundef nonnull @str.1, ptr noundef nonnull %i.t) #11
  %.not557 = icmp eq i32 %i.gz, 0
  br i1 %.not557, label %bb.aq, label %bb.fn

bb.aq:                                            ; preds = %bb.ap
  %i.ha = zext nneg i32 %i.gy to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ha ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #11
  store i32 0, ptr %i.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #11
  store i32 0, ptr %i.j, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #11
  store ptr null, ptr %i.k, align 8
  %i.hc = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 344, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.65, i32 noundef 385, ptr noundef nonnull @__func__._parse_qos_options) #11 ; 40 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #11
  store ptr null, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #11
  store i32 0, ptr %i.m, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #11
  store i32 0, ptr %i.n, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #11
  store i8 0, ptr %i.o, align 1
  call void @slurmdb_init_qos_rec(ptr noundef %i.hc, i1 noundef zeroext false, i32 noundef -2) #11
  %i.hd = load i8, ptr %i.hb, align 1
  %.not19.i = icmp eq i8 %i.hd, 0
  br i1 %.not19.i, label %.loopexit.i, label %.lr.ph.i720

.lr.ph.i720:                                      ; preds = %bb.aq
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 264 ; 2 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.bc, %.lr.ph.i720
  %i.hf = call fastcc ptr @_parse_option(ptr noundef nonnull %i.hb, i1 noundef zeroext true, ptr noundef %i.k, ptr noundef %i.m, ptr noundef %i.j, ptr noundef %i.i, ptr noundef %i.n) ; 5 uses
  store ptr %i.hf, ptr %i.l, align 8
  %.not12.i = icmp eq ptr %i.hf, null
  br i1 %.not12.i, label %bb.bb, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hg = load i32, ptr %i.j, align 4
  %.not13.i = icmp eq i32 %i.hg, 0
  br i1 %.not13.i, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.hh = load ptr, ptr %i.he, align 8
  %.not14.i = icmp eq ptr %i.hh, null
  br i1 %.not14.i, label %bb.au, label %.loopexit.sink.split.i

bb.au:                                            ; preds = %bb.at
  %i.hi = call ptr @xstrdup(ptr noundef nonnull %i.hf) #11
  store ptr %i.hi, ptr %i.he, align 8
  br label %bb.ba

bb.av:                                            ; preds = %bb.as
  %char0.i = load i8, ptr %i.hf, align 1
  %.not15.i = icmp eq i8 %char0.i, 0
  br i1 %.not15.i, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.hj = call i32 @get_log_level() #11
  %i.hk = icmp sgt i32 %i.hj, 4
  br i1 %i.hk, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.hl = load ptr, ptr %i.k, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.126, ptr noundef %i.hl) #11
  br label %bb.ba

bb.ay:                                            ; preds = %bb.av
  %i.hm = load ptr, ptr %i.k, align 8
  %i.hn = load i32, ptr %i.m, align 4
  %i.ho = load i32, ptr %i.n, align 4
  %i.hp = call i32 @sacctmgr_set_qos_rec(ptr noundef %i.hc, ptr noundef %i.hm, ptr noundef nonnull %i.hf, i32 noundef %i.hn, i32 noundef %i.ho, ptr noundef nonnull %i.o) #11
  %.not16.i = icmp eq i32 %i.hp, 0
  br i1 %.not16.i, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i8 1, ptr %i.o, align 1
  br label %.loopexit.sink.split.i

bb.ba:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.au
  %i.hq = load ptr, ptr %i.k, align 8
  %i.hr = load i32, ptr %i.n, align 4
  %i.hs = load i8, ptr %i.o, align 1, !range !10, !noundef !11
  %i.ht = trunc nuw i8 %i.hs to i1
  %i.hu = call zeroext i1 @common_verify_option_syntax(ptr noundef %i.hq, i32 noundef %i.hr, i1 noundef zeroext %i.ht) #11 ; 0 uses
  call void @slurm_xfree(ptr noundef nonnull %i.k) #11
  call void @slurm_xfree(ptr noundef nonnull %i.l) #11
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.ar
  %i.hv = load i32, ptr %i.i, align 4             ; 2 uses
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds i8, ptr %i.hb, i64 %i.hw
  %i.hy = load i8, ptr %i.hx, align 1
  %i.hz = icmp eq i8 %i.hy, 58
  br i1 %i.hz, label %bb.bc, label %.loopexit.i

bb.bc:                                            ; preds = %bb.bb
  %i.ia = add nsw i32 %i.hv, 1                    ; 2 uses
  store i32 %i.ia, ptr %i.i, align 4
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds i8, ptr %i.hb, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1
  %.not.i721 = icmp eq i8 %i.id, 0
  br i1 %.not.i721, label %.loopexit.i, label %bb.ar, !llvm.loop !24

.loopexit.sink.split.i:                           ; preds = %bb.at, %bb.az
  %.str.55.sink.i = phi ptr [ @.str.55, %bb.az ], [ @.str.125, %bb.at ]
  store i32 1, ptr @exit_code, align 4
  %i.ie = load ptr, ptr @stderr, align 8
  %i.if = load ptr, ptr %i.k, align 8
  %i.ig = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ie, ptr noundef nonnull %.str.55.sink.i, ptr noundef %i.if) #13 ; 0 uses
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.bc, %bb.bb, %.loopexit.sink.split.i, %bb.aq
  call void @slurm_xfree(ptr noundef nonnull %i.k) #11
  call void @slurm_xfree(ptr noundef nonnull %i.l) #11
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hc, i64 264 ; 4 uses
  %i.ii = load ptr, ptr %i.ih, align 8
  %.not17.i = icmp eq ptr %i.ii, null
  br i1 %.not17.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.loopexit.i
  store i32 1, ptr @exit_code, align 4
  %i.ij = load ptr, ptr @stderr, align 8
end_hunk_0
begin_hunk_1_@_mod_user:bb.a
  %i.di = getelementptr inbounds nuw i8, ptr %i.db, i64 48
  store ptr %i.dh, ptr %i.di, align 8
  %i.dj = load ptr, ptr %i.dd, align 8
  %i.dk = load ptr, ptr %i.cz, align 8
  %i.dl = call i32 @xstrcmp(ptr noundef %i.dj, ptr noundef %i.dk) #11
  %.not189 = icmp eq i32 %i.dl, 0
  br i1 %.not189, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dm = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  store i16 1, ptr %i.dm, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.dn = load ptr, ptr %i.co, align 8
  call void @list_push(ptr noundef %i.dn, ptr noundef nonnull %i.db) #11
  %i.do = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.not19014, ptr noundef nonnull %i.da) ; 0 uses
  %i.dp = call ptr @list_next(ptr noundef %i.cw) #11 ; 2 uses
  %.not188 = icmp eq ptr %i.dp, null
  br i1 %.not188, label %._crit_edge17, label %bb.al, !llvm.loop !40

._crit_edge17:                                    ; preds = %bb.an, %bb.ak
  call void @list_iterator_destroy(ptr noundef %i.cw) #11
  %i.dq = load ptr, ptr %i.d, align 8
  %i.dr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.209, ptr noundef %i.dq) ; 0 uses
  call void @notice_thread_init() #11
  %i.ds = load ptr, ptr @db_conn, align 8
  %i.dt = load ptr, ptr %i.co, align 8
  %i.du = call i32 @slurmdb_wckeys_add(ptr noundef %i.ds, ptr noundef %i.dt) #11 ; 0 uses
  call void @notice_thread_fini() #11
  br label %bb.ba

bb.ao:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.dv = load ptr, ptr %i.co, align 8            ; 2 uses
  %.not191 = icmp eq ptr %i.dv, null
  br i1 %.not191, label %bb.ba, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dw = call i32 @list_count(ptr noundef nonnull %i.dv) #11
  %.not192 = icmp eq i32 %i.dw, 0
  br i1 %.not192, label %bb.ba, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8            ; 2 uses
  %.not193 = icmp eq ptr %i.dy, null
  br i1 %.not193, label %bb.ba, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dz = call i32 @list_count(ptr noundef nonnull %i.dy) #11
  %.not194 = icmp eq i32 %i.dz, 0
  br i1 %.not194, label %bb.ba, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ea = call ptr @list_create(ptr noundef nonnull @slurmdb_destroy_wckey_rec) #11 ; 6 uses
  %i.eb = load ptr, ptr %i.co, align 8
  %i.ec = call ptr @list_iterator_create(ptr noundef %i.eb) #11 ; 3 uses
  %i.ed = load ptr, ptr %i.dx, align 8
  %i.ee = call ptr @list_iterator_create(ptr noundef %i.ed) #11 ; 3 uses
  %i.ef = call ptr @list_next(ptr noundef %i.ee) #11 ; 2 uses
  %.not19518 = icmp eq ptr %i.ef, null
  br i1 %.not19518, label %._crit_edge19, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.as
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %i.eh = phi ptr [ %i.ef, %.preheader.lr.ph ], [ %i.fa, %.loopexit ] ; 3 uses
  br label %bb.at

bb.at:                                            ; preds = %.preheader, %bb.au
  %i.ei = call ptr @list_next(ptr noundef %i.ec) #11 ; 2 uses
  %.not199 = icmp eq ptr %i.ei, null
  br i1 %.not199, label %.critedge206, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = call i32 @xstrcmp(ptr noundef %i.ek, ptr noundef nonnull %i.eh) #11
  %.not200 = icmp eq i32 %i.el, 0
  br i1 %.not200, label %.loopexit, label %bb.at, !llvm.loop !41

.critedge206:                                     ; preds = %bb.at
  %i.em = load ptr, ptr %i.d, align 8
  %i.en = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.210, ptr noundef nonnull %i.eh, ptr noundef %i.em) ; 0 uses
  %i.eo = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 56, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.65, i32 noundef 1723, ptr noundef nonnull @__func__._mod_user) #11 ; 5 uses
  %i.ep = call ptr @xstrdup(ptr noundef nonnull %i.eh) #11
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 32 ; 2 uses
  store ptr %i.ep, ptr %i.eq, align 8
  %i.er = call ptr @xstrdup(ptr noundef %2) #11
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store ptr %i.er, ptr %i.es, align 8
  %i.et = load ptr, ptr %i.d, align 8
  %i.eu = call ptr @xstrdup(ptr noundef %i.et) #11
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eo, i64 48
  store ptr %i.eu, ptr %i.ev, align 8
  %i.ew = load ptr, ptr %i.eq, align 8
  %i.ex = load ptr, ptr %i.eg, align 8
  %i.ey = call i32 @xstrcmp(ptr noundef %i.ew, ptr noundef %i.ex) #11
  %.not201 = icmp eq i32 %i.ey, 0
  br i1 %.not201, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.critedge206
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  store i16 1, ptr %i.ez, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.critedge206
  call void @list_append(ptr noundef %i.ea, ptr noundef nonnull %i.eo) #11
  br label %.loopexit

.loopexit:                                        ; preds = %bb.au, %bb.aw
  call void @list_iterator_reset(ptr noundef %i.ec) #11
  %i.fa = call ptr @list_next(ptr noundef %i.ee) #11 ; 2 uses
  %.not195 = icmp eq ptr %i.fa, null
  br i1 %.not195, label %._crit_edge19, label %.preheader, !llvm.loop !42

._crit_edge19:                                    ; preds = %.loopexit, %bb.as
  call void @list_iterator_destroy(ptr noundef %i.ee) #11
  call void @list_iterator_destroy(ptr noundef %i.ec) #11
  %i.fb = call i32 @list_count(ptr noundef %i.ea) #11
  %.not196 = icmp eq i32 %i.fb, 0
  br i1 %.not196, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge19
  call void @notice_thread_init() #11
  %i.fc = load ptr, ptr @db_conn, align 8
  %i.fd = call i32 @slurmdb_wckeys_add(ptr noundef %i.fc, ptr noundef %i.ea) #11 ; 0 uses
  call void @notice_thread_fini() #11
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %._crit_edge19
  %.4 = phi i32 [ 1, %bb.ax ], [ %.3, %._crit_edge19 ] ; 2 uses
  %i.fe = load ptr, ptr %i.co, align 8
  %i.ff = call i32 @list_transfer(ptr noundef %i.fe, ptr noundef %i.ea) #11 ; 0 uses
  %.not197 = icmp eq ptr %i.ea, null
  br i1 %.not197, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @list_destroy(ptr noundef nonnull %i.ea) #11
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az, %._crit_edge17, %bb.ar, %bb.aq, %bb.ap, %bb.ao
  %.5 = phi i32 [ 1, %._crit_edge17 ], [ %.3, %bb.ar ], [ %.3, %bb.aq ], [ %.3, %bb.ap ], [ %.3, %bb.ao ], [ %.4, %bb.az ], [ %.4, %bb.ay ]
  %i.fg = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not198 = icmp eq ptr %i.fg, null
  br i1 %.not198, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @list_destroy(ptr noundef nonnull %i.fg) #11
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.5
}

declare { i64, i64 } @timespec_now() local_unnamed_addr #2

declare void @list_iterator_reset(ptr noundef) local_unnamed_addr #2

declare i32 @slurmdb_accounts_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @slurmdb_admin_level_str(i32 noundef) local_unnamed_addr #2

declare i32 @slurmdb_users_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @timer_compare_limit(i64, i64, i64, i64, ptr noundef, ptr noundef byval(%struct.timespec) align 8) local_unnamed_addr #2

declare void @timer_duration_str(ptr dead_on_unwind writable sret(%struct.timer_str_t) align 1, i64, i64, i64, i64) local_unnamed_addr #2

declare ptr @xstrdup_printf(ptr noundef, ...) local_unnamed_addr #2

declare void @list_sort(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @sort_coord_list(ptr noundef, ptr noundef) #2

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #5

declare void @slurmdb_init_qos_rec(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_parse_option(ptr noundef nonnull %0, i1 noundef zeroext %1, ptr nofree noundef nonnull captures(none) %2, ptr noundef nonnull %3, ptr nofree noundef nonnull writeonly captures(none) %4, ptr nofree noundef nonnull captures(none) %5, ptr noundef nonnull %6) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %5, align 4                ; 3 uses
  %i.b = sext i32 %i.a to i64                     ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %_is_colon_typed_tres.exit.thread, %bb.a
  %.promoted66 = phi i32 [ %i.h, %_is_colon_typed_tres.exit.thread ], [ %i.a, %bb.a ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %_is_colon_typed_tres.exit.thread ], [ %i.b, %bb.a ] ; 3 uses
  %.048 = phi i8 [ %.149, %_is_colon_typed_tres.exit.thread ], [ 0, %bb.a ] ; 6 uses
  %.0 = phi i32 [ %.1, %_is_colon_typed_tres.exit.thread ], [ 0, %bb.a ] ; 4 uses
  %i.c = getelementptr inbounds i8, ptr %0, i64 %indvars.iv
  %i.d = load i8, ptr %i.c, align 1               ; 3 uses
  switch i8 %i.d, label %_is_colon_typed_tres.exit.thread [
    i8 0, label %.critedge
    i8 10, label %.critedge
    i8 58, label %.preheader71.preheader
    i8 34, label %bb.c
    i8 39, label %bb.c
  ]

.preheader71.preheader:                           ; preds = %bb.b
  %indvars.iv.next.i102 = add nsw i64 %indvars.iv, -1 ; 2 uses
  %.not.i103 = icmp slt i64 %indvars.iv.next.i102, %i.b
  br i1 %.not.i103, label %.critedge, label %.lr.ph104

.preheader71:                                     ; preds = %.lr.ph104
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i103, -1 ; 2 uses
  %.not.i = icmp slt i64 %indvars.iv.next.i, %i.b
  br i1 %.not.i, label %.critedge, label %.lr.ph104, !llvm.loop !43

.lr.ph104:                                        ; preds = %.preheader71.preheader, %.preheader71
  %indvars.iv.i103 = phi i64 [ %indvars.iv.next.i, %.preheader71 ], [ %indvars.iv.next.i102, %.preheader71.preheader ] ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.i103
  %i.f = load i8, ptr %i.e, align 1
  switch i8 %i.f, label %.preheader71 [
    i8 61, label %..critedge.loopexit_crit_edge
    i8 44, label %..critedge.loopexit_crit_edge
    i8 58, label %..critedge.loopexit_crit_edge
    i8 34, label %..critedge.loopexit_crit_edge
    i8 39, label %..critedge.loopexit_crit_edge
    i8 47, label %_is_colon_typed_tres.exit.thread
  ], !llvm.loop !43

bb.c:                                             ; preds = %bb.b, %bb.b
  %.not60 = icmp eq i32 %.0, 0
  br i1 %.not60, label %_is_colon_typed_tres.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp ne i8 %i.d, %.048
  %spec.select = zext i1 %i.g to i32
  br label %_is_colon_typed_tres.exit.thread

_is_colon_typed_tres.exit.thread:                 ; preds = %.lr.ph104, %bb.b, %bb.c, %bb.d
  %.149 = phi i8 [ %.048, %bb.b ], [ %.048, %bb.d ], [ %i.d, %bb.c ], [ %.048, %.lr.ph104 ]
  %.1 = phi i32 [ %.0, %bb.b ], [ %spec.select, %bb.d ], [ 1, %bb.c ], [ %.0, %.lr.ph104 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.h = trunc nsw i64 %indvars.iv.next to i32    ; 2 uses
  store i32 %i.h, ptr %5, align 4
  br label %bb.b, !llvm.loop !44

..critedge.loopexit_crit_edge:                    ; preds = %.lr.ph104, %.lr.ph104, %.lr.ph104, %.lr.ph104, %.lr.ph104
  br label %.critedge, !llvm.loop !43

.critedge:                                        ; preds = %bb.b, %bb.b, %.preheader71.preheader, %.preheader71, %..critedge.loopexit_crit_edge
  %.not56 = icmp eq i32 %.0, 0
  br i1 %.not56, label %bb.g, label %.preheader

.preheader:                                       ; preds = %.critedge
  %i.i = sext i32 %.promoted66 to i64             ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %0, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1               ; 2 uses
  %.not5767 = icmp eq i8 %i.k, 0                  ; 2 uses
  %.not5868 = icmp eq i8 %i.k, %.048
  %or.cond69 = select i1 %.not5767, i1 true, i1 %.not5868
  br i1 %or.cond69, label %.critedge2, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %.lr.ph ], [ %i.i, %.preheader ]
  %indvars.iv.next80 = add nsw i64 %indvars.iv79, 1 ; 3 uses
  %i.l = trunc nsw i64 %indvars.iv.next80 to i32  ; 2 uses
  store i32 %i.l, ptr %5, align 4
  %i.m = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next80
  %i.n = load i8, ptr %i.m, align 1               ; 2 uses
  %.not57 = icmp eq i8 %i.n, 0                    ; 2 uses
  %.not58 = icmp eq i8 %i.n, %.048
  %or.cond = select i1 %.not57, i1 true, i1 %.not58
  br i1 %or.cond, label %.critedge2, label %.lr.ph, !llvm.loop !45

.critedge2:                                       ; preds = %.lr.ph, %.preheader
  %.lcssa = phi i32 [ %.promoted66, %.preheader ], [ %i.l, %.lr.ph ]
  %.not57.lcssa = phi i1 [ %.not5767, %.preheader ], [ %.not57, %.lr.ph ]
  br i1 %.not57.lcssa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge2
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.128, ptr noundef nonnull %0) #17
  unreachable

bb.f:                                             ; preds = %.critedge2
  %i.o = add nsw i32 %.lcssa, 1                   ; 2 uses
  store i32 %i.o, ptr %5, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge
  %i.p = phi i32 [ %i.o, %bb.f ], [ %.promoted66, %.critedge ]
  %i.q = sub nsw i32 %i.p, %i.a                   ; 2 uses
  %i.r = icmp slt i32 %i.q, 1
  br i1 %i.r, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.b
  %i.t = zext nneg i32 %i.q to i64
  %i.u = tail call ptr @xstrndup(ptr noundef nonnull %i.s, i64 noundef %i.t) #11 ; 2 uses
  store ptr %i.u, ptr %2, align 8
  %i.v = tail call i32 @parse_option_end(ptr noundef %i.u, ptr noundef nonnull %6, ptr noundef nonnull %3) #11 ; 2 uses
  store i32 %i.v, ptr %4, align 4
  %i.w = load ptr, ptr %2, align 8
  %i.x = sext i32 %i.v to i64
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 %i.x
  %i.z = tail call ptr @strip_quotes(ptr noundef %i.y, ptr noundef null, i1 noundef zeroext %1) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.050 = phi ptr [ %i.z, %bb.h ], [ null, %bb.g ]
  ret ptr %.050
}

declare i32 @sacctmgr_set_qos_rec(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @fatal(ptr noundef, ...) local_unnamed_addr #7

declare ptr @xstrndup(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @strip_quotes(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @xstrcmp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @str_2_slurmdb_admin_level(ptr noundef) local_unnamed_addr #2

declare zeroext i16 @str_2_classification(ptr noundef) local_unnamed_addr #2

declare i32 @sacctmgr_set_assoc_rec(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @_print_out_qos_fields(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  tail call void @sacctmgr_print_qos_rec(ptr noundef %1, ptr noundef %0, i1 noundef zeroext false) #11
  ret i32 0
}

declare void @sacctmgr_print_qos_rec(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @list_push(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @slurmdb_qos_modify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @slurmdb_copy_assoc_rec_limits(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @sacctmgr_print_assoc_rec(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @slurmdb_associations_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @slurmdb_free_assoc_rec_members(ptr noundef) local_unnamed_addr #2

declare ptr @slurmdb_clusters_modify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

declare ptr @slurmdb_accounts_modify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @slurmdb_associations_modify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @slurmdb_coord_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @slurmdb_destroy_coord_rec(ptr noundef) #2

declare void @slurmdb_destroy_wckey_rec(ptr noundef) #2

declare i32 @slurmdb_wckeys_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @slurmdb_users_modify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @list_transfer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #10

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { cold }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { cold noreturn nounwind }
attributes #17 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = !{i8 0, i8 2}
end_hunk_1
