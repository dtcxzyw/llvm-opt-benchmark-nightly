Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/parse_relation?download=true
inline.NumInlined: 124
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ParseCallbackState = type { ptr, i32, %struct.ErrorContextCallback }
%struct.ErrorContextCallback = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [41 x i8] c"table name \22%s\22 specified more than once\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"parse_relation.c\00", align 1
@__func__.checkNameSpaceConflicts = private unnamed_addr constant [24 x i8] c"checkNameSpaceConflicts\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"nsitem not found (internal error)\00", align 1
@__func__.GetNSItemByRangeTablePosn = private unnamed_addr constant [26 x i8] c"GetNSItemByRangeTablePosn\00", align 1
@__func__.GetNSItemByVar = private unnamed_addr constant [15 x i8] c"GetNSItemByVar\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"bad levelsup for CTE \22%s\22\00", align 1
@__func__.GetCTEForRTE = private unnamed_addr constant [13 x i8] c"GetCTEForRTE\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"could not find CTE \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"system column \22%s\22 reference in check constraint is invalid\00", align 1
@__func__.scanNSItemForColumn = private unnamed_addr constant [20 x i8] c"scanNSItemForColumn\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"cannot use system column \22%s\22 in column generation expression\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"cannot use system column \22%s\22 in MERGE WHEN condition\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"column \22%s\22 of relation \22%s\22 does not exist\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"column reference \22%s\22 is ambiguous\00", align 1
@__func__.colNameToVar = private unnamed_addr constant [13 x i8] c"colNameToVar\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"relation \22%s.%s\22 does not exist\00", align 1
@__func__.parserOpenTable = private unnamed_addr constant [16 x i8] c"parserOpenTable\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"relation \22%s\22 does not exist\00", align 1
@.str.12 = private unnamed_addr constant [90 x i8] c"There is a WITH item named \22%s\22, but it cannot be referenced from this part of the query.\00", align 1
@.str.13 = private unnamed_addr constant [77 x i8] c"Use WITH RECURSIVE, or re-order the WITH items to remove forward references.\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"unnamed_subquery\00", align 1
@.str.15 = private unnamed_addr constant [61 x i8] c"table \22%s\22 has %d columns available but %d columns specified\00", align 1
@__func__.addRangeTableEntryForSubquery = private unnamed_addr constant [30 x i8] c"addRangeTableEntryForSubquery\00", align 1
@.str.16 = private unnamed_addr constant [73 x i8] c"a column definition list is redundant for a function with OUT parameters\00", align 1
@__func__.addRangeTableEntryForFunction = private unnamed_addr constant [30 x i8] c"addRangeTableEntryForFunction\00", align 1
@.str.17 = private unnamed_addr constant [86 x i8] c"a column definition list is redundant for a function returning a named composite type\00", align 1
@.str.18 = private unnamed_addr constant [74 x i8] c"a column definition list is only allowed for functions returning \22record\22\00", align 1
@.str.19 = private unnamed_addr constant [70 x i8] c"a column definition list is required for functions returning \22record\22\00", align 1
@.str.20 = private unnamed_addr constant [52 x i8] c"column definition lists can have at most %d entries\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"column \22%s\22 cannot be declared SETOF\00", align 1
@.str.22 = private unnamed_addr constant [53 x i8] c"function \22%s\22 in FROM has unsupported return type %s\00", align 1
@.str.23 = private unnamed_addr constant [48 x i8] c"functions in FROM can return at most %d columns\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"ordinality\00", align 1
@__func__.addRangeTableEntryForTableFunc = private unnamed_addr constant [31 x i8] c"addRangeTableEntryForTableFunc\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"xmltable\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"json_table\00", align 1
@.str.27 = private unnamed_addr constant [62 x i8] c"%s function has %d columns available but %d columns specified\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"XMLTABLE\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"JSON_TABLE\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"graph_table\00", align 1
@.str.31 = private unnamed_addr constant [67 x i8] c"GRAPH_TABLE \22%s\22 has %d columns available but %d columns specified\00", align 1
@__func__.addRangeTableEntryForGraphTable = private unnamed_addr constant [32 x i8] c"addRangeTableEntryForGraphTable\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"*VALUES*\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"column%d\00", align 1
@.str.34 = private unnamed_addr constant [69 x i8] c"VALUES lists \22%s\22 have %d columns available but %d columns specified\00", align 1
@__func__.addRangeTableEntryForValues = private unnamed_addr constant [28 x i8] c"addRangeTableEntryForValues\00", align 1
@.str.35 = private unnamed_addr constant [34 x i8] c"joins can have at most %d columns\00", align 1
@__func__.addRangeTableEntryForJoin = private unnamed_addr constant [26 x i8] c"addRangeTableEntryForJoin\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"unnamed_join\00", align 1
@.str.37 = private unnamed_addr constant [71 x i8] c"join expression \22%s\22 has %d columns available but %d columns specified\00", align 1
@.str.38 = private unnamed_addr constant [49 x i8] c"WITH query \22%s\22 does not have a RETURNING clause\00", align 1
@__func__.addRangeTableEntryForCTE = private unnamed_addr constant [25 x i8] c"addRangeTableEntryForCTE\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"unexpected enrtype: %d\00", align 1
@__func__.addRangeTableEntryForENR = private unnamed_addr constant [25 x i8] c"addRangeTableEntryForENR\00", align 1
@.str.40 = private unnamed_addr constant [51 x i8] c"atttypid is invalid for non-dropped column in \22%s\22\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"*GROUP*\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"?column?\00", align 1
@.str.43 = private unnamed_addr constant [37 x i8] c"too few column names for subquery %s\00", align 1
@__func__.expandRTE = private unnamed_addr constant [10 x i8] c"expandRTE\00", align 1
@.str.44 = private unnamed_addr constant [45 x i8] c"function in FROM has unsupported return type\00", align 1
@.str.45 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.46 = private unnamed_addr constant [26 x i8] c"unrecognized RTE kind: %d\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.48 = private unnamed_addr constant [42 x i8] c"invalid attnum %d for rangetable entry %s\00", align 1
@__func__.get_rte_attribute_name = private unnamed_addr constant [23 x i8] c"get_rte_attribute_name\00", align 1
@.str.49 = private unnamed_addr constant [52 x i8] c"cache lookup failed for attribute %d of relation %u\00", align 1
@__func__.get_rte_attribute_is_dropped = private unnamed_addr constant [29 x i8] c"get_rte_attribute_is_dropped\00", align 1
@.str.50 = private unnamed_addr constant [20 x i8] c"invalid varattno %d\00", align 1
@.str.51 = private unnamed_addr constant [42 x i8] c"column %d of relation \22%s\22 does not exist\00", align 1
@.str.52 = private unnamed_addr constant [28 x i8] c"invalid attribute number %d\00", align 1
@__func__.attnumAttName = private unnamed_addr constant [14 x i8] c"attnumAttName\00", align 1
@__func__.attnumTypeId = private unnamed_addr constant [13 x i8] c"attnumTypeId\00", align 1
@__func__.attnumCollationId = private unnamed_addr constant [18 x i8] c"attnumCollationId\00", align 1
@.str.53 = private unnamed_addr constant [54 x i8] c"invalid reference to FROM-clause entry for table \22%s\22\00", align 1
@.str.54 = private unnamed_addr constant [53 x i8] c"Perhaps you meant to reference the table alias \22%s\22.\00", align 1
@__func__.errorMissingRTE = private unnamed_addr constant [16 x i8] c"errorMissingRTE\00", align 1
@.str.55 = private unnamed_addr constant [91 x i8] c"There is an entry for table \22%s\22, but it cannot be referenced from this part of the query.\00", align 1
@.str.56 = private unnamed_addr constant [67 x i8] c"To reference that table, you must mark this subquery with LATERAL.\00", align 1
@.str.57 = private unnamed_addr constant [41 x i8] c"missing FROM-clause entry for table \22%s\22\00", align 1
@.str.58 = private unnamed_addr constant [28 x i8] c"column %s.%s does not exist\00", align 1
@.str.59 = private unnamed_addr constant [27 x i8] c"column \22%s\22 does not exist\00", align 1
@.str.60 = private unnamed_addr constant [108 x i8] c"There are columns named \22%s\22, but they are in tables that cannot be referenced from this part of the query.\00", align 1
@.str.61 = private unnamed_addr constant [34 x i8] c"Try using a table-qualified name.\00", align 1
@__func__.errorMissingColumn = private unnamed_addr constant [19 x i8] c"errorMissingColumn\00", align 1
@.str.62 = private unnamed_addr constant [101 x i8] c"There is a column named \22%s\22 in table \22%s\22, but it cannot be referenced from this part of the query.\00", align 1
@.str.63 = private unnamed_addr constant [68 x i8] c"To reference that column, you must mark this subquery with LATERAL.\00", align 1
@.str.64 = private unnamed_addr constant [63 x i8] c"To reference that column, you must use a table-qualified name.\00", align 1
@.str.65 = private unnamed_addr constant [51 x i8] c"Perhaps you meant to reference the column \22%s.%s\22.\00", align 1
@.str.66 = private unnamed_addr constant [73 x i8] c"Perhaps you meant to reference the column \22%s.%s\22 or the column \22%s.%s\22.\00", align 1
@.str.67 = private unnamed_addr constant [46 x i8] c"invalid perminfoindex %u in RTE with relid %u\00", align 1
@__func__.getRTEPermissionInfo = private unnamed_addr constant [21 x i8] c"getRTEPermissionInfo\00", align 1
@.str.68 = private unnamed_addr constant [88 x i8] c"permission info at index %u (with relid=%u) does not match provided RTE (with relid=%u)\00", align 1
@.str.69 = private unnamed_addr constant [34 x i8] c"table reference \22%s\22 is ambiguous\00", align 1
@__func__.scanNameSpaceForRefname = private unnamed_addr constant [24 x i8] c"scanNameSpaceForRefname\00", align 1
@.str.70 = private unnamed_addr constant [32 x i8] c"table reference %u is ambiguous\00", align 1
@__func__.scanNameSpaceForRelid = private unnamed_addr constant [22 x i8] c"scanNameSpaceForRelid\00", align 1
@__func__.scanRTEForColumn = private unnamed_addr constant [17 x i8] c"scanRTEForColumn\00", align 1
@.str.71 = private unnamed_addr constant [71 x i8] c"The combining JOIN type must be INNER or LEFT for a LATERAL reference.\00", align 1
@__func__.check_lateral_ref_ok = private unnamed_addr constant [21 x i8] c"check_lateral_ref_ok\00", align 1
@.str.72 = private unnamed_addr constant [48 x i8] c"could not find JoinExpr for whole-row reference\00", align 1
@__func__.markRTEForSelectPriv = private unnamed_addr constant [21 x i8] c"markRTEForSelectPriv\00", align 1
@.str.73 = private unnamed_addr constant [27 x i8] c"unrecognized node type: %d\00", align 1
@__func__.buildRelationAliases = private unnamed_addr constant [21 x i8] c"buildRelationAliases\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @refnameNamespaceItem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %4, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %4, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not36 = icmp eq ptr %1, null
  br i1 %.not36, label %.split.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.a = tail call i32 @LookupNamespaceNoError(ptr noundef nonnull %1) #10 ; 2 uses
  %.not37 = icmp eq i32 %i.a, 0
  br i1 %.not37, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.b = tail call i32 @get_relname_relid(ptr noundef %2, i32 noundef %i.a) #10
  %.125.fr = freeze i32 %i.b                      ; 4 uses
  %.not38.not = icmp eq i32 %.125.fr, 0
  br i1 %.not38.not, label %.critedge, label %.split.a

.split.us:                                        ; preds = %bb.c, %bb.n
  %.028.us = phi ptr [ %.129.us, %bb.n ], [ %0, %bb.c ] ; 7 uses
  %.2.us = phi ptr [ %.3.us, %bb.n ], [ null, %bb.c ] ; 2 uses
  %.not39.us = icmp eq ptr %.028.us, null
  br i1 %.not39.us, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.split.us
  %i.c = getelementptr inbounds nuw i8, ptr %.028.us, i64 56
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not.i43.us = icmp eq ptr %i.d, null
  br i1 %.not.i43.us, label %scanNameSpaceForRelid.exit.us, label %.lr.ph.i44.us

.lr.ph.i44.us:                                    ; preds = %bb.f
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %.028.us, i64 64
  %i.h = load i32, ptr %i.e, align 4              ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph31.i.us, label %scanNameSpaceForRelid.exit.us

.lr.ph31.i.us:                                    ; preds = %.lr.ph.i44.us, %bb.l
  %i.j = phi i32 [ %i.aa, %bb.l ], [ %i.h, %.lr.ph.i44.us ] ; 3 uses
  %indvars.iv.i45.us = phi i64 [ %indvars.iv.next.i47.us, %bb.l ], [ 0, %.lr.ph.i44.us ] ; 2 uses
  %.0192430.i.us = phi ptr [ %.2.i46.us, %bb.l ], [ null, %.lr.ph.i44.us ] ; 4 uses
  %i.k = load ptr, ptr %i.f, align 8
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i45.us
  %i.m = load ptr, ptr %i.l, align 8              ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load i8, ptr %i.n, align 8, !range !9, !noundef !10
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.g, label %bb.l

bb.g:                                             ; preds = %.lr.ph31.i.us
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 42
  %i.r = load i8, ptr %i.q, align 2, !range !9, !noundef !10
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = load i8, ptr %i.g, align 8, !range !9, !noundef !10
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = load ptr, ptr %i.m, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.x, ptr noundef nonnull dereferenceable(1) %2) #11
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %.not22.i.us = icmp eq ptr %.0192430.i.us, null
  br i1 %.not22.i.us, label %bb.k, label %.split.i48

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @check_lateral_ref_ok(ptr noundef nonnull %.028.us, ptr noundef nonnull %i.m, i32 noundef %3)
  %.pre.i49.us = load i32, ptr %i.e, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.h, %.lr.ph31.i.us
  %i.aa = phi i32 [ %i.j, %bb.h ], [ %i.j, %.lr.ph31.i.us ], [ %.pre.i49.us, %bb.k ], [ %i.j, %bb.i ] ; 2 uses
  %.2.i46.us = phi ptr [ %.0192430.i.us, %bb.h ], [ %.0192430.i.us, %.lr.ph31.i.us ], [ %i.m, %bb.k ], [ %.0192430.i.us, %bb.i ] ; 2 uses
  %indvars.iv.next.i47.us = add nuw nsw i64 %indvars.iv.i45.us, 1 ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %indvars.iv.next.i47.us, %i.ab
  br i1 %i.ac, label %.lr.ph31.i.us, label %scanNameSpaceForRelid.exit.us

scanNameSpaceForRelid.exit.us:                    ; preds = %bb.l, %.lr.ph.i44.us, %bb.f
  %.0.us = phi ptr [ null, %.lr.ph.i44.us ], [ null, %bb.f ], [ %.2.i46.us, %bb.l ] ; 2 uses
  %.not41.us = icmp ne ptr %.0.us, null           ; 3 uses
  %brmerge.us = or i1 %.not, %.not41.us
  %.0.mux.us = select i1 %.not41.us, ptr %.0.us, ptr %.2.us
  %.mux.us = select i1 %.not41.us, i32 1, i32 3
  br i1 %brmerge.us, label %bb.n, label %bb.m

bb.m:                                             ; preds = %scanNameSpaceForRelid.exit.us
  %i.ad = load i32, ptr %4, align 4
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %4, align 4
  %i.af = load ptr, ptr %.028.us, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %scanNameSpaceForRelid.exit.us
  %.129.us = phi ptr [ %.028.us, %scanNameSpaceForRelid.exit.us ], [ %i.af, %bb.m ]
  %.3.us = phi ptr [ %.0.mux.us, %scanNameSpaceForRelid.exit.us ], [ %.2.us, %bb.m ] ; 2 uses
  %.1.us = phi i32 [ %.mux.us, %scanNameSpaceForRelid.exit.us ], [ 0, %bb.m ]
  switch i32 %.1.us, label %.critedge.loopexit116 [
    i32 0, label %.split.us
    i32 3, label %.critedge
  ], !llvm.loop !13

.split.a:                                         ; preds = %bb.e
  br i1 %.not, label %.split.split.us, label %.split.split

.split.split.us:                                  ; preds = %.split.a
  %.not39.us59 = icmp eq ptr %0, null
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  br i1 %.not39.us59, label %.critedge, label %.split.split.us.split

.split.split.us.split:                            ; preds = %.split.split.us
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8            ; 3 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %.critedge, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.split.split.us.split
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.am = load i32, ptr %i.ak, align 4            ; 2 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph37.i.us, label %.critedge

.lr.ph37.i.us:                                    ; preds = %.lr.ph.i.us, %bb.w
  %i.ao = phi i32 [ %i.bn, %bb.w ], [ %i.am, %.lr.ph.i.us ] ; 6 uses
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %bb.w ], [ 0, %.lr.ph.i.us ] ; 2 uses
  %.0233036.i.us = phi ptr [ %.2.i.us, %bb.w ], [ null, %.lr.ph.i.us ] ; 7 uses
  %i.ap = load ptr, ptr %i.al, align 8
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.i.us
  %i.ar = load ptr, ptr %i.aq, align 8            ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8            ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.av = load i8, ptr %i.au, align 8, !range !9, !noundef !10
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.o, label %bb.w

bb.o:                                             ; preds = %.lr.ph37.i.us
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 42
  %i.ay = load i8, ptr %i.ax, align 2, !range !9, !noundef !10
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ba = load i8, ptr %i.ag, align 8, !range !9, !noundef !10
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 44
  %i.bd = load i32, ptr %i.bc, align 4
  %.not27.i.us = icmp eq i32 %i.bd, 0
  br i1 %.not27.i.us, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 28
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = icmp eq i32 %i.bi, %.125.fr
  br i1 %i.bj, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.bk = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %.not28.i.us = icmp eq ptr %.0233036.i.us, null
  br i1 %.not28.i.us, label %bb.v, label %.split.i

bb.v:                                             ; preds = %bb.u
  tail call fastcc void @check_lateral_ref_ok(ptr noundef nonnull %0, ptr noundef nonnull %i.ar, i32 noundef %3)
  %.pre.i.us = load i32, ptr %i.ak, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %.lr.ph37.i.us
  %i.bn = phi i32 [ %i.ao, %bb.p ], [ %i.ao, %bb.q ], [ %i.ao, %.lr.ph37.i.us ], [ %.pre.i.us, %bb.v ], [ %i.ao, %bb.t ], [ %i.ao, %bb.s ], [ %i.ao, %bb.r ] ; 2 uses
  %.2.i.us = phi ptr [ %.0233036.i.us, %bb.p ], [ %.0233036.i.us, %bb.q ], [ %.0233036.i.us, %.lr.ph37.i.us ], [ %i.ar, %bb.v ], [ %.0233036.i.us, %bb.t ], [ %.0233036.i.us, %bb.s ], [ %.0233036.i.us, %bb.r ] ; 2 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %i.bo = sext i32 %i.bn to i64
  %i.bp = icmp slt i64 %indvars.iv.next.i.us, %i.bo
  br i1 %i.bp, label %.lr.ph37.i.us, label %.critedge

.split.split:                                     ; preds = %.split.a, %5
  %.028 = phi ptr [ %.129, %5 ], [ %0, %.split.a ] ; 7 uses
  %.2 = phi ptr [ %.3, %5 ], [ null, %.split.a ]
  %.not39 = icmp eq ptr %.028, null
  br i1 %.not39, label %.critedge, label %bb.x

bb.x:                                             ; preds = %.split.split
  %i.bq = getelementptr inbounds nuw i8, ptr %.028, i64 56
  %i.br = load ptr, ptr %i.bq, align 8            ; 3 uses
  %.not.i = icmp eq ptr %i.br, null
  br i1 %.not.i, label %scanNameSpaceForRelid.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.x
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %.028, i64 64
  %i.bv = load i32, ptr %i.bs, align 4            ; 2 uses
  %i.bw = icmp sgt i32 %i.bv, 0
  br i1 %i.bw, label %.lr.ph37.i, label %scanNameSpaceForRelid.exit.thread

.lr.ph37.i:                                       ; preds = %.lr.ph.i, %bb.ag
  %i.bx = phi i32 [ %i.da, %bb.ag ], [ %i.bv, %.lr.ph.i ] ; 6 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ag ], [ 0, %.lr.ph.i ] ; 2 uses
  %.0233036.i = phi ptr [ %.2.i, %bb.ag ], [ null, %.lr.ph.i ] ; 7 uses
  %i.by = load ptr, ptr %i.bt, align 8
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.i
  %i.ca = load ptr, ptr %i.bz, align 8            ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8            ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.ce = load i8, ptr %i.cd, align 8, !range !9, !noundef !10
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.y, label %bb.ag

bb.y:                                             ; preds = %.lr.ph37.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 42
  %i.ch = load i8, ptr %i.cg, align 2, !range !9, !noundef !10
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cj = load i8, ptr %i.bu, align 8, !range !9, !noundef !10
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 44
  %i.cm = load i32, ptr %i.cl, align 4
  %.not27.i = icmp eq i32 %i.cm, 0
  br i1 %.not27.i, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.co = load i32, ptr %i.cn, align 8
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cc, i64 28
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = icmp eq i32 %i.cr, %.125.fr
  br i1 %i.cs, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %.not28.i = icmp eq ptr %.0233036.i, null
  br i1 %.not28.i, label %bb.af, label %.split.i

.split.i:                                         ; preds = %bb.ae, %bb.u
  %.us-phi = phi ptr [ %0, %bb.u ], [ %.028, %bb.ae ]
  %i.cw = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.cx = tail call i32 @errcode(i32 noundef 151126148) #10 ; 0 uses
  %i.cy = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.70, i32 noundef range(i32 1, 0) %.125.fr) #10 ; 0 uses
  %i.cz = tail call i32 @parser_errposition(ptr noundef nonnull %.us-phi, i32 noundef %3) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 271, ptr noundef nonnull @__func__.scanNameSpaceForRelid) #10
  unreachable

bb.af:                                            ; preds = %bb.ae
  tail call fastcc void @check_lateral_ref_ok(ptr noundef nonnull %.028, ptr noundef nonnull %i.ca, i32 noundef %3)
  %.pre.i = load i32, ptr %i.bs, align 4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %.lr.ph37.i
  %i.da = phi i32 [ %i.bx, %bb.z ], [ %i.bx, %bb.aa ], [ %i.bx, %.lr.ph37.i ], [ %.pre.i, %bb.af ], [ %i.bx, %bb.ad ], [ %i.bx, %bb.ac ], [ %i.bx, %bb.ab ] ; 2 uses
  %.2.i = phi ptr [ %.0233036.i, %bb.z ], [ %.0233036.i, %bb.aa ], [ %.0233036.i, %.lr.ph37.i ], [ %i.ca, %bb.af ], [ %.0233036.i, %bb.ad ], [ %.0233036.i, %bb.ac ], [ %.0233036.i, %bb.ab ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.db = sext i32 %i.da to i64
  %i.dc = icmp slt i64 %indvars.iv.next.i, %i.db
  br i1 %i.dc, label %.lr.ph37.i, label %scanNameSpaceForRelid.exit

.split.i48:                                       ; preds = %bb.j
  %i.dd = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.de = tail call i32 @errcode(i32 noundef 151126148) #10 ; 0 uses
  %i.df = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.69, ptr noundef nonnull %2) #10 ; 0 uses
  %i.dg = tail call i32 @parser_errposition(ptr noundef nonnull %.028.us, i32 noundef %3) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 224, ptr noundef nonnull @__func__.scanNameSpaceForRefname) #10
  unreachable

scanNameSpaceForRelid.exit:                       ; preds = %bb.ag
  %.not41.not = icmp eq ptr %.2.i, null
  br i1 %.not41.not, label %scanNameSpaceForRelid.exit.thread, label %5

scanNameSpaceForRelid.exit.thread:                ; preds = %bb.x, %.lr.ph.i, %scanNameSpaceForRelid.exit
  %i.dh = load i32, ptr %4, align 4
  %i.di = add i32 %i.dh, 1
  store i32 %i.di, ptr %4, align 4
  %i.dj = load ptr, ptr %.028, align 8
  br label %5

5:                                                ; preds = %scanNameSpaceForRelid.exit, %scanNameSpaceForRelid.exit.thread
  %.129 = phi ptr [ %.028, %scanNameSpaceForRelid.exit ], [ %i.dj, %scanNameSpaceForRelid.exit.thread ]
  %.3 = phi ptr [ %.2.i, %scanNameSpaceForRelid.exit ], [ %.2, %scanNameSpaceForRelid.exit.thread ] ; 2 uses
  %cond = phi i1 [ false, %scanNameSpaceForRelid.exit ], [ true, %scanNameSpaceForRelid.exit.thread ]
  br i1 %cond, label %.split.split, label %.critedge

.critedge.loopexit116:                            ; preds = %bb.n
  br label %.critedge

.critedge:                                        ; preds = %5, %.split.split, %bb.w, %bb.n, %.split.us, %.critedge.loopexit116, %.lr.ph.i.us, %.split.split.us, %.split.split.us.split, %bb.d, %bb.e
  %.4 = phi ptr [ null, %bb.d ], [ null, %.lr.ph.i.us ], [ null, %bb.e ], [ null, %.split.split.us.split ], [ %.2.i.us, %bb.w ], [ null, %.split.split.us ], [ null, %bb.n ], [ %.3.us, %.critedge.loopexit116 ], [ null, %.split.us ], [ %.3, %5 ], [ null, %.split.split ]
  ret ptr %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @LookupNamespaceNoError(ptr noundef) local_unnamed_addr #2

declare i32 @get_relname_relid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @scanNameSpaceForCTE(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %.not43 = icmp eq ptr %0, null
  br i1 %.not43, label %.loopexit, label %.lr.ph49

.lr.ph49:                                         ; preds = %bb.a, %._crit_edge39.split.us
  %.02045 = phi i32 [ %i.n, %._crit_edge39.split.us ], [ 0, %bb.a ] ; 2 uses
  %.02344 = phi ptr [ %i.m, %._crit_edge39.split.us ], [ %0, %bb.a ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.02344, i64 72
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not25 = icmp eq ptr %i.b, null
  br i1 %.not25, label %._crit_edge39.split.us, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph49
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph42, label %._crit_edge39.split.us

.lr.ph42:                                         ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge39.split.us, label %bb.c

bb.c:                                             ; preds = %.lr.ph42, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph42 ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(1) %1) #11
  %.not27 = icmp eq i32 %i.l, 0
  br i1 %.not27, label %.split, label %bb.b

.split:                                           ; preds = %bb.c
  store i32 %.02045, ptr %2, align 4
  br label %.loopexit

._crit_edge39.split.us:                           ; preds = %bb.b, %.lr.ph, %.lr.ph49
  %i.m = load ptr, ptr %.02344, align 8           ; 2 uses
  %i.n = add i32 %.02045, 1
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %.loopexit, label %.lr.ph49, !llvm.loop !0

.loopexit:                                        ; preds = %._crit_edge39.split.us, %bb.a, %.split
  %.4 = phi ptr [ %i.i, %.split ], [ null, %bb.a ], [ null, %._crit_edge39.split.us ]
  ret ptr %.4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @scanNameSpaceForENR(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @name_matches_visible_ENR(ptr noundef %0, ptr noundef %1) #10
  ret i1 %i.a
}

declare zeroext i1 @name_matches_visible_ENR(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @checkNameSpaceConflicts(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.critedge, label %.lr.ph45

.lr.ph45:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %.not34 = icmp ne ptr %2, null
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = icmp sgt i32 %i.b, 0
  %or.cond = select i1 %.not34, i1 %i.e, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.lr.ph45
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %wide.trip.count61 = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge39
  %indvars.iv58 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next59, %.critedge39 ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv58
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.n = load i8, ptr %i.m, align 8, !range !9, !noundef !10
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %.preheader, label %.critedge39

.preheader:                                       ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %i.r = load i32, ptr %i.c, align 4              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  %i.v = icmp sgt i32 %i.r, 0
  br i1 %i.v, label %.lr.ph43, label %.critedge39

.lr.ph43:                                         ; preds = %.preheader
  %i.w = load ptr, ptr %i.d, align 8
  %wide.trip.count = zext nneg i32 %i.r to i64
  br label %bb.c

.critedge:                                        ; preds = %.critedge39, %.lr.ph45, %bb.a
  ret void

bb.c:                                             ; preds = %.lr.ph43, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph43 ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.y = load ptr, ptr %i.x, align 8              ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8             ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ac = load i8, ptr %i.ab, align 8, !range !9, !noundef !10
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %i.y, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ag, ptr noundef nonnull dereferenceable(1) %i.l) #11
  %.not36 = icmp eq i32 %i.ah, 0
  br i1 %.not36, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.ai = load i32, ptr %i.s, align 8
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.f, label %.split

bb.f:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %i.t, align 8
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.g, label %.split

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.h, label %.split

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.i, label %.split

bb.i:                                             ; preds = %bb.h
  %i.as = load i32, ptr %i.u, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  %i.au = load i32, ptr %i.at, align 4
  %.not37 = icmp eq i32 %i.as, %i.au
  br i1 %.not37, label %.split, label %bb.j

.split:                                           ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.av = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.aw = tail call i32 @errcode(i32 noundef 33845380) #10 ; 0 uses
  %i.ax = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str, ptr noundef nonnull %i.l) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 470, ptr noundef nonnull @__func__.checkNameSpaceConflicts) #10
  unreachable

bb.j:                                             ; preds = %bb.i, %bb.d, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge39, label %bb.c

.critedge39:                                      ; preds = %bb.j, %.preheader, %bb.b
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %exitcond62.not = icmp eq i64 %indvars.iv.next59, %wide.trip.count61
  br i1 %exitcond62.not, label %.critedge, label %bb.b
}

; Function Attrs: cold
end_hunk_0
