Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mquickjs/original/mquickjs_build?download=true
inline.NumInlined: 26
inline.NumDeleted: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@add_cfunc:bb.a
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.d = getelementptr inbounds nuw [40 x i8], ptr %.pre.pre, i64 %indvars.iv ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !45
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.e) #24
  %.not41 = icmp eq i32 %i.f, 0
  br i1 %.not41, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !46
  %i.i = icmp eq i32 %2, %i.h
  br i1 %i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %i.k) #24
  %.not42 = icmp eq i32 %i.l, 0
  br i1 %.not42, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !43
  %i.o = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %i.n) #24
  %.not43 = icmp eq i32 %i.o, 0
  br i1 %.not43, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !44
  %i.r = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %i.q) #24
  %.not44 = icmp eq i32 %i.r, 0
  br i1 %.not44, label %.loopexit.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !87

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !90   ; 2 uses
  %.not = icmp slt i32 %i.b, %i.t
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.u = add nsw i32 %i.b, 1
  %i.v = mul nsw i32 %i.t, 3
  %i.w = sdiv i32 %i.v, 2
  %..i = tail call range(i32 -1073741824, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -2147483647, -2147483648) %i.u, i32 range(i32 -1073741824, 1073741824) %i.w) ; 2 uses
  store i32 %..i, ptr %i.s, align 4, !tbaa !90
  %i.x = sext i32 %..i to i64
  %i.y = mul nsw i64 %i.x, 40
  %i.z = tail call ptr @realloc(ptr noundef %.pre.pre, i64 noundef %i.y) #30 ; 2 uses
  store ptr %i.z, ptr %0, align 8, !tbaa !89
  %.pre52 = load i32, ptr %i.a, align 8, !tbaa !88
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %i.aa = phi i32 [ %.pre52, %bb.h ], [ %i.b, %._crit_edge ] ; 3 uses
  %i.ab = phi ptr [ %i.z, %bb.h ], [ %.pre.pre, %._crit_edge ]
  %i.ac = add nsw i32 %i.aa, 1
  store i32 %i.ac, ptr %i.a, align 8, !tbaa !88
  %i.ad = sext i32 %i.aa to i64
  %i.ae = getelementptr inbounds [40 x i8], ptr %i.ab, i64 %i.ad ; 5 uses
  %i.af = tail call noalias ptr @strdup(ptr noundef %1) #23
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !45
  %i.ag = tail call noalias ptr @strdup(ptr noundef %3) #23
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !47
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i32 %2, ptr %i.ai, align 8, !tbaa !46
  %i.aj = tail call noalias ptr @strdup(ptr noundef %4) #23
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !43
  %i.al = tail call noalias ptr @strdup(ptr noundef %5) #23
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store ptr %i.al, ptr %i.am, align 8, !tbaa !44
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.f
  %i.an = trunc nuw nsw i64 %indvars.iv to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.i
  %.037 = phi i32 [ %i.aa, %bb.i ], [ %i.an, %.loopexit.loopexit ]
  ret i32 %.037
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @define_atoms_props(ptr nofree noundef nonnull captures(address) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 6 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !33
  %.not18 = icmp eq i32 %i.b, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.i
  %.019 = phi ptr [ %i.t, %bb.i ], [ %1, %bb.a ]  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.019, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34
  tail call fastcc void @add_atom(ptr noundef %0, ptr noundef %i.d)
  %i.e = load i32, ptr %.019, align 8, !tbaa !33
  switch i32 %i.e, label %bb.i [
    i32 5, label %bb.b
    i32 7, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.019, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25
  tail call fastcc void @add_atom(ptr noundef %0, ptr noundef %i.g)
  br label %bb.i

bb.c:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.019, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25
  tail call fastcc void @define_atoms_class(ptr noundef %0, ptr noundef %i.i)
  br label %bb.i

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.j = getelementptr inbounds nuw i8, ptr %.019, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(5) @.str.98) #24
  %.not16 = icmp eq i32 %i.l, 0
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.n = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.99, ptr noundef %i.m) #23 ; 0 uses
  call fastcc void @add_atom(ptr noundef %0, ptr noundef nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.019, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !25
  %i.q = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull dereferenceable(5) @.str.98) #24
  %.not17 = icmp eq i32 %i.q, 0
  br i1 %.not17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.s = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.100, ptr noundef %i.r) #23 ; 0 uses
  call fastcc void @add_atom(ptr noundef %0, ptr noundef nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.c, %bb.h, %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.019, i64 48 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !33
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !91

._crit_edge:                                      ; preds = %bb.i, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @define_props(ptr noundef nonnull %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef range(i32 0, 4) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 6 uses
  %i.b = icmp eq i32 %2, 0                        ; 4 uses
  %.not = icmp eq ptr %1, null
  %spec.store.select = select i1 %.not, ptr @define_props.dummy_props, ptr %1 ; 5 uses
  %i.c = load i32, ptr %spec.store.select, align 8, !tbaa !33 ; 2 uses
  %.not129144 = icmp eq i32 %i.c, 0
  br i1 %.not129144, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0116146 = phi ptr [ %i.e, %.lr.ph ], [ %spec.store.select, %bb.a ]
  %.0120145 = phi i32 [ %i.d, %.lr.ph ], [ 0, %bb.a ]
  %i.d = add nuw nsw i32 %.0120145, 1             ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0116146, i64 48 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !33
  %.not129 = icmp eq i32 %i.f, 0
  br i1 %.not129, label %._crit_edge, label %.lr.ph, !llvm.loop !92

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0120.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %.lr.ph ] ; 2 uses
  %i.g = add nsw i32 %2, -1
  %or.cond = icmp ult i32 %i.g, 2
  %i.h = zext i1 %or.cond to i32
  %spec.select = add nuw nsw i32 %.0120.lcssa, %i.h ; 7 uses
  %i.i = zext i32 %spec.select to i64             ; 3 uses
  %i.j = shl nuw nsw i64 %i.i, 2                  ; 2 uses
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #29 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 14 uses
  br label %bb.b

bb.b:                                             ; preds = %define_value.exit, %._crit_edge
  %i.n = phi i32 [ %.pre, %define_value.exit ], [ %i.c, %._crit_edge ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %define_value.exit ], [ 0, %._crit_edge ] ; 2 uses
  %.1117 = phi ptr [ %i.bt, %define_value.exit ], [ %spec.store.select, %._crit_edge ] ; 10 uses
  switch i32 %i.n, label %define_value.exit [
    i32 0, label %bb.s
    i32 3, label %bb.c
    i32 7, label %bb.g
    i32 2, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.1117, i64 16 ; 2 uses
  %i.p = load double, ptr %i.o, align 8, !tbaa !25 ; 4 uses
  %i.q = fcmp ult double %i.p, f0xC1D0000000000000
  %i.r = fcmp ugt double %i.p, f0x41CFFFFFFF800000
  %or.cond.i.not143 = or i1 %i.q, %i.r
  %i.s = fptosi double %i.p to i32
  %i.t = sitofp i32 %i.s to double
  %i.u = fcmp une double %i.p, %i.t
  %narrow.i.not = select i1 %or.cond.i.not143, i1 true, i1 %i.u
  br i1 %narrow.i.not, label %bb.d, label %define_value.exit

bb.d:                                             ; preds = %bb.c
  %i.v = load i32, ptr %i.m, align 8, !tbaa !41   ; 3 uses
  %i.w = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.131, i32 noundef %i.v), !inline_history !93 ; 0 uses
  %puts37.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.19), !inline_history !93 ; 0 uses
  %i.x = load i64, ptr %i.o, align 8, !tbaa !25   ; 3 uses
  %i.y = load i32, ptr @JSW, align 4, !tbaa !14
  %i.z = icmp eq i32 %i.y, 8
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.133, i64 noundef %i.x), !inline_history !93 ; 0 uses
  %putchar39.i = tail call i32 @putchar(i32 10), !inline_history !93 ; 0 uses
  %i.ab = load i32, ptr %i.m, align 8, !tbaa !41
  %i.ac = add nsw i32 %i.ab, 2
  store i32 %i.ac, ptr %i.m, align 8, !tbaa !41
  br label %define_value.exit

bb.f:                                             ; preds = %bb.d
  %i.ad = trunc i64 %i.x to i32
  %i.ae = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.134, i32 noundef %i.ad), !inline_history !93 ; 0 uses
  %i.af = lshr i64 %i.x, 32
  %i.ag = trunc nuw i64 %i.af to i32
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.134, i32 noundef %i.ag), !inline_history !93 ; 0 uses
  %putchar38.i = tail call i32 @putchar(i32 10), !inline_history !93 ; 0 uses
  %i.ai = load i32, ptr %i.m, align 8, !tbaa !41
  %i.aj = add nsw i32 %i.ai, 3
  store i32 %i.aj, ptr %i.m, align 8, !tbaa !41
  br label %define_value.exit

bb.g:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %.1117, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !25
  %i.am = tail call fastcc i32 @define_class(ptr noundef nonnull %0, ptr noundef %i.al), !inline_history !93
  br label %define_value.exit

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.an = getelementptr inbounds nuw i8, ptr %.1117, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.1117, i64 32 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !25
  %i.aq = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ap, ptr noundef nonnull dereferenceable(5) @.str.98) #24, !inline_history !93
  %.not.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %.1117, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !34
  %i.at = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.99, ptr noundef %i.as) #23, !inline_history !93 ; 0 uses
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !25
  %i.av = getelementptr inbounds nuw i8, ptr %.1117, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !25
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !25
  %i.ay = call fastcc i32 @add_cfunc(ptr noundef %i.l, ptr noundef nonnull %i.a, i32 noundef 0, ptr noundef %i.au, ptr noundef %i.aw, ptr noundef %i.ax), !inline_history !93
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.031.i = phi i32 [ %i.ay, %bb.i ], [ -1, %bb.h ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.1117, i64 40 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !25
  %i.bb = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ba, ptr noundef nonnull dereferenceable(5) @.str.98) #24, !inline_history !93
  %.not33.i = icmp eq i32 %i.bb, 0
  br i1 %.not33.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %.1117, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !34
  %i.be = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.100, ptr noundef %i.bd) #23, !inline_history !93 ; 0 uses
  %i.bf = load ptr, ptr %i.an, align 8, !tbaa !25
  %i.bg = getelementptr inbounds nuw i8, ptr %.1117, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !25
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !25
  %i.bj = call fastcc i32 @add_cfunc(ptr noundef %i.l, ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef %i.bf, ptr noundef %i.bh, ptr noundef %i.bi), !inline_history !93
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0.i = phi i32 [ %i.bj, %bb.k ], [ -1, %bb.j ] ; 2 uses
  %i.bk = load i32, ptr %i.m, align 8, !tbaa !41  ; 2 uses
  %i.bl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.135, i32 noundef %i.bk), !inline_history !93 ; 0 uses
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.16), !inline_history !93 ; 0 uses
  %i.bm = icmp sgt i32 %.031.i, -1
  br i1 %i.bm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.137, i32 noundef %.031.i), !inline_history !93 ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %puts34.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.18), !inline_history !93 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bo = icmp sgt i32 %.0.i, -1
  br i1 %i.bo, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.137, i32 noundef %.0.i), !inline_history !93 ; 0 uses
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %puts35.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.18), !inline_history !93 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %putchar.i = tail call i32 @putchar(i32 10), !inline_history !93 ; 0 uses
  %i.bq = load i32, ptr %i.m, align 8, !tbaa !41
  %i.br = add nsw i32 %i.bq, 3
  store i32 %i.br, ptr %i.m, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %define_value.exit

define_value.exit:                                ; preds = %bb.b, %bb.c, %bb.e, %bb.f, %bb.g, %bb.r
  %.1.i = phi i32 [ -1, %bb.b ], [ %i.bk, %bb.r ], [ %i.am, %bb.g ], [ -1, %bb.c ], [ %i.v, %bb.e ], [ %i.v, %bb.f ]
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  store i32 %.1.i, ptr %i.bs, align 4, !tbaa !14
  %i.bt = getelementptr inbounds nuw i8, ptr %.1117, i64 48 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %i.bt, align 8, !tbaa !33
  br label %bb.b, !llvm.loop !94

bb.s:                                             ; preds = %bb.b
  %i.bu = icmp eq i32 %2, 1                       ; 3 uses
  br i1 %i.b, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bv = load i32, ptr %i.m, align 8, !tbaa !41  ; 2 uses
  %i.bw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.108, i32 noundef %i.bv) ; 0 uses
  %i.bx = shl nuw nsw i32 %.0120.lcssa, 1         ; 2 uses
  %i.by = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.106, i32 noundef %i.bx) ; 0 uses
  %i.bz = or disjoint i32 %i.bx, 1
  %i.ca = load i32, ptr %i.m, align 8, !tbaa !41
  %i.cb = add nsw i32 %i.bz, %i.ca
  store i32 %i.cb, ptr %i.m, align 8, !tbaa !41
  br label %bb.aa

bb.u:                                             ; preds = %bb.s
  %i.cc = add nsw i32 %spec.select, -1
  %i.cd = tail call range(i32 1, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 2147483647) %i.cc, i1 true)
  %i.ce = lshr exact i32 -2147483648, %i.cd
  %.inv = icmp samesign ugt i32 %spec.select, 1
  %i.cf = select i1 %.inv, i32 %i.ce, i32 1       ; 2 uses
  %i.cg = load i32, ptr @JSW, align 4, !tbaa !14
  %i.ch = udiv i32 64, %i.cg
  %i.ci = icmp samesign ugt i32 %i.cf, %i.ch
  br i1 %i.ci, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cj = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.109, i64 52, i64 1, ptr %i.cj) #27 ; 0 uses
  %i.ck = load i32, ptr @JSW, align 4, !tbaa !14
  %i.cl = udiv i32 64, %i.ck
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0113 = phi i32 [ %i.cl, %bb.v ], [ %i.cf, %bb.u ] ; 6 uses
  %i.cm = add nsw i32 %.0113, -1                  ; 2 uses
  %i.cn = zext nneg i32 %.0113 to i64             ; 2 uses
  %i.co = shl nuw nsw i64 %i.cn, 2                ; 2 uses
  %i.cp = tail call noalias ptr @malloc(i64 noundef %i.co) #29 ; 4 uses
  %i.cq = tail call noalias ptr @malloc(i64 noundef %i.j) #29 ; 2 uses
  %.not167 = icmp eq i32 %.0113, 0                ; 2 uses
  br i1 %.not167, label %.preheader, label %.lr.ph149.preheader

.lr.ph149.preheader:                              ; preds = %bb.w
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cp, i8 0, i64 %i.co, i1 false), !tbaa !14
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph149.preheader, %bb.w
  %.not168 = icmp eq i32 %spec.select, 0
  br i1 %.not168, label %._crit_edge154, label %.lr.ph153

.lr.ph153:                                        ; preds = %.preheader
  %.str.86..str.85 = select i1 %i.bu, ptr @.str.86, ptr @.str.85
  %i.cr = add nuw nsw i32 %.0113, 2
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph153, %bb.z
  %indvars.iv175 = phi i64 [ 0, %.lr.ph153 ], [ %indvars.iv.next176, %bb.z ] ; 3 uses
  %.2152 = phi ptr [ %spec.store.select, %.lr.ph153 ], [ %i.di, %bb.z ] ; 3 uses
  %i.cs = load i32, ptr %.2152, align 8, !tbaa !33
  %.not131 = icmp eq i32 %i.cs, 0
  br i1 %.not131, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ct = getelementptr inbounds nuw i8, ptr %.2152, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !34
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.0112 = phi ptr [ %i.cu, %bb.y ], [ %.str.86..str.85, %bb.x ]
  %i.cv = tail call fastcc i32 @dump_atom(ptr noundef nonnull readonly %0, ptr noundef %.0112, i32 noundef 1) ; 2 uses
  %i.cw = load i32, ptr @JSW, align 4, !tbaa !14  ; 2 uses
  %i.cx = udiv i32 %i.cv, %i.cw
  %i.cy = urem i32 %i.cv, %i.cw
  %i.cz = xor i32 %i.cy, %i.cx
  %i.da = and i32 %i.cz, %i.cm
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.db ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !14
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv175
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !14
  %i.df = trunc i64 %indvars.iv175 to i32
  %i.dg = mul i32 %i.df, 3
  %i.dh = add i32 %i.dg, %i.cr
  store i32 %i.dh, ptr %i.dc, align 4, !tbaa !14
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.2152, i64 48
  %exitcond.not = icmp eq i64 %indvars.iv.next176, %i.i
  br i1 %exitcond.not, label %._crit_edge154, label %bb.x, !llvm.loop !95

._crit_edge154:                                   ; preds = %bb.z, %.preheader
  %i.dj = load i32, ptr %i.m, align 8, !tbaa !41  ; 2 uses
  %i.dk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.110, i32 noundef %i.dj) ; 0 uses
  %i.dl = mul nuw nsw i32 %spec.select, 3         ; 2 uses
  %i.dm = add nuw i32 %i.dl, 2
  %i.dn = add nuw i32 %i.dm, %.0113
  %i.do = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.106, i32 noundef %i.dn) ; 0 uses
  %i.dp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.111, i32 noundef %spec.select) ; 0 uses
  %i.dq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.112, i32 noundef %i.cm) ; 0 uses
  br i1 %.not167, label %._crit_edge158, label %.lr.ph157

.lr.ph157:                                        ; preds = %._crit_edge154, %.lr.ph157
  %indvars.iv180 = phi i64 [ %indvars.iv.next181, %.lr.ph157 ], [ 0, %._crit_edge154 ] ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv180
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !14
  %i.dt = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.113, i32 noundef %i.ds) ; 0 uses
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
  %exitcond184.not = icmp eq i64 %indvars.iv.next181, %i.cn
  br i1 %exitcond184.not, label %._crit_edge158, label %.lr.ph157, !llvm.loop !96

._crit_edge158:                                   ; preds = %.lr.ph157, %._crit_edge154
  %i.du = load i32, ptr %i.m, align 8, !tbaa !41
  %i.dv = add nuw i32 %i.dl, 3
  %i.dw = add nuw i32 %i.dv, %.0113
  %i.dx = add i32 %i.dw, %i.du
  store i32 %i.dx, ptr %i.m, align 8, !tbaa !41
  tail call void @free(ptr noundef %i.cp) #23
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge158, %bb.t
  %.0122 = phi i32 [ %i.bv, %bb.t ], [ %i.dj, %._crit_edge158 ]
  %.0115 = phi ptr [ null, %bb.t ], [ %i.cq, %._crit_edge158 ] ; 2 uses
  %.not170 = icmp eq i32 %spec.select, 0
  br i1 %.not170, label %._crit_edge166, label %.lr.ph165

.lr.ph165:                                        ; preds = %bb.aa
  %.str.86..str.85136 = select i1 %i.bu, ptr @.str.86, ptr @.str.85
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph165, %bb.aw
  %indvars.iv185 = phi i64 [ 0, %.lr.ph165 ], [ %indvars.iv.next186, %bb.aw ] ; 4 uses
  %.3163 = phi ptr [ %spec.store.select, %.lr.ph165 ], [ %i.fp, %bb.aw ] ; 11 uses
  %i.dy = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.114) ; 0 uses
  %i.dz = load i32, ptr %.3163, align 8, !tbaa !33
  %.not132 = icmp eq i32 %i.dz, 0
  br i1 %.not132, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ea = getelementptr inbounds nuw i8, ptr %.3163, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !34
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %.0111 = phi ptr [ %i.eb, %bb.ac ], [ %.str.86..str.85136, %bb.ab ]
  %i.ec = tail call fastcc i32 @dump_atom(ptr noundef %0, ptr noundef %.0111, i32 noundef 0) ; 0 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  %i.ed = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.114) ; 0 uses
  %i.ee = load i32, ptr %.3163, align 8, !tbaa !33
  switch i32 %i.ee, label %bb.at [
    i32 3, label %bb.ae
    i32 2, label %bb.ag
    i32 7, label %bb.ai
    i32 4, label %bb.an
    i32 6, label %bb.ao
    i32 5, label %bb.ap
    i32 1, label %bb.aq
    i32 0, label %bb.ar
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv185
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !14
  %i.eh = icmp sgt i32 %i.eg, -1
  br i1 %i.eh, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ei = getelementptr inbounds nuw i8, ptr %.3163, i64 16
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !25
  %i.ek = fptosi double %i.ej to i32
  %i.el = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.117, i32 noundef %i.ek) ; 0 uses
  br label %bb.au

bb.ag:                                            ; preds = %bb.ad
  br i1 %i.b, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.em = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite134 = tail call i64 @fwrite(ptr nonnull @.str.118, i64 41, i64 1, ptr %i.em) #27 ; 0 uses
  tail call void @exit(i32 noundef 1) #28
  unreachable

bb.ai:                                            ; preds = %bb.ad
  br i1 %i.b, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.en = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite133 = tail call i64 @fwrite(ptr nonnull @.str.120, i64 47, i64 1, ptr %i.en) #27 ; 0 uses
  tail call void @exit(i32 noundef 1) #28
  unreachable

bb.ak:                                            ; preds = %bb.ag, %bb.ai, %bb.ae
  %.0 = phi ptr [ @.str.116, %bb.ae ], [ @.str.116, %bb.ai ], [ @.str.119, %bb.ag ]
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv185
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !14 ; 2 uses
  %i.eq = icmp sgt i32 %i.ep, -1
  br i1 %i.eq, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @__assert_fail(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.23, i32 noundef 555, ptr noundef nonnull @__PRETTY_FUNCTION__.define_props) #26
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.er = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.122, i32 noundef %i.ep) ; 0 uses
  br label %bb.au

bb.an:                                            ; preds = %bb.ad
  %i.es = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.123) ; 0 uses
  br label %bb.au

bb.ao:                                            ; preds = %bb.ad
  %i.et = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.124) ; 0 uses
  br label %bb.au

bb.ap:                                            ; preds = %bb.ad
  %i.eu = getelementptr inbounds nuw i8, ptr %.3163, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !25
  %i.ew = tail call fastcc i32 @dump_atom(ptr noundef %0, ptr noundef %i.ev, i32 noundef 0) ; 0 uses
  %putchar = tail call i32 @putchar(i32 44)       ; 0 uses
  br label %bb.au

bb.aq:                                            ; preds = %bb.ad
  %i.ex = getelementptr inbounds nuw i8, ptr %.3163, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !34
  %i.ez = getelementptr inbounds nuw i8, ptr %.3163, i64 16
  %i.fa = load i8, ptr %i.ez, align 8, !tbaa !25
  %i.fb = zext i8 %i.fa to i32
  %i.fc = getelementptr inbounds nuw i8, ptr %.3163, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !25
  %i.fe = getelementptr inbounds nuw i8, ptr %.3163, i64 32
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !25
  %i.fg = getelementptr inbounds nuw i8, ptr %.3163, i64 40
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !25
  %i.fi = tail call fastcc i32 @add_cfunc(ptr noundef %i.l, ptr noundef %i.ey, i32 noundef %i.fb, ptr noundef %i.fd, ptr noundef %i.ff, ptr noundef %i.fh)
  %i.fj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.126, i32 noundef %i.fi) ; 0 uses
  br label %bb.au

bb.ar:                                            ; preds = %bb.ad
  br i1 %i.bu, label %.thread, label %bb.as

.thread:                                          ; preds = %bb.ar
  %i.fk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.127, ptr noundef %3) ; 0 uses
  %putchar135138 = tail call i32 @putchar(i32 10) ; 0 uses
  br label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.fl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.128, ptr noundef %3) ; 0 uses
  br label %bb.au

bb.at:                                            ; preds = %bb.ad
  tail call void @abort() #26
  unreachable

bb.au:                                            ; preds = %bb.as, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.af
  %.1 = phi ptr [ %.0, %bb.am ], [ @.str.116, %bb.af ], [ @.str.116, %bb.an ], [ @.str.116, %bb.ao ], [ @.str.116, %bb.ap ], [ @.str.116, %bb.aq ], [ @.str.129, %bb.as ]
  %putchar135 = tail call i32 @putchar(i32 10)    ; 0 uses
  br i1 %i.b, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.thread, %bb.au
  %.1139 = phi ptr [ @.str.129, %.thread ], [ %.1, %bb.au ]
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.0115, i64 %indvars.iv185
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !14
  %i.fo = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.130, i32 noundef %i.fn, ptr noundef nonnull %.1139) ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.3163, i64 48
  %exitcond191.not = icmp eq i64 %indvars.iv.next186, %i.i
  br i1 %exitcond191.not, label %._crit_edge166, label %bb.ab, !llvm.loop !97

._crit_edge166:                                   ; preds = %bb.aw, %bb.aa
  tail call void @free(ptr noundef %.0115) #23
  tail call void @free(ptr noundef %i.k) #23
  ret i32 %.0122
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal fastcc void @define_atoms_class(ptr nofree noundef nonnull captures(address) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.010.i = load ptr, ptr %i.b, align 8, !tbaa !31 ; 2 uses
  %.not11.i = icmp eq ptr %.010.i, %i.a
  br i1 %.not11.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.012.i = phi ptr [ %.0.i, %bb.b ], [ %.010.i, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.012.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.e = icmp eq ptr %i.d, %1
  br i1 %i.e, label %find_class.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %.012.i, i64 8
  %.0.i = load ptr, ptr %i.f, align 8, !tbaa !31  ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %i.a
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !1

.loopexit:                                        ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51   ; 2 uses
  %.not18 = icmp eq ptr %i.h, null
  br i1 %.not18, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit
  tail call fastcc void @define_atoms_class(ptr noundef %0, ptr noundef nonnull %i.h)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.loopexit
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52
  %.not19 = icmp eq ptr %i.j, null
  br i1 %.not19, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %1, align 8, !tbaa !53
  tail call fastcc void @add_atom(ptr noundef %0, ptr noundef %i.k)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !54   ; 2 uses
  %.not20 = icmp eq ptr %i.m, null
  br i1 %.not20, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @define_atoms_props(ptr noundef %0, ptr noundef nonnull %i.m)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !55   ; 2 uses
  %.not22 = icmp eq ptr %i.o, null
  br i1 %.not22, label %find_class.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @define_atoms_props(ptr noundef %0, ptr noundef nonnull %i.o)
  br label %find_class.exit

find_class.exit:                                  ; preds = %.lr.ph.i, %bb.h, %bb.i
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @atom_cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #15 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24
  %i.b = load ptr, ptr %1, align 8, !tbaa !24
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.b) #24
  ret i32 %i.c
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc i32 @dump_atom(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #16 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24 ; 2 uses
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = and i64 %i.a, 2147483647
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !98

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1, !tbaa !25
  %i.f = icmp slt i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.lr.ph
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str.143, ptr noundef nonnull %1) #25 ; 0 uses
  tail call void @exit(i32 noundef 1) #28
  unreachable

._crit_edge:                                      ; preds = %bb.b
  %i.i = load i8, ptr %1, align 1, !tbaa !25      ; 2 uses
  %i.j = add i8 %i.i, -48
  %or.cond = icmp ult i8 %i.j, 10
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.144, ptr noundef nonnull %1) #25 ; 0 uses
  tail call void @exit(i32 noundef 1) #28
  unreachable

bb.e:                                             ; preds = %._crit_edge
  %i.m = icmp eq i32 %i.b, 1
  br i1 %i.m, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %.not29 = icmp eq i32 %2, 0
  %i.n = zext i8 %i.i to i32                      ; 2 uses
  br i1 %.not29, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = shl nuw nsw i32 %i.n, 5
  %i.p = or disjoint i32 %i.o, 27
  br label %bb.n

bb.h:                                             ; preds = %bb.f
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.145, i32 noundef %i.n) ; 0 uses
  br label %bb.m

.thread:                                          ; preds = %bb.a, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !21   ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph.i, label %find_atom.exit.thread

.lr.ph.i:                                         ; preds = %.thread
  %i.u = load ptr, ptr %0, align 8, !tbaa !22
  %wide.trip.count.i = zext nneg i32 %i.s to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.j ] ; 2 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %indvars.iv.i ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !24
  %i.x = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.w) #24
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %find_atom.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %find_atom.exit.thread, label %bb.i, !llvm.loop !0

find_atom.exit.thread:                            ; preds = %bb.j, %.thread
  %i.y = load ptr, ptr @stderr, align 8, !tbaa !18
end_hunk_0
