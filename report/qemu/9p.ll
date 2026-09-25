Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/9p?download=true
inline.NumInlined: 372
inline.NumDeleted: 99
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@v9fs_walk:bb.a
  br label %trace_v9fs_walk.exit

trace_v9fs_walk.exit:                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %._crit_edge, %bb.g, %bb.h
  %.0213 = phi ptr [ %i.q, %bb.h ], [ %i.q, %._crit_edge ], [ %i.q, %bb.g ], [ null, %bb.i ], [ null, %bb.j ], [ null, %bb.k ], [ null, %bb.l ] ; 5 uses
  %.0209 = phi ptr [ %i.z, %bb.h ], [ %i.z, %._crit_edge ], [ %i.z, %bb.g ], [ null, %bb.i ], [ null, %bb.j ], [ null, %bb.k ], [ null, %bb.l ] ; 4 uses
  %.0205 = phi ptr [ %i.t, %bb.h ], [ %i.t, %._crit_edge ], [ %i.t, %bb.g ], [ null, %bb.i ], [ null, %bb.j ], [ null, %bb.k ], [ null, %bb.l ] ; 4 uses
  %.0202 = phi ptr [ %i.av, %bb.h ], [ null, %._crit_edge ], [ null, %bb.g ], [ null, %bb.i ], [ null, %bb.j ], [ null, %bb.k ], [ null, %bb.l ] ; 2 uses
  %i.bp = load i32, ptr %i.b, align 4
  %i.bq = call ptr @get_fid(ptr noundef %0, i32 noundef %i.bp) ; 9 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %trace_v9fs_walk.exit189, label %bb.m

bb.m:                                             ; preds = %trace_v9fs_walk.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  call void @g_free(ptr noundef null) #23
  %i.bu = load i64, ptr %i.bs, align 8            ; 2 uses
  store i64 %i.bu, ptr %1, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 4 uses
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = trunc i64 %i.bu to i32
  %i.by = call ptr @g_memdup(ptr noundef %i.bw, i32 noundef %i.bx) #25
  store ptr %i.by, ptr %i.bt, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  call void @g_free(ptr noundef null) #23
  %i.ca = load i64, ptr %i.bs, align 8            ; 2 uses
  store i64 %i.ca, ptr %2, align 8
  %i.cb = load ptr, ptr %i.bv, align 8
  %i.cc = trunc i64 %i.ca to i32
  %i.cd = call ptr @g_memdup(ptr noundef %i.cb, i32 noundef %i.cc) #25 ; 2 uses
  store ptr %i.cd, ptr %i.bz, align 8
  %i.ce = call ptr @qemu_coroutine_self() #23
  %i.cf = call ptr @qemu_bh_new_full(ptr noundef nonnull @co_run_in_worker_bh, ptr noundef %i.ce, ptr noundef nonnull @.str.1, ptr noundef null) #23 ; 2 uses
  call void @qemu_bh_schedule(ptr noundef %i.cf) #23
  call void @qemu_coroutine_yield() #23
  call void @qemu_bh_delete(ptr noundef %i.cf) #23
  %i.cg = getelementptr i8, ptr %0, i64 7         ; 3 uses
  %.val172 = load i8, ptr %i.cg, align 1
  %.not158 = icmp eq i8 %.val172, 0
  br i1 %.not158, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.ch = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 3 uses
  %i.cm = call i32 %i.ck(ptr noundef nonnull %i.cl, ptr noundef nonnull %1, ptr noundef nonnull %4) #23 ; 3 uses
  %i.cn = icmp slt i32 %i.cm, 0
  br i1 %i.cn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.co = tail call ptr @__errno_location() #26
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = sub i32 0, %i.cp                        ; 2 uses
  br label %.loopexit

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(144) %4, i64 144, i1 false)
  %i.cr = load i16, ptr %i.a, align 2             ; 2 uses
  %.not256 = icmp eq i16 %i.cr, 0
  br i1 %.not256, label %.loopexit, label %.lr.ph231

.lr.ph231:                                        ; preds = %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph231, %bb.x
  %i.cu = phi i16 [ %i.cr, %.lr.ph231 ], [ %i.ev, %bb.x ]
  %indvars.iv265 = phi i64 [ 0, %.lr.ph231 ], [ %indvars.iv.next266, %bb.x ] ; 9 uses
  %.0136228 = phi i32 [ %i.cm, %.lr.ph231 ], [ %.1137, %bb.x ]
  %.val171 = load i8, ptr %i.cg, align 1
  %.not159 = icmp eq i8 %.val171, 0
  br i1 %.not159, label %bb.r, label %.loopexit.loopexit

bb.r:                                             ; preds = %bb.q
  %i.cv = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 7400
  %.val175 = load i64, ptr %3, align 8
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = icmp eq i64 %i.cx, %.val175
  br i1 %i.cy, label %same_stat_id.exit, label %.same_stat_id.exit.thread_crit_edge

.same_stat_id.exit.thread_crit_edge:              ; preds = %bb.r
  %.pre272 = load ptr, ptr %i.d, align 8
  br label %same_stat_id.exit.thread

same_stat_id.exit:                                ; preds = %bb.r
  %.val176 = load i64, ptr %i.cs, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 7408
  %i.da = load i64, ptr %i.cz, align 8
  %i.db = icmp eq i64 %i.da, %.val176
  %.pre273 = load ptr, ptr %i.d, align 8          ; 3 uses
  br i1 %i.db, label %sub_0, label %same_stat_id.exit.thread

sub_0:                                            ; preds = %same_stat_id.exit
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %.pre273, i64 %indvars.iv265
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8            ; 3 uses
  %i.df = load i8, ptr %i.de, align 1             ; 2 uses
  %i.dg = zext i8 %i.df to i32
  %i.dh = sub nsw i32 46, %i.dg
  %.not257 = icmp eq i8 %i.df, 46
  br i1 %.not257, label %sub_1, label %.tail

sub_1:                                            ; preds = %sub_0
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  %i.dj = load i8, ptr %i.di, align 1             ; 2 uses
  %i.dk = zext i8 %i.dj to i32
  %i.dl = sub nsw i32 46, %i.dk
  %.not258 = icmp eq i8 %i.dj, 46
  br i1 %.not258, label %sub_2, label %.tail

sub_2:                                            ; preds = %sub_1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 2
  %i.dn = load i8, ptr %i.dm, align 1
  %i.do = zext i8 %i.dn to i32
  %i.dp = sub nsw i32 0, %i.do
  br label %.tail

.tail:                                            ; preds = %sub_0, %sub_1, %sub_2
  %i.dq = phi i32 [ %i.dh, %sub_0 ], [ %i.dl, %sub_1 ], [ %i.dp, %sub_2 ]
  %.not160 = icmp eq i32 %i.dq, 0
  br i1 %.not160, label %bb.x, label %same_stat_id.exit.thread

same_stat_id.exit.thread:                         ; preds = %.same_stat_id.exit.thread_crit_edge, %.tail, %same_stat_id.exit
  %i.dr = phi ptr [ %.pre272, %.same_stat_id.exit.thread_crit_edge ], [ %.pre273, %.tail ], [ %.pre273, %same_stat_id.exit ]
  %i.ds = load ptr, ptr %i.ch, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 288
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %indvars.iv265
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %.0209, i64 %indvars.iv265 ; 4 uses
  %i.dz = call i32 %i.du(ptr noundef nonnull %i.cl, ptr noundef nonnull %1, ptr noundef %i.dx, ptr noundef %i.dy) #23
  %i.ea = icmp slt i32 %i.dz, 0
  br i1 %i.ea, label %bb.s, label %bb.t

bb.s:                                             ; preds = %same_stat_id.exit.thread
  %i.eb = trunc nuw nsw i64 %indvars.iv265 to i32
  %i.ec = tail call ptr @__errno_location() #26
  %i.ed = load i32, ptr %i.ec, align 4
  %i.ee = sub i32 0, %i.ed                        ; 2 uses
  br label %.loopexit

bb.t:                                             ; preds = %same_stat_id.exit.thread
  %.val170 = load i8, ptr %i.cg, align 1
  %.not161 = icmp eq i8 %.val170, 0
  br i1 %.not161, label %bb.u, label %.loopexit.loopexit

bb.u:                                             ; preds = %bb.t
  %i.ef = load ptr, ptr %i.ch, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = call i32 %i.eh(ptr noundef nonnull %i.cl, ptr noundef %i.dy, ptr noundef nonnull %3) #23 ; 2 uses
  %i.ej = icmp slt i32 %i.ei, 0
  br i1 %i.ej, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ek = trunc nuw nsw i64 %indvars.iv265 to i32
  %i.el = tail call ptr @__errno_location() #26
  %i.em = load i32, ptr %i.el, align 4
  %i.en = sub i32 0, %i.em                        ; 2 uses
  br label %.loopexit

bb.w:                                             ; preds = %bb.u
  %i.eo = getelementptr inbounds nuw [144 x i8], ptr %.0205, i64 %indvars.iv265
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.eo, ptr noundef nonnull align 8 dereferenceable(144) %3, i64 144, i1 false)
  %i.ep = load ptr, ptr %i.bt, align 8
  call void @g_free(ptr noundef %i.ep) #23
  store i64 0, ptr %i.ct, align 8
  %i.eq = load i64, ptr %i.dy, align 8            ; 2 uses
  store i64 %i.eq, ptr %1, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = trunc i64 %i.eq to i32
  %i.eu = call ptr @g_memdup(ptr noundef %i.es, i32 noundef %i.et) #25
  store ptr %i.eu, ptr %i.bt, align 8
  %.pre274 = load i16, ptr %i.a, align 2
  br label %bb.x

bb.x:                                             ; preds = %.tail, %bb.w
  %i.ev = phi i16 [ %.pre274, %bb.w ], [ %i.cu, %.tail ] ; 2 uses
  %.1137 = phi i32 [ %i.ei, %bb.w ], [ %.0136228, %.tail ] ; 2 uses
  %indvars.iv.next266 = add nuw nsw i64 %indvars.iv265, 1 ; 3 uses
  %i.ew = zext i16 %i.ev to i64
  %i.ex = icmp samesign ult i64 %indvars.iv.next266, %i.ew
  br i1 %i.ex, label %bb.q, label %.loopexit.loopexit, !llvm.loop !27

.loopexit.loopexit:                               ; preds = %bb.x, %bb.q, %bb.t
  %indvars.iv.next266.lcssa.sink = phi i64 [ %indvars.iv265, %bb.q ], [ %indvars.iv265, %bb.t ], [ %indvars.iv.next266, %bb.x ]
  %.2138.ph = phi i32 [ -4, %bb.q ], [ -4, %bb.t ], [ %.1137, %bb.x ]
  %.0134.ph = phi i32 [ -4, %bb.q ], [ -4, %bb.t ], [ 0, %bb.x ]
  %indvars.le = trunc i64 %indvars.iv.next266.lcssa.sink to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.p, %bb.m, %bb.v, %bb.s, %bb.o
  %.2138 = phi i32 [ %i.en, %bb.v ], [ %i.cq, %bb.o ], [ -4, %bb.m ], [ %i.ee, %bb.s ], [ %i.cm, %bb.p ], [ %.2138.ph, %.loopexit.loopexit ] ; 3 uses
  %.0134 = phi i32 [ %i.en, %bb.v ], [ %i.cq, %bb.o ], [ -4, %bb.m ], [ %i.ee, %bb.s ], [ 0, %bb.p ], [ %.0134.ph, %.loopexit.loopexit ]
  %.1 = phi i32 [ %i.ek, %bb.v ], [ 0, %bb.o ], [ 0, %bb.m ], [ %i.eb, %bb.s ], [ 0, %bb.p ], [ %indvars.le, %.loopexit.loopexit ] ; 4 uses
  call void @qemu_coroutine_yield() #23
  %i.ey = icmp sgt i32 %.2138, -1
  %i.ez = icmp ne i32 %.1, 0                      ; 2 uses
  %or.cond = or i1 %i.ey, %i.ez
  %i.fa = icmp ne i32 %.2138, -4
  %or.cond3.not = and i1 %i.fa, %or.cond
  br i1 %or.cond3.not, label %bb.y, label %.thread

bb.y:                                             ; preds = %.loopexit
  %i.fb = call fastcc i32 @stat_to_qid(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef nonnull %5) ; 5 uses
  %i.fc = icmp sgt i32 %i.fb, -1
  %or.cond5 = or i1 %i.ez, %i.fc
  br i1 %or.cond5, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y
  %i.fd = or i32 %i.fb, %.0134                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(144) %4, i64 144, i1 false)
  %i.fe = load ptr, ptr %i.bt, align 8
  call void @g_free(ptr noundef %i.fe) #23
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.ff, align 8
  %i.fg = load i64, ptr %i.bs, align 8            ; 2 uses
  store i64 %i.fg, ptr %1, align 8
  %i.fh = load ptr, ptr %i.bv, align 8
  %i.fi = trunc i64 %i.fg to i32
  %i.fj = call ptr @g_memdup(ptr noundef %i.fh, i32 noundef %i.fi) #25
  store ptr %i.fj, ptr %i.bt, align 8
  call void @g_free(ptr noundef %i.cd) #23
  %i.fk = load i64, ptr %i.bs, align 8            ; 2 uses
  store i64 %i.fk, ptr %2, align 8
  %i.fl = load ptr, ptr %i.bv, align 8
  %i.fm = trunc i64 %i.fk to i32
  %i.fn = call ptr @g_memdup(ptr noundef %i.fl, i32 noundef %i.fm) #25
  store ptr %i.fn, ptr %i.bz, align 8
  %6 = icmp sgt i32 %.1, 0
  br i1 %6, label %.lr.ph247, label %same_stat_id.exit178.thread._crit_edge.thread

.lr.ph247:                                        ; preds = %bb.z
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 8
  %wide.trip.count = zext nneg i32 %.1 to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.promoted = load ptr, ptr %i.bz, align 8
  %.promoted335 = load i64, ptr %2, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph247, %bb.ac
  %i.fq = phi i64 [ %.promoted335, %.lr.ph247 ], [ %i.hb, %bb.ac ] ; 2 uses
  %i.fr = phi ptr [ %.promoted, %.lr.ph247 ], [ %i.hc, %bb.ac ] ; 3 uses
  %indvars.iv268 = phi i64 [ 0, %.lr.ph247 ], [ %indvars.iv.next269, %bb.ac ] ; 6 uses
  %.1135244 = phi i32 [ %i.fd, %.lr.ph247 ], [ %.2, %bb.ac ] ; 2 uses
  %.3139243 = phi i32 [ %i.fb, %.lr.ph247 ], [ %.4, %bb.ac ]
  %i.fs = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 7400
  %.val173 = load i64, ptr %3, align 8
  %i.fu = load i64, ptr %i.ft, align 8
  %i.fv = icmp eq i64 %i.fu, %.val173
  br i1 %i.fv, label %same_stat_id.exit178, label %same_stat_id.exit178.thread

same_stat_id.exit178:                             ; preds = %bb.aa
  %.val174 = load i64, ptr %i.fo, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 7408
  %i.fx = load i64, ptr %i.fw, align 8
  %i.fy = icmp eq i64 %i.fx, %.val174
  br i1 %i.fy, label %sub_0219, label %same_stat_id.exit178.thread

sub_0219:                                         ; preds = %same_stat_id.exit178
  %i.fz = load ptr, ptr %i.d, align 8
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.fz, i64 %indvars.iv268
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8            ; 3 uses
  %i.gd = load i8, ptr %i.gc, align 1             ; 2 uses
  %i.ge = zext i8 %i.gd to i32
  %i.gf = sub nsw i32 46, %i.ge
  %.not259.a = icmp eq i8 %i.gd, 46
  br i1 %.not259.a, label %sub_1220, label %.tail218

sub_1220:                                         ; preds = %sub_0219
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 1
  %i.gh = load i8, ptr %i.gg, align 1             ; 2 uses
  %i.gi = zext i8 %i.gh to i32
  %i.gj = sub nsw i32 46, %i.gi
  %.not260 = icmp eq i8 %i.gh, 46
  br i1 %.not260, label %sub_2221, label %.tail218

sub_2221:                                         ; preds = %sub_1220
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gc, i64 2
  %i.gl = load i8, ptr %i.gk, align 1
  %i.gm = zext i8 %i.gl to i32
  %i.gn = sub nsw i32 0, %i.gm
  br label %.tail218

.tail218:                                         ; preds = %sub_0219, %sub_1220, %sub_2221
  %i.go = phi i32 [ %i.gf, %sub_0219 ], [ %i.gj, %sub_1220 ], [ %i.gn, %sub_2221 ]
  %.not163 = icmp eq i32 %i.go, 0
  br i1 %.not163, label %bb.ac, label %same_stat_id.exit178.thread

same_stat_id.exit178.thread:                      ; preds = %bb.aa, %.tail218, %same_stat_id.exit178
  %i.gp = getelementptr inbounds nuw [144 x i8], ptr %.0205, i64 %indvars.iv268
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(144) %i.gp, i64 144, i1 false)
  %i.gq = call fastcc i32 @stat_to_qid(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %5) ; 3 uses
  %i.gr = icmp slt i32 %i.gq, 0
  br i1 %i.gr, label %same_stat_id.exit178.thread._crit_edge.split.loop.exit313, label %bb.ab

bb.ab:                                            ; preds = %same_stat_id.exit178.thread
  %i.gs = or i32 %i.gq, %.1135244
  %i.gt = getelementptr inbounds nuw [16 x i8], ptr %.0209, i64 %indvars.iv268 ; 2 uses
  call void @g_free(ptr noundef %i.fr) #23
  %i.gu = load i64, ptr %i.gt, align 8            ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8
  %i.gx = trunc i64 %i.gu to i32                  ; 2 uses
  %i.gy = call ptr @g_memdup(ptr noundef %i.gw, i32 noundef %i.gx) #25 ; 2 uses
  %i.gz = load ptr, ptr %i.bt, align 8
  call void @g_free(ptr noundef %i.gz) #23
  store i64 0, ptr %i.fp, align 8
  store i64 %i.gu, ptr %1, align 8
  %i.ha = call ptr @g_memdup(ptr noundef %i.gy, i32 noundef %i.gx) #25
  store ptr %i.ha, ptr %i.bt, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.tail218
  %i.hb = phi i64 [ %i.gu, %bb.ab ], [ %i.fq, %.tail218 ] ; 2 uses
  %i.hc = phi ptr [ %i.gy, %bb.ab ], [ %i.fr, %.tail218 ] ; 2 uses
  %.4 = phi i32 [ 0, %bb.ab ], [ %.3139243, %.tail218 ] ; 2 uses
  %.2 = phi i32 [ %i.gs, %bb.ab ], [ %.1135244, %.tail218 ] ; 2 uses
  %i.hd = getelementptr inbounds nuw [16 x i8], ptr %.0213, i64 %indvars.iv268
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.hd, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef 16, i1 noundef false) #23
  %indvars.iv.next269 = add nuw nsw i64 %indvars.iv268, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next269, %wide.trip.count
  br i1 %exitcond.not, label %same_stat_id.exit178.thread._crit_edge.loopexit, label %bb.aa, !llvm.loop !28

same_stat_id.exit178.thread._crit_edge.split.loop.exit313: ; preds = %same_stat_id.exit178.thread
  store ptr %i.fr, ptr %i.bz, align 8
  store i64 %i.fq, ptr %2, align 1
  %i.he = trunc nuw nsw i64 %indvars.iv268 to i32
  br label %same_stat_id.exit178.thread._crit_edge

same_stat_id.exit178.thread._crit_edge.loopexit:  ; preds = %bb.ac
  store ptr %i.hc, ptr %i.bz, align 8
  store i64 %i.hb, ptr %2, align 1
  %i.hf = icmp slt i32 %.2, 0
  br label %same_stat_id.exit178.thread._crit_edge

same_stat_id.exit178.thread._crit_edge:           ; preds = %same_stat_id.exit178.thread._crit_edge.loopexit, %same_stat_id.exit178.thread._crit_edge.split.loop.exit313
  %.0.lcssa = phi i32 [ %i.he, %same_stat_id.exit178.thread._crit_edge.split.loop.exit313 ], [ %.1, %same_stat_id.exit178.thread._crit_edge.loopexit ] ; 3 uses
  %.5 = phi i32 [ %i.gq, %same_stat_id.exit178.thread._crit_edge.split.loop.exit313 ], [ %.4, %same_stat_id.exit178.thread._crit_edge.loopexit ]
  %.3 = phi i1 [ true, %same_stat_id.exit178.thread._crit_edge.split.loop.exit313 ], [ %i.hf, %same_stat_id.exit178.thread._crit_edge.loopexit ]
  br i1 %.3, label %bb.ad, label %bb.ae

same_stat_id.exit178.thread._crit_edge.thread:    ; preds = %bb.z
  %i.hg = icmp slt i32 %i.fd, 0
  br i1 %i.hg, label %.thread, label %bb.ae

bb.ad:                                            ; preds = %same_stat_id.exit178.thread._crit_edge
  %.not165 = icmp eq i32 %.0.lcssa, 0
  br i1 %.not165, label %.thread, label %v9fs_path_unlock.exit

bb.ae:                                            ; preds = %same_stat_id.exit178.thread._crit_edge.thread, %same_stat_id.exit178.thread._crit_edge
  %.0.lcssa292.a = phi i32 [ 0, %same_stat_id.exit178.thread._crit_edge.thread ], [ %.0.lcssa, %same_stat_id.exit178.thread._crit_edge ] ; 3 uses
  %i.hh = load i32, ptr %i.b, align 4
  %i.hi = load i32, ptr %i.c, align 4             ; 2 uses
  %i.hj = icmp eq i32 %i.hh, %i.hi
  br i1 %i.hj, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.hk = load i32, ptr %i.bq, align 8
  %.not164 = icmp eq i32 %i.hk, 0
  br i1 %.not164, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af
  %i.hl = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 8
  %i.hn = and i32 %i.hm, 2
  %.not.i179 = icmp eq i32 %i.hn, 0
  br i1 %.not.i179, label %v9fs_path_write_lock.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ho = getelementptr inbounds nuw i8, ptr %i.f, i64 7296
  call void @qemu_co_rwlock_wrlock(ptr noundef nonnull %i.ho) #23
  br label %v9fs_path_write_lock.exit

v9fs_path_write_lock.exit:                        ; preds = %bb.ag, %bb.ah
  call void @v9fs_path_copy(ptr noundef nonnull %i.bs, ptr noundef nonnull %2)
  %i.hp = load i32, ptr %i.hl, align 8
  %i.hq = and i32 %i.hp, 2
  %.not.i180 = icmp eq i32 %i.hq, 0
  br i1 %.not.i180, label %v9fs_path_unlock.exit, label %bb.ai

bb.ai:                                            ; preds = %v9fs_path_write_lock.exit
  %i.hr = getelementptr inbounds nuw i8, ptr %i.f, i64 7296
  call void @qemu_co_rwlock_unlock(ptr noundef nonnull %i.hr) #23
  br label %v9fs_path_unlock.exit

bb.aj:                                            ; preds = %bb.ae
  %i.hs = call fastcc ptr @alloc_fid(ptr noundef %i.f, i32 noundef %i.hi) ; 4 uses
  %i.ht = icmp eq ptr %i.hs, null
  br i1 %i.ht, label %.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hu = getelementptr inbounds nuw i8, ptr %i.bq, i64 256
  %i.hv = load i32, ptr %i.hu, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 256
  store i32 %i.hv, ptr %i.hw, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  call void @v9fs_path_copy(ptr noundef nonnull %i.hx, ptr noundef nonnull %2)
  br label %v9fs_path_unlock.exit

v9fs_path_unlock.exit:                            ; preds = %bb.ai, %v9fs_path_write_lock.exit, %bb.ak, %bb.ad
  %.0.lcssa291 = phi i32 [ %.0.lcssa, %bb.ad ], [ %.0.lcssa292.a, %bb.ak ], [ %.0.lcssa292.a, %v9fs_path_write_lock.exit ], [ %.0.lcssa292.a, %bb.ai ]
  %.0131 = phi ptr [ null, %bb.ad ], [ %i.hs, %bb.ak ], [ null, %v9fs_path_write_lock.exit ], [ null, %bb.ai ]
  %i.hy = trunc i32 %.0.lcssa291 to i16           ; 2 uses
  %i.hz = call i32 @v9fs_walk_marshal(ptr noundef nonnull %0, i16 noundef zeroext %i.hy, ptr noundef %.0213)
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ib = load i16, ptr %i.ia, align 4
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.id = load i8, ptr %i.ic, align 2
  call fastcc void @trace_v9fs_walk_return(i16 noundef zeroext %i.ib, i8 noundef zeroext %i.id, i16 noundef zeroext %i.hy, ptr noundef %.0213)
  br label %.thread

.thread:                                          ; preds = %same_stat_id.exit178.thread._crit_edge.thread, %bb.aj, %bb.af, %bb.ad, %bb.y, %.loopexit, %v9fs_path_unlock.exit
  %.6 = phi i32 [ %.2138, %.loopexit ], [ %i.hz, %v9fs_path_unlock.exit ], [ %.5, %bb.ad ], [ %i.fb, %bb.y ], [ -22, %bb.af ], [ -22, %bb.aj ], [ %i.fb, %same_stat_id.exit178.thread._crit_edge.thread ]
  %.1132 = phi ptr [ null, %.loopexit ], [ %.0131, %v9fs_path_unlock.exit ], [ null, %bb.ad ], [ null, %bb.y ], [ null, %bb.af ], [ null, %bb.aj ], [ null, %same_stat_id.exit178.thread._crit_edge.thread ] ; 5 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.bq, i64 260 ; 2 uses
  %i.if = load i32, ptr %i.ie, align 4            ; 2 uses
  %.not.i181 = icmp eq i32 %i.if, 0
  br i1 %.not.i181, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.thread
  call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.3, i32 noundef 436, ptr noundef nonnull @__PRETTY_FUNCTION__.put_fid) #27
  unreachable

bb.am:                                            ; preds = %.thread
  %i.ig = add i32 %i.if, -1                       ; 2 uses
  store i32 %i.ig, ptr %i.ie, align 4
  %.not10.i = icmp eq i32 %i.ig, 0
  br i1 %.not10.i, label %bb.an, label %put_fid.exit

bb.an:                                            ; preds = %bb.am
  %i.ih = getelementptr inbounds nuw i8, ptr %i.bq, i64 264
  %i.ii = load i8, ptr %i.ih, align 8, !range !14, !noundef !15
  %i.ij = trunc nuw i8 %i.ii to i1
  br i1 %i.ij, label %bb.ao, label %put_fid.exit

bb.ao:                                            ; preds = %bb.an
  %i.ik = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.il = load i32, ptr %i.ik, align 4
  %i.im = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 7368
  %i.io = load i32, ptr %i.in, align 8
  %i.ip = icmp eq i32 %i.il, %i.io
  br i1 %i.ip, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 7376
  call void @migrate_del_blocker(ptr noundef nonnull %i.iq) #23
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.ir = call i32 @free_fid(ptr noundef nonnull %0, ptr noundef nonnull %i.bq) ; 0 uses
  br label %put_fid.exit

put_fid.exit:                                     ; preds = %bb.am, %bb.an, %bb.aq
  %.not166 = icmp eq ptr %.1132, null
  br i1 %.not166, label %put_fid.exit185, label %bb.ar

bb.ar:                                            ; preds = %put_fid.exit
  %i.is = getelementptr inbounds nuw i8, ptr %.1132, i64 260 ; 2 uses
  %i.it = load i32, ptr %i.is, align 4            ; 2 uses
  %.not.i182 = icmp eq i32 %i.it, 0
  br i1 %.not.i182, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.3, i32 noundef 436, ptr noundef nonnull @__PRETTY_FUNCTION__.put_fid) #27
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.iu = add i32 %i.it, -1                       ; 2 uses
  store i32 %i.iu, ptr %i.is, align 4
  %.not10.i183 = icmp eq i32 %i.iu, 0
  br i1 %.not10.i183, label %bb.au, label %put_fid.exit185

bb.au:                                            ; preds = %bb.at
  %i.iv = getelementptr inbounds nuw i8, ptr %.1132, i64 264
  %i.iw = load i8, ptr %i.iv, align 8, !range !14, !noundef !15
  %i.ix = trunc nuw i8 %i.iw to i1
  br i1 %i.ix, label %bb.av, label %put_fid.exit185

bb.av:                                            ; preds = %bb.au
  %i.iy = getelementptr inbounds nuw i8, ptr %.1132, i64 4
  %i.iz = load i32, ptr %i.iy, align 4
  %i.ja = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 7368
  %i.jc = load i32, ptr %i.jb, align 8
  %i.jd = icmp eq i32 %i.iz, %i.jc
  br i1 %i.jd, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.je = getelementptr inbounds nuw i8, ptr %i.ja, i64 7376
  call void @migrate_del_blocker(ptr noundef nonnull %i.je) #23
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.jf = call i32 @free_fid(ptr noundef nonnull %0, ptr noundef nonnull %.1132) ; 0 uses
  br label %put_fid.exit185

put_fid.exit185:                                  ; preds = %bb.ax, %bb.au, %bb.at, %put_fid.exit
  %i.jg = load ptr, ptr %i.bt, align 8
  call void @g_free(ptr noundef %i.jg) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.jh = load ptr, ptr %i.bz, align 8
  call void @g_free(ptr noundef %i.jh) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %trace_v9fs_walk.exit189

name_is_illegal.exit.thread.loopexit:             ; preds = %.lr.ph, %name_is_illegal.exit, %bb.e
  %.7.ph = phi i32 [ -2, %bb.e ], [ -2, %name_is_illegal.exit ], [ %i.ae, %.lr.ph ]
  %.pre275 = load i16, ptr %i.a, align 2
  br label %name_is_illegal.exit.thread

name_is_illegal.exit.thread:                      ; preds = %name_is_illegal.exit.thread.loopexit, %bb.c
  %i.ji = phi i16 [ %i.l, %bb.c ], [ %.pre275, %name_is_illegal.exit.thread.loopexit ]
  %.1214 = phi ptr [ null, %bb.c ], [ %i.q, %name_is_illegal.exit.thread.loopexit ] ; 4 uses
  %.1210 = phi ptr [ null, %bb.c ], [ %i.z, %name_is_illegal.exit.thread.loopexit ] ; 4 uses
  %.1206 = phi ptr [ null, %bb.c ], [ %i.t, %name_is_illegal.exit.thread.loopexit ] ; 4 uses
  %.7 = phi i32 [ -22, %bb.c ], [ %.7.ph, %name_is_illegal.exit.thread.loopexit ] ; 4 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.jk = load i16, ptr %i.jj, align 4
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.jm = load i8, ptr %i.jl, align 2
  %i.jn = load i32, ptr %i.b, align 4
  %i.jo = load i32, ptr %i.c, align 4
  %i.jp = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i186 = icmp eq i32 %i.jp, 0
  br i1 %.not.i186, label %trace_v9fs_walk.exit189, label %bb.ay, !prof !16

bb.ay:                                            ; preds = %name_is_illegal.exit.thread
  %i.jq = load i16, ptr @_TRACE_V9FS_WALK_DSTATE, align 2
  %.not5.i187 = icmp eq i16 %i.jq, 0
  br i1 %.not5.i187, label %trace_v9fs_walk.exit189, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jr = load i32, ptr @qemu_loglevel, align 4
  %i.js = and i32 %i.jr, 32768
  %.not6.i188 = icmp eq i32 %i.js, 0
  br i1 %.not6.i188, label %trace_v9fs_walk.exit189, label %bb.ba
end_hunk_0
