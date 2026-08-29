Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/plancat?download=true
inline.NumInlined: 65
inline.NumDeleted: 32
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@get_relation_info:bb.a
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 16
  %i.yk = load ptr, ptr %i.yj, align 8
  br label %list_head.exit.i.i

list_head.exit.i.i:                               ; preds = %bb.db, %find_partition_scheme.exit.i
  %i.yl = phi ptr [ %i.yk, %bb.db ], [ null, %find_partition_scheme.exit.i ]
  %i.ym = icmp sgt i16 %i.yf, 0
  br i1 %i.ym, label %.lr.ph.i17.i, label %set_baserel_partition_key_exprs.exit.i

.lr.ph.i17.i:                                     ; preds = %list_head.exit.i.i
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yc, i64 8
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yc, i64 56
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yc, i64 64
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yc, i64 96
  br label %bb.dc

bb.dc:                                            ; preds = %bb.dh, %.lr.ph.i17.i
  %indvars.iv.i18.i = phi i64 [ 0, %.lr.ph.i17.i ], [ %indvars.iv.next.i21.i, %bb.dh ] ; 6 uses
  %.03135.i.i = phi ptr [ %i.yl, %.lr.ph.i17.i ], [ %.1.i20.i, %bb.dh ] ; 4 uses
  %i.yr = load ptr, ptr %i.yn, align 8
  %i.ys = getelementptr inbounds nuw [2 x i8], ptr %i.yr, i64 %indvars.iv.i18.i
  %i.yt = load i16, ptr %i.ys, align 2            ; 2 uses
  %.not.i19.i = icmp eq i16 %i.yt, 0
  br i1 %.not.i19.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.yu = load ptr, ptr %i.yo, align 8
  %i.yv = getelementptr inbounds nuw [4 x i8], ptr %i.yu, i64 %indvars.iv.i18.i
  %i.yw = load i32, ptr %i.yv, align 4
  %i.yx = load ptr, ptr %i.yp, align 8
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %i.yx, i64 %indvars.iv.i18.i
  %i.yz = load i32, ptr %i.yy, align 4
  %i.za = load ptr, ptr %i.yq, align 8
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %i.za, i64 %indvars.iv.i18.i
  %i.zc = load i32, ptr %i.zb, align 4
  %i.zd = call ptr @makeVar(i32 noundef %i.yd, i16 noundef signext %i.yt, i32 noundef %i.yw, i32 noundef %i.yz, i32 noundef %i.zc, i32 noundef 0) #9
  br label %bb.dh

bb.de:                                            ; preds = %bb.dc
  %i.ze = icmp eq ptr %.03135.i.i, null
  br i1 %i.ze, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.zf = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.zg = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.19) #9 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2861, ptr noundef nonnull @__func__.set_baserel_partition_key_exprs) #9
  unreachable

bb.dg:                                            ; preds = %bb.de
  %i.zh = load ptr, ptr %.03135.i.i, align 8
  %i.zi = call ptr @copyObjectImpl(ptr noundef %i.zh) #9 ; 2 uses
  call void @ChangeVarNodes(ptr noundef %i.zi, i32 noundef 1, i32 noundef %i.yd, i32 noundef 0) #9
  %i.zj = load ptr, ptr %i.yh, align 8            ; 2 uses
  %i.zk = getelementptr i8, ptr %i.zj, i64 4
  %.val.i.i = load i32, ptr %i.zk, align 4
  %i.zl = getelementptr i8, ptr %i.zj, i64 16
  %.val33.i.i = load ptr, ptr %i.zl, align 8
  %i.zm = getelementptr inbounds nuw i8, ptr %.03135.i.i, i64 8 ; 2 uses
  %i.zn = sext i32 %.val.i.i to i64
  %i.zo = getelementptr inbounds [8 x i8], ptr %.val33.i.i, i64 %i.zn
  %i.zp = icmp ult ptr %i.zm, %i.zo
  %..i.i.i = select i1 %i.zp, ptr %i.zm, ptr null
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.dd
  %.1.i20.i = phi ptr [ %.03135.i.i, %bb.dd ], [ %..i.i.i, %bb.dg ]
  %.0.i.i = phi ptr [ %i.zd, %bb.dd ], [ %i.zi, %bb.dg ]
  %i.zq = call ptr @list_make1_impl(i32 noundef 1, ptr %.0.i.i) #9
  %i.zr = getelementptr inbounds nuw [8 x i8], ptr %i.yg, i64 %indvars.iv.i18.i
  store ptr %i.zq, ptr %i.zr, align 8
  %indvars.iv.next.i21.i = add nuw nsw i64 %indvars.iv.i18.i, 1 ; 2 uses
  %exitcond.not.i22.i = icmp eq i64 %indvars.iv.next.i21.i, %wide.trip.count.i15.i
  br i1 %exitcond.not.i22.i, label %set_baserel_partition_key_exprs.exit.i, label %bb.dc, !llvm.loop !16

set_baserel_partition_key_exprs.exit.i:           ; preds = %bb.dh, %list_head.exit.i.i
  %i.zs = getelementptr inbounds nuw i8, ptr %3, i64 472
  store ptr %i.yg, ptr %i.zs, align 8
  %i.zt = call ptr @palloc0_mul(i64 noundef 8, i64 noundef %wide.trip.count.i15.i) #9
  %i.zu = getelementptr inbounds nuw i8, ptr %3, i64 480
  store ptr %i.zt, ptr %i.zu, align 8
  %i.zv = getelementptr inbounds nuw i8, ptr %3, i64 440 ; 2 uses
  %i.zw = load ptr, ptr %i.zv, align 8
  %.not.i23.i = icmp eq ptr %i.zw, null
  br i1 %.not.i23.i, label %bb.di, label %set_relation_partition_info.exit

bb.di:                                            ; preds = %set_baserel_partition_key_exprs.exit.i
  %i.zx = call ptr @RelationGetPartitionQual(ptr noundef nonnull %i.k) #9 ; 2 uses
  %.not10.i.i = icmp eq ptr %i.zx, null
  br i1 %.not10.i.i, label %set_relation_partition_info.exit, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.zy = call ptr @expression_planner(ptr noundef nonnull %i.zx) #9 ; 2 uses
  %i.zz = load i32, ptr %i.i, align 8             ; 2 uses
  %.not11.i.i = icmp eq i32 %i.zz, 1
  br i1 %.not11.i.i, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  call void @ChangeVarNodes(ptr noundef %i.zy, i32 noundef 1, i32 noundef %i.zz, i32 noundef 0) #9
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  store ptr %i.zy, ptr %i.zv, align 8
  br label %set_relation_partition_info.exit

set_relation_partition_info.exit:                 ; preds = %bb.dl, %bb.di, %set_baserel_partition_key_exprs.exit.i, %bb.cq, %bb.cp
  call void @table_close(ptr noundef %i.k, i32 noundef 0) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @table_open(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @errcode(i32 noundef) local_unnamed_addr #2

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #2

declare i32 @errdetail_relkind_not_supported(i8 noundef signext) local_unnamed_addr #2

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @RecoveryInProgress() local_unnamed_addr #2

declare ptr @palloc0(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @find_relation_notnullatts(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  store i32 %1, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = call ptr @hash_search(ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, i32 noundef 0, ptr noundef nonnull %i.b) #9
  %i.i = load i8, ptr %i.b, align 1, !range !4, !noundef !5
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ null, %bb.a ], [ %i.l, %bb.c ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @estimate_rel_size(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 119
  %i.d = load i8, ptr %i.c, align 1
  switch i8 %i.d, label %bb.m [
    i8 114, label %bb.b
    i8 116, label %bb.b
    i8 109, label %bb.b
    i8 105, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 328
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #9, !inline_history !17
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.i = tail call i32 @RelationGetNumberOfBlocksInFork(ptr noundef nonnull %0, i32 noundef 0) #9 ; 3 uses
  store i32 %i.i, ptr %2, align 4
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store double 0.000000e+00, ptr %3, align 8
  store double 0.000000e+00, ptr %4, align 8
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.m = load i32, ptr %i.l, align 4              ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 100
  %i.o = load float, ptr %i.n, align 4            ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.q = load i32, ptr %i.p, align 4              ; 3 uses
  %.not = icmp ne i32 %i.m, 0
  %i.r = sext i1 %.not to i32
  %.0 = add i32 %i.i, %i.r                        ; 3 uses
  %i.s = fcmp oge float %i.o, 0.000000e+00
  %i.t = icmp ugt i32 %i.m, 1
  %or.cond = and i1 %i.t, %i.s
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.050 = add i32 %i.m, -1
  %i.u = fpext nnan float %i.o to double
  %i.v = uitofp i32 %.050 to double
  %i.w = fdiv double %i.u, %i.v
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.x = tail call i32 @get_rel_data_width(ptr noundef nonnull %0, ptr noundef %1)
  %i.y = add i32 %i.x, 28
  %i.z = sext i32 %i.y to i64
  %i.aa = udiv i64 8168, %i.z
  %i.ab = uitofp nneg i64 %i.aa to double
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.049 = phi double [ %i.w, %bb.f ], [ %i.ab, %bb.g ]
  %i.ac = uitofp i32 %.0 to double                ; 2 uses
  %i.ad = fmul double %.049, %i.ac
  %i.ae = tail call double @llvm.rint.f64(double %i.ad)
  store double %i.ae, ptr %3, align 8
  %i.af = icmp eq i32 %i.q, 0
  %i.ag = icmp eq i32 %.0, 0
  %or.cond3 = or i1 %i.af, %i.ag
  br i1 %or.cond3, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store double 0.000000e+00, ptr %4, align 8
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %.not58 = icmp ult i32 %i.q, %.0
  br i1 %.not58, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store double 1.000000e+00, ptr %4, align 8
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %5 = uitofp i32 %i.q to double
  %i.ah = fdiv double %5, %i.ac
  store double %i.ah, ptr %4, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.aj = load i32, ptr %i.ai, align 4
  store i32 %i.aj, ptr %2, align 4
  %i.ak = load ptr, ptr %i.a, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 100
  %i.am = load float, ptr %i.al, align 4
  %i.an = fpext float %i.am to double
  store double %i.an, ptr %3, align 8
  store double 0.000000e+00, ptr %4, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.b, %bb.i, %bb.l, %bb.k, %bb.m, %bb.d
  ret void
}

declare zeroext i1 @IsSystemRelation(ptr noundef) local_unnamed_addr #2

declare ptr @RelationGetIndexList(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare ptr @index_open(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @index_close(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @palloc_mul(i64 noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i1 @index_can_return(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @RelationGetIndexAttOptions(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @get_opfamily_member_for_cmptype(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @get_ordering_op_properties(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RelationGetIndexExpressions(ptr noundef) local_unnamed_addr #2

declare ptr @RelationGetIndexPredicate(ptr noundef) local_unnamed_addr #2

declare void @ChangeVarNodes(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @eval_const_expressions(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @make_ands_explicit(ptr noundef) local_unnamed_addr #2

declare ptr @make_ands_implicit(ptr noundef) local_unnamed_addr #2

declare i32 @RelationGetNumberOfBlocksInFork(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lcons(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @list_free(ptr noundef) local_unnamed_addr #2

declare i32 @GetForeignServerIdByRelId(i32 noundef) local_unnamed_addr #2

declare ptr @GetFdwRoutineForRelation(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @table_close(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @get_relation_notnullatts(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %2 = alloca %struct.HASHCTL, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load i32, ptr %i.c, align 8
  store i32 %i.d, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.k = load i8, ptr %i.j, align 4, !range !4, !noundef !5
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 4, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 16, ptr %i.s, align 8
  %i.t = load ptr, ptr @CurrentMemoryContext, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr %i.t, ptr %i.u, align 8
  %i.v = call ptr @hash_create(ptr noundef nonnull @.str.4, i64 noundef 64, ptr noundef nonnull %2, i32 noundef 1064) #9
  %i.w = load ptr, ptr %i.m, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 200
  store ptr %i.v, ptr %i.x, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  %.pre = load ptr, ptr %i.m, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 200
  %.pre21 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.y = phi ptr [ %.pre21, %bb.d ], [ %i.p, %bb.c ]
  %i.z = call ptr @hash_search(ptr noundef %i.y, ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef nonnull %i.b) #9
  %i.aa = load i8, ptr %i.b, align 1, !range !4, !noundef !5
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.ac = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8            ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph._crit_edge, %.preheader
  %.016.lcssa = phi ptr [ null, %.preheader ], [ %.1, %.lr.ph._crit_edge ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %.016.lcssa, ptr %i.af, align 8
  br label %bb.g

.lr.ph:                                           ; preds = %.preheader, %.lr.ph._crit_edge
  %i.ag = phi i32 [ %i.ap, %.lr.ph._crit_edge ], [ %i.ad, %.preheader ]
  %i.ah = phi ptr [ %i.aq, %.lr.ph._crit_edge ], [ %i.ac, %.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %i.am, %.lr.ph._crit_edge ], [ 0, %.preheader ] ; 2 uses
  %.01618 = phi ptr [ %.1, %.lr.ph._crit_edge ], [ null, %.preheader ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 39
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = icmp eq i8 %i.ak, 118
  %i.am = add nuw nsw i64 %indvars.iv, 1          ; 3 uses
  br i1 %i.al, label %bb.f, label %.lr.ph._crit_edge

bb.f:                                             ; preds = %.lr.ph
  %i.an = trunc nuw nsw i64 %i.am to i32
  %i.ao = call ptr @bms_add_member(ptr noundef %.01618, i32 noundef %i.an) #9
  %.pre22 = load ptr, ptr %i.e, align 8           ; 2 uses
  %.pre23 = load i32, ptr %.pre22, align 8
  br label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.f
  %i.ap = phi i32 [ %.pre23, %bb.f ], [ %i.ag, %.lr.ph ] ; 2 uses
  %i.aq = phi ptr [ %.pre22, %bb.f ], [ %i.ah, %.lr.ph ]
  %.1 = phi ptr [ %i.ao, %bb.f ], [ %.01618, %.lr.ph ] ; 2 uses
  %i.ar = sext i32 %i.ap to i64
  %i.as = icmp slt i64 %i.am, %i.ar
  br i1 %i.as, label %.lr.ph, label %._crit_edge, !llvm.loop !18

bb.g:                                             ; preds = %bb.e, %bb.a, %bb.b, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

declare ptr @hash_create(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @hash_search(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @bms_add_member(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @infer_arbiter_indexes(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.d = load ptr, ptr %i.c, align 8              ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.k = load i32, ptr %i.j, align 8
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.bc, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.n = load i32, ptr %i.m, align 8              ; 4 uses
end_hunk_0
