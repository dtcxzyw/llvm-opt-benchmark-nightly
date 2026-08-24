Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/gres_select_filter?download=true
inline.NumInlined: 23
inline.NumDeleted: 17
begin_hunk_0_@_foreach_remove_unusable:bb.a
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.es = load i64, ptr %i.er, align 8            ; 2 uses
  %.not188 = icmp eq i64 %i.es, -2
  br i1 %.not188, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.et = udiv i64 %i.es, %.0147210
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8
  %. = tail call i64 @llvm.umin.i64(i64 %i.ev, i64 %i.et)
  store i64 %., ptr %i.eu, align 8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ex = load i64, ptr %i.ew, align 8
  %i.ey = icmp ult i64 %i.ex, %.2
  br i1 %i.ey, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8            ; 2 uses
  %.not189 = icmp ne i64 %i.fa, 0
  %i.fb = icmp ult i64 %i.fa, %.2
  %or.cond193 = select i1 %.not189, i1 %i.fb, i1 false
  br i1 %or.cond193, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.fc = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.fd = and i64 %i.fc, 1
  %.not191 = icmp eq i64 %i.fd, 0
  br i1 %.not191, label %.thread223, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fe = tail call i32 @slurm_get_log_level() #7
  %i.ff = icmp sgt i32 %i.fe, 3
  br i1 %i.ff, label %bb.bf, label %.thread223

bb.bf:                                            ; preds = %bb.be
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fh = load i64, ptr %i.fg, align 8
  %i.fi = load i64, ptr %i.ew, align 8
  tail call void (i32, ptr, ...) @slurm_log_var(i32 noundef 4, ptr noundef nonnull @.str.4, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._foreach_remove_unusable, i64 noundef %.2, i64 noundef %i.fh, i64 noundef %i.fi) #7
  br label %.thread223

bb.bg:                                            ; preds = %bb.bc
  %i.fj = load ptr, ptr %i.a, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  %i.fl = load i32, ptr %i.fk, align 4
  %i.fm = tail call zeroext i1 @gres_id_sharing(i32 noundef %i.fl) #7
  br i1 %i.fm, label %bb.bh, label %.thread223

bb.bh:                                            ; preds = %bb.bg
  %i.fn = load i64, ptr %i.ew, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8            ; 2 uses
  %i.fq = load i16, ptr %i.fp, align 2
  %i.fr = trunc i64 %i.fn to i16
  %i.fs = add i16 %i.fq, %i.fr
  store i16 %i.fs, ptr %i.fp, align 2
  %i.ft = load i64, ptr %i.ez, align 8            ; 2 uses
  %.not190.not = icmp eq i64 %i.ft, 0
  %i.fu = tail call i64 @llvm.umin.i64(i64 %i.ft, i64 %.2146)
  %.3 = select i1 %.not190.not, i64 %.2146, i64 %i.fu
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.fw = load ptr, ptr %i.fv, align 8            ; 3 uses
  %i.fx = load i16, ptr %i.fw, align 2
  %i.fy = zext i16 %i.fx to i64
  %i.fz = add i64 %.3, %i.fy                      ; 2 uses
  %i.ga = icmp ult i64 %i.fz, 255
  br i1 %i.ga, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.gb = trunc nuw nsw i64 %i.fz to i16
  store i16 %i.gb, ptr %i.fw, align 2
  br label %.thread223

bb.bj:                                            ; preds = %bb.bh
  store i16 255, ptr %i.fw, align 2
  br label %.thread223

.thread223:                                       ; preds = %bb.au, %bb.av, %bb.at, %bb.bg, %bb.bj, %bb.bi, %bb.bd, %bb.bf, %bb.be, %bb.u, %bb.w, %bb.v, %bb.n, %bb.p, %bb.o
  %.1149 = phi i32 [ -1, %bb.n ], [ -1, %bb.u ], [ -1, %bb.bd ], [ 0, %bb.bg ], [ -1, %bb.o ], [ -1, %bb.p ], [ -1, %bb.v ], [ -1, %bb.w ], [ -1, %bb.be ], [ -1, %bb.bf ], [ 0, %bb.bi ], [ 0, %bb.bj ], [ -1, %bb.at ], [ -1, %bb.av ], [ -1, %bb.au ]
  ret i32 %.1149
}

declare void @slurm_xfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gres_select_filter_select_and_set(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 14 uses
  %i.e = alloca i32, align 4                      ; 10 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 8 uses
  %3 = alloca %struct.select_and_set_args_t, align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  store i32 -1, ptr %i.e, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  store ptr null, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  store i32 0, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  store ptr %1, ptr %3, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.e, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store ptr %i.g, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 0, ptr %i.p, align 8
  store ptr %2, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %i.f, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %.not = icmp eq ptr %i.i, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  br i1 %.not, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 6 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not36 = icmp eq ptr %i.v, null
  br i1 %.not36, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.x = load i32, ptr %i.w, align 8              ; 2 uses
  %i.y = call i64 @slurm_bit_size(ptr noundef nonnull %i.v) #7 ; 2 uses
  %i.z = trunc i64 %i.y to i32
  %i.aa = load ptr, ptr %i.u, align 8
  %i.ab = call i32 @slurm_bit_set_count(ptr noundef %i.aa) #7
  store i32 0, ptr %i.d, align 4
  %i.ac = load ptr, ptr %i.u, align 8
  %i.ad = call ptr @next_node_bitmap(ptr noundef %i.ac, ptr noundef nonnull %i.d) #7 ; 2 uses
  %i.ae = icmp ne ptr %i.ad, null
  %i.af = load i32, ptr %i.g, align 4
  %i.ag = icmp eq i32 %i.af, 0
  %i.ah = select i1 %i.ae, i1 %i.ag, i1 false
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.c ] ; 3 uses
  %i.ai = phi ptr [ %i.as, %.lr.ph ], [ %i.ad, %bb.c ]
  %.051 = phi i32 [ %i.ao, %.lr.ph ], [ %i.ab, %bb.c ] ; 2 uses
  %i.aj = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.aj, ptr %i.j, align 8
  %i.ak = load i32, ptr %i.d, align 4
  store i32 %i.ak, ptr %i.m, align 8
  store ptr %i.ai, ptr %i.n, align 8
  store i32 %.051, ptr %i.p, align 8
  store i16 0, ptr %i.q, align 4
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = call i32 @slurm_list_for_each(ptr noundef %i.am, ptr noundef nonnull @_select_and_set_node, ptr noundef nonnull %3) #7 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ao = add nsw i32 %.051, -1
  call void @slurm_xfree(ptr noundef nonnull %i.t) #7
  %i.ap = load i32, ptr %i.d, align 4
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.d, align 4
  %i.ar = load ptr, ptr %i.u, align 8
  %i.as = call ptr @next_node_bitmap(ptr noundef %i.ar, ptr noundef nonnull %i.d) #7 ; 2 uses
  %i.at = icmp ne ptr %i.as, null
  %i.au = load i32, ptr %i.g, align 4
  %i.av = icmp eq i32 %i.au, 0
  %i.aw = select i1 %i.at, i1 %i.av, i1 false
  br i1 %i.aw, label %.lr.ph, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %i.ax = load i32, ptr %i.e, align 4
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %.preheader, label %.thread

.preheader:                                       ; preds = %._crit_edge
  store i32 0, ptr %i.d, align 4
  %i.az = load ptr, ptr %i.u, align 8
  %i.ba = call ptr @next_node_bitmap(ptr noundef %i.az, ptr noundef nonnull %i.d) #7
  %.not3856 = icmp eq ptr %i.ba, null
  br i1 %.not3856, label %._crit_edge59, label %.lr.ph58

.lr.ph58:                                         ; preds = %.preheader, %bb.t
  %.157 = phi i32 [ %4, %bb.t ], [ -1, %.preheader ]
  store i32 -1, ptr %i.e, align 4
  %4 = add nsw i32 %.157, 1                       ; 2 uses
  %5 = zext nneg i32 %4 to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %5
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = call ptr @slurm_list_iterator_create(ptr noundef %i.bc) #7 ; 3 uses
  %i.be = call ptr @slurm_list_next(ptr noundef %i.bd) #7 ; 2 uses
  %.not3952 = icmp eq ptr %i.be, null
  br i1 %.not3952, label %._crit_edge55, label %.lr.ph54

.lr.ph54:                                         ; preds = %.lr.ph58, %bb.s
  %i.bf = phi ptr [ %i.ej, %bb.s ], [ %i.be, %.lr.ph58 ] ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8            ; 4 uses
  %.not40 = icmp eq ptr %i.bj, null
  br i1 %.not40, label %bb.s, label %bb.d, !llvm.loop !17

bb.d:                                             ; preds = %.lr.ph54
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8            ; 4 uses
  %.not41 = icmp eq ptr %i.bn, null
  br i1 %.not41, label %bb.s, label %bb.e, !llvm.loop !17

bb.e:                                             ; preds = %bb.d
  %i.bo = load i32, ptr %i.d, align 4             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store ptr null, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store ptr null, ptr %i.c, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 5 uses
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 128 ; 7 uses
  %i.bs = load i64, ptr %i.br, align 8
  %.not.i = icmp ugt i64 %i.bq, %i.bs
  br i1 %.not.i, label %bb.f, label %_set_job_bits2.exit

bb.f:                                             ; preds = %bb.e
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 88 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %.not74.i = icmp eq ptr %i.bu, null
  %.pre27.i = sext i32 %i.bo to i64               ; 3 uses
  br i1 %.not74.i, label %._crit_edge26.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %.pre27.i
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %.not75.i = icmp eq ptr %i.bw, null
  br i1 %.not75.i, label %._crit_edge26.i, label %bb.h

._crit_edge26.i:                                  ; preds = %bb.g, %bb.f
  %i.bx = load ptr, ptr @node_record_table_ptr, align 8
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %.pre27.i
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 280
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__._set_job_bits2, i32 noundef %i.x, ptr noundef %i.cb, i32 noundef %i.bo) #7 ; 0 uses
  br label %_set_job_bits2.exit

bb.h:                                             ; preds = %bb.g
  %i.cd = call i64 @slurm_bit_size(ptr noundef nonnull %i.bw) #7 ; 4 uses
  %i.ce = trunc i64 %i.cd to i32                  ; 2 uses
  %i.cf = load i64, ptr %i.bp, align 8
  %i.cg = load i64, ptr %i.br, align 8            ; 3 uses
  %i.ch = icmp ugt i64 %i.cf, %i.cg
  br i1 %i.ch, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bn, i64 68
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = icmp eq i32 %i.cj, %i.ce
  br i1 %i.ck, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %sext.i = shl i64 %i.cd, 32
  %i.cl = ashr exact i64 %sext.i, 32              ; 3 uses
  %i.cm = call ptr @slurm_xcalloc(i64 noundef %i.cl, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.5, i32 noundef 1039, ptr noundef nonnull @__func__._set_job_bits2) #7 ; 4 uses
  store ptr %i.cm, ptr %i.b, align 8
  %i.cn = call ptr @slurm_xcalloc(i64 noundef %i.cl, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.5, i32 noundef 1040, ptr noundef nonnull @__func__._set_job_bits2) #7 ; 5 uses
  store ptr %i.cn, ptr %i.c, align 8
  %i.co = icmp sgt i32 %i.ce, 0
  br i1 %i.co, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %wide.trip.count.i = and i64 %i.cd, 2147483647  ; 5 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.cd, 2147483644              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %index
  store <4 x i32> %vec.ind, ptr %i.cp, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec
  br i1 %cmp.n, label %.lr.ph7.split.us.preheader.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph7.split.us.preheader.i:                     ; preds = %.lr.ph.i, %middle.block
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bn, i64 72
  br label %.lr.ph7.split.us.i

.lr.ph7.split.us.i:                               ; preds = %..loopexit_crit_edge.us.i, %.lr.ph7.split.us.preheader.i
  %indvars.iv19.i = phi i64 [ 0, %.lr.ph7.split.us.preheader.i ], [ %indvars.iv.next20.i, %..loopexit_crit_edge.us.i ] ; 4 uses
  %i.ct = load ptr, ptr %i.bt, align 8
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %.pre27.i
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = call i32 @slurm_bit_test(ptr noundef %i.cv, i64 noundef %indvars.iv19.i) #7
  %.not77.us.i = icmp eq i32 %i.cw, 0
  br i1 %.not77.us.i, label %..loopexit_crit_edge.us.i, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.lr.ph7.split.us.i, %bb.m
  %indvars.iv14.i = phi i64 [ %indvars.iv.next15.i, %bb.m ], [ 0, %.lr.ph7.split.us.i ] ; 5 uses
  %i.cx = icmp eq i64 %indvars.iv14.i, %indvars.iv19.i
  br i1 %i.cx, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.preheader.us.i
  %i.cy = load ptr, ptr %i.cr, align 8
  %i.cz = call i32 @slurm_bit_test(ptr noundef %i.cy, i64 noundef %indvars.iv14.i) #7
  %.not78.us.i = icmp eq i32 %i.cz, 0
  br i1 %.not78.us.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.da = load ptr, ptr %i.cs, align 8
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv19.i
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv14.i
  %i.de = load i32, ptr %i.dd, align 4
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv14.i ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = add nsw i32 %i.dg, %i.de
  store i32 %i.dh, ptr %i.df, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %.preheader.us.i
  %indvars.iv.next15.i = add nuw nsw i64 %indvars.iv14.i, 1 ; 2 uses
  %exitcond18.not.i = icmp eq i64 %indvars.iv.next15.i, %wide.trip.count.i
  br i1 %exitcond18.not.i, label %..loopexit_crit_edge.us.i, label %.preheader.us.i, !llvm.loop !21

..loopexit_crit_edge.us.i:                        ; preds = %bb.m, %.lr.ph7.split.us.i
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1 ; 2 uses
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next20.i, %wide.trip.count.i
  br i1 %exitcond23.not.i, label %._crit_edge.i, label %.lr.ph7.split.us.i, !llvm.loop !22

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.i
  %i.dj = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.dj, ptr %i.di, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph7.split.us.preheader.i, label %.lr.ph.i, !llvm.loop !23

._crit_edge.i:                                    ; preds = %..loopexit_crit_edge.us.i, %bb.j
  store ptr %i.cm, ptr @sorting_links_cnt, align 8
  call void @qsort(ptr noundef %i.cn, i64 noundef %i.cl, i64 noundef 4, ptr noundef nonnull @_compare_gres_by_links) #7
  store ptr null, ptr @sorting_links_cnt, align 8
  %.pre24.pre.i = load i64, ptr %i.br, align 8
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge.i, %bb.i, %bb.h
  %.pre24.i = phi i64 [ %.pre24.pre.i, %._crit_edge.i ], [ %i.cg, %bb.i ], [ %i.cg, %bb.h ] ; 2 uses
  %i.dk = phi ptr [ %i.cm, %._crit_edge.i ], [ null, %bb.i ], [ null, %bb.h ] ; 2 uses
  %i.dl = phi ptr [ %i.cn, %._crit_edge.i ], [ null, %bb.i ], [ null, %bb.h ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bf, i64 56 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 8
  %i.do = icmp sgt i32 %i.dn, 0
  br i1 %i.do, label %.lr.ph10.i, label %.critedge.i

.lr.ph10.i:                                       ; preds = %bb.n, %bb.o
  %i.dp = phi i64 [ %i.dv, %bb.o ], [ %.pre24.i, %bb.n ] ; 3 uses
  %.0648.i = phi i32 [ %i.dw, %bb.o ], [ 0, %bb.n ] ; 2 uses
  %i.dq = load i64, ptr %i.bp, align 8            ; 2 uses
  %i.dr = icmp ugt i64 %i.dq, %i.dp
  br i1 %i.dr, label %bb.o, label %.critedge.i

bb.o:                                             ; preds = %.lr.ph10.i
  %i.ds = sub nuw i64 %i.dq, %i.dp
  %i.dt = call fastcc i64 @_pick_gres_topo(ptr noundef nonnull readonly %i.bf, i64 noundef %i.ds, i32 noundef %i.bo, i32 noundef %.0648.i, ptr noundef %i.dl, ptr noundef %i.dk)
  %i.du = load i64, ptr %i.br, align 8
  %i.dv = add i64 %i.du, %i.dt                    ; 3 uses
  store i64 %i.dv, ptr %i.br, align 8
  %i.dw = add nuw nsw i32 %.0648.i, 1             ; 2 uses
  %i.dx = load i32, ptr %i.dm, align 8
  %i.dy = icmp slt i32 %i.dw, %i.dx
  br i1 %i.dy, label %.lr.ph10.i, label %.critedge.i, !llvm.loop !24

.critedge.i:                                      ; preds = %bb.o, %.lr.ph10.i, %bb.n
end_hunk_0
begin_hunk_1_@_set_task_bits:bb.a

_get_task_cnt_node.exit92:                        ; preds = %.lr.ph.i87, %middle.block148, %.preheader.i81
  %.011.lcssa.i83 = phi i32 [ 0, %.preheader.i81 ], [ %i.cp, %middle.block148 ], [ %i.cs, %.lr.ph.i87 ]
  %i.ct = load i32, ptr %i.bu, align 4
  %i.cu = sub i32 %.011.lcssa.i83, %i.ct
  %i.cv = zext i32 %i.cu to i64
  %i.cw = load i64, ptr %i.bt, align 8            ; 2 uses
  %i.cx = mul i64 %i.cw, %i.cv
  %i.cy = call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__._set_task_bits, ptr noundef %i.cg, i32 noundef %2, ptr noundef %i.cl, i32 noundef %0, i64 noundef %.4, i64 noundef %i.cx, i64 noundef %i.cw) #7 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %.thread, %_get_task_cnt_node.exit92, %bb.b
  %.071 = phi i32 [ 2072, %_get_task_cnt_node.exit92 ], [ 2072, %bb.b ], [ 0, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.071
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_set_job_bits1(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, i16 noundef zeroext %6, ptr nofree noundef readonly captures(none) %7, i32 noundef %8, i32 noundef %9, i1 noundef zeroext %10) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 128 ; 6 uses
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = icmp eq i64 %i.j, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.o = load i32, ptr %i.n, align 8
  %i.p = icmp eq i32 %1, 0
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = phi i64 [ 0, %bb.b ], [ %i.l, %bb.a ]
  %i.r = add nsw i32 %2, -1
  %i.s = zext i32 %i.r to i64
  %i.t = add i64 %i.q, %i.s
  %i.u = sub i64 %i.j, %i.t
  %sext = shl i64 %i.u, 32
  %i.v = ashr exact i64 %sext, 32
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.x = load i64, ptr %i.w, align 8
  %. = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.x)
  %i.y = trunc i64 %. to i32                      ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 5 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = sext i32 %0 to i64                      ; 7 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call i64 @slurm_bit_size(ptr noundef %i.ad) #7 ; 4 uses
  %i.af = trunc i64 %i.ae to i32                  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  %i.ah = load i16, ptr %i.ag, align 2            ; 2 uses
  %.not = icmp eq i16 %i.ah, 0
  br i1 %.not, label %bb.d, label %.thread234

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.aj = load i16, ptr %i.ai, align 8            ; 2 uses
  switch i16 %i.aj, label %bb.e [
    i16 0, label %.thread
    i16 -2, label %.thread
  ]

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 10
  %i.al = load i16, ptr %i.ak, align 2
  %i.am = mul i16 %i.al, %i.aj                    ; 2 uses
  %.not211 = icmp eq i16 %i.am, 0
  br i1 %.not211, label %.thread, label %.thread234

.thread234:                                       ; preds = %bb.c, %bb.e
  %.0175237 = phi i16 [ %i.am, %bb.e ], [ %i.ah, %bb.c ]
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ao = load i16, ptr %i.an, align 4            ; 2 uses
  %.not212 = icmp eq i16 %i.ao, 0
  %.224 = tail call i16 @llvm.umin.i16(i16 %6, i16 %i.ao)
  %.0191 = select i1 %.not212, i16 %6, i16 %.224
  %i.ap = zext i16 %.0191 to i32
  %i.aq = mul i32 %8, %i.ap
  %i.ar = zext i16 %.0175237 to i32
  %i.as = udiv i32 %i.aq, %i.ar
  %i.at = tail call i32 @llvm.umin.i32(i32 %i.as, i32 %i.y)
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.d, %.thread234, %bb.e
  %.0179 = phi i32 [ %i.at, %.thread234 ], [ %i.y, %bb.e ], [ %i.y, %bb.d ], [ %i.y, %bb.d ] ; 2 uses
  %.not213 = icmp eq i32 %9, 0
  %.not214 = icmp ugt i32 %.0179, %9
  %or.cond225 = select i1 %.not213, i1 true, i1 %.not214
  br i1 %or.cond225, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.au = zext i32 %9 to i64
  %i.av = load i64, ptr %i.k, align 8
  %i.aw = add i64 %i.av, %i.au
  store i64 %i.aw, ptr %i.k, align 8
  br label %bb.aa

bb.g:                                             ; preds = %.thread
  %i.ax = sub i32 %.0179, %9                      ; 5 uses
  %i.ay = icmp sgt i32 %i.ax, 1
  br i1 %i.ay, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 68
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = icmp eq i32 %i.ba, %i.af
  br i1 %i.bb, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bc = tail call i32 @llvm.smax.i32(i32 %i.ax, i32 1)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.0178 = phi i32 [ %i.bc, %bb.i ], [ 65534, %bb.h ] ; 7 uses
  %i.bd = uitofp nneg i32 %.0178 to float
  %i.be = uitofp i32 %8 to float
  %i.bf = fdiv float %i.bd, %i.be
  %i.bg = and i32 %i.o, 65535                     ; 5 uses
  %.not297 = icmp eq i32 %i.bg, 0                 ; 2 uses
  br i1 %.not297, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.bh = zext nneg i32 %i.bg to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %.0180252 = phi i32 [ 0, %.lr.ph.preheader ], [ %.1181, %bb.l ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv
  %i.bj = load i32, ptr %i.bi, align 4            ; 2 uses
  %.not223 = icmp eq i32 %i.bj, 0
  br i1 %.not223, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.bk = sub nsw i32 %.0178, %.0180252
  %i.bl = uitofp i32 %i.bj to float
  %i.bm = fmul float %i.bf, %i.bl
  %i.bn = fptosi float %i.bm to i32
  %.226 = tail call i32 @llvm.smin.i32(i32 %i.bk, i32 %i.bn)
  %i.bo = sext i32 %.226 to i64
  %i.bp = trunc nuw nsw i64 %indvars.iv to i32
  %i.bq = tail call fastcc i64 @_pick_gres_topo(ptr noundef %3, i64 noundef %i.bo, i32 noundef %0, i32 noundef %i.bp, ptr noundef null, ptr noundef null)
  %i.br = trunc i64 %i.bq to i32
  %i.bs = add i32 %.0180252, %i.br
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.k
  %.1181 = phi i32 [ %i.bs, %bb.k ], [ %.0180252, %.lr.ph ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bt = icmp samesign ult i64 %indvars.iv.next, %i.bh
  %i.bu = icmp slt i32 %.1181, %.0178             ; 2 uses
  %i.bv = select i1 %i.bt, i1 %i.bu, i1 false
  br i1 %i.bv, label %.lr.ph, label %._crit_edge, !llvm.loop !72

._crit_edge:                                      ; preds = %bb.l
  br i1 %i.bu, label %._crit_edge.thread, label %bb.m

._crit_edge.thread:                               ; preds = %bb.j, %._crit_edge
  %.0180.lcssa341 = phi i32 [ %.1181, %._crit_edge ], [ 0, %bb.j ] ; 2 uses
  %i.bw = sub nsw i32 %.0178, %.0180.lcssa341
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = tail call fastcc i64 @_pick_gres_topo(ptr noundef %3, i64 noundef %i.bx, i32 noundef %0, i32 noundef -1, ptr noundef null, ptr noundef null)
  %i.bz = trunc i64 %i.by to i32
  %i.ca = add i32 %.0180.lcssa341, %i.bz
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.2182 = phi i32 [ %i.ca, %._crit_edge.thread ], [ %.1181, %._crit_edge ] ; 3 uses
  %i.cb = icmp ne i32 %i.bg, 0
  %i.cc = icmp slt i32 %.2182, %.0178
  %i.cd = select i1 %i.cb, i1 %i.cc, i1 false
  br i1 %i.cd, label %.lr.ph258.preheader, label %._crit_edge259

.lr.ph258.preheader:                              ; preds = %bb.m
  %i.ce = zext nneg i32 %i.bg to i64
  br label %.lr.ph258

.lr.ph258:                                        ; preds = %.lr.ph258.preheader, %bb.o
  %indvars.iv303 = phi i64 [ 0, %.lr.ph258.preheader ], [ %indvars.iv.next304, %bb.o ] ; 3 uses
  %.3183256 = phi i32 [ %.2182, %.lr.ph258.preheader ], [ %.4, %bb.o ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv303
  %i.cg = load i32, ptr %i.cf, align 4
  %.not222 = icmp eq i32 %i.cg, 0
  br i1 %.not222, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph258
  %i.ch = sub nsw i32 %.0178, %.3183256
  %11 = zext nneg i32 %i.ch to i64
  %i.ci = trunc nuw nsw i64 %indvars.iv303 to i32
  %i.cj = tail call fastcc i64 @_pick_gres_topo(ptr noundef %3, i64 noundef %11, i32 noundef %0, i32 noundef %i.ci, ptr noundef null, ptr noundef null)
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = add i32 %.3183256, %i.ck
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph258, %bb.n
  %.4 = phi i32 [ %i.cl, %bb.n ], [ %.3183256, %.lr.ph258 ] ; 3 uses
  %indvars.iv.next304 = add nuw nsw i64 %indvars.iv303, 1 ; 2 uses
  %i.cm = icmp samesign ult i64 %indvars.iv.next304, %i.ce
  %i.cn = icmp slt i32 %.4, %.0178
  %i.co = select i1 %i.cm, i1 %i.cn, i1 false
  br i1 %i.co, label %.lr.ph258, label %._crit_edge259, !llvm.loop !73

._crit_edge259:                                   ; preds = %bb.o, %bb.m
  %.3183.lcssa = phi i32 [ %.2182, %bb.m ], [ %.4, %bb.o ] ; 2 uses
  %i.cp = icmp ne i32 %.3183.lcssa, 0
  %or.cond = or i1 %10, %i.cp
  br i1 %or.cond, label %.loopexit248, label %.preheader247

.preheader247:                                    ; preds = %._crit_edge259
  br i1 %.not297, label %.loopexit248.thread, label %.lr.ph262.preheader

.lr.ph262.preheader:                              ; preds = %.preheader247
  %i.cq = zext nneg i32 %i.bg to i64
  br label %.lr.ph262

.lr.ph262:                                        ; preds = %.lr.ph262.preheader, %bb.q
  %indvars.iv306 = phi i64 [ 0, %.lr.ph262.preheader ], [ %indvars.iv.next307, %bb.q ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv306
  %i.cs = load i32, ptr %i.cr, align 4
  %.not215 = icmp eq i32 %i.cs, 0
  br i1 %.not215, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph262
  %i.ct = trunc nuw nsw i64 %indvars.iv306 to i32
  %i.cu = tail call fastcc i64 @_pick_gres_topo(ptr noundef %3, i64 noundef 1, i32 noundef %0, i32 noundef %i.ct, ptr noundef null, ptr noundef null)
  %i.cv = trunc i64 %i.cu to i32
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph262, %bb.p
  %.6 = phi i32 [ 0, %.lr.ph262 ], [ %i.cv, %bb.p ] ; 2 uses
  %indvars.iv.next307 = add nuw nsw i64 %indvars.iv306, 1 ; 2 uses
  %i.cw = icmp samesign ult i64 %indvars.iv.next307, %i.cq
  %i.cx = icmp eq i32 %.6, 0
  %i.cy = select i1 %i.cw, i1 %i.cx, i1 false
  br i1 %i.cy, label %.lr.ph262, label %.loopexit248, !llvm.loop !74

.loopexit248:                                     ; preds = %bb.q, %._crit_edge259
  %.7 = phi i32 [ %.3183.lcssa, %._crit_edge259 ], [ %.6, %bb.q ] ; 2 uses
  %i.cz = icmp eq i32 %.7, 0
  br i1 %i.cz, label %.loopexit248.thread, label %bb.r

.loopexit248.thread:                              ; preds = %.preheader247, %.loopexit248
  %i.da = load ptr, ptr @node_record_table_ptr, align 8
  %i.db = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.ab
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 280
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__._set_job_bits1, i32 noundef %4, ptr noundef %i.de, i32 noundef %0) #7 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %.loopexit248.thread, %.loopexit248
  %.7343 = phi i32 [ 0, %.loopexit248.thread ], [ %.7, %.loopexit248 ] ; 4 uses
  %i.dg = icmp sgt i32 %.7343, %i.ax
  %i.dh = icmp sgt i32 %i.af, 0
  %or.cond351 = select i1 %i.dg, i1 %i.dh, i1 false
  br i1 %or.cond351, label %.lr.ph275, label %.loopexit

.lr.ph275:                                        ; preds = %bb.r
  %i.di = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.dj = and i64 %i.ae, 2147483647
  %wide.trip.count317 = and i64 %i.ae, 2147483647 ; 2 uses
  br label %bb.x

.preheader243:                                    ; preds = %.loopexit245
  %i.dk = icmp eq i32 %.3173, -1
  br i1 %i.dk, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader243
  %i.dl = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.dm = sext i32 %.3 to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.do = zext i32 %.3 to i64
  %wide.trip.count327 = and i64 %i.ae, 2147483647
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.lr.ph, %bb.w
  %.8284.us = phi i32 [ %i.ei, %bb.w ], [ %.7343, %.preheader.lr.ph ] ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %.preheader.us, %bb.v
  %indvars.iv324 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next325, %bb.v ] ; 5 uses
  %.0280.us = phi i32 [ 65534, %.preheader.us ], [ %.1.us, %bb.v ] ; 4 uses
  %.0166279.us = phi i32 [ -1, %.preheader.us ], [ %.1167.us, %bb.v ] ; 3 uses
  %i.dp = icmp eq i64 %indvars.iv324, %i.do
  br i1 %i.dp, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dq = load ptr, ptr %i.z, align 8
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.ab
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = tail call i32 @slurm_bit_test(ptr noundef %i.ds, i64 noundef %indvars.iv324) #7
  %.not217.us = icmp eq i32 %i.dt, 0
  br i1 %.not217.us, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.du = load ptr, ptr %i.dl, align 8
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.du, i64 %i.dm
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv324
  %i.dy = load i32, ptr %i.dx, align 4            ; 2 uses
  %.not218.us = icmp slt i32 %i.dy, %.0280.us
  %i.dz = trunc nuw nsw i64 %indvars.iv324 to i32
  %spec.select229.us = select i1 %.not218.us, i32 %i.dz, i32 %.0166279.us
  %spec.select230.us = tail call i32 @llvm.smin.i32(i32 %i.dy, i32 %.0280.us)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.1167.us = phi i32 [ %.0166279.us, %bb.s ], [ %spec.select229.us, %bb.u ], [ %.0166279.us, %bb.t ] ; 3 uses
  %.1.us = phi i32 [ %.0280.us, %bb.s ], [ %spec.select230.us, %bb.u ], [ %.0280.us, %bb.t ]
  %indvars.iv.next325 = add nuw nsw i64 %indvars.iv324, 1 ; 2 uses
  %exitcond328.not = icmp eq i64 %indvars.iv.next325, %wide.trip.count327
  br i1 %exitcond328.not, label %._crit_edge282.us, label %bb.s, !llvm.loop !75

bb.w:                                             ; preds = %._crit_edge282.us
  %i.ea = load ptr, ptr %i.z, align 8
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.ab
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = sext i32 %.1167.us to i64
  tail call void @slurm_bit_clear(ptr noundef %i.ec, i64 noundef %i.ed) #7
  %i.ee = load ptr, ptr %i.dn, align 8
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.ab ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8
  %i.eh = add i64 %i.eg, -1
  store i64 %i.eh, ptr %i.ef, align 8
  %i.ei = add nsw i32 %.8284.us, -1               ; 2 uses
  %i.ej = icmp sgt i32 %i.ei, %i.ax
  br i1 %i.ej, label %.preheader.us, label %.loopexit

._crit_edge282.us:                                ; preds = %bb.v
  %i.ek = icmp eq i32 %.1167.us, -1
  br i1 %i.ek, label %.thread238, label %bb.w

bb.x:                                             ; preds = %.lr.ph275, %.loopexit245
  %indvars.iv314 = phi i64 [ 0, %.lr.ph275 ], [ %indvars.iv.next315, %.loopexit245 ] ; 4 uses
  %indvars.iv309 = phi i64 [ 1, %.lr.ph275 ], [ %indvars.iv.next310, %.loopexit245 ] ; 2 uses
  %.0168274 = phi i32 [ -1, %.lr.ph275 ], [ %.3, %.loopexit245 ] ; 2 uses
  %.0170273 = phi i32 [ -1, %.lr.ph275 ], [ %.3173, %.loopexit245 ] ; 2 uses
  %i.el = load ptr, ptr %i.z, align 8
  %i.em = getelementptr inbounds [8 x i8], ptr %i.el, i64 %i.ab
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = tail call i32 @slurm_bit_test(ptr noundef %i.en, i64 noundef %indvars.iv314) #7
  %.not219 = icmp ne i32 %i.eo, 0
  %indvars.iv.next315 = add nuw nsw i64 %indvars.iv314, 1 ; 3 uses
  %i.ep = icmp samesign ult i64 %indvars.iv.next315, %i.dj
  %or.cond296 = select i1 %.not219, i1 %i.ep, i1 false
  br i1 %or.cond296, label %.lr.ph268.preheader, label %.loopexit245

.lr.ph268.preheader:                              ; preds = %bb.x
  %i.eq = trunc nuw nsw i64 %indvars.iv314 to i32
  br label %.lr.ph268

.lr.ph268:                                        ; preds = %.lr.ph268.preheader, %bb.z
  %indvars.iv311 = phi i64 [ %indvars.iv309, %.lr.ph268.preheader ], [ %indvars.iv.next312, %bb.z ] ; 3 uses
  %.1169266 = phi i32 [ %.0168274, %.lr.ph268.preheader ], [ %.2, %bb.z ] ; 2 uses
  %.1171265 = phi i32 [ %.0170273, %.lr.ph268.preheader ], [ %i.fa, %bb.z ] ; 3 uses
  %i.er = load ptr, ptr %i.z, align 8
  %i.es = getelementptr inbounds [8 x i8], ptr %i.er, i64 %i.ab
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = tail call i32 @slurm_bit_test(ptr noundef %i.et, i64 noundef %indvars.iv311) #7
  %.not220 = icmp eq i32 %i.eu, 0
  br i1 %.not220, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph268
  %i.ev = load ptr, ptr %i.di, align 8
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv314
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv311
  %i.ez = load i32, ptr %i.ey, align 4            ; 2 uses
  %.not221 = icmp sgt i32 %i.ez, %.1171265
  %spec.select227 = tail call i32 @llvm.smax.i32(i32 %i.ez, i32 %.1171265)
  %spec.select228 = select i1 %.not221, i32 %i.eq, i32 %.1169266
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph268
  %.2172 = phi i32 [ %spec.select227, %bb.y ], [ %.1171265, %.lr.ph268 ]
  %.2 = phi i32 [ %spec.select228, %bb.y ], [ %.1169266, %.lr.ph268 ] ; 2 uses
  %i.fa = freeze i32 %.2172                       ; 2 uses
  %indvars.iv.next312 = add nuw nsw i64 %indvars.iv311, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next312, %wide.trip.count317
  br i1 %exitcond.not, label %.loopexit245, label %.lr.ph268, !llvm.loop !76

.loopexit245:                                     ; preds = %bb.z, %bb.x
  %.3173 = phi i32 [ %.0170273, %bb.x ], [ %i.fa, %bb.z ] ; 2 uses
  %.3 = phi i32 [ %.0168274, %bb.x ], [ %.2, %bb.z ] ; 3 uses
  %indvars.iv.next310 = add nuw nsw i64 %indvars.iv309, 1
  %exitcond318.not = icmp eq i64 %indvars.iv.next315, %wide.trip.count317
  br i1 %exitcond318.not, label %.preheader243, label %bb.x, !llvm.loop !77

end_hunk_1
