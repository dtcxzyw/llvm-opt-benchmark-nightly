inline.NumInlined: 12
inline.NumDeleted: 10
begin_hunk_0_@report_unmatched_relation:bb.a
  %i.t = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #9 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.t
  %i.v = sub i64 1000, %i.t
  %i.w = load ptr, ptr %i.o, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.u, i64 noundef %i.v, ptr noundef nonnull @.str.13, ptr noundef %i.w, ptr noundef %i.y) #8 ; 0 uses
  %.pre = load i32, ptr %i.j, align 8
  %i.aa = icmp sgt i32 %.pre, %i.s
  br label %.loopexit49

bb.d:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit49.thread, label %bb.b, !llvm.loop !6

.loopexit49:                                      ; preds = %.preheader48, %bb.c
  %.03657 = phi i1 [ %i.aa, %bb.c ], [ false, %.preheader48 ]
  %.2 = phi ptr [ %i.o, %bb.c ], [ %0, %.preheader48 ] ; 2 uses
  br i1 %.03657, label %bb.e, label %.loopexit49.thread

.loopexit49.thread:                               ; preds = %bb.d, %.loopexit49
  %.283 = phi ptr [ %.2, %.loopexit49 ], [ %0, %bb.d ] ; 2 uses
  %i.ab = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #9 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ab
  %i.ad = sub i64 1000, %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %.283, i64 24
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.ac, i64 noundef %i.ad, ptr noundef nonnull @.str.14, i32 noundef %i.af) #8 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.loopexit49, %.loopexit49.thread, %bb.a
  %.3 = phi ptr [ %.283, %.loopexit49.thread ], [ %.2, %.loopexit49 ], [ %0, %bb.a ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.3, i64 28 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4            ; 2 uses
  %.not41 = icmp eq i32 %i.ai, 0
  br i1 %.not41, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 1048 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8            ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph61, label %.loopexit.thread

.lr.ph61:                                         ; preds = %.preheader
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 1040
  %i.an = load ptr, ptr %i.am, align 8
  %wide.trip.count74 = zext nneg i32 %i.ak to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph61, %bb.g
  %indvars.iv71 = phi i64 [ 0, %.lr.ph61 ], [ %indvars.iv.next72, %bb.g ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [48 x i8], ptr %i.an, i64 %indvars.iv71 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = icmp eq i32 %i.aq, %i.ai
  br i1 %i.ar, label %.loopexit, label %bb.g

.loopexit:                                        ; preds = %bb.f
  %i.as = trunc nuw nsw i64 %indvars.iv71 to i32
  %i.at = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #9 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.at
  %i.av = sub i64 1000, %i.at
  %i.aw = load ptr, ptr %i.ao, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.au, i64 noundef %i.av, ptr noundef nonnull @.str.15, ptr noundef %i.aw, ptr noundef %i.ay) #8 ; 0 uses
  %.pre76 = load i32, ptr %i.aj, align 8
  %i.ba = icmp sgt i32 %.pre76, %i.as
  br i1 %i.ba, label %bb.h, label %.loopexit.thread

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond75.not = icmp eq i64 %indvars.iv.next72, %wide.trip.count74
  br i1 %exitcond75.not, label %.loopexit.thread, label %bb.f, !llvm.loop !7

.loopexit.thread:                                 ; preds = %bb.g, %.preheader, %.loopexit
  %i.bb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #9 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bb
  %i.bd = sub i64 1000, %i.bb
  %i.be = load i32, ptr %i.ah, align 4
  %i.bf = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.bc, i64 noundef %i.bd, ptr noundef nonnull @.str.16, i32 noundef %i.be) #8 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.loopexit, %.loopexit.thread, %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  %.str.17..str.18 = select i1 %2, ptr @.str.17, ptr @.str.18
  call void (i32, ptr, ...) @pg_log(i32 noundef 4, ptr noundef nonnull %.str.17..str.18, i32 noundef %i.c, ptr noundef %i.bh, ptr noundef nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare void @pg_log(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noreturn
declare void @pg_fatal(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @get_db_rel_and_slot_infos(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.PQExpBufferData, align 8    ; 8 uses
  %i.a = alloca [8192 x i8], align 16             ; 10 uses
  %i.b = tail call ptr @upgrade_task_create() #8  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.i, label %free_db_and_rel_infos.exit

.lr.ph.i:                                         ; preds = %bb.b, %free_rel_infos.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %free_rel_infos.exit.i ], [ 0, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %i.c, align 8
  %i.i = getelementptr inbounds nuw [1072 x i8], ptr %i.h, i64 %indvars.iv.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1040 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 1048 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.i, label %free_rel_infos.exit.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i, %bb.f
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.f ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.n = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %indvars.iv.i.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !8, !noundef !9
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.s = load ptr, ptr %i.o, align 8
  tail call void @pg_free(ptr noundef %i.s) #8
  %.pre.i.i = load ptr, ptr %i.j, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.t = phi ptr [ %.pre.i.i, %bb.c ], [ %i.n, %.lr.ph.i.i ]
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  tail call void @pg_free(ptr noundef %i.w) #8
  %i.x = load ptr, ptr %i.j, align 8
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %i.x, i64 %indvars.iv.i.i ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 41
  %i.aa = load i8, ptr %i.z, align 1, !range !8, !noundef !9
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void @pg_free(ptr noundef %i.ad) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ae = load i32, ptr %i.k, align 8
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp slt i64 %indvars.iv.next.i.i, %i.af
  br i1 %i.ag, label %.lr.ph.i.i, label %free_rel_infos.exit.i, !llvm.loop !10

free_rel_infos.exit.i:                            ; preds = %bb.f, %.lr.ph.i
  %i.ah = load ptr, ptr %i.j, align 8
  tail call void @pg_free(ptr noundef %i.ah) #8
  store i32 0, ptr %i.k, align 8
  %i.ai = load ptr, ptr %i.c, align 8
  %i.aj = getelementptr inbounds nuw [1072 x i8], ptr %i.ai, i64 %indvars.iv.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void @pg_free(ptr noundef %i.al) #8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.am = load i32, ptr %i.e, align 8
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp slt i64 %indvars.iv.next.i, %i.an
  br i1 %i.ao, label %.lr.ph.i, label %free_db_and_rel_infos.exit.loopexit, !llvm.loop !11

free_db_and_rel_infos.exit.loopexit:              ; preds = %free_rel_infos.exit.i
  %.pre = load ptr, ptr %i.c, align 8
  br label %free_db_and_rel_infos.exit

free_db_and_rel_infos.exit:                       ; preds = %free_db_and_rel_infos.exit.loopexit, %bb.b
  %i.ap = phi ptr [ %.pre, %free_db_and_rel_infos.exit.loopexit ], [ %i.d, %bb.b ]
  tail call void @pg_free(ptr noundef %i.ap) #8
  store ptr null, ptr %i.c, align 8
  store i32 0, ptr %i.e, align 8
  br label %bb.g

bb.g:                                             ; preds = %free_db_and_rel_infos.exit, %bb.a
  %i.aq = tail call ptr @connectToServer(ptr noundef nonnull %0, ptr noundef nonnull @.str.5) #8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4            ; 2 uses
  %i.at = icmp ugt i32 %i.as, 169999
  %i.au = icmp samesign ugt i32 %i.as, 149999
  %.str.20..str.21.i = select i1 %i.au, ptr @.str.20, ptr @.str.21
  %.str.20.sink.i = select i1 %i.at, ptr @.str.19, ptr %.str.20..str.21.i
  %i.av = tail call ptr (ptr, ptr, ...) @executeQueryOrDie(ptr noundef %i.aq, ptr noundef nonnull %.str.20.sink.i) #8 ; 13 uses
  %i.aw = tail call i32 @PQntuples(ptr noundef %i.av) #8
  %.not.i = icmp eq i32 %i.aw, 1
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @pg_fatal(ptr noundef nonnull @.str.22) #10
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ax = tail call ptr @pg_malloc(i64 noundef 40) #8 ; 6 uses
  %i.ay = tail call i32 @PQfnumber(ptr noundef %i.av, ptr noundef nonnull @.str.23) #8
  %i.az = tail call i32 @PQfnumber(ptr noundef %i.av, ptr noundef nonnull @.str.24) #8
  %i.ba = tail call i32 @PQfnumber(ptr noundef %i.av, ptr noundef nonnull @.str.25) #8
  %i.bb = tail call i32 @PQfnumber(ptr noundef %i.av, ptr noundef nonnull @.str.26) #8
  %i.bc = tail call i32 @PQfnumber(ptr noundef %i.av, ptr noundef nonnull @.str.27) #8 ; 2 uses
  %i.bd = tail call ptr @PQgetvalue(ptr noundef %i.av, i32 noundef 0, i32 noundef %i.ay) #8
  %i.be = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.bd, ptr noundef null, i32 noundef 10) #8, !inline_history !12
  %i.bf = trunc i64 %i.be to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store i32 %i.bf, ptr %i.bg, align 8
  %i.bh = tail call ptr @PQgetvalue(ptr noundef %i.av, i32 noundef 0, i32 noundef %i.az) #8
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i8 %i.bi, ptr %i.bj, align 8
  %i.bk = tail call ptr @PQgetvalue(ptr noundef %i.av, i32 noundef 0, i32 noundef %i.ba) #8
  %i.bl = tail call ptr @pg_strdup(ptr noundef %i.bk) #8
  store ptr %i.bl, ptr %i.ax, align 8
  %i.bm = tail call ptr @PQgetvalue(ptr noundef %i.av, i32 noundef 0, i32 noundef %i.bb) #8
  %i.bn = tail call ptr @pg_strdup(ptr noundef %i.bm) #8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.bn, ptr %i.bo, align 8
  %i.bp = tail call i32 @PQgetisnull(ptr noundef %i.av, i32 noundef 0, i32 noundef %i.bc) #8
  %.not34.i = icmp eq i32 %i.bp, 0
  br i1 %.not34.i, label %bb.j, label %get_template0_info.exit

bb.j:                                             ; preds = %bb.i
  %i.bq = tail call ptr @PQgetvalue(ptr noundef %i.av, i32 noundef 0, i32 noundef %i.bc) #8
  %i.br = tail call ptr @pg_strdup(ptr noundef %i.bq) #8
  br label %get_template0_info.exit

get_template0_info.exit:                          ; preds = %bb.i, %bb.j
  %.sink.i = phi ptr [ %i.br, %bb.j ], [ null, %bb.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store ptr %.sink.i, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.ax, ptr %i.bt, align 8
  tail call void @PQclear(ptr noundef %i.av) #8
  tail call void @PQfinish(ptr noundef %i.aq) #8
  %i.bu = tail call ptr @connectToServer(ptr noundef nonnull %0, ptr noundef nonnull @.str.5) #8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.bv = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef nonnull @.str.28) #8 ; 0 uses
  %i.bw = load i32, ptr %i.ar, align 4            ; 2 uses
  %i.bx = icmp ugt i32 %i.bw, 169999
  br i1 %i.bx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %get_template0_info.exit
  %i.by = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #9 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.by
  %i.ca = sub i64 8192, %i.by
  %i.cb = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.bz, i64 noundef %i.ca, ptr noundef nonnull @.str.29) #8 ; 0 uses
  br label %bb.o

bb.l:                                             ; preds = %get_template0_info.exit
  %i.cc = icmp samesign ugt i32 %i.bw, 149999
  %i.cd = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #9 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cd ; 2 uses
  %i.cf = sub i64 8192, %i.cd                     ; 2 uses
  br i1 %i.cc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cg = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.ce, i64 noundef %i.cf, ptr noundef nonnull @.str.30) #8 ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ch = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.ce, i64 noundef %i.cf, ptr noundef nonnull @.str.31) #8 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k
  %i.ci = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #9 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ci
  %i.ck = sub i64 8192, %i.ci
  %i.cl = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.cj, i64 noundef %i.ck, ptr noundef nonnull @.str.32) #8 ; 0 uses
  %i.cm = call ptr (ptr, ptr, ...) @executeQueryOrDie(ptr noundef %i.bu, ptr noundef nonnull @.str.33, ptr noundef nonnull %i.a) #8 ; 8 uses
  %i.cn = call i32 @PQfnumber(ptr noundef %i.cm, ptr noundef nonnull @.str.34) #8
  %i.co = call i32 @PQfnumber(ptr noundef %i.cm, ptr noundef nonnull @.str.35) #8
  %i.cp = call i32 @PQfnumber(ptr noundef %i.cm, ptr noundef nonnull @.str.36) #8
  %i.cq = call i32 @PQntuples(ptr noundef %i.cm) #8 ; 4 uses
  %i.cr = sext i32 %i.cq to i64
  %i.cs = call ptr @pg_malloc0_mul(i64 noundef 1072, i64 noundef %i.cr) #8 ; 2 uses
  %i.ct = icmp sgt i32 %i.cq, 0
  br i1 %i.ct, label %.lr.ph.i17, label %get_db_infos.exit

.lr.ph.i17:                                       ; preds = %bb.o
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 144
  %wide.trip.count.i = zext nneg i32 %i.cq to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.s, %.lr.ph.i17
  %indvars.iv.i18 = phi i64 [ 0, %.lr.ph.i17 ], [ %indvars.iv.next.i19, %bb.s ] ; 3 uses
  %i.cv = trunc nuw nsw i64 %indvars.iv.i18 to i32 ; 3 uses
  %i.cw = call ptr @PQgetvalue(ptr noundef %i.cm, i32 noundef %i.cv, i32 noundef %i.cp) #8 ; 3 uses
  %i.cx = load i8, ptr %i.cw, align 1
  %i.cy = call ptr @PQgetvalue(ptr noundef %i.cm, i32 noundef %i.cv, i32 noundef %i.cn) #8
  %i.cz = call i64 @__isoc23_strtoul(ptr noundef %i.cy, ptr noundef null, i32 noundef 10) #8
  %i.da = trunc i64 %i.cz to i32
  %i.db = getelementptr inbounds nuw [1072 x i8], ptr %i.cs, i64 %indvars.iv.i18 ; 3 uses
  store i32 %i.da, ptr %i.db, align 8
  %i.dc = call ptr @PQgetvalue(ptr noundef %i.cm, i32 noundef %i.cv, i32 noundef %i.co) #8
  %i.dd = call ptr @pg_strdup(ptr noundef %i.dc) #8
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store ptr %i.dd, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  switch i8 %i.cx, label %bb.q [
    i8 47, label %bb.r
    i8 0, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.dg = load ptr, ptr %i.cu, align 8
  %i.dh = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.df, i64 noundef 1024, ptr noundef nonnull @.str.37, ptr noundef %i.dg, ptr noundef nonnull %i.cw) #8 ; 0 uses
  br label %bb.s

bb.r:                                             ; preds = %bb.p, %bb.p
  %i.di = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.df, i64 noundef 1024, ptr noundef nonnull @.str.33, ptr noundef nonnull %i.cw) #8 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %indvars.iv.next.i19 = add nuw nsw i64 %indvars.iv.i18, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i19, %wide.trip.count.i
  br i1 %exitcond.not.i, label %get_db_infos.exit, label %bb.p, !llvm.loop !13

get_db_infos.exit:                                ; preds = %bb.s, %bb.o
  call void @PQclear(ptr noundef %i.cm) #8
  call void @PQfinish(ptr noundef %i.bu) #8
  store ptr %i.cs, ptr %i.c, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  store i32 %i.cq, ptr %i.dj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  call void @initPQExpBuffer(ptr noundef nonnull %1) #8
  %i.dk = load i32, ptr getelementptr inbounds nuw (i8, ptr @user_opts, i64 4), align 4
  %i.dl = icmp eq i32 %i.dk, 4
  %i.dm = select i1 %i.dl, ptr @.str.39, ptr @.str.40
  %i.dn = load i32, ptr getelementptr inbounds nuw (i8, ptr @old_cluster, i64 188), align 4
  %i.do = icmp ugt i32 %i.dn, 159999
  %i.dp = select i1 %i.do, ptr @.str.41, ptr @.str.40
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %1, ptr noundef nonnull @.str.38, ptr noundef nonnull %i.dm, i32 noundef 16384, ptr noundef nonnull %i.dp) #8
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.42) #8
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.43) #8
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.44) #8
  %i.dq = load ptr, ptr %1, align 8               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  call void @upgrade_task_add_step(ptr noundef %i.b, ptr noundef %i.dq, ptr noundef nonnull @process_rel_infos, i1 noundef zeroext true, ptr noundef null) #8
  %i.dr = icmp eq ptr %0, @old_cluster            ; 2 uses
  %2 = load i32, ptr getelementptr inbounds nuw (i8, ptr @old_cluster, i64 188), align 4 ; 2 uses
  %3 = icmp ugt i32 %2, 160099
  %or.cond = select i1 %i.dr, i1 %3, i1 false
  br i1 %or.cond, label %bb.t, label %bb.u

bb.t:                                             ; preds = %get_db_infos.exit
  %i.ds = load i8, ptr getelementptr inbounds nuw (i8, ptr @user_opts, i64 1), align 1, !range !8, !noundef !9
  %i.dt = trunc nuw i8 %i.ds to i1
  %i.du = icmp ugt i32 %2, 189999
  %.str.53..str.54.i = select i1 %i.du, ptr @.str.53, ptr @.str.54
  %.0.i = select i1 %i.dt, ptr @.str.52, ptr %.str.53..str.54.i
  call void @upgrade_task_add_step(ptr noundef %i.b, ptr noundef nonnull %.0.i, ptr noundef nonnull @process_old_cluster_logical_slot_infos, i1 noundef zeroext true, ptr noundef null) #8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %get_db_infos.exit
  call void @upgrade_task_run(ptr noundef %i.b, ptr noundef nonnull %0) #8
  call void @upgrade_task_free(ptr noundef %i.b) #8
  call void @pg_free(ptr noundef %i.dq) #8
  %.str.3..str.4 = select i1 %i.dr, ptr @.str.3, ptr @.str.4
  call void (i32, ptr, ...) @pg_log(i32 noundef 0, ptr noundef nonnull %.str.3..str.4) #8
  %i.dv = load i8, ptr getelementptr inbounds nuw (i8, ptr @log_opts, i64 8), align 8, !range !8, !noundef !9
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.v, label %print_db_infos.exit

bb.v:                                             ; preds = %bb.u
  %i.dx = load i32, ptr %i.dj, align 8
  %i.dy = icmp sgt i32 %i.dx, 0
  br i1 %i.dy, label %.lr.ph.i20, label %print_db_infos.exit

.lr.ph.i20:                                       ; preds = %bb.v, %print_slot_infos.exit.i
  %indvars.iv.i21 = phi i64 [ %indvars.iv.next.i22, %print_slot_infos.exit.i ], [ 0, %bb.v ] ; 2 uses
  %i.dz = load ptr, ptr %i.c, align 8
  %i.ea = getelementptr inbounds nuw [1072 x i8], ptr %i.dz, i64 %indvars.iv.i21 ; 5 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  call void (i32, ptr, ...) @pg_log(i32 noundef 0, ptr noundef nonnull @.str.61, ptr noundef %i.ec) #8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 1040
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 1048 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 8
  %i.eg = icmp sgt i32 %i.ef, 0
  br i1 %i.eg, label %.lr.ph.i.i23, label %print_rel_infos.exit.i

.lr.ph.i.i23:                                     ; preds = %.lr.ph.i20, %.lr.ph.i.i23
  %indvars.iv.i.i24 = phi i64 [ %indvars.iv.next.i.i25, %.lr.ph.i.i23 ], [ 0, %.lr.ph.i20 ] ; 2 uses
  %i.eh = load ptr, ptr %i.ed, align 8
  %i.ei = getelementptr inbounds nuw [48 x i8], ptr %i.eh, i64 %indvars.iv.i.i24 ; 4 uses
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.en = load i32, ptr %i.em, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %i.ep = load ptr, ptr %i.eo, align 8
  call void (i32, ptr, ...) @pg_log(i32 noundef 0, ptr noundef nonnull @.str.62, ptr noundef %i.ej, ptr noundef %i.el, i32 noundef %i.en, ptr noundef %i.ep) #8
  %indvars.iv.next.i.i25 = add nuw nsw i64 %indvars.iv.i.i24, 1 ; 2 uses
  %i.eq = load i32, ptr %i.ee, align 8
  %i.er = sext i32 %i.eq to i64
  %i.es = icmp slt i64 %indvars.iv.next.i.i25, %i.er
  br i1 %i.es, label %.lr.ph.i.i23, label %print_rel_infos.exit.i, !llvm.loop !14

print_rel_infos.exit.i:                           ; preds = %.lr.ph.i.i23, %.lr.ph.i20
  %i.et = getelementptr inbounds nuw i8, ptr %i.ea, i64 1056 ; 3 uses
  %i.eu = load i32, ptr %i.et, align 8
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %print_slot_infos.exit.i, label %bb.w

bb.w:                                             ; preds = %print_rel_infos.exit.i
  call void (i32, ptr, ...) @pg_log(i32 noundef 0, ptr noundef nonnull @.str.63) #8
  %i.ew = load i32, ptr %i.et, align 8
  %i.ex = icmp sgt i32 %i.ew, 0
  br i1 %i.ex, label %.lr.ph.i7.i, label %print_slot_infos.exit.i

.lr.ph.i7.i:                                      ; preds = %bb.w
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ea, i64 1064
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph.i7.i
  %indvars.iv.i8.i = phi i64 [ 0, %.lr.ph.i7.i ], [ %indvars.iv.next.i9.i, %bb.x ] ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = getelementptr inbounds nuw [24 x i8], ptr %i.ez, i64 %indvars.iv.i8.i ; 3 uses
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.ff = load i8, ptr %i.fe, align 8, !range !8, !noundef !9
  %i.fg = trunc nuw i8 %i.ff to i1
  %i.fh = select i1 %i.fg, ptr @.str.65, ptr @.str.66
  call void (i32, ptr, ...) @pg_log(i32 noundef 0, ptr noundef nonnull @.str.64, ptr noundef %i.fb, ptr noundef %i.fd, ptr noundef nonnull %i.fh) #8
  %indvars.iv.next.i9.i = add nuw nsw i64 %indvars.iv.i8.i, 1 ; 2 uses
  %i.fi = load i32, ptr %i.et, align 8
  %i.fj = sext i32 %i.fi to i64
  %i.fk = icmp slt i64 %indvars.iv.next.i9.i, %i.fj
  br i1 %i.fk, label %bb.x, label %print_slot_infos.exit.i, !llvm.loop !15

print_slot_infos.exit.i:                          ; preds = %bb.x, %bb.w, %print_rel_infos.exit.i
  %indvars.iv.next.i22 = add nuw nsw i64 %indvars.iv.i21, 1 ; 2 uses
  %i.fl = load i32, ptr %i.dj, align 8
  %i.fm = sext i32 %i.fl to i64
  %i.fn = icmp slt i64 %indvars.iv.next.i22, %i.fm
  br i1 %i.fn, label %.lr.ph.i20, label %print_db_infos.exit, !llvm.loop !16

print_db_infos.exit:                              ; preds = %print_slot_infos.exit.i, %bb.v, %bb.u
  ret void
}

declare ptr @upgrade_task_create() local_unnamed_addr #2

declare void @upgrade_task_add_step(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @process_rel_infos(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = tail call i32 @PQntuples(ptr noundef %1) #8 ; 4 uses
  %i.b = sext i32 %i.a to i64
  %i.c = tail call ptr @pg_malloc_mul(i64 noundef 48, i64 noundef %i.b) #8 ; 2 uses
  %i.d = tail call i32 @PQfnumber(ptr noundef %1, ptr noundef nonnull @.str.45) #8
  %i.e = tail call i32 @PQfnumber(ptr noundef %1, ptr noundef nonnull @.str.46) #8
  %i.f = tail call i32 @PQfnumber(ptr noundef %1, ptr noundef nonnull @.str.47) #8
  %i.g = tail call i32 @PQfnumber(ptr noundef %1, ptr noundef nonnull @.str.48) #8
  %i.h = tail call i32 @PQfnumber(ptr noundef %1, ptr noundef nonnull @.str.49) #8
  %i.i = tail call i32 @PQfnumber(ptr noundef %1, ptr noundef nonnull @.str.50) #8
  %i.j = tail call i32 @PQfnumber(ptr noundef %1, ptr noundef nonnull @.str.51) #8
  %i.k = tail call i32 @PQfnumber(ptr noundef %1, ptr noundef nonnull @.str.36) #8
  %i.l = icmp sgt i32 %i.a, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.p, %bb.a
  %.079.lcssa = phi i32 [ 0, %bb.a ], [ %i.a, %bb.p ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store ptr %i.c, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1048
  store i32 %.079.lcssa, ptr %i.o, align 8
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %.07586 = phi ptr [ null, %.lr.ph ], [ %.2, %bb.p ] ; 5 uses
  %.07685 = phi ptr [ null, %.lr.ph ], [ %.177, %bb.p ] ; 4 uses
  %indvars88 = trunc i64 %indvars.iv to i32       ; 8 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %i.c, i64 %indvars.iv ; 12 uses
  %i.q = tail call ptr @PQgetvalue(ptr noundef %1, i32 noundef %indvars88, i32 noundef %i.d) #8
  %i.r = tail call i64 @__isoc23_strtoul(ptr noundef %i.q, ptr noundef null, i32 noundef 10) #8
  %i.s = trunc i64 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i32 %i.s, ptr %i.t, align 8
  %i.u = tail call ptr @PQgetvalue(ptr noundef %1, i32 noundef %indvars88, i32 noundef %i.e) #8
  %i.v = tail call i64 @__isoc23_strtoul(ptr noundef %i.u, ptr noundef null, i32 noundef 10) #8
  %i.w = trunc i64 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i32 %i.w, ptr %i.x, align 8
  %i.y = tail call ptr @PQgetvalue(ptr noundef %1, i32 noundef %indvars88, i32 noundef %i.f) #8
  %i.z = tail call i64 @__isoc23_strtoul(ptr noundef %i.y, ptr noundef null, i32 noundef 10) #8
  %i.aa = trunc i64 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  store i32 %i.aa, ptr %i.ab, align 4
  %i.ac = tail call ptr @PQgetvalue(ptr noundef %1, i32 noundef %indvars88, i32 noundef %i.g) #8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 2 uses
  store i8 0, ptr %i.ad, align 8
  %.not = icmp eq ptr %.07685, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ac, ptr noundef nonnull dereferenceable(1) %.07685) #9
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %.07685, ptr %i.p, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.ag = tail call ptr @pg_strdup(ptr noundef %i.ac) #8 ; 2 uses
  store ptr %i.ag, ptr %i.p, align 8
  store i8 1, ptr %i.ad, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.177 = phi ptr [ %.07685, %bb.d ], [ %i.ag, %bb.e ]
  %i.ah = tail call ptr @PQgetvalue(ptr noundef %1, i32 noundef %indvars88, i32 noundef %i.h) #8
  %i.ai = tail call ptr @pg_strdup(ptr noundef %i.ah) #8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.ai, ptr %i.aj, align 8
  %i.ak = tail call ptr @PQgetvalue(ptr noundef %1, i32 noundef %indvars88, i32 noundef %i.i) #8
  %i.al = tail call i64 @__isoc23_strtoul(ptr noundef %i.ak, ptr noundef null, i32 noundef 10) #8
  %i.am = trunc i64 %i.al to i32
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  store i32 %i.am, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 41 ; 2 uses
  store i8 0, ptr %i.ao, align 1
  %i.ap = tail call ptr @PQgetvalue(ptr noundef %1, i32 noundef %indvars88, i32 noundef %i.j) #8
  %i.aq = tail call i64 @__isoc23_strtoul(ptr noundef %i.ap, ptr noundef null, i32 noundef 10) #8
  %i.ar = and i64 %i.aq, 4294967295
  %.not81 = icmp eq i64 %i.ar, 0
  br i1 %.not81, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = tail call ptr @PQgetvalue(ptr noundef %1, i32 noundef %indvars88, i32 noundef %i.k) #8 ; 4 uses
  %i.at = load i8, ptr %i.as, align 1             ; 2 uses
  switch i8 %i.at, label %bb.h [
    i8 47, label %bb.i
    i8 0, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @os_info, i64 40), align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 144
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call ptr (ptr, ...) @psprintf(ptr noundef nonnull @.str.37, ptr noundef %i.aw, ptr noundef nonnull %i.as) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.g, %bb.h
  %.078 = phi ptr [ %i.ax, %bb.h ], [ %i.as, %bb.g ], [ %i.as, %bb.g ] ; 3 uses
  %.not83 = icmp eq ptr %.07586, null
  br i1 %.not83, label %bb.l, label %bb.j
end_hunk_0
