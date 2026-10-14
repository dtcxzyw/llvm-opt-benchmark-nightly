Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/parse?download=true
inline.NumInlined: 1675
inline.NumDeleted: 268
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 16
begin_hunk_0_@void_stmts:bb.a
  %i.h = phi ptr [ %i.l, %.lr.ph ], [ %i.f, %.preheader ]
  %.017 = phi ptr [ %i.k, %.lr.ph ], [ %1, %.preheader ]
  %i.i = getelementptr i8, ptr %.017, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !86
  tail call fastcc void @void_expr(ptr noundef %0, ptr noundef %i.j)
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !85   ; 3 uses
  %i.l = getelementptr i8, ptr %i.k, i64 48       ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !85
  %.not14 = icmp eq ptr %i.m, null
  br i1 %.not14, label %._crit_edge, label %.lr.ph, !llvm.loop !422

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.0.lcssa = phi ptr [ %1, %.preheader ], [ %i.k, %.lr.ph ]
  %i.n = getelementptr i8, ptr %.0.lcssa, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !86
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a, %._crit_edge
  %.012 = phi ptr [ %i.o, %._crit_edge ], [ null, %bb.b ], [ %1, %bb.a ], [ %1, %bb.c ]
  ret ptr %.012
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @void_expr(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @rb_ruby_verbose_ptr() #31
  %i.b = load i64, ptr %i.a, align 8, !tbaa !28
  %i.c = and i64 %i.b, -5
  %.not25 = icmp eq i64 %i.c, 0
  %.not = icmp eq ptr %1, null
  %or.cond = or i1 %.not, %.not25
  br i1 %or.cond, label %.thread22, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8, !tbaa !83    ; 2 uses
  %i.d = and i64 %.val, 32512
  %i.e = icmp eq i64 %i.d, 17920
  br i1 %i.e, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !204  ; 3 uses
  %.not13 = icmp eq ptr %i.g, null
  br i1 %.not13, label %.thread22, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.c
  %.pre = load i64, ptr %i.g, align 8, !tbaa !83
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.b
  %i.h = phi i64 [ %.pre, %..thread_crit_edge ], [ %.val, %bb.b ] ; 18 uses
  %i.i = phi ptr [ %i.g, %..thread_crit_edge ], [ %1, %bb.b ] ; 2 uses
  %i.j = trunc i64 %i.h to i32
  %i.k = lshr i32 %i.j, 8
  %i.l = and i32 %i.k, 127
  switch i32 %i.l, label %.thread22 [
    i32 37, label %bb.d
    i32 48, label %nd_line.exit
    i32 49, label %nd_line.exit
    i32 50, label %nd_line.exit
    i32 51, label %nd_line.exit
    i32 53, label %nd_line.exit
    i32 54, label %nd_line.exit
    i32 55, label %nd_line.exit
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
  %i.m = getelementptr i8, ptr %i.i, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !206  ; 2 uses
  switch i64 %i.n, label %.thread22 [
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
  br label %nd_line.exit

bb.f:                                             ; preds = %.thread, %.thread, %.thread, %.thread, %.thread, %.thread, %.thread, %.thread, %.thread, %.thread, %.thread, %.thread
  br label %nd_line.exit

bb.g:                                             ; preds = %.thread, %.thread
  br label %nd_line.exit

bb.h:                                             ; preds = %.thread
  br label %nd_line.exit

bb.i:                                             ; preds = %.thread
  br label %nd_line.exit

bb.j:                                             ; preds = %.thread
  br label %nd_line.exit

bb.k:                                             ; preds = %.thread
  br label %nd_line.exit

bb.l:                                             ; preds = %.thread
  br label %nd_line.exit

bb.m:                                             ; preds = %.thread
  br label %nd_line.exit

bb.n:                                             ; preds = %.thread
  br label %nd_line.exit

bb.o:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %i.o = tail call ptr @rb_id2name(i64 noundef %i.n) #31 ; 2 uses
  %.not14 = icmp eq ptr %i.o, null
  br i1 %.not14, label %.thread22, label %.nd_line.exit_crit_edge

.nd_line.exit_crit_edge:                          ; preds = %bb.o
  %.pre26 = load i64, ptr %i.i, align 8, !tbaa !83
  br label %nd_line.exit

nd_line.exit:                                     ; preds = %.nd_line.exit_crit_edge, %.thread, %.thread, %.thread, %.thread, %.thread, %.thread, %.thread, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.p = phi i64 [ %.pre26, %.nd_line.exit_crit_edge ], [ %i.h, %bb.n ], [ %i.h, %bb.m ], [ %i.h, %bb.l ], [ %i.h, %bb.k ], [ %i.h, %bb.j ], [ %i.h, %bb.i ], [ %i.h, %bb.h ], [ %i.h, %bb.g ], [ %i.h, %bb.f ], [ %i.h, %bb.e ], [ %i.h, %.thread ], [ %i.h, %.thread ], [ %i.h, %.thread ], [ %i.h, %.thread ], [ %i.h, %.thread ], [ %i.h, %.thread ], [ %i.h, %.thread ]
  %.020 = phi ptr [ %i.o, %.nd_line.exit_crit_edge ], [ @.str.916, %bb.n ], [ @.str.832, %bb.m ], [ @.str.831, %bb.l ], [ @.str.915, %bb.k ], [ @.str.914, %bb.j ], [ @.str.70, %bb.i ], [ @.str.913, %bb.h ], [ @.str.912, %bb.g ], [ @.str.911, %bb.f ], [ @.str.910, %bb.e ], [ @.str.909, %.thread ], [ @.str.909, %.thread ], [ @.str.909, %.thread ], [ @.str.909, %.thread ], [ @.str.909, %.thread ], [ @.str.909, %.thread ], [ @.str.909, %.thread ]
  %i.q = getelementptr i8, ptr %0, i64 200
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !97
  %i.s = lshr i64 %i.p, 15
  %i.t = trunc i64 %i.s to i32
  tail call void (ptr, i32, ptr, ...) @rb_compile_warn(ptr noundef %i.r, i32 noundef %i.t, ptr noundef nonnull @.str.917, ptr noundef nonnull %.020) #31
  br label %.thread22

.thread22:                                        ; preds = %bb.d, %.thread, %bb.o, %nd_line.exit, %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @rb_node_scope_new(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef nonnull readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 168        ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !201  ; 2 uses
  %i.d = icmp ult ptr %i.c, inttoptr (i64 2 to ptr)
  br i1 %i.d, label %vtable_size.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.c, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !198
  br label %vtable_size.exit.i

vtable_size.exit.i:                               ; preds = %bb.b, %bb.a
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 22 uses
  %i.g = getelementptr i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !154  ; 2 uses
  %i.i = icmp ult ptr %i.h, inttoptr (i64 2 to ptr)
  br i1 %i.i, label %vtable_size.exit31.i, label %bb.c

bb.c:                                             ; preds = %vtable_size.exit.i
  %i.j = getelementptr i8, ptr %i.h, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !198
  br label %vtable_size.exit31.i

vtable_size.exit31.i:                             ; preds = %bb.c, %vtable_size.exit.i
  %.0.i30.i = phi i32 [ %i.k, %bb.c ], [ 0, %vtable_size.exit.i ] ; 7 uses
  %i.l = add i32 %.0.i30.i, %.0.i.i               ; 3 uses
  %i.m = icmp slt i32 %i.l, 1
  br i1 %i.m, label %local_tbl.exit, label %bb.d

bb.d:                                             ; preds = %vtable_size.exit31.i
  %i.n = getelementptr i8, ptr %0, i64 288        ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !138
  %i.p = tail call ptr @rb_ast_new_local_table(ptr noundef %i.o, i32 noundef %i.l) #31 ; 4 uses
  %i.q = getelementptr i8, ptr %i.p, i64 8        ; 14 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !110
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !201
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !200
  %i.u = sext i32 %.0.i.i to i64                  ; 2 uses
  %i.v = icmp slt i32 %.0.i.i, 0
  br i1 %i.v, label %bb.e, label %rbimpl_size_mul_or_raise.exit.i, !prof !207

bb.e:                                             ; preds = %bb.d
  tail call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef %i.u) #36
  unreachable

rbimpl_size_mul_or_raise.exit.i:                  ; preds = %bb.d
  %.not.i.i = icmp eq i32 %.0.i.i, 0
  br i1 %.not.i.i, label %ruby_nonempty_memcpy.exit.i, label %bb.f

bb.f:                                             ; preds = %rbimpl_size_mul_or_raise.exit.i
  %i.w = shl nuw nsw i64 %i.u, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.q, ptr noundef nonnull readonly align 1 %i.t, i64 noundef range(i64 1, 0) %i.w, i1 noundef false) #31
  br label %ruby_nonempty_memcpy.exit.i

ruby_nonempty_memcpy.exit.i:                      ; preds = %bb.f, %rbimpl_size_mul_or_raise.exit.i
  %i.x = icmp sgt i32 %.0.i30.i, 0
  br i1 %i.x, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %ruby_nonempty_memcpy.exit.i
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !110  ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !154
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !200 ; 15 uses
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !201 ; 3 uses
  %i.ad = icmp ult ptr %i.ac, inttoptr (i64 2 to ptr)
  br i1 %i.ad, label %vtable_included.exit.thread.us.preheader.i, label %.lr.ph.split.i

vtable_included.exit.thread.us.preheader.i:       ; preds = %.lr.ph.i
  %wide.trip.count56.i = zext nneg i32 %.0.i30.i to i64 ; 6 uses
  %min.iters.check34 = icmp ult i32 %.0.i30.i, 20
  br i1 %min.iters.check34, label %vtable_included.exit.thread.us.i.preheader, label %vector.scevcheck30

vector.scevcheck30:                               ; preds = %vtable_included.exit.thread.us.preheader.i
  %i.ae = add nsw i64 %wide.trip.count56.i, -1    ; 2 uses
  %i.af = trunc nsw i64 %i.ae to i32
  %i.ag = add i32 %.0.i.i, %i.af
  %i.ah = icmp slt i32 %i.ag, %.0.i.i
  %i.ai = icmp ugt i64 %i.ae, 4294967295
  %i.aj = or i1 %i.ah, %i.ai
  br i1 %i.aj, label %vtable_included.exit.thread.us.i.preheader, label %vector.memcheck31

vector.memcheck31:                                ; preds = %vector.scevcheck30
  %5 = ptrtoaddr ptr %i.p to i64
  %i.ak = zext nneg i32 %.0.i.i to i64
  %i.al = shl nuw nsw i64 %i.ak, 3
  %6 = ptrtoaddr ptr %i.ab to i64
  %i.am = add i64 %i.al, %5
  %i.an = sub i64 %i.am, %6
  %i.ao = add i64 %i.an, 7
  %diff.check32 = icmp ult i64 %i.ao, 31
  br i1 %diff.check32, label %vtable_included.exit.thread.us.i.preheader, label %vector.ph35

vector.ph35:                                      ; preds = %vector.memcheck31
  %n.vec36 = and i64 %wide.trip.count56.i, 2147483644 ; 4 uses
  %i.ap = trunc nuw nsw i64 %n.vec36 to i32
  %i.aq = add nuw i32 %.0.i.i, %i.ap              ; 2 uses
  br label %vector.body37

vector.body37:                                    ; preds = %vector.body37, %vector.ph35
  %index38 = phi i64 [ 0, %vector.ph35 ], [ %index.next41, %vector.body37 ] ; 3 uses
  %i.ar = trunc i64 %index38 to i32
  %i.as = add i32 %.0.i.i, %i.ar
  %i.at = getelementptr [8 x i8], ptr %i.ab, i64 %index38 ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 16
  %wide.load39 = load <2 x i64>, ptr %i.at, align 8, !tbaa !28
  %wide.load40 = load <2 x i64>, ptr %i.au, align 8, !tbaa !28
  %i.av = sext i32 %i.as to i64
  %i.aw = getelementptr [8 x i8], ptr %i.q, i64 %i.av ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  store <2 x i64> %wide.load39, ptr %i.aw, align 8, !tbaa !28
  store <2 x i64> %wide.load40, ptr %i.ax, align 8, !tbaa !28
  %index.next41 = add nuw i64 %index38, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next41, %n.vec36
  br i1 %i.ay, label %middle.block42, label %vector.body37, !llvm.loop !423

middle.block42:                                   ; preds = %vector.body37
  %cmp.n43 = icmp eq i64 %n.vec36, %wide.trip.count56.i
  br i1 %cmp.n43, label %._crit_edge.i, label %vtable_included.exit.thread.us.i.preheader

vtable_included.exit.thread.us.i.preheader:       ; preds = %vector.memcheck31, %vector.scevcheck30, %vtable_included.exit.thread.us.preheader.i, %middle.block42
  %indvars.iv53.i.ph = phi i64 [ 0, %vector.memcheck31 ], [ 0, %vector.scevcheck30 ], [ 0, %vtable_included.exit.thread.us.preheader.i ], [ %n.vec36, %middle.block42 ] ; 3 uses
  %.02636.us.i.ph = phi i32 [ %.0.i.i, %vector.memcheck31 ], [ %.0.i.i, %vector.scevcheck30 ], [ %.0.i.i, %vtable_included.exit.thread.us.preheader.i ], [ %i.aq, %middle.block42 ] ; 2 uses
  %xtraiter49 = and i64 %wide.trip.count56.i, 3   ; 2 uses
  %lcmp.mod50.not = icmp eq i64 %xtraiter49, 0
  br i1 %lcmp.mod50.not, label %vtable_included.exit.thread.us.i.prol.loopexit, label %vtable_included.exit.thread.us.i.prol

vtable_included.exit.thread.us.i.prol:            ; preds = %vtable_included.exit.thread.us.i.preheader, %vtable_included.exit.thread.us.i.prol
  %indvars.iv53.i.prol = phi i64 [ %indvars.iv.next54.i.prol, %vtable_included.exit.thread.us.i.prol ], [ %indvars.iv53.i.ph, %vtable_included.exit.thread.us.i.preheader ] ; 2 uses
  %.02636.us.i.prol = phi i32 [ %i.bb, %vtable_included.exit.thread.us.i.prol ], [ %.02636.us.i.ph, %vtable_included.exit.thread.us.i.preheader ] ; 2 uses
  %prol.iter51 = phi i64 [ %prol.iter51.next, %vtable_included.exit.thread.us.i.prol ], [ 0, %vtable_included.exit.thread.us.i.preheader ]
  %i.az = getelementptr [8 x i8], ptr %i.ab, i64 %indvars.iv53.i.prol
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !28
  %i.bb = add i32 %.02636.us.i.prol, 1            ; 3 uses
  %i.bc = sext i32 %.02636.us.i.prol to i64
  %i.bd = getelementptr [8 x i8], ptr %i.q, i64 %i.bc
  store i64 %i.ba, ptr %i.bd, align 8, !tbaa !28
  %indvars.iv.next54.i.prol = add nuw nsw i64 %indvars.iv53.i.prol, 1 ; 2 uses
  %prol.iter51.next = add i64 %prol.iter51, 1     ; 2 uses
  %prol.iter51.cmp.not = icmp eq i64 %prol.iter51.next, %xtraiter49
  br i1 %prol.iter51.cmp.not, label %vtable_included.exit.thread.us.i.prol.loopexit, label %vtable_included.exit.thread.us.i.prol, !llvm.loop !424

vtable_included.exit.thread.us.i.prol.loopexit:   ; preds = %vtable_included.exit.thread.us.i.prol, %vtable_included.exit.thread.us.i.preheader
  %.lcssa.unr = phi i32 [ poison, %vtable_included.exit.thread.us.i.preheader ], [ %i.bb, %vtable_included.exit.thread.us.i.prol ]
  %indvars.iv53.i.unr = phi i64 [ %indvars.iv53.i.ph, %vtable_included.exit.thread.us.i.preheader ], [ %indvars.iv.next54.i.prol, %vtable_included.exit.thread.us.i.prol ]
  %.02636.us.i.unr = phi i32 [ %.02636.us.i.ph, %vtable_included.exit.thread.us.i.preheader ], [ %i.bb, %vtable_included.exit.thread.us.i.prol ]
  %i.be = sub nsw i64 %indvars.iv53.i.ph, %wide.trip.count56.i
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %._crit_edge.i, label %vtable_included.exit.thread.us.i

vtable_included.exit.thread.us.i:                 ; preds = %vtable_included.exit.thread.us.i.prol.loopexit, %vtable_included.exit.thread.us.i
  %indvars.iv53.i = phi i64 [ %indvars.iv.next54.i.3, %vtable_included.exit.thread.us.i ], [ %indvars.iv53.i.unr, %vtable_included.exit.thread.us.i.prol.loopexit ] ; 5 uses
  %.02636.us.i = phi i32 [ %i.ca, %vtable_included.exit.thread.us.i ], [ %.02636.us.i.unr, %vtable_included.exit.thread.us.i.prol.loopexit ] ; 5 uses
  %i.bg = getelementptr [8 x i8], ptr %i.ab, i64 %indvars.iv53.i
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !28
  %i.bi = add i32 %.02636.us.i, 1
  %i.bj = sext i32 %.02636.us.i to i64
  %i.bk = getelementptr [8 x i8], ptr %i.q, i64 %i.bj
  store i64 %i.bh, ptr %i.bk, align 8, !tbaa !28
  %i.bl = getelementptr [8 x i8], ptr %i.ab, i64 %indvars.iv53.i
  %i.bm = getelementptr i8, ptr %i.bl, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !28
  %i.bo = add i32 %.02636.us.i, 2
  %i.bp = sext i32 %i.bi to i64
  %i.bq = getelementptr [8 x i8], ptr %i.q, i64 %i.bp
  store i64 %i.bn, ptr %i.bq, align 8, !tbaa !28
  %i.br = getelementptr [8 x i8], ptr %i.ab, i64 %indvars.iv53.i
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !28
  %i.bu = add i32 %.02636.us.i, 3
  %i.bv = sext i32 %i.bo to i64
  %i.bw = getelementptr [8 x i8], ptr %i.q, i64 %i.bv
  store i64 %i.bt, ptr %i.bw, align 8, !tbaa !28
  %i.bx = getelementptr [8 x i8], ptr %i.ab, i64 %indvars.iv53.i
  %i.by = getelementptr i8, ptr %i.bx, i64 24
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !28
  %i.ca = add i32 %.02636.us.i, 4                 ; 2 uses
  %i.cb = sext i32 %i.bu to i64
  %i.cc = getelementptr [8 x i8], ptr %i.q, i64 %i.cb
  store i64 %i.bz, ptr %i.cc, align 8, !tbaa !28
  %indvars.iv.next54.i.3 = add nuw nsw i64 %indvars.iv53.i, 4 ; 2 uses
  %exitcond57.not.i.3 = icmp eq i64 %indvars.iv.next54.i.3, %wide.trip.count56.i
  br i1 %exitcond57.not.i.3, label %._crit_edge.i, label %vtable_included.exit.thread.us.i, !llvm.loop !425

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.cd = getelementptr i8, ptr %i.ac, i64 8
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !198 ; 2 uses
  %i.cf = icmp sgt i32 %i.ce, 0
  %wide.trip.count.i.i = zext nneg i32 %i.ce to i64
  br i1 %i.cf, label %.lr.ph.split.split.us.i, label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %.lr.ph.split.i
  %wide.trip.count.i = zext nneg i32 %.0.i30.i to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %.0.i30.i, 20
  br i1 %min.iters.check, label %.preheader.i.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.i.preheader.i
  %i.cg = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %i.ch = trunc nsw i64 %i.cg to i32
  %i.ci = add i32 %.0.i.i, %i.ch
  %i.cj = icmp slt i32 %i.ci, %.0.i.i
  %i.ck = icmp ugt i64 %i.cg, 4294967295
  %i.cl = or i1 %i.cj, %i.ck
  br i1 %i.cl, label %.preheader.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %7 = ptrtoaddr ptr %i.p to i64
  %i.cm = zext nneg i32 %.0.i.i to i64
  %i.cn = shl nuw nsw i64 %i.cm, 3
  %8 = ptrtoaddr ptr %i.ab to i64
  %i.co = add i64 %i.cn, %7
  %i.cp = sub i64 %i.co, %8
  %i.cq = add i64 %i.cp, 7
  %diff.check = icmp ult i64 %i.cq, 31
  br i1 %diff.check, label %.preheader.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 4 uses
  %i.cr = trunc nuw nsw i64 %n.vec to i32
  %i.cs = add nuw i32 %.0.i.i, %i.cr              ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ct = trunc i64 %index to i32
  %i.cu = add i32 %.0.i.i, %i.ct
  %i.cv = getelementptr [8 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 16
  %wide.load = load <2 x i64>, ptr %i.cv, align 8, !tbaa !28
  %wide.load28 = load <2 x i64>, ptr %i.cw, align 8, !tbaa !28
  %i.cx = sext i32 %i.cu to i64
  %i.cy = getelementptr [8 x i8], ptr %i.q, i64 %i.cx ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cy, i64 16
  store <2 x i64> %wide.load, ptr %i.cy, align 8, !tbaa !28
  store <2 x i64> %wide.load28, ptr %i.cz, align 8, !tbaa !28
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !426

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %vector.memcheck, %vector.scevcheck, %.preheader.i.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader.i.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %.02636.i.ph = phi i32 [ %.0.i.i, %vector.memcheck ], [ %.0.i.i, %vector.scevcheck ], [ %.0.i.i, %.preheader.i.preheader.i ], [ %i.cs, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol

.preheader.i.i.prol:                              ; preds = %.preheader.i.i.preheader, %.preheader.i.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.preheader.i.i.prol ], [ %indvars.iv.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %.02636.i.prol = phi i32 [ %i.dd, %.preheader.i.i.prol ], [ %.02636.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.i.prol ], [ 0, %.preheader.i.i.preheader ]
  %i.db = getelementptr [8 x i8], ptr %i.ab, i64 %indvars.iv.i.prol
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !28
  %i.dd = add i32 %.02636.i.prol, 1               ; 3 uses
  %i.de = sext i32 %.02636.i.prol to i64
  %i.df = getelementptr [8 x i8], ptr %i.q, i64 %i.de
  store i64 %i.dc, ptr %i.df, align 8, !tbaa !28
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol, !llvm.loop !427

.preheader.i.i.prol.loopexit:                     ; preds = %.preheader.i.i.prol, %.preheader.i.i.preheader
  %.lcssa48.unr = phi i32 [ poison, %.preheader.i.i.preheader ], [ %i.dd, %.preheader.i.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.preheader.i.i.preheader ], [ %indvars.iv.next.i.prol, %.preheader.i.i.prol ]
  %.02636.i.unr = phi i32 [ %.02636.i.ph, %.preheader.i.i.preheader ], [ %i.dd, %.preheader.i.i.prol ]
  %i.dg = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.dh = icmp ugt i64 %i.dg, -4
  br i1 %i.dh, label %._crit_edge.i, label %.preheader.i.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i
  %i.di = load ptr, ptr %i.ac, align 8, !tbaa !200
  %wide.trip.count51.i = zext nneg i32 %.0.i30.i to i64
  br label %.preheader.i.us.i

.preheader.i.us.i:                                ; preds = %vtable_included.exit.us40.i, %.lr.ph.split.split.us.i
  %indvars.iv48.i = phi i64 [ %indvars.iv.next49.i, %vtable_included.exit.us40.i ], [ 0, %.lr.ph.split.split.us.i ] ; 2 uses
  %.02636.us37.i = phi i32 [ %.1.us41.i, %vtable_included.exit.us40.i ], [ %.0.i.i, %.lr.ph.split.split.us.i ] ; 3 uses
  %i.dj = getelementptr [8 x i8], ptr %i.ab, i64 %indvars.iv48.i
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !28 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.preheader.i.us.i
  %indvars.iv.i.us.i = phi i64 [ 0, %.preheader.i.us.i ], [ %indvars.iv.next.i.us.i, %bb.h ] ; 2 uses
  %i.dl = getelementptr [8 x i8], ptr %i.di, i64 %indvars.iv.i.us.i
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !28
  %i.dn = icmp eq i64 %i.dm, %i.dk
  br i1 %i.dn, label %vtable_included.exit.us40.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.i, label %vtable_included.exit.thread.loopexit.us.i, label %bb.g, !llvm.loop !2

vtable_included.exit.thread.loopexit.us.i:        ; preds = %bb.h
  %i.do = add i32 %.02636.us37.i, 1
  %i.dp = sext i32 %.02636.us37.i to i64
  %i.dq = getelementptr [8 x i8], ptr %i.q, i64 %i.dp
  store i64 %i.dk, ptr %i.dq, align 8, !tbaa !28
  br label %vtable_included.exit.us40.i

vtable_included.exit.us40.i:                      ; preds = %bb.g, %vtable_included.exit.thread.loopexit.us.i
  %.1.us41.i = phi i32 [ %i.do, %vtable_included.exit.thread.loopexit.us.i ], [ %.02636.us37.i, %bb.g ] ; 2 uses
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 2 uses
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next49.i, %wide.trip.count51.i
  br i1 %exitcond52.not.i, label %._crit_edge.i, label %.preheader.i.us.i, !llvm.loop !428

.preheader.i.i:                                   ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.preheader.i.i ], [ %indvars.iv.i.unr, %.preheader.i.i.prol.loopexit ] ; 5 uses
  %.02636.i = phi i32 [ %i.el, %.preheader.i.i ], [ %.02636.i.unr, %.preheader.i.i.prol.loopexit ] ; 5 uses
  %i.dr = getelementptr [8 x i8], ptr %i.ab, i64 %indvars.iv.i
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !28
  %i.dt = add i32 %.02636.i, 1
  %i.du = sext i32 %.02636.i to i64
  %i.dv = getelementptr [8 x i8], ptr %i.q, i64 %i.du
  store i64 %i.ds, ptr %i.dv, align 8, !tbaa !28
  %i.dw = getelementptr [8 x i8], ptr %i.ab, i64 %indvars.iv.i
  %i.dx = getelementptr i8, ptr %i.dw, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !28
  %i.dz = add i32 %.02636.i, 2
  %i.ea = sext i32 %i.dt to i64
  %i.eb = getelementptr [8 x i8], ptr %i.q, i64 %i.ea
  store i64 %i.dy, ptr %i.eb, align 8, !tbaa !28
  %i.ec = getelementptr [8 x i8], ptr %i.ab, i64 %indvars.iv.i
  %i.ed = getelementptr i8, ptr %i.ec, i64 16
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !28
  %i.ef = add i32 %.02636.i, 3
  %i.eg = sext i32 %i.dz to i64
  %i.eh = getelementptr [8 x i8], ptr %i.q, i64 %i.eg
  store i64 %i.ee, ptr %i.eh, align 8, !tbaa !28
  %i.ei = getelementptr [8 x i8], ptr %i.ab, i64 %indvars.iv.i
  %i.ej = getelementptr i8, ptr %i.ei, i64 24
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !28
  %i.el = add i32 %.02636.i, 4                    ; 2 uses
  %i.em = sext i32 %i.ef to i64
  %i.en = getelementptr [8 x i8], ptr %i.q, i64 %i.em
  store i64 %i.ek, ptr %i.en, align 8, !tbaa !28
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.preheader.i.i, !llvm.loop !429

._crit_edge.i:                                    ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i, %vtable_included.exit.us40.i, %vtable_included.exit.thread.us.i.prol.loopexit, %vtable_included.exit.thread.us.i, %middle.block, %middle.block42, %ruby_nonempty_memcpy.exit.i
  %.026.lcssa.i = phi i32 [ %.0.i.i, %ruby_nonempty_memcpy.exit.i ], [ %i.ca, %vtable_included.exit.thread.us.i ], [ %.1.us41.i, %vtable_included.exit.us40.i ], [ %i.aq, %middle.block42 ], [ %i.cs, %middle.block ], [ %.lcssa.unr, %vtable_included.exit.thread.us.i.prol.loopexit ], [ %.lcssa48.unr, %.preheader.i.i.prol.loopexit ], [ %i.el, %.preheader.i.i ] ; 2 uses
  %i.eo = icmp slt i32 %.026.lcssa.i, %i.l
  br i1 %i.eo, label %bb.i, label %local_tbl.exit

bb.i:                                             ; preds = %._crit_edge.i
  %i.ep = load ptr, ptr %i.n, align 8, !tbaa !138
  %i.eq = tail call ptr @rb_ast_resize_latest_local_table(ptr noundef %i.ep, i32 noundef %.026.lcssa.i) #31
  br label %local_tbl.exit

local_tbl.exit:                                   ; preds = %vtable_size.exit31.i, %._crit_edge.i, %bb.i
  %.028.i = phi ptr [ null, %vtable_size.exit31.i ], [ %i.eq, %bb.i ], [ %i.p, %._crit_edge.i ]
  %i.er = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.er, align 8, !tbaa !138
  %i.es = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 0, i64 noundef range(i64 32, 129) 64, i64 noundef 8) #31 ; 10 uses
  tail call void @rb_node_init(ptr noundef %i.es, i32 noundef range(i32 0, 115) 0) #31
  %i.et = getelementptr i8, ptr %i.es, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.et, ptr noundef nonnull readonly align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !72
  %i.eu = load i32, ptr %4, align 4, !tbaa !68
  %i.ev = sext i32 %i.eu to i64
  %i.ew = load i64, ptr %i.es, align 8, !tbaa !83
  %i.ex = and i64 %i.ew, 32767
  %i.ey = shl nsw i64 %i.ev, 15
  %i.ez = or disjoint i64 %i.ex, %i.ey
  store i64 %i.ez, ptr %i.es, align 8, !tbaa !83
  %i.fa = getelementptr i8, ptr %0, i64 296       ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !211 ; 2 uses
  %i.fc = add i32 %i.fb, 1
  store i32 %i.fc, ptr %i.fa, align 8, !tbaa !211
  %i.fd = getelementptr i8, ptr %i.es, i64 24
  store i32 %i.fb, ptr %i.fd, align 8, !tbaa !212
  %i.fe = getelementptr i8, ptr %i.es, i64 32
  store ptr %.028.i, ptr %i.fe, align 8, !tbaa !213
  %i.ff = getelementptr i8, ptr %i.es, i64 40
  store ptr %2, ptr %i.ff, align 8, !tbaa !214
  %i.fg = getelementptr i8, ptr %i.es, i64 48
  store ptr %3, ptr %i.fg, align 8, !tbaa !101
  %i.fh = getelementptr i8, ptr %i.es, i64 56
  store ptr %1, ptr %i.fh, align 8, !tbaa !215
  ret ptr %i.es
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @block_append(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i64, ptr %1, align 8, !tbaa !83
  %i.d = and i64 %i.c, 32512
  %cond = icmp eq i64 %i.d, 256
  br i1 %cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 288
  %.val.i.i = load ptr, ptr %i.f, align 8, !tbaa !138
  %i.g = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i, i32 noundef range(i32 0, 115) 1, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #31 ; 11 uses
  tail call void @rb_node_init(ptr noundef %i.g, i32 noundef range(i32 0, 115) 1) #31
  %i.h = getelementptr i8, ptr %i.g, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !72
  %i.i = load i32, ptr %i.e, align 8, !tbaa !68
  %i.j = sext i32 %i.i to i64
end_hunk_0
begin_hunk_1_@ruby_show_error_line:bb.a
  %i.x = ptrtoint ptr %.0132 to i64               ; 6 uses
  %i.y = sub i64 %i.x, %.pre-phi194
  %i.z = icmp sgt i64 %i.y, 30
  %i.aa = getelementptr i8, ptr %.0132, i64 -30
  %i.ab = select i1 %i.z, ptr %i.aa, ptr %i.b     ; 2 uses
  %i.ac = icmp ult ptr %i.ab, %.0132
  br i1 %i.ac, label %.lr.ph208, label %.critedge

bb.i:                                             ; preds = %.lr.ph208
  %i.ad = icmp ult ptr %i.ab, %i.ae
  br i1 %i.ad, label %.lr.ph208, label %.critedge, !llvm.loop !546

.lr.ph208:                                        ; preds = %bb.h, %bb.i
  %.0135206 = phi ptr [ %i.ae, %bb.i ], [ %.0132, %bb.h ] ; 2 uses
  %i.ae = getelementptr i8, ptr %.0135206, i64 -1 ; 4 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !31
  %.not153 = icmp eq i8 %i.af, 10
  br i1 %.not153, label %..critedge_crit_edge209, label %bb.i, !llvm.loop !546

..critedge_crit_edge209:                          ; preds = %.lr.ph208
  br label %.critedge, !llvm.loop !546

.critedge:                                        ; preds = %bb.i, %..critedge_crit_edge209, %bb.h
  %.0135.lcssa = phi ptr [ %.0132, %bb.h ], [ %.0135206, %..critedge_crit_edge209 ], [ %i.ae, %bb.i ] ; 5 uses
  %i.ag = ptrtoint ptr %.0126 to i64
  %i.ah = sub i64 %i.ag, %i.x
  %i.ai = icmp sgt i64 %i.ah, 30
  %i.aj = getelementptr i8, ptr %.0132, i64 30
  %i.ak = select i1 %i.ai, ptr %i.aj, ptr %.0126  ; 3 uses
  %i.al = icmp ult ptr %.0132, %i.ak
  br i1 %i.al, label %.lr.ph.preheader, label %.critedge2

.lr.ph.preheader:                                 ; preds = %.critedge
  %i.am = ptrtoaddr ptr %i.ak to i64
  %i.an = sub i64 %i.am, %i.x
  %scevgep = getelementptr i8, ptr %.0132, i64 %i.an
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %.0133181 = phi ptr [ %i.ap, %bb.j ], [ %.0132, %.lr.ph.preheader ] ; 4 uses
  %i.ao = load i8, ptr %.0133181, align 1, !tbaa !31
  switch i8 %i.ao, label %bb.j [
    i8 10, label %.critedge2.loopexit
    i8 13, label %.critedge2.loopexit
  ]

bb.j:                                             ; preds = %.lr.ph
  %i.ap = getelementptr i8, ptr %.0133181, i64 1  ; 2 uses
  %exitcond.not = icmp eq ptr %i.ap, %i.ak
  br i1 %exitcond.not, label %.critedge2.loopexit, label %.lr.ph, !llvm.loop !547

.critedge2.loopexit:                              ; preds = %.lr.ph, %.lr.ph, %bb.j
  %.0133.lcssa.ph = phi ptr [ %scevgep, %bb.j ], [ %.0133181, %.lr.ph ], [ %.0133181, %.lr.ph ] ; 2 uses
  %.pre = ptrtoint ptr %.0133.lcssa.ph to i64
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %.critedge
  %.pre-phi = phi i64 [ %.pre, %.critedge2.loopexit ], [ %i.x, %.critedge ]
  %.0133.lcssa = phi ptr [ %.0133.lcssa.ph, %.critedge2.loopexit ], [ %.0132, %.critedge ] ; 4 uses
  %i.aq = ptrtoint ptr %.0135.lcssa to i64
  %i.ar = sub i64 %.pre-phi, %i.aq                ; 2 uses
  %i.as = icmp sgt i64 %i.ar, 4
  br i1 %i.as, label %bb.k, label %bb.o

bb.k:                                             ; preds = %.critedge2
  %i.at = icmp ugt ptr %.0135.lcssa, %i.b
  br i1 %i.at, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr i8, ptr %4, i64 8
  %.val166 = load ptr, ptr %i.au, align 8, !tbaa !41
  %i.av = tail call ptr @onigenc_get_prev_char_head(ptr noundef %.val166, ptr noundef %i.b, ptr noundef nonnull %.0135.lcssa, ptr noundef %.0132) #31 ; 2 uses
  %i.aw = icmp ugt ptr %i.av, %i.b
  %spec.select161 = select i1 %i.aw, ptr @.str.70, ptr @.str.22
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1136 = phi ptr [ %.0135.lcssa, %bb.k ], [ %i.av, %bb.l ] ; 2 uses
  %.0128 = phi ptr [ @.str.22, %bb.k ], [ %spec.select161, %bb.l ] ; 2 uses
  %i.ax = icmp ult ptr %.0133.lcssa, %.0126
  br i1 %i.ax, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr i8, ptr %4, i64 8
  %.val165 = load ptr, ptr %i.ay, align 8, !tbaa !41
  %i.az = tail call ptr @onigenc_get_prev_char_head(ptr noundef %.val165, ptr noundef %.0132, ptr noundef %.0133.lcssa, ptr noundef nonnull %.0126) #31 ; 2 uses
  %i.ba = icmp ult ptr %i.az, %.0126
  %spec.select162 = select i1 %i.ba, ptr @.str.70, ptr @.str.22
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %.critedge2
  %.2137 = phi ptr [ %.0135.lcssa, %.critedge2 ], [ %.1136, %bb.n ], [ %.1136, %bb.m ] ; 13 uses
  %.1134 = phi ptr [ %.0133.lcssa, %.critedge2 ], [ %i.az, %bb.n ], [ %.0133.lcssa, %bb.m ] ; 2 uses
  %.1129 = phi ptr [ @.str.22, %.critedge2 ], [ %.0128, %bb.n ], [ %.0128, %bb.m ] ; 3 uses
  %.0127 = phi ptr [ @.str.22, %.critedge2 ], [ %spec.select162, %bb.n ], [ @.str.22, %bb.m ] ; 2 uses
  %i.bb = load i32, ptr %2, align 4, !tbaa !68    ; 2 uses
  %i.bc = icmp eq i32 %3, %i.bb
  br i1 %i.bc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bd = getelementptr i8, ptr %2, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !69
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr i8, ptr %i.b, i64 %i.bf   ; 2 uses
  %i.bh = icmp ugt ptr %i.bg, %.0132
  %spec.select163 = select i1 %i.bh, ptr %.0132, ptr %i.bg
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0130 = phi ptr [ %i.b, %bb.o ], [ %spec.select163, %bb.p ] ; 3 uses
  %.0130211 = ptrtoaddr ptr %.0130 to i64
  %i.bi = icmp ult ptr %.0130, %.2137
  %spec.select164 = select i1 %i.bi, ptr %.2137, ptr %.0130 ; 4 uses
  %i.bj = icmp slt i64 %i.ar, 5
  br i1 %i.bj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bk = load i32, ptr %i.m, align 4, !tbaa !70
  %i.bl = icmp eq i32 %i.bb, %i.bk
  br i1 %i.bl, label %bb.ac, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bm = and i64 %1, -5
  %.not180 = icmp eq i64 %i.bm, 0
  br i1 %.not180, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bn = tail call i64 @rb_attr_get(i64 noundef %1, i64 noundef 3489) #31 ; 5 uses
  %i.bo = inttoptr i64 %i.bn to ptr               ; 3 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !33 ; 2 uses
  %i.br = icmp sgt i64 %i.bq, 0
  br i1 %i.br, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  %i.bs = load i64, ptr %i.bo, align 8, !tbaa !30
  %i.bt = and i64 %i.bs, 8192
  %.not.i.i = icmp eq i64 %i.bt, 0
  %i.bu = getelementptr i8, ptr %i.bo, i64 24     ; 2 uses
  br i1 %.not.i.i, label %char_at_end.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !31
  br label %char_at_end.exit

char_at_end.exit:                                 ; preds = %bb.u, %bb.v
  %i.bw = phi ptr [ %i.bv, %bb.v ], [ %i.bu, %bb.u ]
  %i.bx = getelementptr i8, ptr %i.bw, i64 %i.bq
  %i.by = getelementptr i8, ptr %i.bx, i64 -1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !31
  %.not156 = icmp eq i8 %i.bz, 10
  br i1 %.not156, label %.thread, label %bb.w

bb.w:                                             ; preds = %char_at_end.exit
  %i.ca = tail call i64 @rb_str_cat(i64 noundef %i.bn, ptr noundef nonnull @.str.7, i64 noundef 1) #31 ; 0 uses
  br label %.thread

bb.x:                                             ; preds = %bb.s
  %i.cb = getelementptr i8, ptr %4, i64 8
  %.val = load ptr, ptr %i.cb, align 8, !tbaa !41
  %i.cc = tail call i64 @rb_enc_str_new_static(ptr noundef null, i64 noundef 0, ptr noundef %.val) #31 ; 4 uses
  %.not157 = icmp eq i64 %1, 0
  br i1 %.not157, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.cd = tail call i32 @rb_stderr_tty_p() #31
  %.not158 = icmp eq i32 %i.cd, 0
  br i1 %.not158, label %.thread, label %.thread176

.thread176:                                       ; preds = %bb.y
  %i.ce = ptrtoint ptr %spec.select164 to i64     ; 2 uses
  %i.cf = ptrtoint ptr %.2137 to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = trunc i64 %i.cg to i32
  %i.ci = sub i64 %i.x, %i.ce
  %i.cj = trunc i64 %i.ci to i32
  %i.ck = ptrtoint ptr %.1134 to i64
  %i.cl = sub i64 %i.ck, %i.x
  %i.cm = trunc i64 %i.cl to i32
  %i.cn = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.cc, ptr noundef nonnull @.str.71, ptr noundef nonnull %.1129, i32 noundef %i.ch, ptr noundef %.2137, i32 noundef %i.cj, ptr noundef %spec.select164, i32 noundef %i.cm, ptr noundef %.0132, ptr noundef nonnull %.0127) #31 ; 0 uses
  br label %bb.ab

.thread:                                          ; preds = %bb.t, %bb.w, %char_at_end.exit, %bb.y, %bb.x
  %.not157175 = phi i1 [ false, %bb.x ], [ true, %bb.y ], [ false, %char_at_end.exit ], [ false, %bb.w ], [ false, %bb.t ]
  %.0138172 = phi i64 [ %i.cc, %bb.x ], [ %i.cc, %bb.y ], [ %i.bn, %char_at_end.exit ], [ %i.bn, %bb.w ], [ %i.bn, %bb.t ] ; 2 uses
  %i.co = ptrtoint ptr %.1134 to i64
  %i.cp = ptrtoint ptr %.2137 to i64              ; 4 uses
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = icmp ult ptr %.0132, %.0126
  %i.cs = select i1 %i.cr, ptr %.0132, ptr %.0126 ; 2 uses
  %i.ct = ptrtoint ptr %i.cs to i64               ; 2 uses
  %i.cu = sub i64 %i.ct, %i.cp
  %i.cv = shl i64 %i.cu, 32
  %sext = add i64 %i.cv, 8589934592
  %i.cw = ashr exact i64 %sext, 32
  %i.cx = alloca i8, i64 %i.cw, align 16          ; 8 uses
  %i.cy = icmp ult ptr %.2137, %spec.select164
  br i1 %i.cy, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.thread
  %5 = tail call i64 @llvm.usub.sat.i64(i64 %.0130211, i64 %i.cp) ; 7 uses
  %min.iters.check = icmp ult i64 %5, 8
  %6 = ptrtoaddr ptr %i.cx to i64
  %i.cz = sub i64 %i.cp, %6
  %diff.check = icmp ugt i64 %i.cz, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph188.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check212 = icmp ult i64 %5, 32
  br i1 %min.iters.check212, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.da = and i64 %5, 24
  %n.vec = and i64 %5, -32                        ; 5 uses
  %i.db = getelementptr i8, ptr %i.cx, i64 %n.vec ; 2 uses
  %i.dc = getelementptr i8, ptr %.2137, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.cx, i64 %index ; 2 uses
  %next.gep213 = getelementptr i8, ptr %.2137, i64 %index ; 2 uses
  %i.dd = getelementptr i8, ptr %next.gep213, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep213, align 1, !tbaa !31
  %wide.load214 = load <16 x i8>, ptr %i.dd, align 1, !tbaa !31
  %i.de = icmp eq <16 x i8> %wide.load, splat (i8 9)
  %i.df = icmp eq <16 x i8> %wide.load214, splat (i8 9)
  %i.dg = select <16 x i1> %i.de, <16 x i8> splat (i8 9), <16 x i8> splat (i8 32)
  %i.dh = select <16 x i1> %i.df, <16 x i8> splat (i8 9), <16 x i8> splat (i8 32)
  %i.di = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %i.dg, ptr %next.gep, align 16, !tbaa !31
  store <16 x i8> %i.dh, ptr %i.di, align 16, !tbaa !31
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !548

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %5, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.da, 0
  br i1 %min.epilog.iters.check, label %.lr.ph188.preheader, label %vec.epilog.ph, !prof !348

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec216 = and i64 %5, -8                      ; 4 uses
  %i.dk = getelementptr i8, ptr %i.cx, i64 %n.vec216 ; 2 uses
  %i.dl = getelementptr i8, ptr %.2137, i64 %n.vec216 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index217 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next221, %vec.epilog.vector.body ] ; 3 uses
  %next.gep218 = getelementptr i8, ptr %i.cx, i64 %index217
  %next.gep219 = getelementptr i8, ptr %.2137, i64 %index217
  %wide.load220 = load <8 x i8>, ptr %next.gep219, align 1, !tbaa !31
  %i.dm = icmp eq <8 x i8> %wide.load220, splat (i8 9)
  %i.dn = select <8 x i1> %i.dm, <8 x i8> splat (i8 9), <8 x i8> splat (i8 32)
  store <8 x i8> %i.dn, ptr %next.gep218, align 8, !tbaa !31
  %index.next221 = add nuw i64 %index217, 8       ; 2 uses
  %i.do = icmp eq i64 %index.next221, %n.vec216
  br i1 %i.do, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !549

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n222 = icmp eq i64 %5, %n.vec216
  br i1 %cmp.n222, label %._crit_edge, label %.lr.ph188.preheader

.lr.ph188.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0187.ph = phi ptr [ %i.cx, %iter.check ], [ %i.db, %vec.epilog.iter.check ], [ %i.dk, %vec.epilog.middle.block ]
  %.3186.ph = phi ptr [ %.2137, %iter.check ], [ %i.dc, %vec.epilog.iter.check ], [ %i.dl, %vec.epilog.middle.block ]
  br label %.lr.ph188

.lr.ph188:                                        ; preds = %.lr.ph188.preheader, %.lr.ph188
  %.0187 = phi ptr [ %i.dt, %.lr.ph188 ], [ %.0187.ph, %.lr.ph188.preheader ] ; 2 uses
  %.3186 = phi ptr [ %i.dp, %.lr.ph188 ], [ %.3186.ph, %.lr.ph188.preheader ] ; 2 uses
  %i.dp = getelementptr i8, ptr %.3186, i64 1     ; 3 uses
  %i.dq = load i8, ptr %.3186, align 1, !tbaa !31
  %i.dr = icmp eq i8 %i.dq, 9
  %i.ds = select i1 %i.dr, i8 9, i8 32
  %i.dt = getelementptr i8, ptr %.0187, i64 1     ; 2 uses
  store i8 %i.ds, ptr %.0187, align 1, !tbaa !31
  %i.du = icmp ult ptr %i.dp, %spec.select164
  br i1 %i.du, label %.lr.ph188, label %._crit_edge, !llvm.loop !550

._crit_edge:                                      ; preds = %.lr.ph188, %middle.block, %vec.epilog.middle.block, %.thread
  %.3.lcssa = phi ptr [ %.2137, %.thread ], [ %i.dl, %vec.epilog.middle.block ], [ %i.dc, %middle.block ], [ %i.dp, %.lr.ph188 ]
  %.0.lcssa = phi ptr [ %i.cx, %.thread ], [ %i.dk, %vec.epilog.middle.block ], [ %i.db, %middle.block ], [ %i.dt, %.lr.ph188 ] ; 2 uses
  %i.dv = getelementptr i8, ptr %.0.lcssa, i64 1  ; 3 uses
  store i8 94, ptr %.0.lcssa, align 1, !tbaa !31
  %i.dw = getelementptr i8, ptr %.3.lcssa, i64 1  ; 2 uses
  %i.dx = icmp ugt ptr %i.cs, %i.dw
  br i1 %i.dx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %._crit_edge
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = sub i64 %i.ct, %i.dy                    ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.dv, i8 noundef 126, i64 noundef %i.dz, i1 noundef false) #31
  %i.ea = getelementptr i8, ptr %i.dv, i64 %i.dz
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge, %bb.z
  %.2 = phi ptr [ %i.ea, %bb.z ], [ %i.dv, %._crit_edge ]
  store i8 0, ptr %.2, align 1, !tbaa !31
  %i.eb = trunc i64 %i.cq to i32
  %i.ec = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %.0138172, ptr noundef nonnull @.str.72, ptr noundef nonnull %.1129, i32 noundef %i.eb, ptr noundef %.2137, ptr noundef nonnull %.0127, ptr noundef nonnull %.1129, ptr noundef nonnull %i.cx) #31 ; 0 uses
  br i1 %.not157175, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.thread176, %bb.aa
  %.0138173179 = phi i64 [ %i.cc, %.thread176 ], [ %.0138172, %bb.aa ]
  call void @rb_write_error_str(i64 noundef %.0138173179) #31
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.r, %bb.a
  ret void
}

declare i64 @rb_attr_get(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @rb_stderr_tty_p() local_unnamed_addr #2

declare i64 @rb_str_catf(i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @rb_write_error_str(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define hidden ptr @rb_parser_compile(ptr noundef initializes((24, 40), (72, 96), (168, 176), (196, 216), (288, 296)) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 24
  store ptr %1, ptr %i.b, align 8, !tbaa !349
  %i.c = getelementptr i8, ptr %0, i64 32
  store ptr %3, ptr %i.c, align 8, !tbaa !350
  %i.d = getelementptr i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %2, ptr %i.a, align 8, !tbaa !28
  %i.e = icmp eq i64 %2, 4
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 208
  store i64 4, ptr %i.f, align 8, !tbaa !325
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call i64 @rb_str_to_interned_str(i64 noundef %2) #31
  %i.h = getelementptr i8, ptr %0, i64 208
  store i64 %i.g, ptr %i.h, align 8, !tbaa !325
  %i.i = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.a) #31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink.i = phi ptr [ @.str.591, %bb.b ], [ %i.i, %bb.c ]
  %i.j = getelementptr i8, ptr %0, i64 200
  store ptr %.sink.i, ptr %i.j, align 8, !tbaa !97
  %i.k = add i32 %4, -1
  %i.l = getelementptr i8, ptr %0, i64 196
  store i32 %i.k, ptr %i.l, align 4, !tbaa !63
  %i.m = getelementptr i8, ptr %0, i64 168        ; 3 uses
  store ptr null, ptr %i.m, align 8, !tbaa !110
  %i.n = call ptr @rb_ast_new() #31               ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 288        ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !138
  %i.p = ptrtoint ptr %0 to i64
  %i.q = call i64 @rb_suppress_tracing(ptr noundef nonnull @yycompile0, i64 noundef %i.p) #31 ; 0 uses
  store ptr null, ptr %i.o, align 8, !tbaa !138
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !110
  %.not12.i = icmp eq ptr %i.r, null
  br i1 %.not12.i, label %yycompile.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  call fastcc void @local_pop(ptr noundef nonnull %0)
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !110
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %yycompile.exit, label %.lr.ph.i, !llvm.loop !551

yycompile.exit:                                   ; preds = %.lr.ph.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.n
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i32 @rb_parser_trace_lex_state(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef returned %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.73, i64 noundef 11) #31 ; 7 uses
  %i.c = tail call fastcc i64 @append_lex_state_name(i32 noundef %1, i64 noundef %i.b) ; 0 uses
  %i.d = tail call i64 @rb_str_cat(i64 noundef %i.b, ptr noundef nonnull @.str.74, i64 noundef 4) #31 ; 0 uses
  %i.e = tail call fastcc i64 @append_lex_state_name(i32 noundef %2, i64 noundef %i.b) ; 0 uses
  %i.f = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.b, ptr noundef nonnull @.str.75, i32 noundef %3) #31 ; 0 uses
  %i.g = getelementptr i8, ptr %0, i64 256        ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !196
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.i = getelementptr i8, ptr %0, i64 248        ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !195  ; 3 uses
  store i64 %i.j, ptr %i.a, align 8, !tbaa !28
  %i.k = icmp eq i64 %i.j, 4
  br i1 %i.k, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = inttoptr i64 %i.j to ptr
  %i.m = getelementptr i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !33
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 4, ptr %i.i, align 8, !tbaa !195
  %i.o = call i64 @rb_io_puts(i32 noundef 1, ptr noundef nonnull %i.a, i64 noundef %i.h) #31 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.p = icmp eq i64 %i.b, 4
  br i1 %i.p, label %flush_debug_buffer.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = inttoptr i64 %i.b to ptr
  %i.r = getelementptr i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !33
  %.not6.i = icmp eq i64 %i.s, 0
  br i1 %.not6.i, label %flush_debug_buffer.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load i64, ptr %i.g, align 8, !tbaa !196
  %i.u = call i64 @rb_io_write(i64 noundef %i.t, i64 noundef %i.b) #31 ; 0 uses
  br label %flush_debug_buffer.exit

flush_debug_buffer.exit:                          ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret i32 %2
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef i64 @append_lex_state_name(i32 noundef %0, i64 noundef returned %1) unnamed_addr #0 {
bb.a:
  %i.a = and i32 %0, 1
  %.not14 = icmp eq i32 %i.a, 0
  br i1 %.not14, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %0, 2
  %.not14.1 = icmp eq i32 %i.b, 0
  br i1 %.not14.1, label %.thread8, label %bb.d

.thread:                                          ; preds = %bb.a
  %i.c = tail call i64 @rb_str_cat_cstr(i64 noundef %1, ptr noundef nonnull @rb_parser_lex_state_names) #31 ; 0 uses
  %i.d = and i32 %0, 2
  %.not14.16 = icmp eq i32 %i.d, 0
  br i1 %.not14.16, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.e = tail call i64 @rb_str_cat(i64 noundef %1, ptr noundef nonnull @.str.610, i64 noundef 1) #31 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.f = tail call i64 @rb_str_cat_cstr(i64 noundef %1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @rb_parser_lex_state_names, i64 8)) #31 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %i.g = and i32 %0, 4
  %.not14.2 = icmp eq i32 %i.g, 0
  br i1 %.not14.2, label %bb.g, label %bb.f

.thread8:                                         ; preds = %bb.b
  %i.h = and i32 %0, 4
end_hunk_1
