Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/gres?download=true
inline.NumInlined: 191
inline.NumDeleted: 74
begin_hunk_0_@_get_next_job_gres:bb.a
  store i32 %.013.i, ptr %i.ag, align 4
  %i.ah = call ptr @list_find_first(ptr noundef %2, ptr noundef nonnull @gres_find_job_by_key, ptr noundef nonnull %5) #26 ; 2 uses
  %.not31 = icmp eq ptr %i.ah, null
  br i1 %.not31, label %bb.j, label %bb.k

bb.j:                                             ; preds = %gres_build_id.exit
  %i.ai = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 192, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.1, i32 noundef 6721, ptr noundef nonnull @__func__._get_next_job_gres) #26 ; 3 uses
  %i.aj = load i32, ptr %i.ag, align 4
  store i32 %i.aj, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.w, ptr %i.ak, align 8
  store ptr null, ptr %i.b, align 8
  %i.al = load ptr, ptr @gres_context, align 8
  %i.am = getelementptr inbounds [168 x i8], ptr %i.al, i64 %i.p ; 3 uses
  %i.an = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 32, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.1, i32 noundef 592, ptr noundef nonnull @__func__.gres_create_state) #26 ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ai, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i32 2, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ar = load i32, ptr %i.aq, align 8
  store i32 %i.ar, ptr %i.an, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 144
  %i.at = load i32, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 %i.at, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call ptr @xstrdup(ptr noundef %i.aw) #26
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.ax, ptr %i.ay, align 8
  call void @list_append(ptr noundef %2, ptr noundef nonnull %i.an) #26
  br label %bb.k

bb.k:                                             ; preds = %gres_build_id.exit, %bb.j, %bb.h, %bb.e
  %.024 = phi i32 [ %i.k, %bb.h ], [ -1, %bb.e ], [ 0, %bb.j ], [ 0, %gres_build_id.exit ] ; 3 uses
  %.0 = phi ptr [ null, %bb.h ], [ null, %bb.e ], [ %i.an, %bb.j ], [ %i.ah, %gres_build_id.exit ]
  call void @slurm_xfree(ptr noundef nonnull %i.c) #26
  call void @slurm_xfree(ptr noundef nonnull %i.b) #26
  %.not32 = icmp eq i32 %.024, 0
  br i1 %.not32, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr null, ptr @_get_next_job_gres.prev_save_ptr, align 8
  %i.az = icmp eq i32 %.024, 2072
  br i1 %i.az, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ba = call zeroext i1 @run_in_daemon(i32 noundef 8) #26
  br i1 %i.ba, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bb = call i32 @get_log_level() #26
  %i.bc = icmp sgt i32 %i.bb, 2
  br i1 %i.bc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.277, ptr noundef nonnull @__func__._get_next_job_gres, ptr noundef %0) #26
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.m, %bb.l
  store i32 %.024, ptr %4, align 4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.k
  %i.bd = load ptr, ptr @_get_next_job_gres.prev_save_ptr, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.q
  %.sink = phi ptr [ %i.bd, %bb.q ], [ null, %bb.f ]
  %.025.ph = phi ptr [ %.0, %bb.q ], [ null, %bb.f ]
  store ptr %.sink, ptr %3, align 8
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.b
  %.025 = phi ptr [ null, %bb.b ], [ %.025.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret ptr %.025
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @_foreach_job_state_validate(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 6 uses
  %i.f = load i64, ptr %i.e, align 8              ; 4 uses
  %.not.i = icmp eq i64 %i.f, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8 ; 4 uses
  br i1 %.not.i, label %._crit_edge.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %.pre.i, %i.f
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp ugt i64 %i.i, %i.f
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.l = load i64, ptr %i.k, align 8
  %i.m = icmp ugt i64 %i.l, %i.f
  br i1 %i.m, label %bb.e, label %._crit_edge.i

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8              ; 4 uses
  %i.p = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.279, ptr noundef %i.o, ptr noundef %i.o, ptr noundef %i.o, ptr noundef %i.o) #26 ; 0 uses
  br label %bb.bv

._crit_edge.i:                                    ; preds = %bb.d, %bb.a
  %.not203.i = icmp eq i64 %.pre.i, 0
  br i1 %.not203.i, label %._crit_edge255.i, label %bb.f

._crit_edge255.i:                                 ; preds = %._crit_edge.i
  %.phi.trans.insert256.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.pre257.i = load i64, ptr %.phi.trans.insert256.i, align 8
  br label %bb.i

bb.f:                                             ; preds = %._crit_edge.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.r = load i64, ptr %i.q, align 8
  %i.s = icmp ugt i64 %i.r, %.pre.i
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = icmp ugt i64 %i.u, %.pre.i
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.280, ptr noundef %i.x, ptr noundef %i.x) #26 ; 0 uses
  br label %bb.bv

bb.i:                                             ; preds = %bb.g, %._crit_edge255.i
  %i.z = phi i64 [ %.pre257.i, %._crit_edge255.i ], [ %i.u, %bb.g ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %.not206.i = icmp eq i64 %i.z, 0
  br i1 %.not206.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = icmp eq i16 %i.ad, -2
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.281, ptr noundef %i.ag) #26 ; 0 uses
  br label %bb.bv

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.ai = tail call zeroext i1 @run_in_daemon(i32 noundef 8) #26
  br i1 %i.ai, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  %i.ak = load i16, ptr %i.aj, align 2
  %.not207.i = icmp eq i16 %i.ak, 0
  br i1 %.not207.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = load i16, ptr %i.am, align 2
  %.not208.i = icmp eq i16 %i.an, -2
  br i1 %.not208.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.282, ptr noundef %i.ap) #26 ; 0 uses
  br label %bb.bv

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.ar = load i64, ptr %i.e, align 8             ; 3 uses
  %.not209.i = icmp eq i64 %i.ar, 0
  br i1 %.not209.i, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = load i64, ptr %.phi.trans.insert.i, align 8 ; 3 uses
  %.not210.i = icmp eq i64 %i.as, 0
  br i1 %.not210.i, label %.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = urem i64 %i.ar, %i.as
  %i.au = udiv i64 %i.ar, %i.as
  %.not211.i = icmp eq i64 %i.at, 0
  br i1 %.not211.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = load ptr, ptr %i.av, align 8            ; 3 uses
  %i.ax = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.283, ptr noundef %i.aw, ptr noundef %i.aw, ptr noundef %i.aw) #26 ; 0 uses
  br label %bb.bv

bb.t:                                             ; preds = %bb.r
  %i.ay = trunc i64 %i.au to i32                  ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = load i32, ptr %i.ba, align 4            ; 3 uses
  %.not212.i = icmp ne i32 %i.bb, -2
  %i.bc = icmp ugt i32 %i.bb, %i.ay
  %or.cond243.i = and i1 %.not212.i, %i.bc
  %.phi.trans.insert259.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.pre260.i = load ptr, ptr %.phi.trans.insert259.i, align 8 ; 2 uses
  %.pre261.i = load i32, ptr %.pre260.i, align 4  ; 2 uses
  %i.bd = icmp ult i32 %.pre261.i, %i.ay
  %or.cond.i = select i1 %or.cond243.i, i1 true, i1 %i.bd
  br i1 %or.cond.i, label %._crit_edge258.i, label %bb.u

._crit_edge258.i:                                 ; preds = %bb.t
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bf = load ptr, ptr %i.be, align 8            ; 3 uses
  %i.bg = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.284, ptr noundef %i.bf, ptr noundef %i.bf, ptr noundef %i.bf, i32 noundef %i.ay, i32 noundef %i.bb, i32 noundef %.pre261.i) #26 ; 0 uses
  br label %bb.bv

bb.u:                                             ; preds = %bb.t
  store i32 %i.ay, ptr %.pre260.i, align 4
  %i.bh = load ptr, ptr %i.az, align 8
  store i32 %i.ay, ptr %i.bh, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.p
  %.pr.i = load i64, ptr %.phi.trans.insert.i, align 8 ; 3 uses
  %.not213.i = icmp eq i64 %.pr.i, 0
  br i1 %.not213.i, label %.thread.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = load i64, ptr %i.aa, align 8            ; 3 uses
  %.not214.i = icmp eq i64 %i.bi, 0
  br i1 %.not214.i, label %.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bj = urem i64 %.pr.i, %i.bi
  %i.bk = udiv i64 %.pr.i, %i.bi                  ; 2 uses
  %.not215.i = icmp eq i64 %i.bj, 0
  br i1 %.not215.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8            ; 3 uses
  %i.bn = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.285, ptr noundef %i.bm, ptr noundef %i.bm, ptr noundef %i.bm) #26 ; 0 uses
  br label %bb.bv

bb.z:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %i.bq = load i16, ptr %i.bp, align 2            ; 2 uses
  %i.br = icmp eq i16 %i.bq, -2
  br i1 %i.br, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bs = trunc i64 %i.bk to i16
  store i16 %i.bs, ptr %i.bp, align 2
  br label %.thread.i

bb.ab:                                            ; preds = %bb.z
  %i.bt = trunc i64 %i.bk to i32
  %i.bu = zext i16 %i.bq to i32
  %.not216.i = icmp eq i32 %i.bu, %i.bt
  br i1 %.not216.i, label %.thread.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8            ; 3 uses
  %i.bx = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.286, ptr noundef %i.bw, ptr noundef %i.bw, ptr noundef %i.bw) #26 ; 0 uses
  br label %bb.bv

.thread.i:                                        ; preds = %bb.ab, %bb.aa, %bb.w, %bb.v, %bb.q
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.bz = load i16, ptr %i.by, align 8            ; 2 uses
  %i.ca = zext i16 %i.bz to i32
  switch i16 %i.bz, label %bb.ad [
    i16 0, label %.critedge.i
    i16 -2, label %.critedge.i
  ]

bb.ad:                                            ; preds = %.thread.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = load i32, ptr %i.cc, align 4
  %.fr.i = freeze i32 %i.cd                       ; 2 uses
  %.not219.i = icmp eq i32 %.fr.i, -2
  br i1 %.not219.i, label %.critedge.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ce = urem i32 %.fr.i, %i.ca
  %.not220.i = icmp eq i32 %i.ce, 0
  br i1 %.not220.i, label %.critedge.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.287, ptr noundef %i.cg) #26 ; 0 uses
  br label %bb.bv

.critedge.i:                                      ; preds = %bb.ae, %bb.ad, %.thread.i, %.thread.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 5 uses
  %i.cj = load i64, ptr %i.ci, align 8            ; 4 uses
  %.not221.i = icmp eq i64 %i.cj, 0
  br i1 %.not221.i, label %bb.au, label %bb.ag

bb.ag:                                            ; preds = %.critedge.i
  %i.ck = load i64, ptr %i.e, align 8             ; 3 uses
  %.not222.i = icmp eq i64 %i.ck, 0
  br i1 %.not222.i, label %bb.ap, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cl = urem i64 %i.ck, %i.cj
  %i.cm = udiv i64 %i.ck, %i.cj
  %.not225.i = icmp eq i64 %i.cl, 0
  br i1 %.not225.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.co = load ptr, ptr %i.cn, align 8            ; 2 uses
  %i.cp = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.288, ptr noundef %i.co, ptr noundef %i.co) #26 ; 0 uses
  br label %bb.bv

bb.aj:                                            ; preds = %bb.ah
  %i.cq = trunc i64 %i.cm to i32                  ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 112 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8            ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4            ; 2 uses
  %i.cu = icmp eq i32 %i.ct, -2
  br i1 %i.cu, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 %i.cq, ptr %i.cs, align 4
  br label %bb.au

bb.al:                                            ; preds = %bb.aj
  %.not226.i = icmp eq i32 %i.ct, %i.cq
  br i1 %.not226.i, label %bb.au, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cv = tail call zeroext i1 @run_in_daemon(i32 noundef 8) #26
  br i1 %i.cv, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.cw = load ptr, ptr %i.cr, align 8
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = zext i32 %i.cx to i64
  %i.cz = load i64, ptr %i.ci, align 8
  %i.da = mul i64 %i.cz, %i.cy                    ; 2 uses
  store i64 %i.da, ptr %i.e, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store i64 %i.da, ptr %i.db, align 8
  br label %bb.au

bb.ao:                                            ; preds = %bb.am
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8            ; 2 uses
  %i.de = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.289, ptr noundef %i.dd, ptr noundef %i.dd) #26 ; 0 uses
  br label %bb.bv

bb.ap:                                            ; preds = %bb.ag
  %i.df = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = load i32, ptr %i.dg, align 4            ; 2 uses
  %.not223.i = icmp eq i32 %i.dh, -2
  br i1 %.not223.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.di = zext i32 %i.dh to i64
  %i.dj = mul i64 %i.cj, %i.di
  store i64 %i.dj, ptr %i.e, align 8
  br label %bb.au

bb.ar:                                            ; preds = %bb.ap
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = tail call i32 @xstrcmp(ptr noundef %i.dl, ptr noundef nonnull @.str.9) #26
  %.not224.i = icmp eq i32 %i.dm, 0
  br i1 %.not224.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.dn = load ptr, ptr %i.dk, align 8            ; 2 uses
  %i.do = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.290, ptr noundef %i.dn, ptr noundef %i.dn) #26 ; 0 uses
  br label %bb.bv

bb.at:                                            ; preds = %bb.ar
  %i.dp = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.291) #26 ; 0 uses
  br label %bb.bv

bb.au:                                            ; preds = %bb.aq, %bb.an, %bb.al, %bb.ak, %.critedge.i
  %i.dq = load i64, ptr %.phi.trans.insert.i, align 8 ; 3 uses
  %.not227.i = icmp eq i64 %i.dq, 0
  br i1 %.not227.i, label %bb.bc, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dr = load i64, ptr %i.ci, align 8            ; 3 uses
  %.not228.i = icmp eq i64 %i.dr, 0
  br i1 %.not228.i, label %bb.bc, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ds = urem i64 %i.dq, %i.dr
  %i.dt = udiv i64 %i.dq, %i.dr                   ; 2 uses
  %.not229.i = icmp eq i64 %i.ds, 0
  br i1 %.not229.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dv = load ptr, ptr %i.du, align 8            ; 3 uses
  %i.dw = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.292, ptr noundef %i.dv, ptr noundef %i.dv, ptr noundef %i.dv) #26 ; 0 uses
  br label %bb.bv

bb.ay:                                            ; preds = %bb.aw
  %i.dx = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.dy = load ptr, ptr %i.dx, align 8            ; 2 uses
  %i.dz = load i16, ptr %i.dy, align 2            ; 2 uses
  switch i16 %i.dz, label %bb.ba [
    i16 -2, label %bb.az
    i16 0, label %bb.az
  ]

bb.az:                                            ; preds = %bb.ay, %bb.ay
  %i.ea = trunc i64 %i.dt to i16
  store i16 %i.ea, ptr %i.dy, align 2
  br label %bb.bc

bb.ba:                                            ; preds = %bb.ay
  %i.eb = zext i16 %i.dz to i32
  %i.ec = trunc i64 %i.dt to i32
  %.not230.i = icmp eq i32 %i.eb, %i.ec
  br i1 %.not230.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8            ; 3 uses
  %i.ef = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.293, ptr noundef %i.ee, ptr noundef %i.ee, ptr noundef %i.ee) #26 ; 0 uses
  br label %bb.bv

bb.bc:                                            ; preds = %bb.ba, %bb.az, %bb.av, %bb.au
  %i.eg = load i64, ptr %i.aa, align 8            ; 3 uses
  %.not231.i = icmp eq i64 %i.eg, 0
  br i1 %.not231.i, label %bb.bk, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.eh = load i64, ptr %i.ci, align 8            ; 3 uses
  %.not232.i = icmp eq i64 %i.eh, 0
  br i1 %.not232.i, label %bb.bk, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ei = urem i64 %i.eg, %i.eh
  %i.ej = udiv i64 %i.eg, %i.eh                   ; 2 uses
  %.not233.i = icmp eq i64 %i.ei, 0
  br i1 %.not233.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.el = load ptr, ptr %i.ek, align 8            ; 2 uses
  %i.em = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.294, ptr noundef %i.el, ptr noundef %i.el) #26 ; 0 uses
  br label %bb.bv

bb.bg:                                            ; preds = %bb.be
  %i.en = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.eo = load ptr, ptr %i.en, align 8            ; 2 uses
  %i.ep = load i16, ptr %i.eo, align 2            ; 2 uses
  switch i16 %i.ep, label %bb.bi [
    i16 -2, label %bb.bh
    i16 0, label %bb.bh
  ]

bb.bh:                                            ; preds = %bb.bg, %bb.bg
  %i.eq = trunc i64 %i.ej to i16
  store i16 %i.eq, ptr %i.eo, align 2
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bg
  %i.er = zext i16 %i.ep to i32
  %i.es = trunc i64 %i.ej to i32
  %.not234.i = icmp eq i32 %i.er, %i.es
  br i1 %.not234.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eu = load ptr, ptr %i.et, align 8            ; 2 uses
  %i.ev = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.295, ptr noundef %i.eu, ptr noundef %i.eu) #26 ; 0 uses
  br label %bb.bv

bb.bk:                                            ; preds = %bb.bi, %bb.bh, %bb.bd, %bb.bc
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  %i.ex = load i16, ptr %i.ew, align 2            ; 2 uses
  %.not235.i = icmp eq i16 %i.ex, 0
  br i1 %.not235.i, label %bb.bl, label %.thread247.i

bb.bl:                                            ; preds = %bb.bk
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 66
  %i.ez = load i16, ptr %i.ey, align 2            ; 2 uses
  %.not236.i = icmp eq i16 %i.ez, 0
  br i1 %.not236.i, label %bb.bq, label %.thread247.i

.thread247.i:                                     ; preds = %bb.bl, %bb.bk
  %.0165250.i = phi i16 [ %i.ez, %bb.bl ], [ %i.ex, %bb.bk ]
  %i.fa = load i64, ptr %i.ci, align 8            ; 2 uses
  %.not237.i = icmp eq i64 %i.fa, 0
  br i1 %.not237.i, label %bb.bq, label %bb.bm

bb.bm:                                            ; preds = %.thread247.i
  %i.fb = zext i16 %.0165250.i to i64
  %i.fc = mul i64 %i.fa, %i.fb                    ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.fe = load ptr, ptr %i.fd, align 8            ; 2 uses
  %i.ff = load i16, ptr %i.fe, align 2            ; 2 uses
  switch i16 %i.ff, label %bb.bo [
    i16 -2, label %bb.bn
    i16 0, label %bb.bn
  ]

bb.bn:                                            ; preds = %bb.bm, %bb.bm
  %i.fg = trunc i64 %i.fc to i16
  store i16 %i.fg, ptr %i.fe, align 2
  br label %bb.bq

bb.bo:                                            ; preds = %bb.bm
  %i.fh = zext i16 %i.ff to i32
  %i.fi = trunc i64 %i.fc to i32
  %.not238.i = icmp eq i32 %i.fh, %i.fi
  br i1 %.not238.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8            ; 2 uses
  %i.fl = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.296, ptr noundef %i.fk, ptr noundef %i.fk) #26 ; 0 uses
  br label %bb.bv

bb.bq:                                            ; preds = %bb.bo, %bb.bn, %.thread247.i, %bb.bl
  %i.fm = load i64, ptr %i.e, align 8             ; 4 uses
  %.not239.i = icmp eq i64 %i.fm, 0
  br i1 %.not239.i, label %_test_gres_cnt.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fn = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = load i32, ptr %i.fo, align 4            ; 2 uses
  %.not240.i = icmp ne i32 %i.fp, -2
  %i.fq = zext i32 %i.fp to i64
  %i.fr = icmp ult i64 %i.fm, %i.fq
  %or.cond245.i = and i1 %.not240.i, %i.fr
  br i1 %or.cond245.i, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8
  %i.fu = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.297, ptr noundef %i.ft) #26 ; 0 uses
  br label %bb.bv

bb.bt:                                            ; preds = %bb.br
  %i.fv = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.fw = load ptr, ptr %i.fv, align 8            ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4            ; 2 uses
  %.not241.i = icmp ne i32 %i.fx, -2
  %i.fy = zext i32 %i.fx to i64
  %i.fz = icmp ult i64 %i.fm, %i.fy
  %or.cond254.i = and i1 %.not241.i, %i.fz
  br i1 %or.cond254.i, label %bb.bu, label %_test_gres_cnt.exit

bb.bu:                                            ; preds = %bb.bt
  %i.ga = trunc nuw i64 %i.fm to i32
  store i32 %i.ga, ptr %i.fw, align 4
  br label %_test_gres_cnt.exit

bb.bv:                                            ; preds = %bb.e, %bb.h, %bb.k, %bb.s, %._crit_edge258.i, %bb.y, %bb.ai, %bb.ax, %bb.bf, %bb.bs, %bb.o, %bb.bp, %bb.bj, %bb.bb, %bb.ao, %bb.at, %bb.as, %bb.af, %bb.ac
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 2072, ptr %i.gb, align 8
  br label %_foreach_set_over_array.exit

_test_gres_cnt.exit:                              ; preds = %bb.bu, %bb.bt, %bb.bq
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 17 ; 2 uses
  %i.gd = load i8, ptr %i.gc, align 1, !range !17, !noundef !18
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %_test_gres_cnt.exit
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.gg = load i32, ptr %i.gf, align 4
  %i.gh = load i32, ptr @gpu_plugin_id, align 4
  %i.gi = icmp eq i32 %i.gg, %i.gh
  br i1 %i.gi, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  store i8 1, ptr %i.gc, align 1
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw, %_test_gres_cnt.exit
  %i.gj = phi i1 [ true, %bb.bx ], [ false, %bb.bw ], [ true, %_test_gres_cnt.exit ]
  %i.gk = load i32, ptr %0, align 8
  %i.gl = and i32 %i.gk, 512
  %.not.i22.not = icmp eq i32 %i.gl, 0
  br i1 %.not.i22.not, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 1, ptr %i.gm, align 8
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  br i1 %i.gj, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.go = load i8, ptr %i.gn, align 8, !range !17, !noundef !18
  %i.gp = trunc nuw i8 %i.go to i1
  br i1 %i.gp, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 2072, ptr %i.gq, align 8
  br label %_foreach_set_over_array.exit

bb.cd:                                            ; preds = %bb.cb, %bb.ca
  %i.gr = load i32, ptr %1, align 8               ; 2 uses
  %.not21 = icmp eq i32 %i.gr, 0
  br i1 %.not21, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.gt = load i32, ptr %i.gs, align 4
  %i.gu = load i32, ptr @gpu_plugin_id, align 4
  %i.gv = icmp eq i32 %i.gt, %i.gu
  br i1 %i.gv, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.gw = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.gx = load i64, ptr %i.gw, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 4
  %i.ha = trunc i64 %i.gx to i32
  %i.hb = mul i32 %i.gr, %i.ha
  %i.hc = add i32 %i.hb, %i.gz
  store i32 %i.hc, ptr %i.gy, align 4
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %bb.cd
  %.pn.i.i = load ptr, ptr %i.a, align 8
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 8
  %i.hd = load ptr, ptr %.in.i.i, align 8         ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.hf = load i32, ptr %i.he, align 4            ; 3 uses
  %i.hg = icmp sgt i32 %i.hf, 0
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hi = load ptr, ptr %i.hh, align 8            ; 2 uses
  br i1 %i.hg, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.cg
end_hunk_0
