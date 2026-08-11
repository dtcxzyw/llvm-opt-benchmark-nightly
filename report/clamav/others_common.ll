inline.NumInlined: 25
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@cli_genfname:bb.a
  br label %bb.h

bb.h:                                             ; preds = %cli_max_calloc.exit, %cli_rndnum.exit
  %indvars.iv = phi i64 [ 16, %cli_max_calloc.exit ], [ %indvars.iv.next, %cli_rndnum.exit ] ; 2 uses
  %.b.i = load i1, ptr @rand_seeded, align 1
  br i1 %.b.i, label %cli_rndnum.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.m = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #22 ; 0 uses
  %i.n = load i64, ptr %i.l, align 8, !tbaa !47
  %i.o = call i64 @clock() #22
  %i.p = add nsw i64 %i.o, %i.n
  %i.q = call i32 @rand() #22
  %i.r = trunc i64 %i.p to i32
  %i.s = add i32 %i.q, %i.r
  call void @srand(i32 noundef %i.s) #22
  store i1 true, ptr @rand_seeded, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %cli_rndnum.exit

cli_rndnum.exit:                                  ; preds = %bb.h, %bb.i
  %i.t = call i32 @rand() #22
  %i.u = sitofp i32 %i.t to double
  %i.v = fmul nnan double %i.u, f0x3E00000000000000
  %i.w = fmul nnan double %i.v, 2.550000e+02
  %i.x = fptoui double %i.w to i32
  %i.y = trunc i32 %i.x to i8
  %i.z = add i8 %i.y, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 48
  br i1 %exitcond.not, label %bb.j, label %bb.h

bb.j:                                             ; preds = %cli_rndnum.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.ab = call ptr @cl_hash_data(ptr noundef nonnull @.str.59, ptr noundef nonnull %i.c, i64 noundef 48, ptr noundef nonnull %i.a, ptr noundef null) #22 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @name_salt, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.ac = call noalias dereferenceable_or_null(33) ptr @calloc(i64 noundef 33, i64 noundef 1) #26 ; 20 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  call void @perror(ptr noundef nonnull @.str.8) #25
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.9, i64 noundef 33)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ad = call i32 @pthread_mutex_unlock(ptr noundef nonnull @cli_gentemp_mutex) #22 ; 0 uses
  call void @free(ptr noundef %i.j) #22
  %.not40 = icmp eq ptr %.0274363, null
  br i1 %.not40, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @free(ptr noundef nonnull %.0274363) #22
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.35)
  br label %bb.t

bb.n:                                             ; preds = %bb.j
  %i.ae = load i8, ptr %i.a, align 16, !tbaa !29
  %i.af = zext i8 %i.ae to i32
  %i.ag = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ac, ptr noundef nonnull dereferenceable(1) @.str.60, i32 noundef %i.af) #22 ; 0 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !29
  %i.ak = zext i8 %i.aj to i32
  %i.al = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ah, ptr noundef nonnull dereferenceable(1) @.str.60, i32 noundef %i.ak) #22 ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.ao = load i8, ptr %i.an, align 2, !tbaa !29
  %i.ap = zext i8 %i.ao to i32
  %i.aq = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.am, ptr noundef nonnull dereferenceable(1) @.str.60, i32 noundef %i.ap) #22 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 6
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.at = load i8, ptr %i.as, align 1, !tbaa !29
  %i.au = zext i8 %i.at to i32
  %i.av = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ar, ptr noundef nonnull dereferenceable(1) @.str.60, i32 noundef %i.au) #22 ; 0 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ay = load i8, ptr %i.ax, align 4, !tbaa !29
  %i.az = zext i8 %i.ay to i32
  %i.ba = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.aw, ptr noundef nonnull dereferenceable(1) @.str.60, i32 noundef %i.az) #22 ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ac, i64 10
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !29
  %i.be = zext i8 %i.bd to i32
  %i.bf = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bb, ptr noundef nonnull dereferenceable(1) @.str.60, i32 noundef %i.be) #22 ; 0 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.bi = load i8, ptr %i.bh, align 2, !tbaa !29
  %i.bj = zext i8 %i.bi to i32
  %i.bk = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bg, ptr noundef nonnull dereferenceable(1) @.str.60, i32 noundef %i.bj) #22 ; 0 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ac, i64 14
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !29
  %i.bo = zext i8 %i.bn to i32
  %i.bp = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bl, ptr noundef nonnull dereferenceable(1) @.str.60, i32 noundef %i.bo) #22 ; 0 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !29
  %i.bt = zext i8 %i.bs to i32
  %i.bu = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bq, ptr noundef nonnull dereferenceable(1) @.str.60, i32 noundef %i.bt) #22 ; 0 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ac, i64 18
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !29
  %i.by = zext i8 %i.bx to i32
  %i.bz = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bv, ptr noundef nonnull dereferenceable(1) @.str.60, i32 noundef %i.by) #22 ; 0 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.cc = load i8, ptr %i.cb, align 2, !tbaa !29
  %i.cd = zext i8 %i.cc to i32
  %i.ce = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ca, ptr noundef nonnull dereferenceable(1) @.str.60, i32 noundef %i.cd) #22 ; 0 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ac, i64 22
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !29
  %i.ci = zext i8 %i.ch to i32
  %i.cj = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.cf, ptr noundef nonnull dereferenceable(1) @.str.60, i32 noundef %i.ci) #22 ; 0 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.cm = load i8, ptr %i.cl, align 4, !tbaa !29
  %i.cn = zext i8 %i.cm to i32
  %i.co = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ck, ptr noundef nonnull dereferenceable(1) @.str.60, i32 noundef %i.cn) #22 ; 0 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ac, i64 26
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !29
  %i.cs = zext i8 %i.cr to i32
  %i.ct = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.cp, ptr noundef nonnull dereferenceable(1) @.str.60, i32 noundef %i.cs) #22 ; 0 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.cw = load i8, ptr %i.cv, align 2, !tbaa !29
  %i.cx = zext i8 %i.cw to i32
  %i.cy = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.cu, ptr noundef nonnull dereferenceable(1) @.str.60, i32 noundef %i.cx) #22 ; 0 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ac, i64 30
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.db = load i8, ptr %i.da, align 1, !tbaa !29
  %i.dc = zext i8 %i.db to i32
  %i.dd = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.cz, ptr noundef nonnull dereferenceable(1) @.str.60, i32 noundef %i.dc) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.de = call i32 @pthread_mutex_unlock(ptr noundef nonnull @cli_gentemp_mutex) #22 ; 0 uses
  br i1 %.not354462, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.df = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.j, i64 noundef %.065, ptr noundef nonnull @.str.36, ptr noundef nonnull %i.i, i32 noundef 10, ptr noundef nonnull %i.ac) #22 ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.dg = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.j, i64 noundef %.065, ptr noundef nonnull @.str.37, ptr noundef nonnull %i.ac) #22 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.not39 = icmp eq ptr %.0274363, null
  br i1 %.not39, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef nonnull %.0274363) #22
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @free(ptr noundef nonnull %i.ac) #22
  br label %bb.t

bb.t:                                             ; preds = %bb.f, %bb.g, %bb.s, %bb.m
  %.026 = phi ptr [ null, %bb.m ], [ %i.j, %bb.s ], [ null, %bb.g ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  ret ptr %.026
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define noundef ptr @cli_newfilepath(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @getenv(ptr noundef nonnull @.str.28) #22 ; 2 uses
  %.not7.i = icmp eq ptr %i.a, null
  %spec.select.i = select i1 %.not7.i, ptr @.str.29, ptr %i.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = phi ptr [ %spec.select.i, %bb.b ], [ %0, %bb.a ] ; 4 uses
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.38, ptr noundef nonnull %i.b)
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #23
  %i.e = add i64 %i.d, 1
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  %i.g = add i64 %i.e, %i.f                       ; 2 uses
  %i.h = add nuw nsw i64 %i.g, 1                  ; 3 uses
  %or.cond = icmp ugt i64 %i.g, 1073741823
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.7, i64 noundef 1, i32 noundef 1073741824)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.i = tail call noalias ptr @calloc(i64 noundef %i.h, i64 noundef 1) #26 ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.h, label %cli_max_calloc.exit

bb.h:                                             ; preds = %bb.g
  tail call void @perror(ptr noundef nonnull @.str.8) #25
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.9, i64 noundef %i.h)
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.39, ptr noundef nonnull %i.b)
  br label %bb.j

cli_max_calloc.exit:                              ; preds = %bb.g
  %i.j = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.i, i64 noundef %i.h, ptr noundef nonnull @.str.40, ptr noundef nonnull %i.b, ptr noundef nonnull %1) #22 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %cli_max_calloc.exit, %bb.i, %bb.d
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.i ], [ %i.i, %cli_max_calloc.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 21) i32 @cli_newfilepathfd(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.b, %i.a
  %i.c = icmp eq ptr %3, null
  %or.cond3 = or i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.41, ptr noundef %0)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @cli_newfilepath(ptr noundef %0, ptr noundef nonnull %1) ; 3 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !48
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.42, ptr noundef %0)
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.e = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.d, i32 noundef 706, i32 noundef 384) #22 ; 2 uses
  store i32 %i.e, ptr %3, align 4, !tbaa !8
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = load ptr, ptr %2, align 8, !tbaa !48
  %i.h = tail call ptr @__errno_location() #28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !8
  %i.j = tail call ptr @strerror(i32 noundef %i.i) #22
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.43, ptr noundef %i.g, ptr noundef %i.j)
  %i.k = load ptr, ptr %2, align 8, !tbaa !48
  tail call void @free(ptr noundef %i.k) #22
  store ptr null, ptr %2, align 8, !tbaa !48
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ 3, %bb.b ], [ 9, %bb.f ], [ 20, %bb.d ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define noundef ptr @cli_gentemp_with_prefix(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @getenv(ptr noundef nonnull @.str.28) #22 ; 2 uses
  %.not7.i = icmp eq ptr %i.a, null
  %spec.select.i = select i1 %.not7.i, ptr @.str.29, ptr %i.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = phi ptr [ %spec.select.i, %bb.b ], [ %0, %bb.a ] ; 4 uses
  %i.c = tail call ptr @cli_genfname(ptr noundef %1) ; 5 uses
  %.not20 = icmp eq ptr %i.c, null
  br i1 %.not20, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.44, ptr noundef nonnull %i.b)
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #23
  %i.e = add i64 %i.d, 1
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #23
  %i.g = add i64 %i.e, %i.f                       ; 2 uses
  %i.h = add nuw nsw i64 %i.g, 1                  ; 3 uses
  %or.cond = icmp ugt i64 %i.g, 1073741823
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.7, i64 noundef 1, i32 noundef 1073741824)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.i = tail call noalias ptr @calloc(i64 noundef %i.h, i64 noundef 1) #26 ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.h, label %cli_max_calloc.exit

bb.h:                                             ; preds = %bb.g
  tail call void @perror(ptr noundef nonnull @.str.8) #25
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.9, i64 noundef %i.h)
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h
  tail call void @free(ptr noundef nonnull %i.c) #22
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.44, ptr noundef nonnull %i.b)
  br label %bb.j

cli_max_calloc.exit:                              ; preds = %bb.g
  %i.j = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.i, i64 noundef %i.h, ptr noundef nonnull @.str.40, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #22 ; 0 uses
  tail call void @free(ptr noundef nonnull %i.c) #22
  br label %bb.j

bb.j:                                             ; preds = %cli_max_calloc.exit, %bb.i, %bb.d
  %.0 = phi ptr [ %i.i, %cli_max_calloc.exit ], [ null, %bb.i ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define noundef ptr @cli_gentemp(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @cli_gentemp_with_prefix(ptr noundef %0, ptr noundef null)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define range(i32 0, 21) i32 @cli_gentempfd(ptr noundef %0, ptr nofree noundef captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @cli_gentempfd_with_prefix(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef %2)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define range(i32 0, 21) i32 @cli_gentempfd_with_prefix(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) initializes((0, 8)) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @cli_gentemp_with_prefix(ptr noundef %0, ptr noundef %1) ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !48
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.a, i32 noundef 706, i32 noundef 384) #22 ; 2 uses
  store i32 %i.b, ptr %3, align 4, !tbaa !8
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @__errno_location() #28    ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !8    ; 2 uses
  switch i32 %i.e, label %.sink.split [
    i32 84, label %bb.d
    i32 22, label %bb.d
    i32 36, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.45)
  %i.f = load ptr, ptr %2, align 8, !tbaa !48
  tail call void @free(ptr noundef %i.f) #22
  %i.g = tail call noundef ptr @cli_gentemp_with_prefix(ptr noundef %0, ptr noundef null) ; 3 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !48
  %.not23 = icmp eq ptr %i.g, null
  br i1 %.not23, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.g, i32 noundef 706, i32 noundef 384) #22 ; 2 uses
  store i32 %i.h, ptr %3, align 4, !tbaa !8
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = load i32, ptr %i.d, align 4, !tbaa !8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.f
  %.sink27 = phi i32 [ %i.j, %bb.f ], [ %i.e, %bb.c ]
  %.sink = load ptr, ptr %2, align 8, !tbaa !48
  %i.k = tail call ptr @strerror(i32 noundef %.sink27) #22
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.46, ptr noundef %.sink, ptr noundef %i.k)
  %i.l = load ptr, ptr %2, align 8, !tbaa !48
  tail call void @free(ptr noundef %i.l) #22
  store ptr null, ptr %2, align 8, !tbaa !48
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.b, %bb.e, %bb.d, %bb.a
  %.0 = phi i32 [ 0, %bb.e ], [ 20, %bb.d ], [ 20, %bb.a ], [ 0, %bb.b ], [ 9, %.sink.split ]
  ret i32 %.0
}

declare i32 @cli_regcomp_real(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 21) i32 @cli_get_filepath_from_filedesc(i32 noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 7 uses
  %i.b = alloca [32 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.a, i8 0, i64 4096, i1 false)
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.48)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 32, ptr noundef nonnull @.str.49, i32 noundef %0) #22 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 31
  store i8 0, ptr %i.e, align 1, !tbaa !29
  %i.f = call i64 @readlink(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i64 noundef 4095) #22 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.50, i32 noundef %0, ptr noundef nonnull %i.b)
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds i8, ptr %i.a, i64 %i.f
  store i8 0, ptr %i.h, align 1, !tbaa !29
  %i.i = call i64 @strnlen(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 4096) #23
  %i.j = call noalias ptr @strndup(ptr noundef nonnull %i.a, i64 noundef %i.i) #22 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.51)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.52, i32 noundef %0, ptr noundef nonnull %i.j)
  store ptr %i.j, ptr %1, align 8, !tbaa !48
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ 3, %bb.b ], [ 8, %bb.d ], [ 20, %bb.f ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(ptr noundef readonly captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strndup(ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strnlen(ptr noundef captures(none), i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define range(i32 0, 17) i32 @cli_realpath(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.53, ptr noundef %0)
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.54)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @realpath(ptr noundef nonnull %0, ptr noundef null) #22 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @__errno_location() #28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !8
  %i.g = icmp eq i32 %i.f, 13
  %i.h = select i1 %i.g, i32 16, i32 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store ptr %i.c, ptr %1, align 8, !tbaa !48
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ 3, %bb.b ], [ %i.h, %bb.d ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef ptr @realpath(ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_key_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @clrs_eprint_callback(i32 %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  tail call void @clrs_eprint(ptr noundef %1) #22
  ret void
}

; Function Attrs: nounwind
declare ptr @pthread_getspecific(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @lstat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr noundef readonly captures(none)) local_unnamed_addr #6

end_hunk_0
