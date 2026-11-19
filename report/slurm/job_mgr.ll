Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/job_mgr?download=true
inline.NumInlined: 249
inline.NumDeleted: 67
begin_hunk_0_@_foreach_job_by_id_array:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %.010.i, i64 472
  %.0.i = load ptr, ptr %i.m, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %._crit_edge.thread, label %.lr.ph.i, !llvm.loop !93

.lr.ph:                                           ; preds = %.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.010.i, i64 88
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.k
  %.053115 = phi ptr [ %.010.i, %.lr.ph ], [ %i.ar, %bb.k ] ; 7 uses
  %.054114 = phi i1 [ false, %.lr.ph ], [ %.155, %bb.k ] ; 2 uses
  %.056113 = phi i1 [ false, %.lr.ph ], [ %.258, %bb.k ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.053115, i64 80
  %i.u = load i32, ptr %i.t, align 8
  %.not66 = icmp eq i32 %i.u, %i.d
  br i1 %.not66, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.053115, i64 88 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %.not67 = icmp ne ptr %i.w, null
  %spec.select = select i1 %.not67, i1 true, i1 %.056113 ; 2 uses
  %i.x = load ptr, ptr %i.n, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i32, ptr %i.y, align 8              ; 2 uses
  %.not68 = icmp eq i32 %i.z, -2
  br i1 %.not68, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.053115, i64 84
  %i.ab = load i32, ptr %i.aa, align 4
  %.not69 = icmp eq i32 %i.ab, %i.z
  br i1 %.not69, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ac = tail call i32 @get_log_level() #24
  %i.ad = icmp sgt i32 %i.ac, 6
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %i.o, align 8
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = load ptr, ptr %i.v, align 8
  %i.ah = ptrtoint ptr %i.ag to i64
  tail call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.304, ptr noundef nonnull %.010.i, i64 noundef %i.af, ptr noundef nonnull %.053115, i64 noundef %i.ah) #24
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.053115, i64 448
  %i.aj = load i32, ptr %i.ai, align 8
  %.not14.i = icmp eq i32 %i.aj, 0
  br i1 %.not14.i, label %._foreach_by_job_callback.exit_crit_edge, label %bb.i

._foreach_by_job_callback.exit_crit_edge:         ; preds = %bb.h
  %.pre = load i32, ptr %i.s, align 4
  br label %_foreach_by_job_callback.exit

bb.i:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr %i.p, align 8             ; 2 uses
  %.not15.i = icmp eq ptr %i.ak, null
  br i1 %.not15.i, label %bb.j, label %.sink.split.i

bb.j:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %i.q, align 8
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.j, %bb.i
  %.sink20.i = phi ptr [ %i.al, %bb.j ], [ %i.ak, %bb.i ]
  %i.am = load ptr, ptr %i.n, align 8
  %i.an = load ptr, ptr %i.r, align 8
  %i.ao = tail call i32 %.sink20.i(ptr noundef nonnull %.053115, ptr noundef %i.am, ptr noundef %i.an) #24, !inline_history !3 ; 2 uses
  store i32 %i.ao, ptr %i.s, align 4
  br label %_foreach_by_job_callback.exit

_foreach_by_job_callback.exit:                    ; preds = %._foreach_by_job_callback.exit_crit_edge, %.sink.split.i
  %i.ap = phi i32 [ %.pre, %._foreach_by_job_callback.exit_crit_edge ], [ %i.ao, %.sink.split.i ]
  %.not71 = icmp eq i32 %i.ap, 1
  br i1 %.not71, label %bb.k, label %.thread

bb.k:                                             ; preds = %_foreach_by_job_callback.exit, %bb.e, %bb.c
  %.258 = phi i1 [ %.056113, %bb.c ], [ %spec.select, %bb.e ], [ %spec.select, %_foreach_by_job_callback.exit ] ; 2 uses
  %.155 = phi i1 [ %.054114, %bb.c ], [ %.054114, %bb.e ], [ true, %_foreach_by_job_callback.exit ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.053115, i64 472
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !94

._crit_edge:                                      ; preds = %bb.k
  br i1 %.258, label %.thread, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.b, %bb.a, %._crit_edge
  %.054.lcssa139 = phi i1 [ %.155, %._crit_edge ], [ false, %bb.a ], [ false, %bb.b ]
  %i.as = load ptr, ptr %i.a, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 80
  %i.au = load i32, ptr %i.at, align 8            ; 3 uses
  %i.av = load ptr, ptr @job_hash, align 8
  %i.aw = load i32, ptr @hash_table_size, align 4
  %i.ax = urem i32 %i.au, %i.aw
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ay
  %.07.i = load ptr, ptr %i.az, align 8           ; 2 uses
  %.not8.i = icmp eq ptr %.07.i, null
  br i1 %.not8.i, label %.thread, label %.lr.ph.i84

.lr.ph.i84:                                       ; preds = %._crit_edge.thread, %bb.l
  %.09.i = phi ptr [ %.0.i85, %bb.l ], [ %.07.i, %._crit_edge.thread ] ; 7 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.09.i, i64 448
  %i.bb = load i32, ptr %i.ba, align 8
  %i.bc = icmp eq i32 %i.bb, %i.au
  br i1 %i.bc, label %find_job_record.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i84
  %i.bd = getelementptr inbounds nuw i8, ptr %.09.i, i64 464
  %.0.i85 = load ptr, ptr %i.bd, align 8          ; 2 uses
  %.not.i86 = icmp eq ptr %.0.i85, null
  br i1 %.not.i86, label %.thread, label %.lr.ph.i84, !llvm.loop !0

find_job_record.exit:                             ; preds = %.lr.ph.i84
  %i.be = getelementptr inbounds nuw i8, ptr %.09.i, i64 88 ; 5 uses
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  %.not73 = icmp eq ptr %i.bf, null
  br i1 %.not73, label %bb.m, label %bb.n

bb.m:                                             ; preds = %find_job_record.exit
  %i.bg = tail call i32 @get_log_level() #24
  %i.bh = icmp sgt i32 %i.bg, 6
  br i1 %i.bh, label %.thread.sink.split, label %.thread

bb.n:                                             ; preds = %find_job_record.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  %.not74 = icmp eq ptr %i.bj, null
  br i1 %.not74, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bk = tail call i32 @get_log_level() #24
  %i.bl = icmp sgt i32 %i.bk, 6
  br i1 %i.bl, label %.thread.sink.split, label %.thread

bb.p:                                             ; preds = %bb.n
  %.not14.i89 = icmp eq i32 %i.au, 0
  br i1 %.not14.i89, label %._foreach_by_job_callback.exit93_crit_edge, label %bb.q

._foreach_by_job_callback.exit93_crit_edge:       ; preds = %bb.p
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.pre126 = load i32, ptr %.phi.trans.insert, align 4
  br label %_foreach_by_job_callback.exit93

bb.q:                                             ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  %.not15.i90 = icmp eq ptr %i.bn, null
  br i1 %.not15.i90, label %bb.r, label %.sink.split.i91

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  br label %.sink.split.i91

.sink.split.i91:                                  ; preds = %bb.r, %bb.q
  %.sink20.i92 = phi ptr [ %i.bp, %bb.r ], [ %i.bn, %bb.q ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = tail call i32 %.sink20.i92(ptr noundef nonnull %.09.i, ptr noundef %i.br, ptr noundef %i.bt) #24, !inline_history !3 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bu, ptr %i.bv, align 4
  br label %_foreach_by_job_callback.exit93

_foreach_by_job_callback.exit93:                  ; preds = %._foreach_by_job_callback.exit93_crit_edge, %.sink.split.i91
  %i.bw = phi i32 [ %.pre126, %._foreach_by_job_callback.exit93_crit_edge ], [ %i.bu, %.sink.split.i91 ]
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not75 = icmp ne i32 %i.bw, 1
  %or.cond82 = select i1 %.not75, i1 true, i1 %.054.lcssa139
  br i1 %or.cond82, label %.thread, label %.preheader

.preheader:                                       ; preds = %_foreach_by_job_callback.exit93
  %i.by = load ptr, ptr %i.be, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = tail call i64 @bit_size(ptr noundef %i.ca) #24
  %i.cc = icmp sgt i64 %i.cb, 0
  br i1 %i.cc, label %.lr.ph120, label %.thread

.lr.ph120:                                        ; preds = %.preheader
  %i.cd = getelementptr inbounds nuw i8, ptr %.09.i, i64 80
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph120, %.thread105
  %indvars.iv = phi i64 [ 0, %.lr.ph120 ], [ %indvars.iv.next, %.thread105 ] ; 4 uses
  %i.ci = load ptr, ptr %i.be, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = tail call i32 @slurm_bit_test(ptr noundef %i.ck, i64 noundef %indvars.iv) #24
  %.not76 = icmp eq i32 %i.cl, 0
  br i1 %.not76, label %bb.t, label %.thread105

bb.t:                                             ; preds = %bb.s
  %i.cm = load i32, ptr %i.cd, align 8
  %1 = trunc nuw nsw i64 %indvars.iv to i32       ; 2 uses
  %i.cn = tail call ptr @find_job_array_rec(i32 noundef %i.cm, i32 noundef %1) ; 5 uses
  %.not77 = icmp eq ptr %i.cn, null
  br i1 %.not77, label %.thread105, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.co = load ptr, ptr %i.ce, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load i32, ptr %i.cp, align 8            ; 2 uses
  %.not78 = icmp eq i32 %i.cq, -2
  br i1 %.not78, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 84
  %i.cs = load i32, ptr %i.cr, align 4
  %.not79 = icmp eq i32 %i.cs, %i.cq
  br i1 %.not79, label %bb.w, label %.thread105

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ct = tail call i32 @get_log_level() #24
  %i.cu = icmp sgt i32 %i.ct, 6
  br i1 %i.cu, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cv = load ptr, ptr %i.be, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = tail call i32 @slurm_bit_test(ptr noundef %i.cx, i64 noundef %indvars.iv) #24
  %.not80 = icmp eq i32 %i.cy, 0
  %i.cz = select i1 %.not80, i32 48, i32 49
  tail call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.307, ptr noundef nonnull %.09.i, i32 noundef %1, i32 noundef %i.cz, ptr noundef nonnull %i.cn) #24
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.da = getelementptr inbounds nuw i8, ptr %i.cn, i64 448
  %i.db = load i32, ptr %i.da, align 8
  %.not14.i95 = icmp eq i32 %i.db, 0
  br i1 %.not14.i95, label %_foreach_by_job_callback.exit99thread-pre-split, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dc = load ptr, ptr %i.cf, align 8            ; 2 uses
  %.not15.i96 = icmp eq ptr %i.dc, null
  br i1 %.not15.i96, label %bb.aa, label %.sink.split.i97

bb.aa:                                            ; preds = %bb.z
  %i.dd = load ptr, ptr %i.cg, align 8
  br label %.sink.split.i97

.sink.split.i97:                                  ; preds = %bb.aa, %bb.z
  %.sink20.i98 = phi ptr [ %i.dd, %bb.aa ], [ %i.dc, %bb.z ]
  %i.de = load ptr, ptr %i.ce, align 8
  %i.df = load ptr, ptr %i.ch, align 8
  %i.dg = tail call i32 %.sink20.i98(ptr noundef nonnull %i.cn, ptr noundef %i.de, ptr noundef %i.df) #24, !inline_history !3 ; 2 uses
  store i32 %i.dg, ptr %i.bx, align 4
  br label %_foreach_by_job_callback.exit99

_foreach_by_job_callback.exit99thread-pre-split:  ; preds = %bb.y
  %.pr = load i32, ptr %i.bx, align 4
  br label %_foreach_by_job_callback.exit99

_foreach_by_job_callback.exit99:                  ; preds = %_foreach_by_job_callback.exit99thread-pre-split, %.sink.split.i97
  %i.dh = phi i32 [ %.pr, %_foreach_by_job_callback.exit99thread-pre-split ], [ %i.dg, %.sink.split.i97 ]
  %.not81 = icmp eq i32 %i.dh, 1
  br i1 %.not81, label %.thread105, label %.thread

.thread105:                                       ; preds = %_foreach_by_job_callback.exit99, %bb.v, %bb.t, %bb.s
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.di = load ptr, ptr %i.be, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = tail call i64 @bit_size(ptr noundef %i.dk) #24
  %i.dm = icmp sgt i64 %i.dl, %indvars.iv.next
  br i1 %i.dm, label %bb.s, label %.thread, !llvm.loop !95

.thread.sink.split:                               ; preds = %bb.o, %bb.m
  %.str.306.sink = phi ptr [ @.str.305, %bb.m ], [ @.str.306, %bb.o ]
  tail call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull %.str.306.sink, ptr noundef nonnull %.09.i) #24
  br label %.thread

.thread:                                          ; preds = %_foreach_by_job_callback.exit, %bb.l, %.thread105, %_foreach_by_job_callback.exit99, %.thread.sink.split, %.preheader, %._crit_edge.thread, %_foreach_by_job_callback.exit93, %bb.o, %bb.m, %._crit_edge
  ret void
}

declare void @schedule_job_save() local_unnamed_addr #2

declare i32 @job_step_signal(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare i32 @list_delete_first(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @cleanup_completing(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @srun_node_fail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @kill_step_on_node(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @rebuild_step_bitmaps(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gs_job_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @_set_requeued_job_pending_completing(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 16777216                   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.e = load i32, ptr %i.d, align 8
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 290
  %i.g = load i8, ptr %i.f, align 2, !range !16, !noundef !17
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = or disjoint i32 %i.c, 32768
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink = phi i32 [ %i.i, %bb.c ], [ %i.c, %bb.b ]
  tail call void @slurm_job_state_set(ptr noundef nonnull %0, i32 noundef %.sink, ptr noundef nonnull @__func__._set_requeued_job_pending_completing) #24
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_find_het_job_on_node(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 656
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %_job_node_test.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4
  %i.c = sext i32 %i.b to i64
  %i.d = tail call i32 @slurm_bit_test(ptr noundef nonnull %.val, i64 noundef %i.c) #24
  %.not4.i = icmp eq i32 %i.d, 0
  br i1 %.not4.i, label %_job_node_test.exit, label %_job_node_test.exit.thread

_job_node_test.exit:                              ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, 255
  %i.h = icmp eq i32 %i.g, 7
  %. = zext i1 %i.h to i32
  br label %_job_node_test.exit.thread

_job_node_test.exit.thread:                       ; preds = %bb.b, %_job_node_test.exit
  %.0 = phi i32 [ %., %_job_node_test.exit ], [ 1, %bb.b ]
  ret i32 %.0
}

declare ptr @job_record_create() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @_foreach_select_nodes_part_list(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 776
  store ptr %0, ptr %i.c, align 8
  %i.d = tail call i32 @get_log_level() #24
  %i.e = icmp sgt i32 %i.d, 5
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.g = load ptr, ptr %i.f, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 6, ptr noundef nonnull @.str.329, ptr noundef nonnull %i.b, ptr noundef %i.g) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 872 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 920 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = tail call fastcc i32 @_select_nodes_base(ptr noundef nonnull %1)
  br label %_select_nodes_qos.exit

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store i32 -1, ptr %i.n, align 8
  %i.o = load ptr, ptr %i.k, align 8
  %i.p = tail call i32 @list_for_each(ptr noundef %i.o, ptr noundef nonnull @_foreach_select_nodes_resvs, ptr noundef nonnull %1) #24 ; 0 uses
  %i.q = load i32, ptr %i.n, align 8
  br label %_select_nodes_qos.exit

bb.g:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  store i32 -1, ptr %i.r, align 4
  %i.s = load ptr, ptr %i.i, align 8
  %i.t = tail call i32 @list_for_each(ptr noundef %i.s, ptr noundef nonnull @_foreach_select_nodes_qos, ptr noundef nonnull %1) #24 ; 0 uses
  %i.u = load i32, ptr %i.r, align 4
  br label %_select_nodes_qos.exit

_select_nodes_qos.exit:                           ; preds = %bb.e, %bb.f, %bb.g
  %.0.i = phi i32 [ %i.u, %bb.g ], [ %i.q, %bb.f ], [ %i.m, %bb.e ]
  %i.v = icmp eq i32 %.0.i, 0
  %. = sext i1 %i.v to i32
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @_foreach_select_nodes_qos(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 880
  store ptr %0, ptr %i.c, align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 864
  store i32 %i.e, ptr %i.f, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = tail call i32 @get_log_level() #24
  %i.h = icmp sgt i32 %i.g, 5
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.j = load ptr, ptr %i.i, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 6, ptr noundef nonnull @.str.331, ptr noundef nonnull %i.b, ptr noundef %i.j) #24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = load ptr, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 920 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = tail call fastcc i32 @_select_nodes_base(ptr noundef nonnull %1)
  br label %_select_nodes_resvs.exit

bb.g:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store i32 -1, ptr %i.o, align 8
  %i.p = load ptr, ptr %i.l, align 8
  %i.q = tail call i32 @list_for_each(ptr noundef %i.p, ptr noundef nonnull @_foreach_select_nodes_resvs, ptr noundef nonnull %1) #24 ; 0 uses
  %i.r = load i32, ptr %i.o, align 8
  br label %_select_nodes_resvs.exit

_select_nodes_resvs.exit:                         ; preds = %bb.f, %bb.g
  %.0.i = phi i32 [ %i.r, %bb.g ], [ %i.n, %bb.f ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %.0.i, ptr %i.s, align 4
  %i.t = icmp eq i32 %.0.i, 0
  %. = sext i1 %i.t to i32
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @_select_nodes_base(ptr noundef %0) unnamed_addr #0 {
bb.a:
end_hunk_0
