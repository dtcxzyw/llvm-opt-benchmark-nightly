Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/job_scheduler?download=true
inline.NumInlined: 83
inline.NumDeleted: 33
begin_hunk_0_@_feature_string2list:bb.a
  %i.bb = trunc nuw i8 %i.ba to i1
  %i.bc = trunc nuw nsw i32 %.0191 to i16
  %i.bd = select i1 %i.bb, i16 1, i16 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i16 %i.bd, ptr %i.be, align 8
  %i.bf = tail call ptr @xstrdup(ptr noundef nonnull %.0174) #15
  store ptr %i.bf, ptr %i.az, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 10
  store i8 %i.ay, ptr %i.bg, align 2
  %i.bh = trunc i32 %.0187 to i16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i16 %i.bh, ptr %i.bi, align 4
  %i.bj = trunc nuw nsw i32 %.0181 to i16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  store i16 %i.bj, ptr %i.bk, align 8
  %i.bl = or i8 %.0170, %i.ay
  %.not208 = icmp eq i32 %.0181, 0
  br i1 %.not208, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = load i8, ptr %3, align 1, !range !8, !noundef !9
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bo = icmp ne i32 %.0191, 0
  %or.cond5 = select i1 %i.bo, i1 true, i1 %i.ax
  br i1 %or.cond5, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bp = load i8, ptr %3, align 1, !range !8, !noundef !9
  %spec.select489 = shl nuw nsw i8 %i.bp, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.sink = phi i8 [ 0, %bb.r ], [ 2, %bb.s ], [ %spec.select489, %bb.t ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.az, i64 14
  store i8 %.sink, ptr %i.bq, align 2
  %i.br = load ptr, ptr %2, align 8
  tail call void @list_append(ptr noundef %i.br, ptr noundef nonnull %i.az) #15
  br label %.thread230

bb.v:                                             ; preds = %bb.b
  store i8 0, ptr %i.g, align 1
  %i.bs = icmp ne ptr %.0174, null
  %i.bt = icmp ne i32 %.0191, 0
  %or.cond7 = select i1 %i.bs, i1 true, i1 %i.bt
  %i.bu = icmp ne i32 %.0181, 0
  %or.cond9 = select i1 %or.cond7, i1 true, i1 %i.bu
  br i1 %or.cond9, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bv = tail call i32 @get_log_level() #15
  %i.bw = icmp sgt i32 %i.bv, 3
  br i1 %i.bw, label %.thread273.sink.split, label %.thread273

bb.x:                                             ; preds = %bb.v
  %i.bx = add nsw i32 %.0178, 1
  %i.by = icmp sgt i32 %.0178, 0
  br i1 %i.by, label %bb.y, label %.thread230

bb.y:                                             ; preds = %bb.x
  %i.bz = tail call i32 @get_log_level() #15
  %i.ca = icmp sgt i32 %i.bz, 3
  br i1 %i.ca, label %.thread273.sink.split, label %.thread273

bb.z:                                             ; preds = %bb.b
  store i8 0, ptr %i.g, align 1
  %i.cb = icmp eq ptr %.0174, null
  %i.cc = icmp eq i32 %.0191, 0
  %or.cond11 = select i1 %i.cb, i1 true, i1 %i.cc
  %i.cd = icmp ne i32 %.0181, 0
  %or.cond13 = select i1 %or.cond11, i1 true, i1 %i.cd
  br i1 %or.cond13, label %bb.aa, label %.thread230

bb.aa:                                            ; preds = %bb.z
  %i.ce = tail call i32 @get_log_level() #15
  %i.cf = icmp sgt i32 %i.ce, 3
  br i1 %i.cf, label %.thread273.sink.split, label %.thread273

bb.ab:                                            ; preds = %bb.b
  store i8 0, ptr %i.g, align 1
  %i.cg = icmp ne ptr %.0174, null
  %i.ch = icmp ne i32 %.0181, 0
  %or.cond15 = select i1 %i.cg, i1 true, i1 %i.ch
  br i1 %or.cond15, label %bb.ac, label %.thread230

bb.ac:                                            ; preds = %bb.ab
  %i.ci = tail call i32 @get_log_level() #15
  %i.cj = icmp sgt i32 %i.ci, 3
  br i1 %i.cj, label %.thread273.sink.split, label %.thread273

bb.ad:                                            ; preds = %bb.b
  store i8 0, ptr %i.g, align 1
  %i.ck = icmp eq ptr %.0174, null
  %i.cl = icmp eq i32 %.0181, 0
  %or.cond17 = select i1 %i.ck, i1 true, i1 %i.cl
  br i1 %or.cond17, label %bb.ae, label %.thread230

bb.ae:                                            ; preds = %bb.ad
  %i.cm = tail call i32 @get_log_level() #15
  %i.cn = icmp sgt i32 %i.cm, 3
  br i1 %i.cn, label %.thread273.sink.split, label %.thread273

bb.af:                                            ; preds = %bb.b
  %.not207 = icmp eq ptr %.0174, null
  br i1 %.not207, label %.thread254, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.co = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 40, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.2, i32 noundef 5278, ptr noundef nonnull @__func__._feature_string2list) #15 ; 7 uses
  %i.cp = trunc nuw nsw i32 %.0191 to i16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i16 %i.cp, ptr %i.cq, align 8
  %i.cr = tail call ptr @xstrdup(ptr noundef nonnull %.0174) #15
  store ptr %i.cr, ptr %i.co, align 8
  %i.cs = tail call zeroext i1 @node_features_g_changeable_feature(ptr noundef nonnull %.0174) #15
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 10 ; 2 uses
  %i.cu = zext i1 %i.cs to i8
  store i8 %i.cu, ptr %i.ct, align 2
  %i.cv = trunc i32 %.0187 to i16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  store i16 %i.cv, ptr %i.cw, align 4
  %i.cx = trunc nuw nsw i32 %.0181 to i16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  store i16 %i.cx, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.co, i64 14
  store i8 4, ptr %i.cz, align 2
  %i.da = load ptr, ptr %2, align 8
  tail call void @list_append(ptr noundef %i.da, ptr noundef nonnull %i.co) #15
  %i.db = load i8, ptr %i.ct, align 2, !range !8, !noundef !9
  %i.dc = or i8 %i.db, %.0170
  br label %.thread254

bb.ah:                                            ; preds = %bb.b
  %i.dd = icmp eq ptr %.0174, null
  br i1 %i.dd, label %.thread230, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not206 = icmp eq i32 %.0184, 0
  br i1 %.not206, label %.thread230, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.de = getelementptr i8, ptr %i.g, i64 -1
  %i.df = load i8, ptr %i.de, align 1
  %i.dg = icmp eq i8 %i.df, 0
  br i1 %i.dg, label %bb.ak, label %.thread230

bb.ak:                                            ; preds = %bb.aj
  %i.dh = tail call i32 @get_log_level() #15
  %i.di = icmp sgt i32 %i.dh, 3
  br i1 %i.di, label %.thread273.sink.split, label %.thread273

.thread230:                                       ; preds = %bb.u, %bb.n, %bb.z, %bb.ab, %bb.ad, %bb.ah, %bb.e, %bb.aj, %bb.ai, %bb.x
  %i.dj = phi ptr [ %i.e, %bb.ab ], [ %i.e, %bb.z ], [ %i.e, %bb.ai ], [ %i.e, %bb.x ], [ %i.e, %bb.n ], [ %i.i, %bb.e ], [ %i.e, %bb.ah ], [ %i.e, %bb.aj ], [ %i.e, %bb.u ], [ %i.e, %bb.ad ]
  %.3251 = phi i1 [ %.0164, %bb.ab ], [ %.0164, %bb.z ], [ %.0164, %bb.ai ], [ %.0164, %bb.x ], [ %.0164, %bb.n ], [ %spec.select, %bb.e ], [ %.0164, %bb.ah ], [ %.0164, %bb.aj ], [ %.0164, %bb.u ], [ %.0164, %bb.ad ]
  %.3169250 = phi i8 [ %.0166, %bb.ab ], [ %.0166, %bb.z ], [ %.0166, %bb.ai ], [ %.0166, %bb.x ], [ %.0166, %bb.n ], [ %.0166, %bb.e ], [ %.0166, %bb.ah ], [ %.0166, %bb.aj ], [ 1, %bb.u ], [ %.0166, %bb.ad ]
  %.4249 = phi i8 [ %.0170, %bb.ab ], [ %.0170, %bb.z ], [ %.0170, %bb.ai ], [ %.0170, %bb.x ], [ %i.ap, %bb.n ], [ %.0170, %bb.e ], [ %.0170, %bb.ah ], [ %.0170, %bb.aj ], [ %i.bl, %bb.u ], [ %.0170, %bb.ad ]
  %.3177248 = phi ptr [ null, %bb.ab ], [ %.0174, %bb.z ], [ %.0174, %bb.ai ], [ null, %bb.x ], [ null, %bb.n ], [ %.0174, %bb.e ], [ %i.g, %bb.ah ], [ %.0174, %bb.aj ], [ null, %bb.u ], [ %.0174, %bb.ad ]
  %.2180247 = phi i32 [ %.0178, %bb.ab ], [ %.0178, %bb.z ], [ %.0178, %bb.ai ], [ %i.bx, %bb.x ], [ %.0178, %bb.n ], [ %.0178, %bb.e ], [ %.0178, %bb.ah ], [ %.0178, %bb.aj ], [ %.0178, %bb.u ], [ %.0178, %bb.ad ]
  %.2183246 = phi i32 [ 1, %bb.ab ], [ 0, %bb.z ], [ %.0181, %bb.ai ], [ 0, %bb.x ], [ %.0181, %bb.n ], [ 0, %bb.e ], [ %.0181, %bb.ah ], [ %.0181, %bb.aj ], [ %.0181, %bb.u ], [ 0, %bb.ad ]
  %.2186245 = phi i32 [ %.0184, %bb.ab ], [ %.0184, %bb.z ], [ 0, %bb.ai ], [ %.0184, %bb.x ], [ %.0184, %bb.n ], [ %i.x, %bb.e ], [ %.0184, %bb.ah ], [ %.0184, %bb.aj ], [ %.0184, %bb.u ], [ %.0184, %bb.ad ]
  %.3190244 = phi i32 [ %.0187, %bb.ab ], [ %.0187, %bb.z ], [ %.0187, %bb.ai ], [ %.0187, %bb.x ], [ 0, %bb.n ], [ %i.m, %bb.e ], [ %.0187, %bb.ah ], [ %.0187, %bb.aj ], [ 0, %bb.u ], [ %.0187, %bb.ad ]
  %.2193243 = phi i32 [ %.0191, %bb.ab ], [ 0, %bb.z ], [ %.0191, %bb.ai ], [ 1, %bb.x ], [ %.0191, %bb.n ], [ %.0191, %bb.e ], [ %.0191, %bb.ah ], [ %.0191, %bb.aj ], [ %.0191, %bb.u ], [ %.0191, %bb.ad ]
  %i.dk = add nsw i32 %.2186245, 1
  br label %bb.b, !llvm.loop !27

.thread254:                                       ; preds = %bb.ag, %bb.af
  %.4269 = phi i8 [ %.0170, %bb.af ], [ %i.dc, %bb.ag ]
  %.not213 = icmp eq i32 %.0191, 0
  br i1 %.not213, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.thread254
  %i.dl = tail call i32 @get_log_level() #15
  %i.dm = icmp sgt i32 %i.dl, 3
  br i1 %i.dm, label %.thread273.sink.split, label %.thread273

bb.am:                                            ; preds = %.thread254
  %.not214 = icmp eq i32 %.0181, 0
  br i1 %.not214, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dn = tail call i32 @get_log_level() #15
  %i.do = icmp sgt i32 %i.dn, 3
  br i1 %i.do, label %.thread273.sink.split, label %.thread273

bb.ao:                                            ; preds = %bb.am
  br i1 %.0164, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.dp = load ptr, ptr %2, align 8
  %i.dq = tail call i32 @list_count(ptr noundef %i.dp) #15
  %i.dr = icmp sgt i32 %i.dq, 1
  br i1 %i.dr, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ds = tail call i32 @get_log_level() #15
  %i.dt = icmp sgt i32 %i.ds, 3
  br i1 %i.dt, label %.thread273.sink.split, label %.thread273

bb.ar:                                            ; preds = %bb.ao, %bb.ap
  %4 = and i8 %.0166, %.4269
  store i8 %4, ptr %3, align 1
  br label %bb.av

.thread273.sink.split:                            ; preds = %bb.aq, %bb.an, %bb.al, %bb.ak, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.p, %bb.g, %bb.d
  %.str.127.sink = phi ptr [ @.str.126, %bb.g ], [ @.str.130, %bb.ae ], [ @.str.130, %bb.ac ], [ @.str.128, %bb.aa ], [ @.str.129, %bb.y ], [ @.str.128, %bb.w ], [ @.str.127, %bb.p ], [ @.str.125, %bb.d ], [ @.str.131, %bb.ak ], [ @.str.133, %bb.an ], [ @.str.132, %bb.al ], [ @.str.134, %bb.aq ]
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull %.str.127.sink, ptr noundef %1, ptr noundef nonnull %0) #15
  br label %.thread273

.thread273:                                       ; preds = %.thread273.sink.split, %bb.p, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.g, %bb.d, %bb.ak, %bb.aq, %bb.an, %bb.al
  %i.du = load ptr, ptr %2, align 8               ; 2 uses
  %.not216 = icmp eq ptr %i.du, null
  br i1 %.not216, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.thread273
  tail call void @list_destroy(ptr noundef nonnull %i.du) #15
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.thread273
  store ptr null, ptr %2, align 8
  %i.dv = tail call i32 @get_log_level() #15
  %i.dw = icmp sgt i32 %i.dv, 2
  br i1 %i.dw, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.135, ptr noundef %1, ptr noundef nonnull %0) #15
  br label %bb.av

bb.av:                                            ; preds = %bb.ar, %bb.at, %bb.au
  %.4198277 = phi i32 [ 2029, %bb.at ], [ 2029, %bb.au ], [ 0, %bb.ar ]
  call void @slurm_xfree(ptr noundef nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.4198277
}

declare ptr @job_features_list2feature_sets(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @job_features_set2str(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @_valid_feature_list(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @get_log_level() #15
  %i.d = icmp sgt i32 %i.c, 5
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 6, ptr noundef nonnull @.str.137, ptr noundef %i.f) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.t

bb.e:                                             ; preds = %bb.a
  %i.h = load i64, ptr @_valid_feature_list.sched_update, align 8
  %i.i = load i64, ptr @slurm_conf, align 8       ; 2 uses
  %.not25 = icmp eq i64 %i.h, %i.i
  br i1 %.not25, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.e
  %.b24.pre = load i1, ptr @_valid_feature_list.ignore_constraint_val, align 1
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  store i64 %i.i, ptr @_valid_feature_list.sched_update, align 8
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1152), align 8
  %i.k = tail call ptr @xstrcasestr(ptr noundef %i.j, ptr noundef nonnull @.str.138) #15
  %.not26 = icmp ne ptr %i.k, null
  store i1 %.not26, ptr @_valid_feature_list.ignore_prefer_val, align 1
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1152), align 8
  %i.m = tail call ptr @xstrcasestr(ptr noundef %i.l, ptr noundef nonnull @.str.139) #15
  %.not27 = icmp eq ptr %i.m, null
  br i1 %.not27, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i1 true, ptr @_valid_feature_list.ignore_constraint_val, align 1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store i1 false, ptr @_valid_feature_list.ignore_constraint_val, align 1
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.g, %bb.h
  %.b24 = phi i1 [ %.b24.pre, %._crit_edge ], [ true, %bb.g ], [ false, %bb.h ]
  %i.n = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 352
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = icmp eq ptr %i.n, %i.r
  %.b = load i1, ptr @_valid_feature_list.ignore_prefer_val, align 1
  %i.t = select i1 %i.s, i1 %.b, i1 %.b24
  %i.u = zext i1 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i8 %i.u, ptr %i.v, align 4
  %i.w = tail call i32 @list_for_each(ptr noundef %i.n, ptr noundef nonnull @_foreach_valid_feature_list, ptr noundef nonnull %1) #15 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 9 uses
  %i.y = load i32, ptr %i.x, align 8
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.aa = tail call i32 @get_log_level() #15
  %i.ab = icmp sgt i32 %i.aa, 4
  br i1 %i.ab, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.140, ptr noundef %i.ad, ptr noundef %i.af) #15
  br label %bb.t

bb.l:                                             ; preds = %bb.i
  br i1 %2, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ag = tail call i32 @get_log_level() #15
  %i.ah = icmp sgt i32 %i.ag, 2
  br i1 %i.ah, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.141, ptr noundef %i.aj) #15
  br label %bb.t

bb.o:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.al = load i8, ptr %i.ak, align 4, !range !8, !noundef !9
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = tail call i32 @get_log_level() #15
  %i.ao = icmp sgt i32 %i.an, 2                   ; 2 uses
  br i1 %i.am, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  br i1 %i.ao, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.142, ptr noundef %i.aq, ptr noundef %i.as) #15
  br label %bb.t

bb.r:                                             ; preds = %bb.o
  br i1 %i.ao, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.143, ptr noundef %i.au, ptr noundef %i.aw) #15
  br label %bb.t

bb.t:                                             ; preds = %bb.k, %bb.j, %bb.q, %bb.p, %bb.s, %bb.r, %bb.m, %bb.n, %bb.d
  %.0.in = phi ptr [ %i.g, %bb.d ], [ %i.x, %bb.n ], [ %i.x, %bb.m ], [ %i.x, %bb.r ], [ %i.x, %bb.s ], [ %i.x, %bb.p ], [ %i.x, %bb.q ], [ %i.x, %bb.j ], [ %i.x, %bb.k ]
  %.0 = load i32, ptr %.0.in, align 8
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @rebuild_job_part_list(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.rebuild_args_t, align 8     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %1, align 8
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 3 uses
  tail call void @slurm_xfree(ptr noundef nonnull %i.b) #15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 224
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call ptr @xstrdup(ptr noundef %i.h) #15
  store ptr %i.i, ptr %i.b, align 8
  %i.j = tail call i64 @time(ptr noundef null) #15
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.l = load i32, ptr %i.k, align 8
end_hunk_0
