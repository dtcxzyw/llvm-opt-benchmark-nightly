Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/object_tracing?download=true
inline.NumInlined: 36
inline.NumDeleted: 19
begin_hunk_0_@allocation_sourcefile:bb.a

; Function Attrs: nounwind uwtable
define internal range(i64 1, 0) i64 @allocation_sourceline(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = load ptr, ptr @tmp_trace_arg, align 8, !tbaa !12 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %lookup_allocation_info.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.e = call i32 @rb_st_lookup(ptr noundef %i.d, i64 noundef %1, ptr noundef nonnull %i.a) #12
  %.not3.not.i = icmp eq i32 %i.e, 0
  %i.f = load i64, ptr %i.a, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %.not = icmp eq i64 %i.f, 0
  %or.cond = select i1 %.not3.not.i, i1 true, i1 %.not
  br i1 %or.cond, label %lookup_allocation_info.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !30
  %i.j = shl i64 %i.i, 1
  %i.k = or disjoint i64 %i.j, 1
  br label %lookup_allocation_info.exit.thread

lookup_allocation_info.exit.thread:               ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i64 [ %i.k, %bb.c ], [ 4, %bb.b ], [ 4, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal i64 @allocation_class_path(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = load ptr, ptr @tmp_trace_arg, align 8, !tbaa !12 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %lookup_allocation_info.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.e = call i32 @rb_st_lookup(ptr noundef %i.d, i64 noundef %1, ptr noundef nonnull %i.a) #12
  %.not3.not.i = icmp eq i32 %i.e, 0
  %i.f = load i64, ptr %i.a, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %.not = icmp eq i64 %i.f, 0
  %or.cond = select i1 %.not3.not.i, i1 true, i1 %.not
  br i1 %or.cond, label %lookup_allocation_info.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31   ; 2 uses
  %.not6 = icmp eq ptr %i.i, null
  br i1 %.not6, label %lookup_allocation_info.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = call i64 @rb_str_new_cstr(ptr noundef nonnull %i.i) #12
  br label %lookup_allocation_info.exit.thread

lookup_allocation_info.exit.thread:               ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %.0 = phi i64 [ %i.j, %bb.d ], [ 4, %bb.c ], [ 4, %bb.b ], [ 4, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal i64 @allocation_method_id(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = load ptr, ptr @tmp_trace_arg, align 8, !tbaa !12 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %lookup_allocation_info.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.e = call i32 @rb_st_lookup(ptr noundef %i.d, i64 noundef %1, ptr noundef nonnull %i.a) #12
  %.not3.not.i = icmp eq i32 %i.e, 0
  %i.f = load i64, ptr %i.a, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %.not = icmp eq i64 %i.f, 0
  %or.cond = select i1 %.not3.not.i, i1 true, i1 %.not
  br i1 %or.cond, label %lookup_allocation_info.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load i64, ptr %i.h, align 8, !tbaa !32
  br label %lookup_allocation_info.exit.thread

lookup_allocation_info.exit.thread:               ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i64 [ %i.i, %bb.c ], [ 4, %bb.b ], [ 4, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal i64 @allocation_generation(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = load ptr, ptr @tmp_trace_arg, align 8, !tbaa !12 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %rb_ull2num_inline.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.e = call i32 @rb_st_lookup(ptr noundef %i.d, i64 noundef %1, ptr noundef nonnull %i.a) #12
  %.not3.not.i = icmp eq i32 %i.e, 0
  %i.f = load i64, ptr %i.a, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %.not = icmp eq i64 %i.f, 0
  %or.cond = select i1 %.not3.not.i, i1 true, i1 %.not
  br i1 %or.cond, label %rb_ull2num_inline.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !33   ; 3 uses
  %i.j = icmp ult i64 %i.i, 4611686018427387904
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = shl nuw nsw i64 %i.i, 1
  %i.l = or disjoint i64 %i.k, 1
  br label %rb_ull2num_inline.exit

bb.e:                                             ; preds = %bb.c
  %i.m = call i64 @rb_ull2inum(i64 noundef %i.i) #12
  br label %rb_ull2num_inline.exit

rb_ull2num_inline.exit:                           ; preds = %bb.b, %bb.a, %bb.e, %bb.d
  %.0 = phi i64 [ %i.m, %bb.e ], [ 4, %bb.b ], [ %i.l, %bb.d ], [ 4, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @rb_st_lookup(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i64 @rb_ensure(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_yield(i64 noundef) #1

declare i64 @rb_tracepoint_new(i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @newobj_i(i64 noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = tail call nonnull ptr @rb_tracearg_from_tracepoint(i64 noundef %0) #12 ; 5 uses
  %i.e = tail call i64 @rb_tracearg_object(ptr noundef nonnull %i.d) #12 ; 3 uses
  %i.f = tail call i64 @rb_tracearg_path(ptr noundef nonnull %i.d) #12 ; 2 uses
  %i.g = tail call i64 @rb_tracearg_lineno(ptr noundef nonnull %i.d) #12 ; 3 uses
  %i.h = tail call i64 @rb_tracearg_method_id(ptr noundef nonnull %i.d) #12
  %i.i = tail call i64 @rb_tracearg_defined_class(ptr noundef nonnull %i.d) #12 ; 4 uses
  %i.j = and i64 %i.f, -5
  %.not50 = icmp eq i64 %i.j, 0
  br i1 %.not50, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.m = inttoptr i64 %i.f to ptr                 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !34
  %i.o = and i64 %i.n, 8192
  %.not.i = icmp eq i64 %i.o, 0
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !35
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.b, %bb.c
  %i.r = phi ptr [ %i.q, %bb.c ], [ %i.p, %bb.b ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !38
  %i.u = tail call fastcc ptr @make_unique_str(ptr noundef %i.l, ptr noundef %i.r, i64 noundef %i.t)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %RSTRING_PTR.exit
  %i.v = phi ptr [ %i.u, %RSTRING_PTR.exit ], [ null, %bb.a ]
  %i.w = and i64 %i.i, -5
  %.not51 = icmp ne i64 %i.w, 0
  %i.x = and i64 %i.i, 7
  %i.y = icmp eq i64 %i.x, 0
  %or.cond = and i1 %.not51, %i.y
  br i1 %or.cond, label %RB_OBJ_FROZEN.exit, label %bb.e

RB_OBJ_FROZEN.exit:                               ; preds = %bb.d
  %i.z = inttoptr i64 %i.i to ptr
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !34
  %i.ab = and i64 %i.aa, 2048
  %.not52 = icmp eq i64 %i.ab, 0
  br i1 %.not52, label %2, label %bb.e

2:                                                ; preds = %RB_OBJ_FROZEN.exit
  %3 = tail call i64 @rb_class_path_cached(i64 noundef %i.i) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %RB_OBJ_FROZEN.exit, %2
  %4 = phi i64 [ %3, %2 ], [ 4, %RB_OBJ_FROZEN.exit ], [ 4, %bb.d ] ; 2 uses
  %i.ac = and i64 %4, -5
  %.not53 = icmp eq i64 %i.ac, 0
  br i1 %.not53, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.af = inttoptr i64 %4 to ptr                  ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !34
  %i.ah = and i64 %i.ag, 8192
  %.not.i43 = icmp eq i64 %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  br i1 %.not.i43, label %RSTRING_PTR.exit44, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !35
  br label %RSTRING_PTR.exit44

RSTRING_PTR.exit44:                               ; preds = %bb.f, %bb.g
  %i.ak = phi ptr [ %i.aj, %bb.g ], [ %i.ai, %bb.f ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !38
  %i.an = tail call fastcc ptr @make_unique_str(ptr noundef %i.ae, ptr noundef %i.ak, i64 noundef %i.am)
  br label %.thread

.thread:                                          ; preds = %bb.e, %RSTRING_PTR.exit44
  %5 = phi ptr [ %i.an, %RSTRING_PTR.exit44 ], [ null, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !16
  %i.aq = call i32 @rb_st_lookup(ptr noundef %i.ap, i64 noundef %i.e, ptr noundef nonnull %i.c) #12
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %bb.q, label %bb.h

bb.h:                                             ; preds = %.thread
  %i.ar = load i64, ptr %i.c, align 8, !tbaa !17
  %i.as = inttoptr i64 %i.ar to ptr               ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !24 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !29 ; 2 uses
  %.not.i45 = icmp eq ptr %i.aw, null
  br i1 %.not.i45, label %delete_unique_str.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.ax = ptrtoint ptr %i.aw to i64               ; 3 uses
  %i.ay = call i32 @rb_st_lookup(ptr noundef %i.au, i64 noundef %i.ax, ptr noundef nonnull %i.b) #12 ; 0 uses
  %i.az = load i64, ptr %i.b, align 8, !tbaa !17  ; 2 uses
  %i.ba = icmp eq i64 %i.az, 1
  br i1 %i.ba, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i64 %i.ax, ptr %i.b, align 8, !tbaa !17
  %i.bb = call i32 @rb_st_delete(ptr noundef %i.au, ptr noundef nonnull %i.b, ptr noundef null) #12 ; 0 uses
  %i.bc = load i64, ptr %i.b, align 8, !tbaa !17
  %i.bd = inttoptr i64 %i.bc to ptr
  call void @ruby_xfree(ptr noundef %i.bd) #12
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.be = add i64 %i.az, -1
  %i.bf = call i32 @rb_st_update(ptr noundef %i.au, i64 noundef %i.ax, ptr noundef nonnull @delete_unique_str_dec, i64 noundef %i.be) #12 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %.pre = load ptr, ptr %i.at, align 8, !tbaa !24
  br label %delete_unique_str.exit

delete_unique_str.exit:                           ; preds = %bb.h, %bb.l
  %i.bg = phi ptr [ %i.au, %bb.h ], [ %.pre, %bb.l ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !31 ; 2 uses
  %.not.i46 = icmp eq ptr %i.bi, null
  br i1 %.not.i46, label %delete_unique_str.exit47, label %bb.m

bb.m:                                             ; preds = %delete_unique_str.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.bj = ptrtoint ptr %i.bi to i64               ; 3 uses
  %i.bk = call i32 @rb_st_lookup(ptr noundef %i.bg, i64 noundef %i.bj, ptr noundef nonnull %i.a) #12 ; 0 uses
  %i.bl = load i64, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 1
  br i1 %i.bm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i64 %i.bj, ptr %i.a, align 8, !tbaa !17
  %i.bn = call i32 @rb_st_delete(ptr noundef %i.bg, ptr noundef nonnull %i.a, ptr noundef null) #12 ; 0 uses
  %i.bo = load i64, ptr %i.a, align 8, !tbaa !17
  %i.bp = inttoptr i64 %i.bo to ptr
  call void @ruby_xfree(ptr noundef %i.bp) #12
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bq = add i64 %i.bl, -1
  %i.br = call i32 @rb_st_update(ptr noundef %i.bg, i64 noundef %i.bj, ptr noundef nonnull @delete_unique_str_dec, i64 noundef %i.bq) #12 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %delete_unique_str.exit47

bb.q:                                             ; preds = %.thread
  %i.bs = call noalias nonnull dereferenceable(64) ptr @ruby_xmalloc(i64 noundef 64) #13
  br label %delete_unique_str.exit47

delete_unique_str.exit47:                         ; preds = %bb.p, %delete_unique_str.exit, %bb.q
  %.0 = phi ptr [ %i.bs, %bb.q ], [ %i.as, %delete_unique_str.exit ], [ %i.as, %bb.p ] ; 8 uses
  store i32 1, ptr %.0, align 8, !tbaa !36
  %i.bt = inttoptr i64 %i.e to ptr
  %i.bu = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.bv = load <2 x i64>, ptr %i.bt, align 8, !tbaa !17
  store <2 x i64> %i.bv, ptr %i.bu, align 8, !tbaa !17
  %i.bw = getelementptr inbounds nuw i8, ptr %.0, i64 24
  store ptr %i.v, ptr %i.bw, align 8, !tbaa !29
  %i.bx = trunc i64 %i.g to i1
  br i1 %i.bx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %delete_unique_str.exit47
  %i.by = call i64 @rb_fix2int(i64 noundef %i.g) #12
  br label %rb_num2int_inline.exit

bb.s:                                             ; preds = %delete_unique_str.exit47
  %i.bz = call i64 @rb_num2int(i64 noundef %i.g) #12
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.r, %bb.s
  %.0.i48 = phi i64 [ %i.by, %bb.r ], [ %i.bz, %bb.s ]
  %i.ca = shl i64 %.0.i48, 32
  %i.cb = ashr exact i64 %i.ca, 32
  %i.cc = getelementptr inbounds nuw i8, ptr %.0, i64 32
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !30
  %i.cd = getelementptr inbounds nuw i8, ptr %.0, i64 48
  store i64 %i.h, ptr %i.cd, align 8, !tbaa !32
  %i.ce = getelementptr inbounds nuw i8, ptr %.0, i64 40
  store ptr %5, ptr %i.ce, align 8, !tbaa !31
  %i.cf = call i64 @rb_gc_count() #12
  %i.cg = getelementptr inbounds nuw i8, ptr %.0, i64 56
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !33
  %i.ch = load ptr, ptr %i.ao, align 8, !tbaa !16
  %i.ci = ptrtoint ptr %.0 to i64
  %i.cj = call i32 @rb_st_insert(ptr noundef %i.ch, i64 noundef %i.e, i64 noundef %i.ci) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @freeobj_i(i64 noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = tail call nonnull ptr @rb_tracearg_from_tracepoint(i64 noundef %0) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.f = tail call i64 @rb_tracearg_object(ptr noundef nonnull %i.e) #12 ; 2 uses
  store i64 %i.f, ptr %i.c, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.g = tail call i64 @rb_gc_disable_no_rest() #12
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !23
  %.not = icmp eq i32 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16   ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = call i32 @rb_st_lookup(ptr noundef %i.k, i64 noundef %i.f, ptr noundef nonnull %i.d) #12
  %.not13 = icmp eq i32 %i.l, 0
  br i1 %.not13, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.d, align 8, !tbaa !17
  %i.n = inttoptr i64 %i.m to ptr
  store i32 0, ptr %i.n, align 8, !tbaa !36
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  %i.o = call i32 @rb_st_delete(ptr noundef %i.k, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #12
  %.not12 = icmp eq i32 %i.o, 0
  br i1 %.not12, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i64, ptr %i.d, align 8, !tbaa !17
  %i.q = inttoptr i64 %i.p to ptr                 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !24   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !29   ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %delete_unique_str.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.v = ptrtoint ptr %i.u to i64                 ; 3 uses
  %i.w = call i32 @rb_st_lookup(ptr noundef %i.s, i64 noundef %i.v, ptr noundef nonnull %i.b) #12 ; 0 uses
  %i.x = load i64, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i64 %i.v, ptr %i.b, align 8, !tbaa !17
  %i.z = call i32 @rb_st_delete(ptr noundef %i.s, ptr noundef nonnull %i.b, ptr noundef null) #12 ; 0 uses
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !17
  %i.ab = inttoptr i64 %i.aa to ptr
  call void @ruby_xfree(ptr noundef %i.ab) #12
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ac = add i64 %i.x, -1
  %i.ad = call i32 @rb_st_update(ptr noundef %i.s, i64 noundef %i.v, ptr noundef nonnull @delete_unique_str_dec, i64 noundef %i.ac) #12 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !24
  br label %delete_unique_str.exit

delete_unique_str.exit:                           ; preds = %bb.e, %bb.i
  %i.ae = phi ptr [ %i.s, %bb.e ], [ %.pre, %bb.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !31 ; 2 uses
  %.not.i14 = icmp eq ptr %i.ag, null
  br i1 %.not.i14, label %delete_unique_str.exit15, label %bb.j

bb.j:                                             ; preds = %delete_unique_str.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.ah = ptrtoint ptr %i.ag to i64               ; 3 uses
  %i.ai = call i32 @rb_st_lookup(ptr noundef %i.ae, i64 noundef %i.ah, ptr noundef nonnull %i.a) #12 ; 0 uses
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i64 %i.ah, ptr %i.a, align 8, !tbaa !17
  %i.al = call i32 @rb_st_delete(ptr noundef %i.ae, ptr noundef nonnull %i.a, ptr noundef null) #12 ; 0 uses
  %i.am = load i64, ptr %i.a, align 8, !tbaa !17
  %i.an = inttoptr i64 %i.am to ptr
  call void @ruby_xfree(ptr noundef %i.an) #12
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ao = add i64 %i.aj, -1
  %i.ap = call i32 @rb_st_update(ptr noundef %i.ae, i64 noundef %i.ah, ptr noundef nonnull @delete_unique_str_dec, i64 noundef %i.ao) #12 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %delete_unique_str.exit15

delete_unique_str.exit15:                         ; preds = %delete_unique_str.exit, %bb.m
  call void @ruby_xfree(ptr noundef nonnull %i.q) #12
  br label %bb.n

bb.n:                                             ; preds = %bb.d, %delete_unique_str.exit15, %bb.b, %bb.c
  %i.aq = icmp eq i64 %i.g, 0
  br i1 %i.aq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ar = call i64 @rb_gc_enable() #12            ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  ret void
}

declare i64 @rb_tracepoint_enable(i64 noundef) local_unnamed_addr #1

declare i64 @rb_data_typed_object_zalloc(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @rb_gc_register_mark_object(i64 noundef) local_unnamed_addr #1

declare ptr @rb_st_init_numtable() local_unnamed_addr #1

declare ptr @rb_st_init_strtable() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @allocation_info_tracer_mark(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !25
  tail call void @rb_gc_mark(i64 noundef %i.b) #12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !26
  tail call void @rb_gc_mark(i64 noundef %i.d) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @allocation_info_tracer_free(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = tail call i32 @rb_st_foreach(ptr noundef %i.b, ptr noundef nonnull @free_values_i, i64 noundef 0) #12 ; 0 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !16
  tail call void @rb_st_free_table(ptr noundef %i.d) #12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.g = tail call i32 @rb_st_foreach(ptr noundef %i.f, ptr noundef nonnull @free_keys_i, i64 noundef 0) #12 ; 0 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !24
  tail call void @rb_st_free_table(ptr noundef %i.h) #12
  tail call void @ruby_xfree(ptr noundef %0) #12
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define internal i64 @allocation_info_tracer_memsize(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = tail call i64 @rb_st_memsize(ptr noundef %i.b) #14
  %i.d = add i64 %i.c, 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.g = tail call i64 @rb_st_memsize(ptr noundef %i.f) #14
  %i.h = add i64 %i.d, %i.g
  ret i64 %i.h
}

; Function Attrs: nounwind uwtable
define internal void @allocation_info_tracer_compact(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = tail call i32 @rb_st_foreach(ptr noundef nonnull %i.b, ptr noundef nonnull @allocation_info_tracer_compact_update_object_table_i, i64 noundef %i.c) #12
  %.not4 = icmp eq i32 %i.d, 0
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_0
