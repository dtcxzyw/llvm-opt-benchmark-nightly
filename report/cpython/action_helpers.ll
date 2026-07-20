inline.NumInlined: 84
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_PyPegen_seq_insert_in_front:bb.a

.epil.preheader:                                  ; preds = %_PyPegen_singleton_seq.exit.loopexit.unr-lcssa, %.lr.ph
  %.01923.epil.init = phi i64 [ 1, %.lr.ph ], [ %i.at, %_PyPegen_singleton_seq.exit.loopexit.unr-lcssa ]
  %lcmp.mod27 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod27)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %.01923.epil = phi i64 [ %.01923.epil.init, %.epil.preheader ], [ %i.ba, %bb.g ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.au = load ptr, ptr %i.o, align 8, !tbaa !23
  %i.av = getelementptr [8 x i8], ptr %i.au, i64 %.01923.epil
  %i.aw = getelementptr i8, ptr %i.av, i64 -8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !25
  %i.ay = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %.01923.epil
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !25
  %i.ba = add nuw nsw i64 %.01923.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_PyPegen_singleton_seq.exit, label %bb.g, !llvm.loop !29

_PyPegen_singleton_seq.exit:                      ; preds = %_PyPegen_singleton_seq.exit.loopexit.unr-lcssa, %bb.g, %bb.e, %bb.c, %bb.b, %bb.d
  %.1 = phi ptr [ %i.c, %bb.c ], [ null, %bb.d ], [ null, %bb.b ], [ %i.j, %bb.e ], [ %i.j, %bb.g ], [ %i.j, %_PyPegen_singleton_seq.exit.loopexit.unr-lcssa ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_seq_append_to_end(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef 1, ptr noundef %i.b) #14 ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_PyPegen_singleton_seq.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23
  store ptr %2, ptr %i.e, align 8, !tbaa !25
  br label %_PyPegen_singleton_seq.exit

bb.d:                                             ; preds = %bb.a
  %i.f = load i64, ptr %1, align 8, !tbaa !26
  %i.g = add i64 %i.f, 1
  %i.h = getelementptr i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !11
  %i.j = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %i.g, ptr noundef %i.i) #14 ; 5 uses
  %.not25 = icmp eq ptr %i.j, null
  br i1 %.not25, label %_PyPegen_singleton_seq.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load i64, ptr %i.j, align 8, !tbaa !26   ; 4 uses
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
  %.02126.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.au, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod30 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod30)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %i.r = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.x, %bb.f ] ; 2 uses
  %.02126.epil = phi i64 [ %.02126.epil.init, %.epil.preheader ], [ %i.r, %bb.f ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !23
  %i.t = getelementptr [8 x i8], ptr %i.s, i64 %.02126.epil
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !25
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !23
  %i.w = getelementptr [8 x i8], ptr %i.v, i64 %.02126.epil
  store ptr %i.u, ptr %i.w, align 8, !tbaa !25
  %i.x = add nuw nsw i64 %i.r, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.f, !llvm.loop !31

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.f, %bb.e
  %i.y = getelementptr i8, ptr %i.j, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !23
  %i.aa = getelementptr [8 x i8], ptr %i.z, i64 %i.k
  %i.ab = getelementptr i8, ptr %i.aa, i64 -8
  store ptr %2, ptr %i.ab, align 8, !tbaa !25
  br label %_PyPegen_singleton_seq.exit

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %i.ac = phi i64 [ 1, %.lr.ph.new ], [ %i.ba, %bb.g ] ; 6 uses
  %.02126 = phi i64 [ 0, %.lr.ph.new ], [ %i.au, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.g ]
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !23
  %i.ae = getelementptr [8 x i8], ptr %i.ad, i64 %.02126
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !25
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !23
  %i.ah = getelementptr [8 x i8], ptr %i.ag, i64 %.02126
  store ptr %i.af, ptr %i.ah, align 8, !tbaa !25
  %i.ai = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %i.aj = load ptr, ptr %i.m, align 8, !tbaa !23
  %i.ak = getelementptr [8 x i8], ptr %i.aj, i64 %i.ac
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !25
  %i.am = load ptr, ptr %i.n, align 8, !tbaa !23
  %i.an = getelementptr [8 x i8], ptr %i.am, i64 %i.ac
  store ptr %i.al, ptr %i.an, align 8, !tbaa !25
  %i.ao = add nuw nsw i64 %i.ac, 2                ; 2 uses
  %i.ap = load ptr, ptr %i.m, align 8, !tbaa !23
  %i.aq = getelementptr [8 x i8], ptr %i.ap, i64 %i.ai
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !25
  %i.as = load ptr, ptr %i.n, align 8, !tbaa !23
  %i.at = getelementptr [8 x i8], ptr %i.as, i64 %i.ai
  store ptr %i.ar, ptr %i.at, align 8, !tbaa !25
  %i.au = add nuw nsw i64 %i.ac, 3                ; 2 uses
  %i.av = load ptr, ptr %i.m, align 8, !tbaa !23
  %i.aw = getelementptr [8 x i8], ptr %i.av, i64 %i.ao
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !25
  %i.ay = load ptr, ptr %i.n, align 8, !tbaa !23
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %i.ao
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !25
  %i.ba = add nuw nsw i64 %i.ac, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.g, !llvm.loop !32

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
  %i.b = load i64, ptr %1, align 8, !tbaa !26     ; 5 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %_get_flattened_seq_size.exit.thread

.lr.ph.i:                                         ; preds = %bb.b
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23   ; 3 uses
  %xtraiter = and i64 %i.b, 1
  %i.f = icmp eq i64 %i.b, 1
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.b, 9223372036854775806
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.new
  %.014.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.s, %bb.g ]
  %.01013.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.t, %bb.g ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.g ]
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %.01013.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !tbaa !26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = phi i64 [ %i.j, %bb.d ], [ 0, %bb.c ]
  %i.l = add i64 %i.k, %.014.i
  %i.m = getelementptr [8 x i8], ptr %i.e, i64 %.01013.i
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !25   ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load i64, ptr %i.o, align 8, !tbaa !26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = phi i64 [ %i.q, %bb.f ], [ 0, %bb.e ]
  %i.s = add i64 %i.r, %i.l                       ; 3 uses
  %i.t = add nuw nsw i64 %.01013.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_get_flattened_seq_size.exit.unr-lcssa, label %bb.c, !llvm.loop !33

_get_flattened_seq_size.exit.unr-lcssa:           ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_get_flattened_seq_size.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_get_flattened_seq_size.exit.unr-lcssa, %.lr.ph.i
  %.014.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.s, %_get_flattened_seq_size.exit.unr-lcssa ]
  %.01013.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.t, %_get_flattened_seq_size.exit.unr-lcssa ]
  %lcmp.mod56 = trunc i64 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod56)
  %i.u = getelementptr [8 x i8], ptr %i.e, i64 %.01013.i.epil.init
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !25   ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_get_flattened_seq_size.exit.epilog-lcssa, label %bb.h

bb.h:                                             ; preds = %.epil.preheader
  %i.x = load i64, ptr %i.v, align 8, !tbaa !26
  br label %_get_flattened_seq_size.exit.epilog-lcssa

_get_flattened_seq_size.exit.epilog-lcssa:        ; preds = %bb.h, %.epil.preheader
  %i.y = phi i64 [ %i.x, %bb.h ], [ 0, %.epil.preheader ]
  %i.z = add i64 %i.y, %.014.i.epil.init
  br label %_get_flattened_seq_size.exit

_get_flattened_seq_size.exit:                     ; preds = %_get_flattened_seq_size.exit.unr-lcssa, %_get_flattened_seq_size.exit.epilog-lcssa
  %.lcssa54 = phi i64 [ %i.s, %_get_flattened_seq_size.exit.unr-lcssa ], [ %i.z, %_get_flattened_seq_size.exit.epilog-lcssa ]
  %i.aa = getelementptr i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !11
  %i.ac = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.lcssa54, ptr noundef %i.ab) #14 ; 2 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %.loopexit, label %.thread32

_get_flattened_seq_size.exit.thread29:            ; preds = %bb.a
  %i.ad = getelementptr i8, ptr %0, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !11
  %i.af = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef 0, ptr noundef %i.ae) #14
  br label %.loopexit

_get_flattened_seq_size.exit.thread:              ; preds = %bb.b
  %i.ag = getelementptr i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !11
  %i.ai = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef 0, ptr noundef %i.ah) #14 ; 2 uses
  %.not28 = icmp eq ptr %i.ai, null
  br i1 %.not28, label %.loopexit, label %.thread32

.thread32:                                        ; preds = %_get_flattened_seq_size.exit.thread, %_get_flattened_seq_size.exit
  %i.aj = phi ptr [ %i.ai, %_get_flattened_seq_size.exit.thread ], [ %i.ac, %_get_flattened_seq_size.exit ] ; 3 uses
  %i.ak = load i64, ptr %1, align 8, !tbaa !26    ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 0
  br i1 %i.al, label %.lr.ph37, label %.loopexit

.lr.ph37:                                         ; preds = %.thread32
  %i.am = getelementptr i8, ptr %1, i64 8
  %i.an = getelementptr i8, ptr %i.aj, i64 8      ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph37, %._crit_edge
  %.02236 = phi i32 [ 0, %.lr.ph37 ], [ %.1.lcssa, %._crit_edge ] ; 4 uses
  %.02335 = phi i64 [ 0, %.lr.ph37 ], [ %i.bd, %._crit_edge ] ; 2 uses
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !23
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %.02335
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !25 ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !26 ; 5 uses
  %i.at = icmp sgt i64 %i.as, 0
  br i1 %i.at, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j
  %i.au = getelementptr i8, ptr %i.aq, i64 8      ; 3 uses
  %xtraiter58 = and i64 %i.as, 1
  %i.av = icmp eq i64 %i.as, 1
  br i1 %i.av, label %.epil.preheader57, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter62 = and i64 %i.as, 9223372036854775806
  br label %bb.k

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.k
  %lcmp.mod59.not = icmp eq i64 %xtraiter58, 0
  br i1 %lcmp.mod59.not, label %._crit_edge, label %.epil.preheader57

.epil.preheader57:                                ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.02134.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.bt, %._crit_edge.loopexit.unr-lcssa ]
  %.133.epil.init = phi i32 [ %.02236, %.lr.ph ], [ %i.bq, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod61 = trunc i64 %i.as to i1
  tail call void @llvm.assume(i1 %lcmp.mod61)
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !23
  %i.ax = getelementptr [8 x i8], ptr %i.aw, i64 %.02134.epil.init
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !25
  %i.az = load ptr, ptr %i.an, align 8, !tbaa !23
  %i.ba = add i32 %.133.epil.init, 1
  %i.bb = sext i32 %.133.epil.init to i64
  %i.bc = getelementptr [8 x i8], ptr %i.az, i64 %i.bb
  store ptr %i.ay, ptr %i.bc, align 8, !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader57, %._crit_edge.loopexit.unr-lcssa, %bb.i, %bb.j
  %.1.lcssa = phi i32 [ %.02236, %bb.j ], [ %.02236, %bb.i ], [ %i.bq, %._crit_edge.loopexit.unr-lcssa ], [ %i.ba, %.epil.preheader57 ]
  %i.bd = add nuw nsw i64 %.02335, 1              ; 2 uses
  %exitcond39.not = icmp eq i64 %i.bd, %i.ak
  br i1 %exitcond39.not, label %.loopexit, label %bb.i, !llvm.loop !34

bb.k:                                             ; preds = %bb.k, %.lr.ph.new
  %.02134 = phi i64 [ 0, %.lr.ph.new ], [ %i.bt, %bb.k ] ; 3 uses
  %.133 = phi i32 [ %.02236, %.lr.ph.new ], [ %i.bq, %bb.k ] ; 3 uses
  %niter63 = phi i64 [ 0, %.lr.ph.new ], [ %niter63.next.1, %bb.k ]
  %i.be = load ptr, ptr %i.au, align 8, !tbaa !23
  %i.bf = getelementptr [8 x i8], ptr %i.be, i64 %.02134
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !25
  %i.bh = load ptr, ptr %i.an, align 8, !tbaa !23
  %i.bi = add i32 %.133, 1
  %i.bj = sext i32 %.133 to i64
  %i.bk = getelementptr [8 x i8], ptr %i.bh, i64 %i.bj
  store ptr %i.bg, ptr %i.bk, align 8, !tbaa !25
  %i.bl = load ptr, ptr %i.au, align 8, !tbaa !23
  %i.bm = getelementptr [8 x i8], ptr %i.bl, i64 %.02134
  %i.bn = getelementptr i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !25
  %i.bp = load ptr, ptr %i.an, align 8, !tbaa !23
  %i.bq = add i32 %.133, 2                        ; 3 uses
  %i.br = sext i32 %i.bi to i64
  %i.bs = getelementptr [8 x i8], ptr %i.bp, i64 %i.br
  store ptr %i.bo, ptr %i.bs, align 8, !tbaa !25
  %i.bt = add nuw nsw i64 %.02134, 2              ; 2 uses
  %niter63.next.1 = add i64 %niter63, 2           ; 2 uses
  %niter63.ncmp.1 = icmp eq i64 %niter63.next.1, %unroll_iter62
  br i1 %niter63.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.k, !llvm.loop !35

.loopexit:                                        ; preds = %._crit_edge, %_get_flattened_seq_size.exit.thread29, %.thread32, %_get_flattened_seq_size.exit.thread, %_get_flattened_seq_size.exit
  %.0 = phi ptr [ null, %_get_flattened_seq_size.exit ], [ %i.af, %_get_flattened_seq_size.exit.thread29 ], [ null, %_get_flattened_seq_size.exit.thread ], [ %i.aj, %.thread32 ], [ %i.aj, %._crit_edge ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @_PyPegen_seq_last_item(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8, !tbaa !26
  %i.c = add i64 %i.b, -1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %i.c, %bb.b ], [ -1, %bb.a ]
  %i.e = getelementptr i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %i.d
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25
  ret ptr %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @_PyPegen_seq_first_item(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_join_names_with_dot(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = getelementptr i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.d = getelementptr i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.f = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str, ptr noundef %i.c, ptr noundef %i.e) #14 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !37
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38
  call void @_PyUnicode_InternImmortal(ptr noundef %i.h, ptr noundef nonnull %i.a) #14
  %i.i = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !11
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.l = call i32 @_PyArena_AddPyObject(ptr noundef %i.j, ptr noundef %i.k) #14
  %i.m = icmp slt i32 %i.l, 0
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !37   ; 4 uses
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.n, align 8, !tbaa !36   ; 2 uses
  %.not.i = icmp sgt i32 %i.o, -1
  br i1 %.not.i, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.n, align 8, !tbaa !36
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.d
  call void @_Py_Dealloc(ptr noundef nonnull %i.n) #14
  br label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %1, i64 40
  %i.s = load i32, ptr %i.r, align 8, !tbaa !40
  %i.t = getelementptr i8, ptr %1, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !42
  %i.v = getelementptr i8, ptr %2, i64 48
  %i.w = load i32, ptr %i.v, align 8, !tbaa !43
  %i.x = getelementptr i8, ptr %2, i64 52
  %i.y = load i32, ptr %i.x, align 4, !tbaa !44
  %i.z = load ptr, ptr %i.i, align 8, !tbaa !11
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
  %i.b = load i64, ptr %0, align 8, !tbaa !26     ; 4 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23   ; 5 uses
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
  %.013.epil.init = phi i32 [ 0, %.lr.ph ], [ %.1.3, %._crit_edge.loopexit.unr-lcssa ]
  %.01012.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ae, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod16 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod16)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.013.epil = phi i32 [ %.013.epil.init, %.epil.preheader ], [ %.1.epil, %bb.c ]
  %.01012.epil = phi i64 [ %.01012.epil.init, %.epil.preheader ], [ %i.k, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %.01012.epil
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.i = load i32, ptr %i.h, align 8, !tbaa !45
  %i.j = icmp eq i32 %i.i, 52
  %.1.v.epil = select i1 %i.j, i32 3, i32 1
  %.1.epil = add i32 %.1.v.epil, %.013.epil       ; 2 uses
  %i.k = add nuw nsw i64 %.01012.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !48

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %bb.a, %bb.b
  %.0.lcssa = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ %.1.3, %._crit_edge.loopexit.unr-lcssa ], [ %.1.epil, %bb.c ]
  ret i32 %.0.lcssa

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %.013 = phi i32 [ 0, %.lr.ph.new ], [ %.1.3, %bb.d ]
  %.01012 = phi i64 [ 0, %.lr.ph.new ], [ %i.ae, %bb.d ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.d ]
  %i.l = getelementptr [8 x i8], ptr %i.e, i64 %.01012
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.n = load i32, ptr %i.m, align 8, !tbaa !45
  %i.o = icmp eq i32 %i.n, 52
  %.1.v = select i1 %i.o, i32 3, i32 1
  %.1 = add i32 %.1.v, %.013
  %i.p = getelementptr [8 x i8], ptr %i.e, i64 %.01012
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !25
  %i.s = load i32, ptr %i.r, align 8, !tbaa !45
  %i.t = icmp eq i32 %i.s, 52
  %.1.v.1 = select i1 %i.t, i32 3, i32 1
  %.1.1 = add i32 %.1.v.1, %.1
  %i.u = getelementptr [8 x i8], ptr %i.e, i64 %.01012
  %i.v = getelementptr i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !25
  %i.x = load i32, ptr %i.w, align 8, !tbaa !45
  %i.y = icmp eq i32 %i.x, 52
  %.1.v.2 = select i1 %i.y, i32 3, i32 1
  %.1.2 = add i32 %.1.v.2, %.1.1
  %i.z = getelementptr [8 x i8], ptr %i.e, i64 %.01012
  %i.aa = getelementptr i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !25
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !45
  %i.ad = icmp eq i32 %i.ac, 52
  %.1.v.3 = select i1 %i.ad, i32 3, i32 1
  %.1.3 = add i32 %.1.v.3, %.1.2                  ; 3 uses
  %i.ae = add nuw nsw i64 %.01012, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !49
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_alias_for_star(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @PyUnicode_InternFromString(ptr noundef nonnull @.str.1) #14 ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.d = tail call i32 @_PyArena_AddPyObject(ptr noundef %i.c, ptr noundef nonnull %i.a) #14
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %.not.i = icmp sgt i32 %i.f, -1
  br i1 %.not.i, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.a, align 8, !tbaa !36
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #14
  br label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.b
  %i.i = tail call ptr @_PyAST_alias(ptr noundef nonnull %i.a, ptr noundef null, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #14
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.e, %bb.d, %bb.c, %bb.a, %bb.f
  %.0 = phi ptr [ null, %bb.a ], [ %i.i, %bb.f ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.e ]
  ret ptr %.0
}

declare ptr @PyUnicode_InternFromString(ptr noundef) local_unnamed_addr #3

declare ptr @_PyAST_alias(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_map_names_to_ids(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !50
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]    ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.f = tail call ptr @_Py_asdl_identifier_seq_new(i64 noundef %i.c, ptr noundef %i.e) #14 ; 3 uses
  %.not = icmp ne ptr %i.f, null
  %i.g = icmp sgt i64 %i.c, 0
  %or.cond = and i1 %.not, %i.g
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr i8, ptr %1, i64 16         ; 5 uses
  %i.i = getelementptr i8, ptr %i.f, i64 16       ; 5 uses
  %xtraiter = and i64 %i.c, 3                     ; 3 uses
  %i.j = icmp ult i64 %i.c, 4
  br i1 %i.j, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.c, 9223372036854775804
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %.01417 = phi i64 [ 0, %.lr.ph.new ], [ %i.ah, %bb.d ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.d ]
  %i.k = getelementptr [8 x i8], ptr %i.h, i64 %.01417
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !52
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !36
  %i.o = getelementptr [8 x i8], ptr %i.i, i64 %.01417
  store ptr %i.n, ptr %i.o, align 8, !tbaa !37
  %i.p = or disjoint i64 %.01417, 1               ; 2 uses
  %i.q = getelementptr [8 x i8], ptr %i.h, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !52
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !36
  %i.u = getelementptr [8 x i8], ptr %i.i, i64 %i.p
  store ptr %i.t, ptr %i.u, align 8, !tbaa !37
  %i.v = or disjoint i64 %.01417, 2               ; 2 uses
  %i.w = getelementptr [8 x i8], ptr %i.h, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !52
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !36
  %i.aa = getelementptr [8 x i8], ptr %i.i, i64 %i.v
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !37
  %i.ab = or disjoint i64 %.01417, 3              ; 2 uses
  %i.ac = getelementptr [8 x i8], ptr %i.h, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !52
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !36
  %i.ag = getelementptr [8 x i8], ptr %i.i, i64 %i.ab
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !37
  %i.ah = add nuw nsw i64 %.01417, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.d, !llvm.loop !54

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %.01417.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ah, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod20 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod20)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %.01417.epil = phi i64 [ %.01417.epil.init, %.epil.preheader ], [ %i.an, %bb.e ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.ai = getelementptr [8 x i8], ptr %i.h, i64 %.01417.epil
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !52
  %i.ak = getelementptr i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !36
  %i.am = getelementptr [8 x i8], ptr %i.i, i64 %.01417.epil
  store ptr %i.al, ptr %i.am, align 8, !tbaa !37
  %i.an = add nuw nsw i64 %.01417.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.e, !llvm.loop !55

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.e, %bb.c
  ret ptr %i.f
}

declare ptr @_Py_asdl_identifier_seq_new(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_cmpop_expr_pair(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = tail call ptr @_PyArena_Malloc(ptr noundef %i.b, i64 noundef 16) #14 ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %i.c, align 8, !tbaa !56
  %i.d = getelementptr i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8, !tbaa !58
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.c
}

declare ptr @_PyArena_Malloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_get_cmpops(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]    ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.f = tail call ptr @_Py_asdl_int_seq_new(i64 noundef %i.c, ptr noundef %i.e) #14 ; 3 uses
  %.not = icmp ne ptr %i.f, null
  %i.g = icmp sgt i64 %i.c, 0
  %or.cond = and i1 %.not, %i.g
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23   ; 5 uses
  %i.j = getelementptr i8, ptr %i.f, i64 16       ; 5 uses
  %xtraiter = and i64 %i.c, 3                     ; 3 uses
  %i.k = icmp ult i64 %i.c, 4
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.c, 9223372036854775804
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %.01417 = phi i64 [ 0, %.lr.ph.new ], [ %i.ae, %bb.d ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.d ]
  %i.l = getelementptr [8 x i8], ptr %i.i, i64 %.01417
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.n = load i32, ptr %i.m, align 8, !tbaa !56
  %i.o = getelementptr [4 x i8], ptr %i.j, i64 %.01417
  store i32 %i.n, ptr %i.o, align 4, !tbaa !7
  %i.p = or disjoint i64 %.01417, 1               ; 2 uses
  %i.q = getelementptr [8 x i8], ptr %i.i, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !25
  %i.s = load i32, ptr %i.r, align 8, !tbaa !56
  %i.t = getelementptr [4 x i8], ptr %i.j, i64 %i.p
  store i32 %i.s, ptr %i.t, align 4, !tbaa !7
  %i.u = or disjoint i64 %.01417, 2               ; 2 uses
  %i.v = getelementptr [8 x i8], ptr %i.i, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !25
  %i.x = load i32, ptr %i.w, align 8, !tbaa !56
  %i.y = getelementptr [4 x i8], ptr %i.j, i64 %i.u
  store i32 %i.x, ptr %i.y, align 4, !tbaa !7
  %i.z = or disjoint i64 %.01417, 3               ; 2 uses
  %i.aa = getelementptr [8 x i8], ptr %i.i, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !25
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !56
  %i.ad = getelementptr [4 x i8], ptr %i.j, i64 %i.z
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !7
  %i.ae = add nuw nsw i64 %.01417, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.d, !llvm.loop !59

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %.01417.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ae, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod20 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod20)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %.01417.epil = phi i64 [ %.01417.epil.init, %.epil.preheader ], [ %i.aj, %bb.e ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.af = getelementptr [8 x i8], ptr %i.i, i64 %.01417.epil
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !25
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !56
  %i.ai = getelementptr [4 x i8], ptr %i.j, i64 %.01417.epil
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !7
  %i.aj = add nuw nsw i64 %.01417.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.e, !llvm.loop !60

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.e, %bb.c
  ret ptr %i.f
}

declare ptr @_Py_asdl_int_seq_new(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_get_exprs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]    ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.f = tail call ptr @_Py_asdl_expr_seq_new(i64 noundef %i.c, ptr noundef %i.e) #14 ; 3 uses
  %.not = icmp ne ptr %i.f, null
  %i.g = icmp sgt i64 %i.c, 0
  %or.cond = and i1 %.not, %i.g
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23   ; 5 uses
  %i.j = getelementptr i8, ptr %i.f, i64 16       ; 5 uses
  %xtraiter = and i64 %i.c, 3                     ; 3 uses
  %i.k = icmp ult i64 %i.c, 4
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.c, 9223372036854775804
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %.01417 = phi i64 [ 0, %.lr.ph.new ], [ %i.ai, %bb.d ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.d ]
  %i.l = getelementptr [8 x i8], ptr %i.i, i64 %.01417
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !58
  %i.p = getelementptr [8 x i8], ptr %i.j, i64 %.01417
  store ptr %i.o, ptr %i.p, align 8, !tbaa !52
  %i.q = or disjoint i64 %.01417, 1               ; 2 uses
  %i.r = getelementptr [8 x i8], ptr %i.i, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !25
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !58
  %i.v = getelementptr [8 x i8], ptr %i.j, i64 %i.q
  store ptr %i.u, ptr %i.v, align 8, !tbaa !52
  %i.w = or disjoint i64 %.01417, 2               ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %i.i, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !25
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !58
  %i.ab = getelementptr [8 x i8], ptr %i.j, i64 %i.w
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !52
  %i.ac = or disjoint i64 %.01417, 3              ; 2 uses
  %i.ad = getelementptr [8 x i8], ptr %i.i, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !25
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !58
  %i.ah = getelementptr [8 x i8], ptr %i.j, i64 %i.ac
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !52
  %i.ai = add nuw nsw i64 %.01417, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.d, !llvm.loop !61

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %.01417.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ai, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod20 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod20)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %.01417.epil = phi i64 [ %.01417.epil.init, %.epil.preheader ], [ %i.ao, %bb.e ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.aj = getelementptr [8 x i8], ptr %i.i, i64 %.01417.epil
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !25
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !58
  %i.an = getelementptr [8 x i8], ptr %i.j, i64 %.01417.epil
  store ptr %i.am, ptr %i.an, align 8, !tbaa !52
  %i.ao = add nuw nsw i64 %.01417.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.e, !llvm.loop !62

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.e, %bb.c
  ret ptr %i.f
}

declare ptr @_Py_asdl_expr_seq_new(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_set_expr_context(ptr noundef %0, ptr nofree noundef readonly captures(ret: address, provenance) %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !63
  switch i32 %i.a, label %common.ret37 [
    i32 26, label %bb.b
    i32 28, label %bb.c
    i32 27, label %bb.g
    i32 24, label %bb.k
    i32 23, label %bb.l
    i32 25, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.e = getelementptr i8, ptr %1, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !40
  %i.g = getelementptr i8, ptr %1, i64 44
  %i.h = load i32, ptr %i.g, align 4, !tbaa !42
  %i.i = getelementptr i8, ptr %1, i64 48
  %i.j = load i32, ptr %i.i, align 8, !tbaa !43
  %i.k = getelementptr i8, ptr %1, i64 52
  %i.l = load i32, ptr %i.k, align 4, !tbaa !44
  %i.m = tail call ptr @_PyAST_Name(ptr noundef %i.d, i32 noundef %2, i32 noundef %i.f, i32 noundef %i.h, i32 noundef %i.j, i32 noundef %i.l, ptr noundef %.val) #14
  br label %common.ret37

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !36   ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_set_seq_context.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.o, align 8, !tbaa !50   ; 4 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_set_seq_context.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !11
  %i.u = tail call ptr @_Py_asdl_expr_seq_new(i64 noundef %i.q, ptr noundef %i.t) #14, !inline_history !64 ; 4 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_set_seq_context.exit, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.v = icmp sgt i64 %i.q, 0
  br i1 %i.v, label %.lr.ph30, label %_set_seq_context.exit

.lr.ph30:                                         ; preds = %.preheader
  %i.w = getelementptr i8, ptr %i.o, i64 16
  %i.x = getelementptr i8, ptr %i.u, i64 16
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph30, %bb.f
  %.017.i29 = phi i64 [ 0, %.lr.ph30 ], [ %i.ac, %bb.f ] ; 3 uses
  %i.y = getelementptr [8 x i8], ptr %i.w, i64 %.017.i29
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !52
  %i.aa = tail call ptr @_PyPegen_set_expr_context(ptr noundef nonnull %0, ptr noundef %i.z, i32 noundef %2), !inline_history !64
  %i.ab = getelementptr [8 x i8], ptr %i.x, i64 %.017.i29
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !52
  %i.ac = add nuw nsw i64 %.017.i29, 1            ; 2 uses
  %exitcond31.not = icmp eq i64 %i.ac, %i.q
  br i1 %exitcond31.not, label %_set_seq_context.exit, label %bb.f, !llvm.loop !65

_set_seq_context.exit:                            ; preds = %bb.f, %.preheader, %bb.c, %bb.d, %bb.e
  %.1.i = phi ptr [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.c ], [ %i.u, %.preheader ], [ %i.u, %bb.f ]
  %i.ad = getelementptr i8, ptr %1, i64 40
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !40
  %i.af = getelementptr i8, ptr %1, i64 44
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !42
  %i.ah = getelementptr i8, ptr %1, i64 48
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !43
  %i.aj = getelementptr i8, ptr %1, i64 52
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !44
  %i.al = getelementptr i8, ptr %0, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !11
  %i.an = tail call ptr @_PyAST_Tuple(ptr noundef %.1.i, i32 noundef %2, i32 noundef %i.ae, i32 noundef %i.ag, i32 noundef %i.ai, i32 noundef %i.ak, ptr noundef %i.am) #14, !inline_history !66
  br label %common.ret37

bb.g:                                             ; preds = %bb.a
  %i.ao = getelementptr i8, ptr %1, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !36 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_set_seq_context.exit25, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !50 ; 4 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %_set_seq_context.exit25, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !11
  %i.av = tail call ptr @_Py_asdl_expr_seq_new(i64 noundef %i.ar, ptr noundef %i.au) #14, !inline_history !67 ; 4 uses
  %.not.i22 = icmp eq ptr %i.av, null
  br i1 %.not.i22, label %_set_seq_context.exit25, label %.preheader27

.preheader27:                                     ; preds = %bb.i
  %i.aw = icmp sgt i64 %i.ar, 0
  br i1 %i.aw, label %.lr.ph, label %_set_seq_context.exit25

.lr.ph:                                           ; preds = %.preheader27
  %i.ax = getelementptr i8, ptr %i.ap, i64 16
  %i.ay = getelementptr i8, ptr %i.av, i64 16
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.j
  %.017.i2328 = phi i64 [ 0, %.lr.ph ], [ %i.bd, %bb.j ] ; 3 uses
  %i.az = getelementptr [8 x i8], ptr %i.ax, i64 %.017.i2328
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !52
  %i.bb = tail call ptr @_PyPegen_set_expr_context(ptr noundef nonnull %0, ptr noundef %i.ba, i32 noundef %2), !inline_history !67
  %i.bc = getelementptr [8 x i8], ptr %i.ay, i64 %.017.i2328
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !52
  %i.bd = add nuw nsw i64 %.017.i2328, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.bd, %i.ar
  br i1 %exitcond.not, label %_set_seq_context.exit25, label %bb.j, !llvm.loop !65

_set_seq_context.exit25:                          ; preds = %bb.j, %.preheader27, %bb.g, %bb.h, %bb.i
  %.1.i24 = phi ptr [ null, %bb.h ], [ null, %bb.i ], [ null, %bb.g ], [ %i.av, %.preheader27 ], [ %i.av, %bb.j ]
  %i.be = getelementptr i8, ptr %1, i64 40
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !40
  %i.bg = getelementptr i8, ptr %1, i64 44
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !42
  %i.bi = getelementptr i8, ptr %1, i64 48
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !43
  %i.bk = getelementptr i8, ptr %1, i64 52
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !44
  %i.bm = getelementptr i8, ptr %0, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !11
  %i.bo = tail call ptr @_PyAST_List(ptr noundef %.1.i24, i32 noundef %2, i32 noundef %i.bf, i32 noundef %i.bh, i32 noundef %i.bj, i32 noundef %i.bl, ptr noundef %i.bn) #14, !inline_history !68
  br label %common.ret37

bb.k:                                             ; preds = %bb.a
  %i.bp = getelementptr i8, ptr %0, i64 32
  %.val20 = load ptr, ptr %i.bp, align 8, !tbaa !11
  %i.bq = getelementptr i8, ptr %1, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !36
  %i.bs = getelementptr i8, ptr %1, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !36
  %i.bu = getelementptr i8, ptr %1, i64 40
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !40
  %i.bw = getelementptr i8, ptr %1, i64 44
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !42
  %i.by = getelementptr i8, ptr %1, i64 48
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !43
  %i.ca = getelementptr i8, ptr %1, i64 52
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !44
  %i.cc = tail call ptr @_PyAST_Subscript(ptr noundef %i.br, ptr noundef %i.bt, i32 noundef %2, i32 noundef %i.bv, i32 noundef %i.bx, i32 noundef %i.bz, i32 noundef %i.cb, ptr noundef %.val20) #14
  br label %common.ret37

bb.l:                                             ; preds = %bb.a
  %i.cd = getelementptr i8, ptr %0, i64 32
  %.val21 = load ptr, ptr %i.cd, align 8, !tbaa !11
  %i.ce = getelementptr i8, ptr %1, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !36
  %i.cg = getelementptr i8, ptr %1, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !36
  %i.ci = getelementptr i8, ptr %1, i64 40
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !40
  %i.ck = getelementptr i8, ptr %1, i64 44
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !42
  %i.cm = getelementptr i8, ptr %1, i64 48
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !43
  %i.co = getelementptr i8, ptr %1, i64 52
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !44
  %i.cq = tail call ptr @_PyAST_Attribute(ptr noundef %i.cf, ptr noundef %i.ch, i32 noundef %2, i32 noundef %i.cj, i32 noundef %i.cl, i32 noundef %i.cn, i32 noundef %i.cp, ptr noundef %.val21) #14
  br label %common.ret37

common.ret37:                                     ; preds = %bb.a, %bb.l, %bb.k, %_set_seq_context.exit25, %_set_seq_context.exit, %bb.b, %bb.m
  %common.ret37.op = phi ptr [ %i.de, %bb.m ], [ %i.cq, %bb.l ], [ %1, %bb.a ], [ %i.m, %bb.b ], [ %i.an, %_set_seq_context.exit ], [ %i.bo, %_set_seq_context.exit25 ], [ %i.cc, %bb.k ]
  ret ptr %common.ret37.op

bb.m:                                             ; preds = %bb.a
  %i.cr = getelementptr i8, ptr %1, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !36
  %i.ct = tail call ptr @_PyPegen_set_expr_context(ptr noundef %0, ptr noundef %i.cs, i32 noundef %2), !inline_history !69
  %i.cu = getelementptr i8, ptr %1, i64 40
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !40
  %i.cw = getelementptr i8, ptr %1, i64 44
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !42
  %i.cy = getelementptr i8, ptr %1, i64 48
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !43
  %i.da = getelementptr i8, ptr %1, i64 52
  %i.db = load i32, ptr %i.da, align 4, !tbaa !44
  %i.dc = getelementptr i8, ptr %0, i64 32
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !11
  %i.de = tail call ptr @_PyAST_Starred(ptr noundef %i.ct, i32 noundef %2, i32 noundef %i.cv, i32 noundef %i.cx, i32 noundef %i.cz, i32 noundef %i.db, ptr noundef %i.dd) #14, !inline_history !69
  br label %common.ret37
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_key_value_pair(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = tail call ptr @_PyArena_Malloc(ptr noundef %i.b, i64 noundef 16) #14 ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.c, align 8, !tbaa !70
  %i.d = getelementptr i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8, !tbaa !72
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_get_keys(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]    ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.f = tail call ptr @_Py_asdl_expr_seq_new(i64 noundef %i.c, ptr noundef %i.e) #14 ; 3 uses
  %.not = icmp ne ptr %i.f, null
  %i.g = icmp sgt i64 %i.c, 0
  %or.cond = and i1 %.not, %i.g
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23   ; 5 uses
  %i.j = getelementptr i8, ptr %i.f, i64 16       ; 5 uses
  %xtraiter = and i64 %i.c, 3                     ; 3 uses
  %i.k = icmp ult i64 %i.c, 4
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.c, 9223372036854775804
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %.01417 = phi i64 [ 0, %.lr.ph.new ], [ %i.ae, %bb.d ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.d ]
  %i.l = getelementptr [8 x i8], ptr %i.i, i64 %.01417
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !70
  %i.o = getelementptr [8 x i8], ptr %i.j, i64 %.01417
  store ptr %i.n, ptr %i.o, align 8, !tbaa !52
  %i.p = or disjoint i64 %.01417, 1               ; 2 uses
  %i.q = getelementptr [8 x i8], ptr %i.i, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !25
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !70
  %i.t = getelementptr [8 x i8], ptr %i.j, i64 %i.p
  store ptr %i.s, ptr %i.t, align 8, !tbaa !52
  %i.u = or disjoint i64 %.01417, 2               ; 2 uses
  %i.v = getelementptr [8 x i8], ptr %i.i, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !25
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !70
  %i.y = getelementptr [8 x i8], ptr %i.j, i64 %i.u
  store ptr %i.x, ptr %i.y, align 8, !tbaa !52
  %i.z = or disjoint i64 %.01417, 3               ; 2 uses
  %i.aa = getelementptr [8 x i8], ptr %i.i, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !25
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !70
  %i.ad = getelementptr [8 x i8], ptr %i.j, i64 %i.z
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !52
  %i.ae = add nuw nsw i64 %.01417, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.d, !llvm.loop !73

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %.01417.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ae, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod20 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod20)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %.01417.epil = phi i64 [ %.01417.epil.init, %.epil.preheader ], [ %i.aj, %bb.e ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.af = getelementptr [8 x i8], ptr %i.i, i64 %.01417.epil
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !25
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !70
  %i.ai = getelementptr [8 x i8], ptr %i.j, i64 %.01417.epil
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !52
  %i.aj = add nuw nsw i64 %.01417.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.e, !llvm.loop !74

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.e, %bb.c
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_get_values(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]    ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.f = tail call ptr @_Py_asdl_expr_seq_new(i64 noundef %i.c, ptr noundef %i.e) #14 ; 3 uses
  %.not = icmp ne ptr %i.f, null
  %i.g = icmp sgt i64 %i.c, 0
  %or.cond = and i1 %.not, %i.g
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23   ; 5 uses
  %i.j = getelementptr i8, ptr %i.f, i64 16       ; 5 uses
  %xtraiter = and i64 %i.c, 3                     ; 3 uses
  %i.k = icmp ult i64 %i.c, 4
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.c, 9223372036854775804
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %.01417 = phi i64 [ 0, %.lr.ph.new ], [ %i.ai, %bb.d ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.d ]
  %i.l = getelementptr [8 x i8], ptr %i.i, i64 %.01417
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !72
  %i.p = getelementptr [8 x i8], ptr %i.j, i64 %.01417
  store ptr %i.o, ptr %i.p, align 8, !tbaa !52
  %i.q = or disjoint i64 %.01417, 1               ; 2 uses
  %i.r = getelementptr [8 x i8], ptr %i.i, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !25
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !72
  %i.v = getelementptr [8 x i8], ptr %i.j, i64 %i.q
  store ptr %i.u, ptr %i.v, align 8, !tbaa !52
  %i.w = or disjoint i64 %.01417, 2               ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %i.i, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !25
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !72
  %i.ab = getelementptr [8 x i8], ptr %i.j, i64 %i.w
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !52
  %i.ac = or disjoint i64 %.01417, 3              ; 2 uses
  %i.ad = getelementptr [8 x i8], ptr %i.i, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !25
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !72
  %i.ah = getelementptr [8 x i8], ptr %i.j, i64 %i.ac
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !52
  %i.ai = add nuw nsw i64 %.01417, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.d, !llvm.loop !75

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %.01417.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ai, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod20 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod20)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %.01417.epil = phi i64 [ %.01417.epil.init, %.epil.preheader ], [ %i.ao, %bb.e ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.aj = getelementptr [8 x i8], ptr %i.i, i64 %.01417.epil
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !25
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !72
  %i.an = getelementptr [8 x i8], ptr %i.j, i64 %.01417.epil
  store ptr %i.am, ptr %i.an, align 8, !tbaa !52
  %i.ao = add nuw nsw i64 %.01417.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.e, !llvm.loop !76

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.e, %bb.c
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_key_pattern_pair(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = tail call ptr @_PyArena_Malloc(ptr noundef %i.b, i64 noundef 16) #14 ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.c, align 8, !tbaa !77
  %i.d = getelementptr i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8, !tbaa !80
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_get_pattern_keys(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]    ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.f = tail call ptr @_Py_asdl_expr_seq_new(i64 noundef %i.c, ptr noundef %i.e) #14 ; 3 uses
  %.not = icmp ne ptr %i.f, null
  %i.g = icmp sgt i64 %i.c, 0
  %or.cond = and i1 %.not, %i.g
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23   ; 5 uses
  %i.j = getelementptr i8, ptr %i.f, i64 16       ; 5 uses
  %xtraiter = and i64 %i.c, 3                     ; 3 uses
  %i.k = icmp ult i64 %i.c, 4
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.c, 9223372036854775804
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %.01417 = phi i64 [ 0, %.lr.ph.new ], [ %i.ae, %bb.d ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.d ]
  %i.l = getelementptr [8 x i8], ptr %i.i, i64 %.01417
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !77
  %i.o = getelementptr [8 x i8], ptr %i.j, i64 %.01417
  store ptr %i.n, ptr %i.o, align 8, !tbaa !52
  %i.p = or disjoint i64 %.01417, 1               ; 2 uses
  %i.q = getelementptr [8 x i8], ptr %i.i, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !25
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !77
  %i.t = getelementptr [8 x i8], ptr %i.j, i64 %i.p
  store ptr %i.s, ptr %i.t, align 8, !tbaa !52
  %i.u = or disjoint i64 %.01417, 2               ; 2 uses
  %i.v = getelementptr [8 x i8], ptr %i.i, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !25
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !77
  %i.y = getelementptr [8 x i8], ptr %i.j, i64 %i.u
  store ptr %i.x, ptr %i.y, align 8, !tbaa !52
  %i.z = or disjoint i64 %.01417, 3               ; 2 uses
  %i.aa = getelementptr [8 x i8], ptr %i.i, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !25
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !77
  %i.ad = getelementptr [8 x i8], ptr %i.j, i64 %i.z
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !52
  %i.ae = add nuw nsw i64 %.01417, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.d, !llvm.loop !81

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %.01417.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ae, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod20 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod20)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %.01417.epil = phi i64 [ %.01417.epil.init, %.epil.preheader ], [ %i.aj, %bb.e ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.af = getelementptr [8 x i8], ptr %i.i, i64 %.01417.epil
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !25
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !77
  %i.ai = getelementptr [8 x i8], ptr %i.j, i64 %.01417.epil
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !52
  %i.aj = add nuw nsw i64 %.01417.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.e, !llvm.loop !82

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.e, %bb.c
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_get_patterns(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]    ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.f = tail call ptr @_Py_asdl_pattern_seq_new(i64 noundef %i.c, ptr noundef %i.e) #14 ; 3 uses
  %.not = icmp ne ptr %i.f, null
  %i.g = icmp sgt i64 %i.c, 0
  %or.cond = and i1 %.not, %i.g
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23   ; 5 uses
  %i.j = getelementptr i8, ptr %i.f, i64 16       ; 5 uses
  %xtraiter = and i64 %i.c, 3                     ; 3 uses
  %i.k = icmp ult i64 %i.c, 4
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.c, 9223372036854775804
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %.01417 = phi i64 [ 0, %.lr.ph.new ], [ %i.ai, %bb.d ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.d ]
  %i.l = getelementptr [8 x i8], ptr %i.i, i64 %.01417
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !80
  %i.p = getelementptr [8 x i8], ptr %i.j, i64 %.01417
  store ptr %i.o, ptr %i.p, align 8, !tbaa !83
  %i.q = or disjoint i64 %.01417, 1               ; 2 uses
  %i.r = getelementptr [8 x i8], ptr %i.i, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !25
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !80
  %i.v = getelementptr [8 x i8], ptr %i.j, i64 %i.q
  store ptr %i.u, ptr %i.v, align 8, !tbaa !83
  %i.w = or disjoint i64 %.01417, 2               ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %i.i, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !25
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !80
  %i.ab = getelementptr [8 x i8], ptr %i.j, i64 %i.w
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !83
  %i.ac = or disjoint i64 %.01417, 3              ; 2 uses
  %i.ad = getelementptr [8 x i8], ptr %i.i, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !25
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !80
  %i.ah = getelementptr [8 x i8], ptr %i.j, i64 %i.ac
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !83
  %i.ai = add nuw nsw i64 %.01417, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.d, !llvm.loop !84

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %.01417.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ai, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod20 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod20)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %.01417.epil = phi i64 [ %.01417.epil.init, %.epil.preheader ], [ %i.ao, %bb.e ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.aj = getelementptr [8 x i8], ptr %i.i, i64 %.01417.epil
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !25
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !80
  %i.an = getelementptr [8 x i8], ptr %i.j, i64 %.01417.epil
  store ptr %i.am, ptr %i.an, align 8, !tbaa !83
  %i.ao = add nuw nsw i64 %.01417.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.e, !llvm.loop !85

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.e, %bb.c
  ret ptr %i.f
}

declare ptr @_Py_asdl_pattern_seq_new(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_name_default_pair(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = tail call ptr @_PyArena_Malloc(ptr noundef %i.b, i64 noundef 16) #14 ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @_PyPegen_add_type_comment_to_arg(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %3)
  store ptr %i.d, ptr %i.c, align 8, !tbaa !86
  %i.e = getelementptr i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.e, align 8, !tbaa !89
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_add_type_comment_to_arg(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(ret: address, provenance) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %_PyPegen_new_type_comment.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.d = tail call ptr @PyBytes_AsString(ptr noundef %i.c) #14 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_PyPegen_new_type_comment.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #15
  %i.g = tail call ptr @PyUnicode_DecodeUTF8(ptr noundef nonnull %i.d, i64 noundef %i.f, ptr noundef null) #14 ; 6 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_PyPegen_new_type_comment.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !11
  %i.k = tail call i32 @_PyArena_AddPyObject(ptr noundef %i.j, ptr noundef nonnull %i.g) #14
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %_PyPegen_new_type_comment.exit

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %i.g, align 8, !tbaa !36   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.m, -1
  br i1 %.not.i.i, label %bb.f, label %_PyPegen_new_type_comment.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.g, align 8, !tbaa !36
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.g, label %_PyPegen_new_type_comment.exit.thread

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #14
  br label %_PyPegen_new_type_comment.exit.thread

_PyPegen_new_type_comment.exit:                   ; preds = %bb.d
  %i.p = load ptr, ptr %1, align 8, !tbaa !91
  %i.q = getelementptr i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !93
  %i.s = getelementptr i8, ptr %1, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !94
  %i.u = getelementptr i8, ptr %1, i64 28
  %i.v = load i32, ptr %i.u, align 4, !tbaa !95
  %i.w = getelementptr i8, ptr %1, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !96
  %i.y = getelementptr i8, ptr %1, i64 36
  %i.z = load i32, ptr %i.y, align 4, !tbaa !97
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !11
  %i.ab = tail call ptr @_PyAST_arg(ptr noundef %i.p, ptr noundef %i.r, ptr noundef nonnull %i.g, i32 noundef %i.t, i32 noundef %i.v, i32 noundef %i.x, i32 noundef %i.z, ptr noundef %i.aa) #14
  br label %_PyPegen_new_type_comment.exit.thread

_PyPegen_new_type_comment.exit.thread:            ; preds = %bb.g, %bb.f, %bb.e, %bb.c, %bb.b, %_PyPegen_new_type_comment.exit, %bb.a
  %.2 = phi ptr [ %1, %bb.a ], [ null, %bb.b ], [ %i.ab, %_PyPegen_new_type_comment.exit ], [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.g ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_slash_with_default(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = tail call ptr @_PyArena_Malloc(ptr noundef %i.b, i64 noundef 16) #14 ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.c, align 8, !tbaa !98
  %i.d = getelementptr i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8, !tbaa !100
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_star_etc(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = tail call ptr @_PyArena_Malloc(ptr noundef %i.b, i64 noundef 24) #14 ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.c, align 8, !tbaa !101
  %i.d = getelementptr i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8, !tbaa !103
  %i.e = getelementptr i8, ptr %i.c, i64 16
  store ptr %3, ptr %i.e, align 8, !tbaa !104
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_join_sequences(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]    ; 6 uses
  %i.d = icmp eq ptr %2, null
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i64, ptr %2, align 8, !tbaa !26
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.f = phi i64 [ %i.e, %bb.d ], [ 0, %bb.c ]    ; 6 uses
  %i.g = add i64 %i.f, %i.c
  %i.h = getelementptr i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !11
  %i.j = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %i.g, ptr noundef %i.i) #14 ; 4 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %.loopexit, label %.preheader29

.preheader29:                                     ; preds = %bb.e
  %i.k = icmp sgt i64 %i.c, 0
  br i1 %i.k, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.preheader29
  %i.l = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.m = getelementptr i8, ptr %i.j, i64 8        ; 3 uses
  %xtraiter = and i64 %i.c, 1
  %i.n = icmp eq i64 %i.c, 1
  br i1 %i.n, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.c, 9223372036854775806
  br label %bb.f

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %.02331.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ak, %.preheader.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod42 = trunc i64 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod42)
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !23
  %i.p = getelementptr [8 x i8], ptr %i.o, i64 %.02331.epil.init
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !25
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !23
  %i.s = add nuw nsw i64 %.02331.epil.init, 1
  %sext.epil = shl i64 %.02331.epil.init, 32
  %i.t = ashr exact i64 %sext.epil, 29
  %i.u = getelementptr i8, ptr %i.r, i64 %i.t
  store ptr %i.q, ptr %i.u, align 8, !tbaa !25
  br label %.preheader.loopexit

.preheader.loopexit:                              ; preds = %.preheader.loopexit.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.ak, %.preheader.loopexit.unr-lcssa ], [ %i.s, %.epil.preheader ]
  %indvars = trunc i64 %.lcssa to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader29
  %.024.lcssa = phi i32 [ 0, %.preheader29 ], [ %indvars, %.preheader.loopexit ] ; 2 uses
  %i.v = icmp sgt i64 %i.f, 0
  br i1 %i.v, label %.lr.ph34, label %.loopexit

.lr.ph34:                                         ; preds = %.preheader
  %i.w = getelementptr i8, ptr %2, i64 8          ; 3 uses
  %i.x = getelementptr i8, ptr %i.j, i64 8        ; 3 uses
  %xtraiter44 = and i64 %i.f, 1
  %i.y = icmp eq i64 %i.f, 1
  br i1 %i.y, label %.epil.preheader43, label %.lr.ph34.new

.lr.ph34.new:                                     ; preds = %.lr.ph34
  %unroll_iter47 = and i64 %i.f, 9223372036854775806
  br label %bb.g

bb.f:                                             ; preds = %bb.f, %.lr.ph.new
  %.02331 = phi i64 [ 0, %.lr.ph.new ], [ %i.ak, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.f ]
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !23
  %i.aa = getelementptr [8 x i8], ptr %i.z, i64 %.02331
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !25
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !23
  %i.ad = or disjoint i64 %.02331, 1              ; 2 uses
  %sext = shl i64 %.02331, 32
  %i.ae = ashr exact i64 %sext, 29
  %i.af = getelementptr i8, ptr %i.ac, i64 %i.ae
  store ptr %i.ab, ptr %i.af, align 8, !tbaa !25
  %i.ag = load ptr, ptr %i.l, align 8, !tbaa !23
  %i.ah = getelementptr [8 x i8], ptr %i.ag, i64 %i.ad
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !25
  %i.aj = load ptr, ptr %i.m, align 8, !tbaa !23
  %i.ak = add nuw nsw i64 %.02331, 2              ; 3 uses
  %sext.1 = shl i64 %i.ad, 32
  %i.al = ashr exact i64 %sext.1, 29
  %i.am = getelementptr i8, ptr %i.aj, i64 %i.al
  store ptr %i.ai, ptr %i.am, align 8, !tbaa !25
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.f, !llvm.loop !105

bb.g:                                             ; preds = %bb.g, %.lr.ph34.new
  %.033 = phi i64 [ 0, %.lr.ph34.new ], [ %i.bc, %bb.g ] ; 3 uses
  %.132 = phi i32 [ %.024.lcssa, %.lr.ph34.new ], [ %i.az, %bb.g ] ; 3 uses
  %niter48 = phi i64 [ 0, %.lr.ph34.new ], [ %niter48.next.1, %bb.g ]
  %i.an = load ptr, ptr %i.w, align 8, !tbaa !23
  %i.ao = getelementptr [8 x i8], ptr %i.an, i64 %.033
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !25
  %i.aq = load ptr, ptr %i.x, align 8, !tbaa !23
  %i.ar = add i32 %.132, 1
  %i.as = sext i32 %.132 to i64
  %i.at = getelementptr [8 x i8], ptr %i.aq, i64 %i.as
  store ptr %i.ap, ptr %i.at, align 8, !tbaa !25
  %i.au = load ptr, ptr %i.w, align 8, !tbaa !23
  %i.av = getelementptr [8 x i8], ptr %i.au, i64 %.033
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !25
  %i.ay = load ptr, ptr %i.x, align 8, !tbaa !23
  %i.az = add i32 %.132, 2                        ; 2 uses
  %i.ba = sext i32 %i.ar to i64
  %i.bb = getelementptr [8 x i8], ptr %i.ay, i64 %i.ba
  store ptr %i.ax, ptr %i.bb, align 8, !tbaa !25
  %i.bc = add nuw nsw i64 %.033, 2                ; 2 uses
  %niter48.next.1 = add i64 %niter48, 2           ; 2 uses
  %niter48.ncmp.1 = icmp eq i64 %niter48.next.1, %unroll_iter47
  br i1 %niter48.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.g, !llvm.loop !106

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.g
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.loopexit, label %.epil.preheader43

.epil.preheader43:                                ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph34
  %.033.epil.init = phi i64 [ 0, %.lr.ph34 ], [ %i.bc, %.loopexit.loopexit.unr-lcssa ]
  %.132.epil.init = phi i32 [ %.024.lcssa, %.lr.ph34 ], [ %i.az, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod46 = trunc i64 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod46)
  %i.bd = load ptr, ptr %i.w, align 8, !tbaa !23
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %.033.epil.init
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !25
  %i.bg = load ptr, ptr %i.x, align 8, !tbaa !23
  %i.bh = sext i32 %.132.epil.init to i64
  %i.bi = getelementptr [8 x i8], ptr %i.bg, i64 %i.bh
  store ptr %i.bf, ptr %i.bi, align 8, !tbaa !25
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader43, %.loopexit.loopexit.unr-lcssa, %.preheader, %bb.e
  ret ptr %i.j
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_make_arguments(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef readonly captures(address_is_null) %5) local_unnamed_addr #1 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %_make_posonlyargs.exit.thread93

bb.b:                                             ; preds = %bb.a
  %.not19.i = icmp eq ptr %2, null
  br i1 %.not19.i, label %_make_posonlyargs.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load i64, ptr %i.b, align 8, !tbaa !26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = phi i64 [ %i.d, %bb.d ], [ 0, %bb.c ]    ; 5 uses
  %i.f = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !11
  %i.h = tail call ptr @_Py_asdl_arg_seq_new(i64 noundef %i.e, ptr noundef %i.g) #14 ; 5 uses
  %.not.i.i = icmp ne ptr %i.h, null
  %i.i = icmp sgt i64 %i.e, 0
  %or.cond.i.i = and i1 %i.i, %.not.i.i
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %_get_names.exit.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.j = getelementptr i8, ptr %i.b, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !23   ; 5 uses
  %i.l = getelementptr i8, ptr %i.h, i64 16       ; 5 uses
  %xtraiter = and i64 %i.e, 3                     ; 3 uses
  %i.m = icmp ult i64 %i.e, 4
  br i1 %i.m, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %i.e, 9223372036854775804
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.new
  %.01417.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.ag, %bb.f ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.3, %bb.f ]
  %i.n = getelementptr [8 x i8], ptr %i.k, i64 %.01417.i.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !25
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !86
  %i.q = getelementptr [8 x i8], ptr %i.l, i64 %.01417.i.i
  store ptr %i.p, ptr %i.q, align 8, !tbaa !107
  %i.r = or disjoint i64 %.01417.i.i, 1           ; 2 uses
  %i.s = getelementptr [8 x i8], ptr %i.k, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !25
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !86
  %i.v = getelementptr [8 x i8], ptr %i.l, i64 %i.r
  store ptr %i.u, ptr %i.v, align 8, !tbaa !107
  %i.w = or disjoint i64 %.01417.i.i, 2           ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %i.k, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !25
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !86
  %i.aa = getelementptr [8 x i8], ptr %i.l, i64 %i.w
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !107
  %i.ab = or disjoint i64 %.01417.i.i, 3          ; 2 uses
  %i.ac = getelementptr [8 x i8], ptr %i.k, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !25
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !86
  %i.af = getelementptr [8 x i8], ptr %i.l, i64 %i.ab
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !107
  %i.ag = add nuw nsw i64 %.01417.i.i, 4          ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_get_names.exit.thread.i.loopexit.unr-lcssa, label %bb.f, !llvm.loop !108

_get_names.exit.i:                                ; preds = %bb.e
  %.not20.i = icmp eq ptr %i.h, null
  br i1 %.not20.i, label %_make_posonlyargs.exit.thread, label %_get_names.exit.thread.i

_get_names.exit.thread.i.loopexit.unr-lcssa:      ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_get_names.exit.thread.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_get_names.exit.thread.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %.01417.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ag, %_get_names.exit.thread.i.loopexit.unr-lcssa ]
  %lcmp.mod231 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod231)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %.01417.i.i.epil = phi i64 [ %.01417.i.i.epil.init, %.epil.preheader ], [ %i.al, %bb.g ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.ah = getelementptr [8 x i8], ptr %i.k, i64 %.01417.i.i.epil
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !25
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !86
  %i.ak = getelementptr [8 x i8], ptr %i.l, i64 %.01417.i.i.epil
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !107
  %i.al = add nuw nsw i64 %.01417.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_get_names.exit.thread.i, label %bb.g, !llvm.loop !109

_get_names.exit.thread.i:                         ; preds = %_get_names.exit.thread.i.loopexit.unr-lcssa, %bb.g, %_get_names.exit.i
  %i.am = load ptr, ptr %2, align 8, !tbaa !98    ; 3 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_get_names.exit.thread.i
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_get_names.exit.thread.i
  %i.ap = phi i64 [ %i.ao, %bb.h ], [ 0, %_get_names.exit.thread.i ] ; 7 uses
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !26  ; 6 uses
  %i.ar = add i64 %i.aq, %i.ap
  %i.as = load ptr, ptr %i.f, align 8, !tbaa !11
  %i.at = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %i.ar, ptr noundef %i.as) #14 ; 6 uses
  %.not.i21.i = icmp eq ptr %i.at, null
  br i1 %.not.i21.i, label %_make_posonlyargs.exit.thread, label %.preheader29.i.i

.preheader29.i.i:                                 ; preds = %bb.i
  %i.au = icmp sgt i64 %i.ap, 0
  br i1 %i.au, label %.lr.ph.i22.i, label %.preheader.i.i

.lr.ph.i22.i:                                     ; preds = %.preheader29.i.i
  %i.av = getelementptr i8, ptr %i.am, i64 8      ; 3 uses
  %i.aw = getelementptr i8, ptr %i.at, i64 8      ; 3 uses
  %xtraiter233 = and i64 %i.ap, 1
  %i.ax = icmp eq i64 %i.ap, 1
  br i1 %i.ax, label %.epil.preheader232, label %.lr.ph.i22.i.new

.lr.ph.i22.i.new:                                 ; preds = %.lr.ph.i22.i
  %unroll_iter237 = and i64 %i.ap, 9223372036854775806
  br label %bb.j

.preheader.loopexit.i.i.unr-lcssa:                ; preds = %bb.j
  %lcmp.mod235.not = icmp eq i64 %xtraiter233, 0
  br i1 %lcmp.mod235.not, label %.preheader.loopexit.i.i, label %.epil.preheader232

.epil.preheader232:                               ; preds = %.preheader.loopexit.i.i.unr-lcssa, %.lr.ph.i22.i
  %.02331.i.i.epil.init = phi i64 [ 0, %.lr.ph.i22.i ], [ %i.bt, %.preheader.loopexit.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod236 = trunc i64 %i.ap to i1
  tail call void @llvm.assume(i1 %lcmp.mod236)
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !23
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %.02331.i.i.epil.init
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !25
  %i.bb = load ptr, ptr %i.aw, align 8, !tbaa !23
  %sext.i.i.epil = shl i64 %.02331.i.i.epil.init, 32
  %i.bc = ashr exact i64 %sext.i.i.epil, 29
  %i.bd = getelementptr i8, ptr %i.bb, i64 %i.bc
  store ptr %i.ba, ptr %i.bd, align 8, !tbaa !25
  br label %.preheader.loopexit.i.i

.preheader.loopexit.i.i:                          ; preds = %.preheader.loopexit.i.i.unr-lcssa, %.epil.preheader232
  %indvars.i.i = trunc i64 %i.ap to i32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.loopexit.i.i, %.preheader29.i.i
  %.024.lcssa.i.i = phi i32 [ 0, %.preheader29.i.i ], [ %indvars.i.i, %.preheader.loopexit.i.i ] ; 2 uses
  %i.be = icmp sgt i64 %i.aq, 0
  br i1 %i.be, label %.lr.ph34.i.i, label %_make_posonlyargs.exit.thread93

.lr.ph34.i.i:                                     ; preds = %.preheader.i.i
  %i.bf = getelementptr i8, ptr %i.h, i64 8       ; 3 uses
  %i.bg = getelementptr i8, ptr %i.at, i64 8      ; 3 uses
  %xtraiter240 = and i64 %i.aq, 1
  %i.bh = icmp eq i64 %i.aq, 1
  br i1 %i.bh, label %.epil.preheader239, label %.lr.ph34.i.i.new

.lr.ph34.i.i.new:                                 ; preds = %.lr.ph34.i.i
  %unroll_iter244 = and i64 %i.aq, 9223372036854775806
  br label %bb.k

bb.j:                                             ; preds = %bb.j, %.lr.ph.i22.i.new
  %.02331.i.i = phi i64 [ 0, %.lr.ph.i22.i.new ], [ %i.bt, %bb.j ] ; 4 uses
  %niter238 = phi i64 [ 0, %.lr.ph.i22.i.new ], [ %niter238.next.1, %bb.j ]
  %i.bi = load ptr, ptr %i.av, align 8, !tbaa !23
  %i.bj = getelementptr [8 x i8], ptr %i.bi, i64 %.02331.i.i
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !25
  %i.bl = load ptr, ptr %i.aw, align 8, !tbaa !23
  %i.bm = or disjoint i64 %.02331.i.i, 1          ; 2 uses
  %sext.i.i = shl i64 %.02331.i.i, 32
  %i.bn = ashr exact i64 %sext.i.i, 29
  %i.bo = getelementptr i8, ptr %i.bl, i64 %i.bn
  store ptr %i.bk, ptr %i.bo, align 8, !tbaa !25
  %i.bp = load ptr, ptr %i.av, align 8, !tbaa !23
  %i.bq = getelementptr [8 x i8], ptr %i.bp, i64 %i.bm
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !25
  %i.bs = load ptr, ptr %i.aw, align 8, !tbaa !23
  %i.bt = add nuw nsw i64 %.02331.i.i, 2          ; 2 uses
  %sext.i.i.1 = shl i64 %i.bm, 32
  %i.bu = ashr exact i64 %sext.i.i.1, 29
  %i.bv = getelementptr i8, ptr %i.bs, i64 %i.bu
  store ptr %i.br, ptr %i.bv, align 8, !tbaa !25
  %niter238.next.1 = add i64 %niter238, 2         ; 2 uses
  %niter238.ncmp.1 = icmp eq i64 %niter238.next.1, %unroll_iter237
  br i1 %niter238.ncmp.1, label %.preheader.loopexit.i.i.unr-lcssa, label %bb.j, !llvm.loop !105

bb.k:                                             ; preds = %bb.k, %.lr.ph34.i.i.new
  %.033.i.i = phi i64 [ 0, %.lr.ph34.i.i.new ], [ %i.cl, %bb.k ] ; 3 uses
  %.132.i.i = phi i32 [ %.024.lcssa.i.i, %.lr.ph34.i.i.new ], [ %i.ci, %bb.k ] ; 3 uses
  %niter245 = phi i64 [ 0, %.lr.ph34.i.i.new ], [ %niter245.next.1, %bb.k ]
  %i.bw = load ptr, ptr %i.bf, align 8, !tbaa !23
  %i.bx = getelementptr [8 x i8], ptr %i.bw, i64 %.033.i.i
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !25
  %i.bz = load ptr, ptr %i.bg, align 8, !tbaa !23
  %i.ca = add i32 %.132.i.i, 1
  %i.cb = sext i32 %.132.i.i to i64
  %i.cc = getelementptr [8 x i8], ptr %i.bz, i64 %i.cb
  store ptr %i.by, ptr %i.cc, align 8, !tbaa !25
  %i.cd = load ptr, ptr %i.bf, align 8, !tbaa !23
  %i.ce = getelementptr [8 x i8], ptr %i.cd, i64 %.033.i.i
  %i.cf = getelementptr i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !25
  %i.ch = load ptr, ptr %i.bg, align 8, !tbaa !23
  %i.ci = add i32 %.132.i.i, 2                    ; 2 uses
  %i.cj = sext i32 %i.ca to i64
  %i.ck = getelementptr [8 x i8], ptr %i.ch, i64 %i.cj
  store ptr %i.cg, ptr %i.ck, align 8, !tbaa !25
  %i.cl = add nuw nsw i64 %.033.i.i, 2            ; 2 uses
  %niter245.next.1 = add i64 %niter245, 2         ; 2 uses
  %niter245.ncmp.1 = icmp eq i64 %niter245.next.1, %unroll_iter244
  br i1 %niter245.ncmp.1, label %_make_posonlyargs.exit.thread93.loopexit.unr-lcssa, label %bb.k, !llvm.loop !106

_make_posonlyargs.exit:                           ; preds = %bb.b
  %i.cm = getelementptr i8, ptr %0, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !11
  %i.co = tail call ptr @_Py_asdl_arg_seq_new(i64 noundef 0, ptr noundef %i.cn) #14 ; 2 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %_make_posonlyargs.exit.thread, label %_make_posonlyargs.exit.thread93

_make_posonlyargs.exit.thread93.loopexit.unr-lcssa: ; preds = %bb.k
  %lcmp.mod242.not = icmp eq i64 %xtraiter240, 0
  br i1 %lcmp.mod242.not, label %_make_posonlyargs.exit.thread93, label %.epil.preheader239

.epil.preheader239:                               ; preds = %_make_posonlyargs.exit.thread93.loopexit.unr-lcssa, %.lr.ph34.i.i
  %.033.i.i.epil.init = phi i64 [ 0, %.lr.ph34.i.i ], [ %i.cl, %_make_posonlyargs.exit.thread93.loopexit.unr-lcssa ]
  %.132.i.i.epil.init = phi i32 [ %.024.lcssa.i.i, %.lr.ph34.i.i ], [ %i.ci, %_make_posonlyargs.exit.thread93.loopexit.unr-lcssa ]
  %lcmp.mod243 = trunc i64 %i.aq to i1
  tail call void @llvm.assume(i1 %lcmp.mod243)
  %i.cq = load ptr, ptr %i.bf, align 8, !tbaa !23
  %i.cr = getelementptr [8 x i8], ptr %i.cq, i64 %.033.i.i.epil.init
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !25
  %i.ct = load ptr, ptr %i.bg, align 8, !tbaa !23
  %i.cu = sext i32 %.132.i.i.epil.init to i64
  %i.cv = getelementptr [8 x i8], ptr %i.ct, i64 %i.cu
  store ptr %i.cs, ptr %i.cv, align 8, !tbaa !25
  br label %_make_posonlyargs.exit.thread93

_make_posonlyargs.exit.thread93:                  ; preds = %.epil.preheader239, %_make_posonlyargs.exit.thread93.loopexit.unr-lcssa, %.preheader.i.i, %bb.a, %_make_posonlyargs.exit
  %.sink.i95 = phi ptr [ %i.co, %_make_posonlyargs.exit ], [ %i.at, %.preheader.i.i ], [ %1, %bb.a ], [ %i.at, %_make_posonlyargs.exit.thread93.loopexit.unr-lcssa ], [ %i.at, %.epil.preheader239 ]
  %.not.i30 = icmp eq ptr %4, null                ; 2 uses
  %.not24.i = icmp eq ptr %3, null                ; 2 uses
  br i1 %.not.i30, label %bb.t, label %bb.l

bb.l:                                             ; preds = %_make_posonlyargs.exit.thread93
  %i.cw = load i64, ptr %4, align 8, !tbaa !26    ; 8 uses
  %i.cx = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !11
  %i.cz = tail call ptr @_Py_asdl_arg_seq_new(i64 noundef %i.cw, ptr noundef %i.cy) #14 ; 9 uses
  %.not.i30.i = icmp ne ptr %i.cz, null
  %i.da = icmp sgt i64 %i.cw, 0
  %or.cond.i31.i = and i1 %i.da, %.not.i30.i      ; 2 uses
  br i1 %.not24.i, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i31.i, label %.lr.ph.i.i47, label %_get_names.exit.i31

.lr.ph.i.i47:                                     ; preds = %bb.m
  %i.db = getelementptr i8, ptr %4, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !23 ; 5 uses
  %i.dd = getelementptr i8, ptr %i.cz, i64 16     ; 5 uses
  %xtraiter247 = and i64 %i.cw, 3                 ; 3 uses
  %i.de = icmp ult i64 %i.cw, 4
  br i1 %i.de, label %.epil.preheader246, label %.lr.ph.i.i47.new

.lr.ph.i.i47.new:                                 ; preds = %.lr.ph.i.i47
  %unroll_iter251 = and i64 %i.cw, 9223372036854775804
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.i47.new
  %.01417.i.i48 = phi i64 [ 0, %.lr.ph.i.i47.new ], [ %i.dy, %bb.n ] ; 6 uses
  %niter252 = phi i64 [ 0, %.lr.ph.i.i47.new ], [ %niter252.next.3, %bb.n ]
  %i.df = getelementptr [8 x i8], ptr %i.dc, i64 %.01417.i.i48
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !25
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !86
  %i.di = getelementptr [8 x i8], ptr %i.dd, i64 %.01417.i.i48
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !107
  %i.dj = or disjoint i64 %.01417.i.i48, 1        ; 2 uses
  %i.dk = getelementptr [8 x i8], ptr %i.dc, i64 %i.dj
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !25
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !86
  %i.dn = getelementptr [8 x i8], ptr %i.dd, i64 %i.dj
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !107
  %i.do = or disjoint i64 %.01417.i.i48, 2        ; 2 uses
  %i.dp = getelementptr [8 x i8], ptr %i.dc, i64 %i.do
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !25
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !86
  %i.ds = getelementptr [8 x i8], ptr %i.dd, i64 %i.do
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !107
  %i.dt = or disjoint i64 %.01417.i.i48, 3        ; 2 uses
  %i.du = getelementptr [8 x i8], ptr %i.dc, i64 %i.dt
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !25
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !86
  %i.dx = getelementptr [8 x i8], ptr %i.dd, i64 %i.dt
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !107
  %i.dy = add nuw nsw i64 %.01417.i.i48, 4        ; 2 uses
  %niter252.next.3 = add i64 %niter252, 4         ; 2 uses
  %niter252.ncmp.3 = icmp eq i64 %niter252.next.3, %unroll_iter251
  br i1 %niter252.ncmp.3, label %_get_names.exit.thread.i32.loopexit.unr-lcssa, label %bb.n, !llvm.loop !108

_get_names.exit.i31:                              ; preds = %bb.m
  %.not26.i = icmp eq ptr %i.cz, null
  br i1 %.not26.i, label %_make_posonlyargs.exit.thread, label %_get_names.exit.thread.i32

_get_names.exit.thread.i32.loopexit.unr-lcssa:    ; preds = %bb.n
  %lcmp.mod249.not = icmp eq i64 %xtraiter247, 0
  br i1 %lcmp.mod249.not, label %_get_names.exit.thread.i32, label %.epil.preheader246

.epil.preheader246:                               ; preds = %_get_names.exit.thread.i32.loopexit.unr-lcssa, %.lr.ph.i.i47
  %.01417.i.i48.epil.init = phi i64 [ 0, %.lr.ph.i.i47 ], [ %i.dy, %_get_names.exit.thread.i32.loopexit.unr-lcssa ]
  %lcmp.mod250 = icmp ne i64 %xtraiter247, 0
  tail call void @llvm.assume(i1 %lcmp.mod250)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader246
  %.01417.i.i48.epil = phi i64 [ %.01417.i.i48.epil.init, %.epil.preheader246 ], [ %i.ed, %bb.o ] ; 3 uses
  %epil.iter248 = phi i64 [ 0, %.epil.preheader246 ], [ %epil.iter248.next, %bb.o ]
  %i.dz = getelementptr [8 x i8], ptr %i.dc, i64 %.01417.i.i48.epil
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !25
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !86
  %i.ec = getelementptr [8 x i8], ptr %i.dd, i64 %.01417.i.i48.epil
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !107
  %i.ed = add nuw nsw i64 %.01417.i.i48.epil, 1
  %epil.iter248.next = add i64 %epil.iter248, 1   ; 2 uses
  %epil.iter248.cmp.not = icmp eq i64 %epil.iter248.next, %xtraiter247
  br i1 %epil.iter248.cmp.not, label %_get_names.exit.thread.i32, label %bb.o, !llvm.loop !110

_get_names.exit.thread.i32:                       ; preds = %_get_names.exit.thread.i32.loopexit.unr-lcssa, %bb.o, %_get_names.exit.i31
  %i.ee = load i64, ptr %3, align 8, !tbaa !26    ; 7 uses
  %i.ef = load i64, ptr %i.cz, align 8, !tbaa !26 ; 6 uses
  %i.eg = add i64 %i.ef, %i.ee
  %i.eh = load ptr, ptr %i.cx, align 8, !tbaa !11
  %i.ei = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %i.eg, ptr noundef %i.eh) #14 ; 6 uses
  %.not.i27.i = icmp eq ptr %i.ei, null
  br i1 %.not.i27.i, label %_make_posonlyargs.exit.thread, label %.preheader29.i.i33

.preheader29.i.i33:                               ; preds = %_get_names.exit.thread.i32
  %i.ej = icmp sgt i64 %i.ee, 0
  br i1 %i.ej, label %.lr.ph.i28.i, label %.preheader.i.i34

.lr.ph.i28.i:                                     ; preds = %.preheader29.i.i33
  %i.ek = getelementptr i8, ptr %3, i64 8         ; 3 uses
  %i.el = getelementptr i8, ptr %i.ei, i64 8      ; 3 uses
  %xtraiter254 = and i64 %i.ee, 1
  %i.em = icmp eq i64 %i.ee, 1
  br i1 %i.em, label %.epil.preheader253, label %.lr.ph.i28.i.new

.lr.ph.i28.i.new:                                 ; preds = %.lr.ph.i28.i
  %unroll_iter258 = and i64 %i.ee, 9223372036854775806
  br label %bb.p

.preheader.loopexit.i.i45.unr-lcssa:              ; preds = %bb.p
  %lcmp.mod256.not = icmp eq i64 %xtraiter254, 0
  br i1 %lcmp.mod256.not, label %.preheader.loopexit.i.i45, label %.epil.preheader253

.epil.preheader253:                               ; preds = %.preheader.loopexit.i.i45.unr-lcssa, %.lr.ph.i28.i
  %.02331.i.i43.epil.init = phi i64 [ 0, %.lr.ph.i28.i ], [ %i.fi, %.preheader.loopexit.i.i45.unr-lcssa ] ; 2 uses
  %lcmp.mod257 = trunc i64 %i.ee to i1
  tail call void @llvm.assume(i1 %lcmp.mod257)
  %i.en = load ptr, ptr %i.ek, align 8, !tbaa !23
  %i.eo = getelementptr [8 x i8], ptr %i.en, i64 %.02331.i.i43.epil.init
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !25
  %i.eq = load ptr, ptr %i.el, align 8, !tbaa !23
  %sext.i.i44.epil = shl i64 %.02331.i.i43.epil.init, 32
  %i.er = ashr exact i64 %sext.i.i44.epil, 29
  %i.es = getelementptr i8, ptr %i.eq, i64 %i.er
  store ptr %i.ep, ptr %i.es, align 8, !tbaa !25
  br label %.preheader.loopexit.i.i45

.preheader.loopexit.i.i45:                        ; preds = %.preheader.loopexit.i.i45.unr-lcssa, %.epil.preheader253
  %indvars.i.i46 = trunc i64 %i.ee to i32
  br label %.preheader.i.i34

.preheader.i.i34:                                 ; preds = %.preheader.loopexit.i.i45, %.preheader29.i.i33
  %.024.lcssa.i.i35 = phi i32 [ 0, %.preheader29.i.i33 ], [ %indvars.i.i46, %.preheader.loopexit.i.i45 ] ; 2 uses
  %i.et = icmp sgt i64 %i.ef, 0
  br i1 %i.et, label %.lr.ph34.i.i39, label %_make_posargs.exit.thread100

.lr.ph34.i.i39:                                   ; preds = %.preheader.i.i34
  %i.eu = getelementptr i8, ptr %i.cz, i64 8      ; 3 uses
  %i.ev = getelementptr i8, ptr %i.ei, i64 8      ; 3 uses
  %xtraiter261 = and i64 %i.ef, 1
  %i.ew = icmp eq i64 %i.ef, 1
  br i1 %i.ew, label %.epil.preheader260, label %.lr.ph34.i.i39.new

.lr.ph34.i.i39.new:                               ; preds = %.lr.ph34.i.i39
  %unroll_iter265 = and i64 %i.ef, 9223372036854775806
  br label %bb.q

bb.p:                                             ; preds = %bb.p, %.lr.ph.i28.i.new
  %.02331.i.i43 = phi i64 [ 0, %.lr.ph.i28.i.new ], [ %i.fi, %bb.p ] ; 4 uses
  %niter259 = phi i64 [ 0, %.lr.ph.i28.i.new ], [ %niter259.next.1, %bb.p ]
  %i.ex = load ptr, ptr %i.ek, align 8, !tbaa !23
  %i.ey = getelementptr [8 x i8], ptr %i.ex, i64 %.02331.i.i43
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !25
  %i.fa = load ptr, ptr %i.el, align 8, !tbaa !23
  %i.fb = or disjoint i64 %.02331.i.i43, 1        ; 2 uses
  %sext.i.i44 = shl i64 %.02331.i.i43, 32
  %i.fc = ashr exact i64 %sext.i.i44, 29
  %i.fd = getelementptr i8, ptr %i.fa, i64 %i.fc
  store ptr %i.ez, ptr %i.fd, align 8, !tbaa !25
  %i.fe = load ptr, ptr %i.ek, align 8, !tbaa !23
  %i.ff = getelementptr [8 x i8], ptr %i.fe, i64 %i.fb
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !25
  %i.fh = load ptr, ptr %i.el, align 8, !tbaa !23
  %i.fi = add nuw nsw i64 %.02331.i.i43, 2        ; 2 uses
  %sext.i.i44.1 = shl i64 %i.fb, 32
  %i.fj = ashr exact i64 %sext.i.i44.1, 29
  %i.fk = getelementptr i8, ptr %i.fh, i64 %i.fj
  store ptr %i.fg, ptr %i.fk, align 8, !tbaa !25
  %niter259.next.1 = add i64 %niter259, 2         ; 2 uses
  %niter259.ncmp.1 = icmp eq i64 %niter259.next.1, %unroll_iter258
  br i1 %niter259.ncmp.1, label %.preheader.loopexit.i.i45.unr-lcssa, label %bb.p, !llvm.loop !105

bb.q:                                             ; preds = %bb.q, %.lr.ph34.i.i39.new
  %.033.i.i40 = phi i64 [ 0, %.lr.ph34.i.i39.new ], [ %i.ga, %bb.q ] ; 3 uses
  %.132.i.i41 = phi i32 [ %.024.lcssa.i.i35, %.lr.ph34.i.i39.new ], [ %i.fx, %bb.q ] ; 3 uses
  %niter266 = phi i64 [ 0, %.lr.ph34.i.i39.new ], [ %niter266.next.1, %bb.q ]
  %i.fl = load ptr, ptr %i.eu, align 8, !tbaa !23
  %i.fm = getelementptr [8 x i8], ptr %i.fl, i64 %.033.i.i40
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !25
  %i.fo = load ptr, ptr %i.ev, align 8, !tbaa !23
  %i.fp = add i32 %.132.i.i41, 1
  %i.fq = sext i32 %.132.i.i41 to i64
  %i.fr = getelementptr [8 x i8], ptr %i.fo, i64 %i.fq
  store ptr %i.fn, ptr %i.fr, align 8, !tbaa !25
  %i.fs = load ptr, ptr %i.eu, align 8, !tbaa !23
  %i.ft = getelementptr [8 x i8], ptr %i.fs, i64 %.033.i.i40
  %i.fu = getelementptr i8, ptr %i.ft, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !25
  %i.fw = load ptr, ptr %i.ev, align 8, !tbaa !23
  %i.fx = add i32 %.132.i.i41, 2                  ; 2 uses
  %i.fy = sext i32 %i.fp to i64
  %i.fz = getelementptr [8 x i8], ptr %i.fw, i64 %i.fy
  store ptr %i.fv, ptr %i.fz, align 8, !tbaa !25
  %i.ga = add nuw nsw i64 %.033.i.i40, 2          ; 2 uses
  %niter266.next.1 = add i64 %niter266, 2         ; 2 uses
  %niter266.ncmp.1 = icmp eq i64 %niter266.next.1, %unroll_iter265
  br i1 %niter266.ncmp.1, label %_make_posargs.exit.thread100.loopexit230.unr-lcssa, label %bb.q, !llvm.loop !106

bb.r:                                             ; preds = %bb.l
  br i1 %or.cond.i31.i, label %.lr.ph.i32.i, label %_make_posargs.exit

.lr.ph.i32.i:                                     ; preds = %bb.r
  %i.gb = getelementptr i8, ptr %4, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !23 ; 5 uses
  %i.gd = getelementptr i8, ptr %i.cz, i64 16     ; 5 uses
  %xtraiter268 = and i64 %i.cw, 3                 ; 3 uses
  %i.ge = icmp ult i64 %i.cw, 4
  br i1 %i.ge, label %.epil.preheader267, label %.lr.ph.i32.i.new

.lr.ph.i32.i.new:                                 ; preds = %.lr.ph.i32.i
  %unroll_iter272 = and i64 %i.cw, 9223372036854775804
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.i32.i.new
  %.01417.i33.i = phi i64 [ 0, %.lr.ph.i32.i.new ], [ %i.gy, %bb.s ] ; 6 uses
  %niter273 = phi i64 [ 0, %.lr.ph.i32.i.new ], [ %niter273.next.3, %bb.s ]
  %i.gf = getelementptr [8 x i8], ptr %i.gc, i64 %.01417.i33.i
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !25
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !86
  %i.gi = getelementptr [8 x i8], ptr %i.gd, i64 %.01417.i33.i
  store ptr %i.gh, ptr %i.gi, align 8, !tbaa !107
  %i.gj = or disjoint i64 %.01417.i33.i, 1        ; 2 uses
  %i.gk = getelementptr [8 x i8], ptr %i.gc, i64 %i.gj
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !25
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !86
  %i.gn = getelementptr [8 x i8], ptr %i.gd, i64 %i.gj
  store ptr %i.gm, ptr %i.gn, align 8, !tbaa !107
  %i.go = or disjoint i64 %.01417.i33.i, 2        ; 2 uses
  %i.gp = getelementptr [8 x i8], ptr %i.gc, i64 %i.go
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !25
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !86
  %i.gs = getelementptr [8 x i8], ptr %i.gd, i64 %i.go
  store ptr %i.gr, ptr %i.gs, align 8, !tbaa !107
  %i.gt = or disjoint i64 %.01417.i33.i, 3        ; 2 uses
  %i.gu = getelementptr [8 x i8], ptr %i.gc, i64 %i.gt
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !25
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !86
  %i.gx = getelementptr [8 x i8], ptr %i.gd, i64 %i.gt
  store ptr %i.gw, ptr %i.gx, align 8, !tbaa !107
  %i.gy = add nuw nsw i64 %.01417.i33.i, 4        ; 2 uses
  %niter273.next.3 = add i64 %niter273, 4         ; 2 uses
  %niter273.ncmp.3 = icmp eq i64 %niter273.next.3, %unroll_iter272
  br i1 %niter273.ncmp.3, label %_make_posargs.exit.thread100.loopexit.unr-lcssa, label %bb.s, !llvm.loop !108

bb.t:                                             ; preds = %_make_posonlyargs.exit.thread93
  br i1 %.not24.i, label %bb.u, label %.thread

.thread:                                          ; preds = %bb.t
  %i.gz = icmp ne ptr %2, null
  br label %bb.ai

bb.u:                                             ; preds = %bb.t
  %i.ha = getelementptr i8, ptr %0, i64 32
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !11
  %i.hc = tail call ptr @_Py_asdl_arg_seq_new(i64 noundef 0, ptr noundef %i.hb) #14
  br label %_make_posargs.exit

_make_posargs.exit:                               ; preds = %bb.r, %bb.u
  %.sink.i37 = phi ptr [ %i.hc, %bb.u ], [ %i.cz, %bb.r ] ; 2 uses
  %i.hd = icmp eq ptr %.sink.i37, null
  br i1 %i.hd, label %_make_posonlyargs.exit.thread, label %_make_posargs.exit.thread100

_make_posargs.exit.thread100.loopexit.unr-lcssa:  ; preds = %bb.s
  %lcmp.mod270.not = icmp eq i64 %xtraiter268, 0
  br i1 %lcmp.mod270.not, label %_make_posargs.exit.thread100, label %.epil.preheader267

.epil.preheader267:                               ; preds = %_make_posargs.exit.thread100.loopexit.unr-lcssa, %.lr.ph.i32.i
  %.01417.i33.i.epil.init = phi i64 [ 0, %.lr.ph.i32.i ], [ %i.gy, %_make_posargs.exit.thread100.loopexit.unr-lcssa ]
  %lcmp.mod271 = icmp ne i64 %xtraiter268, 0
  tail call void @llvm.assume(i1 %lcmp.mod271)
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.epil.preheader267
  %.01417.i33.i.epil = phi i64 [ %.01417.i33.i.epil.init, %.epil.preheader267 ], [ %i.hi, %bb.v ] ; 3 uses
  %epil.iter269 = phi i64 [ 0, %.epil.preheader267 ], [ %epil.iter269.next, %bb.v ]
  %i.he = getelementptr [8 x i8], ptr %i.gc, i64 %.01417.i33.i.epil
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !25
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !86
  %i.hh = getelementptr [8 x i8], ptr %i.gd, i64 %.01417.i33.i.epil
  store ptr %i.hg, ptr %i.hh, align 8, !tbaa !107
  %i.hi = add nuw nsw i64 %.01417.i33.i.epil, 1
  %epil.iter269.next = add i64 %epil.iter269, 1   ; 2 uses
  %epil.iter269.cmp.not = icmp eq i64 %epil.iter269.next, %xtraiter268
  br i1 %epil.iter269.cmp.not, label %_make_posargs.exit.thread100, label %bb.v, !llvm.loop !111

_make_posargs.exit.thread100.loopexit230.unr-lcssa: ; preds = %bb.q
  %lcmp.mod263.not = icmp eq i64 %xtraiter261, 0
  br i1 %lcmp.mod263.not, label %_make_posargs.exit.thread100, label %.epil.preheader260

.epil.preheader260:                               ; preds = %_make_posargs.exit.thread100.loopexit230.unr-lcssa, %.lr.ph34.i.i39
  %.033.i.i40.epil.init = phi i64 [ 0, %.lr.ph34.i.i39 ], [ %i.ga, %_make_posargs.exit.thread100.loopexit230.unr-lcssa ]
  %.132.i.i41.epil.init = phi i32 [ %.024.lcssa.i.i35, %.lr.ph34.i.i39 ], [ %i.fx, %_make_posargs.exit.thread100.loopexit230.unr-lcssa ]
  %lcmp.mod264 = trunc i64 %i.ef to i1
  tail call void @llvm.assume(i1 %lcmp.mod264)
  %i.hj = load ptr, ptr %i.eu, align 8, !tbaa !23
  %i.hk = getelementptr [8 x i8], ptr %i.hj, i64 %.033.i.i40.epil.init
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !25
  %i.hm = load ptr, ptr %i.ev, align 8, !tbaa !23
  %i.hn = sext i32 %.132.i.i41.epil.init to i64
  %i.ho = getelementptr [8 x i8], ptr %i.hm, i64 %i.hn
  store ptr %i.hl, ptr %i.ho, align 8, !tbaa !25
  br label %_make_posargs.exit.thread100

_make_posargs.exit.thread100:                     ; preds = %.epil.preheader260, %_make_posargs.exit.thread100.loopexit230.unr-lcssa, %_make_posargs.exit.thread100.loopexit.unr-lcssa, %bb.v, %.preheader.i.i34, %_make_posargs.exit
  %.sink.i37102 = phi ptr [ %.sink.i37, %_make_posargs.exit ], [ %i.cz, %_make_posargs.exit.thread100.loopexit.unr-lcssa ], [ %i.ei, %.preheader.i.i34 ], [ %i.cz, %bb.v ], [ %i.ei, %_make_posargs.exit.thread100.loopexit230.unr-lcssa ], [ %i.ei, %.epil.preheader260 ] ; 7 uses
  %i.hp = icmp ne ptr %2, null                    ; 2 uses
  %i.hq = icmp ne ptr %4, null                    ; 2 uses
  %or.cond.i = and i1 %i.hp, %i.hq
  br i1 %or.cond.i, label %bb.w, label %bb.af

bb.w:                                             ; preds = %_make_posargs.exit.thread100
  %i.hr = getelementptr i8, ptr %2, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !100 ; 3 uses
  %i.ht = icmp eq ptr %i.hs, null
  br i1 %i.ht, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hu = load i64, ptr %i.hs, align 8, !tbaa !26
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.hv = phi i64 [ %i.hu, %bb.x ], [ 0, %bb.w ]  ; 5 uses
  %i.hw = getelementptr i8, ptr %0, i64 32        ; 3 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !11
  %i.hy = tail call ptr @_Py_asdl_expr_seq_new(i64 noundef %i.hv, ptr noundef %i.hx) #14 ; 5 uses
  %.not.i.i52 = icmp ne ptr %i.hy, null
  %i.hz = icmp sgt i64 %i.hv, 0
  %or.cond.i.i53 = and i1 %i.hz, %.not.i.i52
  br i1 %or.cond.i.i53, label %.lr.ph.i.i66, label %_get_defaults.exit.i

.lr.ph.i.i66:                                     ; preds = %bb.y
  %i.ia = getelementptr i8, ptr %i.hs, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !23 ; 5 uses
  %i.ic = getelementptr i8, ptr %i.hy, i64 16     ; 5 uses
  %xtraiter289 = and i64 %i.hv, 3                 ; 3 uses
  %i.id = icmp ult i64 %i.hv, 4
  br i1 %i.id, label %.epil.preheader288, label %.lr.ph.i.i66.new

.lr.ph.i.i66.new:                                 ; preds = %.lr.ph.i.i66
  %unroll_iter293 = and i64 %i.hv, 9223372036854775804
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph.i.i66.new
  %.01417.i.i67 = phi i64 [ 0, %.lr.ph.i.i66.new ], [ %i.jb, %bb.z ] ; 6 uses
  %niter294 = phi i64 [ 0, %.lr.ph.i.i66.new ], [ %niter294.next.3, %bb.z ]
  %i.ie = getelementptr [8 x i8], ptr %i.ib, i64 %.01417.i.i67
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !25
  %i.ig = getelementptr i8, ptr %i.if, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !89
  %i.ii = getelementptr [8 x i8], ptr %i.ic, i64 %.01417.i.i67
  store ptr %i.ih, ptr %i.ii, align 8, !tbaa !52
  %i.ij = or disjoint i64 %.01417.i.i67, 1        ; 2 uses
  %i.ik = getelementptr [8 x i8], ptr %i.ib, i64 %i.ij
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !25
  %i.im = getelementptr i8, ptr %i.il, i64 8
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !89
  %i.io = getelementptr [8 x i8], ptr %i.ic, i64 %i.ij
  store ptr %i.in, ptr %i.io, align 8, !tbaa !52
  %i.ip = or disjoint i64 %.01417.i.i67, 2        ; 2 uses
  %i.iq = getelementptr [8 x i8], ptr %i.ib, i64 %i.ip
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !25
  %i.is = getelementptr i8, ptr %i.ir, i64 8
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !89
  %i.iu = getelementptr [8 x i8], ptr %i.ic, i64 %i.ip
  store ptr %i.it, ptr %i.iu, align 8, !tbaa !52
  %i.iv = or disjoint i64 %.01417.i.i67, 3        ; 2 uses
  %i.iw = getelementptr [8 x i8], ptr %i.ib, i64 %i.iv
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !25
  %i.iy = getelementptr i8, ptr %i.ix, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !89
  %i.ja = getelementptr [8 x i8], ptr %i.ic, i64 %i.iv
  store ptr %i.iz, ptr %i.ja, align 8, !tbaa !52
  %i.jb = add nuw nsw i64 %.01417.i.i67, 4        ; 2 uses
  %niter294.next.3 = add i64 %niter294, 4         ; 2 uses
  %niter294.ncmp.3 = icmp eq i64 %niter294.next.3, %unroll_iter293
  br i1 %niter294.ncmp.3, label %_get_defaults.exit.thread.i.loopexit.unr-lcssa, label %bb.z, !llvm.loop !112

_get_defaults.exit.i:                             ; preds = %bb.y
  %.not.i54 = icmp eq ptr %i.hy, null
  br i1 %.not.i54, label %_make_posonlyargs.exit.thread, label %_get_defaults.exit.thread.i

_get_defaults.exit.thread.i.loopexit.unr-lcssa:   ; preds = %bb.z
  %lcmp.mod291.not = icmp eq i64 %xtraiter289, 0
  br i1 %lcmp.mod291.not, label %_get_defaults.exit.thread.i, label %.epil.preheader288

.epil.preheader288:                               ; preds = %_get_defaults.exit.thread.i.loopexit.unr-lcssa, %.lr.ph.i.i66
  %.01417.i.i67.epil.init = phi i64 [ 0, %.lr.ph.i.i66 ], [ %i.jb, %_get_defaults.exit.thread.i.loopexit.unr-lcssa ]
  %lcmp.mod292 = icmp ne i64 %xtraiter289, 0
  tail call void @llvm.assume(i1 %lcmp.mod292)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.epil.preheader288
  %.01417.i.i67.epil = phi i64 [ %.01417.i.i67.epil.init, %.epil.preheader288 ], [ %i.jh, %bb.aa ] ; 3 uses
  %epil.iter290 = phi i64 [ 0, %.epil.preheader288 ], [ %epil.iter290.next, %bb.aa ]
  %i.jc = getelementptr [8 x i8], ptr %i.ib, i64 %.01417.i.i67.epil
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !25
  %i.je = getelementptr i8, ptr %i.jd, i64 8
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !89
  %i.jg = getelementptr [8 x i8], ptr %i.ic, i64 %.01417.i.i67.epil
  store ptr %i.jf, ptr %i.jg, align 8, !tbaa !52
  %i.jh = add nuw nsw i64 %.01417.i.i67.epil, 1
  %epil.iter290.next = add i64 %epil.iter290, 1   ; 2 uses
  %epil.iter290.cmp.not = icmp eq i64 %epil.iter290.next, %xtraiter289
  br i1 %epil.iter290.cmp.not, label %_get_defaults.exit.thread.i, label %bb.aa, !llvm.loop !113

_get_defaults.exit.thread.i:                      ; preds = %_get_defaults.exit.thread.i.loopexit.unr-lcssa, %bb.aa, %_get_defaults.exit.i
  %i.ji = load i64, ptr %4, align 8, !tbaa !26    ; 5 uses
  %i.jj = load ptr, ptr %i.hw, align 8, !tbaa !11
  %i.jk = tail call ptr @_Py_asdl_expr_seq_new(i64 noundef %i.ji, ptr noundef %i.jj) #14 ; 5 uses
  %.not.i38.i = icmp ne ptr %i.jk, null
  %i.jl = icmp sgt i64 %i.ji, 0
  %or.cond.i39.i = and i1 %i.jl, %.not.i38.i
  br i1 %or.cond.i39.i, label %.lr.ph.i40.i, label %_get_defaults.exit43.i

.lr.ph.i40.i:                                     ; preds = %_get_defaults.exit.thread.i
  %i.jm = getelementptr i8, ptr %4, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !23 ; 5 uses
  %i.jo = getelementptr i8, ptr %i.jk, i64 16     ; 5 uses
  %xtraiter296 = and i64 %i.ji, 3                 ; 3 uses
  %i.jp = icmp ult i64 %i.ji, 4
  br i1 %i.jp, label %.epil.preheader295, label %.lr.ph.i40.i.new

.lr.ph.i40.i.new:                                 ; preds = %.lr.ph.i40.i
  %unroll_iter300 = and i64 %i.ji, 9223372036854775804
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.lr.ph.i40.i.new
  %.01417.i41.i = phi i64 [ 0, %.lr.ph.i40.i.new ], [ %i.kn, %bb.ab ] ; 6 uses
  %niter301 = phi i64 [ 0, %.lr.ph.i40.i.new ], [ %niter301.next.3, %bb.ab ]
  %i.jq = getelementptr [8 x i8], ptr %i.jn, i64 %.01417.i41.i
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !25
  %i.js = getelementptr i8, ptr %i.jr, i64 8
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !89
  %i.ju = getelementptr [8 x i8], ptr %i.jo, i64 %.01417.i41.i
  store ptr %i.jt, ptr %i.ju, align 8, !tbaa !52
  %i.jv = or disjoint i64 %.01417.i41.i, 1        ; 2 uses
  %i.jw = getelementptr [8 x i8], ptr %i.jn, i64 %i.jv
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !25
  %i.jy = getelementptr i8, ptr %i.jx, i64 8
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !89
  %i.ka = getelementptr [8 x i8], ptr %i.jo, i64 %i.jv
  store ptr %i.jz, ptr %i.ka, align 8, !tbaa !52
  %i.kb = or disjoint i64 %.01417.i41.i, 2        ; 2 uses
  %i.kc = getelementptr [8 x i8], ptr %i.jn, i64 %i.kb
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !25
  %i.ke = getelementptr i8, ptr %i.kd, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !89
  %i.kg = getelementptr [8 x i8], ptr %i.jo, i64 %i.kb
  store ptr %i.kf, ptr %i.kg, align 8, !tbaa !52
  %i.kh = or disjoint i64 %.01417.i41.i, 3        ; 2 uses
  %i.ki = getelementptr [8 x i8], ptr %i.jn, i64 %i.kh
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !25
  %i.kk = getelementptr i8, ptr %i.kj, i64 8
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !89
  %i.km = getelementptr [8 x i8], ptr %i.jo, i64 %i.kh
  store ptr %i.kl, ptr %i.km, align 8, !tbaa !52
  %i.kn = add nuw nsw i64 %.01417.i41.i, 4        ; 2 uses
  %niter301.next.3 = add i64 %niter301, 4         ; 2 uses
  %niter301.ncmp.3 = icmp eq i64 %niter301.next.3, %unroll_iter300
  br i1 %niter301.ncmp.3, label %_get_defaults.exit43.thread.i.loopexit.unr-lcssa, label %bb.ab, !llvm.loop !112

_get_defaults.exit43.i:                           ; preds = %_get_defaults.exit.thread.i
  %.not37.i = icmp eq ptr %i.jk, null
  br i1 %.not37.i, label %_make_posonlyargs.exit.thread, label %_get_defaults.exit43.thread.i

_get_defaults.exit43.thread.i.loopexit.unr-lcssa: ; preds = %bb.ab
  %lcmp.mod298.not = icmp eq i64 %xtraiter296, 0
  br i1 %lcmp.mod298.not, label %_get_defaults.exit43.thread.i, label %.epil.preheader295

.epil.preheader295:                               ; preds = %_get_defaults.exit43.thread.i.loopexit.unr-lcssa, %.lr.ph.i40.i
  %.01417.i41.i.epil.init = phi i64 [ 0, %.lr.ph.i40.i ], [ %i.kn, %_get_defaults.exit43.thread.i.loopexit.unr-lcssa ]
  %lcmp.mod299 = icmp ne i64 %xtraiter296, 0
  tail call void @llvm.assume(i1 %lcmp.mod299)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.epil.preheader295
  %.01417.i41.i.epil = phi i64 [ %.01417.i41.i.epil.init, %.epil.preheader295 ], [ %i.kt, %bb.ac ] ; 3 uses
  %epil.iter297 = phi i64 [ 0, %.epil.preheader295 ], [ %epil.iter297.next, %bb.ac ]
  %i.ko = getelementptr [8 x i8], ptr %i.jn, i64 %.01417.i41.i.epil
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !25
  %i.kq = getelementptr i8, ptr %i.kp, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !89
  %i.ks = getelementptr [8 x i8], ptr %i.jo, i64 %.01417.i41.i.epil
  store ptr %i.kr, ptr %i.ks, align 8, !tbaa !52
  %i.kt = add nuw nsw i64 %.01417.i41.i.epil, 1
  %epil.iter297.next = add i64 %epil.iter297, 1   ; 2 uses
  %epil.iter297.cmp.not = icmp eq i64 %epil.iter297.next, %xtraiter296
  br i1 %epil.iter297.cmp.not, label %_get_defaults.exit43.thread.i, label %bb.ac, !llvm.loop !114

_get_defaults.exit43.thread.i:                    ; preds = %_get_defaults.exit43.thread.i.loopexit.unr-lcssa, %bb.ac, %_get_defaults.exit43.i
  %i.ku = load i64, ptr %i.hy, align 8, !tbaa !26 ; 7 uses
  %i.kv = load i64, ptr %i.jk, align 8, !tbaa !26 ; 6 uses
  %i.kw = add i64 %i.kv, %i.ku
  %i.kx = load ptr, ptr %i.hw, align 8, !tbaa !11
  %i.ky = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %i.kw, ptr noundef %i.kx) #14 ; 6 uses
  %.not.i44.i = icmp eq ptr %i.ky, null
  br i1 %.not.i44.i, label %_make_posonlyargs.exit.thread, label %.preheader29.i.i55

.preheader29.i.i55:                               ; preds = %_get_defaults.exit43.thread.i
  %i.kz = icmp sgt i64 %i.ku, 0
  br i1 %i.kz, label %.lr.ph.i45.i, label %.preheader.i.i56

.lr.ph.i45.i:                                     ; preds = %.preheader29.i.i55
  %i.la = getelementptr i8, ptr %i.hy, i64 8      ; 3 uses
  %i.lb = getelementptr i8, ptr %i.ky, i64 8      ; 3 uses
  %xtraiter303 = and i64 %i.ku, 1
  %i.lc = icmp eq i64 %i.ku, 1
  br i1 %i.lc, label %.epil.preheader302, label %.lr.ph.i45.i.new

.lr.ph.i45.i.new:                                 ; preds = %.lr.ph.i45.i
  %unroll_iter307 = and i64 %i.ku, 9223372036854775806
  br label %bb.ad

.preheader.loopexit.i.i64.unr-lcssa:              ; preds = %bb.ad
  %lcmp.mod305.not = icmp eq i64 %xtraiter303, 0
  br i1 %lcmp.mod305.not, label %.preheader.loopexit.i.i64, label %.epil.preheader302

.epil.preheader302:                               ; preds = %.preheader.loopexit.i.i64.unr-lcssa, %.lr.ph.i45.i
  %.02331.i.i62.epil.init = phi i64 [ 0, %.lr.ph.i45.i ], [ %i.ly, %.preheader.loopexit.i.i64.unr-lcssa ] ; 2 uses
  %lcmp.mod306 = trunc i64 %i.ku to i1
  tail call void @llvm.assume(i1 %lcmp.mod306)
  %i.ld = load ptr, ptr %i.la, align 8, !tbaa !23
  %i.le = getelementptr [8 x i8], ptr %i.ld, i64 %.02331.i.i62.epil.init
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !25
  %i.lg = load ptr, ptr %i.lb, align 8, !tbaa !23
  %sext.i.i63.epil = shl i64 %.02331.i.i62.epil.init, 32
  %i.lh = ashr exact i64 %sext.i.i63.epil, 29
  %i.li = getelementptr i8, ptr %i.lg, i64 %i.lh
  store ptr %i.lf, ptr %i.li, align 8, !tbaa !25
  br label %.preheader.loopexit.i.i64

.preheader.loopexit.i.i64:                        ; preds = %.preheader.loopexit.i.i64.unr-lcssa, %.epil.preheader302
  %indvars.i.i65 = trunc i64 %i.ku to i32
  br label %.preheader.i.i56

.preheader.i.i56:                                 ; preds = %.preheader.loopexit.i.i64, %.preheader29.i.i55
  %.024.lcssa.i.i57 = phi i32 [ 0, %.preheader29.i.i55 ], [ %indvars.i.i65, %.preheader.loopexit.i.i64 ] ; 2 uses
  %i.lj = icmp sgt i64 %i.kv, 0
  br i1 %i.lj, label %.lr.ph34.i.i58, label %_make_posdefaults.exit.thread108

.lr.ph34.i.i58:                                   ; preds = %.preheader.i.i56
  %i.lk = getelementptr i8, ptr %i.jk, i64 8      ; 3 uses
  %i.ll = getelementptr i8, ptr %i.ky, i64 8      ; 3 uses
  %xtraiter310 = and i64 %i.kv, 1
  %i.lm = icmp eq i64 %i.kv, 1
  br i1 %i.lm, label %.epil.preheader309, label %.lr.ph34.i.i58.new

.lr.ph34.i.i58.new:                               ; preds = %.lr.ph34.i.i58
  %unroll_iter314 = and i64 %i.kv, 9223372036854775806
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ad, %.lr.ph.i45.i.new
  %.02331.i.i62 = phi i64 [ 0, %.lr.ph.i45.i.new ], [ %i.ly, %bb.ad ] ; 4 uses
  %niter308 = phi i64 [ 0, %.lr.ph.i45.i.new ], [ %niter308.next.1, %bb.ad ]
  %i.ln = load ptr, ptr %i.la, align 8, !tbaa !23
  %i.lo = getelementptr [8 x i8], ptr %i.ln, i64 %.02331.i.i62
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !25
  %i.lq = load ptr, ptr %i.lb, align 8, !tbaa !23
  %i.lr = or disjoint i64 %.02331.i.i62, 1        ; 2 uses
  %sext.i.i63 = shl i64 %.02331.i.i62, 32
  %i.ls = ashr exact i64 %sext.i.i63, 29
  %i.lt = getelementptr i8, ptr %i.lq, i64 %i.ls
  store ptr %i.lp, ptr %i.lt, align 8, !tbaa !25
  %i.lu = load ptr, ptr %i.la, align 8, !tbaa !23
  %i.lv = getelementptr [8 x i8], ptr %i.lu, i64 %i.lr
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !25
  %i.lx = load ptr, ptr %i.lb, align 8, !tbaa !23
  %i.ly = add nuw nsw i64 %.02331.i.i62, 2        ; 2 uses
  %sext.i.i63.1 = shl i64 %i.lr, 32
  %i.lz = ashr exact i64 %sext.i.i63.1, 29
  %i.ma = getelementptr i8, ptr %i.lx, i64 %i.lz
  store ptr %i.lw, ptr %i.ma, align 8, !tbaa !25
  %niter308.next.1 = add i64 %niter308, 2         ; 2 uses
  %niter308.ncmp.1 = icmp eq i64 %niter308.next.1, %unroll_iter307
  br i1 %niter308.ncmp.1, label %.preheader.loopexit.i.i64.unr-lcssa, label %bb.ad, !llvm.loop !105

bb.ae:                                            ; preds = %bb.ae, %.lr.ph34.i.i58.new
  %.033.i.i59 = phi i64 [ 0, %.lr.ph34.i.i58.new ], [ %i.mq, %bb.ae ] ; 3 uses
  %.132.i.i60 = phi i32 [ %.024.lcssa.i.i57, %.lr.ph34.i.i58.new ], [ %i.mn, %bb.ae ] ; 3 uses
  %niter315 = phi i64 [ 0, %.lr.ph34.i.i58.new ], [ %niter315.next.1, %bb.ae ]
  %i.mb = load ptr, ptr %i.lk, align 8, !tbaa !23
  %i.mc = getelementptr [8 x i8], ptr %i.mb, i64 %.033.i.i59
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !25
  %i.me = load ptr, ptr %i.ll, align 8, !tbaa !23
  %i.mf = add i32 %.132.i.i60, 1
  %i.mg = sext i32 %.132.i.i60 to i64
  %i.mh = getelementptr [8 x i8], ptr %i.me, i64 %i.mg
  store ptr %i.md, ptr %i.mh, align 8, !tbaa !25
  %i.mi = load ptr, ptr %i.lk, align 8, !tbaa !23
  %i.mj = getelementptr [8 x i8], ptr %i.mi, i64 %.033.i.i59
  %i.mk = getelementptr i8, ptr %i.mj, i64 8
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !25
  %i.mm = load ptr, ptr %i.ll, align 8, !tbaa !23
  %i.mn = add i32 %.132.i.i60, 2                  ; 2 uses
  %i.mo = sext i32 %i.mf to i64
  %i.mp = getelementptr [8 x i8], ptr %i.mm, i64 %i.mo
  store ptr %i.ml, ptr %i.mp, align 8, !tbaa !25
  %i.mq = add nuw nsw i64 %.033.i.i59, 2          ; 2 uses
  %niter315.next.1 = add i64 %niter315, 2         ; 2 uses
  %niter315.ncmp.1 = icmp eq i64 %niter315.next.1, %unroll_iter314
  br i1 %niter315.ncmp.1, label %_make_posdefaults.exit.thread108.loopexit.unr-lcssa, label %bb.ae, !llvm.loop !106

bb.af:                                            ; preds = %_make_posargs.exit.thread100
  %i.mr = icmp eq ptr %2, null
  %or.cond3.i = and i1 %i.mr, %i.hq
  br i1 %or.cond3.i, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.ms = load i64, ptr %4, align 8, !tbaa !26    ; 5 uses
  %i.mt = getelementptr i8, ptr %0, i64 32
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !11
  %i.mv = tail call ptr @_Py_asdl_expr_seq_new(i64 noundef %i.ms, ptr noundef %i.mu) #14 ; 5 uses
  %.not.i47.i = icmp ne ptr %i.mv, null
  %i.mw = icmp sgt i64 %i.ms, 0
  %or.cond.i48.i = and i1 %i.mw, %.not.i47.i
  br i1 %or.cond.i48.i, label %.lr.ph.i49.i, label %_make_posdefaults.exit

.lr.ph.i49.i:                                     ; preds = %bb.ag
  %i.mx = getelementptr i8, ptr %4, i64 8
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !23 ; 5 uses
  %i.mz = getelementptr i8, ptr %i.mv, i64 16     ; 5 uses
  %xtraiter282 = and i64 %i.ms, 3                 ; 3 uses
  %i.na = icmp ult i64 %i.ms, 4
  br i1 %i.na, label %.epil.preheader281, label %.lr.ph.i49.i.new

.lr.ph.i49.i.new:                                 ; preds = %.lr.ph.i49.i
  %unroll_iter286 = and i64 %i.ms, 9223372036854775804
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.lr.ph.i49.i.new
  %.01417.i50.i = phi i64 [ 0, %.lr.ph.i49.i.new ], [ %i.ny, %bb.ah ] ; 6 uses
  %niter287 = phi i64 [ 0, %.lr.ph.i49.i.new ], [ %niter287.next.3, %bb.ah ]
  %i.nb = getelementptr [8 x i8], ptr %i.my, i64 %.01417.i50.i
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !25
  %i.nd = getelementptr i8, ptr %i.nc, i64 8
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !89
  %i.nf = getelementptr [8 x i8], ptr %i.mz, i64 %.01417.i50.i
  store ptr %i.ne, ptr %i.nf, align 8, !tbaa !52
  %i.ng = or disjoint i64 %.01417.i50.i, 1        ; 2 uses
  %i.nh = getelementptr [8 x i8], ptr %i.my, i64 %i.ng
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !25
  %i.nj = getelementptr i8, ptr %i.ni, i64 8
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !89
  %i.nl = getelementptr [8 x i8], ptr %i.mz, i64 %i.ng
  store ptr %i.nk, ptr %i.nl, align 8, !tbaa !52
  %i.nm = or disjoint i64 %.01417.i50.i, 2        ; 2 uses
  %i.nn = getelementptr [8 x i8], ptr %i.my, i64 %i.nm
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !25
  %i.np = getelementptr i8, ptr %i.no, i64 8
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !89
  %i.nr = getelementptr [8 x i8], ptr %i.mz, i64 %i.nm
  store ptr %i.nq, ptr %i.nr, align 8, !tbaa !52
  %i.ns = or disjoint i64 %.01417.i50.i, 3        ; 2 uses
  %i.nt = getelementptr [8 x i8], ptr %i.my, i64 %i.ns
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !25
  %i.nv = getelementptr i8, ptr %i.nu, i64 8
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !89
  %i.nx = getelementptr [8 x i8], ptr %i.mz, i64 %i.ns
  store ptr %i.nw, ptr %i.nx, align 8, !tbaa !52
  %i.ny = add nuw nsw i64 %.01417.i50.i, 4        ; 2 uses
  %niter287.next.3 = add i64 %niter287, 4         ; 2 uses
  %niter287.ncmp.3 = icmp eq i64 %niter287.next.3, %unroll_iter286
  br i1 %niter287.ncmp.3, label %_make_posdefaults.exit.thread108.loopexit228.unr-lcssa, label %bb.ah, !llvm.loop !112

bb.ai:                                            ; preds = %.thread, %bb.af
  %.sink.i37102158214 = phi ptr [ %3, %.thread ], [ %.sink.i37102, %bb.af ] ; 4 uses
  %i.nz = phi i1 [ %i.gz, %.thread ], [ %i.hp, %bb.af ]
  %or.cond5.i = and i1 %.not.i30, %i.nz
  br i1 %or.cond5.i, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.oa = getelementptr i8, ptr %2, i64 8
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !100 ; 3 uses
  %i.oc = icmp eq ptr %i.ob, null
  br i1 %i.oc, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.od = load i64, ptr %i.ob, align 8, !tbaa !26
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.oe = phi i64 [ %i.od, %bb.ak ], [ 0, %bb.aj ] ; 5 uses
  %i.of = getelementptr i8, ptr %0, i64 32
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !11
  %i.oh = tail call ptr @_Py_asdl_expr_seq_new(i64 noundef %i.oe, ptr noundef %i.og) #14 ; 5 uses
  %.not.i53.i = icmp ne ptr %i.oh, null
  %i.oi = icmp sgt i64 %i.oe, 0
  %or.cond.i54.i = and i1 %i.oi, %.not.i53.i
  br i1 %or.cond.i54.i, label %.lr.ph.i55.i, label %_make_posdefaults.exit

.lr.ph.i55.i:                                     ; preds = %bb.al
  %i.oj = getelementptr i8, ptr %i.ob, i64 8
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !23 ; 5 uses
  %i.ol = getelementptr i8, ptr %i.oh, i64 16     ; 5 uses
  %xtraiter275 = and i64 %i.oe, 3                 ; 3 uses
  %i.om = icmp ult i64 %i.oe, 4
  br i1 %i.om, label %.epil.preheader274, label %.lr.ph.i55.i.new

.lr.ph.i55.i.new:                                 ; preds = %.lr.ph.i55.i
  %unroll_iter279 = and i64 %i.oe, 9223372036854775804
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.lr.ph.i55.i.new
  %.01417.i56.i = phi i64 [ 0, %.lr.ph.i55.i.new ], [ %i.pk, %bb.am ] ; 6 uses
  %niter280 = phi i64 [ 0, %.lr.ph.i55.i.new ], [ %niter280.next.3, %bb.am ]
  %i.on = getelementptr [8 x i8], ptr %i.ok, i64 %.01417.i56.i
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !25
  %i.op = getelementptr i8, ptr %i.oo, i64 8
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !89
  %i.or = getelementptr [8 x i8], ptr %i.ol, i64 %.01417.i56.i
  store ptr %i.oq, ptr %i.or, align 8, !tbaa !52
  %i.os = or disjoint i64 %.01417.i56.i, 1        ; 2 uses
  %i.ot = getelementptr [8 x i8], ptr %i.ok, i64 %i.os
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !25
  %i.ov = getelementptr i8, ptr %i.ou, i64 8
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !89
  %i.ox = getelementptr [8 x i8], ptr %i.ol, i64 %i.os
  store ptr %i.ow, ptr %i.ox, align 8, !tbaa !52
  %i.oy = or disjoint i64 %.01417.i56.i, 2        ; 2 uses
  %i.oz = getelementptr [8 x i8], ptr %i.ok, i64 %i.oy
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !25
  %i.pb = getelementptr i8, ptr %i.pa, i64 8
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !89
  %i.pd = getelementptr [8 x i8], ptr %i.ol, i64 %i.oy
  store ptr %i.pc, ptr %i.pd, align 8, !tbaa !52
  %i.pe = or disjoint i64 %.01417.i56.i, 3        ; 2 uses
  %i.pf = getelementptr [8 x i8], ptr %i.ok, i64 %i.pe
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !25
  %i.ph = getelementptr i8, ptr %i.pg, i64 8
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !89
  %i.pj = getelementptr [8 x i8], ptr %i.ol, i64 %i.pe
  store ptr %i.pi, ptr %i.pj, align 8, !tbaa !52
  %i.pk = add nuw nsw i64 %.01417.i56.i, 4        ; 2 uses
  %niter280.next.3 = add i64 %niter280, 4         ; 2 uses
  %niter280.ncmp.3 = icmp eq i64 %niter280.next.3, %unroll_iter279
  br i1 %niter280.ncmp.3, label %_make_posdefaults.exit.thread108.loopexit229.unr-lcssa, label %bb.am, !llvm.loop !112

bb.an:                                            ; preds = %bb.ai
  %i.pl = getelementptr i8, ptr %0, i64 32
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !11
  %i.pn = tail call ptr @_Py_asdl_expr_seq_new(i64 noundef 0, ptr noundef %i.pm) #14
  br label %_make_posdefaults.exit

_make_posdefaults.exit:                           ; preds = %bb.ag, %bb.al, %bb.an
  %.sink.i37102158213 = phi ptr [ %.sink.i37102, %bb.ag ], [ %.sink.i37102158214, %bb.al ], [ %.sink.i37102158214, %bb.an ]
  %.sink.i51 = phi ptr [ %i.mv, %bb.ag ], [ %i.oh, %bb.al ], [ %i.pn, %bb.an ] ; 2 uses
  %i.po = icmp eq ptr %.sink.i51, null
  br i1 %i.po, label %_make_posonlyargs.exit.thread, label %_make_posdefaults.exit.thread108

_make_posdefaults.exit.thread108.loopexit.unr-lcssa: ; preds = %bb.ae
  %lcmp.mod312.not = icmp eq i64 %xtraiter310, 0
  br i1 %lcmp.mod312.not, label %_make_posdefaults.exit.thread108, label %.epil.preheader309

.epil.preheader309:                               ; preds = %_make_posdefaults.exit.thread108.loopexit.unr-lcssa, %.lr.ph34.i.i58
  %.033.i.i59.epil.init = phi i64 [ 0, %.lr.ph34.i.i58 ], [ %i.mq, %_make_posdefaults.exit.thread108.loopexit.unr-lcssa ]
  %.132.i.i60.epil.init = phi i32 [ %.024.lcssa.i.i57, %.lr.ph34.i.i58 ], [ %i.mn, %_make_posdefaults.exit.thread108.loopexit.unr-lcssa ]
  %lcmp.mod313 = trunc i64 %i.kv to i1
  tail call void @llvm.assume(i1 %lcmp.mod313)
  %i.pp = load ptr, ptr %i.lk, align 8, !tbaa !23
  %i.pq = getelementptr [8 x i8], ptr %i.pp, i64 %.033.i.i59.epil.init
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !25
  %i.ps = load ptr, ptr %i.ll, align 8, !tbaa !23
  %i.pt = sext i32 %.132.i.i60.epil.init to i64
  %i.pu = getelementptr [8 x i8], ptr %i.ps, i64 %i.pt
  store ptr %i.pr, ptr %i.pu, align 8, !tbaa !25
  br label %_make_posdefaults.exit.thread108

_make_posdefaults.exit.thread108.loopexit228.unr-lcssa: ; preds = %bb.ah
  %lcmp.mod284.not = icmp eq i64 %xtraiter282, 0
  br i1 %lcmp.mod284.not, label %_make_posdefaults.exit.thread108, label %.epil.preheader281

.epil.preheader281:                               ; preds = %_make_posdefaults.exit.thread108.loopexit228.unr-lcssa, %.lr.ph.i49.i
  %.01417.i50.i.epil.init = phi i64 [ 0, %.lr.ph.i49.i ], [ %i.ny, %_make_posdefaults.exit.thread108.loopexit228.unr-lcssa ]
  %lcmp.mod285 = icmp ne i64 %xtraiter282, 0
  tail call void @llvm.assume(i1 %lcmp.mod285)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.epil.preheader281
  %.01417.i50.i.epil = phi i64 [ %.01417.i50.i.epil.init, %.epil.preheader281 ], [ %i.qa, %bb.ao ] ; 3 uses
  %epil.iter283 = phi i64 [ 0, %.epil.preheader281 ], [ %epil.iter283.next, %bb.ao ]
  %i.pv = getelementptr [8 x i8], ptr %i.my, i64 %.01417.i50.i.epil
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !25
  %i.px = getelementptr i8, ptr %i.pw, i64 8
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !89
  %i.pz = getelementptr [8 x i8], ptr %i.mz, i64 %.01417.i50.i.epil
  store ptr %i.py, ptr %i.pz, align 8, !tbaa !52
  %i.qa = add nuw nsw i64 %.01417.i50.i.epil, 1
  %epil.iter283.next = add i64 %epil.iter283, 1   ; 2 uses
  %epil.iter283.cmp.not = icmp eq i64 %epil.iter283.next, %xtraiter282
  br i1 %epil.iter283.cmp.not, label %_make_posdefaults.exit.thread108, label %bb.ao, !llvm.loop !115

_make_posdefaults.exit.thread108.loopexit229.unr-lcssa: ; preds = %bb.am
  %lcmp.mod277.not = icmp eq i64 %xtraiter275, 0
  br i1 %lcmp.mod277.not, label %_make_posdefaults.exit.thread108, label %.epil.preheader274

.epil.preheader274:                               ; preds = %_make_posdefaults.exit.thread108.loopexit229.unr-lcssa, %.lr.ph.i55.i
  %.01417.i56.i.epil.init = phi i64 [ 0, %.lr.ph.i55.i ], [ %i.pk, %_make_posdefaults.exit.thread108.loopexit229.unr-lcssa ]
  %lcmp.mod278 = icmp ne i64 %xtraiter275, 0
  tail call void @llvm.assume(i1 %lcmp.mod278)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %.epil.preheader274
  %.01417.i56.i.epil = phi i64 [ %.01417.i56.i.epil.init, %.epil.preheader274 ], [ %i.qg, %bb.ap ] ; 3 uses
  %epil.iter276 = phi i64 [ 0, %.epil.preheader274 ], [ %epil.iter276.next, %bb.ap ]
  %i.qb = getelementptr [8 x i8], ptr %i.ok, i64 %.01417.i56.i.epil
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !25
  %i.qd = getelementptr i8, ptr %i.qc, i64 8
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !89
  %i.qf = getelementptr [8 x i8], ptr %i.ol, i64 %.01417.i56.i.epil
  store ptr %i.qe, ptr %i.qf, align 8, !tbaa !52
  %i.qg = add nuw nsw i64 %.01417.i56.i.epil, 1
  %epil.iter276.next = add i64 %epil.iter276, 1   ; 2 uses
  %epil.iter276.cmp.not = icmp eq i64 %epil.iter276.next, %xtraiter275
  br i1 %epil.iter276.cmp.not, label %_make_posdefaults.exit.thread108, label %bb.ap, !llvm.loop !116

_make_posdefaults.exit.thread108:                 ; preds = %_make_posdefaults.exit.thread108.loopexit229.unr-lcssa, %bb.ap, %_make_posdefaults.exit.thread108.loopexit228.unr-lcssa, %bb.ao, %.epil.preheader309, %_make_posdefaults.exit.thread108.loopexit.unr-lcssa, %.preheader.i.i56, %_make_posdefaults.exit
  %.sink.i37102156 = phi ptr [ %.sink.i37102158213, %_make_posdefaults.exit ], [ %.sink.i37102, %.epil.preheader309 ], [ %.sink.i37102, %_make_posdefaults.exit.thread108.loopexit228.unr-lcssa ], [ %.sink.i37102, %.preheader.i.i56 ], [ %.sink.i37102, %_make_posdefaults.exit.thread108.loopexit.unr-lcssa ], [ %.sink.i37102, %bb.ao ], [ %.sink.i37102158214, %bb.ap ], [ %.sink.i37102158214, %_make_posdefaults.exit.thread108.loopexit229.unr-lcssa ]
  %.sink.i51110 = phi ptr [ %.sink.i51, %_make_posdefaults.exit ], [ %i.ky, %.epil.preheader309 ], [ %i.mv, %_make_posdefaults.exit.thread108.loopexit228.unr-lcssa ], [ %i.ky, %.preheader.i.i56 ], [ %i.ky, %_make_posdefaults.exit.thread108.loopexit.unr-lcssa ], [ %i.mv, %bb.ao ], [ %i.oh, %bb.ap ], [ %i.oh, %_make_posdefaults.exit.thread108.loopexit229.unr-lcssa ]
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %_get_names.exit.i78, label %bb.aq

bb.aq:                                            ; preds = %_make_posdefaults.exit.thread108
  %i.qh = load ptr, ptr %5, align 8, !tbaa !101
  %i.qi = getelementptr i8, ptr %5, i64 8         ; 2 uses
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !103 ; 3 uses
  %.not19.i70 = icmp eq ptr %i.qj, null
  br i1 %.not19.i70, label %_get_names.exit.i78.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.qk = load i64, ptr %i.qj, align 8, !tbaa !26 ; 5 uses
  %i.ql = getelementptr i8, ptr %0, i64 32
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !11
  %i.qn = tail call ptr @_Py_asdl_arg_seq_new(i64 noundef %i.qk, ptr noundef %i.qm) #14 ; 6 uses
  %.not.i.i71 = icmp ne ptr %i.qn, null
  %i.qo = icmp sgt i64 %i.qk, 0
  %or.cond.i.i72 = and i1 %i.qo, %.not.i.i71
  br i1 %or.cond.i.i72, label %.lr.ph.i.i75, label %_get_names.exit.thread28.i

.lr.ph.i.i75:                                     ; preds = %bb.ar
  %i.qp = getelementptr i8, ptr %i.qj, i64 8
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !23 ; 5 uses
  %i.qr = getelementptr i8, ptr %i.qn, i64 16     ; 5 uses
  %xtraiter317 = and i64 %i.qk, 3                 ; 3 uses
  %i.qs = icmp ult i64 %i.qk, 4
  br i1 %i.qs, label %.epil.preheader316, label %.lr.ph.i.i75.new

.lr.ph.i.i75.new:                                 ; preds = %.lr.ph.i.i75
  %unroll_iter321 = and i64 %i.qk, 9223372036854775804
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %.lr.ph.i.i75.new
  %.01417.i.i76 = phi i64 [ 0, %.lr.ph.i.i75.new ], [ %i.rm, %bb.as ] ; 6 uses
  %niter322 = phi i64 [ 0, %.lr.ph.i.i75.new ], [ %niter322.next.3, %bb.as ]
  %i.qt = getelementptr [8 x i8], ptr %i.qq, i64 %.01417.i.i76
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !25
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !86
  %i.qw = getelementptr [8 x i8], ptr %i.qr, i64 %.01417.i.i76
  store ptr %i.qv, ptr %i.qw, align 8, !tbaa !107
  %i.qx = or disjoint i64 %.01417.i.i76, 1        ; 2 uses
  %i.qy = getelementptr [8 x i8], ptr %i.qq, i64 %i.qx
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !25
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !86
  %i.rb = getelementptr [8 x i8], ptr %i.qr, i64 %i.qx
  store ptr %i.ra, ptr %i.rb, align 8, !tbaa !107
  %i.rc = or disjoint i64 %.01417.i.i76, 2        ; 2 uses
  %i.rd = getelementptr [8 x i8], ptr %i.qq, i64 %i.rc
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !25
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !86
  %i.rg = getelementptr [8 x i8], ptr %i.qr, i64 %i.rc
  store ptr %i.rf, ptr %i.rg, align 8, !tbaa !107
  %i.rh = or disjoint i64 %.01417.i.i76, 3        ; 2 uses
  %i.ri = getelementptr [8 x i8], ptr %i.qq, i64 %i.rh
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !25
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !86
  %i.rl = getelementptr [8 x i8], ptr %i.qr, i64 %i.rh
  store ptr %i.rk, ptr %i.rl, align 8, !tbaa !107
  %i.rm = add nuw nsw i64 %.01417.i.i76, 4        ; 2 uses
  %niter322.next.3 = add i64 %niter322, 4         ; 2 uses
  %niter322.ncmp.3 = icmp eq i64 %niter322.next.3, %unroll_iter321
  br i1 %niter322.ncmp.3, label %.thread30.i.loopexit.unr-lcssa, label %bb.as, !llvm.loop !108

_get_names.exit.i78:                              ; preds = %_make_posdefaults.exit.thread108
  %i.rn = getelementptr i8, ptr %0, i64 32
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !11
  %i.rp = tail call ptr @_Py_asdl_arg_seq_new(i64 noundef 0, ptr noundef %i.ro) #14 ; 2 uses
  %i.rq = icmp eq ptr %i.rp, null
  br i1 %i.rq, label %_make_posonlyargs.exit.thread, label %_make_kwargs.exit

_get_names.exit.i78.thread:                       ; preds = %bb.aq
  %i.rr = getelementptr i8, ptr %0, i64 32
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !11
  %i.rt = tail call ptr @_Py_asdl_arg_seq_new(i64 noundef 0, ptr noundef %i.rs) #14 ; 2 uses
  %i.ru = icmp eq ptr %i.rt, null
  br i1 %i.ru, label %_make_posonlyargs.exit.thread, label %.thread30.i

_get_names.exit.thread28.i:                       ; preds = %bb.ar
  %i.rv = icmp eq ptr %i.qn, null
  br i1 %i.rv, label %_make_posonlyargs.exit.thread, label %.thread30.i

.thread30.i.loopexit.unr-lcssa:                   ; preds = %bb.as
  %lcmp.mod319.not = icmp eq i64 %xtraiter317, 0
  br i1 %lcmp.mod319.not, label %.thread30.i, label %.epil.preheader316

.epil.preheader316:                               ; preds = %.thread30.i.loopexit.unr-lcssa, %.lr.ph.i.i75
  %.01417.i.i76.epil.init = phi i64 [ 0, %.lr.ph.i.i75 ], [ %i.rm, %.thread30.i.loopexit.unr-lcssa ]
  %lcmp.mod320 = icmp ne i64 %xtraiter317, 0
  tail call void @llvm.assume(i1 %lcmp.mod320)
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %.epil.preheader316
  %.01417.i.i76.epil = phi i64 [ %.01417.i.i76.epil.init, %.epil.preheader316 ], [ %i.sa, %bb.at ] ; 3 uses
  %epil.iter318 = phi i64 [ 0, %.epil.preheader316 ], [ %epil.iter318.next, %bb.at ]
  %i.rw = getelementptr [8 x i8], ptr %i.qq, i64 %.01417.i.i76.epil
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !25
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !86
  %i.rz = getelementptr [8 x i8], ptr %i.qr, i64 %.01417.i.i76.epil
  store ptr %i.ry, ptr %i.rz, align 8, !tbaa !107
  %i.sa = add nuw nsw i64 %.01417.i.i76.epil, 1
  %epil.iter318.next = add i64 %epil.iter318, 1   ; 2 uses
  %epil.iter318.cmp.not = icmp eq i64 %epil.iter318.next, %xtraiter317
  br i1 %epil.iter318.cmp.not, label %.thread30.i, label %bb.at, !llvm.loop !117

.thread30.i:                                      ; preds = %.thread30.i.loopexit.unr-lcssa, %bb.at, %_get_names.exit.i78.thread, %_get_names.exit.thread28.i
  %.084 = phi ptr [ %i.rt, %_get_names.exit.i78.thread ], [ %i.qn, %_get_names.exit.thread28.i ], [ %i.qn, %bb.at ], [ %i.qn, %.thread30.i.loopexit.unr-lcssa ]
  %i.sb = load ptr, ptr %i.qi, align 8, !tbaa !103 ; 3 uses
  %.not20.i73 = icmp eq ptr %i.sb, null
  br i1 %.not20.i73, label %_make_kwargs.exit.thread, label %bb.au

bb.au:                                            ; preds = %.thread30.i
  %i.sc = load i64, ptr %i.sb, align 8, !tbaa !26 ; 5 uses
  %i.sd = getelementptr i8, ptr %0, i64 32
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !11
  %i.sf = tail call ptr @_Py_asdl_expr_seq_new(i64 noundef %i.sc, ptr noundef %i.se) #14 ; 6 uses
  %.not.i22.i = icmp ne ptr %i.sf, null
  %i.sg = icmp sgt i64 %i.sc, 0
  %or.cond.i23.i = and i1 %i.sg, %.not.i22.i
  br i1 %or.cond.i23.i, label %.lr.ph.i24.i, label %_make_kwargs.exit.thread145

.lr.ph.i24.i:                                     ; preds = %bb.au
  %i.sh = getelementptr i8, ptr %i.sb, i64 8
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !23 ; 5 uses
  %i.sj = getelementptr i8, ptr %i.sf, i64 16     ; 5 uses
  %xtraiter324 = and i64 %i.sc, 3                 ; 3 uses
  %i.sk = icmp ult i64 %i.sc, 4
  br i1 %i.sk, label %.epil.preheader323, label %.lr.ph.i24.i.new

.lr.ph.i24.i.new:                                 ; preds = %.lr.ph.i24.i
  %unroll_iter328 = and i64 %i.sc, 9223372036854775804
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %.lr.ph.i24.i.new
  %.01417.i25.i = phi i64 [ 0, %.lr.ph.i24.i.new ], [ %i.ti, %bb.av ] ; 6 uses
  %niter329 = phi i64 [ 0, %.lr.ph.i24.i.new ], [ %niter329.next.3, %bb.av ]
  %i.sl = getelementptr [8 x i8], ptr %i.si, i64 %.01417.i25.i
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !25
  %i.sn = getelementptr i8, ptr %i.sm, i64 8
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !89
  %i.sp = getelementptr [8 x i8], ptr %i.sj, i64 %.01417.i25.i
  store ptr %i.so, ptr %i.sp, align 8, !tbaa !52
  %i.sq = or disjoint i64 %.01417.i25.i, 1        ; 2 uses
  %i.sr = getelementptr [8 x i8], ptr %i.si, i64 %i.sq
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !25
  %i.st = getelementptr i8, ptr %i.ss, i64 8
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !89
  %i.sv = getelementptr [8 x i8], ptr %i.sj, i64 %i.sq
  store ptr %i.su, ptr %i.sv, align 8, !tbaa !52
  %i.sw = or disjoint i64 %.01417.i25.i, 2        ; 2 uses
  %i.sx = getelementptr [8 x i8], ptr %i.si, i64 %i.sw
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !25
  %i.sz = getelementptr i8, ptr %i.sy, i64 8
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !89
  %i.tb = getelementptr [8 x i8], ptr %i.sj, i64 %i.sw
  store ptr %i.ta, ptr %i.tb, align 8, !tbaa !52
  %i.tc = or disjoint i64 %.01417.i25.i, 3        ; 2 uses
  %i.td = getelementptr [8 x i8], ptr %i.si, i64 %i.tc
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !25
  %i.tf = getelementptr i8, ptr %i.te, i64 8
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !89
  %i.th = getelementptr [8 x i8], ptr %i.sj, i64 %i.tc
  store ptr %i.tg, ptr %i.th, align 8, !tbaa !52
  %i.ti = add nuw nsw i64 %.01417.i25.i, 4        ; 2 uses
  %niter329.next.3 = add i64 %niter329, 4         ; 2 uses
  %niter329.ncmp.3 = icmp eq i64 %niter329.next.3, %unroll_iter328
  br i1 %niter329.ncmp.3, label %.thread135.loopexit.unr-lcssa, label %bb.av, !llvm.loop !112

_make_kwargs.exit:                                ; preds = %_get_names.exit.i78
  %i.tj = getelementptr i8, ptr %0, i64 32
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !11
  %i.tl = tail call ptr @_Py_asdl_expr_seq_new(i64 noundef 0, ptr noundef %i.tk) #14 ; 2 uses
  %i.tm = icmp eq ptr %i.tl, null
  br i1 %i.tm, label %_make_posonlyargs.exit.thread, label %bb.ax

_make_kwargs.exit.thread:                         ; preds = %.thread30.i
  %i.tn = getelementptr i8, ptr %0, i64 32
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !11
  %i.tp = tail call ptr @_Py_asdl_expr_seq_new(i64 noundef 0, ptr noundef %i.to) #14 ; 2 uses
  %i.tq = icmp eq ptr %i.tp, null
  br i1 %i.tq, label %_make_posonlyargs.exit.thread, label %.thread135

_make_kwargs.exit.thread145:                      ; preds = %bb.au
  %i.tr = icmp eq ptr %i.sf, null
  br i1 %i.tr, label %_make_posonlyargs.exit.thread, label %.thread135

.thread135.loopexit.unr-lcssa:                    ; preds = %bb.av
  %lcmp.mod326.not = icmp eq i64 %xtraiter324, 0
  br i1 %lcmp.mod326.not, label %.thread135, label %.epil.preheader323

.epil.preheader323:                               ; preds = %.thread135.loopexit.unr-lcssa, %.lr.ph.i24.i
  %.01417.i25.i.epil.init = phi i64 [ 0, %.lr.ph.i24.i ], [ %i.ti, %.thread135.loopexit.unr-lcssa ]
  %lcmp.mod327 = icmp ne i64 %xtraiter324, 0
  tail call void @llvm.assume(i1 %lcmp.mod327)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %.epil.preheader323
  %.01417.i25.i.epil = phi i64 [ %.01417.i25.i.epil.init, %.epil.preheader323 ], [ %i.tx, %bb.aw ] ; 3 uses
  %epil.iter325 = phi i64 [ 0, %.epil.preheader323 ], [ %epil.iter325.next, %bb.aw ]
  %i.ts = getelementptr [8 x i8], ptr %i.si, i64 %.01417.i25.i.epil
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !25
  %i.tu = getelementptr i8, ptr %i.tt, i64 8
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !89
  %i.tw = getelementptr [8 x i8], ptr %i.sj, i64 %.01417.i25.i.epil
  store ptr %i.tv, ptr %i.tw, align 8, !tbaa !52
  %i.tx = add nuw nsw i64 %.01417.i25.i.epil, 1
  %epil.iter325.next = add i64 %epil.iter325, 1   ; 2 uses
  %epil.iter325.cmp.not = icmp eq i64 %epil.iter325.next, %xtraiter324
  br i1 %epil.iter325.cmp.not, label %.thread135, label %bb.aw, !llvm.loop !118

.thread135:                                       ; preds = %.thread135.loopexit.unr-lcssa, %bb.aw, %_make_kwargs.exit.thread, %_make_kwargs.exit.thread145
  %storemerge21.i134139 = phi ptr [ %i.sf, %_make_kwargs.exit.thread145 ], [ %i.tp, %_make_kwargs.exit.thread ], [ %i.sf, %bb.aw ], [ %i.sf, %.thread135.loopexit.unr-lcssa ]
  %i.ty = getelementptr i8, ptr %5, i64 16
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !104
  br label %bb.ax

bb.ax:                                            ; preds = %_make_kwargs.exit, %.thread135
  %.021114132144 = phi ptr [ %i.qh, %.thread135 ], [ null, %_make_kwargs.exit ]
  %.185133142 = phi ptr [ %.084, %.thread135 ], [ %i.rp, %_make_kwargs.exit ]
  %storemerge21.i134140 = phi ptr [ %storemerge21.i134139, %.thread135 ], [ %i.tl, %_make_kwargs.exit ]
  %.0 = phi ptr [ %i.tz, %.thread135 ], [ null, %_make_kwargs.exit ]
  %i.ua = getelementptr i8, ptr %0, i64 32
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !11
  %i.uc = tail call ptr @_PyAST_arguments(ptr noundef nonnull %.sink.i95, ptr noundef nonnull %.sink.i37102156, ptr noundef %.021114132144, ptr noundef nonnull %.185133142, ptr noundef nonnull %storemerge21.i134140, ptr noundef %.0, ptr noundef nonnull %.sink.i51110, ptr noundef %i.ub) #14
  br label %_make_posonlyargs.exit.thread

_make_posonlyargs.exit.thread:                    ; preds = %_make_kwargs.exit.thread, %_get_names.exit.i78.thread, %_get_names.exit.thread28.i, %_get_names.exit.i78, %_get_defaults.exit43.i, %_get_defaults.exit.i, %_get_defaults.exit43.thread.i, %_get_names.exit.thread.i32, %_get_names.exit.i31, %bb.i, %_get_names.exit.i, %_make_posargs.exit, %bb.ax, %_make_kwargs.exit, %_make_kwargs.exit.thread145, %_make_posdefaults.exit, %_make_posonlyargs.exit
  %.3 = phi ptr [ null, %_get_names.exit.i ], [ null, %_make_posonlyargs.exit ], [ null, %_make_kwargs.exit.thread145 ], [ null, %_get_names.exit.i31 ], [ null, %_make_posargs.exit ], [ null, %bb.i ], [ null, %_get_names.exit.thread.i32 ], [ null, %_make_posdefaults.exit ], [ null, %_get_defaults.exit43.thread.i ], [ %i.uc, %bb.ax ], [ null, %_make_kwargs.exit ], [ null, %_get_defaults.exit43.i ], [ null, %_get_defaults.exit.i ], [ null, %_get_names.exit.i78 ], [ null, %_get_names.exit.thread28.i ], [ null, %_get_names.exit.i78.thread ], [ null, %_make_kwargs.exit.thread ]
  ret ptr %.3
}

declare ptr @_PyAST_arguments(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_empty_arguments(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32         ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = tail call ptr @_Py_asdl_arg_seq_new(i64 noundef 0, ptr noundef %i.b) #14 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.e = tail call ptr @_Py_asdl_arg_seq_new(i64 noundef 0, ptr noundef %i.d) #14 ; 2 uses
  %.not22 = icmp eq ptr %i.e, null
  br i1 %.not22, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.g = tail call ptr @_Py_asdl_expr_seq_new(i64 noundef 0, ptr noundef %i.f) #14 ; 2 uses
  %.not23 = icmp eq ptr %i.g, null
  br i1 %.not23, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.i = tail call ptr @_Py_asdl_arg_seq_new(i64 noundef 0, ptr noundef %i.h) #14 ; 2 uses
  %.not24 = icmp eq ptr %i.i, null
  br i1 %.not24, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.k = tail call ptr @_Py_asdl_expr_seq_new(i64 noundef 0, ptr noundef %i.j) #14 ; 2 uses
  %.not25 = icmp eq ptr %i.k, null
  br i1 %.not25, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.m = tail call ptr @_PyAST_arguments(ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, ptr noundef null, ptr noundef nonnull %i.i, ptr noundef nonnull %i.k, ptr noundef null, ptr noundef nonnull %i.g, ptr noundef %i.l) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.d, %bb.e, %bb.f, %bb.c, %bb.a
  %.4 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.d ], [ %i.m, %bb.f ], [ null, %bb.e ]
  ret ptr %.4
}

declare ptr @_Py_asdl_arg_seq_new(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_augoperator(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = tail call ptr @_PyArena_Malloc(ptr noundef %i.b, i64 noundef 4) #14 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %i.c, align 4, !tbaa !119
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_function_def_decorators(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %2, align 8, !tbaa !121
  %i.b = icmp eq i32 %i.a, 2
  %i.c = getelementptr i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36   ; 2 uses
  %i.e = getelementptr i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !36   ; 2 uses
  %i.g = getelementptr i8, ptr %2, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !36   ; 2 uses
  %i.i = getelementptr i8, ptr %2, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36   ; 2 uses
  %i.k = getelementptr i8, ptr %2, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !36   ; 2 uses
  %i.m = getelementptr i8, ptr %2, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !36   ; 2 uses
  %i.o = getelementptr i8, ptr %2, i64 64
  %i.p = load i32, ptr %i.o, align 8, !tbaa !123  ; 2 uses
  %i.q = getelementptr i8, ptr %2, i64 68
  %i.r = load i32, ptr %i.q, align 4, !tbaa !124  ; 2 uses
  %i.s = getelementptr i8, ptr %2, i64 72
  %i.t = load i32, ptr %i.s, align 8, !tbaa !125  ; 2 uses
  %i.u = getelementptr i8, ptr %2, i64 76
  %i.v = load i32, ptr %i.u, align 4, !tbaa !126  ; 2 uses
  %i.w = getelementptr i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !11   ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = tail call ptr @_PyAST_AsyncFunctionDef(ptr noundef %i.d, ptr noundef %i.f, ptr noundef %i.h, ptr noundef %1, ptr noundef %i.j, ptr noundef %i.l, ptr noundef %i.n, i32 noundef %i.p, i32 noundef %i.r, i32 noundef %i.t, i32 noundef %i.v, ptr noundef %i.x) #14
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.z = tail call ptr @_PyAST_FunctionDef(ptr noundef %i.d, ptr noundef %i.f, ptr noundef %i.h, ptr noundef %1, ptr noundef %i.j, ptr noundef %i.l, ptr noundef %i.n, i32 noundef %i.p, i32 noundef %i.r, i32 noundef %i.t, i32 noundef %i.v, ptr noundef %i.x) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.y, %bb.b ], [ %i.z, %bb.c ]
  ret ptr %.0
}

declare ptr @_PyAST_AsyncFunctionDef(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @_PyAST_FunctionDef(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_class_def_decorators(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = getelementptr i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.e = getelementptr i8, ptr %2, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !36
  %i.g = getelementptr i8, ptr %2, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !36
  %i.i = getelementptr i8, ptr %2, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.k = getelementptr i8, ptr %2, i64 64
  %i.l = load i32, ptr %i.k, align 8, !tbaa !123
  %i.m = getelementptr i8, ptr %2, i64 68
  %i.n = load i32, ptr %i.m, align 4, !tbaa !124
  %i.o = getelementptr i8, ptr %2, i64 72
  %i.p = load i32, ptr %i.o, align 8, !tbaa !125
  %i.q = getelementptr i8, ptr %2, i64 76
  %i.r = load i32, ptr %i.q, align 4, !tbaa !126
  %i.s = getelementptr i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !11
  %i.u = tail call ptr @_PyAST_ClassDef(ptr noundef %i.b, ptr noundef %i.d, ptr noundef %i.f, ptr noundef %i.h, ptr noundef %1, ptr noundef %i.j, i32 noundef %i.l, i32 noundef %i.n, i32 noundef %i.p, i32 noundef %i.r, ptr noundef %i.t) #14
  ret ptr %i.u
}

declare ptr @_PyAST_ClassDef(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_keyword_or_starred(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = tail call ptr @_PyArena_Malloc(ptr noundef %i.b, i64 noundef 16) #14 ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.c, align 8, !tbaa !127
  %i.d = getelementptr i8, ptr %i.c, i64 8
  store i32 %2, ptr %i.d, align 8, !tbaa !129
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_seq_extract_starred_exprs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_seq_number_of_starred_exprs.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !26     ; 4 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %_seq_number_of_starred_exprs.exit.thread

.lr.ph.i:                                         ; preds = %bb.b
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23   ; 5 uses
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
  %i.f = icmp ult i64 %i.b, 4
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.b, 9223372036854775804
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.new
  %.012.i = phi i32 [ 0, %.lr.ph.i.new ], [ %spec.select.i.3, %bb.c ]
  %.0911.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ad, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.c ]
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %.0911.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !129
  %.not.i = icmp eq i32 %i.j, 0
  %i.k = zext i1 %.not.i to i32
  %spec.select.i = add i32 %.012.i, %i.k
  %i.l = getelementptr [8 x i8], ptr %i.e, i64 %.0911.i
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !129
  %.not.i.1 = icmp eq i32 %i.p, 0
  %i.q = zext i1 %.not.i.1 to i32
  %spec.select.i.1 = add i32 %spec.select.i, %i.q
  %i.r = getelementptr [8 x i8], ptr %i.e, i64 %.0911.i
  %i.s = getelementptr i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !25
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !129
  %.not.i.2 = icmp eq i32 %i.v, 0
  %i.w = zext i1 %.not.i.2 to i32
  %spec.select.i.2 = add i32 %spec.select.i.1, %i.w
  %i.x = getelementptr [8 x i8], ptr %i.e, i64 %.0911.i
  %i.y = getelementptr i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !25
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !129
  %.not.i.3 = icmp eq i32 %i.ab, 0
  %i.ac = zext i1 %.not.i.3 to i32
  %spec.select.i.3 = add i32 %spec.select.i.2, %i.ac ; 3 uses
  %i.ad = add nuw nsw i64 %.0911.i, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_seq_number_of_starred_exprs.exit.unr-lcssa, label %bb.c, !llvm.loop !130

_seq_number_of_starred_exprs.exit.unr-lcssa:      ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_seq_number_of_starred_exprs.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_seq_number_of_starred_exprs.exit.unr-lcssa, %.lr.ph.i
  %.012.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %spec.select.i.3, %_seq_number_of_starred_exprs.exit.unr-lcssa ]
  %.0911.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ad, %_seq_number_of_starred_exprs.exit.unr-lcssa ]
  %lcmp.mod32 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod32)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.012.i.epil = phi i32 [ %.012.i.epil.init, %.epil.preheader ], [ %spec.select.i.epil, %bb.d ]
  %.0911.i.epil = phi i64 [ %.0911.i.epil.init, %.epil.preheader ], [ %i.aj, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ae = getelementptr [8 x i8], ptr %i.e, i64 %.0911.i.epil
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !25
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !129
  %.not.i.epil = icmp eq i32 %i.ah, 0
  %i.ai = zext i1 %.not.i.epil to i32
  %spec.select.i.epil = add i32 %.012.i.epil, %i.ai ; 2 uses
  %i.aj = add nuw nsw i64 %.0911.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_seq_number_of_starred_exprs.exit, label %bb.d, !llvm.loop !131

_seq_number_of_starred_exprs.exit:                ; preds = %bb.d, %_seq_number_of_starred_exprs.exit.unr-lcssa
  %spec.select.i.lcssa = phi i32 [ %spec.select.i.3, %_seq_number_of_starred_exprs.exit.unr-lcssa ], [ %spec.select.i.epil, %bb.d ] ; 2 uses
  %i.ak = icmp eq i32 %spec.select.i.lcssa, 0
  br i1 %i.ak, label %_seq_number_of_starred_exprs.exit.thread, label %bb.e

bb.e:                                             ; preds = %_seq_number_of_starred_exprs.exit
  %i.al = sext i32 %spec.select.i.lcssa to i64
  %i.am = getelementptr i8, ptr %0, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !11
  %i.ao = tail call ptr @_Py_asdl_expr_seq_new(i64 noundef %i.al, ptr noundef %i.an) #14 ; 6 uses
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %_seq_number_of_starred_exprs.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = load i64, ptr %1, align 8, !tbaa !26    ; 5 uses
  %i.aq = icmp sgt i64 %i.ap, 0
  br i1 %i.aq, label %.lr.ph, label %_seq_number_of_starred_exprs.exit.thread

.lr.ph:                                           ; preds = %bb.f
  %i.ar = load ptr, ptr %i.d, align 8, !tbaa !23  ; 3 uses
  %i.as = getelementptr i8, ptr %i.ao, i64 16     ; 3 uses
  %xtraiter34 = and i64 %i.ap, 1
  %i.at = icmp eq i64 %i.ap, 1
  br i1 %i.at, label %.epil.preheader33, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter38 = and i64 %i.ap, 9223372036854775806
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph.new
  %.01726 = phi i64 [ 0, %.lr.ph.new ], [ %i.bl, %bb.k ] ; 3 uses
  %.01825 = phi i32 [ 0, %.lr.ph.new ], [ %.119.1, %bb.k ] ; 3 uses
  %niter39 = phi i64 [ 0, %.lr.ph.new ], [ %niter39.next.1, %bb.k ]
  %i.au = getelementptr [8 x i8], ptr %i.ar, i64 %.01726
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !25 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !129
  %.not23 = icmp eq i32 %i.ax, 0
  br i1 %.not23, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !127
  %i.az = add i32 %.01825, 1
  %i.ba = sext i32 %.01825 to i64
  %i.bb = getelementptr [8 x i8], ptr %i.as, i64 %i.ba
  store ptr %i.ay, ptr %i.bb, align 8, !tbaa !52
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.119 = phi i32 [ %.01825, %bb.g ], [ %i.az, %bb.h ] ; 3 uses
  %i.bc = getelementptr [8 x i8], ptr %i.ar, i64 %.01726
  %i.bd = getelementptr i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !25 ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 8
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !129
  %.not23.1 = icmp eq i32 %i.bg, 0
  br i1 %.not23.1, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !127
  %i.bi = add i32 %.119, 1
  %i.bj = sext i32 %.119 to i64
  %i.bk = getelementptr [8 x i8], ptr %i.as, i64 %i.bj
  store ptr %i.bh, ptr %i.bk, align 8, !tbaa !52
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.119.1 = phi i32 [ %.119, %bb.i ], [ %i.bi, %bb.j ] ; 2 uses
  %i.bl = add nuw nsw i64 %.01726, 2              ; 2 uses
  %niter39.next.1 = add i64 %niter39, 2           ; 2 uses
  %niter39.ncmp.1 = icmp eq i64 %niter39.next.1, %unroll_iter38
  br i1 %niter39.ncmp.1, label %_seq_number_of_starred_exprs.exit.thread.loopexit.unr-lcssa, label %bb.g, !llvm.loop !132

_seq_number_of_starred_exprs.exit.thread.loopexit.unr-lcssa: ; preds = %bb.k
  %lcmp.mod36.not = icmp eq i64 %xtraiter34, 0
  br i1 %lcmp.mod36.not, label %_seq_number_of_starred_exprs.exit.thread, label %.epil.preheader33

.epil.preheader33:                                ; preds = %_seq_number_of_starred_exprs.exit.thread.loopexit.unr-lcssa, %.lr.ph
  %.01726.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.bl, %_seq_number_of_starred_exprs.exit.thread.loopexit.unr-lcssa ]
  %.01825.epil.init = phi i32 [ 0, %.lr.ph ], [ %.119.1, %_seq_number_of_starred_exprs.exit.thread.loopexit.unr-lcssa ]
  %lcmp.mod37 = trunc i64 %i.ap to i1
  tail call void @llvm.assume(i1 %lcmp.mod37)
  %i.bm = getelementptr [8 x i8], ptr %i.ar, i64 %.01726.epil.init
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !25 ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 8
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !129
  %.not23.epil = icmp eq i32 %i.bp, 0
  br i1 %.not23.epil, label %bb.l, label %_seq_number_of_starred_exprs.exit.thread

bb.l:                                             ; preds = %.epil.preheader33
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !127
  %i.br = sext i32 %.01825.epil.init to i64
  %i.bs = getelementptr [8 x i8], ptr %i.as, i64 %i.br
  store ptr %i.bq, ptr %i.bs, align 8, !tbaa !52
  br label %_seq_number_of_starred_exprs.exit.thread

_seq_number_of_starred_exprs.exit.thread:         ; preds = %_seq_number_of_starred_exprs.exit.thread.loopexit.unr-lcssa, %bb.l, %.epil.preheader33, %bb.f, %bb.a, %bb.b, %bb.e, %_seq_number_of_starred_exprs.exit
  %.1 = phi ptr [ null, %_seq_number_of_starred_exprs.exit ], [ null, %bb.e ], [ null, %bb.a ], [ null, %bb.b ], [ %i.ao, %bb.f ], [ %i.ao, %.epil.preheader33 ], [ %i.ao, %bb.l ], [ %i.ao, %_seq_number_of_starred_exprs.exit.thread.loopexit.unr-lcssa ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_seq_delete_starred_exprs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !26     ; 11 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %.split21

.lr.ph.i:                                         ; preds = %bb.b
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23   ; 5 uses
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
  %i.f = icmp ult i64 %i.b, 4
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.b, 9223372036854775804
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.new
  %.012.i = phi i32 [ 0, %.lr.ph.i.new ], [ %spec.select.i.3, %bb.c ]
  %.0911.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ad, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.c ]
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %.0911.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !129
  %.not.i = icmp eq i32 %i.j, 0
  %i.k = zext i1 %.not.i to i32
  %spec.select.i = add i32 %.012.i, %i.k
  %i.l = getelementptr [8 x i8], ptr %i.e, i64 %.0911.i
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !129
  %.not.i.1 = icmp eq i32 %i.p, 0
  %i.q = zext i1 %.not.i.1 to i32
  %spec.select.i.1 = add i32 %spec.select.i, %i.q
  %i.r = getelementptr [8 x i8], ptr %i.e, i64 %.0911.i
  %i.s = getelementptr i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !25
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !129
  %.not.i.2 = icmp eq i32 %i.v, 0
  %i.w = zext i1 %.not.i.2 to i32
  %spec.select.i.2 = add i32 %spec.select.i.1, %i.w
  %i.x = getelementptr [8 x i8], ptr %i.e, i64 %.0911.i
  %i.y = getelementptr i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !25
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !129
  %.not.i.3 = icmp eq i32 %i.ab, 0
  %i.ac = zext i1 %.not.i.3 to i32
  %spec.select.i.3 = add i32 %spec.select.i.2, %i.ac ; 3 uses
  %i.ad = add nuw nsw i64 %.0911.i, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.split21.loopexit.unr-lcssa, label %bb.c, !llvm.loop !130

.split21.loopexit.unr-lcssa:                      ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.split21.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.split21.loopexit.unr-lcssa, %.lr.ph.i
  %.012.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %spec.select.i.3, %.split21.loopexit.unr-lcssa ]
  %.0911.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ad, %.split21.loopexit.unr-lcssa ]
  %lcmp.mod36 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod36)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.012.i.epil = phi i32 [ %.012.i.epil.init, %.epil.preheader ], [ %spec.select.i.epil, %bb.d ]
  %.0911.i.epil = phi i64 [ %.0911.i.epil.init, %.epil.preheader ], [ %i.aj, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ae = getelementptr [8 x i8], ptr %i.e, i64 %.0911.i.epil
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !25
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !129
  %.not.i.epil = icmp eq i32 %i.ah, 0
  %i.ai = zext i1 %.not.i.epil to i32
  %spec.select.i.epil = add i32 %.012.i.epil, %i.ai ; 2 uses
  %i.aj = add nuw nsw i64 %.0911.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.split21.loopexit, label %bb.d, !llvm.loop !133

.split21.loopexit:                                ; preds = %bb.d, %.split21.loopexit.unr-lcssa
  %spec.select.i.lcssa = phi i32 [ %spec.select.i.3, %.split21.loopexit.unr-lcssa ], [ %spec.select.i.epil, %bb.d ]
  %i.ak = sext i32 %spec.select.i.lcssa to i64
  br label %.split21

.split21:                                         ; preds = %.split21.loopexit, %bb.b
  %phi.call = phi i64 [ %i.ak, %.split21.loopexit ], [ 0, %bb.b ] ; 2 uses
  %i.al = icmp eq i64 %i.b, %phi.call
  br i1 %i.al, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.split21
  %i.am = sub i64 %i.b, %phi.call
  %i.an = getelementptr i8, ptr %0, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !11
  %i.ap = tail call ptr @_Py_asdl_keyword_seq_new(i64 noundef %i.am, ptr noundef %i.ao) #14 ; 6 uses
  %.not = icmp eq ptr %i.ap, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.aq = icmp sgt i64 %i.b, 0
  br i1 %i.aq, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.ar = getelementptr i8, ptr %1, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !23 ; 3 uses
  %i.at = getelementptr i8, ptr %i.ap, i64 16     ; 3 uses
  %xtraiter38 = and i64 %i.b, 1
  %i.au = icmp eq i64 %i.b, 1
  br i1 %i.au, label %.epil.preheader37, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter42 = and i64 %i.b, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %.lr.ph.new
  %.01827 = phi i64 [ 0, %.lr.ph.new ], [ %i.bm, %bb.j ] ; 3 uses
  %.01926 = phi i32 [ 0, %.lr.ph.new ], [ %.120.1, %bb.j ] ; 3 uses
  %niter43 = phi i64 [ 0, %.lr.ph.new ], [ %niter43.next.1, %bb.j ]
  %i.av = getelementptr [8 x i8], ptr %i.as, i64 %.01827
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !25 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !129
  %.not25 = icmp eq i32 %i.ay, 0
  br i1 %.not25, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !127
  %i.ba = add i32 %.01926, 1
  %i.bb = sext i32 %.01926 to i64
  %i.bc = getelementptr [8 x i8], ptr %i.at, i64 %i.bb
  store ptr %i.az, ptr %i.bc, align 8, !tbaa !134
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.120 = phi i32 [ %i.ba, %bb.g ], [ %.01926, %bb.f ] ; 3 uses
  %i.bd = getelementptr [8 x i8], ptr %i.as, i64 %.01827
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !25 ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 8
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !129
  %.not25.1 = icmp eq i32 %i.bh, 0
  br i1 %.not25.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !127
  %i.bj = add i32 %.120, 1
  %i.bk = sext i32 %.120 to i64
  %i.bl = getelementptr [8 x i8], ptr %i.at, i64 %i.bk
  store ptr %i.bi, ptr %i.bl, align 8, !tbaa !134
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.120.1 = phi i32 [ %i.bj, %bb.i ], [ %.120, %bb.h ] ; 2 uses
  %i.bm = add nuw nsw i64 %.01827, 2              ; 2 uses
  %niter43.next.1 = add i64 %niter43, 2           ; 2 uses
  %niter43.ncmp.1 = icmp eq i64 %niter43.next.1, %unroll_iter42
  br i1 %niter43.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !136

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.j
  %lcmp.mod40.not = icmp eq i64 %xtraiter38, 0
  br i1 %lcmp.mod40.not, label %.loopexit, label %.epil.preheader37

.epil.preheader37:                                ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %.01827.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.bm, %.loopexit.loopexit.unr-lcssa ]
  %.01926.epil.init = phi i32 [ 0, %.lr.ph ], [ %.120.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod41 = trunc i64 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod41)
  %i.bn = getelementptr [8 x i8], ptr %i.as, i64 %.01827.epil.init
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !25 ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !129
  %.not25.epil = icmp eq i32 %i.bq, 0
  br i1 %.not25.epil, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %.epil.preheader37
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !127
  %i.bs = sext i32 %.01926.epil.init to i64
  %i.bt = getelementptr [8 x i8], ptr %i.at, i64 %i.bs
  store ptr %i.br, ptr %i.bt, align 8, !tbaa !134
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.k, %.epil.preheader37, %bb.a, %.preheader, %bb.e, %.split21
  %.1 = phi ptr [ null, %.split21 ], [ null, %bb.e ], [ %i.ap, %.preheader ], [ null, %bb.a ], [ %i.ap, %.epil.preheader37 ], [ %i.ap, %bb.k ], [ %i.ap, %.loopexit.loopexit.unr-lcssa ]
  ret ptr %.1
}

declare ptr @_Py_asdl_keyword_seq_new(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden noundef ptr @_PyPegen_ensure_imaginary(ptr noundef %0, ptr nofree noundef readonly captures(ret: address, provenance) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !63
  %.not = icmp eq i32 %i.a, 22
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val = load ptr, ptr %i.d, align 8, !tbaa !137
  %.not10 = icmp eq ptr %.val, @PyComplex_Type
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !37
  %i.f = getelementptr i8, ptr %1, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !40
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr i8, ptr %1, i64 44
  %i.j = load i32, ptr %i.i, align 4, !tbaa !42
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr i8, ptr %1, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !43
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr i8, ptr %1, i64 52
  %i.p = load i32, ptr %i.o, align 4, !tbaa !44
  %i.q = sext i32 %i.p to i64
  tail call void (ptr, ptr, i64, i64, i64, i64, ptr, ...) @RAISE_ERROR_KNOWN_LOCATION(ptr noundef %0, ptr noundef %i.e, i64 noundef %i.h, i64 noundef %i.k, i64 noundef %i.n, i64 noundef %i.q, ptr noundef nonnull @.str.2)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ %1, %bb.b ]
  ret ptr %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @RAISE_ERROR_KNOWN_LOCATION(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 -2147483648, 2147483648) %2, i64 noundef range(i64 -2147483648, 2147483648) %3, i64 noundef range(i64 -2147483648, 2147483648) %4, i64 noundef range(i64 -2147483648, 2147483648) %5, ptr noundef %6, ...) unnamed_addr #6 {
bb.a:
  %7 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.va_start.p0(ptr nonnull %7)
  %i.a = icmp eq i64 %3, -5
  %i.b = add nsw i64 %3, 1
  %i.c = select i1 %i.a, i64 -5, i64 %i.b
  %i.d = icmp eq i64 %5, -5
  %i.e = add nsw i64 %5, 1
  %i.f = select i1 %i.d, i64 -5, i64 %i.e
  %i.g = call ptr @_PyPegen_raise_error_known_location(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %i.c, i64 noundef %4, i64 noundef %i.f, ptr noundef %6, ptr noundef nonnull %7) #14 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @_PyPegen_ensure_real(ptr noundef %0, ptr nofree noundef readonly captures(ret: address, provenance) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !63
  %.not = icmp eq i32 %i.a, 22
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val = load ptr, ptr %i.d, align 8, !tbaa !137
  %.not10 = icmp eq ptr %.val, @PyComplex_Type
  br i1 %.not10, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !37
  %i.f = getelementptr i8, ptr %1, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !40
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr i8, ptr %1, i64 44
  %i.j = load i32, ptr %i.i, align 4, !tbaa !42
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr i8, ptr %1, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !43
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr i8, ptr %1, i64 52
  %i.p = load i32, ptr %i.o, align 4, !tbaa !44
  %i.q = sext i32 %i.p to i64
  tail call void (ptr, ptr, i64, i64, i64, i64, ptr, ...) @RAISE_ERROR_KNOWN_LOCATION(ptr noundef %0, ptr noundef %i.e, i64 noundef %i.h, i64 noundef %i.k, i64 noundef %i.n, i64 noundef %i.q, ptr noundef nonnull @.str.3)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ %1, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_make_module(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112        ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 128
  %i.c = load i64, ptr %i.b, align 8, !tbaa !140  ; 3 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %.critedge37

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !11
  %i.g = tail call ptr @_Py_asdl_type_ignore_seq_new(i64 noundef %i.c, ptr noundef %i.f) #14 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.g, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.h
  %.02742 = phi i64 [ 0, %.lr.ph ], [ %i.ac, %bb.h ] ; 4 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !141
  %i.k = getelementptr [16 x i8], ptr %i.j, i64 %.02742
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !142  ; 2 uses
  %i.n = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #15
  %i.o = tail call ptr @PyUnicode_DecodeUTF8(ptr noundef nonnull %i.m, i64 noundef %i.n, ptr noundef null) #14 ; 6 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !11
  %i.r = tail call i32 @_PyArena_AddPyObject(ptr noundef %i.q, ptr noundef nonnull %i.o) #14
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %_PyPegen_new_type_comment.exit

bb.e:                                             ; preds = %bb.d
  %i.t = load i32, ptr %i.o, align 8, !tbaa !36   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.t, -1
  br i1 %.not.i.i, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.o, align 8, !tbaa !36
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.o) #14
  br label %.critedge

_PyPegen_new_type_comment.exit:                   ; preds = %bb.d
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !141
  %i.x = getelementptr [16 x i8], ptr %i.w, i64 %.02742
  %i.y = load i32, ptr %i.x, align 8, !tbaa !145
  %i.z = load ptr, ptr %i.e, align 8, !tbaa !11
  %i.aa = tail call ptr @_PyAST_TypeIgnore(i32 noundef %i.y, ptr noundef nonnull %i.o, ptr noundef %i.z) #14 ; 2 uses
  %.not39 = icmp eq ptr %i.aa, null
  br i1 %.not39, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_PyPegen_new_type_comment.exit
  %i.ab = getelementptr [8 x i8], ptr %i.i, i64 %.02742
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !146
  %i.ac = add nuw nsw i64 %.02742, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ac, %i.c
  br i1 %exitcond.not, label %.critedge37, label %bb.c, !llvm.loop !148

.critedge37:                                      ; preds = %bb.h, %bb.a
  %.026 = phi ptr [ null, %bb.a ], [ %i.g, %bb.h ]
  %i.ad = getelementptr i8, ptr %0, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !11
  %i.af = tail call ptr @_PyAST_Module(ptr noundef %1, ptr noundef %.026, ptr noundef %i.ae) #14
  br label %.critedge

end_hunk_0
begin_hunk_1_@_PyPegen_setup_full_format_spec:bb.a
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val69 = load ptr, ptr %i.j, align 8, !tbaa !137
  %.not74 = icmp eq ptr %.val69, @PyUnicode_Type
  br i1 %.not74, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %i.i, i64 16
  %.val71 = load i64, ptr %i.k, align 8, !tbaa !164
  %i.l = icmp ne i64 %.val71, 0
  %i.m = zext i1 %i.l to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.n = phi i64 [ 1, %bb.d ], [ 1, %bb.c ], [ %i.m, %bb.e ]
  %i.o = add i64 %i.n, %.05976                    ; 2 uses
  %i.p = add nuw nsw i64 %.06075, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.p, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !171

bb.g:                                             ; preds = %._crit_edge
  %i.q = getelementptr i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !11
  %i.s = tail call ptr @_Py_asdl_expr_seq_new(i64 noundef %.059.lcssa, ptr noundef %i.r) #14 ; 4 uses
  %.not66 = icmp eq ptr %i.s, null
  br i1 %.not66, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.g
  br i1 %i.b, label %.lr.ph79, label %.loopexit

.lr.ph79:                                         ; preds = %.preheader
  %i.t = getelementptr i8, ptr %2, i64 16
  %i.u = getelementptr i8, ptr %i.s, i64 16
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph79, %bb.l
  %.05578 = phi i64 [ 0, %.lr.ph79 ], [ %i.ag, %bb.l ] ; 2 uses
  %.05677 = phi i64 [ 0, %.lr.ph79 ], [ %.157, %bb.l ] ; 3 uses
  %i.v = getelementptr [8 x i8], ptr %i.t, i64 %.05578
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !52   ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !63
  %i.y = icmp eq i32 %i.x, 22
  br i1 %i.y, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr i8, ptr %i.w, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !36  ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %.val = load ptr, ptr %i.ab, align 8, !tbaa !137
  %.not73 = icmp eq ptr %.val, @PyUnicode_Type
  br i1 %.not73, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr i8, ptr %i.aa, i64 16
  %.val70 = load i64, ptr %i.ac, align 8, !tbaa !164
  %i.ad = icmp eq i64 %.val70, 0
  br i1 %i.ad, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.ae = add i64 %.05677, 1
  %i.af = getelementptr [8 x i8], ptr %i.u, i64 %.05677
  store ptr %i.w, ptr %i.af, align 8, !tbaa !52
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.157 = phi i64 [ %i.ae, %bb.k ], [ %.05677, %bb.j ]
  %i.ag = add nuw nsw i64 %.05578, 1              ; 2 uses
  %exitcond80.not = icmp eq i64 %i.ag, %i.a
  br i1 %exitcond80.not, label %.loopexit, label %bb.h, !llvm.loop !172

.loopexit:                                        ; preds = %bb.l, %.preheader, %._crit_edge
  %.154 = phi ptr [ %2, %._crit_edge ], [ %i.s, %.preheader ], [ %i.s, %bb.l ] ; 4 uses
  %i.ah = load i64, ptr %.154, align 8, !tbaa !50
  switch i64 %i.ah, label %bb.o [
    i64 0, label %bb.n
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %.loopexit
  %i.ai = getelementptr i8, ptr %.154, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !52
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !63
  %i.al = icmp eq i32 %i.ak, 22
  br i1 %i.al, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.loopexit, %bb.m
  %i.am = getelementptr i8, ptr %0, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !11
  %i.ao = tail call ptr @_PyAST_JoinedStr(ptr noundef nonnull %.154, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %i.an) #14
  br label %bb.p

bb.o:                                             ; preds = %.loopexit, %bb.m
  %i.ap = tail call ptr @_PyPegen_concatenate_strings(ptr noundef %0, ptr noundef nonnull %.154, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.052 = phi ptr [ %i.ao, %bb.n ], [ %i.ap, %bb.o ] ; 2 uses
  %.not67 = icmp eq ptr %.052, null
  br i1 %.not67, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = getelementptr i8, ptr %1, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !167
  %i.as = getelementptr i8, ptr %0, i64 32
  %.val72 = load ptr, ptr %i.as, align 8, !tbaa !11
  %i.at = tail call ptr @_PyArena_Malloc(ptr noundef %.val72, i64 noundef 16) #14 ; 4 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.av = getelementptr i8, ptr %i.at, i64 8
  store ptr %i.ar, ptr %i.av, align 8, !tbaa !168
  store ptr %.052, ptr %i.at, align 8, !tbaa !170
  br label %.critedge

.critedge:                                        ; preds = %bb.r, %bb.q, %bb.p, %bb.g, %bb.a
  %.3 = phi ptr [ null, %bb.a ], [ null, %bb.p ], [ %i.at, %bb.r ], [ null, %bb.g ], [ null, %bb.q ]
  ret ptr %.3
}

declare ptr @_PyAST_JoinedStr(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_concatenate_strings(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %.thread89, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !50     ; 6 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.thread88

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr i8, ptr %1, i64 16         ; 3 uses
  %xtraiter = and i64 %i.b, 1
  %i.e = icmp eq i64 %i.b, 1
  br i1 %i.e, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.b, 9223372036854775806
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %.lr.ph.new
  %.04155 = phi i64 [ 0, %.lr.ph.new ], [ %i.s, %bb.i ] ; 3 uses
  %.04254 = phi i32 [ 0, %.lr.ph.new ], [ %.1.1, %bb.i ] ; 3 uses
  %.04353 = phi i32 [ 0, %.lr.ph.new ], [ %.144.1, %bb.i ] ; 3 uses
  %.04552 = phi i32 [ 0, %.lr.ph.new ], [ %.146.1, %bb.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.i ]
  %i.f = getelementptr [8 x i8], ptr %i.d, i64 %.04155
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !52   ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !63
  switch i32 %i.h, label %bb.e [
    i32 22, label %bb.d
    i32 21, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %.val = load ptr, ptr %i.k, align 8, !tbaa !137
  %.not = icmp eq ptr %.val, @PyBytes_Type        ; 2 uses
  %..043 = select i1 %.not, i32 %.04353, i32 1
  %.042. = select i1 %.not, i32 1, i32 %.04254
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e
  %.146 = phi i32 [ 1, %bb.e ], [ %.04552, %bb.d ], [ %.04552, %bb.c ] ; 2 uses
  %.144 = phi i32 [ %.04353, %bb.e ], [ %..043, %bb.d ], [ %.04353, %bb.c ] ; 3 uses
  %.1 = phi i32 [ %.04254, %bb.e ], [ %.042., %bb.d ], [ %.04254, %bb.c ] ; 3 uses
  %i.l = getelementptr [8 x i8], ptr %i.d, i64 %.04155
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !52   ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !63
  switch i32 %i.o, label %bb.h [
    i32 22, label %bb.g
    i32 21, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !36
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %.val.1 = load ptr, ptr %i.r, align 8, !tbaa !137
  %.not.1 = icmp eq ptr %.val.1, @PyBytes_Type    ; 2 uses
  %..043.1 = select i1 %.not.1, i32 %.144, i32 1
  %.042..1 = select i1 %.not.1, i32 1, i32 %.1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.146.1 = phi i32 [ 1, %bb.h ], [ %.146, %bb.g ], [ %.146, %bb.f ] ; 3 uses
  %.144.1 = phi i32 [ %.144, %bb.h ], [ %..043.1, %bb.g ], [ %.144, %bb.f ] ; 3 uses
  %.1.1 = phi i32 [ %.1, %bb.h ], [ %.042..1, %bb.g ], [ %.1, %bb.f ] ; 3 uses
  %i.s = add nuw nsw i64 %.04155, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.c, !llvm.loop !173

._crit_edge.unr-lcssa:                            ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.04155.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.s, %._crit_edge.unr-lcssa ]
  %.04254.epil.init = phi i32 [ 0, %.lr.ph ], [ %.1.1, %._crit_edge.unr-lcssa ] ; 3 uses
  %.04353.epil.init = phi i32 [ 0, %.lr.ph ], [ %.144.1, %._crit_edge.unr-lcssa ] ; 3 uses
  %.04552.epil.init = phi i32 [ 0, %.lr.ph ], [ %.146.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod93 = trunc i64 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod93)
  %i.t = getelementptr [8 x i8], ptr %i.d, i64 %.04155.epil.init
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !52   ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !63
  switch i32 %i.v, label %bb.k [
    i32 22, label %bb.j
    i32 21, label %._crit_edge
  ]

bb.j:                                             ; preds = %.epil.preheader
  %i.w = getelementptr i8, ptr %i.u, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !36
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val.epil = load ptr, ptr %i.y, align 8, !tbaa !137
  %.not.epil = icmp eq ptr %.val.epil, @PyBytes_Type ; 2 uses
  %..043.epil = select i1 %.not.epil, i32 %.04353.epil.init, i32 1
  %.042..epil = select i1 %.not.epil, i32 1, i32 %.04254.epil.init
  br label %._crit_edge

bb.k:                                             ; preds = %.epil.preheader
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.j, %bb.k, %._crit_edge.unr-lcssa
  %.146.lcssa = phi i32 [ %.146.1, %._crit_edge.unr-lcssa ], [ 1, %bb.k ], [ %.04552.epil.init, %bb.j ], [ %.04552.epil.init, %.epil.preheader ]
  %.144.lcssa = phi i32 [ %.144.1, %._crit_edge.unr-lcssa ], [ %.04353.epil.init, %bb.k ], [ %..043.epil, %bb.j ], [ %.04353.epil.init, %.epil.preheader ]
  %.1.lcssa = phi i32 [ %.1.1, %._crit_edge.unr-lcssa ], [ %.04254.epil.init, %bb.k ], [ %.042..epil, %bb.j ], [ %.04254.epil.init, %.epil.preheader ]
  %i.z = icmp ne i32 %.144.lcssa, 0
  %i.aa = icmp ne i32 %.146.lcssa, 0              ; 2 uses
  %i.ab = select i1 %i.z, i1 true, i1 %i.aa
  %i.ac = icmp ne i32 %.1.lcssa, 0                ; 2 uses
  %i.ad = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge
  %i.ae = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !37
  %i.af = tail call ptr (ptr, ptr, i32, ptr, ...) @_PyPegen_raise_error(ptr noundef %0, ptr noundef %i.ae, i32 noundef 0, ptr noundef nonnull @.str.44) #14 ; 0 uses
  br label %_build_concatenated_bytes.exit

bb.m:                                             ; preds = %._crit_edge
  br i1 %i.aa, label %bb.aj, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = icmp eq i64 %i.b, 1
  br i1 %i.ag, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ah = getelementptr i8, ptr %1, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !52
  br label %_build_concatenated_bytes.exit

bb.p:                                             ; preds = %bb.n
  br i1 %i.ac, label %bb.q, label %.thread88

bb.q:                                             ; preds = %bb.p
  %i.aj = load i64, ptr %1, align 8, !tbaa !50    ; 6 uses
  %i.ak = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !52
  %i.am = getelementptr i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !36
  %.not5965.i = icmp sgt i64 %i.aj, 0             ; 2 uses
  br i1 %.not5965.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.q, %bb.r
  %.04567.i = phi i64 [ %i.av, %bb.r ], [ 0, %bb.q ] ; 2 uses
  %.04866.i = phi i64 [ %i.aw, %bb.r ], [ 0, %bb.q ] ; 2 uses
  %i.ao = getelementptr [8 x i8], ptr %i.ak, i64 %.04866.i
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !52
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !36
  %i.as = getelementptr i8, ptr %i.ar, i64 16
  %.val60.i = load i64, ptr %i.as, align 8, !tbaa !174 ; 2 uses
  %i.at = sub i64 9223372036854775807, %.04567.i
  %.not.i = icmp sgt i64 %.val60.i, %i.at
  br i1 %.not.i, label %.thread62.i, label %bb.r

.thread62.i:                                      ; preds = %.lr.ph.i
  %i.au = tail call ptr @PyErr_NoMemory() #14     ; 0 uses
  br label %_build_concatenated_bytes.exit

bb.r:                                             ; preds = %.lr.ph.i
  %i.av = add i64 %.val60.i, %.04567.i            ; 2 uses
  %i.aw = add nuw nsw i64 %.04866.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aw, %i.aj
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !176

._crit_edge.i:                                    ; preds = %bb.r, %bb.q
  %.045.lcssa.i = phi i64 [ 0, %bb.q ], [ %i.av, %bb.r ]
  %i.ax = tail call ptr @PyBytesWriter_Create(i64 noundef %.045.lcssa.i) #14 ; 3 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %_build_concatenated_bytes.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i
  %i.az = tail call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.ax) #14 ; 2 uses
  br i1 %.not5965.i, label %.lr.ph71.i.preheader, label %._crit_edge72.i

.lr.ph71.i.preheader:                             ; preds = %bb.s
  %i.ba = getelementptr i8, ptr %1, i64 16        ; 3 uses
  %xtraiter94 = and i64 %i.aj, 1
  %i.bb = icmp eq i64 %i.aj, 1
  br i1 %i.bb, label %.lr.ph71.i.epil.preheader, label %.lr.ph71.i.preheader.new

.lr.ph71.i.preheader.new:                         ; preds = %.lr.ph71.i.preheader
  %unroll_iter97 = and i64 %i.aj, 9223372036854775806
  br label %.lr.ph71.i

._crit_edge72.i.loopexit.unr-lcssa:               ; preds = %bb.w
  %lcmp.mod95.not = icmp eq i64 %xtraiter94, 0
  br i1 %lcmp.mod95.not, label %._crit_edge72.i, label %.lr.ph71.i.epil.preheader

.lr.ph71.i.epil.preheader:                        ; preds = %._crit_edge72.i.loopexit.unr-lcssa, %.lr.ph71.i.preheader
  %.05169.i.epil.init = phi i64 [ 0, %.lr.ph71.i.preheader ], [ %i.cc, %._crit_edge72.i.loopexit.unr-lcssa ]
  %.05268.i.epil.init = phi ptr [ %i.az, %.lr.ph71.i.preheader ], [ %.153.i.1, %._crit_edge72.i.loopexit.unr-lcssa ]
  %lcmp.mod96 = trunc i64 %i.aj to i1
  tail call void @llvm.assume(i1 %lcmp.mod96)
  %i.bc = getelementptr [8 x i8], ptr %i.ba, i64 %.05169.i.epil.init
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !52
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !36 ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 16
  %.val.i.epil = load i64, ptr %i.bg, align 8, !tbaa !174 ; 2 uses
  %i.bh = icmp sgt i64 %.val.i.epil, 0
  br i1 %i.bh, label %bb.t, label %._crit_edge72.i

bb.t:                                             ; preds = %.lr.ph71.i.epil.preheader
  %i.bi = getelementptr i8, ptr %i.bf, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.05268.i.epil.init, ptr align 1 %i.bi, i64 %.val.i.epil, i1 false)
  br label %._crit_edge72.i

._crit_edge72.i:                                  ; preds = %._crit_edge72.i.loopexit.unr-lcssa, %bb.t, %.lr.ph71.i.epil.preheader, %bb.s
  %i.bj = tail call ptr @PyBytesWriter_Finish(ptr noundef nonnull %i.ax) #14 ; 6 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %_build_concatenated_bytes.exit, label %bb.x

.lr.ph71.i:                                       ; preds = %bb.w, %.lr.ph71.i.preheader.new
  %.05169.i = phi i64 [ 0, %.lr.ph71.i.preheader.new ], [ %i.cc, %bb.w ] ; 3 uses
  %.05268.i = phi ptr [ %i.az, %.lr.ph71.i.preheader.new ], [ %.153.i.1, %bb.w ] ; 3 uses
  %niter98 = phi i64 [ 0, %.lr.ph71.i.preheader.new ], [ %niter98.next.1, %bb.w ]
  %i.bl = getelementptr [8 x i8], ptr %i.ba, i64 %.05169.i
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !52
  %i.bn = getelementptr i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !36 ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 16
  %.val.i = load i64, ptr %i.bp, align 8, !tbaa !174 ; 3 uses
  %i.bq = icmp sgt i64 %.val.i, 0
  br i1 %i.bq, label %bb.u, label %.lr.ph71.i.1

bb.u:                                             ; preds = %.lr.ph71.i
  %i.br = getelementptr i8, ptr %i.bo, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.05268.i, ptr align 1 %i.br, i64 %.val.i, i1 false)
  %i.bs = getelementptr i8, ptr %.05268.i, i64 %.val.i
  br label %.lr.ph71.i.1

.lr.ph71.i.1:                                     ; preds = %bb.u, %.lr.ph71.i
  %.153.i = phi ptr [ %i.bs, %bb.u ], [ %.05268.i, %.lr.ph71.i ] ; 3 uses
  %i.bt = getelementptr [8 x i8], ptr %i.ba, i64 %.05169.i
  %i.bu = getelementptr i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !52
  %i.bw = getelementptr i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !36 ; 2 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 16
  %.val.i.1 = load i64, ptr %i.by, align 8, !tbaa !174 ; 3 uses
  %i.bz = icmp sgt i64 %.val.i.1, 0
  br i1 %i.bz, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph71.i.1
  %i.ca = getelementptr i8, ptr %i.bx, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.153.i, ptr align 1 %i.ca, i64 %.val.i.1, i1 false)
  %i.cb = getelementptr i8, ptr %.153.i, i64 %.val.i.1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph71.i.1
  %.153.i.1 = phi ptr [ %i.cb, %bb.v ], [ %.153.i, %.lr.ph71.i.1 ] ; 2 uses
  %i.cc = add nuw nsw i64 %.05169.i, 2            ; 2 uses
  %niter98.next.1 = add i64 %niter98, 2           ; 2 uses
  %niter98.ncmp.1 = icmp eq i64 %niter98.next.1, %unroll_iter97
  br i1 %niter98.ncmp.1, label %._crit_edge72.i.loopexit.unr-lcssa, label %.lr.ph71.i, !llvm.loop !177

bb.x:                                             ; preds = %._crit_edge72.i
  %i.cd = tail call i32 @_PyArena_AddPyObject(ptr noundef %6, ptr noundef nonnull %i.bj) #14
  %i.ce = icmp slt i32 %i.cd, 0
  br i1 %i.ce, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.cf = load i32, ptr %i.bj, align 8, !tbaa !36 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.cf, -1
  br i1 %.not.i.i, label %bb.z, label %_build_concatenated_bytes.exit

bb.z:                                             ; preds = %bb.y
  %i.cg = add nsw i32 %i.cf, -1                   ; 2 uses
  store i32 %i.cg, ptr %i.bj, align 8, !tbaa !36
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.aa, label %_build_concatenated_bytes.exit

bb.aa:                                            ; preds = %bb.z
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.bj) #14
  br label %_build_concatenated_bytes.exit

bb.ab:                                            ; preds = %bb.x
  %i.ci = getelementptr i8, ptr %0, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !11
  %i.ck = tail call ptr @_PyAST_Constant(ptr noundef nonnull %i.bj, ptr noundef %i.an, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %i.cj) #14
  br label %_build_concatenated_bytes.exit

.thread88:                                        ; preds = %bb.p, %bb.b
  %i.cl = load i64, ptr %1, align 8, !tbaa !50
  br label %.thread89

.thread89:                                        ; preds = %bb.a, %.thread88
  %i.cm = phi i64 [ %i.cl, %.thread88 ], [ 0, %bb.a ] ; 2 uses
  %i.cn = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !52
  %i.cp = getelementptr i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !36
  %i.cr = tail call ptr @PyUnicodeWriter_Create(i64 noundef 0) #14 ; 4 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %_build_concatenated_bytes.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.thread89
  %.not3437.i = icmp sgt i64 %i.cm, 0
  br i1 %.not3437.i, label %.critedge.i, label %.critedge36.i

bb.ac:                                            ; preds = %.critedge.i
  %i.ct = add nuw nsw i64 %.03038.i, 1            ; 2 uses
  %exitcond.not.i51 = icmp eq i64 %i.ct, %i.cm
  br i1 %exitcond.not.i51, label %.critedge36.i, label %.critedge.i, !llvm.loop !178

.critedge.i:                                      ; preds = %.preheader.i, %bb.ac
  %.03038.i = phi i64 [ %i.ct, %bb.ac ], [ 0, %.preheader.i ] ; 2 uses
  %i.cu = getelementptr [8 x i8], ptr %i.cn, i64 %.03038.i
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !52
  %i.cw = getelementptr i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !36
  %i.cy = tail call i32 @PyUnicodeWriter_WriteStr(ptr noundef nonnull %i.cr, ptr noundef %i.cx) #14
  %.not.i50 = icmp eq i32 %i.cy, 0
  br i1 %.not.i50, label %bb.ac, label %bb.ad

bb.ad:                                            ; preds = %.critedge.i
  tail call void @PyUnicodeWriter_Discard(ptr noundef nonnull %i.cr) #14
  br label %_build_concatenated_bytes.exit

.critedge36.i:                                    ; preds = %bb.ac, %.preheader.i
  %i.cz = tail call ptr @PyUnicodeWriter_Finish(ptr noundef nonnull %i.cr) #14 ; 6 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %_build_concatenated_bytes.exit, label %bb.ae

bb.ae:                                            ; preds = %.critedge36.i
  %i.db = getelementptr i8, ptr %0, i64 32
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !11
  %i.dd = tail call i32 @_PyArena_AddPyObject(ptr noundef %i.dc, ptr noundef nonnull %i.cz) #14
  %i.de = icmp slt i32 %i.dd, 0
  br i1 %i.de, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.df = load i32, ptr %i.cz, align 8, !tbaa !36 ; 2 uses
  %.not.i.i49 = icmp sgt i32 %i.df, -1
  br i1 %.not.i.i49, label %bb.ag, label %_build_concatenated_bytes.exit

bb.ag:                                            ; preds = %bb.af
  %i.dg = add nsw i32 %i.df, -1                   ; 2 uses
  store i32 %i.dg, ptr %i.cz, align 8, !tbaa !36
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
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !11
  %i.dm = tail call ptr @_PyAST_JoinedStr(ptr noundef %i.dj, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %i.dl) #14
  br label %_build_concatenated_bytes.exit

_build_concatenated_bytes.exit:                   ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %.critedge36.i, %bb.ad, %.thread89, %bb.ab, %bb.aa, %bb.z, %bb.y, %._crit_edge72.i, %._crit_edge.i, %.thread62.i, %bb.aj, %bb.o, %bb.l
  %.0 = phi ptr [ null, %bb.l ], [ %i.dm, %bb.aj ], [ %i.ai, %bb.o ], [ null, %bb.aa ], [ null, %.thread62.i ], [ null, %._crit_edge.i ], [ %i.ck, %bb.ab ], [ null, %._crit_edge72.i ], [ null, %bb.y ], [ null, %bb.z ], [ null, %bb.ad ], [ null, %.thread89 ], [ %i.di, %bb.ai ], [ null, %.critedge36.i ], [ null, %bb.af ], [ null, %bb.ag ], [ null, %bb.ah ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_get_expr_name(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !63     ; 2 uses
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 4 uses
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
  %i.h = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !37
  %i.i = getelementptr i8, ptr %0, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !40
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !179  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !50   ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_PyPegen_seq_last_item.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %0, i64 8
  br label %bb.d

_PyPegen_seq_last_item.exit:                      ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.i = getelementptr [8 x i8], ptr %i.h, i64 %i.d
  %i.j = getelementptr i8, ptr %i.i, i64 -8
  br label %bb.d

bb.d:                                             ; preds = %_PyPegen_seq_last_item.exit, %bb.c
  %.0.in = phi ptr [ %i.f, %bb.c ], [ %i.j, %_PyPegen_seq_last_item.exit ]
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !25
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_collect_call_seqs(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !50
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]    ; 19 uses
  %i.e = icmp eq ptr %2, null
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @_PyAST_Call(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2432), ptr noundef %1, ptr noundef null, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) #14
  br label %bb.aa

bb.e:                                             ; preds = %bb.c
  %i.g = load i64, ptr %2, align 8, !tbaa !26     ; 6 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.lr.ph.i.i, label %.split21.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.i = getelementptr i8, ptr %2, i64 8          ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23   ; 5 uses
  %xtraiter = and i64 %i.g, 3                     ; 3 uses
  %i.k = icmp ult i64 %i.g, 4
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %i.g, 9223372036854775804
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.new
  %.012.i.i = phi i32 [ 0, %.lr.ph.i.i.new ], [ %spec.select.i.i.3, %bb.f ]
  %.0911.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.ai, %bb.f ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.3, %bb.f ]
  %i.l = getelementptr [8 x i8], ptr %i.j, i64 %.0911.i.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !129
  %.not.i.i = icmp eq i32 %i.o, 0
  %i.p = zext i1 %.not.i.i to i32
  %spec.select.i.i = add i32 %.012.i.i, %i.p
  %i.q = getelementptr [8 x i8], ptr %i.j, i64 %.0911.i.i
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !25
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !129
  %.not.i.i.1 = icmp eq i32 %i.u, 0
  %i.v = zext i1 %.not.i.i.1 to i32
  %spec.select.i.i.1 = add i32 %spec.select.i.i, %i.v
  %i.w = getelementptr [8 x i8], ptr %i.j, i64 %.0911.i.i
  %i.x = getelementptr i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !25
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !129
  %.not.i.i.2 = icmp eq i32 %i.aa, 0
  %i.ab = zext i1 %.not.i.i.2 to i32
  %spec.select.i.i.2 = add i32 %spec.select.i.i.1, %i.ab
  %i.ac = getelementptr [8 x i8], ptr %i.j, i64 %.0911.i.i
  %i.ad = getelementptr i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !25
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !129
  %.not.i.i.3 = icmp eq i32 %i.ag, 0
  %i.ah = zext i1 %.not.i.i.3 to i32
  %spec.select.i.i.3 = add i32 %spec.select.i.i.2, %i.ah ; 3 uses
  %i.ai = add nuw nsw i64 %.0911.i.i, 4           ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_seq_number_of_starred_exprs.exit.i.unr-lcssa, label %bb.f, !llvm.loop !130

_seq_number_of_starred_exprs.exit.i.unr-lcssa:    ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_seq_number_of_starred_exprs.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_seq_number_of_starred_exprs.exit.i.unr-lcssa, %.lr.ph.i.i
  %.012.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.3, %_seq_number_of_starred_exprs.exit.i.unr-lcssa ]
  %.0911.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ai, %_seq_number_of_starred_exprs.exit.i.unr-lcssa ]
  %lcmp.mod104 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod104)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %.012.i.i.epil = phi i32 [ %.012.i.i.epil.init, %.epil.preheader ], [ %spec.select.i.i.epil, %bb.g ]
  %.0911.i.i.epil = phi i64 [ %.0911.i.i.epil.init, %.epil.preheader ], [ %i.ao, %bb.g ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.aj = getelementptr [8 x i8], ptr %i.j, i64 %.0911.i.i.epil
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !25
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !129
  %.not.i.i.epil = icmp eq i32 %i.am, 0
  %i.an = zext i1 %.not.i.i.epil to i32
  %spec.select.i.i.epil = add i32 %.012.i.i.epil, %i.an ; 2 uses
  %i.ao = add nuw nsw i64 %.0911.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_seq_number_of_starred_exprs.exit.i, label %bb.g, !llvm.loop !181

_seq_number_of_starred_exprs.exit.i:              ; preds = %bb.g, %_seq_number_of_starred_exprs.exit.i.unr-lcssa
  %spec.select.i.i.lcssa = phi i32 [ %spec.select.i.i.3, %_seq_number_of_starred_exprs.exit.i.unr-lcssa ], [ %spec.select.i.i.epil, %bb.g ] ; 2 uses
  %i.ap = icmp eq i32 %spec.select.i.i.lcssa, 0
  br i1 %i.ap, label %.lr.ph.i.i56, label %bb.h

bb.h:                                             ; preds = %_seq_number_of_starred_exprs.exit.i
  %i.aq = sext i32 %spec.select.i.i.lcssa to i64
  %i.ar = getelementptr i8, ptr %0, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !11
  %i.at = tail call ptr @_Py_asdl_expr_seq_new(i64 noundef %i.aq, ptr noundef %i.as) #14 ; 5 uses
  %.not.i = icmp eq ptr %i.at, null
  %.pr.pre = load i64, ptr %2, align 8, !tbaa !26 ; 9 uses
  br i1 %.not.i, label %_PyPegen_seq_extract_starred_exprs.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = icmp sgt i64 %.pr.pre, 0
  br i1 %i.au, label %.lr.ph.i, label %.split21.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.av = load ptr, ptr %i.i, align 8, !tbaa !23  ; 3 uses
  %i.aw = getelementptr i8, ptr %i.at, i64 16     ; 3 uses
  %xtraiter106 = and i64 %.pr.pre, 1
  %i.ax = icmp eq i64 %.pr.pre, 1
  br i1 %i.ax, label %.epil.preheader105, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter110 = and i64 %.pr.pre, 9223372036854775806
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %.lr.ph.i.new
  %.01726.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.bp, %bb.n ] ; 3 uses
  %.01825.i = phi i32 [ 0, %.lr.ph.i.new ], [ %.119.i.1, %bb.n ] ; 3 uses
  %niter111 = phi i64 [ 0, %.lr.ph.i.new ], [ %niter111.next.1, %bb.n ]
  %i.ay = getelementptr [8 x i8], ptr %i.av, i64 %.01726.i
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !25 ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !129
  %.not23.i = icmp eq i32 %i.bb, 0
  br i1 %.not23.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !127
  %i.bd = add i32 %.01825.i, 1
  %i.be = sext i32 %.01825.i to i64
  %i.bf = getelementptr [8 x i8], ptr %i.aw, i64 %i.be
  store ptr %i.bc, ptr %i.bf, align 8, !tbaa !52
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.119.i = phi i32 [ %.01825.i, %bb.j ], [ %i.bd, %bb.k ] ; 3 uses
  %i.bg = getelementptr [8 x i8], ptr %i.av, i64 %.01726.i
  %i.bh = getelementptr i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !25 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 8
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !129
  %.not23.i.1 = icmp eq i32 %i.bk, 0
  br i1 %.not23.i.1, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !127
  %i.bm = add i32 %.119.i, 1
  %i.bn = sext i32 %.119.i to i64
  %i.bo = getelementptr [8 x i8], ptr %i.aw, i64 %i.bn
  store ptr %i.bl, ptr %i.bo, align 8, !tbaa !52
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.119.i.1 = phi i32 [ %.119.i, %bb.l ], [ %i.bm, %bb.m ] ; 2 uses
  %i.bp = add nuw nsw i64 %.01726.i, 2            ; 2 uses
  %niter111.next.1 = add i64 %niter111, 2         ; 2 uses
  %niter111.ncmp.1 = icmp eq i64 %niter111.next.1, %unroll_iter110
  br i1 %niter111.ncmp.1, label %_PyPegen_seq_extract_starred_exprs.exit.loopexit.unr-lcssa, label %bb.j, !llvm.loop !132

_PyPegen_seq_extract_starred_exprs.exit.loopexit.unr-lcssa: ; preds = %bb.n
  %lcmp.mod108.not = icmp eq i64 %xtraiter106, 0
  br i1 %lcmp.mod108.not, label %_PyPegen_seq_extract_starred_exprs.exit, label %.epil.preheader105

.epil.preheader105:                               ; preds = %_PyPegen_seq_extract_starred_exprs.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.01726.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.bp, %_PyPegen_seq_extract_starred_exprs.exit.loopexit.unr-lcssa ]
  %.01825.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %.119.i.1, %_PyPegen_seq_extract_starred_exprs.exit.loopexit.unr-lcssa ]
  %lcmp.mod109 = trunc i64 %.pr.pre to i1
  tail call void @llvm.assume(i1 %lcmp.mod109)
  %i.bq = getelementptr [8 x i8], ptr %i.av, i64 %.01726.i.epil.init
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !25 ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 8
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !129
  %.not23.i.epil = icmp eq i32 %i.bt, 0
  br i1 %.not23.i.epil, label %bb.o, label %_PyPegen_seq_extract_starred_exprs.exit

bb.o:                                             ; preds = %.epil.preheader105
  %i.bu = load ptr, ptr %i.br, align 8, !tbaa !127
  %i.bv = sext i32 %.01825.i.epil.init to i64
  %i.bw = getelementptr [8 x i8], ptr %i.aw, i64 %i.bv
  store ptr %i.bu, ptr %i.bw, align 8, !tbaa !52
  br label %_PyPegen_seq_extract_starred_exprs.exit

_PyPegen_seq_extract_starred_exprs.exit:          ; preds = %_PyPegen_seq_extract_starred_exprs.exit.loopexit.unr-lcssa, %bb.o, %.epil.preheader105, %bb.h
  %i.bx = icmp sgt i64 %.pr.pre, 0
  br i1 %i.bx, label %.lr.ph.i.i56, label %.split21.i

.lr.ph.i.i56:                                     ; preds = %_seq_number_of_starred_exprs.exit.i, %_PyPegen_seq_extract_starred_exprs.exit
  %.1.i.ph85 = phi ptr [ %i.at, %_PyPegen_seq_extract_starred_exprs.exit ], [ null, %_seq_number_of_starred_exprs.exit.i ]
  %.pr84 = phi i64 [ %.pr.pre, %_PyPegen_seq_extract_starred_exprs.exit ], [ %i.g, %_seq_number_of_starred_exprs.exit.i ] ; 4 uses
  %i.by = load ptr, ptr %i.i, align 8, !tbaa !23  ; 5 uses
  %xtraiter113 = and i64 %.pr84, 3                ; 3 uses
  %i.bz = icmp ult i64 %.pr84, 4
  br i1 %i.bz, label %.epil.preheader112, label %.lr.ph.i.i56.new

.lr.ph.i.i56.new:                                 ; preds = %.lr.ph.i.i56
  %unroll_iter118 = and i64 %.pr84, 9223372036854775804
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i56.new
  %.012.i.i57 = phi i32 [ 0, %.lr.ph.i.i56.new ], [ %spec.select.i.i60.3, %bb.p ]
  %.0911.i.i58 = phi i64 [ 0, %.lr.ph.i.i56.new ], [ %i.cx, %bb.p ] ; 5 uses
  %niter119 = phi i64 [ 0, %.lr.ph.i.i56.new ], [ %niter119.next.3, %bb.p ]
  %i.ca = getelementptr [8 x i8], ptr %i.by, i64 %.0911.i.i58
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !25
  %i.cc = getelementptr i8, ptr %i.cb, i64 8
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !129
  %.not.i.i59 = icmp eq i32 %i.cd, 0
  %i.ce = zext i1 %.not.i.i59 to i32
  %spec.select.i.i60 = add i32 %.012.i.i57, %i.ce
  %i.cf = getelementptr [8 x i8], ptr %i.by, i64 %.0911.i.i58
  %i.cg = getelementptr i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !25
  %i.ci = getelementptr i8, ptr %i.ch, i64 8
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !129
  %.not.i.i59.1 = icmp eq i32 %i.cj, 0
  %i.ck = zext i1 %.not.i.i59.1 to i32
  %spec.select.i.i60.1 = add i32 %spec.select.i.i60, %i.ck
  %i.cl = getelementptr [8 x i8], ptr %i.by, i64 %.0911.i.i58
  %i.cm = getelementptr i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !25
  %i.co = getelementptr i8, ptr %i.cn, i64 8
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !129
  %.not.i.i59.2 = icmp eq i32 %i.cp, 0
  %i.cq = zext i1 %.not.i.i59.2 to i32
  %spec.select.i.i60.2 = add i32 %spec.select.i.i60.1, %i.cq
  %i.cr = getelementptr [8 x i8], ptr %i.by, i64 %.0911.i.i58
  %i.cs = getelementptr i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !25
  %i.cu = getelementptr i8, ptr %i.ct, i64 8
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !129
  %.not.i.i59.3 = icmp eq i32 %i.cv, 0
  %i.cw = zext i1 %.not.i.i59.3 to i32
  %spec.select.i.i60.3 = add i32 %spec.select.i.i60.2, %i.cw ; 3 uses
  %i.cx = add nuw nsw i64 %.0911.i.i58, 4         ; 2 uses
  %niter119.next.3 = add i64 %niter119, 4         ; 2 uses
  %niter119.ncmp.3 = icmp eq i64 %niter119.next.3, %unroll_iter118
  br i1 %niter119.ncmp.3, label %.split21.loopexit.i.unr-lcssa, label %bb.p, !llvm.loop !130

.split21.loopexit.i.unr-lcssa:                    ; preds = %bb.p
  %lcmp.mod115.not = icmp eq i64 %xtraiter113, 0
  br i1 %lcmp.mod115.not, label %.split21.loopexit.i, label %.epil.preheader112

.epil.preheader112:                               ; preds = %.split21.loopexit.i.unr-lcssa, %.lr.ph.i.i56
  %.012.i.i57.epil.init = phi i32 [ 0, %.lr.ph.i.i56 ], [ %spec.select.i.i60.3, %.split21.loopexit.i.unr-lcssa ]
  %.0911.i.i58.epil.init = phi i64 [ 0, %.lr.ph.i.i56 ], [ %i.cx, %.split21.loopexit.i.unr-lcssa ]
  %lcmp.mod117 = icmp ne i64 %xtraiter113, 0
  tail call void @llvm.assume(i1 %lcmp.mod117)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader112
  %.012.i.i57.epil = phi i32 [ %.012.i.i57.epil.init, %.epil.preheader112 ], [ %spec.select.i.i60.epil, %bb.q ]
  %.0911.i.i58.epil = phi i64 [ %.0911.i.i58.epil.init, %.epil.preheader112 ], [ %i.dd, %bb.q ] ; 2 uses
  %epil.iter114 = phi i64 [ 0, %.epil.preheader112 ], [ %epil.iter114.next, %bb.q ]
  %i.cy = getelementptr [8 x i8], ptr %i.by, i64 %.0911.i.i58.epil
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !25
  %i.da = getelementptr i8, ptr %i.cz, i64 8
  %i.db = load i32, ptr %i.da, align 8, !tbaa !129
  %.not.i.i59.epil = icmp eq i32 %i.db, 0
  %i.dc = zext i1 %.not.i.i59.epil to i32
  %spec.select.i.i60.epil = add i32 %.012.i.i57.epil, %i.dc ; 2 uses
  %i.dd = add nuw nsw i64 %.0911.i.i58.epil, 1
  %epil.iter114.next = add i64 %epil.iter114, 1   ; 2 uses
  %epil.iter114.cmp.not = icmp eq i64 %epil.iter114.next, %xtraiter113
  br i1 %epil.iter114.cmp.not, label %.split21.loopexit.i, label %bb.q, !llvm.loop !182

.split21.loopexit.i:                              ; preds = %bb.q, %.split21.loopexit.i.unr-lcssa
  %spec.select.i.i60.lcssa = phi i32 [ %spec.select.i.i60.3, %.split21.loopexit.i.unr-lcssa ], [ %spec.select.i.i60.epil, %bb.q ]
  %i.de = sext i32 %spec.select.i.i60.lcssa to i64
  br label %.split21.i

.split21.i:                                       ; preds = %bb.e, %bb.i, %.split21.loopexit.i, %_PyPegen_seq_extract_starred_exprs.exit
  %.not65 = phi i1 [ false, %.split21.loopexit.i ], [ true, %_PyPegen_seq_extract_starred_exprs.exit ], [ true, %bb.i ], [ true, %bb.e ]
  %.1.i64 = phi ptr [ %.1.i.ph85, %.split21.loopexit.i ], [ %i.at, %_PyPegen_seq_extract_starred_exprs.exit ], [ %i.at, %bb.i ], [ null, %bb.e ] ; 4 uses
  %i.df = phi i64 [ %.pr84, %.split21.loopexit.i ], [ %.pr.pre, %_PyPegen_seq_extract_starred_exprs.exit ], [ %.pr.pre, %bb.i ], [ %i.g, %bb.e ] ; 6 uses
  %phi.call.i = phi i64 [ %i.de, %.split21.loopexit.i ], [ 0, %_PyPegen_seq_extract_starred_exprs.exit ], [ 0, %bb.i ], [ 0, %bb.e ] ; 2 uses
  %.1.i6488 = ptrtoaddr ptr %.1.i64 to i64
  %i.dg = icmp eq i64 %i.df, %phi.call.i
  br i1 %i.dg, label %_PyPegen_seq_delete_starred_exprs.exit, label %bb.r

bb.r:                                             ; preds = %.split21.i
  %i.dh = sub i64 %i.df, %phi.call.i
  %i.di = getelementptr i8, ptr %0, i64 32
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !11
  %i.dk = tail call ptr @_Py_asdl_keyword_seq_new(i64 noundef %i.dh, ptr noundef %i.dj) #14 ; 6 uses
  %.not.i52 = icmp eq ptr %i.dk, null
  %brmerge = or i1 %.not65, %.not.i52
  br i1 %brmerge, label %_PyPegen_seq_delete_starred_exprs.exit, label %.lr.ph.i54

.lr.ph.i54:                                       ; preds = %bb.r
  %i.dl = getelementptr i8, ptr %2, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !23 ; 3 uses
  %i.dn = getelementptr i8, ptr %i.dk, i64 16     ; 3 uses
  %xtraiter121 = and i64 %i.df, 1
  %i.do = icmp eq i64 %i.df, 1
  br i1 %i.do, label %.epil.preheader120, label %.lr.ph.i54.new

.lr.ph.i54.new:                                   ; preds = %.lr.ph.i54
  %unroll_iter125 = and i64 %i.df, -2
  br label %bb.s

bb.s:                                             ; preds = %bb.w, %.lr.ph.i54.new
  %.01827.i = phi i64 [ 0, %.lr.ph.i54.new ], [ %i.eg, %bb.w ] ; 3 uses
  %.01926.i = phi i32 [ 0, %.lr.ph.i54.new ], [ %.120.i.1, %bb.w ] ; 3 uses
  %niter126 = phi i64 [ 0, %.lr.ph.i54.new ], [ %niter126.next.1, %bb.w ]
  %i.dp = getelementptr [8 x i8], ptr %i.dm, i64 %.01827.i
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !25 ; 2 uses
  %i.dr = getelementptr i8, ptr %i.dq, i64 8
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !129
  %.not25.i = icmp eq i32 %i.ds, 0
  br i1 %.not25.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dt = load ptr, ptr %i.dq, align 8, !tbaa !127
  %i.du = add i32 %.01926.i, 1
  %i.dv = sext i32 %.01926.i to i64
  %i.dw = getelementptr [8 x i8], ptr %i.dn, i64 %i.dv
  store ptr %i.dt, ptr %i.dw, align 8, !tbaa !134
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.120.i = phi i32 [ %i.du, %bb.t ], [ %.01926.i, %bb.s ] ; 3 uses
  %i.dx = getelementptr [8 x i8], ptr %i.dm, i64 %.01827.i
  %i.dy = getelementptr i8, ptr %i.dx, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !25 ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 8
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !129
  %.not25.i.1 = icmp eq i32 %i.eb, 0
  br i1 %.not25.i.1, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ec = load ptr, ptr %i.dz, align 8, !tbaa !127
  %i.ed = add i32 %.120.i, 1
  %i.ee = sext i32 %.120.i to i64
  %i.ef = getelementptr [8 x i8], ptr %i.dn, i64 %i.ee
  store ptr %i.ec, ptr %i.ef, align 8, !tbaa !134
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.120.i.1 = phi i32 [ %i.ed, %bb.v ], [ %.120.i, %bb.u ] ; 2 uses
  %i.eg = add nuw nsw i64 %.01827.i, 2            ; 2 uses
  %niter126.next.1 = add i64 %niter126, 2         ; 2 uses
  %niter126.ncmp.1 = icmp eq i64 %niter126.next.1, %unroll_iter125
  br i1 %niter126.ncmp.1, label %_PyPegen_seq_delete_starred_exprs.exit.loopexit.unr-lcssa, label %bb.s, !llvm.loop !136

_PyPegen_seq_delete_starred_exprs.exit.loopexit.unr-lcssa: ; preds = %bb.w
  %lcmp.mod123.not = icmp eq i64 %xtraiter121, 0
  br i1 %lcmp.mod123.not, label %_PyPegen_seq_delete_starred_exprs.exit, label %.epil.preheader120

.epil.preheader120:                               ; preds = %_PyPegen_seq_delete_starred_exprs.exit.loopexit.unr-lcssa, %.lr.ph.i54
  %.01827.i.epil.init = phi i64 [ 0, %.lr.ph.i54 ], [ %i.eg, %_PyPegen_seq_delete_starred_exprs.exit.loopexit.unr-lcssa ]
  %.01926.i.epil.init = phi i32 [ 0, %.lr.ph.i54 ], [ %.120.i.1, %_PyPegen_seq_delete_starred_exprs.exit.loopexit.unr-lcssa ]
  %lcmp.mod124 = trunc i64 %i.df to i1
  tail call void @llvm.assume(i1 %lcmp.mod124)
  %i.eh = getelementptr [8 x i8], ptr %i.dm, i64 %.01827.i.epil.init
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !25 ; 2 uses
  %i.ej = getelementptr i8, ptr %i.ei, i64 8
end_hunk_1
begin_hunk_2_@_PyPegen_get_invalid_target:bb.a
  %.tr63.ph109 = phi i32 [ 2, %tailrecurse.outer ], [ %1, %bb.a ] ; 4 uses
  %.tr.ph108 = phi ptr [ %i.ag, %tailrecurse.outer ], [ %0, %bb.a ] ; 5 uses
  %i.b = icmp eq i32 %.tr63.ph109, 1
  br i1 %i.b, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.c = load i32, ptr %.tr.ph108, align 8, !tbaa !63
  switch i32 %i.c, label %.split.us [
    i32 27, label %.split88.us
    i32 28, label %.split92.us
    i32 23, label %.split.us.loopexit169
    i32 24, label %.split.us.loopexit169
    i32 26, label %.split.us.loopexit169
  ]

.lr.ph.split:                                     ; preds = %.lr.ph, %tailrecurse
  %.tr78 = phi ptr [ %i.x, %tailrecurse ], [ %.tr.ph108, %.lr.ph ] ; 8 uses
  %i.d = load i32, ptr %.tr78, align 8, !tbaa !63
  switch i32 %i.d, label %.split.us [
    i32 27, label %.split88.us
    i32 28, label %.split92.us
    i32 25, label %tailrecurse
    i32 16, label %.split96.us
    i32 26, label %.split.us.loopexit169
    i32 24, label %.split.us.loopexit169
    i32 23, label %.split.us.loopexit169
  ]

.split88.us:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi90 = phi ptr [ %.tr.ph108, %.lr.ph.split.us ], [ %.tr78, %.lr.ph.split ]
  %i.e = getelementptr i8, ptr %.us-phi90, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !36   ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.split.us, label %bb.b

bb.b:                                             ; preds = %.split88.us
  %i.h = load i64, ptr %i.f, align 8, !tbaa !50   ; 2 uses
  %i.i = getelementptr i8, ptr %i.f, i64 16
  %.not60.not117 = icmp sgt i64 %i.h, 0
  br i1 %.not60.not117, label %.lr.ph119, label %.split.us

bb.c:                                             ; preds = %.lr.ph119
  %i.j = add nuw nsw i64 %.045118, 1              ; 2 uses
  %exitcond152.not = icmp eq i64 %i.j, %i.h
  br i1 %exitcond152.not, label %.split.us, label %.lr.ph119, !llvm.loop !191

.lr.ph119:                                        ; preds = %bb.b, %bb.c
  %.045118 = phi i64 [ %i.j, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.k = getelementptr [8 x i8], ptr %i.i, i64 %.045118
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !52
  %i.m = tail call ptr @_PyPegen_get_invalid_target(ptr noundef %i.l, i32 noundef %.tr63.ph109) ; 2 uses
  %.not59 = icmp eq ptr %i.m, null
  br i1 %.not59, label %bb.c, label %.split.us

.split92.us:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi94 = phi ptr [ %.tr.ph108, %.lr.ph.split.us ], [ %.tr78, %.lr.ph.split ]
  %i.n = getelementptr i8, ptr %.us-phi94, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !36   ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.split.us, label %bb.d

bb.d:                                             ; preds = %.split92.us
  %i.q = load i64, ptr %i.o, align 8, !tbaa !50   ; 2 uses
  %i.r = getelementptr i8, ptr %i.o, i64 16
  %.not58.not111 = icmp sgt i64 %i.q, 0
  br i1 %.not58.not111, label %.lr.ph113, label %.split.us

bb.e:                                             ; preds = %.lr.ph113
  %i.s = add nuw nsw i64 %.050112, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %i.q
  br i1 %exitcond.not, label %.split.us, label %.lr.ph113, !llvm.loop !192

.lr.ph113:                                        ; preds = %bb.d, %bb.e
  %.050112 = phi i64 [ %i.s, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.t = getelementptr [8 x i8], ptr %i.r, i64 %.050112
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !52
  %i.v = tail call ptr @_PyPegen_get_invalid_target(ptr noundef %i.u, i32 noundef %.tr63.ph109) ; 2 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.e, label %.split.us

tailrecurse:                                      ; preds = %.lr.ph.split
  %i.w = getelementptr i8, ptr %.tr78, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !36   ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %.split.us.loopexit169, label %.lr.ph.split

.split96.us:                                      ; preds = %.lr.ph.split
  %i.z = icmp eq i32 %.tr63.ph109, 2
  br i1 %i.z, label %bb.f, label %.split.us

bb.f:                                             ; preds = %.split96.us
  %i.aa = getelementptr i8, ptr %.tr78, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !36
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !7
  %i.ae = icmp eq i32 %i.ad, 9
  br i1 %i.ae, label %tailrecurse.outer, label %.split.us

tailrecurse.outer:                                ; preds = %bb.f
  %i.af = getelementptr i8, ptr %.tr78, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !36 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %.split.us, label %.lr.ph

.split.us.loopexit169:                            ; preds = %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %tailrecurse, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us
  br label %.split.us

.split.us:                                        ; preds = %tailrecurse.outer, %.split96.us, %bb.f, %.lr.ph.split, %bb.e, %.lr.ph113, %bb.c, %.lr.ph119, %.split.us.loopexit169, %.split92.us, %.split88.us, %.lr.ph.split.us, %bb.a, %bb.d, %bb.b
  %.7 = phi ptr [ null, %bb.d ], [ null, %.split88.us ], [ null, %.split92.us ], [ null, %.split.us.loopexit169 ], [ %i.v, %.lr.ph113 ], [ null, %bb.b ], [ %.tr78, %.lr.ph.split ], [ %i.m, %.lr.ph119 ], [ null, %bb.a ], [ %.tr.ph108, %.lr.ph.split.us ], [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.f ], [ %.tr78, %.split96.us ], [ null, %tailrecurse.outer ]
  ret ptr %.7
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_arguments_parsing_error(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !50   ; 4 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.b, i64 16       ; 5 uses
  %xtraiter = and i64 %i.d, 3                     ; 3 uses
  %i.g = icmp ult i64 %i.d, 4
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.d, 9223372036854775804
  br label %bb.d

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.01015.epil.init = phi i32 [ 0, %.lr.ph ], [ %spec.select.3, %._crit_edge.loopexit.unr-lcssa ]
  %.01114.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ah, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod18 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod18)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.01015.epil = phi i32 [ %.01015.epil.init, %.epil.preheader ], [ %spec.select.epil, %bb.c ]
  %.01114.epil = phi i64 [ %.01114.epil.init, %.epil.preheader ], [ %i.k, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.h = getelementptr [8 x i8], ptr %i.f, i64 %.01114.epil
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !134
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !193
  %.not13.epil = icmp eq ptr %i.j, null
  %spec.select.epil = select i1 %.not13.epil, i32 1, i32 %.01015.epil ; 2 uses
  %i.k = add nuw nsw i64 %.01114.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %bb.c, !llvm.loop !195

._crit_edge.loopexit:                             ; preds = %bb.c, %._crit_edge.loopexit.unr-lcssa
  %spec.select.lcssa = phi i32 [ %spec.select.3, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %bb.c ]
  %i.l = icmp eq i32 %spec.select.lcssa, 0
  %i.m = select i1 %i.l, ptr @.str.41, ptr @.str.40
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %._crit_edge.loopexit, %bb.b
  %.010.lcssa = phi ptr [ @.str.41, %bb.b ], [ %i.m, %._crit_edge.loopexit ], [ @.str.41, %bb.a ]
  %i.n = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !37
  %i.o = tail call ptr (ptr, ptr, i32, ptr, ...) @_PyPegen_raise_error(ptr noundef %0, ptr noundef %i.n, i32 noundef 0, ptr noundef nonnull %.010.lcssa) #14
  ret ptr %i.o

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %.01015 = phi i32 [ 0, %.lr.ph.new ], [ %spec.select.3, %bb.d ]
  %.01114 = phi i64 [ 0, %.lr.ph.new ], [ %i.ah, %bb.d ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.d ]
  %i.p = getelementptr [8 x i8], ptr %i.f, i64 %.01114
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !134
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !193
  %.not13 = icmp eq ptr %i.r, null
  %i.s = getelementptr [8 x i8], ptr %i.f, i64 %.01114
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !134
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !193
  %.not13.1 = icmp eq ptr %i.v, null
  %i.w = getelementptr [8 x i8], ptr %i.f, i64 %.01114
  %i.x = getelementptr i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !134
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !193
  %.not13.2 = icmp eq ptr %i.z, null
  %i.aa = getelementptr [8 x i8], ptr %i.f, i64 %.01114
  %i.ab = getelementptr i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !134
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !193
  %.not13.3 = icmp eq ptr %i.ad, null
  %i.ae = select i1 %.not13.3, i1 true, i1 %.not13.2
  %i.af = select i1 %i.ae, i1 true, i1 %.not13.1
  %i.ag = select i1 %i.af, i1 true, i1 %.not13
  %spec.select.3 = select i1 %i.ag, i32 1, i32 %.01015 ; 3 uses
  %i.ah = add nuw nsw i64 %.01114, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !196
}

; Function Attrs: nounwind uwtable
define hidden noalias noundef ptr @_PyPegen_nonparen_genexp_in_call(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !50   ; 2 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq ptr %2, null
  br i1 %i.f, label %_PyPegen_seq_last_item.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i64, ptr %2, align 8, !tbaa !26
  %i.h = add i64 %i.g, -1
  br label %_PyPegen_seq_last_item.exit

_PyPegen_seq_last_item.exit:                      ; preds = %bb.c, %bb.d
  %i.i = phi i64 [ %i.h, %bb.d ], [ -1, %bb.c ]
  %i.j = getelementptr i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !23
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25   ; 3 uses
  %i.n = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !37
  %i.o = getelementptr i8, ptr %i.b, i64 8
  %i.p = getelementptr [8 x i8], ptr %i.o, i64 %i.d
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !52   ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 40
  %i.s = load i32, ptr %i.r, align 8, !tbaa !40
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr i8, ptr %i.q, i64 44
  %i.v = load i32, ptr %i.u, align 4, !tbaa !42
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr i8, ptr %i.m, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !179  ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_PyPegen_get_last_comprehension_item.exit.thread19, label %bb.e

bb.e:                                             ; preds = %_PyPegen_seq_last_item.exit
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !50  ; 3 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_PyPegen_get_last_comprehension_item.exit.thread19, label %_PyPegen_seq_last_item.exit.i13

_PyPegen_get_last_comprehension_item.exit.thread19: ; preds = %bb.e, %_PyPegen_seq_last_item.exit
  %i.ac = getelementptr i8, ptr %i.m, i64 8
  %i.ad = getelementptr i8, ptr %i.m, i64 8
  br label %_PyPegen_get_last_comprehension_item.exit16

_PyPegen_seq_last_item.exit.i13:                  ; preds = %bb.e
  %i.ae = getelementptr i8, ptr %i.y, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !23 ; 2 uses
  %i.ag = getelementptr [8 x i8], ptr %i.af, i64 %i.aa
  %i.ah = getelementptr i8, ptr %i.ag, i64 -8
  %i.ai = getelementptr [8 x i8], ptr %i.af, i64 %i.aa
  %i.aj = getelementptr i8, ptr %i.ai, i64 -8
  br label %_PyPegen_get_last_comprehension_item.exit16

_PyPegen_get_last_comprehension_item.exit16:      ; preds = %_PyPegen_get_last_comprehension_item.exit.thread19, %_PyPegen_seq_last_item.exit.i13
  %.0.i18.pn27.pn.in = phi ptr [ %i.ac, %_PyPegen_get_last_comprehension_item.exit.thread19 ], [ %i.ah, %_PyPegen_seq_last_item.exit.i13 ]
  %.0.in.i14 = phi ptr [ %i.ad, %_PyPegen_get_last_comprehension_item.exit.thread19 ], [ %i.aj, %_PyPegen_seq_last_item.exit.i13 ]
  %.0.i18.pn27.pn = load ptr, ptr %.0.i18.pn27.pn.in, align 8, !tbaa !25
  %.in30.in = getelementptr i8, ptr %.0.i18.pn27.pn, i64 48
  %.in30 = load i32, ptr %.in30.in, align 8, !tbaa !43
  %i.ak = sext i32 %.in30 to i64
  %.0.i15 = load ptr, ptr %.0.in.i14, align 8, !tbaa !25
  %i.al = getelementptr i8, ptr %.0.i15, i64 52
  %i.am = load i32, ptr %i.al, align 4, !tbaa !44
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
  %i.c = load i32, ptr %i.b, align 4, !tbaa !153
  %i.d = getelementptr i8, ptr %1, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !155
  %i.f = getelementptr i8, ptr %3, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !197
  %i.h = getelementptr i8, ptr %3, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !154
  %i.j = getelementptr i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !11
  %i.l = tail call ptr @_PyAST_TemplateStr(ptr noundef %i.a, i32 noundef %i.c, i32 noundef %i.e, i32 noundef %i.g, i32 noundef %i.i, ptr noundef %i.k) #14
  ret ptr %i.l
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_get_resized_exprs(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %2, align 8, !tbaa !50     ; 12 uses
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
  %.066110.epil.init = phi i64 [ %i.b, %.lr.ph ], [ %.167.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.068109.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.at, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod163 = trunc i64 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod163)
  %i.f = getelementptr [8 x i8], ptr %i.d, i64 %.068109.epil.init
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !52   ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !63
  %i.i = icmp eq i32 %i.h, 20
  br i1 %i.i, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %.epil.preheader
  %i.j = getelementptr i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8, !tbaa !50
  %i.n = add i64 %i.m, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = phi i64 [ %i.n, %bb.d ], [ -1, %bb.c ]
  %i.p = add i64 %i.o, %.066110.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.e, %.epil.preheader, %bb.a, %bb.b
  %i.q = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ true, %.epil.preheader ], [ true, %bb.e ], [ true, %._crit_edge.loopexit.unr-lcssa ]
  %i.r = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ], [ %i.b, %.epil.preheader ], [ %i.b, %bb.e ], [ %i.b, %._crit_edge.loopexit.unr-lcssa ]
  %.066.lcssa = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ], [ %.167.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.p, %bb.e ], [ %.066110.epil.init, %.epil.preheader ] ; 2 uses
  %i.s = getelementptr i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !90
  %i.u = tail call ptr @PyBytes_AsString(ptr noundef %i.t) #14 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.thread95, label %bb.o

bb.f:                                             ; preds = %bb.n, %.lr.ph.new
  %.066110 = phi i64 [ %i.b, %.lr.ph.new ], [ %.167.1, %bb.n ] ; 2 uses
  %.068109 = phi i64 [ 0, %.lr.ph.new ], [ %i.at, %bb.n ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.n ]
  %i.w = getelementptr [8 x i8], ptr %i.d, i64 %.068109
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !52   ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !63
  %i.z = icmp eq i32 %i.y, 20
  br i1 %i.z, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr i8, ptr %i.x, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !36 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !50
  %i.ae = add i64 %i.ad, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.af = phi i64 [ %i.ae, %bb.h ], [ -1, %bb.g ]
  %i.ag = add i64 %i.af, %.066110
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %.167 = phi i64 [ %i.ag, %bb.i ], [ %.066110, %bb.f ] ; 2 uses
  %i.ah = getelementptr [8 x i8], ptr %i.d, i64 %.068109
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !52 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !63
  %i.al = icmp eq i32 %i.ak, 20
  br i1 %i.al, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr i8, ptr %i.aj, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !36 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !50
  %i.aq = add i64 %i.ap, -1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ar = phi i64 [ %i.aq, %bb.l ], [ -1, %bb.k ]
  %i.as = add i64 %i.ar, %.167
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.167.1 = phi i64 [ %i.as, %bb.m ], [ %.167, %bb.j ] ; 3 uses
  %i.at = add nuw nsw i64 %.068109, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.f, !llvm.loop !198

bb.o:                                             ; preds = %._crit_edge
  %i.au = tail call ptr @strpbrk(ptr noundef nonnull %i.u, ptr noundef nonnull @.str.48) #15
  %.not97 = icmp eq ptr %i.au, null
  %i.av = getelementptr i8, ptr %0, i64 32        ; 4 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !11
  %i.ax = tail call ptr @_Py_asdl_expr_seq_new(i64 noundef %.066.lcssa, ptr noundef %i.aw) #14 ; 5 uses
  %i.ay = ptrtoaddr ptr %i.ax to i64
  %i.az = icmp eq ptr %i.ax, null
  br i1 %i.az, label %.thread95, label %.preheader98

.preheader98:                                     ; preds = %bb.o
  br i1 %i.q, label %.lr.ph114, label %._crit_edge115

.lr.ph114:                                        ; preds = %.preheader98
  %i.ba = getelementptr i8, ptr %2, i64 16
  %i.bb = getelementptr i8, ptr %i.ax, i64 16     ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph114, %bb.af
  %.070113 = phi i64 [ 0, %.lr.ph114 ], [ %i.dr, %bb.af ] ; 2 uses
  %.071112 = phi i64 [ 0, %.lr.ph114 ], [ %.273, %bb.af ] ; 5 uses
  %i.bc = getelementptr [8 x i8], ptr %i.ba, i64 %.070113
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !52 ; 9 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !63
  switch i32 %i.be, label %bb.ae [
    i32 20, label %bb.q
    i32 22, label %bb.t
  ]

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr i8, ptr %i.bd, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !36 ; 4 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !50
  %i.bj = icmp eq i64 %i.bi, 2
  br i1 %i.bj, label %bb.s, label %.critedge

.critedge:                                        ; preds = %bb.q, %bb.r
  %i.bk = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !37
  %.not88 = icmp eq i32 %4, 0
  %i.bl = select i1 %.not88, ptr @.str.50, ptr @.str.49
  %i.bm = getelementptr i8, ptr %i.bd, i64 40
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !40
  %i.bo = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bk, ptr noundef nonnull %i.bl, i32 noundef %i.bn) #14 ; 0 uses
  br label %.thread95

bb.s:                                             ; preds = %bb.r
  %i.bp = getelementptr i8, ptr %i.bg, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !52
  %i.br = getelementptr [8 x i8], ptr %i.bb, i64 %.071112 ; 2 uses
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !52
  %i.bs = getelementptr i8, ptr %i.bg, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !52
  %i.bu = add i64 %.071112, 2
  %i.bv = getelementptr i8, ptr %i.br, i64 8
  store ptr %i.bt, ptr %i.bv, align 8, !tbaa !52
  br label %bb.af

bb.t:                                             ; preds = %bb.p
  %i.bw = getelementptr i8, ptr %i.bd, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !36
  %i.by = tail call ptr @PyUnicode_AsUTF8(ptr noundef %i.bx) #14 ; 9 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %.thread95, label %sub_0.i

sub_0.i:                                          ; preds = %bb.t
  %i.ca = load i8, ptr %i.by, align 1
  switch i8 %i.ca, label %.tail26.thread.i [
    i8 123, label %sub_1.i
    i8 125, label %sub_128.i
  ]

sub_1.i:                                          ; preds = %sub_0.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.cc = load i8, ptr %i.cb, align 1
  %.not32.i = icmp eq i8 %i.cc, 123
  br i1 %.not32.i, label %.tail.i, label %.tail26.thread.i

.tail.i:                                          ; preds = %sub_1.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %bb.u, label %.tail26.thread.i

sub_128.i:                                        ; preds = %sub_0.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.ch = load i8, ptr %i.cg, align 1
  %.not34.i = icmp eq i8 %i.ch, 125
  br i1 %.not34.i, label %.tail26.i, label %.tail26.thread.i

.tail26.i:                                        ; preds = %sub_128.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = icmp eq i8 %i.cj, 0
  br i1 %i.ck, label %bb.u, label %.tail26.thread.i

.tail26.thread.i:                                 ; preds = %.tail26.i, %sub_128.i, %.tail.i, %sub_1.i, %sub_0.i
  %i.cl = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.by) #15
  br label %bb.u

bb.u:                                             ; preds = %.tail26.thread.i, %.tail26.i, %.tail.i
  %.023.i = phi i64 [ %i.cl, %.tail26.thread.i ], [ 1, %.tail26.i ], [ 1, %.tail.i ]
  br i1 %.not97, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cm = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.by, i32 noundef 92) #15
  %i.cn = icmp eq ptr %i.cm, null
  %i.co = zext i1 %i.cn to i32
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cp = phi i32 [ 1, %bb.u ], [ %i.co, %bb.v ]
  %i.cq = tail call ptr @_PyPegen_decode_string(ptr noundef %0, i32 noundef %i.cp, ptr noundef nonnull %i.by, i64 noundef %.023.i, ptr noundef %3) #14 ; 6 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cs = tail call i32 @_Pypegen_raise_decode_error(ptr noundef %0) #14 ; 0 uses
  br label %.thread95

bb.y:                                             ; preds = %bb.w
  %i.ct = load ptr, ptr %i.av, align 8, !tbaa !11
  %i.cu = tail call i32 @_PyArena_AddPyObject(ptr noundef %i.ct, ptr noundef nonnull %i.cq) #14
  %i.cv = icmp slt i32 %i.cu, 0
  br i1 %i.cv, label %bb.z, label %_PyPegen_decode_fstring_part.exit

bb.z:                                             ; preds = %bb.y
  %i.cw = load i32, ptr %i.cq, align 8, !tbaa !36 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.cw, -1
  br i1 %.not.i.i, label %bb.aa, label %.thread95

bb.aa:                                            ; preds = %bb.z
  %i.cx = add nsw i32 %i.cw, -1                   ; 2 uses
  store i32 %i.cx, ptr %i.cq, align 8, !tbaa !36
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.ab, label %.thread95

bb.ab:                                            ; preds = %bb.aa
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.cq) #14
  br label %.thread95

_PyPegen_decode_fstring_part.exit:                ; preds = %bb.y
  %i.cz = getelementptr i8, ptr %i.bd, i64 40
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !40
  %i.db = getelementptr i8, ptr %i.bd, i64 44
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !42
  %i.dd = getelementptr i8, ptr %i.bd, i64 48
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !43
  %i.df = getelementptr i8, ptr %i.bd, i64 52
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !44
  %i.dh = load ptr, ptr %i.av, align 8, !tbaa !11
  %i.di = tail call ptr @_PyAST_Constant(ptr noundef nonnull %i.cq, ptr noundef null, i32 noundef %i.da, i32 noundef %i.dc, i32 noundef %i.de, i32 noundef %i.dg, ptr noundef %i.dh) #14 ; 4 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %.thread95, label %bb.ac

bb.ac:                                            ; preds = %_PyPegen_decode_fstring_part.exit
  %i.dk = getelementptr i8, ptr %i.di, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !36 ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 8
  %.val = load ptr, ptr %i.dm, align 8, !tbaa !137
  %.not = icmp eq ptr %.val, @PyUnicode_Type
  br i1 %.not, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dn = getelementptr i8, ptr %i.dl, i64 16
  %.val91 = load i64, ptr %i.dn, align 8, !tbaa !164
  %i.do = icmp eq i64 %.val91, 0
  br i1 %i.do, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.p, %bb.ac, %bb.ad
  %.069 = phi ptr [ %i.di, %bb.ad ], [ %i.di, %bb.ac ], [ %i.bd, %bb.p ]
  %i.dp = add i64 %.071112, 1
  %i.dq = getelementptr [8 x i8], ptr %i.bb, i64 %.071112
  store ptr %.069, ptr %i.dq, align 8, !tbaa !52
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.s, %bb.ad
  %.273 = phi i64 [ %i.dp, %bb.ae ], [ %i.bu, %bb.s ], [ %.071112, %bb.ad ] ; 2 uses
  %i.dr = add nuw nsw i64 %.070113, 1             ; 2 uses
  %exitcond126.not = icmp eq i64 %i.dr, %i.r
  br i1 %exitcond126.not, label %._crit_edge115, label %bb.p, !llvm.loop !199

._crit_edge115:                                   ; preds = %bb.af, %.preheader98
  %.071.lcssa = phi i64 [ 0, %.preheader98 ], [ %.273, %bb.af ] ; 9 uses
  %.not90 = icmp eq i64 %.071.lcssa, %.066.lcssa
  br i1 %.not90, label %.thread95, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge115
  %i.ds = load ptr, ptr %i.av, align 8, !tbaa !11
  %i.dt = tail call ptr @_Py_asdl_expr_seq_new(i64 noundef %.071.lcssa, ptr noundef %i.ds) #14 ; 7 uses
  %i.du = ptrtoaddr ptr %i.dt to i64
  %i.dv = icmp eq ptr %i.dt, null
  br i1 %i.dv, label %.thread95, label %.preheader

end_hunk_2
