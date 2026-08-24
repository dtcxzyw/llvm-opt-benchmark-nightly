Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/parse_utilcmd?download=true
inline.NumInlined: 167
inline.NumDeleted: 33
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@.str.109 = private unnamed_addr constant [32 x i8] c"index \22%s\22 contains expressions\00", align 1
@.str.110 = private unnamed_addr constant [24 x i8] c"\22%s\22 is a partial index\00", align 1
@.str.111 = private unnamed_addr constant [27 x i8] c"\22%s\22 is a deferrable index\00", align 1
@.str.112 = private unnamed_addr constant [68 x i8] c"Cannot create a non-deferrable constraint using a deferrable index.\00", align 1
@.str.113 = private unnamed_addr constant [26 x i8] c"index \22%s\22 is not a btree\00", align 1
@.str.114 = private unnamed_addr constant [67 x i8] c"index \22%s\22 column number %d does not have default sorting behavior\00", align 1
@.str.115 = private unnamed_addr constant [74 x i8] c"conflicting NO INHERIT declaration for not-null constraint on column \22%s\22\00", align 1
@.str.116 = private unnamed_addr constant [56 x i8] c"inherited relation \22%s\22 is not a table or foreign table\00", align 1
@.str.117 = private unnamed_addr constant [40 x i8] c"column \22%s\22 named in key does not exist\00", align 1
@.str.118 = private unnamed_addr constant [52 x i8] c"column \22%s\22 appears twice in primary key constraint\00", align 1
@.str.119 = private unnamed_addr constant [47 x i8] c"column \22%s\22 appears twice in unique constraint\00", align 1
@.str.120 = private unnamed_addr constant [66 x i8] c"column \22%s\22 in WITHOUT OVERLAPS is not a range or multirange type\00", align 1
@.str.121 = private unnamed_addr constant [61 x i8] c"constraint using WITHOUT OVERLAPS needs at least two columns\00", align 1
@.str.122 = private unnamed_addr constant [5 x i8] c"gist\00", align 1
@.str.123 = private unnamed_addr constant [14 x i8] c"sequence_name\00", align 1
@.str.124 = private unnamed_addr constant [7 x i8] c"logged\00", align 1
@.str.125 = private unnamed_addr constant [9 x i8] c"unlogged\00", align 1
@.str.126 = private unnamed_addr constant [4 x i8] c"seq\00", align 1
@.str.127 = private unnamed_addr constant [64 x i8] c"%s will create implicit sequence \22%s\22 for serial column \22%s.%s\22\00", align 1
@__func__.generateSerialExtraStmts = private unnamed_addr constant [25 x i8] c"generateSerialExtraStmts\00", align 1
@.str.128 = private unnamed_addr constant [49 x i8] c"cannot set logged status of a temporary sequence\00", align 1
@.str.129 = private unnamed_addr constant [9 x i8] c"owned_by\00", align 1
@.str.130 = private unnamed_addr constant [53 x i8] c"partition of hash-partitioned table cannot be merged\00", align 1
@__func__.transformPartitionCmdForMerge = private unnamed_addr constant [30 x i8] c"transformPartitionCmdForMerge\00", align 1
@.str.131 = private unnamed_addr constant [41 x i8] c"partition with name \22%s\22 is already used\00", align 1
@.str.132 = private unnamed_addr constant [20 x i8] c"\22%s\22 is not a table\00", align 1
@.str.133 = private unnamed_addr constant [91 x i8] c"ALTER TABLE ... MERGE PARTITIONS can only merge partitions that don't have sub-partitions.\00", align 1
@.str.134 = private unnamed_addr constant [90 x i8] c"ALTER TABLE ... SPLIT PARTITION can only split partitions that don't have sub-partitions.\00", align 1
@__func__.checkPartition = private unnamed_addr constant [15 x i8] c"checkPartition\00", align 1
@.str.135 = private unnamed_addr constant [50 x i8] c"\22%s\22 is not a partition of partitioned table \22%s\22\00", align 1
@.str.136 = private unnamed_addr constant [50 x i8] c"relation \22%s\22 is not a partition of relation \22%s\22\00", align 1
@.str.137 = private unnamed_addr constant [47 x i8] c"cannot specify more than one DEFAULT partition\00", align 1
@__func__.transformPartitionCmdForSplit = private unnamed_addr constant [30 x i8] c"transformPartitionCmdForSplit\00", align 1
@.str.138 = private unnamed_addr constant [52 x i8] c"partition of hash-partitioned table cannot be split\00", align 1
@.str.139 = private unnamed_addr constant [36 x i8] c"cannot split DEFAULT partition \22%s\22\00", align 1
@.str.140 = private unnamed_addr constant [73 x i8] c"To split a DEFAULT partition, one of the new partitions must be DEFAULT.\00", align 1
@.str.141 = private unnamed_addr constant [40 x i8] c"cannot split non-DEFAULT partition \22%s\22\00", align 1
@.str.142 = private unnamed_addr constant [79 x i8] c"New partition cannot be DEFAULT because DEFAULT partition \22%s\22 already exists.\00", align 1
@.str.143 = private unnamed_addr constant [73 x i8] c"CREATE specifies a schema (%s) different from the one being created (%s)\00", align 1
@__func__.checkSchemaNameRV = private unnamed_addr constant [18 x i8] c"checkSchemaNameRV\00", align 1
@.str.144 = private unnamed_addr constant [57 x i8] c"cannot create temporary relation in non-temporary schema\00", align 1
@__func__.checkSchemaNameList = private unnamed_addr constant [20 x i8] c"checkSchemaNameList\00", align 1
@.str.145 = private unnamed_addr constant [32 x i8] c"\22%s\22 is not a partitioned table\00", align 1
@__func__.transformPartitionCmd = private unnamed_addr constant [22 x i8] c"transformPartitionCmd\00", align 1
@.str.146 = private unnamed_addr constant [30 x i8] c"table \22%s\22 is not partitioned\00", align 1
@.str.147 = private unnamed_addr constant [30 x i8] c"index \22%s\22 is not partitioned\00", align 1
@.str.148 = private unnamed_addr constant [41 x i8] c"\22%s\22 is not a partitioned table or index\00", align 1
@.str.149 = private unnamed_addr constant [9 x i8] c"minvalue\00", align 1
@.str.150 = private unnamed_addr constant [9 x i8] c"maxvalue\00", align 1
@.str.151 = private unnamed_addr constant [35 x i8] c"cannot specify NULL in range bound\00", align 1
@__func__.transformPartitionRangeBounds = private unnamed_addr constant [30 x i8] c"transformPartitionRangeBounds\00", align 1
@.str.152 = private unnamed_addr constant [53 x i8] c"every bound following MAXVALUE must also be MAXVALUE\00", align 1
@__func__.validateInfiniteBounds = private unnamed_addr constant [23 x i8] c"validateInfiniteBounds\00", align 1
@.str.153 = private unnamed_addr constant [53 x i8] c"every bound following MINVALUE must also be MINVALUE\00", align 1
@.str.154 = private unnamed_addr constant [58 x i8] c"specified value cannot be cast to type %s for column \22%s\22\00", align 1
@__func__.transformPartitionBoundValue = private unnamed_addr constant [29 x i8] c"transformPartitionBoundValue\00", align 1
@.str.155 = private unnamed_addr constant [46 x i8] c"could not evaluate partition bound expression\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @transformCreateStmt(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ParseCallbackState, align 8 ; 4 uses
  %3 = alloca %struct.CreateStmtContext, align 8  ; 24 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %4 = alloca %struct.ParseCallbackState, align 8 ; 4 uses
  %5 = alloca %struct.ObjectAddress, align 4      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.b = tail call ptr @make_parsestate(ptr noundef null) #8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load i32, ptr %i.f, align 8
  call void @setup_parser_errposition_callback(ptr noundef nonnull %4, ptr noundef %i.b, i32 noundef %i.g) #8
  %i.h = load ptr, ptr %i.d, align 8
  %i.i = call i32 @RangeVarGetAndCheckCreationNamespace(ptr noundef %i.h, i32 noundef 0, ptr noundef nonnull %i.a) #8
  call void @cancel_parser_errposition_callback(ptr noundef nonnull %4) #8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load i8, ptr %i.j, align 8, !range !4, !noundef !5
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = load i32, ptr %i.a, align 4              ; 2 uses
  %i.n = icmp ne i32 %i.m, 0
  %or.cond = select i1 %i.l, i1 %i.n, i1 false
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  store i32 1259, ptr %5, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.m, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.p, align 4
  call void @checkMembershipInCurrentExtension(ptr noundef nonnull %5) #8
  %i.q = call zeroext i1 @errstart(i32 noundef 18, ptr noundef null) #8
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = call i32 @errcode(i32 noundef 117571716) #8 ; 0 uses
  %i.s = load ptr, ptr %i.d, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str, ptr noundef %i.u) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 209, ptr noundef nonnull @__func__.transformCreateStmt) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.bc

bb.e:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 33
  %i.ab = load i8, ptr %i.aa, align 1
  %.not = icmp eq i8 %i.ab, 116
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = call ptr @get_namespace_name(i32 noundef %i.i) #8
  %i.ad = load ptr, ptr %i.d, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %i.ac, ptr %i.ae, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  store ptr %i.b, ptr %3, align 8
  %i.af = load i32, ptr %0, align 8
  %i.ag = icmp eq i32 %i.af, 181                  ; 2 uses
  %spec.select = select i1 %i.ag, ptr @.str.2, ptr @.str.3
  %spec.select158 = zext i1 %i.ag to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %spec.select, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  store i8 %spec.select158, ptr %i.ai, align 8
  %i.aj = load ptr, ptr %i.d, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.aj, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr null, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.an, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 41
  store i8 0, ptr %i.ap, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 9 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aq, i8 0, i64 72, i1 false)
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = icmp ne ptr %i.ax, null
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.ba = zext i1 %i.ay to i8
  store i8 %i.ba, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 128
  store ptr %i.bc, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bf = load ptr, ptr %i.be, align 8            ; 4 uses
  %i.bg = icmp ne ptr %i.bf, null
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.bi = zext i1 %i.bg to i8
  store i8 %i.bi, ptr %i.bh, align 8
  %.not73 = icmp eq ptr %i.bf, null
  br i1 %.not73, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = call ptr @typenameType(ptr noundef nonnull %i.b, ptr noundef nonnull %i.bf, ptr noundef null) #8 ; 3 uses
  call void @check_of_type(ptr noundef %i.bj) #8
  %i.bk = getelementptr i8, ptr %i.bj, i64 16
  %.val.i = load ptr, ptr %i.bk, align 8          ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.val.i, i64 22
  %i.bm = load i8, ptr %i.bl, align 2
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4            ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i32 %i.bp, ptr %i.bq, align 8
  %i.br = call ptr @lookup_rowtype_tupdesc(i32 noundef %i.bp, i32 noundef -1) #8 ; 5 uses
  %i.bs = load i32, ptr %i.br, align 8            ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.k
  %i.bu = phi ptr [ %i.cn, %bb.k ], [ null, %bb.i ] ; 2 uses
  %i.bv = phi i32 [ %i.co, %bb.k ], [ %i.bs, %bb.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.k ], [ 0, %bb.i ] ; 2 uses
  %6 = sext i32 %i.bv to i64                      ; 2 uses
  %i.bw = shl nsw i64 %6, 3
  %i.bx = getelementptr i8, ptr %i.br, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.bx, i64 32
  %i.bz = getelementptr inbounds nuw [100 x i8], ptr %i.by, i64 %indvars.iv.i ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 91
  %i.cb = load i8, ptr %i.ca, align 1, !range !4, !noundef !5
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 68
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 76
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bz, i64 96
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = call ptr @makeColumnDef(ptr noundef nonnull %i.cd, i32 noundef %i.cf, i32 noundef %i.ch, i32 noundef %i.cj) #8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 36
  store i8 1, ptr %i.cl, align 4
  %i.cm = call ptr @lappend(ptr noundef %i.bu, ptr noundef %i.ck) #8
  %.pre.i = load i32, ptr %i.br, align 8          ; 2 uses
  %.pre25.i = sext i32 %.pre.i to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i
  %i.cn = phi ptr [ %i.bu, %.lr.ph.i ], [ %i.cm, %bb.j ] ; 2 uses
  %.pre-phi.i = phi i64 [ %6, %.lr.ph.i ], [ %.pre25.i, %bb.j ]
  %i.co = phi i32 [ %i.bv, %.lr.ph.i ], [ %.pre.i, %bb.j ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cp = icmp slt i64 %indvars.iv.next.i, %.pre-phi.i
  br i1 %i.cp, label %.lr.ph.i, label %._crit_edge.i.loopexit, !llvm.loop !6

._crit_edge.i.loopexit:                           ; preds = %bb.k
  store ptr %i.cn, ptr %i.aq, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = icmp sgt i32 %i.cr, -1
  br i1 %i.cs, label %bb.l, label %transformOfType.exit

bb.l:                                             ; preds = %._crit_edge.i
  call void @DecrTupleDescRefCount(ptr noundef nonnull %i.br) #8
  br label %transformOfType.exit

transformOfType.exit:                             ; preds = %._crit_edge.i, %bb.l
  call void @ReleaseSysCache(ptr noundef %i.bj) #8
  %.pre = load ptr, ptr %i.aw, align 8
  br label %bb.m

bb.m:                                             ; preds = %transformOfType.exit, %bb.h
  %i.ct = phi ptr [ %.pre, %transformOfType.exit ], [ %i.ax, %bb.h ]
  %.not74 = icmp eq ptr %i.ct, null
  br i1 %.not74, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cu = load ptr, ptr %i.am, align 8
  %.not75 = icmp eq ptr %i.cu, null
  br i1 %.not75, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cv = load ptr, ptr %i.bb, align 8
  %.not76 = icmp eq ptr %i.cv, null
  br i1 %.not76, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cw = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.cx = call i32 @errcode(i32 noundef 117833860) #8 ; 0 uses
  %i.cy = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.4) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 263, ptr noundef nonnull @__func__.transformCreateStmt) #8
  unreachable

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.m
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8            ; 3 uses
  %.not77 = icmp eq ptr %i.da, null
  br i1 %.not77, label %.critedge85, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dd = load i32, ptr %i.db, align 4
  %i.de = icmp sgt i32 %i.dd, 0
  br i1 %i.de, label %.lr.ph166, label %.critedge85

.lr.ph166:                                        ; preds = %.lr.ph, %bb.ax
  %indvars.iv165 = phi i64 [ %indvars.iv.next, %bb.ax ], [ 0, %.lr.ph ] ; 2 uses
  %i.df = load ptr, ptr %i.dc, align 8
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv165
  %i.dh = load ptr, ptr %i.dg, align 8            ; 10 uses
  %i.di = load i32, ptr %i.dh, align 4
  switch i32 %i.di, label %bb.aw [
    i32 94, label %bb.r
    i32 169, label %bb.s
    i32 95, label %bb.t
  ]

.critedge85:                                      ; preds = %bb.ax, %.lr.ph, %bb.q
  %i.dj = load ptr, ptr %i.av, align 8
  store ptr null, ptr %i.av, align 8
  %i.dk = load ptr, ptr %i.as, align 8            ; 3 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %.split122.us, label %.lr.ph119

bb.r:                                             ; preds = %.lr.ph166
  call fastcc void @transformColumnDefinition(ptr noundef %3, ptr noundef nonnull %i.dh)
  br label %bb.ax

bb.s:                                             ; preds = %.lr.ph166
  call fastcc void @transformTableConstraint(ptr noundef %3, ptr noundef nonnull %i.dh)
  br label %bb.ax

bb.t:                                             ; preds = %.lr.ph166
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.dm = load ptr, ptr %3, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  %i.dq = load i32, ptr %i.dp, align 8
  call void @setup_parser_errposition_callback(ptr noundef nonnull %2, ptr noundef %i.dm, i32 noundef %i.dq) #8
  %i.dr = load ptr, ptr %i.dn, align 8
  %i.ds = call ptr @relation_openrv(ptr noundef %i.dr, i32 noundef 1) #8 ; 7 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 56 ; 7 uses
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 119
  %i.dw = load i8, ptr %i.dv, align 1
  switch i8 %i.dw, label %bb.u [
    i8 114, label %bb.v
    i8 118, label %bb.v
    i8 109, label %bb.v
    i8 99, label %bb.v
    i8 102, label %bb.v
    i8 112, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.dx = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.dy = call i32 @errcode(i32 noundef 151027844) #8 ; 0 uses
  %i.dz = load ptr, ptr %i.dt, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.eb = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.91, ptr noundef nonnull %i.ea) #8 ; 0 uses
  %i.ec = load ptr, ptr %i.dt, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 119
  %i.ee = load i8, ptr %i.ed, align 1
  %i.ef = call i32 @errdetail_relkind_not_supported(i8 noundef signext %i.ee) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1149, ptr noundef nonnull @__func__.transformTableLikeClause) #8
  unreachable

bb.v:                                             ; preds = %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t
  call void @cancel_parser_errposition_callback(ptr noundef nonnull %2) #8
  %i.eg = load ptr, ptr %i.dt, align 8            ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 119
  %i.ei = load i8, ptr %i.eh, align 1
  %i.ej = icmp eq i8 %i.ei, 99
  br i1 %i.ej, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 72
  %i.el = load i32, ptr %i.ek, align 4
  %i.em = call i32 @GetUserId() #8
  %i.en = call i32 @object_aclcheck(i32 noundef 1247, i32 noundef %i.el, i32 noundef %i.em, i64 noundef 256) #8 ; 2 uses
  %.not127.i = icmp eq i32 %i.en, 0
  br i1 %.not127.i, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eo = load ptr, ptr %i.dt, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  call void @aclcheck_error(i32 noundef %i.en, i32 noundef 50, ptr noundef nonnull %i.ep) #8
  br label %bb.aa

bb.y:                                             ; preds = %bb.v
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ds, i64 72
  %i.er = load i32, ptr %i.eq, align 8
  %i.es = call i32 @GetUserId() #8
  %i.et = call i32 @pg_class_aclcheck(i32 noundef %i.er, i32 noundef %i.es, i64 noundef 2) #8 ; 2 uses
  %.not126.i = icmp eq i32 %i.et, 0
  br i1 %.not126.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eu = load ptr, ptr %i.dt, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 119
  %i.ew = load i8, ptr %i.ev, align 1
  %i.ex = call i32 @get_relkind_objtype(i8 noundef signext %i.ew) #8
  %i.ey = load ptr, ptr %i.dt, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  call void @aclcheck_error(i32 noundef %i.et, i32 noundef %i.ex, ptr noundef nonnull %i.ez) #8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.w
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ds, i64 64
  %i.fb = load ptr, ptr %i.fa, align 8            ; 4 uses
  %i.fc = load i32, ptr %i.fb, align 8            ; 2 uses
  %.not128145.i = icmp slt i32 %i.fc, 1
  br i1 %.not128145.i, label %._crit_edge.i89, label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %bb.aa
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 5 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aq, %.lr.ph.i87
  %i.fe = phi i32 [ %i.fc, %.lr.ph.i87 ], [ %i.ie, %bb.aq ]
  %.0146.i = phi i16 [ 1, %.lr.ph.i87 ], [ %i.ic, %bb.aq ] ; 2 uses
  %i.ff = sext i32 %i.fe to i64
  %i.fg = shl nsw i64 %i.ff, 3
  %i.fh = getelementptr i8, ptr %i.fb, i64 %i.fg
  %i.fi = sext i16 %.0146.i to i64
  %i.fj = getelementptr [100 x i8], ptr %i.fh, i64 %i.fi ; 13 uses
  %i.fk = getelementptr i8, ptr %i.fj, i64 -68
  %i.fl = getelementptr i8, ptr %i.fj, i64 23
  %i.fm = load i8, ptr %i.fl, align 1, !range !4, !noundef !5
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %bb.aq, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fo = getelementptr i8, ptr %i.fj, i64 -64
  %i.fp = load i32, ptr %i.fj, align 4
  %i.fq = getelementptr i8, ptr %i.fj, i64 8
  %i.fr = load i32, ptr %i.fq, align 4
  %i.fs = getelementptr i8, ptr %i.fj, i64 28
  %i.ft = load i32, ptr %i.fs, align 4
  %i.fu = call ptr @makeColumnDef(ptr noundef nonnull %i.fo, i32 noundef %i.fp, i32 noundef %i.fr, i32 noundef %i.ft) #8 ; 7 uses
  %i.fv = load ptr, ptr %i.aq, align 8
  %i.fw = call ptr @lappend(ptr noundef %i.fv, ptr noundef %i.fu) #8
  store ptr %i.fw, ptr %i.aq, align 8
  %i.fx = getelementptr i8, ptr %i.fj, i64 19
  %i.fy = load i8, ptr %i.fx, align 1, !range !4, !noundef !5
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %bb.ad, label %bb.ag

end_hunk_0
