inline.NumInlined: 6676
inline.NumDeleted: 333
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 109
loop-unroll.NumUnrolled: 112
begin_hunk_0_@iseq_add_getlocal:bb.a
  br label %bb.g

bb.e:                                             ; preds = %._crit_edge.i, %bb.b, %bb.c
  %.not.i22 = icmp eq ptr %2, null
  br i1 %.not.i22, label %nd_line.exit24, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bo = load i64, ptr %2, align 8, !tbaa !176
  %i.bp = lshr i64 %i.bo, 15
  %i.bq = trunc i64 %i.bp to i32
  br label %nd_line.exit24

nd_line.exit24:                                   ; preds = %bb.e, %bb.f
  %.0.i23 = phi i32 [ %i.bq, %bb.f ], [ -1, %bb.e ]
  %i.br = getelementptr i8, ptr %2, i64 24
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !278
  %i.bt = add i32 %3, 2
  %i.bu = sext i32 %i.bt to i64
  %i.bv = shl nsw i64 %i.bu, 1
  %i.bw = or disjoint i64 %i.bv, 1
  %i.bx = sext i32 %4 to i64
  %i.by = shl nsw i64 %i.bx, 1
  %i.bz = or disjoint i64 %i.by, 1
  %i.ca = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %.0.i23, i32 noundef %i.bs, i32 noundef 1, i32 noundef 2, i64 noundef %i.bw, i64 noundef %i.bz)
  br label %bb.g

bb.g:                                             ; preds = %nd_line.exit24, %nd_line.exit
  %.sink38 = phi ptr [ %i.ca, %nd_line.exit24 ], [ %i.bn, %nd_line.exit ] ; 3 uses
  %i.cb = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !11 ; 2 uses
  %i.cd = getelementptr i8, ptr %.sink38, i64 16
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !34
  %i.ce = getelementptr i8, ptr %i.cc, i64 8
  store ptr %.sink38, ptr %i.ce, align 8, !tbaa !35
  store ptr %.sink38, ptr %i.cb, align 8, !tbaa !11
  %i.cf = icmp sgt i32 %4, 0
  br i1 %i.cf, label %.preheader.preheader, label %bb.h

.preheader.preheader:                             ; preds = %bb.g
  %xtraiter42 = and i32 %4, 7                     ; 3 uses
  %i.cg = icmp ult i32 %4, 8
  br i1 %i.cg, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i32 %4, 2147483640
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.09.i = phi ptr [ %0, %.preheader.preheader.new ], [ %i.dm, %.preheader ]
  %niter = phi i32 [ 0, %.preheader.preheader.new ], [ %niter.next.7, %.preheader ]
  %i.ch = getelementptr i8, ptr %.09.i, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !43
  %i.cj = getelementptr i8, ptr %i.ci, i64 168
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !170
  %i.cl = getelementptr i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !43
  %i.cn = getelementptr i8, ptr %i.cm, i64 168
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !170
  %i.cp = getelementptr i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !43
  %i.cr = getelementptr i8, ptr %i.cq, i64 168
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !170
  %i.ct = getelementptr i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !43
  %i.cv = getelementptr i8, ptr %i.cu, i64 168
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !170
  %i.cx = getelementptr i8, ptr %i.cw, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !43
  %i.cz = getelementptr i8, ptr %i.cy, i64 168
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !170
  %i.db = getelementptr i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !43
  %i.dd = getelementptr i8, ptr %i.dc, i64 168
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !170
  %i.df = getelementptr i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !43
  %i.dh = getelementptr i8, ptr %i.dg, i64 168
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !170
  %i.dj = getelementptr i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !43
  %i.dl = getelementptr i8, ptr %i.dk, i64 168
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !170 ; 3 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %iseq_lvar_id.exit.unr-lcssa, label %.preheader, !llvm.loop !279

iseq_lvar_id.exit.unr-lcssa:                      ; preds = %.preheader
  %lcmp.mod43.not = icmp eq i32 %xtraiter42, 0
  br i1 %lcmp.mod43.not, label %iseq_lvar_id.exit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %iseq_lvar_id.exit.unr-lcssa, %.preheader.preheader
  %.09.i.epil.init = phi ptr [ %0, %.preheader.preheader ], [ %i.dm, %iseq_lvar_id.exit.unr-lcssa ]
  %lcmp.mod45 = icmp ne i32 %xtraiter42, 0
  tail call void @llvm.assume(i1 %lcmp.mod45)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.09.i.epil = phi ptr [ %i.dq, %.preheader.epil ], [ %.09.i.epil.init, %.preheader.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.dn = getelementptr i8, ptr %.09.i.epil, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !43
  %i.dp = getelementptr i8, ptr %i.do, i64 168
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !170 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter42
  br i1 %epil.iter.cmp.not, label %iseq_lvar_id.exit, label %.preheader.epil, !llvm.loop !280

iseq_lvar_id.exit:                                ; preds = %.preheader.epil, %iseq_lvar_id.exit.unr-lcssa
  %.lcssa = phi ptr [ %i.dm, %iseq_lvar_id.exit.unr-lcssa ], [ %i.dq, %.preheader.epil ]
  %i.dr = getelementptr i8, ptr %.lcssa, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !43 ; 2 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 144
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !188
  %i.dv = getelementptr i8, ptr %i.ds, i64 240
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !175
  %i.dx = sub i32 %i.dw, %3
  %i.dy = zext i32 %i.dx to i64
  %i.dz = getelementptr [8 x i8], ptr %i.du, i64 %i.dy
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !36
  tail call fastcc void @access_outer_variables(ptr noundef %0, i32 noundef %4, i64 noundef %i.ea, i1 noundef zeroext false)
  br label %bb.h

bb.h:                                             ; preds = %iseq_lvar_id.exit, %bb.g
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local nonnull ptr @rb_iseq_original_iseq(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %.val19 = load ptr, ptr %i.a, align 8, !tbaa !43 ; 2 uses
  %i.b = getelementptr i8, ptr %.val19, i64 232
  %.val19.val = load ptr, ptr %i.b, align 8, !tbaa !281 ; 2 uses
  %.not = icmp eq ptr %.val19.val, null
  br i1 %.not, label %rbimpl_size_mul_or_raise.exit, label %.loopexit

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.a
  %i.c = getelementptr i8, ptr %.val19, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !145
  %i.e = zext i32 %i.d to i64
  %i.f = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef range(i64 0, 4294967296) %i.e, i64 noundef 8) #39 ; 5 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !43   ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 232
  store ptr %i.f, ptr %i.h, align 8, !tbaa !281
  %i.i = getelementptr i8, ptr %i.g, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !145  ; 2 uses
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %rbimpl_size_mul_or_raise.exit
  %i.k = getelementptr i8, ptr %i.g, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !144
  %i.m = zext i32 %i.j to i64
  %i.n = shl nuw nsw i64 %i.m, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.f, ptr noundef nonnull readonly align 1 %i.l, i64 noundef range(i64 1, 0) %i.n, i1 noundef false) #37
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.01820 = phi i32 [ %i.x, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.o = zext i32 %.01820 to i64
  %i.p = getelementptr [8 x i8], ptr %i.f, i64 %i.o ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !36
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = tail call i32 @rb_vm_insn_addr2insn(ptr noundef %i.r) #37
  %i.t = sext i32 %i.s to i64                     ; 2 uses
  store i64 %i.t, ptr %i.p, align 8, !tbaa !36
  %i.u = getelementptr i8, ptr @rb_vm_insn_len_info, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !20
  %i.w = zext i8 %i.v to i32
  %i.x = add i32 %.01820, %i.w                    ; 2 uses
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.z = getelementptr i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !145
  %i.ab = icmp ult i32 %i.x, %i.aa
  br i1 %i.ab, label %.lr.ph, label %.loopexit, !llvm.loop !282

.loopexit:                                        ; preds = %.lr.ph, %rbimpl_size_mul_or_raise.exit, %bb.a
  %.0 = phi ptr [ %.val19.val, %bb.a ], [ %i.f, %rbimpl_size_mul_or_raise.exit ], [ %i.f, %.lr.ph ]
  ret ptr %.0
}

declare i32 @rb_vm_insn_addr2insn(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define hidden i32 @rb_iseq_cdhash_cmp(i64 noundef %0, i64 noundef %1) #1 {
bb.a:
  %i.a = icmp eq i64 %0, %1
  br i1 %i.a, label %common.ret56, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %1, 0
  %i.c = and i64 %1, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %common.ret56, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = inttoptr i64 %1 to ptr                   ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !74
  %i.h = trunc i64 %i.g to i32
  %i.i = and i32 %i.h, 31                         ; 3 uses
  %i.j = icmp eq i64 %0, 0
  %i.k = and i64 %0, 7
  %i.l = icmp ne i64 %i.k, 0
  %i.m = or i1 %i.j, %i.l
  br i1 %i.m, label %common.ret56, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !74
  %i.p = trunc i64 %i.o to i32
  %i.q = and i32 %i.p, 31
  %.not = icmp eq i32 %i.i, %i.q
  br i1 %.not, label %bb.e, label %common.ret56

bb.e:                                             ; preds = %bb.d
  switch i32 %i.i, label %bb.m [
    i32 20, label %common.ret56
    i32 5, label %bb.f
    i32 10, label %bb.g
    i32 4, label %bb.h
    i32 15, label %bb.i
    i32 14, label %bb.k
  ]

bb.f:                                             ; preds = %bb.e
  %i.r = tail call i32 @rb_str_hash_cmp(i64 noundef %1, i64 noundef %0) #37
  br label %common.ret56

bb.g:                                             ; preds = %bb.e
  %i.s = tail call i64 @rb_big_cmp(i64 noundef %1, i64 noundef %0) #37
  %i.t = lshr i64 %i.s, 1
  %i.u = trunc i64 %i.t to i32
  br label %common.ret56

bb.h:                                             ; preds = %bb.e
  %i.v = tail call i32 @rb_float_cmp(i64 noundef %1, i64 noundef %0) #37
  br label %common.ret56

bb.i:                                             ; preds = %bb.e
  %i.w = getelementptr i8, ptr %i.n, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !283
  %i.y = getelementptr i8, ptr %i.f, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !283
  %i.aa = tail call i32 @rb_iseq_cdhash_cmp(i64 noundef %i.x, i64 noundef %i.z)
  %.not50 = icmp eq i32 %i.aa, 0
  br i1 %.not50, label %bb.j, label %common.ret56

common.ret56:                                     ; preds = %bb.c, %bb.b, %bb.k, %bb.e, %bb.i, %bb.d, %bb.a, %bb.m, %bb.h, %bb.g, %bb.f, %bb.l, %bb.j
  %common.ret56.op = phi i32 [ %i.at, %bb.l ], [ %i.ah, %bb.j ], [ 1, %bb.i ], [ 1, %bb.b ], [ %i.av, %bb.m ], [ 0, %bb.a ], [ -1, %bb.c ], [ -1, %bb.d ], [ 1, %bb.k ], [ %i.r, %bb.f ], [ %i.u, %bb.g ], [ %i.v, %bb.h ], [ 1, %bb.e ]
  ret i32 %common.ret56.op

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr i8, ptr %i.n, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !285
  %i.ad = getelementptr i8, ptr %i.f, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !285
  %i.af = tail call i32 @rb_iseq_cdhash_cmp(i64 noundef %i.ac, i64 noundef %i.ae)
  %i.ag = icmp ne i32 %i.af, 0
  %i.ah = zext i1 %i.ag to i32
  br label %common.ret56

bb.k:                                             ; preds = %bb.e
  %i.ai = getelementptr i8, ptr %i.n, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !286
  %i.ak = getelementptr i8, ptr %i.f, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !286
  %i.am = tail call i32 @rb_iseq_cdhash_cmp(i64 noundef %i.aj, i64 noundef %i.al)
  %.not49 = icmp eq i32 %i.am, 0
  br i1 %.not49, label %bb.l, label %common.ret56

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr i8, ptr %i.n, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !288
  %i.ap = getelementptr i8, ptr %i.f, i64 24
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !288
  %i.ar = tail call i32 @rb_iseq_cdhash_cmp(i64 noundef %i.ao, i64 noundef %i.aq)
  %i.as = icmp ne i32 %i.ar, 0
  %i.at = zext i1 %i.as to i32
  br label %common.ret56

bb.m:                                             ; preds = %bb.e
  %2 = icmp eq i32 %i.i, 6
  tail call void @llvm.assume(i1 %2)
  %i.au = tail call i64 @rb_reg_equal(i64 noundef %0, i64 noundef %1) #37
  %.not48 = icmp eq i64 %i.au, 0
  %i.av = sext i1 %.not48 to i32
  br label %common.ret56
}

declare i32 @rb_str_hash_cmp(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_big_cmp(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i32 @rb_float_cmp(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_reg_equal(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_iseq_cdhash_hash(i64 noundef %0) #1 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rb_num2long_inline.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !74
  %i.g = trunc i64 %i.f to i32
  %i.h = and i32 %i.g, 31
  switch i32 %i.h, label %bb.j [
    i32 6, label %bb.g
    i32 20, label %rb_num2long_inline.exit
    i32 5, label %bb.c
    i32 10, label %bb.d
    i32 4, label %rb_float_value_inline.exit
    i32 15, label %bb.e
    i32 14, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i64 @rb_str_hash(i64 noundef %0) #37
  br label %rb_num2long_inline.exit

bb.d:                                             ; preds = %bb.b
  %i.j = tail call i64 @rb_big_hash(i64 noundef %0) #37
  %i.k = ashr i64 %i.j, 1
  br label %rb_num2long_inline.exit

rb_float_value_inline.exit:                       ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.e, i64 16
  %i.m = load double, ptr %i.l, align 8, !tbaa !289
  %i.n = tail call i64 @rb_dbl_long_hash(double noundef %i.m) #37
  br label %rb_num2long_inline.exit

bb.e:                                             ; preds = %bb.b
  %i.o = tail call i64 @rb_rational_hash(i64 noundef %0) #37
  br label %rb_num2long_inline.exit

bb.f:                                             ; preds = %bb.b
  %i.p = tail call i64 @rb_complex_hash(i64 noundef %0) #37
  br label %rb_num2long_inline.exit

bb.g:                                             ; preds = %bb.b
  %i.q = tail call i64 @rb_reg_hash(i64 noundef %0) #37 ; 3 uses
  %i.r = trunc i64 %i.q to i1
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = ashr i64 %i.q, 1
  br label %rb_num2long_inline.exit

bb.i:                                             ; preds = %bb.g
  %i.t = tail call i64 @rb_num2long(i64 noundef %i.q) #37
  br label %rb_num2long_inline.exit

bb.j:                                             ; preds = %bb.b
  unreachable

rb_num2long_inline.exit:                          ; preds = %bb.a, %bb.i, %bb.h, %bb.b, %bb.f, %bb.e, %rb_float_value_inline.exit, %bb.d, %bb.c
  %.0 = phi i64 [ %i.t, %bb.i ], [ %i.i, %bb.c ], [ %i.k, %bb.d ], [ %i.n, %rb_float_value_inline.exit ], [ %i.o, %bb.e ], [ %i.p, %bb.f ], [ %0, %bb.a ], [ %0, %bb.b ], [ %i.s, %bb.h ]
  ret i64 %.0
}

declare i64 @rb_str_hash(i64 noundef) local_unnamed_addr #4

declare i64 @rb_big_hash(i64 noundef) local_unnamed_addr #4

declare i64 @rb_dbl_long_hash(double noundef) local_unnamed_addr #4

declare i64 @rb_rational_hash(i64 noundef) local_unnamed_addr #4

declare i64 @rb_complex_hash(i64 noundef) local_unnamed_addr #4

declare i64 @rb_reg_hash(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_node_case_when_optimizable_literal(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !176
  %i.b = trunc i64 %i.a to i32
  %i.c = lshr i32 %i.b, 8
  %i.d = and i32 %i.c, 127
  switch i32 %i.d, label %bb.p [
    i32 59, label %bb.b
    i32 60, label %bb.c
    i32 110, label %bb.o
    i32 63, label %bb.n
    i32 95, label %bb.q
    i32 96, label %bb.j
    i32 97, label %bb.k
    i32 101, label %bb.l
    i32 109, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @rb_node_integer_literal_val(ptr noundef nonnull %0) #37
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.f = tail call i64 @rb_node_float_literal_val(ptr noundef nonnull %0) #37 ; 6 uses
  %i.g = and i64 %i.f, 3
  %i.h = icmp eq i64 %i.g, 2
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i64 %i.f, -9223372036854775806
  br i1 %.not.i.i, label %rb_float_value_inline.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.neg.i.i = ashr i64 %i.f, 63
  %i.i = add nsw i64 %.neg.i.i, 2
  %i.j = and i64 %i.f, -4
  %i.k = or i64 %i.i, %i.j                        ; 2 uses
  %i.l = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.k, i64 range(i64 1, 0) %i.k, i64 61)
  %i.m = bitcast i64 %i.l to double
  br label %rb_float_value_inline.exit

bb.f:                                             ; preds = %bb.c
  %i.n = inttoptr i64 %i.f to ptr
  %i.o = getelementptr i8, ptr %i.n, i64 16
  %i.p = load double, ptr %i.o, align 8, !tbaa !289
  br label %rb_float_value_inline.exit

rb_float_value_inline.exit:                       ; preds = %bb.d, %bb.e, %bb.f
  %.0.i = phi double [ %i.p, %bb.f ], [ %i.m, %bb.e ], [ 0.000000e+00, %bb.d ]
  %i.q = tail call { double, double } @llvm.modf.f64(double %.0.i) ; 2 uses
  %i.r = extractvalue { double, double } %i.q, 0
  %i.s = extractvalue { double, double } %i.q, 1  ; 4 uses
  %i.t = fcmp oeq double %i.r, 0.000000e+00
  br i1 %i.t, label %bb.g, label %bb.q

bb.g:                                             ; preds = %rb_float_value_inline.exit
  %i.u = fcmp olt double %i.s, f0x43D0000000000000
  %i.v = fcmp oge double %i.s, f0xC3D0000000000000
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = fptosi double %i.s to i64
  %i.x = shl i64 %i.w, 1
  %i.y = or disjoint i64 %i.x, 1
  br label %bb.q

bb.i:                                             ; preds = %bb.g
  %i.z = tail call i64 @rb_dbl2big(double noundef %i.s) #37
  br label %bb.q

bb.j:                                             ; preds = %bb.a
  br label %bb.q

bb.k:                                             ; preds = %bb.a
  br label %bb.q

bb.l:                                             ; preds = %bb.a
  %i.aa = tail call i64 @rb_node_sym_string_val(ptr noundef nonnull %0) #37
  br label %bb.q

bb.m:                                             ; preds = %bb.a
  %i.ab = tail call i64 @rb_node_line_lineno_val(ptr noundef nonnull %0) #37
  br label %bb.q

bb.n:                                             ; preds = %bb.a
  %i.ac = tail call i64 @rb_node_str_string_val(ptr noundef nonnull %0) #37
  br label %bb.q

bb.o:                                             ; preds = %bb.a
  %i.ad = tail call i64 @rb_node_file_path_val(ptr noundef nonnull %0) #37
  br label %bb.q

bb.p:                                             ; preds = %bb.a
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %bb.i, %bb.h, %rb_float_value_inline.exit, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.b
  %.1 = phi i64 [ 36, %bb.p ], [ %i.e, %bb.b ], [ %i.ad, %bb.o ], [ %i.f, %rb_float_value_inline.exit ], [ %i.y, %bb.h ], [ 20, %bb.j ], [ 0, %bb.k ], [ %i.aa, %bb.l ], [ %i.ab, %bb.m ], [ %i.ac, %bb.n ], [ %i.z, %bb.i ], [ 4, %bb.a ]
  ret i64 %.1
}

declare i64 @rb_node_integer_literal_val(ptr noundef) local_unnamed_addr #4

declare i64 @rb_node_float_literal_val(ptr noundef) local_unnamed_addr #4

end_hunk_0
