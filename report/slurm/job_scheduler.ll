Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/job_scheduler?download=true
inline.NumInlined: 83
inline.NumDeleted: 33
begin_hunk_0_@test_job_dependency:bb.a
bb.e:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.g, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 120
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call i32 @list_for_each(ptr noundef %i.t, ptr noundef nonnull @_foreach_test_job_dependency, ptr noundef nonnull %4) #15 ; 0 uses
  %i.v = load i8, ptr %i.f, align 1, !range !8, !noundef !9
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.f, label %.thread43

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8
  %i.z = icmp eq i32 %i.y, 39
  br i1 %i.z, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.x, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1040
  call void @slurm_xfree(ptr noundef nonnull %i.aa) #15
  %i.ab = call i64 @time(ptr noundef null) #15
  store i64 %i.ab, ptr @last_job_update, align 8
  %.pre = load i8, ptr %i.f, align 1, !range !8
  %i.ac = trunc nuw i8 %.pre to i1
  br i1 %i.ac, label %.thread, label %.thread43

.thread43:                                        ; preds = %bb.e, %bb.g
  %i.ad = load i8, ptr %i.e, align 8, !range !8, !noundef !9
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = load i8, ptr %4, align 8, !range !8
  %i.ag = trunc nuw i8 %i.af to i1
  %or.cond = select i1 %i.ae, i1 true, i1 %i.ag
  %i.ah = load i8, ptr %i.c, align 1, !range !8
  %i.ai = trunc nuw i8 %i.ah to i1
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.ai
  br i1 %or.cond5, label %bb.o, label %.thread

.thread:                                          ; preds = %bb.f, %.thread43, %bb.g
  call void @fed_mgr_remove_remote_dependencies(ptr noundef nonnull %0) #15
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = and i64 %i.ak, -536870913
  store i64 %i.al, ptr %i.aj, align 8
  %i.am = call i32 @fed_mgr_is_origin_job(ptr noundef nonnull %0) #15
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.thread
  %i.an = load ptr, ptr %i.g, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 120
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call i32 @list_flush(ptr noundef %i.ap) #15 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store ptr %0, ptr %3, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.23, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.as, align 8
  %i.at = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_depend_list2str.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 128
  call void @slurm_xfree(ptr noundef nonnull %i.av) #15
  %i.aw = load ptr, ptr %i.g, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 120
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_depend_list2str.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = call i32 @list_count(ptr noundef nonnull %i.ay) #15
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %_depend_list2str.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = load ptr, ptr %i.g, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 120
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = call i32 @list_for_each(ptr noundef %i.be, ptr noundef nonnull @_foreach_depend_list2str, ptr noundef nonnull %3) #15 ; 0 uses
  br label %_depend_list2str.exit

_depend_list2str.exit:                            ; preds = %bb.i, %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.bg = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.bh = and i64 %i.bg, 9007199254740992
  %.not30 = icmp eq i64 %i.bh, 0
  br i1 %.not30, label %_handle_failed_dependency.exit, label %bb.m

bb.m:                                             ; preds = %_depend_list2str.exit
  %i.bi = call i32 @get_log_level() #15
  %i.bj = icmp sgt i32 %i.bi, 3
  br i1 %i.bj, label %bb.n, label %_handle_failed_dependency.exit

bb.n:                                             ; preds = %bb.m
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.test_job_dependency, ptr noundef nonnull %0) #15
  br label %_handle_failed_dependency.exit

bb.o:                                             ; preds = %.thread43
  %i.bk = load i8, ptr %i.a, align 1, !range !8, !noundef !9
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store ptr %0, ptr %2, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.23, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.bn, align 8
  %i.bo = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %_depend_list2str.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 128
  call void @slurm_xfree(ptr noundef nonnull %i.bq) #15
  %i.br = load ptr, ptr %i.g, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 120
  %i.bt = load ptr, ptr %i.bs, align 8            ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %_depend_list2str.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bv = call i32 @list_count(ptr noundef nonnull %i.bt) #15
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %_depend_list2str.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bx = load ptr, ptr %i.g, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 120
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = call i32 @list_for_each(ptr noundef %i.bz, ptr noundef nonnull @_foreach_depend_list2str, ptr noundef nonnull %2) #15 ; 0 uses
  br label %_depend_list2str.exit.i

_depend_list2str.exit.i:                          ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.cb = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.cc = and i64 %i.cb, 9007199254740992
  %.not.i = icmp eq i64 %i.cc, 0
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_depend_list2str.exit.i
  call void @print_job_dependency(ptr noundef nonnull %0, ptr noundef nonnull @__func__._handle_failed_dependency)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_depend_list2str.exit.i, %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = or i64 %i.ce, 536870912
  store i64 %i.cf, ptr %i.cd, align 8
  call void @acct_policy_remove_accrue_time(ptr noundef nonnull %0, i1 noundef zeroext false) #15
  %i.cg = load i8, ptr %4, align 8, !range !8, !noundef !9
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %_handle_failed_dependency.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ci = load i8, ptr %i.e, align 8, !range !8, !noundef !9
  %i.cj = trunc nuw i8 %i.ci to i1
  %.not33 = xor i1 %i.cj, true
  %i.ck = load i8, ptr %i.c, align 1, !range !8
  %i.cl = trunc nuw i8 %i.ck to i1
  %or.cond35 = select i1 %.not33, i1 true, i1 %i.cl
  br i1 %or.cond35, label %bb.w, label %_handle_failed_dependency.exit

bb.w:                                             ; preds = %bb.v
  %i.cm = load i8, ptr %i.b, align 2, !range !8, !noundef !9
  %i.cn = trunc nuw i8 %i.cm to i1
  %i.co = select i1 %i.cn, i32 1, i32 3
  br label %_handle_failed_dependency.exit

_handle_failed_dependency.exit:                   ; preds = %bb.v, %bb.w, %bb.u, %_depend_list2str.exit, %bb.n, %bb.m
  %.0 = phi i32 [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %_depend_list2str.exit ], [ %i.co, %bb.w ], [ 2, %bb.v ], [ 2, %bb.u ] ; 2 uses
  %.not31 = icmp eq ptr %1, null
  br i1 %.not31, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_handle_failed_dependency.exit
  %i.cp = load i8, ptr %i.a, align 1, !range !8, !noundef !9
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.x
  %.sink = phi i8 [ %i.cp, %bb.x ], [ 0, %bb.d ]
  %.026.ph = phi i32 [ %.0, %bb.x ], [ 0, %bb.d ]
  store i8 %.sink, ptr %1, align 1
  br label %bb.y

bb.y:                                             ; preds = %.sink.split, %_handle_failed_dependency.exit, %bb.d
  %.026 = phi i32 [ 0, %bb.d ], [ %.0, %_handle_failed_dependency.exit ], [ %.026.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret i32 %.026
}

declare i32 @list_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @_foreach_test_job_dependency(ptr noundef %0, ptr nofree noundef captures(none) initializes((16, 17)) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.d = load i16, ptr %i.c, align 2              ; 2 uses
  %i.e = and i16 %i.d, 2
  %.not89 = icmp eq i16 %i.e, 0
  br i1 %.not89, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @fed_mgr_is_origin_job(ptr noundef %i.b) #15
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.k = load i16, ptr %i.j, align 4
  %.not66 = icmp eq i16 %i.k, 5
  br i1 %.not66, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8
  %i.n = tail call zeroext i1 @fed_mgr_is_job_id_in_fed(i32 noundef %i.m) #15
  br i1 %i.n, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.p = and i64 %i.o, 9007199254740992
  %.not67 = icmp eq i64 %i.p, 0
  br i1 %.not67, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = tail call i32 @get_log_level() #15
  %i.r = icmp sgt i32 %i.q, 3
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.val78 = load i16, ptr %i.j, align 4
  %switch.tableidx = add i16 %.val78, -1          ; 2 uses
  %i.s = icmp ult i16 %switch.tableidx, 8
  br i1 %i.s, label %switch.lookup, label %_depend_type2str.exit

switch.lookup:                                    ; preds = %bb.h
  %i.t = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._foreach_update_job_depenency_list, i64 %i.t
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_depend_type2str.exit

_depend_type2str.exit:                            ; preds = %bb.h, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.93, %bb.h ]
  %i.u = load i32, ptr %i.l, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.102, ptr noundef nonnull @__func__._foreach_test_job_dependency, ptr noundef %i.b, ptr noundef nonnull %.0.i, i32 noundef %i.u) #15
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %_depend_type2str.exit, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 1, ptr %i.v, align 1
  store i32 2, ptr %i.g, align 8
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i16, ptr %i.c, align 2
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.y = load i32, ptr %i.x, align 8
  %.not90 = icmp eq i32 %i.y, 0
  br i1 %.not90, label %bb.r, label %bb.k

bb.k:                                             ; preds = %.thread, %bb.j
  %i.z = phi i16 [ %.pre, %.thread ], [ %i.d, %bb.j ] ; 2 uses
  %i.aa = phi ptr [ %i.w, %.thread ], [ %i.x, %bb.j ]
  %i.ab = trunc i16 %i.z to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = trunc i16 %i.z to i8
  %i.ae = and i8 %i.ad, 1
  store i8 %i.ae, ptr %i.ac, align 8
  %i.af = load i32, ptr %i.aa, align 8            ; 2 uses
  br i1 %i.ab, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  switch i32 %i.af, label %_test_dependency_state.exit [
    i32 1, label %bb.m
    i32 0, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 1, ptr %i.ag, align 1
  br label %_test_dependency_state.exit

bb.n:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 1, ptr %i.ah, align 1
  br label %_test_dependency_state.exit

bb.o:                                             ; preds = %bb.k
  switch i32 %i.af, label %_test_dependency_state.exit [
    i32 2, label %bb.p
    i32 0, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  store i8 1, ptr %1, align 8
  br label %_test_dependency_state.exit

bb.q:                                             ; preds = %bb.o
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 1, ptr %i.ai, align 1
  br label %_test_dependency_state.exit

bb.r:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 1, ptr %i.aj, align 2
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = load i32, ptr %0, align 8
  %i.an = tail call ptr @find_job_array_rec(i32 noundef %i.al, i32 noundef %i.am) #15 ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.an, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.aq = load i16, ptr %i.ap, align 4
  %i.ar = icmp eq i16 %i.aq, 5
  br i1 %i.ar, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 616
  %i.at = load ptr, ptr %i.as, align 8
  %.not68 = icmp eq ptr %i.at, null
  br i1 %.not68, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.au = load ptr, ptr @job_list, align 8
  %i.av = tail call ptr @list_find_first(ptr noundef %i.au, ptr noundef nonnull @_find_singleton_job, ptr noundef nonnull %i.b) #15
  %.not74 = icmp eq ptr %i.av, null
  br i1 %.not74, label %bb.u, label %bb.bi

bb.u:                                             ; preds = %bb.t
  %i.aw = tail call zeroext i1 @fed_mgr_is_singleton_satisfied(ptr noundef nonnull %i.b, ptr noundef nonnull %0, i1 noundef zeroext true) #15
  br i1 %i.aw, label %bb.bf, label %bb.bi

bb.v:                                             ; preds = %bb.s, %bb.r
  %.not69 = icmp eq ptr %i.an, null
  br i1 %.not69, label %bb.bf, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ay = load i32, ptr %i.ax, align 8
  %.not70 = icmp eq i32 %i.ay, -256427732
  br i1 %.not70, label %bb.x, label %bb.bf

bb.x:                                             ; preds = %bb.w
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 448
  %i.ba = load i32, ptr %i.az, align 8
  %i.bb = load i32, ptr %i.ak, align 8            ; 3 uses
  %.not71 = icmp eq i32 %i.ba, %i.bb
  br i1 %.not71, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  %i.bd = load i32, ptr %i.bc, align 8
  %.not72 = icmp eq i32 %i.bd, %i.bb
  br i1 %.not72, label %bb.z, label %bb.bf

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.be = load i32, ptr %0, align 8
  %i.bf = icmp eq i32 %i.be, -1
  br i1 %i.bf, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bg = tail call zeroext i1 @test_job_array_complete(i32 noundef %i.bb) #15
  %i.bh = load i32, ptr %i.ak, align 8
  %i.bi = tail call zeroext i1 @test_job_array_completed(i32 noundef %i.bh) #15
  %i.bj = load i32, ptr %i.ak, align 8
  %i.bk = tail call zeroext i1 @test_job_array_pending(i32 noundef %i.bj) #15
  %.pre91 = load ptr, ptr %i.ao, align 8
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.bl = getelementptr inbounds nuw i8, ptr %i.an, i64 512
  %i.bm = load i32, ptr %i.bl, align 8            ; 3 uses
  %i.bn = and i32 %i.bm, 255                      ; 3 uses
  %i.bo = icmp eq i32 %i.bn, 3
  %i.bp = icmp samesign ugt i32 %i.bn, 2
  %i.bq = and i32 %i.bm, 32768
  %i.br = icmp eq i32 %i.bq, 0
  %i.bs = and i1 %i.bp, %i.br
  %i.bt = icmp eq i32 %i.bn, 0
  %i.bu = and i32 %i.bm, 16384
  %i.bv = icmp ne i32 %i.bu, 0
  %i.bw = or i1 %i.bt, %i.bv
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bx = phi ptr [ %.pre91, %bb.aa ], [ %i.an, %bb.ab ] ; 6 uses
  %.062.in = phi i1 [ %i.bg, %bb.aa ], [ %i.bo, %bb.ab ] ; 3 uses
  %.061 = phi i1 [ %i.bi, %bb.aa ], [ %i.bs, %bb.ab ] ; 6 uses
  %.0 = phi i1 [ %i.bk, %bb.aa ], [ %i.bw, %bb.ab ] ; 2 uses
  %i.by = tail call i64 @time(ptr noundef null) #15
  %i.bz = load i16, ptr %i.ap, align 4
  switch i16 %i.bz, label %_test_job_dependency_common.exit.thread [
    i16 1, label %bb.ad
    i16 2, label %bb.ah
    i16 3, label %bb.ai
    i16 4, label %bb.al
    i16 7, label %bb.an
    i16 8, label %bb.au
    i16 6, label %bb.aw
  ]

bb.ad:                                            ; preds = %bb.ac
  br i1 %.0, label %bb.bi, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cb = load i32, ptr %i.ca, align 4            ; 2 uses
  %.not80.i = icmp eq i32 %i.cb, 0
  br i1 %.not80.i, label %bb.bf, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 1032
  %i.cd = load i64, ptr %i.cc, align 8            ; 2 uses
  %.not81.i = icmp eq i64 %i.cd, 0
  %i.ce = sub nsw i64 %i.by, %i.cd
  %i.cf = zext i32 %i.cb to i64
  %.not82.i = icmp slt i64 %i.ce, %i.cf
  %or.cond.i = select i1 %.not81.i, i1 true, i1 %.not82.i
  br i1 %or.cond.i, label %bb.ag, label %bb.bf

bb.ag:                                            ; preds = %bb.af
  %i.cg = tail call zeroext i1 @fed_mgr_job_started_on_sib(ptr noundef nonnull %i.bx) #15
  br i1 %i.cg, label %bb.bf, label %bb.bi

bb.ah:                                            ; preds = %bb.ac
  br i1 %.061, label %bb.bf, label %bb.bi

bb.ai:                                            ; preds = %bb.ac
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 512
  %i.ci = load i32, ptr %i.ch, align 8
  %i.cj = and i32 %i.ci, 4096
  %.not79.i = icmp eq i32 %i.cj, 0
  br i1 %.not79.i, label %bb.aj, label %bb.bf

bb.aj:                                            ; preds = %bb.ai
  br i1 %.061, label %bb.ak, label %bb.bi

bb.ak:                                            ; preds = %bb.aj
  br i1 %.062.in, label %_test_job_dependency_common.exit.thread, label %bb.bf

bb.al:                                            ; preds = %bb.ac
  br i1 %.061, label %bb.am, label %bb.bi

bb.am:                                            ; preds = %bb.al
  br i1 %.062.in, label %bb.bf, label %_test_job_dependency_common.exit.thread

bb.an:                                            ; preds = %bb.ac
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 84 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4            ; 2 uses
  %switch.i = icmp ugt i32 %i.cl, -3
  br i1 %switch.i, label %.thread.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cm = load i32, ptr %i.ak, align 8
  %i.cn = tail call ptr @find_job_array_rec(i32 noundef %i.cm, i32 noundef %i.cl) #15 ; 2 uses
  %.not77.i = icmp eq ptr %i.cn, null
  br i1 %.not77.i, label %.thread.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 512
  %i.cp = load i32, ptr %i.co, align 8            ; 2 uses
  %i.cq = and i32 %i.cp, 255                      ; 2 uses
  %i.cr = icmp samesign ugt i32 %i.cq, 2
  %i.cs = and i32 %i.cp, 32768
  %i.ct = icmp eq i32 %i.cs, 0
  %or.cond85.i = and i1 %i.cr, %i.ct
  br i1 %or.cond85.i, label %bb.aq, label %bb.bi

bb.aq:                                            ; preds = %bb.ap
  %i.cu = icmp eq i32 %i.cq, 3
  br i1 %i.cu, label %bb.bf, label %_test_job_dependency_common.exit.thread

.thread.i:                                        ; preds = %bb.ao, %bb.an
  br i1 %.061, label %bb.ar, label %bb.bi

bb.ar:                                            ; preds = %.thread.i
  br i1 %.062.in, label %bb.bf, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.cw = load ptr, ptr %i.cv, align 8
  %.not78.i = icmp eq ptr %i.cw, null
  br i1 %.not78.i, label %_test_job_dependency_common.exit.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cx = load i32, ptr %i.ck, align 4
  %i.cy = icmp eq i32 %i.cx, -2
  br i1 %i.cy, label %bb.bi, label %_test_job_dependency_common.exit.thread

bb.au:                                            ; preds = %bb.ac
  br i1 %.061, label %bb.av, label %bb.bi

bb.av:                                            ; preds = %bb.au
  %i.cz = tail call i32 @bb_g_job_test_stage_out(ptr noundef %i.bx) #15
  %i.da = icmp eq i32 %i.cz, 1
  br i1 %i.da, label %bb.bf, label %bb.bi

bb.aw:                                            ; preds = %bb.ac
  %i.db = tail call i64 @time(ptr noundef null) #15 ; 2 uses
  br i1 %.0, label %.thread104, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  br i1 %.061, label %_test_job_dependency_common.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bx, i64 272
  %i.dd = load i64, ptr %i.dc, align 8            ; 3 uses
  %.not.i = icmp ne i64 %i.dd, 0
  %i.de = icmp sgt i64 %i.dd, %i.db
  %or.cond86.i = select i1 %.not.i, i1 %i.de, i1 false
  br i1 %or.cond86.i, label %bb.az, label %.thread104

bb.az:                                            ; preds = %bb.ay
  %i.df = sub nsw i64 %i.dd, %i.db
  %i.dg = trunc i64 %i.df to i32
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 1104
  %i.di = udiv i32 %i.dg, 60
  store i32 %i.di, ptr %i.dh, align 8
  br label %.thread104

.thread104:                                       ; preds = %bb.aw, %bb.ay, %bb.az
  %.189.ph = phi i1 [ true, %bb.az ], [ false, %bb.ay ], [ false, %bb.aw ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8            ; 2 uses
  %.not75.i = icmp eq ptr %i.dk, null
  br i1 %.not75.i, label %bb.be, label %bb.ba

bb.ba:                                            ; preds = %.thread104
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bx, i64 256 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8            ; 2 uses
  %.not76.i = icmp eq ptr %i.dm, null
  br i1 %.not76.i, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 442
  %i.do = load i8, ptr %i.dn, align 2
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 442
  store i8 %i.do, ptr %i.dp, align 2
  %i.dq = load ptr, ptr %i.dl, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 512
  %i.ds = load i8, ptr %i.dr, align 8
  %i.dt = load ptr, ptr %i.dj, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 512
  store i8 %i.ds, ptr %i.du, align 8
  br label %bb.be

_test_job_dependency_common.exit.thread:          ; preds = %bb.as, %bb.at, %bb.aq, %bb.am, %bb.ak, %bb.ac, %bb.ax
  store i32 2, ptr %i.x, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 1, ptr %i.dv, align 1
  %i.dw = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.dx = and i64 %i.dw, 9007199254740992
  %.not76 = icmp eq i64 %i.dx, 0
  br i1 %.not76, label %bb.bi, label %bb.bc

bb.bc:                                            ; preds = %_test_job_dependency_common.exit.thread
  %i.dy = tail call i32 @get_log_level() #15
  %i.dz = icmp sgt i32 %i.dy, 3
  br i1 %i.dz, label %bb.bd, label %bb.bi

bb.bd:                                            ; preds = %bb.bc
  %.val77 = load i16, ptr %i.ap, align 4
  %switch.tableidx107 = add i16 %.val77, -1       ; 2 uses
  %i.ea = icmp ult i16 %switch.tableidx107, 8
  br i1 %i.ea, label %switch.lookup108, label %_depend_type2str.exit80

switch.lookup108:                                 ; preds = %bb.bd
  %i.eb = zext nneg i16 %switch.tableidx107 to i64
  %switch.gep109 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._foreach_update_job_depenency_list, i64 %i.eb
  %switch.load110 = load ptr, ptr %switch.gep109, align 8
  br label %_depend_type2str.exit80

_depend_type2str.exit80:                          ; preds = %bb.bd, %switch.lookup108
  %.0.i79 = phi ptr [ %switch.load110, %switch.lookup108 ], [ @.str.93, %bb.bd ]
  %i.ec = load i32, ptr %i.ak, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.103, ptr noundef nonnull @__func__._foreach_test_job_dependency, ptr noundef %i.b, ptr noundef nonnull %.0.i79, i32 noundef %i.ec) #15
  br label %bb.bi

bb.be:                                            ; preds = %bb.bb, %.thread104, %bb.ba
  br i1 %.189.ph, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.av, %bb.ah, %bb.ae, %bb.af, %bb.ag, %bb.u, %bb.ar, %bb.am, %bb.aq, %bb.ak, %bb.ai, %bb.v, %bb.y, %bb.w, %bb.be
  store i32 1, ptr %i.x, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 1, ptr %i.ed, align 1
  %i.ee = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.ef = and i64 %i.ee, 9007199254740992
  %.not75 = icmp eq i64 %i.ef, 0
  br i1 %.not75, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.eg = tail call i32 @get_log_level() #15
  %i.eh = icmp sgt i32 %i.eg, 3
  br i1 %i.eh, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %.val = load i16, ptr %i.ap, align 4
  %switch.tableidx111 = add i16 %.val, -1         ; 2 uses
  %i.ei = icmp ult i16 %switch.tableidx111, 8
  br i1 %i.ei, label %switch.lookup112, label %_depend_type2str.exit82

switch.lookup112:                                 ; preds = %bb.bh
  %i.ej = zext nneg i16 %switch.tableidx111 to i64
  %switch.gep113 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._foreach_update_job_depenency_list, i64 %i.ej
  %switch.load114 = load ptr, ptr %switch.gep113, align 8
  br label %_depend_type2str.exit82

_depend_type2str.exit82:                          ; preds = %bb.bh, %switch.lookup112
  %.0.i81 = phi ptr [ %switch.load114, %switch.lookup112 ], [ @.str.93, %bb.bh ]
  %i.ek = load i32, ptr %i.ak, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.104, ptr noundef nonnull @__func__._foreach_test_job_dependency, ptr noundef %i.b, ptr noundef nonnull %.0.i81, i32 noundef %i.ek) #15
  br label %bb.bi

bb.bi:                                            ; preds = %bb.av, %bb.aj, %bb.ah, %bb.ap, %bb.ag, %bb.ad, %.thread.i, %bb.at, %bb.u, %bb.au, %bb.al, %bb.t, %bb.be, %bb.bg, %_depend_type2str.exit82, %bb.bf, %_test_job_dependency_common.exit.thread, %_depend_type2str.exit80, %bb.bc
  %i.el = load i16, ptr %i.c, align 2             ; 2 uses
  %i.em = trunc i16 %i.el to i1
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.eo = trunc i16 %i.el to i8
  %i.ep = and i8 %i.eo, 1
  store i8 %i.ep, ptr %i.en, align 8
  %i.eq = load i32, ptr %i.x, align 8             ; 2 uses
  br i1 %i.em, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  switch i32 %i.eq, label %_test_dependency_state.exit [
    i32 1, label %bb.bk
    i32 0, label %bb.bl
  ]

bb.bk:                                            ; preds = %bb.bj
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 1, ptr %i.er, align 1
  br label %_test_dependency_state.exit

bb.bl:                                            ; preds = %bb.bj
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 1, ptr %i.es, align 1
  br label %_test_dependency_state.exit

bb.bm:                                            ; preds = %bb.bi
  switch i32 %i.eq, label %_test_dependency_state.exit [
    i32 2, label %bb.bn
    i32 0, label %bb.bo
  ]

bb.bn:                                            ; preds = %bb.bm
  store i8 1, ptr %1, align 8
  br label %_test_dependency_state.exit

bb.bo:                                            ; preds = %bb.bm
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 1, ptr %i.et, align 1
  br label %_test_dependency_state.exit

_test_dependency_state.exit:                      ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l
  ret i32 0
}

declare void @fed_mgr_remove_remote_dependencies(ptr noundef) local_unnamed_addr #2

declare i32 @fed_mgr_is_origin_job(ptr noundef) local_unnamed_addr #2

declare i32 @list_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @find_dependency(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not7 = icmp eq ptr %i.d, null
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @list_find_first(ptr noundef nonnull %i.d, ptr noundef nonnull @_find_dependency, ptr noundef %1) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.e, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare ptr @list_find_first(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @_find_dependency(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %0, align 8
  %i.g = load i32, ptr %1, align 8
  %i.h = icmp eq i32 %i.f, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load i16, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i16, ptr %i.k, align 4
  %i.m = icmp eq i16 %i.j, %i.l
  %i.n = zext i1 %i.m to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.o = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ %i.n, %bb.c ]
  ret i32 %i.o
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @update_job_dependency_list(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.test_job_dep_t, align 8     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %2, align 8
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.c, align 8
  %i.d = call i32 @list_for_each(ptr noundef %1, ptr noundef nonnull @_foreach_update_job_depenency_list, ptr noundef nonnull %2) #15 ; 0 uses
  %i.e = load i8, ptr %i.a, align 1, !range !8, !noundef !9
  %i.f = trunc nuw i8 %i.e to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret i1 %i.f
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_foreach_update_job_depenency_list(ptr noundef %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.d = load i16, ptr %i.c, align 2
  %i.e = and i16 %i.d, 2
  %.not = icmp eq i16 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call ptr @list_find_first(ptr noundef %i.i, ptr noundef nonnull @_find_dependency, ptr noundef nonnull %0) #15 ; 5 uses
  %.not22 = icmp eq ptr %i.j, null
  br i1 %.not22, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.l = and i64 %i.k, 9007199254740992
  %.not23 = icmp eq i64 %i.l, 0
  br i1 %.not23, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call i32 @get_log_level() #15
  %i.n = icmp sgt i32 %i.m, 3
  br i1 %i.n, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %0, i64 4
  %.val = load i16, ptr %i.o, align 4
  %switch.tableidx = add i16 %.val, -1            ; 2 uses
  %i.p = icmp ult i16 %switch.tableidx, 8
  br i1 %i.p, label %switch.lookup, label %_depend_type2str.exit

switch.lookup:                                    ; preds = %bb.e
  %i.q = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._foreach_update_job_depenency_list, i64 %i.q
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_depend_type2str.exit

_depend_type2str.exit:                            ; preds = %bb.e, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.93, %bb.e ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i32, ptr %i.r, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.105, ptr noundef nonnull @__func__._foreach_update_job_depenency_list, ptr noundef nonnull %.0.i, i32 noundef %i.s, ptr noundef nonnull %i.b) #15
  br label %bb.k

bb.f:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8              ; 2 uses
  %i.v = icmp eq i32 %i.u, 1
  br i1 %i.v, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8              ; 2 uses
  %i.y = icmp eq i32 %i.u, %i.x
  br i1 %i.y, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.aa = load i16, ptr %i.z, align 4
  %i.ab = icmp eq i16 %i.aa, 5
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = or i64 %i.af, %i.ad
  store i64 %i.ag, ptr %i.ae, align 8
  %i.ah = tail call zeroext i1 @fed_mgr_is_singleton_satisfied(ptr noundef nonnull %i.b, ptr noundef nonnull %i.j, i1 noundef zeroext false) #15
  br i1 %i.ah, label %._crit_edge, label %bb.k

._crit_edge:                                      ; preds = %bb.i
  %.pre = load i32, ptr %i.w, align 8
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.h
  %i.ai = phi i32 [ %.pre, %._crit_edge ], [ %i.x, %bb.h ]
  store i32 %i.ai, ptr %i.t, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 1, ptr %i.aj, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.f, %bb.g, %bb.c, %_depend_type2str.exit, %bb.d, %bb.a, %bb.j
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @handle_job_dependency_updates(ptr noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.depend_str_t, align 8       ; 6 uses
  %3 = alloca %struct.depend_str_t, align 8       ; 6 uses
  %4 = alloca %struct.test_job_dep_t, align 8     ; 10 uses
  %i.a = tail call i64 @time(ptr noundef null) #15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %4, align 8
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 8 uses
  store i64 0, ptr %i.d, align 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call i32 @list_for_each(ptr noundef %i.i, ptr noundef nonnull @_foreach_handle_job_dependency_updates, ptr noundef nonnull %4) #15 ; 0 uses
  %i.k = load i8, ptr %i.e, align 1, !range !8, !noundef !9
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %bb.b

end_hunk_0
