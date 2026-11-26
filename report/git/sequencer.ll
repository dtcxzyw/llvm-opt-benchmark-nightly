Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/sequencer?download=true
inline.NumInlined: 1007
inline.NumDeleted: 148
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumUnrolled: 35
begin_hunk_0_@sequencer_get_last_command:bb.a
is_command.exit.thread:                           ; preds = %bb.e
  %scevgep33 = getelementptr i8, ptr %i.m, i64 6
  %i.aa = icmp eq i8 %i.p, 114
  br i1 %i.aa, label %bb.i, label %is_command.exit17.thread

bb.i:                                             ; preds = %is_command.exit.thread
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !35
  %i.ad = icmp eq i8 %i.ac, 101
  br i1 %i.ad, label %bb.j, label %is_command.exit17.thread

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !35
  %i.ag = icmp eq i8 %i.af, 118
  br i1 %i.ag, label %bb.k, label %is_command.exit17.thread

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !35
  %i.aj = icmp eq i8 %i.ai, 101
  br i1 %i.aj, label %bb.l, label %is_command.exit17.thread

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !35
  %i.am = icmp eq i8 %i.al, 114
  br i1 %i.am, label %bb.m, label %is_command.exit17.thread

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 5
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !35
  %i.ap = icmp eq i8 %i.ao, 116
  br i1 %i.ap, label %skip_prefix_impl.exit.thread.i15, label %is_command.exit17.thread

skip_prefix_impl.exit.thread.i15:                 ; preds = %bb.m
  %i.aq = load i8, ptr %scevgep33, align 1, !tbaa !35
  switch i8 %i.aq, label %is_command.exit17.thread [
    i8 32, label %is_command.exit17.thread.sink.split
    i8 9, label %is_command.exit17.thread.sink.split
  ]

is_command.exit17.thread.sink.split:              ; preds = %skip_prefix_impl.exit.thread.i15, %skip_prefix_impl.exit.thread.i15, %skip_prefix_impl.exit.thread.i, %skip_prefix_impl.exit.thread.i
  %.sink = phi i32 [ 1, %skip_prefix_impl.exit.thread.i ], [ 1, %skip_prefix_impl.exit.thread.i ], [ 0, %skip_prefix_impl.exit.thread.i15 ], [ 0, %skip_prefix_impl.exit.thread.i15 ]
  store i32 %.sink, ptr %1, align 4, !tbaa !32
  br label %is_command.exit17.thread

is_command.exit17.thread:                         ; preds = %is_command.exit17.thread.sink.split, %skip_prefix_impl.exit.thread.i, %is_command.exit.thread, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %skip_prefix_impl.exit.thread.i15
  %.0 = phi i32 [ -1, %bb.i ], [ -1, %skip_prefix_impl.exit.thread.i ], [ -1, %skip_prefix_impl.exit.thread.i15 ], [ -1, %is_command.exit.thread ], [ -1, %bb.m ], [ -1, %bb.l ], [ -1, %bb.k ], [ -1, %bb.j ], [ 0, %is_command.exit17.thread.sink.split ]
  call void @strbuf_release(ptr noundef nonnull %2) #21
  br label %bb.n

bb.n:                                             ; preds = %bb.c, %bb.c, %is_command.exit17.thread, %bb.d
  %.05 = phi i32 [ %.0, %is_command.exit17.thread ], [ -1, %bb.d ], [ -1, %bb.c ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret i32 %.05
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @todo_list_parse_insn_buffer(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef captures(none) initializes((32, 36), (40, 44), (48, 52)) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.object_id, align 4          ; 6 uses
  %i.a = load ptr, ptr @rebase_path_done.ret, align 8, !tbaa !19 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %rebase_path_done.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @the_repository, align 8, !tbaa !21
  %i.c = tail call ptr (ptr, ptr, ...) @repo_git_path(ptr noundef %i.b, ptr noundef nonnull @.str.147) #21 ; 2 uses
  store ptr %i.c, ptr @rebase_path_done.ret, align 8, !tbaa !19
  br label %rebase_path_done.exit

rebase_path_done.exit:                            ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ %i.a, %bb.a ]
  %i.e = tail call i32 @file_exists(ptr noundef %i.d) #21
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  store i32 0, ptr %i.f, align 8, !tbaa !137
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  store i32 0, ptr %i.g, align 8, !tbaa !138
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 0, ptr %i.h, align 8, !tbaa !139
  %i.i = load i8, ptr %2, align 1, !tbaa !35
  %.not98 = icmp eq i8 %i.i, 0
  br i1 %.not98, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %rebase_path_done.exit
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = ptrtoint ptr %2 to i64                   ; 6 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.dm
  %.043103 = phi i32 [ %i.e, %.lr.ph ], [ %.1, %bb.dm ] ; 2 uses
  %.044101 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.dm ] ; 2 uses
  %.046100 = phi i32 [ 1, %.lr.ph ], [ %i.nh, %bb.dm ] ; 2 uses
  %.04799 = phi ptr [ %2, %.lr.ph ], [ %i.p, %bb.dm ] ; 6 uses
  %i.n = call ptr @strchrnul(ptr noundef nonnull %.04799, i32 noundef 10) #22 ; 6 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !35
  %.not50 = icmp ne i8 %i.o, 0
  %.idx = zext i1 %.not50 to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx ; 2 uses
  %.not51 = icmp eq ptr %.04799, %i.n
  br i1 %.not51, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds i8, ptr %i.n, i64 -1 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !35
  %i.s = icmp eq i8 %i.r, 13
  %spec.select = select i1 %i.s, ptr %i.q, ptr %i.n
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi ptr [ %i.n, %bb.c ], [ %spec.select, %bb.d ] ; 8 uses
  %i.t = load i32, ptr %i.g, align 8, !tbaa !138  ; 3 uses
  %i.u = load i32, ptr %i.j, align 4, !tbaa !140  ; 2 uses
  %.not.i58 = icmp slt i32 %i.t, %i.u
  br i1 %.not.i58, label %._crit_edge.i, label %bb.f

._crit_edge.i:                                    ; preds = %bb.e
  %.pre.i = load ptr, ptr %i.k, align 8, !tbaa !132
  br label %append_new_todo.exit

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i32 %i.t, 1
  %i.w = mul i32 %i.u, 3
  %i.x = add i32 %i.w, 48
  %i.y = sdiv i32 %i.x, 2
  %..i = call i32 @llvm.smax.i32(i32 %i.y, i32 %i.v) ; 3 uses
  store i32 %..i, ptr %i.j, align 4, !tbaa !140
  %i.z = sext i32 %..i to i64                     ; 2 uses
  %mul.ov.i.i = icmp slt i32 %..i, 0
  br i1 %mul.ov.i.i, label %bb.g, label %st_mult.exit.i

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @die(ptr noundef nonnull @.str.480, i64 noundef 40, i64 noundef %i.z) #23
  unreachable

st_mult.exit.i:                                   ; preds = %bb.f
  %i.aa = load ptr, ptr %i.k, align 8, !tbaa !132
  %i.ab = mul nuw nsw i64 %i.z, 40
  %i.ac = call ptr @xrealloc(ptr noundef %i.aa, i64 noundef %i.ab) #21 ; 2 uses
  store ptr %i.ac, ptr %i.k, align 8, !tbaa !132
  %.pre16.i = load i32, ptr %i.g, align 8, !tbaa !138
  br label %append_new_todo.exit

append_new_todo.exit:                             ; preds = %._crit_edge.i, %st_mult.exit.i
  %i.ad = phi i32 [ %i.t, %._crit_edge.i ], [ %.pre16.i, %st_mult.exit.i ] ; 2 uses
  %i.ae = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.ac, %st_mult.exit.i ]
  %i.af = add nsw i32 %i.ad, 1
  store i32 %i.af, ptr %i.g, align 8, !tbaa !138
  %i.ag = sext i32 %i.ad to i64
  %i.ah = getelementptr inbounds [40 x i8], ptr %i.ae, i64 %i.ag ; 30 uses
  %i.ai = load ptr, ptr %i.l, align 8, !tbaa !133
  %i.aj = ptrtoint ptr %.04799 to i64             ; 3 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i64 %i.al, ptr %i.am, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 7 uses
  store i32 0, ptr %i.an, align 8, !tbaa !142
  %i.ao = call i64 @strspn(ptr noundef nonnull %.04799, ptr noundef nonnull @.str.148) #22
  %i.ap = getelementptr inbounds nuw i8, ptr %.04799, i64 %i.ao ; 48 uses
  %i.aq = icmp eq ptr %i.ap, %.0
  br i1 %i.aq, label %bb.j, label %bb.h

bb.h:                                             ; preds = %append_new_todo.exit
  %i.ar = load i8, ptr %i.ap, align 1, !tbaa !35
  %i.as = icmp eq i8 %i.ar, 13
  br i1 %i.as, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = ptrtoint ptr %.0 to i64                 ; 6 uses
  %i.au = ptrtoint ptr %i.ap to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = load ptr, ptr @comment_line_str, align 8, !tbaa !19
  %i.ax = call zeroext i1 @starts_with_mem(ptr noundef nonnull %i.ap, i64 noundef %i.av, ptr noundef %i.aw) #21
  br i1 %i.ax, label %bb.j, label %.preheader147.i

.preheader147.i:                                  ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 1 ; 23 uses
  %scevgep174.i = getelementptr i8, ptr %i.ap, i64 4 ; 19 uses
  %i.az = load i8, ptr %i.ap, align 1, !tbaa !35  ; 5 uses
  %i.ba = icmp eq i8 %i.az, 112
  br i1 %i.ba, label %bb.k, label %skip_prefix_impl.exit.i.i

bb.j:                                             ; preds = %bb.i, %bb.h, %append_new_todo.exit
  store i32 14, ptr %i.ah, align 8, !tbaa !143
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr null, ptr %i.bb, align 8, !tbaa !144
  %i.bc = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.bd = sub i64 %i.bc, %i.m
  %i.be = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !136
  %i.bf = ptrtoint ptr %.0 to i64
  %i.bg = sub i64 %i.bf, %i.bc
  br label %parse_insn_line.exit.thread82.sink.split

bb.k:                                             ; preds = %.preheader147.i
  %i.bh = load i8, ptr %i.ay, align 1, !tbaa !35
  %i.bi = icmp eq i8 %i.bh, 105
  br i1 %i.bi, label %bb.l, label %skip_prefix_impl.exit.i.thread.i

bb.l:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !35
  %i.bl = icmp eq i8 %i.bk, 99
  br i1 %i.bl, label %bb.m, label %skip_prefix_impl.exit.i.thread.i

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !35
  %i.bo = icmp eq i8 %i.bn, 107
  br i1 %i.bo, label %skip_prefix_impl.exit.thread.i.i, label %skip_prefix_impl.exit.i.thread.i

skip_prefix_impl.exit.i.thread.i:                 ; preds = %bb.m, %bb.l, %bb.k
  br label %skip_prefix_impl.exit.thread.i.i

skip_prefix_impl.exit.thread.i.i:                 ; preds = %skip_prefix_impl.exit.i.thread.i, %bb.m
  %.011.i.i = phi ptr [ %i.ay, %skip_prefix_impl.exit.i.thread.i ], [ %scevgep174.i, %bb.m ] ; 6 uses
  %i.bp = load i8, ptr %.011.i.i, align 1, !tbaa !35
  switch i8 %i.bp, label %.thread.i [
    i8 32, label %bb.bx
    i8 9, label %bb.bx
    i8 10, label %bb.bx
    i8 13, label %bb.bx
    i8 0, label %bb.bx
  ]

skip_prefix_impl.exit.i.i:                        ; preds = %.preheader147.i
  %scevgep173.i = getelementptr i8, ptr %i.ap, i64 6 ; 9 uses
  switch i8 %i.az, label %skip_prefix_impl.exit.i.3.i [
    i8 114, label %bb.n
    i8 101, label %bb.s
  ]

bb.n:                                             ; preds = %skip_prefix_impl.exit.i.i
  %i.bq = load i8, ptr %i.ay, align 1, !tbaa !35
  %i.br = icmp eq i8 %i.bq, 101                   ; 2 uses
  br i1 %i.br, label %bb.o, label %skip_prefix_impl.exit.i.3.thread.i

bb.o:                                             ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !35
  switch i8 %i.bt, label %skip_prefix_impl.exit.i.3.thread.i [
    i8 118, label %bb.p
    i8 119, label %bb.v
  ]

bb.p:                                             ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !35
  %i.bw = icmp eq i8 %i.bv, 101
  br i1 %i.bw, label %bb.q, label %skip_prefix_impl.exit.i.3.thread.i

bb.q:                                             ; preds = %bb.p
  %i.bx = load i8, ptr %scevgep174.i, align 1, !tbaa !35
  %i.by = icmp eq i8 %i.bx, 114
  br i1 %i.by, label %bb.r, label %skip_prefix_impl.exit.i.3.thread.i

bb.r:                                             ; preds = %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ap, i64 5
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !35
  %i.cb = icmp eq i8 %i.ca, 116
  br i1 %i.cb, label %skip_prefix_impl.exit.thread.i.1.i, label %skip_prefix_impl.exit.i.3.thread.i

skip_prefix_impl.exit.thread.i.1.i:               ; preds = %bb.r
  %i.cc = load i8, ptr %scevgep173.i, align 1, !tbaa !35
  switch i8 %i.cc, label %skip_prefix_impl.exit.i.3.thread.i [
    i8 32, label %bb.bx
    i8 9, label %bb.bx
    i8 10, label %bb.bx
    i8 13, label %bb.bx
    i8 0, label %bb.bx
  ]

bb.s:                                             ; preds = %skip_prefix_impl.exit.i.i
  %i.cd = load i8, ptr %i.ay, align 1, !tbaa !35  ; 2 uses
  %i.ce = icmp eq i8 %i.cd, 100
  br i1 %i.ce, label %bb.t, label %skip_prefix_impl.exit.i.2.thread.i

bb.t:                                             ; preds = %bb.s
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !35
  %i.ch = icmp eq i8 %i.cg, 105
  br i1 %i.ch, label %bb.u, label %skip_prefix_impl.exit.i.2.thread.i

bb.u:                                             ; preds = %bb.t
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !35
  %i.ck = icmp eq i8 %i.cj, 116
  br i1 %i.ck, label %skip_prefix_impl.exit.thread.i.2.i, label %skip_prefix_impl.exit.i.2.thread.i

skip_prefix_impl.exit.i.2.thread.i:               ; preds = %bb.u, %bb.t, %bb.s
  br label %skip_prefix_impl.exit.thread.i.2.i

skip_prefix_impl.exit.thread.i.2.i:               ; preds = %skip_prefix_impl.exit.i.2.thread.i, %bb.u
  %.011.i.2.i = phi ptr [ %i.ay, %skip_prefix_impl.exit.i.2.thread.i ], [ %scevgep174.i, %bb.u ] ; 6 uses
  %i.cl = load i8, ptr %.011.i.2.i, align 1, !tbaa !35
  switch i8 %i.cl, label %bb.ah [
    i8 32, label %bb.bx
    i8 9, label %bb.bx
    i8 10, label %bb.bx
    i8 13, label %bb.bx
    i8 0, label %bb.bx
  ]

bb.v:                                             ; preds = %bb.o
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !35
  %i.co = icmp eq i8 %i.cn, 111
  br i1 %i.co, label %bb.w, label %skip_prefix_impl.exit.i.3.thread.i

bb.w:                                             ; preds = %bb.v
  %i.cp = load i8, ptr %scevgep174.i, align 1, !tbaa !35
  %i.cq = icmp eq i8 %i.cp, 114
  br i1 %i.cq, label %bb.x, label %skip_prefix_impl.exit.i.3.thread.i

bb.x:                                             ; preds = %bb.w
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ap, i64 5
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !35
  %i.ct = icmp eq i8 %i.cs, 100
  br i1 %i.ct, label %skip_prefix_impl.exit.thread.i.3.i, label %skip_prefix_impl.exit.i.3.thread.i

skip_prefix_impl.exit.i.3.thread.i:               ; preds = %bb.o, %skip_prefix_impl.exit.thread.i.1.i, %bb.r, %bb.q, %bb.p, %bb.x, %bb.w, %bb.v, %bb.n
  br label %skip_prefix_impl.exit.thread.i.3.i

skip_prefix_impl.exit.thread.i.3.i:               ; preds = %skip_prefix_impl.exit.i.3.thread.i, %bb.x
  %.011.i.3.i = phi ptr [ %i.ay, %skip_prefix_impl.exit.i.3.thread.i ], [ %scevgep173.i, %bb.x ] ; 6 uses
  %i.cu = load i8, ptr %.011.i.3.i, align 1, !tbaa !35
  switch i8 %i.cu, label %bb.as [
    i8 32, label %bb.bx
    i8 9, label %bb.bx
    i8 10, label %bb.bx
    i8 13, label %bb.bx
    i8 0, label %bb.bx
  ]

skip_prefix_impl.exit.i.3.i:                      ; preds = %skip_prefix_impl.exit.i.i
  %scevgep170.i = getelementptr i8, ptr %i.ap, i64 5 ; 5 uses
  switch i8 %i.az, label %skip_prefix_impl.exit.i.7.i [
    i8 102, label %bb.y
    i8 115, label %bb.ac
    i8 120, label %skip_prefix_impl.exit.thread.i.6.i
    i8 98, label %bb.ak
  ]

bb.y:                                             ; preds = %skip_prefix_impl.exit.i.3.i
  %i.cv = load i8, ptr %i.ay, align 1, !tbaa !35
  %i.cw = icmp eq i8 %i.cv, 105
  br i1 %i.cw, label %bb.z, label %skip_prefix_impl.exit.i.4.thread.i

bb.z:                                             ; preds = %bb.y
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !35
  %i.cz = icmp eq i8 %i.cy, 120
  br i1 %i.cz, label %bb.aa, label %skip_prefix_impl.exit.i.4.thread.i

bb.aa:                                            ; preds = %bb.z
  %i.da = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
  %i.db = load i8, ptr %i.da, align 1, !tbaa !35
  %i.dc = icmp eq i8 %i.db, 117
  br i1 %i.dc, label %bb.ab, label %skip_prefix_impl.exit.i.4.thread.i

bb.ab:                                            ; preds = %bb.aa
  %i.dd = load i8, ptr %scevgep174.i, align 1, !tbaa !35
  %i.de = icmp eq i8 %i.dd, 112
  br i1 %i.de, label %skip_prefix_impl.exit.thread.i.4.i, label %skip_prefix_impl.exit.i.4.thread.i

skip_prefix_impl.exit.i.4.thread.i:               ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y
  br label %skip_prefix_impl.exit.thread.i.4.i

skip_prefix_impl.exit.thread.i.4.i:               ; preds = %skip_prefix_impl.exit.i.4.thread.i, %bb.ab
  %.011.i.4.i = phi ptr [ %scevgep170.i, %bb.ab ], [ %i.ay, %skip_prefix_impl.exit.i.4.thread.i ] ; 3 uses
  %i.df = load i8, ptr %.011.i.4.i, align 1, !tbaa !35
  switch i8 %i.df, label %.thread.i [
    i8 32, label %bb.bv
    i8 9, label %bb.bv
    i8 10, label %bb.bv
    i8 13, label %bb.bv
    i8 0, label %bb.bv
  ]

bb.ac:                                            ; preds = %skip_prefix_impl.exit.i.3.i
  %i.dg = load i8, ptr %i.ay, align 1, !tbaa !35
  %i.dh = icmp eq i8 %i.dg, 113
  br i1 %i.dh, label %bb.ad, label %skip_prefix_impl.exit.i.5.thread.i

bb.ad:                                            ; preds = %bb.ac
  %i.di = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !35
  %i.dk = icmp eq i8 %i.dj, 117
  br i1 %i.dk, label %bb.ae, label %skip_prefix_impl.exit.i.5.thread.i

bb.ae:                                            ; preds = %bb.ad
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
end_hunk_0
begin_hunk_1_@todo_list_parse_insn_buffer:bb.a
  %.011.i.9.i = phi ptr [ %i.ay, %skip_prefix_impl.exit.i.7.i ], [ %scevgep170214319.i, %bb.av ] ; 6 uses
  %i.ff = load i8, ptr %.011.i.9.i, align 1, !tbaa !35
  switch i8 %i.ff, label %skip_prefix_impl.exit.i.10.i [
    i8 32, label %bb.bw
    i8 9, label %bb.bw
    i8 10, label %bb.bw
    i8 13, label %bb.bw
    i8 0, label %bb.bw
  ]

bb.aw:                                            ; preds = %skip_prefix_impl.exit.i.7.i
  %i.fg = load i8, ptr %i.ay, align 1, !tbaa !35
  %i.fh = icmp eq i8 %i.fg, 101
  br i1 %i.fh, label %bb.ax, label %skip_prefix_impl.exit.i.10.thread.i

bb.ax:                                            ; preds = %bb.aw
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !35
  %i.fk = icmp eq i8 %i.fj, 114
  br i1 %i.fk, label %bb.ay, label %skip_prefix_impl.exit.i.10.thread.i

bb.ay:                                            ; preds = %bb.ax
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !35
  %i.fn = icmp eq i8 %i.fm, 103
  br i1 %i.fn, label %bb.az, label %skip_prefix_impl.exit.i.10.thread.i

bb.az:                                            ; preds = %bb.ay
  %i.fo = load i8, ptr %scevgep174.i, align 1, !tbaa !35
  %i.fp = icmp eq i8 %i.fo, 101
  br i1 %i.fp, label %skip_prefix_impl.exit.thread.i.10.i, label %skip_prefix_impl.exit.i.10.thread.i

skip_prefix_impl.exit.i.10.thread.i:              ; preds = %bb.az, %bb.ay, %bb.ax, %bb.aw
  br label %skip_prefix_impl.exit.thread.i.10.i

skip_prefix_impl.exit.thread.i.10.i:              ; preds = %skip_prefix_impl.exit.i.10.thread.i, %bb.az
  %.011.i.10.i = phi ptr [ %i.ay, %skip_prefix_impl.exit.i.10.thread.i ], [ %scevgep170218235246257.i, %bb.az ] ; 6 uses
  %i.fq = load i8, ptr %.011.i.10.i, align 1, !tbaa !35
  switch i8 %i.fq, label %.thread.i [
    i8 32, label %bb.bx
    i8 9, label %bb.bx
    i8 10, label %bb.bx
    i8 13, label %bb.bx
    i8 0, label %bb.bx
  ]

skip_prefix_impl.exit.i.10.i:                     ; preds = %skip_prefix_impl.exit.i.7.i, %skip_prefix_impl.exit.thread.i.9.i
  %scevgep163.i = getelementptr i8, ptr %i.ap, i64 10
  switch i8 %i.az, label %.thread.i [
    i8 117, label %bb.ba
    i8 110, label %bb.bj
    i8 100, label %bb.bm
  ]

bb.ba:                                            ; preds = %skip_prefix_impl.exit.i.10.i
  %i.fr = load i8, ptr %i.ay, align 1, !tbaa !35
  %i.fs = icmp eq i8 %i.fr, 112
  br i1 %i.fs, label %bb.bb, label %skip_prefix_impl.exit.i.11.thread.i

bb.bb:                                            ; preds = %bb.ba
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !35
  %i.fv = icmp eq i8 %i.fu, 100
  br i1 %i.fv, label %bb.bc, label %skip_prefix_impl.exit.i.11.thread.i

bb.bc:                                            ; preds = %bb.bb
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !35
  %i.fy = icmp eq i8 %i.fx, 97
  br i1 %i.fy, label %bb.bd, label %skip_prefix_impl.exit.i.11.thread.i

bb.bd:                                            ; preds = %bb.bc
  %i.fz = load i8, ptr %scevgep174.i, align 1, !tbaa !35
  %i.ga = icmp eq i8 %i.fz, 116
  br i1 %i.ga, label %bb.be, label %skip_prefix_impl.exit.i.11.thread.i

bb.be:                                            ; preds = %bb.bd
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ap, i64 5
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !35
  %i.gd = icmp eq i8 %i.gc, 101
  br i1 %i.gd, label %bb.bf, label %skip_prefix_impl.exit.i.11.thread.i

bb.bf:                                            ; preds = %bb.be
  %i.ge = load i8, ptr %scevgep173.i, align 1, !tbaa !35
  %i.gf = icmp eq i8 %i.ge, 45
  br i1 %i.gf, label %bb.bg, label %skip_prefix_impl.exit.i.11.thread.i

bb.bg:                                            ; preds = %bb.bf
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ap, i64 7
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !35
  %i.gi = icmp eq i8 %i.gh, 114
  br i1 %i.gi, label %bb.bh, label %skip_prefix_impl.exit.i.11.thread.i

bb.bh:                                            ; preds = %bb.bg
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !35
  %i.gl = icmp eq i8 %i.gk, 101
  br i1 %i.gl, label %bb.bi, label %skip_prefix_impl.exit.i.11.thread.i

bb.bi:                                            ; preds = %bb.bh
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ap, i64 9
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !35
  %i.go = icmp eq i8 %i.gn, 102
  br i1 %i.go, label %skip_prefix_impl.exit.thread.i.11.i, label %skip_prefix_impl.exit.i.11.thread.i

skip_prefix_impl.exit.i.11.thread.i:              ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba
  br label %skip_prefix_impl.exit.thread.i.11.i

skip_prefix_impl.exit.thread.i.11.i:              ; preds = %skip_prefix_impl.exit.i.11.thread.i, %bb.bi
  %.011.i.11.i = phi ptr [ %i.ay, %skip_prefix_impl.exit.i.11.thread.i ], [ %scevgep163.i, %bb.bi ] ; 6 uses
  %i.gp = load i8, ptr %.011.i.11.i, align 1, !tbaa !35
  switch i8 %i.gp, label %.thread.i [
    i8 32, label %bb.bw
    i8 9, label %bb.bw
    i8 10, label %bb.bw
    i8 13, label %bb.bw
    i8 0, label %bb.bw
  ]

bb.bj:                                            ; preds = %skip_prefix_impl.exit.i.10.i
  %i.gq = load i8, ptr %i.ay, align 1, !tbaa !35
  %i.gr = icmp eq i8 %i.gq, 111
  br i1 %i.gr, label %bb.bk, label %.thread.i

bb.bk:                                            ; preds = %bb.bj
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !35
  %i.gu = icmp eq i8 %i.gt, 111
  br i1 %i.gu, label %bb.bl, label %.thread.i

bb.bl:                                            ; preds = %bb.bk
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !35
  %i.gx = icmp eq i8 %i.gw, 112
  br i1 %i.gx, label %skip_prefix_impl.exit.thread.i.12.i, label %.thread.i

skip_prefix_impl.exit.thread.i.12.i:              ; preds = %bb.bl
  %i.gy = load i8, ptr %scevgep174.i, align 1, !tbaa !35
  switch i8 %i.gy, label %.thread.i [
    i8 32, label %bb.bq
    i8 9, label %bb.bq
    i8 10, label %bb.bq
    i8 13, label %bb.bq
    i8 0, label %bb.bq
  ]

bb.bm:                                            ; preds = %skip_prefix_impl.exit.i.10.i
  %i.gz = load i8, ptr %i.ay, align 1, !tbaa !35
  %i.ha = icmp eq i8 %i.gz, 114
  br i1 %i.ha, label %bb.bn, label %skip_prefix_impl.exit.i.13.thread.i

bb.bn:                                            ; preds = %bb.bm
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !35
  %i.hd = icmp eq i8 %i.hc, 111
  br i1 %i.hd, label %bb.bo, label %skip_prefix_impl.exit.i.13.thread.i

bb.bo:                                            ; preds = %bb.bn
  %i.he = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !35
  %i.hg = icmp eq i8 %i.hf, 112
  br i1 %i.hg, label %skip_prefix_impl.exit.thread.i.13.i, label %skip_prefix_impl.exit.i.13.thread.i

skip_prefix_impl.exit.i.13.thread.i:              ; preds = %bb.bo, %bb.bn, %bb.bm
  br label %skip_prefix_impl.exit.thread.i.13.i

skip_prefix_impl.exit.thread.i.13.i:              ; preds = %skip_prefix_impl.exit.i.13.thread.i, %bb.bo
  %.011.i.13.i = phi ptr [ %i.ay, %skip_prefix_impl.exit.i.13.thread.i ], [ %scevgep174.i, %bb.bo ] ; 6 uses
  %i.hh = load i8, ptr %.011.i.13.i, align 1, !tbaa !35
  switch i8 %i.hh, label %.thread.i [
    i8 32, label %bb.bx
    i8 9, label %bb.bx
    i8 10, label %bb.bx
    i8 13, label %bb.bx
    i8 0, label %bb.bx
  ]

.thread.i:                                        ; preds = %bb.av, %bb.au, %bb.at, %bb.as, %skip_prefix_impl.exit.thread.i.i, %skip_prefix_impl.exit.thread.i.13.i, %skip_prefix_impl.exit.thread.i.12.i, %bb.bl, %bb.bk, %bb.bj, %skip_prefix_impl.exit.thread.i.11.i, %skip_prefix_impl.exit.i.10.i, %skip_prefix_impl.exit.thread.i.10.i, %skip_prefix_impl.exit.thread.i.8.i, %skip_prefix_impl.exit.thread.i.7.i, %bb.aj, %bb.ai, %bb.ah, %skip_prefix_impl.exit.thread.i.5.i, %skip_prefix_impl.exit.thread.i.4.i
  %i.hi = load i32, ptr @git_gettext_enabled, align 4, !tbaa !32
  %.not4.i.i = icmp eq i32 %i.hi, 0
  br i1 %.not4.i.i, label %_.exit.i, label %bb.bp

bb.bp:                                            ; preds = %.thread.i
  %i.hj = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.149, i32 noundef 5) #21
  br label %_.exit.i

_.exit.i:                                         ; preds = %bb.bp, %.thread.i
  %.0.i90.i = phi ptr [ %i.hj, %bb.bp ], [ @.str.149, %.thread.i ]
  %i.hk = call i64 @strcspn(ptr noundef nonnull %i.ap, ptr noundef nonnull @.str.48) #22
  %i.hl = trunc i64 %i.hk to i32
  %i.hm = call i32 (ptr, ...) @error(ptr noundef %.0.i90.i, i32 noundef %i.hl, ptr noundef nonnull %i.ap) #21 ; 0 uses
  br label %parse_insn_line.exit.thread

bb.bq:                                            ; preds = %skip_prefix_impl.exit.thread.i.12.i, %skip_prefix_impl.exit.thread.i.12.i, %skip_prefix_impl.exit.thread.i.12.i, %skip_prefix_impl.exit.thread.i.12.i, %skip_prefix_impl.exit.thread.i.12.i, %skip_prefix_impl.exit.thread.i.7.i, %skip_prefix_impl.exit.thread.i.7.i, %skip_prefix_impl.exit.thread.i.7.i, %skip_prefix_impl.exit.thread.i.7.i, %skip_prefix_impl.exit.thread.i.7.i
  %.076154.lcssa.ph298.i = phi i32 [ 7, %skip_prefix_impl.exit.thread.i.7.i ], [ 7, %skip_prefix_impl.exit.thread.i.7.i ], [ 7, %skip_prefix_impl.exit.thread.i.7.i ], [ 7, %skip_prefix_impl.exit.thread.i.7.i ], [ 7, %skip_prefix_impl.exit.thread.i.7.i ], [ 12, %skip_prefix_impl.exit.thread.i.12.i ], [ 12, %skip_prefix_impl.exit.thread.i.12.i ], [ 12, %skip_prefix_impl.exit.thread.i.12.i ], [ 12, %skip_prefix_impl.exit.thread.i.12.i ], [ 12, %skip_prefix_impl.exit.thread.i.12.i ] ; 2 uses
  %.011.i.lcssa.ph299.i = phi ptr [ %.011.i.7.i, %skip_prefix_impl.exit.thread.i.7.i ], [ %.011.i.7.i, %skip_prefix_impl.exit.thread.i.7.i ], [ %.011.i.7.i, %skip_prefix_impl.exit.thread.i.7.i ], [ %.011.i.7.i, %skip_prefix_impl.exit.thread.i.7.i ], [ %.011.i.7.i, %skip_prefix_impl.exit.thread.i.7.i ], [ %scevgep174.i, %skip_prefix_impl.exit.thread.i.12.i ], [ %scevgep174.i, %skip_prefix_impl.exit.thread.i.12.i ], [ %scevgep174.i, %skip_prefix_impl.exit.thread.i.12.i ], [ %scevgep174.i, %skip_prefix_impl.exit.thread.i.12.i ], [ %scevgep174.i, %skip_prefix_impl.exit.thread.i.12.i ] ; 2 uses
  store i32 %.076154.lcssa.ph298.i, ptr %i.ah, align 8, !tbaa !143
  %i.hn = call i64 @strspn(ptr noundef nonnull %.011.i.lcssa.ph299.i, ptr noundef nonnull @.str.148) #22
  %sext303.i = shl i64 %i.hn, 32
  %i.ho = ashr exact i64 %sext303.i, 32
  %i.hp = getelementptr inbounds i8, ptr %.011.i.lcssa.ph299.i, i64 %i.ho ; 3 uses
  %.not89.i = icmp eq ptr %i.hp, %.0
  br i1 %.not89.i, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.hq = load i32, ptr @git_gettext_enabled, align 4, !tbaa !32
  %.not4.i91.i = icmp eq i32 %i.hq, 0
  br i1 %.not4.i91.i, label %_.exit93.thread.i, label %_.exit93.i

_.exit93.i:                                       ; preds = %bb.br
  %i.hr = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.150, i32 noundef 5) #21 ; 2 uses
  %.pre.i60 = load i32, ptr %i.ah, align 8, !tbaa !143 ; 4 uses
  %i.hs = icmp ult i32 %.pre.i60, 14
  br i1 %i.hs, label %_.exit93.thread.i, label %bb.bs

_.exit93.thread.i:                                ; preds = %_.exit93.i, %bb.br
  %.0.i92307.i.a = phi ptr [ %i.hr, %_.exit93.i ], [ @.str.150, %bb.br ]
  %i.ht = phi i32 [ %.pre.i60, %_.exit93.i ], [ %.076154.lcssa.ph298.i, %bb.br ]
  %i.hu = zext nneg i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw [16 x i8], ptr @todo_command_info, i64 %i.hu
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  br label %command_to_string.exit.i

bb.bs:                                            ; preds = %_.exit93.i
  %i.hx = icmp eq i32 %.pre.i60, 14
  br i1 %i.hx, label %command_to_string.exit.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hy = call fastcc ptr @_(ptr noundef nonnull @.str.166)
  call void (ptr, ...) @die(ptr noundef %i.hy, i32 noundef %.pre.i60) #23
  unreachable

command_to_string.exit.i:                         ; preds = %bb.bs, %_.exit93.thread.i
  %.0.i92306.i = phi ptr [ %.0.i92307.i.a, %_.exit93.thread.i ], [ %i.hr, %bb.bs ]
  %.0.in.i.i = phi ptr [ %i.hw, %_.exit93.thread.i ], [ @comment_line_str, %bb.bs ]
  %.0.i94.i = load ptr, ptr %.0.in.i.i, align 8, !tbaa !19
  %i.hz = call i32 (ptr, ...) @error(ptr noundef %.0.i92306.i, ptr noundef %.0.i94.i, ptr noundef nonnull %i.hp) #21 ; 0 uses
  br label %parse_insn_line.exit.thread

bb.bu:                                            ; preds = %bb.bq
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr null, ptr %i.ia, align 8, !tbaa !144
  %5 = ptrtoint ptr %i.hp to i64                  ; 2 uses
  %i.ib = sub i64 %5, %i.m
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store i64 %i.ib, ptr %i.ic, align 8, !tbaa !136
  %6 = sub i64 %i.at, %5
  br label %parse_insn_line.exit.thread82.sink.split

bb.bv:                                            ; preds = %skip_prefix_impl.exit.thread.i.4.i, %skip_prefix_impl.exit.thread.i.4.i, %skip_prefix_impl.exit.thread.i.4.i, %skip_prefix_impl.exit.thread.i.4.i, %skip_prefix_impl.exit.thread.i.4.i
  store i32 4, ptr %i.ah, align 8, !tbaa !143
  %i.id = call i64 @strspn(ptr noundef nonnull %.011.i.4.i, ptr noundef nonnull @.str.148) #22 ; 2 uses
  %sext294.i.jt4 = shl i64 %i.id, 32
  %i.ie = ashr exact i64 %sext294.i.jt4, 32
  %i.if = getelementptr i8, ptr %.011.i.4.i, i64 %i.ie ; 5 uses
  %i.ig = and i64 %i.id, 4294967295
  %.not84.i.jt4 = icmp eq i64 %i.ig, 0
  br i1 %.not84.i.jt4, label %bb.by, label %.preheader146.preheader.i

bb.bw:                                            ; preds = %skip_prefix_impl.exit.thread.i.6.i, %skip_prefix_impl.exit.thread.i.6.i, %skip_prefix_impl.exit.thread.i.6.i, %skip_prefix_impl.exit.thread.i.6.i, %skip_prefix_impl.exit.thread.i.6.i, %skip_prefix_impl.exit.thread.i.8.i, %skip_prefix_impl.exit.thread.i.8.i, %skip_prefix_impl.exit.thread.i.8.i, %skip_prefix_impl.exit.thread.i.8.i, %skip_prefix_impl.exit.thread.i.8.i, %skip_prefix_impl.exit.thread.i.9.i, %skip_prefix_impl.exit.thread.i.9.i, %skip_prefix_impl.exit.thread.i.9.i, %skip_prefix_impl.exit.thread.i.9.i, %skip_prefix_impl.exit.thread.i.9.i, %skip_prefix_impl.exit.thread.i.11.i, %skip_prefix_impl.exit.thread.i.11.i, %skip_prefix_impl.exit.thread.i.11.i, %skip_prefix_impl.exit.thread.i.11.i, %skip_prefix_impl.exit.thread.i.11.i
  %.076154.lcssa.ph.i.jt11 = phi i32 [ 8, %skip_prefix_impl.exit.thread.i.8.i ], [ 8, %skip_prefix_impl.exit.thread.i.8.i ], [ 8, %skip_prefix_impl.exit.thread.i.8.i ], [ 8, %skip_prefix_impl.exit.thread.i.8.i ], [ 8, %skip_prefix_impl.exit.thread.i.8.i ], [ 11, %skip_prefix_impl.exit.thread.i.11.i ], [ 11, %skip_prefix_impl.exit.thread.i.11.i ], [ 11, %skip_prefix_impl.exit.thread.i.11.i ], [ 11, %skip_prefix_impl.exit.thread.i.11.i ], [ 11, %skip_prefix_impl.exit.thread.i.11.i ], [ 6, %skip_prefix_impl.exit.thread.i.6.i ], [ 6, %skip_prefix_impl.exit.thread.i.6.i ], [ 6, %skip_prefix_impl.exit.thread.i.6.i ], [ 6, %skip_prefix_impl.exit.thread.i.6.i ], [ 6, %skip_prefix_impl.exit.thread.i.6.i ], [ 9, %skip_prefix_impl.exit.thread.i.9.i ], [ 9, %skip_prefix_impl.exit.thread.i.9.i ], [ 9, %skip_prefix_impl.exit.thread.i.9.i ], [ 9, %skip_prefix_impl.exit.thread.i.9.i ], [ 9, %skip_prefix_impl.exit.thread.i.9.i ] ; 3 uses
  %.011.i.lcssa.ph.i.jt11 = phi ptr [ %.011.i.8.i, %skip_prefix_impl.exit.thread.i.8.i ], [ %.011.i.8.i, %skip_prefix_impl.exit.thread.i.8.i ], [ %.011.i.8.i, %skip_prefix_impl.exit.thread.i.8.i ], [ %.011.i.8.i, %skip_prefix_impl.exit.thread.i.8.i ], [ %.011.i.8.i, %skip_prefix_impl.exit.thread.i.8.i ], [ %.011.i.11.i, %skip_prefix_impl.exit.thread.i.11.i ], [ %.011.i.11.i, %skip_prefix_impl.exit.thread.i.11.i ], [ %.011.i.11.i, %skip_prefix_impl.exit.thread.i.11.i ], [ %.011.i.11.i, %skip_prefix_impl.exit.thread.i.11.i ], [ %.011.i.11.i, %skip_prefix_impl.exit.thread.i.11.i ], [ %.011.i.6.i, %skip_prefix_impl.exit.thread.i.6.i ], [ %.011.i.6.i, %skip_prefix_impl.exit.thread.i.6.i ], [ %.011.i.6.i, %skip_prefix_impl.exit.thread.i.6.i ], [ %.011.i.6.i, %skip_prefix_impl.exit.thread.i.6.i ], [ %.011.i.6.i, %skip_prefix_impl.exit.thread.i.6.i ], [ %.011.i.9.i, %skip_prefix_impl.exit.thread.i.9.i ], [ %.011.i.9.i, %skip_prefix_impl.exit.thread.i.9.i ], [ %.011.i.9.i, %skip_prefix_impl.exit.thread.i.9.i ], [ %.011.i.9.i, %skip_prefix_impl.exit.thread.i.9.i ], [ %.011.i.9.i, %skip_prefix_impl.exit.thread.i.9.i ] ; 2 uses
  store i32 %.076154.lcssa.ph.i.jt11, ptr %i.ah, align 8, !tbaa !143
  %i.ih = call i64 @strspn(ptr noundef nonnull %.011.i.lcssa.ph.i.jt11, ptr noundef nonnull @.str.148) #22 ; 2 uses
  %sext294.i.jt11 = shl i64 %i.ih, 32
  %i.ii = ashr exact i64 %sext294.i.jt11, 32
  %i.ij = getelementptr i8, ptr %.011.i.lcssa.ph.i.jt11, i64 %i.ii ; 7 uses
  %i.ik = and i64 %i.ih, 4294967295
  %.not84.i.jt11 = icmp eq i64 %i.ik, 0
  br i1 %.not84.i.jt11, label %bb.by, label %bb.cb

bb.bx:                                            ; preds = %skip_prefix_impl.exit.thread.i.i, %skip_prefix_impl.exit.thread.i.i, %skip_prefix_impl.exit.thread.i.i, %skip_prefix_impl.exit.thread.i.i, %skip_prefix_impl.exit.thread.i.i, %skip_prefix_impl.exit.thread.i.1.i, %skip_prefix_impl.exit.thread.i.1.i, %skip_prefix_impl.exit.thread.i.1.i, %skip_prefix_impl.exit.thread.i.1.i, %skip_prefix_impl.exit.thread.i.1.i, %skip_prefix_impl.exit.thread.i.2.i, %skip_prefix_impl.exit.thread.i.2.i, %skip_prefix_impl.exit.thread.i.2.i, %skip_prefix_impl.exit.thread.i.2.i, %skip_prefix_impl.exit.thread.i.2.i, %skip_prefix_impl.exit.thread.i.3.i, %skip_prefix_impl.exit.thread.i.3.i, %skip_prefix_impl.exit.thread.i.3.i, %skip_prefix_impl.exit.thread.i.3.i, %skip_prefix_impl.exit.thread.i.3.i, %skip_prefix_impl.exit.thread.i.5.i, %skip_prefix_impl.exit.thread.i.5.i, %skip_prefix_impl.exit.thread.i.5.i, %skip_prefix_impl.exit.thread.i.5.i, %skip_prefix_impl.exit.thread.i.5.i, %skip_prefix_impl.exit.thread.i.10.i, %skip_prefix_impl.exit.thread.i.10.i, %skip_prefix_impl.exit.thread.i.10.i, %skip_prefix_impl.exit.thread.i.10.i, %skip_prefix_impl.exit.thread.i.10.i, %skip_prefix_impl.exit.thread.i.13.i, %skip_prefix_impl.exit.thread.i.13.i, %skip_prefix_impl.exit.thread.i.13.i, %skip_prefix_impl.exit.thread.i.13.i, %skip_prefix_impl.exit.thread.i.13.i
  %.ph.i.jt13 = phi i1 [ false, %skip_prefix_impl.exit.thread.i.13.i ], [ false, %skip_prefix_impl.exit.thread.i.13.i ], [ false, %skip_prefix_impl.exit.thread.i.13.i ], [ false, %skip_prefix_impl.exit.thread.i.13.i ], [ false, %skip_prefix_impl.exit.thread.i.13.i ], [ false, %skip_prefix_impl.exit.thread.i.i ], [ false, %skip_prefix_impl.exit.thread.i.i ], [ false, %skip_prefix_impl.exit.thread.i.i ], [ false, %skip_prefix_impl.exit.thread.i.i ], [ false, %skip_prefix_impl.exit.thread.i.i ], [ true, %skip_prefix_impl.exit.thread.i.10.i ], [ true, %skip_prefix_impl.exit.thread.i.10.i ], [ true, %skip_prefix_impl.exit.thread.i.10.i ], [ true, %skip_prefix_impl.exit.thread.i.10.i ], [ true, %skip_prefix_impl.exit.thread.i.10.i ], [ false, %skip_prefix_impl.exit.thread.i.3.i ], [ false, %skip_prefix_impl.exit.thread.i.3.i ], [ false, %skip_prefix_impl.exit.thread.i.3.i ], [ false, %skip_prefix_impl.exit.thread.i.3.i ], [ false, %skip_prefix_impl.exit.thread.i.3.i ], [ false, %skip_prefix_impl.exit.thread.i.2.i ], [ false, %skip_prefix_impl.exit.thread.i.2.i ], [ false, %skip_prefix_impl.exit.thread.i.2.i ], [ false, %skip_prefix_impl.exit.thread.i.2.i ], [ false, %skip_prefix_impl.exit.thread.i.2.i ], [ false, %skip_prefix_impl.exit.thread.i.1.i ], [ false, %skip_prefix_impl.exit.thread.i.1.i ], [ false, %skip_prefix_impl.exit.thread.i.1.i ], [ false, %skip_prefix_impl.exit.thread.i.1.i ], [ false, %skip_prefix_impl.exit.thread.i.1.i ], [ false, %skip_prefix_impl.exit.thread.i.5.i ], [ false, %skip_prefix_impl.exit.thread.i.5.i ], [ false, %skip_prefix_impl.exit.thread.i.5.i ], [ false, %skip_prefix_impl.exit.thread.i.5.i ], [ false, %skip_prefix_impl.exit.thread.i.5.i ]
  %.076154.lcssa.ph.i.jt13 = phi i32 [ 13, %skip_prefix_impl.exit.thread.i.13.i ], [ 13, %skip_prefix_impl.exit.thread.i.13.i ], [ 13, %skip_prefix_impl.exit.thread.i.13.i ], [ 13, %skip_prefix_impl.exit.thread.i.13.i ], [ 13, %skip_prefix_impl.exit.thread.i.13.i ], [ 0, %skip_prefix_impl.exit.thread.i.i ], [ 0, %skip_prefix_impl.exit.thread.i.i ], [ 0, %skip_prefix_impl.exit.thread.i.i ], [ 0, %skip_prefix_impl.exit.thread.i.i ], [ 0, %skip_prefix_impl.exit.thread.i.i ], [ 10, %skip_prefix_impl.exit.thread.i.10.i ], [ 10, %skip_prefix_impl.exit.thread.i.10.i ], [ 10, %skip_prefix_impl.exit.thread.i.10.i ], [ 10, %skip_prefix_impl.exit.thread.i.10.i ], [ 10, %skip_prefix_impl.exit.thread.i.10.i ], [ 3, %skip_prefix_impl.exit.thread.i.3.i ], [ 3, %skip_prefix_impl.exit.thread.i.3.i ], [ 3, %skip_prefix_impl.exit.thread.i.3.i ], [ 3, %skip_prefix_impl.exit.thread.i.3.i ], [ 3, %skip_prefix_impl.exit.thread.i.3.i ], [ 2, %skip_prefix_impl.exit.thread.i.2.i ], [ 2, %skip_prefix_impl.exit.thread.i.2.i ], [ 2, %skip_prefix_impl.exit.thread.i.2.i ], [ 2, %skip_prefix_impl.exit.thread.i.2.i ], [ 2, %skip_prefix_impl.exit.thread.i.2.i ], [ 1, %skip_prefix_impl.exit.thread.i.1.i ], [ 1, %skip_prefix_impl.exit.thread.i.1.i ], [ 1, %skip_prefix_impl.exit.thread.i.1.i ], [ 1, %skip_prefix_impl.exit.thread.i.1.i ], [ 1, %skip_prefix_impl.exit.thread.i.1.i ], [ 5, %skip_prefix_impl.exit.thread.i.5.i ], [ 5, %skip_prefix_impl.exit.thread.i.5.i ], [ 5, %skip_prefix_impl.exit.thread.i.5.i ], [ 5, %skip_prefix_impl.exit.thread.i.5.i ], [ 5, %skip_prefix_impl.exit.thread.i.5.i ] ; 2 uses
  %.011.i.lcssa.ph.i.jt13 = phi ptr [ %.011.i.13.i, %skip_prefix_impl.exit.thread.i.13.i ], [ %.011.i.13.i, %skip_prefix_impl.exit.thread.i.13.i ], [ %.011.i.13.i, %skip_prefix_impl.exit.thread.i.13.i ], [ %.011.i.13.i, %skip_prefix_impl.exit.thread.i.13.i ], [ %.011.i.13.i, %skip_prefix_impl.exit.thread.i.13.i ], [ %.011.i.i, %skip_prefix_impl.exit.thread.i.i ], [ %.011.i.i, %skip_prefix_impl.exit.thread.i.i ], [ %.011.i.i, %skip_prefix_impl.exit.thread.i.i ], [ %.011.i.i, %skip_prefix_impl.exit.thread.i.i ], [ %.011.i.i, %skip_prefix_impl.exit.thread.i.i ], [ %.011.i.10.i, %skip_prefix_impl.exit.thread.i.10.i ], [ %.011.i.10.i, %skip_prefix_impl.exit.thread.i.10.i ], [ %.011.i.10.i, %skip_prefix_impl.exit.thread.i.10.i ], [ %.011.i.10.i, %skip_prefix_impl.exit.thread.i.10.i ], [ %.011.i.10.i, %skip_prefix_impl.exit.thread.i.10.i ], [ %.011.i.3.i, %skip_prefix_impl.exit.thread.i.3.i ], [ %.011.i.3.i, %skip_prefix_impl.exit.thread.i.3.i ], [ %.011.i.3.i, %skip_prefix_impl.exit.thread.i.3.i ], [ %.011.i.3.i, %skip_prefix_impl.exit.thread.i.3.i ], [ %.011.i.3.i, %skip_prefix_impl.exit.thread.i.3.i ], [ %.011.i.2.i, %skip_prefix_impl.exit.thread.i.2.i ], [ %.011.i.2.i, %skip_prefix_impl.exit.thread.i.2.i ], [ %.011.i.2.i, %skip_prefix_impl.exit.thread.i.2.i ], [ %.011.i.2.i, %skip_prefix_impl.exit.thread.i.2.i ], [ %.011.i.2.i, %skip_prefix_impl.exit.thread.i.2.i ], [ %scevgep173.i, %skip_prefix_impl.exit.thread.i.1.i ], [ %scevgep173.i, %skip_prefix_impl.exit.thread.i.1.i ], [ %scevgep173.i, %skip_prefix_impl.exit.thread.i.1.i ], [ %scevgep173.i, %skip_prefix_impl.exit.thread.i.1.i ], [ %scevgep173.i, %skip_prefix_impl.exit.thread.i.1.i ], [ %.011.i.5.i, %skip_prefix_impl.exit.thread.i.5.i ], [ %.011.i.5.i, %skip_prefix_impl.exit.thread.i.5.i ], [ %.011.i.5.i, %skip_prefix_impl.exit.thread.i.5.i ], [ %.011.i.5.i, %skip_prefix_impl.exit.thread.i.5.i ], [ %.011.i.5.i, %skip_prefix_impl.exit.thread.i.5.i ] ; 2 uses
  store i32 %.076154.lcssa.ph.i.jt13, ptr %i.ah, align 8, !tbaa !143
  %i.il = call i64 @strspn(ptr noundef nonnull %.011.i.lcssa.ph.i.jt13, ptr noundef nonnull @.str.148) #22 ; 2 uses
  %sext294.i.jt13 = shl i64 %i.il, 32
  %i.im = ashr exact i64 %sext294.i.jt13, 32
  %i.in = getelementptr i8, ptr %.011.i.lcssa.ph.i.jt13, i64 %i.im ; 5 uses
  %i.io = and i64 %i.il, 4294967295
  %.not84.i.jt13 = icmp eq i64 %i.io, 0
  br i1 %.not84.i.jt13, label %bb.by, label %skip_prefix_impl.exit101.i

bb.by:                                            ; preds = %bb.bv, %bb.bw, %bb.bx
  %.076154.lcssa.ph.i119 = phi i32 [ 4, %bb.bv ], [ %.076154.lcssa.ph.i.jt11, %bb.bw ], [ %.076154.lcssa.ph.i.jt13, %bb.bx ]
  %i.ip = load i32, ptr @git_gettext_enabled, align 4, !tbaa !32
  %.not4.i95.i = icmp eq i32 %i.ip, 0
  br i1 %.not4.i95.i, label %_.exit97.i.thread, label %_.exit97.i

_.exit97.i:                                       ; preds = %bb.by
  %i.iq = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.151, i32 noundef 5) #21 ; 2 uses
  %.pre180.i = load i32, ptr %i.ah, align 8, !tbaa !143 ; 4 uses
  %i.ir = icmp ult i32 %.pre180.i, 14
  br i1 %i.ir, label %_.exit97.i.thread, label %bb.bz

_.exit97.i.thread:                                ; preds = %bb.by, %_.exit97.i
  %.0.i96.i78 = phi ptr [ %i.iq, %_.exit97.i ], [ @.str.151, %bb.by ]
  %i.is = phi i32 [ %.pre180.i, %_.exit97.i ], [ %.076154.lcssa.ph.i119, %bb.by ]
  %i.it = zext nneg i32 %i.is to i64
  %i.iu = getelementptr inbounds nuw [16 x i8], ptr @todo_command_info, i64 %i.it
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  br label %command_to_string.exit73

bb.bz:                                            ; preds = %_.exit97.i
  %i.iw = icmp eq i32 %.pre180.i, 14
  br i1 %i.iw, label %command_to_string.exit73, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ix = call fastcc ptr @_(ptr noundef nonnull @.str.166)
  call void (ptr, ...) @die(ptr noundef %i.ix, i32 noundef %.pre180.i) #23
  unreachable

command_to_string.exit73:                         ; preds = %_.exit97.i.thread, %bb.bz
  %.0.i96.i77 = phi ptr [ %.0.i96.i78, %_.exit97.i.thread ], [ %i.iq, %bb.bz ]
  %.0.in.i71 = phi ptr [ %i.iv, %_.exit97.i.thread ], [ @comment_line_str, %bb.bz ]
  %.0.i72 = load ptr, ptr %.0.in.i71, align 8, !tbaa !19
  %i.iy = call i32 (ptr, ...) @error(ptr noundef %.0.i96.i77, ptr noundef %.0.i72) #21 ; 0 uses
  br label %parse_insn_line.exit.thread

.preheader146.preheader.i:                        ; preds = %bb.bv
  %scevgep175.i = getelementptr i8, ptr %i.if, i64 2 ; 2 uses
  %i.iz = load i8, ptr %i.if, align 1, !tbaa !35
  %i.ja = icmp eq i8 %i.iz, 45
  br i1 %i.ja, label %.preheader146.1.i, label %skip_prefix_impl.exit101.i.thread

bb.cb:                                            ; preds = %bb.bw
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr null, ptr %i.jb, align 8, !tbaa !144
  %i.jc = ptrtoint ptr %i.ij to i64               ; 2 uses
  %i.jd = sub i64 %i.jc, %i.m
  %i.je = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store i64 %i.jd, ptr %i.je, align 8, !tbaa !136
  %i.jf = sub i64 %i.at, %i.jc
  %i.jg = trunc i64 %i.jf to i32
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  store i32 %i.jg, ptr %i.jh, align 4, !tbaa !145
  switch i32 %.076154.lcssa.ph.i.jt11, label %parse_insn_line.exit.thread82 [
    i32 8, label %bb.cc
    i32 11, label %bb.cc
  ]

bb.cc:                                            ; preds = %bb.cb, %bb.cb
  %i.ji = load i8, ptr %.0, align 1, !tbaa !35    ; 2 uses
  store i8 0, ptr %.0, align 1, !tbaa !35
  %i.jj = load i32, ptr %i.ah, align 8, !tbaa !143
  switch i32 %i.jj, label %bb.ci [
    i32 8, label %sub_0.i
    i32 11, label %bb.ce
  ]

sub_0.i:                                          ; preds = %bb.cc
  %i.jk = load i8, ptr %i.ij, align 1
  %.not17.i = icmp eq i8 %i.jk, 35
  br i1 %.not17.i, label %.tail.i, label %.tail.thread.i

.tail.i:                                          ; preds = %sub_0.i
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ij, i64 1
  %i.jm = load i8, ptr %i.jl, align 1
  %i.jn = icmp eq i8 %i.jm, 0
  br i1 %i.jn, label %bb.cd, label %.tail.thread.i

.tail.thread.i:                                   ; preds = %.tail.i, %sub_0.i
  %i.jo = call i32 @check_refname_format(ptr noundef nonnull %i.ij, i32 noundef 1) #21
  %.not10.i = icmp eq i32 %i.jo, 0
  br i1 %.not10.i, label %parse_insn_line.exit.thread86, label %bb.cd

bb.cd:                                            ; preds = %.tail.thread.i, %.tail.i
  %i.jp = load i32, ptr @git_gettext_enabled, align 4, !tbaa !32
  %.not4.i.i70 = icmp eq i32 %i.jp, 0
  br i1 %.not4.i.i70, label %parse_insn_line.exit, label %.sink.split.sink.split.i

bb.ce:                                            ; preds = %bb.cc
  %i.jq = call i32 @check_refname_format(ptr noundef nonnull %i.ij, i32 noundef 1) #21
  %.not.i68 = icmp eq i32 %i.jq, 0
  br i1 %.not.i68, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.jr = load i32, ptr @git_gettext_enabled, align 4, !tbaa !32
  %.not4.i11.i = icmp eq i32 %i.jr, 0
  br i1 %.not4.i11.i, label %parse_insn_line.exit, label %.sink.split.sink.split.i

bb.cg:                                            ; preds = %bb.ce
  %i.js = call i32 @check_refname_format(ptr noundef nonnull %i.ij, i32 noundef 0) #21
  %.not8.i = icmp eq i32 %i.js, 0
  br i1 %.not8.i, label %parse_insn_line.exit.thread86, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.jt = load i32, ptr @git_gettext_enabled, align 4, !tbaa !32
  %.not4.i14.i = icmp eq i32 %i.jt, 0
  br i1 %.not4.i14.i, label %parse_insn_line.exit, label %.sink.split.sink.split.i

bb.ci:                                            ; preds = %bb.cc
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.71, i32 noundef 2652, ptr noundef nonnull @.str.160) #23
  unreachable

.sink.split.sink.split.i:                         ; preds = %bb.ch, %bb.cf, %bb.cd
  %.str.159.sink.i = phi ptr [ @.str.158, %bb.cf ], [ @.str.157, %bb.cd ], [ @.str.159, %bb.ch ]
  %i.ju = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.159.sink.i, i32 noundef 5) #21
  br label %parse_insn_line.exit

.preheader146.1.i:                                ; preds = %.preheader146.preheader.i
  %i.jv = getelementptr inbounds nuw i8, ptr %i.if, i64 1
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !35
  switch i8 %i.jw, label %skip_prefix_impl.exit101.i.thread [
    i8 67, label %skip_prefix_impl.exit101.sink.split.i
    i8 99, label %skip_prefix_impl.exit101.sink.split.i.fold.split
  ]

skip_prefix_impl.exit101.sink.split.i.fold.split: ; preds = %.preheader146.1.i
  br label %skip_prefix_impl.exit101.sink.split.i

skip_prefix_impl.exit101.sink.split.i:            ; preds = %.preheader146.1.i, %skip_prefix_impl.exit101.sink.split.i.fold.split
  %.sink331.i = phi i32 [ 2, %.preheader146.1.i ], [ 4, %skip_prefix_impl.exit101.sink.split.i.fold.split ]
  %i.jx = call i64 @strspn(ptr noundef %scevgep175.i, ptr noundef nonnull @.str.148) #22
  %i.jy = getelementptr inbounds nuw i8, ptr %scevgep175.i, i64 %i.jx
  %i.jz = load i32, ptr %i.an, align 8, !tbaa !142
  %i.ka = or i32 %i.jz, %.sink331.i
  store i32 %i.ka, ptr %i.an, align 8, !tbaa !142
  br label %skip_prefix_impl.exit101.i.thread

skip_prefix_impl.exit101.i:                       ; preds = %bb.bx
  br i1 %.ph.i.jt13, label %.preheader.preheader.i, label %skip_prefix_impl.exit101.i.thread

.preheader.preheader.i:                           ; preds = %skip_prefix_impl.exit101.i
  %scevgep177.i = getelementptr i8, ptr %i.in, i64 2 ; 4 uses
  %i.kb = load i8, ptr %i.in, align 1, !tbaa !35
  %i.kc = icmp eq i8 %i.kb, 45
  br i1 %i.kc, label %.preheader.1.i, label %skip_prefix_impl.exit109.i

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.kd = getelementptr inbounds nuw i8, ptr %i.in, i64 1
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !35
  switch i8 %i.ke, label %skip_prefix_impl.exit109.i [
    i8 67, label %.preheader.2.i
    i8 99, label %skip_prefix_impl.exit105.2.i
  ]

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %i.kf = call i64 @strspn(ptr noundef %scevgep177.i, ptr noundef nonnull @.str.148) #22
  %i.kg = getelementptr inbounds nuw i8, ptr %scevgep177.i, i64 %i.kf
  br label %skip_prefix_impl.exit101.i.thread

skip_prefix_impl.exit105.2.i:                     ; preds = %.preheader.1.i
  %i.kh = call i64 @strspn(ptr noundef %scevgep177.i, ptr noundef nonnull @.str.148) #22
  %i.ki = getelementptr inbounds nuw i8, ptr %scevgep177.i, i64 %i.kh
  %i.kj = load i32, ptr %i.an, align 8, !tbaa !142
  %i.kk = or i32 %i.kj, 1
  store i32 %i.kk, ptr %i.an, align 8, !tbaa !142
  br label %skip_prefix_impl.exit101.i.thread

skip_prefix_impl.exit109.i:                       ; preds = %.preheader.1.i, %.preheader.preheader.i
  %i.kl = load i32, ptr %i.an, align 8, !tbaa !142
  %i.km = or i32 %i.kl, 1
  store i32 %i.km, ptr %i.an, align 8, !tbaa !142
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr null, ptr %i.kn, align 8, !tbaa !144
  %i.ko = ptrtoint ptr %i.in to i64               ; 2 uses
  %i.kp = sub i64 %i.ko, %i.m
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store i64 %i.kp, ptr %i.kq, align 8, !tbaa !136
  %i.kr = sub i64 %i.at, %i.ko
  br label %parse_insn_line.exit.thread82.sink.split

skip_prefix_impl.exit101.i.thread:                ; preds = %.preheader146.preheader.i, %skip_prefix_impl.exit101.sink.split.i, %.preheader146.1.i, %skip_prefix_impl.exit105.2.i, %.preheader.2.i, %skip_prefix_impl.exit101.i
  %.3.i = phi ptr [ %i.kg, %.preheader.2.i ], [ %i.ki, %skip_prefix_impl.exit105.2.i ], [ %i.in, %skip_prefix_impl.exit101.i ], [ %i.jy, %skip_prefix_impl.exit101.sink.split.i ], [ %i.if, %.preheader146.1.i ], [ %i.if, %.preheader146.preheader.i ] ; 4 uses
  %i.ks = call i64 @strcspn(ptr noundef %.3.i, ptr noundef nonnull @.str.154) #22
  %i.kt = getelementptr inbounds nuw i8, ptr %.3.i, i64 %i.ks ; 5 uses
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !35
  store i8 0, ptr %i.kt, align 1, !tbaa !35
  %i.kv = call i32 @repo_get_oid(ptr noundef %0, ptr noundef %.3.i, ptr noundef nonnull %4) #21
  %i.kw = icmp slt i32 %i.kv, 0                   ; 2 uses
  br i1 %i.kw, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %skip_prefix_impl.exit101.i.thread
  %i.kx = load i32, ptr @git_gettext_enabled, align 4, !tbaa !32
  %.not4.i110.i = icmp eq i32 %i.kx, 0
  br i1 %.not4.i110.i, label %_.exit112.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ky = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.155, i32 noundef 5) #21
  br label %_.exit112.i

_.exit112.i:                                      ; preds = %bb.ck, %bb.cj
  %.0.i111.i = phi ptr [ %i.ky, %bb.ck ], [ @.str.155, %bb.cj ]
  %i.kz = call i32 (ptr, ...) @error(ptr noundef %.0.i111.i, ptr noundef nonnull %.3.i) #21 ; 0 uses
  br label %bb.cl

bb.cl:                                            ; preds = %_.exit112.i, %skip_prefix_impl.exit101.i.thread
  store i8 %i.ku, ptr %i.kt, align 1, !tbaa !35
  %i.la = call i64 @strspn(ptr noundef nonnull %i.kt, ptr noundef nonnull @.str.148) #22
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.la
  %i.lc = ptrtoint ptr %i.lb to i64               ; 2 uses
  %i.ld = sub i64 %i.lc, %i.m
  %i.le = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store i64 %i.ld, ptr %i.le, align 8, !tbaa !136
  %i.lf = sub i64 %i.at, %i.lc
  %i.lg = trunc i64 %i.lf to i32
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  store i32 %i.lg, ptr %i.lh, align 4, !tbaa !145
  br i1 %i.kw, label %parse_insn_line.exit.thread, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.li = call ptr @lookup_commit_reference(ptr noundef %0, ptr noundef nonnull %4) #21 ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.li, ptr %i.lj, align 8, !tbaa !144
  %.not85.i = icmp eq ptr %i.li, null
  br i1 %.not85.i, label %parse_insn_line.exit.thread, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %.val.i = load i32, ptr %1, align 8, !tbaa !36
  %.not.i59 = icmp eq i32 %.val.i, 2
  br i1 %.not.i59, label %bb.co, label %parse_insn_line.exit.thread82

bb.co:                                            ; preds = %bb.cn
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 56
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !149 ; 2 uses
  %.not87.i = icmp eq ptr %i.ll, null
  br i1 %.not87.i, label %parse_insn_line.exit.thread82, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !151
  %.not88.i = icmp eq ptr %i.ln, null
  br i1 %.not88.i, label %parse_insn_line.exit.thread82, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.lo = load i32, ptr %i.ah, align 8, !tbaa !143
  switch i32 %i.lo, label %bb.dc [
    i32 0, label %bb.cr
    i32 3, label %bb.cu
    i32 2, label %bb.cx
    i32 4, label %bb.da
    i32 5, label %bb.da
    i32 10, label %parse_insn_line.exit.thread82
    i32 13, label %parse_insn_line.exit.thread82
  ]

bb.cr:                                            ; preds = %bb.cq
  %i.lp = load i32, ptr @git_gettext_enabled, align 4, !tbaa !32
  %.not4.i.i66 = icmp eq i32 %i.lp, 0
  br i1 %.not4.i.i66, label %_.exit.i67, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.lq = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.161, i32 noundef 5) #21
  br label %_.exit.i67

_.exit.i67:                                       ; preds = %bb.cs, %bb.cr
  %.0.i.i = phi ptr [ %i.lq, %bb.cs ], [ @.str.161, %bb.cr ]
  %i.lr = call i32 (ptr, ...) @error(ptr noundef %.0.i.i, ptr noundef nonnull @.str.95) #21 ; 0 uses
  %i.ls = load i32, ptr @git_gettext_enabled, align 4, !tbaa !32
  %.not4.i6.i = icmp eq i32 %i.ls, 0
  br i1 %.not4.i6.i, label %_.exit8.i, label %bb.ct

bb.ct:                                            ; preds = %_.exit.i67
  %i.lt = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.162, i32 noundef 5) #21
  br label %_.exit8.i

_.exit8.i:                                        ; preds = %bb.ct, %_.exit.i67
  %.0.i7.i = phi ptr [ %i.lt, %bb.ct ], [ @.str.162, %_.exit.i67 ]
  call void (i32, ptr, ...) @advise_if_enabled(i32 noundef 28, ptr noundef %.0.i7.i) #21
  br label %parse_insn_line.exit.thread

bb.cu:                                            ; preds = %bb.cq
  %i.lu = load i32, ptr @git_gettext_enabled, align 4, !tbaa !32
  %.not4.i9.i = icmp eq i32 %i.lu, 0
  br i1 %.not4.i9.i, label %_.exit11.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.lv = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.161, i32 noundef 5) #21
  br label %_.exit11.i

_.exit11.i:                                       ; preds = %bb.cv, %bb.cu
  %.0.i10.i = phi ptr [ %i.lv, %bb.cv ], [ @.str.161, %bb.cu ]
  %i.lw = call i32 (ptr, ...) @error(ptr noundef %.0.i10.i, ptr noundef nonnull @.str.135) #21 ; 0 uses
  %i.lx = load i32, ptr @git_gettext_enabled, align 4, !tbaa !32
  %.not4.i12.i = icmp eq i32 %i.lx, 0
  br i1 %.not4.i12.i, label %_.exit14.i, label %bb.cw

bb.cw:                                            ; preds = %_.exit11.i
  %i.ly = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.163, i32 noundef 5) #21
  br label %_.exit14.i

_.exit14.i:                                       ; preds = %bb.cw, %_.exit11.i
  %.0.i13.i = phi ptr [ %i.ly, %bb.cw ], [ @.str.163, %_.exit11.i ]
  call void (i32, ptr, ...) @advise_if_enabled(i32 noundef 28, ptr noundef %.0.i13.i) #21
  br label %parse_insn_line.exit.thread

bb.cx:                                            ; preds = %bb.cq
  %i.lz = load i32, ptr @git_gettext_enabled, align 4, !tbaa !32
  %.not4.i15.i = icmp eq i32 %i.lz, 0
  br i1 %.not4.i15.i, label %_.exit17.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ma = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.161, i32 noundef 5) #21
  br label %_.exit17.i

_.exit17.i:                                       ; preds = %bb.cy, %bb.cx
  %.0.i16.i = phi ptr [ %i.ma, %bb.cy ], [ @.str.161, %bb.cx ]
  %i.mb = call i32 (ptr, ...) @error(ptr noundef %.0.i16.i, ptr noundef nonnull @.str.134) #21 ; 0 uses
  %i.mc = load i32, ptr @git_gettext_enabled, align 4, !tbaa !32
  %.not4.i18.i = icmp eq i32 %i.mc, 0
  br i1 %.not4.i18.i, label %_.exit20.i, label %bb.cz

bb.cz:                                            ; preds = %_.exit17.i
  %i.md = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.164, i32 noundef 5) #21
  br label %_.exit20.i

_.exit20.i:                                       ; preds = %bb.cz, %_.exit17.i
  %.0.i19.i = phi ptr [ %i.md, %bb.cz ], [ @.str.164, %_.exit17.i ]
  call void (i32, ptr, ...) @advise_if_enabled(i32 noundef 28, ptr noundef %.0.i19.i) #21
  br label %parse_insn_line.exit.thread

bb.da:                                            ; preds = %bb.cq, %bb.cq
  %i.me = load i32, ptr @git_gettext_enabled, align 4, !tbaa !32
  %.not4.i21.i = icmp eq i32 %i.me, 0
  br i1 %.not4.i21.i, label %_.exit23.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.mf = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.165, i32 noundef 5) #21
  br label %_.exit23.i

_.exit23.i:                                       ; preds = %bb.db, %bb.da
  %.0.i22.i = phi ptr [ %i.mf, %bb.db ], [ @.str.165, %bb.da ]
  %i.mg = call i32 (ptr, ...) @error(ptr noundef %.0.i22.i) #21 ; 0 uses
  br label %parse_insn_line.exit.thread

bb.dc:                                            ; preds = %bb.cq
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.71, i32 noundef 2709, ptr noundef nonnull @.str.160) #23
  unreachable

parse_insn_line.exit.thread82.sink.split:         ; preds = %skip_prefix_impl.exit109.i, %bb.bu, %bb.j
  %.sink131 = phi i64 [ %i.bg, %bb.j ], [ %6, %bb.bu ], [ %i.kr, %skip_prefix_impl.exit109.i ]
  %7 = trunc i64 %.sink131 to i32
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  store i32 %7, ptr %i.mh, align 4, !tbaa !145
  br label %parse_insn_line.exit.thread82

parse_insn_line.exit.thread82:                    ; preds = %parse_insn_line.exit.thread82.sink.split, %bb.cp, %bb.co, %bb.cb, %bb.cn, %bb.cq, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.de

parse_insn_line.exit.thread86:                    ; preds = %.tail.thread.i, %bb.cg
  store i8 %i.ji, ptr %.0, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.de

parse_insn_line.exit:                             ; preds = %bb.cd, %bb.cf, %bb.ch, %.sink.split.sink.split.i
  %.0.i15.sink.i = phi ptr [ @.str.158, %bb.cf ], [ @.str.157, %bb.cd ], [ @.str.159, %bb.ch ], [ %i.ju, %.sink.split.sink.split.i ]
  %i.mi = call i32 (ptr, ...) @error(ptr noundef %.0.i15.sink.i, ptr noundef nonnull %i.ij) #21 ; 0 uses
  store i8 %i.ji, ptr %.0, align 1, !tbaa !35
  br label %parse_insn_line.exit.thread

parse_insn_line.exit.thread:                      ; preds = %_.exit23.i, %_.exit20.i, %_.exit14.i, %_.exit8.i, %bb.cl, %bb.cm, %command_to_string.exit73, %command_to_string.exit.i, %_.exit.i, %parse_insn_line.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.mj = load i32, ptr @git_gettext_enabled, align 4, !tbaa !32
  %.not4.i = icmp eq i32 %i.mj, 0
  br i1 %.not4.i, label %_.exit, label %bb.dd

bb.dd:                                            ; preds = %parse_insn_line.exit.thread
  %i.mk = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #21
  br label %_.exit

_.exit:                                           ; preds = %parse_insn_line.exit.thread, %bb.dd
  %.0.i = phi ptr [ %i.mk, %bb.dd ], [ @.str.49, %parse_insn_line.exit.thread ]
  %i.ml = sub i64 %i.at, %i.aj
  %i.mm = trunc i64 %i.ml to i32                  ; 2 uses
  %i.mn = call i32 (ptr, ...) @error(ptr noundef %.0.i, i32 noundef %.046100, i32 noundef %i.mm, ptr noundef nonnull %.04799) #21 ; 0 uses
  store i32 15, ptr %i.ah, align 8, !tbaa !143
  %i.mo = sub i64 %i.aj, %i.m
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store i64 %i.mo, ptr %i.mp, align 8, !tbaa !136
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  store i32 %i.mm, ptr %i.mq, align 4, !tbaa !145
  %i.mr = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr null, ptr %i.mr, align 8, !tbaa !144
  br label %bb.de

bb.de:                                            ; preds = %parse_insn_line.exit.thread86, %parse_insn_line.exit.thread82, %_.exit
  %.145 = phi i32 [ -1, %_.exit ], [ %.044101, %parse_insn_line.exit.thread86 ], [ %.044101, %parse_insn_line.exit.thread82 ] ; 2 uses
  %i.ms = load i32, ptr %i.ah, align 8, !tbaa !143 ; 4 uses
  %.not53 = icmp eq i32 %i.ms, 14
  br i1 %.not53, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.mt = load i32, ptr %i.f, align 8, !tbaa !137
  %i.mu = add nsw i32 %i.mt, 1
  store i32 %i.mu, ptr %i.f, align 8, !tbaa !137
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %.not54 = icmp eq i32 %.043103, 0
  br i1 %.not54, label %bb.dh, label %bb.dm

bb.dh:                                            ; preds = %bb.dg
  %i.mv = and i32 %i.ms, -2
  %.not90 = icmp eq i32 %i.mv, 4
  br i1 %.not90, label %bb.di, label %bb.dl

bb.di:                                            ; preds = %bb.dh
  %i.mw = load i32, ptr @git_gettext_enabled, align 4, !tbaa !32
  %.not4.i61 = icmp eq i32 %i.mw, 0
  br i1 %.not4.i61, label %_.exit63.thread, label %_.exit63

_.exit63:                                         ; preds = %bb.di
  %i.mx = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #21 ; 2 uses
  %.pre = load i32, ptr %i.ah, align 8, !tbaa !143 ; 4 uses
  %i.my = icmp ult i32 %.pre, 14
  br i1 %i.my, label %_.exit63.thread, label %bb.dj

_.exit63.thread:                                  ; preds = %bb.di, %_.exit63
  %.0.i62128.a = phi ptr [ %i.mx, %_.exit63 ], [ @.str.50, %bb.di ]
  %i.mz = phi i32 [ %.pre, %_.exit63 ], [ %i.ms, %bb.di ]
  %i.na = zext nneg i32 %i.mz to i64
  %i.nb = getelementptr inbounds nuw [16 x i8], ptr @todo_command_info, i64 %i.na
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  br label %command_to_string.exit

bb.dj:                                            ; preds = %_.exit63
  %i.nd = icmp eq i32 %.pre, 14
  br i1 %i.nd, label %command_to_string.exit, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.ne = call fastcc ptr @_(ptr noundef nonnull @.str.166)
  call void (ptr, ...) @die(ptr noundef %i.ne, i32 noundef %.pre) #23
  unreachable

command_to_string.exit:                           ; preds = %_.exit63.thread, %bb.dj
  %.0.i62127 = phi ptr [ %.0.i62128.a, %_.exit63.thread ], [ %i.mx, %bb.dj ]
  %.0.in.i = phi ptr [ %i.nc, %_.exit63.thread ], [ @comment_line_str, %bb.dj ]
  %.0.i64 = load ptr, ptr %.0.in.i, align 8, !tbaa !19
  %i.nf = call i32 (ptr, ...) @error(ptr noundef %.0.i62127, ptr noundef %.0.i64) #21 ; 0 uses
  br label %bb.dm

bb.dl:                                            ; preds = %bb.dh
  %i.ng = icmp ult i32 %i.ms, 12
  %spec.select57 = zext i1 %i.ng to i32
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %command_to_string.exit, %bb.dg
  %.2 = phi i32 [ %.145, %bb.dg ], [ -1, %command_to_string.exit ], [ %.145, %bb.dl ] ; 2 uses
  %.1 = phi i32 [ %.043103, %bb.dg ], [ 0, %command_to_string.exit ], [ %spec.select57, %bb.dl ]
  %i.nh = add nuw nsw i32 %.046100, 1
  %i.ni = load i8, ptr %i.p, align 1, !tbaa !35
  %.not = icmp eq i8 %i.ni, 0
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !224

._crit_edge:                                      ; preds = %bb.dm, %rebase_path_done.exit
  %.044.lcssa = phi i32 [ 0, %rebase_path_done.exit ], [ %.2, %bb.dm ]
  ret i32 %.044.lcssa
}

declare i32 @file_exists(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @strchrnul(ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define dso_local void @sequencer_post_commit_cleanup(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.strbuf, align 8             ; 9 uses
  %3 = alloca %struct.replay_opts, align 8        ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.a, i8 0, i64 208, i1 false)
  store i32 -1, ptr %3, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 -1, ptr %i.b, align 4, !tbaa !152
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 72
  store ptr @empty_strvec, ptr %i.c, align 8, !tbaa !225
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 136
  store ptr @empty_strvec, ptr %i.d, align 8, !tbaa !225
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 216
  %i.f = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 56) #21 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  tail call void @strbuf_init(ptr noundef nonnull %i.g, i64 noundef 0) #21
  tail call void @strbuf_init(ptr noundef %i.f, i64 noundef 0) #21
  store ptr %i.f, ptr %i.e, align 8, !tbaa !38
  %i.h = tail call ptr @get_main_ref_store(ptr noundef %0) #21
  %i.i = tail call i32 @refs_ref_exists(ptr noundef %i.h, ptr noundef nonnull @.str.51) #21
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @get_main_ref_store(ptr noundef %0) #21
  %i.k = tail call i32 @refs_delete_ref(ptr noundef %i.j, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.51, ptr noundef null, i32 noundef 1) #21
  %i.l = icmp eq i32 %i.k, 0
  %i.m = icmp ne i32 %1, 0
  %or.cond = and i1 %i.m, %i.l
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr @git_gettext_enabled, align 4, !tbaa !32
  %.not4.i = icmp eq i32 %i.n, 0
  br i1 %.not4.i, label %_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.52, i32 noundef 5) #21
  br label %_.exit

_.exit:                                           ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.o, %bb.d ], [ @.str.52, %bb.c ]
  tail call void (ptr, ...) @warning(ptr noundef %.0.i) #21
  br label %bb.e

bb.e:                                             ; preds = %_.exit, %bb.b
  store i32 1, ptr %3, align 8, !tbaa !36
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %.0 = phi i32 [ 1, %bb.e ], [ 0, %bb.a ]
  %i.p = tail call ptr @get_main_ref_store(ptr noundef %0) #21
  %i.q = tail call i32 @refs_ref_exists(ptr noundef %i.p, ptr noundef nonnull @.str.53) #21
  %.not10 = icmp eq i32 %i.q, 0
  br i1 %.not10, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = tail call ptr @get_main_ref_store(ptr noundef %0) #21
  %i.s = tail call i32 @refs_delete_ref(ptr noundef %i.r, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.53, ptr noundef null, i32 noundef 1) #21
  %i.t = icmp eq i32 %i.s, 0
  %i.u = icmp ne i32 %1, 0
  %or.cond3 = and i1 %i.u, %i.t
  br i1 %or.cond3, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.v = load i32, ptr @git_gettext_enabled, align 4, !tbaa !32
  %.not4.i13 = icmp eq i32 %i.v, 0
  br i1 %.not4.i13, label %_.exit15, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #21
  br label %_.exit15

_.exit15:                                         ; preds = %bb.h, %bb.i
  %.0.i14 = phi ptr [ %i.w, %bb.i ], [ @.str.54, %bb.h ]
  tail call void (ptr, ...) @warning(ptr noundef %.0.i14) #21
end_hunk_1
