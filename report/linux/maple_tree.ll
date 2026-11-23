Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/maple_tree?download=true
inline.NumInlined: 537
inline.NumDeleted: 144
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@mt_find:bb.a
  %i.as = load ptr, ptr %i.d, align 8
  %i.at = load i64, ptr %i.e, align 8
  %i.au = load i64, ptr %i.f, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.u, %bb.k
  %.052.i = phi ptr [ %i.as, %bb.k ], [ %i.cg, %bb.u ] ; 2 uses
  %.050.i = phi i64 [ %i.au, %bb.k ], [ %.2.i, %bb.u ] ; 5 uses
  %.0.i22 = phi i64 [ %i.at, %bb.k ], [ %.1.i, %bb.u ] ; 3 uses
  %i.av = ptrtoint ptr %.052.i to i64             ; 2 uses
  %i.aw = and i64 %i.av, -256                     ; 2 uses
  %i.ax = inttoptr i64 %i.aw to ptr               ; 9 uses
  %i.ay = trunc i64 %i.av to i32
  %i.az = lshr i32 %i.ay, 3
  %i.ba = and i32 %i.az, 15                       ; 4 uses
  switch i32 %i.ba, label %ma_data_end.exit.thread.i [
    i32 3, label %.thread74.i
    i32 2, label %ma_pivots.exit.i
    i32 1, label %ma_pivots.exit.i
    i32 4, label %.thread.i
  ]

ma_pivots.exit.i:                                 ; preds = %bb.l, %bb.l
  br label %.thread.i

.thread74.i:                                      ; preds = %bb.l
  %i.bb = getelementptr i8, ptr %i.ax, i64 8
  %.0.i.i.i = getelementptr i8, ptr %i.ax, i64 240
  %i.bc = load i8, ptr %.0.i.i.i, align 16
  br label %ma_data_end.exit.i

.thread.i:                                        ; preds = %ma_pivots.exit.i, %bb.l
  %.sink.i = phi i64 [ 8, %ma_pivots.exit.i ], [ 224, %bb.l ]
  %i.bd = getelementptr i8, ptr %i.ax, i64 %.sink.i ; 3 uses
  %i.be = zext nneg i32 %i.ba to i64
  %i.bf = getelementptr i8, ptr @mt_pivots, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1             ; 2 uses
  %i.bh = add i8 %i.bg, -1                        ; 2 uses
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr [8 x i8], ptr %i.bd, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8            ; 2 uses
  %.not16.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not16.i.i, label %bb.m, label %bb.n, !prof !21

bb.m:                                             ; preds = %.thread.i
  %.0.i.i60.i = getelementptr i8, ptr %i.ax, i64 248
  %i.bl = load i8, ptr %.0.i.i60.i, align 8
  br label %ma_data_end.exit.i

bb.n:                                             ; preds = %.thread.i
  %i.bm = icmp eq i64 %i.bk, %.050.i
  %..i.i23 = select i1 %i.bm, i8 %i.bh, i8 %i.bg, !prof !21
  br label %ma_data_end.exit.i

ma_data_end.exit.i:                               ; preds = %bb.n, %bb.m, %.thread74.i
  %.0.i5964.i = phi ptr [ %i.bb, %.thread74.i ], [ %i.bd, %bb.m ], [ %i.bd, %bb.n ] ; 5 uses
  %.0.i.i = phi i8 [ %i.bc, %.thread74.i ], [ %i.bl, %bb.m ], [ %..i.i23, %bb.n ] ; 7 uses
  %i.bn = load i64, ptr %.0.i5964.i, align 8      ; 2 uses
  %i.bo = load i64, ptr %i.a, align 8             ; 2 uses
  %.not.i = icmp ult i64 %i.bn, %i.bo
  br i1 %.not.i, label %.preheader.i, label %bb.p

ma_data_end.exit.thread.i:                        ; preds = %bb.l
  %i.bp = load i64, ptr null, align 4294967296    ; 2 uses
  %i.bq = load i64, ptr %i.a, align 8
  %.not112.i = icmp ult i64 %i.bp, %i.bq
  br i1 %.not112.i, label %._crit_edge.i, label %bb.p

.preheader.i:                                     ; preds = %ma_data_end.exit.i
  %i.br = icmp ugt i8 %.0.i.i, 1
  br i1 %i.br, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.bs = zext i8 %.0.i.i to i64                  ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.o ] ; 4 uses
  %i.bt = getelementptr [8 x i8], ptr %.0.i5964.i, i64 %indvars.iv.i
  %i.bu = load i64, ptr %i.bt, align 8            ; 2 uses
  %.not58.i = icmp ult i64 %i.bu, %i.bo
  br i1 %.not58.i, label %bb.o, label %._crit_edge.loopexit.split.loop.exit.i

bb.o:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.bs
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !3

._crit_edge.loopexit.split.loop.exit.i:           ; preds = %.lr.ph.i
  %i.bv = trunc nuw i64 %indvars.iv.i to i8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.o, %._crit_edge.loopexit.split.loop.exit.i, %.preheader.i, %ma_data_end.exit.thread.i
  %.0.i5964113119.i = phi ptr [ %.0.i5964.i, %.preheader.i ], [ null, %ma_data_end.exit.thread.i ], [ %.0.i5964.i, %._crit_edge.loopexit.split.loop.exit.i ], [ %.0.i5964.i, %bb.o ]
  %.0.i114118.i = phi i8 [ %.0.i.i, %.preheader.i ], [ 0, %ma_data_end.exit.thread.i ], [ %.0.i.i, %._crit_edge.loopexit.split.loop.exit.i ], [ %.0.i.i, %bb.o ]
  %.053.lcssa.i = phi i8 [ 1, %.preheader.i ], [ 1, %ma_data_end.exit.thread.i ], [ %i.bv, %._crit_edge.loopexit.split.loop.exit.i ], [ %.0.i.i, %bb.o ]
  %.lcssa.i = phi i64 [ 1, %.preheader.i ], [ 1, %ma_data_end.exit.thread.i ], [ %indvars.iv.i, %._crit_edge.loopexit.split.loop.exit.i ], [ %i.bs, %bb.o ]
  %.151.i = phi i64 [ %.050.i, %.preheader.i ], [ %.050.i, %ma_data_end.exit.thread.i ], [ %i.bu, %._crit_edge.loopexit.split.loop.exit.i ], [ %.050.i, %bb.o ]
  %i.bw = getelementptr [8 x i8], ptr %.0.i5964113119.i, i64 %.lcssa.i
  %i.bx = getelementptr i8, ptr %i.bw, i64 -8
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = add i64 %i.by, 1
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge.i, %ma_data_end.exit.thread.i, %ma_data_end.exit.i
  %.0.i115.i = phi i8 [ %.0.i114118.i, %._crit_edge.i ], [ %.0.i.i, %ma_data_end.exit.i ], [ 0, %ma_data_end.exit.thread.i ]
  %.154.i = phi i8 [ %.053.lcssa.i, %._crit_edge.i ], [ 0, %ma_data_end.exit.i ], [ 0, %ma_data_end.exit.thread.i ] ; 2 uses
  %.2.i = phi i64 [ %.151.i, %._crit_edge.i ], [ %i.bn, %ma_data_end.exit.i ], [ %i.bp, %ma_data_end.exit.thread.i ] ; 2 uses
  %.1.i = phi i64 [ %i.bz, %._crit_edge.i ], [ %.0.i22, %ma_data_end.exit.i ], [ %.0.i22, %ma_data_end.exit.thread.i ] ; 2 uses
  switch i32 %i.ba, label %ma_slots.exit.i [
    i32 3, label %bb.q
    i32 2, label %bb.r
    i32 1, label %bb.r
    i32 4, label %bb.s
    i32 0, label %bb.t
  ]

bb.q:                                             ; preds = %bb.p
  %i.ca = getelementptr i8, ptr %i.ax, i64 80
  br label %ma_slots.exit.i

bb.r:                                             ; preds = %bb.p, %bb.p
  %i.cb = getelementptr i8, ptr %i.ax, i64 128
  br label %ma_slots.exit.i

bb.s:                                             ; preds = %bb.p
  %i.cc = getelementptr i8, ptr %i.ax, i64 168
  br label %ma_slots.exit.i

bb.t:                                             ; preds = %bb.p
  %i.cd = getelementptr i8, ptr %i.ax, i64 8
  br label %ma_slots.exit.i

ma_slots.exit.i:                                  ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p
  %.0.i61.i = phi ptr [ %i.cd, %bb.t ], [ %i.ca, %bb.q ], [ %i.cb, %bb.r ], [ %i.cc, %bb.s ], [ null, %bb.p ]
  %i.ce = zext i8 %.154.i to i64
  %i.cf = getelementptr [8 x i8], ptr %.0.i61.i, i64 %i.ce
  %i.cg = load volatile ptr, ptr %i.cf, align 8   ; 2 uses
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !31
  %i.ch = load ptr, ptr %i.ax, align 256
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = and i64 %i.ci, -256
  %i.ck = icmp eq i64 %i.aw, %i.cj
  br i1 %i.ck, label %bb.w, label %bb.u, !prof !22

bb.u:                                             ; preds = %ma_slots.exit.i
  %i.cl = icmp samesign ult i32 %i.ba, 2
  br i1 %i.cl, label %bb.v, label %bb.l, !llvm.loop !4

bb.v:                                             ; preds = %bb.u
  store i8 %.0.i115.i, ptr %i.k, align 1
  store i8 %.154.i, ptr %i.j, align 1
  store i64 %.1.i, ptr %i.a, align 8
  store i64 %.2.i, ptr %i.c, align 8
  store i64 %.0.i22, ptr %i.e, align 8
  store i64 %.050.i, ptr %i.f, align 8
  %.pr24.pre.pre = load i32, ptr %i.h, align 8
  br label %mas_state_walk.exit

bb.w:                                             ; preds = %ma_slots.exit.i
  store i32 1, ptr %i.h, align 8
  br label %mas_state_walk.exit

mas_state_walk.exit:                              ; preds = %bb.w, %bb.v
  %.pr24.pre = phi i32 [ %.pr24.pre.pre, %bb.v ], [ 1, %bb.w ] ; 2 uses
  %storemerge.i = phi ptr [ %.052.i, %bb.v ], [ null, %bb.w ]
  %.055.i = phi ptr [ %i.cg, %bb.v ], [ null, %bb.w ]
  store ptr %storemerge.i, ptr %i.d, align 8
  %i.cm = icmp eq i32 %.pr24.pre, 1
  br i1 %i.cm, label %bb.f, label %mas_state_walk.exit.thread

mas_state_walk.exit.thread:                       ; preds = %mas_state_walk.exit, %mas_start.exit.thread12.i
  %.val5577 = phi i32 [ 2, %mas_start.exit.thread12.i ], [ %.pr24.pre, %mas_state_walk.exit ] ; 2 uses
  %.0.i27 = phi ptr [ %i.ac, %mas_start.exit.thread12.i ], [ %.055.i, %mas_state_walk.exit ] ; 2 uses
  %magicptr125 = ptrtoint ptr %.0.i27 to i64
  switch i64 %magicptr125, label %.thread32 [
    i64 1030, label %.critedge.preheader
    i64 0, label %.critedge.preheader
  ], !prof !235

.critedge.preheader:                              ; preds = %mas_start.exit.i, %mas_state_walk.exit.thread, %mas_state_walk.exit.thread
  %.val55103 = phi i32 [ %.val5577, %mas_state_walk.exit.thread ], [ %.val5577, %mas_state_walk.exit.thread ], [ %.val5578, %mas_start.exit.i ]
  %i.cn = icmp eq i32 %.val55103, 0
  %i.co = load i64, ptr %i.c, align 8
  %i.cp = icmp ult i64 %i.co, %2
  %i.cq = select i1 %i.cn, i1 %i.cp, i1 false
  br i1 %i.cq, label %.lr.ph, label %.thread.thread

.thread.thread:                                   ; preds = %mas_start.exit.thread12.i, %mas_start.exit.thread.i, %.critedge.preheader
  call void @__rcu_read_unlock() #16
  br label %bb.y

.thread32:                                        ; preds = %mas_state_walk.exit.thread
  call void @__rcu_read_unlock() #16
  br label %bb.x

.critedge.fold.split:                             ; preds = %.lr.ph
  br label %.critedge.backedge

.critedge.backedge:                               ; preds = %.critedge.fold.split, %.lr.ph
  %.be = phi i1 [ true, %.critedge.fold.split ], [ false, %.lr.ph ]
  %.1.be = phi ptr [ inttoptr (i64 1030 to ptr), %.critedge.fold.split ], [ null, %.lr.ph ]
  %.val = load i32, ptr %i.h, align 8
  %i.cr = icmp eq i32 %.val, 0
  %i.cs = load i64, ptr %i.c, align 8
  %i.ct = icmp ult i64 %i.cs, %2
  %i.cu = select i1 %i.cr, i1 %i.ct, i1 false
  br i1 %i.cu, label %.lr.ph, label %.critedge._crit_edge

.lr.ph:                                           ; preds = %.critedge.preheader, %.critedge.backedge
  %i.cv = call fastcc ptr @mas_next_slot(ptr noundef nonnull %3, i64 noundef %2, i1 noundef zeroext false) #19, !srcloc !236 ; 2 uses
  %magicptr = ptrtoint ptr %i.cv to i64
  switch i64 %magicptr, label %.thread [
    i64 0, label %.critedge.backedge
    i64 1030, label %.critedge.fold.split
  ], !prof !69

.critedge._crit_edge:                             ; preds = %.critedge.backedge
  br i1 %.be, label %.thread29, label %.thread, !prof !237

.thread29:                                        ; preds = %.critedge._crit_edge
  call void @__rcu_read_unlock() #16
  br label %bb.y

.thread:                                          ; preds = %.lr.ph, %.critedge._crit_edge
  %.3 = phi ptr [ %.1.be, %.critedge._crit_edge ], [ %i.cv, %.lr.ph ] ; 2 uses
  call void @__rcu_read_unlock() #16
  %.not20 = icmp eq ptr %.3, null
  br i1 %.not20, label %bb.y, label %bb.x, !prof !33

bb.x:                                             ; preds = %.thread32, %.thread
  %.335 = phi ptr [ %.0.i27, %.thread32 ], [ %.3, %.thread ]
  %i.cw = load i64, ptr %i.c, align 8
  %i.cx = add i64 %i.cw, 1
  store i64 %i.cx, ptr %1, align 8
  br label %bb.y

bb.y:                                             ; preds = %.thread.thread, %.thread29, %.thread, %bb.x, %trace_ma_read.exit
  %.0 = phi ptr [ null, %trace_ma_read.exit ], [ %.335, %bb.x ], [ null, %.thread ], [ null, %.thread29 ], [ null, %.thread.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @mt_find_after(ptr noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2) #1 align 16 prefalign(16) {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @mt_find(ptr noundef %0, ptr noundef %1, i64 noundef %2) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #9

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @trace_raw_output_ma_op(ptr noundef %0, i32 %1, ptr noundef %2) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16512
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16 ; 2 uses
  %.not = icmp eq i32 %i.c, 1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8320
  %i.e = getelementptr i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.b, i64 48
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %i.b, i64 16
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.b, i64 24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %i.b, i64 32
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %i.b, i64 40
  %i.p = load i64, ptr %i.o, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef @.str.19, ptr noundef %i.f, ptr noundef %i.h, i64 noundef %i.j, i64 noundef %i.l, i64 noundef %i.n, i64 noundef %i.p) #16
  %i.q = tail call i32 @trace_handle_return(ptr noundef %i.d) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.q, %bb.b ], [ %i.c, %bb.a ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @trace_raw_output_ma_read(ptr noundef %0, i32 %1, ptr noundef %2) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16512
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16 ; 2 uses
  %.not = icmp eq i32 %i.c, 1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8320
  %i.e = getelementptr i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.b, i64 48
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %i.b, i64 16
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.b, i64 24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %i.b, i64 32
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %i.b, i64 40
  %i.p = load i64, ptr %i.o, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef @.str.19, ptr noundef %i.f, ptr noundef %i.h, i64 noundef %i.j, i64 noundef %i.l, i64 noundef %i.n, i64 noundef %i.p) #16
  %i.q = tail call i32 @trace_handle_return(ptr noundef %i.d) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.q, %bb.b ], [ %i.c, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @trace_raw_output_ma_write(ptr noundef %0, i32 %1, ptr noundef %2) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16512
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %i.c = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16 ; 2 uses
  %.not = icmp eq i32 %i.c, 1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8320
  %i.e = getelementptr i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.b, i64 64
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %i.b, i64 16
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.b, i64 24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %i.b, i64 32
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %i.b, i64 40
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %i.b, i64 48
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %i.b, i64 56
  %i.t = load ptr, ptr %i.s, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef @.str.24, ptr noundef %i.f, ptr noundef %i.h, i64 noundef %i.j, i64 noundef %i.l, i64 noundef %i.n, i64 noundef %i.p, i64 noundef %i.r, ptr noundef %i.t) #16
  %i.u = tail call i32 @trace_handle_return(ptr noundef %i.d) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.u, %bb.b ], [ %i.c, %bb.a ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress.p0(i32 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.frameaddress.p0(i32 immarg) #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc ptr @mtree_range_walk(ptr nofree noundef captures(none) %0) unnamed_addr #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %0, i64 8          ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.k, %bb.a
  %.052 = phi ptr [ %i.b, %bb.a ], [ %i.as, %bb.k ] ; 2 uses
  %.050 = phi i64 [ %i.f, %bb.a ], [ %.2, %bb.k ] ; 5 uses
  %.0 = phi i64 [ %i.d, %bb.a ], [ %.1, %bb.k ]   ; 3 uses
  %i.h = ptrtoint ptr %.052 to i64                ; 2 uses
  %i.i = and i64 %i.h, -256                       ; 2 uses
end_hunk_0
