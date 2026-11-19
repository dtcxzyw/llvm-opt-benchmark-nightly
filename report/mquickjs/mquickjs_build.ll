Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mquickjs/original/mquickjs_build?download=true
inline.NumInlined: 26
inline.NumDeleted: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@add_cfunc:bb.a
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
  %i.n = phi i32 [ %i.c, %._crit_edge ], [ %.pre, %define_value.exit ]
  %.0123 = phi i32 [ 0, %._crit_edge ], [ %5, %define_value.exit ] ; 2 uses
  %.1117 = phi ptr [ %spec.store.select, %._crit_edge ], [ %i.bt, %define_value.exit ] ; 10 uses
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
  %4 = zext nneg i32 %.0123 to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %4
  store i32 %.1.i, ptr %i.bs, align 4, !tbaa !14
  %i.bt = getelementptr inbounds nuw i8, ptr %.1117, i64 48 ; 2 uses
  %5 = add nuw nsw i32 %.0123, 1
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
  %.0113 = phi i32 [ %i.cl, %bb.v ], [ %i.cf, %bb.u ] ; 8 uses
  %i.cm = add nsw i32 %.0113, -1                  ; 2 uses
  %i.cn = shl nuw nsw i32 %.0113, 2
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = tail call noalias ptr @malloc(i64 noundef %i.co) #29 ; 4 uses
  %i.cq = tail call noalias ptr @malloc(i64 noundef %i.j) #29 ; 2 uses
  %.not167 = icmp eq i32 %.0113, 0                ; 2 uses
  br i1 %.not167, label %.preheader, label %.lr.ph149.preheader

.lr.ph149.preheader:                              ; preds = %bb.w
  %i.cr = shl nuw nsw i32 %.0113, 2
  %i.cs = zext nneg i32 %i.cr to i64
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cp, i8 0, i64 range(i64 0, 509) %i.cs, i1 false), !tbaa !14
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph149.preheader, %bb.w
  %.not168 = icmp eq i32 %spec.select, 0
  br i1 %.not168, label %._crit_edge154, label %.lr.ph153

.lr.ph153:                                        ; preds = %.preheader
  %.str.86..str.85 = select i1 %i.bu, ptr @.str.86, ptr @.str.85
  %i.ct = add nuw nsw i32 %.0113, 2
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph153, %bb.z
  %indvars.iv175.a = phi i64 [ 0, %.lr.ph153 ], [ %indvars.iv.next176.a, %bb.z ] ; 3 uses
  %.2152 = phi ptr [ %spec.store.select, %.lr.ph153 ], [ %i.dk, %bb.z ] ; 3 uses
  %i.cu = load i32, ptr %.2152, align 8, !tbaa !33
  %.not131 = icmp eq i32 %i.cu, 0
  br i1 %.not131, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cv = getelementptr inbounds nuw i8, ptr %.2152, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !34
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.0112 = phi ptr [ %i.cw, %bb.y ], [ %.str.86..str.85, %bb.x ]
  %i.cx = tail call fastcc i32 @dump_atom(ptr noundef nonnull readonly %0, ptr noundef %.0112, i32 noundef 1) ; 2 uses
  %i.cy = load i32, ptr @JSW, align 4, !tbaa !14  ; 2 uses
  %i.cz = udiv i32 %i.cx, %i.cy
  %i.da = urem i32 %i.cx, %i.cy
  %i.db = xor i32 %i.da, %i.cz
  %i.dc = and i32 %i.db, %i.cm
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.dd ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !14
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv175.a
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !14
  %i.dh = trunc i64 %indvars.iv175.a to i32
  %i.di = mul i32 %i.dh, 3
  %i.dj = add i32 %i.di, %i.ct
  store i32 %i.dj, ptr %i.de, align 4, !tbaa !14
  %indvars.iv.next176.a = add nuw nsw i64 %indvars.iv175.a, 1 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.2152, i64 48
  %exitcond.not = icmp eq i64 %indvars.iv.next176.a, %i.i
  br i1 %exitcond.not, label %._crit_edge154, label %bb.x, !llvm.loop !95

._crit_edge154:                                   ; preds = %bb.z, %.preheader
  %i.dl = load i32, ptr %i.m, align 8, !tbaa !41  ; 2 uses
  %i.dm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.110, i32 noundef %i.dl) ; 0 uses
  %i.dn = mul nuw nsw i32 %spec.select, 3         ; 2 uses
  %i.do = add nuw i32 %i.dn, 2
  %i.dp = add nuw i32 %i.do, %.0113
  %i.dq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.106, i32 noundef %i.dp) ; 0 uses
  %i.dr = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.111, i32 noundef %spec.select) ; 0 uses
  %i.ds = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.112, i32 noundef %i.cm) ; 0 uses
  br i1 %.not167, label %._crit_edge158, label %.lr.ph157.preheader

.lr.ph157.preheader:                              ; preds = %._crit_edge154
  %wide.trip.count183 = zext nneg i32 %.0113 to i64
  br label %.lr.ph157

.lr.ph157:                                        ; preds = %.lr.ph157.preheader, %.lr.ph157
  %indvars.iv180.a = phi i64 [ 0, %.lr.ph157.preheader ], [ %indvars.iv.next181.a, %.lr.ph157 ] ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv180.a
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !14
  %i.dv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.113, i32 noundef %i.du) ; 0 uses
  %indvars.iv.next181.a = add nuw nsw i64 %indvars.iv180.a, 1 ; 2 uses
  %exitcond184.not = icmp eq i64 %indvars.iv.next181.a, %wide.trip.count183
  br i1 %exitcond184.not, label %._crit_edge158, label %.lr.ph157, !llvm.loop !96

._crit_edge158:                                   ; preds = %.lr.ph157, %._crit_edge154
  %i.dw = load i32, ptr %i.m, align 8, !tbaa !41
  %i.dx = add nuw i32 %i.dn, 3
  %i.dy = add nuw i32 %i.dx, %.0113
  %i.dz = add i32 %i.dy, %i.dw
  store i32 %i.dz, ptr %i.m, align 8, !tbaa !41
  tail call void @free(ptr noundef %i.cp) #23
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge158, %bb.t
  %.0122 = phi i32 [ %i.bv, %bb.t ], [ %i.dl, %._crit_edge158 ]
  %.0115 = phi ptr [ null, %bb.t ], [ %i.cq, %._crit_edge158 ] ; 2 uses
  %.not170 = icmp eq i32 %spec.select, 0
  br i1 %.not170, label %._crit_edge166, label %.lr.ph165

.lr.ph165:                                        ; preds = %bb.aa
  %.str.86..str.85136 = select i1 %i.bu, ptr @.str.86, ptr @.str.85
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph165, %bb.aw
  %indvars.iv185 = phi i64 [ 0, %.lr.ph165 ], [ %indvars.iv.next186, %bb.aw ] ; 4 uses
  %.3163 = phi ptr [ %spec.store.select, %.lr.ph165 ], [ %i.fr, %bb.aw ] ; 11 uses
  %i.ea = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.114) ; 0 uses
  %i.eb = load i32, ptr %.3163, align 8, !tbaa !33
  %.not132 = icmp eq i32 %i.eb, 0
  br i1 %.not132, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ec = getelementptr inbounds nuw i8, ptr %.3163, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !34
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %.0111 = phi ptr [ %i.ed, %bb.ac ], [ %.str.86..str.85136, %bb.ab ]
  %i.ee = tail call fastcc i32 @dump_atom(ptr noundef %0, ptr noundef %.0111, i32 noundef 0) ; 0 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  %i.ef = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.114) ; 0 uses
  %i.eg = load i32, ptr %.3163, align 8, !tbaa !33
  switch i32 %i.eg, label %bb.at [
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
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv185
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !14
  %i.ej = icmp sgt i32 %i.ei, -1
  br i1 %i.ej, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ek = getelementptr inbounds nuw i8, ptr %.3163, i64 16
  %i.el = load double, ptr %i.ek, align 8, !tbaa !25
  %i.em = fptosi double %i.el to i32
  %i.en = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.117, i32 noundef %i.em) ; 0 uses
  br label %bb.au

bb.ag:                                            ; preds = %bb.ad
  br i1 %i.b, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.eo = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite134 = tail call i64 @fwrite(ptr nonnull @.str.118, i64 41, i64 1, ptr %i.eo) #27 ; 0 uses
  tail call void @exit(i32 noundef 1) #28
  unreachable

bb.ai:                                            ; preds = %bb.ad
  br i1 %i.b, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ep = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite133 = tail call i64 @fwrite(ptr nonnull @.str.120, i64 47, i64 1, ptr %i.ep) #27 ; 0 uses
  tail call void @exit(i32 noundef 1) #28
  unreachable

bb.ak:                                            ; preds = %bb.ag, %bb.ai, %bb.ae
end_hunk_0
