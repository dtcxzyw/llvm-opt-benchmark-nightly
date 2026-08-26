Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/parse_jsontable?download=true
inline.NumInlined: 22
inline.NumDeleted: 11
begin_hunk_0_@errdetail
declare i32 @errdetail(ptr noundef, ...) local_unnamed_addr #4

declare i32 @parser_errposition(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare ptr @list_make1_impl(i32 noundef, ptr) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @CheckDuplicateColumnOrPathNames(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr i8, ptr %0, i64 24         ; 4 uses
  %i.d = load i32, ptr %i.a, align 4
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph60, label %.critedge

.lr.ph60:                                         ; preds = %.lr.ph, %bb.j
  %indvars.iv59 = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %.lr.ph ] ; 2 uses
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv59
  %i.h = load ptr, ptr %i.g, align 8              ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp eq i32 %i.j, 4
  br i1 %i.k, label %bb.b, label %bb.g

.critedge:                                        ; preds = %bb.j, %.lr.ph, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph60
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %.not29 = icmp eq ptr %i.o, null
  br i1 %.not29, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val30 = load ptr, ptr %i.c, align 8           ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val30, i64 16
  %.not.i = icmp eq ptr %.val30, null
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.val30, i64 4
  %i.r = load i32, ptr %i.q, align 4              ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph12.i, label %.loopexit

.lr.ph12.i:                                       ; preds = %.lr.ph.i
  %i.t = load ptr, ptr %i.p, align 8
  %wide.trip.count.i = zext nneg i32 %i.r to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph12.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph12.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.o, ptr noundef nonnull dereferenceable(1) %i.v) #8
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %LookupPathOrColumnName.exit, label %bb.d

LookupPathOrColumnName.exit:                      ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.z = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.aa = tail call i32 @errcode(i32 noundef 33845380) #6 ; 0 uses
  %i.ab = load ptr, ptr %i.y, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.4, ptr noundef %i.ad) #6 ; 0 uses
  %i.af = load ptr, ptr %0, align 8
  %i.ag = load ptr, ptr %i.y, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = tail call i32 @parser_errposition(ptr noundef %i.af, i32 noundef %i.ai) #6 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 190, ptr noundef nonnull @__func__.CheckDuplicateColumnOrPathNames) #6
  unreachable

.loopexit:                                        ; preds = %bb.d, %.lr.ph.i, %bb.c
  %i.ak = tail call ptr @lappend(ptr noundef %.val30, ptr noundef nonnull %i.o) #6
  store ptr %i.ak, ptr %i.c, align 8
  br label %bb.f

bb.f:                                             ; preds = %.loopexit, %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.am = load ptr, ptr %i.al, align 8
  tail call fastcc void @CheckDuplicateColumnOrPathNames(ptr noundef %0, ptr noundef %i.am)
  br label %bb.j

bb.g:                                             ; preds = %.lr.ph60
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %.val = load ptr, ptr %i.c, align 8             ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.not.i31 = icmp eq ptr %.val, null
  br i1 %.not.i31, label %.loopexit42, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.ar = load i32, ptr %i.aq, align 4            ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph12.i34, label %.loopexit42

.lr.ph12.i34:                                     ; preds = %.lr.ph.i32
  %i.at = load ptr, ptr %i.ap, align 8
  %wide.trip.count.i35 = zext nneg i32 %i.ar to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next.i37 = add nuw nsw i64 %indvars.iv.i36, 1 ; 2 uses
  %exitcond.not.i38 = icmp eq i64 %indvars.iv.next.i37, %wide.trip.count.i35
  br i1 %exitcond.not.i38, label %.loopexit42, label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph12.i34
  %indvars.iv.i36 = phi i64 [ 0, %.lr.ph12.i34 ], [ %indvars.iv.next.i37, %bb.h ] ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.i36
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ao, ptr noundef nonnull dereferenceable(1) %i.av) #8
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %LookupPathOrColumnName.exit39, label %bb.h

LookupPathOrColumnName.exit39:                    ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.az = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.ba = tail call i32 @errcode(i32 noundef 33845380) #6 ; 0 uses
  %i.bb = load ptr, ptr %i.ay, align 8
  %i.bc = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.4, ptr noundef %i.bb) #6 ; 0 uses
  %i.bd = load ptr, ptr %0, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = tail call i32 @parser_errposition(ptr noundef %i.bd, i32 noundef %i.bf) #6 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 203, ptr noundef nonnull @__func__.CheckDuplicateColumnOrPathNames) #6
  unreachable

.loopexit42:                                      ; preds = %bb.h, %.lr.ph.i32, %bb.g
  %i.bh = tail call ptr @lappend(ptr noundef %.val, ptr noundef %i.ao) #6
  store ptr %i.bh, ptr %i.c, align 8
  br label %bb.j

bb.j:                                             ; preds = %.loopexit42, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %i.bi = load i32, ptr %i.a, align 4
  %i.bj = sext i32 %i.bi to i64
  %i.bk = icmp slt i64 %indvars.iv.next, %i.bj
  br i1 %i.bk, label %.lr.ph60, label %.critedge
}

declare ptr @transformExpr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @transformJsonTableColumns(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %4 = alloca %struct.StringInfoData, align 8     ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = load ptr, ptr %0, align 8                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8              ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp eq i32 %i.l, 1
  %i.n = zext i1 %i.m to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = phi i8 [ 0, %bb.a ], [ %i.n, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call i32 @exprType(ptr noundef %i.q) #6
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 88 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %list_length.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4
  br label %list_length.exit

list_length.exit:                                 ; preds = %bb.c, %bb.d
  %i.w = phi i32 [ %i.v, %bb.d ], [ 0, %bb.c ]    ; 4 uses
  %.not69 = icmp eq ptr %1, null                  ; 2 uses
  br i1 %.not69, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %list_length.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 2 uses
  %i.ad = load i32, ptr %i.x, align 4
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph127, label %.critedge.loopexit

.lr.ph127:                                        ; preds = %.lr.ph, %.thread
  %.06486126 = phi i1 [ %.2, %.thread ], [ false, %.lr.ph ] ; 4 uses
  %indvars.iv125 = phi i64 [ %indvars.iv.next, %.thread ], [ 0, %.lr.ph ] ; 2 uses
  %i.af = load ptr, ptr %i.y, align 8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv125
  %i.ah = load ptr, ptr %i.ag, align 8            ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 5 uses
  %i.aj = load i32, ptr %i.ai, align 4
  %.not71 = icmp eq i32 %i.aj, 4
  br i1 %.not71, label %.thread, label %bb.e

.critedge.loopexit:                               ; preds = %.thread, %.lr.ph
  %.pre107 = load ptr, ptr %i.s, align 8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %list_length.exit
  %i.ak = phi ptr [ %i.t, %list_length.exit ], [ %.pre107, %.critedge.loopexit ] ; 2 uses
  %.not.i74 = icmp eq ptr %i.ak, null
  br i1 %.not.i74, label %list_length.exit75, label %list_length.exit75.thread

list_length.exit75:                               ; preds = %.critedge
  %i.al = icmp eq i32 %i.w, 0
  %spec.select = select i1 %i.al, i32 -1, i32 %i.w
  br label %list_length.exit78

list_length.exit75.thread:                        ; preds = %.critedge
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.an = load i32, ptr %i.am, align 4            ; 2 uses
  %i.ao = icmp eq i32 %i.an, %i.w                 ; 2 uses
  %i.ap = add i32 %i.an, -1
  %spec.select120 = select i1 %i.ao, i32 -1, i32 %i.w
  %spec.select121.a = select i1 %i.ao, i32 -1, i32 %i.ap
  br label %list_length.exit78

bb.e:                                             ; preds = %.lr.ph127
  %i.aq = load ptr, ptr %i.z, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call ptr @pstrdup(ptr noundef %i.as) #6
  %i.au = call ptr @makeString(ptr noundef %i.at) #6
  %i.av = call ptr @lappend(ptr noundef %i.aq, ptr noundef %i.au) #6
  store ptr %i.av, ptr %i.z, align 8
  %.pr = load i32, ptr %i.ai, align 4
  switch i32 %.pr, label %bb.q [
    i32 0, label %bb.f
    i32 1, label %bb.i
    i32 3, label %bb.n
    i32 2, label %bb.n
    i32 4, label %.thread
  ]

bb.f:                                             ; preds = %bb.e
  br i1 %.06486126, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aw = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.ax = call i32 @errcode(i32 noundef 16801924) #6 ; 0 uses
  %i.ay = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.6) #6 ; 0 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.ba = load i32, ptr %i.az, align 8
  %i.bb = call i32 @parser_errposition(ptr noundef %i.d, i32 noundef %i.ba) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 294, ptr noundef nonnull @__func__.transformJsonTableColumns) #6
  unreachable

bb.h:                                             ; preds = %bb.f
  store i32 23, ptr %i.b, align 4
  store i32 -1, ptr %i.c, align 4
  br label %bb.r

bb.i:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  call void @typenameTypeIdAndMod(ptr noundef %i.d, ptr noundef %i.bd, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #6
  %i.be = load i32, ptr %i.b, align 4
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %bb.l, %bb.i
  %.tr.i = phi i32 [ %i.be, %bb.i ], [ %i.bk, %bb.l ] ; 4 uses
  %i.bf = call signext i8 @get_typtype(i32 noundef %.tr.i) #6, !inline_history !6 ; 2 uses
  switch i32 %.tr.i, label %bb.j [
    i32 3802, label %isCompositeType.exit.thread
    i32 2249, label %isCompositeType.exit.thread
    i32 114, label %isCompositeType.exit.thread
  ]

bb.j:                                             ; preds = %tailrecurse.i
  %i.bg = call i32 @get_element_type(i32 noundef %.tr.i) #6, !inline_history !6
  %i.bh = icmp ne i32 %i.bg, 0
  %i.bi = icmp eq i8 %i.bf, 99
  %or.cond6.i = select i1 %i.bh, i1 true, i1 %i.bi
  br i1 %or.cond6.i, label %isCompositeType.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bj = icmp eq i8 %i.bf, 100
  br i1 %i.bj, label %bb.l, label %isCompositeType.exit

bb.l:                                             ; preds = %bb.k
  %i.bk = call i32 @getBaseType(i32 noundef %.tr.i) #6, !inline_history !6
  br label %tailrecurse.i

isCompositeType.exit:                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ah, i64 44
  %i.bm = load i32, ptr %i.bl, align 4
  %.not72 = icmp eq i32 %i.bm, 0
  br i1 %.not72, label %bb.m, label %isCompositeType.exit.thread

bb.m:                                             ; preds = %isCompositeType.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.bo = load i32, ptr %i.bn, align 8
  %.not73 = icmp eq i32 %i.bo, 0
  br i1 %.not73, label %bb.n, label %isCompositeType.exit.thread

isCompositeType.exit.thread:                      ; preds = %bb.j, %tailrecurse.i, %tailrecurse.i, %tailrecurse.i, %bb.m, %isCompositeType.exit
  store i32 3, ptr %i.ai, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %isCompositeType.exit.thread, %bb.e, %bb.e
  %i.bp = call noundef ptr @palloc0(i64 noundef 16) #6 ; 5 uses
  store i32 34, ptr %i.bp, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  store i32 0, ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store i32 %i.r, ptr %i.br, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i32 -1, ptr %i.bs, align 4
  %i.bt = call noundef ptr @palloc0(i64 noundef 80) #6 ; 13 uses
  store i32 130, ptr %i.bt, align 4
  %i.bu = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %switch.selectcmp.i = icmp ne i32 %i.bu, 2
  %switch.select.i = zext i1 %switch.selectcmp.i to i32
  %switch.selectcmp36.i = icmp eq i32 %i.bu, 1
  %switch.select37.i = select i1 %switch.selectcmp36.i, i32 2, i32 %switch.select.i
  store i32 %switch.select37.i, ptr %i.bv, align 4
  %i.bw = load ptr, ptr %i.ar, align 8
  %i.bx = call ptr @pstrdup(ptr noundef %i.bw) #6
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %i.bx, ptr %i.by, align 8
  %i.bz = call ptr @makeJsonFormat(i32 noundef 0, i32 noundef 0, i32 noundef -1) #6
  %i.ca = call ptr @makeJsonValueExpr(ptr noundef nonnull %i.bp, ptr noundef null, ptr noundef %i.bz) #6
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store ptr %i.ca, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8            ; 2 uses
  %.not.i76 = icmp eq ptr %i.cd, null
  br i1 %.not.i76, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  br label %transformJsonTableColumn.exit

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @initStringInfo(ptr noundef nonnull %4) #6
  call void @appendStringInfoString(ptr noundef nonnull %4, ptr noundef nonnull @.str.8) #6
  %i.cg = load ptr, ptr %i.ar, align 8
  call void @escape_json(ptr noundef nonnull %4, ptr noundef %i.cg) #6
  %i.ch = load ptr, ptr %4, align 8
  %i.ci = call ptr @makeStringConst(ptr noundef %i.ch, i32 noundef -1) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %transformJsonTableColumn.exit

transformJsonTableColumn.exit:                    ; preds = %bb.o, %bb.p
  %.0.i = phi ptr [ %i.cf, %bb.o ], [ %i.ci, %bb.p ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  store ptr %.0.i, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  store ptr %2, ptr %i.ck, align 8
  %i.cl = call noundef ptr @palloc0(i64 noundef 24) #6 ; 3 uses
  store i32 128, ptr %i.cl, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bt, i64 40 ; 3 uses
  store ptr %i.cl, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %i.co, ptr %i.cp, align 8
  %i.cq = call noundef ptr @palloc0(i64 noundef 24) #6 ; 2 uses
  store i32 43, ptr %i.cq, align 4
  %i.cr = load ptr, ptr %i.cm, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store ptr %i.cq, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = load ptr, ptr %i.cm, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr %i.cu, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  store ptr %i.da, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.bt, i64 56
  store ptr %i.dd, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.ah, i64 44
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bt, i64 68
  store i32 %i.dg, ptr %i.dh, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.dj = load i32, ptr %i.di, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  store i32 %i.dj, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.dm = load i32, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bt, i64 72
  store i32 %i.dm, ptr %i.dn, align 8
  %i.do = call ptr @transformExpr(ptr noundef %i.d, ptr noundef nonnull %i.bt, i32 noundef 5) #6 ; 5 uses
  call void @assign_expr_collations(ptr noundef %i.d, ptr noundef %i.do) #6
  %i.dp = call i32 @exprType(ptr noundef %i.do) #6
  store i32 %i.dp, ptr %i.b, align 4
  %i.dq = call i32 @exprTypmod(ptr noundef %i.do) #6
  store i32 %i.dq, ptr %i.c, align 4
  %i.dr = call i32 @exprCollation(ptr noundef %i.do) #6
  %.pre = load i32, ptr %i.b, align 4
  br label %bb.r

bb.q:                                             ; preds = %bb.e
  %i.ds = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.dt = load i32, ptr %i.ai, align 4
  %i.du = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.7, i32 noundef %i.dt) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 343, ptr noundef nonnull @__func__.transformJsonTableColumns) #6
  unreachable

bb.r:                                             ; preds = %transformJsonTableColumn.exit, %bb.h
  %i.dv = phi i32 [ 23, %bb.h ], [ %.pre, %transformJsonTableColumn.exit ]
  %.1 = phi i1 [ true, %bb.h ], [ %.06486126, %transformJsonTableColumn.exit ]
  %.061 = phi i32 [ 0, %bb.h ], [ %i.dr, %transformJsonTableColumn.exit ]
  %.0 = phi ptr [ null, %bb.h ], [ %i.do, %transformJsonTableColumn.exit ]
  %i.dw = load ptr, ptr %i.aa, align 8
  %i.dx = call ptr @lappend_oid(ptr noundef %i.dw, i32 noundef %i.dv) #6
  store ptr %i.dx, ptr %i.aa, align 8
  %i.dy = load ptr, ptr %i.ab, align 8
  %i.dz = load i32, ptr %i.c, align 4
  %i.ea = call ptr @lappend_int(ptr noundef %i.dy, i32 noundef %i.dz) #6
  store ptr %i.ea, ptr %i.ab, align 8
  %i.eb = load ptr, ptr %i.ac, align 8
  %i.ec = call ptr @lappend_oid(ptr noundef %i.eb, i32 noundef %.061) #6
  store ptr %i.ec, ptr %i.ac, align 8
  %i.ed = load ptr, ptr %i.s, align 8
  %i.ee = call ptr @lappend(ptr noundef %i.ed, ptr noundef %.0) #6
  store ptr %i.ee, ptr %i.s, align 8
  br label %.thread

.thread:                                          ; preds = %.lr.ph127, %bb.e, %bb.r
  %.2 = phi i1 [ %.1, %bb.r ], [ %.06486126, %bb.e ], [ %.06486126, %.lr.ph127 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %i.ef = load i32, ptr %i.x, align 4
  %i.eg = sext i32 %i.ef to i64
  %i.eh = icmp slt i64 %indvars.iv.next, %i.eg
  br i1 %i.eh, label %.lr.ph127, label %.critedge.loopexit

list_length.exit78:                               ; preds = %list_length.exit75.thread, %list_length.exit75
  %.063 = phi i32 [ %spec.select120, %list_length.exit75.thread ], [ %spec.select, %list_length.exit75 ]
  %.062 = phi i32 [ %spec.select121.a, %list_length.exit75.thread ], [ -1, %list_length.exit75 ]
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  br i1 %.not69, label %transformJsonTableNestedColumns.exit, label %.lr.ph92

.lr.ph92:                                         ; preds = %list_length.exit78
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.em = load i32, ptr %i.ei, align 4
  %i.en = icmp sgt i32 %i.em, 0
  br i1 %i.en, label %.lr.ph99, label %transformJsonTableNestedColumns.exit

.lr.ph99:                                         ; preds = %.lr.ph92, %bb.w
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %bb.w ], [ 0, %.lr.ph92 ] ; 2 uses
  %.019.i9098 = phi ptr [ %.2.i, %bb.w ], [ null, %.lr.ph92 ] ; 3 uses
  %i.eo = load ptr, ptr %i.ej, align 8
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv104
  %i.eq = load ptr, ptr %i.ep, align 8            ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.es = load i32, ptr %i.er, align 4
  %.not22.i = icmp eq i32 %i.es, 4
  br i1 %.not22.i, label %bb.s, label %bb.w

bb.s:                                             ; preds = %.lr.ph99
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 24 ; 3 uses
  %i.eu = load ptr, ptr %i.et, align 8            ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.ey = load i32, ptr %i.ek, align 8            ; 2 uses
  %i.ez = add i32 %i.ey, 1
  store i32 %i.ez, ptr %i.ek, align 8
  %i.fa = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull @.str.5, i32 noundef %i.ey) #6 ; 0 uses
  %i.fb = call ptr @pstrdup(ptr noundef nonnull %i.a) #6 ; 2 uses
  %i.fc = load ptr, ptr %i.el, align 8
  %i.fd = call ptr @lappend(ptr noundef %i.fc, ptr noundef %i.fb) #6
  store ptr %i.fd, ptr %i.el, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.fe = load ptr, ptr %i.et, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store ptr %i.fb, ptr %i.ff, align 8
  %.pre108 = load ptr, ptr %i.et, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.fg = phi ptr [ %.pre108, %bb.t ], [ %i.eu, %bb.s ]
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eq, i64 48
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = call fastcc ptr @transformJsonTableColumns(ptr noundef nonnull %0, ptr noundef %i.fi, ptr noundef %2, ptr noundef %i.fg), !inline_history !7 ; 2 uses
  %.not23.i = icmp eq ptr %.019.i9098, null
  br i1 %.not23.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fk = call noundef ptr @palloc0(i64 noundef 24) #6 ; 4 uses
  store i32 51, ptr %i.fk, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store ptr %.019.i9098, ptr %i.fl, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  store ptr %i.fj, ptr %i.fm, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %.lr.ph99
  %.2.i = phi ptr [ %.019.i9098, %.lr.ph99 ], [ %i.fk, %bb.v ], [ %i.fj, %bb.u ] ; 2 uses
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %i.fn = load i32, ptr %i.ei, align 4
  %i.fo = sext i32 %i.fn to i64
  %i.fp = icmp slt i64 %indvars.iv.next105, %i.fo
  br i1 %i.fp, label %.lr.ph99, label %transformJsonTableNestedColumns.exit

transformJsonTableNestedColumns.exit:             ; preds = %bb.w, %.lr.ph92, %list_length.exit78
  %.019.i.lcssa = phi ptr [ null, %list_length.exit78 ], [ null, %.lr.ph92 ], [ %.2.i, %bb.w ]
  %i.fq = call noundef ptr @palloc0(i64 noundef 40) #6 ; 8 uses
  store i32 50, ptr %i.fq, align 4
  %i.fr = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = call i64 @DirectFunctionCall1Coll(ptr noundef nonnull @jsonpath_in, i32 noundef 0, i64 noundef %i.fv) #6
  %i.fx = call ptr @makeConst(i32 noundef 4072, i32 noundef -1, i32 noundef 0, i32 noundef -1, i64 noundef %i.fw, i1 noundef zeroext false, i1 noundef zeroext false) #6
  store i32 50, ptr %i.fq, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = call ptr @makeJsonTablePath(ptr noundef %i.fx, ptr noundef %i.fz) #6
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store ptr %i.ga, ptr %i.gb, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store i8 %i.o, ptr %i.gc, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  store ptr %.019.i.lcssa, ptr %i.gd, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fq, i64 32
  store i32 %.063, ptr %i.ge, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fq, i64 36
  store i32 %.062, ptr %i.gf, align 4
  ret ptr %i.fq
}

declare ptr @copyObjectImpl(ptr noundef) local_unnamed_addr #4

declare zeroext i1 @contain_vars_of_level(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @addRangeTableEntryForTableFunc(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @palloc0(i64 noundef) local_unnamed_addr #4

declare ptr @lappend(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare i32 @pg_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

declare ptr @pstrdup(ptr noundef) local_unnamed_addr #4

declare i32 @exprType(ptr noundef) local_unnamed_addr #4

declare ptr @makeString(ptr noundef) local_unnamed_addr #4

declare void @typenameTypeIdAndMod(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @assign_expr_collations(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @exprTypmod(ptr noundef) local_unnamed_addr #4

declare i32 @exprCollation(ptr noundef) local_unnamed_addr #4

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #4

declare ptr @lappend_oid(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @lappend_int(ptr noundef, i32 noundef) local_unnamed_addr #4

declare signext i8 @get_typtype(i32 noundef) local_unnamed_addr #4

declare i32 @get_element_type(i32 noundef) local_unnamed_addr #4

declare i32 @getBaseType(i32 noundef) local_unnamed_addr #4

declare ptr @makeJsonValueExpr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @makeJsonFormat(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @initStringInfo(ptr noundef) local_unnamed_addr #4

declare void @appendStringInfoString(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @escape_json(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @makeStringConst(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @makeConst(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

declare i64 @DirectFunctionCall1Coll(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @jsonpath_in(ptr noundef) #4

declare ptr @makeJsonTablePath(ptr noundef, ptr noundef) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{i8 0, i8 2}
!5 = !{}
!6 = distinct !{null}
!7 = distinct !{null}
end_hunk_0
