Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/autovacuum?download=true
inline.NumInlined: 131
inline.NumDeleted: 51
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@check_autovacuum_work_mem:bb.a
  store i32 64, ptr %0, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i1 true
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @pg_stat_get_autovacuum_scores(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %1 = alloca %struct.AutoVacuumScores, align 16  ; 7 uses
  %i.d = alloca [10 x i64], align 16              ; 10 uses
  %i.e = alloca [10 x i8], align 1                ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  tail call void @InitMaterializedSRF(ptr noundef %0, i32 noundef 0) #18
  %i.h = tail call i32 @MultiXactMemberFreezeThreshold() #18 ; 2 uses
  %i.i = tail call i64 @ReadNextFullTransactionId() #18
  %i.j = trunc i64 %i.i to i32
  store i32 %i.j, ptr @recentXid, align 4
  %i.k = tail call i32 @ReadNextMultiXactId() #18
  store i32 %i.k, ptr @recentMulti, align 4
  %i.l = tail call ptr @table_open(i32 noundef 1259, i32 noundef 1) #18 ; 3 uses
  %i.m = tail call ptr @table_beginscan_catalog(ptr noundef %i.l, i32 noundef 0, ptr noundef null) #18 ; 4 uses
  %i.n = tail call ptr @heap_getnext(ptr noundef %i.m, i32 noundef 1) #18 ; 2 uses
  %.not29 = icmp eq ptr %i.n, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %i.z = phi ptr [ %i.n, %.lr.ph ], [ %i.be, %bb.g ] ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  %.val = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 22
  %i.ac = load i8, ptr %i.ab, align 2
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ad ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.e, i8 0, i64 10, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 119
  %i.ag = load i8, ptr %i.af, align 1
  switch i8 %i.ag, label %bb.g [
    i8 114, label %bb.c
    i8 109, label %bb.c
    i8 116, label %bb.c
  ], !llvm.loop !27

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 118
  %i.ai = load i8, ptr %i.ah, align 2
  %i.aj = icmp eq i8 %i.ai, 116
  br i1 %i.aj, label %bb.g, label %bb.d, !llvm.loop !27

bb.d:                                             ; preds = %bb.c
  %i.ak = load ptr, ptr %i.o, align 8
  %i.al = call ptr @extractRelOptions(ptr noundef nonnull %i.z, ptr noundef %i.ak, ptr noundef null) #18 ; 3 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %extract_autovac_opts.exit.thread, label %bb.e

extract_autovac_opts.exit.thread:                 ; preds = %bb.d
  %i.an = load i32, ptr %i.ae, align 4
  call fastcc void @relation_needs_vacanalyze(i32 noundef %i.an, ptr noundef null, ptr noundef nonnull %i.ae, i32 noundef %i.h, i32 noundef 0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ao = call ptr @palloc(i64 noundef 96) #18    ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ao, ptr noundef nonnull align 8 dereferenceable(96) %i.ap, i64 96, i1 false)
  call void @pfree(ptr noundef nonnull %i.al) #18
  %i.aq = load i32, ptr %i.ae, align 4
  call fastcc void @relation_needs_vacanalyze(i32 noundef %i.aq, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.ae, i32 noundef %i.h, i32 noundef 0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %1)
  call void @pfree(ptr noundef nonnull %i.ao) #18
  br label %bb.f

bb.f:                                             ; preds = %extract_autovac_opts.exit.thread, %bb.e
  %i.ar = load i32, ptr %i.ae, align 4
  %i.as = zext i32 %i.ar to i64
  store i64 %i.as, ptr %i.d, align 16
  %i.at = load <2 x i64>, ptr %1, align 16
  store <2 x i64> %i.at, ptr %i.p, align 8
  %i.au = load <2 x i64>, ptr %i.q, align 16
  store <2 x i64> %i.au, ptr %i.r, align 8
  %i.av = load <2 x i64>, ptr %i.s, align 16
  store <2 x i64> %i.av, ptr %i.t, align 8
  %i.aw = load i8, ptr %i.a, align 1, !range !8, !noundef !9
  %i.ax = zext nneg i8 %i.aw to i64
  store i64 %i.ax, ptr %i.u, align 8
  %i.ay = load i8, ptr %i.b, align 1, !range !8, !noundef !9
  %i.az = zext nneg i8 %i.ay to i64
  store i64 %i.az, ptr %i.v, align 16
  %i.ba = load i8, ptr %i.c, align 1, !range !8, !noundef !9
  %i.bb = zext nneg i8 %i.ba to i64
  store i64 %i.bb, ptr %i.w, align 8
  %i.bc = load ptr, ptr %i.x, align 8
  %i.bd = load ptr, ptr %i.y, align 8
  call void @tuplestore_putvalues(ptr noundef %i.bc, ptr noundef %i.bd, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.b, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.be = call ptr @heap_getnext(ptr noundef %i.m, i32 noundef 1) #18 ; 2 uses
  %.not = icmp eq ptr %i.be, null
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %i.bf = load ptr, ptr %i.m, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 320
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull %i.m) #18, !inline_history !1
  call void @table_close(ptr noundef %i.l, i32 noundef 1) #18
  ret i64 0
}

declare void @InitMaterializedSRF(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @MultiXactMemberFreezeThreshold() local_unnamed_addr #3

declare ptr @table_open(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @table_beginscan_catalog(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @heap_getnext(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nounwind uwtable
define internal fastcc void @relation_needs_vacanalyze(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, i32 noundef %3, i32 noundef range(i32 0, 13) %4, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 1)) %5, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 1)) %6, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 1)) %7, ptr nofree noundef nonnull captures(none) initializes((0, 48)) %8) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i8 0, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.c = load float, ptr %i.b, align 4            ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.e = load i32, ptr %i.d, align 4              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 48, i1 false)
  store i8 0, ptr %5, align 1
  store i8 0, ptr %6, align 1
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %.thread278

.thread278:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load double, ptr %i.h, align 8           ; 2 uses
  %i.j = fcmp ult double %i.i, 0.000000e+00
  %i.k = load double, ptr @autovacuum_vac_scale, align 8
  %.v = select i1 %i.j, double %i.k, double %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i32, ptr %i.l, align 8              ; 2 uses
  %i.n = load i32, ptr @autovacuum_vac_thresh, align 4
  %i.o = icmp slt i32 %i.m, 0
  %i.p = select i1 %i.o, i32 %i.n, i32 %i.m
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.r = load i32, ptr %i.q, align 4              ; 2 uses
  %i.s = icmp sgt i32 %i.r, -2
  %i.t = load i32, ptr @autovacuum_vac_max_thresh, align 4
  %i.u = select i1 %i.s, i32 %i.r, i32 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.w = load double, ptr @autovacuum_vac_ins_scale, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i32, ptr @autovacuum_vac_ins_thresh, align 4
  %i.z = load <2 x double>, ptr %i.v, align 8     ; 2 uses
  %i.aa = fcmp ult <2 x double> %i.z, zeroinitializer
  %i.ab = load double, ptr @autovacuum_anl_scale, align 8
  %i.ac = insertelement <2 x double> poison, double %i.w, i64 0
  %i.ad = insertelement <2 x double> %i.ac, double %i.ab, i64 1
  %i.ae = select <2 x i1> %i.aa, <2 x double> %i.ad, <2 x double> %i.z
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ag = load i32, ptr @autovacuum_anl_thresh, align 4
  %i.ah = load i32, ptr %i.af, align 4            ; 2 uses
  %9 = load i32, ptr %i.x, align 8                ; 2 uses
  %10 = icmp slt i32 %i.ah, 0
  %11 = icmp sgt i32 %9, -2
  %spec.select294 = select i1 %11, i32 %9, i32 %i.y
  %spec.select295 = select i1 %10, i32 %i.ag, i32 %i.ah
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = load i32, ptr %i.ai, align 8            ; 2 uses
  %i.ak = load i32, ptr @autovacuum_freeze_max_age, align 4 ; 2 uses
  %. = tail call i32 @llvm.smin.i32(i32 %i.aj, i32 %i.ak)
  %i.al = icmp slt i32 %i.aj, 0
  %i.am = select i1 %i.al, i32 %i.ak, i32 %.
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ao = load i32, ptr %i.an, align 4            ; 2 uses
  %.264 = tail call i32 @llvm.smin.i32(i32 %i.ao, i32 %3)
  %i.ap = icmp slt i32 %i.ao, 0
  %.ph = select i1 %i.ap, i32 %3, i32 %.264
  %i.aq = load i8, ptr %1, align 8, !range !8, !noundef !9
  %i.ar = icmp ne i8 %i.aq, 0
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.as = load double, ptr @autovacuum_vac_scale, align 8
  %i.at = load i32, ptr @autovacuum_vac_thresh, align 4
  %i.au = load i32, ptr @autovacuum_vac_max_thresh, align 4
  %i.av = load double, ptr @autovacuum_vac_ins_scale, align 8
  %i.aw = load i32, ptr @autovacuum_vac_ins_thresh, align 4
  %i.ax = load double, ptr @autovacuum_anl_scale, align 8
  %i.ay = load i32, ptr @autovacuum_anl_thresh, align 4
  %i.az = load i32, ptr @autovacuum_freeze_max_age, align 4
  %i.ba = insertelement <2 x double> poison, double %i.av, i64 0
  %i.bb = insertelement <2 x double> %i.ba, double %i.ax, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread278
  %i.bc = phi i32 [ %.ph, %.thread278 ], [ %3, %bb.b ] ; 3 uses
  %i.bd = phi i32 [ %spec.select295, %.thread278 ], [ %i.ay, %bb.b ]
  %i.be = phi i32 [ %spec.select294, %.thread278 ], [ %i.aw, %bb.b ] ; 2 uses
  %i.bf = phi i32 [ %i.u, %.thread278 ], [ %i.au, %bb.b ] ; 2 uses
  %.in = phi double [ %.v, %.thread278 ], [ %i.as, %bb.b ]
  %i.bg = phi i32 [ %i.p, %.thread278 ], [ %i.at, %bb.b ]
  %i.bh = phi i32 [ %i.am, %.thread278 ], [ %i.az, %bb.b ] ; 2 uses
  %.not255256 = phi i1 [ %i.ar, %.thread278 ], [ true, %bb.b ]
  %i.bi = phi <2 x double> [ %i.ae, %.thread278 ], [ %i.bb, %bb.b ]
  %i.bj = fptrunc <2 x double> %i.bi to <2 x float> ; 2 uses
  %i.bk = fptrunc double %.in to float
  %i.bl = load i8, ptr @autovacuum_start_daemon, align 1, !range !8, !noundef !9
  %i.bm = trunc nuw i8 %i.bl to i1
  %i.bn = load i8, ptr @pgstat_track_counts, align 1, !range !8
  %i.bo = trunc nuw i8 %i.bn to i1
  %or.cond.i = select i1 %i.bm, i1 %i.bo, i1 false
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.bq = load i32, ptr %i.bp, align 4            ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 140
  %i.bs = load i32, ptr %i.br, align 4            ; 4 uses
  %i.bt = icmp ugt i32 %i.bq, 2                   ; 2 uses
  br i1 %i.bt, label %bb.d, label %.thread293

bb.d:                                             ; preds = %bb.c
  %i.bu = load i32, ptr @recentXid, align 4
  %i.bv = sub i32 %i.bu, %i.bh                    ; 3 uses
  %i.bw = icmp ult i32 %i.bv, 3
  %i.bx = add nsw i32 %i.bv, -3
  %spec.select = select i1 %i.bw, i32 %i.bx, i32 %i.bv ; 3 uses
  %i.by = icmp ugt i32 %spec.select, 2
  %i.bz = sub i32 %i.bq, %spec.select
  %i.ca = icmp slt i32 %i.bz, 0
  %i.cb = icmp ult i32 %i.bq, %spec.select
  %.0.i = select i1 %i.by, i1 %i.ca, i1 %i.cb
  br i1 %.0.i, label %bb.f, label %.thread293

.thread293:                                       ; preds = %bb.c, %bb.d
  %.not257 = icmp eq i32 %i.bs, 0
  br i1 %.not257, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread293
  %i.cc = load i32, ptr @recentMulti, align 4     ; 2 uses
  %i.cd = icmp eq i32 %i.cc, %i.bc
  %i.ce = sub i32 %i.cc, %i.bc
  %spec.select265 = select i1 %i.cd, i32 -1, i32 %i.ce
  %i.cf = tail call zeroext i1 @MultiXactIdPrecedes(i32 noundef %i.bs, i32 noundef %spec.select265) #18
  br label %bb.f

bb.f:                                             ; preds = %.thread293, %bb.e, %bb.d
  %.0214 = phi i1 [ true, %bb.d ], [ false, %.thread293 ], [ %i.cf, %bb.e ] ; 2 uses
  %i.cg = zext i1 %.0214 to i8
  store i8 %i.cg, ptr %7, align 1
  %i.ch = load i32, ptr @recentXid, align 4
  %i.ci = sub i32 %i.ch, %i.bq
  %i.cj = select i1 %i.bt, i32 %i.ci, i32 0       ; 2 uses
  %.not258 = icmp eq i32 %i.bs, 0
  %i.ck = load i32, ptr @recentMulti, align 4
  %i.cl = sub i32 %i.ck, %i.bs
  %i.cm = select i1 %.not258, i32 0, i32 %i.cl    ; 2 uses
  %i.cn = sitofp i32 %i.bh to double
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.cp = tail call i32 @llvm.smax.i32(i32 %i.bc, i32 1)
  %i.cq = uitofp nneg i32 %i.cp to double
  %i.cr = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.cs = load i32, ptr @vacuum_failsafe_age, align 4
  %i.ct = load i32, ptr @autovacuum_freeze_max_age, align 4
  %i.cu = load i32, ptr @vacuum_multixact_failsafe_age, align 4
  %i.cv = load i32, ptr @autovacuum_multixact_freeze_max_age, align 4
  %i.cw = load double, ptr @autovacuum_freeze_score_weight, align 8 ; 3 uses
  %i.cx = load double, ptr @autovacuum_multixact_freeze_score_weight, align 8 ; 3 uses
  %i.cy = insertelement <2 x i32> poison, i32 %i.cu, i64 0
  %i.cz = insertelement <2 x i32> %i.cy, i32 %i.cs, i64 1
  %i.da = sitofp <2 x i32> %i.cz to <2 x double>  ; 2 uses
  %i.db = insertelement <2 x i32> poison, i32 %i.cv, i64 0
  %i.dc = insertelement <2 x i32> %i.db, i32 %i.ct, i64 1
  %i.dd = sitofp <2 x i32> %i.dc to <2 x double>
  %i.de = fmul nnan <2 x double> %i.dd, splat (double 1.050000e+00) ; 2 uses
  %i.df = fcmp olt <2 x double> %i.de, %i.da
  %i.dg = select <2 x i1> %i.df, <2 x double> %i.da, <2 x double> %i.de
  %i.dh = fptosi <2 x double> %i.dg to <2 x i32>  ; 2 uses
  %i.di = sitofp <2 x i32> %i.dh to <2 x double>
  %12 = uitofp i32 %i.cm to double                ; 2 uses
  %13 = uitofp i32 %i.cj to double                ; 2 uses
  %i.dj = insertelement <4 x double> poison, double %13, i64 0
  %i.dk = insertelement <4 x double> %i.dj, double %12, i64 1
  %i.dl = shufflevector <2 x double> %i.di, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %14 = shufflevector <4 x double> %i.dk, <4 x double> %i.dl, <4 x i32> <i32 0, i32 1, i32 5, i32 4>
  %i.dm = insertelement <4 x double> poison, double %i.cn, i64 0
  %i.dn = insertelement <4 x double> %i.dm, double %i.cq, i64 1
  %i.do = insertelement <4 x double> %i.dn, double %i.cw, i64 2
  %i.dp = insertelement <4 x double> %i.do, double %i.cx, i64 3
  %i.dq = fdiv <4 x double> %14, %i.dp            ; 3 uses
  %15 = shufflevector <2 x i32> %i.dh, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.dr = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.ds = insertelement <2 x double> %i.dr, double %i.cx, i64 1
  %i.dt = fcmp ogt <2 x double> %i.ds, splat (double 1.000000e+00)
  %i.du = shufflevector <4 x double> %i.dq, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.dv = fptosi <2 x double> %i.du to <2 x i32>
  %i.dw = select <2 x i1> %i.dt, <2 x i32> %i.dv, <2 x i32> %15 ; 2 uses
  %i.dx = extractelement <2 x i32> %i.dw, i64 0
  %.not259 = icmp ult i32 %i.cj, %i.dx
  %i.dy = extractelement <4 x double> %i.dq, i64 0 ; 2 uses
  br i1 %.not259, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dz = fdiv double %13, 1.000000e+08           ; 2 uses
  %i.ea = fcmp olt double %i.dz, 1.000000e+00
  %i.eb = select i1 %i.ea, double 1.000000e+00, double %i.dz
  %i.ec = tail call double @pow(double noundef %i.dy, double noundef %i.eb) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ed = phi double [ %i.ec, %bb.g ], [ %i.dy, %bb.f ]
  %i.ee = extractelement <2 x i32> %i.dw, i64 1
  %.not260 = icmp ult i32 %i.cm, %i.ee
  %i.ef = extractelement <4 x double> %i.dq, i64 1 ; 2 uses
  br i1 %.not260, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.eg = fdiv double %12, 1.000000e+08           ; 2 uses
  %i.eh = fcmp olt double %i.eg, 1.000000e+00
  %i.ei = select i1 %i.eh, double 1.000000e+00, double %i.eg
  %i.ej = tail call double @pow(double noundef %i.ef, double noundef %i.ei) #18
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ek = phi double [ %i.ej, %bb.i ], [ %i.ef, %bb.h ]
  %i.el = fmul double %i.cw, %i.ed                ; 3 uses
  store double %i.el, ptr %i.co, align 8
  %i.em = fmul double %i.cx, %i.ek                ; 3 uses
  store double %i.em, ptr %i.cr, align 8
  %i.en = fcmp ogt double %i.el, %i.em
  %.267 = select i1 %i.en, double %i.el, double %i.em
  store double %.267, ptr %8, align 8
  br i1 %.0214, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %5, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 117
  %i.ep = load i8, ptr %i.eo, align 1, !range !8, !noundef !9
  %i.eq = trunc nuw i8 %i.ep to i1
  %i.er = call ptr @pgstat_fetch_stat_tabentry_ext(i1 noundef zeroext %i.eq, i32 noundef %0, ptr noundef nonnull %i.a) #18 ; 5 uses
  %.not261 = icmp eq ptr %i.er, null
  br i1 %.not261, label %bb.ah, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 80
  %i.et = load i64, ptr %i.es, align 8
  %i.eu = sitofp i64 %i.et to float               ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 96
  %i.ew = load i64, ptr %i.ev, align 8
  %i.ex = sitofp i64 %i.ew to float               ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.er, i64 88
  %i.ez = load i64, ptr %i.ey, align 8
  %i.fa = sitofp i64 %i.ez to float               ; 4 uses
  %i.fb = fcmp olt float %i.c, 0.000000e+00
  %spec.store.select = select i1 %i.fb, float 0.000000e+00, float %i.c ; 3 uses
  %i.fc = icmp sgt i32 %i.e, 0
  %i.fd = icmp sgt i32 %i.g, 0
  %or.cond = select i1 %i.fc, i1 %i.fd, i1 false
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.fe = call i32 @llvm.umin.i32(i32 %i.g, i32 %i.e)
  %i.ff = uitofp nneg i32 %i.fe to float
  %i.fg = uitofp nneg i32 %i.e to float
  %i.fh = fdiv float %i.ff, %i.fg
  %i.fi = fsub float 1.000000e+00, %i.fh
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0 = phi float [ %i.fi, %bb.n ], [ 1.000000e+00, %bb.m ]
  %i.fj = sitofp i32 %i.bg to float
  %i.fk = call float @llvm.fmuladd.f32(float %i.bk, float %spec.store.select, float %i.fj) ; 3 uses
  %i.fl = icmp sgt i32 %i.bf, -1
  br i1 %i.fl, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.fm = uitofp nneg i32 %i.bf to float          ; 2 uses
  %i.fn = fcmp ogt float %i.fk, %i.fm
  br i1 %i.fn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.0213 = phi float [ %i.fm, %bb.q ], [ %i.fk, %bb.p ], [ %i.fk, %bb.o ] ; 5 uses
  %i.fo = insertelement <2 x i32> poison, i32 %i.bd, i64 0
  %i.fp = insertelement <2 x i32> %i.fo, i32 %i.be, i64 1
  %i.fq = sitofp <2 x i32> %i.fp to <2 x float>
  %i.fr = extractelement <2 x float> %i.bj, i64 0
  %i.fs = fmul float %spec.store.select, %i.fr
  %i.ft = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fu = insertelement <2 x float> %i.ft, float %i.fs, i64 1
  %i.fv = insertelement <2 x float> poison, float %spec.store.select, i64 0
  %i.fw = insertelement <2 x float> %i.fv, float %.0, i64 1
  %i.fx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fu, <2 x float> %i.fw, <2 x float> %i.fq) ; 4 uses
  %i.fy = fpext float %i.eu to double             ; 3 uses
  %i.fz = fcmp ogt float %.0213, 1.000000e+00
  %i.ga = select i1 %i.fz, float %.0213, float 1.000000e+00
  %i.gb = fpext float %i.ga to double
  %i.gc = fdiv double %i.fy, %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %i.ge = load double, ptr @autovacuum_vacuum_score_weight, align 8
  %i.gf = fmul double %i.ge, %i.gc                ; 3 uses
  store double %i.gf, ptr %i.gd, align 8
  %i.gg = load double, ptr %8, align 8            ; 2 uses
  %i.gh = fcmp ogt double %i.gg, %i.gf
  %.268 = select i1 %i.gh, double %i.gg, double %i.gf
  store double %.268, ptr %8, align 8
  %.not255.not = and i1 %.not255256, %or.cond.i   ; 3 uses
  %i.gi = fcmp olt float %.0213, %i.eu
  %or.cond269 = select i1 %.not255.not, i1 %i.gi, i1 false
  br i1 %or.cond269, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i8 1, ptr %5, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.gj = icmp sgt i32 %i.be, -1                  ; 2 uses
  br i1 %i.gj, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.gk = fpext nnan ninf float %i.ex to double
  %i.gl = extractelement <2 x float> %i.fx, i64 1 ; 3 uses
  %i.gm = fcmp ogt float %i.gl, 1.000000e+00
  %i.gn = select i1 %i.gm, float %i.gl, float 1.000000e+00
  %i.go = fpext float %i.gn to double
  %i.gp = fdiv double %i.gk, %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.gr = load double, ptr @autovacuum_vacuum_insert_score_weight, align 8
  %i.gs = fmul double %i.gp, %i.gr                ; 3 uses
  store double %i.gs, ptr %i.gq, align 8
  %i.gt = load double, ptr %8, align 8            ; 2 uses
  %i.gu = fcmp ogt double %i.gt, %i.gs
  %.270 = select i1 %i.gu, double %i.gt, double %i.gs
  store double %.270, ptr %8, align 8
  %i.gv = fcmp olt float %i.gl, %i.ex
  %or.cond272 = select i1 %.not255.not, i1 %i.gv, i1 false
  br i1 %or.cond272, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i8 1, ptr %5, align 1
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.t
  %.not262 = icmp eq i32 %0, 2619
  br i1 %.not262, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 119
  %i.gx = load i8, ptr %i.gw, align 1
  %.not263 = icmp eq i8 %i.gx, 116
  br i1 %.not263, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gy = fpext nnan ninf float %i.fa to double
  %i.gz = extractelement <2 x float> %i.fx, i64 0 ; 3 uses
  %i.ha = fcmp ogt float %i.gz, 1.000000e+00
  %i.hb = select i1 %i.ha, float %i.gz, float 1.000000e+00
  %i.hc = fpext float %i.hb to double
  %i.hd = fdiv double %i.gy, %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.hf = load double, ptr @autovacuum_analyze_score_weight, align 8
  %i.hg = fmul double %i.hd, %i.hf                ; 3 uses
  store double %i.hg, ptr %i.he, align 8
  %i.hh = load double, ptr %8, align 8            ; 2 uses
  %i.hi = fcmp ogt double %i.hh, %i.hg
  %.273 = select i1 %i.hi, double %i.hh, double %i.hg
  store double %.273, ptr %8, align 8
  %i.hj = fcmp olt float %i.gz, %i.fa
  %or.cond275 = select i1 %.not255.not, i1 %i.hj, i1 false
  br i1 %or.cond275, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i8 1, ptr %6, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.x, %bb.w
  %i.hk = call zeroext i1 @errstart(i32 noundef %4, ptr noundef null) #18 ; 2 uses
  br i1 %i.gj, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.hk, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.hm = fpext float %.0213 to double
  %i.hn = load double, ptr %i.gd, align 8
  %i.ho = fpext float %i.ex to double
  %i.hp = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.hq = load double, ptr %i.hp, align 8
  %i.hr = fpext float %i.fa to double
  %i.hs = fpext <2 x float> %i.fx to <2 x double> ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.hu = load double, ptr %i.ht, align 8
  %i.hv = load double, ptr %i.co, align 8
  %i.hw = load double, ptr %i.cr, align 8
  %i.hx = extractelement <2 x double> %i.hs, i64 0
  %i.hy = extractelement <2 x double> %i.hs, i64 1
  %i.hz = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.54, ptr noundef nonnull %i.hl, double noundef %i.fy, double noundef %i.hm, double noundef %i.hn, double noundef %i.ho, double noundef %i.hy, double noundef %i.hq, double noundef %i.hr, double noundef %i.hx, double noundef %i.hu, double noundef %i.hv, double noundef %i.hw) #18 ; 0 uses
  br label %.sink.split

bb.ad:                                            ; preds = %bb.aa
  br i1 %i.hk, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ia = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ib = fpext float %.0213 to double
  %i.ic = load double, ptr %i.gd, align 8
  %i.id = fpext float %i.fa to double
  %i.ie = extractelement <2 x float> %i.fx, i64 0
  %i.if = fpext float %i.ie to double
  %i.ig = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ih = load double, ptr %i.ig, align 8
  %i.ii = load double, ptr %i.co, align 8
end_hunk_0
