Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/action_helpers?download=true
inline.NumInlined: 84
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_PyPegen_seq_append_to_end:bb.a
bb.e:                                             ; preds = %bb.d
  %i.k = load i64, ptr %i.j, align 8, !tbaa !31   ; 4 uses
  %i.l = icmp sgt i64 %i.k, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.m = getelementptr i8, ptr %1, i64 8          ; 5 uses
  %i.n = getelementptr i8, ptr %i.j, i64 8        ; 5 uses
  %i.o = add nsw i64 %i.k, -1                     ; 2 uses
  %i.p = add nsw i64 %i.k, -2
  %xtraiter = and i64 %i.o, 3                     ; 3 uses
  %i.q = icmp ult i64 %i.p, 3
  br i1 %i.q, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.o, -4
  br label %bb.g

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi i64 [ 1, %.lr.ph ], [ %i.ba, %._crit_edge.loopexit.unr-lcssa ]
  %.026.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.au, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod30 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod30)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %i.r = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.x, %bb.f ] ; 2 uses
  %.026.epil = phi i64 [ %.026.epil.init, %.epil.preheader ], [ %i.r, %bb.f ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !29
  %i.t = getelementptr [8 x i8], ptr %i.s, i64 %.026.epil
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !30
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !29
  %i.w = getelementptr [8 x i8], ptr %i.v, i64 %.026.epil
  store ptr %i.u, ptr %i.w, align 8, !tbaa !30
  %i.x = add nuw nsw i64 %i.r, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.f, !llvm.loop !109

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.f, %bb.e
  %i.y = getelementptr i8, ptr %i.j, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !29
  %i.aa = getelementptr [8 x i8], ptr %i.z, i64 %i.k
  %i.ab = getelementptr i8, ptr %i.aa, i64 -8
  store ptr %2, ptr %i.ab, align 8, !tbaa !30
  br label %_PyPegen_singleton_seq.exit

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %i.ac = phi i64 [ 1, %.lr.ph.new ], [ %i.ba, %bb.g ] ; 6 uses
  %.026 = phi i64 [ 0, %.lr.ph.new ], [ %i.au, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.g ]
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !29
  %i.ae = getelementptr [8 x i8], ptr %i.ad, i64 %.026
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !30
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !29
  %i.ah = getelementptr [8 x i8], ptr %i.ag, i64 %.026
  store ptr %i.af, ptr %i.ah, align 8, !tbaa !30
  %i.ai = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %i.aj = load ptr, ptr %i.m, align 8, !tbaa !29
  %i.ak = getelementptr [8 x i8], ptr %i.aj, i64 %i.ac
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !30
  %i.am = load ptr, ptr %i.n, align 8, !tbaa !29
  %i.an = getelementptr [8 x i8], ptr %i.am, i64 %i.ac
  store ptr %i.al, ptr %i.an, align 8, !tbaa !30
  %i.ao = add nuw nsw i64 %i.ac, 2                ; 2 uses
  %i.ap = load ptr, ptr %i.m, align 8, !tbaa !29
  %i.aq = getelementptr [8 x i8], ptr %i.ap, i64 %i.ai
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !30
  %i.as = load ptr, ptr %i.n, align 8, !tbaa !29
  %i.at = getelementptr [8 x i8], ptr %i.as, i64 %i.ai
  store ptr %i.ar, ptr %i.at, align 8, !tbaa !30
  %i.au = add nuw nsw i64 %i.ac, 3                ; 2 uses
  %i.av = load ptr, ptr %i.m, align 8, !tbaa !29
  %i.aw = getelementptr [8 x i8], ptr %i.av, i64 %i.ao
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !30
  %i.ay = load ptr, ptr %i.n, align 8, !tbaa !29
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %i.ao
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !30
  %i.ba = add nuw nsw i64 %i.ac, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.g, !llvm.loop !110

_PyPegen_singleton_seq.exit:                      ; preds = %bb.c, %bb.b, %._crit_edge, %bb.d
  %.1 = phi ptr [ null, %bb.d ], [ %i.j, %._crit_edge ], [ null, %bb.b ], [ %i.c, %bb.c ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_seq_flatten(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_get_flattened_seq_size.exit.thread29, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !31     ; 5 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %_get_flattened_seq_size.exit.thread

.lr.ph.i:                                         ; preds = %bb.b
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29   ; 3 uses
  %xtraiter = and i64 %i.b, 1
  %i.f = icmp eq i64 %i.b, 1
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.b, 9223372036854775806
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.new
  %.014.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.t, %bb.g ] ; 3 uses
  %.01013.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.s, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.g ]
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %.014.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !tbaa !31
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = phi i64 [ %i.j, %bb.d ], [ 0, %bb.c ]
  %i.l = add i64 %i.k, %.01013.i
  %i.m = getelementptr [8 x i8], ptr %i.e, i64 %.014.i
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30   ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load i64, ptr %i.o, align 8, !tbaa !31
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = phi i64 [ %i.q, %bb.f ], [ 0, %bb.e ]
  %i.s = add i64 %i.r, %i.l                       ; 3 uses
  %i.t = add nuw nsw i64 %.014.i, 2               ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_get_flattened_seq_size.exit.unr-lcssa, label %bb.c, !llvm.loop !111

_get_flattened_seq_size.exit.unr-lcssa:           ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_get_flattened_seq_size.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_get_flattened_seq_size.exit.unr-lcssa, %.lr.ph.i
  %.014.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.t, %_get_flattened_seq_size.exit.unr-lcssa ]
  %.01013.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.s, %_get_flattened_seq_size.exit.unr-lcssa ]
  %lcmp.mod55 = trunc i64 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod55)
  %i.u = getelementptr [8 x i8], ptr %i.e, i64 %.014.i.epil.init
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !30   ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_get_flattened_seq_size.exit.epilog-lcssa, label %bb.h

bb.h:                                             ; preds = %.epil.preheader
  %i.x = load i64, ptr %i.v, align 8, !tbaa !31
  br label %_get_flattened_seq_size.exit.epilog-lcssa

_get_flattened_seq_size.exit.epilog-lcssa:        ; preds = %bb.h, %.epil.preheader
  %i.y = phi i64 [ %i.x, %bb.h ], [ 0, %.epil.preheader ]
  %i.z = add i64 %i.y, %.01013.i.epil.init
  br label %_get_flattened_seq_size.exit

_get_flattened_seq_size.exit:                     ; preds = %_get_flattened_seq_size.exit.unr-lcssa, %_get_flattened_seq_size.exit.epilog-lcssa
  %.lcssa53 = phi i64 [ %i.s, %_get_flattened_seq_size.exit.unr-lcssa ], [ %i.z, %_get_flattened_seq_size.exit.epilog-lcssa ]
  %i.aa = getelementptr i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !27
  %i.ac = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.lcssa53, ptr noundef %i.ab) #14 ; 2 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %.loopexit, label %.thread32

_get_flattened_seq_size.exit.thread29:            ; preds = %bb.a
  %i.ad = getelementptr i8, ptr %0, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !27
  %i.af = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef 0, ptr noundef %i.ae) #14
  br label %.loopexit

_get_flattened_seq_size.exit.thread:              ; preds = %bb.b
  %i.ag = getelementptr i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !27
  %i.ai = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef 0, ptr noundef %i.ah) #14 ; 2 uses
  %.not28 = icmp eq ptr %i.ai, null
  br i1 %.not28, label %.loopexit, label %.thread32

.thread32:                                        ; preds = %_get_flattened_seq_size.exit.thread, %_get_flattened_seq_size.exit
  %i.aj = phi ptr [ %i.ai, %_get_flattened_seq_size.exit.thread ], [ %i.ac, %_get_flattened_seq_size.exit ] ; 3 uses
  %i.ak = load i64, ptr %1, align 8, !tbaa !31    ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 0
  br i1 %i.al, label %.lr.ph37, label %.loopexit

.lr.ph37:                                         ; preds = %.thread32
  %i.am = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.an = getelementptr i8, ptr %i.aj, i64 8      ; 3 uses
  %.pre40 = load ptr, ptr %i.am, align 8, !tbaa !29
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph37, %._crit_edge
  %2 = phi ptr [ %.pre40, %.lr.ph37 ], [ %3, %._crit_edge ] ; 3 uses
  %.02136 = phi i64 [ 0, %.lr.ph37 ], [ %i.bc, %._crit_edge ] ; 2 uses
  %.02235 = phi i32 [ 0, %.lr.ph37 ], [ %.1.lcssa, %._crit_edge ] ; 4 uses
  %i.ao = getelementptr [8 x i8], ptr %2, i64 %.02136
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !30 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !31 ; 5 uses
  %i.as = icmp sgt i64 %i.ar, 0
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j
  %i.at = getelementptr i8, ptr %i.ap, i64 8      ; 3 uses
  %xtraiter57 = and i64 %i.ar, 1
  %i.au = icmp eq i64 %i.ar, 1
  br i1 %i.au, label %.epil.preheader56, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter61 = and i64 %i.ar, 9223372036854775806
  br label %bb.k

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.k
  %lcmp.mod58.not = icmp eq i64 %xtraiter57, 0
  br i1 %lcmp.mod58.not, label %._crit_edge.loopexit, label %.epil.preheader56

.epil.preheader56:                                ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.034.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.bs, %._crit_edge.loopexit.unr-lcssa ]
  %.133.epil.init = phi i32 [ %.02235, %.lr.ph ], [ %i.bp, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod60 = trunc i64 %i.ar to i1
  tail call void @llvm.assume(i1 %lcmp.mod60)
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !29
  %i.aw = getelementptr [8 x i8], ptr %i.av, i64 %.034.epil.init
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !30
  %i.ay = load ptr, ptr %i.an, align 8, !tbaa !29
  %i.az = add i32 %.133.epil.init, 1
  %i.ba = sext i32 %.133.epil.init to i64
  %i.bb = getelementptr [8 x i8], ptr %i.ay, i64 %i.ba
  store ptr %i.ax, ptr %i.bb, align 8, !tbaa !30
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.epil.preheader56
  %.lcssa = phi i32 [ %i.bp, %._crit_edge.loopexit.unr-lcssa ], [ %i.az, %.epil.preheader56 ]
  %.pre = load ptr, ptr %i.am, align 8, !tbaa !29
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %._crit_edge.loopexit, %bb.j
  %3 = phi ptr [ %2, %bb.j ], [ %.pre, %._crit_edge.loopexit ], [ %2, %bb.i ]
  %.1.lcssa = phi i32 [ %.02235, %bb.j ], [ %.lcssa, %._crit_edge.loopexit ], [ %.02235, %bb.i ]
  %i.bc = add nuw nsw i64 %.02136, 1              ; 2 uses
  %exitcond39.not = icmp eq i64 %i.bc, %i.ak
  br i1 %exitcond39.not, label %.loopexit, label %bb.i, !llvm.loop !112

bb.k:                                             ; preds = %bb.k, %.lr.ph.new
  %.034 = phi i64 [ 0, %.lr.ph.new ], [ %i.bs, %bb.k ] ; 3 uses
  %.133 = phi i32 [ %.02235, %.lr.ph.new ], [ %i.bp, %bb.k ] ; 3 uses
  %niter62 = phi i64 [ 0, %.lr.ph.new ], [ %niter62.next.1, %bb.k ]
  %i.bd = load ptr, ptr %i.at, align 8, !tbaa !29
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %.034
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !30
  %i.bg = load ptr, ptr %i.an, align 8, !tbaa !29
  %i.bh = add i32 %.133, 1
  %i.bi = sext i32 %.133 to i64
  %i.bj = getelementptr [8 x i8], ptr %i.bg, i64 %i.bi
  store ptr %i.bf, ptr %i.bj, align 8, !tbaa !30
  %i.bk = load ptr, ptr %i.at, align 8, !tbaa !29
  %i.bl = getelementptr [8 x i8], ptr %i.bk, i64 %.034
  %i.bm = getelementptr i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !30
  %i.bo = load ptr, ptr %i.an, align 8, !tbaa !29
  %i.bp = add i32 %.133, 2                        ; 3 uses
  %i.bq = sext i32 %i.bh to i64
  %i.br = getelementptr [8 x i8], ptr %i.bo, i64 %i.bq
  store ptr %i.bn, ptr %i.br, align 8, !tbaa !30
  %i.bs = add nuw nsw i64 %.034, 2                ; 2 uses
  %niter62.next.1 = add nuw nsw i64 %niter62, 2   ; 2 uses
  %niter62.ncmp.1 = icmp eq i64 %niter62.next.1, %unroll_iter61
  br i1 %niter62.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.k, !llvm.loop !113

.loopexit:                                        ; preds = %._crit_edge, %_get_flattened_seq_size.exit.thread29, %.thread32, %_get_flattened_seq_size.exit.thread, %_get_flattened_seq_size.exit
  %.023 = phi ptr [ null, %_get_flattened_seq_size.exit ], [ %i.af, %_get_flattened_seq_size.exit.thread29 ], [ null, %_get_flattened_seq_size.exit.thread ], [ %i.aj, %.thread32 ], [ %i.aj, %._crit_edge ]
  ret ptr %.023
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @_PyPegen_seq_last_item(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8, !tbaa !31
  %i.c = add i64 %i.b, -1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %i.c, %bb.b ], [ -1, %bb.a ]
  %i.e = getelementptr i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %i.d
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30
  ret ptr %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @_PyPegen_seq_first_item(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_join_names_with_dot(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = getelementptr i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.d = getelementptr i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.f = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str, ptr noundef %i.c, ptr noundef %i.e) #14 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !35
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !115
  call void @_PyUnicode_InternImmortal(ptr noundef %i.h, ptr noundef nonnull %i.a) #14
  %i.i = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !27
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.l = call i32 @_PyArena_AddPyObject(ptr noundef %i.j, ptr noundef %i.k) #14
  %i.m = icmp slt i32 %i.l, 0
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !35   ; 4 uses
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.n, align 8, !tbaa !34   ; 2 uses
  %.not.i = icmp sgt i32 %i.o, -1
  br i1 %.not.i, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.n, align 8, !tbaa !34
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.d
  call void @_Py_Dealloc(ptr noundef nonnull %i.n) #14
  br label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %1, i64 40
  %i.s = load i32, ptr %i.r, align 8, !tbaa !37
  %i.t = getelementptr i8, ptr %1, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !38
  %i.v = getelementptr i8, ptr %2, i64 48
  %i.w = load i32, ptr %i.v, align 8, !tbaa !39
  %i.x = getelementptr i8, ptr %2, i64 52
  %i.y = load i32, ptr %i.x, align 4, !tbaa !40
  %i.z = load ptr, ptr %i.i, align 8, !tbaa !27
  %i.aa = call ptr @_PyAST_Name(ptr noundef %i.n, i32 noundef 1, i32 noundef %i.s, i32 noundef %i.u, i32 noundef %i.w, i32 noundef %i.y, ptr noundef %i.z) #14
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.e, %bb.d, %bb.c, %bb.f, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.aa, %bb.f ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret ptr %.1
}

declare ptr @PyUnicode_FromFormat(ptr noundef, ...) local_unnamed_addr #3

declare void @_PyUnicode_InternImmortal(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @_PyArena_AddPyObject(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @_PyAST_Name(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @_PyPegen_seq_count_dots(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8, !tbaa !31     ; 4 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29   ; 5 uses
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
  %i.f = icmp ult i64 %i.b, 4
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.b, 9223372036854775804
  br label %bb.d

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.013.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ae, %._crit_edge.loopexit.unr-lcssa ]
  %.01012.epil.init = phi i32 [ 0, %.lr.ph ], [ %.1.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod16 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod16)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.013.epil = phi i64 [ %.013.epil.init, %.epil.preheader ], [ %i.k, %bb.c ] ; 2 uses
  %.01012.epil = phi i32 [ %.01012.epil.init, %.epil.preheader ], [ %.1.epil, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %.013.epil
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.i = load i32, ptr %i.h, align 8, !tbaa !118
  %i.j = icmp eq i32 %i.i, 52
  %.1.v.epil = select i1 %i.j, i32 3, i32 1
  %.1.epil = add i32 %.1.v.epil, %.01012.epil     ; 2 uses
  %i.k = add nuw nsw i64 %.013.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !116

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %bb.a, %bb.b
  %.010.lcssa = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ %.1.3, %._crit_edge.loopexit.unr-lcssa ], [ %.1.epil, %bb.c ]
  ret i32 %.010.lcssa

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %.013 = phi i64 [ 0, %.lr.ph.new ], [ %i.ae, %bb.d ] ; 5 uses
  %.01012 = phi i32 [ 0, %.lr.ph.new ], [ %.1.3, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.d ]
  %i.l = getelementptr [8 x i8], ptr %i.e, i64 %.013
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !30
  %i.n = load i32, ptr %i.m, align 8, !tbaa !118
  %i.o = icmp eq i32 %i.n, 52
  %.1.v = select i1 %i.o, i32 3, i32 1
  %.1 = add i32 %.1.v, %.01012
  %i.p = getelementptr [8 x i8], ptr %i.e, i64 %.013
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !30
  %i.s = load i32, ptr %i.r, align 8, !tbaa !118
  %i.t = icmp eq i32 %i.s, 52
  %.1.v.1 = select i1 %i.t, i32 3, i32 1
end_hunk_0
