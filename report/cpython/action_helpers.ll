Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/action_helpers?download=true
inline.NumInlined: 84
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_PyPegen_concatenate_strings:bb.a
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !27
  %i.dd = tail call i32 @_PyArena_AddPyObject(ptr noundef %i.dc, ptr noundef nonnull %i.cz) #14
  %i.de = icmp slt i32 %i.dd, 0
  br i1 %i.de, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.df = load i32, ptr %i.cz, align 8, !tbaa !34 ; 2 uses
  %.not.i.i49 = icmp sgt i32 %i.df, -1
  br i1 %.not.i.i49, label %bb.ag, label %_build_concatenated_bytes.exit

bb.ag:                                            ; preds = %bb.af
  %i.dg = add nsw i32 %i.df, -1                   ; 2 uses
  store i32 %i.dg, ptr %i.cz, align 8, !tbaa !34
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.ah, label %_build_concatenated_bytes.exit

bb.ah:                                            ; preds = %bb.ag
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.cz) #14
  br label %_build_concatenated_bytes.exit

bb.ai:                                            ; preds = %bb.ae
  %i.di = tail call ptr @_PyAST_Constant(ptr noundef nonnull %i.cz, ptr noundef %i.cq, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) #14
  br label %_build_concatenated_bytes.exit

bb.aj:                                            ; preds = %bb.m
  %i.dj = tail call fastcc ptr @_build_concatenated_str(ptr noundef readonly %0, ptr noundef nonnull readonly %1)
  %i.dk = getelementptr i8, ptr %0, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !27
  %i.dm = tail call ptr @_PyAST_JoinedStr(ptr noundef %i.dj, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %i.dl) #14
  br label %_build_concatenated_bytes.exit

_build_concatenated_bytes.exit:                   ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %.critedge36.i, %bb.ad, %.thread88, %bb.ab, %bb.aa, %bb.z, %bb.y, %._crit_edge72.i, %._crit_edge.i, %.thread62.i, %bb.aj, %bb.o, %bb.l
  %.046 = phi ptr [ null, %bb.l ], [ %i.dm, %bb.aj ], [ %i.ai, %bb.o ], [ null, %bb.aa ], [ null, %.thread62.i ], [ null, %._crit_edge.i ], [ %i.ck, %bb.ab ], [ null, %._crit_edge72.i ], [ null, %bb.y ], [ null, %bb.z ], [ null, %bb.ad ], [ null, %.thread88 ], [ %i.di, %bb.ai ], [ null, %.critedge36.i ], [ null, %bb.af ], [ null, %bb.ag ], [ null, %bb.ah ]
  ret ptr %.046
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_get_expr_name(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !50     ; 2 uses
  switch i32 %i.a, label %bb.aa [
    i32 23, label %bb.ab
    i32 24, label %bb.b
    i32 25, label %bb.c
    i32 26, label %bb.d
    i32 27, label %bb.e
    i32 28, label %bb.f
    i32 5, label %bb.g
    i32 17, label %bb.h
    i32 1, label %bb.i
    i32 3, label %bb.i
    i32 4, label %bb.i
    i32 12, label %bb.j
    i32 14, label %bb.k
    i32 15, label %bb.k
    i32 13, label %bb.l
    i32 9, label %bb.m
    i32 10, label %bb.n
    i32 11, label %bb.o
    i32 7, label %bb.p
    i32 8, label %bb.q
    i32 20, label %bb.r
    i32 18, label %bb.r
    i32 21, label %bb.s
    i32 19, label %bb.s
    i32 22, label %bb.t
    i32 16, label %bb.x
    i32 6, label %bb.y
    i32 2, label %bb.z
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  br label %bb.ab

bb.d:                                             ; preds = %bb.a
  br label %bb.ab

bb.e:                                             ; preds = %bb.a
  br label %bb.ab

bb.f:                                             ; preds = %bb.a
  br label %bb.ab

bb.g:                                             ; preds = %bb.a
  br label %bb.ab

bb.h:                                             ; preds = %bb.a
  br label %bb.ab

bb.i:                                             ; preds = %bb.a, %bb.a, %bb.a
  br label %bb.ab

bb.j:                                             ; preds = %bb.a
  br label %bb.ab

bb.k:                                             ; preds = %bb.a, %bb.a
  br label %bb.ab

bb.l:                                             ; preds = %bb.a
  br label %bb.ab

bb.m:                                             ; preds = %bb.a
  br label %bb.ab

bb.n:                                             ; preds = %bb.a
  br label %bb.ab

bb.o:                                             ; preds = %bb.a
  br label %bb.ab

bb.p:                                             ; preds = %bb.a
  br label %bb.ab

bb.q:                                             ; preds = %bb.a
  br label %bb.ab

bb.r:                                             ; preds = %bb.a, %bb.a
  br label %bb.ab

bb.s:                                             ; preds = %bb.a, %bb.a
  br label %bb.ab

bb.t:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 4 uses
  %i.d = icmp eq ptr %i.c, @_Py_NoneStruct
  br i1 %i.d, label %bb.ab, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.e = icmp eq ptr %i.c, @_Py_FalseStruct
  br i1 %i.e, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.f = icmp eq ptr %i.c, @_Py_TrueStruct
  br i1 %i.f, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.g = icmp eq ptr %i.c, @_Py_EllipsisObject
  %.str.34..str.35 = select i1 %i.g, ptr @.str.34, ptr @.str.35
  br label %bb.ab

bb.x:                                             ; preds = %bb.a
  br label %bb.ab

bb.y:                                             ; preds = %bb.a
  br label %bb.ab

bb.z:                                             ; preds = %bb.a
  br label %bb.ab

bb.aa:                                            ; preds = %bb.a
  %i.h = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !35
  %i.i = getelementptr i8, ptr %0, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !37
  %i.k = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.h, ptr noundef nonnull @.str.39, i32 noundef %i.a, i32 noundef %i.j) #14 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.t, %bb.u, %bb.v, %bb.w, %bb.a, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.1 = phi ptr [ null, %bb.aa ], [ @.str.38, %bb.z ], [ @.str.13, %bb.b ], [ @.str.14, %bb.c ], [ @.str.15, %bb.d ], [ @.str.16, %bb.e ], [ @.str.17, %bb.f ], [ @.str.18, %bb.g ], [ @.str.19, %bb.h ], [ @.str.20, %bb.i ], [ @.str.21, %bb.j ], [ @.str.22, %bb.k ], [ @.str.23, %bb.l ], [ @.str.24, %bb.m ], [ @.str.25, %bb.n ], [ @.str.26, %bb.o ], [ @.str.27, %bb.p ], [ @.str.28, %bb.q ], [ @.str.29, %bb.r ], [ @.str.30, %bb.s ], [ @.str.12, %bb.a ], [ @.str.36, %bb.x ], [ @.str.37, %bb.y ], [ @.str.33, %bb.v ], [ @.str.31, %bb.t ], [ @.str.32, %bb.u ], [ %.str.34..str.35, %bb.w ]
  ret ptr %.1
}

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @_PyPegen_get_last_comprehension_item(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !44   ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_PyPegen_seq_last_item.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %0, i64 8
  br label %bb.d

_PyPegen_seq_last_item.exit:                      ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29
  %i.i = getelementptr [8 x i8], ptr %i.h, i64 %i.d
  %i.j = getelementptr i8, ptr %i.i, i64 -8
  br label %bb.d

bb.d:                                             ; preds = %_PyPegen_seq_last_item.exit, %bb.c
  %.0.in = phi ptr [ %i.f, %bb.c ], [ %i.j, %_PyPegen_seq_last_item.exit ]
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !30
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_collect_call_seqs(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #1 {
bb.a:
  %8 = ptrtoaddr ptr %1 to i64
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !44
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]    ; 19 uses
  %i.d = icmp eq ptr %2, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @_PyAST_Call(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2432), ptr noundef %1, ptr noundef null, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) #14
  br label %bb.aa

bb.e:                                             ; preds = %bb.c
  %i.f = load i64, ptr %2, align 8, !tbaa !31     ; 6 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %.lr.ph.i.i, label %.split21.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.h = getelementptr i8, ptr %2, i64 8          ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29   ; 5 uses
  %xtraiter = and i64 %i.f, 3                     ; 3 uses
  %i.j = icmp ult i64 %i.f, 4
  br i1 %i.j, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %i.f, 9223372036854775804
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.new
  %.012.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.ah, %bb.f ] ; 5 uses
  %.0911.i.i = phi i32 [ 0, %.lr.ph.i.i.new ], [ %spec.select.i.i.3, %bb.f ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.3, %bb.f ]
  %i.k = getelementptr [8 x i8], ptr %i.i, i64 %.012.i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !30
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !77
  %.not.i.i = icmp eq i32 %i.n, 0
  %i.o = zext i1 %.not.i.i to i32
  %spec.select.i.i = add i32 %.0911.i.i, %i.o
  %i.p = getelementptr [8 x i8], ptr %i.i, i64 %.012.i.i
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !30
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !77
  %.not.i.i.1 = icmp eq i32 %i.t, 0
  %i.u = zext i1 %.not.i.i.1 to i32
  %spec.select.i.i.1 = add i32 %spec.select.i.i, %i.u
  %i.v = getelementptr [8 x i8], ptr %i.i, i64 %.012.i.i
  %i.w = getelementptr i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !30
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !77
  %.not.i.i.2 = icmp eq i32 %i.z, 0
  %i.aa = zext i1 %.not.i.i.2 to i32
  %spec.select.i.i.2 = add i32 %spec.select.i.i.1, %i.aa
  %i.ab = getelementptr [8 x i8], ptr %i.i, i64 %.012.i.i
  %i.ac = getelementptr i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !30
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !77
  %.not.i.i.3 = icmp eq i32 %i.af, 0
  %i.ag = zext i1 %.not.i.i.3 to i32
  %spec.select.i.i.3 = add i32 %spec.select.i.i.2, %i.ag ; 3 uses
  %i.ah = add nuw nsw i64 %.012.i.i, 4            ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_seq_number_of_starred_exprs.exit.i.unr-lcssa, label %bb.f, !llvm.loop !2

_seq_number_of_starred_exprs.exit.i.unr-lcssa:    ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_seq_number_of_starred_exprs.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_seq_number_of_starred_exprs.exit.i.unr-lcssa, %.lr.ph.i.i
  %.012.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ah, %_seq_number_of_starred_exprs.exit.i.unr-lcssa ]
  %.0911.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.3, %_seq_number_of_starred_exprs.exit.i.unr-lcssa ]
  %lcmp.mod103 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod103)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %.012.i.i.epil = phi i64 [ %.012.i.i.epil.init, %.epil.preheader ], [ %i.an, %bb.g ] ; 2 uses
  %.0911.i.i.epil = phi i32 [ %.0911.i.i.epil.init, %.epil.preheader ], [ %spec.select.i.i.epil, %bb.g ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.ai = getelementptr [8 x i8], ptr %i.i, i64 %.012.i.i.epil
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !30
  %i.ak = getelementptr i8, ptr %i.aj, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !77
  %.not.i.i.epil = icmp eq i32 %i.al, 0
  %i.am = zext i1 %.not.i.i.epil to i32
  %spec.select.i.i.epil = add i32 %.0911.i.i.epil, %i.am ; 2 uses
  %i.an = add nuw nsw i64 %.012.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_seq_number_of_starred_exprs.exit.i, label %bb.g, !llvm.loop !184

_seq_number_of_starred_exprs.exit.i:              ; preds = %bb.g, %_seq_number_of_starred_exprs.exit.i.unr-lcssa
  %spec.select.i.i.lcssa = phi i32 [ %spec.select.i.i.3, %_seq_number_of_starred_exprs.exit.i.unr-lcssa ], [ %spec.select.i.i.epil, %bb.g ] ; 2 uses
  %i.ao = icmp eq i32 %spec.select.i.i.lcssa, 0
  br i1 %i.ao, label %.lr.ph.i.i56, label %bb.h

bb.h:                                             ; preds = %_seq_number_of_starred_exprs.exit.i
  %i.ap = sext i32 %spec.select.i.i.lcssa to i64
  %i.aq = getelementptr i8, ptr %0, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !27
  %i.as = tail call ptr @_Py_asdl_expr_seq_new(i64 noundef %i.ap, ptr noundef %i.ar) #14 ; 5 uses
  %.not.i = icmp eq ptr %i.as, null
  %.pr.pre = load i64, ptr %2, align 8, !tbaa !31 ; 9 uses
  br i1 %.not.i, label %_PyPegen_seq_extract_starred_exprs.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = icmp sgt i64 %.pr.pre, 0
  br i1 %i.at, label %.lr.ph.i, label %.split21.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.au = load ptr, ptr %i.h, align 8, !tbaa !29  ; 3 uses
  %i.av = getelementptr i8, ptr %i.as, i64 16     ; 3 uses
  %xtraiter105 = and i64 %.pr.pre, 1
  %i.aw = icmp eq i64 %.pr.pre, 1
  br i1 %i.aw, label %.epil.preheader104, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter109 = and i64 %.pr.pre, 9223372036854775806
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %.lr.ph.i.new
  %.026.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.bo, %bb.n ] ; 3 uses
  %.01725.i = phi i32 [ 0, %.lr.ph.i.new ], [ %.1.i.1, %bb.n ] ; 3 uses
  %niter110 = phi i64 [ 0, %.lr.ph.i.new ], [ %niter110.next.1, %bb.n ]
  %i.ax = getelementptr [8 x i8], ptr %i.au, i64 %.026.i
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !30 ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !77
  %.not23.i = icmp eq i32 %i.ba, 0
  br i1 %.not23.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bb = load ptr, ptr %i.ay, align 8, !tbaa !76
  %i.bc = add i32 %.01725.i, 1
  %i.bd = sext i32 %.01725.i to i64
  %i.be = getelementptr [8 x i8], ptr %i.av, i64 %i.bd
  store ptr %i.bb, ptr %i.be, align 8, !tbaa !46
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1.i = phi i32 [ %.01725.i, %bb.j ], [ %i.bc, %bb.k ] ; 3 uses
  %i.bf = getelementptr [8 x i8], ptr %i.au, i64 %.026.i
  %i.bg = getelementptr i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !30 ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !77
  %.not23.i.1 = icmp eq i32 %i.bj, 0
  br i1 %.not23.i.1, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bk = load ptr, ptr %i.bh, align 8, !tbaa !76
  %i.bl = add i32 %.1.i, 1
  %i.bm = sext i32 %.1.i to i64
  %i.bn = getelementptr [8 x i8], ptr %i.av, i64 %i.bm
  store ptr %i.bk, ptr %i.bn, align 8, !tbaa !46
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1.i.1 = phi i32 [ %.1.i, %bb.l ], [ %i.bl, %bb.m ] ; 2 uses
  %i.bo = add nuw nsw i64 %.026.i, 2              ; 2 uses
  %niter110.next.1 = add nuw nsw i64 %niter110, 2 ; 2 uses
  %niter110.ncmp.1 = icmp eq i64 %niter110.next.1, %unroll_iter109
  br i1 %niter110.ncmp.1, label %_PyPegen_seq_extract_starred_exprs.exit.loopexit.unr-lcssa, label %bb.j, !llvm.loop !3

_PyPegen_seq_extract_starred_exprs.exit.loopexit.unr-lcssa: ; preds = %bb.n
  %lcmp.mod107.not = icmp eq i64 %xtraiter105, 0
  br i1 %lcmp.mod107.not, label %_PyPegen_seq_extract_starred_exprs.exit, label %.epil.preheader104

.epil.preheader104:                               ; preds = %_PyPegen_seq_extract_starred_exprs.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.026.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.bo, %_PyPegen_seq_extract_starred_exprs.exit.loopexit.unr-lcssa ]
  %.01725.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %.1.i.1, %_PyPegen_seq_extract_starred_exprs.exit.loopexit.unr-lcssa ]
  %lcmp.mod108 = trunc i64 %.pr.pre to i1
  tail call void @llvm.assume(i1 %lcmp.mod108)
  %i.bp = getelementptr [8 x i8], ptr %i.au, i64 %.026.i.epil.init
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !30 ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !77
  %.not23.i.epil = icmp eq i32 %i.bs, 0
  br i1 %.not23.i.epil, label %bb.o, label %_PyPegen_seq_extract_starred_exprs.exit

bb.o:                                             ; preds = %.epil.preheader104
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !76
  %i.bu = sext i32 %.01725.i.epil.init to i64
  %i.bv = getelementptr [8 x i8], ptr %i.av, i64 %i.bu
  store ptr %i.bt, ptr %i.bv, align 8, !tbaa !46
  br label %_PyPegen_seq_extract_starred_exprs.exit

_PyPegen_seq_extract_starred_exprs.exit:          ; preds = %_PyPegen_seq_extract_starred_exprs.exit.loopexit.unr-lcssa, %bb.o, %.epil.preheader104, %bb.h
  %i.bw = icmp sgt i64 %.pr.pre, 0
  br i1 %i.bw, label %.lr.ph.i.i56, label %.split21.i

.lr.ph.i.i56:                                     ; preds = %_seq_number_of_starred_exprs.exit.i, %_PyPegen_seq_extract_starred_exprs.exit
  %.119.i.ph85 = phi ptr [ %i.as, %_PyPegen_seq_extract_starred_exprs.exit ], [ null, %_seq_number_of_starred_exprs.exit.i ]
  %.pr84 = phi i64 [ %.pr.pre, %_PyPegen_seq_extract_starred_exprs.exit ], [ %i.f, %_seq_number_of_starred_exprs.exit.i ] ; 4 uses
  %i.bx = load ptr, ptr %i.h, align 8, !tbaa !29  ; 5 uses
  %xtraiter112 = and i64 %.pr84, 3                ; 3 uses
  %i.by = icmp ult i64 %.pr84, 4
  br i1 %i.by, label %.epil.preheader111, label %.lr.ph.i.i56.new

.lr.ph.i.i56.new:                                 ; preds = %.lr.ph.i.i56
  %unroll_iter117 = and i64 %.pr84, 9223372036854775804
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i56.new
  %.012.i.i57 = phi i64 [ 0, %.lr.ph.i.i56.new ], [ %i.cw, %bb.p ] ; 5 uses
  %.0911.i.i58 = phi i32 [ 0, %.lr.ph.i.i56.new ], [ %spec.select.i.i60.3, %bb.p ]
  %niter118 = phi i64 [ 0, %.lr.ph.i.i56.new ], [ %niter118.next.3, %bb.p ]
  %i.bz = getelementptr [8 x i8], ptr %i.bx, i64 %.012.i.i57
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !30
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !77
  %.not.i.i59 = icmp eq i32 %i.cc, 0
  %i.cd = zext i1 %.not.i.i59 to i32
  %spec.select.i.i60 = add i32 %.0911.i.i58, %i.cd
  %i.ce = getelementptr [8 x i8], ptr %i.bx, i64 %.012.i.i57
  %i.cf = getelementptr i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !30
  %i.ch = getelementptr i8, ptr %i.cg, i64 8
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !77
  %.not.i.i59.1 = icmp eq i32 %i.ci, 0
  %i.cj = zext i1 %.not.i.i59.1 to i32
  %spec.select.i.i60.1 = add i32 %spec.select.i.i60, %i.cj
  %i.ck = getelementptr [8 x i8], ptr %i.bx, i64 %.012.i.i57
  %i.cl = getelementptr i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !30
  %i.cn = getelementptr i8, ptr %i.cm, i64 8
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !77
  %.not.i.i59.2 = icmp eq i32 %i.co, 0
  %i.cp = zext i1 %.not.i.i59.2 to i32
  %spec.select.i.i60.2 = add i32 %spec.select.i.i60.1, %i.cp
  %i.cq = getelementptr [8 x i8], ptr %i.bx, i64 %.012.i.i57
  %i.cr = getelementptr i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !30
  %i.ct = getelementptr i8, ptr %i.cs, i64 8
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !77
  %.not.i.i59.3 = icmp eq i32 %i.cu, 0
  %i.cv = zext i1 %.not.i.i59.3 to i32
  %spec.select.i.i60.3 = add i32 %spec.select.i.i60.2, %i.cv ; 3 uses
  %i.cw = add nuw nsw i64 %.012.i.i57, 4          ; 2 uses
  %niter118.next.3 = add i64 %niter118, 4         ; 2 uses
  %niter118.ncmp.3 = icmp eq i64 %niter118.next.3, %unroll_iter117
  br i1 %niter118.ncmp.3, label %.split21.loopexit.i.unr-lcssa, label %bb.p, !llvm.loop !2

.split21.loopexit.i.unr-lcssa:                    ; preds = %bb.p
  %lcmp.mod114.not = icmp eq i64 %xtraiter112, 0
  br i1 %lcmp.mod114.not, label %.split21.loopexit.i, label %.epil.preheader111

.epil.preheader111:                               ; preds = %.split21.loopexit.i.unr-lcssa, %.lr.ph.i.i56
  %.012.i.i57.epil.init = phi i64 [ 0, %.lr.ph.i.i56 ], [ %i.cw, %.split21.loopexit.i.unr-lcssa ]
  %.0911.i.i58.epil.init = phi i32 [ 0, %.lr.ph.i.i56 ], [ %spec.select.i.i60.3, %.split21.loopexit.i.unr-lcssa ]
  %lcmp.mod116 = icmp ne i64 %xtraiter112, 0
  tail call void @llvm.assume(i1 %lcmp.mod116)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader111
  %.012.i.i57.epil = phi i64 [ %.012.i.i57.epil.init, %.epil.preheader111 ], [ %i.dc, %bb.q ] ; 2 uses
  %.0911.i.i58.epil = phi i32 [ %.0911.i.i58.epil.init, %.epil.preheader111 ], [ %spec.select.i.i60.epil, %bb.q ]
  %epil.iter113 = phi i64 [ 0, %.epil.preheader111 ], [ %epil.iter113.next, %bb.q ]
  %i.cx = getelementptr [8 x i8], ptr %i.bx, i64 %.012.i.i57.epil
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !30
  %i.cz = getelementptr i8, ptr %i.cy, i64 8
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !77
  %.not.i.i59.epil = icmp eq i32 %i.da, 0
  %i.db = zext i1 %.not.i.i59.epil to i32
  %spec.select.i.i60.epil = add i32 %.0911.i.i58.epil, %i.db ; 2 uses
  %i.dc = add nuw nsw i64 %.012.i.i57.epil, 1
  %epil.iter113.next = add i64 %epil.iter113, 1   ; 2 uses
  %epil.iter113.cmp.not = icmp eq i64 %epil.iter113.next, %xtraiter112
  br i1 %epil.iter113.cmp.not, label %.split21.loopexit.i, label %bb.q, !llvm.loop !185

.split21.loopexit.i:                              ; preds = %bb.q, %.split21.loopexit.i.unr-lcssa
  %spec.select.i.i60.lcssa = phi i32 [ %spec.select.i.i60.3, %.split21.loopexit.i.unr-lcssa ], [ %spec.select.i.i60.epil, %bb.q ]
  %i.dd = sext i32 %spec.select.i.i60.lcssa to i64
  br label %.split21.i

.split21.i:                                       ; preds = %bb.e, %bb.i, %.split21.loopexit.i, %_PyPegen_seq_extract_starred_exprs.exit
  %.not65 = phi i1 [ false, %.split21.loopexit.i ], [ true, %_PyPegen_seq_extract_starred_exprs.exit ], [ true, %bb.i ], [ true, %bb.e ]
  %.119.i64 = phi ptr [ %.119.i.ph85, %.split21.loopexit.i ], [ %i.as, %_PyPegen_seq_extract_starred_exprs.exit ], [ %i.as, %bb.i ], [ null, %bb.e ] ; 4 uses
  %i.de = phi i64 [ %.pr84, %.split21.loopexit.i ], [ %.pr.pre, %_PyPegen_seq_extract_starred_exprs.exit ], [ %.pr.pre, %bb.i ], [ %i.f, %bb.e ] ; 6 uses
  %phi.call.i = phi i64 [ %i.dd, %.split21.loopexit.i ], [ 0, %_PyPegen_seq_extract_starred_exprs.exit ], [ 0, %bb.i ], [ 0, %bb.e ] ; 2 uses
  %.119.i6488 = ptrtoaddr ptr %.119.i64 to i64
  %i.df = icmp eq i64 %i.de, %phi.call.i
  br i1 %i.df, label %_PyPegen_seq_delete_starred_exprs.exit, label %bb.r

bb.r:                                             ; preds = %.split21.i
  %i.dg = sub i64 %i.de, %phi.call.i
  %i.dh = getelementptr i8, ptr %0, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !27
  %i.dj = tail call ptr @_Py_asdl_keyword_seq_new(i64 noundef %i.dg, ptr noundef %i.di) #14 ; 6 uses
  %.not.i52 = icmp eq ptr %i.dj, null
  %brmerge = or i1 %.not65, %.not.i52
  br i1 %brmerge, label %_PyPegen_seq_delete_starred_exprs.exit, label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %bb.r
  %i.dk = getelementptr i8, ptr %2, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !29 ; 3 uses
  %i.dm = getelementptr i8, ptr %i.dj, i64 16     ; 3 uses
  %xtraiter120 = and i64 %i.de, 1
  %i.dn = icmp eq i64 %i.de, 1
  br i1 %i.dn, label %.epil.preheader119, label %.lr.ph.i53.new

.lr.ph.i53.new:                                   ; preds = %.lr.ph.i53
  %unroll_iter124 = and i64 %i.de, -2
  br label %bb.s

bb.s:                                             ; preds = %bb.w, %.lr.ph.i53.new
  %.027.i = phi i64 [ 0, %.lr.ph.i53.new ], [ %i.ef, %bb.w ] ; 3 uses
  %.01826.i = phi i32 [ 0, %.lr.ph.i53.new ], [ %.1.i54.1, %bb.w ] ; 3 uses
  %niter125 = phi i64 [ 0, %.lr.ph.i53.new ], [ %niter125.next.1, %bb.w ]
  %i.do = getelementptr [8 x i8], ptr %i.dl, i64 %.027.i
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !30 ; 2 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 8
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !77
  %.not25.i = icmp eq i32 %i.dr, 0
  br i1 %.not25.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ds = load ptr, ptr %i.dp, align 8, !tbaa !76
  %i.dt = add i32 %.01826.i, 1
  %i.du = sext i32 %.01826.i to i64
  %i.dv = getelementptr [8 x i8], ptr %i.dm, i64 %i.du
  store ptr %i.ds, ptr %i.dv, align 8, !tbaa !79
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.1.i54 = phi i32 [ %i.dt, %bb.t ], [ %.01826.i, %bb.s ] ; 3 uses
  %i.dw = getelementptr [8 x i8], ptr %i.dl, i64 %.027.i
  %i.dx = getelementptr i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !30 ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 8
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !77
  %.not25.i.1 = icmp eq i32 %i.ea, 0
  br i1 %.not25.i.1, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eb = load ptr, ptr %i.dy, align 8, !tbaa !76
  %i.ec = add i32 %.1.i54, 1
  %i.ed = sext i32 %.1.i54 to i64
  %i.ee = getelementptr [8 x i8], ptr %i.dm, i64 %i.ed
  store ptr %i.eb, ptr %i.ee, align 8, !tbaa !79
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.1.i54.1 = phi i32 [ %i.ec, %bb.v ], [ %.1.i54, %bb.u ] ; 2 uses
  %i.ef = add nuw nsw i64 %.027.i, 2              ; 2 uses
  %niter125.next.1 = add i64 %niter125, 2         ; 2 uses
  %niter125.ncmp.1 = icmp eq i64 %niter125.next.1, %unroll_iter124
  br i1 %niter125.ncmp.1, label %_PyPegen_seq_delete_starred_exprs.exit.loopexit.unr-lcssa, label %bb.s, !llvm.loop !4

_PyPegen_seq_delete_starred_exprs.exit.loopexit.unr-lcssa: ; preds = %bb.w
  %lcmp.mod122.not = icmp eq i64 %xtraiter120, 0
  br i1 %lcmp.mod122.not, label %_PyPegen_seq_delete_starred_exprs.exit, label %.epil.preheader119

.epil.preheader119:                               ; preds = %_PyPegen_seq_delete_starred_exprs.exit.loopexit.unr-lcssa, %.lr.ph.i53
  %.027.i.epil.init = phi i64 [ 0, %.lr.ph.i53 ], [ %i.ef, %_PyPegen_seq_delete_starred_exprs.exit.loopexit.unr-lcssa ]
  %.01826.i.epil.init = phi i32 [ 0, %.lr.ph.i53 ], [ %.1.i54.1, %_PyPegen_seq_delete_starred_exprs.exit.loopexit.unr-lcssa ]
  %lcmp.mod123 = trunc i64 %i.de to i1
  tail call void @llvm.assume(i1 %lcmp.mod123)
  %i.eg = getelementptr [8 x i8], ptr %i.dl, i64 %.027.i.epil.init
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !30 ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 8
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !77
  %.not25.i.epil = icmp eq i32 %i.ej, 0
  br i1 %.not25.i.epil, label %_PyPegen_seq_delete_starred_exprs.exit, label %bb.x

bb.x:                                             ; preds = %.epil.preheader119
  %i.ek = load ptr, ptr %i.eh, align 8, !tbaa !76
  %i.el = sext i32 %.01826.i.epil.init to i64
  %i.em = getelementptr [8 x i8], ptr %i.dm, i64 %i.el
  store ptr %i.ek, ptr %i.em, align 8, !tbaa !79
  br label %_PyPegen_seq_delete_starred_exprs.exit

_PyPegen_seq_delete_starred_exprs.exit:           ; preds = %_PyPegen_seq_delete_starred_exprs.exit.loopexit.unr-lcssa, %bb.x, %.epil.preheader119, %bb.r, %.split21.i
  %.120.i = phi ptr [ null, %.split21.i ], [ %i.dj, %bb.r ], [ %i.dj, %.epil.preheader119 ], [ %i.dj, %bb.x ], [ %i.dj, %_PyPegen_seq_delete_starred_exprs.exit.loopexit.unr-lcssa ]
  %.not = icmp eq ptr %.119.i64, null
  br i1 %.not, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_PyPegen_seq_delete_starred_exprs.exit
  %i.en = load i64, ptr %.119.i64, align 8, !tbaa !44
  %i.eo = add i64 %i.en, %i.c
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_PyPegen_seq_delete_starred_exprs.exit
  %.045 = phi i64 [ %i.eo, %bb.y ], [ %i.c, %_PyPegen_seq_delete_starred_exprs.exit ] ; 6 uses
  %i.ep = tail call ptr @_Py_asdl_expr_seq_new(i64 noundef %.045, ptr noundef %7) #14 ; 5 uses
  %9 = ptrtoaddr ptr %i.ep to i64                 ; 2 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %bb.aa, label %.preheader66

.preheader66:                                     ; preds = %bb.z
  %i.er = icmp sgt i64 %i.c, 0
  br i1 %i.er, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.preheader66
  %i.es = getelementptr i8, ptr %1, i64 16        ; 6 uses
  %i.et = getelementptr i8, ptr %i.ep, i64 16     ; 6 uses
  %min.iters.check = icmp ult i64 %i.c, 8
  %i.eu = sub i64 %8, %9
  %diff.check = icmp ugt i64 %i.eu, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.c, 9223372036854775804      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ev = getelementptr [8 x i8], ptr %i.es, i64 %index ; 2 uses
  %i.ew = getelementptr i8, ptr %i.ev, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ev, align 8, !tbaa !46
  %wide.load86 = load <2 x ptr>, ptr %i.ew, align 8, !tbaa !46
  %i.ex = getelementptr [8 x i8], ptr %i.et, i64 %index ; 2 uses
  %i.ey = getelementptr i8, ptr %i.ex, i64 16
  store <2 x ptr> %wide.load, ptr %i.ex, align 8, !tbaa !46
  store <2 x ptr> %wide.load86, ptr %i.ey, align 8, !tbaa !46
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ez = icmp eq i64 %index.next, %n.vec
  br i1 %i.ez, label %middle.block, label %vector.body, !llvm.loop !186

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.c, %n.vec
  br i1 %cmp.n, label %.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.067.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter126 = and i64 %i.c, 3                  ; 2 uses
  %lcmp.mod127.not = icmp eq i64 %xtraiter126, 0
  br i1 %lcmp.mod127.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.067.prol = phi i64 [ %i.fd, %scalar.ph.prol ], [ %.067.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fa = getelementptr [8 x i8], ptr %i.es, i64 %.067.prol
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !46
  %i.fc = getelementptr [8 x i8], ptr %i.et, i64 %.067.prol
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !46
  %i.fd = add nuw nsw i64 %.067.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter126
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !187

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.067.unr = phi i64 [ %.067.ph, %scalar.ph.preheader ], [ %i.fd, %scalar.ph.prol ]
  %i.fe = sub nsw i64 %.067.ph, %i.c
  %i.ff = icmp ugt i64 %i.fe, -4
  br i1 %i.ff, label %.preheader, label %scalar.ph

.preheader:                                       ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader66
  %.0.lcssa = phi i64 [ 0, %.preheader66 ], [ %i.c, %middle.block ], [ %i.c, %scalar.ph ], [ %i.c, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.fg = icmp slt i64 %.0.lcssa, %.045
  br i1 %i.fg, label %.lr.ph69, label %._crit_edge

.lr.ph69:                                         ; preds = %.preheader
  %i.fh = getelementptr i8, ptr %.119.i64, i64 16 ; 6 uses
  %i.fi = getelementptr i8, ptr %i.ep, i64 16     ; 6 uses
  %i.fj = sub i64 %.045, %.0.lcssa                ; 3 uses
  %min.iters.check91 = icmp ult i64 %i.fj, 10
  br i1 %min.iters.check91, label %scalar.ph90.preheader, label %vector.memcheck87

vector.memcheck87:                                ; preds = %.lr.ph69
  %i.fk = shl i64 %i.c, 3
  %i.fl = add i64 %i.fk, %9
  %i.fm = sub i64 %.119.i6488, %i.fl
  %diff.check89 = icmp ugt i64 %i.fm, -32
  br i1 %diff.check89, label %scalar.ph90.preheader, label %vector.ph92

vector.ph92:                                      ; preds = %vector.memcheck87
  %n.vec93 = and i64 %i.fj, -4                    ; 3 uses
  %i.fn = add i64 %.0.lcssa, %n.vec93
  br label %vector.body94

vector.body94:                                    ; preds = %vector.body94, %vector.ph92
  %index95 = phi i64 [ 0, %vector.ph92 ], [ %index.next98, %vector.body94 ] ; 2 uses
  %i.fo = add nuw i64 %.0.lcssa, %index95         ; 2 uses
  %i.fp = sub i64 %i.fo, %i.c
  %i.fq = getelementptr [8 x i8], ptr %i.fh, i64 %i.fp ; 2 uses
  %i.fr = getelementptr i8, ptr %i.fq, i64 16
  %wide.load96 = load <2 x ptr>, ptr %i.fq, align 8, !tbaa !46
  %wide.load97 = load <2 x ptr>, ptr %i.fr, align 8, !tbaa !46
  %i.fs = getelementptr [8 x i8], ptr %i.fi, i64 %i.fo ; 2 uses
  %i.ft = getelementptr i8, ptr %i.fs, i64 16
  store <2 x ptr> %wide.load96, ptr %i.fs, align 8, !tbaa !46
  store <2 x ptr> %wide.load97, ptr %i.ft, align 8, !tbaa !46
  %index.next98 = add nuw i64 %index95, 4         ; 2 uses
  %i.fu = icmp eq i64 %index.next98, %n.vec93
  br i1 %i.fu, label %middle.block99, label %vector.body94, !llvm.loop !188

middle.block99:                                   ; preds = %vector.body94
  %cmp.n100 = icmp eq i64 %i.fj, %n.vec93
  br i1 %cmp.n100, label %._crit_edge, label %scalar.ph90.preheader

scalar.ph90.preheader:                            ; preds = %vector.memcheck87, %.lr.ph69, %middle.block99
  %.168.ph = phi i64 [ %.0.lcssa, %vector.memcheck87 ], [ %.0.lcssa, %.lr.ph69 ], [ %i.fn, %middle.block99 ] ; 4 uses
  %i.fv = sub i64 %.045, %.168.ph
  %xtraiter128 = and i64 %i.fv, 3                 ; 2 uses
  %lcmp.mod129.not = icmp eq i64 %xtraiter128, 0
  br i1 %lcmp.mod129.not, label %scalar.ph90.prol.loopexit, label %scalar.ph90.prol

scalar.ph90.prol:                                 ; preds = %scalar.ph90.preheader, %scalar.ph90.prol
  %.168.prol = phi i64 [ %i.ga, %scalar.ph90.prol ], [ %.168.ph, %scalar.ph90.preheader ] ; 3 uses
  %prol.iter130 = phi i64 [ %prol.iter130.next, %scalar.ph90.prol ], [ 0, %scalar.ph90.preheader ]
  %i.fw = sub i64 %.168.prol, %i.c
  %i.fx = getelementptr [8 x i8], ptr %i.fh, i64 %i.fw
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !46
  %i.fz = getelementptr [8 x i8], ptr %i.fi, i64 %.168.prol
  store ptr %i.fy, ptr %i.fz, align 8, !tbaa !46
  %i.ga = add nuw nsw i64 %.168.prol, 1           ; 2 uses
  %prol.iter130.next = add i64 %prol.iter130, 1   ; 2 uses
  %prol.iter130.cmp.not = icmp eq i64 %prol.iter130.next, %xtraiter128
  br i1 %prol.iter130.cmp.not, label %scalar.ph90.prol.loopexit, label %scalar.ph90.prol, !llvm.loop !189

scalar.ph90.prol.loopexit:                        ; preds = %scalar.ph90.prol, %scalar.ph90.preheader
  %.168.unr = phi i64 [ %.168.ph, %scalar.ph90.preheader ], [ %i.ga, %scalar.ph90.prol ]
  %i.gb = sub i64 %.168.ph, %.045
  %i.gc = icmp ugt i64 %i.gb, -4
  br i1 %i.gc, label %._crit_edge, label %scalar.ph90

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.067 = phi i64 [ %i.gs, %scalar.ph ], [ %.067.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.gd = getelementptr [8 x i8], ptr %i.es, i64 %.067
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !46
  %i.gf = getelementptr [8 x i8], ptr %i.et, i64 %.067
  store ptr %i.ge, ptr %i.gf, align 8, !tbaa !46
  %i.gg = add nuw nsw i64 %.067, 1                ; 2 uses
  %i.gh = getelementptr [8 x i8], ptr %i.es, i64 %i.gg
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !46
  %i.gj = getelementptr [8 x i8], ptr %i.et, i64 %i.gg
  store ptr %i.gi, ptr %i.gj, align 8, !tbaa !46
  %i.gk = add nuw nsw i64 %.067, 2                ; 2 uses
  %i.gl = getelementptr [8 x i8], ptr %i.es, i64 %i.gk
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !46
  %i.gn = getelementptr [8 x i8], ptr %i.et, i64 %i.gk
  store ptr %i.gm, ptr %i.gn, align 8, !tbaa !46
  %i.go = add nuw nsw i64 %.067, 3                ; 2 uses
  %i.gp = getelementptr [8 x i8], ptr %i.es, i64 %i.go
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !46
  %i.gr = getelementptr [8 x i8], ptr %i.et, i64 %i.go
  store ptr %i.gq, ptr %i.gr, align 8, !tbaa !46
  %i.gs = add nuw nsw i64 %.067, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.gs, %i.c
  br i1 %exitcond.not.3, label %.preheader, label %scalar.ph, !llvm.loop !190

scalar.ph90:                                      ; preds = %scalar.ph90.prol.loopexit, %scalar.ph90
  %.168 = phi i64 [ %i.hm, %scalar.ph90 ], [ %.168.unr, %scalar.ph90.prol.loopexit ] ; 6 uses
  %i.gt = sub i64 %.168, %i.c
  %i.gu = getelementptr [8 x i8], ptr %i.fh, i64 %i.gt
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !46
  %i.gw = getelementptr [8 x i8], ptr %i.fi, i64 %.168
  store ptr %i.gv, ptr %i.gw, align 8, !tbaa !46
  %i.gx = add nuw nsw i64 %.168, 1                ; 2 uses
  %i.gy = sub i64 %i.gx, %i.c
  %i.gz = getelementptr [8 x i8], ptr %i.fh, i64 %i.gy
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !46
  %i.hb = getelementptr [8 x i8], ptr %i.fi, i64 %i.gx
  store ptr %i.ha, ptr %i.hb, align 8, !tbaa !46
  %i.hc = add nuw nsw i64 %.168, 2                ; 2 uses
  %i.hd = sub i64 %i.hc, %i.c
  %i.he = getelementptr [8 x i8], ptr %i.fh, i64 %i.hd
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !46
  %i.hg = getelementptr [8 x i8], ptr %i.fi, i64 %i.hc
  store ptr %i.hf, ptr %i.hg, align 8, !tbaa !46
  %i.hh = add nuw nsw i64 %.168, 3                ; 2 uses
  %i.hi = sub i64 %i.hh, %i.c
  %i.hj = getelementptr [8 x i8], ptr %i.fh, i64 %i.hi
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !46
  %i.hl = getelementptr [8 x i8], ptr %i.fi, i64 %i.hh
  store ptr %i.hk, ptr %i.hl, align 8, !tbaa !46
  %i.hm = add nuw nsw i64 %.168, 4                ; 2 uses
  %exitcond71.not.3 = icmp eq i64 %i.hm, %.045
  br i1 %exitcond71.not.3, label %._crit_edge, label %scalar.ph90, !llvm.loop !191

._crit_edge:                                      ; preds = %scalar.ph90.prol.loopexit, %scalar.ph90, %middle.block99, %.preheader
  %i.hn = tail call ptr @_PyAST_Call(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2432), ptr noundef nonnull %i.ep, ptr noundef %.120.i, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) #14
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge, %bb.z, %bb.d
  %.147 = phi ptr [ %i.e, %bb.d ], [ %i.hn, %._crit_edge ], [ null, %bb.z ]
  ret ptr %.147
}

declare ptr @_PyAST_Call(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @_PyPegen_get_invalid_target(ptr nofree noundef readonly captures(address_is_null, ret: address, provenance) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.split.us, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %tailrecurse.outer
  %.tr62.ph108 = phi i32 [ 2, %tailrecurse.outer ], [ %1, %bb.a ] ; 4 uses
  %.tr.ph107 = phi ptr [ %i.ag, %tailrecurse.outer ], [ %0, %bb.a ] ; 5 uses
  %i.b = icmp eq i32 %.tr62.ph108, 1
  br i1 %i.b, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.c = load i32, ptr %.tr.ph107, align 8, !tbaa !50
  switch i32 %i.c, label %.split.us [
    i32 27, label %.split87.us
    i32 28, label %.split91.us
    i32 23, label %.split.us.loopexit168
    i32 24, label %.split.us.loopexit168
    i32 26, label %.split.us.loopexit168
  ]

.lr.ph.split:                                     ; preds = %.lr.ph, %tailrecurse
  %.tr77 = phi ptr [ %i.x, %tailrecurse ], [ %.tr.ph107, %.lr.ph ] ; 8 uses
  %i.d = load i32, ptr %.tr77, align 8, !tbaa !50
  switch i32 %i.d, label %.split.us [
    i32 27, label %.split87.us
    i32 28, label %.split91.us
    i32 25, label %tailrecurse
    i32 16, label %.split95.us
    i32 26, label %.split.us.loopexit168
    i32 24, label %.split.us.loopexit168
    i32 23, label %.split.us.loopexit168
  ]

.split87.us:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi89 = phi ptr [ %.tr.ph107, %.lr.ph.split.us ], [ %.tr77, %.lr.ph.split ]
  %i.e = getelementptr i8, ptr %.us-phi89, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34   ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.split.us, label %bb.b

bb.b:                                             ; preds = %.split87.us
  %i.h = load i64, ptr %i.f, align 8, !tbaa !44   ; 2 uses
  %i.i = getelementptr i8, ptr %i.f, i64 16
  %.not60.not116 = icmp sgt i64 %i.h, 0
  br i1 %.not60.not116, label %.lr.ph118, label %.split.us

bb.c:                                             ; preds = %.lr.ph118
  %i.j = add nuw nsw i64 %.046117, 1              ; 2 uses
  %exitcond151.not = icmp eq i64 %i.j, %i.h
  br i1 %exitcond151.not, label %.split.us, label %.lr.ph118, !llvm.loop !192

.lr.ph118:                                        ; preds = %bb.b, %bb.c
  %.046117 = phi i64 [ %i.j, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.k = getelementptr [8 x i8], ptr %i.i, i64 %.046117
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46
  %i.m = tail call ptr @_PyPegen_get_invalid_target(ptr noundef %i.l, i32 noundef %.tr62.ph108) ; 2 uses
  %.not59 = icmp eq ptr %i.m, null
  br i1 %.not59, label %bb.c, label %.split.us

.split91.us:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi93 = phi ptr [ %.tr.ph107, %.lr.ph.split.us ], [ %.tr77, %.lr.ph.split ]
  %i.n = getelementptr i8, ptr %.us-phi93, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34   ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.split.us, label %bb.d

bb.d:                                             ; preds = %.split91.us
  %i.q = load i64, ptr %i.o, align 8, !tbaa !44   ; 2 uses
  %i.r = getelementptr i8, ptr %i.o, i64 16
  %.not58.not110 = icmp sgt i64 %i.q, 0
  br i1 %.not58.not110, label %.lr.ph112, label %.split.us

bb.e:                                             ; preds = %.lr.ph112
  %i.s = add nuw nsw i64 %.0111, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %i.q
  br i1 %exitcond.not, label %.split.us, label %.lr.ph112, !llvm.loop !193

.lr.ph112:                                        ; preds = %bb.d, %bb.e
  %.0111 = phi i64 [ %i.s, %bb.e ], [ 0, %bb.d ]  ; 2 uses
end_hunk_0
begin_hunk_1_@_PyPegen_nonparen_genexp_in_call:bb.a
  %i.j = getelementptr i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !30   ; 3 uses
  %i.n = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !35
  %i.o = getelementptr i8, ptr %i.b, i64 8
  %i.p = getelementptr [8 x i8], ptr %i.o, i64 %i.d
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !46   ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 40
  %i.s = load i32, ptr %i.r, align 8, !tbaa !37
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr i8, ptr %i.q, i64 44
  %i.v = load i32, ptr %i.u, align 4, !tbaa !38
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr i8, ptr %i.m, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !103  ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_PyPegen_get_last_comprehension_item.exit.thread19, label %bb.e

bb.e:                                             ; preds = %_PyPegen_seq_last_item.exit
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !44  ; 3 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_PyPegen_get_last_comprehension_item.exit.thread19, label %_PyPegen_seq_last_item.exit.i13

_PyPegen_get_last_comprehension_item.exit.thread19: ; preds = %bb.e, %_PyPegen_seq_last_item.exit
  %i.ac = getelementptr i8, ptr %i.m, i64 8
  %i.ad = getelementptr i8, ptr %i.m, i64 8
  br label %_PyPegen_get_last_comprehension_item.exit16

_PyPegen_seq_last_item.exit.i13:                  ; preds = %bb.e
  %i.ae = getelementptr i8, ptr %i.y, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !29 ; 2 uses
  %i.ag = getelementptr [8 x i8], ptr %i.af, i64 %i.aa
  %i.ah = getelementptr i8, ptr %i.ag, i64 -8
  %i.ai = getelementptr [8 x i8], ptr %i.af, i64 %i.aa
  %i.aj = getelementptr i8, ptr %i.ai, i64 -8
  br label %_PyPegen_get_last_comprehension_item.exit16

_PyPegen_get_last_comprehension_item.exit16:      ; preds = %_PyPegen_get_last_comprehension_item.exit.thread19, %_PyPegen_seq_last_item.exit.i13
  %.0.i18.pn27.pn.in = phi ptr [ %i.ac, %_PyPegen_get_last_comprehension_item.exit.thread19 ], [ %i.ah, %_PyPegen_seq_last_item.exit.i13 ]
  %.0.in.i14 = phi ptr [ %i.ad, %_PyPegen_get_last_comprehension_item.exit.thread19 ], [ %i.aj, %_PyPegen_seq_last_item.exit.i13 ]
  %.0.i18.pn27.pn = load ptr, ptr %.0.i18.pn27.pn.in, align 8, !tbaa !30
  %.in30.in = getelementptr i8, ptr %.0.i18.pn27.pn, i64 48
  %.in30 = load i32, ptr %.in30.in, align 8, !tbaa !39
  %i.ak = sext i32 %.in30 to i64
  %.0.i15 = load ptr, ptr %.0.in.i14, align 8, !tbaa !30
  %i.al = getelementptr i8, ptr %.0.i15, i64 52
  %i.am = load i32, ptr %i.al, align 4, !tbaa !40
  %i.an = sext i32 %i.am to i64
  tail call void (ptr, ptr, i64, i64, i64, i64, ptr, ...) @RAISE_ERROR_KNOWN_LOCATION(ptr noundef %0, ptr noundef %i.n, i64 noundef %i.t, i64 noundef %i.w, i64 noundef %i.ak, i64 noundef %i.an, ptr noundef nonnull @.str.42)
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %_PyPegen_get_last_comprehension_item.exit16
  ret ptr null
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_template_str(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc ptr @_get_resized_exprs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 1)
  %i.b = getelementptr i8, ptr %1, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !85
  %i.d = getelementptr i8, ptr %1, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !87
  %i.f = getelementptr i8, ptr %3, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !106
  %i.h = getelementptr i8, ptr %3, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !86
  %i.j = getelementptr i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.l = tail call ptr @_PyAST_TemplateStr(ptr noundef %i.a, i32 noundef %i.c, i32 noundef %i.e, i32 noundef %i.g, i32 noundef %i.i, ptr noundef %i.k) #14
  ret ptr %i.l
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_get_resized_exprs(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %2, align 8, !tbaa !44     ; 12 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr i8, ptr %2, i64 16         ; 3 uses
  %xtraiter = and i64 %i.b, 1
  %i.e = icmp eq i64 %i.b, 1
  br i1 %i.e, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.b, 9223372036854775806
  br label %bb.f

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.075110.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.at, %._crit_edge.loopexit.unr-lcssa ]
  %.076109.epil.init = phi i64 [ %i.b, %.lr.ph ], [ %.177.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod163 = trunc i64 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod163)
  %i.f = getelementptr [8 x i8], ptr %i.d, i64 %.075110.epil.init
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46   ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !50
  %i.i = icmp eq i32 %i.h, 20
  br i1 %i.i, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %.epil.preheader
  %i.j = getelementptr i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8, !tbaa !44
  %i.n = add i64 %i.m, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = phi i64 [ %i.n, %bb.d ], [ -1, %bb.c ]
  %i.p = add i64 %i.o, %.076109.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.e, %.epil.preheader, %bb.a, %bb.b
  %i.q = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ true, %.epil.preheader ], [ true, %bb.e ], [ true, %._crit_edge.loopexit.unr-lcssa ]
  %i.r = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ], [ %i.b, %.epil.preheader ], [ %i.b, %bb.e ], [ %i.b, %._crit_edge.loopexit.unr-lcssa ]
  %.076.lcssa = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ], [ %.177.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.p, %bb.e ], [ %.076109.epil.init, %.epil.preheader ] ; 2 uses
  %i.s = getelementptr i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !62
  %i.u = tail call ptr @PyBytes_AsString(ptr noundef %i.t) #14 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.thread95, label %bb.o

bb.f:                                             ; preds = %bb.n, %.lr.ph.new
  %.075110 = phi i64 [ 0, %.lr.ph.new ], [ %i.at, %bb.n ] ; 3 uses
  %.076109 = phi i64 [ %i.b, %.lr.ph.new ], [ %.177.1, %bb.n ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.n ]
  %i.w = getelementptr [8 x i8], ptr %i.d, i64 %.075110
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !46   ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !50
  %i.z = icmp eq i32 %i.y, 20
  br i1 %i.z, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr i8, ptr %i.x, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !34 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !44
  %i.ae = add i64 %i.ad, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.af = phi i64 [ %i.ae, %bb.h ], [ -1, %bb.g ]
  %i.ag = add i64 %i.af, %.076109
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %.177 = phi i64 [ %i.ag, %bb.i ], [ %.076109, %bb.f ] ; 2 uses
  %i.ah = getelementptr [8 x i8], ptr %i.d, i64 %.075110
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !46 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !50
  %i.al = icmp eq i32 %i.ak, 20
  br i1 %i.al, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr i8, ptr %i.aj, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !34 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !44
  %i.aq = add i64 %i.ap, -1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ar = phi i64 [ %i.aq, %bb.l ], [ -1, %bb.k ]
  %i.as = add i64 %i.ar, %.177
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.177.1 = phi i64 [ %i.as, %bb.m ], [ %.177, %bb.j ] ; 3 uses
  %i.at = add nuw nsw i64 %.075110, 2             ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.f, !llvm.loop !198

bb.o:                                             ; preds = %._crit_edge
  %i.au = tail call ptr @strpbrk(ptr noundef nonnull %i.u, ptr noundef nonnull @.str.48) #15
  %.not97 = icmp eq ptr %i.au, null
  %i.av = getelementptr i8, ptr %0, i64 32        ; 4 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !27
  %i.ax = tail call ptr @_Py_asdl_expr_seq_new(i64 noundef %.076.lcssa, ptr noundef %i.aw) #14 ; 5 uses
  %5 = ptrtoaddr ptr %i.ax to i64
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %.thread95, label %.preheader98

.preheader98:                                     ; preds = %bb.o
  br i1 %i.q, label %.lr.ph114, label %._crit_edge115

.lr.ph114:                                        ; preds = %.preheader98
  %i.az = getelementptr i8, ptr %2, i64 16
  %i.ba = getelementptr i8, ptr %i.ax, i64 16     ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph114, %bb.af
  %.067113 = phi i64 [ 0, %.lr.ph114 ], [ %i.dq, %bb.af ] ; 2 uses
  %.068112 = phi i64 [ 0, %.lr.ph114 ], [ %.270, %bb.af ] ; 5 uses
  %i.bb = getelementptr [8 x i8], ptr %i.az, i64 %.067113
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !46 ; 9 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !50
  switch i32 %i.bd, label %bb.ae [
    i32 20, label %bb.q
    i32 22, label %bb.t
  ]

bb.q:                                             ; preds = %bb.p
  %i.be = getelementptr i8, ptr %i.bc, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !34 ; 4 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !44
  %i.bi = icmp eq i64 %i.bh, 2
  br i1 %i.bi, label %bb.s, label %.critedge

.critedge:                                        ; preds = %bb.q, %bb.r
  %i.bj = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !35
  %.not88 = icmp eq i32 %4, 0
  %i.bk = select i1 %.not88, ptr @.str.50, ptr @.str.49
  %i.bl = getelementptr i8, ptr %i.bc, i64 40
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !37
  %i.bn = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bj, ptr noundef nonnull %i.bk, i32 noundef %i.bm) #14 ; 0 uses
  br label %.thread95

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr i8, ptr %i.bf, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !46
  %i.bq = getelementptr [8 x i8], ptr %i.ba, i64 %.068112 ; 2 uses
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !46
  %i.br = getelementptr i8, ptr %i.bf, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !46
  %i.bt = add i64 %.068112, 2
  %i.bu = getelementptr i8, ptr %i.bq, i64 8
  store ptr %i.bs, ptr %i.bu, align 8, !tbaa !46
  br label %bb.af

bb.t:                                             ; preds = %bb.p
  %i.bv = getelementptr i8, ptr %i.bc, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !34
  %i.bx = tail call ptr @PyUnicode_AsUTF8(ptr noundef %i.bw) #14 ; 9 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %.thread95, label %sub_0.i

sub_0.i:                                          ; preds = %bb.t
  %i.bz = load i8, ptr %i.bx, align 1
  switch i8 %i.bz, label %.tail26.thread.i [
    i8 123, label %sub_1.i
    i8 125, label %sub_128.i
  ]

sub_1.i:                                          ; preds = %sub_0.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  %i.cb = load i8, ptr %i.ca, align 1
  %.not32.i = icmp eq i8 %i.cb, 123
  br i1 %.not32.i, label %.tail.i, label %.tail26.thread.i

.tail.i:                                          ; preds = %sub_1.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 2
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = icmp eq i8 %i.cd, 0
  br i1 %i.ce, label %bb.u, label %.tail26.thread.i

sub_128.i:                                        ; preds = %sub_0.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  %i.cg = load i8, ptr %i.cf, align 1
  %.not34.i = icmp eq i8 %i.cg, 125
  br i1 %.not34.i, label %.tail26.i, label %.tail26.thread.i

.tail26.i:                                        ; preds = %sub_128.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 2
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = icmp eq i8 %i.ci, 0
  br i1 %i.cj, label %bb.u, label %.tail26.thread.i

.tail26.thread.i:                                 ; preds = %.tail26.i, %sub_128.i, %.tail.i, %sub_1.i, %sub_0.i
  %i.ck = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bx) #15
  br label %bb.u

bb.u:                                             ; preds = %.tail26.thread.i, %.tail26.i, %.tail.i
  %.0.i = phi i64 [ %i.ck, %.tail26.thread.i ], [ 1, %.tail26.i ], [ 1, %.tail.i ]
  br i1 %.not97, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cl = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.bx, i32 noundef 92) #15
  %i.cm = icmp eq ptr %i.cl, null
  %i.cn = zext i1 %i.cm to i32
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.co = phi i32 [ 1, %bb.u ], [ %i.cn, %bb.v ]
  %i.cp = tail call ptr @_PyPegen_decode_string(ptr noundef %0, i32 noundef %i.co, ptr noundef nonnull %i.bx, i64 noundef %.0.i, ptr noundef %3) #14 ; 6 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cr = tail call i32 @_Pypegen_raise_decode_error(ptr noundef %0) #14 ; 0 uses
  br label %.thread95

bb.y:                                             ; preds = %bb.w
  %i.cs = load ptr, ptr %i.av, align 8, !tbaa !27
  %i.ct = tail call i32 @_PyArena_AddPyObject(ptr noundef %i.cs, ptr noundef nonnull %i.cp) #14
  %i.cu = icmp slt i32 %i.ct, 0
  br i1 %i.cu, label %bb.z, label %_PyPegen_decode_fstring_part.exit

bb.z:                                             ; preds = %bb.y
  %i.cv = load i32, ptr %i.cp, align 8, !tbaa !34 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.cv, -1
  br i1 %.not.i.i, label %bb.aa, label %.thread95

bb.aa:                                            ; preds = %bb.z
  %i.cw = add nsw i32 %i.cv, -1                   ; 2 uses
  store i32 %i.cw, ptr %i.cp, align 8, !tbaa !34
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.ab, label %.thread95

bb.ab:                                            ; preds = %bb.aa
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.cp) #14
  br label %.thread95

_PyPegen_decode_fstring_part.exit:                ; preds = %bb.y
  %i.cy = getelementptr i8, ptr %i.bc, i64 40
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !37
  %i.da = getelementptr i8, ptr %i.bc, i64 44
  %i.db = load i32, ptr %i.da, align 4, !tbaa !38
  %i.dc = getelementptr i8, ptr %i.bc, i64 48
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !39
  %i.de = getelementptr i8, ptr %i.bc, i64 52
  %i.df = load i32, ptr %i.de, align 4, !tbaa !40
  %i.dg = load ptr, ptr %i.av, align 8, !tbaa !27
  %i.dh = tail call ptr @_PyAST_Constant(ptr noundef nonnull %i.cp, ptr noundef null, i32 noundef %i.cz, i32 noundef %i.db, i32 noundef %i.dd, i32 noundef %i.df, ptr noundef %i.dg) #14 ; 4 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %.thread95, label %bb.ac

bb.ac:                                            ; preds = %_PyPegen_decode_fstring_part.exit
  %i.dj = getelementptr i8, ptr %i.dh, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !34 ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 8
  %.val = load ptr, ptr %i.dl, align 8, !tbaa !82
  %.not = icmp eq ptr %.val, @PyUnicode_Type
  br i1 %.not, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dm = getelementptr i8, ptr %i.dk, i64 16
  %.val91 = load i64, ptr %i.dm, align 8, !tbaa !97
  %i.dn = icmp eq i64 %.val91, 0
  br i1 %i.dn, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.p, %bb.ac, %bb.ad
  %.066 = phi ptr [ %i.dh, %bb.ad ], [ %i.dh, %bb.ac ], [ %i.bc, %bb.p ]
  %i.do = add i64 %.068112, 1
  %i.dp = getelementptr [8 x i8], ptr %i.ba, i64 %.068112
  store ptr %.066, ptr %i.dp, align 8, !tbaa !46
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.s, %bb.ad
  %.270 = phi i64 [ %i.do, %bb.ae ], [ %i.bt, %bb.s ], [ %.068112, %bb.ad ] ; 2 uses
  %i.dq = add nuw nsw i64 %.067113, 1             ; 2 uses
  %exitcond126.not = icmp eq i64 %i.dq, %i.r
  br i1 %exitcond126.not, label %._crit_edge115, label %bb.p, !llvm.loop !199

._crit_edge115:                                   ; preds = %bb.af, %.preheader98
  %.068.lcssa = phi i64 [ 0, %.preheader98 ], [ %.270, %bb.af ] ; 9 uses
  %.not90 = icmp eq i64 %.068.lcssa, %.076.lcssa
  br i1 %.not90, label %.thread95, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge115
  %i.dr = load ptr, ptr %i.av, align 8, !tbaa !27
  %i.ds = tail call ptr @_Py_asdl_expr_seq_new(i64 noundef %.068.lcssa, ptr noundef %i.dr) #14 ; 7 uses
  %6 = ptrtoaddr ptr %i.ds to i64
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %.thread95, label %.preheader

.preheader:                                       ; preds = %bb.ag
  %i.du = icmp sgt i64 %.068.lcssa, 0
  br i1 %i.du, label %.lr.ph118, label %.thread95

.lr.ph118:                                        ; preds = %.preheader
  %i.dv = getelementptr i8, ptr %i.ax, i64 16     ; 6 uses
  %i.dw = getelementptr i8, ptr %i.ds, i64 16     ; 6 uses
  %min.iters.check = icmp ult i64 %.068.lcssa, 8
  %i.dx = sub i64 %5, %6
  %diff.check = icmp ugt i64 %i.dx, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph118
  %n.vec = and i64 %.068.lcssa, 9223372036854775804 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dy = getelementptr [8 x i8], ptr %i.dv, i64 %index ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 16
  %wide.load = load <2 x ptr>, ptr %i.dy, align 8, !tbaa !46
  %wide.load154 = load <2 x ptr>, ptr %i.dz, align 8, !tbaa !46
  %i.ea = getelementptr [8 x i8], ptr %i.dw, i64 %index ; 2 uses
  %i.eb = getelementptr i8, ptr %i.ea, i64 16
  store <2 x ptr> %wide.load, ptr %i.ea, align 8, !tbaa !46
  store <2 x ptr> %wide.load154, ptr %i.eb, align 8, !tbaa !46
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ec = icmp eq i64 %index.next, %n.vec
  br i1 %i.ec, label %middle.block, label %vector.body, !llvm.loop !200

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.068.lcssa, %n.vec
  br i1 %cmp.n, label %.thread95, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph118, %middle.block
  %.0117.ph = phi i64 [ 0, %.lr.ph118 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter164 = and i64 %.068.lcssa, 3           ; 2 uses
  %lcmp.mod165.not = icmp eq i64 %xtraiter164, 0
  br i1 %lcmp.mod165.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.0117.prol = phi i64 [ %i.eg, %scalar.ph.prol ], [ %.0117.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ed = getelementptr [8 x i8], ptr %i.dv, i64 %.0117.prol
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !46
  %i.ef = getelementptr [8 x i8], ptr %i.dw, i64 %.0117.prol
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !46
  %i.eg = add nuw nsw i64 %.0117.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter164
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !201

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0117.unr = phi i64 [ %.0117.ph, %scalar.ph.preheader ], [ %i.eg, %scalar.ph.prol ]
  %i.eh = sub nsw i64 %.0117.ph, %.068.lcssa
  %i.ei = icmp ugt i64 %i.eh, -4
  br i1 %i.ei, label %.thread95, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0117 = phi i64 [ %i.ey, %scalar.ph ], [ %.0117.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ej = getelementptr [8 x i8], ptr %i.dv, i64 %.0117
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !46
  %i.el = getelementptr [8 x i8], ptr %i.dw, i64 %.0117
  store ptr %i.ek, ptr %i.el, align 8, !tbaa !46
  %i.em = add nuw nsw i64 %.0117, 1               ; 2 uses
  %i.en = getelementptr [8 x i8], ptr %i.dv, i64 %i.em
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !46
  %i.ep = getelementptr [8 x i8], ptr %i.dw, i64 %i.em
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !46
  %i.eq = add nuw nsw i64 %.0117, 2               ; 2 uses
  %i.er = getelementptr [8 x i8], ptr %i.dv, i64 %i.eq
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !46
  %i.et = getelementptr [8 x i8], ptr %i.dw, i64 %i.eq
  store ptr %i.es, ptr %i.et, align 8, !tbaa !46
  %i.eu = add nuw nsw i64 %.0117, 3               ; 2 uses
  %i.ev = getelementptr [8 x i8], ptr %i.dv, i64 %i.eu
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !46
  %i.ex = getelementptr [8 x i8], ptr %i.dw, i64 %i.eu
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !46
  %i.ey = add nuw nsw i64 %.0117, 4               ; 2 uses
  %exitcond127.not.3 = icmp eq i64 %i.ey, %.068.lcssa
  br i1 %exitcond127.not.3, label %.thread95, label %scalar.ph, !llvm.loop !202

.thread95:                                        ; preds = %_PyPegen_decode_fstring_part.exit, %bb.t, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader, %.critedge, %bb.x, %bb.z, %bb.aa, %bb.ab, %bb.o, %bb.ag, %._crit_edge115, %._crit_edge
  %.7 = phi ptr [ null, %._crit_edge ], [ null, %bb.o ], [ %i.ax, %._crit_edge115 ], [ null, %bb.ag ], [ null, %.critedge ], [ null, %bb.ab ], [ null, %bb.aa ], [ null, %bb.z ], [ null, %bb.x ], [ %i.ds, %.preheader ], [ %i.ds, %middle.block ], [ %i.ds, %scalar.ph.prol.loopexit ], [ %i.ds, %scalar.ph ], [ null, %bb.t ], [ null, %_PyPegen_decode_fstring_part.exit ]
  ret ptr %.7
}

declare ptr @_PyAST_TemplateStr(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_joined_str(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc ptr @_get_resized_exprs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0)
  %i.b = getelementptr i8, ptr %1, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !85
  %i.d = getelementptr i8, ptr %1, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !87
  %i.f = getelementptr i8, ptr %3, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !106
  %i.h = getelementptr i8, ptr %3, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !86
  %i.j = getelementptr i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.l = tail call ptr @_PyAST_JoinedStr(ptr noundef %i.a, i32 noundef %i.c, i32 noundef %i.e, i32 noundef %i.g, i32 noundef %i.i, ptr noundef %i.k) #14
  ret ptr %i.l
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_decoded_constant_from_token(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !62
  %i.e = call i32 @PyBytes_AsStringAndSize(ptr noundef %i.d, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #14
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !88     ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 18464
  %i.i = load i32, ptr %i.h, align 8, !tbaa !91   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = zext nneg i32 %i.i to i64
  %i.l = getelementptr [104 x i8], ptr %i.g, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 2884
  %i.n = load i32, ptr %i.m, align 4, !tbaa !203
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.018 = phi i32 [ %i.n, %bb.c ], [ 0, %bb.b ]
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !204
  %i.p = load i64, ptr %i.a, align 8, !tbaa !205
  %i.q = call ptr @_PyPegen_decode_string(ptr noundef nonnull %0, i32 noundef %.018, ptr noundef %i.o, i64 noundef %i.p, ptr noundef nonnull %1) #14 ; 6 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %Py_DECREF.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !27
  %i.u = call i32 @_PyArena_AddPyObject(ptr noundef %i.t, ptr noundef nonnull %i.q) #14
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.w = load i32, ptr %i.q, align 8, !tbaa !34   ; 2 uses
  %.not.i = icmp sgt i32 %i.w, -1
  br i1 %.not.i, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %i.q, align 8, !tbaa !34
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  call void @_Py_Dealloc(ptr noundef nonnull %i.q) #14
  br label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.e
  %i.z = getelementptr i8, ptr %1, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !85
  %i.ab = getelementptr i8, ptr %1, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !87
  %i.ad = getelementptr i8, ptr %1, i64 28
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !106
  %i.af = getelementptr i8, ptr %1, i64 32
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !86
  %i.ah = load ptr, ptr %i.s, align 8, !tbaa !27
  %i.ai = call ptr @_PyAST_Constant(ptr noundef nonnull %i.q, ptr noundef null, i32 noundef %i.aa, i32 noundef %i.ac, i32 noundef %i.ae, i32 noundef %i.ag, ptr noundef %i.ah) #14
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.h, %bb.g, %bb.f, %bb.i, %bb.d, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.ai, %bb.i ], [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret ptr %.1
}

declare i32 @PyBytes_AsStringAndSize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @_PyPegen_decode_string(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @_PyAST_Constant(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_constant_from_token(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.c = tail call ptr @PyBytes_AsString(ptr noundef %i.b) #14 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyUnicode_FromString(ptr noundef nonnull %i.c) #14 ; 6 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %Py_DECREF.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27
end_hunk_1
