Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/driver?download=true
inline.NumInlined: 16
inline.NumDeleted: 5
begin_hunk_0_@setup_test_framework:bb.a
  store i32 %i.i, ptr @seed, align 4, !tbaa !9
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %set_seed.exit.sink.split, label %set_seed.exit

bb.e:                                             ; preds = %bb.c
  %.not12 = icmp eq ptr %i.b, null
  br i1 %.not12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.b, ptr noundef null, i32 noundef 10) #13, !inline_history !0
  %i.l = trunc i64 %i.k to i32                    ; 3 uses
  store i32 %i.l, ptr @seed, align 4, !tbaa !9
  %i.m = icmp slt i32 %i.l, 1
  br i1 %i.m, label %set_seed.exit.sink.split, label %set_seed.exit

bb.g:                                             ; preds = %bb.e
  store i32 0, ptr @seed, align 4, !tbaa !9
  br label %set_seed.exit.sink.split

set_seed.exit.sink.split:                         ; preds = %bb.f, %bb.d, %bb.g
  %i.n = tail call i64 @time(ptr noundef null) #13
  %i.o = trunc i64 %i.n to i32                    ; 2 uses
  store i32 %i.o, ptr @seed, align 4, !tbaa !9
  br label %set_seed.exit

set_seed.exit:                                    ; preds = %set_seed.exit.sink.split, %bb.f, %bb.d
  %.sink = phi i32 [ %i.i, %bb.d ], [ %i.l, %bb.f ], [ %i.o, %set_seed.exit.sink.split ]
  tail call void @test_random_seed(i32 noundef %.sink) #13
  %i.p = tail call ptr @test_get_options() #13
  %i.q = tail call ptr @opt_init(i32 noundef %0, ptr noundef %1, ptr noundef %i.p) #13
  %.not13 = icmp ne ptr %i.q, null
  %. = zext i1 %.not13 to i32
  ret i32 %.
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #3

declare void @test_adjust_streams_tap_level(i32 noundef) local_unnamed_addr #4

declare ptr @opt_init(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @test_get_options() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noundef i32 @pulldown_test_framework(i32 noundef returned %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @test_title, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.a) #13
  store ptr null, ptr @test_title, align 8, !tbaa !17
  ret i32 %0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @set_test_title(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @test_title, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.a) #13
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias ptr @strdup(ptr noundef nonnull %0) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  store ptr %i.d, ptr @test_title, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @run_tests(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca [1024 x i32], align 16            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  tail call void @opt_begin() #13
  br label %.outer

.outer:                                           ; preds = %bb.d, %bb.a
  %.08.i.ph = phi ptr [ %i.d, %bb.d ], [ @.str.15, %bb.a ]
  %.06.i.ph = phi ptr [ %.06.i.ph226, %bb.d ], [ @.str.15, %bb.a ]
  %.0.i.ph = phi ptr [ %i.e, %bb.d ], [ null, %bb.a ] ; 3 uses
  br label %.outer225

.outer225:                                        ; preds = %.outer, %bb.e
  %.06.i.ph226 = phi ptr [ %.06.i.ph, %.outer ], [ %i.f, %bb.e ] ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %.outer225
  %i.c = call i32 @opt_next() #13
  switch i32 %i.c, label %.backedge [
    i32 0, label %bb.k
    i32 -1, label %.loopexit131
    i32 500, label %process_shared_options.exit
    i32 501, label %bb.c
    i32 502, label %bb.d
    i32 503, label %bb.e
    i32 504, label %bb.f
    i32 505, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  store i1 true, ptr @show_list, align 4
  br label %.backedge

bb.d:                                             ; preds = %bb.b
  %i.d = call ptr @opt_flag() #13
  %i.e = call ptr @opt_arg() #13
  br label %.outer, !llvm.loop !19

bb.e:                                             ; preds = %bb.b
  %i.f = call ptr @opt_flag() #13
  %i.g = call ptr @opt_arg() #13
  %i.h = call i32 @opt_int(ptr noundef %i.g, ptr noundef nonnull @single_iter) #13
  %.not16.i = icmp eq i32 %i.h, 0
  br i1 %.not16.i, label %.loopexit131, label %.outer225, !llvm.loop !19

bb.f:                                             ; preds = %bb.b
  %i.i = call ptr @opt_arg() #13
  %i.j = call i32 @opt_int(ptr noundef %i.i, ptr noundef nonnull %i.a) #13
  %.not15.i = icmp eq i32 %i.j, 0
  br i1 %.not15.i, label %.loopexit131, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = load i32, ptr %i.a, align 4, !tbaa !9
  %i.l = shl nsw i32 %i.k, 2                      ; 2 uses
  store i32 %i.l, ptr @level, align 4, !tbaa !9
  call void @test_adjust_streams_tap_level(i32 noundef %i.l) #13
  br label %.backedge

bb.h:                                             ; preds = %bb.b
  %i.m = call ptr @opt_arg() #13
  %i.n = call i32 @opt_int(ptr noundef %i.m, ptr noundef nonnull %i.a) #13
  %.not14.i = icmp eq i32 %i.n, 0
  br i1 %.not14.i, label %.loopexit131, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = load i32, ptr %i.a, align 4, !tbaa !9    ; 3 uses
  store i32 %i.o, ptr @seed, align 4, !tbaa !9
  %i.p = icmp slt i32 %i.o, 1
  br i1 %i.p, label %bb.j, label %set_seed.exit.i

bb.j:                                             ; preds = %bb.i
  %i.q = call i64 @time(ptr noundef null) #13
  %i.r = trunc i64 %i.q to i32                    ; 2 uses
  store i32 %i.r, ptr @seed, align 4, !tbaa !9
  br label %set_seed.exit.i

set_seed.exit.i:                                  ; preds = %bb.j, %bb.i
  %i.s = phi i32 [ %i.r, %bb.j ], [ %i.o, %bb.i ]
  call void @test_random_seed(i32 noundef %i.s) #13
  br label %.backedge

.backedge:                                        ; preds = %set_seed.exit.i, %bb.g, %bb.c, %bb.b
  br label %bb.b, !llvm.loop !19

bb.k:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.0.i.ph, null
  br i1 %.not.i.i, label %._crit_edge29.i.i, label %.preheader.i.i

._crit_edge29.i.i:                                ; preds = %bb.k
  %.pre.i.i = load i32, ptr @single_test, align 4, !tbaa !9
  br label %bb.m

.preheader.i.i:                                   ; preds = %bb.k
  %i.t = load i32, ptr @num_tests, align 4, !tbaa !9 ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.t to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.l ] ; 3 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr @all_tests, i64 %indvars.iv.i.i
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !13
  %i.x = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0.i.ph, ptr noundef nonnull dereferenceable(1) %i.w) #14
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %.thread.i.i, label %bb.l

.thread.i.i:                                      ; preds = %.lr.ph.i.i
  %i.z = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.aa = add nuw nsw i32 %i.z, 1                 ; 2 uses
  store i32 %i.aa, ptr @single_test, align 4, !tbaa !9
  %1 = load i32, ptr @single_iter, align 4        ; 2 uses
  %2 = icmp ne i32 %1, -1
  br label %bb.o

bb.l:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !20

._crit_edge.i.i:                                  ; preds = %bb.l, %.preheader.i.i
  %i.ab = call i64 @strtol(ptr noundef nonnull readonly captures(none) %.0.i.ph, ptr noundef null, i32 noundef 10) #13, !inline_history !0
  %i.ac = trunc i64 %i.ab to i32                  ; 2 uses
  store i32 %i.ac, ptr @single_test, align 4, !tbaa !9
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i, %._crit_edge29.i.i
  %3 = phi i32 [ %.pre.i.i, %._crit_edge29.i.i ], [ %i.ac, %._crit_edge.i.i ] ; 2 uses
  %i.ad = icmp eq i32 %3, -1                      ; 2 uses
  %i.ae = load i32, ptr @single_iter, align 4     ; 4 uses
  %i.af = icmp ne i32 %i.ae, -1                   ; 3 uses
  %or.cond.i.i = select i1 %i.ad, i1 %i.af, i1 false
  br i1 %or.cond.i.i, label %.thread23.i.i, label %bb.n

.thread23.i.i:                                    ; preds = %bb.m
  store i32 1, ptr @single_test, align 4, !tbaa !9
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  br i1 %i.ad, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread23.i.i, %.thread.i.i
  %4 = phi i1 [ true, %.thread23.i.i ], [ %i.af, %bb.n ], [ %2, %.thread.i.i ]
  %5 = phi i32 [ %i.ae, %.thread23.i.i ], [ %i.ae, %bb.n ], [ %1, %.thread.i.i ]
  %6 = phi i32 [ 1, %.thread23.i.i ], [ %3, %bb.n ], [ %i.aa, %.thread.i.i ] ; 3 uses
  %i.ag = icmp slt i32 %6, 1
  %i.ah = load i32, ptr @num_tests, align 4       ; 2 uses
  %i.ai = icmp sgt i32 %6, %i.ah
  %or.cond21.i.i = select i1 %i.ag, i1 true, i1 %i.ai
  br i1 %or.cond21.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aj = call i32 (ptr, ...) @test_printf_stderr(ptr noundef nonnull @.str.16, ptr noundef %.08.i.ph, i32 noundef 1, i32 noundef %i.ah) #13 ; 0 uses
  br label %.loopexit131

bb.q:                                             ; preds = %bb.o, %bb.n
  %7 = phi i32 [ %6, %bb.o ], [ -1, %bb.n ]       ; 4 uses
  %8 = phi i1 [ %4, %bb.o ], [ %i.af, %bb.n ]
  %i.ak = phi i32 [ %5, %bb.o ], [ %i.ae, %bb.n ] ; 2 uses
  br i1 %8, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.al = sext i32 %7 to i64
  %i.am = getelementptr [32 x i8], ptr @all_tests, i64 %i.al ; 3 uses
  %i.an = getelementptr i8, ptr %i.am, i64 -8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !15 ; 3 uses
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.aq = getelementptr i8, ptr %i.am, i64 -32
  %i.ar = load ptr, ptr %i.aq, align 16, !tbaa !13
  %i.as = call i32 (ptr, ...) @test_printf_stderr(ptr noundef nonnull @.str.17, ptr noundef %.06.i.ph226, i32 noundef %7, ptr noundef %i.ar) #13 ; 0 uses
  br label %.loopexit131

bb.t:                                             ; preds = %bb.r
  %i.at = icmp slt i32 %i.ak, 1
  %i.au = icmp sgt i32 %i.ak, %i.ao
  %or.cond22.i.i = or i1 %i.at, %i.au
  br i1 %or.cond22.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.av = getelementptr i8, ptr %i.am, i64 -32
  %i.aw = load ptr, ptr %i.av, align 16, !tbaa !13
  %i.ax = call i32 (ptr, ...) @test_printf_stderr(ptr noundef nonnull @.str.18, ptr noundef %.06.i.ph226, i32 noundef %7, ptr noundef %i.aw, i32 noundef 1, i32 noundef %i.ao) #13 ; 0 uses
  br label %.loopexit131

process_shared_options.exit:                      ; preds = %bb.b
  %i.ay = call ptr @test_get_options() #13
  call void @opt_help(ptr noundef %i.ay) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %._crit_edge159

.loopexit131:                                     ; preds = %bb.b, %bb.h, %bb.f, %bb.e, %bb.p, %bb.s, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %._crit_edge159

bb.v:                                             ; preds = %bb.q, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.az = load i32, ptr @num_tests, align 4, !tbaa !9
  %i.ba = icmp slt i32 %i.az, 1
  br i1 %i.ba, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bb = call i32 (ptr, ...) @test_printf_tapout(ptr noundef nonnull @.str.3, ptr noundef %0) #13 ; 0 uses
  br label %bb.ab

bb.x:                                             ; preds = %bb.v
  %.b104 = load i1, ptr @show_list, align 4
  %i.bc = icmp ne i32 %7, -1
  %or.cond.not = or i1 %.b104, %i.bc
  br i1 %or.cond.not, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bd = load i32, ptr @level, align 4, !tbaa !9
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bf = call i32 (ptr, ...) @test_printf_stdout(ptr noundef nonnull @.str.4, ptr noundef %0) #13 ; 0 uses
  %i.bg = call i32 @test_flush_stdout() #13       ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bh = load i32, ptr @num_test_cases, align 4, !tbaa !9
  %i.bi = call i32 (ptr, ...) @test_printf_tapout(ptr noundef nonnull @.str.5, i32 noundef %i.bh) #13 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.x, %bb.aa, %bb.w
  %i.bj = call i32 @test_flush_tapout() #13       ; 0 uses
  %i.bk = load i32, ptr @num_tests, align 4, !tbaa !9 ; 6 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %.lr.ph.preheader, label %.loopexit130

.lr.ph.preheader:                                 ; preds = %bb.ab
  %wide.trip.count = zext nneg i32 %i.bk to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.bk, 8
  br i1 %min.iters.check, label %.lr.ph.preheader223, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store <4 x i32> %vec.ind, ptr %i.bm, align 16, !tbaa !9
  store <4 x i32> %step.add, ptr %i.bn, align 16, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader223

.lr.ph.preheader223:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader223, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader223 ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.bq = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.bq, ptr %i.bp, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !22

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.b102 = load i1, ptr @rand_order, align 4
  %i.br = icmp ne i32 %i.bk, 1
  %or.cond161 = and i1 %.b102, %i.br
  br i1 %or.cond161, label %.lr.ph142.preheader, label %.lr.ph158.preheader

.lr.ph142.preheader:                              ; preds = %._crit_edge
  %i.bs = zext nneg i32 %i.bk to i64
  br label %.lr.ph142

.lr.ph142:                                        ; preds = %.lr.ph142.preheader, %.lr.ph142
  %indvars.iv170 = phi i64 [ %i.bs, %.lr.ph142.preheader ], [ %indvars.iv.next171, %.lr.ph142 ] ; 3 uses
  %indvars.iv.next171 = add nsw i64 %indvars.iv170, -1 ; 2 uses
  %i.bt = call i32 @test_random() #13
  %i.bu = trunc nuw nsw i64 %indvars.iv170 to i32
  %i.bv = urem i32 %i.bt, %i.bu
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !9
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next171 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !9
  store i32 %i.ca, ptr %i.bx, align 4, !tbaa !9
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !9
  %i.cb = icmp samesign ugt i64 %indvars.iv170, 2
  br i1 %i.cb, label %.lr.ph142, label %.loopexit130.loopexit, !llvm.loop !23

.loopexit130.loopexit:                            ; preds = %.lr.ph142
  %.pre = load i32, ptr @num_tests, align 4, !tbaa !9
  br label %.loopexit130

.loopexit130:                                     ; preds = %bb.ab, %.loopexit130.loopexit
  %i.cc = phi i32 [ %.pre, %.loopexit130.loopexit ], [ %i.bk, %bb.ab ]
  %.not152 = icmp eq i32 %i.cc, 0
  br i1 %.not152, label %._crit_edge159, label %.lr.ph158.preheader

.lr.ph158.preheader:                              ; preds = %._crit_edge, %.loopexit130
  br label %.lr.ph158

.lr.ph158:                                        ; preds = %.lr.ph158.preheader, %bb.bd
  %indvars.iv173 = phi i64 [ %indvars.iv.next174, %bb.bd ], [ 0, %.lr.ph158.preheader ] ; 3 uses
  %.0156 = phi i32 [ %.3, %bb.bd ], [ 0, %.lr.ph158.preheader ] ; 5 uses
  %.078155 = phi i32 [ %.179, %bb.bd ], [ 0, %.lr.ph158.preheader ] ; 6 uses
  %.089153 = phi i32 [ %.392, %bb.bd ], [ 0, %.lr.ph158.preheader ] ; 4 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv173
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !9  ; 2 uses
  %i.cf = load i32, ptr @single_test, align 4, !tbaa !9 ; 2 uses
  %.not106 = icmp eq i32 %i.cf, -1
  %i.cg = add nsw i32 %i.ce, 1
  %.not107 = icmp eq i32 %i.cg, %i.cf
  %or.cond = select i1 %.not106, i1 true, i1 %.not107
  br i1 %or.cond, label %bb.ac, label %bb.bd

bb.ac:                                            ; preds = %.lr.ph158
  %.b103 = load i1, ptr @show_list, align 4
  %i.ch = sext i32 %i.ce to i64
  %i.ci = getelementptr inbounds [32 x i8], ptr @all_tests, i64 %i.ch ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24 ; 6 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !15 ; 2 uses
  %.not115 = icmp eq i32 %i.ck, -1                ; 2 uses
  %i.cl = load ptr, ptr %i.ci, align 16, !tbaa !13 ; 5 uses
  br i1 %.b103, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.cm = trunc i64 %indvars.iv173 to i32
  %i.cn = add i32 %i.cm, 1                        ; 2 uses
  br i1 %.not115, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.co = call i32 (ptr, ...) @test_printf_tapout(ptr noundef nonnull @.str.6, i32 noundef %i.cn, ptr noundef %i.cl, i32 noundef 1, i32 noundef %i.ck) #13 ; 0 uses
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.cp = call i32 (ptr, ...) @test_printf_tapout(ptr noundef nonnull @.str.7, i32 noundef %i.cn, ptr noundef %i.cl) #13 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.cq = call i32 @test_flush_tapout() #13       ; 0 uses
  br label %bb.bd

bb.ah:                                            ; preds = %bb.ac
  %i.cr = load ptr, ptr @test_title, align 8, !tbaa !17
  call void @free(ptr noundef %i.cr) #13
  %i.cs = icmp eq ptr %i.cl, null                 ; 2 uses
  br i1 %.not115, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.cs, label %set_test_title.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ct = call noalias ptr @strdup(ptr noundef nonnull readonly %i.cl) #13
  br label %set_test_title.exit

set_test_title.exit:                              ; preds = %bb.ai, %bb.aj
  %i.cu = phi ptr [ %i.ct, %bb.aj ], [ null, %bb.ai ]
  store ptr %i.cu, ptr @test_title, align 8, !tbaa !17
  call void @ERR_clear_error() #13
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !14
  %i.cx = call i32 %i.cw() #13                    ; 2 uses
  %.not128 = icmp eq i32 %i.cx, 0                 ; 2 uses
  br i1 %.not128, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %set_test_title.exit
  call void @ERR_clear_error() #13
  br label %finalize.exit

bb.al:                                            ; preds = %set_test_title.exit
  call void @ERR_print_errors_cb(ptr noundef nonnull @openssl_error_cb, ptr noundef null) #13
  br label %finalize.exit

finalize.exit:                                    ; preds = %bb.ak, %bb.al
  %i.cy = add nsw i32 %.078155, 1                 ; 2 uses
  %i.cz = load ptr, ptr @test_title, align 8, !tbaa !17
  call void (i32, ptr, ...) @test_verdict(i32 noundef %i.cx, ptr noundef nonnull @.str.8, i32 noundef %i.cy, ptr noundef %i.cz)
  %i.da = zext i1 %.not128 to i32
  %spec.select = add nsw i32 %.089153, %i.da
  br label %bb.bd

bb.am:                                            ; preds = %bb.ah
  br i1 %i.cs, label %set_test_title.exit118, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.db = call noalias ptr @strdup(ptr noundef nonnull readonly %i.cl) #13
  br label %set_test_title.exit118

set_test_title.exit118:                           ; preds = %bb.am, %bb.an
  %i.dc = phi ptr [ %i.db, %bb.an ], [ null, %bb.am ]
  store ptr %i.dc, ptr @test_title, align 8, !tbaa !17
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ci, i64 28 ; 4 uses
  %i.de = load i8, ptr %i.dd, align 4
  %i.df = and i8 %i.de, 1
  %.not108 = icmp eq i8 %i.df, 0
  br i1 %.not108, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %set_test_title.exit118
  %i.dg = load i32, ptr @level, align 4, !tbaa !9
  %i.dh = add nsw i32 %i.dg, 4                    ; 2 uses
end_hunk_0
