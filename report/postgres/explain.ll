Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/explain?download=true
inline.NumInlined: 187
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@ExplainPropertyBool
declare void @ExplainPropertyBool(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare void @ExplainPropertyUInteger(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @get_constraint_name(i32 noundef) local_unnamed_addr #2

declare ptr @bms_add_member(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @bms_add_members(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @planstate_tree_walker_impl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @psprintf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ExplainIndexScanDetails(i32 noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @explain_get_index_name_hook, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr %i.a(i32 noundef %0) #6, !inline_history !1 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread.i, label %explain_get_index_name.exit

.thread.i:                                        ; preds = %bb.b, %bb.a
  %i.d = tail call ptr @get_rel_name(i32 noundef %0) #6 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %explain_get_index_name.exit

bb.c:                                             ; preds = %.thread.i
  %i.f = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.g = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.220, i32 noundef %0) #6 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.9, i32 noundef 4241, ptr noundef nonnull @__func__.explain_get_index_name) #6
  unreachable

explain_get_index_name.exit:                      ; preds = %bb.b, %.thread.i
  %.1.i = phi ptr [ %i.d, %.thread.i ], [ %i.b, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = load i32, ptr %i.h, align 8
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.g

bb.d:                                             ; preds = %explain_get_index_name.exit
  %i.k = icmp eq i32 %1, -1
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %2, align 8
  tail call void @appendStringInfoString(ptr noundef %i.l, ptr noundef nonnull @.str.215) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = load ptr, ptr %2, align 8
  %i.n = tail call ptr @quote_identifier(ptr noundef nonnull %.1.i) #6
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %i.m, ptr noundef nonnull @.str.216, ptr noundef %i.n) #6
  br label %bb.h

bb.g:                                             ; preds = %explain_get_index_name.exit
  %switch.selectcmp = icmp eq i32 %1, 1
  %switch.select = select i1 %switch.selectcmp, ptr @.str.218, ptr @.str.71
  %switch.selectcmp10 = icmp eq i32 %1, -1
  %switch.select11 = select i1 %switch.selectcmp10, ptr @.str.217, ptr %switch.select
  tail call void @ExplainPropertyText(ptr noundef nonnull @.str.219, ptr noundef nonnull %switch.select11, ptr noundef nonnull %2) #6
  tail call void @ExplainPropertyText(ptr noundef nonnull @.str.144, ptr noundef nonnull %.1.i, ptr noundef nonnull %2) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

declare ptr @quote_identifier(ptr noundef) local_unnamed_addr #2

declare void @InstrEndLoop(ptr noundef) local_unnamed_addr #2

declare void @appendStringInfoChar(ptr noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ExplainOpenWorker(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = load ptr, ptr %1, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = sext i32 %0 to i64                       ; 6 uses
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !range !7, !noundef !8
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds [24 x i8], ptr %i.l, i64 %i.g ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @initStringInfo(ptr noundef %i.m) #6
  %i.n = load ptr, ptr %i.k, align 8
  %i.o = getelementptr inbounds [24 x i8], ptr %i.n, i64 %i.g
  store ptr %i.o, ptr %1, align 8
  tail call void @ExplainOpenSetAsideGroup(ptr noundef nonnull @.str.221, ptr noundef null, i1 noundef zeroext true, i32 noundef 2, ptr noundef nonnull %1) #6
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i32, ptr %i.p, align 8
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @ExplainPropertyInteger(ptr noundef nonnull @.str.222, ptr noundef null, i64 noundef %i.g, ptr noundef nonnull %1) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = load ptr, ptr %i.e, align 8
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.g
  store i8 1, ptr %i.s, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  store ptr %i.m, ptr %1, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.g
  tail call void @ExplainRestoreGroup(ptr noundef nonnull %1, i32 noundef 2, ptr noundef %i.v) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i32, ptr %i.w, align 8
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %1, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @ExplainIndentText(ptr noundef nonnull %1) #6
  %i.ad = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %i.ad, ptr noundef nonnull @.str.223, i32 noundef %0) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @show_instrumentation_count(ptr noundef %0, i32 noundef range(i32 1, 3) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 9
  %i.b = load i8, ptr %i.a, align 1, !range !7, !noundef !8
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i32 %1, 2
  %.0.in.v = select i1 %i.f, i64 432, i64 424
  %.0.in = getelementptr inbounds nuw i8, ptr %i.e, i64 %.0.in.v
  %.0 = load double, ptr %.0.in, align 8          ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 416
  %i.h = load double, ptr %i.g, align 8           ; 2 uses
  %i.i = fcmp ogt double %.0, 0.000000e+00
  br i1 %i.i, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.k = load i32, ptr %i.j, align 8
  %.not16 = icmp eq i32 %i.k, 0
  br i1 %.not16, label %bb.e, label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.c
  %i.l = fcmp ogt double %i.h, 0.000000e+00
  %i.m = fdiv double %.0, %i.h
  %.sink = select i1 %i.l, double %i.m, double 0.000000e+00
  tail call void @ExplainPropertyFloat(ptr noundef %0, ptr noundef null, double noundef %.sink, i32 noundef 0, ptr noundef nonnull %3) #6
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.d, %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @show_scan_io_usage(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.IOStats, align 8            ; 24 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.d = load i8, ptr %i.c, align 1, !range !7, !noundef !8
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not58 = icmp eq ptr %i.i, null
  br i1 %.not58, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 56, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.j = load i32, ptr %i.b, align 4
  switch i32 %i.j, label %bb.s [
    i32 362, label %bb.f
    i32 357, label %bb.j
    i32 364, label %bb.n
  ]

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.l = load ptr, ptr %i.k, align 8              ; 4 uses
  %.not63 = icmp eq ptr %i.l, null
  br i1 %.not63, label %bb.r, label %.preheader

.preheader:                                       ; preds = %bb.f
  %.promoted126 = load i64, ptr %2, align 8       ; 2 uses
  %i.m = load i32, ptr %i.l, align 8              ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %AccumulateIOStats.exit.lr.ph, label %.sink.split

AccumulateIOStats.exit.lr.ph:                     ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %.promoted130 = load i64, ptr %i.o, align 8
  %i.v = load <2 x i16>, ptr %i.p, align 8
  %i.w = load <2 x i64>, ptr %i.q, align 8
  %i.x = load <2 x i64>, ptr %i.r, align 8
  br label %AccumulateIOStats.exit

AccumulateIOStats.exit:                           ; preds = %AccumulateIOStats.exit.lr.ph, %bb.i
  %i.y = phi i32 [ %i.m, %AccumulateIOStats.exit.lr.ph ], [ %i.bz, %bb.i ]
  %indvars.iv173 = phi i64 [ 0, %AccumulateIOStats.exit.lr.ph ], [ %indvars.iv.next174, %bb.i ] ; 4 uses
  %i.z = phi i64 [ %.promoted130, %AccumulateIOStats.exit.lr.ph ], [ %i.ak, %bb.i ]
  %i.aa = phi i64 [ %.promoted126, %AccumulateIOStats.exit.lr.ph ], [ %i.ah, %bb.i ]
  %i.ab = phi <2 x i16> [ %i.v, %AccumulateIOStats.exit.lr.ph ], [ %i.an, %bb.i ]
  %i.ac = phi <2 x i64> [ %i.w, %AccumulateIOStats.exit.lr.ph ], [ %i.aq, %bb.i ]
  %i.ad = phi <2 x i64> [ %i.x, %AccumulateIOStats.exit.lr.ph ], [ %i.at, %bb.i ]
  %i.ae = getelementptr [72 x i8], ptr %i.l, i64 %indvars.iv173 ; 5 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 24     ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = add i64 %i.aa, %i.ag                    ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ae, i64 32
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = add i64 %i.z, %i.aj                     ; 2 uses
  %i.al = getelementptr i8, ptr %i.ae, i64 40
  %i.am = load <2 x i16>, ptr %i.al, align 8
  %i.an = tail call <2 x i16> @llvm.smax.v2i16(<2 x i16> %i.am, <2 x i16> %i.ab) ; 2 uses
  %i.ao = getelementptr i8, ptr %i.ae, i64 48
  %i.ap = load <2 x i64>, ptr %i.ao, align 8
  %i.aq = add <2 x i64> %i.ac, %i.ap              ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ae, i64 64
  %i.as = load <2 x i64>, ptr %i.ar, align 8
  %i.at = add <2 x i64> %i.ad, %i.as              ; 2 uses
  %i.au = load ptr, ptr %i.s, align 8
  %.not64 = icmp eq ptr %i.au, null
  br i1 %.not64, label %bb.i, label %bb.g

bb.g:                                             ; preds = %AccumulateIOStats.exit
  %i.av = trunc nuw nsw i64 %indvars.iv173 to i32
  tail call fastcc void @ExplainOpenWorker(i32 noundef %i.av, ptr noundef nonnull %1)
  tail call fastcc void @print_io_usage(ptr noundef nonnull %1, ptr noundef %i.af)
  %i.aw = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv173
  tail call void @ExplainSaveGroup(ptr noundef nonnull %1, i32 noundef 2, ptr noundef %i.az) #6
  %i.ba = load i32, ptr %i.t, align 8
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %.preheader.i, label %ExplainCloseWorker.exit

.preheader.i:                                     ; preds = %bb.g
  %i.bc = load ptr, ptr %1, align 8               ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8            ; 2 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.h
  %i.bg = phi i32 [ %i.bt, %bb.h ], [ %i.be, %.preheader.i ] ; 2 uses
  %i.bh = phi ptr [ %i.bs, %bb.h ], [ %i.bd, %.preheader.i ]
  %i.bi = phi ptr [ %i.br, %bb.h ], [ %i.bc, %.preheader.i ]
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %i.bk = zext nneg i32 %i.bg to i64
  %i.bl = getelementptr i8, ptr %i.bj, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bl, i64 -1
  %i.bn = load i8, ptr %i.bm, align 1
  %.not.i = icmp eq i8 %i.bn, 10
  br i1 %.not.i, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.bo = add nsw i32 %i.bg, -1                   ; 2 uses
  store i32 %i.bo, ptr %i.bh, align 8
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bp
  store i8 0, ptr %i.bq, align 1
  %i.br = load ptr, ptr %1, align 8               ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8            ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.lr.ph.i, label %.critedge.i, !llvm.loop !2

.critedge.i:                                      ; preds = %bb.h, %.lr.ph.i, %.preheader.i
  %i.bv = load i32, ptr %i.u, align 4
  %i.bw = add i32 %i.bv, -1
  store i32 %i.bw, ptr %i.u, align 4
  br label %ExplainCloseWorker.exit

ExplainCloseWorker.exit:                          ; preds = %bb.g, %.critedge.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.by = load ptr, ptr %i.bx, align 8
  store ptr %i.by, ptr %1, align 8
  %.pre176 = load i32, ptr %i.l, align 8
  br label %bb.i

bb.i:                                             ; preds = %AccumulateIOStats.exit, %ExplainCloseWorker.exit
  %i.bz = phi i32 [ %i.y, %AccumulateIOStats.exit ], [ %.pre176, %ExplainCloseWorker.exit ] ; 2 uses
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1 ; 2 uses
  %i.ca = sext i32 %i.bz to i64
  %i.cb = icmp slt i64 %indvars.iv.next174, %i.ca
  br i1 %i.cb, label %AccumulateIOStats.exit, label %..loopexit_crit_edge, !llvm.loop !48

bb.j:                                             ; preds = %bb.e
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cd = load ptr, ptr %i.cc, align 8            ; 4 uses
  %.not61 = icmp eq ptr %i.cd, null
  br i1 %.not61, label %bb.r, label %.preheader82

.preheader82:                                     ; preds = %bb.j
  %.promoted108 = load i64, ptr %2, align 8       ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8            ; 2 uses
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %AccumulateIOStats.exit65.lr.ph, label %.sink.split

AccumulateIOStats.exit65.lr.ph:                   ; preds = %.preheader82
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %.promoted112 = load i64, ptr %i.ch, align 8
  %i.co = load <2 x i16>, ptr %i.ci, align 8
  %i.cp = load <2 x i64>, ptr %i.cj, align 8
  %i.cq = load <2 x i64>, ptr %i.ck, align 8
  br label %AccumulateIOStats.exit65

AccumulateIOStats.exit65:                         ; preds = %AccumulateIOStats.exit65.lr.ph, %bb.m
  %i.cr = phi i32 [ %i.ce, %AccumulateIOStats.exit65.lr.ph ], [ %i.er, %bb.m ]
  %indvars.iv171 = phi i64 [ 0, %AccumulateIOStats.exit65.lr.ph ], [ %indvars.iv.next172, %bb.m ] ; 4 uses
  %i.cs = phi i64 [ %.promoted112, %AccumulateIOStats.exit65.lr.ph ], [ %i.dc, %bb.m ]
  %i.ct = phi i64 [ %.promoted108, %AccumulateIOStats.exit65.lr.ph ], [ %i.cz, %bb.m ]
  %i.cu = phi <2 x i16> [ %i.co, %AccumulateIOStats.exit65.lr.ph ], [ %i.df, %bb.m ]
  %i.cv = phi <2 x i64> [ %i.cp, %AccumulateIOStats.exit65.lr.ph ], [ %i.di, %bb.m ]
  %i.cw = phi <2 x i64> [ %i.cq, %AccumulateIOStats.exit65.lr.ph ], [ %i.dl, %bb.m ]
  %i.cx = getelementptr inbounds nuw [56 x i8], ptr %i.cg, i64 %indvars.iv171 ; 6 uses
  %i.cy = load i64, ptr %i.cx, align 8
  %i.cz = add i64 %i.ct, %i.cy                    ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.db = load i64, ptr %i.da, align 8
  %i.dc = add i64 %i.cs, %i.db                    ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.de = load <2 x i16>, ptr %i.dd, align 8
  %i.df = tail call <2 x i16> @llvm.smax.v2i16(<2 x i16> %i.de, <2 x i16> %i.cu) ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.dh = load <2 x i64>, ptr %i.dg, align 8
  %i.di = add <2 x i64> %i.cv, %i.dh              ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  %i.dk = load <2 x i64>, ptr %i.dj, align 8
  %i.dl = add <2 x i64> %i.cw, %i.dk              ; 2 uses
  %i.dm = load ptr, ptr %i.cl, align 8
  %.not62 = icmp eq ptr %i.dm, null
  br i1 %.not62, label %bb.m, label %bb.k

bb.k:                                             ; preds = %AccumulateIOStats.exit65
  %i.dn = trunc nuw nsw i64 %indvars.iv171 to i32
  tail call fastcc void @ExplainOpenWorker(i32 noundef %i.dn, ptr noundef nonnull %1)
  tail call fastcc void @print_io_usage(ptr noundef nonnull %1, ptr noundef %i.cx)
  %i.do = load ptr, ptr %i.cl, align 8            ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv171
  tail call void @ExplainSaveGroup(ptr noundef nonnull %1, i32 noundef 2, ptr noundef %i.dr) #6
  %i.ds = load i32, ptr %i.cm, align 8
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %.preheader.i66, label %ExplainCloseWorker.exit70

.preheader.i66:                                   ; preds = %bb.k
  %i.du = load ptr, ptr %1, align 8               ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 8            ; 2 uses
  %i.dx = icmp sgt i32 %i.dw, 0
  br i1 %i.dx, label %.lr.ph.i68, label %.critedge.i67

.lr.ph.i68:                                       ; preds = %.preheader.i66, %bb.l
  %i.dy = phi i32 [ %i.el, %bb.l ], [ %i.dw, %.preheader.i66 ] ; 2 uses
  %i.dz = phi ptr [ %i.ek, %bb.l ], [ %i.dv, %.preheader.i66 ]
  %i.ea = phi ptr [ %i.ej, %bb.l ], [ %i.du, %.preheader.i66 ]
  %i.eb = load ptr, ptr %i.ea, align 8            ; 2 uses
  %i.ec = zext nneg i32 %i.dy to i64
  %i.ed = getelementptr i8, ptr %i.eb, i64 %i.ec
  %i.ee = getelementptr i8, ptr %i.ed, i64 -1
  %i.ef = load i8, ptr %i.ee, align 1
  %.not.i69 = icmp eq i8 %i.ef, 10
  br i1 %.not.i69, label %.critedge.i67, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i68
  %i.eg = add nsw i32 %i.dy, -1                   ; 2 uses
  store i32 %i.eg, ptr %i.dz, align 8
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.eh
  store i8 0, ptr %i.ei, align 1
  %i.ej = load ptr, ptr %1, align 8               ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 8            ; 2 uses
  %i.em = icmp sgt i32 %i.el, 0
  br i1 %i.em, label %.lr.ph.i68, label %.critedge.i67, !llvm.loop !2

.critedge.i67:                                    ; preds = %bb.l, %.lr.ph.i68, %.preheader.i66
  %i.en = load i32, ptr %i.cn, align 4
  %i.eo = add i32 %i.en, -1
  store i32 %i.eo, ptr %i.cn, align 4
  br label %ExplainCloseWorker.exit70

ExplainCloseWorker.exit70:                        ; preds = %bb.k, %.critedge.i67
  %i.ep = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %i.eq = load ptr, ptr %i.ep, align 8
  store ptr %i.eq, ptr %1, align 8
  %.pre175 = load i32, ptr %i.cd, align 8
  br label %bb.m

bb.m:                                             ; preds = %AccumulateIOStats.exit65, %ExplainCloseWorker.exit70
  %i.er = phi i32 [ %i.cr, %AccumulateIOStats.exit65 ], [ %.pre175, %ExplainCloseWorker.exit70 ] ; 2 uses
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %i.es = sext i32 %i.er to i64
  %i.et = icmp slt i64 %indvars.iv.next172, %i.es
  br i1 %i.et, label %AccumulateIOStats.exit65, label %..loopexit83_crit_edge, !llvm.loop !49

bb.n:                                             ; preds = %bb.e
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ev = load ptr, ptr %i.eu, align 8            ; 4 uses
  %.not59 = icmp eq ptr %i.ev, null
  br i1 %.not59, label %bb.r, label %.preheader84

.preheader84:                                     ; preds = %bb.n
  %.promoted = load i64, ptr %2, align 8          ; 3 uses
  %i.ew = load i32, ptr %i.ev, align 8            ; 3 uses
  %i.ex = icmp sgt i32 %i.ew, 0
  br i1 %i.ex, label %AccumulateIOStats.exit71.lr.ph, label %.sink.split

AccumulateIOStats.exit71.lr.ph:                   ; preds = %.preheader84
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 18 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %.promoted87 = load i64, ptr %3, align 8        ; 2 uses
  %.promoted89 = load i16, ptr %4, align 8        ; 2 uses
  %.promoted91 = load i16, ptr %5, align 2        ; 2 uses
  %.promoted93 = load i64, ptr %i.ez, align 8     ; 2 uses
  %.promoted95 = load i64, ptr %i.fa, align 8     ; 2 uses
  %.promoted97 = load i64, ptr %i.fb, align 8     ; 2 uses
  %.promoted99 = load i64, ptr %i.fc, align 8     ; 2 uses
  %6 = load ptr, ptr %i.fd, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %AccumulateIOStats.exit71.lr.ph.split.us, label %AccumulateIOStats.exit71

AccumulateIOStats.exit71.lr.ph.split.us:          ; preds = %AccumulateIOStats.exit71.lr.ph
  %wide.trip.count = zext nneg i32 %i.ew to i64
  br label %AccumulateIOStats.exit71.us

AccumulateIOStats.exit71.us:                      ; preds = %AccumulateIOStats.exit71.us, %AccumulateIOStats.exit71.lr.ph.split.us
  %indvars.iv169 = phi i64 [ %indvars.iv.next170, %AccumulateIOStats.exit71.us ], [ 0, %AccumulateIOStats.exit71.lr.ph.split.us ] ; 2 uses
  %8 = phi i64 [ %35, %AccumulateIOStats.exit71.us ], [ %.promoted99, %AccumulateIOStats.exit71.lr.ph.split.us ]
  %9 = phi i64 [ %32, %AccumulateIOStats.exit71.us ], [ %.promoted97, %AccumulateIOStats.exit71.lr.ph.split.us ]
  %10 = phi i64 [ %29, %AccumulateIOStats.exit71.us ], [ %.promoted95, %AccumulateIOStats.exit71.lr.ph.split.us ]
  %11 = phi i64 [ %26, %AccumulateIOStats.exit71.us ], [ %.promoted93, %AccumulateIOStats.exit71.lr.ph.split.us ]
  %spec.store.select8192.us = phi i16 [ %spec.store.select81.us, %AccumulateIOStats.exit71.us ], [ %.promoted91, %AccumulateIOStats.exit71.lr.ph.split.us ]
  %spec.store.select7890.us = phi i16 [ %spec.store.select78.us, %AccumulateIOStats.exit71.us ], [ %.promoted89, %AccumulateIOStats.exit71.lr.ph.split.us ]
  %12 = phi i64 [ %19, %AccumulateIOStats.exit71.us ], [ %.promoted87, %AccumulateIOStats.exit71.lr.ph.split.us ]
  %13 = phi i64 [ %16, %AccumulateIOStats.exit71.us ], [ %.promoted, %AccumulateIOStats.exit71.lr.ph.split.us ]
  %14 = getelementptr inbounds nuw [56 x i8], ptr %i.ey, i64 %indvars.iv169 ; 8 uses
  %15 = load i64, ptr %14, align 8
  %16 = add i64 %13, %15                          ; 2 uses
  %17 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %18 = load i64, ptr %17, align 8
  %19 = add i64 %12, %18                          ; 2 uses
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %21 = load i16, ptr %20, align 8
  %spec.store.select78.us = tail call i16 @llvm.smax.i16(i16 %21, i16 %spec.store.select7890.us) ; 2 uses
  %22 = getelementptr inbounds nuw i8, ptr %14, i64 18
  %23 = load i16, ptr %22, align 2
  %spec.store.select81.us = tail call i16 @llvm.smax.i16(i16 %23, i16 %spec.store.select8192.us) ; 2 uses
  %24 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %25 = load i64, ptr %24, align 8
  %26 = add i64 %11, %25                          ; 2 uses
  %27 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %28 = load i64, ptr %27, align 8
  %29 = add i64 %10, %28                          ; 2 uses
  %30 = getelementptr inbounds nuw i8, ptr %14, i64 40
  %31 = load i64, ptr %30, align 8
  %32 = add i64 %9, %31                           ; 2 uses
  %33 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %34 = load i64, ptr %33, align 8
  %35 = add i64 %8, %34                           ; 2 uses
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next170, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit85_crit_edge, label %AccumulateIOStats.exit71.us, !llvm.loop !50

AccumulateIOStats.exit71:                         ; preds = %AccumulateIOStats.exit71.lr.ph, %bb.q
  %i.fg = phi i32 [ %i.gy, %bb.q ], [ %i.ew, %AccumulateIOStats.exit71.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.q ], [ 0, %AccumulateIOStats.exit71.lr.ph ] ; 4 uses
  %36 = phi i64 [ %51, %bb.q ], [ %.promoted99, %AccumulateIOStats.exit71.lr.ph ]
  %i.fh = phi i64 [ %49, %bb.q ], [ %.promoted97, %AccumulateIOStats.exit71.lr.ph ]
  %i.fi = phi i64 [ %47, %bb.q ], [ %.promoted95, %AccumulateIOStats.exit71.lr.ph ]
  %i.fj = phi i64 [ %i.fp, %bb.q ], [ %.promoted93, %AccumulateIOStats.exit71.lr.ph ]
  %spec.store.select8192 = phi i16 [ %spec.store.select81, %bb.q ], [ %.promoted91, %AccumulateIOStats.exit71.lr.ph ]
  %spec.store.select7890 = phi i16 [ %spec.store.select78, %bb.q ], [ %.promoted89, %AccumulateIOStats.exit71.lr.ph ]
  %37 = phi i64 [ %i.fm, %bb.q ], [ %.promoted87, %AccumulateIOStats.exit71.lr.ph ]
  %38 = phi i64 [ %40, %bb.q ], [ %.promoted, %AccumulateIOStats.exit71.lr.ph ]
  %i.fk = getelementptr inbounds nuw [56 x i8], ptr %i.ey, i64 %indvars.iv ; 9 uses
  %39 = load i64, ptr %i.fk, align 8
  %40 = add i64 %38, %39                          ; 2 uses
  %41 = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fl = load i64, ptr %41, align 8
  %i.fm = add i64 %37, %i.fl                      ; 2 uses
  %42 = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %43 = load i16, ptr %42, align 8
  %spec.store.select78 = tail call i16 @llvm.smax.i16(i16 %43, i16 %spec.store.select7890) ; 2 uses
  %44 = getelementptr inbounds nuw i8, ptr %i.fk, i64 18
  %45 = load i16, ptr %44, align 2
  %spec.store.select81 = tail call i16 @llvm.smax.i16(i16 %45, i16 %spec.store.select8192) ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fo = load i64, ptr %i.fn, align 8
  %i.fp = add i64 %i.fj, %i.fo                    ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  %46 = load i64, ptr %i.fq, align 8
  %47 = add i64 %i.fi, %46                        ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  %48 = load i64, ptr %i.fr, align 8
  %49 = add i64 %i.fh, %48                        ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fk, i64 48
  %50 = load i64, ptr %i.fs, align 8
  %51 = add i64 %36, %50                          ; 2 uses
  %i.ft = load ptr, ptr %i.fd, align 8
  %.not60 = icmp eq ptr %i.ft, null
  br i1 %.not60, label %bb.q, label %bb.o

bb.o:                                             ; preds = %AccumulateIOStats.exit71
  %i.fu = trunc nuw nsw i64 %indvars.iv to i32
  tail call fastcc void @ExplainOpenWorker(i32 noundef %i.fu, ptr noundef nonnull %1)
  tail call fastcc void @print_io_usage(ptr noundef nonnull %1, ptr noundef %i.fk)
  %i.fv = load ptr, ptr %i.fd, align 8            ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv
  tail call void @ExplainSaveGroup(ptr noundef nonnull %1, i32 noundef 2, ptr noundef %i.fy) #6
  %i.fz = load i32, ptr %i.fe, align 8
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %.preheader.i72, label %ExplainCloseWorker.exit76

.preheader.i72:                                   ; preds = %bb.o
  %i.gb = load ptr, ptr %1, align 8               ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 8            ; 2 uses
  %i.ge = icmp sgt i32 %i.gd, 0
  br i1 %i.ge, label %.lr.ph.i74, label %.critedge.i73

.lr.ph.i74:                                       ; preds = %.preheader.i72, %bb.p
  %i.gf = phi i32 [ %i.gs, %bb.p ], [ %i.gd, %.preheader.i72 ] ; 2 uses
  %i.gg = phi ptr [ %i.gr, %bb.p ], [ %i.gc, %.preheader.i72 ]
  %i.gh = phi ptr [ %i.gq, %bb.p ], [ %i.gb, %.preheader.i72 ]
  %i.gi = load ptr, ptr %i.gh, align 8            ; 2 uses
  %i.gj = zext nneg i32 %i.gf to i64
  %i.gk = getelementptr i8, ptr %i.gi, i64 %i.gj
  %i.gl = getelementptr i8, ptr %i.gk, i64 -1
  %i.gm = load i8, ptr %i.gl, align 1
  %.not.i75 = icmp eq i8 %i.gm, 10
  br i1 %.not.i75, label %.critedge.i73, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i74
  %i.gn = add nsw i32 %i.gf, -1                   ; 2 uses
  store i32 %i.gn, ptr %i.gg, align 8
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.go
  store i8 0, ptr %i.gp, align 1
  %i.gq = load ptr, ptr %1, align 8               ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 8            ; 2 uses
  %i.gt = icmp sgt i32 %i.gs, 0
  br i1 %i.gt, label %.lr.ph.i74, label %.critedge.i73, !llvm.loop !2

.critedge.i73:                                    ; preds = %bb.p, %.lr.ph.i74, %.preheader.i72
  %i.gu = load i32, ptr %i.ff, align 4
  %i.gv = add i32 %i.gu, -1
  store i32 %i.gv, ptr %i.ff, align 4
  br label %ExplainCloseWorker.exit76

ExplainCloseWorker.exit76:                        ; preds = %bb.o, %.critedge.i73
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  %i.gx = load ptr, ptr %i.gw, align 8
  store ptr %i.gx, ptr %1, align 8
  %.pre = load i32, ptr %i.ev, align 8
  br label %bb.q

bb.q:                                             ; preds = %AccumulateIOStats.exit71, %ExplainCloseWorker.exit76
  %i.gy = phi i32 [ %i.fg, %AccumulateIOStats.exit71 ], [ %.pre, %ExplainCloseWorker.exit76 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gz = sext i32 %i.gy to i64
  %i.ha = icmp slt i64 %indvars.iv.next, %i.gz
  br i1 %i.ha, label %AccumulateIOStats.exit71, label %..loopexit85_crit_edge, !llvm.loop !51

..loopexit_crit_edge:                             ; preds = %bb.i
  store i64 %i.ak, ptr %i.o, align 8
  store <2 x i16> %i.an, ptr %i.p, align 8
  store <2 x i64> %i.aq, ptr %i.q, align 8
  store <2 x i64> %i.at, ptr %i.r, align 8
  br label %.sink.split

..loopexit83_crit_edge:                           ; preds = %bb.m
  store i64 %i.dc, ptr %i.ch, align 8
  store <2 x i16> %i.df, ptr %i.ci, align 8
  store <2 x i64> %i.di, ptr %i.cj, align 8
  store <2 x i64> %i.dl, ptr %i.ck, align 8
  br label %.sink.split

..loopexit85_crit_edge:                           ; preds = %bb.q, %AccumulateIOStats.exit71.us
  %.us-phi = phi i64 [ %35, %AccumulateIOStats.exit71.us ], [ %51, %bb.q ]
  %.us-phi101 = phi i64 [ %32, %AccumulateIOStats.exit71.us ], [ %49, %bb.q ]
  %.us-phi102 = phi i64 [ %29, %AccumulateIOStats.exit71.us ], [ %47, %bb.q ]
  %.us-phi103 = phi i64 [ %26, %AccumulateIOStats.exit71.us ], [ %i.fp, %bb.q ]
  %.us-phi104 = phi i16 [ %spec.store.select81.us, %AccumulateIOStats.exit71.us ], [ %spec.store.select81, %bb.q ]
  %.us-phi105 = phi i16 [ %spec.store.select78.us, %AccumulateIOStats.exit71.us ], [ %spec.store.select78, %bb.q ]
  %.us-phi106 = phi i64 [ %19, %AccumulateIOStats.exit71.us ], [ %i.fm, %bb.q ]
  %.us-phi107 = phi i64 [ %16, %AccumulateIOStats.exit71.us ], [ %40, %bb.q ]
  store i64 %.us-phi106, ptr %3, align 8
  store i16 %.us-phi105, ptr %4, align 8
  store i16 %.us-phi104, ptr %5, align 2
  store i64 %.us-phi103, ptr %i.ez, align 8
  store i64 %.us-phi102, ptr %i.fa, align 8
  store i64 %.us-phi101, ptr %i.fb, align 8
  store i64 %.us-phi, ptr %i.fc, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %.preheader84, %..loopexit85_crit_edge, %.preheader82, %..loopexit83_crit_edge, %.preheader, %..loopexit_crit_edge
  %.lcssa.sink = phi i64 [ %.promoted108, %.preheader82 ], [ %.promoted126, %.preheader ], [ %i.ah, %..loopexit_crit_edge ], [ %i.cz, %..loopexit83_crit_edge ], [ %.us-phi107, %..loopexit85_crit_edge ], [ %.promoted, %.preheader84 ]
  store i64 %.lcssa.sink, ptr %2, align 8
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.n, %bb.j, %bb.f
  call fastcc void @print_io_usage(ptr noundef nonnull %1, ptr noundef %2)
  br label %bb.s

bb.s:                                             ; preds = %bb.e, %bb.a, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret void
}

declare ptr @lappend(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @show_expression(ptr noundef %0, ptr noundef %1, ptr %.8.val, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @set_deparse_context_plan(ptr noundef %i.b, ptr noundef %.8.val, ptr noundef %2) #6
  %i.d = tail call ptr @deparse_expression(ptr noundef %0, ptr noundef %i.c, i1 noundef zeroext %3, i1 noundef zeroext false) #6
  tail call void @ExplainPropertyText(ptr noundef %1, ptr noundef %i.d, ptr noundef %4) #6
  ret void
}

declare ptr @list_make1_impl(i32 noundef, ptr) local_unnamed_addr #2

declare ptr @make_orclause(ptr noundef) local_unnamed_addr #2

declare ptr @make_andclause(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @show_wal_usage(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 0
  %i.d = load i64, ptr %1, align 8                ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load i64, ptr %i.k, align 8
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i64, ptr %i.n, align 8
  %.not38 = icmp eq i64 %i.o, 0
  br i1 %.not38, label %bb.s, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  tail call void @ExplainIndentText(ptr noundef nonnull %0) #6
  %i.p = load ptr, ptr %0, align 8
  tail call void @appendStringInfoString(ptr noundef %i.p, ptr noundef nonnull @.str.345) #6
  %i.q = load i64, ptr %1, align 8                ; 2 uses
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %i.s, ptr noundef nonnull @.str.346, i64 noundef %i.q) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = icmp sgt i64 %i.u, 0
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %i.w, ptr noundef nonnull @.str.347, i64 noundef %i.u) #6
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %.not39 = icmp eq i64 %i.y, 0
  br i1 %.not39, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %i.z, ptr noundef nonnull @.str.348, i64 noundef %i.y) #6
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %.not40 = icmp eq i64 %i.ab, 0
  br i1 %.not40, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %i.ac, ptr noundef nonnull @.str.349, i64 noundef %i.ab) #6
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ag = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %i.ag, ptr noundef nonnull @.str.350, i64 noundef %i.ae) #6
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ah = load ptr, ptr %0, align 8
  tail call void @appendStringInfoChar(ptr noundef %i.ah, i8 noundef signext 10) #6
  br label %bb.s

bb.r:                                             ; preds = %bb.a
  tail call void @ExplainPropertyInteger(ptr noundef nonnull @.str.351, ptr noundef null, i64 noundef %i.d, ptr noundef nonnull %0) #6
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load i64, ptr %i.ai, align 8
  tail call void @ExplainPropertyInteger(ptr noundef nonnull @.str.352, ptr noundef null, i64 noundef %i.aj, ptr noundef nonnull %0) #6
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load i64, ptr %i.ak, align 8
  tail call void @ExplainPropertyUInteger(ptr noundef nonnull @.str.353, ptr noundef null, i64 noundef %i.al, ptr noundef nonnull %0) #6
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load i64, ptr %i.am, align 8
  tail call void @ExplainPropertyUInteger(ptr noundef nonnull @.str.354, ptr noundef null, i64 noundef %i.an, ptr noundef nonnull %0) #6
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ap = load i64, ptr %i.ao, align 8
  tail call void @ExplainPropertyInteger(ptr noundef nonnull @.str.355, ptr noundef null, i64 noundef %i.ap, ptr noundef nonnull %0) #6
  br label %bb.s

bb.s:                                             ; preds = %bb.f, %bb.q, %bb.r
  ret void
}

declare ptr @lcons(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ExplainSubPlans(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %.not28 = icmp sgt i32 %i.b, 0
  br i1 %.not28, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %.02629 = phi ptr [ %1, %.lr.ph ], [ %.1, %bb.i ] ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = load ptr, ptr %i.d, align 8
  %i.m = tail call zeroext i1 @bms_is_member(i32 noundef %i.k, ptr noundef %i.l) #6
  br i1 %i.m, label %bb.i, label %bb.c

.critedge:                                        ; preds = %bb.i, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.d, align 8
  %i.o = load i32, ptr %i.j, align 8
  %i.p = tail call ptr @bms_add_member(ptr noundef %i.n, i32 noundef %i.o) #6
  store ptr %i.p, ptr %i.d, align 8
  %i.q = tail call ptr @lcons(ptr noundef nonnull %i.i, ptr noundef %.02629) #6 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp eq i32 %i.s, 7
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call ptr (ptr, ...) @psprintf(ptr noundef nonnull @.str.358, ptr noundef %i.v) #6
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 52
  %i.y = load i8, ptr %i.x, align 4, !range !7, !noundef !8
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = tail call ptr (ptr, ...) @psprintf(ptr noundef nonnull @.str.359, ptr noundef %i.ab) #6
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ad = tail call ptr (ptr, ...) @psprintf(ptr noundef nonnull @.str.360, ptr noundef %i.ab) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  %.0 = phi ptr [ %i.w, %bb.d ], [ %i.ac, %bb.f ], [ %i.ad, %bb.g ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  tail call fastcc void @ExplainNode(ptr noundef %i.af, ptr noundef %i.q, ptr noundef %2, ptr noundef %.0, ptr noundef nonnull %3)
  %i.ag = tail call ptr @list_delete_first(ptr noundef %i.q) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h
  %.1 = phi ptr [ %i.ag, %bb.h ], [ %.02629, %bb.b ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = load i32, ptr %i.a, align 4
  %i.ai = sext i32 %i.ah to i64
  %.not = icmp slt i64 %indvars.iv.next, %i.ai
  br i1 %.not, label %bb.b, label %.critedge, !llvm.loop !53
}

declare ptr @list_delete_first(ptr noundef) local_unnamed_addr #2

declare ptr @palloc(i64 noundef) local_unnamed_addr #2

declare ptr @palloc0(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ExplainTargetRel(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = add i32 %1, -1
  %i.d = getelementptr i8, ptr %i.b, i64 16
  %.val60 = load ptr, ptr %i.d, align 8
  %i.e = sext i32 %i.c to i64                     ; 2 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %.val60, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8              ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 16
  %.val59 = load ptr, ptr %i.j, align 8
  %i.k = getelementptr inbounds [8 x i8], ptr %.val59, i64 %i.e
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.q, %bb.b ], [ %i.l, %bb.a ]  ; 3 uses
  %i.r = load i32, ptr %0, align 4
  switch i32 %i.r, label %list_length.exit.thread [
    i32 357, label %bb.d
    i32 358, label %bb.d
    i32 359, label %bb.d
    i32 360, label %bb.d
    i32 362, label %bb.d
    i32 363, label %bb.d
    i32 364, label %bb.d
    i32 372, label %bb.d
    i32 373, label %bb.d
    i32 351, label %bb.d
    i32 366, label %bb.f
    i32 368, label %bb.j
    i32 371, label %bb.o
    i32 369, label %bb.m
    i32 370, label %bb.n
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 28 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4
  %i.u = tail call ptr @get_rel_name(i32 noundef %i.t) #6 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i8, ptr %i.v, align 8, !range !7, !noundef !8
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.e, label %list_length.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.y = load i32, ptr %i.s, align 4
  %i.z = tail call i32 @get_rel_namespace(i32 noundef %i.y) #6
  %i.aa = tail call ptr @get_namespace_name_or_temp(i32 noundef %i.z) #6
  br label %list_length.exit.thread

bb.f:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ac = load ptr, ptr %i.ab, align 8            ; 3 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %list_length.exit.thread, label %list_length.exit

list_length.exit:                                 ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = icmp eq i32 %i.ae, 1
  br i1 %i.af, label %bb.g, label %list_length.exit.thread

bb.g:                                             ; preds = %list_length.exit
  %i.ag = getelementptr i8, ptr %i.ac, i64 16
  %.val = load ptr, ptr %i.ag, align 8
  %i.ah = load ptr, ptr %.val, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = icmp eq i32 %i.ak, 15
  br i1 %i.al, label %bb.h, label %list_length.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.an = load i32, ptr %i.am, align 4            ; 2 uses
  %i.ao = tail call ptr @get_func_name(i32 noundef %i.an) #6 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = load i8, ptr %i.ap, align 8, !range !7, !noundef !8
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.i, label %list_length.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.as = tail call i32 @get_func_namespace(i32 noundef %i.an) #6
  %i.at = tail call ptr @get_namespace_name_or_temp(i32 noundef %i.as) #6
  br label %list_length.exit.thread

bb.j:                                             ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4
  switch i32 %i.ax, label %bb.l [
    i32 0, label %list_length.exit.thread
    i32 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  br label %list_length.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.ay = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.az = load i32, ptr %i.aw, align 4
  %i.ba = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.207, i32 noundef %i.az) #6 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.9, i32 noundef 4671, ptr noundef nonnull @__func__.ExplainTargetRel) #6
  unreachable

bb.m:                                             ; preds = %bb.c
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.bc = load ptr, ptr %i.bb, align 8
  br label %list_length.exit.thread

bb.n:                                             ; preds = %bb.c
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.be = load ptr, ptr %i.bd, align 8
  br label %list_length.exit.thread

bb.o:                                             ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.bg = load ptr, ptr %i.bf, align 8
  br label %list_length.exit.thread

list_length.exit.thread:                          ; preds = %bb.f, %bb.k, %bb.j, %list_length.exit, %bb.h, %bb.i, %bb.g, %bb.d, %bb.e, %bb.c, %bb.o, %bb.n, %bb.m
  %.354 = phi ptr [ null, %bb.c ], [ %i.be, %bb.n ], [ %i.u, %bb.d ], [ %i.ao, %bb.h ], [ %i.bg, %bb.o ], [ %i.bc, %bb.m ], [ %i.u, %bb.e ], [ null, %list_length.exit ], [ null, %bb.g ], [ %i.ao, %bb.i ], [ @.str.206, %bb.k ], [ @.str.205, %bb.j ], [ null, %bb.f ] ; 7 uses
  %.4 = phi ptr [ null, %bb.c ], [ null, %bb.n ], [ null, %bb.d ], [ null, %bb.h ], [ null, %bb.o ], [ null, %bb.m ], [ %i.aa, %bb.e ], [ null, %list_length.exit ], [ null, %bb.g ], [ %i.at, %bb.i ], [ null, %bb.k ], [ null, %bb.j ], [ null, %bb.f ] ; 4 uses
  %i.bh = phi i1 [ false, %bb.c ], [ true, %bb.n ], [ true, %bb.d ], [ true, %bb.h ], [ true, %bb.o ], [ true, %bb.m ], [ true, %bb.e ], [ true, %list_length.exit ], [ true, %bb.g ], [ true, %bb.i ], [ true, %bb.k ], [ true, %bb.j ], [ true, %bb.f ]
  %.049 = phi ptr [ null, %bb.c ], [ @.str.210, %bb.n ], [ @.str.203, %bb.d ], [ @.str.204, %bb.h ], [ @.str.209, %bb.o ], [ @.str.209, %bb.m ], [ @.str.203, %bb.e ], [ @.str.204, %list_length.exit ], [ @.str.204, %bb.g ], [ @.str.204, %bb.i ], [ @.str.208, %bb.k ], [ @.str.208, %bb.j ], [ @.str.204, %bb.f ]
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bj = load i32, ptr %i.bi, align 8
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.p, label %bb.u

bb.p:                                             ; preds = %list_length.exit.thread
  %i.bl = load ptr, ptr %2, align 8
  tail call void @appendStringInfoString(ptr noundef %i.bl, ptr noundef nonnull @.str.211) #6
  %.not56 = icmp eq ptr %.4, null
  br i1 %.not56, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %cond = icmp eq ptr %.354, null
  br i1 %cond, label %bb.t, label %.thread

.thread:                                          ; preds = %bb.q
  %i.bm = load ptr, ptr %2, align 8
  %i.bn = tail call ptr @quote_identifier(ptr noundef nonnull %.354) #6
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %i.bm, ptr noundef nonnull @.str.160, ptr noundef %i.bn) #6
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bo = load ptr, ptr %2, align 8
  %i.bp = tail call ptr @quote_identifier(ptr noundef nonnull %.4) #6
  %i.bq = tail call ptr @quote_identifier(ptr noundef %.354) #6
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %i.bo, ptr noundef nonnull @.str.212, ptr noundef %i.bp, ptr noundef %i.bq) #6
  %i.br = icmp eq ptr %.354, null
  br i1 %i.br, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.thread, %bb.r
  %i.bs = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0, ptr noundef nonnull dereferenceable(1) %.354) #10
  %.not58 = icmp eq i32 %i.bs, 0
  br i1 %.not58, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.s, %bb.r
  %i.bt = load ptr, ptr %2, align 8
  %i.bu = tail call ptr @quote_identifier(ptr noundef %.0) #6
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %i.bt, ptr noundef nonnull @.str.160, ptr noundef %i.bu) #6
  br label %bb.z

bb.u:                                             ; preds = %list_length.exit.thread
  %i.bv = icmp ne ptr %.354, null
  %or.cond = select i1 %i.bh, i1 %i.bv, i1 false
  br i1 %or.cond, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @ExplainPropertyText(ptr noundef %.049, ptr noundef nonnull %.354, ptr noundef nonnull %2) #6
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.not = icmp eq ptr %.4, null
  br i1 %.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @ExplainPropertyText(ptr noundef nonnull @.str.213, ptr noundef nonnull %.4, ptr noundef nonnull %2) #6
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  tail call void @ExplainPropertyText(ptr noundef nonnull @.str.214, ptr noundef %.0, ptr noundef nonnull %2) #6
  br label %bb.z

bb.z:                                             ; preds = %bb.s, %bb.t, %bb.y
  ret void
}

declare ptr @get_rel_name(i32 noundef) local_unnamed_addr #2

declare ptr @get_namespace_name_or_temp(i32 noundef) local_unnamed_addr #2

declare i32 @get_rel_namespace(i32 noundef) local_unnamed_addr #2

declare ptr @get_func_name(i32 noundef) local_unnamed_addr #2

declare i32 @get_func_namespace(i32 noundef) local_unnamed_addr #2

declare void @ExplainOpenSetAsideGroup(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ExplainRestoreGroup(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ExplainSaveGroup(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @set_deparse_context_plan(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @deparse_expression(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare void @ExplainPropertyList(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @make_ands_explicit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @print_io_usage(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void @ExplainIndentText(ptr noundef nonnull %0) #6
  %i.e = load ptr, ptr %0, align 8
  %i.f = load <2 x i64>, ptr %1, align 8
  %i.g = uitofp <2 x i64> %i.f to <2 x double>    ; 2 uses
  %i.h = extractelement <2 x double> %i.g, i64 0
  %i.i = extractelement <2 x double> %i.g, i64 1
  %i.j = fdiv double %i.i, %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i16, ptr %i.k, align 8
  %i.m = sext i16 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.o = load i16, ptr %i.n, align 2
  %i.p = sext i16 %i.o to i32
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %i.e, ptr noundef nonnull @.str.231, double noundef %i.j, i32 noundef %i.m, i32 noundef %i.p) #6
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8
  %.not38 = icmp eq i64 %i.r, 0
  br i1 %.not38, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @ExplainIndentText(ptr noundef nonnull %0) #6
  %i.s = load ptr, ptr %0, align 8
  %i.t = load i64, ptr %i.q, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = uitofp i64 %i.t to double
  %i.y = load <2 x i64>, ptr %i.w, align 8
  %i.z = uitofp <2 x i64> %i.y to <2 x double>
  %i.aa = insertelement <2 x double> poison, double %i.x, i64 0
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = fdiv <2 x double> %i.z, %i.ab           ; 2 uses
  %i.ad = extractelement <2 x double> %i.ac, i64 0
  %i.ae = extractelement <2 x double> %i.ac, i64 1
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %i.s, ptr noundef nonnull @.str.232, i64 noundef %i.t, i64 noundef %i.v, double noundef %i.ad, double noundef %i.ae) #6
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = uitofp i64 %i.ag to double
  %i.ai = uitofp i64 %i.a to double
  %i.aj = fdiv double %i.ah, %i.ai
  tail call void @ExplainPropertyFloat(ptr noundef nonnull @.str.233, ptr noundef null, double noundef %i.aj, i32 noundef 3, ptr noundef nonnull %0) #6
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load i16, ptr %i.ak, align 8
  %i.am = sext i16 %i.al to i64
  tail call void @ExplainPropertyInteger(ptr noundef nonnull @.str.234, ptr noundef null, i64 noundef %i.am, ptr noundef nonnull %0) #6
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.ao = load i16, ptr %i.an, align 2
  %i.ap = sext i16 %i.ao to i64
  tail call void @ExplainPropertyInteger(ptr noundef nonnull @.str.235, ptr noundef null, i64 noundef %i.ap, ptr noundef nonnull %0) #6
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ar = load i64, ptr %i.aq, align 8
  tail call void @ExplainPropertyUInteger(ptr noundef nonnull @.str.236, ptr noundef null, i64 noundef %i.ar, ptr noundef nonnull %0) #6
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.at = load i64, ptr %i.as, align 8
  tail call void @ExplainPropertyUInteger(ptr noundef nonnull @.str.237, ptr noundef null, i64 noundef %i.at, ptr noundef nonnull %0) #6
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = uitofp i64 %i.av to double
  %i.ax = load i64, ptr %i.aq, align 8            ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 0
  %i.az = uitofp i64 %i.ax to double
  %i.ba = select i1 %i.ay, double 1.000000e+00, double %i.az
  %i.bb = fdiv double %i.aw, %i.ba
  tail call void @ExplainPropertyFloat(ptr noundef nonnull @.str.238, ptr noundef null, double noundef %i.bb, i32 noundef 3, ptr noundef nonnull %0) #6
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = uitofp i64 %i.bd to double
  %i.bf = load i64, ptr %i.aq, align 8            ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  %i.bh = uitofp i64 %i.bf to double
  %i.bi = select i1 %i.bg, double 1.000000e+00, double %i.bh
  %i.bj = fdiv double %i.be, %i.bi
  tail call void @ExplainPropertyFloat(ptr noundef nonnull @.str.239, ptr noundef null, double noundef %i.bj, i32 noundef 3, ptr noundef nonnull %0) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret void
}

declare void @tuplestore_get_stats(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @show_sort_group_keys(ptr %.8.val, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %9 = alloca %struct.StringInfoData, align 8     ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #6
  %i.b = icmp slt i32 %1, 1
  br i1 %i.b, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @initStringInfo(ptr noundef nonnull %9) #6
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call ptr @set_deparse_context_plan(ptr noundef %i.d, ptr noundef %.8.val, ptr noundef %7) #6 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 84
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %.lr.ph, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.j = load i8, ptr %i.i, align 8, !range !7, !noundef !8
  %i.k = trunc nuw i8 %i.j to i1
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.l = phi i1 [ true, %bb.b ], [ %i.k, %bb.c ]  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.8.val, i64 48 ; 2 uses
  %.not43 = icmp eq ptr %4, null
  %i.n = sext i32 %2 to i64                       ; 2 uses
  %wide.trip.count39 = zext nneg i32 %1 to i64    ; 2 uses
  br i1 %.not43, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.f
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %bb.f ], [ 0, %.lr.ph ] ; 3 uses
  %.03814.us = phi ptr [ %.1.us, %bb.f ], [ null, %.lr.ph ] ; 2 uses
  %.03913.us = phi ptr [ %i.x, %bb.f ], [ null, %.lr.ph ]
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv35
  %i.p = load i16, ptr %i.o, align 2              ; 2 uses
  %i.q = load ptr, ptr %i.m, align 8
  %i.r = call ptr @get_tle_by_resno(ptr noundef %i.q, i16 noundef signext %i.p) #6 ; 2 uses
  %.not.us = icmp eq ptr %i.r, null
  br i1 %.not.us, label %.split.us, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call ptr @deparse_expression(ptr noundef %i.t, ptr noundef %i.e, i1 noundef zeroext %i.l, i1 noundef zeroext true) #6 ; 2 uses
  call void @resetStringInfo(ptr noundef nonnull %9) #6
  call void @appendStringInfoString(ptr noundef nonnull %9, ptr noundef %i.u) #6
  %i.v = load ptr, ptr %9, align 8
  %i.w = call ptr @pstrdup(ptr noundef %i.v) #6
  %i.x = call ptr @lappend(ptr noundef %.03913.us, ptr noundef %i.w) #6 ; 2 uses
  %i.y = icmp slt i64 %indvars.iv35, %i.n
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = call ptr @lappend(ptr noundef %.03814.us, ptr noundef %i.u) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1.us = phi ptr [ %i.z, %bb.e ], [ %.03814.us, %bb.d ] ; 2 uses
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %exitcond40.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count39
  br i1 %exitcond40.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !54

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.t
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.t ], [ 0, %.lr.ph ] ; 6 uses
  %.03814 = phi ptr [ %.1, %bb.t ], [ null, %.lr.ph ] ; 2 uses
  %.03913 = phi ptr [ %i.bp, %bb.t ], [ null, %.lr.ph ]
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv
  %i.ab = load i16, ptr %i.aa, align 2            ; 2 uses
  %i.ac = load ptr, ptr %i.m, align 8
  %i.ad = call ptr @get_tle_by_resno(ptr noundef %i.ac, i16 noundef signext %i.ab) #6 ; 2 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %.split.us, label %bb.g

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi i16 [ %i.p, %.lr.ph.split.us ], [ %i.ab, %.lr.ph.split ]
  %i.ae = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.af = sext i16 %.us-phi to i32
  %i.ag = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.255, i32 noundef %i.af) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.9, i32 noundef 2818, ptr noundef nonnull @__func__.show_sort_group_keys) #6
  unreachable

bb.g:                                             ; preds = %.lr.ph.split
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = call ptr @deparse_expression(ptr noundef %i.ai, ptr noundef %i.e, i1 noundef zeroext %i.l, i1 noundef zeroext true) #6 ; 2 uses
  call void @resetStringInfo(ptr noundef nonnull %9) #6
  call void @appendStringInfoString(ptr noundef nonnull %9, ptr noundef %i.aj) #6
  %i.ak = load ptr, ptr %i.ah, align 8
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.am = load i32, ptr %i.al, align 4            ; 5 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %i.ao = load i32, ptr %i.an, align 4            ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 %indvars.iv
  %i.aq = load i8, ptr %i.ap, align 1, !range !7, !noundef !8
  %i.ar = trunc nuw i8 %i.aq to i1                ; 2 uses
  %i.as = call i32 @exprType(ptr noundef %i.ak) #6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i8 0, ptr %i.a, align 1
  %i.at = call ptr @lookup_type_cache(i32 noundef %i.as, i32 noundef 6) #6 ; 2 uses
  %.not31.i = icmp eq i32 %i.ao, 0
  br i1 %.not31.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = call i32 @get_typcollation(i32 noundef %i.as) #6
  %.not32.i = icmp eq i32 %i.ao, %i.au
  br i1 %.not32.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = call ptr @get_collation_name(i32 noundef %i.ao) #6 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ax = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.ay = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.258, i32 noundef %i.ao) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.9, i32 noundef 2869, ptr noundef nonnull @__func__.show_sortorder_options) #6
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.az = call ptr @quote_identifier(ptr noundef nonnull %i.av) #6
  call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %9, ptr noundef nonnull @.str.259, ptr noundef %i.az) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h, %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 60
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = icmp eq i32 %i.am, %i.bb
  br i1 %i.bc, label %.thread.i, label %bb.m

.thread.i:                                        ; preds = %bb.l
  call void @appendStringInfoString(ptr noundef nonnull %9, ptr noundef nonnull @.str.260) #6
  store i8 1, ptr %i.a, align 1
  %.not37.i = xor i1 %i.ar, true
  br label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.be = load i32, ptr %i.bd, align 8
  %.not33.i = icmp eq i32 %i.am, %i.be
  br i1 %.not33.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = call ptr @get_opname(i32 noundef %i.am) #6 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bh = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.bi = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.261, i32 noundef %i.am) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.9, i32 noundef 2884, ptr noundef nonnull @__func__.show_sortorder_options) #6
  unreachable

bb.p:                                             ; preds = %bb.n
  call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %9, ptr noundef nonnull @.str.262, ptr noundef nonnull %i.bf) #6
  %i.bj = call i32 @get_equality_op_for_ordering_op(i32 noundef %i.am, ptr noundef nonnull %i.a) #6 ; 0 uses
  %.pre.i = load i8, ptr %i.a, align 1, !range !7
  %i.bk = trunc nuw i8 %.pre.i to i1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %i.bl = phi i1 [ false, %bb.m ], [ %i.bk, %bb.p ] ; 2 uses
  %.not.i = xor i1 %i.ar, true                    ; 2 uses
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.bl
  br i1 %or.cond.i, label %bb.r, label %.sink.split.i

bb.r:                                             ; preds = %bb.q, %.thread.i
  %.not39.i = phi i1 [ %.not37.i, %.thread.i ], [ %.not.i, %bb.q ]
  %i.bm = phi i1 [ true, %.thread.i ], [ %i.bl, %bb.q ]
  %or.cond4.i = select i1 %.not39.i, i1 %i.bm, i1 false
  br i1 %or.cond4.i, label %.sink.split.i, label %show_sortorder_options.exit

.sink.split.i:                                    ; preds = %bb.r, %bb.q
  %.str.264.sink.i = phi ptr [ @.str.263, %bb.q ], [ @.str.264, %bb.r ]
  call void @appendStringInfoString(ptr noundef nonnull %9, ptr noundef nonnull %.str.264.sink.i) #6
  br label %show_sortorder_options.exit

show_sortorder_options.exit:                      ; preds = %bb.r, %.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.bn = load ptr, ptr %9, align 8
  %i.bo = call ptr @pstrdup(ptr noundef %i.bn) #6
  %i.bp = call ptr @lappend(ptr noundef %.03913, ptr noundef %i.bo) #6 ; 2 uses
  %i.bq = icmp slt i64 %indvars.iv, %i.n
  br i1 %i.bq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %show_sortorder_options.exit
  %i.br = call ptr @lappend(ptr noundef %.03814, ptr noundef %i.aj) #6
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %show_sortorder_options.exit
  %.1 = phi ptr [ %i.br, %bb.s ], [ %.03814, %show_sortorder_options.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count39
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !54

._crit_edge:                                      ; preds = %bb.t, %bb.f
  %.039.lcssa = phi ptr [ %i.x, %bb.f ], [ %i.bp, %bb.t ]
  %.038.lcssa = phi ptr [ %.1.us, %bb.f ], [ %.1, %bb.t ]
  call void @ExplainPropertyList(ptr noundef %0, ptr noundef %.039.lcssa, ptr noundef %8) #6
  %i.bs = icmp sgt i32 %2, 0
  br i1 %i.bs, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge
  call void @ExplainPropertyList(ptr noundef nonnull @.str.257, ptr noundef %.038.lcssa, ptr noundef %8) #6
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge, %bb.u, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @show_grouping_set_keys(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3, i1 noundef zeroext %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.h = load i32, ptr %i.g, align 8
  %i.i = and i32 %i.h, -2
  %switch = icmp eq i32 %i.i, 2                   ; 2 uses
  %spec.select = select i1 %switch, ptr @.str.250, ptr @.str.248 ; 2 uses
  %spec.select75 = select i1 %switch, ptr @.str.251, ptr @.str.252 ; 4 uses
  tail call void @ExplainOpenGroup(ptr noundef nonnull @.str.253, ptr noundef null, i1 noundef zeroext true, ptr noundef %6) #6
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.s = load ptr, ptr %i.r, align 8
  %.val = load ptr, ptr %i.a, align 8
  tail call fastcc void @show_sort_group_keys(ptr %.val, ptr noundef nonnull @.str.254, i32 noundef %i.k, i32 noundef 0, ptr noundef %i.m, ptr noundef %i.o, ptr noundef %i.q, ptr noundef %i.s, ptr noundef %5, ptr noundef %6)
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.u = load i32, ptr %i.t, align 8
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 28 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  tail call void @ExplainOpenGroup(ptr noundef nonnull %spec.select75, ptr noundef nonnull %spec.select75, i1 noundef zeroext false, ptr noundef %6) #6
  %.not67 = icmp eq ptr %i.d, null
  br i1 %.not67, label %.critedge, label %.lr.ph87

.lr.ph87:                                         ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ad = load i32, ptr %i.z, align 4
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph107, label %.critedge

.lr.ph107:                                        ; preds = %.lr.ph87, %bb.h
  %indvars.iv92106 = phi i64 [ %indvars.iv.next93, %bb.h ], [ 0, %.lr.ph87 ] ; 2 uses
  %i.af = load ptr, ptr %i.aa, align 8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv92106
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %.not69 = icmp eq ptr %i.ah, null
  br i1 %.not69, label %.critedge74.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph107
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ak = load i32, ptr %i.ai, align 4
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph85, label %.critedge74.thread

.critedge:                                        ; preds = %bb.h, %.lr.ph87, %bb.d
  tail call void @ExplainCloseGroup(ptr noundef nonnull %spec.select75, ptr noundef nonnull %spec.select75, i1 noundef zeroext false, ptr noundef %6) #6
  br i1 %.not, label %bb.k, label %bb.i

.lr.ph85:                                         ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.lr.ph ] ; 2 uses
  %.0587784 = phi ptr [ %i.ba, %bb.e ], [ null, %.lr.ph ]
  %i.am = load ptr, ptr %i.aj, align 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2            ; 2 uses
  %i.as = load ptr, ptr %i.ab, align 8
  %i.at = tail call ptr @get_tle_by_resno(ptr noundef %i.as, i16 noundef signext %i.ar) #6 ; 2 uses
  %.not72 = icmp eq ptr %i.at, null
  br i1 %.not72, label %.split, label %bb.e

.critedge74:                                      ; preds = %bb.e
  %.not71 = icmp eq ptr %i.ba, null
  br i1 %.not71, label %.critedge74.thread, label %bb.g

.split:                                           ; preds = %.lr.ph85
  %i.au = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.av = sext i16 %i.ar to i32
  %i.aw = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.255, i32 noundef %i.av) #6 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.9, i32 noundef 2739, ptr noundef nonnull @__func__.show_grouping_set_keys) #6
  unreachable

bb.e:                                             ; preds = %.lr.ph85
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = tail call ptr @deparse_expression(ptr noundef %i.ay, ptr noundef %3, i1 noundef zeroext %4, i1 noundef zeroext true) #6
  %i.ba = tail call ptr @lappend(ptr noundef %.0587784, ptr noundef %i.az) #6 ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bb = load i32, ptr %i.ai, align 4
  %i.bc = sext i32 %i.bb to i64
  %i.bd = icmp slt i64 %indvars.iv.next, %i.bc
  br i1 %i.bd, label %.lr.ph85, label %.critedge74

.critedge74.thread:                               ; preds = %.lr.ph, %.lr.ph107, %.critedge74
  %i.be = load i32, ptr %i.ac, align 8
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge74.thread
  tail call void @ExplainPropertyText(ptr noundef nonnull %spec.select, ptr noundef nonnull @.str.256, ptr noundef nonnull %6) #6
  br label %bb.h

bb.g:                                             ; preds = %.critedge74.thread, %.critedge74
  %.058.lcssa100 = phi ptr [ null, %.critedge74.thread ], [ %i.ba, %.critedge74 ]
  tail call void @ExplainPropertyListNested(ptr noundef nonnull %spec.select, ptr noundef %.058.lcssa100, ptr noundef %6) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92106, 1 ; 2 uses
  %i.bg = load i32, ptr %i.z, align 4
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp slt i64 %indvars.iv.next93, %i.bh
  br i1 %i.bi, label %.lr.ph107, label %.critedge

bb.i:                                             ; preds = %.critedge
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 28 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = add i32 %i.bn, -1
  store i32 %i.bo, ptr %i.bm, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %.critedge
  tail call void @ExplainCloseGroup(ptr noundef nonnull @.str.253, ptr noundef null, i1 noundef zeroext true, ptr noundef %6) #6
  ret void
}

declare ptr @get_tle_by_resno(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @ExplainPropertyListNested(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @resetStringInfo(ptr noundef) local_unnamed_addr #2

declare ptr @pstrdup(ptr noundef) local_unnamed_addr #2

declare i32 @exprType(ptr noundef) local_unnamed_addr #2

declare ptr @lookup_type_cache(i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @get_typcollation(i32 noundef) local_unnamed_addr #2

declare ptr @get_collation_name(i32 noundef) local_unnamed_addr #2

declare ptr @get_opname(i32 noundef) local_unnamed_addr #2

declare i32 @get_equality_op_for_ordering_op(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @appendStringInfoSpaces(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @show_window_keys(ptr noundef nonnull %0, ptr %.8.val, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @set_deparse_context_plan(ptr noundef %i.b, ptr noundef %.8.val, ptr noundef %3) #6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load i8, ptr %i.g, align 8, !range !7, !noundef !8
  %i.i = trunc nuw i8 %i.h to i1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i1 [ true, %bb.a ], [ %i.i, %bb.b ]  ; 2 uses
  %i.k = icmp sgt i32 %1, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 48 ; 2 uses
  %wide.trip.count = zext nneg i32 %1 to i64
  %i.m = load i16, ptr %2, align 2                ; 2 uses
  %i.n = load ptr, ptr %i.l, align 8
  %i.o = tail call ptr @get_tle_by_resno(ptr noundef %i.n, i16 noundef signext %i.m) #6 ; 2 uses
  %.not.peel = icmp eq ptr %i.o, null
  br i1 %.not.peel, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call ptr @deparse_expression(ptr noundef %i.q, ptr noundef %i.c, i1 noundef zeroext %i.j, i1 noundef zeroext true) #6 ; 2 uses
  tail call void @appendStringInfoString(ptr noundef nonnull %0, ptr noundef %i.r) #6
  tail call void @pfree(ptr noundef %i.r) #6
  %exitcond.peel.not = icmp eq i32 %1, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next

._crit_edge:                                      ; preds = %bb.e, %bb.d, %bb.c
  ret void

.peel.next:                                       ; preds = %bb.d, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 1, %bb.d ] ; 2 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv
  %i.t = load i16, ptr %i.s, align 2              ; 2 uses
  %i.u = load ptr, ptr %i.l, align 8
  %i.v = tail call ptr @get_tle_by_resno(ptr noundef %i.u, i16 noundef signext %i.t) #6 ; 2 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %.peel.next, %.lr.ph
  %.lcssa = phi i16 [ %i.m, %.lr.ph ], [ %i.t, %.peel.next ]
  %i.w = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.x = sext i16 %.lcssa to i32
  %i.y = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.255, i32 noundef %i.x) #6 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.9, i32 noundef 2991, ptr noundef nonnull @__func__.show_window_keys) #6
  unreachable

bb.e:                                             ; preds = %.peel.next
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call ptr @deparse_expression(ptr noundef %i.aa, ptr noundef %i.c, i1 noundef zeroext %i.j, i1 noundef zeroext true) #6 ; 2 uses
  tail call void @appendStringInfoString(ptr noundef nonnull %0, ptr noundef nonnull @.str.25) #6
  tail call void @appendStringInfoString(ptr noundef nonnull %0, ptr noundef %i.ab) #6
  tail call void @pfree(ptr noundef %i.ab) #6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.peel.next, !llvm.loop !55
}

declare ptr @get_window_frame_options_for_explain(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @tuplesort_get_stats(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @tuplesort_method_name(i32 noundef) local_unnamed_addr #2

declare ptr @tuplesort_space_type_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @show_incremental_sort_group_info(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.StringInfoData, align 8     ; 6 uses
  %5 = alloca %struct.StringInfoData, align 8     ; 6 uses
  %6 = alloca %struct.StringInfoData, align 8     ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = and i32 %i.b, 1
  %.not73 = icmp eq i32 %i.c, 0
  br i1 %.not73, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @tuplesort_method_name(i32 noundef 1) #6
  %i.e = tail call ptr @lappend(ptr noundef null, ptr noundef %i.d) #6
  %.pre = load i32, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i32 [ %.pre, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.1 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]  ; 2 uses
  %i.g = and i32 %i.f, 2
  %.not73.1 = icmp eq i32 %i.g, 0
  br i1 %.not73.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @tuplesort_method_name(i32 noundef 2) #6
  %i.i = tail call ptr @lappend(ptr noundef %.1, ptr noundef %i.h) #6
  %.pre82 = load i32, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = phi i32 [ %.pre82, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %.1.1 = phi ptr [ %i.i, %bb.d ], [ %.1, %bb.c ] ; 2 uses
  %i.k = and i32 %i.j, 4
  %.not73.2 = icmp eq i32 %i.k, 0
  br i1 %.not73.2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @tuplesort_method_name(i32 noundef 4) #6
  %i.m = tail call ptr @lappend(ptr noundef %.1.1, ptr noundef %i.l) #6
  %.pre83 = load i32, ptr %i.a, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = phi i32 [ %.pre83, %bb.f ], [ %i.j, %bb.e ]
  %.1.2 = phi ptr [ %i.m, %bb.f ], [ %.1.1, %bb.e ] ; 2 uses
  %i.o = and i32 %i.n, 8
  %.not73.3 = icmp eq i32 %i.o, 0
  br i1 %.not73.3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = tail call ptr @tuplesort_method_name(i32 noundef 8) #6
  %i.q = tail call ptr @lappend(ptr noundef %.1.2, ptr noundef %i.p) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.3 = phi ptr [ %i.q, %bb.h ], [ %.1.2, %bb.g ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.s = load i32, ptr %i.r, align 8
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  br i1 %2, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.u = load ptr, ptr %3, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.w = load i32, ptr %i.v, align 4
  %i.x = shl i32 %i.w, 1
  tail call void @appendStringInfoSpaces(ptr noundef %i.u, i32 noundef %i.x) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.y = load ptr, ptr %3, align 8
  %i.z = load i64, ptr %0, align 8
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %i.y, ptr noundef nonnull @.str.282, ptr noundef %1, i64 noundef %i.z) #6
  %.not.i = icmp eq ptr %.1.3, null
  br i1 %.not.i, label %.thread85, label %list_length.exit

.thread85:                                        ; preds = %bb.l
  %i.aa = load ptr, ptr %3, align 8
  tail call void @appendStringInfoString(ptr noundef %i.aa, ptr noundef nonnull @.str.284) #6
  br label %.critedge

list_length.exit:                                 ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %.1.3, i64 4
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = icmp sgt i32 %i.ac, 1
  %i.ae = load ptr, ptr %3, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.1.3, i64 4 ; 3 uses
  %.str.283..str.284 = select i1 %i.ad, ptr @.str.283, ptr @.str.284
  tail call void @appendStringInfoString(ptr noundef %i.ae, ptr noundef nonnull %.str.283..str.284) #6
  %i.ag = getelementptr inbounds nuw i8, ptr %.1.3, i64 16
  %i.ah = load i32, ptr %i.af, align 4
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %list_length.exit75, label %.critedge

list_length.exit75:                               ; preds = %list_length.exit, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ 0, %list_length.exit ] ; 3 uses
  %i.aj = load ptr, ptr %i.ag, align 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv
  %i.al = load ptr, ptr %3, align 8
  %i.am = load ptr, ptr %i.ak, align 8
  tail call void @appendStringInfoString(ptr noundef %i.al, ptr noundef %i.am) #6
  %i.an = load i32, ptr %i.af, align 4            ; 2 uses
  %i.ao = add i32 %i.an, -1
  %i.ap = sext i32 %i.ao to i64
  %i.aq = icmp slt i64 %indvars.iv, %i.ap
  br i1 %i.aq, label %bb.m, label %bb.n

.critedge:                                        ; preds = %bb.n, %.thread85, %list_length.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = icmp sgt i64 %i.as, 0
  br i1 %i.at, label %bb.o, label %bb.p

bb.m:                                             ; preds = %list_length.exit75
  %i.au = load ptr, ptr %3, align 8
  tail call void @appendStringInfoString(ptr noundef %i.au, ptr noundef nonnull @.str.25) #6
  %.pre84 = load i32, ptr %i.af, align 4
  br label %bb.n

bb.n:                                             ; preds = %list_length.exit75, %bb.m
  %i.av = phi i32 [ %i.an, %list_length.exit75 ], [ %.pre84, %bb.m ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = icmp slt i64 %indvars.iv.next, %i.aw
  br i1 %i.ax, label %list_length.exit75, label %.critedge

bb.o:                                             ; preds = %.critedge
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = load i64, ptr %0, align 8
  %i.bb = sdiv i64 %i.az, %i.ba
  %i.bc = tail call ptr @tuplesort_space_type_name(i32 noundef 1) #6 ; 2 uses
  %i.bd = load ptr, ptr %3, align 8
  %i.be = load i64, ptr %i.ar, align 8
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %i.bd, ptr noundef nonnull @.str.285, ptr noundef %i.bc, i64 noundef %i.bb, ptr noundef %i.bc, i64 noundef %i.be) #6
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.critedge
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = icmp sgt i64 %i.bg, 0
  br i1 %i.bh, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = load i64, ptr %0, align 8
  %i.bl = sdiv i64 %i.bj, %i.bk
  %i.bm = tail call ptr @tuplesort_space_type_name(i32 noundef 0) #6 ; 2 uses
  %i.bn = load ptr, ptr %3, align 8
  %i.bo = load i64, ptr %i.bf, align 8
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %i.bn, ptr noundef nonnull @.str.285, ptr noundef %i.bm, i64 noundef %i.bl, ptr noundef %i.bm, i64 noundef %i.bo) #6
  br label %bb.w

bb.r:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @initStringInfo(ptr noundef nonnull %4) #6
  call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %4, ptr noundef nonnull @.str.286, ptr noundef %1) #6
  %i.bp = load ptr, ptr %4, align 8
  call void @ExplainOpenGroup(ptr noundef nonnull @.str.287, ptr noundef %i.bp, i1 noundef zeroext true, ptr noundef nonnull %3) #6
  %i.bq = load i64, ptr %0, align 8
  call void @ExplainPropertyInteger(ptr noundef nonnull @.str.288, ptr noundef null, i64 noundef %i.bq, ptr noundef nonnull %3) #6
  call void @ExplainPropertyList(ptr noundef nonnull @.str.289, ptr noundef %.1.3, ptr noundef nonnull %3) #6
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = icmp sgt i64 %i.bs, 0
  br i1 %i.bt, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = load i64, ptr %0, align 8
  %i.bx = sdiv i64 %i.bv, %i.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.by = call ptr @tuplesort_space_type_name(i32 noundef 1) #6
  call void @initStringInfo(ptr noundef nonnull %5) #6
  call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %5, ptr noundef nonnull @.str.290, ptr noundef %i.by) #6
  %i.bz = load ptr, ptr %5, align 8
  call void @ExplainOpenGroup(ptr noundef nonnull @.str.291, ptr noundef %i.bz, i1 noundef zeroext true, ptr noundef nonnull %3) #6
  call void @ExplainPropertyInteger(ptr noundef nonnull @.str.292, ptr noundef nonnull @.str.52, i64 noundef %i.bx, ptr noundef nonnull %3) #6
  %i.ca = load i64, ptr %i.br, align 8
  call void @ExplainPropertyInteger(ptr noundef nonnull @.str.293, ptr noundef nonnull @.str.52, i64 noundef %i.ca, ptr noundef nonnull %3) #6
  %i.cb = load ptr, ptr %5, align 8
  call void @ExplainCloseGroup(ptr noundef nonnull @.str.291, ptr noundef %i.cb, i1 noundef zeroext true, ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = icmp sgt i64 %i.cd, 0
  br i1 %i.ce, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = load i64, ptr %0, align 8
  %i.ci = sdiv i64 %i.cg, %i.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  %i.cj = call ptr @tuplesort_space_type_name(i32 noundef 0) #6
  call void @initStringInfo(ptr noundef nonnull %6) #6
  call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %6, ptr noundef nonnull @.str.290, ptr noundef %i.cj) #6
  %i.ck = load ptr, ptr %6, align 8
  call void @ExplainOpenGroup(ptr noundef nonnull @.str.291, ptr noundef %i.ck, i1 noundef zeroext true, ptr noundef nonnull %3) #6
  call void @ExplainPropertyInteger(ptr noundef nonnull @.str.292, ptr noundef nonnull @.str.52, i64 noundef %i.ci, ptr noundef nonnull %3) #6
  %i.cl = load i64, ptr %i.cc, align 8
  call void @ExplainPropertyInteger(ptr noundef nonnull @.str.293, ptr noundef nonnull @.str.52, i64 noundef %i.cl, ptr noundef nonnull %3) #6
  %i.cm = load ptr, ptr %6, align 8
  call void @ExplainCloseGroup(ptr noundef nonnull @.str.291, ptr noundef %i.cm, i1 noundef zeroext true, ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cn = load ptr, ptr %4, align 8
  call void @ExplainCloseGroup(ptr noundef nonnull @.str.287, ptr noundef %i.cn, i1 noundef zeroext true, ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %bb.w

bb.w:                                             ; preds = %bb.p, %bb.q, %bb.v
  ret void
}

declare i32 @bms_next_member(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @bms_is_member(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.smax.v2i16(<2 x i16>, <2 x i16>) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { cold nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{!2, !9}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = !{!"llvm.loop.peeled.count", i32 1}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9, !12}
!16 = distinct !{!16, !44}
!17 = distinct !{!17, !44}
!18 = distinct !{!18, !44}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9, !45, !46}
!21 = distinct !{!21, !9, !46, !45}
!22 = distinct !{!22, !9, !45, !46}
!23 = distinct !{!23, !9, !46, !45}
!24 = distinct !{!24, !9, !45, !46}
!25 = distinct !{!25, !9, !46, !45}
!26 = distinct !{!26, !9}
!27 = distinct !{!27, !12}
!28 = distinct !{null}
!29 = distinct !{!29, !9}
!30 = distinct !{!30, !9}
!31 = distinct !{!31, !9}
!32 = distinct !{!32, !9}
!33 = distinct !{null}
!34 = distinct !{!34, !9}
!35 = distinct !{!35, !9}
!36 = distinct !{!36, !12}
!37 = distinct !{!37, !9}
!38 = distinct !{!38, !9}
!39 = distinct !{!39, !9}
!40 = distinct !{!40, !9}
!41 = distinct !{null}
!42 = distinct !{!42, !9}
!43 = distinct !{null}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = !{!"llvm.loop.isvectorized", i32 1}
!46 = !{!"llvm.loop.unroll.runtime.disable"}
!47 = distinct !{!47, !9}
!48 = distinct !{!48, !9}
!49 = distinct !{!49, !9}
!50 = distinct !{!50, !9}
!51 = distinct !{!51, !9, !52}
!52 = !{!"llvm.loop.unswitch.partial.disable"}
!53 = distinct !{!53, !9}
!54 = distinct !{!54, !9}
!55 = distinct !{!55, !9, !12}
end_hunk_0
