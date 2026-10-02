Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/switch_record?download=true
inline.NumInlined: 11
inline.NumDeleted: 6
begin_hunk_0_@switch_record_validate:bb.a
  %.1140248 = phi ptr [ %i.fg, %bb.am ], [ %i.di, %.lr.ph253.preheader ] ; 10 uses
  %.1146245 = phi i32 [ %i.ff, %bb.am ], [ 0, %.lr.ph253.preheader ] ; 2 uses
  %i.dk = load i32, ptr %.1140248, align 8
  %.not171 = icmp eq i32 %i.dk, -1
  br i1 %.not171, label %bb.aa, label %bb.am

bb.aa:                                            ; preds = %.lr.ph253
  %i.dl = getelementptr inbounds nuw i8, ptr %.1140248, i64 40
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = call ptr @hostlist_create(ptr noundef %i.dm) #7 ; 4 uses
  %.not172 = icmp eq ptr %i.dn, null
  br i1 %.not172, label %bb.ab, label %.preheader203

.preheader203:                                    ; preds = %bb.aa
  %i.do = call ptr @hostlist_pop(ptr noundef nonnull %i.dn) #7 ; 3 uses
  store ptr %i.do, ptr %i.e, align 8
  %.not173242 = icmp eq ptr %i.do, null
  br i1 %.not173242, label %.loopexit204, label %.lr.ph243

.lr.ph243:                                        ; preds = %.preheader203
  %i.dp = getelementptr inbounds nuw i8, ptr %.1140248, i64 16 ; 5 uses
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dq = getelementptr inbounds nuw i8, ptr %.1140248, i64 40
  %i.dr = load ptr, ptr %i.dq, align 8
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.8, ptr noundef %i.dr) #8
  unreachable

bb.ac:                                            ; preds = %.lr.ph243, %bb.al
  %i.ds = phi ptr [ %i.do, %.lr.ph243 ], [ %i.fd, %bb.al ]
  %i.dt = load i32, ptr %i.ba, align 8
  %i.du = icmp sgt i32 %i.dt, 0
  br i1 %i.du, label %.lr.ph.preheader.i, label %switch_record_get_switch_inx.exit.thread

.lr.ph.preheader.i:                               ; preds = %bb.ac
  %i.dv = load ptr, ptr %i.k, align 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ad, %.lr.ph.preheader.i
  %.011.i = phi ptr [ %i.eb, %bb.ad ], [ %i.dv, %.lr.ph.preheader.i ] ; 2 uses
  %.0810.i = phi i32 [ %i.ea, %bb.ad ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.011.i, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = call i32 @xstrcmp(ptr noundef %i.dx, ptr noundef nonnull %i.ds) #7
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %switch_record_get_switch_inx.exit, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i
  %i.ea = add nuw nsw i32 %.0810.i, 1             ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.011.i, i64 72
  %i.ec = load i32, ptr %i.ba, align 8
  %i.ed = icmp slt i32 %i.ea, %i.ec
  br i1 %i.ed, label %.lr.ph.i, label %switch_record_get_switch_inx.exit.thread, !llvm.loop !0

switch_record_get_switch_inx.exit:                ; preds = %.lr.ph.i
  %i.ee = icmp eq i32 %.0810.i, %.1146245
  br i1 %i.ee, label %switch_record_get_switch_inx.exit.thread, label %bb.ae

switch_record_get_switch_inx.exit.thread:         ; preds = %bb.ac, %switch_record_get_switch_inx.exit, %bb.ad
  %i.ef = getelementptr inbounds nuw i8, ptr %.1140248, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = load ptr, ptr %i.e, align 8
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.9, ptr noundef %i.eg, ptr noundef %i.eh) #8
  unreachable

bb.ae:                                            ; preds = %switch_record_get_switch_inx.exit
  %i.ei = load ptr, ptr %i.k, align 8
  %i.ej = zext nneg i32 %.0810.i to i64           ; 3 uses
  %i.ek = getelementptr inbounds nuw [72 x i8], ptr %i.ei, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 8            ; 2 uses
  %i.em = icmp eq i32 %i.el, -1
  br i1 %i.em, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  store i32 -1, ptr %.1140248, align 8
  %i.en = load ptr, ptr %i.dp, align 8
  %.not174 = icmp eq ptr %i.en, null
  br i1 %.not174, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @slurm_bit_free(ptr noundef nonnull %i.dp) #7
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  store ptr null, ptr %i.dp, align 8
  %i.eo = load ptr, ptr %i.e, align 8
  call void @free(ptr noundef %i.eo) #7
  br label %.loopexit204

bb.ai:                                            ; preds = %bb.ae
  %i.ep = load i32, ptr %.1140248, align 8        ; 2 uses
  %i.eq = icmp eq i32 %i.ep, -1
  %i.er = add nuw nsw i32 %i.el, 1                ; 2 uses
  br i1 %i.eq, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 %i.er, ptr %.1140248, align 8
  %i.es = load ptr, ptr %i.k, align 8
  %i.et = getelementptr inbounds nuw [72 x i8], ptr %i.es, i64 %i.ej
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = call ptr @bit_copy(ptr noundef %i.ev) #7
  store ptr %i.ew, ptr %i.dp, align 8
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %. = call i32 @llvm.smax.i32(i32 %i.ep, i32 %i.er)
  store i32 %., ptr %.1140248, align 8
  %i.ex = load ptr, ptr %i.dp, align 8
  %i.ey = load ptr, ptr %i.k, align 8
  %i.ez = getelementptr inbounds nuw [72 x i8], ptr %i.ey, i64 %i.ej
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8
  call void @bit_or(ptr noundef %i.ex, ptr noundef %i.fb) #7
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.fc = load ptr, ptr %i.e, align 8
  call void @free(ptr noundef %i.fc) #7
  %i.fd = call ptr @hostlist_pop(ptr noundef nonnull %i.dn) #7 ; 3 uses
  store ptr %i.fd, ptr %i.e, align 8
  %.not173 = icmp eq ptr %i.fd, null
  br i1 %.not173, label %.loopexit204, label %bb.ac, !llvm.loop !27

.loopexit204:                                     ; preds = %bb.al, %.preheader203, %bb.ah
  %.1 = phi i1 [ false, %bb.ah ], [ %.0134251, %.preheader203 ], [ %.0134251, %bb.al ]
  call void @hostlist_destroy(ptr noundef nonnull %i.dn) #7
  %.pre = load i32, ptr %i.an, align 8
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph253, %.loopexit204
  %i.fe = phi i32 [ %i.dj, %.lr.ph253 ], [ %.pre, %.loopexit204 ] ; 3 uses
  %.2 = phi i1 [ %.0134251, %.lr.ph253 ], [ %.1, %.loopexit204 ] ; 2 uses
  %i.ff = add nuw nsw i32 %.1146245, 1            ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.1140248, i64 72
  %i.fh = icmp slt i32 %i.ff, %i.fe
  br i1 %i.fh, label %.lr.ph253, label %._crit_edge254, !llvm.loop !28

._crit_edge254:                                   ; preds = %bb.am
  br i1 %.2, label %.split, label %bb.an

bb.an:                                            ; preds = %._crit_edge254
  %i.fi = add nuw nsw i32 %.0150, 1               ; 2 uses
  %exitcond319 = icmp eq i32 %i.fi, 22
  br i1 %exitcond319, label %.split259, label %.preheader206.split, !llvm.loop !29

.split259:                                        ; preds = %bb.an
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.10) #8
  unreachable

.split.thread:                                    ; preds = %.preheader206, %bb.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.fj, align 4
  br label %._crit_edge264

.split:                                           ; preds = %.preheader206.split, %._crit_edge254
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.pre348 = load i32, ptr %.phi.trans.insert, align 8 ; 5 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 4 uses
  store i32 0, ptr %i.fk, align 4
  %i.fl = icmp sgt i32 %.pre348, 0
  br i1 %i.fl, label %.lr.ph263, label %._crit_edge264

.lr.ph263:                                        ; preds = %.split
  %i.fm = load ptr, ptr %i.k, align 8             ; 9 uses
  %i.fn = zext nneg i32 %.pre348 to i64           ; 2 uses
  %min.iters.check = icmp ult i32 %.pre348, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph263
  %i.fo = getelementptr i8, ptr %i.k, i64 16
  %i.fp = add nsw i32 %.pre348, -1
  %i.fq = zext i32 %i.fp to i64
  %i.fr = mul nuw nsw i64 %i.fq, 72
  %i.fs = getelementptr i8, ptr %i.fm, i64 %i.fr
  %i.ft = getelementptr i8, ptr %i.fs, i64 4
  %bound0 = icmp ult ptr %i.fk, %i.ft
  %bound1 = icmp ult ptr %i.fm, %i.fo
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fn, 2147483644              ; 4 uses
  %i.fu = mul nuw nsw i64 %n.vec, 72
  %i.fv = getelementptr i8, ptr %i.fm, i64 %i.fu
  %i.fw = trunc nuw nsw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.gj, %vector.body ]
  %i.fx = mul i64 %index, 72                      ; 4 uses
  %next.gep = getelementptr i8, ptr %i.fm, i64 %i.fx
  %i.fy = getelementptr i8, ptr %i.fm, i64 %i.fx
  %next.gep470 = getelementptr i8, ptr %i.fy, i64 72
  %i.fz = getelementptr i8, ptr %i.fm, i64 %i.fx
  %next.gep471 = getelementptr i8, ptr %i.fz, i64 144
  %i.ga = getelementptr i8, ptr %i.fm, i64 %i.fx
  %next.gep472 = getelementptr i8, ptr %i.ga, i64 216
  %i.gb = load i32, ptr %next.gep, align 8, !alias.scope !56
  %i.gc = load i32, ptr %next.gep470, align 8, !alias.scope !56
  %i.gd = load i32, ptr %next.gep471, align 8, !alias.scope !56
  %i.ge = load i32, ptr %next.gep472, align 8, !alias.scope !56
  %i.gf = insertelement <4 x i32> poison, i32 %i.gb, i64 0
  %i.gg = insertelement <4 x i32> %i.gf, i32 %i.gc, i64 1
  %i.gh = insertelement <4 x i32> %i.gg, i32 %i.gd, i64 2
  %i.gi = insertelement <4 x i32> %i.gh, i32 %i.ge, i64 3
  %i.gj = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %i.gi) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gk = icmp eq i64 %index.next, %n.vec
  br i1 %i.gk, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %i.gl = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.gj) ; 2 uses
  store i32 %i.gl, ptr %i.fk, align 4, !alias.scope !58, !noalias !56
  %cmp.n = icmp eq i64 %n.vec, %i.fn
  br i1 %cmp.n, label %._crit_edge264, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph263, %middle.block
  %.182265.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph263 ], [ %i.gl, %middle.block ]
  %.2141261.ph = phi ptr [ %i.fm, %vector.memcheck ], [ %i.fm, %.lr.ph263 ], [ %i.fv, %middle.block ]
  %.2147260.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph263 ], [ %i.fw, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.182265 = phi i32 [ %.182, %scalar.ph ], [ %.182265.ph, %scalar.ph.preheader ]
  %.2141261 = phi ptr [ %i.go, %scalar.ph ], [ %.2141261.ph, %scalar.ph.preheader ] ; 2 uses
  %.2147260 = phi i32 [ %i.gn, %scalar.ph ], [ %.2147260.ph, %scalar.ph.preheader ]
  %i.gm = load i32, ptr %.2141261, align 8
  %.182 = call i32 @llvm.smax.i32(i32 %.182265, i32 %i.gm) ; 2 uses
  store i32 %.182, ptr %i.fk, align 4
  %i.gn = add nuw nsw i32 %.2147260, 1            ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.2141261, i64 72
  %i.gp = icmp slt i32 %i.gn, %.pre348
  br i1 %i.gp, label %scalar.ph, label %._crit_edge264, !llvm.loop !34

._crit_edge264:                                   ; preds = %scalar.ph, %middle.block, %.split.thread, %.split
  %i.gq = load ptr, ptr %i.h, align 8             ; 2 uses
  %.not164 = icmp eq ptr %i.gq, null
  br i1 %.not164, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge264
  call void @bit_not(ptr noundef nonnull %i.gq) #7
  %i.gr = load ptr, ptr %i.h, align 8
  %i.gs = call i32 @bit_set_count(ptr noundef %i.gr) #7 ; 2 uses
  %i.gt = icmp sgt i32 %i.gs, 0
  br i1 %i.gt, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gu = load ptr, ptr %i.h, align 8
  %i.gv = call ptr @bitmap2node_name(ptr noundef %i.gu) #7 ; 2 uses
  store ptr %i.gv, ptr %i.e, align 8
  call void (ptr, ...) @warning(ptr noundef nonnull @.str.11, i32 noundef %i.gs, ptr noundef %i.gv) #7
  call void @slurm_xfree(ptr noundef nonnull %i.e) #7
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %i.gw = load ptr, ptr %i.h, align 8
  %.not165 = icmp eq ptr %i.gw, null
  br i1 %.not165, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @slurm_bit_free(ptr noundef nonnull %i.h) #7
  br label %bb.at

bb.as:                                            ; preds = %._crit_edge264
  %i.gx = load i32, ptr @node_record_count, align 4
  %i.gy = sext i32 %i.gx to i64
  %i.gz = call ptr @bit_alloc(i64 noundef %i.gy) #7
  br label %bb.at

bb.at:                                            ; preds = %bb.aq, %bb.ar, %bb.as
  %storemerge = phi ptr [ %i.gz, %bb.as ], [ null, %bb.ar ], [ null, %bb.aq ]
  store ptr %storemerge, ptr %i.h, align 8
  %i.ha = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not166 = icmp eq ptr %i.ha, null
  br i1 %.not166, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hb = call ptr @hostlist_ranged_string_xmalloc(ptr noundef nonnull %i.ha) #7 ; 2 uses
  store ptr %i.hb, ptr %i.f, align 8
  call void (ptr, ...) @warning(ptr noundef nonnull @.str.12, ptr noundef %i.hb) #7
  call void @slurm_xfree(ptr noundef nonnull %i.f) #7
  %i.hc = load ptr, ptr %i.d, align 8
  call void @hostlist_destroy(ptr noundef %i.hc) #7
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.hd = load ptr, ptr %i.g, align 8
  %i.he = call i32 @bit_set_count(ptr noundef %i.hd) #7
  %i.hf = icmp sgt i32 %i.he, 0
  br i1 %i.hf, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.hg = load ptr, ptr %i.g, align 8
  %i.hh = call ptr @bitmap2node_name(ptr noundef %i.hg) #7 ; 2 uses
  store ptr %i.hh, ptr %i.e, align 8
  call void (ptr, ...) @warning(ptr noundef nonnull @.str.13, ptr noundef %i.hh) #7
  call void @slurm_xfree(ptr noundef nonnull %i.e) #7
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %i.hi = load ptr, ptr %i.g, align 8
  %.not167 = icmp eq ptr %i.hi, null
  br i1 %.not167, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @slurm_bit_free(ptr noundef nonnull %i.g) #7
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  store ptr null, ptr %i.g, align 8
  %i.hj = load i32, ptr @active_node_record_count, align 4
  %i.hk = load i32, ptr %i.an, align 8            ; 2 uses
  %i.hl = icmp sgt i32 %i.hk, 0
  br i1 %i.hl, label %.lr.ph270, label %.preheader196

.preheader202:                                    ; preds = %bb.bd
  %i.hm = icmp sgt i32 %i.jp, 0
  br i1 %i.hm, label %.lr.ph273, label %.preheader196

.lr.ph270:                                        ; preds = %bb.az, %bb.bd
  %indvars.iv320 = phi i64 [ %indvars.iv.next321, %bb.bd ], [ 0, %bb.az ] ; 8 uses
  %.0136268 = phi i1 [ %spec.select, %bb.bd ], [ false, %bb.az ]
  %i.hn = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.ho = getelementptr inbounds nuw [72 x i8], ptr %i.hn, i64 %indvars.iv320 ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 8
  %.not170 = icmp eq i32 %i.hp, 0
  br i1 %.not170, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph270
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 40
  %i.hr = load ptr, ptr %i.hq, align 8
  %i.hs = call ptr @hostlist_create(ptr noundef %i.hr) #7 ; 3 uses
  %i.ht = call i32 @hostlist_count(ptr noundef %i.hs) #7
  %i.hu = trunc i32 %i.ht to i16
  %i.hv = load ptr, ptr %i.k, align 8
  %i.hw = getelementptr inbounds nuw [72 x i8], ptr %i.hv, i64 %indvars.iv320
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 34
  store i16 %i.hu, ptr %i.hx, align 2
  %i.hy = load ptr, ptr %i.k, align 8
  %i.hz = getelementptr inbounds nuw [72 x i8], ptr %i.hy, i64 %indvars.iv320
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 34
  %i.ib = load i16, ptr %i.ia, align 2
  %i.ic = zext i16 %i.ib to i64
  %i.id = shl nuw nsw i64 %i.ic, 1
  %i.ie = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef %i.id, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.1, i32 noundef 251, ptr noundef nonnull @__func__._find_child_switches) #7
  %i.if = load ptr, ptr %i.k, align 8
  %i.ig = getelementptr inbounds nuw [72 x i8], ptr %i.if, i64 %indvars.iv320
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 64
  store ptr %i.ie, ptr %i.ih, align 8
  %i.ii = call ptr @hostlist_iterator_create(ptr noundef %i.hs) #7 ; 3 uses
  %i.ij = call ptr @hostlist_next(ptr noundef %i.ii) #7 ; 2 uses
  %.not31.i = icmp eq ptr %i.ij, null
  br i1 %.not31.i, label %_find_child_switches.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.ba
  %i.ik = trunc i64 %indvars.iv320 to i16
  br label %.preheader.i

.preheader.i:                                     ; preds = %.loopexit.i, %.preheader.lr.ph.i
  %i.il = phi ptr [ %i.ij, %.preheader.lr.ph.i ], [ %i.ji, %.loopexit.i ] ; 2 uses
  %.032.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %.1.i, %.loopexit.i ] ; 4 uses
  %i.im = load i32, ptr %i.an, align 8
  %i.in = icmp sgt i32 %i.im, 0
  br i1 %i.in, label %.lr.ph.i184, label %.loopexit.i

.lr.ph.i184:                                      ; preds = %.preheader.i, %bb.bc
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.bc ], [ 0, %.preheader.i ] ; 4 uses
  %i.io = load ptr, ptr %i.k, align 8
  %i.ip = getelementptr inbounds nuw [72 x i8], ptr %i.io, i64 %indvars.iv.i
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8
  %i.is = call i32 @xstrcmp(ptr noundef nonnull %i.il, ptr noundef %i.ir) #7
  %i.it = icmp eq i32 %i.is, 0
  br i1 %i.it, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.lr.ph.i184
  %i.iu = trunc i64 %indvars.iv.i to i16
  %i.iv = load ptr, ptr %i.k, align 8
  %i.iw = getelementptr inbounds nuw [72 x i8], ptr %i.iv, i64 %indvars.iv320
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 64
  %i.iy = load ptr, ptr %i.ix, align 8
  %i.iz = sext i32 %.032.i to i64
  %i.ja = getelementptr inbounds [2 x i8], ptr %i.iy, i64 %i.iz
  store i16 %i.iu, ptr %i.ja, align 2
  %i.jb = load ptr, ptr %i.k, align 8
  %i.jc = getelementptr inbounds nuw [72 x i8], ptr %i.jb, i64 %indvars.iv.i
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 36
  store i16 %i.ik, ptr %i.jd, align 4
  %i.je = add nsw i32 %.032.i, 1
  br label %.loopexit.i

bb.bc:                                            ; preds = %.lr.ph.i184
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.jf = load i32, ptr %i.an, align 8
  %i.jg = sext i32 %i.jf to i64
  %i.jh = icmp slt i64 %indvars.iv.next.i, %i.jg
  br i1 %i.jh, label %.lr.ph.i184, label %.loopexit.i, !llvm.loop !35

.loopexit.i:                                      ; preds = %bb.bc, %bb.bb, %.preheader.i
  %.1.i = phi i32 [ %i.je, %bb.bb ], [ %.032.i, %.preheader.i ], [ %.032.i, %bb.bc ]
  call void @free(ptr noundef nonnull %i.il) #7
  %i.ji = call ptr @hostlist_next(ptr noundef %i.ii) #7 ; 2 uses
  %.not.i183 = icmp eq ptr %i.ji, null
  br i1 %.not.i183, label %_find_child_switches.exit, label %.preheader.i, !llvm.loop !36

_find_child_switches.exit:                        ; preds = %.loopexit.i, %bb.ba
  call void @hostlist_iterator_destroy(ptr noundef %i.ii) #7
  call void @hostlist_destroy(ptr noundef %i.hs) #7
  %.pre349 = load ptr, ptr %i.k, align 8
  br label %bb.bd

bb.bd:                                            ; preds = %_find_child_switches.exit, %.lr.ph270
  %i.jj = phi ptr [ %.pre349, %_find_child_switches.exit ], [ %i.hn, %.lr.ph270 ]
end_hunk_0
begin_hunk_1_@switch_record_update_switch_config:bb.a
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = sext i32 %1 to i64                       ; 4 uses
  %i.g = getelementptr inbounds [72 x i8], ptr %i.e, i64 %i.f
  %i.h = load i32, ptr %i.g, align 8
  %.not10 = icmp eq i32 %i.h, 0
  br i1 %.not10, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds [32 x i8], ptr %i.j, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  tail call void @slurm_xfree(ptr noundef nonnull %i.l) #7
  %i.m = load ptr, ptr %i.d, align 8
  %i.n = getelementptr inbounds [72 x i8], ptr %i.m, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call ptr @xstrdup(ptr noundef %i.p) #7
  %i.r = load ptr, ptr %i.i, align 8
  %i.s = getelementptr inbounds [32 x i8], ptr %i.r, i64 %i.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.q, ptr %i.t, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  ret void
}

declare i32 @get_log_level() local_unnamed_addr #2

declare void @log_var(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 2) i32 @_parse_switches(ptr nofree noundef writeonly captures(none) %0, i32 %1, ptr nofree readnone captures(none) %2, ptr noundef %3, ptr nofree readnone captures(none) %4, ptr noundef %5) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = tail call ptr @s_p_hashtbl_create(ptr noundef nonnull @_parse_switches._switch_options) #7 ; 5 uses
  %i.d = load ptr, ptr %5, align 8
  %i.e = tail call i32 @s_p_parse_line(ptr noundef %i.c, ptr noundef %i.d, ptr noundef nonnull %5) #7 ; 0 uses
  %i.f = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 32, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.1, i32 noundef 125, ptr noundef nonnull @__func__._parse_switches) #7 ; 8 uses
  %i.g = tail call ptr @xstrdup(ptr noundef %3) #7
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 4 uses
  store ptr %i.g, ptr %i.h, align 8
  %i.i = tail call i32 @s_p_get_uint32(ptr noundef %i.f, ptr noundef nonnull @.str.24, ptr noundef %i.c) #7
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.f, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.k = tail call i32 @s_p_get_string(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.25, ptr noundef %i.c) #7 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 4 uses
  %i.m = tail call i32 @s_p_get_string(ptr noundef nonnull %i.l, ptr noundef nonnull @.str.26, ptr noundef %i.c) #7 ; 0 uses
  tail call void @s_p_hashtbl_destroy(ptr noundef %i.c) #7
  %i.n = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.o = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.n) #9
  %i.p = icmp ugt i64 %i.o, 64
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.27, ptr noundef nonnull %i.n, i32 noundef 64) #7 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  tail call void @slurm_xfree(ptr noundef nonnull %i.j) #7
  tail call void @slurm_xfree(ptr noundef nonnull %i.h) #7
  tail call void @slurm_xfree(ptr noundef nonnull %i.l) #7
  call void @slurm_xfree(ptr noundef nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.j, align 8
  %.not22 = icmp eq ptr %i.r, null
  br i1 %.not22, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.l, align 8
  %.not23 = icmp eq ptr %i.s, null
  br i1 %.not23, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.28, ptr noundef nonnull %i.n) #7 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.a, align 8
  tail call void @slurm_xfree(ptr noundef nonnull %i.j) #7
  tail call void @slurm_xfree(ptr noundef nonnull %i.h) #7
  tail call void @slurm_xfree(ptr noundef nonnull %i.l) #7
  call void @slurm_xfree(ptr noundef nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  store ptr %i.f, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.d
  %.0 = phi i32 [ -1, %bb.d ], [ -1, %bb.g ], [ 1, %bb.h ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @_destroy_switches(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @slurm_xfree(ptr noundef nonnull %i.b) #7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @slurm_xfree(ptr noundef nonnull %i.c) #7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @slurm_xfree(ptr noundef nonnull %i.d) #7
  call void @slurm_xfree(ptr noundef nonnull %i.a) #7
  ret void
}

declare ptr @s_p_hashtbl_create(ptr noundef) local_unnamed_addr #2

declare i32 @s_p_parse_file(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @s_p_get_array(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @s_p_parse_line(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @s_p_get_uint32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @s_p_get_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

declare i32 @hostlist_count(ptr noundef) local_unnamed_addr #2

declare ptr @hostlist_iterator_create(ptr noundef) local_unnamed_addr #2

declare ptr @hostlist_next(ptr noundef) local_unnamed_addr #2

declare void @hostlist_iterator_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #6

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !{!0, !9, !10}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!"llvm.loop.unswitch.partial.disable"}
!12 = distinct !{!12, !9, !10}
!13 = distinct !{!13, !9, !10}
!14 = distinct !{!14, !9, !10}
!15 = distinct !{!15, !9, !10}
!16 = distinct !{!16, !9, !10, !11}
!17 = distinct !{!17, !9, !10, !11}
!18 = distinct !{!18, !9, !10, !11}
!19 = distinct !{!19, !9, !10}
!20 = distinct !{!20, !9, !10}
!21 = distinct !{!21, !9, !10}
!22 = distinct !{!22, !9, !10}
!23 = distinct !{!23, !9, !10}
!24 = distinct !{!24, !9, !10}
!25 = distinct !{!25, !9, !10}
!26 = distinct !{!26, !9, !10}
!27 = distinct !{!27, !9, !10}
!28 = distinct !{!28, !9, !10}
!29 = distinct !{!29, !10, !11}
!32 = distinct !{!32, !9, !10, !51, !52}
!34 = distinct !{!34, !9, !10, !51}
!35 = distinct !{!35, !9, !10}
!36 = distinct !{!36, !9, !10}
!37 = distinct !{!37, !9, !10}
!38 = distinct !{!38, !9, !10}
!39 = distinct !{!39, !9, !10}
!40 = distinct !{!40, !9, !10}
!41 = distinct !{!41, !9, !10}
!42 = distinct !{!42, !9, !10}
!43 = distinct !{!43, !9, !10, !11}
!44 = distinct !{!44, !9, !10, !11}
!45 = distinct !{!45, !9, !10}
!46 = distinct !{!46, !9, !10}
!47 = distinct !{!47, !9, !10}
!48 = distinct !{!48, !9, !10}
!49 = distinct !{!49, !9, !10, !11}
!51 = !{!"llvm.loop.isvectorized", i32 1}
!52 = !{!"llvm.loop.unroll.runtime.disable"}
!54 = distinct !{!54, i1 false, !"LVerDomain"}
!55 = distinct !{!55, !54}
!56 = !{!55}
!57 = distinct !{!57, !54}
!58 = !{!57}
end_hunk_1
