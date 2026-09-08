Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/block_record?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
begin_hunk_0_@block_record_table_destroy:bb.a

bb.d:                                             ; preds = %._crit_edge
  tail call void @slurm_bit_free(ptr noundef nonnull %i.i) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  store ptr null, ptr %i.i, align 8
  store i32 0, ptr %i.c, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i16 0, ptr %i.ac, align 8
  store i32 0, ptr %i.d, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @slurm_xfree(ptr noundef) local_unnamed_addr #2

declare void @slurm_bit_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @block_record_validate(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca ptr, align 8                      ; 6 uses
  %i.l = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  store ptr null, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  store ptr null, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #9
  %i.m = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 112, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 242, ptr noundef nonnull @__func__.block_record_validate) #9 ; 25 uses
  store ptr %i.m, ptr %i.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 4 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = load i32, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 104 ; 3 uses
  store i32 %i.p, ptr %i.q, align 8
  %i.r = sext i32 %i.p to i64
  %i.s = tail call ptr @slurm_xcalloc(i64 noundef %i.r, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 248, ptr noundef nonnull @__func__.block_record_validate) #9 ; 4 uses
  store ptr %i.s, ptr %i.e, align 8
  %i.t = load i32, ptr %i.q, align 8
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %i.w = tail call ptr @bit_alloc(i64 noundef 16) #9
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 3 uses
  store ptr %i.w, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call i32 @list_count(ptr noundef %i.z) #9
  %.not105 = icmp eq i32 %i.aa, 0
  br i1 %.not105, label %bb.d, label %bb.e

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.ab = load ptr, ptr %i.v, align 8
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  store ptr %i.ac, ptr %i.ad, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = load i32, ptr %i.q, align 8
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp slt i64 %indvars.iv.next, %i.af
  br i1 %i.ag, label %bb.c, label %._crit_edge, !llvm.loop !11

bb.d:                                             ; preds = %._crit_edge
  %i.ah = load ptr, ptr %i.x, align 8
  tail call void @bit_nset(ptr noundef %i.ah, i64 noundef 0, i64 noundef 4) #9
  br label %bb.x

bb.e:                                             ; preds = %._crit_edge
  %i.ai = load ptr, ptr %i.y, align 8
  %i.aj = tail call i32 @list_for_each(ptr noundef %i.ai, ptr noundef nonnull @_list_to_bitmap, ptr noundef nonnull %i.m) #9
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.1, ptr noundef %i.am) #10
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.x, align 8
  tail call void @bit_set(ptr noundef %i.an, i64 noundef 0) #9
  br label %bb.x

bb.h:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store ptr null, ptr %i.c, align 8
  %i.aq = tail call i32 @get_log_level() #9
  %i.ar = icmp sgt i32 %i.aq, 4
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.14, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._read_topo_file, ptr noundef %i.ap) #9
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.as = tail call ptr @s_p_hashtbl_create(ptr noundef nonnull @_read_topo_file.block_options) #9 ; 2 uses
  store ptr %i.as, ptr @conf_hashtbl, align 8
  %i.at = tail call i32 @s_p_parse_file(ptr noundef %i.as, ptr noundef null, ptr noundef %i.ap, i32 noundef 0, ptr noundef null) #9
  %i.au = icmp eq i32 %i.at, -1
  br i1 %i.au, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.av = load ptr, ptr @conf_hashtbl, align 8
  tail call void @s_p_hashtbl_destroy(ptr noundef %i.av) #9
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.15, ptr noundef %i.ap) #10
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 6 uses
  %i.ax = load ptr, ptr %i.aw, align 8
  %.not.i = icmp eq ptr %i.ax, null
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @slurm_bit_free(ptr noundef nonnull %i.aw) #9
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store ptr null, ptr %i.aw, align 8
  %i.ay = tail call ptr @bit_alloc(i64 noundef 16) #9
  store ptr %i.ay, ptr %i.aw, align 8
  %i.az = load ptr, ptr @conf_hashtbl, align 8
  %i.ba = call i32 @s_p_get_string(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.13, ptr noundef %i.az) #9
  %.not37.i = icmp eq i32 %i.ba, 0
  br i1 %.not37.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %i.aw, align 8
  call void @bit_nset(ptr noundef %i.bb, i64 noundef 0, i64 noundef 4) #9
  br label %_read_topo_file.exit

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store ptr null, ptr %i.d, align 8
  %i.bc = load ptr, ptr %i.c, align 8
  %i.bd = call ptr @strtok_r(ptr noundef %i.bc, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.d) #9 ; 2 uses
  %.not3852.i = icmp eq ptr %i.bd, null
  br i1 %.not3852.i, label %.thread45.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.w, %.lr.ph.i
  %.03053.i = phi ptr [ %i.bd, %.lr.ph.i ], [ %i.bw, %bb.w ] ; 5 uses
  %i.bf = call i64 @strtol(ptr noundef nonnull captures(none) %.03053.i, ptr noundef null, i32 noundef 10) #9, !inline_history !12 ; 2 uses
  %i.bg = trunc i64 %i.bf to i32                  ; 3 uses
  %i.bh = icmp slt i32 %i.bg, 1
  br i1 %i.bh, label %.thread45.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = load i16, ptr %i.be, align 8            ; 2 uses
  %.not39.i = icmp eq i16 %i.bi, 0
  br i1 %.not39.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bj = trunc i64 %i.bf to i16                  ; 2 uses
  store i16 %i.bj, ptr %i.be, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bk = phi i16 [ %i.bj, %bb.s ], [ %i.bi, %bb.r ]
  %i.bl = zext i16 %i.bk to i32                   ; 2 uses
  %i.bm = urem i32 %i.bg, %i.bl
  %i.bn = udiv i32 %i.bg, %i.bl
  %.not40.i = icmp eq i32 %i.bm, 0
  br i1 %.not40.i, label %bb.u, label %.thread45.i

bb.u:                                             ; preds = %bb.t
  %i.bo = uitofp nneg i32 %i.bn to double
  %i.bp = call double @log2(double noundef %i.bo) #9 ; 3 uses
  %i.bq = call double @llvm.trunc.f64(double %i.bp)
  %i.br = fcmp une double %i.bq, %i.bp
  br i1 %i.br, label %.thread45.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bs = fptosi double %i.bp to i32              ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 15
  br i1 %i.bt, label %.thread45.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bu = load ptr, ptr %i.aw, align 8
  %i.bv = sext i32 %i.bs to i64
  call void @bit_set(ptr noundef %i.bu, i64 noundef %i.bv) #9
  %i.bw = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.d) #9 ; 2 uses
  %.not38.i = icmp eq ptr %i.bw, null
  br i1 %.not38.i, label %.critedge.i, label %bb.q

.thread45.i:                                      ; preds = %bb.v, %bb.u, %bb.t, %bb.q, %bb.p
  %.03051.i = phi ptr [ null, %bb.p ], [ %.03053.i, %bb.q ], [ %.03053.i, %bb.t ], [ %.03053.i, %bb.u ], [ %.03053.i, %bb.v ]
  %i.bx = load ptr, ptr @conf_hashtbl, align 8
  call void @s_p_hashtbl_destroy(ptr noundef %i.bx) #9
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.17, ptr noundef %.03051.i) #10
  unreachable

.critedge.i:                                      ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br label %_read_topo_file.exit

_read_topo_file.exit:                             ; preds = %bb.o, %.critedge.i
  call void @slurm_xfree(ptr noundef nonnull %i.c) #9
  %i.by = load ptr, ptr @conf_hashtbl, align 8
  %i.bz = call i32 @s_p_get_array(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.12, ptr noundef %i.by) #9
  %.not41.i = icmp eq i32 %i.bz, 0
  %i.ca = load ptr, ptr %i.b, align 8
  %.pre.i = load i32, ptr %i.a, align 4
  %i.cb = select i1 %.not41.i, i32 0, i32 %.pre.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.cc = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  store i32 %i.cb, ptr %i.cc, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.d, %bb.g, %_read_topo_file.exit
  %.0120 = phi ptr [ %i.ca, %_read_topo_file.exit ], [ %i.s, %bb.d ], [ %i.s, %bb.g ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.m, i64 104 ; 5 uses
  %i.ce = load i32, ptr %i.cd, align 8            ; 2 uses
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.cg = load ptr, ptr @conf_hashtbl, align 8
  call void @s_p_hashtbl_destroy(ptr noundef %i.cg) #9
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 3 uses
  %i.ci = load ptr, ptr %i.ch, align 8
  %.not117 = icmp eq ptr %i.ci, null
  br i1 %.not117, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @slurm_bit_free(ptr noundef nonnull %i.ch) #9
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  store ptr null, ptr %i.ch, align 8
  call void @slurm_xfree(ptr noundef nonnull %i.i) #9
  call void @slurm_xfree(ptr noundef nonnull %i.e) #9
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.2) #10
  unreachable

bb.ab:                                            ; preds = %bb.x
  %i.cj = shl nsw i32 %i.ce, 1
  %i.ck = add nsw i32 %i.cj, 16
  %i.cl = sext i32 %i.ck to i64
  %i.cm = call ptr @slurm_xcalloc(i64 noundef %i.cl, i64 noundef 40, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 283, ptr noundef nonnull @__func__.block_record_validate) #9 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %i.cm, ptr %i.cn, align 8
  %i.co = load i32, ptr %i.cd, align 8
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %.lr.ph140.preheader, label %._crit_edge141

.lr.ph140.preheader:                              ; preds = %bb.ab
  %i.cq = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br label %.lr.ph140

.lr.ph140:                                        ; preds = %.lr.ph140.preheader, %bb.ao
  %indvars.iv170 = phi i64 [ 0, %.lr.ph140.preheader ], [ %indvars.iv.next171, %bb.ao ] ; 5 uses
  %.087138 = phi ptr [ %i.cm, %.lr.ph140.preheader ], [ %i.ee, %bb.ao ] ; 6 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.0120, i64 %indvars.iv170
  %i.cs = load ptr, ptr %i.cr, align 8            ; 3 uses
  %i.ct = load ptr, ptr %i.cs, align 8            ; 2 uses
  %.not113 = icmp eq ptr %i.ct, null
  br i1 %.not113, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph140
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.3) #10
  unreachable

bb.ad:                                            ; preds = %.lr.ph140
  %i.cu = call ptr @xstrdup(ptr noundef nonnull %i.ct) #9
  %i.cv = getelementptr inbounds nuw i8, ptr %.087138, i64 8 ; 2 uses
  store ptr %i.cu, ptr %i.cv, align 8
  %.not159 = icmp eq i64 %indvars.iv170, 0
  br i1 %.not159, label %._crit_edge136, label %.lr.ph135.preheader

.lr.ph135.preheader:                              ; preds = %bb.ad
  %i.cw = load ptr, ptr %i.cn, align 8
  br label %.lr.ph135

.lr.ph135:                                        ; preds = %.lr.ph135.preheader, %bb.af
  %.086133 = phi ptr [ %i.df, %bb.af ], [ %i.cw, %.lr.ph135.preheader ] ; 3 uses
  %.088132 = phi i32 [ %i.de, %bb.af ], [ 0, %.lr.ph135.preheader ]
  %i.cx = load ptr, ptr %i.cv, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %.086133, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = call i32 @xstrcmp(ptr noundef %i.cx, ptr noundef %i.cz) #9
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph135
  %i.dc = getelementptr inbounds nuw i8, ptr %.086133, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.4, ptr noundef %i.dd) #10
  unreachable

bb.af:                                            ; preds = %.lr.ph135
  %i.de = add nuw nsw i32 %.088132, 1             ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.086133, i64 40
  %i.dg = zext nneg i32 %i.de to i64
  %exitcond.not = icmp eq i64 %indvars.iv170, %i.dg
  br i1 %exitcond.not, label %._crit_edge136, label %.lr.ph135, !llvm.loop !13

._crit_edge136:                                   ; preds = %bb.af, %bb.ad
  %i.dh = trunc i64 %indvars.iv170 to i16
  %i.di = getelementptr inbounds nuw i8, ptr %.087138, i64 32
  store i16 %i.dh, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 3 uses
  %i.dk = load ptr, ptr %i.dj, align 8            ; 2 uses
  %.not114 = icmp eq ptr %i.dk, null
  br i1 %.not114, label %bb.an, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge136
  %i.dl = call ptr @xstrdup(ptr noundef nonnull %i.dk) #9
  %i.dm = getelementptr inbounds nuw i8, ptr %.087138, i64 24
  store ptr %i.dl, ptr %i.dm, align 8
  %i.dn = load ptr, ptr %i.dj, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %.087138, i64 16 ; 3 uses
  %i.dp = call i32 @node_name2bitmap(ptr noundef %i.dn, i1 noundef zeroext true, ptr noundef nonnull %i.do, ptr noundef nonnull %i.f) #9
  %.not115 = icmp eq i32 %i.dp, 0
  br i1 %.not115, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dq = load ptr, ptr %i.dj, align 8
  %i.dr = load ptr, ptr %i.cs, align 8
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.5, ptr noundef %i.dq, ptr noundef %i.dr) #10
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.ds = load ptr, ptr %i.m, align 8             ; 2 uses
  %.not116 = icmp eq ptr %i.ds, null
  %i.dt = load ptr, ptr %i.do, align 8            ; 2 uses
  br i1 %.not116, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @bit_or(ptr noundef nonnull %i.ds, ptr noundef %i.dt) #9
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.du = call ptr @bit_copy(ptr noundef %i.dt) #9
  store ptr %i.du, ptr %i.m, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.dv = load i16, ptr %i.cq, align 8
  %i.dw = icmp eq i16 %i.dv, 0
  br i1 %i.dw, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.dx = load ptr, ptr %i.do, align 8
  %i.dy = call i32 @bit_set_count(ptr noundef %i.dx) #9
  %i.dz = trunc i32 %i.dy to i16
  store i16 %i.dz, ptr %i.cq, align 8
  br label %bb.ao

bb.an:                                            ; preds = %._crit_edge136
  %i.ea = load i32, ptr @node_record_count, align 4
  %i.eb = sext i32 %i.ea to i64
  %i.ec = call ptr @bit_alloc(i64 noundef %i.eb) #9
  %i.ed = getelementptr inbounds nuw i8, ptr %.087138, i64 16
  store ptr %i.ec, ptr %i.ed, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.087138, i64 40
end_hunk_0
begin_hunk_1_@block_record_validate:bb.a
  %i.ig = load ptr, ptr %i.hy, align 8            ; 2 uses
  %i.ih = getelementptr inbounds nuw [40 x i8], ptr %i.ig, i64 %i.ia
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %i.ij = load ptr, ptr %i.ii, align 8
  %i.ik = getelementptr inbounds nuw [40 x i8], ptr %i.ig, i64 %indvars.iv176
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %i.im = load ptr, ptr %i.il, align 8
  call void @bit_or(ptr noundef %i.ij, ptr noundef %i.im) #9
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bc, %bb.bd
  %i.in = phi ptr [ %i.gh, %bb.bd ], [ %.pre, %bb.bc ], [ %i.gh, %bb.be ], [ %i.gh, %bb.bf ] ; 2 uses
  %i.io = phi ptr [ %i.gi, %bb.bd ], [ %.pre, %bb.bc ], [ %i.gi, %bb.be ], [ %i.gi, %bb.bf ] ; 2 uses
  %.3 = phi i32 [ %i.hu, %bb.bd ], [ %.1147, %bb.bc ], [ %.1147, %bb.be ], [ %.1147, %bb.bf ] ; 2 uses
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 96
  %i.iq = load i16, ptr %i.ip, align 8
  %i.ir = zext i16 %i.iq to i64
  %i.is = icmp samesign ult i64 %indvars.iv.next174, %i.ir
  br i1 %i.is, label %.lr.ph148, label %._crit_edge149, !llvm.loop !16

._crit_edge149:                                   ; preds = %bb.bg, %.preheader
  %i.it = phi ptr [ %i.gd, %.preheader ], [ %i.in, %bb.bg ] ; 3 uses
  %.1.lcssa = phi i32 [ %.084152, %.preheader ], [ %.3, %bb.bg ] ; 2 uses
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 104
  %i.iv = load i32, ptr %i.iu, align 8
  %i.iw = sext i32 %i.iv to i64
  %i.ix = icmp slt i64 %indvars.iv.next177, %i.iw
  br i1 %i.ix, label %.preheader, label %._crit_edge153, !llvm.loop !17

._crit_edge153:                                   ; preds = %._crit_edge149, %._crit_edge144
  %i.iy = phi ptr [ %i.m, %._crit_edge144 ], [ %i.it, %._crit_edge149 ] ; 4 uses
  %.084.lcssa = phi i32 [ %i.gb, %._crit_edge144 ], [ %.1.lcssa, %._crit_edge149 ] ; 3 uses
  call void @slurm_xfree(ptr noundef nonnull %i.h) #9
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 104 ; 4 uses
  %i.ja = load i32, ptr %i.iz, align 8            ; 2 uses
  %i.jb = sub nsw i32 %.084.lcssa, %i.ja          ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iy, i64 108 ; 3 uses
  store i32 %i.jb, ptr %i.jc, align 4
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iy, i64 8 ; 6 uses
  %i.je = load ptr, ptr %i.jd, align 8
  %i.jf = sext i32 %i.ja to i64
  %i.jg = getelementptr inbounds [40 x i8], ptr %i.je, i64 %i.jf
  %i.jh = sext i32 %i.jb to i64
  call void @qsort(ptr noundef %i.jg, i64 noundef %i.jh, i64 noundef 40, ptr noundef nonnull @_cmp_block_level) #9
  %i.ji = load i32, ptr %i.iz, align 8            ; 3 uses
  %i.jj = icmp slt i32 %i.ji, %.084.lcssa
  br i1 %i.jj, label %.lr.ph157.preheader, label %._crit_edge158

.lr.ph157.preheader:                              ; preds = %._crit_edge153
  %i.jk = sext i32 %i.ji to i64
  %wide.trip.count = sext i32 %.084.lcssa to i64
  br label %.lr.ph157

.lr.ph157:                                        ; preds = %.lr.ph157.preheader, %bb.bi
  %indvars.iv179 = phi i64 [ %i.jk, %.lr.ph157.preheader ], [ %indvars.iv.next180, %bb.bi ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #9
  %i.jl = load ptr, ptr %i.jd, align 8
  %i.jm = getelementptr inbounds [40 x i8], ptr %i.jl, i64 %indvars.iv179
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jo = load ptr, ptr %i.jn, align 8            ; 2 uses
  store ptr %i.jo, ptr %i.l, align 8
  %i.jp = call ptr @hostlist_create(ptr noundef %i.jo) #9 ; 3 uses
  %i.jq = icmp eq ptr %i.jp, null
  br i1 %i.jq, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %.lr.ph157
  %i.jr = load ptr, ptr %i.l, align 8
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.11, ptr noundef %i.jr) #10
  unreachable

bb.bi:                                            ; preds = %.lr.ph157
  %i.js = call ptr @hostlist_ranged_string_xmalloc(ptr noundef nonnull %i.jp) #9
  %i.jt = load ptr, ptr %i.jd, align 8
  %i.ju = getelementptr inbounds [40 x i8], ptr %i.jt, i64 %indvars.iv179
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  store ptr %i.js, ptr %i.jv, align 8
  %i.jw = load ptr, ptr %i.jd, align 8
  %i.jx = getelementptr inbounds [40 x i8], ptr %i.jw, i64 %indvars.iv179
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  %i.jz = load ptr, ptr %i.jy, align 8
  %i.ka = call ptr @bitmap2node_name(ptr noundef %i.jz) #9
  %i.kb = load ptr, ptr %i.jd, align 8
  %i.kc = getelementptr inbounds [40 x i8], ptr %i.kb, i64 %indvars.iv179
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 24
  store ptr %i.ka, ptr %i.kd, align 8
  call void @hostlist_destroy(ptr noundef nonnull %i.jp) #9
  call void @slurm_xfree(ptr noundef nonnull %i.l) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #9
  %indvars.iv.next180 = add nsw i64 %indvars.iv179, 1 ; 2 uses
  %exitcond182.not = icmp eq i64 %indvars.iv.next180, %wide.trip.count
  br i1 %exitcond182.not, label %._crit_edge158.loopexit, label %.lr.ph157, !llvm.loop !18

._crit_edge158.loopexit:                          ; preds = %bb.bi
  %.pre183 = load i32, ptr %i.iz, align 8
  br label %._crit_edge158

._crit_edge158:                                   ; preds = %._crit_edge158.loopexit, %._crit_edge153
  %i.ke = phi i32 [ %.pre183, %._crit_edge158.loopexit ], [ %i.ji, %._crit_edge153 ]
  %i.kf = load ptr, ptr %i.jd, align 8            ; 2 uses
  %i.kg = icmp sgt i32 %i.ke, 0
  br i1 %i.kg, label %.lr.ph.i118, label %.preheader.i

.preheader.i:                                     ; preds = %bb.bk, %._crit_edge158
  %.0.lcssa.i = phi ptr [ %i.kf, %._crit_edge158 ], [ %i.kq, %bb.bk ]
  %i.kh = load i32, ptr %i.jc, align 4
  %i.ki = icmp sgt i32 %i.kh, 0
  br i1 %i.ki, label %.lr.ph18.i, label %_log_blocks.exit

.lr.ph.i118:                                      ; preds = %._crit_edge158, %bb.bk
  %.015.i = phi ptr [ %i.kq, %bb.bk ], [ %i.kf, %._crit_edge158 ] ; 3 uses
  %.01214.i = phi i32 [ %i.kp, %bb.bk ], [ 0, %._crit_edge158 ]
  %i.kj = call i32 @get_log_level() #9
  %i.kk = icmp sgt i32 %i.kj, 4
  br i1 %i.kk, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.lr.ph.i118
  %i.kl = getelementptr inbounds nuw i8, ptr %.015.i, i64 8
  %i.km = load ptr, ptr %i.kl, align 8
  %i.kn = getelementptr inbounds nuw i8, ptr %.015.i, i64 24
  %i.ko = load ptr, ptr %i.kn, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.19, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._log_blocks, ptr noundef %i.km, ptr noundef %i.ko) #9
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.lr.ph.i118
  %i.kp = add nuw nsw i32 %.01214.i, 1            ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.015.i, i64 40 ; 2 uses
  %i.kr = load i32, ptr %i.iz, align 8
  %i.ks = icmp slt i32 %i.kp, %i.kr
  br i1 %i.ks, label %.lr.ph.i118, label %.preheader.i, !llvm.loop !19

.lr.ph18.i:                                       ; preds = %.preheader.i, %bb.bm
  %.117.i = phi ptr [ %i.la, %bb.bm ], [ %.0.lcssa.i, %.preheader.i ] ; 3 uses
  %.11316.i = phi i32 [ %i.kz, %bb.bm ], [ 0, %.preheader.i ]
  %i.kt = call i32 @get_log_level() #9
  %i.ku = icmp sgt i32 %i.kt, 4
  br i1 %i.ku, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %.lr.ph18.i
  %i.kv = getelementptr inbounds nuw i8, ptr %.117.i, i64 8
  %i.kw = load ptr, ptr %i.kv, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %.117.i, i64 24
  %i.ky = load ptr, ptr %i.kx, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.20, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._log_blocks, ptr noundef %i.kw, ptr noundef %i.ky) #9
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %.lr.ph18.i
  %i.kz = add nuw nsw i32 %.11316.i, 1            ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.117.i, i64 40
  %i.lb = load i32, ptr %i.jc, align 4
  %i.lc = icmp slt i32 %i.kz, %i.lb
  br i1 %i.lc, label %.lr.ph18.i, label %_log_blocks.exit, !llvm.loop !20

_log_blocks.exit:                                 ; preds = %bb.bm, %.preheader.i
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.iy, ptr %i.ld, align 8
  call void @slurm_xfree(ptr noundef nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  ret i32 0
}

declare ptr @slurm_xcalloc(i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @bit_alloc(i64 noundef) local_unnamed_addr #2

declare i32 @list_count(ptr noundef) local_unnamed_addr #2

declare void @bit_nset(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @list_for_each(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_list_to_bitmap(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 3 uses
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i16, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = trunc i32 %i.a to i16                    ; 2 uses
  store i16 %i.e, ptr %i.c, align 8
  %.pre = load i32, ptr %0, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = phi i16 [ %i.e, %bb.c ], [ %i.d, %bb.b ]
  %i.g = phi i32 [ %.pre, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %i.h = zext i16 %i.f to i32                     ; 2 uses
  %i.i = srem i32 %i.g, %i.h
  %i.j = sdiv i32 %i.g, %i.h
  %.not20 = icmp eq i32 %i.i, 0
  br i1 %.not20, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.k = sitofp i32 %i.j to double
  %i.l = tail call double @log2(double noundef %i.k) #9 ; 3 uses
  %i.m = tail call double @llvm.trunc.f64(double %i.l)
  %i.n = fcmp une double %i.m, %i.l
  br i1 %i.n, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = fptosi double %i.l to i32                ; 2 uses
  %i.p = icmp sgt i32 %i.o, 15
  br i1 %i.p, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = sext i32 %i.o to i64
  tail call void @bit_set(ptr noundef %i.r, i64 noundef %i.s) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.a, %bb.g
  %.0 = phi i32 [ 0, %bb.g ], [ 1, %bb.a ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %bb.f ]
  ret i32 %.0
}

; Function Attrs: noreturn
declare void @fatal(ptr noundef, ...) local_unnamed_addr #3

declare void @bit_set(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @s_p_hashtbl_destroy(ptr noundef) local_unnamed_addr #2

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #2

declare i32 @xstrcmp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @node_name2bitmap(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @bit_or(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @bit_copy(ptr noundef) local_unnamed_addr #2

declare i32 @bit_set_count(ptr noundef) local_unnamed_addr #2

declare i32 @bit_clear_count(ptr noundef) local_unnamed_addr #2

declare void @bit_not(ptr noundef) local_unnamed_addr #2

declare ptr @bitmap2node_name(ptr noundef) local_unnamed_addr #2

declare void @warning(ptr noundef, ...) local_unnamed_addr #2

declare ptr @hostlist_ranged_string_xmalloc(ptr noundef) local_unnamed_addr #2

declare void @hostlist_destroy(ptr noundef) local_unnamed_addr #2

declare i64 @bit_ffs_from_bit(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_xstrfmtcat(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @_cmp_block_level(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = load i32, ptr %1, align 8
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.a, i32 %i.b)
  ret i32 %.0
}

declare ptr @hostlist_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @block_record_update_block_config(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = sext i32 %1 to i64                       ; 3 uses
  %i.h = getelementptr inbounds [16 x i8], ptr %i.f, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  tail call void @slurm_xfree(ptr noundef nonnull %i.i) #9
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds [40 x i8], ptr %i.k, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call ptr @xstrdup(ptr noundef %i.n) #9
  %i.p = load ptr, ptr %i.e, align 8
  %i.q = getelementptr inbounds [16 x i8], ptr %i.p, i64 %i.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.o, ptr %i.r, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log2(double noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal noundef i32 @_parse_block(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, i32 %1, ptr nofree readnone captures(none) %2, ptr noundef %3, ptr nofree readnone captures(none) %4, ptr noundef %5) #0 {
bb.a:
  %i.a = tail call ptr @s_p_hashtbl_create(ptr noundef nonnull @_parse_block._block_options) #9 ; 3 uses
  %i.b = load ptr, ptr %5, align 8
  %i.c = tail call i32 @s_p_parse_line(ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull %5) #9 ; 0 uses
  %i.d = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 16, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 68, ptr noundef nonnull @__func__._parse_block) #9 ; 3 uses
  %i.e = tail call ptr @xstrdup(ptr noundef %3) #9
  store ptr %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = tail call i32 @s_p_get_string(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.18, ptr noundef %i.a) #9 ; 0 uses
  tail call void @s_p_hashtbl_destroy(ptr noundef %i.a) #9
  store ptr %i.d, ptr %0, align 8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @_destroy_block(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr %0, ptr %i.a, align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @slurm_xfree(ptr noundef nonnull %i.b) #9
  tail call void @slurm_xfree(ptr noundef nonnull %0) #9
  call void @slurm_xfree(ptr noundef nonnull %i.a) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

declare i32 @get_log_level() local_unnamed_addr #2

declare void @log_var(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @s_p_hashtbl_create(ptr noundef) local_unnamed_addr #2

declare i32 @s_p_parse_file(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @s_p_get_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare ptr @strtok_r(ptr noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #7

declare i32 @s_p_get_array(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @s_p_parse_line(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.trunc.f64(double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #8

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

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
end_hunk_1
