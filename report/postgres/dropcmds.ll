Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/dropcmds?download=true
inline.NumInlined: 45
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ObjectAddress = type { i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"\22%s\22 is an aggregate function\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Use DROP AGGREGATE to drop aggregate functions.\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"dropcmds.c\00", align 1
@__func__.RemoveObjects = private unnamed_addr constant [14 x i8] c"RemoveObjects\00", align 1
@MyXactFlags = external local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"access method \22%s\22 does not exist, skipping\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"type \22%s\22 does not exist, skipping\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"collation \22%s\22 does not exist, skipping\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"conversion \22%s\22 does not exist, skipping\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"schema \22%s\22 does not exist, skipping\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"statistics object \22%s\22 does not exist, skipping\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"text search parser \22%s\22 does not exist, skipping\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"text search dictionary \22%s\22 does not exist, skipping\00", align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"text search template \22%s\22 does not exist, skipping\00", align 1
@.str.12 = private unnamed_addr constant [56 x i8] c"text search configuration \22%s\22 does not exist, skipping\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"extension \22%s\22 does not exist, skipping\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"function %s(%s) does not exist, skipping\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"procedure %s(%s) does not exist, skipping\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"routine %s(%s) does not exist, skipping\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"aggregate %s(%s) does not exist, skipping\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"operator %s does not exist, skipping\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"language \22%s\22 does not exist, skipping\00", align 1
@.str.20 = private unnamed_addr constant [54 x i8] c"cast from type %s to type %s does not exist, skipping\00", align 1
@.str.21 = private unnamed_addr constant [61 x i8] c"transform for type %s language \22%s\22 does not exist, skipping\00", align 1
@.str.22 = private unnamed_addr constant [56 x i8] c"trigger \22%s\22 for relation \22%s\22 does not exist, skipping\00", align 1
@.str.23 = private unnamed_addr constant [55 x i8] c"policy \22%s\22 for relation \22%s\22 does not exist, skipping\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c"event trigger \22%s\22 does not exist, skipping\00", align 1
@.str.25 = private unnamed_addr constant [53 x i8] c"rule \22%s\22 for relation \22%s\22 does not exist, skipping\00", align 1
@.str.26 = private unnamed_addr constant [51 x i8] c"foreign-data wrapper \22%s\22 does not exist, skipping\00", align 1
@.str.27 = private unnamed_addr constant [37 x i8] c"server \22%s\22 does not exist, skipping\00", align 1
@.str.28 = private unnamed_addr constant [68 x i8] c"operator class \22%s\22 does not exist for access method \22%s\22, skipping\00", align 1
@.str.29 = private unnamed_addr constant [69 x i8] c"operator family \22%s\22 does not exist for access method \22%s\22, skipping\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"publication \22%s\22 does not exist, skipping\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"unsupported object type: %d\00", align 1
@__func__.does_not_exist_skipping = private unnamed_addr constant [24 x i8] c"does_not_exist_skipping\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"unrecognized object type: %d\00", align 1
@.str.33 = private unnamed_addr constant [39 x i8] c"relation \22%s\22 does not exist, skipping\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @RemoveObjects(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca ptr, align 8                        ; 34 uses
  %2 = alloca ptr, align 8                        ; 28 uses
  %3 = alloca %struct.ObjectAddress, align 8      ; 8 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = tail call ptr @new_object_addresses() #4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.i = load i32, ptr %i.e, align 4
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph280, label %.critedge

.lr.ph280:                                        ; preds = %.lr.ph, %bb.dd
  %indvars.iv279 = phi i64 [ %indvars.iv.next, %bb.dd ], [ 0, %.lr.ph ] ; 2 uses
  %i.k = load ptr, ptr %i.f, align 8
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv279
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #4
  %i.m = load ptr, ptr %i.l, align 8              ; 56 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store ptr null, ptr %i.a, align 8
  %i.n = load i32, ptr %i.g, align 8
  %i.o = load i8, ptr %i.h, align 8, !range !4, !noundef !5
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = call { i64, i32 } @get_object_address(i32 noundef %i.n, ptr noundef %i.m, ptr noundef nonnull %i.a, i32 noundef 8, i1 noundef zeroext %i.p) #4 ; 2 uses
  %.fca.0.extract = extractvalue { i64, i32 } %i.q, 0 ; 2 uses
  %.fca.1.extract = extractvalue { i64, i32 } %i.q, 1
  store i64 %.fca.0.extract, ptr %3, align 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8
  %i.r = lshr i64 %.fca.0.extract, 32             ; 2 uses
  %i.s = trunc nuw i64 %i.r to i32
  %.not31 = icmp eq i64 %i.r, 0
  %i.t = load i32, ptr %i.g, align 8              ; 5 uses
  br i1 %.not31, label %bb.b, label %bb.ct

.critedge:                                        ; preds = %bb.dd, %.lr.ph, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.v = load i32, ptr %i.u, align 4
  call void @performMultipleDeletions(ptr noundef %i.b, i32 noundef %i.v, i32 noundef 0) #4
  call void @free_object_addresses(ptr noundef %i.b) #4
  ret void

bb.b:                                             ; preds = %.lr.ph280
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  store ptr null, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #4
  store ptr null, ptr %2, align 8
  switch i32 %i.t, label %.thread197.i [
    i32 0, label %bb.c
    i32 50, label %bb.d
    i32 12, label %bb.d
    i32 7, label %bb.g
    i32 8, label %bb.j
    i32 37, label %bb.m
    i32 40, label %bb.n
    i32 48, label %bb.q
    i32 47, label %bb.t
    i32 49, label %bb.w
    i32 46, label %bb.z
    i32 15, label %bb.ac
    i32 19, label %bb.ad
    i32 29, label %bb.ak
    i32 35, label %bb.ar
    i32 1, label %bb.ay
    i32 25, label %bb.bf
    i32 21, label %bb.bm
    i32 5, label %bb.bn
    i32 44, label %bb.bw
    i32 45, label %bb.cb
    i32 28, label %bb.cc
    i32 14, label %bb.cd
    i32 36, label %bb.ce
    i32 16, label %bb.cf
    i32 17, label %bb.cg
    i32 24, label %bb.ch
    i32 26, label %bb.ck
    i32 31, label %bb.cn
    i32 6, label %bb.co
    i32 9, label %bb.co
    i32 18, label %bb.co
    i32 20, label %bb.co
    i32 23, label %bb.co
    i32 30, label %bb.co
    i32 34, label %bb.co
    i32 38, label %bb.co
    i32 39, label %bb.co
    i32 42, label %bb.co
    i32 43, label %bb.co
    i32 52, label %bb.co
    i32 2, label %bb.cp
    i32 3, label %bb.cp
    i32 4, label %bb.cp
    i32 10, label %bb.cp
    i32 11, label %bb.cp
    i32 13, label %bb.cp
    i32 22, label %bb.cp
    i32 27, label %bb.cp
    i32 32, label %bb.cp
    i32 33, label %bb.cp
    i32 41, label %bb.cp
    i32 51, label %bb.cp
  ]

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  br label %.thread200.sink.split.i

bb.d:                                             ; preds = %bb.b, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = call ptr @makeRangeVarFromNameList(ptr noundef %i.z) #4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = call i32 @LookupNamespaceNoError(ptr noundef nonnull %i.ac) #4
  %.not8.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not8.i.i, label %schema_does_not_exist_skipping.exit.i, label %bb.f

schema_does_not_exist_skipping.exit.i:            ; preds = %bb.e
  %i.ae = load ptr, ptr %i.ab, align 8
  br label %.thread200.sink.split.i

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.af = call ptr @TypeNameToString(ptr noundef nonnull %i.m) #4
  br label %.thread200.sink.split.i

bb.g:                                             ; preds = %bb.b
  %i.ag = call ptr @makeRangeVarFromNameList(ptr noundef %i.m) #4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not.i98.i = icmp eq ptr %i.ai, null
  br i1 %.not.i98.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = call i32 @LookupNamespaceNoError(ptr noundef nonnull %i.ai) #4
  %.not8.i99.i = icmp eq i32 %i.aj, 0
  br i1 %.not8.i99.i, label %schema_does_not_exist_skipping.exit101.i, label %bb.i

schema_does_not_exist_skipping.exit101.i:         ; preds = %bb.h
  %i.ak = load ptr, ptr %i.ah, align 8
  br label %.thread200.sink.split.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.al = call ptr @NameListToString(ptr noundef %i.m) #4
  br label %.thread200.sink.split.i

bb.j:                                             ; preds = %bb.b
  %i.am = call ptr @makeRangeVarFromNameList(ptr noundef %i.m) #4
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %.not.i102.i = icmp eq ptr %i.ao, null
  br i1 %.not.i102.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = call i32 @LookupNamespaceNoError(ptr noundef nonnull %i.ao) #4
  %.not8.i103.i = icmp eq i32 %i.ap, 0
  br i1 %.not8.i103.i, label %schema_does_not_exist_skipping.exit105.i, label %bb.l

schema_does_not_exist_skipping.exit105.i:         ; preds = %bb.k
  %i.aq = load ptr, ptr %i.an, align 8
  br label %.thread200.sink.split.i

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ar = call ptr @NameListToString(ptr noundef %i.m) #4
  br label %.thread200.sink.split.i

bb.m:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  br label %.thread200.sink.split.i

bb.n:                                             ; preds = %bb.b
  %i.au = call ptr @makeRangeVarFromNameList(ptr noundef %i.m) #4
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %.not.i106.i = icmp eq ptr %i.aw, null
  br i1 %.not.i106.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = call i32 @LookupNamespaceNoError(ptr noundef nonnull %i.aw) #4
  %.not8.i107.i = icmp eq i32 %i.ax, 0
  br i1 %.not8.i107.i, label %schema_does_not_exist_skipping.exit109.i, label %bb.p

schema_does_not_exist_skipping.exit109.i:         ; preds = %bb.o
  %i.ay = load ptr, ptr %i.av, align 8
  br label %.thread200.sink.split.i

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.az = call ptr @NameListToString(ptr noundef %i.m) #4
  br label %.thread200.sink.split.i

bb.q:                                             ; preds = %bb.b
  %i.ba = call ptr @makeRangeVarFromNameList(ptr noundef %i.m) #4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %.not.i110.i = icmp eq ptr %i.bc, null
  br i1 %.not.i110.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = call i32 @LookupNamespaceNoError(ptr noundef nonnull %i.bc) #4
  %.not8.i111.i = icmp eq i32 %i.bd, 0
  br i1 %.not8.i111.i, label %schema_does_not_exist_skipping.exit113.i, label %bb.s

schema_does_not_exist_skipping.exit113.i:         ; preds = %bb.r
  %i.be = load ptr, ptr %i.bb, align 8
  br label %.thread200.sink.split.i

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bf = call ptr @NameListToString(ptr noundef %i.m) #4
  br label %.thread200.sink.split.i

bb.t:                                             ; preds = %bb.b
  %i.bg = call ptr @makeRangeVarFromNameList(ptr noundef %i.m) #4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %.not.i114.i = icmp eq ptr %i.bi, null
  br i1 %.not.i114.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bj = call i32 @LookupNamespaceNoError(ptr noundef nonnull %i.bi) #4
  %.not8.i115.i = icmp eq i32 %i.bj, 0
  br i1 %.not8.i115.i, label %schema_does_not_exist_skipping.exit117.i, label %bb.v

schema_does_not_exist_skipping.exit117.i:         ; preds = %bb.u
  %i.bk = load ptr, ptr %i.bh, align 8
  br label %.thread200.sink.split.i

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bl = call ptr @NameListToString(ptr noundef %i.m) #4
  br label %.thread200.sink.split.i

bb.w:                                             ; preds = %bb.b
  %i.bm = call ptr @makeRangeVarFromNameList(ptr noundef %i.m) #4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  %.not.i118.i = icmp eq ptr %i.bo, null
  br i1 %.not.i118.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bp = call i32 @LookupNamespaceNoError(ptr noundef nonnull %i.bo) #4
  %.not8.i119.i = icmp eq i32 %i.bp, 0
  br i1 %.not8.i119.i, label %schema_does_not_exist_skipping.exit121.i, label %bb.y

schema_does_not_exist_skipping.exit121.i:         ; preds = %bb.x
  %i.bq = load ptr, ptr %i.bn, align 8
  br label %.thread200.sink.split.i

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.br = call ptr @NameListToString(ptr noundef %i.m) #4
  br label %.thread200.sink.split.i

bb.z:                                             ; preds = %bb.b
  %i.bs = call ptr @makeRangeVarFromNameList(ptr noundef %i.m) #4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %.not.i122.i = icmp eq ptr %i.bu, null
  br i1 %.not.i122.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bv = call i32 @LookupNamespaceNoError(ptr noundef nonnull %i.bu) #4
  %.not8.i123.i = icmp eq i32 %i.bv, 0
  br i1 %.not8.i123.i, label %schema_does_not_exist_skipping.exit125.i, label %bb.ab

schema_does_not_exist_skipping.exit125.i:         ; preds = %bb.aa
  %i.bw = load ptr, ptr %i.bt, align 8
  br label %.thread200.sink.split.i

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bx = call ptr @NameListToString(ptr noundef %i.m) #4
  br label %.thread200.sink.split.i

bb.ac:                                            ; preds = %bb.b
  %i.by = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bz = load ptr, ptr %i.by, align 8
  br label %.thread200.sink.split.i

bb.ad:                                            ; preds = %bb.b
  %i.ca = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = call ptr @makeRangeVarFromNameList(ptr noundef %i.cb) #4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %.not.i126.i = icmp eq ptr %i.ce, null
  br i1 %.not.i126.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cf = call i32 @LookupNamespaceNoError(ptr noundef nonnull %i.ce) #4
  %.not8.i127.i = icmp eq i32 %i.cf, 0
  br i1 %.not8.i127.i, label %schema_does_not_exist_skipping.exit129.i, label %bb.af

schema_does_not_exist_skipping.exit129.i:         ; preds = %bb.ae
  %i.cg = load ptr, ptr %i.cd, align 8
  br label %.thread200.sink.split.i

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8            ; 3 uses
  %.not.i107 = icmp eq ptr %i.ci, null
  br i1 %.not.i107, label %.loopexit, label %.lr.ph.i108

.lr.ph.i108:                                      ; preds = %bb.af
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.cl = load i32, ptr %i.cj, align 4            ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.lr.ph33.i110, label %.loopexit

.lr.ph33.i110:                                    ; preds = %.lr.ph.i108, %bb.aj
  %i.cn = phi i32 [ %i.da, %bb.aj ], [ %i.cl, %.lr.ph.i108 ]
  %indvars.iv.i111 = phi i64 [ %indvars.iv.next.i116, %bb.aj ], [ 0, %.lr.ph.i108 ] ; 2 uses
  %i.co = load ptr, ptr %i.ck, align 8
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv.i111
  %i.cq = load ptr, ptr %i.cp, align 8            ; 4 uses
  %.not23.i112 = icmp eq ptr %i.cq, null
  br i1 %.not23.i112, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph33.i110
  %i.cr = call i32 @LookupTypeNameOid(ptr noundef null, ptr noundef nonnull %i.cq, i1 noundef zeroext true) #4
  %.not24.i113 = icmp eq i32 %i.cr, 0
  br i1 %.not24.i113, label %.split.i117, label %._crit_edge.i114

._crit_edge.i114:                                 ; preds = %bb.ag
  %.pre.i115 = load i32, ptr %i.cj, align 4
  br label %bb.aj

.split.i117:                                      ; preds = %bb.ag
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = call ptr @makeRangeVarFromNameList(ptr noundef %i.ct) #4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8            ; 2 uses
  %.not.i.i118 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i118, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.split.i117
  %i.cx = call i32 @LookupNamespaceNoError(ptr noundef nonnull %i.cw) #4
  %.not8.i.i119 = icmp eq i32 %i.cx, 0
  br i1 %.not8.i.i119, label %schema_does_not_exist_skipping.exit.i122, label %bb.ai

schema_does_not_exist_skipping.exit.i122:         ; preds = %bb.ah
  store ptr @.str.7, ptr %1, align 8
  %i.cy = load ptr, ptr %i.cv, align 8
  br label %type_in_list_does_not_exist_skipping.exit123

bb.ai:                                            ; preds = %bb.ah, %.split.i117
  store ptr @.str.4, ptr %1, align 8
  %i.cz = call ptr @TypeNameToString(ptr noundef nonnull %i.cq) #4
  br label %type_in_list_does_not_exist_skipping.exit123

bb.aj:                                            ; preds = %._crit_edge.i114, %.lr.ph33.i110
  %i.da = phi i32 [ %.pre.i115, %._crit_edge.i114 ], [ %i.cn, %.lr.ph33.i110 ] ; 2 uses
  %indvars.iv.next.i116 = add nuw nsw i64 %indvars.iv.i111, 1 ; 2 uses
  %i.db = sext i32 %i.da to i64
  %i.dc = icmp slt i64 %indvars.iv.next.i116, %i.db
  br i1 %i.dc, label %.lr.ph33.i110, label %.loopexit

type_in_list_does_not_exist_skipping.exit123:     ; preds = %schema_does_not_exist_skipping.exit.i122, %bb.ai
  %.sink.i121 = phi ptr [ %i.cy, %schema_does_not_exist_skipping.exit.i122 ], [ %i.cz, %bb.ai ]
  store ptr %.sink.i121, ptr %2, align 8
  br label %7

.loopexit:                                        ; preds = %bb.aj, %.lr.ph.i108, %bb.af
  store ptr @.str.14, ptr %1, align 8
  %i.dd = load ptr, ptr %i.ca, align 8
  %i.de = call ptr @NameListToString(ptr noundef %i.dd) #4
  store ptr %i.de, ptr %2, align 8
  %i.df = load ptr, ptr %i.ch, align 8
  %i.dg = call ptr @TypeNameListToString(ptr noundef %i.df) #4
  br label %7

bb.ak:                                            ; preds = %bb.b
  %i.dh = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = call ptr @makeRangeVarFromNameList(ptr noundef %i.di) #4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8            ; 2 uses
  %.not.i130.i = icmp eq ptr %i.dl, null
  br i1 %.not.i130.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dm = call i32 @LookupNamespaceNoError(ptr noundef nonnull %i.dl) #4
  %.not8.i131.i = icmp eq i32 %i.dm, 0
  br i1 %.not8.i131.i, label %schema_does_not_exist_skipping.exit133.i, label %bb.am

schema_does_not_exist_skipping.exit133.i:         ; preds = %bb.al
  %i.dn = load ptr, ptr %i.dk, align 8
  br label %.thread200.sink.split.i

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.do = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8            ; 3 uses
  %.not.i90 = icmp eq ptr %i.dp, null
  br i1 %.not.i90, label %.loopexit132, label %.lr.ph.i91

.lr.ph.i91:                                       ; preds = %bb.am
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 4 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.ds = load i32, ptr %i.dq, align 4            ; 2 uses
  %i.dt = icmp sgt i32 %i.ds, 0
  br i1 %i.dt, label %.lr.ph33.i93, label %.loopexit132

.lr.ph33.i93:                                     ; preds = %.lr.ph.i91, %bb.aq
  %i.du = phi i32 [ %i.eh, %bb.aq ], [ %i.ds, %.lr.ph.i91 ]
  %indvars.iv.i94 = phi i64 [ %indvars.iv.next.i99, %bb.aq ], [ 0, %.lr.ph.i91 ] ; 2 uses
  %i.dv = load ptr, ptr %i.dr, align 8
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv.i94
  %i.dx = load ptr, ptr %i.dw, align 8            ; 4 uses
  %.not23.i95 = icmp eq ptr %i.dx, null
  br i1 %.not23.i95, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %.lr.ph33.i93
  %i.dy = call i32 @LookupTypeNameOid(ptr noundef null, ptr noundef nonnull %i.dx, i1 noundef zeroext true) #4
  %.not24.i96 = icmp eq i32 %i.dy, 0
  br i1 %.not24.i96, label %.split.i100, label %._crit_edge.i97

._crit_edge.i97:                                  ; preds = %bb.an
  %.pre.i98 = load i32, ptr %i.dq, align 4
  br label %bb.aq

.split.i100:                                      ; preds = %bb.an
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = call ptr @makeRangeVarFromNameList(ptr noundef %i.ea) #4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8            ; 2 uses
  %.not.i.i101 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i101, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.split.i100
  %i.ee = call i32 @LookupNamespaceNoError(ptr noundef nonnull %i.ed) #4
  %.not8.i.i102 = icmp eq i32 %i.ee, 0
  br i1 %.not8.i.i102, label %schema_does_not_exist_skipping.exit.i105, label %bb.ap

schema_does_not_exist_skipping.exit.i105:         ; preds = %bb.ao
  store ptr @.str.7, ptr %1, align 8
  %i.ef = load ptr, ptr %i.ec, align 8
  br label %type_in_list_does_not_exist_skipping.exit106

bb.ap:                                            ; preds = %bb.ao, %.split.i100
  store ptr @.str.4, ptr %1, align 8
  %i.eg = call ptr @TypeNameToString(ptr noundef nonnull %i.dx) #4
  br label %type_in_list_does_not_exist_skipping.exit106

bb.aq:                                            ; preds = %._crit_edge.i97, %.lr.ph33.i93
  %i.eh = phi i32 [ %.pre.i98, %._crit_edge.i97 ], [ %i.du, %.lr.ph33.i93 ] ; 2 uses
  %indvars.iv.next.i99 = add nuw nsw i64 %indvars.iv.i94, 1 ; 2 uses
  %i.ei = sext i32 %i.eh to i64
  %i.ej = icmp slt i64 %indvars.iv.next.i99, %i.ei
  br i1 %i.ej, label %.lr.ph33.i93, label %.loopexit132

type_in_list_does_not_exist_skipping.exit106:     ; preds = %schema_does_not_exist_skipping.exit.i105, %bb.ap
  %.sink.i104 = phi ptr [ %i.ef, %schema_does_not_exist_skipping.exit.i105 ], [ %i.eg, %bb.ap ]
  store ptr %.sink.i104, ptr %2, align 8
  br label %7

.loopexit132:                                     ; preds = %bb.aq, %.lr.ph.i91, %bb.am
  store ptr @.str.15, ptr %1, align 8
  %i.ek = load ptr, ptr %i.dh, align 8
  %i.el = call ptr @NameListToString(ptr noundef %i.ek) #4
  store ptr %i.el, ptr %2, align 8
  %i.em = load ptr, ptr %i.do, align 8
  %i.en = call ptr @TypeNameListToString(ptr noundef %i.em) #4
  br label %7

bb.ar:                                            ; preds = %bb.b
  %i.eo = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = call ptr @makeRangeVarFromNameList(ptr noundef %i.ep) #4
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8            ; 2 uses
  %.not.i134.i = icmp eq ptr %i.es, null
  br i1 %.not.i134.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.et = call i32 @LookupNamespaceNoError(ptr noundef nonnull %i.es) #4
  %.not8.i135.i = icmp eq i32 %i.et, 0
  br i1 %.not8.i135.i, label %schema_does_not_exist_skipping.exit137.i, label %bb.at

schema_does_not_exist_skipping.exit137.i:         ; preds = %bb.as
  %i.eu = load ptr, ptr %i.er, align 8
  br label %.thread200.sink.split.i

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.ev = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8            ; 3 uses
  %.not.i73 = icmp eq ptr %i.ew, null
  br i1 %.not.i73, label %.loopexit133, label %.lr.ph.i74

.lr.ph.i74:                                       ; preds = %bb.at
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 4 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ez = load i32, ptr %i.ex, align 4            ; 2 uses
  %i.fa = icmp sgt i32 %i.ez, 0
  br i1 %i.fa, label %.lr.ph33.i76, label %.loopexit133

.lr.ph33.i76:                                     ; preds = %.lr.ph.i74, %bb.ax
  %i.fb = phi i32 [ %i.fo, %bb.ax ], [ %i.ez, %.lr.ph.i74 ]
  %indvars.iv.i77 = phi i64 [ %indvars.iv.next.i82, %bb.ax ], [ 0, %.lr.ph.i74 ] ; 2 uses
  %i.fc = load ptr, ptr %i.ey, align 8
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %indvars.iv.i77
  %i.fe = load ptr, ptr %i.fd, align 8            ; 4 uses
  %.not23.i78 = icmp eq ptr %i.fe, null
  br i1 %.not23.i78, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %.lr.ph33.i76
  %i.ff = call i32 @LookupTypeNameOid(ptr noundef null, ptr noundef nonnull %i.fe, i1 noundef zeroext true) #4
  %.not24.i79 = icmp eq i32 %i.ff, 0
  br i1 %.not24.i79, label %.split.i83, label %._crit_edge.i80

._crit_edge.i80:                                  ; preds = %bb.au
  %.pre.i81 = load i32, ptr %i.ex, align 4
  br label %bb.ax

.split.i83:                                       ; preds = %bb.au
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = call ptr @makeRangeVarFromNameList(ptr noundef %i.fh) #4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8            ; 2 uses
  %.not.i.i84 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i84, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.split.i83
  %i.fl = call i32 @LookupNamespaceNoError(ptr noundef nonnull %i.fk) #4
  %.not8.i.i85 = icmp eq i32 %i.fl, 0
  br i1 %.not8.i.i85, label %schema_does_not_exist_skipping.exit.i88, label %bb.aw

schema_does_not_exist_skipping.exit.i88:          ; preds = %bb.av
  store ptr @.str.7, ptr %1, align 8
  %i.fm = load ptr, ptr %i.fj, align 8
  br label %type_in_list_does_not_exist_skipping.exit89

bb.aw:                                            ; preds = %bb.av, %.split.i83
  store ptr @.str.4, ptr %1, align 8
  %i.fn = call ptr @TypeNameToString(ptr noundef nonnull %i.fe) #4
  br label %type_in_list_does_not_exist_skipping.exit89

bb.ax:                                            ; preds = %._crit_edge.i80, %.lr.ph33.i76
  %i.fo = phi i32 [ %.pre.i81, %._crit_edge.i80 ], [ %i.fb, %.lr.ph33.i76 ] ; 2 uses
  %indvars.iv.next.i82 = add nuw nsw i64 %indvars.iv.i77, 1 ; 2 uses
  %i.fp = sext i32 %i.fo to i64
  %i.fq = icmp slt i64 %indvars.iv.next.i82, %i.fp
  br i1 %i.fq, label %.lr.ph33.i76, label %.loopexit133

type_in_list_does_not_exist_skipping.exit89:      ; preds = %schema_does_not_exist_skipping.exit.i88, %bb.aw
  %.sink.i87 = phi ptr [ %i.fm, %schema_does_not_exist_skipping.exit.i88 ], [ %i.fn, %bb.aw ]
  store ptr %.sink.i87, ptr %2, align 8
  br label %7

.loopexit133:                                     ; preds = %bb.ax, %.lr.ph.i74, %bb.at
  store ptr @.str.16, ptr %1, align 8
  %i.fr = load ptr, ptr %i.eo, align 8
  %i.fs = call ptr @NameListToString(ptr noundef %i.fr) #4
  store ptr %i.fs, ptr %2, align 8
  %i.ft = load ptr, ptr %i.ev, align 8
  %i.fu = call ptr @TypeNameListToString(ptr noundef %i.ft) #4
  br label %7

bb.ay:                                            ; preds = %bb.b
  %i.fv = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = call ptr @makeRangeVarFromNameList(ptr noundef %i.fw) #4
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8            ; 2 uses
  %.not.i138.i = icmp eq ptr %i.fz, null
  br i1 %.not.i138.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ga = call i32 @LookupNamespaceNoError(ptr noundef nonnull %i.fz) #4
  %.not8.i139.i = icmp eq i32 %i.ga, 0
  br i1 %.not8.i139.i, label %schema_does_not_exist_skipping.exit141.i, label %bb.ba

schema_does_not_exist_skipping.exit141.i:         ; preds = %bb.az
  %i.gb = load ptr, ptr %i.fy, align 8
  br label %.thread200.sink.split.i

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.gc = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8            ; 3 uses
  %.not.i56 = icmp eq ptr %i.gd, null
  br i1 %.not.i56, label %.loopexit134, label %.lr.ph.i57

.lr.ph.i57:                                       ; preds = %bb.ba
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 4 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.gg = load i32, ptr %i.ge, align 4            ; 2 uses
  %i.gh = icmp sgt i32 %i.gg, 0
  br i1 %i.gh, label %.lr.ph33.i59, label %.loopexit134

.lr.ph33.i59:                                     ; preds = %.lr.ph.i57, %bb.be
  %i.gi = phi i32 [ %i.gv, %bb.be ], [ %i.gg, %.lr.ph.i57 ]
  %indvars.iv.i60 = phi i64 [ %indvars.iv.next.i65, %bb.be ], [ 0, %.lr.ph.i57 ] ; 2 uses
  %i.gj = load ptr, ptr %i.gf, align 8
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %indvars.iv.i60
  %i.gl = load ptr, ptr %i.gk, align 8            ; 4 uses
  %.not23.i61 = icmp eq ptr %i.gl, null
  br i1 %.not23.i61, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph33.i59
  %i.gm = call i32 @LookupTypeNameOid(ptr noundef null, ptr noundef nonnull %i.gl, i1 noundef zeroext true) #4
  %.not24.i62 = icmp eq i32 %i.gm, 0
  br i1 %.not24.i62, label %.split.i66, label %._crit_edge.i63

._crit_edge.i63:                                  ; preds = %bb.bb
  %.pre.i64 = load i32, ptr %i.ge, align 4
  br label %bb.be

.split.i66:                                       ; preds = %bb.bb
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.go = load ptr, ptr %i.gn, align 8
  %i.gp = call ptr @makeRangeVarFromNameList(ptr noundef %i.go) #4
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16 ; 2 uses
  %i.gr = load ptr, ptr %i.gq, align 8            ; 2 uses
  %.not.i.i67 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i67, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.split.i66
  %i.gs = call i32 @LookupNamespaceNoError(ptr noundef nonnull %i.gr) #4
  %.not8.i.i68 = icmp eq i32 %i.gs, 0
  br i1 %.not8.i.i68, label %schema_does_not_exist_skipping.exit.i71, label %bb.bd

schema_does_not_exist_skipping.exit.i71:          ; preds = %bb.bc
  store ptr @.str.7, ptr %1, align 8
  %i.gt = load ptr, ptr %i.gq, align 8
  br label %type_in_list_does_not_exist_skipping.exit72

bb.bd:                                            ; preds = %bb.bc, %.split.i66
  store ptr @.str.4, ptr %1, align 8
  %i.gu = call ptr @TypeNameToString(ptr noundef nonnull %i.gl) #4
  br label %type_in_list_does_not_exist_skipping.exit72

bb.be:                                            ; preds = %._crit_edge.i63, %.lr.ph33.i59
  %i.gv = phi i32 [ %.pre.i64, %._crit_edge.i63 ], [ %i.gi, %.lr.ph33.i59 ] ; 2 uses
  %indvars.iv.next.i65 = add nuw nsw i64 %indvars.iv.i60, 1 ; 2 uses
  %i.gw = sext i32 %i.gv to i64
  %i.gx = icmp slt i64 %indvars.iv.next.i65, %i.gw
  br i1 %i.gx, label %.lr.ph33.i59, label %.loopexit134

type_in_list_does_not_exist_skipping.exit72:      ; preds = %schema_does_not_exist_skipping.exit.i71, %bb.bd
  %.sink.i70 = phi ptr [ %i.gt, %schema_does_not_exist_skipping.exit.i71 ], [ %i.gu, %bb.bd ]
  store ptr %.sink.i70, ptr %2, align 8
  br label %7

.loopexit134:                                     ; preds = %bb.be, %.lr.ph.i57, %bb.ba
  store ptr @.str.17, ptr %1, align 8
  %i.gy = load ptr, ptr %i.fv, align 8
  %i.gz = call ptr @NameListToString(ptr noundef %i.gy) #4
  store ptr %i.gz, ptr %2, align 8
  %i.ha = load ptr, ptr %i.gc, align 8
  %i.hb = call ptr @TypeNameListToString(ptr noundef %i.ha) #4
  br label %7

bb.bf:                                            ; preds = %bb.b
  %i.hc = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8
  %i.he = call ptr @makeRangeVarFromNameList(ptr noundef %i.hd) #4
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8            ; 2 uses
  %.not.i142.i = icmp eq ptr %i.hg, null
  br i1 %.not.i142.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hh = call i32 @LookupNamespaceNoError(ptr noundef nonnull %i.hg) #4
  %.not8.i143.i = icmp eq i32 %i.hh, 0
  br i1 %.not8.i143.i, label %schema_does_not_exist_skipping.exit145.i, label %bb.bh

schema_does_not_exist_skipping.exit145.i:         ; preds = %bb.bg
  %i.hi = load ptr, ptr %i.hf, align 8
  br label %.thread200.sink.split.i

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.hj = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8            ; 3 uses
  %.not.i39 = icmp eq ptr %i.hk, null
  br i1 %.not.i39, label %.loopexit135, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %bb.bh
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 4 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.hn = load i32, ptr %i.hl, align 4            ; 2 uses
  %i.ho = icmp sgt i32 %i.hn, 0
  br i1 %i.ho, label %.lr.ph33.i42, label %.loopexit135

.lr.ph33.i42:                                     ; preds = %.lr.ph.i40, %bb.bl
  %i.hp = phi i32 [ %i.ic, %bb.bl ], [ %i.hn, %.lr.ph.i40 ]
  %indvars.iv.i43 = phi i64 [ %indvars.iv.next.i48, %bb.bl ], [ 0, %.lr.ph.i40 ] ; 2 uses
  %i.hq = load ptr, ptr %i.hm, align 8
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv.i43
  %i.hs = load ptr, ptr %i.hr, align 8            ; 4 uses
  %.not23.i44 = icmp eq ptr %i.hs, null
  br i1 %.not23.i44, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph33.i42
  %i.ht = call i32 @LookupTypeNameOid(ptr noundef null, ptr noundef nonnull %i.hs, i1 noundef zeroext true) #4
  %.not24.i45 = icmp eq i32 %i.ht, 0
  br i1 %.not24.i45, label %.split.i49, label %._crit_edge.i46

._crit_edge.i46:                                  ; preds = %bb.bi
  %.pre.i47 = load i32, ptr %i.hl, align 4
  br label %bb.bl

.split.i49:                                       ; preds = %bb.bi
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8
  %i.hw = call ptr @makeRangeVarFromNameList(ptr noundef %i.hv) #4
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16 ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8            ; 2 uses
  %.not.i.i50 = icmp eq ptr %i.hy, null
  br i1 %.not.i.i50, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %.split.i49
  %i.hz = call i32 @LookupNamespaceNoError(ptr noundef nonnull %i.hy) #4
  %.not8.i.i51 = icmp eq i32 %i.hz, 0
  br i1 %.not8.i.i51, label %schema_does_not_exist_skipping.exit.i54, label %bb.bk

schema_does_not_exist_skipping.exit.i54:          ; preds = %bb.bj
  store ptr @.str.7, ptr %1, align 8
  %i.ia = load ptr, ptr %i.hx, align 8
  br label %type_in_list_does_not_exist_skipping.exit55

bb.bk:                                            ; preds = %bb.bj, %.split.i49
  store ptr @.str.4, ptr %1, align 8
  %i.ib = call ptr @TypeNameToString(ptr noundef nonnull %i.hs) #4
  br label %type_in_list_does_not_exist_skipping.exit55

bb.bl:                                            ; preds = %._crit_edge.i46, %.lr.ph33.i42
  %i.ic = phi i32 [ %.pre.i47, %._crit_edge.i46 ], [ %i.hp, %.lr.ph33.i42 ] ; 2 uses
  %indvars.iv.next.i48 = add nuw nsw i64 %indvars.iv.i43, 1 ; 2 uses
  %i.id = sext i32 %i.ic to i64
  %i.ie = icmp slt i64 %indvars.iv.next.i48, %i.id
  br i1 %i.ie, label %.lr.ph33.i42, label %.loopexit135

type_in_list_does_not_exist_skipping.exit55:      ; preds = %schema_does_not_exist_skipping.exit.i54, %bb.bk
  %.sink.i53 = phi ptr [ %i.ia, %schema_does_not_exist_skipping.exit.i54 ], [ %i.ib, %bb.bk ]
  store ptr %.sink.i53, ptr %2, align 8
  br label %7

.loopexit135:                                     ; preds = %bb.bl, %.lr.ph.i40, %bb.bh
  %i.if = load ptr, ptr %i.hc, align 8
  %i.ig = call ptr @NameListToString(ptr noundef %i.if) #4
  br label %.thread200.sink.split.i

bb.bm:                                            ; preds = %bb.b
  %i.ih = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8
  br label %.thread200.sink.split.i

bb.bn:                                            ; preds = %bb.b
  %i.ij = getelementptr i8, ptr %i.m, i64 16      ; 4 uses
  %.val91.i = load ptr, ptr %i.ij, align 8
  %i.ik = load ptr, ptr %.val91.i, align 8
  %i.il = call ptr @list_make1_impl(i32 noundef 1, ptr %i.ik) #4 ; 3 uses
  %.not.i146.i = icmp eq ptr %i.il, null
  br i1 %.not.i146.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bn
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 4 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %i.io = load i32, ptr %i.im, align 4            ; 2 uses
  %i.ip = icmp sgt i32 %i.io, 0
  br i1 %i.ip, label %.lr.ph33.i.i, label %.loopexit.i

.lr.ph33.i.i:                                     ; preds = %.lr.ph.i.i, %bb.br
  %i.iq = phi i32 [ %i.jd, %bb.br ], [ %i.io, %.lr.ph.i.i ]
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.br ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.ir = load ptr, ptr %i.in, align 8
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv.i.i
  %i.it = load ptr, ptr %i.is, align 8            ; 4 uses
  %.not23.i.i = icmp eq ptr %i.it, null
  br i1 %.not23.i.i, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph33.i.i
  %i.iu = call i32 @LookupTypeNameOid(ptr noundef null, ptr noundef nonnull %i.it, i1 noundef zeroext true) #4
  %.not24.i.i = icmp eq i32 %i.iu, 0
  br i1 %.not24.i.i, label %.split.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.bo
  %.pre.i.i = load i32, ptr %i.im, align 4
  br label %bb.br

.split.i.i:                                       ; preds = %bb.bo
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.iw = load ptr, ptr %i.iv, align 8
  %i.ix = call ptr @makeRangeVarFromNameList(ptr noundef %i.iw) #4
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16 ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8            ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.iz, null
  br i1 %.not.i.i.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %.split.i.i
  %i.ja = call i32 @LookupNamespaceNoError(ptr noundef nonnull %i.iz) #4
  %.not8.i.i.i = icmp eq i32 %i.ja, 0
  br i1 %.not8.i.i.i, label %schema_does_not_exist_skipping.exit.i.i, label %bb.bq

schema_does_not_exist_skipping.exit.i.i:          ; preds = %bb.bp
  store ptr @.str.7, ptr %1, align 8
  %i.jb = load ptr, ptr %i.iy, align 8
  br label %type_in_list_does_not_exist_skipping.exit.i

bb.bq:                                            ; preds = %bb.bp, %.split.i.i
  store ptr @.str.4, ptr %1, align 8
  %i.jc = call ptr @TypeNameToString(ptr noundef nonnull %i.it) #4
  br label %type_in_list_does_not_exist_skipping.exit.i

bb.br:                                            ; preds = %._crit_edge.i.i, %.lr.ph33.i.i
  %i.jd = phi i32 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.iq, %.lr.ph33.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.je = sext i32 %i.jd to i64
  %i.jf = icmp slt i64 %indvars.iv.next.i.i, %i.je
  br i1 %i.jf, label %.lr.ph33.i.i, label %.loopexit.i

type_in_list_does_not_exist_skipping.exit.i:      ; preds = %bb.bq, %schema_does_not_exist_skipping.exit.i.i
  %.sink.i.i = phi ptr [ %i.jb, %schema_does_not_exist_skipping.exit.i.i ], [ %i.jc, %bb.bq ]
  store ptr %.sink.i.i, ptr %2, align 8
  br label %7

.loopexit.i:                                      ; preds = %bb.br, %.lr.ph.i.i, %bb.bn
  %.val90.i = load ptr, ptr %i.ij, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %.val90.i, i64 8
  %i.jh = load ptr, ptr %i.jg, align 8
  %i.ji = call ptr @list_make1_impl(i32 noundef 1, ptr %i.jh) #4 ; 3 uses
  %.not.i34 = icmp eq ptr %i.ji, null
  br i1 %.not.i34, label %.loopexit136, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit.i
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 4 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  %i.jl = load i32, ptr %i.jj, align 4            ; 2 uses
  %i.jm = icmp sgt i32 %i.jl, 0
  br i1 %i.jm, label %.lr.ph33.i, label %.loopexit136

.lr.ph33.i:                                       ; preds = %.lr.ph.i, %bb.bv
  %i.jn = phi i32 [ %i.ka, %bb.bv ], [ %i.jl, %.lr.ph.i ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.bv ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.jo = load ptr, ptr %i.jk, align 8
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %indvars.iv.i
  %i.jq = load ptr, ptr %i.jp, align 8            ; 4 uses
  %.not23.i = icmp eq ptr %i.jq, null
  br i1 %.not23.i, label %bb.bv, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph33.i
  %i.jr = call i32 @LookupTypeNameOid(ptr noundef null, ptr noundef nonnull %i.jq, i1 noundef zeroext true) #4
  %.not24.i = icmp eq i32 %i.jr, 0
  br i1 %.not24.i, label %.split.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.bs
  %.pre.i = load i32, ptr %i.jj, align 4
  br label %bb.bv

.split.i:                                         ; preds = %bb.bs
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.jt = load ptr, ptr %i.js, align 8
  %i.ju = call ptr @makeRangeVarFromNameList(ptr noundef %i.jt) #4
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16 ; 2 uses
  %i.jw = load ptr, ptr %i.jv, align 8            ; 2 uses
  %.not.i.i35 = icmp eq ptr %i.jw, null
  br i1 %.not.i.i35, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %.split.i
  %i.jx = call i32 @LookupNamespaceNoError(ptr noundef nonnull %i.jw) #4
  %.not8.i.i36 = icmp eq i32 %i.jx, 0
  br i1 %.not8.i.i36, label %schema_does_not_exist_skipping.exit.i38, label %bb.bu

schema_does_not_exist_skipping.exit.i38:          ; preds = %bb.bt
  store ptr @.str.7, ptr %1, align 8
  %i.jy = load ptr, ptr %i.jv, align 8
  br label %type_in_list_does_not_exist_skipping.exit

bb.bu:                                            ; preds = %bb.bt, %.split.i
  store ptr @.str.4, ptr %1, align 8
  %i.jz = call ptr @TypeNameToString(ptr noundef nonnull %i.jq) #4
  br label %type_in_list_does_not_exist_skipping.exit

bb.bv:                                            ; preds = %._crit_edge.i, %.lr.ph33.i
  %i.ka = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.jn, %.lr.ph33.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.kb = sext i32 %i.ka to i64
  %i.kc = icmp slt i64 %indvars.iv.next.i, %i.kb
  br i1 %i.kc, label %.lr.ph33.i, label %.loopexit136

type_in_list_does_not_exist_skipping.exit:        ; preds = %schema_does_not_exist_skipping.exit.i38, %bb.bu
  %.sink.i37 = phi ptr [ %i.jy, %schema_does_not_exist_skipping.exit.i38 ], [ %i.jz, %bb.bu ]
  store ptr %.sink.i37, ptr %2, align 8
  br label %7

.loopexit136:                                     ; preds = %bb.bv, %.lr.ph.i, %.loopexit.i
  store ptr @.str.20, ptr %1, align 8
  %.val89.i = load ptr, ptr %i.ij, align 8
  %i.kd = load ptr, ptr %.val89.i, align 8
  %i.ke = call ptr @TypeNameToString(ptr noundef %i.kd) #4
  store ptr %i.ke, ptr %2, align 8
  %.val88.i = load ptr, ptr %i.ij, align 8
  %i.kf = getelementptr inbounds nuw i8, ptr %.val88.i, i64 8
  %i.kg = load ptr, ptr %i.kf, align 8
  %i.kh = call ptr @TypeNameToString(ptr noundef %i.kg) #4
  br label %7

bb.bw:                                            ; preds = %bb.b
  %i.ki = getelementptr i8, ptr %i.m, i64 16      ; 3 uses
  %.val87.i = load ptr, ptr %i.ki, align 8
  %i.kj = load ptr, ptr %.val87.i, align 8
  %i.kk = call ptr @list_make1_impl(i32 noundef 1, ptr %i.kj) #4 ; 3 uses
  %.not.i147.i = icmp eq ptr %i.kk, null
  br i1 %.not.i147.i, label %.loopexit203.i, label %.lr.ph.i148.i

.lr.ph.i148.i:                                    ; preds = %bb.bw
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 4 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %i.kn = load i32, ptr %i.kl, align 4            ; 2 uses
  %i.ko = icmp sgt i32 %i.kn, 0
  br i1 %i.ko, label %.lr.ph33.i150.i, label %.loopexit203.i

.lr.ph33.i150.i:                                  ; preds = %.lr.ph.i148.i, %bb.ca
  %i.kp = phi i32 [ %i.lc, %bb.ca ], [ %i.kn, %.lr.ph.i148.i ]
  %indvars.iv.i151.i = phi i64 [ %indvars.iv.next.i156.i, %bb.ca ], [ 0, %.lr.ph.i148.i ] ; 2 uses
  %i.kq = load ptr, ptr %i.km, align 8
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %indvars.iv.i151.i
  %i.ks = load ptr, ptr %i.kr, align 8            ; 4 uses
  %.not23.i152.i = icmp eq ptr %i.ks, null
  br i1 %.not23.i152.i, label %bb.ca, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph33.i150.i
  %i.kt = call i32 @LookupTypeNameOid(ptr noundef null, ptr noundef nonnull %i.ks, i1 noundef zeroext true) #4
  %.not24.i153.i = icmp eq i32 %i.kt, 0
  br i1 %.not24.i153.i, label %.split.i157.i, label %._crit_edge.i154.i

._crit_edge.i154.i:                               ; preds = %bb.bx
  %.pre.i155.i = load i32, ptr %i.kl, align 4
  br label %bb.ca

.split.i157.i:                                    ; preds = %bb.bx
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.kv = load ptr, ptr %i.ku, align 8
  %i.kw = call ptr @makeRangeVarFromNameList(ptr noundef %i.kv) #4
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 16 ; 2 uses
  %i.ky = load ptr, ptr %i.kx, align 8            ; 2 uses
  %.not.i.i158.i = icmp eq ptr %i.ky, null
  br i1 %.not.i.i158.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %.split.i157.i
  %i.kz = call i32 @LookupNamespaceNoError(ptr noundef nonnull %i.ky) #4
  %.not8.i.i159.i = icmp eq i32 %i.kz, 0
  br i1 %.not8.i.i159.i, label %schema_does_not_exist_skipping.exit.i162.i, label %bb.bz

schema_does_not_exist_skipping.exit.i162.i:       ; preds = %bb.by
  store ptr @.str.7, ptr %1, align 8
  %i.la = load ptr, ptr %i.kx, align 8
  br label %type_in_list_does_not_exist_skipping.exit163.i

bb.bz:                                            ; preds = %bb.by, %.split.i157.i
  store ptr @.str.4, ptr %1, align 8
  %i.lb = call ptr @TypeNameToString(ptr noundef nonnull %i.ks) #4
  br label %type_in_list_does_not_exist_skipping.exit163.i

bb.ca:                                            ; preds = %._crit_edge.i154.i, %.lr.ph33.i150.i
  %i.lc = phi i32 [ %.pre.i155.i, %._crit_edge.i154.i ], [ %i.kp, %.lr.ph33.i150.i ] ; 2 uses
  %indvars.iv.next.i156.i = add nuw nsw i64 %indvars.iv.i151.i, 1 ; 2 uses
  %i.ld = sext i32 %i.lc to i64
  %i.le = icmp slt i64 %indvars.iv.next.i156.i, %i.ld
  br i1 %i.le, label %.lr.ph33.i150.i, label %.loopexit203.i

type_in_list_does_not_exist_skipping.exit163.i:   ; preds = %bb.bz, %schema_does_not_exist_skipping.exit.i162.i
  %.sink.i161.i = phi ptr [ %i.la, %schema_does_not_exist_skipping.exit.i162.i ], [ %i.lb, %bb.bz ]
  store ptr %.sink.i161.i, ptr %2, align 8
  br label %7

.loopexit203.i:                                   ; preds = %bb.ca, %.lr.ph.i148.i, %bb.bw
  store ptr @.str.21, ptr %1, align 8
  %.val86.i = load ptr, ptr %i.ki, align 8
  %i.lf = load ptr, ptr %.val86.i, align 8
  %i.lg = call ptr @TypeNameToString(ptr noundef %i.lf) #4
  store ptr %i.lg, ptr %2, align 8
  %.val85.i = load ptr, ptr %i.ki, align 8
  %i.lh = getelementptr inbounds nuw i8, ptr %.val85.i, i64 8
  %i.li = load ptr, ptr %i.lh, align 8
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %i.lk = load ptr, ptr %i.lj, align 8
  br label %7

bb.cb:                                            ; preds = %bb.b
  %4 = call fastcc zeroext i1 @owningrel_does_not_exist_skipping(ptr noundef %i.m, ptr noundef %1, ptr noundef %2)
  br i1 %4, label %7, label %list_length.exit.i

list_length.exit.i:                               ; preds = %bb.cb
  store ptr @.str.22, ptr %1, align 8
  %i.ll = getelementptr i8, ptr %i.m, i64 4
  %.val96.i = load i32, ptr %i.ll, align 4
  %i.lm = getelementptr i8, ptr %i.m, i64 16
  %.val97.i = load ptr, ptr %i.lm, align 8
  %i.ln = add i32 %.val96.i, -1                   ; 2 uses
  %i.lo = sext i32 %i.ln to i64
  %i.lp = getelementptr inbounds [8 x i8], ptr %.val97.i, i64 %i.lo
  %i.lq = load ptr, ptr %i.lp, align 8
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.ls = load ptr, ptr %i.lr, align 8
  store ptr %i.ls, ptr %2, align 8
  %i.lt = call ptr @list_copy_head(ptr noundef %i.m, i32 noundef %i.ln) #4
  %i.lu = call ptr @NameListToString(ptr noundef %i.lt) #4
  br label %7

bb.cc:                                            ; preds = %bb.b
  %5 = call fastcc zeroext i1 @owningrel_does_not_exist_skipping(ptr noundef %i.m, ptr noundef %1, ptr noundef %2)
  br i1 %5, label %7, label %list_length.exit166.i

list_length.exit166.i:                            ; preds = %bb.cc
  store ptr @.str.23, ptr %1, align 8
  %i.lv = getelementptr i8, ptr %i.m, i64 4
  %.val94.i = load i32, ptr %i.lv, align 4
  %i.lw = getelementptr i8, ptr %i.m, i64 16
  %.val95.i = load ptr, ptr %i.lw, align 8
  %i.lx = add i32 %.val94.i, -1                   ; 2 uses
  %i.ly = sext i32 %i.lx to i64
  %i.lz = getelementptr inbounds [8 x i8], ptr %.val95.i, i64 %i.ly
  %i.ma = load ptr, ptr %i.lz, align 8
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.mc = load ptr, ptr %i.mb, align 8
  store ptr %i.mc, ptr %2, align 8
  %i.md = call ptr @list_copy_head(ptr noundef %i.m, i32 noundef %i.lx) #4
  %i.me = call ptr @NameListToString(ptr noundef %i.md) #4
  br label %7

bb.cd:                                            ; preds = %bb.b
  %i.mf = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.mg = load ptr, ptr %i.mf, align 8
  br label %.thread200.sink.split.i

bb.ce:                                            ; preds = %bb.b
  %6 = call fastcc zeroext i1 @owningrel_does_not_exist_skipping(ptr noundef %i.m, ptr noundef %1, ptr noundef %2)
  br i1 %6, label %7, label %list_length.exit168.i

list_length.exit168.i:                            ; preds = %bb.ce
  store ptr @.str.25, ptr %1, align 8
  %i.mh = getelementptr i8, ptr %i.m, i64 4
  %.val92.i = load i32, ptr %i.mh, align 4
  %i.mi = getelementptr i8, ptr %i.m, i64 16
  %.val93.i = load ptr, ptr %i.mi, align 8
  %i.mj = add i32 %.val92.i, -1                   ; 2 uses
  %i.mk = sext i32 %i.mj to i64
  %i.ml = getelementptr inbounds [8 x i8], ptr %.val93.i, i64 %i.mk
  %i.mm = load ptr, ptr %i.ml, align 8
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.mo = load ptr, ptr %i.mn, align 8
  store ptr %i.mo, ptr %2, align 8
  %i.mp = call ptr @list_copy_head(ptr noundef %i.m, i32 noundef %i.mj) #4
  %i.mq = call ptr @NameListToString(ptr noundef %i.mp) #4
  br label %7

bb.cf:                                            ; preds = %bb.b
  %i.mr = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ms = load ptr, ptr %i.mr, align 8
  br label %.thread200.sink.split.i

bb.cg:                                            ; preds = %bb.b
  %i.mt = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.mu = load ptr, ptr %i.mt, align 8
  br label %.thread200.sink.split.i

bb.ch:                                            ; preds = %bb.b
  %i.mv = call ptr @list_copy_tail(ptr noundef %i.m, i32 noundef 1) #4 ; 2 uses
  %i.mw = call ptr @makeRangeVarFromNameList(ptr noundef %i.mv) #4
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 16 ; 2 uses
  %i.my = load ptr, ptr %i.mx, align 8            ; 2 uses
  %.not.i169.i = icmp eq ptr %i.my, null
  br i1 %.not.i169.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.mz = call i32 @LookupNamespaceNoError(ptr noundef nonnull %i.my) #4
  %.not8.i170.i = icmp eq i32 %i.mz, 0
  br i1 %.not8.i170.i, label %schema_does_not_exist_skipping.exit172.i, label %bb.cj

schema_does_not_exist_skipping.exit172.i:         ; preds = %bb.ci
  %i.na = load ptr, ptr %i.mx, align 8
  br label %.thread200.sink.split.i

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  store ptr @.str.28, ptr %1, align 8
  %i.nb = call ptr @NameListToString(ptr noundef %i.mv) #4
  store ptr %i.nb, ptr %2, align 8
  %i.nc = getelementptr i8, ptr %i.m, i64 16
  %.val84.i = load ptr, ptr %i.nc, align 8
  %i.nd = load ptr, ptr %.val84.i, align 8
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.nf = load ptr, ptr %i.ne, align 8
  br label %7

bb.ck:                                            ; preds = %bb.b
  %i.ng = call ptr @list_copy_tail(ptr noundef %i.m, i32 noundef 1) #4 ; 2 uses
  %i.nh = call ptr @makeRangeVarFromNameList(ptr noundef %i.ng) #4
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 16 ; 2 uses
  %i.nj = load ptr, ptr %i.ni, align 8            ; 2 uses
  %.not.i173.i = icmp eq ptr %i.nj, null
  br i1 %.not.i173.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.nk = call i32 @LookupNamespaceNoError(ptr noundef nonnull %i.nj) #4
  %.not8.i174.i = icmp eq i32 %i.nk, 0
  br i1 %.not8.i174.i, label %schema_does_not_exist_skipping.exit176.i, label %bb.cm

schema_does_not_exist_skipping.exit176.i:         ; preds = %bb.cl
  %i.nl = load ptr, ptr %i.ni, align 8
  br label %.thread200.sink.split.i

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  store ptr @.str.29, ptr %1, align 8
  %i.nm = call ptr @NameListToString(ptr noundef %i.ng) #4
  store ptr %i.nm, ptr %2, align 8
  %i.nn = getelementptr i8, ptr %i.m, i64 16
  %.val.i = load ptr, ptr %i.nn, align 8
  %i.no = load ptr, ptr %.val.i, align 8
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.nq = load ptr, ptr %i.np, align 8
  br label %7

bb.cn:                                            ; preds = %bb.b
  %i.nr = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ns = load ptr, ptr %i.nr, align 8
  br label %.thread200.sink.split.i

bb.co:                                            ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.nt = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #5 ; 0 uses
  %i.nu = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.31, i32 noundef %i.t) #4 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 497, ptr noundef nonnull @__func__.does_not_exist_skipping) #4
  unreachable

bb.cp:                                            ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.nv = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #5 ; 0 uses
  %i.nw = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.31, i32 noundef %i.t) #4 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 513, ptr noundef nonnull @__func__.does_not_exist_skipping) #4
  unreachable

7:                                                ; preds = %type_in_list_does_not_exist_skipping.exit, %type_in_list_does_not_exist_skipping.exit55, %type_in_list_does_not_exist_skipping.exit72, %type_in_list_does_not_exist_skipping.exit89, %type_in_list_does_not_exist_skipping.exit106, %type_in_list_does_not_exist_skipping.exit123, %bb.cm, %bb.cj, %list_length.exit168.i, %bb.ce, %list_length.exit166.i, %bb.cc, %list_length.exit.i, %bb.cb, %.loopexit203.i, %type_in_list_does_not_exist_skipping.exit163.i, %.loopexit136, %type_in_list_does_not_exist_skipping.exit.i, %.loopexit134, %.loopexit133, %.loopexit132, %.loopexit
  %.6.ph.i = phi ptr [ %i.nq, %bb.cm ], [ null, %type_in_list_does_not_exist_skipping.exit55 ], [ null, %type_in_list_does_not_exist_skipping.exit72 ], [ null, %type_in_list_does_not_exist_skipping.exit89 ], [ null, %type_in_list_does_not_exist_skipping.exit106 ], [ null, %type_in_list_does_not_exist_skipping.exit123 ], [ %i.nf, %bb.cj ], [ %i.mq, %list_length.exit168.i ], [ null, %bb.ce ], [ %i.me, %list_length.exit166.i ], [ null, %bb.cc ], [ %i.lu, %list_length.exit.i ], [ null, %bb.cb ], [ %i.lk, %.loopexit203.i ], [ null, %type_in_list_does_not_exist_skipping.exit163.i ], [ %i.kh, %.loopexit136 ], [ null, %type_in_list_does_not_exist_skipping.exit ], [ null, %type_in_list_does_not_exist_skipping.exit.i ], [ %i.hb, %.loopexit134 ], [ %i.fu, %.loopexit133 ], [ %i.en, %.loopexit132 ], [ %i.dg, %.loopexit ] ; 2 uses
  %.pr.i = load ptr, ptr %1, align 8              ; 3 uses
  %.not.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i, label %.thread197.i, label %8

.thread197.i:                                     ; preds = %7, %bb.b
  %i.nx = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #5 ; 0 uses
  %i.ny = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.32, i32 noundef %i.t) #4 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 519, ptr noundef nonnull @__func__.does_not_exist_skipping) #4
  unreachable

8:                                                ; preds = %7
  %.not83.i = icmp eq ptr %.6.ph.i, null
  br i1 %.not83.i, label %.thread200.i, label %bb.cr

.thread200.sink.split.i:                          ; preds = %bb.cn, %schema_does_not_exist_skipping.exit176.i, %schema_does_not_exist_skipping.exit172.i, %bb.cg, %bb.cf, %bb.cd, %bb.bm, %.loopexit135, %schema_does_not_exist_skipping.exit145.i, %schema_does_not_exist_skipping.exit141.i, %schema_does_not_exist_skipping.exit137.i, %schema_does_not_exist_skipping.exit133.i, %schema_does_not_exist_skipping.exit129.i, %bb.ac, %bb.ab, %schema_does_not_exist_skipping.exit125.i, %bb.y, %schema_does_not_exist_skipping.exit121.i, %bb.v, %schema_does_not_exist_skipping.exit117.i, %bb.s, %schema_does_not_exist_skipping.exit113.i, %bb.p, %schema_does_not_exist_skipping.exit109.i, %bb.m, %bb.l, %schema_does_not_exist_skipping.exit105.i, %bb.i, %schema_does_not_exist_skipping.exit101.i, %bb.f, %schema_does_not_exist_skipping.exit.i, %bb.c
  %.sink.i = phi ptr [ %i.nl, %schema_does_not_exist_skipping.exit176.i ], [ %i.na, %schema_does_not_exist_skipping.exit172.i ], [ %i.hi, %schema_does_not_exist_skipping.exit145.i ], [ %i.gb, %schema_does_not_exist_skipping.exit141.i ], [ %i.eu, %schema_does_not_exist_skipping.exit137.i ], [ %i.dn, %schema_does_not_exist_skipping.exit133.i ], [ %i.cg, %schema_does_not_exist_skipping.exit129.i ], [ %i.bw, %schema_does_not_exist_skipping.exit125.i ], [ %i.bq, %schema_does_not_exist_skipping.exit121.i ], [ %i.bk, %schema_does_not_exist_skipping.exit117.i ], [ %i.be, %schema_does_not_exist_skipping.exit113.i ], [ %i.ay, %schema_does_not_exist_skipping.exit109.i ], [ %i.aq, %schema_does_not_exist_skipping.exit105.i ], [ %i.ak, %schema_does_not_exist_skipping.exit101.i ], [ %i.ae, %schema_does_not_exist_skipping.exit.i ], [ %i.ig, %.loopexit135 ], [ %i.af, %bb.f ], [ %i.bx, %bb.ab ], [ %i.br, %bb.y ], [ %i.bl, %bb.v ], [ %i.bf, %bb.s ], [ %i.az, %bb.p ], [ %i.ar, %bb.l ], [ %i.al, %bb.i ], [ %i.ns, %bb.cn ], [ %i.mu, %bb.cg ], [ %i.ms, %bb.cf ], [ %i.mg, %bb.cd ], [ %i.ii, %bb.bm ], [ %i.bz, %bb.ac ], [ %i.at, %bb.m ], [ %i.x, %bb.c ]
  %.ph.i = phi ptr [ @.str.7, %schema_does_not_exist_skipping.exit176.i ], [ @.str.7, %schema_does_not_exist_skipping.exit172.i ], [ @.str.7, %schema_does_not_exist_skipping.exit145.i ], [ @.str.7, %schema_does_not_exist_skipping.exit141.i ], [ @.str.7, %schema_does_not_exist_skipping.exit137.i ], [ @.str.7, %schema_does_not_exist_skipping.exit133.i ], [ @.str.7, %schema_does_not_exist_skipping.exit129.i ], [ @.str.7, %schema_does_not_exist_skipping.exit125.i ], [ @.str.7, %schema_does_not_exist_skipping.exit121.i ], [ @.str.7, %schema_does_not_exist_skipping.exit117.i ], [ @.str.7, %schema_does_not_exist_skipping.exit113.i ], [ @.str.7, %schema_does_not_exist_skipping.exit109.i ], [ @.str.7, %schema_does_not_exist_skipping.exit105.i ], [ @.str.7, %schema_does_not_exist_skipping.exit101.i ], [ @.str.7, %schema_does_not_exist_skipping.exit.i ], [ @.str.18, %.loopexit135 ], [ @.str.4, %bb.f ], [ @.str.12, %bb.ab ], [ @.str.11, %bb.y ], [ @.str.10, %bb.v ], [ @.str.9, %bb.s ], [ @.str.8, %bb.p ], [ @.str.6, %bb.l ], [ @.str.5, %bb.i ], [ @.str.30, %bb.cn ], [ @.str.27, %bb.cg ], [ @.str.26, %bb.cf ], [ @.str.24, %bb.cd ], [ @.str.19, %bb.bm ], [ @.str.13, %bb.ac ], [ @.str.7, %bb.m ], [ @.str.3, %bb.c ]
  store ptr %.sink.i, ptr %2, align 8
  br label %.thread200.i

.thread200.i:                                     ; preds = %.thread200.sink.split.i, %8
  %9 = phi ptr [ %.pr.i, %8 ], [ %.ph.i, %.thread200.sink.split.i ]
  %i.nz = call zeroext i1 @errstart(i32 noundef 18, ptr noundef null) #4
  br i1 %i.nz, label %bb.cq, label %does_not_exist_skipping.exit

bb.cq:                                            ; preds = %.thread200.i
  %10 = load ptr, ptr %2, align 8
  %i.oa = call i32 (ptr, ...) @errmsg(ptr noundef nonnull %9, ptr noundef %10) #4 ; 0 uses
  br label %.sink.split.i

bb.cr:                                            ; preds = %8
  %i.ob = call zeroext i1 @errstart(i32 noundef 18, ptr noundef null) #4
  br i1 %i.ob, label %bb.cs, label %does_not_exist_skipping.exit

bb.cs:                                            ; preds = %bb.cr
  %11 = load ptr, ptr %2, align 8
  %i.oc = call i32 (ptr, ...) @errmsg(ptr noundef nonnull %.pr.i, ptr noundef %11, ptr noundef nonnull %.6.ph.i) #4 ; 0 uses
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.cs, %bb.cq
  %.sink235.i = phi i32 [ 524, %bb.cs ], [ 522, %bb.cq ]
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef %.sink235.i, ptr noundef nonnull @__func__.does_not_exist_skipping) #4
  br label %does_not_exist_skipping.exit

does_not_exist_skipping.exit:                     ; preds = %.thread200.i, %bb.cr, %.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  br label %bb.dd

bb.ct:                                            ; preds = %.lr.ph280
  %i.od = icmp eq i32 %i.t, 19
  br i1 %i.od, label %bb.cu, label %bb.cw

bb.cu:                                            ; preds = %bb.ct
  %i.oe = call signext i8 @get_func_prokind(i32 noundef %i.s) #4
  %i.of = icmp eq i8 %i.oe, 97
  br i1 %i.of, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.og = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #5 ; 0 uses
  %i.oh = call i32 @errcode(i32 noundef 151027844) #4 ; 0 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.oj = load ptr, ptr %i.oi, align 8
  %i.ok = call ptr @NameListToString(ptr noundef %i.oj) #4
  %i.ol = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str, ptr noundef %i.ok) #4 ; 0 uses
  %i.om = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.1) #4 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 98, ptr noundef nonnull @__func__.RemoveObjects) #4
  unreachable

bb.cw:                                            ; preds = %bb.cu, %bb.ct
  %i.on = call i32 @get_object_namespace(ptr noundef nonnull %3) #4 ; 3 uses
  %.not32 = icmp eq i32 %i.on, 0
  %i.oo = call i32 @GetUserId() #4                ; 2 uses
  br i1 %.not32, label %.critedge131, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.op = call zeroext i1 @object_ownercheck(i32 noundef 2615, i32 noundef %i.on, i32 noundef %i.oo) #4
  br i1 %i.op, label %.thread, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.oq = call i32 @GetUserId() #4
  %i.or = load i32, ptr %i.g, align 8
  %i.os = load ptr, ptr %i.a, align 8
  %.sroa.0.0.copyload = load i64, ptr %3, align 8
  %.sroa.2.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8
  call void @check_object_ownership(i32 noundef %i.oq, i32 noundef %i.or, i64 %.sroa.0.0.copyload, i32 %.sroa.2.0.copyload, ptr noundef %i.m, ptr noundef %i.os) #4
  br label %.thread

.thread:                                          ; preds = %bb.cy, %bb.cx
  %i.ot = call zeroext i1 @isTempNamespace(i32 noundef %i.on) #4
  br i1 %i.ot, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %.thread
  %i.ou = load i32, ptr @MyXactFlags, align 4
  %i.ov = or i32 %i.ou, 1
  store i32 %i.ov, ptr @MyXactFlags, align 4
  br label %bb.da

.critedge131:                                     ; preds = %bb.cw
  %i.ow = load i32, ptr %i.g, align 8
  %i.ox = load ptr, ptr %i.a, align 8
  %.sroa.0.0.copyload.c = load i64, ptr %3, align 8
  %.sroa.2.0.copyload.c = load i32, ptr %.sroa.4.0..sroa_idx, align 8
  call void @check_object_ownership(i32 noundef %i.oo, i32 noundef %i.ow, i64 %.sroa.0.0.copyload.c, i32 %.sroa.2.0.copyload.c, ptr noundef %i.m, ptr noundef %i.ox) #4
  br label %bb.da

bb.da:                                            ; preds = %.critedge131, %bb.cz, %.thread
  %i.oy = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not33 = icmp eq ptr %i.oy, null
  br i1 %.not33, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @table_close(ptr noundef nonnull %i.oy, i32 noundef 0) #4
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  call void @add_exact_object_address(ptr noundef nonnull %3, ptr noundef %i.b) #4
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %does_not_exist_skipping.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv279, 1 ; 2 uses
  %i.oz = load i32, ptr %i.e, align 4
  %i.pa = sext i32 %i.oz to i64
  %i.pb = icmp slt i64 %indvars.iv.next, %i.pa
  br i1 %i.pb, label %.lr.ph280, label %.critedge
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @new_object_addresses() local_unnamed_addr #2

declare { i64, i32 } @get_object_address(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare signext i8 @get_func_prokind(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @errstart(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @errcode(i32 noundef) local_unnamed_addr #2

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #2

declare ptr @NameListToString(ptr noundef) local_unnamed_addr #2

declare i32 @errhint(ptr noundef, ...) local_unnamed_addr #2

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @get_object_namespace(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @object_ownercheck(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @GetUserId() local_unnamed_addr #2

declare void @check_object_ownership(i32 noundef, i32 noundef, i64, i32, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @isTempNamespace(i32 noundef) local_unnamed_addr #2

declare void @table_close(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @add_exact_object_address(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @performMultipleDeletions(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @free_object_addresses(ptr noundef) local_unnamed_addr #2

declare ptr @TypeNameToString(ptr noundef) local_unnamed_addr #2

declare ptr @TypeNameListToString(ptr noundef) local_unnamed_addr #2

declare ptr @list_make1_impl(i32 noundef, ptr) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @owningrel_does_not_exist_skipping(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #0 {
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %list_length.exit, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -1
  br label %list_length.exit

list_length.exit:                                 ; preds = %3, %4
  %8 = phi i32 [ %7, %4 ], [ -1, %3 ]
  %9 = tail call ptr @list_copy_head(ptr noundef %0, i32 noundef %8) #4 ; 3 uses
  %10 = tail call ptr @makeRangeVarFromNameList(ptr noundef %9) #4
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %12 = load ptr, ptr %11, align 8                ; 2 uses
  %.not.i11 = icmp eq ptr %12, null
  br i1 %.not.i11, label %16, label %13

13:                                               ; preds = %list_length.exit
  %14 = tail call i32 @LookupNamespaceNoError(ptr noundef nonnull %12) #4
  %.not8.i = icmp eq i32 %14, 0
  br i1 %.not8.i, label %schema_does_not_exist_skipping.exit, label %16

schema_does_not_exist_skipping.exit:              ; preds = %13
  store ptr @.str.7, ptr %1, align 8
  %15 = load ptr, ptr %11, align 8
  br label %.sink.split

16:                                               ; preds = %13, %list_length.exit
  %17 = tail call ptr @makeRangeVarFromNameList(ptr noundef %9) #4
  %18 = tail call i32 @RangeVarGetRelidExtended(ptr noundef %17, i32 noundef 0, i32 noundef 1, ptr noundef null, ptr noundef null) #4
  %.not = icmp eq i32 %18, 0
  br i1 %.not, label %19, label %21

19:                                               ; preds = %16
  store ptr @.str.33, ptr %1, align 8
  %20 = tail call ptr @NameListToString(ptr noundef %9) #4
  br label %.sink.split

.sink.split:                                      ; preds = %19, %schema_does_not_exist_skipping.exit
  %.sink = phi ptr [ %15, %schema_does_not_exist_skipping.exit ], [ %20, %19 ]
  store ptr %.sink, ptr %2, align 8
  br label %21

21:                                               ; preds = %.sink.split, %16
  %.0 = phi i1 [ false, %16 ], [ true, %.sink.split ]
  ret i1 %.0
}

declare ptr @list_copy_head(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @list_copy_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #2

declare ptr @makeRangeVarFromNameList(ptr noundef) local_unnamed_addr #2

declare i32 @LookupNamespaceNoError(ptr noundef) local_unnamed_addr #2

declare i32 @LookupTypeNameOid(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @RangeVarGetRelidExtended(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{i8 0, i8 2}
!5 = !{}
end_hunk_0
