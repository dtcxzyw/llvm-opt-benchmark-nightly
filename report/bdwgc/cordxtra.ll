Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bdwgc/original/cordxtra?download=true
inline.NumInlined: 7
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@CORD_str:bb.a
  store i64 %i.br, ptr %3, align 16
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  call void @CORD__next(ptr noundef nonnull %3) #14
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.bt = add nuw nsw i64 %.04867, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bt, %spec.store.select
  br i1 %exitcond.not, label %.preheader, label %bb.m, !llvm.loop !8

.preheader.split:                                 ; preds = %.preheader, %bb.ab
  %.1 = phi i64 [ %i.cm, %bb.ab ], [ %i.bq, %.preheader ] ; 2 uses
  %.0 = phi i64 [ %i.cp, %bb.ab ], [ %1, %.preheader ] ; 4 uses
  %i.bu = and i64 %.1, %i.ay
  %i.bv = icmp eq i64 %i.bu, %i.bd
  br i1 %i.bv, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.preheader.split
  %i.bw = add i64 %.0, %spec.store.select
  %i.bx = call i32 @CORD_ncmp(ptr noundef %0, i64 noundef %i.bw, ptr noundef nonnull %2, i64 noundef %spec.store.select, i64 noundef %i.s)
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t, %.preheader.split
  %i.bz = icmp eq i64 %.0, %i.t
  br i1 %i.bz, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ca = shl i64 %.1, 8
  %i.cb = load i64, ptr %i.u, align 16            ; 2 uses
  %.not60 = icmp eq i64 %i.cb, 0
  br i1 %.not60, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cc = load ptr, ptr %i.v, align 16
  %i.cd = load i64, ptr %3, align 16              ; 2 uses
  %i.ce = load i64, ptr %i.w, align 8
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.ci = call signext i8 @CORD__pos_fetch(ptr noundef nonnull %3) #14
  %.pre81 = load i64, ptr %3, align 16
  %.pre82 = load i64, ptr %i.u, align 16
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cj = phi i64 [ %i.cb, %bb.w ], [ %.pre82, %bb.x ]
  %i.ck = phi i64 [ %i.cd, %bb.w ], [ %.pre81, %bb.x ]
  %.in = phi i8 [ %i.ch, %bb.w ], [ %i.ci, %bb.x ]
  %i.cl = zext i8 %.in to i64
  %i.cm = or disjoint i64 %i.ca, %i.cl
  %i.cn = add i64 %i.ck, 1                        ; 2 uses
  %i.co = icmp ult i64 %i.cn, %i.cj
  br i1 %i.co, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i64 %i.cn, ptr %3, align 16
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  call void @CORD__next(ptr noundef nonnull %3) #14
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.cp = add i64 %.0, 1
  br label %.preheader.split

.loopexit:                                        ; preds = %bb.t, %bb.u, %bb.l, %.lr.ph73, %.lr.ph73.preheader, %.preheader.split.us, %bb.e, %bb.a
  %.054 = phi i64 [ -1, %bb.e ], [ %1, %bb.a ], [ %1, %.preheader.split.us ], [ -1, %.lr.ph73 ], [ -1, %.lr.ph73.preheader ], [ %i.au, %bb.l ], [ -1, %bb.u ], [ %.0, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret i64 %.054
}

declare ptr @CORD_substr(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @CORD_ec_flush_buf(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = icmp eq ptr %i.b, %i.c
  br i1 %i.g, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i64 %i.f, 1
  %i.i = tail call noalias ptr @GC_malloc_atomic(i64 noundef %i.h) #15 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr @CORD_oom_fn, align 8      ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %i.k() #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = load ptr, ptr @stderr, align 8
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #16 ; 0 uses
  tail call void @abort() #17
  unreachable

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 8 %i.c, i64 %i.f, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  store i8 0, ptr %i.n, align 1
  %i.o = load ptr, ptr %0, align 8
  %i.p = tail call ptr @CORD_cat_char_star(ptr noundef %i.o, ptr noundef nonnull %i.i, i64 noundef %i.f) #14
  store ptr %i.p, ptr %0, align 8
  store ptr %i.c, ptr %i.a, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @CORD_ec_append_cord(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = icmp eq ptr %i.b, %i.c
  br i1 %i.g, label %.CORD_ec_flush_buf.exit_crit_edge, label %bb.b

.CORD_ec_flush_buf.exit_crit_edge:                ; preds = %bb.a
  %.pre = load ptr, ptr %0, align 8
  br label %CORD_ec_flush_buf.exit

bb.b:                                             ; preds = %bb.a
  %i.h = add i64 %i.f, 1
  %i.i = tail call noalias ptr @GC_malloc_atomic(i64 noundef %i.h) #15 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr @CORD_oom_fn, align 8      ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %i.k() #14, !inline_history !4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = load ptr, ptr @stderr, align 8
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #16 ; 0 uses
  tail call void @abort() #17
  unreachable

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 8 %i.c, i64 %i.f, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  store i8 0, ptr %i.n, align 1
  %i.o = load ptr, ptr %0, align 8
  %i.p = tail call ptr @CORD_cat_char_star(ptr noundef %i.o, ptr noundef nonnull %i.i, i64 noundef %i.f) #14 ; 2 uses
  store ptr %i.p, ptr %0, align 8
  store ptr %i.c, ptr %i.a, align 8
  br label %CORD_ec_flush_buf.exit

CORD_ec_flush_buf.exit:                           ; preds = %.CORD_ec_flush_buf.exit_crit_edge, %bb.f
  %i.q = phi ptr [ %.pre, %.CORD_ec_flush_buf.exit_crit_edge ], [ %i.p, %bb.f ]
  %i.r = tail call ptr @CORD_cat(ptr noundef %i.q, ptr noundef %1) #14
  store ptr %i.r, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef signext i8 @CORD_nul_func(i64 %0, ptr noundef %1) #12 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = trunc i64 %i.a to i8
  ret i8 %i.b
}

declare ptr @CORD_from_fn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @CORD_from_file_eager(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca [1 x %struct.CORD_ec_struct], align 16 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  store ptr null, ptr %1, align 16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  store ptr %i.a, ptr %i.b, align 8
  %i.c = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 144
  br label %bb.b

bb.b:                                             ; preds = %bb.q, %bb.a
  %i.e = call i32 @getc(ptr noundef %0)           ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.h, %i.c                       ; 4 uses
  %i.j = icmp eq ptr %i.g, %i.a
  br i1 %i.j, label %CORD_ec_flush_buf.exit.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = add i64 %i.i, 1
  %i.l = call noalias ptr @GC_malloc_atomic(i64 noundef %i.k) #15 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr @CORD_oom_fn, align 8      ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void %i.n() #14, !inline_history !4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = load ptr, ptr @stderr, align 8
  %i.p = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #16 ; 0 uses
  call void @abort() #17
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull align 16 %i.a, i64 %i.i, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  store i8 0, ptr %i.q, align 1
  %i.r = load ptr, ptr %1, align 16
  %i.s = call ptr @CORD_cat_char_star(ptr noundef %i.r, ptr noundef nonnull %i.l, i64 noundef %i.i) #14
  store ptr %i.s, ptr %1, align 16
  store ptr %i.a, ptr %i.b, align 8
  br label %CORD_ec_flush_buf.exit.preheader

CORD_ec_flush_buf.exit.preheader:                 ; preds = %bb.c, %bb.h
  br label %CORD_ec_flush_buf.exit

CORD_ec_flush_buf.exit:                           ; preds = %CORD_ec_flush_buf.exit.preheader, %CORD_ec_flush_buf.exit
  %.08 = phi i64 [ %i.v, %CORD_ec_flush_buf.exit ], [ 1, %CORD_ec_flush_buf.exit.preheader ] ; 2 uses
  %i.t = call i32 @getc(ptr noundef %0)           ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  %i.v = add i64 %.08, 1
  br i1 %i.u, label %CORD_ec_flush_buf.exit, label %bb.i, !llvm.loop !9

bb.i:                                             ; preds = %CORD_ec_flush_buf.exit
  %i.w = load ptr, ptr %1, align 16
  %i.x = call ptr @CORD_from_fn(ptr noundef nonnull @CORD_nul_func, ptr noundef null, i64 noundef %.08) #14
  %i.y = call ptr @CORD_cat(ptr noundef %i.w, ptr noundef %i.x) #14
  store ptr %i.y, ptr %1, align 16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  %.09 = phi i32 [ %i.t, %bb.i ], [ %i.e, %bb.b ] ; 2 uses
  %i.z = icmp eq i32 %.09, -1
  br i1 %i.z, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.ab = icmp eq ptr %i.aa, %i.d
  br i1 %i.ab, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %2 = ptrtoint ptr %i.aa to i64
  %3 = sub i64 %2, %i.c                           ; 4 uses
  %4 = add i64 %3, 1
  %i.ac = call noalias ptr @GC_malloc_atomic(i64 noundef %4) #15 ; 4 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ae = load ptr, ptr @CORD_oom_fn, align 8     ; 2 uses
  %.not.i12 = icmp eq ptr %i.ae, null
  br i1 %.not.i12, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void %i.ae() #14, !inline_history !4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.af = load ptr, ptr @stderr, align 8
  %i.ag = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #16 ; 0 uses
  call void @abort() #17
  unreachable

bb.p:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull align 16 %i.a, i64 %3, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 %3
  store i8 0, ptr %i.ah, align 1
  %i.ai = load ptr, ptr %1, align 16
  %i.aj = call ptr @CORD_cat_char_star(ptr noundef %i.ai, ptr noundef nonnull %i.ac, i64 noundef %3) #14
  store ptr %i.aj, ptr %1, align 16
  br label %bb.q

bb.q:                                             ; preds = %bb.k, %bb.p
  %i.ak = phi ptr [ %i.aa, %bb.k ], [ %i.a, %bb.p ] ; 2 uses
  %i.al = trunc i32 %.09 to i8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  store ptr %i.am, ptr %i.b, align 8
  store i8 %i.al, ptr %i.ak, align 1
  br label %bb.b

bb.r:                                             ; preds = %bb.j
  %i.an = call i32 @fclose(ptr noundef %0)        ; 0 uses
  %i.ao = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.c                     ; 4 uses
  %i.ar = icmp eq ptr %i.ao, %i.a
  br i1 %i.ar, label %.CORD_ec_flush_buf.exit15_crit_edge, label %bb.s

.CORD_ec_flush_buf.exit15_crit_edge:              ; preds = %bb.r
  %.pre = load ptr, ptr %1, align 16
  br label %CORD_ec_flush_buf.exit15

bb.s:                                             ; preds = %bb.r
  %i.as = add i64 %i.aq, 1
  %i.at = call noalias ptr @GC_malloc_atomic(i64 noundef %i.as) #15 ; 4 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.av = load ptr, ptr @CORD_oom_fn, align 8     ; 2 uses
  %.not.i14 = icmp eq ptr %i.av, null
  br i1 %.not.i14, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void %i.av() #14, !inline_history !4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.aw = load ptr, ptr @stderr, align 8
  %i.ax = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aw, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #16 ; 0 uses
  call void @abort() #17
  unreachable

bb.w:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr nonnull align 16 %i.a, i64 %i.aq, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.aq
  store i8 0, ptr %i.ay, align 1
  %i.az = load ptr, ptr %1, align 16
  %i.ba = call ptr @CORD_cat_char_star(ptr noundef %i.az, ptr noundef nonnull %i.at, i64 noundef %i.aq) #14 ; 2 uses
  store ptr %i.ba, ptr %1, align 16
  store ptr %i.a, ptr %i.b, align 8
  br label %CORD_ec_flush_buf.exit15

CORD_ec_flush_buf.exit15:                         ; preds = %.CORD_ec_flush_buf.exit15_crit_edge, %bb.w
  %i.bb = phi ptr [ %.pre, %.CORD_ec_flush_buf.exit15_crit_edge ], [ %i.ba, %bb.w ]
  %i.bc = call ptr @CORD_balance(ptr noundef %i.bb) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret ptr %i.bc
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #4

declare ptr @CORD_balance(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden signext i8 @CORD_lf_func(i64 noundef %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.refill_data, align 8        ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = lshr i64 %0, 9                           ; 2 uses
  %i.c = and i64 %i.b, 31
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.c
  %i.e = load atomic volatile ptr, ptr %i.d acquire, align 8 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.e, align 8
  %.not = icmp eq i64 %i.g, %i.b
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr %1, ptr %2, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %0, ptr %i.h, align 8
  %i.i = tail call noalias dereferenceable_or_null(520) ptr @GC_malloc_atomic(i64 noundef 520) #15 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.i, ptr %i.j, align 8
  %i.k = icmp eq ptr %i.i, null
  br i1 %i.k, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr @CORD_oom_fn, align 8      ; 2 uses
  %.not14 = icmp eq ptr %i.l, null
  br i1 %.not14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void %i.l() #14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = load ptr, ptr @stderr, align 8
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.m, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #16 ; 0 uses
  tail call void @abort() #17
  unreachable

bb.g:                                             ; preds = %bb.c
  %i.o = call ptr @GC_call_with_alloc_lock(ptr noundef nonnull @refill_cache, ptr noundef nonnull %2) #14
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = trunc i64 %i.p to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.s = and i64 %0, 511
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi i8 [ %i.q, %bb.g ], [ %i.u, %bb.h ]
  ret i8 %.0
}

declare ptr @GC_call_with_alloc_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @refill_cache(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.e = and i64 %i.c, -512                       ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %.not = icmp eq i64 %i.e, %i.i
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i32 @fseek(ptr noundef %i.d, i64 noundef %i.e, i32 noundef 0)
  %.not25 = icmp eq i32 %i.j, 0
  br i1 %.not25, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr @stderr, align 8
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #16 ; 0 uses
  tail call void @abort() #17
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.n = tail call i64 @fread(ptr noundef nonnull %i.m, i64 noundef 1, i64 noundef 512, ptr noundef %i.d)
  %i.o = and i64 %i.c, 511                        ; 2 uses
  %.not26 = icmp ugt i64 %i.n, %i.o
  br i1 %.not26, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr @stderr, align 8
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8) #16 ; 0 uses
  tail call void @abort() #17
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.r = lshr i64 %i.c, 9                         ; 2 uses
  %i.s = and i64 %i.r, 31
  store i64 %i.r, ptr %i.g, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s ; 2 uses
  store atomic volatile ptr %i.g, ptr %i.u release, align 8
  tail call void @GC_end_stubborn_change(ptr noundef nonnull %i.u) #14
  %i.v = add i64 %i.e, 512
  store i64 %i.v, ptr %i.h, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  %i.x = load i8, ptr %i.w, align 1
  %i.y = sext i8 %i.x to i64
  %i.z = inttoptr i64 %i.y to ptr
  ret ptr %i.z
}

; Function Attrs: nofree nounwind uwtable
define hidden void @CORD_lf_close_proc(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #10 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call i32 @fclose(ptr noundef %i.a)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #16 ; 0 uses
end_hunk_0
