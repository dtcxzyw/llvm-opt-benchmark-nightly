Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/pathkeys?download=true
inline.NumInlined: 61
inline.NumDeleted: 22
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@find_mergeclauses_for_outer_pathkeys:bb.a
  br i1 %.not710.i, label %update_mergeclause_eclasses.exit, label %.lr.ph11.i

.lr.ph.i:                                         ; preds = %.lr.ph62, %.lr.ph.i
  %i.n = phi ptr [ %i.p, %.lr.ph.i ], [ %i.j, %.lr.ph62 ] ; 2 uses
  store ptr %i.n, ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !3

.lr.ph11.i:                                       ; preds = %.preheader.i, %.lr.ph11.i
  %i.q = phi ptr [ %i.s, %.lr.ph11.i ], [ %i.m, %.preheader.i ] ; 2 uses
  store ptr %i.q, ptr %i.k, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not7.i = icmp eq ptr %i.s, null
  br i1 %.not7.i, label %update_mergeclause_eclasses.exit, label %.lr.ph11.i, !llvm.loop !4

update_mergeclause_eclasses.exit:                 ; preds = %.lr.ph11.i, %.preheader.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.t = load i32, ptr %i.a, align 4
  %i.u = sext i32 %i.t to i64
  %i.v = icmp slt i64 %indvars.iv.next, %i.u
  br i1 %i.v, label %.lr.ph62, label %.critedge

.critedge:                                        ; preds = %update_mergeclause_eclasses.exit
  %.not48 = icmp eq ptr %1, null
  br i1 %.not48, label %.critedge53, label %.lr.ph77.split.split, !llvm.loop !16

.critedge.thread:                                 ; preds = %.lr.ph
  %.not48114 = icmp eq ptr %1, null
  br i1 %.not48114, label %.critedge53, label %.lr.ph77.split.split

.lr.ph77.split.split:                             ; preds = %.critedge, %.critedge.thread
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load i32, ptr %i.w, align 4
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph65, label %.critedge53

.lr.ph65:                                         ; preds = %.lr.ph77.split.split, %bb.d
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %bb.d ], [ 0, %.lr.ph77.split.split ] ; 2 uses
  %.0407595 = phi ptr [ %i.av, %bb.d ], [ null, %.lr.ph77.split.split ] ; 3 uses
  %i.ab = load ptr, ptr %i.x, align 8
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv107
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph73, label %.critedge53

.lr.ph73:                                         ; preds = %.lr.ph65, %bb.c
  %i.ai = phi i32 [ %i.as, %bb.c ], [ %i.ag, %.lr.ph65 ]
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %bb.c ], [ 0, %.lr.ph65 ] ; 2 uses
  %.0386372 = phi ptr [ %.1, %bb.c ], [ null, %.lr.ph65 ] ; 2 uses
  %i.aj = load ptr, ptr %i.y, align 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv104
  %i.al = load ptr, ptr %i.ak, align 8            ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 192
  %i.an = load i8, ptr %i.am, align 8, !range !9, !noundef !10
  %i.ao = trunc nuw i8 %i.an to i1
  %.in.v = select i1 %i.ao, i64 152, i64 160
  %.in = getelementptr inbounds nuw i8, ptr %i.al, i64 %.in.v
  %i.ap = load ptr, ptr %.in, align 8
  %i.aq = icmp eq ptr %i.ap, %i.af
  br i1 %i.aq, label %bb.b, label %bb.c

..critedge55_crit_edge67.split:                   ; preds = %bb.c
  %.not51 = icmp eq ptr %.1, null
  br i1 %.not51, label %.critedge53, label %bb.d

bb.b:                                             ; preds = %.lr.ph73
  %i.ar = tail call ptr @lappend(ptr noundef %.0386372, ptr noundef nonnull %i.al) #10
  %.pre = load i32, ptr %i.a, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph73
  %i.as = phi i32 [ %.pre, %bb.b ], [ %i.ai, %.lr.ph73 ] ; 2 uses
  %.1 = phi ptr [ %i.ar, %bb.b ], [ %.0386372, %.lr.ph73 ] ; 3 uses
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = icmp slt i64 %indvars.iv.next105, %i.at
  br i1 %i.au, label %.lr.ph73, label %..critedge55_crit_edge67.split

bb.d:                                             ; preds = %..critedge55_crit_edge67.split
  %i.av = tail call ptr @list_concat(ptr noundef %.0407595, ptr noundef nonnull %.1) #10 ; 2 uses
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %i.aw = load i32, ptr %i.w, align 4
  %i.ax = sext i32 %i.aw to i64
  %i.ay = icmp slt i64 %indvars.iv.next108, %i.ax
  br i1 %i.ay, label %.lr.ph65, label %.critedge53

.critedge53:                                      ; preds = %.lr.ph65, %bb.d, %..critedge55_crit_edge67.split, %bb.a, %.critedge.thread, %.lr.ph77.split.split, %.critedge
  %.040.lcssa = phi ptr [ null, %.critedge ], [ null, %bb.a ], [ null, %.critedge.thread ], [ null, %.lr.ph77.split.split ], [ %.0407595, %.lr.ph65 ], [ %.0407595, %..critedge55_crit_edge67.split ], [ %i.av, %bb.d ]
  ret ptr %.040.lcssa
}

declare ptr @list_concat(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @select_outer_pathkeys_for_merge(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %list_length.exit.thread, label %list_length.exit

list_length.exit:                                 ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4              ; 4 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %list_length.exit.thread, label %bb.b

bb.b:                                             ; preds = %list_length.exit
  %i.d = sext i32 %i.b to i64                     ; 2 uses
  %i.e = shl nsw i64 %i.d, 3
  %i.f = tail call ptr @palloc(i64 noundef %i.e) #10 ; 6 uses
  %i.g = shl nsw i64 %i.d, 2
  %i.h = tail call ptr @palloc(i64 noundef %i.g) #10 ; 10 uses
  %i.i = load i32, ptr %i.a, align 4
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph196, label %.critedge

.lr.ph196:                                        ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph196, %.loopexit182
  %indvars.iv232 = phi i64 [ 0, %.lr.ph196 ], [ %indvars.iv.next233, %.loopexit182 ] ; 2 uses
  %.0134194 = phi i32 [ 0, %.lr.ph196 ], [ %.1135, %.loopexit182 ] ; 5 uses
  %i.m = load ptr, ptr %i.k, align 8
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv232
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 152 ; 3 uses
  %.promoted.i = load ptr, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.promoted.i, i64 88
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not8.i = icmp eq ptr %i.r, null
  br i1 %.not8.i, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 160 ; 3 uses
  %.promoted9.i = load ptr, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.promoted9.i, i64 88
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not710.i = icmp eq ptr %i.u, null
  br i1 %.not710.i, label %update_mergeclause_eclasses.exit, label %.lr.ph11.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.v = phi ptr [ %i.x, %.lr.ph.i ], [ %i.r, %bb.c ] ; 2 uses
  store ptr %i.v, ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not.i165 = icmp eq ptr %i.x, null
  br i1 %.not.i165, label %.preheader.i, label %.lr.ph.i, !llvm.loop !3

.lr.ph11.i:                                       ; preds = %.preheader.i, %.lr.ph11.i
  %i.y = phi ptr [ %i.aa, %.lr.ph11.i ], [ %i.u, %.preheader.i ] ; 2 uses
  store ptr %i.y, ptr %i.s, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not7.i = icmp eq ptr %i.aa, null
  br i1 %.not7.i, label %update_mergeclause_eclasses.exit, label %.lr.ph11.i, !llvm.loop !4

update_mergeclause_eclasses.exit:                 ; preds = %.lr.ph11.i, %.preheader.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 192
  %i.ac = load i8, ptr %i.ab, align 8, !range !9, !noundef !10
  %i.ad = trunc nuw i8 %i.ac to i1
  %.0124.in = select i1 %i.ad, ptr %i.p, ptr %i.s
  %.0124 = load ptr, ptr %.0124.in, align 8       ; 3 uses
  %i.ae = icmp sgt i32 %.0134194, 0
  br i1 %i.ae, label %.lr.ph.preheader, label %.critedge158

.lr.ph.preheader:                                 ; preds = %update_mergeclause_eclasses.exit
  %wide.trip.count = zext nneg i32 %.0134194 to i64
  br label %.lr.ph

.critedge:                                        ; preds = %.loopexit182, %bb.b
  %.0134.lcssa = phi i32 [ 0, %bb.b ], [ %.1135, %.loopexit182 ] ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 5 uses
  %.not149 = icmp eq ptr %i.ag, null
  br i1 %.not149, label %.critedge162.thread, label %.preheader

.preheader:                                       ; preds = %.critedge
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4            ; 2 uses
  %.not151203 = icmp sgt i32 %i.ai, 0
  br i1 %.not151203, label %.lr.ph206, label %.thread172

.lr.ph206:                                        ; preds = %.preheader
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = icmp sgt i32 %.0134.lcssa, 0
  br i1 %i.al, label %.lr.ph199.us.preheader, label %.critedge162.thread

.lr.ph199.us.preheader:                           ; preds = %.lr.ph206
  %wide.trip.count245 = zext nneg i32 %i.ai to i64
  %wide.trip.count238 = zext nneg i32 %.0134.lcssa to i64
  br label %.lr.ph199.us

.lr.ph199.us:                                     ; preds = %.lr.ph199.us.preheader, %12
  %indvars.iv240 = phi i64 [ 0, %.lr.ph199.us.preheader ], [ %indvars.iv.next241, %12 ] ; 3 uses
  %3 = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv240
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %6 = load ptr, ptr %5, align 8
  br label %8

7:                                                ; preds = %8
  %indvars.iv.next236 = add nuw nsw i64 %indvars.iv235, 1 ; 2 uses
  %exitcond239.not = icmp eq i64 %indvars.iv.next236, %wide.trip.count238
  br i1 %exitcond239.not, label %._crit_edge201, label %8, !llvm.loop !17

8:                                                ; preds = %.lr.ph199.us, %7
  %indvars.iv235 = phi i64 [ 0, %.lr.ph199.us ], [ %indvars.iv.next236, %7 ] ; 2 uses
  %9 = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv235
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, %6
  br i1 %11, label %12, label %7

12:                                               ; preds = %8
  %indvars.iv.next241 = add nuw nsw i64 %indvars.iv240, 1 ; 2 uses
  %exitcond246.not = icmp eq i64 %indvars.iv.next241, %wide.trip.count245
  br i1 %exitcond246.not, label %.thread172, label %.lr.ph199.us, !llvm.loop !18

bb.d:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge158, label %.lr.ph, !llvm.loop !19

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = icmp eq ptr %i.an, %.0124
  br i1 %i.ao, label %.loopexit182, label %bb.d

.critedge158:                                     ; preds = %bb.d, %update_mergeclause_eclasses.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %.0124, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8            ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4 ; 2 uses
  %.not155 = icmp eq ptr %i.aq, null
  br i1 %.not155, label %.critedge160, label %.lr.ph187

.lr.ph187:                                        ; preds = %.critedge158
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.at = load i32, ptr %i.ar, align 4            ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph193, label %.critedge160

.lr.ph193:                                        ; preds = %.lr.ph187, %bb.f
  %i.av = phi i32 [ %i.bl, %bb.f ], [ %i.at, %.lr.ph187 ]
  %indvars.iv229 = phi i64 [ %indvars.iv.next230, %bb.f ], [ 0, %.lr.ph187 ] ; 2 uses
  %.0122185192 = phi i32 [ %.1123, %bb.f ], [ 0, %.lr.ph187 ] ; 2 uses
  %i.aw = load ptr, ptr %i.as, align 8
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv229
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load i8, ptr %i.az, align 8, !range !9, !noundef !10
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.f, label %bb.e

.critedge160:                                     ; preds = %bb.f, %.lr.ph187, %.critedge158
  %.0122.lcssa = phi i32 [ 0, %.critedge158 ], [ 0, %.lr.ph187 ], [ %.1123, %bb.f ]
  %i.bc = sext i32 %.0134194 to i64               ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.bc
  store ptr %.0124, ptr %i.bd, align 8
  %i.be = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bc
  store i32 %.0122.lcssa, ptr %i.be, align 4
  %i.bf = add i32 %.0134194, 1
  br label %.loopexit182

bb.e:                                             ; preds = %.lr.ph193
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = load ptr, ptr %i.l, align 8
  %i.bj = tail call zeroext i1 @bms_overlap(ptr noundef %i.bh, ptr noundef %i.bi) #10
  %not. = xor i1 %i.bj, true
  %i.bk = zext i1 %not. to i32
  %spec.select = add i32 %.0122185192, %i.bk
  %.pre = load i32, ptr %i.ar, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph193
  %i.bl = phi i32 [ %i.av, %.lr.ph193 ], [ %.pre, %bb.e ] ; 2 uses
  %.1123 = phi i32 [ %.0122185192, %.lr.ph193 ], [ %spec.select, %bb.e ] ; 2 uses
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229, 1 ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = icmp slt i64 %indvars.iv.next230, %i.bm
  br i1 %i.bn, label %.lr.ph193, label %.critedge160

.loopexit182:                                     ; preds = %.lr.ph, %.critedge160
  %.1135 = phi i32 [ %i.bf, %.critedge160 ], [ %.0134194, %.lr.ph ] ; 2 uses
  %indvars.iv.next233 = add nuw nsw i64 %indvars.iv232, 1 ; 2 uses
  %i.bo = load i32, ptr %i.a, align 4
  %i.bp = sext i32 %i.bo to i64
  %i.bq = icmp slt i64 %indvars.iv.next233, %i.bp
  br i1 %i.bq, label %bb.c, label %.critedge, !llvm.loop !20

.thread172:                                       ; preds = %12, %.preheader
  %i.br = tail call ptr @list_copy(ptr noundef nonnull %i.ag) #10 ; 4 uses
  %i.bs = load ptr, ptr %i.af, align 8            ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4 ; 2 uses
  %.not153 = icmp eq ptr %i.bs, null
  br i1 %.not153, label %.critedge162.thread, label %.lr.ph212

.lr.ph212:                                        ; preds = %.thread172
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bv = icmp sgt i32 %.0134.lcssa, 0
  br i1 %i.bv, label %.lr.ph212.split.us.split, label %.critedge162.thread

.lr.ph212.split.us.split:                         ; preds = %.lr.ph212
  %i.bw = load i32, ptr %i.bt, align 4            ; 2 uses
  %i.bx = icmp sgt i32 %i.bw, 0
  br i1 %i.bx, label %.lr.ph210.us.preheader, label %.critedge162.thread

.lr.ph210.us.preheader:                           ; preds = %.lr.ph212.split.us.split
  %wide.trip.count250 = zext nneg i32 %.0134.lcssa to i64
  br label %.lr.ph210.us

.lr.ph210.us:                                     ; preds = %.lr.ph210.us.preheader, %..loopexit_crit_edge.us
  %i.by = phi i32 [ %i.bw, %.lr.ph210.us.preheader ], [ %i.ci, %..loopexit_crit_edge.us ]
  %indvars.iv252 = phi i64 [ 0, %.lr.ph210.us.preheader ], [ %indvars.iv.next253, %..loopexit_crit_edge.us ] ; 2 uses
  %i.bz = load ptr, ptr %i.bu, align 8
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv252
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %indvars.iv.next248 = add nuw nsw i64 %indvars.iv247, 1 ; 2 uses
  %exitcond251.not = icmp eq i64 %indvars.iv.next248, %wide.trip.count250
  br i1 %exitcond251.not, label %..loopexit_crit_edge.us, label %bb.h, !llvm.loop !21

bb.h:                                             ; preds = %.lr.ph210.us, %bb.g
  %indvars.iv247 = phi i64 [ 0, %.lr.ph210.us ], [ %indvars.iv.next248, %bb.g ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv247
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = icmp eq ptr %i.cf, %i.cd
  br i1 %i.cg, label %bb.i, label %bb.g

bb.i:                                             ; preds = %bb.h
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv247
  store i32 -1, ptr %i.ch, align 4
  %.pre260 = load i32, ptr %i.bt, align 4
  br label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %bb.g, %bb.i
  %i.ci = phi i32 [ %.pre260, %bb.i ], [ %i.by, %bb.g ] ; 2 uses
  %indvars.iv.next253 = add nuw nsw i64 %indvars.iv252, 1 ; 2 uses
  %i.cj = sext i32 %i.ci to i64
  %i.ck = icmp slt i64 %indvars.iv.next253, %i.cj
  br i1 %i.ck, label %.lr.ph210.us, label %.critedge162.thread

._crit_edge201:                                   ; preds = %7
  %indvars244.le = trunc i64 %indvars.iv240 to i32
  %i.cl = icmp eq i32 %i.b, %indvars244.le
  br i1 %i.cl, label %.critedge162, label %.critedge162.thread

.critedge162:                                     ; preds = %._crit_edge201
  %i.cm = tail call ptr @list_copy_head(ptr noundef nonnull %i.ag, i32 noundef %i.b) #10
  br label %list_length.exit.thread.sink.split

.critedge162.thread:                              ; preds = %..loopexit_crit_edge.us, %.lr.ph206, %.lr.ph212, %.thread172, %.lr.ph212.split.us.split, %._crit_edge201, %.critedge
  %.2138 = phi ptr [ null, %.critedge ], [ null, %._crit_edge201 ], [ %i.br, %.lr.ph212.split.us.split ], [ %i.br, %.thread172 ], [ null, %.lr.ph206 ], [ %i.br, %.lr.ph212 ], [ %i.br, %..loopexit_crit_edge.us ]
  %i.cn = icmp sgt i32 %.0134.lcssa, 1
  %wide.trip.count258 = zext i32 %.0134.lcssa to i64
  %i.co = add nsw i64 %wide.trip.count258, -1     ; 2 uses
  %xtraiter = and i64 %i.co, 3                    ; 3 uses
  %i.cp = add nsw i32 %.0134.lcssa, -2
  %i.cq = icmp ult i32 %i.cp, 3
  %unroll_iter = and i64 %i.co, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod279 = icmp ne i64 %xtraiter, 0
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.critedge162.thread
  %.3139 = phi ptr [ %.2138, %.critedge162.thread ], [ %i.dw, %bb.k ] ; 2 uses
  %i.cr = load i32, ptr %i.h, align 4             ; 3 uses
  br i1 %i.cn, label %.lr.ph221.preheader, label %._crit_edge222

.lr.ph221.preheader:                              ; preds = %bb.j
  br i1 %i.cq, label %.lr.ph221.epil.preheader, label %.lr.ph221

.lr.ph221:                                        ; preds = %.lr.ph221.preheader, %.lr.ph221
  %indvars.iv255 = phi i64 [ %indvars.iv.next256.3, %.lr.ph221 ], [ 1, %.lr.ph221.preheader ] ; 6 uses
  %.0219 = phi i32 [ %spec.select164.3, %.lr.ph221 ], [ %i.cr, %.lr.ph221.preheader ] ; 2 uses
  %.0117218 = phi i32 [ %spec.select163.3, %.lr.ph221 ], [ 0, %.lr.ph221.preheader ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph221 ], [ 0, %.lr.ph221.preheader ]
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv255
  %i.ct = load i32, ptr %i.cs, align 4            ; 2 uses
  %i.cu = icmp sgt i32 %i.ct, %.0219
  %i.cv = trunc nuw nsw i64 %indvars.iv255 to i32
  %spec.select163 = select i1 %i.cu, i32 %i.cv, i32 %.0117218
  %spec.select164 = tail call i32 @llvm.smax.i32(i32 %i.ct, i32 %.0219) ; 2 uses
  %indvars.iv.next256 = add nuw nsw i64 %indvars.iv255, 1 ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next256
  %i.cx = load i32, ptr %i.cw, align 4            ; 2 uses
  %i.cy = icmp sgt i32 %i.cx, %spec.select164
  %i.cz = trunc nuw nsw i64 %indvars.iv.next256 to i32
  %spec.select163.1 = select i1 %i.cy, i32 %i.cz, i32 %spec.select163
  %spec.select164.1 = tail call i32 @llvm.smax.i32(i32 %i.cx, i32 %spec.select164) ; 2 uses
  %indvars.iv.next256.1 = add nuw nsw i64 %indvars.iv255, 2 ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next256.1
  %i.db = load i32, ptr %i.da, align 4            ; 2 uses
  %i.dc = icmp sgt i32 %i.db, %spec.select164.1
  %i.dd = trunc nuw nsw i64 %indvars.iv.next256.1 to i32
  %spec.select163.2 = select i1 %i.dc, i32 %i.dd, i32 %spec.select163.1
  %spec.select164.2 = tail call i32 @llvm.smax.i32(i32 %i.db, i32 %spec.select164.1) ; 2 uses
  %indvars.iv.next256.2 = add nuw nsw i64 %indvars.iv255, 3 ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next256.2
  %i.df = load i32, ptr %i.de, align 4            ; 2 uses
  %i.dg = icmp sgt i32 %i.df, %spec.select164.2
  %i.dh = trunc nuw nsw i64 %indvars.iv.next256.2 to i32
  %spec.select163.3 = select i1 %i.dg, i32 %i.dh, i32 %spec.select163.2 ; 3 uses
  %spec.select164.3 = tail call i32 @llvm.smax.i32(i32 %i.df, i32 %spec.select164.2) ; 3 uses
  %indvars.iv.next256.3 = add nuw nsw i64 %indvars.iv255, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge222.loopexit.unr-lcssa, label %.lr.ph221, !llvm.loop !22

._crit_edge222.loopexit.unr-lcssa:                ; preds = %.lr.ph221
  br i1 %lcmp.mod.not, label %._crit_edge222.loopexit, label %.lr.ph221.epil.preheader

.lr.ph221.epil.preheader:                         ; preds = %._crit_edge222.loopexit.unr-lcssa, %.lr.ph221.preheader
  %indvars.iv255.epil.init = phi i64 [ 1, %.lr.ph221.preheader ], [ %indvars.iv.next256.3, %._crit_edge222.loopexit.unr-lcssa ]
  %.0219.epil.init = phi i32 [ %i.cr, %.lr.ph221.preheader ], [ %spec.select164.3, %._crit_edge222.loopexit.unr-lcssa ]
  %.0117218.epil.init = phi i32 [ 0, %.lr.ph221.preheader ], [ %spec.select163.3, %._crit_edge222.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod279)
  br label %.lr.ph221.epil

.lr.ph221.epil:                                   ; preds = %.lr.ph221.epil, %.lr.ph221.epil.preheader
  %indvars.iv255.epil = phi i64 [ %indvars.iv.next256.epil, %.lr.ph221.epil ], [ %indvars.iv255.epil.init, %.lr.ph221.epil.preheader ] ; 3 uses
  %.0219.epil = phi i32 [ %spec.select164.epil, %.lr.ph221.epil ], [ %.0219.epil.init, %.lr.ph221.epil.preheader ] ; 2 uses
  %.0117218.epil = phi i32 [ %spec.select163.epil, %.lr.ph221.epil ], [ %.0117218.epil.init, %.lr.ph221.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph221.epil ], [ 0, %.lr.ph221.epil.preheader ]
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv255.epil
  %i.dj = load i32, ptr %i.di, align 4            ; 2 uses
  %i.dk = icmp sgt i32 %i.dj, %.0219.epil
  %i.dl = trunc nuw nsw i64 %indvars.iv255.epil to i32
  %spec.select163.epil = select i1 %i.dk, i32 %i.dl, i32 %.0117218.epil ; 2 uses
  %spec.select164.epil = tail call i32 @llvm.smax.i32(i32 %i.dj, i32 %.0219.epil) ; 2 uses
  %indvars.iv.next256.epil = add nuw nsw i64 %indvars.iv255.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge222.loopexit, label %.lr.ph221.epil, !llvm.loop !23

._crit_edge222.loopexit:                          ; preds = %.lr.ph221.epil, %._crit_edge222.loopexit.unr-lcssa
  %spec.select163.lcssa = phi i32 [ %spec.select163.3, %._crit_edge222.loopexit.unr-lcssa ], [ %spec.select163.epil, %.lr.ph221.epil ]
  %spec.select164.lcssa = phi i32 [ %spec.select164.3, %._crit_edge222.loopexit.unr-lcssa ], [ %spec.select164.epil, %.lr.ph221.epil ]
  %i.dm = zext nneg i32 %spec.select163.lcssa to i64
  br label %._crit_edge222

._crit_edge222:                                   ; preds = %._crit_edge222.loopexit, %bb.j
  %.0117.lcssa = phi i64 [ 0, %bb.j ], [ %i.dm, %._crit_edge222.loopexit ] ; 2 uses
  %.0.lcssa = phi i32 [ %i.cr, %bb.j ], [ %spec.select164.lcssa, %._crit_edge222.loopexit ]
  %i.dn = icmp slt i32 %.0.lcssa, 0
  br i1 %i.dn, label %list_length.exit.thread.sink.split, label %bb.k

bb.k:                                             ; preds = %._crit_edge222
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.0117.lcssa
  %i.dp = load ptr, ptr %i.do, align 8            ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.0117.lcssa
  store i32 -1, ptr %i.dq, align 4
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = getelementptr i8, ptr %i.ds, i64 16
  %.val = load ptr, ptr %i.dt, align 8
  %i.du = load i32, ptr %.val, align 8
  %i.dv = tail call ptr @make_canonical_pathkey(ptr noundef %0, ptr noundef %i.dp, i32 noundef %i.du, i32 noundef 1, i1 noundef zeroext false)
  %i.dw = tail call ptr @lappend(ptr noundef %.3139, ptr noundef %i.dv) #10
  br label %bb.j

list_length.exit.thread.sink.split:               ; preds = %._crit_edge222, %.critedge162
  %.1141.ph = phi ptr [ %i.cm, %.critedge162 ], [ %.3139, %._crit_edge222 ]
  tail call void @pfree(ptr noundef %i.f) #10
  tail call void @pfree(ptr noundef %i.h) #10
  br label %list_length.exit.thread

list_length.exit.thread:                          ; preds = %list_length.exit.thread.sink.split, %bb.a, %list_length.exit
  %.1141 = phi ptr [ null, %list_length.exit ], [ null, %bb.a ], [ %.1141.ph, %list_length.exit.thread.sink.split ]
  ret ptr %.1141
}

declare ptr @palloc(i64 noundef) local_unnamed_addr #3

declare zeroext i1 @bms_overlap(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @list_copy(ptr noundef) local_unnamed_addr #3

declare ptr @list_copy_head(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @pfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @make_inner_pathkeys_for_merge(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %list_head.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  br label %list_head.exit

list_head.exit:                                   ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %list_head.exit
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr i8, ptr %2, i64 4
  %i.g = getelementptr i8, ptr %2, i64 16
  %i.h = load i32, ptr %i.d, align 4
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph82, label %.critedge

.lr.ph82:                                         ; preds = %.lr.ph, %pathkey_is_redundant.exit
  %.0446081 = phi ptr [ %.145, %pathkey_is_redundant.exit ], [ null, %.lr.ph ] ; 6 uses
  %.0426180 = phi ptr [ %.143, %pathkey_is_redundant.exit ], [ null, %.lr.ph ] ; 2 uses
  %.0406279 = phi ptr [ %.141, %pathkey_is_redundant.exit ], [ null, %.lr.ph ]
  %.0386378 = phi ptr [ %.1, %pathkey_is_redundant.exit ], [ %i.c, %.lr.ph ] ; 4 uses
  %indvars.iv77 = phi i64 [ %indvars.iv.next, %pathkey_is_redundant.exit ], [ 0, %.lr.ph ] ; 2 uses
  %i.j = load ptr, ptr %i.e, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv77
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 152 ; 4 uses
  %.promoted.i = load ptr, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.promoted.i, i64 88
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not8.i = icmp eq ptr %i.o, null
  br i1 %.not8.i, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i, %.lr.ph82
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 160 ; 4 uses
  %.promoted9.i = load ptr, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.promoted9.i, i64 88
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not710.i = icmp eq ptr %i.r, null
  br i1 %.not710.i, label %update_mergeclause_eclasses.exit, label %.lr.ph11.i

.lr.ph.i:                                         ; preds = %.lr.ph82, %.lr.ph.i
  %i.s = phi ptr [ %i.u, %.lr.ph.i ], [ %i.o, %.lr.ph82 ] ; 2 uses
  store ptr %i.s, ptr %i.m, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not.i53 = icmp eq ptr %i.u, null
  br i1 %.not.i53, label %.preheader.i, label %.lr.ph.i, !llvm.loop !3

.lr.ph11.i:                                       ; preds = %.preheader.i, %.lr.ph11.i
  %i.v = phi ptr [ %i.x, %.lr.ph11.i ], [ %i.r, %.preheader.i ] ; 2 uses
  store ptr %i.v, ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
end_hunk_0
