Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/builtin?download=true
inline.NumInlined: 163
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@f_format:bb.a
  %i.cl = extractvalue { i64, ptr } %i.cj, 1
  br label %bb.z

bb.v:                                             ; preds = %.lr.ph676.peel.next
  %i.cm = tail call double @jv_number_value(i64 %i.ca, ptr %i.cb) #17
  %i.cn = tail call double @jv_number_value(i64 %i.ca, ptr %i.cb) #17
  %i.co = fcmp une double %i.cm, %i.cn
  br i1 %i.co, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @jv_free(i64 %i.ca, ptr %i.cb) #17
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.cp = tail call { i64, ptr } @jv_dump_string(i64 %i.ca, ptr %i.cb, i32 noundef 0) #17 ; 2 uses
  %i.cq = extractvalue { i64, ptr } %i.cp, 0
  %i.cr = extractvalue { i64, ptr } %i.cp, 1
  %i.cs = tail call { i64, ptr } @jv_string_concat(i64 %i.cd, ptr %i.ce, i64 %i.cq, ptr %i.cr) #17 ; 2 uses
  %i.ct = extractvalue { i64, ptr } %i.cs, 0
  %i.cu = extractvalue { i64, ptr } %i.cs, 1
  br label %bb.z

bb.y:                                             ; preds = %.lr.ph676.peel.next
  %i.cv = tail call { i64, ptr } @jv_string_append_str(i64 %i.cd, ptr %i.ce, ptr noundef nonnull %.0422) #17 ; 2 uses
  %i.cw = extractvalue { i64, ptr } %i.cv, 0
  %i.cx = extractvalue { i64, ptr } %i.cv, 1
  %i.cy = tail call fastcc { i64, ptr } @escape_string(i64 %i.ca, ptr %i.cb, ptr noundef nonnull %.0424) ; 2 uses
  %i.cz = extractvalue { i64, ptr } %i.cy, 0
  %i.da = extractvalue { i64, ptr } %i.cy, 1
  %i.db = tail call { i64, ptr } @jv_string_concat(i64 %i.cw, ptr %i.cx, i64 %i.cz, ptr %i.da) #17 ; 2 uses
  %i.dc = extractvalue { i64, ptr } %i.db, 0
  %i.dd = extractvalue { i64, ptr } %i.db, 1
  %i.de = tail call { i64, ptr } @jv_string_append_str(i64 %i.dc, ptr %i.dd, ptr noundef nonnull %.0422) #17 ; 2 uses
  %i.df = extractvalue { i64, ptr } %i.de, 0
  %i.dg = extractvalue { i64, ptr } %i.de, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.t, %bb.u, %bb.y, %bb.x, %bb.w
  %.sroa.0266.3 = phi i64 [ %i.cd, %bb.t ], [ %i.ck, %bb.u ], [ %i.cd, %bb.w ], [ %i.ct, %bb.x ], [ %i.df, %bb.y ] ; 2 uses
  %.sroa.17.3 = phi ptr [ %i.ce, %bb.t ], [ %i.cl, %bb.u ], [ %i.ce, %bb.w ], [ %i.cu, %bb.x ], [ %i.dg, %bb.y ] ; 2 uses
  %i.dh = add nuw nsw i32 %.1431673, 1            ; 2 uses
  %exitcond727.not = icmp eq i32 %i.dh, %i.an
  br i1 %exitcond727.not, label %.thread521.loopexit, label %.lr.ph676.peel.next, !llvm.loop !31

.loopexit729:                                     ; preds = %.lr.ph676.peel.next, %bb.l
  %.sroa.0266.2.lcssa = phi i64 [ %i.ai, %bb.l ], [ %i.cd, %.lr.ph676.peel.next ]
  %.sroa.17.2.lcssa = phi ptr [ %i.aj, %bb.l ], [ %i.ce, %.lr.ph676.peel.next ]
  %.lcssa690 = phi i64 [ %i.as, %bb.l ], [ %i.ca, %.lr.ph676.peel.next ] ; 2 uses
  %.lcssa = phi ptr [ %i.at, %bb.l ], [ %i.cb, %.lr.ph676.peel.next ] ; 2 uses
  tail call void @jv_free(i64 %1, ptr %2) #17
  tail call void @jv_free(i64 %.sroa.0266.2.lcssa, ptr %.sroa.17.2.lcssa) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.di = tail call i32 @jv_get_kind(i64 %.lcssa690, ptr %.lcssa) #17
  %i.dj = tail call ptr @jv_kind_name(i32 noundef %i.di) #17
  %i.dk = call ptr @jv_dump_string_trunc(i64 %.lcssa690, ptr %.lcssa, ptr noundef nonnull %i.c, i64 noundef 30) #17
  %i.dl = call { i64, ptr } (ptr, ...) @jv_string_fmt(ptr noundef nonnull @.str.162, ptr noundef %i.dj, ptr noundef %i.dk, ptr noundef nonnull @.str.202) #17 ; 2 uses
  %i.dm = extractvalue { i64, ptr } %i.dl, 0
  %i.dn = extractvalue { i64, ptr } %i.dl, 1
  %i.do = call { i64, ptr } @jv_invalid_with_msg(i64 %i.dm, ptr %i.dn) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %f_tostring.exit

.thread521.loopexit:                              ; preds = %bb.z, %bb.s
  %.sroa.0266.3.lcssa = phi i64 [ %.sroa.0266.3.peel, %bb.s ], [ %.sroa.0266.3, %bb.z ]
  %.sroa.17.3.lcssa = phi ptr [ %.sroa.17.3.peel, %bb.s ], [ %.sroa.17.3, %bb.z ]
  %i.dp = insertvalue { i64, ptr } poison, i64 %.sroa.0266.3.lcssa, 0
  %i.dq = insertvalue { i64, ptr } %i.dp, ptr %.sroa.17.3.lcssa, 1
  br label %.thread521

.thread521:                                       ; preds = %.thread521.loopexit, %.preheader
  %.merged749 = phi { i64, ptr } [ %i.ah, %.preheader ], [ %i.dq, %.thread521.loopexit ]
  tail call void @jv_free(i64 %1, ptr %2) #17
  br label %f_tostring.exit

bb.aa:                                            ; preds = %bb.j
  %i.dr = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.o, ptr noundef nonnull dereferenceable(5) @.str.203) #20
  %.not471 = icmp eq i32 %i.dr, 0
  br i1 %.not471, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  tail call void @jv_free(i64 %3, ptr %4) #17
  %i.ds = tail call i32 @jv_get_kind(i64 %1, ptr %2) #17
  %i.dt = icmp eq i32 %i.ds, 5
  br i1 %i.dt, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.du = insertvalue { i64, ptr } poison, i64 %1, 0
  %i.dv = insertvalue { i64, ptr } %i.du, ptr %2, 1
  br label %f_tostring.exit493

bb.ad:                                            ; preds = %bb.ab
  %i.dw = tail call { i64, ptr } @jv_dump_string(i64 %1, ptr %2, i32 noundef 0) #17
  br label %f_tostring.exit493

f_tostring.exit493:                               ; preds = %bb.ac, %bb.ad
  %.fca.1.insert.merged.i492 = phi { i64, ptr } [ %i.dv, %bb.ac ], [ %i.dw, %bb.ad ] ; 2 uses
  %i.dx = extractvalue { i64, ptr } %.fca.1.insert.merged.i492, 0
  %i.dy = extractvalue { i64, ptr } %.fca.1.insert.merged.i492, 1
  %i.dz = tail call fastcc { i64, ptr } @escape_string(i64 %i.dx, ptr %i.dy, ptr noundef nonnull @.str.204)
  br label %f_tostring.exit

bb.ae:                                            ; preds = %bb.aa
  %i.ea = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.o, ptr noundef nonnull dereferenceable(4) @.str.205) #20
  %.not472 = icmp eq i32 %i.ea, 0
  br i1 %.not472, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  tail call void @jv_free(i64 %3, ptr %4) #17
  %i.eb = tail call { i64, ptr } @f_tostring(ptr poison, i64 %1, ptr %2) ; 2 uses
  %i.ec = extractvalue { i64, ptr } %i.eb, 0      ; 3 uses
  %i.ed = extractvalue { i64, ptr } %i.eb, 1      ; 3 uses
  %i.ee = tail call ptr @jv_string_value(i64 %i.ec, ptr %i.ed) #17
  %i.ef = tail call { i64, ptr } @jv_copy(i64 %i.ec, ptr %i.ed) #17 ; 2 uses
  %i.eg = extractvalue { i64, ptr } %i.ef, 0
  %i.eh = extractvalue { i64, ptr } %i.ef, 1
  %i.ei = tail call i32 @jv_string_length_bytes(i64 %i.eg, ptr %i.eh) #17 ; 3 uses
  %i.ej = sext i32 %i.ei to i64
  %i.ek = mul nsw i64 %i.ej, 3
  %i.el = add nsw i64 %i.ek, 1
  %i.em = tail call ptr @jv_mem_alloc(i64 noundef %i.el) #17 ; 5 uses
  %i.en = icmp sgt i32 %i.ei, 0
  br i1 %i.en, label %.lr.ph669.preheader, label %._crit_edge670

.lr.ph669.preheader:                              ; preds = %bb.af
  %wide.trip.count725 = zext nneg i32 %i.ei to i64
  br label %.lr.ph669

._crit_edge670:                                   ; preds = %bb.ai, %bb.af
  %.0433.lcssa = phi i32 [ 0, %bb.af ], [ %i.fk, %bb.ai ]
  %i.eo = tail call { i64, ptr } @jv_string_sized(ptr noundef %i.em, i32 noundef %.0433.lcssa) #17
  tail call void @free(ptr noundef %i.em) #17
  tail call void @jv_free(i64 %i.ec, ptr %i.ed) #17
  br label %f_tostring.exit

.lr.ph669:                                        ; preds = %.lr.ph669.preheader, %bb.ai
  %indvars.iv722 = phi i64 [ 0, %.lr.ph669.preheader ], [ %indvars.iv.next723, %bb.ai ] ; 2 uses
  %.0433667 = phi i32 [ 0, %.lr.ph669.preheader ], [ %i.fk, %bb.ai ] ; 5 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ee, i64 %indvars.iv722
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !16  ; 4 uses
  %i.er = zext i8 %i.eq to i32                    ; 2 uses
  %i.es = icmp sgt i8 %i.eq, -1
  br i1 %i.es, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph669
  %i.et = zext nneg i8 %i.eq to i64
  %i.eu = getelementptr inbounds nuw i8, ptr @URI_UNRESERVED, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !16
  %.not473 = icmp eq i8 %i.ev, 0
  br i1 %.not473, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %.lr.ph669
  %i.ew = add i32 %.0433667, 1
  %i.ex = zext i32 %.0433667 to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ex
  store i8 37, ptr %i.ey, align 1, !tbaa !16
  %i.ez = lshr i32 %i.er, 4
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr @.str.206, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !16
  %i.fd = add i32 %.0433667, 2
  %i.fe = zext i32 %i.ew to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.fe
  store i8 %i.fc, ptr %i.ff, align 1, !tbaa !16
  %i.fg = and i32 %i.er, 15
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr @.str.206, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !16
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %.sink778 = phi i32 [ 3, %bb.ah ], [ 1, %bb.ag ]
  %.sink777 = phi i32 [ %i.fd, %bb.ah ], [ %.0433667, %bb.ag ]
  %.sink = phi i8 [ %i.fj, %bb.ah ], [ %i.eq, %bb.ag ]
  %i.fk = add i32 %.0433667, %.sink778            ; 2 uses
  %i.fl = zext i32 %.sink777 to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.fl
  store i8 %.sink, ptr %i.fm, align 1, !tbaa !16
  %indvars.iv.next723 = add nuw nsw i64 %indvars.iv722, 1 ; 2 uses
  %exitcond726.not = icmp eq i64 %indvars.iv.next723, %wide.trip.count725
  br i1 %exitcond726.not, label %._crit_edge670, label %.lr.ph669, !llvm.loop !32

bb.aj:                                            ; preds = %bb.ae
  %i.fn = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.o, ptr noundef nonnull dereferenceable(5) @.str.207) #20
  %.not474 = icmp eq i32 %i.fn, 0
  br i1 %.not474, label %bb.ak, label %sub_0

bb.ak:                                            ; preds = %bb.aj
  tail call void @jv_free(i64 %3, ptr %4) #17
  %i.fo = tail call { i64, ptr } @f_tostring(ptr poison, i64 %1, ptr %2) ; 2 uses
  %i.fp = extractvalue { i64, ptr } %i.fo, 0      ; 8 uses
  %i.fq = extractvalue { i64, ptr } %i.fo, 1      ; 8 uses
  %i.fr = tail call ptr @jv_string_value(i64 %i.fp, ptr %i.fq) #17 ; 3 uses
  %i.fs = tail call { i64, ptr } @jv_copy(i64 %i.fp, ptr %i.fq) #17 ; 2 uses
  %i.ft = extractvalue { i64, ptr } %i.fs, 0
  %i.fu = extractvalue { i64, ptr } %i.fs, 1
  %i.fv = tail call i32 @jv_string_length_bytes(i64 %i.ft, ptr %i.fu) #17 ; 3 uses
  %i.fw = sext i32 %i.fv to i64                   ; 3 uses
  %i.fx = add nsw i64 %i.fw, 1
  %i.fy = tail call ptr @jv_mem_alloc(i64 noundef %i.fx) #17 ; 8 uses
  %.not477660 = icmp sgt i32 %i.fv, 0
  br i1 %.not477660, label %.lr.ph664, label %.thread557

.lr.ph664:                                        ; preds = %bb.ak, %bb.aw
  %.0436662 = phi i32 [ %.3439.ph, %bb.aw ], [ 0, %bb.ak ] ; 2 uses
  %.0441661 = phi i32 [ %i.hk, %bb.aw ], [ 0, %bb.ak ] ; 2 uses
  %i.fz = sext i32 %.0441661 to i64               ; 3 uses
  %i.ga = getelementptr inbounds i8, ptr %i.fr, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !16  ; 2 uses
  %.not475 = icmp eq i8 %i.gb, 37
  br i1 %.not475, label %.preheader596.preheader, label %bb.aw

.preheader596.preheader:                          ; preds = %.lr.ph664
  %i.gc = add nsw i64 %i.fz, 2                    ; 3 uses
  %indvars.iv.next721 = add nsw i64 %i.fz, 1      ; 2 uses
  %.not476 = icmp slt i64 %indvars.iv.next721, %i.fw
  br i1 %.not476, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.else499, %.preheader596.preheader
  tail call void @free(ptr noundef %i.fy) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.gd = tail call i32 @jv_get_kind(i64 %i.fp, ptr %i.fq) #17
  %i.ge = tail call ptr @jv_kind_name(i32 noundef %i.gd) #17
  %i.gf = call ptr @jv_dump_string_trunc(i64 %i.fp, ptr %i.fq, ptr noundef nonnull %i.b, i64 noundef 30) #17
  %i.gg = call { i64, ptr } (ptr, ...) @jv_string_fmt(ptr noundef nonnull @.str.162, ptr noundef %i.ge, ptr noundef %i.gf, ptr noundef nonnull @.str.208) #17 ; 2 uses
  %i.gh = extractvalue { i64, ptr } %i.gg, 0
  %i.gi = extractvalue { i64, ptr } %i.gg, 1
  %i.gj = call { i64, ptr } @jv_invalid_with_msg(i64 %i.gh, ptr %i.gi) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %f_tostring.exit

bb.am:                                            ; preds = %.preheader596.preheader
  %i.gk = getelementptr inbounds i8, ptr %i.fr, i64 %indvars.iv.next721
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !16  ; 5 uses
  %i.gm = add i8 %i.gl, -48                       ; 2 uses
  %or.cond = icmp ult i8 %i.gm, 10
  br i1 %or.cond, label %.else499, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gn = add i8 %i.gl, -97
  %or.cond14 = icmp ult i8 %i.gn, 6
  br i1 %or.cond14, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.go = add nsw i8 %i.gl, -87
  br label %.else499

bb.ap:                                            ; preds = %bb.an
  %i.gp = add i8 %i.gl, -65
  %or.cond17 = icmp ult i8 %i.gp, 6
  br i1 %or.cond17, label %bb.aq, label %.cont497

bb.aq:                                            ; preds = %bb.ap
  %i.gq = add nsw i8 %i.gl, -55
  br label %.else499

.cont497:                                         ; preds = %bb.at, %bb.ap
  tail call void @free(ptr noundef %i.fy) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.gr = tail call i32 @jv_get_kind(i64 %i.fp, ptr %i.fq) #17
  %i.gs = tail call ptr @jv_kind_name(i32 noundef %i.gr) #17
  %i.gt = call ptr @jv_dump_string_trunc(i64 %i.fp, ptr %i.fq, ptr noundef nonnull %i.a, i64 noundef 30) #17
  %i.gu = call { i64, ptr } (ptr, ...) @jv_string_fmt(ptr noundef nonnull @.str.162, ptr noundef %i.gs, ptr noundef %i.gt, ptr noundef nonnull @.str.208) #17 ; 2 uses
  %i.gv = extractvalue { i64, ptr } %i.gu, 0
  %i.gw = extractvalue { i64, ptr } %i.gu, 1
  %i.gx = call { i64, ptr } @jv_invalid_with_msg(i64 %i.gv, ptr %i.gw) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %f_tostring.exit

.else499:                                         ; preds = %bb.am, %bb.aq, %bb.ao
  %.1506.ph = phi i8 [ %i.gq, %bb.aq ], [ %i.go, %bb.ao ], [ %i.gm, %bb.am ]
  %.not476.1 = icmp slt i64 %i.gc, %i.fw
  br i1 %.not476.1, label %bb.ar, label %bb.al

bb.ar:                                            ; preds = %.else499
  %i.gy = getelementptr inbounds i8, ptr %i.fr, i64 %i.gc
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !16  ; 5 uses
  %i.ha = add i8 %i.gz, -48                       ; 2 uses
  %or.cond.1 = icmp ult i8 %i.ha, 10
  br i1 %or.cond.1, label %.else499.1, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hb = add i8 %i.gz, -97
  %or.cond14.1 = icmp ult i8 %i.hb, 6
  br i1 %or.cond14.1, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hc = add i8 %i.gz, -65
  %or.cond17.1 = icmp ult i8 %i.hc, 6
  br i1 %or.cond17.1, label %bb.au, label %.cont497

bb.au:                                            ; preds = %bb.at
  %i.hd = add nsw i8 %i.gz, -55
  br label %.else499.1

bb.av:                                            ; preds = %bb.as
  %i.he = add nsw i8 %i.gz, -87
  br label %.else499.1

.else499.1:                                       ; preds = %bb.ar, %bb.av, %bb.au
  %.1502.ph.1 = phi i8 [ %i.hd, %bb.au ], [ %i.he, %bb.av ], [ %i.ha, %bb.ar ]
  %i.hf = trunc nsw i64 %i.gc to i32
  %i.hg = shl nuw i8 %.1506.ph, 4
  %i.hh = or i8 %i.hg, %.1502.ph.1
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph664, %.else499.1
  %.sink779 = phi i8 [ %i.hh, %.else499.1 ], [ %i.gb, %.lr.ph664 ]
  %.4445.ph = phi i32 [ %i.hf, %.else499.1 ], [ %.0441661, %.lr.ph664 ]
  %i.hi = zext i32 %.0436662 to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.hi
  store i8 %.sink779, ptr %i.hj, align 1, !tbaa !16
  %.3439.ph = add i32 %.0436662, 1                ; 2 uses
  %i.hk = add nsw i32 %.4445.ph, 1                ; 2 uses
  %.not477 = icmp slt i32 %i.hk, %i.fv
  br i1 %.not477, label %.lr.ph664, label %.thread557, !llvm.loop !33

.thread557:                                       ; preds = %bb.aw, %bb.ak
  %.0436.lcssa = phi i32 [ 0, %bb.ak ], [ %.3439.ph, %bb.aw ] ; 2 uses
  %i.hl = zext i32 %.0436.lcssa to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.hl
  %i.hn = tail call i32 @jvp_utf8_is_valid(ptr noundef %i.fy, ptr noundef %i.hm) #17
  %.not478 = icmp eq i32 %i.hn, 0
  br i1 %.not478, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.thread557
  tail call void @free(ptr noundef %i.fy) #17
  %i.ho = tail call fastcc { i64, ptr } @type_error(i64 %i.fp, ptr %i.fq, ptr noundef nonnull @.str.208)
  br label %f_tostring.exit

bb.ay:                                            ; preds = %.thread557
  %i.hp = tail call { i64, ptr } @jv_string_sized(ptr noundef %i.fy, i32 noundef %.0436.lcssa) #17
  tail call void @free(ptr noundef %i.fy) #17
  tail call void @jv_free(i64 %i.fp, ptr %i.fq) #17
  br label %f_tostring.exit

sub_0:                                            ; preds = %bb.aj
  %i.hq = load i8, ptr %i.o, align 1
  %.not683 = icmp eq i8 %i.hq, 115
  br i1 %.not683, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.hr = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.hs = load i8, ptr %i.hr, align 1
  %.not684 = icmp eq i8 %i.hs, 104
  br i1 %.not684, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.ht = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.hu = load i8, ptr %i.ht, align 1
  %i.hv = icmp eq i8 %i.hu, 0
  br i1 %i.hv, label %bb.az, label %.tail.thread

bb.az:                                            ; preds = %.tail
  tail call void @jv_free(i64 %3, ptr %4) #17
  %i.hw = tail call i32 @jv_get_kind(i64 %1, ptr %2) #17
  %.not480 = icmp eq i32 %i.hw, 6
  br i1 %.not480, label %.preheader597, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hx = tail call { i64, ptr } @jv_array() #17  ; 2 uses
  %i.hy = extractvalue { i64, ptr } %i.hx, 0
  %i.hz = extractvalue { i64, ptr } %i.hx, 1
  %i.ia = tail call { i64, ptr } @jv_array_set(i64 %i.hy, ptr %i.hz, i32 noundef 0, i64 %1, ptr %2) #17 ; 2 uses
  %i.ib = extractvalue { i64, ptr } %i.ia, 0
  %i.ic = extractvalue { i64, ptr } %i.ia, 1
  br label %.preheader597

.preheader597:                                    ; preds = %bb.ba, %bb.az
  %.sroa.0337.0 = phi i64 [ %i.ib, %bb.ba ], [ %1, %bb.az ] ; 5 uses
  %.sroa.44.0 = phi ptr [ %i.ic, %bb.ba ], [ %2, %bb.az ] ; 5 uses
  %i.id = tail call { i64, ptr } @jv_string(ptr noundef nonnull @.str.199) #17 ; 3 uses
  %i.ie = tail call { i64, ptr } @jv_copy(i64 %.sroa.0337.0, ptr %.sroa.44.0) #17 ; 2 uses
  %i.if = extractvalue { i64, ptr } %i.ie, 0
  %i.ig = extractvalue { i64, ptr } %i.ie, 1
  %i.ih = tail call i32 @jv_array_length(i64 %i.if, ptr %i.ig) #17 ; 3 uses
  %.not483.not645 = icmp sgt i32 %i.ih, 0
  br i1 %.not483.not645, label %bb.bb, label %.thread572

bb.bb:                                            ; preds = %.preheader597
  %.sroa.15.1648.peel = extractvalue { i64, ptr } %i.id, 1 ; 3 uses
  %.sroa.0129.1647.peel = extractvalue { i64, ptr } %i.id, 0 ; 3 uses
  %i.ii = tail call { i64, ptr } @jv_copy(i64 %.sroa.0337.0, ptr %.sroa.44.0) #17 ; 2 uses
  %i.ij = extractvalue { i64, ptr } %i.ii, 0
  %i.ik = extractvalue { i64, ptr } %i.ii, 1
  %i.il = tail call { i64, ptr } @jv_array_get(i64 %i.ij, ptr %i.ik, i32 noundef 0) #17 ; 2 uses
  %i.im = extractvalue { i64, ptr } %i.il, 0      ; 4 uses
  %i.in = extractvalue { i64, ptr } %i.il, 1      ; 4 uses
  %i.io = tail call i32 @jv_get_kind(i64 %i.im, ptr %i.in) #17
  switch i32 %i.io, label %.loopexit [
    i32 1, label %bb.bd
    i32 3, label %bb.bd
    i32 2, label %bb.bd
    i32 4, label %bb.bd
    i32 5, label %bb.bc
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.ip = tail call { i64, ptr } @jv_string_append_str(i64 %.sroa.0129.1647.peel, ptr %.sroa.15.1648.peel, ptr noundef nonnull @.str.211) #17 ; 2 uses
  %i.iq = extractvalue { i64, ptr } %i.ip, 0
  %i.ir = extractvalue { i64, ptr } %i.ip, 1
  %i.is = tail call fastcc { i64, ptr } @escape_string(i64 %i.im, ptr %i.in, ptr noundef nonnull @.str.212) ; 2 uses
  %i.it = extractvalue { i64, ptr } %i.is, 0
  %i.iu = extractvalue { i64, ptr } %i.is, 1
  %i.iv = tail call { i64, ptr } @jv_string_concat(i64 %i.iq, ptr %i.ir, i64 %i.it, ptr %i.iu) #17 ; 2 uses
  %i.iw = extractvalue { i64, ptr } %i.iv, 0
  %i.ix = extractvalue { i64, ptr } %i.iv, 1
  %i.iy = tail call { i64, ptr } @jv_string_append_str(i64 %i.iw, ptr %i.ix, ptr noundef nonnull @.str.211) #17
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb, %bb.bb, %bb.bb, %bb.bb
  %i.iz = tail call { i64, ptr } @jv_dump_string(i64 %i.im, ptr %i.in, i32 noundef 0) #17 ; 2 uses
  %i.ja = extractvalue { i64, ptr } %i.iz, 0
  %i.jb = extractvalue { i64, ptr } %i.iz, 1
  %i.jc = tail call { i64, ptr } @jv_string_concat(i64 %.sroa.0129.1647.peel, ptr %.sroa.15.1648.peel, i64 %i.ja, ptr %i.jb) #17
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.pn.peel = phi { i64, ptr } [ %i.jc, %bb.bd ], [ %i.iy, %bb.bc ] ; 2 uses
  %exitcond718.peel.not = icmp eq i32 %i.ih, 1
  br i1 %exitcond718.peel.not, label %.thread572, label %.lr.ph649.peel.next

.lr.ph649.peel.next:                              ; preds = %bb.be, %bb.bh
  %.pn.pn = phi { i64, ptr } [ %.pn, %bb.bh ], [ %.pn.peel, %bb.be ] ; 2 uses
  %.1449646 = phi i32 [ %i.kb, %bb.bh ], [ 1, %bb.be ] ; 2 uses
  %i.jd = tail call { i64, ptr } @jv_copy(i64 %.sroa.0337.0, ptr %.sroa.44.0) #17 ; 2 uses
  %i.je = extractvalue { i64, ptr } %i.jd, 0
  %i.jf = extractvalue { i64, ptr } %i.jd, 1
  %i.jg = tail call { i64, ptr } @jv_array_get(i64 %i.je, ptr %i.jf, i32 noundef %.1449646) #17 ; 2 uses
  %i.jh = extractvalue { i64, ptr } %i.jg, 0      ; 4 uses
  %i.ji = extractvalue { i64, ptr } %i.jg, 1      ; 4 uses
  %.sroa.0129.1647 = extractvalue { i64, ptr } %.pn.pn, 0
  %.sroa.15.1648 = extractvalue { i64, ptr } %.pn.pn, 1
  %i.jj = tail call { i64, ptr } @jv_string_append_str(i64 %.sroa.0129.1647, ptr %.sroa.15.1648, ptr noundef nonnull @.str.210) #17 ; 2 uses
  %i.jk = extractvalue { i64, ptr } %i.jj, 0      ; 3 uses
  %i.jl = extractvalue { i64, ptr } %i.jj, 1      ; 3 uses
  %i.jm = tail call i32 @jv_get_kind(i64 %i.jh, ptr %i.ji) #17
  switch i32 %i.jm, label %.loopexit [
    i32 1, label %bb.bf
    i32 3, label %bb.bf
    i32 2, label %bb.bf
    i32 4, label %bb.bf
    i32 5, label %bb.bg
  ]

bb.bf:                                            ; preds = %.lr.ph649.peel.next, %.lr.ph649.peel.next, %.lr.ph649.peel.next, %.lr.ph649.peel.next
  %i.jn = tail call { i64, ptr } @jv_dump_string(i64 %i.jh, ptr %i.ji, i32 noundef 0) #17 ; 2 uses
  %i.jo = extractvalue { i64, ptr } %i.jn, 0
  %i.jp = extractvalue { i64, ptr } %i.jn, 1
  %i.jq = tail call { i64, ptr } @jv_string_concat(i64 %i.jk, ptr %i.jl, i64 %i.jo, ptr %i.jp) #17
  br label %bb.bh

bb.bg:                                            ; preds = %.lr.ph649.peel.next
  %i.jr = tail call { i64, ptr } @jv_string_append_str(i64 %i.jk, ptr %i.jl, ptr noundef nonnull @.str.211) #17 ; 2 uses
  %i.js = extractvalue { i64, ptr } %i.jr, 0
  %i.jt = extractvalue { i64, ptr } %i.jr, 1
  %i.ju = tail call fastcc { i64, ptr } @escape_string(i64 %i.jh, ptr %i.ji, ptr noundef nonnull @.str.212) ; 2 uses
  %i.jv = extractvalue { i64, ptr } %i.ju, 0
  %i.jw = extractvalue { i64, ptr } %i.ju, 1
  %i.jx = tail call { i64, ptr } @jv_string_concat(i64 %i.js, ptr %i.jt, i64 %i.jv, ptr %i.jw) #17 ; 2 uses
  %i.jy = extractvalue { i64, ptr } %i.jx, 0
  %i.jz = extractvalue { i64, ptr } %i.jx, 1
  %i.ka = tail call { i64, ptr } @jv_string_append_str(i64 %i.jy, ptr %i.jz, ptr noundef nonnull @.str.211) #17
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.bg
  %.pn = phi { i64, ptr } [ %i.jq, %bb.bf ], [ %i.ka, %bb.bg ] ; 2 uses
  %i.kb = add nuw nsw i32 %.1449646, 1            ; 2 uses
  %exitcond718.not = icmp eq i32 %i.kb, %i.ih
  br i1 %exitcond718.not, label %.thread572, label %.lr.ph649.peel.next, !llvm.loop !34

.loopexit:                                        ; preds = %.lr.ph649.peel.next, %bb.bb
  %.sroa.0129.2.lcssa = phi i64 [ %.sroa.0129.1647.peel, %bb.bb ], [ %i.jk, %.lr.ph649.peel.next ]
  %.sroa.15.2.lcssa = phi ptr [ %.sroa.15.1648.peel, %bb.bb ], [ %i.jl, %.lr.ph649.peel.next ]
  %.lcssa699 = phi i64 [ %i.im, %bb.bb ], [ %i.jh, %.lr.ph649.peel.next ]
  %.lcssa697 = phi ptr [ %i.in, %bb.bb ], [ %i.ji, %.lr.ph649.peel.next ]
end_hunk_0
