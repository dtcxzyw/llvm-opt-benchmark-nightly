inline.NumInlined: 136
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@complete_from_variables:bb.a
  %i.a = tail call ptr @pg_malloc_mul(i64 noundef 8, i64 noundef 101) #10 ; 3 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 416), align 8
  %.0.in28 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.029 = load ptr, ptr %.0.in28, align 8         ; 3 uses
  %.not30 = icmp eq ptr %.029, null
  br i1 %.not30, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  br i1 %3, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.d
  %.034.us = phi ptr [ %.0.us, %bb.d ], [ %.029, %.lr.ph ] ; 3 uses
  %.02233.us = phi i32 [ %.1.us, %bb.d ], [ 100, %.lr.ph ] ; 4 uses
  %.02332.us = phi i32 [ %.124.us, %bb.d ], [ 0, %.lr.ph ] ; 4 uses
  %.02531.us = phi ptr [ %.126.us, %bb.d ], [ %i.a, %.lr.ph ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.034.us, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %.not12.us = icmp eq ptr %i.d, null
  br i1 %.not12.us, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.e = load ptr, ptr %.034.us, align 8
  %.not.i.us = icmp slt i32 %.02332.us, %.02233.us
  br i1 %.not.i.us, label %append_variable_names.exit.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = shl i32 %.02233.us, 1                    ; 2 uses
  %i.g = or disjoint i32 %i.f, 1
  %i.h = sext i32 %i.g to i64
  %i.i = tail call ptr @pg_realloc_mul(ptr noundef %.02531.us, i64 noundef 8, i64 noundef %i.h) #10
  br label %append_variable_names.exit.us

append_variable_names.exit.us:                    ; preds = %bb.c, %bb.b
  %.227.us = phi ptr [ %.02531.us, %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %.2.us = phi i32 [ %.02233.us, %bb.b ], [ %i.f, %bb.c ]
  %i.j = tail call ptr (ptr, ...) @psprintf(ptr noundef nonnull @.str.129, ptr noundef %1, ptr noundef %i.e, ptr noundef %2) #10
  %i.k = add i32 %.02332.us, 1
  %i.l = sext i32 %.02332.us to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %.227.us, i64 %i.l
  store ptr %i.j, ptr %i.m, align 8
  br label %bb.d

bb.d:                                             ; preds = %append_variable_names.exit.us, %.lr.ph.split.us
  %.126.us = phi ptr [ %.02531.us, %.lr.ph.split.us ], [ %.227.us, %append_variable_names.exit.us ] ; 2 uses
  %.124.us = phi i32 [ %.02332.us, %.lr.ph.split.us ], [ %i.k, %append_variable_names.exit.us ] ; 2 uses
  %.1.us = phi i32 [ %.02233.us, %.lr.ph.split.us ], [ %.2.us, %append_variable_names.exit.us ]
  %.0.in.us = getelementptr inbounds nuw i8, ptr %.034.us, i64 32
  %.0.us = load ptr, ptr %.0.in.us, align 8       ; 2 uses
  %.not.us = icmp eq ptr %.0.us, null
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !20

.lr.ph.split:                                     ; preds = %.lr.ph, %append_variable_names.exit
  %.034 = phi ptr [ %.0, %append_variable_names.exit ], [ %.029, %.lr.ph ] ; 2 uses
  %.02233 = phi i32 [ %.2, %append_variable_names.exit ], [ 100, %.lr.ph ] ; 3 uses
  %.02332 = phi i32 [ %i.t, %append_variable_names.exit ], [ 0, %.lr.ph ] ; 3 uses
  %.02531 = phi ptr [ %.227, %append_variable_names.exit ], [ %i.a, %.lr.ph ] ; 2 uses
  %i.n = load ptr, ptr %.034, align 8
  %.not.i = icmp slt i32 %.02332, %.02233
  br i1 %.not.i, label %append_variable_names.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split
  %i.o = shl i32 %.02233, 1                       ; 2 uses
  %i.p = or disjoint i32 %i.o, 1
  %i.q = sext i32 %i.p to i64
  %i.r = tail call ptr @pg_realloc_mul(ptr noundef %.02531, i64 noundef 8, i64 noundef %i.q) #10
  br label %append_variable_names.exit

append_variable_names.exit:                       ; preds = %.lr.ph.split, %bb.e
  %.227 = phi ptr [ %.02531, %.lr.ph.split ], [ %i.r, %bb.e ] ; 3 uses
  %.2 = phi i32 [ %.02233, %.lr.ph.split ], [ %i.o, %bb.e ]
  %i.s = tail call ptr (ptr, ...) @psprintf(ptr noundef nonnull @.str.129, ptr noundef %1, ptr noundef %i.n, ptr noundef %2) #10
  %i.t = add i32 %.02332, 1                       ; 2 uses
  %i.u = sext i32 %.02332 to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %.227, i64 %i.u
  store ptr %i.s, ptr %i.v, align 8
  %.0.in = getelementptr inbounds nuw i8, ptr %.034, i64 32
  %.0 = load ptr, ptr %.0.in, align 8             ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !20

._crit_edge:                                      ; preds = %append_variable_names.exit, %bb.d, %bb.a
  %.025.lcssa = phi ptr [ %i.a, %bb.a ], [ %.126.us, %bb.d ], [ %.227, %append_variable_names.exit ] ; 4 uses
  %.023.lcssa = phi i32 [ 0, %bb.a ], [ %.124.us, %bb.d ], [ %i.t, %append_variable_names.exit ] ; 3 uses
  %i.w = sext i32 %.023.lcssa to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %.025.lcssa, i64 %i.w
  store ptr null, ptr %i.x, align 8
  store i1 true, ptr @completion_case_sensitive, align 1
  store ptr %.025.lcssa, ptr @completion_charpp, align 8
  %i.y = tail call ptr @rl_completion_matches(ptr noundef %0, ptr noundef nonnull @complete_from_list) #10
  %i.z = icmp sgt i32 %.023.lcssa, 0
  br i1 %i.z, label %.lr.ph39.preheader, label %._crit_edge40

.lr.ph39.preheader:                               ; preds = %._crit_edge
  %wide.trip.count = zext nneg i32 %.023.lcssa to i64
  br label %.lr.ph39

.lr.ph39:                                         ; preds = %.lr.ph39.preheader, %.lr.ph39
  %indvars.iv = phi i64 [ 0, %.lr.ph39.preheader ], [ %indvars.iv.next, %.lr.ph39 ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.025.lcssa, i64 %indvars.iv
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void @free(ptr noundef %i.ab) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge40, label %.lr.ph39, !llvm.loop !21

._crit_edge40:                                    ; preds = %.lr.ph39, %._crit_edge
  tail call void @free(ptr noundef nonnull %.025.lcssa) #10
  ret ptr %i.y
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @MatchesArray(i1 noundef zeroext %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = add i32 %3, -1
  %i.b = icmp slt i32 %1, %i.a
  br i1 %i.b, label %HeadMatchesArray.exit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = icmp sgt i32 %3, 0
  br i1 %i.c, label %.lr.ph.preheader, label %.thread58

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 6 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = load i8, ptr %i.e, align 1
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread58, label %.lr.ph, !llvm.loop !22

.thread58:                                        ; preds = %bb.c, %.preheader
  %.not37 = icmp eq i32 %1, %3
  br i1 %.not37, label %.preheader.i, label %HeadMatchesArray.exit

.preheader.i:                                     ; preds = %.thread58
  %i.h = icmp slt i32 %3, 1
  br i1 %i.h, label %HeadMatchesArray.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %3 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = trunc i64 %indvars.iv.i to i32
  %i.l = xor i32 %i.k, -1
  %i.m = add i32 %3, %i.l
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %2, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call fastcc zeroext i1 @word_matches(ptr noundef %i.j, ptr noundef %i.p, i1 noundef zeroext %0) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp ne i64 %indvars.iv.next.i, %wide.trip.count.i
  %or.cond.not = select i1 %i.q, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %HeadMatchesArray.exit, !llvm.loop !9

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.s = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.t = icmp slt i32 %1, %i.s
  br i1 %i.t, label %HeadMatchesArray.exit, label %.preheader.i38

.preheader.i38:                                   ; preds = %bb.d
  %i.u = icmp eq i64 %indvars.iv, 0
  br i1 %i.u, label %.loopexit, label %.lr.ph.i41

bb.e:                                             ; preds = %.lr.ph.i41
  %indvars.iv.next.i44 = add nuw nsw i64 %indvars.iv.i42, 1 ; 2 uses
  %exitcond.not.i45 = icmp eq i64 %indvars.iv.next.i44, %indvars.iv
  br i1 %exitcond.not.i45, label %.loopexit, label %.lr.ph.i41, !llvm.loop !9

.lr.ph.i41:                                       ; preds = %.preheader.i38, %bb.e
  %indvars.iv.i42 = phi i64 [ %indvars.iv.next.i44, %bb.e ], [ 0, %.preheader.i38 ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i42
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = trunc i64 %indvars.iv.i42 to i32
  %i.y = xor i32 %i.x, -1
  %i.z = add i32 %1, %i.y
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %2, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call fastcc zeroext i1 @word_matches(ptr noundef %i.w, ptr noundef %i.ac, i1 noundef zeroext %0)
  br i1 %i.ad, label %bb.e, label %HeadMatchesArray.exit

.loopexit:                                        ; preds = %bb.e, %.preheader.i38
  %i.ae = xor i32 %i.s, -1
  %i.af = add i32 %3, %i.ae                       ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ah = icmp slt i32 %1, %i.af
  br i1 %i.ah, label %HeadMatchesArray.exit, label %.preheader.i47

.preheader.i47:                                   ; preds = %.loopexit
  %i.ai = icmp slt i32 %i.af, 1
  br i1 %i.ai, label %HeadMatchesArray.exit, label %.lr.ph.preheader.i48

.lr.ph.preheader.i48:                             ; preds = %.preheader.i47
  %wide.trip.count.i49 = zext nneg i32 %i.af to i64
  br label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %.lr.ph.i50, %.lr.ph.preheader.i48
  %indvars.iv.i51 = phi i64 [ 0, %.lr.ph.preheader.i48 ], [ %indvars.iv.next.i53, %.lr.ph.i50 ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i51
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = trunc i64 %indvars.iv.i51 to i32
  %i.am = xor i32 %i.al, -1
  %i.an = add i32 %i.af, %i.am
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call fastcc zeroext i1 @word_matches(ptr noundef %i.ak, ptr noundef %i.aq, i1 noundef zeroext %0) ; 2 uses
  %indvars.iv.next.i53 = add nuw nsw i64 %indvars.iv.i51, 1 ; 2 uses
  %exitcond.not.i54 = icmp ne i64 %indvars.iv.next.i53, %wide.trip.count.i49
  %or.cond89.not = select i1 %i.ar, i1 %exitcond.not.i54, i1 false
  br i1 %or.cond89.not, label %.lr.ph.i50, label %HeadMatchesArray.exit, !llvm.loop !10

HeadMatchesArray.exit:                            ; preds = %.lr.ph.i41, %.lr.ph.i50, %.lr.ph.i, %.preheader.i47, %.preheader.i, %.loopexit, %bb.d, %.thread58, %bb.a
  %.033 = phi i1 [ %i.q, %.lr.ph.i ], [ false, %bb.a ], [ true, %.preheader.i ], [ false, %.thread58 ], [ true, %.preheader.i47 ], [ false, %bb.d ], [ false, %.loopexit ], [ %i.ar, %.lr.ph.i50 ], [ false, %.lr.ph.i41 ]
  ret i1 %.033
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @match_previous_words(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = alloca i8, align 1                       ; 3 uses
  %i.c = alloca i8, align 1                       ; 3 uses
  %i.d = alloca i8, align 1                       ; 3 uses
  %i.e = alloca i8, align 1                       ; 3 uses
  %i.f = alloca i8, align 1                       ; 3 uses
  %i.g = alloca i8, align 1                       ; 3 uses
  %i.h = alloca i8, align 1                       ; 3 uses
  %i.i = alloca i8, align 1                       ; 3 uses
  %i.j = alloca i8, align 1                       ; 3 uses
  %i.k = alloca i8, align 1                       ; 3 uses
  %i.l = alloca i8, align 1                       ; 3 uses
  %i.m = alloca i8, align 1                       ; 3 uses
  %i.n = alloca i8, align 1                       ; 3 uses
  %i.o = alloca i8, align 1                       ; 3 uses
  %i.p = alloca i8, align 1                       ; 3 uses
  %i.q = alloca i8, align 1                       ; 3 uses
  %i.r = alloca i8, align 1                       ; 3 uses
  %i.s = alloca i8, align 1                       ; 3 uses
  %i.t = alloca i8, align 1                       ; 3 uses
  %i.u = alloca i8, align 1                       ; 3 uses
  %i.v = alloca i8, align 1                       ; 3 uses
  %i.w = alloca i8, align 1                       ; 3 uses
  %i.x = alloca i8, align 1                       ; 3 uses
  %i.y = alloca i8, align 1                       ; 3 uses
  %i.z = alloca i8, align 1                       ; 3 uses
  %i.aa = alloca i8, align 1                      ; 3 uses
  %i.ab = alloca i8, align 1                      ; 3 uses
  %i.ac = alloca i8, align 1                      ; 3 uses
  %i.ad = alloca i8, align 1                      ; 3 uses
  %i.ae = alloca i8, align 1                      ; 3 uses
  %i.af = alloca i8, align 1                      ; 3 uses
  %i.ag = alloca i8, align 1                      ; 3 uses
  %i.ah = alloca i8, align 1                      ; 3 uses
  %i.ai = alloca i8, align 1                      ; 3 uses
  %i.aj = alloca i8, align 1                      ; 3 uses
  %i.ak = alloca i8, align 1                      ; 3 uses
  %i.al = alloca i8, align 1                      ; 3 uses
  %i.am = alloca i8, align 1                      ; 3 uses
  %i.an = alloca i8, align 1                      ; 3 uses
  %i.ao = alloca i8, align 1                      ; 3 uses
  %i.ap = alloca i8, align 1                      ; 3 uses
  %i.aq = alloca i8, align 1                      ; 3 uses
  %i.ar = alloca i8, align 1                      ; 3 uses
  %i.as = alloca i8, align 1                      ; 3 uses
  %i.at = alloca i8, align 1                      ; 3 uses
  %i.au = alloca i8, align 1                      ; 3 uses
  %i.av = alloca i8, align 1                      ; 3 uses
  %i.aw = alloca i8, align 1                      ; 3 uses
  %i.ax = alloca i8, align 1                      ; 3 uses
  %i.ay = alloca i8, align 1                      ; 3 uses
  %i.az = alloca i8, align 1                      ; 3 uses
  %i.ba = alloca i8, align 1                      ; 3 uses
  %i.bb = alloca i8, align 1                      ; 3 uses
  %i.bc = alloca i8, align 1                      ; 3 uses
  %i.bd = alloca i8, align 1                      ; 3 uses
  %i.be = alloca i8, align 1                      ; 3 uses
  %i.bf = alloca i8, align 1                      ; 3 uses
  %i.bg = alloca i8, align 1                      ; 3 uses
  %i.bh = alloca i8, align 1                      ; 3 uses
  %i.bi = alloca i8, align 1                      ; 3 uses
  %i.bj = alloca i8, align 1                      ; 3 uses
  %i.bk = alloca i8, align 1                      ; 3 uses
  %i.bl = alloca i8, align 1                      ; 3 uses
  %i.bm = alloca i8, align 1                      ; 3 uses
  %i.bn = alloca i8, align 1                      ; 3 uses
  %i.bo = alloca i8, align 1                      ; 3 uses
  %i.bp = alloca i8, align 1                      ; 3 uses
  %i.bq = alloca i8, align 1                      ; 3 uses
  %i.br = alloca i8, align 1                      ; 3 uses
  %i.bs = alloca i8, align 1                      ; 3 uses
  %i.bt = alloca i8, align 1                      ; 3 uses
  %i.bu = alloca i8, align 1                      ; 3 uses
  %i.bv = alloca i8, align 1                      ; 3 uses
  %i.bw = alloca i8, align 1                      ; 3 uses
  %i.bx = alloca i8, align 1                      ; 3 uses
  %i.by = alloca i8, align 1                      ; 3 uses
  %i.bz = alloca i8, align 1                      ; 3 uses
  %i.ca = alloca i8, align 1                      ; 3 uses
  %i.cb = alloca i8, align 1                      ; 3 uses
  %i.cc = alloca i8, align 1                      ; 3 uses
  %i.cd = alloca i8, align 1                      ; 3 uses
  %i.ce = alloca i8, align 1                      ; 3 uses
  %i.cf = alloca i8, align 1                      ; 3 uses
  %i.cg = alloca i8, align 1                      ; 3 uses
  %i.ch = alloca i8, align 1                      ; 3 uses
  %i.ci = alloca i8, align 1                      ; 3 uses
  %i.cj = alloca i8, align 1                      ; 3 uses
  %i.ck = alloca i8, align 1                      ; 3 uses
  %i.cl = alloca i8, align 1                      ; 3 uses
  %i.cm = alloca i8, align 1                      ; 3 uses
  %i.cn = alloca i8, align 1                      ; 3 uses
  %i.co = alloca i8, align 1                      ; 3 uses
  %i.cp = alloca i8, align 1                      ; 3 uses
  %i.cq = alloca i8, align 1                      ; 3 uses
  %i.cr = alloca i8, align 1                      ; 3 uses
  %i.cs = alloca i8, align 1                      ; 3 uses
  %i.ct = alloca i8, align 1                      ; 3 uses
  %i.cu = alloca i8, align 1                      ; 3 uses
  %i.cv = alloca i8, align 1                      ; 3 uses
  %i.cw = alloca i8, align 1                      ; 3 uses
  %i.cx = alloca i8, align 1                      ; 3 uses
  %i.cy = alloca i8, align 1                      ; 3 uses
  %i.cz = alloca i8, align 1                      ; 3 uses
  %i.da = alloca i8, align 1                      ; 3 uses
  %i.db = alloca i8, align 1                      ; 3 uses
  %i.dc = alloca i8, align 1                      ; 3 uses
  %i.dd = alloca i8, align 1                      ; 3 uses
  %i.de = alloca i8, align 1                      ; 3 uses
  %i.df = alloca i8, align 1                      ; 3 uses
  %i.dg = alloca i8, align 1                      ; 3 uses
  %i.dh = alloca i8, align 1                      ; 3 uses
  %i.di = alloca i8, align 1                      ; 3 uses
  %i.dj = alloca i8, align 1                      ; 3 uses
  %i.dk = alloca i8, align 1                      ; 3 uses
  %i.dl = alloca i8, align 1                      ; 3 uses
  %i.dm = alloca i8, align 1                      ; 3 uses
  %i.dn = alloca i8, align 1                      ; 3 uses
  %i.do = alloca i8, align 1                      ; 3 uses
  %i.dp = alloca i8, align 1                      ; 3 uses
  %i.dq = alloca i8, align 1                      ; 3 uses
  %i.dr = alloca i8, align 1                      ; 3 uses
  %i.ds = alloca i8, align 1                      ; 3 uses
  %i.dt = alloca i8, align 1                      ; 3 uses
  %i.du = alloca i8, align 1                      ; 3 uses
  %i.dv = alloca i8, align 1                      ; 3 uses
  %i.dw = alloca i8, align 1                      ; 3 uses
  %i.dx = alloca i8, align 1                      ; 3 uses
  %i.dy = alloca i8, align 1                      ; 3 uses
  %i.dz = alloca i8, align 1                      ; 3 uses
  %i.ea = alloca i8, align 1                      ; 3 uses
  %i.eb = alloca i8, align 1                      ; 3 uses
  %i.ec = alloca i8, align 1                      ; 3 uses
  %i.ed = alloca i8, align 1                      ; 3 uses
  %i.ee = alloca i8, align 1                      ; 3 uses
  %i.ef = alloca i8, align 1                      ; 3 uses
  %i.eg = alloca i8, align 1                      ; 3 uses
  %i.eh = alloca i8, align 1                      ; 3 uses
  %i.ei = alloca i8, align 1                      ; 3 uses
  %i.ej = alloca i8, align 1                      ; 3 uses
  %i.ek = alloca i8, align 1                      ; 3 uses
  %i.el = alloca i8, align 1                      ; 3 uses
  %i.em = alloca i8, align 1                      ; 3 uses
  %i.en = alloca i8, align 1                      ; 3 uses
  switch i32 %0, label %ends_with.exit1273.thread [
    i32 1, label %bb.b
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.h
    i32 6, label %bb.i
    i32 7, label %bb.j
    i32 8, label %bb.k
    i32 9, label %bb.l
    i32 10, label %bb.m
    i32 11, label %bb.o
    i32 12, label %bb.q
    i32 13, label %bb.s
    i32 14, label %bb.u
    i32 15, label %bb.v
    i32 16, label %bb.w
    i32 17, label %bb.x
    i32 18, label %bb.y
    i32 19, label %bb.z
end_hunk_0
