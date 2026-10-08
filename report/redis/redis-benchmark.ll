Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/redis-benchmark?download=true
inline.NumInlined: 91
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@readHandler:bb.a

bb.ag:                                            ; preds = %bb.ae
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !112 ; 3 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !114
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load i64, ptr %i.da, align 8, !tbaa !232
  %i.dc = trunc i64 %i.db to i32                  ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !114
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !232
  %i.dh = trunc i64 %i.dg to i32                  ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !114 ; 3 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !91
  %i.dl = icmp eq i32 %i.dk, 2
  br i1 %i.dl, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !111
  %i.do = icmp ugt i64 %i.dn, 2
  br i1 %i.do, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  call void @__assert_fail(ptr noundef nonnull @.str.191, ptr noundef nonnull @.str.164, i32 noundef 1313, ptr noundef nonnull @__PRETTY_FUNCTION__.fetchClusterSlotsConfiguration) #22
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 56
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !112
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !114
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !92 ; 2 uses
  %.not98.i = icmp eq ptr %i.du, null
  br i1 %.not98.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @__assert_fail(ptr noundef nonnull @.str.192, ptr noundef nonnull @.str.164, i32 noundef 1314, ptr noundef nonnull @__PRETTY_FUNCTION__.fetchClusterSlotsConfiguration) #22
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.dv = call ptr @hi_sdsnew(ptr noundef nonnull %i.du) #20 ; 5 uses
  %i.dw = call ptr @dictFind(ptr noundef %i.bl, ptr noundef %i.dv) #20 ; 2 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.dy = load ptr, ptr @stderr, align 8, !tbaa !40
  %i.dz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dy, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.182, ptr noundef %i.dv) #25 ; 0 uses
  %.not100.i = icmp eq ptr %i.dv, null
  br i1 %.not100.i, label %.critedge, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @hi_sdsfree(ptr noundef nonnull %i.dv) #20
  br label %.critedge

bb.ao:                                            ; preds = %bb.al
  call void @hi_sdsfree(ptr noundef %i.dv) #20
  %i.ea = call ptr @dictGetVal(ptr noundef nonnull %i.dw) #20 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 56 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !86 ; 2 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ee = call noalias dereferenceable_or_null(65536) ptr @zcalloc(i64 noundef 65536) #26 ; 2 uses
  store ptr %i.ee, ptr %i.eb, align 8, !tbaa !86
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.ef = phi ptr [ %i.ee, %bb.ap ], [ %i.ec, %bb.ao ] ; 5 uses
  %.not99122.i = icmp sgt i32 %i.dc, %i.dh
  br i1 %.not99122.i, label %._crit_edge126.i, label %.lr.ph125.i

.lr.ph125.i:                                      ; preds = %bb.aq
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 64 ; 10 uses
  %i.eh = add i32 %i.dh, 1
  %i.ei = sub i32 %i.eh, %i.dc
  %i.ej = sub i32 %i.dh, %i.dc
  %xtraiter = and i32 %i.ei, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph125.i, %.prol.preheader
  %.072123.i.prol = phi i32 [ %i.eo, %.prol.preheader ], [ %i.dc, %.lr.ph125.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph125.i ]
  %i.ek = load i32, ptr %i.eg, align 8, !tbaa !87 ; 2 uses
  %i.el = add nsw i32 %i.ek, 1
  store i32 %i.el, ptr %i.eg, align 8, !tbaa !87
  %i.em = sext i32 %i.ek to i64
  %i.en = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.em
  store i32 %.072123.i.prol, ptr %i.en, align 4, !tbaa !19
  %i.eo = add i32 %.072123.i.prol, 1              ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !221

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph125.i
  %.072123.i.unr = phi i32 [ %i.dc, %.lr.ph125.i ], [ %i.eo, %.prol.preheader ]
  %i.ep = icmp ult i32 %i.ej, 3
  br i1 %i.ep, label %._crit_edge126.i, label %.lr.ph125.i.new

.lr.ph125.i.new:                                  ; preds = %.prol.loopexit, %.lr.ph125.i.new
  %.072123.i = phi i32 [ %i.fj, %.lr.ph125.i.new ], [ %.072123.i.unr, %.prol.loopexit ] ; 5 uses
  %i.eq = load i32, ptr %i.eg, align 8, !tbaa !87 ; 2 uses
  %i.er = add nsw i32 %i.eq, 1
  store i32 %i.er, ptr %i.eg, align 8, !tbaa !87
  %i.es = sext i32 %i.eq to i64
  %i.et = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.es
  store i32 %.072123.i, ptr %i.et, align 4, !tbaa !19
  %i.eu = add i32 %.072123.i, 1
  %i.ev = load i32, ptr %i.eg, align 8, !tbaa !87 ; 2 uses
  %i.ew = add nsw i32 %i.ev, 1
  store i32 %i.ew, ptr %i.eg, align 8, !tbaa !87
  %i.ex = sext i32 %i.ev to i64
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.ex
  store i32 %i.eu, ptr %i.ey, align 4, !tbaa !19
  %i.ez = add i32 %.072123.i, 2
  %i.fa = load i32, ptr %i.eg, align 8, !tbaa !87 ; 2 uses
  %i.fb = add nsw i32 %i.fa, 1
  store i32 %i.fb, ptr %i.eg, align 8, !tbaa !87
  %i.fc = sext i32 %i.fa to i64
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.fc
  store i32 %i.ez, ptr %i.fd, align 4, !tbaa !19
  %i.fe = add i32 %.072123.i, 3                   ; 2 uses
  %i.ff = load i32, ptr %i.eg, align 8, !tbaa !87 ; 2 uses
  %i.fg = add nsw i32 %i.ff, 1
  store i32 %i.fg, ptr %i.eg, align 8, !tbaa !87
  %i.fh = sext i32 %i.ff to i64
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.fh
  store i32 %i.fe, ptr %i.fi, align 4, !tbaa !19
  %i.fj = add i32 %.072123.i, 4
  %exitcond.not.i.3 = icmp eq i32 %i.fe, %i.dh
  br i1 %exitcond.not.i.3, label %._crit_edge126.i, label %.lr.ph125.i.new, !llvm.loop !222

._crit_edge126.i:                                 ; preds = %.prol.loopexit, %.lr.ph125.i.new, %bb.aq
  %i.fk = add nuw i64 %.184127.i, 1               ; 2 uses
  %i.fl = load i64, ptr %i.ci, align 8, !tbaa !111
  %i.fm = icmp ult i64 %i.fk, %i.fl
  br i1 %i.fm, label %bb.ac, label %._crit_edge129.i, !llvm.loop !223

._crit_edge129.i:                                 ; preds = %._crit_edge126.i, %.preheader.i
  %i.fn = call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @config, i64 368)) #20 ; 0 uses
  store atomic i32 1, ptr getelementptr inbounds nuw (i8, ptr @config, i64 316) monotonic, align 4
  %i.fo = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 276), align 4, !tbaa !94 ; 2 uses
  %i.fp = icmp sgt i32 %i.fo, 0
  br i1 %i.fp, label %.lr.ph.preheader.i, label %updateClusterSlotsConfiguration.exit

.lr.ph.preheader.i:                               ; preds = %._crit_edge129.i
  %.pre17.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 280), align 8, !tbaa !95
  br label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %bb.as, %.lr.ph.preheader.i
  %i.fq = phi i32 [ %i.fo, %.lr.ph.preheader.i ], [ %i.gb, %bb.as ]
  %i.fr = phi ptr [ %.pre17.i, %.lr.ph.preheader.i ], [ %i.gc, %bb.as ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.as ] ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %indvars.iv.i
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !97 ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 56 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !86 ; 2 uses
  %.not.i88 = icmp eq ptr %i.fv, null
  br i1 %.not.i88, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i87
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 40 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !84
  store ptr %i.fv, ptr %i.fw, align 8, !tbaa !84
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ft, i64 64 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !87
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ft, i64 48
  store i32 %i.fz, ptr %i.ga, align 8, !tbaa !85
  store ptr null, ptr %i.fu, align 8, !tbaa !86
  store i32 0, ptr %i.fy, align 8, !tbaa !87
  call void @zfree(ptr noundef %i.fx) #20
  %.pre.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 280), align 8, !tbaa !95
  %.pre18.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 276), align 4, !tbaa !94
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.lr.ph.i87
  %i.gb = phi i32 [ %.pre18.i, %bb.ar ], [ %i.fq, %.lr.ph.i87 ] ; 2 uses
  %i.gc = phi ptr [ %.pre.i, %bb.ar ], [ %i.fr, %.lr.ph.i87 ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gd = sext i32 %i.gb to i64
  %i.ge = icmp slt i64 %indvars.iv.next.i, %i.gd
  br i1 %i.ge, label %.lr.ph.i87, label %updateClusterSlotsConfiguration.exit, !llvm.loop !6

updateClusterSlotsConfiguration.exit:             ; preds = %bb.as, %._crit_edge129.i
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 316) monotonic, align 4
  %i.gf = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @config, i64 320), i32 1 monotonic, align 8 ; 0 uses
  %i.gg = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @config, i64 368)) #20 ; 0 uses
  call void @freeReplyObject(ptr noundef nonnull %i.cg) #20
  call void @redisFree(ptr noundef %.073.lcssa.i) #20
  call void @dictRelease(ptr noundef %i.bl) #20
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 312) monotonic, align 8
  br label %fetchClusterSlotsConfiguration.exit.thread

.critedge:                                        ; preds = %._crit_edge.i, %bb.v, %bb.am, %bb.an, %bb.aa
  %.080.i.ph.a = phi ptr [ null, %bb.v ], [ %i.cg, %bb.am ], [ %i.cg, %bb.an ], [ %i.cg, %bb.aa ], [ null, %._crit_edge.i ]
  %.3.i.ph = phi ptr [ null, %bb.v ], [ %.073.lcssa.i, %bb.am ], [ %.073.lcssa.i, %bb.an ], [ %.073.lcssa.i, %bb.aa ], [ %.073.lcssa.i, %._crit_edge.i ]
  call void @freeReplyObject(ptr noundef %.080.i.ph.a) #20
  call void @redisFree(ptr noundef %.3.i.ph) #20
  call void @dictRelease(ptr noundef %i.bl) #20
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 312) monotonic, align 8
  call void @exit(i32 noundef 1) #24
  unreachable

bb.at:                                            ; preds = %bb.k
  %i.gh = load ptr, ptr @stderr, align 8, !tbaa !40
  %i.gi = load ptr, ptr %i.ao, align 8, !tbaa !81
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !82
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !92
  %i.gn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gh, ptr noundef nonnull @.str.179, ptr noundef %i.gi, i32 noundef %i.gk, ptr noundef %i.gm) #25 ; 0 uses
  br label %bb.av

bb.au:                                            ; preds = %bb.j
  %i.go = load ptr, ptr @stderr, align 8, !tbaa !40
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !92
  %i.gr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.go, ptr noundef nonnull @.str.180, ptr noundef %i.gq) #25 ; 0 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  call void @exit(i32 noundef 1) #24
  unreachable

fetchClusterSlotsConfiguration.exit.thread:       ; preds = %updateClusterSlotsConfiguration.exit, %bb.n, %bb.m, %.tail.thread, %bb.i
  %i.gs = load ptr, ptr %i.a, align 8, !tbaa !110
  call void @freeReplyObject(ptr noundef %i.gs) #20
  %i.gt = load i32, ptr %i.u, align 4, !tbaa !130 ; 2 uses
  %i.gu = icmp sgt i32 %i.gt, 0
  br i1 %i.gu, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %fetchClusterSlotsConfiguration.exit.thread
  %i.gv = add nsw i32 %i.gt, -1
  store i32 %i.gv, ptr %i.u, align 4, !tbaa !130
  %i.gw = load i32, ptr %i.p, align 8, !tbaa !133
  %i.gx = add nsw i32 %i.gw, -1                   ; 2 uses
  store i32 %i.gx, ptr %i.p, align 8, !tbaa !133
  %i.gy = load i32, ptr %i.v, align 8, !tbaa !131 ; 2 uses
  %i.gz = icmp sgt i32 %i.gy, 0
  br i1 %i.gz, label %bb.ax, label %clientDone.exit, !llvm.loop !224

bb.ax:                                            ; preds = %bb.aw
  %i.ha = load ptr, ptr %i.w, align 8, !tbaa !129
  %i.hb = zext nneg i32 %i.gy to i64
  %i.hc = call i32 @hi_sdsrange(ptr noundef %i.ha, i64 noundef %i.hb, i64 noundef -1) #20 ; 0 uses
  %i.hd = load i64, ptr %i.x, align 8, !tbaa !134 ; 5 uses
  %.not187 = icmp eq i64 %i.hd, 0
  br i1 %.not187, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ax
  %i.he = load i32, ptr %i.v, align 8, !tbaa !131
  %i.hf = load ptr, ptr %i.y, align 8, !tbaa !135 ; 2 uses
  %i.hg = sext i32 %i.he to i64
  %i.hh = sub nsw i64 0, %i.hg                    ; 3 uses
  %min.iters.check397 = icmp ult i64 %i.hd, 4
  br i1 %min.iters.check397, label %scalar.ph396.preheader, label %vector.ph398

vector.ph398:                                     ; preds = %.lr.ph
  %n.vec399 = and i64 %i.hd, -4                   ; 3 uses
  br label %vector.body400

vector.body400:                                   ; preds = %vector.body400, %vector.ph398
  %index401 = phi i64 [ 0, %vector.ph398 ], [ %index.next406, %vector.body400 ] ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %index401 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16 ; 2 uses
  %wide.load402 = load <2 x ptr>, ptr %i.hi, align 8, !tbaa !22
  %wide.load403 = load <2 x ptr>, ptr %i.hj, align 8, !tbaa !22
  %wide.gep404 = getelementptr inbounds i8, <2 x ptr> %wide.load402, i64 %i.hh
  %wide.gep405 = getelementptr inbounds i8, <2 x ptr> %wide.load403, i64 %i.hh
  store <2 x ptr> %wide.gep404, ptr %i.hi, align 8, !tbaa !22
  store <2 x ptr> %wide.gep405, ptr %i.hj, align 8, !tbaa !22
  %index.next406 = add nuw i64 %index401, 4       ; 2 uses
  %i.hk = icmp eq i64 %index.next406, %n.vec399
  br i1 %i.hk, label %middle.block407, label %vector.body400, !llvm.loop !225

middle.block407:                                  ; preds = %vector.body400
  %cmp.n408 = icmp eq i64 %i.hd, %n.vec399
  br i1 %cmp.n408, label %.preheader, label %scalar.ph396.preheader

scalar.ph396.preheader:                           ; preds = %.lr.ph, %middle.block407
  %.059179.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec399, %middle.block407 ]
  br label %scalar.ph396

.preheader:                                       ; preds = %scalar.ph396, %middle.block407, %bb.ax
  %i.hl = load i64, ptr %i.s, align 8, !tbaa !138 ; 5 uses
  %.not188 = icmp eq i64 %i.hl, 0
  br i1 %.not188, label %._crit_edge, label %.lr.ph181

.lr.ph181:                                        ; preds = %.preheader
  %i.hm = load i32, ptr %i.v, align 8, !tbaa !131
  %i.hn = load ptr, ptr %i.z, align 8, !tbaa !139 ; 2 uses
  %i.ho = sext i32 %i.hm to i64
  %i.hp = sub nsw i64 0, %i.ho                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.hl, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph181
  %n.vec = and i64 %i.hl, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %index ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %i.hq, align 8, !tbaa !22
  %wide.load394 = load <2 x ptr>, ptr %i.hr, align 8, !tbaa !22
  %wide.gep = getelementptr inbounds i8, <2 x ptr> %wide.load, i64 %i.hp
  %wide.gep395 = getelementptr inbounds i8, <2 x ptr> %wide.load394, i64 %i.hp
  store <2 x ptr> %wide.gep, ptr %i.hq, align 8, !tbaa !22
  store <2 x ptr> %wide.gep395, ptr %i.hr, align 8, !tbaa !22
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hs = icmp eq i64 %index.next, %n.vec
  br i1 %i.hs, label %middle.block, label %vector.body, !llvm.loop !226

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hl, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph181, %middle.block
  %.160180.ph = phi i64 [ 0, %.lr.ph181 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph396:                                     ; preds = %scalar.ph396.preheader, %scalar.ph396
  %.059179 = phi i64 [ %i.hw, %scalar.ph396 ], [ %.059179.ph, %scalar.ph396.preheader ] ; 2 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %.059179 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !22
  %i.hv = getelementptr inbounds i8, ptr %i.hu, i64 %i.hh
  store ptr %i.hv, ptr %i.ht, align 8, !tbaa !22
  %i.hw = add nuw i64 %.059179, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.hw, %i.hd
  br i1 %exitcond.not, label %.preheader, label %scalar.ph396, !llvm.loop !227

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.160180 = phi i64 [ %i.ia, %scalar.ph ], [ %.160180.ph, %scalar.ph.preheader ] ; 2 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %.160180 ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !22
  %i.hz = getelementptr inbounds i8, ptr %i.hy, i64 %i.hp
  store ptr %i.hz, ptr %i.hx, align 8, !tbaa !22
  %i.ia = add nuw i64 %.160180, 1                 ; 2 uses
  %exitcond249.not = icmp eq i64 %i.ia, %i.hl
  br i1 %exitcond249.not, label %._crit_edge, label %scalar.ph, !llvm.loop !228

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.preheader
  store i32 0, ptr %i.v, align 8, !tbaa !131
  %.pre = load i32, ptr %i.p, align 8, !tbaa !133
  br label %clientDone.exit, !llvm.loop !224

bb.ay:                                            ; preds = %fetchClusterSlotsConfiguration.exit.thread
  %i.ib = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @config, i64 136), i32 1 monotonic, align 8
  %i.ic = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 128), align 8, !tbaa !35
  %i.id = icmp slt i32 %i.ib, %i.ic
  br i1 %i.id, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %bb.ay
  %i.ie = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 256), align 8, !tbaa !59
  %i.if = icmp eq i32 %i.ie, 0
  %i.ig = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 296), align 8, !tbaa !75 ; 2 uses
  %i.ih = load i64, ptr %i.b, align 8, !tbaa !144
  %spec.select = call i64 @llvm.smin.i64(i64 %i.ih, i64 3000000) ; 2 uses
  br i1 %i.if, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ii = call zeroext i1 @hdr_record_value(ptr noundef %i.ig, i64 noundef %spec.select) #20 ; 0 uses
  %i.ij = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 304), align 8, !tbaa !74
  %i.ik = load i64, ptr %i.b, align 8, !tbaa !144
  %i.il = call i64 @llvm.smin.i64(i64 %i.ik, i64 3000000)
  %i.im = call zeroext i1 @hdr_record_value(ptr noundef %i.ij, i64 noundef %i.il) #20 ; 0 uses
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.in = call zeroext i1 @hdr_record_value_atomic(ptr noundef %i.ig, i64 noundef %spec.select) #20 ; 0 uses
  %i.io = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 304), align 8, !tbaa !74
  %i.ip = load i64, ptr %i.b, align 8, !tbaa !144
  %i.iq = call i64 @llvm.smin.i64(i64 %i.ip, i64 3000000)
  %i.ir = call zeroext i1 @hdr_record_value_atomic(ptr noundef %i.io, i64 noundef %i.iq) #20 ; 0 uses
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb, %bb.ay
  %i.is = load i32, ptr %i.p, align 8, !tbaa !133
  %i.it = add nsw i32 %i.is, -1                   ; 3 uses
  store i32 %i.it, ptr %i.p, align 8, !tbaa !133
  %i.iu = icmp eq i32 %i.it, 0
  br i1 %i.iu, label %bb.bd, label %clientDone.exit

bb.bd:                                            ; preds = %bb.bc
  %i.iv = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 136) monotonic, align 8
  %i.iw = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 128), align 8, !tbaa !35
  %.not.i85 = icmp slt i32 %i.iv, %i.iw
  br i1 %.not.i85, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call fastcc void @freeClient(ptr noundef nonnull %2), !inline_history !229
  %i.ix = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 256), align 8, !tbaa !59
  %i.iy = icmp eq i32 %i.ix, 0
  %i.iz = load ptr, ptr @config, align 8          ; 2 uses
  %i.ja = icmp ne ptr %i.iz, null
  %or.cond.i = select i1 %i.iy, i1 %i.ja, i1 false
  br i1 %or.cond.i, label %bb.bf, label %clientDone.exit.thread
end_hunk_0
