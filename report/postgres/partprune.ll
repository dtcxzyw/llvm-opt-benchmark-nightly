Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/partprune?download=true
inline.NumInlined: 89
inline.NumDeleted: 37
begin_hunk_0_@get_matching_partitions:bb.a
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.qr, i64 %indvars.iv.i53
  %i.qt = load i32, ptr %i.qs, align 8            ; 2 uses
  %i.qu = load i32, ptr %i.oz, align 4
  %.not64.i = icmp slt i32 %i.qt, %i.qu
  br i1 %.not64.i, label %bb.cs, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i51, %.peel.next.i
  %i.qv = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #6 ; 0 uses
  %i.qw = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.6) #5 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 3667, ptr noundef nonnull @__func__.perform_pruning_combine_step) #5
  unreachable

bb.cs:                                            ; preds = %.peel.next.i
  %i.qx = sext i32 %i.qt to i64
  %i.qy = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.qx
  %i.qz = load ptr, ptr %i.qy, align 8            ; 3 uses
  %i.ra = load ptr, ptr %i.qz, align 8
  %i.rb = call ptr @bms_int_members(ptr noundef %i.qq, ptr noundef %i.ra) #5 ; 2 uses
  store ptr %i.rb, ptr %i.ob, align 8
  %i.rc = load i8, ptr %i.pa, align 1, !range !5, !noundef !6
  %i.rd = trunc nuw i8 %i.rc to i1
  br i1 %i.rd, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.re = getelementptr inbounds nuw i8, ptr %i.qz, i64 9
  %i.rf = load i8, ptr %i.re, align 1, !range !5, !noundef !6
  store i8 %i.rf, ptr %i.pa, align 1
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.rg = load i8, ptr %i.pb, align 8, !range !5, !noundef !6
  %i.rh = trunc nuw i8 %i.rg to i1
  br i1 %i.rh, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qz, i64 8
  %i.rj = load i8, ptr %i.ri, align 8, !range !5, !noundef !6
  store i8 %i.rj, ptr %i.pb, align 8
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %indvars.iv.next.i54 = add nuw nsw i64 %indvars.iv.i53, 1 ; 2 uses
  %i.rk = load i32, ptr %i.ow, align 4
  %i.rl = sext i32 %i.rk to i64
  %.not.i55 = icmp slt i64 %indvars.iv.next.i54, %i.rl
  br i1 %.not.i55, label %.peel.next.i, label %perform_pruning_combine_step.exit, !llvm.loop !16

bb.cx:                                            ; preds = %bb.c
  %i.rm = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #6 ; 0 uses
  %i.rn = load i32, ptr %i.ac, align 4
  %i.ro = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str, i32 noundef %i.rn) #5 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 893, ptr noundef nonnull @__func__.get_matching_partitions) #5
  unreachable

perform_pruning_combine_step.exit:                ; preds = %bb.cw, %bb.cr, %.preheader.i, %bb.ck, %.preheader70.i, %bb.cj, %bb.ci, %perform_pruning_base_step.exit
  %.sink = phi ptr [ %.3.i, %perform_pruning_base_step.exit ], [ %i.ob, %bb.cr ], [ %i.ob, %.preheader.i ], [ %i.ob, %bb.ci ], [ %i.ob, %bb.cj ], [ %i.ob, %.preheader70.i ], [ %i.ob, %bb.ck ], [ %i.ob, %bb.cw ]
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.rq = load i32, ptr %i.rp, align 4
  %i.rr = sext i32 %i.rq to i64
  %i.rs = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.rr
  store ptr %.sink, ptr %i.rs, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.rt = load i32, ptr %i.f, align 4
  %i.ru = sext i32 %i.rt to i64
  %i.rv = icmp slt i64 %indvars.iv.next, %i.ru
  br i1 %i.rv, label %bb.c, label %.critedge, !llvm.loop !17

bb.cy:                                            ; preds = %.lr.ph74, %bb.db
  %i.rw = phi i32 [ %i.al, %.lr.ph74 ], [ %i.sl, %bb.db ] ; 2 uses
  %.073 = phi i8 [ %i.aj, %.lr.ph74 ], [ %.1, %bb.db ] ; 2 uses
  %.04272 = phi ptr [ null, %.lr.ph74 ], [ %.143, %bb.db ] ; 2 uses
  %i.rx = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 40
  %i.rz = load ptr, ptr %i.ry, align 8
  %i.sa = zext nneg i32 %i.rw to i64
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %i.sa
  %i.sc = load i32, ptr %i.sb, align 4            ; 2 uses
  %i.sd = icmp slt i32 %i.sc, 0
  br i1 %i.sd, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.se = getelementptr inbounds nuw i8, ptr %i.rx, i64 52
  %i.sf = load i32, ptr %i.se, align 4
  %i.sg = icmp ne i32 %i.sf, -1
  %i.sh = zext i1 %i.sg to i8
  %i.si = or i8 %.073, %i.sh
  br label %bb.db, !llvm.loop !18

bb.da:                                            ; preds = %bb.cy
  %i.sj = call ptr @bms_add_member(ptr noundef %.04272, i32 noundef %i.sc) #5
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %.143 = phi ptr [ %.04272, %bb.cz ], [ %i.sj, %bb.da ] ; 2 uses
  %.1 = phi i8 [ %i.si, %bb.cz ], [ %.073, %bb.da ] ; 2 uses
  %i.sk = load ptr, ptr %i.ah, align 8
  %i.sl = call i32 @bms_next_member(ptr noundef %i.sk, i32 noundef %i.rw) #5 ; 2 uses
  %i.sm = icmp sgt i32 %i.sl, -1
  br i1 %i.sm, label %bb.cy, label %._crit_edge

._crit_edge:                                      ; preds = %bb.db, %.critedge
  %.042.lcssa = phi ptr [ null, %.critedge ], [ %.143, %bb.db ] ; 2 uses
  %.0.lcssa = phi i8 [ %i.aj, %.critedge ], [ %.1, %bb.db ]
  %i.sn = getelementptr inbounds nuw i8, ptr %i.ah, i64 9
  %i.so = load i8, ptr %i.sn, align 1, !range !5, !noundef !6
  %i.sp = trunc nuw i8 %i.so to i1
  br i1 %i.sp, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %._crit_edge
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.sr = load ptr, ptr %i.sq, align 8
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 48
  %i.st = load i32, ptr %i.ss, align 8
  %i.su = call ptr @bms_add_member(ptr noundef %.042.lcssa, i32 noundef %i.st) #5
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %._crit_edge
  %.2 = phi ptr [ %i.su, %bb.dc ], [ %.042.lcssa, %._crit_edge ] ; 2 uses
  %i.sv = trunc nuw i8 %.0.lcssa to i1
  br i1 %i.sv, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.sw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.sx = load ptr, ptr %i.sw, align 8
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 52
  %i.sz = load i32, ptr %i.sy, align 4
  %i.ta = call ptr @bms_add_member(ptr noundef %.2, i32 noundef %i.sz) #5
  br label %bb.df

bb.df:                                            ; preds = %bb.dd, %bb.de, %list_length.exit.thread
  %.044 = phi ptr [ %i.l, %list_length.exit.thread ], [ %i.ta, %bb.de ], [ %.2, %bb.dd ]
  ret ptr %.044
}

declare ptr @palloc0(i64 noundef) local_unnamed_addr #2

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #2

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @bms_next_member(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @bms_add_members(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @bms_equal(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @find_appinfos_by_relids(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @adjust_appendrel_attrs(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @adjust_appendrel_attrs_multilevel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @palloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @pull_exec_paramids_walker(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4
  %i.c = icmp eq i32 %i.b, 8
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %1, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 4
  %i.j = tail call ptr @bms_add_member(ptr noundef %i.g, i32 noundef %i.i) #5
  store ptr %i.j, ptr %1, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.k = tail call zeroext i1 @expression_tree_walker_impl(ptr noundef nonnull %0, ptr noundef nonnull @pull_exec_paramids_walker, ptr noundef %1) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.a, %bb.e
  %.0 = phi i1 [ %i.k, %bb.e ], [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

declare zeroext i1 @expression_tree_walker_impl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @list_concat_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @gen_partprune_steps_internal(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca [6 x ptr], align 16               ; 11 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 3 uses
  %i.k = alloca i32, align 4                      ; 3 uses
  %i.l = alloca i16, align 2                      ; 6 uses
  %i.m = alloca i8, align 1                       ; 6 uses
  %i.n = alloca i8, align 1                       ; 5 uses
  %i.o = alloca ptr, align 8                      ; 5 uses
  %i.p = alloca ptr, align 8                      ; 6 uses
  %i.q = alloca i32, align 4                      ; 6 uses
  %i.r = alloca [32 x ptr], align 16              ; 6 uses
  %i.s = load ptr, ptr %0, align 8                ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 408
  %i.u = load ptr, ptr %i.t, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #5
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 424
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 52
  %i.y = load i32, ptr %i.x, align 4
  %.not = icmp eq i32 %i.y, -1
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 440
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call zeroext i1 @predicate_refuted_by(ptr noundef %i.aa, ptr noundef %1, i1 noundef zeroext false) #5
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 1, ptr %i.ac, align 1
  br label %.thread341

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.r, i8 0, i64 256, i1 false)
  %.not174 = icmp eq ptr %1, null
  br i1 %.not174, label %.thread785, label %.lr.ph575

.lr.ph575:                                        ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 27 ; 11 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 2 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load i32, ptr %i.ad, align 4
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph1085, label %._crit_edge576

.lr.ph1085:                                       ; preds = %.lr.ph575, %match_clause_to_partition_key.exit.thread275
  %.01455521080 = phi ptr [ %.9.ph, %match_clause_to_partition_key.exit.thread275 ], [ null, %.lr.ph575 ] ; 20 uses
  %.01385581077 = phi i1 [ %.5143.ph, %match_clause_to_partition_key.exit.thread275 ], [ false, %.lr.ph575 ] ; 19 uses
  %.01315621072 = phi ptr [ %.5136.ph, %match_clause_to_partition_key.exit.thread275 ], [ null, %.lr.ph575 ] ; 21 uses
  %.01245681067 = phi ptr [ %.5129.ph, %match_clause_to_partition_key.exit.thread275 ], [ null, %.lr.ph575 ] ; 22 uses
  %indvars.iv7351066 = phi i64 [ %indvars.iv.next736, %match_clause_to_partition_key.exit.thread275 ], [ 0, %.lr.ph575 ] ; 2 uses
  %i.ap = load ptr, ptr %i.ae, align 8
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv7351066
  %i.ar = load ptr, ptr %i.aq, align 8            ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4            ; 2 uses
  %i.at = icmp eq i32 %i.as, 334
  br i1 %i.at, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph1085
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %.pr = load i32, ptr %i.av, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph1085
  %i.aw = phi i32 [ %.pr, %bb.e ], [ %i.as, %.lr.ph1085 ]
  %.0168 = phi ptr [ %i.av, %bb.e ], [ %i.ar, %.lr.ph1085 ] ; 16 uses
  switch i32 %i.aw, label %.thread227 [
    i32 7, label %bb.g
    i32 21, label %is_orclause.exit
  ]

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %.0168, i64 32
  %i.ay = load i8, ptr %i.ax, align 8, !range !5, !noundef !6
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %.0168, i64 24
  %i.bb = load i64, ptr %i.ba, align 8
  %.not352 = icmp eq i64 %i.bb, 0
  br i1 %.not352, label %bb.i, label %.thread227

bb.i:                                             ; preds = %bb.h, %bb.g
  store i8 1, ptr %i.af, align 1
  br label %.thread341

is_orclause.exit:                                 ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %.0168, i64 4
  %i.bd = load i32, ptr %i.bc, align 4
  switch i32 %i.bd, label %.thread227 [
    i32 1, label %bb.j
    i32 0, label %bb.q
  ]

bb.j:                                             ; preds = %is_orclause.exit
  %i.be = getelementptr inbounds nuw i8, ptr %.0168, i64 8
  %i.bf = load ptr, ptr %i.be, align 8            ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 2 uses
  %.not178 = icmp eq ptr %i.bf, null
  br i1 %.not178, label %.critedge605, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bi = load i32, ptr %i.bg, align 4
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %.lr.ph497, label %.critedge605

.lr.ph497:                                        ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ 0, %.lr.ph ] ; 2 uses
  %.0164484496 = phi ptr [ %.2166, %bb.n ], [ null, %.lr.ph ] ; 2 uses
  %.0162485495 = phi i1 [ %.1163, %bb.n ], [ true, %.lr.ph ]
  %i.bk = load ptr, ptr %i.bh, align 8
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call ptr @list_make1_impl(i32 noundef 1, ptr %i.bm) #5
  %i.bo = call fastcc ptr @gen_partprune_steps_internal(ptr noundef %0, ptr noundef %i.bn) ; 3 uses
  %i.bp = load i8, ptr %i.af, align 1, !range !5, !noundef !6
  %i.bq = trunc nuw i8 %i.bp to i1
  store i8 0, ptr %i.af, align 1
  br i1 %i.bq, label %bb.n, label %bb.k

.critedge:                                        ; preds = %bb.n
  br i1 %.1163, label %.critedge605, label %bb.o

bb.k:                                             ; preds = %.lr.ph497
  %.not181 = icmp eq ptr %i.bo, null
  br i1 %.not181, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = getelementptr i8, ptr %i.bo, i64 4
  %.val187 = load i32, ptr %i.br, align 4
  %i.bs = getelementptr i8, ptr %i.bo, i64 16
  %.val188 = load ptr, ptr %i.bs, align 8
  %i.bt = add i32 %.val187, -1
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %.val188, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  br label %.sink.split

bb.m:                                             ; preds = %bb.k
  %i.by = call noundef ptr @palloc0(i64 noundef 24) #5 ; 5 uses
  store i32 396, ptr %i.by, align 4
  %i.bz = load i32, ptr %i.ag, align 4            ; 2 uses
  %i.ca = add i32 %i.bz, 1
  store i32 %i.ca, ptr %i.ag, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 4 ; 2 uses
  store i32 %i.bz, ptr %i.cb, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i32 0, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store ptr null, ptr %i.cd, align 8
  %i.ce = load ptr, ptr %i.ah, align 8
  %i.cf = call ptr @lappend(ptr noundef %i.ce, ptr noundef nonnull %i.by) #5
  store ptr %i.cf, ptr %i.ah, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.l
  %.sink928.in = phi ptr [ %i.bx, %bb.l ], [ %i.cb, %bb.m ]
  %.sink928 = load i32, ptr %.sink928.in, align 4
  %i.cg = call ptr @lappend_int(ptr noundef %.0164484496, i32 noundef %.sink928) #5
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %.lr.ph497
  %.2166 = phi ptr [ %.0164484496, %.lr.ph497 ], [ %i.cg, %.sink.split ] ; 3 uses
  %.1163 = phi i1 [ %.0162485495, %.lr.ph497 ], [ false, %.sink.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ch = load i32, ptr %i.bg, align 4
  %i.ci = sext i32 %i.ch to i64
  %i.cj = icmp slt i64 %indvars.iv.next, %i.ci
  br i1 %i.cj, label %.lr.ph497, label %.critedge

.critedge605:                                     ; preds = %bb.j, %.lr.ph, %.critedge
  store i8 1, ptr %i.af, align 1
  br label %.thread341

bb.o:                                             ; preds = %.critedge
  %.not180 = icmp eq ptr %.2166, null
  br i1 %.not180, label %match_clause_to_partition_key.exit.thread275, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ck = call noundef ptr @palloc0(i64 noundef 24) #5 ; 6 uses
  store i32 396, ptr %i.ck, align 4
  %i.cl = load i32, ptr %i.ag, align 4            ; 2 uses
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ag, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store i32 %i.cl, ptr %i.cn, align 4
end_hunk_0
begin_hunk_1_@gen_partprune_steps_internal:bb.a
  %i.nt = call ptr @lappend(ptr noundef %.0218.i538548, ptr noundef %i.ns) #5, !inline_history !21 ; 2 uses
  %indvars.iv.next733 = add nuw nsw i64 %indvars.iv732, 1 ; 2 uses
  %i.nu = load i32, ptr %i.nl, align 4
  %i.nv = sext i32 %i.nu to i64
  %i.nw = icmp slt i64 %indvars.iv.next733, %i.nv
  br i1 %i.nw, label %.lr.ph549, label %.critedge267.i

.critedge267.i:                                   ; preds = %.lr.ph549, %.lr.ph541, %bb.cn
  %.0218.i.lcssa = phi ptr [ null, %bb.cn ], [ null, %.lr.ph541 ], [ %i.nt, %.lr.ph549 ] ; 5 uses
  %i.nx = load i8, ptr %i.dm, align 4, !range !5, !noundef !6
  %i.ny = trunc nuw i8 %i.nx to i1
  br i1 %i.ny, label %bb.co, label %list_length.exit196.thread

bb.co:                                            ; preds = %.critedge267.i
  %.not.i195.a = icmp eq ptr %.0218.i.lcssa, null
  br i1 %.not.i195.a, label %list_length.exit196.thread, label %list_length.exit196

list_length.exit196:                              ; preds = %bb.co
  %i.nz = getelementptr inbounds nuw i8, ptr %.0218.i.lcssa, i64 4
  %i.oa = load i32, ptr %i.nz, align 4
  %i.ob = icmp sgt i32 %i.oa, 1
  br i1 %i.ob, label %bb.cp, label %list_length.exit196.thread

bb.cp:                                            ; preds = %list_length.exit196
  %i.oc = call ptr @makeBoolExpr(i32 noundef 1, ptr noundef nonnull %.0218.i.lcssa, i32 noundef -1) #5, !inline_history !21
  %i.od = call ptr @list_make1_impl(i32 noundef 1, ptr %i.oc) #5, !inline_history !21
  br label %list_length.exit196.thread

list_length.exit196.thread:                       ; preds = %bb.co, %bb.cp, %list_length.exit196, %.critedge267.i
  %.1219.i = phi ptr [ %i.od, %bb.cp ], [ %.0218.i.lcssa, %list_length.exit196 ], [ %.0218.i.lcssa, %.critedge267.i ], [ null, %bb.co ]
  %i.oe = call fastcc ptr @gen_partprune_steps_internal(ptr noundef nonnull %0, ptr noundef %.1219.i), !inline_history !21 ; 2 uses
  %i.of = load i8, ptr %i.af, align 1, !range !5, !noundef !6
  %i.og = trunc nuw i8 %i.of to i1
  br i1 %i.og, label %match_clause_to_partition_key.exit.thread288, label %bb.cq

bb.cq:                                            ; preds = %list_length.exit196.thread
  %i.oh = icmp eq ptr %i.oe, null
  br i1 %i.oh, label %match_clause_to_partition_key.exit.thread275, label %match_clause_to_partition_key.exit.thread299

bb.cr:                                            ; preds = %bb.ac
  %i.oi = load ptr, ptr %i.di, align 8
  %i.oj = call ptr @strip_noop_phvs(ptr noundef %i.oi) #5, !inline_history !21 ; 3 uses
  %i.ok = load i32, ptr %i.oj, align 4
  %i.ol = icmp eq i32 %i.ok, 27
  br i1 %i.ol, label %.lr.ph500, label %._crit_edge

.lr.ph500:                                        ; preds = %bb.cr, %.lr.ph500
  %.0.i499 = phi ptr [ %i.on, %.lr.ph500 ], [ %i.oj, %bb.cr ]
  %i.om = getelementptr inbounds nuw i8, ptr %.0.i499, i64 8
  %i.on = load ptr, ptr %i.om, align 8            ; 3 uses
  %i.oo = load i32, ptr %i.on, align 4
  %i.op = icmp eq i32 %i.oo, 27
  br i1 %i.op, label %.lr.ph500, label %._crit_edge, !llvm.loop !26

._crit_edge:                                      ; preds = %.lr.ph500, %bb.cr
  %.0.i.lcssa = phi ptr [ %i.oj, %bb.cr ], [ %i.on, %.lr.ph500 ]
  %i.oq = call zeroext i1 @equal(ptr noundef nonnull %.0.i.lcssa, ptr noundef %i.dt) #5, !inline_history !21
  br i1 %i.oq, label %bb.cu, label %match_clause_to_partition_key.exit.thread

match_clause_to_partition_key.exit:               ; preds = %bb.ac, %bb.ad, %list_length.exit206, %bb.ab, %.critedge.i
  %.1 = phi ptr [ %.0219, %.critedge.i ], [ null, %bb.ac ], [ null, %bb.ab ], [ null, %bb.ad ], [ null, %list_length.exit206 ]
  %.0 = phi ptr [ null, %.critedge.i ], [ null, %bb.ac ], [ %i.ft, %bb.ab ], [ null, %bb.ad ], [ null, %list_length.exit206 ]
  %.15.i = phi i32 [ %.3.i, %.critedge.i ], [ %.2.i207.ph, %bb.ac ], [ %..i, %bb.ab ], [ %.2.i207.ph, %bb.ad ], [ %.2.i207.ph, %list_length.exit206 ]
  switch i32 %.15.i, label %match_clause_to_partition_key.exit.thread275 [
    i32 1, label %.loopexit
    i32 0, label %match_clause_to_partition_key.exit.thread
    i32 3, label %match_clause_to_partition_key.exit.thread299
  ]

.loopexit:                                        ; preds = %match_clause_to_partition_key.exit, %match_clause_to_partition_key.exit.thread293
  %.1298 = phi ptr [ %i.fy, %match_clause_to_partition_key.exit.thread293 ], [ %.1, %match_clause_to_partition_key.exit ]
  %i.or = call zeroext i1 @bms_is_member(i32 noundef %i.ee, ptr noundef %.01245681067) #5
  br i1 %i.or, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %.loopexit
  store i8 1, ptr %i.af, align 1
  br label %.thread341

bb.ct:                                            ; preds = %.loopexit
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv729 ; 2 uses
  %i.ot = load ptr, ptr %i.os, align 8
  %i.ou = call ptr @lappend(ptr noundef %i.ot, ptr noundef %.1298) #5
  store ptr %i.ou, ptr %i.os, align 8
  br label %match_clause_to_partition_key.exit.thread275

bb.cu:                                            ; preds = %._crit_edge
  %i.ov = load i32, ptr %i.dj, align 8
  %i.ow = icmp eq i32 %i.ov, 1
  br i1 %i.ow, label %.thread307, label %.thread309

.thread309:                                       ; preds = %bb.w, %bb.cu
  %i.ox = call zeroext i1 @bms_is_member(i32 noundef %i.ee, ptr noundef %.01315621072) #5
  br i1 %i.ox, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %.thread309
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv729
  %i.oz = load ptr, ptr %i.oy, align 8
  %.not176 = icmp eq ptr %i.oz, null
  br i1 %.not176, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %.thread309
  store i8 1, ptr %i.af, align 1
  br label %.thread341

bb.cx:                                            ; preds = %bb.cv
  %i.pa = call ptr @bms_add_member(ptr noundef %.01245681067, i32 noundef %i.ee) #5
  br label %match_clause_to_partition_key.exit.thread275

.thread307:                                       ; preds = %bb.w, %bb.cu
  %i.pb = call zeroext i1 @bms_is_member(i32 noundef %i.ee, ptr noundef %.01245681067) #5
  br i1 %i.pb, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %.thread307
  store i8 1, ptr %i.af, align 1
  br label %.thread341

bb.cz:                                            ; preds = %.thread307
  %i.pc = call ptr @bms_add_member(ptr noundef %.01315621072, i32 noundef %i.ee) #5
  br label %match_clause_to_partition_key.exit.thread275

match_clause_to_partition_key.exit.thread299:     ; preds = %match_clause_to_partition_key.exit, %bb.cq
  %.0304 = phi ptr [ %i.oe, %bb.cq ], [ %.0, %match_clause_to_partition_key.exit ]
  %i.pd = call ptr @list_concat(ptr noundef %.01455521080, ptr noundef %.0304) #5
  br label %match_clause_to_partition_key.exit.thread275

match_clause_to_partition_key.exit.thread288:     ; preds = %list_length.exit196.thread, %bb.ab, %match_clause_to_partition_key.exit.thread773
  store i8 1, ptr %i.af, align 1
  br label %.thread341

match_clause_to_partition_key.exit.thread:        ; preds = %match_clause_to_partition_key.exit, %bb.bq, %bb.bp, %bb.bm, %bb.br, %._crit_edge505, %bb.bo, %._crit_edge
  %indvars.iv.next730 = add nuw nsw i64 %indvars.iv729, 1 ; 2 uses
  %i.pe = load i16, ptr %i.ai, align 2
  %i.pf = sext i16 %i.pe to i64
  %i.pg = icmp slt i64 %indvars.iv.next730, %i.pf
  br i1 %i.pg, label %bb.t, label %match_clause_to_partition_key.exit.thread275, !llvm.loop !27

match_clause_to_partition_key.exit.thread275:     ; preds = %match_clause_to_partition_key.exit.thread, %match_clause_to_partition_key.exit, %bb.cb, %bb.bv, %bb.bu, %bb.bw, %bb.ce, %bb.cf, %bb.bs, %.thread227, %bb.cl, %bb.cq, %bb.r, %bb.o, %bb.p, %bb.s, %bb.cx, %bb.cz, %match_clause_to_partition_key.exit.thread299, %bb.ct
  %.9.ph = phi ptr [ %.01455521080, %bb.ct ], [ %.01455521080, %bb.cz ], [ %.01455521080, %bb.cx ], [ %i.pd, %match_clause_to_partition_key.exit.thread299 ], [ %.01455521080, %bb.r ], [ %.01455521080, %bb.cl ], [ %i.de, %bb.s ], [ %i.cs, %bb.p ], [ %.01455521080, %bb.o ], [ %.01455521080, %bb.cq ], [ %.01455521080, %.thread227 ], [ %.01455521080, %bb.cb ], [ %.01455521080, %bb.bs ], [ %.01455521080, %bb.cf ], [ %.01455521080, %bb.ce ], [ %.01455521080, %bb.bw ], [ %.01455521080, %bb.bu ], [ %.01455521080, %bb.bv ], [ %.01455521080, %match_clause_to_partition_key.exit ], [ %.01455521080, %match_clause_to_partition_key.exit.thread ] ; 2 uses
  %.5143.ph = phi i1 [ true, %bb.ct ], [ %.01385581077, %bb.cz ], [ %.01385581077, %bb.cx ], [ %.01385581077, %match_clause_to_partition_key.exit.thread299 ], [ %.01385581077, %bb.r ], [ %.01385581077, %bb.cl ], [ %.01385581077, %bb.s ], [ %.01385581077, %bb.p ], [ %.01385581077, %bb.o ], [ %.01385581077, %bb.cq ], [ %.01385581077, %.thread227 ], [ %.01385581077, %bb.cb ], [ %.01385581077, %bb.bs ], [ %.01385581077, %bb.cf ], [ %.01385581077, %bb.ce ], [ %.01385581077, %bb.bw ], [ %.01385581077, %bb.bu ], [ %.01385581077, %bb.bv ], [ %.01385581077, %match_clause_to_partition_key.exit ], [ %.01385581077, %match_clause_to_partition_key.exit.thread ] ; 2 uses
  %.5136.ph = phi ptr [ %.01315621072, %bb.ct ], [ %i.pc, %bb.cz ], [ %.01315621072, %bb.cx ], [ %.01315621072, %match_clause_to_partition_key.exit.thread299 ], [ %.01315621072, %bb.r ], [ %.01315621072, %bb.cl ], [ %.01315621072, %bb.s ], [ %.01315621072, %bb.p ], [ %.01315621072, %bb.o ], [ %.01315621072, %bb.cq ], [ %.01315621072, %.thread227 ], [ %.01315621072, %bb.cb ], [ %.01315621072, %bb.bs ], [ %.01315621072, %bb.cf ], [ %.01315621072, %bb.ce ], [ %.01315621072, %bb.bw ], [ %.01315621072, %bb.bu ], [ %.01315621072, %bb.bv ], [ %.01315621072, %match_clause_to_partition_key.exit ], [ %.01315621072, %match_clause_to_partition_key.exit.thread ] ; 2 uses
  %.5129.ph = phi ptr [ %.01245681067, %bb.ct ], [ %.01245681067, %bb.cz ], [ %i.pa, %bb.cx ], [ %.01245681067, %match_clause_to_partition_key.exit.thread299 ], [ %.01245681067, %bb.r ], [ %.01245681067, %bb.cl ], [ %.01245681067, %bb.s ], [ %.01245681067, %bb.p ], [ %.01245681067, %bb.o ], [ %.01245681067, %bb.cq ], [ %.01245681067, %.thread227 ], [ %.01245681067, %bb.cb ], [ %.01245681067, %bb.bs ], [ %.01245681067, %bb.cf ], [ %.01245681067, %bb.ce ], [ %.01245681067, %bb.bw ], [ %.01245681067, %bb.bu ], [ %.01245681067, %bb.bv ], [ %.01245681067, %match_clause_to_partition_key.exit ], [ %.01245681067, %match_clause_to_partition_key.exit.thread ] ; 2 uses
  %indvars.iv.next736 = add nuw nsw i64 %indvars.iv7351066, 1 ; 2 uses
  %i.ph = load i32, ptr %i.ad, align 4
  %i.pi = sext i32 %i.ph to i64
  %i.pj = icmp slt i64 %indvars.iv.next736, %i.pi
  br i1 %i.pj, label %.lr.ph1085, label %._crit_edge576

._crit_edge576:                                   ; preds = %match_clause_to_partition_key.exit.thread275, %.lr.ph575
  %.0124568.lcssa = phi ptr [ null, %.lr.ph575 ], [ %.5129.ph, %match_clause_to_partition_key.exit.thread275 ] ; 5 uses
  %.0131562.lcssa = phi ptr [ null, %.lr.ph575 ], [ %.5136.ph, %match_clause_to_partition_key.exit.thread275 ]
  %.0138558.lcssa = phi i1 [ false, %.lr.ph575 ], [ %.5143.ph, %match_clause_to_partition_key.exit.thread275 ]
  %.0145552.lcssa = phi ptr [ null, %.lr.ph575 ], [ %.9.ph, %match_clause_to_partition_key.exit.thread275 ] ; 3 uses
  %i.pk = icmp eq ptr %.0124568.lcssa, null
  br i1 %i.pk, label %bb.dd, label %bb.da

bb.da:                                            ; preds = %._crit_edge576
  %i.pl = load i8, ptr %i.u, align 8
  switch i8 %i.pl, label %bb.dd [
    i8 108, label %bb.dc
    i8 114, label %bb.dc
    i8 104, label %bb.db
  ]

bb.db:                                            ; preds = %bb.da
  %i.pm = call i32 @bms_num_members(ptr noundef nonnull %.0124568.lcssa) #5
  %i.pn = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.po = load i16, ptr %i.pn, align 2
  %i.pp = sext i16 %i.po to i32
  %i.pq = icmp eq i32 %i.pm, %i.pp
  br i1 %i.pq, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.da, %bb.da, %bb.db
  %i.pr = call noundef ptr @palloc0(i64 noundef 40) #5 ; 7 uses
  store i32 395, ptr %i.pr, align 4
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.pt = load i32, ptr %i.ps, align 4            ; 2 uses
  %i.pu = add i32 %i.pt, 1
  store i32 %i.pu, ptr %i.ps, align 4
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pr, i64 4
  store i32 %i.pt, ptr %i.pv, align 4
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  store i16 0, ptr %i.pw, align 8
  %i.px = getelementptr inbounds nuw i8, ptr %i.pr, i64 16
  %i.py = getelementptr inbounds nuw i8, ptr %i.pr, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.px, i8 0, i64 16, i1 false)
  store ptr %.0124568.lcssa, ptr %i.py, align 8
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.qa = load ptr, ptr %i.pz, align 8
  %i.qb = call ptr @lappend(ptr noundef %i.qa, ptr noundef nonnull %i.pr) #5
  store ptr %i.qb, ptr %i.pz, align 8
  %i.qc = call ptr @lappend(ptr noundef %.0145552.lcssa, ptr noundef nonnull %i.pr) #5
  br label %bb.ei

bb.dd:                                            ; preds = %bb.da, %bb.db, %._crit_edge576
  %.0124.lcssa784 = phi ptr [ null, %._crit_edge576 ], [ %.0124568.lcssa, %bb.da ], [ %.0124568.lcssa, %bb.db ] ; 2 uses
  br i1 %.0138558.lcssa, label %bb.de, label %.thread785

bb.de:                                            ; preds = %bb.dd
  %i.qd = load ptr, ptr %0, align 8
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 408
  %i.qf = load ptr, ptr %i.qe, align 8            ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.c, i8 0, i64 48, i1 false)
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 2 ; 2 uses
  %i.qh = load i16, ptr %i.qg, align 2
  %i.qi = icmp sgt i16 %i.qh, 0
  br i1 %i.qi, label %.lr.ph336.i, label %.thread.i

.lr.ph336.i:                                      ; preds = %bb.de
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qf, i64 8 ; 2 uses
  br label %bb.df

.critedge.thread.i:                               ; preds = %.critedge.i193, %.lr.ph.i, %bb.di, %bb.dh
  %.sroa.4.2539.i = phi ptr [ %.sroa.4.3.i, %.critedge.i193 ], [ %.sroa.4.0.i, %bb.di ], [ %.sroa.4.0.i, %.lr.ph.i ], [ %.sroa.4.0.i, %bb.dh ] ; 2 uses
  %indvars.iv.next505.i = add nuw nsw i64 %indvars.iv504.i, 1 ; 2 uses
  %i.qk = load i16, ptr %i.qg, align 2
  %i.ql = sext i16 %i.qk to i64
  %i.qm = icmp slt i64 %indvars.iv.next505.i, %i.ql
  br i1 %i.qm, label %bb.df, label %.thread.i, !llvm.loop !28

bb.df:                                            ; preds = %.critedge.thread.i, %.lr.ph336.i
  %.sroa.4.0.i = phi ptr [ null, %.lr.ph336.i ], [ %.sroa.4.2539.i, %.critedge.thread.i ] ; 4 uses
  %indvars.iv504.i = phi i64 [ 0, %.lr.ph336.i ], [ %indvars.iv.next505.i, %.critedge.thread.i ] ; 5 uses
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv504.i
  %i.qo = load ptr, ptr %i.qn, align 8            ; 3 uses
  %i.qp = load i8, ptr %i.qf, align 8             ; 2 uses
  %i.qq = icmp eq i8 %i.qp, 114
  %i.qr = icmp eq ptr %i.qo, null                 ; 3 uses
  %or.cond.i = select i1 %i.qq, i1 %i.qr, i1 false
  br i1 %or.cond.i, label %.thread.thread.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.qs = icmp eq i8 %i.qp, 104
  %or.cond5.i = select i1 %i.qs, i1 %i.qr, i1 false
  br i1 %or.cond5.i, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.qt = trunc nuw nsw i64 %indvars.iv504.i to i32
  %i.qu = call zeroext i1 @bms_is_member(i32 noundef %i.qt, ptr noundef %.0124.lcssa784) #5
  br i1 %i.qu, label %.critedge.thread.i, label %gen_prune_steps_from_opexps.exit

bb.di:                                            ; preds = %bb.dg
  br i1 %i.qr, label %.critedge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.di
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qo, i64 4 ; 4 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qo, i64 16 ; 2 uses
  %i.qx = load i32, ptr %i.qv, align 4
  %i.qy = icmp sgt i32 %i.qx, 0
  br i1 %i.qy, label %.lr.ph334.i.outer.a, label %.critedge.thread.i

.lr.ph334.i.outer.a:                              ; preds = %.lr.ph.i, %bb.do
  %.sroa.4.1.i.ph.ph = phi ptr [ %.sroa.4.3.i, %bb.do ], [ %.sroa.4.0.i, %.lr.ph.i ] ; 6 uses
  %indvars.iv.i.ph.a = phi i64 [ %indvars.iv.next.i, %bb.do ], [ 0, %.lr.ph.i ]
  %.0209325333.i.ph.a = phi i1 [ %.0209325333.i663, %bb.do ], [ true, %.lr.ph.i ]
  br label %.lr.ph334.i.outer

.lr.ph334.i.outer:                                ; preds = %.lr.ph334.i.outer.a, %.cont.i.thread826
  %indvars.iv.i.ph = phi i64 [ %indvars.iv.next.i830, %.cont.i.thread826 ], [ %indvars.iv.i.ph.a, %.lr.ph334.i.outer.a ] ; 4 uses
  %.0209325333.i.ph = phi i1 [ false, %.cont.i.thread826 ], [ %.0209325333.i.ph.a, %.lr.ph334.i.outer.a ] ; 2 uses
  %2 = load ptr, ptr %i.qw, align 8
  %3 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i.ph
  %4 = load ptr, ptr %3, align 8                  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 5 uses
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %.lr.ph334.i.outer
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %10 = load i32, ptr %9, align 4
  %11 = load ptr, ptr %i.qj, align 8
  %12 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv504.i
  %13 = load i32, ptr %12, align 4
  call void @get_op_opfamily_properties(i32 noundef %10, i32 noundef %13, i1 noundef zeroext false, ptr noundef nonnull %5, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #5
  br label %14

14:                                               ; preds = %8, %.lr.ph334.i.outer
  %15 = load i8, ptr %i.qf, align 8
  switch i8 %15, label %.split.i [
    i8 108, label %16
    i8 114, label %16
    i8 104, label %bb.dm
  ]

16:                                               ; preds = %14, %14
  %17 = load i32, ptr %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [8 x i8], ptr %i.c, i64 %18
  %20 = load ptr, ptr %19, align 8
  %21 = call ptr @lappend(ptr noundef %20, ptr noundef nonnull %4) #5
  %22 = load i32, ptr %5, align 4                 ; 2 uses
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x i8], ptr %i.c, i64 %23
  store ptr %21, ptr %24, align 8
  switch i32 %22, label %bb.do [
    i32 1, label %.cont.i.thread.peel
    i32 5, label %.cont.i.thread.peel
  ]

.cont.i.thread.peel:                              ; preds = %16, %16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  %indvars.iv.next.i350.peel = add nuw nsw i64 %indvars.iv.i.ph, 1 ; 2 uses
  %25 = load i32, ptr %i.qv, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp slt i64 %indvars.iv.next.i350.peel, %26
  br i1 %27, label %.lr.ph334.i, label %.thread.i

.lr.ph334.i:                                      ; preds = %.cont.i.thread.peel, %.thread347
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i830, %.thread347 ], [ %indvars.iv.next.i350.peel, %.cont.i.thread.peel ] ; 3 uses
  %i.qz = load ptr, ptr %i.qw, align 8
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %i.qz, i64 %indvars.iv.i
  %i.rb = load ptr, ptr %i.ra, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 28 ; 5 uses
  %i.rd = load i32, ptr %i.rc, align 4
  %i.re = icmp eq i32 %i.rd, 0
  br i1 %i.re, label %bb.dj, label %bb.dk

.critedge.i193:                                   ; preds = %bb.do
  br i1 %.0209325333.i663, label %.critedge.thread.i, label %.thread.i

bb.dj:                                            ; preds = %.lr.ph334.i
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rb, i64 4
  %i.rg = load i32, ptr %i.rf, align 4
  %i.rh = load ptr, ptr %i.qj, align 8
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %indvars.iv504.i
  %i.rj = load i32, ptr %i.ri, align 4
  call void @get_op_opfamily_properties(i32 noundef %i.rg, i32 noundef %i.rj, i1 noundef zeroext false, ptr noundef nonnull %i.rc, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #5
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %.lr.ph334.i
  %i.rk = load i8, ptr %i.qf, align 8
  switch i8 %i.rk, label %.split.i [
    i8 108, label %bb.dl
    i8 114, label %bb.dl
    i8 104, label %bb.dm
  ]

bb.dl:                                            ; preds = %bb.dk, %bb.dk
  %i.rl = load i32, ptr %i.rc, align 4
  %i.rm = sext i32 %i.rl to i64
  %i.rn = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.rm
  %i.ro = load ptr, ptr %i.rn, align 8
  %i.rp = call ptr @lappend(ptr noundef %i.ro, ptr noundef nonnull %i.rb) #5
  %i.rq = load i32, ptr %i.rc, align 4            ; 2 uses
  %i.rr = sext i32 %i.rq to i64
  %i.rs = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.rr
  store ptr %i.rp, ptr %i.rs, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  %indvars.iv.next.i830 = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %28 = load i32, ptr %i.qv, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp slt i64 %indvars.iv.next.i830, %29   ; 2 uses
  switch i32 %i.rq, label %.cont.i.thread826 [
    i32 1, label %.thread347
    i32 5, label %.thread347
  ]

bb.dm:                                            ; preds = %14, %bb.dk
  %indvars.iv.i.lcssa664 = phi i64 [ %indvars.iv.i, %bb.dk ], [ %indvars.iv.i.ph, %14 ]
  %.0209325333.i.lcssa660 = phi i1 [ false, %bb.dk ], [ %.0209325333.i.ph, %14 ]
  %.lcssa657 = phi ptr [ %i.rb, %bb.dk ], [ %4, %14 ]
  %.lcssa653 = phi ptr [ %i.rc, %bb.dk ], [ %5, %14 ] ; 2 uses
  %i.rt = load i32, ptr %.lcssa653, align 4
  %.not224.i = icmp eq i32 %i.rt, 1
  br i1 %.not224.i, label %bb.dn, label %.split330.i

.split330.i:                                      ; preds = %bb.dm
  %i.ru = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #6 ; 0 uses
  %i.rv = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.3) #5 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1480, ptr noundef nonnull @__func__.gen_prune_steps_from_opexps) #5
  unreachable

bb.dn:                                            ; preds = %bb.dm
  %i.rw = call ptr @lappend(ptr noundef %.sroa.4.1.i.ph.ph, ptr noundef nonnull %.lcssa657) #5
  %i.rx = load i32, ptr %.lcssa653, align 4
  %.sroa.idx.i = icmp eq i32 %i.rx, 1
  %spec.select.i193 = select i1 %.sroa.idx.i, ptr %i.rw, ptr %.sroa.4.1.i.ph.ph
  br label %bb.do

.split.i:                                         ; preds = %14, %bb.dk
  %i.ry = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #6 ; 0 uses
  %i.rz = load i8, ptr %i.qf, align 8
  %i.sa = sext i8 %i.rz to i32
  %i.sb = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.2, i32 noundef %i.sa) #5 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1487, ptr noundef nonnull @__func__.gen_prune_steps_from_opexps) #5
  unreachable

bb.do:                                            ; preds = %16, %bb.dn
  %indvars.iv.i667 = phi i64 [ %indvars.iv.i.lcssa664, %bb.dn ], [ %indvars.iv.i.ph, %16 ]
  %.0209325333.i663 = phi i1 [ %.0209325333.i.lcssa660, %bb.dn ], [ %.0209325333.i.ph, %16 ] ; 2 uses
  %.sroa.4.3.i = phi ptr [ %spec.select.i193, %bb.dn ], [ %.sroa.4.1.i.ph.ph, %16 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i667, 1 ; 2 uses
  %i.sc = load i32, ptr %i.qv, align 4
  %i.sd = sext i32 %i.sc to i64
  %i.se = icmp slt i64 %indvars.iv.next.i, %i.sd
  br i1 %i.se, label %.lr.ph334.i.outer.a, label %.critedge.i193

.cont.i.thread826:                                ; preds = %bb.dl
  br i1 %30, label %.lr.ph334.i.outer, label %.thread.i

.thread347:                                       ; preds = %bb.dl, %bb.dl
  br i1 %30, label %.lr.ph334.i, label %.thread.i, !llvm.loop !29

.thread.i:                                        ; preds = %.critedge.i193, %.critedge.thread.i, %.cont.i.thread826, %.cont.i.thread.peel, %.thread347, %bb.de
  %.sroa.4.4.i = phi ptr [ null, %bb.de ], [ %.sroa.4.1.i.ph.ph, %.cont.i.thread826 ], [ %.sroa.4.1.i.ph.ph, %.thread347 ], [ %.sroa.4.1.i.ph.ph, %.cont.i.thread.peel ], [ %.sroa.4.2539.i, %.critedge.thread.i ], [ %.sroa.4.3.i, %.critedge.i193 ] ; 3 uses
  %.pr.i = load i8, ptr %i.qf, align 8
  switch i8 %.pr.i, label %bb.eg [
    i8 108, label %.thread.thread.i
    i8 114, label %.thread.thread.i
    i8 104, label %bb.ee
  ]

.thread.thread.i:                                 ; preds = %bb.df, %.thread.i, %.thread.i
  %i.sf = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.sg = load ptr, ptr %i.sf, align 8            ; 3 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.si = load ptr, ptr %i.sh, align 16           ; 3 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.sk = load ptr, ptr %i.sj, align 16           ; 3 uses
  %.not.i.i = icmp eq ptr %i.sg, null
  %i.sl = getelementptr i8, ptr %i.sg, i64 16     ; 4 uses
  %.not.i244.i = icmp eq ptr %i.si, null
  %i.sm = getelementptr i8, ptr %i.si, i64 16     ; 4 uses
  %.not.i246.i = icmp eq ptr %i.sk, null
  %i.sn = getelementptr i8, ptr %i.sk, i64 16     ; 4 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sg, i64 4 ; 3 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.si, i64 4 ; 3 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sk, i64 4 ; 3 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.dp

bb.dp:                                            ; preds = %.critedge240.i, %.thread.thread.i
  %indvars.iv525.i = phi i64 [ 1, %.thread.thread.i ], [ %indvars.iv.next526.i, %.critedge240.i ] ; 5 uses
  %.0171470.i = phi ptr [ null, %.thread.thread.i ], [ %.1172318.i, %.critedge240.i ] ; 3 uses
  %i.st = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv525.i
  %i.su = load ptr, ptr %i.st, align 8            ; 3 uses
  %.not230.i = icmp eq ptr %i.su, null
  br i1 %.not230.i, label %.critedge240.i, label %.lr.ph464.i

.lr.ph464.i:                                      ; preds = %bb.dp
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 4 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.su, i64 16
  %or.cond7.i = icmp samesign ult i64 %indvars.iv525.i, 3
  %i.sx = and i64 %indvars.iv525.i, 6
  %or.cond9.i = icmp eq i64 %i.sx, 4
  %i.sy = trunc i64 %indvars.iv525.i to i16       ; 2 uses
  %i.sz = load i32, ptr %i.sv, align 4
  %i.ta = icmp sgt i32 %i.sz, 0
  br i1 %i.ta, label %.lr.ph599, label %.critedge240.i

.lr.ph599:                                        ; preds = %.lr.ph464.i, %bb.ed
  %.1172463.i597 = phi ptr [ %i.xs, %bb.ed ], [ %.0171470.i, %.lr.ph464.i ] ; 3 uses
  %indvars.iv522.i596 = phi i64 [ %indvars.iv.next523.i, %bb.ed ], [ 0, %.lr.ph464.i ] ; 2 uses
  %i.tb = load ptr, ptr %i.sw, align 8
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %i.tb, i64 %indvars.iv522.i596
  %i.td = load ptr, ptr %i.tc, align 8            ; 8 uses
  %i.te = load i32, ptr %i.td, align 8            ; 2 uses
  %i.tf = icmp eq i32 %i.te, 0
  br i1 %i.tf, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %.lr.ph599
  %i.tg = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  %i.th = load i8, ptr %i.tg, align 8, !range !5, !noundef !6
  %i.ti = trunc nuw i8 %i.th to i1
  %i.tj = getelementptr inbounds nuw i8, ptr %i.td, i64 16
  %i.tk = load ptr, ptr %i.tj, align 8
  %i.tl = getelementptr inbounds nuw i8, ptr %i.td, i64 24
  %i.tm = load i32, ptr %i.tl, align 8
  %i.tn = call ptr @list_make1_impl(i32 noundef 1, ptr %i.tk) #5
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.tm to i64
  %i.to = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i to ptr
  %i.tp = call ptr @list_make1_impl(i32 noundef 495, ptr %i.to) #5
  %i.tq = call noundef ptr @palloc0(i64 noundef 40) #5 ; 8 uses
  store i32 395, ptr %i.tq, align 4
  %i.tr = load i32, ptr %i.sr, align 4            ; 2 uses
  %i.ts = add i32 %i.tr, 1
  store i32 %i.ts, ptr %i.sr, align 4
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tq, i64 4
  store i32 %i.tr, ptr %i.tt, align 4
  %i.tu = select i1 %i.ti, i16 0, i16 %i.sy
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tq, i64 8
  store i16 %i.tu, ptr %i.tv, align 8
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tq, i64 16
  store ptr %i.tn, ptr %i.tw, align 8
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tq, i64 24
  store ptr %i.tp, ptr %i.tx, align 8
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tq, i64 32
  store ptr null, ptr %i.ty, align 8
  %i.tz = load ptr, ptr %i.ss, align 8
  %i.ua = call ptr @lappend(ptr noundef %i.tz, ptr noundef nonnull %i.tq) #5
  store ptr %i.ua, ptr %i.ss, align 8
  %i.ub = call ptr @list_make1_impl(i32 noundef 1, ptr nonnull %i.tq) #5
  br label %bb.ed

bb.dr:                                            ; preds = %.lr.ph599
  br i1 %.not.i.i, label %list_head.exit.i, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.uc = load ptr, ptr %i.sl, align 8
  br label %list_head.exit.i

list_head.exit.i:                                 ; preds = %bb.ds, %bb.dr
  %i.ud = phi ptr [ %i.uc, %bb.ds ], [ null, %bb.dr ]
  br i1 %.not.i244.i, label %list_head.exit245.i, label %bb.dt

bb.dt:                                            ; preds = %list_head.exit.i
  %i.ue = load ptr, ptr %i.sm, align 8
  br label %list_head.exit245.i

list_head.exit245.i:                              ; preds = %bb.dt, %list_head.exit.i
  %i.uf = phi ptr [ %i.ue, %bb.dt ], [ null, %list_head.exit.i ]
  br i1 %.not.i246.i, label %list_head.exit247.i, label %bb.du

bb.du:                                            ; preds = %list_head.exit245.i
  %i.ug = load ptr, ptr %i.sn, align 8
  br label %list_head.exit247.i

list_head.exit247.i:                              ; preds = %bb.du, %list_head.exit245.i
  %i.uh = phi ptr [ %i.ug, %bb.du ], [ null, %list_head.exit245.i ]
  %.not238451.i = icmp sgt i32 %i.te, 0
  br i1 %.not238451.i, label %.lr.ph460.i, label %.thread298.i

.thread290.thread.i.loopexit.split.loop.exit:     ; preds = %.lr.ph447.i
  %i.ui = getelementptr inbounds [8 x i8], ptr %i.xb, i64 %indvars.iv519.i
  br label %.thread290.thread.i

.thread290.thread.i:                              ; preds = %bb.ec, %.thread290.thread.i.loopexit.split.loop.exit, %.thread290.i, %.thread290.loopexit.split.loop.exit.i, %bb.eb
  %.11542.i = phi ptr [ %i.wx, %bb.eb ], [ %.7191.i, %.thread290.i ], [ %.7191.i, %.thread290.loopexit.split.loop.exit.i ], [ %.8192427446.i, %.thread290.thread.i.loopexit.split.loop.exit ], [ %i.xg, %bb.ec ] ; 2 uses
  %.1199541.i = phi ptr [ null, %bb.eb ], [ %.1199.i, %.thread290.i ], [ %i.wt, %.thread290.loopexit.split.loop.exit.i ], [ %i.ui, %.thread290.thread.i.loopexit.split.loop.exit ], [ null, %bb.ec ]
  %i.uj = add nuw nsw i32 %.0175456.i, 1          ; 2 uses
  %i.uk = load i32, ptr %i.td, align 8
  %.not238.i = icmp slt i32 %i.uj, %i.uk
  br i1 %.not238.i, label %.lr.ph460.i, label %.thread298.i, !llvm.loop !30

.lr.ph460.i:                                      ; preds = %list_head.exit247.i, %.thread290.thread.i
  %.0175456.i = phi i32 [ %i.uj, %.thread290.thread.i ], [ 0, %list_head.exit247.i ] ; 7 uses
  %.0184455.i = phi ptr [ %.11542.i, %.thread290.thread.i ], [ null, %list_head.exit247.i ] ; 4 uses
  %.0198454.i = phi ptr [ %.1199541.i, %.thread290.thread.i ], [ %i.uh, %list_head.exit247.i ] ; 3 uses
  %.0200453.i = phi ptr [ %.1201.i, %.thread290.thread.i ], [ %i.uf, %list_head.exit247.i ] ; 3 uses
  %.0202452.i = phi ptr [ %.0195274.i, %.thread290.thread.i ], [ %i.ud, %list_head.exit247.i ] ; 2 uses
  %.not.i248.i = icmp eq ptr %.0202452.i, null
  br i1 %.not.i248.i, label %.thread271.i, label %.lr.ph362.split.i

.lr.ph362.split.i:                                ; preds = %.lr.ph460.i
  %.val.i.i = load ptr, ptr %i.sl, align 8
  %i.ul = ptrtoint ptr %.0202452.i to i64
  %i.um = ptrtoint ptr %.val.i.i to i64
  %i.un = sub i64 %i.ul, %i.um                    ; 2 uses
  %i.uo = lshr exact i64 %i.un, 3
  %i.up = trunc i64 %i.uo to i32
  %.pre743 = load i32, ptr %i.so, align 4
  %i.uq = icmp sgt i32 %.pre743, %i.up
  br i1 %i.uq, label %.lr.ph379.preheader.i, label %.thread271.i

.lr.ph379.preheader.i:                            ; preds = %.lr.ph362.split.i
  %sext = shl i64 %i.un, 29
  %i.ur = ashr i64 %sext, 32                      ; 3 uses
  %i.us = load ptr, ptr %i.sl, align 8            ; 2 uses
  %i.ut = getelementptr inbounds [8 x i8], ptr %i.us, i64 %i.ur
  %i.uu = load ptr, ptr %i.ut, align 8            ; 2 uses
  %i.uv = load i32, ptr %i.uu, align 8
  %i.uw = icmp eq i32 %i.uv, %.0175456.i          ; 2 uses
  br i1 %i.uw, label %bb.dv, label %.thread271.split.loop.exit353.i

bb.dv:                                            ; preds = %.lr.ph379.preheader.i
  %i.ux = call ptr @lappend(ptr noundef %.0184455.i, ptr noundef nonnull %i.uu) #5 ; 2 uses
  %indvars.iv.next514.peel.i = add nsw i64 %i.ur, 1 ; 2 uses
  %i.uy = load i32, ptr %i.so, align 4
  %i.uz = sext i32 %i.uy to i64
  %i.va = icmp slt i64 %indvars.iv.next514.peel.i, %i.uz
  br i1 %i.va, label %.lr.ph379.i, label %.thread271.i

.lr.ph379.i:                                      ; preds = %bb.dv, %bb.dw
  %indvars.iv513.i = phi i64 [ %indvars.iv.next514.i, %bb.dw ], [ %indvars.iv.next514.peel.i, %bb.dv ] ; 3 uses
  %.1185359378.i = phi ptr [ %i.vg, %bb.dw ], [ %i.ux, %bb.dv ] ; 2 uses
  %i.vb = load ptr, ptr %i.sl, align 8            ; 2 uses
  %i.vc = getelementptr inbounds [8 x i8], ptr %i.vb, i64 %indvars.iv513.i
  %i.vd = load ptr, ptr %i.vc, align 8            ; 2 uses
  %i.ve = load i32, ptr %i.vd, align 8
  %i.vf = icmp eq i32 %i.ve, %.0175456.i
  br i1 %i.vf, label %bb.dw, label %.thread271.split.loop.exit353.i

bb.dw:                                            ; preds = %.lr.ph379.i
  %i.vg = call ptr @lappend(ptr noundef %.1185359378.i, ptr noundef nonnull %i.vd) #5 ; 2 uses
  %indvars.iv.next514.i = add nsw i64 %indvars.iv513.i, 1 ; 2 uses
  %i.vh = load i32, ptr %i.so, align 4
  %i.vi = sext i32 %i.vh to i64
  %i.vj = icmp slt i64 %indvars.iv.next514.i, %i.vi
  br i1 %i.vj, label %.lr.ph379.i, label %.thread271.i, !llvm.loop !31

.thread271.split.loop.exit353.i:                  ; preds = %.lr.ph379.i, %.lr.ph379.preheader.i
  %.1185359378.lcssa.i = phi ptr [ %.0184455.i, %.lr.ph379.preheader.i ], [ %.1185359378.i, %.lr.ph379.i ]
  %.lcssa475.i = phi ptr [ %i.us, %.lr.ph379.preheader.i ], [ %i.vb, %.lr.ph379.i ]
  %.lcssa.i = phi i64 [ %i.ur, %.lr.ph379.preheader.i ], [ %indvars.iv513.i, %.lr.ph379.i ]
  %i.vk = getelementptr inbounds [8 x i8], ptr %.lcssa475.i, i64 %.lcssa.i
  br label %.thread271.i

.thread271.i:                                     ; preds = %bb.dw, %.lr.ph460.i, %.thread271.split.loop.exit353.i, %bb.dv, %.lr.ph362.split.i
  %.1185.lcssa.i = phi ptr [ %.0184455.i, %.lr.ph362.split.i ], [ %.1185359378.lcssa.i, %.thread271.split.loop.exit353.i ], [ %.0184455.i, %.lr.ph460.i ], [ %i.ux, %bb.dv ], [ %i.vg, %bb.dw ] ; 5 uses
  %.0176.lcssa.i = phi i1 [ false, %.lr.ph362.split.i ], [ %i.uw, %.thread271.split.loop.exit353.i ], [ false, %.lr.ph460.i ], [ true, %bb.dv ], [ true, %bb.dw ] ; 4 uses
  %.0195274.i = phi ptr [ null, %.lr.ph362.split.i ], [ %i.vk, %.thread271.split.loop.exit353.i ], [ null, %.lr.ph460.i ], [ null, %bb.dv ], [ null, %bb.dw ]
  br i1 %or.cond7.i, label %bb.dx, label %.thread281.i

bb.dx:                                            ; preds = %.thread271.i
  %.not.i249.i = icmp eq ptr %.0200453.i, null
  br i1 %.not.i249.i, label %.thread281.i, label %.lr.ph396.split.i

.lr.ph396.split.i:                                ; preds = %bb.dx
  %.val.i250.i = load ptr, ptr %i.sm, align 8
  %i.vl = ptrtoint ptr %.0200453.i to i64
  %i.vm = ptrtoint ptr %.val.i250.i to i64
  %i.vn = sub i64 %i.vl, %i.vm                    ; 2 uses
  %i.vo = lshr exact i64 %i.vn, 3
  %i.vp = trunc i64 %i.vo to i32
  %.pre744 = load i32, ptr %i.sp, align 4
  %i.vq = icmp sgt i32 %.pre744, %i.vp
  br i1 %i.vq, label %.lr.ph413.preheader.i, label %.thread281.i

.lr.ph413.preheader.i:                            ; preds = %.lr.ph396.split.i
  %sext933 = shl i64 %i.vn, 29
  %i.vr = ashr i64 %sext933, 32                   ; 3 uses
  %i.vs = load ptr, ptr %i.sm, align 8            ; 2 uses
  %i.vt = getelementptr inbounds [8 x i8], ptr %i.vs, i64 %i.vr
  %i.vu = load ptr, ptr %i.vt, align 8            ; 2 uses
  %i.vv = load i32, ptr %i.vu, align 8
  %i.vw = icmp eq i32 %i.vv, %.0175456.i
  br i1 %i.vw, label %bb.dy, label %.thread281.loopexit.split.loop.exit.i

bb.dy:                                            ; preds = %.lr.ph413.preheader.i
  %i.vx = call ptr @lappend(ptr noundef %.1185.lcssa.i, ptr noundef nonnull %i.vu) #5 ; 2 uses
  %indvars.iv.next517.peel.i = add nsw i64 %i.vr, 1 ; 2 uses
  %i.vy = load i32, ptr %i.sp, align 4
  %i.vz = sext i32 %i.vy to i64
  %i.wa = icmp slt i64 %indvars.iv.next517.peel.i, %i.vz
  br i1 %i.wa, label %.lr.ph413.i, label %.thread281.i

.lr.ph413.i:                                      ; preds = %bb.dy, %bb.dz
  %indvars.iv516.i = phi i64 [ %indvars.iv.next517.i, %bb.dz ], [ %indvars.iv.next517.peel.i, %bb.dy ] ; 3 uses
  %.4188393412.i = phi ptr [ %i.wg, %bb.dz ], [ %i.vx, %bb.dy ] ; 2 uses
  %i.wb = load ptr, ptr %i.sm, align 8            ; 2 uses
  %i.wc = getelementptr inbounds [8 x i8], ptr %i.wb, i64 %indvars.iv516.i
  %i.wd = load ptr, ptr %i.wc, align 8            ; 2 uses
  %i.we = load i32, ptr %i.wd, align 8
  %i.wf = icmp eq i32 %i.we, %.0175456.i
  br i1 %i.wf, label %bb.dz, label %.thread281.loopexit.split.loop.exit.i

bb.dz:                                            ; preds = %.lr.ph413.i
  %i.wg = call ptr @lappend(ptr noundef %.4188393412.i, ptr noundef nonnull %i.wd) #5 ; 2 uses
  %indvars.iv.next517.i = add nsw i64 %indvars.iv516.i, 1 ; 2 uses
  %i.wh = load i32, ptr %i.sp, align 4
  %i.wi = sext i32 %i.wh to i64
  %i.wj = icmp slt i64 %indvars.iv.next517.i, %i.wi
  br i1 %i.wj, label %.lr.ph413.i, label %.thread281.i, !llvm.loop !32

.thread281.loopexit.split.loop.exit.i:            ; preds = %.lr.ph413.i, %.lr.ph413.preheader.i
  %.4188393412.lcssa.i = phi ptr [ %.1185.lcssa.i, %.lr.ph413.preheader.i ], [ %.4188393412.i, %.lr.ph413.i ]
  %.3179394411.lcssa.i = phi i1 [ %.0176.lcssa.i, %.lr.ph413.preheader.i ], [ true, %.lr.ph413.i ]
  %.lcssa482.i = phi ptr [ %i.vs, %.lr.ph413.preheader.i ], [ %i.wb, %.lr.ph413.i ]
  %.lcssa480.i = phi i64 [ %i.vr, %.lr.ph413.preheader.i ], [ %indvars.iv516.i, %.lr.ph413.i ]
  %i.wk = getelementptr inbounds [8 x i8], ptr %.lcssa482.i, i64 %.lcssa480.i
  br label %.thread281.i

.thread281.i:                                     ; preds = %bb.dz, %bb.dx, %.thread281.loopexit.split.loop.exit.i, %bb.dy, %.lr.ph396.split.i, %.thread271.i
  %.1201.i = phi ptr [ %.0200453.i, %.thread271.i ], [ null, %bb.dx ], [ %i.wk, %.thread281.loopexit.split.loop.exit.i ], [ null, %.lr.ph396.split.i ], [ null, %bb.dy ], [ null, %bb.dz ]
  %.7191.i = phi ptr [ %.1185.lcssa.i, %.thread271.i ], [ %.1185.lcssa.i, %bb.dx ], [ %.4188393412.lcssa.i, %.thread281.loopexit.split.loop.exit.i ], [ %.1185.lcssa.i, %.lr.ph396.split.i ], [ %i.vx, %bb.dy ], [ %i.wg, %bb.dz ] ; 3 uses
  %.6182.i = phi i1 [ %.0176.lcssa.i, %.thread271.i ], [ %.0176.lcssa.i, %bb.dx ], [ %.3179394411.lcssa.i, %.thread281.loopexit.split.loop.exit.i ], [ %.0176.lcssa.i, %.lr.ph396.split.i ], [ true, %bb.dy ], [ true, %bb.dz ] ; 2 uses
  br i1 %or.cond9.i, label %bb.ea, label %.thread290.i

bb.ea:                                            ; preds = %.thread281.i
  %.not.i255.i = icmp eq ptr %.0198454.i, null
  br i1 %.not.i255.i, label %.thread290.i, label %.lr.ph430.split.i

.lr.ph430.split.i:                                ; preds = %bb.ea
  %.val.i256.i = load ptr, ptr %i.sn, align 8
  %i.wl = ptrtoint ptr %.0198454.i to i64
  %i.wm = ptrtoint ptr %.val.i256.i to i64
  %i.wn = sub i64 %i.wl, %i.wm                    ; 2 uses
  %i.wo = lshr exact i64 %i.wn, 3
  %i.wp = trunc i64 %i.wo to i32
  %.pre745 = load i32, ptr %i.sq, align 4
  %i.wq = icmp sgt i32 %.pre745, %i.wp
  br i1 %i.wq, label %.lr.ph447.preheader.i, label %.thread290.i

.lr.ph447.preheader.i:                            ; preds = %.lr.ph430.split.i
  %sext934 = shl i64 %i.wn, 29
  %i.wr = ashr i64 %sext934, 32                   ; 2 uses
  %i.ws = load ptr, ptr %i.sn, align 8
  %i.wt = getelementptr inbounds [8 x i8], ptr %i.ws, i64 %i.wr ; 2 uses
  %i.wu = load ptr, ptr %i.wt, align 8            ; 2 uses
  %i.wv = load i32, ptr %i.wu, align 8
  %i.ww = icmp eq i32 %i.wv, %.0175456.i
  br i1 %i.ww, label %bb.eb, label %.thread290.loopexit.split.loop.exit.i

bb.eb:                                            ; preds = %.lr.ph447.preheader.i
  %i.wx = call ptr @lappend(ptr noundef %.7191.i, ptr noundef nonnull %i.wu) #5 ; 2 uses
  %indvars.iv.next520.peel.i = add nsw i64 %i.wr, 1 ; 2 uses
  %i.wy = load i32, ptr %i.sq, align 4
  %i.wz = sext i32 %i.wy to i64
  %i.xa = icmp slt i64 %indvars.iv.next520.peel.i, %i.wz
  br i1 %i.xa, label %.lr.ph447.i, label %.thread290.thread.i

.lr.ph447.i:                                      ; preds = %bb.eb, %bb.ec
  %indvars.iv519.i = phi i64 [ %indvars.iv.next520.i, %bb.ec ], [ %indvars.iv.next520.peel.i, %bb.eb ] ; 3 uses
  %.8192427446.i = phi ptr [ %i.xg, %bb.ec ], [ %i.wx, %bb.eb ] ; 2 uses
  %i.xb = load ptr, ptr %i.sn, align 8            ; 2 uses
  %i.xc = getelementptr inbounds [8 x i8], ptr %i.xb, i64 %indvars.iv519.i
  %i.xd = load ptr, ptr %i.xc, align 8            ; 2 uses
  %i.xe = load i32, ptr %i.xd, align 8
  %i.xf = icmp eq i32 %i.xe, %.0175456.i
  br i1 %i.xf, label %bb.ec, label %.thread290.thread.i.loopexit.split.loop.exit

bb.ec:                                            ; preds = %.lr.ph447.i
  %i.xg = call ptr @lappend(ptr noundef %.8192427446.i, ptr noundef nonnull %i.xd) #5 ; 2 uses
  %indvars.iv.next520.i = add nsw i64 %indvars.iv519.i, 1 ; 2 uses
  %i.xh = load i32, ptr %i.sq, align 4
  %i.xi = sext i32 %i.xh to i64
  %i.xj = icmp slt i64 %indvars.iv.next520.i, %i.xi
  br i1 %i.xj, label %.lr.ph447.i, label %.thread290.thread.i, !llvm.loop !33

.thread290.loopexit.split.loop.exit.i:            ; preds = %.lr.ph447.preheader.i
  br i1 %.6182.i, label %.thread290.thread.i, label %.critedge240.i

.thread290.i:                                     ; preds = %bb.ea, %.lr.ph430.split.i, %.thread281.i
  %.1199.i = phi ptr [ %.0198454.i, %.thread281.i ], [ null, %.lr.ph430.split.i ], [ null, %bb.ea ]
  br i1 %.6182.i, label %.thread290.thread.i, label %.critedge240.i

.thread298.i:                                     ; preds = %.thread290.thread.i, %list_head.exit247.i
  %.0184.lcssa.i = phi ptr [ null, %list_head.exit247.i ], [ %.11542.i, %.thread290.thread.i ]
  %i.xk = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  %i.xl = load i8, ptr %i.xk, align 8, !range !5, !noundef !6
  %i.xm = trunc nuw i8 %i.xl to i1
  %i.xn = getelementptr inbounds nuw i8, ptr %i.td, i64 16
  %i.xo = load ptr, ptr %i.xn, align 8
  %i.xp = getelementptr inbounds nuw i8, ptr %i.td, i64 24
  %i.xq = load i32, ptr %i.xp, align 8
  %i.xr = call fastcc ptr @get_steps_using_prefix(ptr noundef nonnull %0, i16 noundef zeroext %i.sy, i1 noundef zeroext %i.xm, ptr noundef %i.xo, i32 noundef %i.xq, ptr noundef null, ptr noundef %.0184.lcssa.i)
  br label %bb.ed

bb.ed:                                            ; preds = %.thread298.i, %bb.dq
  %.sink.i = phi ptr [ %i.ub, %bb.dq ], [ %i.xr, %.thread298.i ]
  %i.xs = call ptr @list_concat(ptr noundef %.1172463.i597, ptr noundef %.sink.i) #5 ; 2 uses
  %indvars.iv.next523.i = add nuw nsw i64 %indvars.iv522.i596, 1 ; 2 uses
  %i.xt = load i32, ptr %i.sv, align 4
  %i.xu = sext i32 %i.xt to i64
  %i.xv = icmp slt i64 %indvars.iv.next523.i, %i.xu
  br i1 %i.xv, label %.lr.ph599, label %.critedge240.i

.critedge240.i:                                   ; preds = %bb.ed, %.thread290.i, %.thread290.loopexit.split.loop.exit.i, %.lr.ph464.i, %bb.dp
  %.1172318.i = phi ptr [ %.0171470.i, %.lr.ph464.i ], [ %.0171470.i, %bb.dp ], [ %.1172463.i597, %.thread290.i ], [ %.1172463.i597, %.thread290.loopexit.split.loop.exit.i ], [ %i.xs, %bb.ed ] ; 2 uses
  %indvars.iv.next526.i = add nuw nsw i64 %indvars.iv525.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next526.i, 6
  br i1 %exitcond.not.i, label %gen_prune_steps_from_opexps.exit, label %bb.dp, !llvm.loop !34

bb.ee:                                            ; preds = %.thread.i
  %.not225.i = icmp eq ptr %.sroa.4.4.i, null
  br i1 %.not225.i, label %gen_prune_steps_from_opexps.exit, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.xw = getelementptr i8, ptr %.sroa.4.4.i, i64 4 ; 3 uses
  %.val.i192 = load i32, ptr %i.xw, align 4       ; 3 uses
  %i.xx = getelementptr i8, ptr %.sroa.4.4.i, i64 16 ; 3 uses
  %.val243.i = load ptr, ptr %i.xx, align 8       ; 2 uses
  %i.xy = add i32 %.val.i192, -1
  %i.xz = sext i32 %i.xy to i64
  %i.ya = getelementptr inbounds [8 x i8], ptr %.val243.i, i64 %i.xz
  %i.yb = load ptr, ptr %i.ya, align 8
  %i.yc = load i32, ptr %i.yb, align 8            ; 2 uses
  %.not227339.i = icmp sgt i32 %.val.i192, 0
  br i1 %.not227339.i, label %.lr.ph342.i.preheader, label %gen_prune_steps_from_opexps.exit

.lr.ph342.i.preheader:                            ; preds = %bb.ef
  %i.yd = load ptr, ptr %.val243.i, align 8       ; 2 uses
  %i.ye = load i32, ptr %i.yd, align 8
  %i.yf = icmp eq i32 %i.ye, %i.yc
  br i1 %i.yf, label %for_each_cell_setup.exit266.i, label %.lr.ph588

.lr.ph342.i:                                      ; preds = %.lr.ph588
  %i.yg = load ptr, ptr %i.xx, align 8
  %i.yh = getelementptr inbounds nuw [8 x i8], ptr %i.yg, i64 %indvars.iv.next508.i
  %i.yi = load ptr, ptr %i.yh, align 8            ; 2 uses
  %i.yj = load i32, ptr %i.yi, align 8
  %i.yk = icmp eq i32 %i.yj, %i.yc
  br i1 %i.yk, label %for_each_cell_setup.exit266.i, label %.lr.ph588, !llvm.loop !35

.lr.ph588:                                        ; preds = %.lr.ph342.i.preheader, %.lr.ph342.i
  %i.yl = phi ptr [ %i.yi, %.lr.ph342.i ], [ %i.yd, %.lr.ph342.i.preheader ]
  %.0170340.i587 = phi ptr [ %i.ym, %.lr.ph342.i ], [ null, %.lr.ph342.i.preheader ]
  %indvars.iv507.i586 = phi i64 [ %indvars.iv.next508.i, %.lr.ph342.i ], [ 0, %.lr.ph342.i.preheader ]
  %i.ym = call ptr @lappend(ptr noundef %.0170340.i587, ptr noundef nonnull %i.yl) #5 ; 2 uses
  %indvars.iv.next508.i = add nuw nsw i64 %indvars.iv507.i586, 1 ; 4 uses
  %i.yn = load i32, ptr %i.xw, align 4            ; 2 uses
  %i.yo = sext i32 %i.yn to i64
  %.not227.i = icmp slt i64 %indvars.iv.next508.i, %i.yo
  br i1 %.not227.i, label %.lr.ph342.i, label %gen_prune_steps_from_opexps.exit, !llvm.loop !35

for_each_cell_setup.exit266.i:                    ; preds = %.lr.ph342.i, %.lr.ph342.i.preheader
  %.lcssa372 = phi i32 [ %.val.i192, %.lr.ph342.i.preheader ], [ %i.yn, %.lr.ph342.i ]
  %indvars.iv507.i.lcssa = phi i64 [ 0, %.lr.ph342.i.preheader ], [ %indvars.iv.next508.i, %.lr.ph342.i ] ; 2 uses
  %.0170340.i.lcssa = phi ptr [ null, %.lr.ph342.i.preheader ], [ %i.ym, %.lr.ph342.i ]
  %i.yp = trunc i64 %indvars.iv507.i.lcssa to i32
  %i.yq = icmp sgt i32 %.lcssa372, %i.yp
  br i1 %i.yq, label %.lr.ph347.preheader.i, label %gen_prune_steps_from_opexps.exit

.lr.ph347.preheader.i:                            ; preds = %for_each_cell_setup.exit266.i
  %sext.i = shl i64 %indvars.iv507.i.lcssa, 32
  %i.yr = ashr exact i64 %sext.i, 32
  br label %.lr.ph347.i

.lr.ph347.i:                                      ; preds = %.lr.ph347.i, %.lr.ph347.preheader.i
  %indvars.iv510.i = phi i64 [ %i.yr, %.lr.ph347.preheader.i ], [ %indvars.iv.next511.i, %.lr.ph347.i ] ; 2 uses
  %.4345.i = phi ptr [ null, %.lr.ph347.preheader.i ], [ %i.za, %.lr.ph347.i ]
  %i.ys = load ptr, ptr %i.xx, align 8
  %i.yt = getelementptr inbounds [8 x i8], ptr %i.ys, i64 %indvars.iv510.i
  %i.yu = load ptr, ptr %i.yt, align 8            ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 16
  %i.yw = load ptr, ptr %i.yv, align 8
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yu, i64 24
  %i.yy = load i32, ptr %i.yx, align 8
  %i.yz = call fastcc ptr @get_steps_using_prefix(ptr noundef nonnull %0, i16 noundef zeroext 1, i1 noundef zeroext false, ptr noundef %i.yw, i32 noundef %i.yy, ptr noundef %.0124.lcssa784, ptr noundef %.0170340.i.lcssa)
  %i.za = call ptr @list_concat(ptr noundef %.4345.i, ptr noundef %i.yz) #5 ; 2 uses
  %indvars.iv.next511.i = add nuw nsw i64 %indvars.iv510.i, 1 ; 2 uses
  %i.zb = load i32, ptr %i.xw, align 4
  %i.zc = sext i32 %i.zb to i64
  %i.zd = icmp slt i64 %indvars.iv.next511.i, %i.zc
  br i1 %i.zd, label %.lr.ph347.i, label %gen_prune_steps_from_opexps.exit, !llvm.loop !36

bb.eg:                                            ; preds = %.thread.i
  %i.ze = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #6 ; 0 uses
  %i.zf = load i8, ptr %i.qf, align 8
  %i.zg = sext i8 %i.zf to i32
  %i.zh = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.2, i32 noundef %i.zg) #5 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1768, ptr noundef nonnull @__func__.gen_prune_steps_from_opexps) #5
  unreachable

gen_prune_steps_from_opexps.exit:                 ; preds = %bb.dh, %.lr.ph588, %.lr.ph347.i, %.critedge240.i, %bb.ee, %bb.ef, %for_each_cell_setup.exit266.i
  %.2.i = phi ptr [ %.1172318.i, %.critedge240.i ], [ null, %.lr.ph588 ], [ null, %bb.ee ], [ null, %for_each_cell_setup.exit266.i ], [ %i.za, %.lr.ph347.i ], [ null, %bb.ef ], [ null, %bb.dh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  %i.zi = call ptr @list_concat(ptr noundef %.0145552.lcssa, ptr noundef %.2.i) #5
  br label %bb.ei

.thread785:                                       ; preds = %bb.d, %bb.dd
  %.0145.lcssa781791 = phi ptr [ %.0145552.lcssa, %bb.dd ], [ null, %bb.d ] ; 2 uses
  %.0131.lcssa783790 = phi ptr [ %.0131562.lcssa, %bb.dd ], [ null, %bb.d ]
  %i.zj = call i32 @bms_num_members(ptr noundef %.0131.lcssa783790) #5
  %i.zk = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.zl = load i16, ptr %i.zk, align 2
  %i.zm = sext i16 %i.zl to i32
  %i.zn = icmp eq i32 %i.zj, %i.zm
  br i1 %i.zn, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %.thread785
  %i.zo = call noundef ptr @palloc0(i64 noundef 40) #5 ; 6 uses
  store i32 395, ptr %i.zo, align 4
  %i.zp = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.zq = load i32, ptr %i.zp, align 4            ; 2 uses
  %i.zr = add i32 %i.zq, 1
  store i32 %i.zr, ptr %i.zp, align 4
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zo, i64 4
  store i32 %i.zq, ptr %i.zs, align 4
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zo, i64 8
  store i16 0, ptr %i.zt, align 8
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zo, i64 16
  %i.zv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.zu, i8 0, i64 24, i1 false)
  %i.zw = load ptr, ptr %i.zv, align 8
  %i.zx = call ptr @lappend(ptr noundef %i.zw, ptr noundef nonnull %i.zo) #5
  store ptr %i.zx, ptr %i.zv, align 8
  %i.zy = call ptr @lappend(ptr noundef %.0145.lcssa781791, ptr noundef nonnull %i.zo) #5
  br label %bb.ei

bb.ei:                                            ; preds = %gen_prune_steps_from_opexps.exit, %bb.eh, %.thread785, %bb.dc
  %.11 = phi ptr [ %i.zi, %gen_prune_steps_from_opexps.exit ], [ %i.zy, %bb.eh ], [ %.0145.lcssa781791, %.thread785 ], [ %i.qc, %bb.dc ] ; 5 uses
  %.not.i194 = icmp eq ptr %.11, null
  br i1 %.not.i194, label %.thread341, label %list_length.exit

list_length.exit:                                 ; preds = %bb.ei
  %i.zz = getelementptr inbounds nuw i8, ptr %.11, i64 4 ; 2 uses
  %i.aaa = load i32, ptr %i.zz, align 4
  %i.aab = icmp sgt i32 %i.aaa, 1
  br i1 %i.aab, label %.lr.ph603, label %.thread341

.lr.ph603:                                        ; preds = %list_length.exit
  %i.aac = getelementptr inbounds nuw i8, ptr %.11, i64 16
  br label %bb.ej

bb.ej:                                            ; preds = %.lr.ph603, %bb.ej
  %indvars.iv737 = phi i64 [ 0, %.lr.ph603 ], [ %indvars.iv.next738, %bb.ej ] ; 2 uses
  %.0123601 = phi ptr [ null, %.lr.ph603 ], [ %i.aai, %bb.ej ]
  %i.aad = load ptr, ptr %i.aac, align 8
  %i.aae = getelementptr inbounds nuw [8 x i8], ptr %i.aad, i64 %indvars.iv737
  %i.aaf = load ptr, ptr %i.aae, align 8
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 4
  %i.aah = load i32, ptr %i.aag, align 4
  %i.aai = call ptr @lappend_int(ptr noundef %.0123601, i32 noundef %i.aah) #5 ; 2 uses
  %indvars.iv.next738 = add nuw nsw i64 %indvars.iv737, 1 ; 2 uses
  %i.aaj = load i32, ptr %i.zz, align 4
  %i.aak = sext i32 %i.aaj to i64
  %i.aal = icmp slt i64 %indvars.iv.next738, %i.aak
  br i1 %i.aal, label %bb.ej, label %.critedge185, !llvm.loop !37

.critedge185:                                     ; preds = %bb.ej
  %i.aam = call noundef ptr @palloc0(i64 noundef 24) #5 ; 6 uses
  store i32 396, ptr %i.aam, align 4
  %i.aan = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.aao = load i32, ptr %i.aan, align 4          ; 2 uses
  %i.aap = add i32 %i.aao, 1
  store i32 %i.aap, ptr %i.aan, align 4
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aam, i64 4
  store i32 %i.aao, ptr %i.aaq, align 4
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aam, i64 8
  store i32 1, ptr %i.aar, align 8
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aam, i64 16
  store ptr %i.aai, ptr %i.aas, align 8
  %i.aat = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aau = load ptr, ptr %i.aat, align 8
  %i.aav = call ptr @lappend(ptr noundef %i.aau, ptr noundef nonnull %i.aam) #5
  store ptr %i.aav, ptr %i.aat, align 8
  %i.aaw = call ptr @lappend(ptr noundef nonnull %.11, ptr noundef nonnull %i.aam) #5
  br label %.thread341

.thread341:                                       ; preds = %bb.q, %bb.ei, %match_clause_to_partition_key.exit.thread288, %bb.cw, %bb.cy, %bb.cs, %bb.i, %.critedge605, %list_length.exit, %.critedge185, %bb.c
  %.8 = phi ptr [ null, %bb.c ], [ null, %match_clause_to_partition_key.exit.thread288 ], [ %i.aaw, %.critedge185 ], [ %.11, %list_length.exit ], [ null, %bb.ei ], [ null, %.critedge605 ], [ null, %bb.i ], [ null, %bb.cs ], [ null, %bb.cy ], [ null, %bb.cw ], [ null, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #5
  ret ptr %.8
}

declare zeroext i1 @predicate_refuted_by(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @list_make1_impl(i32 noundef, ptr) local_unnamed_addr #2

declare ptr @lappend_int(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @bms_is_member(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @list_concat(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @copyObjectImpl(ptr noundef) local_unnamed_addr #2

declare ptr @list_make2_impl(i32 noundef, ptr, ptr) local_unnamed_addr #2

declare ptr @makeBoolExpr(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @strip_noop_phvs(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @equal(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @get_commutator(i32 noundef) local_unnamed_addr #2

declare zeroext i1 @op_in_opfamily(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @get_op_opfamily_properties(i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @get_negator(i32 noundef) local_unnamed_addr #2

declare zeroext i1 @op_strict(i32 noundef) local_unnamed_addr #2

declare zeroext i1 @contain_var_clause(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @contain_volatile_functions(ptr noundef) local_unnamed_addr #2

declare signext i8 @op_volatile(i32 noundef) local_unnamed_addr #2

declare i32 @get_opfamily_proc(i32 noundef, i32 noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #2

declare ptr @pg_detoast_datum(ptr noundef) local_unnamed_addr #2

declare void @get_typlenbyvalalign(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @deconstruct_array(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i8 noundef signext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @makeConst(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @make_opclause(i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @makeBoolConst(i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @negate_clause(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @get_steps_using_prefix(ptr nofree noundef nonnull captures(none) %0, i16 noundef zeroext %1, i1 noundef zeroext %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr nofree noundef readonly captures(address_is_null) %6) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %6, null
  br i1 %i.a, label %bb.b, label %list_head.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @list_make1_impl(i32 noundef 1, ptr %3) #5
  %.sroa.0.0.insert.ext.i = zext i32 %4 to i64
  %i.c = inttoptr i64 %.sroa.0.0.insert.ext.i to ptr
  %i.d = tail call ptr @list_make1_impl(i32 noundef 495, ptr %i.c) #5
  %i.e = tail call noundef ptr @palloc0(i64 noundef 40) #5 ; 8 uses
  store i32 395, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = add i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %i.g, ptr %i.i, align 4
  %i.j = select i1 %2, i16 0, i16 %1
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i16 %i.j, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.b, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.d, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %5, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call ptr @lappend(ptr noundef %i.p, ptr noundef nonnull %i.e) #5
  store ptr %i.q, ptr %i.o, align 8
  %i.r = tail call ptr @list_make1_impl(i32 noundef 1, ptr nonnull %i.e) #5
  br label %bb.c

list_head.exit:                                   ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call fastcc ptr @get_steps_using_prefix_recurse(ptr noundef %0, i16 noundef zeroext %1, i1 noundef zeroext %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %i.t, ptr noundef null, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %list_head.exit, %bb.b
  %.0 = phi ptr [ %i.r, %bb.b ], [ %i.u, %list_head.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @get_steps_using_prefix_recurse(ptr nofree noundef nonnull captures(none) %0, i16 noundef zeroext %1, i1 noundef zeroext %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr nofree noundef nonnull readonly captures(none) %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) unnamed_addr #0 {
bb.a:
  tail call void @check_stack_depth() #5
  %i.a = load ptr, ptr %7, align 8
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr i8, ptr %6, i64 4          ; 3 uses
  %.val = load i32, ptr %i.c, align 4             ; 3 uses
  %i.d = getelementptr i8, ptr %6, i64 16         ; 3 uses
  %.val90 = load ptr, ptr %i.d, align 8           ; 4 uses
  %i.e = add i32 %.val, -1
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %.val90, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = icmp slt i32 %i.b, %i.i
  %i.k = ptrtoint ptr %7 to i64
  %i.l = ptrtoint ptr %.val90 to i64
  %i.m = sub i64 %i.k, %i.l                       ; 4 uses
  %i.n = lshr exact i64 %i.m, 3
  %i.o = trunc i64 %i.n to i32
  %i.p = icmp sgt i32 %.val, %i.o                 ; 2 uses
  br i1 %i.j, label %for_each_cell_setup.exit, label %for_each_cell_setup.exit100

for_each_cell_setup.exit:                         ; preds = %bb.a
  br i1 %i.p, label %.lr.ph113.preheader, label %.critedge

.lr.ph113.preheader:                              ; preds = %for_each_cell_setup.exit
  %sext133 = shl i64 %i.m, 29
  %i.q = ashr i64 %sext133, 32
  br label %.lr.ph113

bb.b:                                             ; preds = %.lr.ph113
  %indvars.iv.next126 = add nsw i64 %indvars.iv125, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next126 to i32
  %exitcond.not = icmp eq i32 %.val, %lftr.wideiv
  br i1 %exitcond.not, label %.lr.ph117.preheader, label %.lr.ph113, !llvm.loop !38

.lr.ph113:                                        ; preds = %.lr.ph113.preheader, %bb.b
  %indvars.iv125 = phi i64 [ %i.q, %.lr.ph113.preheader ], [ %indvars.iv.next126, %bb.b ] ; 3 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %.val90, i64 %indvars.iv125
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = load i32, ptr %i.s, align 8
  %i.u = icmp sgt i32 %i.t, %i.b
  br i1 %i.u, label %for_each_cell_setup.exit95.split.loop.exit137, label %bb.b

for_each_cell_setup.exit95.split.loop.exit137:    ; preds = %.lr.ph113
  %i.v = getelementptr inbounds [8 x i8], ptr %.val90, i64 %indvars.iv125
  br label %.lr.ph117.preheader

.lr.ph117.preheader:                              ; preds = %bb.b, %for_each_cell_setup.exit95.split.loop.exit137
  %.075103 = phi ptr [ %i.v, %for_each_cell_setup.exit95.split.loop.exit137 ], [ null, %bb.b ]
  %sext134 = shl i64 %i.m, 29
  %i.w = ashr i64 %sext134, 32
  br label %.lr.ph117

.lr.ph117:                                        ; preds = %.lr.ph117.preheader, %bb.c
  %indvars.iv128 = phi i64 [ %i.w, %.lr.ph117.preheader ], [ %indvars.iv.next129, %bb.c ] ; 2 uses
  %.0116 = phi ptr [ null, %.lr.ph117.preheader ], [ %i.al, %bb.c ] ; 2 uses
  %i.x = load ptr, ptr %i.d, align 8
  %i.y = getelementptr inbounds [8 x i8], ptr %i.x, i64 %indvars.iv128
  %i.z = load ptr, ptr %i.y, align 8              ; 3 uses
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = icmp eq i32 %i.aa, %i.b
  br i1 %i.ab, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph117
  %i.ac = tail call ptr @list_copy(ptr noundef %8) #5
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call ptr @lappend(ptr noundef %i.ac, ptr noundef %i.ae) #5 ; 2 uses
  %i.ag = tail call ptr @list_copy(ptr noundef %9) #5
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = tail call ptr @lappend_oid(ptr noundef %i.ag, i32 noundef %i.ai) #5 ; 2 uses
  %i.ak = tail call fastcc ptr @get_steps_using_prefix_recurse(ptr noundef %0, i16 noundef zeroext %1, i1 noundef zeroext %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %.075103, ptr noundef %i.af, ptr noundef %i.aj)
  %i.al = tail call ptr @list_concat(ptr noundef %.0116, ptr noundef %i.ak) #5 ; 2 uses
  tail call void @list_free(ptr noundef %i.af) #5
  tail call void @list_free(ptr noundef %i.aj) #5
  %indvars.iv.next129 = add nsw i64 %indvars.iv128, 1 ; 2 uses
  %i.am = load i32, ptr %i.c, align 4
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp slt i64 %indvars.iv.next129, %i.an
  br i1 %i.ao, label %.lr.ph117, label %.critedge, !llvm.loop !39

for_each_cell_setup.exit100:                      ; preds = %bb.a
  br i1 %i.p, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %for_each_cell_setup.exit100
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.aq = select i1 %2, i16 0, i16 %1
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %sext = shl i64 %i.m, 29
  %i.as = ashr i64 %sext, 32
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.as, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.3109 = phi ptr [ null, %.lr.ph ], [ %i.bq, %bb.d ]
  %i.at = load ptr, ptr %i.d, align 8
  %i.au = getelementptr inbounds [8 x i8], ptr %i.at, i64 %indvars.iv
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = tail call ptr @list_copy(ptr noundef %8) #5
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = tail call ptr @lappend(ptr noundef %i.aw, ptr noundef %i.ay) #5
  %i.ba = tail call ptr @lappend(ptr noundef %i.az, ptr noundef %3) #5
  %i.bb = tail call ptr @list_copy(ptr noundef %9) #5
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.bd = load i32, ptr %i.bc, align 8
  %i.be = tail call ptr @lappend_oid(ptr noundef %i.bb, i32 noundef %i.bd) #5
  %i.bf = tail call ptr @lappend_oid(ptr noundef %i.be, i32 noundef %4) #5
  %i.bg = tail call noundef ptr @palloc0(i64 noundef 40) #5 ; 8 uses
  store i32 395, ptr %i.bg, align 4
  %i.bh = load i32, ptr %i.ap, align 4            ; 2 uses
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.ap, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store i32 %i.bh, ptr %i.bj, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i16 %i.aq, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store ptr %i.ba, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store ptr %i.bf, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  store ptr %5, ptr %i.bn, align 8
  %i.bo = load ptr, ptr %i.ar, align 8
  %i.bp = tail call ptr @lappend(ptr noundef %i.bo, ptr noundef nonnull %i.bg) #5
  store ptr %i.bp, ptr %i.ar, align 8
  %i.bq = tail call ptr @lappend(ptr noundef %.3109, ptr noundef nonnull %i.bg) #5 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.br = load i32, ptr %i.c, align 4
  %i.bs = sext i32 %i.br to i64
  %i.bt = icmp slt i64 %indvars.iv.next, %i.bs
  br i1 %i.bt, label %bb.d, label %.critedge, !llvm.loop !40

.critedge:                                        ; preds = %bb.d, %bb.c, %.lr.ph117, %for_each_cell_setup.exit, %for_each_cell_setup.exit100
  %.4 = phi ptr [ null, %for_each_cell_setup.exit100 ], [ %.0116, %.lr.ph117 ], [ null, %for_each_cell_setup.exit ], [ %i.al, %bb.c ], [ %i.bq, %bb.d ]
  ret ptr %.4
}

declare void @check_stack_depth() local_unnamed_addr #2

declare ptr @list_copy(ptr noundef) local_unnamed_addr #2

declare ptr @lappend_oid(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @list_free(ptr noundef) local_unnamed_addr #2

declare void @fmgr_info_copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @fmgr_info_cxt(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @compute_partition_hash_value(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @bms_make_singleton(i32 noundef) local_unnamed_addr #2

declare i32 @partition_list_bsearch(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @bms_del_member(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @partition_range_datum_bsearch(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @partition_rbound_datum_cmp(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @bms_int_members(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = !{ptr @pull_exec_paramids_walker}
!8 = !{!"llvm.loop.peeled.count", i32 1}
!9 = distinct !{!9, !4}
!10 = distinct !{!10, !4}
!11 = distinct !{!11, !4}
!12 = distinct !{null, null, null}
!13 = distinct !{!13, !4}
!14 = distinct !{!14, !4}
!15 = distinct !{!15, !4}
!16 = distinct !{!16, !4, !8}
!17 = distinct !{!17, !4}
!18 = distinct !{!18, !4}
!19 = distinct !{!19, !4}
!20 = distinct !{!20, !4}
!21 = distinct !{null}
!22 = distinct !{!22, !4}
!23 = distinct !{!23, !4}
!24 = distinct !{!24, !4}
!25 = distinct !{!25, !4}
!26 = distinct !{!26, !4}
!27 = distinct !{!27, !4}
!28 = distinct !{!28, !4}
!29 = distinct !{!29, !8}
!30 = distinct !{!30, !4}
!31 = distinct !{!31, !8}
!32 = distinct !{!32, !8}
!33 = distinct !{!33, !8}
!34 = distinct !{!34, !4}
!35 = distinct !{!35, !4}
!36 = distinct !{!36, !4}
!37 = distinct !{!37, !4}
!38 = distinct !{!38, !4}
!39 = distinct !{!39, !4}
!40 = distinct !{!40, !4}
end_hunk_1
