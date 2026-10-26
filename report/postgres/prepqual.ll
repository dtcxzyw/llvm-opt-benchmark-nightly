Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/prepqual?download=true
inline.NumInlined: 30
inline.NumDeleted: 8
begin_hunk_0_@negate_clause:bb.a

bb.r:                                             ; preds = %bb.c
  %i.di = tail call noundef ptr @palloc0(i64 noundef 24) #4 ; 5 uses
  store i32 53, ptr %i.di, align 4
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store ptr %i.dk, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 8            ; 2 uses
  %i.do = icmp ult i32 %i.dn, 6
  br i1 %i.do, label %switch.lookup, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dp = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #3 ; 0 uses
  %i.dq = load i32, ptr %i.dm, align 8
  %i.dr = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.3, i32 noundef %i.dq) #4 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 250, ptr noundef nonnull @__func__.negate_clause) #4
  unreachable

switch.lookup:                                    ; preds = %bb.r
  %i.ds = zext nneg i32 %i.dn to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.negate_clause, i64 %i.ds
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.dt = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store i32 %switch.ext, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.dv = load i32, ptr %i.du, align 4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.di, i64 20
  store i32 %i.dv, ptr %i.dw, align 4
  br label %bb.t

.thread:                                          ; preds = %bb.p, %bb.i, %bb.g, %bb.c
  %i.dx = tail call ptr @make_notclause(ptr noundef nonnull %0) #4
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.j, %bb.h, %.critedge, %.critedge113, %bb.n, %bb.e, %bb.f, %.thread, %switch.lookup
  %.5 = phi ptr [ %i.dx, %.thread ], [ %i.di, %switch.lookup ], [ %i.o, %bb.h ], [ %i.am, %bb.j ], [ %i.k, %bb.f ], [ %i.cu, %bb.q ], [ %i.h, %bb.e ], [ %i.bu, %.critedge ], [ %i.cj, %.critedge113 ], [ %i.cn, %bb.n ]
  ret ptr %.5
}

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #2

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @makeBoolConst(i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @get_negator(i32 noundef) local_unnamed_addr #2

declare ptr @lappend(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @make_orclause(ptr noundef) local_unnamed_addr #2

declare ptr @make_andclause(ptr noundef) local_unnamed_addr #2

declare ptr @make_notclause(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @canonicalize_qual(ptr nofree noundef readonly captures(address_is_null, ret: address, provenance) %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc ptr @find_duplicate_ors(ptr noundef nonnull %0, i1 noundef zeroext %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @find_duplicate_ors(ptr nofree noundef readonly captures(address_is_null, ret: address, provenance) %0, i1 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %process_duplicate_ors.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 4
  %i.b = icmp eq i32 %i.a, 21
  br i1 %i.b, label %is_orclause.exit, label %process_duplicate_ors.exit

is_orclause.exit:                                 ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  switch i32 %i.d, label %process_duplicate_ors.exit [
    i32 1, label %bb.c
    i32 0, label %bb.ad
  ]

bb.c:                                             ; preds = %is_orclause.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %.not77 = icmp eq ptr %i.f, null
  br i1 %.not77, label %._crit_edge159, label %.lr.ph156

.lr.ph156:                                        ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.i = load i32, ptr %i.g, align 4
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph168, label %._crit_edge159

.lr.ph168:                                        ; preds = %.lr.ph156, %bb.k
  %indvars.iv183 = phi i64 [ %indvars.iv.next184, %bb.k ], [ 0, %.lr.ph156 ] ; 2 uses
  %.061153167 = phi ptr [ %.162.ph, %bb.k ], [ null, %.lr.ph156 ] ; 4 uses
  %i.k = load ptr, ptr %i.h, align 8
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv183
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call fastcc ptr @find_duplicate_ors(ptr noundef %i.m, i1 noundef zeroext %1) ; 7 uses
  %.not79 = icmp eq ptr %i.n, null
  br i1 %.not79, label %bb.j, label %bb.d

bb.d:                                             ; preds = %.lr.ph168
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp eq i32 %i.o, 7
  br i1 %i.p, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.r = load i8, ptr %i.q, align 8, !range !4, !noundef !5
  %i.s = trunc nuw i8 %i.r to i1                  ; 2 uses
  br i1 %1, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %i.s, label %.split164, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.u = load i64, ptr %i.t, align 8
  %.not124 = icmp eq i64 %i.u, 0
  br i1 %.not124, label %bb.k, label %.split164

.split164:                                        ; preds = %bb.f, %bb.g
  %i.v = tail call ptr @makeBoolConst(i1 noundef zeroext true, i1 noundef zeroext false) #4
  br label %process_duplicate_ors.exit

bb.h:                                             ; preds = %bb.e
  br i1 %i.s, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.x = load i64, ptr %i.w, align 8
  %.not123 = icmp eq i64 %i.x, 0
  br i1 %.not123, label %bb.k, label %process_duplicate_ors.exit

bb.j:                                             ; preds = %bb.d, %.lr.ph168
  %i.y = tail call ptr @lappend(ptr noundef %.061153167, ptr noundef %i.n) #4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.g, %bb.i
  %.162.ph = phi ptr [ %.061153167, %bb.g ], [ %.061153167, %bb.i ], [ %.061153167, %bb.h ], [ %i.y, %bb.j ] ; 2 uses
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1 ; 2 uses
  %i.z = load i32, ptr %i.g, align 4
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp slt i64 %indvars.iv.next184, %i.aa
  br i1 %i.ab, label %.lr.ph168, label %._crit_edge159

._crit_edge159:                                   ; preds = %bb.k, %.lr.ph156, %bb.c
  %.061.lcssa = phi ptr [ null, %bb.c ], [ null, %.lr.ph156 ], [ %.162.ph, %bb.k ]
  %i.ac = tail call fastcc ptr @pull_ors(ptr noundef %.061.lcssa) ; 6 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.l, label %list_length.exit.i

bb.l:                                             ; preds = %._crit_edge159
  %i.ae = tail call ptr @makeBoolConst(i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %process_duplicate_ors.exit

list_length.exit.i:                               ; preds = %._crit_edge159
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 5 uses
  %i.ag = load i32, ptr %i.af, align 4            ; 3 uses
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %bb.m, label %.preheader177.i

.preheader177.i:                                  ; preds = %list_length.exit.i
  %.not182.i = icmp sgt i32 %i.ag, 0
  br i1 %.not182.i, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %.preheader177.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %wide.trip.count.i = zext nneg i32 %i.ag to i64
  br label %bb.n

bb.m:                                             ; preds = %list_length.exit.i
  %i.ak = getelementptr i8, ptr %i.ac, i64 16
  %.val126.i = load ptr, ptr %i.ak, align 8
  %i.al = load ptr, ptr %.val126.i, align 8
  br label %process_duplicate_ors.exit

bb.n:                                             ; preds = %bb.r, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.r ] ; 2 uses
  %.0102184.i = phi i32 [ 0, %.lr.ph.i ], [ %.1103.i, %bb.r ] ; 2 uses
  %.0105183.i = phi ptr [ null, %.lr.ph.i ], [ %.1106.i, %bb.r ] ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i
  %i.an = load ptr, ptr %i.am, align 8            ; 6 uses
  %.not.i127.i = icmp eq ptr %i.an, null
  br i1 %.not.i127.i, label %is_andclause.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = icmp eq i32 %i.ao, 21
  br i1 %i.ap, label %is_andclause.exit.i, label %is_andclause.exit.thread.i

is_andclause.exit.i:                              ; preds = %bb.o
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.p, label %is_andclause.exit.thread.i

bb.p:                                             ; preds = %is_andclause.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.au = load ptr, ptr %i.at, align 8            ; 3 uses
  %.not.i128.i = icmp eq ptr %i.au, null
  br i1 %.not.i128.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = load i32, ptr %i.av, align 4
  br label %bb.r

is_andclause.exit.thread.i:                       ; preds = %is_andclause.exit.i, %bb.o, %bb.n
  %.lcssa221 = phi ptr [ %i.an, %is_andclause.exit.i ], [ %i.an, %bb.o ], [ null, %bb.n ]
  %i.ax = tail call ptr @list_make1_impl(i32 noundef 1, ptr %.lcssa221) #4
  br label %.critedge.i

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ay = phi i32 [ %i.aw, %bb.q ], [ 0, %bb.p ]  ; 2 uses
  %i.az = icmp eq ptr %.0105183.i, null
  %i.ba = icmp slt i32 %i.ay, %.0102184.i
  %or.cond.i = select i1 %i.az, i1 true, i1 %i.ba ; 2 uses
  %.1106.i = select i1 %or.cond.i, ptr %i.au, ptr %.0105183.i ; 2 uses
  %.1103.i = select i1 %or.cond.i, i32 %i.ay, i32 %.0102184.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge.i, label %bb.n, !llvm.loop !6

.critedge.i:                                      ; preds = %bb.r, %is_andclause.exit.thread.i, %.preheader177.i
  %.3108.i = phi ptr [ %i.ax, %is_andclause.exit.thread.i ], [ null, %.preheader177.i ], [ %.1106.i, %bb.r ]
  %i.bb = tail call ptr @list_union(ptr noundef null, ptr noundef %.3108.i) #4 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4 ; 2 uses
  %.not112.i = icmp eq ptr %i.bb, null
  br i1 %.not112.i, label %.critedge121.thread.i, label %.lr.ph191.i

.lr.ph191.i:                                      ; preds = %.critedge.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.bf = load i32, ptr %i.bc, align 4
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph198.i, label %.critedge121.thread.i

.lr.ph198.i:                                      ; preds = %.lr.ph191.i, %.critedge123.thread.i
  %indvars.iv210.i = phi i64 [ %indvars.iv.next211.i, %.critedge123.thread.i ], [ 0, %.lr.ph191.i ] ; 2 uses
  %.099189197.i = phi ptr [ %.1100.i, %.critedge123.thread.i ], [ null, %.lr.ph191.i ] ; 3 uses
  %i.bh = load ptr, ptr %i.bd, align 8
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv210.i
  %i.bj = load ptr, ptr %i.bi, align 8            ; 3 uses
  %i.bk = load i32, ptr %i.af, align 4
  %.not119186.i = icmp sgt i32 %i.bk, 0
  br i1 %.not119186.i, label %.lr.ph188.i, label %.critedge123.i

.critedge121.i:                                   ; preds = %.critedge123.thread.i
  %i.bl = icmp eq ptr %.1100.i, null
  br i1 %i.bl, label %.critedge121.thread.i, label %.preheader.i

.preheader.i:                                     ; preds = %.critedge121.i
  %i.bm = load i32, ptr %i.af, align 4
  %.not115200.i = icmp sgt i32 %i.bm, 0
  br i1 %.not115200.i, label %.lr.ph203.i, label %list_length.exit139.i

.lr.ph188.i:                                      ; preds = %.lr.ph198.i, %bb.u
  %indvars.iv207.i = phi i64 [ %indvars.iv.next208.i, %bb.u ], [ 0, %.lr.ph198.i ] ; 2 uses
  %i.bn = load ptr, ptr %i.be, align 8
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv207.i
  %i.bp = load ptr, ptr %i.bo, align 8            ; 5 uses
  %.not.i130.i = icmp eq ptr %i.bp, null
  br i1 %.not.i130.i, label %is_andclause.exit131.thread.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph188.i
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = icmp eq i32 %i.bq, 21
  br i1 %i.br, label %is_andclause.exit131.i, label %is_andclause.exit131.thread.i

is_andclause.exit131.i:                           ; preds = %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.t, label %is_andclause.exit131.thread.i

bb.t:                                             ; preds = %is_andclause.exit131.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = tail call zeroext i1 @list_member(ptr noundef %i.bw, ptr noundef %i.bj) #4
  br i1 %i.bx, label %bb.u, label %.critedge123.thread.i

is_andclause.exit131.thread.i:                    ; preds = %is_andclause.exit131.i, %bb.s, %.lr.ph188.i
  %i.by = tail call zeroext i1 @equal(ptr noundef %i.bj, ptr noundef %i.bp) #4
  br i1 %i.by, label %bb.u, label %.critedge123.thread.i

bb.u:                                             ; preds = %is_andclause.exit131.thread.i, %bb.t
  %indvars.iv.next208.i = add nuw nsw i64 %indvars.iv207.i, 1 ; 2 uses
  %i.bz = load i32, ptr %i.af, align 4
  %i.ca = sext i32 %i.bz to i64
  %.not119.i = icmp slt i64 %indvars.iv.next208.i, %i.ca
  br i1 %.not119.i, label %.lr.ph188.i, label %.critedge123.i, !llvm.loop !7

.critedge123.i:                                   ; preds = %bb.u, %.lr.ph198.i
  %i.cb = tail call ptr @lappend(ptr noundef %.099189197.i, ptr noundef %i.bj) #4
  br label %.critedge123.thread.i

.critedge123.thread.i:                            ; preds = %is_andclause.exit131.thread.i, %bb.t, %.critedge123.i
  %.1100.i = phi ptr [ %i.cb, %.critedge123.i ], [ %.099189197.i, %bb.t ], [ %.099189197.i, %is_andclause.exit131.thread.i ] ; 9 uses
  %indvars.iv.next211.i = add nuw nsw i64 %indvars.iv210.i, 1 ; 2 uses
  %i.cc = load i32, ptr %i.bc, align 4
  %i.cd = sext i32 %i.cc to i64
  %i.ce = icmp slt i64 %indvars.iv.next211.i, %i.cd
  br i1 %i.ce, label %.lr.ph198.i, label %.critedge121.i

.critedge121.thread.i:                            ; preds = %.critedge121.i, %.lr.ph191.i, %.critedge.i
  %i.cf = tail call ptr @make_orclause(ptr noundef nonnull %i.ac) #4
  br label %process_duplicate_ors.exit

.lr.ph203.i:                                      ; preds = %.preheader.i, %.thread149.i
  %indvars.iv213.i = phi i64 [ %indvars.iv.next214.i, %.thread149.i ], [ 0, %.preheader.i ] ; 2 uses
  %.095201.i = phi ptr [ %i.cy, %.thread149.i ], [ null, %.preheader.i ]
  %i.cg = load ptr, ptr %i.be, align 8
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv213.i
  %i.ci = load ptr, ptr %i.ch, align 8            ; 6 uses
  %.not.i132.i = icmp eq ptr %i.ci, null
  br i1 %.not.i132.i, label %is_andclause.exit133.thread.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph203.i
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = icmp eq i32 %i.cj, 21
  br i1 %i.ck, label %is_andclause.exit133.i, label %is_andclause.exit133.thread.i

is_andclause.exit133.i:                           ; preds = %bb.v
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.w, label %is_andclause.exit133.thread.i

bb.w:                                             ; preds = %is_andclause.exit133.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = tail call ptr @list_difference(ptr noundef %i.cp, ptr noundef nonnull %.1100.i) #4 ; 4 uses
  %.not116.not.i = icmp eq ptr %i.cq, null
  br i1 %.not116.not.i, label %list_length.exit139.i, label %list_length.exit135.i

list_length.exit135.i:                            ; preds = %bb.w
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = icmp eq i32 %i.cs, 1
  br i1 %i.ct, label %bb.x, label %bb.y

bb.x:                                             ; preds = %list_length.exit135.i
  %i.cu = getelementptr i8, ptr %i.cq, i64 16
  %.val.i = load ptr, ptr %i.cu, align 8
  %i.cv = load ptr, ptr %.val.i, align 8
  br label %.thread149.i

bb.y:                                             ; preds = %list_length.exit135.i
  %i.cw = tail call ptr @make_andclause(ptr noundef nonnull %i.cq) #4
  br label %.thread149.i

is_andclause.exit133.thread.i:                    ; preds = %is_andclause.exit133.i, %bb.v, %.lr.ph203.i
  %i.cx = tail call zeroext i1 @list_member(ptr noundef nonnull %.1100.i, ptr noundef %i.ci) #4
  br i1 %i.cx, label %list_length.exit139.i, label %.thread149.i

.thread149.i:                                     ; preds = %is_andclause.exit133.thread.i, %bb.y, %bb.x
  %.sink.i = phi ptr [ %i.cv, %bb.x ], [ %i.cw, %bb.y ], [ %i.ci, %is_andclause.exit133.thread.i ]
  %i.cy = tail call ptr @lappend(ptr noundef %.095201.i, ptr noundef %.sink.i) #4 ; 5 uses
  %indvars.iv.next214.i = add nuw nsw i64 %indvars.iv213.i, 1 ; 2 uses
  %i.cz = load i32, ptr %i.af, align 4
  %i.da = sext i32 %i.cz to i64
  %.not115.i = icmp slt i64 %indvars.iv.next214.i, %i.da
  br i1 %.not115.i, label %.lr.ph203.i, label %.critedge125.i, !llvm.loop !8

.critedge125.i:                                   ; preds = %.thread149.i
  %.not117.i = icmp eq ptr %i.cy, null
  br i1 %.not117.i, label %list_length.exit139.i, label %list_length.exit137.i

list_length.exit137.i:                            ; preds = %.critedge125.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.dc = load i32, ptr %i.db, align 4
  %i.dd = icmp eq i32 %i.dc, 1
  br i1 %i.dd, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %list_length.exit137.i
  %i.de = getelementptr i8, ptr %i.cy, i64 16
  %.5.val.i = load ptr, ptr %i.de, align 8
  %i.df = load ptr, ptr %.5.val.i, align 8
  br label %bb.ab

bb.aa:                                            ; preds = %list_length.exit137.i
  %i.dg = tail call fastcc ptr @pull_ors(ptr noundef nonnull %i.cy)
  %i.dh = tail call ptr @make_orclause(ptr noundef %i.dg) #4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sink227.i = phi ptr [ %i.df, %bb.z ], [ %i.dh, %bb.aa ]
  %i.di = tail call ptr @lappend(ptr noundef nonnull %.1100.i, ptr noundef %.sink227.i) #4 ; 2 uses
  %.not.i138.i = icmp eq ptr %i.di, null
  br i1 %.not.i138.i, label %list_length.exit139.thread.i, label %list_length.exit139.i

list_length.exit139.i:                            ; preds = %is_andclause.exit133.thread.i, %bb.w, %bb.ab, %.critedge125.i, %.preheader.i
  %.2101173.i = phi ptr [ %i.di, %bb.ab ], [ %.1100.i, %.critedge125.i ], [ %.1100.i, %.preheader.i ], [ %.1100.i, %bb.w ], [ %.1100.i, %is_andclause.exit133.thread.i ] ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.2101173.i, i64 4
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = icmp eq i32 %i.dk, 1
  br i1 %i.dl, label %bb.ac, label %list_length.exit139.thread.i

bb.ac:                                            ; preds = %list_length.exit139.i
  %i.dm = getelementptr i8, ptr %.2101173.i, i64 16
  %.2101.val.i = load ptr, ptr %i.dm, align 8
  %i.dn = load ptr, ptr %.2101.val.i, align 8
  br label %process_duplicate_ors.exit

list_length.exit139.thread.i:                     ; preds = %list_length.exit139.i, %bb.ab
  %.2101174176.i = phi ptr [ %.2101173.i, %list_length.exit139.i ], [ null, %bb.ab ]
  %i.do = tail call fastcc ptr @pull_ands(ptr noundef %.2101174176.i)
  %i.dp = tail call ptr @make_andclause(ptr noundef %i.do) #4
  br label %process_duplicate_ors.exit

end_hunk_0
