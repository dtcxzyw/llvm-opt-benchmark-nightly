Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/parsers?download=true
inline.NumInlined: 274
inline.NumDeleted: 10
begin_hunk_0_@_dump_NODES:bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_parse_NODES(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr noundef %3, ptr noundef %4) #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 2
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.b, label %_parse_disabled.exit

bb.b:                                             ; preds = %bb.a
  %i.g = call ptr @openapi_fmt_rel_path_str(ptr noundef nonnull %i.a, ptr noundef %4) #19
  %.pre.i = load i32, ptr %i.b, align 8
  br label %_parse_disabled.exit

_parse_disabled.exit:                             ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %.pre.i, %bb.b ], [ %i.c, %bb.a ]
  %i.i = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  call void (i32, i32, ptr, ptr, ptr, ptr, ...) @on_warn(i32 noundef 60138, i32 noundef %i.c, ptr noundef nonnull %3, ptr noundef %i.i, ptr noundef nonnull @__func__._parse_disabled, ptr noundef nonnull @.str.1144, ptr noundef nonnull @.str.1145, i32 noundef %i.h) #19
  call void @slurm_xfree(ptr noundef nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_dump_JOB_INFO_GRES_DETAIL(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #5 {
bb.a:
  %i.a = tail call ptr @data_set_list(ptr noundef %2) #19 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 384
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.e = tail call ptr @data_list_append(ptr noundef %2) #19
  %i.f = load ptr, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call ptr @data_set_string(ptr noundef %i.e, ptr noundef %i.h) #19 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.j = load i32, ptr %i.b, align 8
  %i.k = zext i32 %i.j to i64
  %i.l = icmp samesign ult i64 %indvars.iv.next, %i.k
  br i1 %i.l, label %bb.b, label %._crit_edge, !llvm.loop !39
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_parse_JOB_INFO_GRES_DETAIL(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr noundef %3, ptr noundef %4) #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 2
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.b, label %_parse_disabled.exit

bb.b:                                             ; preds = %bb.a
  %i.g = call ptr @openapi_fmt_rel_path_str(ptr noundef nonnull %i.a, ptr noundef %4) #19
  %.pre.i = load i32, ptr %i.b, align 8
  br label %_parse_disabled.exit

_parse_disabled.exit:                             ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %.pre.i, %bb.b ], [ %i.c, %bb.a ]
  %i.i = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  call void (i32, i32, ptr, ptr, ptr, ptr, ...) @on_warn(i32 noundef 60138, i32 noundef %i.c, ptr noundef nonnull %3, ptr noundef %i.i, ptr noundef nonnull @__func__._parse_disabled, ptr noundef nonnull @.str.1144, ptr noundef nonnull @.str.1145, i32 noundef %i.h) #19
  call void @slurm_xfree(ptr noundef nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_dump_JOB_RES_NODES(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %4 = alloca %struct.JOB_RES_NODE_t, align 8     ; 12 uses
  %i.a = tail call ptr @data_set_list(ptr noundef %2) #19 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %.not33 = icmp eq i32 %i.e, 0
  br i1 %.not33, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call ptr @hostlist_create(ptr noundef %i.g) #19 ; 3 uses
  %i.i = load ptr, ptr %1, align 8
  %i.j = tail call i64 @bit_size(ptr noundef %i.i) #19 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 18
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_dump_node_res.exit
  %.046 = phi i64 [ 0, %bb.c ], [ %i.dm, %_dump_node_res.exit ] ; 7 uses
  %.02845 = phi i64 [ 0, %bb.c ], [ %i.ak, %_dump_node_res.exit ] ; 2 uses
  %.02944 = phi i64 [ 0, %bb.c ], [ %spec.select, %_dump_node_res.exit ] ; 2 uses
  %.04143 = phi i64 [ 0, %bb.c ], [ %.2, %_dump_node_res.exit ] ; 3 uses
  %i.z = load i32, ptr %i.d, align 4
  %i.aa = zext i32 %i.z to i64
  %i.ab = icmp samesign ult i64 %.046, %i.aa
  br i1 %i.ab, label %bb.e, label %.critedge

.critedge:                                        ; preds = %_dump_node_res.exit, %bb.d
  %.not36 = icmp eq ptr %i.h, null
  br i1 %.not36, label %bb.m, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.ac = trunc nuw i64 %.046 to i32              ; 2 uses
  %i.ad = call ptr @hostlist_nth(ptr noundef %i.h, i32 noundef %i.ac) #19 ; 2 uses
  %i.ae = load ptr, ptr %i.k, align 8
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.02944
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = zext i32 %i.ag to i64
  %.not35 = icmp uge i64 %.02845, %i.ah           ; 2 uses
  %i.ai = zext i1 %.not35 to i64
  %spec.select = add i64 %.02944, %i.ai           ; 9 uses
  %i.aj = add i64 %.02845, 1
  %i.ak = select i1 %.not35, i64 1, i64 %i.aj
  %i.al = call ptr @data_list_append(ptr noundef %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i32 %i.ac, ptr %4, align 8
  store i32 0, ptr %i.l, align 4
  store ptr %i.ad, ptr %i.m, align 8
  %i.am = load ptr, ptr %i.o, align 8
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %.046
  %i.ao = load i16, ptr %i.an, align 2
  store i16 %i.ao, ptr %i.n, align 8
  %i.ap = load ptr, ptr %i.q, align 8
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %.046
  %i.ar = load i16, ptr %i.aq, align 2
  store i16 %i.ar, ptr %i.p, align 2
  store i32 0, ptr %i.r, align 4
  %i.as = load ptr, ptr %i.t, align 8
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.046
  %i.au = load i64, ptr %i.at, align 8
  store i64 %i.au, ptr %i.s, align 8
  %i.av = load ptr, ptr %i.v, align 8
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.046
  %i.ax = load i64, ptr %i.aw, align 8
  store i64 %i.ax, ptr %i.u, align 8
  %i.ay = load ptr, ptr %i.x, align 8
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %spec.select
  %i.ba = load i16, ptr %i.az, align 2
  %i.bb = zext i16 %i.ba to i32                   ; 2 uses
  %i.bc = load ptr, ptr %i.b, align 8
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %spec.select
  %i.be = load i16, ptr %i.bd, align 2
  %i.bf = zext i16 %i.be to i32
  %i.bg = mul nuw i32 %i.bf, %i.bb                ; 2 uses
  %i.bh = add nuw nsw i32 %i.bb, 1
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = call ptr @slurm_xcalloc(i64 noundef %i.bi, i64 noundef 16, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.1211, i32 noundef 4491, ptr noundef nonnull @__func__._dump_node_res) #19, !inline_history !40 ; 2 uses
  store ptr %i.bj, ptr %i.w, align 8
  %i.bk = load ptr, ptr %i.x, align 8
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %spec.select
  %i.bm = load i16, ptr %i.bl, align 2
  %.not80.i = icmp eq i16 %i.bm, 0
  br i1 %.not80.i, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i, %bb.e
  %.not81.i = icmp eq i32 %i.bg, 0
  br i1 %.not81.i, label %.thread72.i, label %.lr.ph77.i.preheader

.lr.ph77.i.preheader:                             ; preds = %.preheader.i
  %umax = call i64 @llvm.umax.i64(i64 %i.j, i64 %.04143) ; 4 uses
  br label %.lr.ph77.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.e ] ; 2 uses
  %i.bn = load ptr, ptr %i.b, align 8
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %spec.select
  %i.bp = load i16, ptr %i.bo, align 2
  %i.bq = zext i16 %i.bp to i64
  %i.br = add nuw nsw i64 %i.bq, 1
  %i.bs = call ptr @slurm_xcalloc(i64 noundef %i.br, i64 noundef 16, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.1211, i32 noundef 4495, ptr noundef nonnull @__func__._dump_node_res) #19, !inline_history !40
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %indvars.iv.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %i.bs, ptr %i.bu, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bv = load ptr, ptr %i.x, align 8
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %spec.select
  %i.bx = load i16, ptr %i.bw, align 2
  %i.by = zext i16 %i.bx to i64
  %i.bz = icmp samesign ult i64 %indvars.iv.next.i, %i.by
  br i1 %i.bz, label %.lr.ph.i, label %.preheader.i, !llvm.loop !41

.lr.ph77.i:                                       ; preds = %.lr.ph77.i.preheader, %bb.i
  %.1 = phi i64 [ %i.cw, %bb.i ], [ %.04143, %.lr.ph77.i.preheader ] ; 4 uses
  %.06276.i = phi i32 [ %i.cx, %bb.i ], [ 0, %.lr.ph77.i.preheader ] ; 3 uses
  %exitcond.not = icmp eq i64 %.1, %umax
  br i1 %exitcond.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %.lr.ph77.i
  %i.ca = load ptr, ptr %i.w, align 8
  %i.cb = load ptr, ptr %i.b, align 8
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %spec.select
  %i.cd = load i16, ptr %i.cc, align 2
  %i.ce = zext i16 %i.cd to i32                   ; 2 uses
  %i.cf = udiv i32 %.06276.i, %i.ce               ; 2 uses
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.ca, i64 %i.cg ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = urem i32 %.06276.i, %i.ce               ; 2 uses
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.cl ; 2 uses
  store i32 %i.cf, ptr %i.ch, align 8
  store i32 %i.ck, ptr %i.cm, align 8
  %i.cn = load ptr, ptr %1, align 8
  %i.co = call i32 @slurm_bit_test(ptr noundef %i.cn, i64 noundef %.1) #19, !inline_history !40
  %.not67.i = icmp eq i32 %i.co, 0
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 4 uses
  br i1 %.not67.i, label %.sink.split.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cq = load i64, ptr %i.cp, align 8
  %i.cr = or i64 %i.cq, 2
  store i64 %i.cr, ptr %i.cp, align 8
  %i.cs = load ptr, ptr %i.y, align 8
  %i.ct = call i32 @slurm_bit_test(ptr noundef %i.cs, i64 noundef %.1) #19, !inline_history !40
  %.not68.i = icmp eq i32 %i.ct, 0
  br i1 %.not68.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cu = load i64, ptr %i.cp, align 8
  %i.cv = or i64 %i.cu, 4
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.h, %bb.f
  %.sink.i = phi i64 [ %i.cv, %bb.h ], [ -2, %bb.f ]
  store i64 %.sink.i, ptr %i.cp, align 8
  br label %bb.i

bb.i:                                             ; preds = %.sink.split.i, %bb.g
  %i.cw = add i64 %.1, 1                          ; 2 uses
  %i.cx = add nuw i32 %.06276.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cx, %i.bg
  br i1 %exitcond.not.i, label %.thread72.i, label %.lr.ph77.i, !llvm.loop !42

bb.j:                                             ; preds = %.lr.ph77.i
  %i.cy = call i32 (i32, i32, ptr, i32, ptr, ptr, ptr, ...) @on_error(i32 noundef 44718, i32 noundef 357, ptr noundef %3, i32 noundef 2025, ptr noundef nonnull @.str.436, ptr noundef nonnull @__func__._dump_node_res, ptr noundef nonnull @.str.1305, i64 noundef %umax, i64 noundef %i.j) #19, !inline_history !40
  %.not69.i = icmp eq i32 %i.cy, 0
  br i1 %.not69.i, label %.thread72.i, label %bb.k

.thread72.i:                                      ; preds = %bb.i, %bb.j, %.preheader.i
  %.3 = phi i64 [ %.04143, %.preheader.i ], [ %umax, %bb.j ], [ %i.cw, %bb.i ]
  %i.cz = call i32 @dump(ptr noundef nonnull %4, i64 noundef 48, ptr noundef null, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @parsers, i64 73344), ptr noundef %i.al, ptr noundef %3) #19, !inline_history !40
  %i.da = icmp eq i32 %i.cz, 0
  br label %bb.k

bb.k:                                             ; preds = %.thread72.i, %bb.j
  %.2 = phi i64 [ %.3, %.thread72.i ], [ %umax, %bb.j ]
  %.3.i = phi i1 [ %i.da, %.thread72.i ], [ false, %bb.j ]
  %i.db = load ptr, ptr %i.x, align 8
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %spec.select
  %i.dd = load i16, ptr %i.dc, align 2
  %.not82.i = icmp eq i16 %i.dd, 0
  br i1 %.not82.i, label %_dump_node_res.exit, label %.lr.ph79.i

.lr.ph79.i:                                       ; preds = %bb.k, %.lr.ph79.i
  %indvars.iv85.i = phi i64 [ %indvars.iv.next86.i, %.lr.ph79.i ], [ 0, %bb.k ] ; 2 uses
  %i.de = load ptr, ptr %i.w, align 8
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %indvars.iv85.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  call void @slurm_xfree(ptr noundef nonnull %i.dg) #19, !inline_history !40
  %indvars.iv.next86.i = add nuw nsw i64 %indvars.iv85.i, 1 ; 2 uses
  %i.dh = load ptr, ptr %i.x, align 8
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %spec.select
  %i.dj = load i16, ptr %i.di, align 2
  %i.dk = zext i16 %i.dj to i64
  %i.dl = icmp samesign ult i64 %indvars.iv.next86.i, %i.dk
  br i1 %i.dl, label %.lr.ph79.i, label %_dump_node_res.exit, !llvm.loop !43

_dump_node_res.exit:                              ; preds = %.lr.ph79.i, %bb.k
  call void @slurm_xfree(ptr noundef nonnull %i.w) #19, !inline_history !40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @free(ptr noundef %i.ad) #19
  %i.dm = add nuw nsw i64 %.046, 1
  br i1 %.3.i, label %bb.d, label %.critedge, !llvm.loop !44

bb.l:                                             ; preds = %.critedge
  call void @hostlist_destroy(ptr noundef nonnull %i.h) #19
  br label %bb.m

bb.m:                                             ; preds = %.critedge, %bb.l, %bb.a, %bb.b
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_parse_JOB_RES_NODES(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr noundef %3, ptr noundef %4) #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 2
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.b, label %_parse_disabled.exit

bb.b:                                             ; preds = %bb.a
  %i.g = call ptr @openapi_fmt_rel_path_str(ptr noundef nonnull %i.a, ptr noundef %4) #19
  %.pre.i = load i32, ptr %i.b, align 8
  br label %_parse_disabled.exit

_parse_disabled.exit:                             ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %.pre.i, %bb.b ], [ %i.c, %bb.a ]
  %i.i = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  call void (i32, i32, ptr, ptr, ptr, ptr, ...) @on_warn(i32 noundef 60138, i32 noundef %i.c, ptr noundef nonnull %3, ptr noundef %i.i, ptr noundef nonnull @__func__._parse_disabled, ptr noundef nonnull @.str.1144, ptr noundef nonnull @.str.1145, i32 noundef %i.h) #19
  call void @slurm_xfree(ptr noundef nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @_dump_STEP_INFO_MSG(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %i.a = tail call ptr @data_set_list(ptr noundef %2) #19 ; 0 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %.not18 = icmp eq i32 %i.c, 0
  br i1 %.not18, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8
  tail call void (i32, i32, ptr, ptr, ptr, ptr, ...) @on_warn(i32 noundef 44718, i32 noundef %i.f, ptr noundef %3, ptr noundef null, ptr noundef nonnull @__func__._dump_STEP_INFO_MSG, ptr noundef nonnull @.str.1306) #19
  br label %.critedge

bb.d:                                             ; preds = %.preheader, %find_parser_by_type.exit
  %.020 = phi i64 [ 0, %.preheader ], [ %i.n, %find_parser_by_type.exit ] ; 3 uses
  %i.g = load i32, ptr %i.b, align 8
  %i.h = zext i32 %i.g to i64
  %i.i = icmp samesign ult i64 %.020, %i.h
  br i1 %i.i, label %find_parser_by_type.exit, label %.critedge

find_parser_by_type.exit:                         ; preds = %bb.d
  %i.j = load ptr, ptr %i.d, align 8
  %i.k = getelementptr inbounds nuw [312 x i8], ptr %i.j, i64 %.020
  %i.l = tail call ptr @data_list_append(ptr noundef %2) #19
  %i.m = tail call i32 @dump(ptr noundef %i.k, i64 noundef 312, ptr noundef null, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @parsers, i64 51072), ptr noundef %i.l, ptr noundef %3) #19 ; 2 uses
  %i.n = add nuw nsw i64 %.020, 1
  %.not19 = icmp eq i32 %i.m, 0
  br i1 %.not19, label %bb.d, label %.critedge, !llvm.loop !45

.critedge:                                        ; preds = %bb.d, %find_parser_by_type.exit, %bb.c
  %.016 = phi i32 [ 0, %bb.c ], [ 0, %bb.d ], [ %i.m, %find_parser_by_type.exit ]
  ret i32 %.016
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_parse_STEP_INFO_MSG(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr noundef %3, ptr noundef %4) #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 2
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.b, label %_parse_disabled.exit

bb.b:                                             ; preds = %bb.a
  %i.g = call ptr @openapi_fmt_rel_path_str(ptr noundef nonnull %i.a, ptr noundef %4) #19
  %.pre.i = load i32, ptr %i.b, align 8
  br label %_parse_disabled.exit

_parse_disabled.exit:                             ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %.pre.i, %bb.b ], [ %i.c, %bb.a ]
  %i.i = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  call void (i32, i32, ptr, ptr, ptr, ptr, ...) @on_warn(i32 noundef 60138, i32 noundef %i.c, ptr noundef nonnull %3, ptr noundef %i.i, ptr noundef nonnull @__func__._parse_disabled, ptr noundef nonnull @.str.1144, ptr noundef nonnull @.str.1145, i32 noundef %i.h) #19
  call void @slurm_xfree(ptr noundef nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @_dump_PARTITION_INFO_MSG(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %i.a = tail call ptr @data_set_list(ptr noundef %2) #19 ; 0 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %.not18 = icmp eq i32 %i.c, 0
  br i1 %.not18, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8
  tail call void (i32, i32, ptr, ptr, ptr, ptr, ...) @on_warn(i32 noundef 44718, i32 noundef %i.f, ptr noundef %3, ptr noundef null, ptr noundef nonnull @__func__._dump_PARTITION_INFO_MSG, ptr noundef nonnull @.str.1307) #19
  br label %.critedge

bb.d:                                             ; preds = %.preheader, %find_parser_by_type.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %find_parser_by_type.exit ] ; 3 uses
  %i.g = load i32, ptr %i.b, align 8
  %i.h = zext i32 %i.g to i64
  %i.i = icmp samesign ult i64 %indvars.iv, %i.h
  br i1 %i.i, label %find_parser_by_type.exit, label %.critedge

find_parser_by_type.exit:                         ; preds = %bb.d
  %i.j = load ptr, ptr %i.d, align 8
  %i.k = getelementptr inbounds nuw [240 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = tail call ptr @data_list_append(ptr noundef %2) #19
  %i.m = tail call i32 @dump(ptr noundef %i.k, i64 noundef 240, ptr noundef null, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @parsers, i64 51456), ptr noundef %i.l, ptr noundef %3) #19 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not19 = icmp eq i32 %i.m, 0
  br i1 %.not19, label %bb.d, label %.critedge, !llvm.loop !46

.critedge:                                        ; preds = %bb.d, %find_parser_by_type.exit, %bb.c
  %.016 = phi i32 [ 0, %bb.c ], [ 0, %bb.d ], [ %i.m, %find_parser_by_type.exit ]
  ret i32 %.016
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_parse_PARTITION_INFO_MSG(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr noundef %3, ptr noundef %4) #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
end_hunk_0
begin_hunk_1_@_dump_uint64_shares_tres_list:bb.a
  %i.d = load i32, ptr %i.c, align 8
  %.not14 = icmp eq i32 %i.d, 0
  br i1 %.not14, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  br label %bb.b

.preheader:                                       ; preds = %bb.b, %bb.a
  %i.f = call i32 @dump(ptr noundef nonnull %i.a, i64 noundef 8, ptr noundef null, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @parsers, i64 129600), ptr noundef %2, ptr noundef %3) #19
  %i.g = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.h = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 16, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.1211, i32 noundef 6572, ptr noundef nonnull @__func__._dump_uint64_shares_tres_list) #19 ; 3 uses
  tail call void @list_append(ptr noundef %i.b, ptr noundef %i.h) #19
  %i.i = load ptr, ptr %i.e, align 8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8
  store ptr %i.k, ptr %i.h, align 8
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.o = load i32, ptr %i.c, align 8
  %i.p = zext i32 %i.o to i64
  %i.q = icmp samesign ult i64 %indvars.iv.next, %i.p
  br i1 %i.q, label %bb.b, label %.preheader, !llvm.loop !69

bb.c:                                             ; preds = %.preheader
  call void @list_destroy(ptr noundef nonnull %i.g) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define internal range(i32 1, 5) i32 @_foreach_kill_jobs_job(ptr noundef %0, ptr nofree noundef captures(none) initializes((4, 8)) %1) #5 {
find_parser_by_type.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call i32 @parse(ptr noundef %i.h, i64 noundef 8, ptr noundef nonnull @parsers, ptr noundef %0, ptr noundef %i.j, ptr noundef %i.l) #19 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.m, ptr %i.n, align 4
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %find_parser_by_type.exit
  %i.o = load i32, ptr %i.e, align 8
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.e, align 8
  br label %bb.b

bb.b:                                             ; preds = %find_parser_by_type.exit, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 4, %find_parser_by_type.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @_parse_topology_conf(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #5 {
find_parser_by_type.exit:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds [56 x i8], ptr %0, i64 %i.a
  %i.c = tail call i32 @parse(ptr noundef %i.b, i64 noundef 56, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @parsers, i64 79488), ptr noundef %2, ptr noundef %3, ptr noundef %4) #19
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal range(i32 1, 5) i32 @_foreach_topo_array(ptr noundef %0, ptr nofree noundef captures(none) %1) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call i32 %i.b(ptr noundef %i.d, i32 noundef %i.f, ptr noundef %0, ptr noundef %i.h, ptr noundef %i.j) #19 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load ptr, ptr %i.l, align 8
  store i32 %i.k, ptr %i.m, align 4
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = load i32, ptr %i.e, align 4
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.e, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 4, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @_parse_switch_conf(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #5 {
find_parser_by_type.exit:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds [32 x i8], ptr %0, i64 %i.a
  %i.c = tail call i32 @parse(ptr noundef %i.b, i64 noundef 32, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @parsers, i64 81792), ptr noundef %2, ptr noundef %3, ptr noundef %4) #19
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal i32 @_parse_block_conf(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #5 {
find_parser_by_type.exit:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds [16 x i8], ptr %0, i64 %i.a
  %i.c = tail call i32 @parse(ptr noundef %i.b, i64 noundef 16, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @parsers, i64 82176), ptr noundef %2, ptr noundef %3, ptr noundef %4) #19
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal i32 @_parse_ring_conf(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #5 {
find_parser_by_type.exit:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds [16 x i8], ptr %0, i64 %i.a
  %i.c = tail call i32 @parse(ptr noundef %i.b, i64 noundef 16, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @parsers, i64 82560), ptr noundef %2, ptr noundef %3, ptr noundef %4) #19
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal i32 @_parse_torus3d_conf(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #5 {
find_parser_by_type.exit:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds [56 x i8], ptr %0, i64 %i.a
  %i.c = tail call i32 @parse(ptr noundef %i.b, i64 noundef 56, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @parsers, i64 82944), ptr noundef %2, ptr noundef %3, ptr noundef %4) #19
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal i32 @_parse_torus3d_placement(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #5 {
find_parser_by_type.exit:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds [18 x i8], ptr %0, i64 %i.a
  %i.c = tail call i32 @parse(ptr noundef %i.b, i64 noundef 18, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @parsers, i64 83712), ptr noundef %2, ptr noundef %3, ptr noundef %4) #19
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal i32 @_parse_torus3d_region(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #5 {
find_parser_by_type.exit:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds [24 x i8], ptr %0, i64 %i.a
  %i.c = tail call i32 @parse(ptr noundef %i.b, i64 noundef 24, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @parsers, i64 84096), ptr noundef %2, ptr noundef %3, ptr noundef %4) #19
  ret i32 %i.c
}

declare ptr @data_key_get_const(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @slurm_free_kill_jobs_response_msg(ptr noundef) local_unnamed_addr #6

declare void @slurmdb_init_assoc_rec(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

declare void @slurmdb_init_instance_rec(ptr noundef) local_unnamed_addr #6

declare void @slurmdb_init_add_assoc_cond(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

declare void @slurmdb_init_wckey_rec(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

declare void @slurmdb_init_qos_rec(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #6

declare void @slurmdb_init_cluster_rec(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

declare void @slurm_init_part_desc_msg(ptr noundef) local_unnamed_addr #6

declare void @slurm_free_partition_info_members(ptr noundef) local_unnamed_addr #6

declare void @slurm_init_job_desc_msg(ptr noundef) local_unnamed_addr #6

declare void @slurm_free_shares_request_msg(ptr noundef) local_unnamed_addr #6

declare void @slurm_init_resv_desc_msg(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind }
attributes #20 = { memory(none) }
attributes #21 = { noreturn nounwind }
attributes #22 = { nounwind willreturn memory(read) }
attributes #23 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !{!0, !10, !11}
!1 = distinct !{null}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{i8 0, i8 2}
!13 = !{}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10, !11}
!27 = distinct !{null}
!28 = distinct !{!28, !10, !11}
!29 = distinct !{!29, !10, !11}
!30 = distinct !{!30, !10, !11}
!31 = distinct !{!31, !10, !11}
!32 = distinct !{!32, !10, !11}
!33 = distinct !{!33, !10, !11}
!34 = distinct !{!34, !10, !11}
!35 = distinct !{!35, !10, !11}
!36 = distinct !{!36, !10, !11}
!37 = distinct !{!37, !10, !11}
!38 = distinct !{!38, !10, !11}
!39 = distinct !{!39, !10, !11}
!40 = distinct !{null}
!41 = distinct !{!41, !10, !11}
!42 = distinct !{!42, !10, !11}
!43 = distinct !{!43, !10, !11}
!44 = distinct !{!44, !10, !11}
!45 = distinct !{!45, !10, !11}
!46 = distinct !{!46, !10, !11}
!47 = distinct !{!47, !10, !11}
!48 = distinct !{!48, !10, !11}
!49 = distinct !{null}
!50 = distinct !{!50, !10, !11}
!51 = distinct !{!51, !10, !11}
!52 = distinct !{!52, !10, !11}
!53 = distinct !{!53, !10, !11}
!54 = distinct !{!54, !10, !11}
!55 = distinct !{!55, !10, !11}
!56 = distinct !{!56, !10, !11}
!57 = distinct !{!57, !10, !11}
!58 = distinct !{!58, !10, !11}
!59 = distinct !{!59, !10, !11}
!60 = distinct !{!60, !10, !11}
!61 = distinct !{!61, !10, !11}
!62 = distinct !{!62, !10, !11}
!63 = distinct !{!63, !10, !11}
!64 = distinct !{!64, !10, !11}
!65 = distinct !{!65, !10, !11}
!66 = distinct !{!66, !10, !11}
!67 = distinct !{!67, !10, !11}
!68 = distinct !{!68, !10, !11}
!69 = distinct !{!69, !10, !11}
end_hunk_1
