Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/nodeSubplan?download=true
inline.NumInlined: 80
inline.NumDeleted: 37
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TupleTableSlotOps = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tuplehash_iterator = type { i32, i32, i8 }

@InterruptPending = external global i32, align 4
@.str = private unnamed_addr constant [52 x i8] c"CTE subplans should not be executed via ExecSubPlan\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"nodeSubplan.c\00", align 1
@__func__.ExecSubPlan = private unnamed_addr constant [12 x i8] c"ExecSubPlan\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"cannot set parent params from subquery\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"subplan \22%s\22 was not initialized\00", align 1
@__func__.ExecInitSubPlan = private unnamed_addr constant [16 x i8] c"ExecInitSubPlan\00", align 1
@CurrentMemoryContext = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"SubPlan hashed tuples\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"unrecognized testexpr type: %d\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"could not find compatible hash operator for operator %u\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"could not find hash function for hash operator %u\00", align 1
@TTSOpsVirtual = external constant %struct.TupleTableSlotOps, align 8
@TTSOpsMinimalTuple = external constant %struct.TupleTableSlotOps, align 8
@.str.8 = private unnamed_addr constant [42 x i8] c"ANY/ALL subselect unsupported as initplan\00", align 1
@__func__.ExecSetParamPlan = private unnamed_addr constant [17 x i8] c"ExecSetParamPlan\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"CTE subplans should not be executed via ExecSetParamPlan\00", align 1
@.str.10 = private unnamed_addr constant [64 x i8] c"correlated subplans should not be executed via ExecSetParamPlan\00", align 1
@.str.11 = private unnamed_addr constant [63 x i8] c"more than one row returned by a subquery used as an expression\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"direct correlated subquery unsupported as initplan\00", align 1
@__func__.ExecReScanSetParamPlan = private unnamed_addr constant [23 x i8] c"ExecReScanSetParamPlan\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"setParam list of initplan is empty\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"extParam set of initplan is empty\00", align 1
@.str.15 = private unnamed_addr constant [53 x i8] c"hashed subplan with direct correlation not supported\00", align 1
@__func__.ExecHashSubPlan = private unnamed_addr constant [16 x i8] c"ExecHashSubPlan\00", align 1
@__func__.ExecScanSubPlan = private unnamed_addr constant [16 x i8] c"ExecScanSubPlan\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"unsupported byval length: %d\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"../../../src/include/access/tupmacs.h\00", align 1
@__func__.fetch_att = private unnamed_addr constant [10 x i8] c"fetch_att\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i64 @ExecSubPlan(ptr nofree noundef %0, ptr noundef %1, ptr noundef initializes((0, 1)) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4
  %i.k = load volatile i32, ptr @InterruptPending, align 4
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  tail call void @ProcessInterrupts() #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i8 0, ptr %2, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = icmp eq i32 %i.m, 7
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.p = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 75, ptr noundef nonnull @__func__.ExecSubPlan) #8
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.r = load ptr, ptr %i.q, align 8
  %.not18 = icmp eq ptr %i.r, null
  %.not19 = icmp eq i32 %i.m, 5
  %or.cond = or i1 %.not19, %.not18
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.t = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.2) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 77, ptr noundef nonnull @__func__.ExecSubPlan) #8
  unreachable

bb.g:                                             ; preds = %bb.e
  store i32 1, ptr %i.i, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 53
  %i.v = load i8, ptr %i.u, align 1, !range !5, !noundef !6
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = load ptr, ptr %i.c, align 8              ; 11 uses
  %i.y = load ptr, ptr %i.e, align 8              ; 19 uses
  br i1 %i.w, label %bb.h, label %bb.as

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.aa = load ptr, ptr %i.z, align 8
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8
  %.not42.i = icmp eq ptr %i.ac, null
  br i1 %.not42.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ad = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.ae = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.15) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 109, ptr noundef nonnull @__func__.ExecHashSubPlan) #8
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  %i.aj = load ptr, ptr %i.ai, align 8
  %.not43.i = icmp eq ptr %i.aj, null
  br i1 %.not43.i, label %bb.ae, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store i8 0, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 97 ; 2 uses
  store i8 0, ptr %i.ap, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load double, ptr %i.as, align 8
  tail call void @ResetTupleHashTable(ptr noundef nonnull %i.ag) #8
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.av = load i32, ptr %i.au, align 8            ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store i8 0, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 97 ; 2 uses
  store i8 0, ptr %i.az, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load double, ptr %i.bc, align 8         ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 192
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = tail call ptr @BuildTupleHashTable(ptr noundef %i.bf, ptr noundef %i.bh, ptr noundef nonnull @TTSOpsVirtual, i32 noundef %i.av, ptr noundef %i.bj, ptr noundef %i.bl, ptr noundef %i.bn, ptr noundef %i.bp, double noundef %i.bd, i64 noundef 0, ptr noundef %i.bt, ptr noundef %i.bv, ptr noundef %i.bx, i1 noundef zeroext false) #8
  store ptr %i.by, ptr %i.af, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bz = phi double [ %i.bd, %bb.n ], [ %i.at, %bb.m ]
  %i.ca = phi ptr [ %i.az, %bb.n ], [ %i.ap, %bb.m ]
  %i.cb = phi ptr [ %i.ay, %bb.n ], [ %i.ao, %bb.m ]
  %i.cc = phi ptr [ %i.ax, %bb.n ], [ %i.an, %bb.m ] ; 3 uses
  %i.cd = phi i32 [ %i.av, %bb.n ], [ %i.al, %bb.m ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.x, i64 54
  %i.cf = load i8, ptr %i.ce, align 2, !range !5, !noundef !6
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ch = icmp eq i32 %i.cd, 1
  br i1 %i.ch, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ci = fmul double %i.bz, 6.250000e-02         ; 2 uses
  %i.cj = fcmp olt double %i.ci, 1.000000e+00
  br i1 %i.cj, label %3, label %bb.r

3:                                                ; preds = %bb.q
  br label %bb.r

bb.r:                                             ; preds = %3, %bb.q, %bb.p
  %.072.i.i = phi double [ %i.ci, %bb.q ], [ 1.000000e+00, %3 ], [ 1.000000e+00, %bb.p ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8            ; 2 uses
  %.not78.i.i.a = icmp eq ptr %i.cl, null
  br i1 %.not78.i.i.a, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @ResetTupleHashTable(ptr noundef nonnull %i.cl) #8
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = load ptr, ptr %i.e, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 192
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = tail call ptr @BuildTupleHashTable(ptr noundef %i.cn, ptr noundef %i.cp, ptr noundef nonnull @TTSOpsVirtual, i32 noundef %i.cd, ptr noundef %i.cr, ptr noundef %i.ct, ptr noundef %i.cv, ptr noundef %i.cx, double noundef %.072.i.i, i64 noundef 0, ptr noundef %i.dc, ptr noundef %i.de, ptr noundef %i.dg, i1 noundef zeroext false) #8
  store ptr %i.dh, ptr %i.ck, align 8
  br label %bb.v

bb.u:                                             ; preds = %bb.o
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr null, ptr %i.di, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.dk, ptr @CurrentMemoryContext, align 8
  tail call void @ExecReScan(ptr noundef nonnull %i.y) #8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.y, i64 104 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8
  %.not.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i, label %ExecProcNode.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @ExecReScan(ptr noundef nonnull %i.y) #8
  br label %ExecProcNode.exit.i.i

ExecProcNode.exit.i.i:                            ; preds = %bb.w, %bb.v
  %i.do = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = tail call ptr %i.dp(ptr noundef nonnull %i.y) #8, !inline_history !7 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %buildSubPlanHash.exit.i, label %.lr.ph95.i.i

.lr.ph95.i.i:                                     ; preds = %ExecProcNode.exit.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  br label %bb.x

bb.x:                                             ; preds = %ExecProcNode.exit86.i.i, %.lr.ph95.i.i
  %.07194.i.i = phi ptr [ %i.dq, %.lr.ph95.i.i ], [ %i.hd, %ExecProcNode.exit86.i.i ] ; 6 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.07194.i.i, i64 4
  %i.dy = load i16, ptr %i.dx, align 4
  %i.dz = and i16 %i.dy, 2
  %i.ea = icmp eq i16 %i.dz, 0
  br i1 %i.ea, label %bb.y, label %buildSubPlanHash.exit.i

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.eb = load ptr, ptr %i.ds, align 8            ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4 ; 2 uses
  %.not79.i.i = icmp eq ptr %i.eb, null
  br i1 %.not79.i.i, label %.critedge83.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.y
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ee = getelementptr inbounds nuw i8, ptr %.07194.i.i, i64 6
  %i.ef = getelementptr inbounds nuw i8, ptr %.07194.i.i, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %.07194.i.i, i64 32
  %i.eh = getelementptr inbounds nuw i8, ptr %.07194.i.i, i64 24
  %i.ei = load i32, ptr %i.ec, align 4
  %i.ej = icmp sgt i32 %i.ei, 0
  br i1 %i.ej, label %.lr.ph93.i.i, label %.critedge83.i.i

.lr.ph93.i.i:                                     ; preds = %.lr.ph.i.i, %slot_getattr.exit.i.i
  %indvars.iv97.i.i = phi i64 [ %indvars.iv.next98.i.i, %slot_getattr.exit.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %slot_getattr.exit.i.i ], [ 1, %.lr.ph.i.i ] ; 4 uses
  %i.ek = load ptr, ptr %i.ed, align 8
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv97.i.i
  %i.em = load i32, ptr %i.el, align 8
  %i.en = load ptr, ptr %i.dt, align 8
  %i.eo = sext i32 %i.em to i64
  %i.ep = getelementptr inbounds [24 x i8], ptr %i.en, i64 %i.eo ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load i16, ptr %i.ee, align 2
  %i.es = sext i16 %i.er to i64
  %i.et = icmp sgt i64 %indvars.iv.i.i, %i.es
  br i1 %i.et, label %slot_getsomeattrs.exit.i.i.i, label %slot_getattr.exit.i.i

slot_getsomeattrs.exit.i.i.i:                     ; preds = %.lr.ph93.i.i
  %i.eu = load ptr, ptr %i.ef, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = trunc nuw nsw i64 %indvars.iv.i.i to i32
  call void %i.ew(ptr noundef nonnull %.07194.i.i, i32 noundef range(i32 -32767, -2147483648) %i.ex) #8, !inline_history !8
  br label %slot_getattr.exit.i.i

slot_getattr.exit.i.i:                            ; preds = %slot_getsomeattrs.exit.i.i.i, %.lr.ph93.i.i
  %i.ey = load ptr, ptr %i.eg, align 8
  %i.ez = add nsw i64 %indvars.iv.i.i, -1         ; 2 uses
  %i.fa = getelementptr inbounds i8, ptr %i.ey, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !range !5, !noundef !6
  store i8 %i.fb, ptr %i.eq, align 1
  %i.fc = load ptr, ptr %i.eh, align 8
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.fc, i64 %i.ez
  %i.fe = load i64, ptr %i.fd, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store i64 %i.fe, ptr %i.ff, align 8
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %indvars.iv.next98.i.i = add nuw nsw i64 %indvars.iv97.i.i, 1 ; 2 uses
  %i.fg = load i32, ptr %i.ec, align 4
  %i.fh = sext i32 %i.fg to i64
  %i.fi = icmp slt i64 %indvars.iv.next98.i.i, %i.fh
  br i1 %i.fi, label %.lr.ph93.i.i, label %.critedge83.i.i

.critedge83.i.i:                                  ; preds = %slot_getattr.exit.i.i, %.lr.ph.i.i, %bb.y
  %i.fj = load ptr, ptr %i.du, align 8            ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 128
  %i.fl = load ptr, ptr %i.fk, align 8            ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8            ; 9 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef %i.fo) #8, !inline_history !9
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fl, i64 40
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.fu, ptr @CurrentMemoryContext, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fj, i64 40
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = call i64 %i.fx(ptr noundef nonnull %i.fm, ptr noundef %i.fl, ptr noundef null) #8, !inline_history !10 ; 0 uses
  store ptr %i.fv, ptr @CurrentMemoryContext, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fo, i64 4 ; 2 uses
  %i.ga = load i16, ptr %i.fz, align 4
  %i.gb = and i16 %i.ga, -3
  store i16 %i.gb, ptr %i.fz, align 4
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.gd = load ptr, ptr %i.gc, align 8            ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 8
  %i.gf = trunc i32 %i.ge to i16
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fo, i64 6 ; 2 uses
  store i16 %i.gf, ptr %i.gg, align 2
  %i.gh = load i32, ptr %i.gd, align 8            ; 2 uses
  %.not7.i.i.i = icmp slt i32 %i.gh, 1
  br i1 %.not7.i.i.i, label %slotNoNulls.exit.thread.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge83.i.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  br label %bb.z

bb.z:                                             ; preds = %slot_attisnull.exit.i.i.i, %.lr.ph.i.i.i
  %.08.i.i.i = phi i32 [ 1, %.lr.ph.i.i.i ], [ %i.gv, %slot_attisnull.exit.i.i.i ] ; 4 uses
  %i.gj = load i16, ptr %i.gg, align 2
  %i.gk = sext i16 %i.gj to i32
  %i.gl = icmp sgt i32 %.08.i.i.i, %i.gk
  br i1 %i.gl, label %slot_getsomeattrs.exit.i.i.i.i, label %slot_attisnull.exit.i.i.i

slot_getsomeattrs.exit.i.i.i.i:                   ; preds = %bb.z
  %i.gm = load ptr, ptr %i.fp, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  %i.go = load ptr, ptr %i.gn, align 8
  call void %i.go(ptr noundef nonnull %i.fo, i32 noundef range(i32 -32767, -2147483648) %.08.i.i.i) #8, !inline_history !11
  br label %slot_attisnull.exit.i.i.i

slot_attisnull.exit.i.i.i:                        ; preds = %slot_getsomeattrs.exit.i.i.i.i, %bb.z
  %i.gp = load ptr, ptr %i.gi, align 8
  %i.gq = add i32 %.08.i.i.i, -1
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds i8, ptr %i.gp, i64 %i.gr
  %i.gt = load i8, ptr %i.gs, align 1, !range !5, !noundef !6
  %i.gu = trunc nuw i8 %i.gt to i1                ; 2 uses
  %i.gv = add i32 %.08.i.i.i, 1                   ; 2 uses
  %.not.i84.i.i.a = icmp sgt i32 %i.gv, %i.gh
  %or.cond.i.i.i = or i1 %.not.i84.i.i.a, %i.gu
  br i1 %or.cond.i.i.i, label %slotNoNulls.exit.i.i, label %bb.z, !llvm.loop !12

end_hunk_0
