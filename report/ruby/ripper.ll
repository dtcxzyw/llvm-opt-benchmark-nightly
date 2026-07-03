inline.NumInlined: 2066
inline.NumDeleted: 252
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@void_expr:bb.a
bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !192  ; 3 uses
  %.not14 = icmp eq ptr %i.g, null
  br i1 %.not14, label %.thread23, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.c
  %.pre = load i64, ptr %i.g, align 8, !tbaa !61
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.b
  %i.h = phi i64 [ %.pre, %..thread_crit_edge ], [ %.val, %bb.b ]
  %i.i = phi ptr [ %i.g, %..thread_crit_edge ], [ %1, %bb.b ]
  %i.j = trunc i64 %i.h to i32
  %i.k = lshr i32 %i.j, 8
  %i.l = and i32 %i.k, 127
  switch i32 %i.l, label %.thread23 [
    i32 37, label %bb.d
    i32 48, label %.thread18
    i32 49, label %.thread18
    i32 50, label %.thread18
    i32 51, label %.thread18
    i32 53, label %.thread18
    i32 54, label %.thread18
    i32 55, label %.thread18
    i32 52, label %bb.e
    i32 101, label %bb.f
    i32 109, label %bb.f
    i32 110, label %bb.f
    i32 111, label %bb.f
    i32 59, label %bb.f
    i32 60, label %bb.f
    i32 61, label %bb.f
    i32 62, label %bb.f
    i32 63, label %bb.f
    i32 64, label %bb.f
    i32 68, label %bb.f
    i32 69, label %bb.f
    i32 88, label %bb.g
    i32 89, label %bb.g
    i32 90, label %bb.h
    i32 91, label %bb.i
    i32 94, label %bb.j
    i32 95, label %bb.k
    i32 96, label %bb.l
    i32 97, label %bb.m
    i32 99, label %bb.n
  ]

bb.d:                                             ; preds = %.thread
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !194  ; 2 uses
  switch i64 %i.n, label %.thread23 [
    i64 43, label %bb.o
    i64 45, label %bb.o
    i64 42, label %bb.o
    i64 47, label %bb.o
    i64 37, label %bb.o
    i64 134, label %bb.o
    i64 132, label %bb.o
    i64 133, label %bb.o
    i64 124, label %bb.o
    i64 94, label %bb.o
    i64 38, label %bb.o
    i64 135, label %bb.o
    i64 62, label %bb.o
    i64 139, label %bb.o
    i64 60, label %bb.o
    i64 138, label %bb.o
    i64 140, label %bb.o
    i64 142, label %bb.o
  ]

bb.e:                                             ; preds = %.thread
  br label %.thread18

bb.f:                                             ; preds = %.thread, %.thread, %.thread, %.thread, %.thread, %.thread, %.thread, %.thread, %.thread, %.thread, %.thread, %.thread
  br label %.thread18

bb.g:                                             ; preds = %.thread, %.thread
  br label %.thread18

bb.h:                                             ; preds = %.thread
  br label %.thread18

bb.i:                                             ; preds = %.thread
  br label %.thread18

bb.j:                                             ; preds = %.thread
  br label %.thread18

bb.k:                                             ; preds = %.thread
  br label %.thread18

bb.l:                                             ; preds = %.thread
  br label %.thread18

bb.m:                                             ; preds = %.thread
  br label %.thread18

bb.n:                                             ; preds = %.thread
  br label %.thread18

bb.o:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %i.o = tail call ptr @rb_id2name(i64 noundef %i.n) #29 ; 2 uses
  %.not15 = icmp eq ptr %i.o, null
  br i1 %.not15, label %.thread23, label %.thread18

.thread18:                                        ; preds = %.thread, %.thread, %.thread, %.thread, %.thread, %.thread, %.thread, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.o
  %.021 = phi ptr [ %i.o, %bb.o ], [ @.str.722, %bb.n ], [ @.str.646, %bb.m ], [ @.str.645, %bb.l ], [ @.str.721, %bb.k ], [ @.str.720, %bb.j ], [ @.str.719, %bb.i ], [ @.str.718, %bb.h ], [ @.str.717, %bb.g ], [ @.str.716, %bb.f ], [ @.str.715, %bb.e ], [ @.str.714, %.thread ], [ @.str.714, %.thread ], [ @.str.714, %.thread ], [ @.str.714, %.thread ], [ @.str.714, %.thread ], [ @.str.714, %.thread ], [ @.str.714, %.thread ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.q = load i64, ptr %i.p, align 8, !tbaa !46
  %i.r = load i64, ptr @id_warn, align 8, !tbaa !11
  %i.s = tail call i64 @rb_usascii_str_new_static(ptr noundef nonnull @.str.723, i64 noundef 42) #29
  %i.t = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.021) #32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !49
  %i.w = tail call i64 @rb_enc_str_new(ptr noundef nonnull %.021, i64 noundef %i.t, ptr noundef %i.v) #29
  %i.x = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.q, i64 noundef %i.r, i32 noundef 2, i64 noundef %i.s, i64 noundef %i.w) #29 ; 0 uses
  br label %.thread23

.thread23:                                        ; preds = %bb.d, %.thread, %bb.o, %.thread18, %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @rb_node_scope_new(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef nonnull readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !189  ; 2 uses
  %i.d = icmp ult ptr %i.c, inttoptr (i64 2 to ptr)
  br i1 %i.d, label %vtable_size.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !186
  br label %vtable_size.exit.i

vtable_size.exit.i:                               ; preds = %bb.b, %bb.a
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !140  ; 2 uses
  %i.i = icmp ult ptr %i.h, inttoptr (i64 2 to ptr)
  br i1 %i.i, label %vtable_size.exit31.i, label %bb.c

bb.c:                                             ; preds = %vtable_size.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !186
  br label %vtable_size.exit31.i

vtable_size.exit31.i:                             ; preds = %bb.c, %vtable_size.exit.i
  %.0.i30.i = phi i32 [ %i.k, %bb.c ], [ 0, %vtable_size.exit.i ] ; 6 uses
  %i.l = add nsw i32 %.0.i30.i, %.0.i.i           ; 3 uses
  %i.m = icmp slt i32 %i.l, 1
  br i1 %i.m, label %local_tbl.exit, label %bb.d

bb.d:                                             ; preds = %vtable_size.exit31.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !122
  %i.p = tail call ptr @rb_ast_new_local_table(ptr noundef %i.o, i32 noundef %i.l) #29 ; 3 uses
  %i.q = ptrtoaddr ptr %i.p to i64                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 14 uses
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !93
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !189
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !188
  %i.v = sext i32 %.0.i.i to i64                  ; 2 uses
  %i.w = icmp slt i32 %.0.i.i, 0
  br i1 %i.w, label %bb.e, label %rbimpl_size_mul_or_raise.exit.i, !prof !196

bb.e:                                             ; preds = %bb.d
  tail call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef %i.v) #31
  unreachable

rbimpl_size_mul_or_raise.exit.i:                  ; preds = %bb.d
  %.not.i.i = icmp eq i32 %.0.i.i, 0
  br i1 %.not.i.i, label %ruby_nonempty_memcpy.exit.i, label %bb.f

bb.f:                                             ; preds = %rbimpl_size_mul_or_raise.exit.i
  %i.x = shl nuw nsw i64 %i.v, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.u, i64 %i.x, i1 false)
  br label %ruby_nonempty_memcpy.exit.i

ruby_nonempty_memcpy.exit.i:                      ; preds = %bb.f, %rbimpl_size_mul_or_raise.exit.i
  %i.y = icmp sgt i32 %.0.i30.i, 0
  br i1 %i.y, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %ruby_nonempty_memcpy.exit.i
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !93   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !140
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !188 ; 14 uses
  %i.ad = ptrtoaddr ptr %i.ac to i64              ; 2 uses
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !189 ; 3 uses
  %i.af = icmp ult ptr %i.ae, inttoptr (i64 2 to ptr)
  br i1 %i.af, label %vtable_included.exit.thread.us.preheader.i, label %.lr.ph.split.i

vtable_included.exit.thread.us.preheader.i:       ; preds = %.lr.ph.i
  %i.ag = zext nneg i32 %.0.i.i to i64            ; 5 uses
  %wide.trip.count63.i = zext nneg i32 %.0.i30.i to i64 ; 5 uses
  %min.iters.check21 = icmp ult i32 %.0.i30.i, 12
  br i1 %min.iters.check21, label %vtable_included.exit.thread.us.i.preheader, label %vector.memcheck18

vector.memcheck18:                                ; preds = %vtable_included.exit.thread.us.preheader.i
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = add i64 %i.ah, %i.q
  %5 = sub i64 %i.ai, %i.ad
  %6 = add i64 %5, 7
  %diff.check19 = icmp ult i64 %6, 31
  br i1 %diff.check19, label %vtable_included.exit.thread.us.i.preheader, label %vector.ph22

vector.ph22:                                      ; preds = %vector.memcheck18
  %n.vec24 = and i64 %wide.trip.count63.i, 2147483644 ; 4 uses
  %i.aj = add nuw nsw i64 %n.vec24, %i.ag         ; 2 uses
  %invariant.gep39 = getelementptr [8 x i8], ptr %i.r, i64 %i.ag
  br label %vector.body25

vector.body25:                                    ; preds = %vector.body25, %vector.ph22
  %index26 = phi i64 [ 0, %vector.ph22 ], [ %index.next29, %vector.body25 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %index26 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load27 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !11
  %wide.load28 = load <2 x i64>, ptr %i.al, align 8, !tbaa !11
  %gep40 = getelementptr [8 x i8], ptr %invariant.gep39, i64 %index26 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %gep40, i64 16
  store <2 x i64> %wide.load27, ptr %gep40, align 8, !tbaa !11
  store <2 x i64> %wide.load28, ptr %i.am, align 8, !tbaa !11
  %index.next29 = add nuw i64 %index26, 4         ; 2 uses
  %i.an = icmp eq i64 %index.next29, %n.vec24
  br i1 %i.an, label %middle.block30, label %vector.body25, !llvm.loop !197

middle.block30:                                   ; preds = %vector.body25
  %cmp.n31 = icmp eq i64 %n.vec24, %wide.trip.count63.i
  br i1 %cmp.n31, label %._crit_edge.loopexit.i, label %vtable_included.exit.thread.us.i.preheader

vtable_included.exit.thread.us.i.preheader:       ; preds = %vector.memcheck18, %vtable_included.exit.thread.us.preheader.i, %middle.block30
  %indvars.iv58.i.ph = phi i64 [ 0, %vector.memcheck18 ], [ 0, %vtable_included.exit.thread.us.preheader.i ], [ %n.vec24, %middle.block30 ] ; 3 uses
  %indvars.iv56.i.ph = phi i64 [ %i.ag, %vector.memcheck18 ], [ %i.ag, %vtable_included.exit.thread.us.preheader.i ], [ %i.aj, %middle.block30 ] ; 2 uses
  %xtraiter36 = and i64 %wide.trip.count63.i, 3   ; 2 uses
  %lcmp.mod37.not = icmp eq i64 %xtraiter36, 0
  br i1 %lcmp.mod37.not, label %vtable_included.exit.thread.us.i.prol.loopexit, label %vtable_included.exit.thread.us.i.prol

vtable_included.exit.thread.us.i.prol:            ; preds = %vtable_included.exit.thread.us.i.preheader, %vtable_included.exit.thread.us.i.prol
  %indvars.iv58.i.prol = phi i64 [ %indvars.iv.next59.i.prol, %vtable_included.exit.thread.us.i.prol ], [ %indvars.iv58.i.ph, %vtable_included.exit.thread.us.i.preheader ] ; 2 uses
  %indvars.iv56.i.prol = phi i64 [ %indvars.iv.next57.i.prol, %vtable_included.exit.thread.us.i.prol ], [ %indvars.iv56.i.ph, %vtable_included.exit.thread.us.i.preheader ] ; 2 uses
  %prol.iter38 = phi i64 [ %prol.iter38.next, %vtable_included.exit.thread.us.i.prol ], [ 0, %vtable_included.exit.thread.us.i.preheader ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv58.i.prol
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !11
  %indvars.iv.next57.i.prol = add nuw nsw i64 %indvars.iv56.i.prol, 1 ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv56.i.prol
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !11
  %indvars.iv.next59.i.prol = add nuw nsw i64 %indvars.iv58.i.prol, 1 ; 2 uses
  %prol.iter38.next = add i64 %prol.iter38, 1     ; 2 uses
  %prol.iter38.cmp.not = icmp eq i64 %prol.iter38.next, %xtraiter36
  br i1 %prol.iter38.cmp.not, label %vtable_included.exit.thread.us.i.prol.loopexit, label %vtable_included.exit.thread.us.i.prol, !llvm.loop !200

vtable_included.exit.thread.us.i.prol.loopexit:   ; preds = %vtable_included.exit.thread.us.i.prol, %vtable_included.exit.thread.us.i.preheader
  %indvars.iv.next57.i.lcssa34.unr = phi i64 [ poison, %vtable_included.exit.thread.us.i.preheader ], [ %indvars.iv.next57.i.prol, %vtable_included.exit.thread.us.i.prol ]
  %indvars.iv58.i.unr = phi i64 [ %indvars.iv58.i.ph, %vtable_included.exit.thread.us.i.preheader ], [ %indvars.iv.next59.i.prol, %vtable_included.exit.thread.us.i.prol ]
  %indvars.iv56.i.unr = phi i64 [ %indvars.iv56.i.ph, %vtable_included.exit.thread.us.i.preheader ], [ %indvars.iv.next57.i.prol, %vtable_included.exit.thread.us.i.prol ]
  %i.ar = sub nsw i64 %indvars.iv58.i.ph, %wide.trip.count63.i
  %i.as = icmp ugt i64 %i.ar, -4
  br i1 %i.as, label %._crit_edge.loopexit.i, label %vtable_included.exit.thread.us.i

vtable_included.exit.thread.us.i:                 ; preds = %vtable_included.exit.thread.us.i.prol.loopexit, %vtable_included.exit.thread.us.i
  %indvars.iv58.i = phi i64 [ %indvars.iv.next59.i.3, %vtable_included.exit.thread.us.i ], [ %indvars.iv58.i.unr, %vtable_included.exit.thread.us.i.prol.loopexit ] ; 5 uses
  %indvars.iv56.i = phi i64 [ %indvars.iv.next57.i.3, %vtable_included.exit.thread.us.i ], [ %indvars.iv56.i.unr, %vtable_included.exit.thread.us.i.prol.loopexit ] ; 5 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv58.i
  %i.au = load i64, ptr %i.at, align 8, !tbaa !11
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv56.i
  store i64 %i.au, ptr %i.av, align 8, !tbaa !11
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv58.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !11
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv56.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %i.ay, ptr %i.ba, align 8, !tbaa !11
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv58.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !11
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv56.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 %i.bd, ptr %i.bf, align 8, !tbaa !11
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv58.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !11
  %indvars.iv.next57.i.3 = add nuw nsw i64 %indvars.iv56.i, 4 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv56.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store i64 %i.bi, ptr %i.bk, align 8, !tbaa !11
  %indvars.iv.next59.i.3 = add nuw nsw i64 %indvars.iv58.i, 4 ; 2 uses
  %exitcond64.not.i.3 = icmp eq i64 %indvars.iv.next59.i.3, %wide.trip.count63.i
  br i1 %exitcond64.not.i.3, label %._crit_edge.loopexit.i, label %vtable_included.exit.thread.us.i, !llvm.loop !202

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !186 ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, 0
  %wide.trip.count.i.i = zext nneg i32 %i.bm to i64
  %wide.trip.count54.i = zext nneg i32 %.0.i30.i to i64 ; 6 uses
  br i1 %i.bn, label %.lr.ph.split.split.us.i, label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %.lr.ph.split.i
  %i.bo = zext nneg i32 %.0.i.i to i64            ; 5 uses
  %min.iters.check = icmp ult i32 %.0.i30.i, 12
  br i1 %min.iters.check, label %.preheader.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.i.preheader.i
  %i.bp = shl nuw nsw i64 %i.bo, 3
  %i.bq = add i64 %i.bp, %i.q
  %7 = sub i64 %i.bq, %i.ad
  %8 = add i64 %7, 7
  %diff.check = icmp ult i64 %8, 31
  br i1 %diff.check, label %.preheader.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count54.i, 2147483644 ; 4 uses
  %i.br = add nuw nsw i64 %n.vec, %i.bo           ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.r, i64 %i.bo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %index ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %wide.load = load <2 x i64>, ptr %i.bs, align 8, !tbaa !11
  %wide.load16 = load <2 x i64>, ptr %i.bt, align 8, !tbaa !11
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <2 x i64> %wide.load, ptr %gep, align 8, !tbaa !11
  store <2 x i64> %wide.load16, ptr %i.bu, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !203

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count54.i
  br i1 %cmp.n, label %._crit_edge.loopexit44.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %vector.memcheck, %.preheader.i.preheader.i, %middle.block
  %indvars.iv46.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.i.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %indvars.iv.i.ph = phi i64 [ %i.bo, %vector.memcheck ], [ %i.bo, %.preheader.i.preheader.i ], [ %i.br, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count54.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol

.preheader.i.i.prol:                              ; preds = %.preheader.i.i.preheader, %.preheader.i.i.prol
  %indvars.iv46.i.prol = phi i64 [ %indvars.iv.next47.i.prol, %.preheader.i.i.prol ], [ %indvars.iv46.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.preheader.i.i.prol ], [ %indvars.iv.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.i.prol ], [ 0, %.preheader.i.i.preheader ]
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv46.i.prol
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !11
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i.prol
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !11
  %indvars.iv.next47.i.prol = add nuw nsw i64 %indvars.iv46.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol, !llvm.loop !204

.preheader.i.i.prol.loopexit:                     ; preds = %.preheader.i.i.prol, %.preheader.i.i.preheader
  %indvars.iv.next.i.lcssa35.unr = phi i64 [ poison, %.preheader.i.i.preheader ], [ %indvars.iv.next.i.prol, %.preheader.i.i.prol ]
  %indvars.iv46.i.unr = phi i64 [ %indvars.iv46.i.ph, %.preheader.i.i.preheader ], [ %indvars.iv.next47.i.prol, %.preheader.i.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.preheader.i.i.preheader ], [ %indvars.iv.next.i.prol, %.preheader.i.i.prol ]
  %i.bz = sub nsw i64 %indvars.iv46.i.ph, %wide.trip.count54.i
  %i.ca = icmp ugt i64 %i.bz, -4
  br i1 %i.ca, label %._crit_edge.loopexit44.i, label %.preheader.i.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i
  %i.cb = load ptr, ptr %i.ae, align 8, !tbaa !188
  br label %.preheader.i.us.i

.preheader.i.us.i:                                ; preds = %vtable_included.exit.us39.i, %.lr.ph.split.split.us.i
  %indvars.iv51.i = phi i64 [ %indvars.iv.next52.i, %vtable_included.exit.us39.i ], [ 0, %.lr.ph.split.split.us.i ] ; 2 uses
  %.02735.us36.i = phi i32 [ %.1.us40.i, %vtable_included.exit.us39.i ], [ %.0.i.i, %.lr.ph.split.split.us.i ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv51.i
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !11 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.preheader.i.us.i
  %indvars.iv.i.us.i = phi i64 [ 0, %.preheader.i.us.i ], [ %indvars.iv.next.i.us.i, %bb.h ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.i.us.i
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !11
  %i.cg = icmp eq i64 %i.cf, %i.cd
  br i1 %i.cg, label %vtable_included.exit.us39.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.i, label %vtable_included.exit.thread.loopexit.us.i, label %bb.g, !llvm.loop !205

vtable_included.exit.us39.i:                      ; preds = %bb.g, %vtable_included.exit.thread.loopexit.us.i
  %.1.us40.i = phi i32 [ %i.ch, %vtable_included.exit.thread.loopexit.us.i ], [ %.02735.us36.i, %bb.g ] ; 2 uses
  %indvars.iv.next52.i = add nuw nsw i64 %indvars.iv51.i, 1 ; 2 uses
  %exitcond55.not.i = icmp eq i64 %indvars.iv.next52.i, %wide.trip.count54.i
  br i1 %exitcond55.not.i, label %._crit_edge.i, label %.preheader.i.us.i, !llvm.loop !206

vtable_included.exit.thread.loopexit.us.i:        ; preds = %bb.h
  %i.ch = add nuw nsw i32 %.02735.us36.i, 1
  %i.ci = zext nneg i32 %.02735.us36.i to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ci
  store i64 %i.cd, ptr %i.cj, align 8, !tbaa !11
  br label %vtable_included.exit.us39.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i
  %indvars.iv46.i = phi i64 [ %indvars.iv.next47.i.3, %.preheader.i.i ], [ %indvars.iv46.i.unr, %.preheader.i.i.prol.loopexit ] ; 5 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.preheader.i.i ], [ %indvars.iv.i.unr, %.preheader.i.i.prol.loopexit ] ; 5 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv46.i
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !11
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !11
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv46.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !11
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i64 %i.cp, ptr %i.cr, align 8, !tbaa !11
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv46.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !11
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store i64 %i.cu, ptr %i.cw, align 8, !tbaa !11
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv46.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !11
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  store i64 %i.cz, ptr %i.db, align 8, !tbaa !11
  %indvars.iv.next47.i.3 = add nuw nsw i64 %indvars.iv46.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next47.i.3, %wide.trip.count54.i
  br i1 %exitcond.not.i.3, label %._crit_edge.loopexit44.i, label %.preheader.i.i, !llvm.loop !207

._crit_edge.loopexit.i:                           ; preds = %vtable_included.exit.thread.us.i.prol.loopexit, %vtable_included.exit.thread.us.i, %middle.block30
  %indvars.iv.next57.i.lcssa = phi i64 [ %i.aj, %middle.block30 ], [ %indvars.iv.next57.i.lcssa34.unr, %vtable_included.exit.thread.us.i.prol.loopexit ], [ %indvars.iv.next57.i.3, %vtable_included.exit.thread.us.i ]
  %i.dc = trunc nuw i64 %indvars.iv.next57.i.lcssa to i32
  br label %._crit_edge.i

._crit_edge.loopexit44.i:                         ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i, %middle.block
  %indvars.iv.next.i.lcssa = phi i64 [ %i.br, %middle.block ], [ %indvars.iv.next.i.lcssa35.unr, %.preheader.i.i.prol.loopexit ], [ %indvars.iv.next.i.3, %.preheader.i.i ]
  %i.dd = trunc nuw i64 %indvars.iv.next.i.lcssa to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %vtable_included.exit.us39.i, %._crit_edge.loopexit44.i, %._crit_edge.loopexit.i, %ruby_nonempty_memcpy.exit.i
  %.027.lcssa.i = phi i32 [ %.0.i.i, %ruby_nonempty_memcpy.exit.i ], [ %i.dd, %._crit_edge.loopexit44.i ], [ %i.dc, %._crit_edge.loopexit.i ], [ %.1.us40.i, %vtable_included.exit.us39.i ] ; 2 uses
  %i.de = icmp slt i32 %.027.lcssa.i, %i.l
  br i1 %i.de, label %bb.i, label %local_tbl.exit

bb.i:                                             ; preds = %._crit_edge.i
  %i.df = load ptr, ptr %i.n, align 8, !tbaa !122
  %i.dg = tail call ptr @rb_ast_resize_latest_local_table(ptr noundef %i.df, i32 noundef %.027.lcssa.i) #29
  br label %local_tbl.exit

local_tbl.exit:                                   ; preds = %vtable_size.exit31.i, %._crit_edge.i, %bb.i
  %.0.i = phi ptr [ null, %vtable_size.exit31.i ], [ %i.dg, %bb.i ], [ %i.p, %._crit_edge.i ]
  %i.dh = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.dh, align 8, !tbaa !122
  %i.di = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 0, i64 noundef range(i64 32, 129) 64, i64 noundef 8) #29 ; 10 uses
  tail call void @rb_node_init(ptr noundef %i.di, i32 noundef range(i32 0, 115) 0) #29
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, ptr noundef nonnull readonly align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !13
  %i.dk = load i32, ptr %4, align 4, !tbaa !51
  %i.dl = sext i32 %i.dk to i64
  %i.dm = load i64, ptr %i.di, align 8, !tbaa !61
  %i.dn = and i64 %i.dm, 32767
  %i.do = shl nsw i64 %i.dl, 15
  %i.dp = or disjoint i64 %i.dn, %i.do
  store i64 %i.dp, ptr %i.di, align 8, !tbaa !61
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !208 ; 2 uses
  %i.ds = add nsw i32 %i.dr, 1
  store i32 %i.ds, ptr %i.dq, align 8, !tbaa !208
  %i.dt = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  store i32 %i.dr, ptr %i.dt, align 8, !tbaa !209
  %i.du = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  store ptr %.0.i, ptr %i.du, align 8, !tbaa !210
  %i.dv = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  store ptr %2, ptr %i.dv, align 8, !tbaa !211
  %i.dw = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  store ptr %3, ptr %i.dw, align 8, !tbaa !79
  %i.dx = getelementptr inbounds nuw i8, ptr %i.di, i64 56
  store ptr %1, ptr %i.dx, align 8, !tbaa !212
  ret ptr %i.di
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @block_append(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i64, ptr %1, align 8, !tbaa !61
  %i.d = and i64 %i.c, 32512
  %cond = icmp eq i64 %i.d, 256
  br i1 %cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 288
  %.val.i.i = load ptr, ptr %i.f, align 8, !tbaa !122
  %i.g = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i, i32 noundef range(i32 0, 115) 1, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #29 ; 11 uses
  tail call void @rb_node_init(ptr noundef %i.g, i32 noundef range(i32 0, 115) 1) #29
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !13
  %i.i = load i32, ptr %i.e, align 8, !tbaa !51
  %i.j = sext i32 %i.i to i64
  %i.k = load i64, ptr %i.g, align 8, !tbaa !61
end_hunk_0
