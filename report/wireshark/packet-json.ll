Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-json?download=true
inline.NumInlined: 40
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@jsonplus_dissect_dict_string_field:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  br label %jsonplus_dissect_dict_special_field.exit

bb.r:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #14
  %i.ch = call zeroext i1 @ws_strtoi64(ptr noundef %i.ao, ptr noundef null, ptr noundef nonnull %i.o)
  br i1 %i.ch, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.ci = load i64, ptr %i.o, align 8
  store i64 %i.ci, ptr %9, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.cj, align 8
  %i.ck = getelementptr i8, ptr %6, i64 28
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = load i32, ptr %i.v, align 4
  %i.cn = call ptr @proto_tree_add_time(ptr noundef nonnull %1, i32 noundef %i.cl, ptr noundef %0, i32 noundef %i.cm, i32 noundef %i.ak, ptr noundef nonnull %9) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.co = getelementptr i8, ptr %6, i64 28
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = load i32, ptr %i.v, align 4
  %i.cr = call ptr @proto_tree_add_string(ptr noundef nonnull %1, i32 noundef %i.cp, ptr noundef %0, i32 noundef %i.cq, i32 noundef %i.ak, ptr noundef %i.ao)
  %i.cs = call ptr @expert_add_info(ptr noundef null, ptr noundef %i.cr, ptr noundef nonnull @ei_json_plus_type_mismatch) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #14
  br label %jsonplus_dissect_dict_special_field.exit

bb.v:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #14
  %i.ct = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.ao, ptr noundef nonnull @.str.169, ptr noundef nonnull %i.p) #14
  %i.cu = icmp eq i32 %i.ct, 1
  br i1 %i.cu, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.cv = load double, ptr %i.p, align 8          ; 2 uses
  %i.cw = fptosi double %i.cv to i64              ; 2 uses
  store i64 %i.cw, ptr %10, align 8
  %i.cx = sitofp i64 %i.cw to double
  %i.cy = fsub double %i.cv, %i.cx
  %i.cz = fmul double %i.cy, 1.000000e+09
  %i.da = fptosi double %i.cz to i32
  %i.db = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %i.da, ptr %i.db, align 8
  %i.dc = getelementptr i8, ptr %6, i64 28
  %i.dd = load i32, ptr %i.dc, align 4
  %i.de = load i32, ptr %i.v, align 4
  %i.df = call ptr @proto_tree_add_time(ptr noundef nonnull %1, i32 noundef %i.dd, ptr noundef %0, i32 noundef %i.de, i32 noundef %i.ak, ptr noundef nonnull %10) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.dg = getelementptr i8, ptr %6, i64 28
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = load i32, ptr %i.v, align 4
  %i.dj = call ptr @proto_tree_add_string(ptr noundef nonnull %1, i32 noundef %i.dh, ptr noundef %0, i32 noundef %i.di, i32 noundef %i.ak, ptr noundef %i.ao)
  %i.dk = call ptr @expert_add_info(ptr noundef null, ptr noundef %i.dj, ptr noundef nonnull @ei_json_plus_type_mismatch) ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #14
  br label %jsonplus_dissect_dict_special_field.exit

bb.z:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #14
  store ptr null, ptr %i.q, align 8
  %i.dl = call i64 @g_ascii_strtoull(ptr noundef %i.ao, ptr noundef nonnull %i.q, i32 noundef 16) ; 4 uses
  %i.dm = load ptr, ptr %i.q, align 8             ; 2 uses
  %.not.i = icmp eq ptr %i.dm, null
  br i1 %.not.i, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dn = load i8, ptr %i.dm, align 1
  %i.do = icmp eq i8 %i.dn, 0
  br i1 %i.do, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.dp = getelementptr i8, ptr %6, i64 40
  %i.dq = load ptr, ptr %i.dp, align 8
  %.not103.i = icmp eq ptr %i.dq, null
  %i.dr = getelementptr i8, ptr %6, i64 28
  %i.ds = load i32, ptr %i.dr, align 4            ; 2 uses
  %i.dt = load i32, ptr %i.v, align 4             ; 2 uses
  br i1 %.not103.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.du = trunc i64 %i.dl to i32
  %i.dv = call ptr @proto_tree_add_uint(ptr noundef nonnull %1, i32 noundef %i.ds, ptr noundef %0, i32 noundef %i.dt, i32 noundef %i.ak, i32 noundef %i.du) ; 0 uses
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %i.dw = call ptr (ptr, i32, ptr, i32, i32, i64, ptr, ...) @proto_tree_add_uint64_format_value(ptr noundef nonnull %1, i32 noundef %i.ds, ptr noundef %0, i32 noundef %i.dt, i32 noundef %i.ak, i64 noundef %i.dl, ptr noundef nonnull @.str.170, i64 noundef %i.dl, i64 noundef %i.dl) ; 0 uses
  br label %bb.af

bb.ae:                                            ; preds = %bb.aa, %bb.z
  %i.dx = getelementptr i8, ptr %6, i64 28
  %i.dy = load i32, ptr %i.dx, align 4
  %i.dz = load i32, ptr %i.v, align 4
  %i.ea = call ptr @proto_tree_add_string(ptr noundef nonnull %1, i32 noundef %i.dy, ptr noundef %0, i32 noundef %i.dz, i32 noundef %i.ak, ptr noundef %i.ao)
  %i.eb = call ptr @expert_add_info(ptr noundef null, ptr noundef %i.ea, ptr noundef nonnull @ei_json_plus_type_mismatch) ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #14
  br label %jsonplus_dissect_dict_special_field.exit

bb.ag:                                            ; preds = %bb.e
  %i.ec = getelementptr i8, ptr %6, i64 28
  %i.ed = load i32, ptr %i.ec, align 4
  %i.ee = load i32, ptr %i.v, align 4
  %i.ef = tail call ptr @proto_tree_add_string(ptr noundef nonnull %1, i32 noundef %i.ed, ptr noundef %0, i32 noundef %i.ee, i32 noundef %i.ak, ptr noundef %i.ao) ; 0 uses
  br label %jsonplus_dissect_dict_special_field.exit

bb.ah:                                            ; preds = %bb.d
  %i.eg = load i8, ptr @gbl_json_run_external_parsers, align 1, !range !8, !noundef !9
  %i.eh = trunc nuw i8 %i.eg to i1
  %.b = load i1, ptr @gbl_json_run_external_parsers_cli, align 1
  %i.ei = select i1 %i.eh, i1 true, i1 %.b
  %i.ej = getelementptr i8, ptr %6, i64 72        ; 3 uses
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = icmp ne ptr %i.ek, null
  %or.cond3 = select i1 %i.el, i1 %i.ei, i1 false
  br i1 %or.cond3, label %bb.ai, label %.thread149

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store ptr null, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i32 0, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store ptr null, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %.not158 = icmp eq ptr %i.ab, null
  br i1 %.not158, label %.thread139, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.em = tail call ptr @get_persconffile_path(ptr noundef nonnull @.str.15, i1 noundef zeroext false, ptr noundef null) ; 4 uses
  %.not.i129 = icmp eq ptr %i.em, null
  br i1 %.not.i129, label %.thread.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.en = load ptr, ptr %i.ej, align 8
  %i.eo = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %3, ptr noundef nonnull @.str.171, ptr noundef nonnull %i.em, i32 noundef 47, i32 noundef 47, ptr noundef %i.en) ; 4 uses
  %i.ep = tail call zeroext i1 @file_exists(ptr noundef %i.eo)
  br i1 %i.ep, label %bb.al, label %.thread168.i

.thread168.i:                                     ; preds = %bb.ak
  tail call void @wmem_free(ptr noundef %3, ptr noundef %i.eo)
  tail call void @g_free(ptr noundef nonnull %i.em)
  br label %.thread.i

bb.al:                                            ; preds = %bb.ak
  tail call void @g_free(ptr noundef nonnull %i.em)
  %.not153.i = icmp eq ptr %i.eo, null
  br i1 %.not153.i, label %.thread.i, label %bb.am

.thread.i:                                        ; preds = %bb.al, %.thread168.i, %bb.aj
  %i.eq = tail call ptr @get_datafile_dir(ptr noundef null)
  %i.er = load ptr, ptr %i.ej, align 8
  %i.es = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %3, ptr noundef nonnull @.str.172, ptr noundef %i.eq, i32 noundef 47, i32 noundef 47, i32 noundef 47, ptr noundef %i.er)
  br label %bb.am

bb.am:                                            ; preds = %.thread.i, %bb.al
  %.2132.i = phi ptr [ %i.eo, %bb.al ], [ %i.es, %.thread.i ] ; 2 uses
  %i.et = load ptr, ptr %6, align 8
  %i.eu = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %3, ptr noundef nonnull @.str.173, ptr noundef %i.et, ptr noundef nonnull %i.ab) ; 2 uses
  %i.ev = getelementptr i8, ptr %6, i64 80
  %i.ew = load ptr, ptr %i.ev, align 8            ; 2 uses
  %.not154.i = icmp eq ptr %i.ew, null
  br i1 %.not154.i, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  %i.ex = call i32 @g_shell_parse_argv(ptr noundef nonnull %i.ew, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.d)
  %.not155.not.i = icmp eq i32 %i.ex, 0
  br i1 %.not155.not.i, label %.thread171.i, label %bb.ao

.thread171.i:                                     ; preds = %bb.an
  call void @g_clear_error(ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  br label %.thread139

bb.ao:                                            ; preds = %bb.an
  %i.ey = load i32, ptr %i.e, align 4
  %i.ez = add i32 %i.ey, 3
  %i.fa = sext i32 %i.ez to i64
  %i.fb = call noalias ptr @g_malloc0_n(i64 noundef %i.fa, i64 noundef 8) #18 ; 8 uses
  store ptr %.2132.i, ptr %i.fb, align 8
  %i.fc = getelementptr i8, ptr %i.fb, i64 8
  store ptr %i.eu, ptr %i.fc, align 8
  %i.fd = load i32, ptr %i.e, align 4             ; 4 uses
  %i.fe = icmp sgt i32 %i.fd, 0
  %.pre.i = load ptr, ptr %i.f, align 8           ; 5 uses
  br i1 %i.fe, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.ao
  %wide.trip.count.i = zext nneg i32 %i.fd to i64 ; 5 uses
  %i.ff = add nsw i32 %i.fd, -2147483647
  %or.cond186 = icmp ult i32 %i.ff, -2147483627
  br i1 %or.cond186, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fg = getelementptr [8 x i8], ptr %.pre.i, i64 %index ; 2 uses
  %i.fh = getelementptr i8, ptr %i.fg, i64 16
  %wide.load = load <2 x ptr>, ptr %i.fg, align 8
  %wide.load184 = load <2 x ptr>, ptr %i.fh, align 8
  %i.fi = shl nuw nsw i64 %index, 3
  %i.fj = getelementptr i8, ptr %i.fb, i64 %i.fi  ; 2 uses
  %i.fk = getelementptr i8, ptr %i.fj, i64 16
  %i.fl = getelementptr i8, ptr %i.fj, i64 32
  store <2 x ptr> %wide.load, ptr %i.fk, align 8
  store <2 x ptr> %wide.load184, ptr %i.fl, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fm = icmp eq i64 %index.next, %n.vec
  br i1 %i.fm, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.fn = getelementptr [8 x i8], ptr %.pre.i, i64 %indvars.iv.i.ph
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = shl nuw nsw i64 %indvars.iv.i.ph, 3
  %i.fq = getelementptr i8, ptr %i.fb, i64 %i.fp
  %i.fr = getelementptr i8, ptr %i.fq, i64 16
  store ptr %i.fo, ptr %i.fr, align 8
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.fs = add nsw i64 %wide.trip.count.i, -1
  %i.ft = icmp eq i64 %indvars.iv.i.ph, %i.fs
  br i1 %i.ft, label %._crit_edge.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.fu = getelementptr [8 x i8], ptr %.pre.i, i64 %indvars.iv.i
  %i.fv = load ptr, ptr %i.fu, align 8
  %i.fw = shl nuw nsw i64 %indvars.iv.i, 32
  %sext.i = add nuw i64 %i.fw, 8589934592
  %i.fx = ashr exact i64 %sext.i, 29
  %i.fy = getelementptr i8, ptr %i.fb, i64 %i.fx
  store ptr %i.fv, ptr %i.fy, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fz = getelementptr [8 x i8], ptr %.pre.i, i64 %indvars.iv.next.i
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = shl nuw nsw i64 %indvars.iv.next.i, 32
  %sext.i.1 = add nuw i64 %i.gb, 8589934592
  %i.gc = ashr exact i64 %sext.i.1, 29
  %i.gd = getelementptr i8, ptr %i.fb, i64 %i.gc
  store ptr %i.ga, ptr %i.gd, align 8
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !30

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ao
  %i.ge = add i32 %i.fd, 2
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr [8 x i8], ptr %i.fb, i64 %i.gf
  store ptr null, ptr %i.gg, align 8
  call void @g_free(ptr noundef %.pre.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  br label %bb.aq

bb.ap:                                            ; preds = %bb.am
  %i.gh = tail call noalias dereferenceable_or_null(24) ptr @g_malloc0(i64 noundef 24) #19 ; 4 uses
  store ptr %.2132.i, ptr %i.gh, align 8
  %i.gi = getelementptr i8, ptr %i.gh, i64 8
  store ptr %i.eu, ptr %i.gi, align 8
  %i.gj = getelementptr i8, ptr %i.gh, i64 16
  store ptr null, ptr %i.gj, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %._crit_edge.i
  %.1138.i = phi ptr [ %i.fb, %._crit_edge.i ], [ %i.gh, %bb.ap ] ; 2 uses
  %i.gk = call i32 @g_spawn_sync(ptr noundef null, ptr noundef %.1138.i, ptr noundef null, i32 noundef 4, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %.not156.i = icmp eq i32 %i.gk, 0
  call void @g_free(ptr noundef %.1138.i)
  br i1 %.not156.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void @g_clear_error(ptr noundef nonnull %i.d)
  br label %.thread139

bb.as:                                            ; preds = %bb.aq
  %i.gl = load i32, ptr %i.c, align 4
  %i.gm = icmp eq i32 %i.gl, 0
  %i.gn = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.go = icmp ne ptr %i.gn, null
  %or.cond3.i = select i1 %i.gm, i1 %i.go, i1 false
  br i1 %or.cond3.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @g_free(ptr noundef %i.gn)
  %i.gp = load ptr, ptr %i.b, align 8
  call void @g_free(ptr noundef %i.gp)
  br label %.thread139

bb.au:                                            ; preds = %bb.as
  %i.gq = call noalias dereferenceable_or_null(16) ptr @wmem_alloc0(ptr noundef %3, i64 noundef 16) #15 ; 4 uses
  store ptr null, ptr %i.gq, align 8
  %i.gr = call ptr @g_ptr_array_new()             ; 3 uses
  %i.gs = getelementptr i8, ptr %i.gq, i64 8      ; 3 uses
  store ptr %i.gr, ptr %i.gs, align 8
  %i.gt = load ptr, ptr %i.a, align 8
  %i.gu = call ptr @g_strsplit(ptr noundef %i.gt, ptr noundef nonnull @.str.174, i32 noundef -1) ; 3 uses
  %i.gv = load ptr, ptr %i.gu, align 8            ; 2 uses
  %.not157176.i = icmp eq ptr %i.gv, null
  br i1 %.not157176.i, label %.loopexit, label %.lr.ph179.i

.lr.ph179.i:                                      ; preds = %bb.au, %.critedge165.i
  %i.gw = phi ptr [ %i.il, %.critedge165.i ], [ null, %bb.au ] ; 4 uses
  %i.gx = phi ptr [ %i.ip, %.critedge165.i ], [ %i.gv, %bb.au ] ; 8 uses
  %.0142177.i = phi i32 [ %i.im, %.critedge165.i ], [ 0, %bb.au ]
  %char0.i = load i8, ptr %i.gx, align 1
  %i.gy = icmp eq i8 %char0.i, 0
  br i1 %i.gy, label %.critedge165.i, label %bb.av

bb.av:                                            ; preds = %.lr.ph179.i
  %i.gz = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gx) #16 ; 2 uses
  %i.ha = icmp ugt i64 %i.gz, 6
  br i1 %i.ha, label %bb.aw, label %.critedge163.i

bb.aw:                                            ; preds = %bb.av
  %i.hb = load i32, ptr %i.gx, align 1
  %i.hc = xor i32 %i.hb, 1162891329
  %i.hd = getelementptr i8, ptr %i.gx, i64 3
  %i.he = load i32, ptr %i.hd, align 1
  %i.hf = xor i32 %i.he, 977555013
  %i.hg = or i32 %i.hc, %i.hf
  %i.hh = icmp ne i32 %i.hg, 0
  %i.hi = zext i1 %i.hh to i32
  %.not173.i = icmp eq i32 %i.hi, 0
  br i1 %.not173.i, label %bb.ax, label %.critedge163.thread.i

bb.ax:                                            ; preds = %bb.aw
  %i.hj = getelementptr i8, ptr %i.gx, i64 7
  br label %bb.ay

bb.ay:                                            ; preds = %.critedge.i, %bb.ax
  %.0136.i = phi ptr [ %i.hj, %bb.ax ], [ %i.hl, %.critedge.i ] ; 3 uses
  %i.hk = load i8, ptr %.0136.i, align 1
  switch i8 %i.hk, label %bb.az [
    i8 32, label %.critedge.i
    i8 9, label %.critedge.i
  ]

.critedge.i:                                      ; preds = %bb.ay, %bb.ay
  %i.hl = getelementptr i8, ptr %.0136.i, i64 1
  br label %bb.ay, !llvm.loop !31

bb.az:                                            ; preds = %bb.ay
  %i.hm = call noalias ptr @wmem_strdup(ptr noundef %3, ptr noundef %.0136.i) ; 2 uses
  store ptr %i.hm, ptr %i.gq, align 8
  br label %.critedge165.i

.critedge163.i:                                   ; preds = %bb.av
  %i.hn = icmp eq i64 %i.gz, 6
  br i1 %i.hn, label %.critedge163.thread.i, label %.critedge165.i

.critedge163.thread.i:                            ; preds = %.critedge163.i, %bb.aw
  %i.ho = load i32, ptr %i.gx, align 1
  %i.hp = xor i32 %i.ho, 1279871043
  %i.hq = getelementptr i8, ptr %i.gx, i64 4
  %i.hr = load i16, ptr %i.hq, align 1
  %i.hs = zext i16 %i.hr to i32
  %i.ht = xor i32 %i.hs, 14916
  %i.hu = or i32 %i.hp, %i.ht
  %i.hv = icmp ne i32 %i.hu, 0
  %i.hw = zext i1 %i.hv to i32
  %.not174.i = icmp eq i32 %i.hw, 0
  br i1 %.not174.i, label %bb.ba, label %.critedge165.i

bb.ba:                                            ; preds = %.critedge163.thread.i
  %i.hx = getelementptr i8, ptr %i.gx, i64 6
  br label %bb.bb

bb.bb:                                            ; preds = %.critedge5.i, %bb.ba
  %.0129.i = phi ptr [ %i.hx, %bb.ba ], [ %i.hz, %.critedge5.i ] ; 3 uses
  %i.hy = load i8, ptr %.0129.i, align 1
  switch i8 %i.hy, label %bb.bc [
    i8 32, label %.critedge5.i
    i8 9, label %.critedge5.i
  ]

.critedge5.i:                                     ; preds = %bb.bb, %bb.bb
  %i.hz = getelementptr i8, ptr %.0129.i, i64 1
  br label %bb.bb, !llvm.loop !32

bb.bc:                                            ; preds = %bb.bb
  %i.ia = call ptr @g_strsplit(ptr noundef %.0129.i, ptr noundef nonnull @.str.177, i32 noundef 2) ; 4 uses
  %i.ib = call i32 @g_strv_length(ptr noundef %i.ia)
  %i.ic = icmp eq i32 %i.ib, 2
  br i1 %i.ic, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.id = call noalias dereferenceable_or_null(24) ptr @wmem_alloc0(ptr noundef %3, i64 noundef 24) #15 ; 4 uses
  %i.ie = load ptr, ptr %i.ia, align 8
  %i.if = call noalias ptr @wmem_strdup(ptr noundef %3, ptr noundef %i.ie)
  store ptr %i.if, ptr %i.id, align 8
  %i.ig = getelementptr i8, ptr %i.ia, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8
  %i.ii = call noalias ptr @wmem_strdup(ptr noundef %3, ptr noundef %i.ih)
  %i.ij = getelementptr i8, ptr %i.id, i64 8
  store ptr %i.ii, ptr %i.ij, align 8
  %i.ik = getelementptr i8, ptr %i.id, i64 16
  store i32 -1, ptr %i.ik, align 8
  call void @g_ptr_array_add(ptr noundef %i.gr, ptr noundef %i.id)
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  call void @g_strfreev(ptr noundef %i.ia)
  br label %.critedge165.i

end_hunk_0
