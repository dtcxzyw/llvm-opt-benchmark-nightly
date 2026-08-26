Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/topology_ring?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
begin_hunk_0_@ring_record_add_ring:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 %i.f
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare ptr @slurm_xrecalloc(ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @slurm_xstrdup(ptr noundef) local_unnamed_addr #1

declare ptr @slurm_bit_alloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 2147483647) i32 @ring_record_get_ring_inx(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.011 = phi ptr [ %i.j, %bb.b ], [ %i.e, %.lr.ph.preheader ] ; 2 uses
  %.0810 = phi i32 [ %i.i, %bb.b ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.f = load ptr, ptr %.011, align 8
  %i.g = tail call i32 @slurm_xstrcmp(ptr noundef %i.f, ptr noundef %0) #8
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = add nuw nsw i32 %.0810, 1                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.011, i64 104
  %i.k = load i32, ptr %i.a, align 8
  %i.l = icmp slt i32 %i.i, %i.k
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.09 = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ %.0810, %.lr.ph ]
  ret i32 %.09
}

declare i32 @slurm_xstrcmp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @topology_p_add_rm_node(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.d = load ptr, ptr %i.c, align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr null, ptr %i.a, align 8
  %.not198 = icmp eq ptr %1, null
  br i1 %.not198, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.e = tail call ptr @slurm_xstrdup(ptr noundef nonnull %1) #8 ; 2 uses
  store ptr %i.e, ptr %i.a, align 8
  %i.f = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.e, i32 noundef 58) #9 ; 3 uses
  %.not199 = icmp eq ptr %i.f, null
  br i1 %.not199, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 4 uses
  store i8 0, ptr %i.f, align 1
  %i.h = call i64 @strtoul(ptr noundef nonnull %i.g, ptr noundef nonnull %i.b, i32 noundef 0) #8 ; 4 uses
  %i.i = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i8, ptr %i.i, align 1
  %i.l = icmp ne i8 %i.k, 0
  %i.m = icmp ugt i64 %i.h, 15
  %or.cond = select i1 %i.l, i1 true, i1 %i.m
  br i1 %or.cond, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.b, %bb.d, %bb.c
  %.0177207 = phi ptr [ %i.g, %bb.c ], [ %i.g, %bb.d ], [ null, %bb.b ]
  %i.n = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.2, ptr noundef %.0177207) #8 ; 0 uses
  br label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.o = trunc nuw nsw i64 %i.h to i16            ; 2 uses
  %i.p = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph.preheader.i, label %.loopexit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.preheader.i
  %.011.i = phi ptr [ %i.z, %bb.f ], [ %i.u, %.lr.ph.preheader.i ] ; 2 uses
  %.0810.i = phi i32 [ %i.y, %bb.f ], [ 0, %.lr.ph.preheader.i ] ; 5 uses
  %i.v = load ptr, ptr %.011.i, align 8
  %i.w = tail call i32 @slurm_xstrcmp(ptr noundef %i.v, ptr noundef %i.p) #8
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %ring_record_get_ring_inx.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.y = add nuw nsw i32 %.0810.i, 1              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.011.i, i64 104
  %i.aa = load i32, ptr %i.q, align 8
  %i.ab = icmp slt i32 %i.y, %i.aa
  br i1 %i.ab, label %.lr.ph.i, label %.loopexit, !llvm.loop !8

.loopexit:                                        ; preds = %bb.f, %bb.e
  %.not203.a = icmp eq i64 %i.h, 0
  br i1 %.not203.a, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.ac = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.3) #8 ; 0 uses
  br label %.critedge

bb.h:                                             ; preds = %.loopexit
  %i.ad = tail call i32 @ring_record_add_ring(ptr noundef %2, ptr noundef %i.p)
  br label %bb.o

ring_record_get_ring_inx.exit:                    ; preds = %.lr.ph.i
  %i.ae = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.af = zext nneg i32 %.0810.i to i64           ; 4 uses
  %i.ag = getelementptr inbounds nuw [104 x i8], ptr %i.ae, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  %i.ai = load i16, ptr %i.ah, align 8            ; 2 uses
  %i.aj = icmp eq i16 %i.ai, 16
  br i1 %i.aj, label %bb.i, label %bb.k

bb.i:                                             ; preds = %ring_record_get_ring_inx.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = zext i32 %i.an to i64
  %i.ap = tail call i32 @slurm_bit_test(ptr noundef %i.al, i64 noundef %i.ao) #8
  %.not201 = icmp eq i32 %i.ap, 0
  br i1 %.not201, label %bb.j, label %._crit_edge242

._crit_edge242:                                   ; preds = %bb.i
  %.pre = load ptr, ptr %i.t, align 8             ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [104 x i8], ptr %.pre, i64 %i.af
  %.phi.trans.insert243 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 80
  %.pre244 = load i16, ptr %.phi.trans.insert243, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aq = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.4, ptr noundef %i.p) #8 ; 0 uses
  br label %.critedge

bb.k:                                             ; preds = %._crit_edge242, %ring_record_get_ring_inx.exit
  %i.ar = phi i16 [ %.pre244, %._crit_edge242 ], [ %i.ai, %ring_record_get_ring_inx.exit ]
  %i.as = phi ptr [ %.pre, %._crit_edge242 ], [ %i.ae, %ring_record_get_ring_inx.exit ]
  %i.at = getelementptr inbounds nuw [104 x i8], ptr %i.as, i64 %i.af
  %i.au = zext i16 %i.ar to i32                   ; 3 uses
  %i.av = trunc nuw nsw i64 %i.h to i32           ; 3 uses
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = icmp eq i32 %i.au, %i.av
  br i1 %i.ax, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 72
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bb = load i32, ptr %i.ba, align 8
  %i.bc = zext i32 %i.bb to i64
  %i.bd = tail call i32 @slurm_bit_test(ptr noundef %i.az, i64 noundef %i.bc) #8
  %.not202 = icmp eq i32 %i.bd, 0
  br i1 %.not202, label %bb.o, label %._crit_edge245

._crit_edge245:                                   ; preds = %bb.m
  %.pre246 = load ptr, ptr %i.t, align 8
  %.phi.trans.insert247 = getelementptr inbounds nuw [104 x i8], ptr %.pre246, i64 %i.af
  %.phi.trans.insert248 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert247, i64 80
  %.pre249 = load i16, ptr %.phi.trans.insert248, align 8
  %.pre251 = zext i16 %.pre249 to i32
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge245, %bb.k
  %.pre-phi = phi i32 [ %.pre251, %._crit_edge245 ], [ %i.au, %bb.k ]
  %i.be = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.5, i32 noundef %i.av, i32 noundef %.pre-phi) #8 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.h, %bb.l, %bb.m, %bb.n
  %.1185 = phi i16 [ 0, %bb.n ], [ %i.o, %bb.m ], [ %i.o, %bb.l ], [ 0, %bb.h ]
  %.1182 = phi i32 [ %.0810.i, %bb.n ], [ %.0810.i, %bb.m ], [ %.0810.i, %bb.l ], [ %i.ad, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %i.bf = zext nneg i16 %.1185 to i32
  %i.bg = zext i32 %.1182 to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.a
  %.2186 = phi i32 [ %i.bf, %bb.o ], [ 0, %bb.a ] ; 2 uses
  %.2183 = phi i64 [ %i.bg, %bb.o ], [ 4294967295, %bb.a ]
  %i.bh = load ptr, ptr %i.d, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 8 uses
  %i.bj = load i32, ptr %i.bi, align 8
  %i.bk = zext i32 %i.bj to i64
  tail call void @slurm_bit_clear(ptr noundef %i.bh, i64 noundef %i.bk) #8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph229, label %.critedge231

.lr.ph229:                                        ; preds = %bb.p
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.bq = zext nneg i32 %.2186 to i64             ; 3 uses
  br label %bb.q

._crit_edge230:                                   ; preds = %bb.aw
  br i1 %.2180, label %bb.ax, label %.critedge231

bb.q:                                             ; preds = %.lr.ph229, %bb.aw
  %indvars.iv240 = phi i64 [ 0, %.lr.ph229 ], [ %indvars.iv.next241, %bb.aw ] ; 4 uses
  %.0178226 = phi i1 [ false, %.lr.ph229 ], [ %.2180, %bb.aw ] ; 3 uses
  %i.br = load ptr, ptr %i.bo, align 8
  %i.bs = getelementptr inbounds nuw [104 x i8], ptr %i.br, i64 %indvars.iv240 ; 13 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 72 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = load i32, ptr %i.bi, align 8
  %i.bw = zext i32 %i.bv to i64
  %i.bx = tail call i32 @slurm_bit_test(ptr noundef %i.bu, i64 noundef %i.bw) #8
  %i.by = icmp ne i32 %i.bx, 0                    ; 4 uses
  %i.bz = icmp eq i64 %.2183, %indvars.iv240      ; 3 uses
  %or.cond3 = select i1 %i.bz, i1 true, i1 %i.by
  br i1 %or.cond3, label %bb.r, label %bb.aw

bb.r:                                             ; preds = %bb.q
  %.not = xor i1 %i.bz, true                      ; 2 uses
  %or.cond5 = select i1 %.not, i1 true, i1 %i.by
  br i1 %or.cond5, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ca = tail call ptr @slurm_hostlist_create(ptr noundef null) #8 ; 3 uses
  %i.cb = tail call i32 @slurm_get_log_level() #8
  %i.cc = icmp sgt i32 %i.cb, 5
  br i1 %i.cc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cd = load ptr, ptr %i.bp, align 8
  %i.ce = load ptr, ptr %i.bs, align 8
  tail call void (i32, ptr, ...) @slurm_log_var(i32 noundef 6, ptr noundef nonnull @.str.6, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.topology_p_add_rm_node, ptr noundef %i.cd, ptr noundef %i.ce, i32 noundef %.2186) #8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cf = load ptr, ptr %i.bt, align 8
  %i.cg = load i32, ptr %i.bi, align 8
  %i.ch = zext i32 %i.cg to i64
  tail call void @slurm_bit_set(ptr noundef %i.cf, i64 noundef %i.ch) #8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bs, i64 88 ; 2 uses
  tail call void @slurm_xfree(ptr noundef nonnull %i.ci) #8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bs, i64 80 ; 3 uses
  %i.ck = load i16, ptr %i.cj, align 8
  %i.cl = add i16 %i.ck, 1                        ; 2 uses
  store i16 %i.cl, ptr %i.cj, align 8
  %.not232 = icmp eq i16 %i.cl, 0
  br i1 %.not232, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.bq ; 2 uses
  br label %bb.v

._crit_edge:                                      ; preds = %bb.z, %bb.u
  %i.co = tail call ptr @slurm_hostlist_ranged_string_xmalloc(ptr noundef %i.ca) #8
  store ptr %i.co, ptr %i.ci, align 8
  tail call void @slurm_hostlist_destroy(ptr noundef %i.ca) #8
  br label %bb.av

bb.v:                                             ; preds = %.lr.ph, %bb.z
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.z ] ; 4 uses
  %.0170212 = phi i16 [ undef, %.lr.ph ], [ %.1171.a, %bb.z ] ; 2 uses
  %.0172211 = phi i1 [ false, %.lr.ph ], [ %.1173.a, %bb.z ]
  %i.cp = icmp eq i64 %indvars.iv, %i.bq
  br i1 %i.cp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cq = load i32, ptr %i.cn, align 4
  %i.cr = trunc i32 %i.cq to i16
  %i.cs = load i32, ptr %i.bi, align 8
  store i32 %i.cs, ptr %i.cn, align 4
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  br i1 %.0172211, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = trunc i32 %i.cu to i16
  %i.cw = zext i16 %.0170212 to i32
  store i32 %i.cw, ptr %i.ct, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.w
  %.1173.a = phi i1 [ true, %bb.w ], [ true, %bb.y ], [ false, %bb.x ]
  %.1171.a = phi i16 [ %i.cr, %bb.w ], [ %i.cv, %bb.y ], [ %.0170212, %bb.x ]
  %i.cx = load ptr, ptr @node_record_table_ptr, align 8
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv
  %i.cz = load i32, ptr %i.cy, align 4
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.da
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 280
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = tail call i32 @slurm_hostlist_push_host(ptr noundef %i.ca, ptr noundef %i.de) #8 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dg = load i16, ptr %i.cj, align 8
  %i.dh = zext i16 %i.dg to i64
  %i.di = icmp samesign ult i64 %indvars.iv.next, %i.dh
  br i1 %i.di, label %bb.v, label %._crit_edge, !llvm.loop !11

bb.aa:                                            ; preds = %bb.r
  %or.cond8 = select i1 %.not, i1 %i.by, i1 false
  br i1 %or.cond8, label %bb.ab, label %bb.aj

bb.ab:                                            ; preds = %bb.aa
  %i.dj = tail call ptr @slurm_hostlist_create(ptr noundef null) #8 ; 3 uses
  %i.dk = tail call i32 @slurm_get_log_level() #8
  %i.dl = icmp sgt i32 %i.dk, 5
  br i1 %i.dl, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dm = load ptr, ptr %i.bp, align 8
  %i.dn = load ptr, ptr %i.bs, align 8
  tail call void (i32, ptr, ...) @slurm_log_var(i32 noundef 6, ptr noundef nonnull @.str.7, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.topology_p_add_rm_node, ptr noundef %i.dm, ptr noundef %i.dn) #8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.do = load ptr, ptr %i.bt, align 8
  %i.dp = load i32, ptr %i.bi, align 8
  %i.dq = zext i32 %i.dp to i64
  tail call void @slurm_bit_clear(ptr noundef %i.do, i64 noundef %i.dq) #8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bs, i64 88 ; 2 uses
  tail call void @slurm_xfree(ptr noundef nonnull %i.dr) #8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bs, i64 80 ; 4 uses
  %i.dt = load i16, ptr %i.ds, align 8            ; 2 uses
  %.not234 = icmp eq i16 %i.dt, 0
  br i1 %.not234, label %._crit_edge225, label %.lr.ph224

.lr.ph224:                                        ; preds = %bb.ad
  %i.du = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  br label %bb.ae

._crit_edge225:                                   ; preds = %bb.ai, %bb.ad
  %i.dv = tail call ptr @slurm_hostlist_ranged_string_xmalloc(ptr noundef %i.dj) #8
  store ptr %i.dv, ptr %i.dr, align 8
  tail call void @slurm_hostlist_destroy(ptr noundef %i.dj) #8
  %i.dw = load i16, ptr %i.ds, align 8
  %i.dx = add i16 %i.dw, -1
  store i16 %i.dx, ptr %i.ds, align 8
  br label %bb.av

bb.ae:                                            ; preds = %.lr.ph224, %bb.ai
  %i.dy = phi i16 [ %i.dt, %.lr.ph224 ], [ %i.el, %bb.ai ]
  %indvars.iv238 = phi i64 [ 0, %.lr.ph224 ], [ %indvars.iv.next239, %bb.ai ] ; 2 uses
  %.0165221 = phi i1 [ false, %.lr.ph224 ], [ %.1166, %bb.ai ] ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv238 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4            ; 3 uses
  %i.eb = load i32, ptr %i.bi, align 8
  %i.ec = icmp eq i32 %i.ea, %i.eb
  br i1 %i.ec, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  br i1 %.0165221, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ed = getelementptr i8, ptr %i.dz, i64 -4
  store i32 %i.ea, ptr %i.ed, align 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %i.ee = load ptr, ptr @node_record_table_ptr, align 8
  %i.ef = zext i32 %i.ea to i64
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ef
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 280
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = tail call i32 @slurm_hostlist_push_host(ptr noundef %i.dj, ptr noundef %i.ej) #8 ; 0 uses
  %.pre250 = load i16, ptr %i.ds, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ae, %bb.ah
  %i.el = phi i16 [ %.pre250, %bb.ah ], [ %i.dy, %bb.ae ] ; 2 uses
  %.1166 = phi i1 [ %.0165221, %bb.ah ], [ true, %bb.ae ]
  %indvars.iv.next239 = add nuw nsw i64 %indvars.iv238, 1 ; 2 uses
  %i.em = zext i16 %i.el to i64
  %i.en = icmp samesign ult i64 %indvars.iv.next239, %i.em
  br i1 %i.en, label %bb.ae, label %._crit_edge225, !llvm.loop !12

bb.aj:                                            ; preds = %bb.aa
  %or.cond10 = select i1 %i.bz, i1 %i.by, i1 false
  br i1 %or.cond10, label %bb.ak, label %bb.av

bb.ak:                                            ; preds = %bb.aj
  %i.eo = tail call ptr @slurm_hostlist_create(ptr noundef null) #8 ; 3 uses
  %i.ep = tail call i32 @slurm_get_log_level() #8
  %i.eq = icmp sgt i32 %i.ep, 5
  br i1 %i.eq, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.er = load ptr, ptr %i.bp, align 8
  %i.es = load ptr, ptr %i.bs, align 8
  tail call void (i32, ptr, ...) @slurm_log_var(i32 noundef 6, ptr noundef nonnull @.str.8, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.topology_p_add_rm_node, ptr noundef %i.er, ptr noundef %i.es) #8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.et = getelementptr inbounds nuw i8, ptr %i.bs, i64 88 ; 2 uses
  tail call void @slurm_xfree(ptr noundef nonnull %i.et) #8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bs, i64 80 ; 2 uses
  %i.ev = load i16, ptr %i.eu, align 8
  %.not233 = icmp eq i16 %i.ev, 0
  br i1 %.not233, label %._crit_edge220, label %.lr.ph219

.lr.ph219:                                        ; preds = %bb.am
  %i.ew = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  br label %bb.an

._crit_edge220:                                   ; preds = %bb.au, %bb.am
  %i.ex = tail call ptr @slurm_hostlist_ranged_string_xmalloc(ptr noundef %i.eo) #8
  store ptr %i.ex, ptr %i.et, align 8
  tail call void @slurm_hostlist_destroy(ptr noundef %i.eo) #8
  br label %bb.av

bb.an:                                            ; preds = %.lr.ph219, %bb.au
  %indvars.iv236 = phi i64 [ 0, %.lr.ph219 ], [ %indvars.iv.next237, %bb.au ] ; 3 uses
  %.0157216 = phi i16 [ 16, %.lr.ph219 ], [ %.3272, %bb.au ] ; 2 uses
  %.0158215 = phi i8 [ 0, %.lr.ph219 ], [ %.2160271, %bb.au ] ; 3 uses
  %.0161214 = phi i1 [ false, %.lr.ph219 ], [ %.2163270, %bb.au ] ; 5 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv236 ; 4 uses
  %i.ez = load i32, ptr %i.ey, align 4            ; 3 uses
  %i.fa = trunc i32 %i.ez to i16                  ; 2 uses
  br i1 %.0161214, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fb = zext i16 %.0157216 to i32               ; 2 uses
  store i32 %i.fb, ptr %i.ey, align 4
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.fc = phi i32 [ %i.fb, %bb.ao ], [ %i.ez, %bb.an ]
  %.1.a = phi i16 [ %i.fa, %bb.ao ], [ %.0157216, %bb.an ] ; 3 uses
  %i.fd = and i32 %i.ez, 65535
  %i.fe = load i32, ptr %i.bi, align 8            ; 2 uses
  %i.ff = icmp eq i32 %i.fd, %i.fe
  %i.fg = icmp eq i64 %indvars.iv236, %i.bq       ; 3 uses
  br i1 %i.ff, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %spec.select = and i1 %i.fg, %.0161214
  %i.fh = or i1 %.0161214, %i.fg
  %spec.select209 = select i1 %i.fh, i8 %.0158215, i8 1
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  br i1 %i.fg, label %.thread266, label %bb.as

.thread266:                                       ; preds = %bb.ar
  %i.fi = trunc nuw i8 %.0158215 to i1            ; 2 uses
  %not. = xor i1 %i.fi, true
  %.0161. = or i1 %.0161214, %not.
  %.1. = select i1 %i.fi, i16 %.1.a, i16 %i.fa
  br label %.sink.split

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %.2163 = phi i1 [ %spec.select, %bb.aq ], [ %.0161214, %bb.ar ] ; 2 uses
  %.2160 = phi i8 [ %spec.select209, %bb.aq ], [ %.0158215, %bb.ar ]
  %i.fj = trunc nuw i8 %.2160 to i1
  br i1 %i.fj, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.fl = load i32, ptr %i.fk, align 4
  br label %.sink.split

.sink.split:                                      ; preds = %bb.at, %.thread266
  %.sink = phi i32 [ %i.fe, %.thread266 ], [ %i.fl, %bb.at ] ; 2 uses
  %.3272.ph = phi i16 [ %.1., %.thread266 ], [ %.1.a, %bb.at ]
  %.2160271.ph = phi i8 [ 0, %.thread266 ], [ 1, %bb.at ]
  %.2163270.ph = phi i1 [ %.0161., %.thread266 ], [ %.2163, %bb.at ]
  store i32 %.sink, ptr %i.ey, align 4
  br label %bb.au

bb.au:                                            ; preds = %.sink.split, %bb.as
  %.3272 = phi i16 [ %.1.a, %bb.as ], [ %.3272.ph, %.sink.split ]
  %.2160271 = phi i8 [ 0, %bb.as ], [ %.2160271.ph, %.sink.split ]
  %.2163270 = phi i1 [ %.2163, %bb.as ], [ %.2163270.ph, %.sink.split ]
  %i.fm = phi i32 [ %i.fc, %bb.as ], [ %.sink, %.sink.split ]
  %i.fn = load ptr, ptr @node_record_table_ptr, align 8
  %i.fo = zext i32 %i.fm to i64
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.fo
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 280
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = tail call i32 @slurm_hostlist_push_host(ptr noundef %i.eo, ptr noundef %i.fs) #8 ; 0 uses
  %indvars.iv.next237 = add nuw nsw i64 %indvars.iv236, 1 ; 2 uses
  %i.fu = load i16, ptr %i.eu, align 8
  %i.fv = zext i16 %i.fu to i64
  %i.fw = icmp samesign ult i64 %indvars.iv.next237, %i.fv
  br i1 %i.fw, label %bb.an, label %._crit_edge220, !llvm.loop !13

bb.av:                                            ; preds = %._crit_edge225, %._crit_edge220, %bb.aj, %._crit_edge
  %.1179 = phi i1 [ %.0178226, %._crit_edge225 ], [ true, %._crit_edge220 ], [ %.0178226, %bb.aj ], [ true, %._crit_edge ]
  %i.fx = trunc nuw nsw i64 %indvars.iv240 to i32
  tail call void @ring_record_update_ring_config(ptr noundef %2, i32 noundef %i.fx) #8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.q, %bb.av
  %.2180 = phi i1 [ %.1179, %bb.av ], [ %.0178226, %bb.q ] ; 2 uses
  %indvars.iv.next241 = add nuw nsw i64 %indvars.iv240, 1 ; 2 uses
  %i.fy = load i32, ptr %i.bl, align 8
  %i.fz = sext i32 %i.fy to i64
  %i.ga = icmp slt i64 %indvars.iv.next241, %i.fz
  br i1 %i.ga, label %bb.q, label %._crit_edge230, !llvm.loop !14

bb.ax:                                            ; preds = %._crit_edge230
  %i.gb = load ptr, ptr %i.d, align 8
  %i.gc = load i32, ptr %i.bi, align 8
  %i.gd = zext i32 %i.gc to i64
  tail call void @slurm_bit_set(ptr noundef %i.gb, i64 noundef %i.gd) #8
  br label %.critedge231

.critedge231:                                     ; preds = %bb.p, %bb.ax, %._crit_edge230
  call void @slurm_xfree(ptr noundef nonnull %i.a) #8
  br label %bb.ay

.critedge:                                        ; preds = %bb.j, %bb.g, %.thread
  call void @slurm_xfree(ptr noundef nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.ay

bb.ay:                                            ; preds = %.critedge, %.critedge231
  %.1168 = phi i32 [ 0, %.critedge231 ], [ -1, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.1168
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #5

declare i32 @slurm_error(ptr noundef, ...) local_unnamed_addr #1

declare void @slurm_xfree(ptr noundef) local_unnamed_addr #1

declare i32 @slurm_bit_test(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @slurm_bit_clear(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @slurm_hostlist_create(ptr noundef) local_unnamed_addr #1

declare void @slurm_bit_set(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @slurm_hostlist_push_host(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @slurm_hostlist_ranged_string_xmalloc(ptr noundef) local_unnamed_addr #1

declare void @slurm_hostlist_destroy(ptr noundef) local_unnamed_addr #1

declare void @ring_record_update_ring_config(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @topology_p_allow_one_node(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #2 {
bb.a:
  ret i1 true
}

; Function Attrs: nounwind uwtable
define dso_local i32 @topology_p_build_config(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @node_record_count, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @ring_record_validate(ptr noundef %0) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @ring_record_validate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @topology_p_destroy_config(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  tail call void @ring_record_table_destroy(ptr noundef %i.b) #8
  %i.c = load ptr, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @slurm_bit_free(ptr noundef nonnull %i.b) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %i.b, align 8
  tail call void @slurm_xfree(ptr noundef nonnull %i.a) #8
  ret i32 0
}

declare void @ring_record_table_destroy(ptr noundef) local_unnamed_addr #1

declare void @slurm_bit_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @topology_p_eval_node(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @common_test_node(ptr noundef %0, i32 noundef %1) #8
  ret i32 %i.a
}

declare i32 @common_test_node(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @topology_p_eval_nodes(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call i32 @slurm_bit_overlap_any(ptr noundef nonnull %i.e, ptr noundef %i.g) #8
  %.not7 = icmp eq i32 %i.h, 0
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @eval_nodes_ring, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %i.j, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.k = tail call i32 @common_topo_choose_nodes(ptr noundef nonnull %0) #8
  ret i32 %i.k
}

declare i32 @slurm_bit_overlap_any(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @eval_nodes_ring(ptr noundef) #1

declare i32 @common_topo_choose_nodes(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @topology_p_whole_topo(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw [104 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call i32 @slurm_bit_overlap_any(ptr noundef %i.h, ptr noundef %0) #8
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.d, align 8
  %i.k = getelementptr inbounds nuw [104 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load ptr, ptr %i.l, align 8
  tail call void @slurm_bit_or(ptr noundef %0, ptr noundef %i.m) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.n = load i32, ptr %i.a, align 8
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i64 %indvars.iv.next, %i.o
  br i1 %i.p, label %bb.b, label %._crit_edge, !llvm.loop !15
}

declare void @slurm_bit_or(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @topology_p_get_rank(ptr noundef %0, ptr nofree noundef captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr null, ptr %1, align 8
  store i32 0, ptr %2, align 4
  %.not = icmp eq ptr %0, null
end_hunk_0
