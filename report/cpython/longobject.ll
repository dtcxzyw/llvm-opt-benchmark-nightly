Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/longobject?download=true
inline.NumInlined: 732
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 59
begin_hunk_0_@_PyLong_UInt32_Converter:bb.a
  %i.c = icmp samesign ugt i64 %i.a, 4
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.23) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @_PyLong_UInt64_Converter(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @PyLong_AsNativeBytes(ptr noundef %0, ptr noundef %1, i64 noundef 8, i32 noundef 31) ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ugt i64 %i.a, 8
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.24) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyLong_Format(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = icmp eq i32 %1, 10
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = call fastcc i32 @long_to_decimal_string_internal(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = call fastcc i32 @long_format_binary(ptr noundef %0, i32 noundef %1, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  %i.e = icmp eq i32 %.0, -1
  %i.f = load ptr, ptr %i.a, align 8
  %.05 = select i1 %i.e, ptr null, ptr %i.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %.05
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @long_to_decimal_string_internal(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val288 = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.c = getelementptr i8, ptr %.val288, i64 168
  %.val289 = load i64, ptr %i.c, align 8, !tbaa !52
  %i.d = and i64 %.val289, 16777216
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.2, i32 noundef 2107) #16
  br label %pylong_int_to_decimal_string.exit

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.e, align 8, !tbaa !43  ; 4 uses
  %i.f = lshr i64 %.val, 3                        ; 5 uses
  %i.g = and i64 %.val, 3
  %i.h = icmp eq i64 %i.g, 2                      ; 6 uses
  %i.i = icmp ugt i64 %.val, 583
  br i1 %i.i, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.j = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31
  %i.l = getelementptr i8, ptr %i.k, i64 11888
  %i.m = load i32, ptr %i.l, align 8, !tbaa !139  ; 3 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = udiv i32 %i.m, 90
  %i.p = zext nneg i32 %i.o to i64
  %i.q = add nsw i64 %i.f, -11
  %i.r = udiv i64 %i.q, 10
  %.not256 = icmp samesign ult i64 %i.r, %i.p
  br i1 %.not256, label %bb.g, label %.critedge

.critedge:                                        ; preds = %bb.f
  %i.s = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  %i.t = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.s, ptr noundef nonnull @.str.37, i32 noundef %i.m) #16 ; 0 uses
  br label %pylong_int_to_decimal_string.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = icmp ugt i64 %.val, 8007
  br i1 %i.u, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.v = tail call ptr @PyImport_ImportModule(ptr noundef nonnull @.str.38) #16 ; 8 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %pylong_int_to_decimal_string.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = tail call ptr (ptr, ptr, ptr, ...) @PyObject_CallMethod(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef nonnull %0) #16 ; 16 uses
  %i.y = icmp eq ptr %i.x, null                   ; 2 uses
  br i1 %i.y, label %.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr i8, ptr %i.x, i64 8
  %.val.i = load ptr, ptr %i.z, align 8, !tbaa !39
  %i.aa = getelementptr i8, ptr %.val.i, i64 168
  %.val62.i = load i64, ptr %i.aa, align 8, !tbaa !52
  %i.ab = and i64 %.val62.i, 268435456
  %.not.i291 = icmp eq i64 %i.ab, 0
  br i1 %.not.i291, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ac = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.ac, ptr noundef nonnull @.str.41) #16
  br label %.thread.i

bb.l:                                             ; preds = %bb.j
  %.not54.i = icmp eq ptr %2, null
  br i1 %.not54.i, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr i8, ptr %i.x, i64 16
  %.val64.i = load i64, ptr %i.ad, align 8, !tbaa !142 ; 4 uses
  %i.ae = getelementptr i8, ptr %2, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !144
  %i.ag = icmp ugt i32 %i.af, 56
  br i1 %i.ag, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ah = getelementptr i8, ptr %2, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !145
  %i.aj = getelementptr i8, ptr %2, i64 32
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !146
  %i.al = sub i64 %i.ai, %i.ak
  %i.am = icmp sle i64 %.val64.i, %i.al
  %i.an = icmp eq i64 %.val64.i, 0
  %or.cond.i = or i1 %i.an, %i.am
  br i1 %or.cond.i, label %.critedge.i, label %bb.p

bb.o:                                             ; preds = %bb.m
  %.old1.i = icmp eq i64 %.val64.i, 0
  br i1 %.old1.i, label %.critedge.i, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ao = tail call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %2, i64 noundef %.val64.i, i32 noundef 57) #16
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %.thread.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.p, %bb.o, %bb.n
  %i.aq = tail call i32 @_PyUnicodeWriter_WriteStr(ptr noundef nonnull %2, ptr noundef nonnull %i.x) #16
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %.thread.i, label %bb.aa

bb.q:                                             ; preds = %bb.l
  %.not55.i = icmp eq ptr %3, null
  br i1 %.not55.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = getelementptr i8, ptr %i.x, i64 16
  %.val63.i = load i64, ptr %i.as, align 8, !tbaa !142 ; 32 uses
  %i.at = getelementptr i8, ptr %i.x, i64 32
  %.val.i.i = load i32, ptr %i.at, align 8        ; 3 uses
  %i.au = and i32 %.val.i.i, 32
  %.not.i65.i = icmp eq i32 %i.au, 0
  br i1 %.not.i65.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = and i32 %.val.i.i, 64
  %.not.i.i.i = icmp eq i32 %i.av, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.x, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.t:                                             ; preds = %bb.r
  %i.aw = getelementptr i8, ptr %i.x, i64 56
  %.val4.i.i = load ptr, ptr %i.aw, align 8, !tbaa !40
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.t, %bb.s
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.s ], [ %.val4.i.i, %bb.t ] ; 37 uses
  %i.ax = lshr i32 %.val.i.i, 2
  %i.ay = and i32 %i.ax, 7
  %i.az = load ptr, ptr %4, align 8, !tbaa !147
  %i.ba = tail call ptr @PyBytesWriter_GrowAndUpdatePointer(ptr noundef nonnull %3, i64 noundef %.val63.i, ptr noundef %i.az) #16 ; 23 uses
  store ptr %i.ba, ptr %4, align 8, !tbaa !147
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %.thread.i, label %.preheader.i

.preheader.i:                                     ; preds = %_PyUnicode_DATA.exit.i
  %i.bc = icmp sgt i64 %.val63.i, 0
  br i1 %i.bc, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  switch i32 %i.ay, label %PyUnicode_READ.exit.i.preheader [
    i32 1, label %iter.check702
    i32 2, label %iter.check
  ]

iter.check:                                       ; preds = %.lr.ph.i
  %min.iters.check659 = icmp ult i64 %.val63.i, 4
  br i1 %min.iters.check659, label %PyUnicode_READ.exit.us77.i.preheader, label %vector.memcheck660

vector.memcheck660:                               ; preds = %iter.check
  %i.bd = getelementptr i8, ptr %i.ba, i64 %.val63.i
  %i.be = shl nuw i64 %.val63.i, 1
  %i.bf = getelementptr i8, ptr %.0.i.i, i64 %i.be
  %bound0661 = icmp ult ptr %i.ba, %i.bf
  %bound1662 = icmp ult ptr %.0.i.i, %i.bd
  %found.conflict663 = and i1 %bound0661, %bound1662
  br i1 %found.conflict663, label %PyUnicode_READ.exit.us77.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck660
  %min.iters.check664 = icmp ult i64 %.val63.i, 16
  br i1 %min.iters.check664, label %vec.epilog.ph, label %vector.ph665

vector.ph665:                                     ; preds = %vector.main.loop.iter.check
  %i.bg = and i64 %.val63.i, 12
  %n.vec666 = and i64 %.val63.i, 9223372036854775792 ; 5 uses
  %i.bh = getelementptr i8, ptr %i.ba, i64 %n.vec666 ; 2 uses
  br label %vector.body667

vector.body667:                                   ; preds = %vector.ph665, %vector.body667
  %index668 = phi i64 [ 0, %vector.ph665 ], [ %index.next672, %vector.body667 ] ; 3 uses
  %next.gep669 = getelementptr i8, ptr %i.ba, i64 %index668 ; 2 uses
  %i.bi = getelementptr [2 x i8], ptr %.0.i.i, i64 %index668 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 16
  %wide.load670 = load <8 x i16>, ptr %i.bi, align 2, !tbaa !148, !alias.scope !233
  %wide.load671 = load <8 x i16>, ptr %i.bj, align 2, !tbaa !148, !alias.scope !233
  %i.bk = trunc <8 x i16> %wide.load670 to <8 x i8>
  %i.bl = trunc <8 x i16> %wide.load671 to <8 x i8>
  %i.bm = getelementptr i8, ptr %next.gep669, i64 8
  store <8 x i8> %i.bk, ptr %next.gep669, align 1, !tbaa !40, !alias.scope !234, !noalias !233
  store <8 x i8> %i.bl, ptr %i.bm, align 1, !tbaa !40, !alias.scope !234, !noalias !233
  %index.next672 = add nuw i64 %index668, 16      ; 2 uses
  %i.bn = icmp eq i64 %index.next672, %n.vec666
  br i1 %i.bn, label %middle.block673, label %vector.body667, !llvm.loop !194

middle.block673:                                  ; preds = %vector.body667
  %cmp.n674 = icmp eq i64 %.val63.i, %n.vec666
  br i1 %cmp.n674, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block673
  %min.epilog.iters.check = icmp eq i64 %i.bg, 0
  br i1 %min.epilog.iters.check, label %PyUnicode_READ.exit.us77.i.preheader, label %vec.epilog.ph, !prof !235

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec666, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec676 = and i64 %.val63.i, 9223372036854775804 ; 4 uses
  %i.bo = getelementptr i8, ptr %i.ba, i64 %n.vec676 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index677 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next680, %vec.epilog.vector.body ] ; 3 uses
  %next.gep678 = getelementptr i8, ptr %i.ba, i64 %index677
  %i.bp = getelementptr [2 x i8], ptr %.0.i.i, i64 %index677
  %wide.load679 = load <4 x i16>, ptr %i.bp, align 2, !tbaa !148, !alias.scope !233
  %i.bq = trunc <4 x i16> %wide.load679 to <4 x i8>
  store <4 x i8> %i.bq, ptr %next.gep678, align 1, !tbaa !40, !alias.scope !234, !noalias !233
  %index.next680 = add nuw i64 %index677, 4       ; 2 uses
  %i.br = icmp eq i64 %index.next680, %n.vec676
  br i1 %i.br, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !195

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n681 = icmp eq i64 %.val63.i, %n.vec676
  br i1 %cmp.n681, label %._crit_edge.i, label %PyUnicode_READ.exit.us77.i.preheader

PyUnicode_READ.exit.us77.i.preheader:             ; preds = %iter.check, %vector.memcheck660, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.04673.us75.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck660 ], [ %n.vec666, %vec.epilog.iter.check ], [ %n.vec676, %vec.epilog.middle.block ] ; 4 uses
  %.04772.us76.i.ph = phi ptr [ %i.ba, %iter.check ], [ %i.ba, %vector.memcheck660 ], [ %i.bh, %vec.epilog.iter.check ], [ %i.bo, %vec.epilog.middle.block ] ; 2 uses
  %i.bs = sub nsw i64 %.val63.i, %.04673.us75.i.ph
  %xtraiter = and i64 %i.bs, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %PyUnicode_READ.exit.us77.i.prol.loopexit, label %PyUnicode_READ.exit.us77.i.prol

PyUnicode_READ.exit.us77.i.prol:                  ; preds = %PyUnicode_READ.exit.us77.i.preheader, %PyUnicode_READ.exit.us77.i.prol
  %.04673.us75.i.prol = phi i64 [ %i.bx, %PyUnicode_READ.exit.us77.i.prol ], [ %.04673.us75.i.ph, %PyUnicode_READ.exit.us77.i.preheader ] ; 2 uses
  %.04772.us76.i.prol = phi ptr [ %i.bw, %PyUnicode_READ.exit.us77.i.prol ], [ %.04772.us76.i.ph, %PyUnicode_READ.exit.us77.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %PyUnicode_READ.exit.us77.i.prol ], [ 0, %PyUnicode_READ.exit.us77.i.preheader ]
  %i.bt = getelementptr [2 x i8], ptr %.0.i.i, i64 %.04673.us75.i.prol
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !148
  %i.bv = trunc i16 %i.bu to i8
  %i.bw = getelementptr i8, ptr %.04772.us76.i.prol, i64 1 ; 3 uses
  store i8 %i.bv, ptr %.04772.us76.i.prol, align 1, !tbaa !40
  %i.bx = add nuw nsw i64 %.04673.us75.i.prol, 1  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %PyUnicode_READ.exit.us77.i.prol.loopexit, label %PyUnicode_READ.exit.us77.i.prol, !llvm.loop !196

PyUnicode_READ.exit.us77.i.prol.loopexit:         ; preds = %PyUnicode_READ.exit.us77.i.prol, %PyUnicode_READ.exit.us77.i.preheader
  %.lcssa777.unr = phi ptr [ poison, %PyUnicode_READ.exit.us77.i.preheader ], [ %i.bw, %PyUnicode_READ.exit.us77.i.prol ]
  %.04673.us75.i.unr = phi i64 [ %.04673.us75.i.ph, %PyUnicode_READ.exit.us77.i.preheader ], [ %i.bx, %PyUnicode_READ.exit.us77.i.prol ]
  %.04772.us76.i.unr = phi ptr [ %.04772.us76.i.ph, %PyUnicode_READ.exit.us77.i.preheader ], [ %i.bw, %PyUnicode_READ.exit.us77.i.prol ]
  %i.by = sub nsw i64 %.04673.us75.i.ph, %.val63.i
  %i.bz = icmp ugt i64 %i.by, -8
  br i1 %i.bz, label %._crit_edge.i, label %PyUnicode_READ.exit.us77.i

iter.check702:                                    ; preds = %.lr.ph.i
  %min.iters.check687 = icmp ult i64 %.val63.i, 4
  %5 = ptrtoaddr ptr %i.ba to i64
  %6 = ptrtoaddr ptr %.0.i.i to i64
  %i.ca = sub i64 %6, %5
  %diff.check = icmp ugt i64 %i.ca, -32
  %or.cond745 = select i1 %min.iters.check687, i1 true, i1 %diff.check
  br i1 %or.cond745, label %PyUnicode_READ.exit.us.i.preheader, label %vector.main.loop.iter.check688

vector.main.loop.iter.check688:                   ; preds = %iter.check702
  %min.iters.check689 = icmp ult i64 %.val63.i, 32
  br i1 %min.iters.check689, label %vec.epilog.ph706, label %vector.ph690

vector.ph690:                                     ; preds = %vector.main.loop.iter.check688
  %i.cb = and i64 %.val63.i, 28
  %n.vec691 = and i64 %.val63.i, 9223372036854775776 ; 5 uses
  %i.cc = getelementptr i8, ptr %i.ba, i64 %n.vec691 ; 2 uses
  br label %vector.body692

vector.body692:                                   ; preds = %vector.ph690, %vector.body692
  %index693 = phi i64 [ 0, %vector.ph690 ], [ %index.next697, %vector.body692 ] ; 3 uses
  %next.gep694 = getelementptr i8, ptr %i.ba, i64 %index693 ; 2 uses
  %i.cd = getelementptr i8, ptr %.0.i.i, i64 %index693 ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 16
  %wide.load695 = load <16 x i8>, ptr %i.cd, align 1, !tbaa !40
  %wide.load696 = load <16 x i8>, ptr %i.ce, align 1, !tbaa !40
  %i.cf = getelementptr i8, ptr %next.gep694, i64 16
  store <16 x i8> %wide.load695, ptr %next.gep694, align 1, !tbaa !40
  store <16 x i8> %wide.load696, ptr %i.cf, align 1, !tbaa !40
  %index.next697 = add nuw i64 %index693, 32      ; 2 uses
  %i.cg = icmp eq i64 %index.next697, %n.vec691
  br i1 %i.cg, label %middle.block698, label %vector.body692, !llvm.loop !197

middle.block698:                                  ; preds = %vector.body692
  %cmp.n699 = icmp eq i64 %.val63.i, %n.vec691
  br i1 %cmp.n699, label %._crit_edge.i, label %vec.epilog.iter.check704

vec.epilog.iter.check704:                         ; preds = %middle.block698
  %min.epilog.iters.check705 = icmp eq i64 %i.cb, 0
  br i1 %min.epilog.iters.check705, label %PyUnicode_READ.exit.us.i.preheader, label %vec.epilog.ph706, !prof !236

vec.epilog.ph706:                                 ; preds = %vector.main.loop.iter.check688, %vec.epilog.iter.check704
  %vec.epilog.resume.val700 = phi i64 [ %n.vec691, %vec.epilog.iter.check704 ], [ 0, %vector.main.loop.iter.check688 ]
  %n.vec707 = and i64 %.val63.i, 9223372036854775804 ; 4 uses
  %i.ch = getelementptr i8, ptr %i.ba, i64 %n.vec707 ; 2 uses
  br label %vec.epilog.vector.body708

vec.epilog.vector.body708:                        ; preds = %vec.epilog.vector.body708, %vec.epilog.ph706
  %index709 = phi i64 [ %vec.epilog.resume.val700, %vec.epilog.ph706 ], [ %index.next712, %vec.epilog.vector.body708 ] ; 3 uses
  %next.gep710 = getelementptr i8, ptr %i.ba, i64 %index709
  %i.ci = getelementptr i8, ptr %.0.i.i, i64 %index709
  %wide.load711 = load <4 x i8>, ptr %i.ci, align 1, !tbaa !40
  store <4 x i8> %wide.load711, ptr %next.gep710, align 1, !tbaa !40
  %index.next712 = add nuw i64 %index709, 4       ; 2 uses
  %i.cj = icmp eq i64 %index.next712, %n.vec707
  br i1 %i.cj, label %vec.epilog.middle.block713, label %vec.epilog.vector.body708, !llvm.loop !198

vec.epilog.middle.block713:                       ; preds = %vec.epilog.vector.body708
  %cmp.n714 = icmp eq i64 %.val63.i, %n.vec707
  br i1 %cmp.n714, label %._crit_edge.i, label %PyUnicode_READ.exit.us.i.preheader

PyUnicode_READ.exit.us.i.preheader:               ; preds = %iter.check702, %vec.epilog.iter.check704, %vec.epilog.middle.block713
  %.04673.us.i.ph = phi i64 [ 0, %iter.check702 ], [ %n.vec691, %vec.epilog.iter.check704 ], [ %n.vec707, %vec.epilog.middle.block713 ] ; 4 uses
  %.04772.us.i.ph = phi ptr [ %i.ba, %iter.check702 ], [ %i.cc, %vec.epilog.iter.check704 ], [ %i.ch, %vec.epilog.middle.block713 ] ; 2 uses
  %i.ck = sub nsw i64 %.val63.i, %.04673.us.i.ph
  %xtraiter790 = and i64 %i.ck, 7                 ; 2 uses
  %lcmp.mod791.not = icmp eq i64 %xtraiter790, 0
  br i1 %lcmp.mod791.not, label %PyUnicode_READ.exit.us.i.prol.loopexit, label %PyUnicode_READ.exit.us.i.prol

PyUnicode_READ.exit.us.i.prol:                    ; preds = %PyUnicode_READ.exit.us.i.preheader, %PyUnicode_READ.exit.us.i.prol
  %.04673.us.i.prol = phi i64 [ %i.co, %PyUnicode_READ.exit.us.i.prol ], [ %.04673.us.i.ph, %PyUnicode_READ.exit.us.i.preheader ] ; 2 uses
  %.04772.us.i.prol = phi ptr [ %i.cn, %PyUnicode_READ.exit.us.i.prol ], [ %.04772.us.i.ph, %PyUnicode_READ.exit.us.i.preheader ] ; 2 uses
  %prol.iter792 = phi i64 [ %prol.iter792.next, %PyUnicode_READ.exit.us.i.prol ], [ 0, %PyUnicode_READ.exit.us.i.preheader ]
  %i.cl = getelementptr i8, ptr %.0.i.i, i64 %.04673.us.i.prol
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !40
  %i.cn = getelementptr i8, ptr %.04772.us.i.prol, i64 1 ; 3 uses
  store i8 %i.cm, ptr %.04772.us.i.prol, align 1, !tbaa !40
  %i.co = add nuw nsw i64 %.04673.us.i.prol, 1    ; 2 uses
  %prol.iter792.next = add i64 %prol.iter792, 1   ; 2 uses
  %prol.iter792.cmp.not = icmp eq i64 %prol.iter792.next, %xtraiter790
  br i1 %prol.iter792.cmp.not, label %PyUnicode_READ.exit.us.i.prol.loopexit, label %PyUnicode_READ.exit.us.i.prol, !llvm.loop !199

PyUnicode_READ.exit.us.i.prol.loopexit:           ; preds = %PyUnicode_READ.exit.us.i.prol, %PyUnicode_READ.exit.us.i.preheader
  %.lcssa775.unr = phi ptr [ poison, %PyUnicode_READ.exit.us.i.preheader ], [ %i.cn, %PyUnicode_READ.exit.us.i.prol ]
  %.04673.us.i.unr = phi i64 [ %.04673.us.i.ph, %PyUnicode_READ.exit.us.i.preheader ], [ %i.co, %PyUnicode_READ.exit.us.i.prol ]
  %.04772.us.i.unr = phi ptr [ %.04772.us.i.ph, %PyUnicode_READ.exit.us.i.preheader ], [ %i.cn, %PyUnicode_READ.exit.us.i.prol ]
  %i.cp = sub nsw i64 %.04673.us.i.ph, %.val63.i
  %i.cq = icmp ugt i64 %i.cp, -8
  br i1 %i.cq, label %._crit_edge.i, label %PyUnicode_READ.exit.us.i

PyUnicode_READ.exit.i.preheader:                  ; preds = %.lr.ph.i
  %min.iters.check724 = icmp ult i64 %.val63.i, 12
  br i1 %min.iters.check724, label %PyUnicode_READ.exit.i.preheader773, label %vector.memcheck725

vector.memcheck725:                               ; preds = %PyUnicode_READ.exit.i.preheader
  %i.cr = getelementptr i8, ptr %i.ba, i64 %.val63.i
  %i.cs = shl i64 %.val63.i, 2
  %i.ct = getelementptr i8, ptr %.0.i.i, i64 %i.cs
  %bound0726 = icmp ult ptr %i.ba, %i.ct
  %bound1727 = icmp ult ptr %.0.i.i, %i.cr
  %found.conflict728 = and i1 %bound0726, %bound1727
  br i1 %found.conflict728, label %PyUnicode_READ.exit.i.preheader773, label %vector.ph729

vector.ph729:                                     ; preds = %vector.memcheck725
  %n.vec730 = and i64 %.val63.i, 9223372036854775800 ; 4 uses
  %i.cu = getelementptr i8, ptr %i.ba, i64 %n.vec730 ; 2 uses
  br label %vector.body731

vector.body731:                                   ; preds = %vector.body731, %vector.ph729
  %index732 = phi i64 [ 0, %vector.ph729 ], [ %index.next736, %vector.body731 ] ; 3 uses
  %next.gep733 = getelementptr i8, ptr %i.ba, i64 %index732 ; 2 uses
  %i.cv = getelementptr [4 x i8], ptr %.0.i.i, i64 %index732 ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 16
  %wide.load734 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !26, !alias.scope !237
  %wide.load735 = load <4 x i32>, ptr %i.cw, align 4, !tbaa !26, !alias.scope !237
  %i.cx = trunc <4 x i32> %wide.load734 to <4 x i8>
  %i.cy = trunc <4 x i32> %wide.load735 to <4 x i8>
  %i.cz = getelementptr i8, ptr %next.gep733, i64 4
  store <4 x i8> %i.cx, ptr %next.gep733, align 1, !tbaa !40, !alias.scope !238, !noalias !237
  store <4 x i8> %i.cy, ptr %i.cz, align 1, !tbaa !40, !alias.scope !238, !noalias !237
  %index.next736 = add nuw i64 %index732, 8       ; 2 uses
  %i.da = icmp eq i64 %index.next736, %n.vec730
  br i1 %i.da, label %middle.block737, label %vector.body731, !llvm.loop !203

middle.block737:                                  ; preds = %vector.body731
  %cmp.n738 = icmp eq i64 %.val63.i, %n.vec730
  br i1 %cmp.n738, label %._crit_edge.i, label %PyUnicode_READ.exit.i.preheader773

PyUnicode_READ.exit.i.preheader773:               ; preds = %vector.memcheck725, %PyUnicode_READ.exit.i.preheader, %middle.block737
  %.04673.i.ph = phi i64 [ 0, %vector.memcheck725 ], [ 0, %PyUnicode_READ.exit.i.preheader ], [ %n.vec730, %middle.block737 ] ; 3 uses
  %.04772.i.ph = phi ptr [ %i.ba, %vector.memcheck725 ], [ %i.ba, %PyUnicode_READ.exit.i.preheader ], [ %i.cu, %middle.block737 ] ; 2 uses
  %xtraiter793 = and i64 %.val63.i, 7             ; 2 uses
  %lcmp.mod794.not = icmp eq i64 %xtraiter793, 0
  br i1 %lcmp.mod794.not, label %PyUnicode_READ.exit.i.prol.loopexit, label %PyUnicode_READ.exit.i.prol

PyUnicode_READ.exit.i.prol:                       ; preds = %PyUnicode_READ.exit.i.preheader773, %PyUnicode_READ.exit.i.prol
  %.04673.i.prol = phi i64 [ %i.df, %PyUnicode_READ.exit.i.prol ], [ %.04673.i.ph, %PyUnicode_READ.exit.i.preheader773 ] ; 2 uses
  %.04772.i.prol = phi ptr [ %i.de, %PyUnicode_READ.exit.i.prol ], [ %.04772.i.ph, %PyUnicode_READ.exit.i.preheader773 ] ; 2 uses
  %prol.iter795 = phi i64 [ %prol.iter795.next, %PyUnicode_READ.exit.i.prol ], [ 0, %PyUnicode_READ.exit.i.preheader773 ]
  %i.db = getelementptr [4 x i8], ptr %.0.i.i, i64 %.04673.i.prol
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !26
  %i.dd = trunc i32 %i.dc to i8
  %i.de = getelementptr i8, ptr %.04772.i.prol, i64 1 ; 3 uses
  store i8 %i.dd, ptr %.04772.i.prol, align 1, !tbaa !40
  %i.df = add nuw nsw i64 %.04673.i.prol, 1       ; 2 uses
  %prol.iter795.next = add i64 %prol.iter795, 1   ; 2 uses
  %prol.iter795.cmp.not = icmp eq i64 %prol.iter795.next, %xtraiter793
  br i1 %prol.iter795.cmp.not, label %PyUnicode_READ.exit.i.prol.loopexit, label %PyUnicode_READ.exit.i.prol, !llvm.loop !204

PyUnicode_READ.exit.i.prol.loopexit:              ; preds = %PyUnicode_READ.exit.i.prol, %PyUnicode_READ.exit.i.preheader773
  %.lcssa.unr = phi ptr [ poison, %PyUnicode_READ.exit.i.preheader773 ], [ %i.de, %PyUnicode_READ.exit.i.prol ]
  %.04673.i.unr = phi i64 [ %.04673.i.ph, %PyUnicode_READ.exit.i.preheader773 ], [ %i.df, %PyUnicode_READ.exit.i.prol ]
  %.04772.i.unr = phi ptr [ %.04772.i.ph, %PyUnicode_READ.exit.i.preheader773 ], [ %i.de, %PyUnicode_READ.exit.i.prol ]
  %i.dg = sub nsw i64 %.04673.i.ph, %.val63.i
  %i.dh = icmp ugt i64 %i.dg, -8
  br i1 %i.dh, label %._crit_edge.i, label %PyUnicode_READ.exit.i

PyUnicode_READ.exit.us.i:                         ; preds = %PyUnicode_READ.exit.us.i.prol.loopexit, %PyUnicode_READ.exit.us.i
  %.04673.us.i = phi i64 [ %i.en, %PyUnicode_READ.exit.us.i ], [ %.04673.us.i.unr, %PyUnicode_READ.exit.us.i.prol.loopexit ] ; 9 uses
  %.04772.us.i = phi ptr [ %i.em, %PyUnicode_READ.exit.us.i ], [ %.04772.us.i.unr, %PyUnicode_READ.exit.us.i.prol.loopexit ] ; 9 uses
  %i.di = getelementptr i8, ptr %.0.i.i, i64 %.04673.us.i
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !40
  %i.dk = getelementptr i8, ptr %.04772.us.i, i64 1
  store i8 %i.dj, ptr %.04772.us.i, align 1, !tbaa !40
  %i.dl = getelementptr i8, ptr %.0.i.i, i64 %.04673.us.i
  %i.dm = getelementptr i8, ptr %i.dl, i64 1
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !40
  %i.do = getelementptr i8, ptr %.04772.us.i, i64 2
  store i8 %i.dn, ptr %i.dk, align 1, !tbaa !40
  %i.dp = getelementptr i8, ptr %.0.i.i, i64 %.04673.us.i
  %i.dq = getelementptr i8, ptr %i.dp, i64 2
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !40
  %i.ds = getelementptr i8, ptr %.04772.us.i, i64 3
  store i8 %i.dr, ptr %i.do, align 1, !tbaa !40
  %i.dt = getelementptr i8, ptr %.0.i.i, i64 %.04673.us.i
  %i.du = getelementptr i8, ptr %i.dt, i64 3
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !40
  %i.dw = getelementptr i8, ptr %.04772.us.i, i64 4
  store i8 %i.dv, ptr %i.ds, align 1, !tbaa !40
  %i.dx = getelementptr i8, ptr %.0.i.i, i64 %.04673.us.i
  %i.dy = getelementptr i8, ptr %i.dx, i64 4
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !40
  %i.ea = getelementptr i8, ptr %.04772.us.i, i64 5
  store i8 %i.dz, ptr %i.dw, align 1, !tbaa !40
  %i.eb = getelementptr i8, ptr %.0.i.i, i64 %.04673.us.i
  %i.ec = getelementptr i8, ptr %i.eb, i64 5
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !40
  %i.ee = getelementptr i8, ptr %.04772.us.i, i64 6
  store i8 %i.ed, ptr %i.ea, align 1, !tbaa !40
  %i.ef = getelementptr i8, ptr %.0.i.i, i64 %.04673.us.i
  %i.eg = getelementptr i8, ptr %i.ef, i64 6
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !40
  %i.ei = getelementptr i8, ptr %.04772.us.i, i64 7
  store i8 %i.eh, ptr %i.ee, align 1, !tbaa !40
  %i.ej = getelementptr i8, ptr %.0.i.i, i64 %.04673.us.i
  %i.ek = getelementptr i8, ptr %i.ej, i64 7
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !40
  %i.em = getelementptr i8, ptr %.04772.us.i, i64 8 ; 2 uses
  store i8 %i.el, ptr %i.ei, align 1, !tbaa !40
  %i.en = add nuw nsw i64 %.04673.us.i, 8         ; 2 uses
  %exitcond85.not.i.7 = icmp eq i64 %i.en, %.val63.i
  br i1 %exitcond85.not.i.7, label %._crit_edge.i, label %PyUnicode_READ.exit.us.i, !llvm.loop !205

PyUnicode_READ.exit.us77.i:                       ; preds = %PyUnicode_READ.exit.us77.i.prol.loopexit, %PyUnicode_READ.exit.us77.i
  %.04673.us75.i = phi i64 [ %i.gb, %PyUnicode_READ.exit.us77.i ], [ %.04673.us75.i.unr, %PyUnicode_READ.exit.us77.i.prol.loopexit ] ; 9 uses
end_hunk_0
begin_hunk_1_@long_invmod:bb.a
  call void @_Py_Dealloc(ptr noundef nonnull %.037.lcssa) #16
  br label %Py_DECREF.exit54

Py_DECREF.exit54:                                 ; preds = %bb.x, %bb.y, %bb.z
  %i.cc = load i32, ptr %.039.lcssa, align 8, !tbaa !40 ; 2 uses
  %.not.i51 = icmp sgt i32 %i.cc, -1
  br i1 %.not.i51, label %bb.aa, label %Py_DECREF.exit52

bb.aa:                                            ; preds = %Py_DECREF.exit54
  %i.cd = add nsw i32 %i.cc, -1                   ; 2 uses
  store i32 %i.cd, ptr %.039.lcssa, align 8, !tbaa !40
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.ab, label %Py_DECREF.exit52

bb.ab:                                            ; preds = %bb.aa
  call void @_Py_Dealloc(ptr noundef nonnull %.039.lcssa) #16
  br label %Py_DECREF.exit52

Py_DECREF.exit52:                                 ; preds = %Py_DECREF.exit54, %bb.aa, %bb.ab
  %i.cf = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  call void @PyErr_SetString(ptr noundef %i.cf, ptr noundef nonnull @.str.53) #16
  br label %Py_DECREF.exit50

bb.ac:                                            ; preds = %long_compare.exit
  br i1 %.not.i49, label %bb.ad, label %Py_DECREF.exit50

bb.ad:                                            ; preds = %bb.ac
  %i.cg = add nsw i32 %i.bz, -1                   ; 2 uses
  store i32 %i.cg, ptr %.037.lcssa, align 8, !tbaa !40
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.ae, label %Py_DECREF.exit50

bb.ae:                                            ; preds = %bb.ad
  call void @_Py_Dealloc(ptr noundef nonnull %.037.lcssa) #16
  br label %Py_DECREF.exit50

bb.af:                                            ; preds = %Py_DECREF.exit62, %.lr.ph, %Py_DECREF.exit64
  %.138.ph = phi ptr [ %.02398, %Py_DECREF.exit64 ], [ %.03796, %.lr.ph ], [ %.02398, %Py_DECREF.exit62 ] ; 3 uses
  %.1.ph = phi ptr [ %i.w, %Py_DECREF.exit64 ], [ %.02398, %.lr.ph ], [ %i.w, %Py_DECREF.exit62 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.ci = load i32, ptr %.138.ph, align 8, !tbaa !40 ; 2 uses
  %.not.i47 = icmp sgt i32 %i.ci, -1
  br i1 %.not.i47, label %bb.ag, label %Py_DECREF.exit48

bb.ag:                                            ; preds = %bb.af
  %i.cj = add nsw i32 %i.ci, -1                   ; 2 uses
  store i32 %i.cj, ptr %.138.ph, align 8, !tbaa !40
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.ah, label %Py_DECREF.exit48

bb.ah:                                            ; preds = %bb.ag
  call void @_Py_Dealloc(ptr noundef nonnull %.138.ph) #16
  br label %Py_DECREF.exit48

Py_DECREF.exit48:                                 ; preds = %bb.af, %bb.ag, %bb.ah
  %i.cl = load i32, ptr %.03995, align 8, !tbaa !40 ; 2 uses
  %.not.i45 = icmp sgt i32 %i.cl, -1
  br i1 %.not.i45, label %bb.ai, label %Py_DECREF.exit46

bb.ai:                                            ; preds = %Py_DECREF.exit48
  %i.cm = add nsw i32 %i.cl, -1                   ; 2 uses
  store i32 %i.cm, ptr %.03995, align 8, !tbaa !40
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.aj, label %Py_DECREF.exit46

bb.aj:                                            ; preds = %bb.ai
  call void @_Py_Dealloc(ptr noundef nonnull %.03995) #16
  br label %Py_DECREF.exit46

Py_DECREF.exit46:                                 ; preds = %Py_DECREF.exit48, %bb.ai, %bb.aj
  %i.co = load i32, ptr %.02497, align 8, !tbaa !40 ; 2 uses
  %.not.i43 = icmp sgt i32 %i.co, -1
  br i1 %.not.i43, label %bb.ak, label %Py_DECREF.exit44

bb.ak:                                            ; preds = %Py_DECREF.exit46
  %i.cp = add nsw i32 %i.co, -1                   ; 2 uses
  store i32 %i.cp, ptr %.02497, align 8, !tbaa !40
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.al, label %Py_DECREF.exit44

bb.al:                                            ; preds = %bb.ak
  call void @_Py_Dealloc(ptr noundef nonnull %.02497) #16
  br label %Py_DECREF.exit44

Py_DECREF.exit44:                                 ; preds = %Py_DECREF.exit46, %bb.ak, %bb.al
  %i.cr = load i32, ptr %.1.ph, align 8, !tbaa !40 ; 2 uses
  %.not.i = icmp sgt i32 %i.cr, -1
  br i1 %.not.i, label %bb.am, label %Py_DECREF.exit50

bb.am:                                            ; preds = %Py_DECREF.exit44
  %i.cs = add nsw i32 %i.cr, -1                   ; 2 uses
  store i32 %i.cs, ptr %.1.ph, align 8, !tbaa !40
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.an, label %Py_DECREF.exit50

bb.an:                                            ; preds = %bb.am
  call void @_Py_Dealloc(ptr noundef nonnull %.1.ph) #16
  br label %Py_DECREF.exit50

Py_DECREF.exit50:                                 ; preds = %bb.an, %bb.am, %Py_DECREF.exit44, %bb.ae, %bb.ad, %bb.ac, %Py_DECREF.exit52
  %.022 = phi ptr [ null, %Py_DECREF.exit52 ], [ %.039.lcssa, %bb.ae ], [ %.039.lcssa, %bb.ac ], [ %.039.lcssa, %bb.ad ], [ null, %Py_DECREF.exit44 ], [ null, %bb.am ], [ null, %bb.an ]
  ret ptr %.022
}

declare i32 @PyErr_ExceptionMatches(ptr noundef) local_unnamed_addr #3

declare void @PyErr_Clear() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @long_bitwise(ptr nofree noundef readonly captures(none) %0, i8 noundef signext range(i8 38, 125) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val122 = load i64, ptr %i.a, align 8, !tbaa !43 ; 2 uses
  %i.b = lshr i64 %.val122, 3                     ; 3 uses
  %i.c = getelementptr i8, ptr %2, i64 16
  %.val = load i64, ptr %i.c, align 8, !tbaa !43  ; 2 uses
  %i.d = lshr i64 %.val, 3                        ; 3 uses
  %i.e = icmp samesign ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0113.val = phi i64 [ %.val, %bb.b ], [ %.val122, %bb.a ]
  %.0113 = phi ptr [ %2, %bb.b ], [ %0, %bb.a ]   ; 2 uses
  %.0110 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ]   ; 3 uses
  %.0108 = phi i64 [ %i.d, %bb.b ], [ %i.b, %bb.a ] ; 9 uses
  %.0107 = phi i64 [ %i.b, %bb.b ], [ %i.d, %bb.a ] ; 39 uses
  %i.f = and i64 %.0113.val, 3
  %i.g = icmp eq i64 %i.f, 2                      ; 2 uses
  %i.h = zext i1 %i.g to i32                      ; 3 uses
  br i1 %i.g, label %bb.d, label %v_complement.exit

bb.d:                                             ; preds = %bb.c
  %i.i = tail call fastcc ptr @long_alloc(i64 noundef %.0108) ; 8 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %Py_XDECREF.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %i.i, i64 24       ; 3 uses
  %i.l = getelementptr i8, ptr %.0113, i64 24     ; 3 uses
  %.not.i = icmp eq i64 %.0108, 0
  br i1 %.not.i, label %v_complement.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %xtraiter = and i64 %.0108, 1
  %i.m = icmp eq i64 %.0108, 1
  br i1 %i.m, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %.0108, 2305843009213693950
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.011.i = phi i32 [ 1, %.lr.ph.i.preheader.new ], [ %i.ab, %.lr.ph.i ]
  %.0910.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ac, %.lr.ph.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.n = getelementptr [4 x i8], ptr %i.l, i64 %.0910.i
  %i.o = load i32, ptr %i.n, align 4, !tbaa !26
  %i.p = xor i32 %i.o, 1073741823
  %i.q = add i32 %i.p, %.011.i                    ; 2 uses
  %i.r = and i32 %i.q, 1073741823
  %i.s = getelementptr [4 x i8], ptr %i.k, i64 %.0910.i
  store i32 %i.r, ptr %i.s, align 4, !tbaa !26
  %i.t = lshr i32 %i.q, 30
  %i.u = or disjoint i64 %.0910.i, 1              ; 2 uses
  %i.v = getelementptr [4 x i8], ptr %i.l, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !26
  %i.x = xor i32 %i.w, 1073741823
  %i.y = add i32 %i.x, %i.t                       ; 2 uses
  %i.z = and i32 %i.y, 1073741823
  %i.aa = getelementptr [4 x i8], ptr %i.k, i64 %i.u
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !26
  %i.ab = lshr i32 %i.y, 30                       ; 2 uses
  %i.ac = add nuw nsw i64 %.0910.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %v_complement.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !347

v_complement.exit.loopexit.unr-lcssa:             ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %v_complement.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %v_complement.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.011.i.epil.init = phi i32 [ 1, %.lr.ph.i.preheader ], [ %i.ab, %v_complement.exit.loopexit.unr-lcssa ]
  %.0910.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ac, %v_complement.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod256 = trunc i64 %.0108 to i1
  tail call void @llvm.assume(i1 %lcmp.mod256)
  %i.ad = getelementptr [4 x i8], ptr %i.l, i64 %.0910.i.epil.init
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !26
  %i.af = xor i32 %i.ae, -1
  %i.ag = add i32 %.011.i.epil.init, %i.af
  %i.ah = and i32 %i.ag, 1073741823
  %i.ai = getelementptr [4 x i8], ptr %i.k, i64 %.0910.i.epil.init
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !26
  br label %v_complement.exit

v_complement.exit:                                ; preds = %.lr.ph.i.epil.preheader, %v_complement.exit.loopexit.unr-lcssa, %bb.e, %bb.c
  %.1114 = phi ptr [ %.0113, %bb.c ], [ %i.i, %bb.e ], [ %i.i, %v_complement.exit.loopexit.unr-lcssa ], [ %i.i, %.lr.ph.i.epil.preheader ] ; 9 uses
  %.0104 = phi ptr [ null, %bb.c ], [ %i.i, %bb.e ], [ %i.i, %v_complement.exit.loopexit.unr-lcssa ], [ %i.i, %.lr.ph.i.epil.preheader ] ; 12 uses
  %i.aj = getelementptr i8, ptr %.0110, i64 16
  %.0110.val = load i64, ptr %i.aj, align 8, !tbaa !43
  %i.ak = and i64 %.0110.val, 3
  %i.al = icmp eq i64 %i.ak, 2                    ; 5 uses
  %i.am = zext i1 %i.al to i32                    ; 3 uses
  br i1 %i.al, label %bb.f, label %v_complement.exit129

bb.f:                                             ; preds = %v_complement.exit
  %i.an = tail call fastcc ptr @long_alloc(i64 noundef %.0107) ; 8 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %.not.i123 = icmp eq ptr %.0104, null
  br i1 %.not.i123, label %Py_XDECREF.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = load i32, ptr %.0104, align 8, !tbaa !40 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ap, -1
  br i1 %.not.i.i, label %bb.i, label %Py_XDECREF.exit

bb.i:                                             ; preds = %bb.h
  %i.aq = add nsw i32 %i.ap, -1                   ; 2 uses
  store i32 %i.aq, ptr %.0104, align 8, !tbaa !40
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.j, label %Py_XDECREF.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0104) #16
  br label %Py_XDECREF.exit

bb.k:                                             ; preds = %bb.f
  %i.as = getelementptr i8, ptr %i.an, i64 24     ; 3 uses
  %i.at = getelementptr i8, ptr %.0110, i64 24    ; 3 uses
  %.not.i124 = icmp eq i64 %.0107, 0
  br i1 %.not.i124, label %v_complement.exit129, label %.lr.ph.i125.preheader

.lr.ph.i125.preheader:                            ; preds = %bb.k
  %xtraiter257 = and i64 %.0107, 1
  %i.au = icmp eq i64 %.0107, 1
  br i1 %i.au, label %.lr.ph.i125.epil.preheader, label %.lr.ph.i125.preheader.new

.lr.ph.i125.preheader.new:                        ; preds = %.lr.ph.i125.preheader
  %unroll_iter260 = and i64 %.0107, 2305843009213693950
  br label %.lr.ph.i125

.lr.ph.i125:                                      ; preds = %.lr.ph.i125, %.lr.ph.i125.preheader.new
  %.011.i126 = phi i32 [ 1, %.lr.ph.i125.preheader.new ], [ %i.bj, %.lr.ph.i125 ]
  %.0910.i127 = phi i64 [ 0, %.lr.ph.i125.preheader.new ], [ %i.bk, %.lr.ph.i125 ] ; 4 uses
  %niter261 = phi i64 [ 0, %.lr.ph.i125.preheader.new ], [ %niter261.next.1, %.lr.ph.i125 ]
  %i.av = getelementptr [4 x i8], ptr %i.at, i64 %.0910.i127
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !26
  %i.ax = xor i32 %i.aw, 1073741823
  %i.ay = add i32 %i.ax, %.011.i126               ; 2 uses
  %i.az = and i32 %i.ay, 1073741823
  %i.ba = getelementptr [4 x i8], ptr %i.as, i64 %.0910.i127
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !26
  %i.bb = lshr i32 %i.ay, 30
  %i.bc = or disjoint i64 %.0910.i127, 1          ; 2 uses
  %i.bd = getelementptr [4 x i8], ptr %i.at, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !26
  %i.bf = xor i32 %i.be, 1073741823
  %i.bg = add i32 %i.bf, %i.bb                    ; 2 uses
  %i.bh = and i32 %i.bg, 1073741823
  %i.bi = getelementptr [4 x i8], ptr %i.as, i64 %i.bc
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !26
  %i.bj = lshr i32 %i.bg, 30                      ; 2 uses
  %i.bk = add nuw nsw i64 %.0910.i127, 2          ; 2 uses
  %niter261.next.1 = add i64 %niter261, 2         ; 2 uses
  %niter261.ncmp.1 = icmp eq i64 %niter261.next.1, %unroll_iter260
  br i1 %niter261.ncmp.1, label %v_complement.exit129.loopexit.unr-lcssa, label %.lr.ph.i125, !llvm.loop !347

v_complement.exit129.loopexit.unr-lcssa:          ; preds = %.lr.ph.i125
  %lcmp.mod258.not = icmp eq i64 %xtraiter257, 0
  br i1 %lcmp.mod258.not, label %v_complement.exit129, label %.lr.ph.i125.epil.preheader

.lr.ph.i125.epil.preheader:                       ; preds = %v_complement.exit129.loopexit.unr-lcssa, %.lr.ph.i125.preheader
  %.011.i126.epil.init = phi i32 [ 1, %.lr.ph.i125.preheader ], [ %i.bj, %v_complement.exit129.loopexit.unr-lcssa ]
  %.0910.i127.epil.init = phi i64 [ 0, %.lr.ph.i125.preheader ], [ %i.bk, %v_complement.exit129.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod259 = trunc i64 %.0107 to i1
  tail call void @llvm.assume(i1 %lcmp.mod259)
  %i.bl = getelementptr [4 x i8], ptr %i.at, i64 %.0910.i127.epil.init
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !26
  %i.bn = xor i32 %i.bm, -1
  %i.bo = add i32 %.011.i126.epil.init, %i.bn
  %i.bp = and i32 %i.bo, 1073741823
  %i.bq = getelementptr [4 x i8], ptr %i.as, i64 %.0910.i127.epil.init
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !26
  br label %v_complement.exit129

v_complement.exit129:                             ; preds = %.lr.ph.i125.epil.preheader, %v_complement.exit129.loopexit.unr-lcssa, %bb.k, %v_complement.exit
  %.1111 = phi ptr [ %.0110, %v_complement.exit ], [ %i.an, %bb.k ], [ %i.an, %v_complement.exit129.loopexit.unr-lcssa ], [ %i.an, %.lr.ph.i125.epil.preheader ] ; 6 uses
  %.0 = phi ptr [ null, %v_complement.exit ], [ %i.an, %bb.k ], [ %i.an, %v_complement.exit129.loopexit.unr-lcssa ], [ %i.an, %.lr.ph.i125.epil.preheader ] ; 8 uses
  switch i8 %1, label %bb.o [
    i8 94, label %bb.l
    i8 38, label %bb.m
    i8 124, label %bb.n
  ]

bb.l:                                             ; preds = %v_complement.exit129
  %i.br = xor i32 %i.am, %i.h
  br label %bb.p

bb.m:                                             ; preds = %v_complement.exit129
  %i.bs = and i32 %i.am, %i.h
  %i.bt = select i1 %i.al, i64 %.0108, i64 %.0107
  br label %bb.p

bb.n:                                             ; preds = %v_complement.exit129
  %i.bu = or i32 %i.am, %i.h
  %i.bv = select i1 %i.al, i64 %.0107, i64 %.0108
  br label %bb.p

bb.o:                                             ; preds = %v_complement.exit129
  unreachable

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.0109 = phi i32 [ %i.br, %bb.l ], [ %i.bs, %bb.m ], [ %i.bu, %bb.n ] ; 2 uses
  %.0106 = phi i64 [ %.0108, %bb.l ], [ %i.bt, %bb.m ], [ %i.bv, %bb.n ] ; 12 uses
  %i.bw = zext nneg i32 %.0109 to i64
  %i.bx = add nuw nsw i64 %.0106, %i.bw
  %i.by = tail call fastcc ptr @long_alloc(i64 noundef %i.bx) ; 15 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  %.not.i130 = icmp eq ptr %.0104, null
  br i1 %.not.i130, label %Py_XDECREF.exit132, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = load i32, ptr %.0104, align 8, !tbaa !40 ; 2 uses
  %.not.i.i131 = icmp sgt i32 %i.ca, -1
  br i1 %.not.i.i131, label %bb.s, label %Py_XDECREF.exit132

bb.s:                                             ; preds = %bb.r
  %i.cb = add nsw i32 %i.ca, -1                   ; 2 uses
  store i32 %i.cb, ptr %.0104, align 8, !tbaa !40
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.t, label %Py_XDECREF.exit132

bb.t:                                             ; preds = %bb.s
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0104) #16
  br label %Py_XDECREF.exit132

Py_XDECREF.exit132:                               ; preds = %bb.q, %bb.r, %bb.s, %bb.t
  %.not.i133 = icmp eq ptr %.0, null
  br i1 %.not.i133, label %Py_XDECREF.exit, label %bb.u

bb.u:                                             ; preds = %Py_XDECREF.exit132
  %i.cd = load i32, ptr %.0, align 8, !tbaa !40   ; 2 uses
  %.not.i.i134 = icmp sgt i32 %i.cd, -1
  br i1 %.not.i.i134, label %bb.v, label %Py_XDECREF.exit

bb.v:                                             ; preds = %bb.u
  %i.ce = add nsw i32 %i.cd, -1                   ; 2 uses
  store i32 %i.ce, ptr %.0, align 8, !tbaa !40
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.w, label %Py_XDECREF.exit

bb.w:                                             ; preds = %bb.v
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0) #16
  br label %Py_XDECREF.exit

bb.x:                                             ; preds = %bb.p
  %.not168 = icmp eq i64 %.0107, 0                ; 3 uses
  switch i8 %1, label %bb.y [
    i8 38, label %.preheader150
    i8 124, label %.preheader152
    i8 94, label %.preheader154
  ]

.preheader154:                                    ; preds = %bb.x
  br i1 %.not168, label %.loopexit151, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader154
  %i.cg = getelementptr i8, ptr %.1114, i64 24    ; 6 uses
  %i.ch = getelementptr i8, ptr %.1111, i64 24    ; 6 uses
  %i.ci = getelementptr i8, ptr %i.by, i64 24     ; 6 uses
  %min.iters.check = icmp samesign ult i64 %.0107, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %3 = ptrtoaddr ptr %i.by to i64                 ; 2 uses
  %4 = ptrtoaddr ptr %.1111 to i64
  %i.cj = sub i64 %4, %3
  %diff.check = icmp ugt i64 %i.cj, -32
  %5 = ptrtoaddr ptr %.1114 to i64
  %i.ck = sub i64 %5, %3
  %diff.check200 = icmp ugt i64 %i.ck, -32
  %conflict.rdx = or i1 %diff.check, %diff.check200
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.0107, 2305843009213693944    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.cl = getelementptr [4 x i8], ptr %i.cg, i64 %index ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 16
  %wide.load = load <4 x i32>, ptr %i.cl, align 4, !tbaa !26
  %wide.load201 = load <4 x i32>, ptr %i.cm, align 4, !tbaa !26
  %i.cn = getelementptr [4 x i8], ptr %i.ch, i64 %index ; 2 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 16
  %wide.load202 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !26
  %wide.load203 = load <4 x i32>, ptr %i.co, align 4, !tbaa !26
  %i.cp = xor <4 x i32> %wide.load202, %wide.load
  %i.cq = xor <4 x i32> %wide.load203, %wide.load201
  %i.cr = getelementptr [4 x i8], ptr %i.ci, i64 %index ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cr, i64 16
  store <4 x i32> %i.cp, ptr %i.cr, align 4, !tbaa !26
  store <4 x i32> %i.cq, ptr %i.cs, align 4, !tbaa !26
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %middle.block, label %vector.body, !llvm.loop !348

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0107, %n.vec
  br i1 %cmp.n, label %.loopexit151, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.2157.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter262 = and i64 %.0107, 3                ; 2 uses
  %lcmp.mod263.not = icmp eq i64 %xtraiter262, 0
  br i1 %lcmp.mod263.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.2157.prol = phi i64 [ %i.da, %scalar.ph.prol ], [ %.2157.ph, %scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cu = getelementptr [4 x i8], ptr %i.cg, i64 %.2157.prol
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !26
  %i.cw = getelementptr [4 x i8], ptr %i.ch, i64 %.2157.prol
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !26
  %i.cy = xor i32 %i.cx, %i.cv
  %i.cz = getelementptr [4 x i8], ptr %i.ci, i64 %.2157.prol
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !26
  %i.da = add nuw nsw i64 %.2157.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter262
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !349

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.2157.unr = phi i64 [ %.2157.ph, %scalar.ph.preheader ], [ %i.da, %scalar.ph.prol ]
  %i.db = sub nsw i64 %.2157.ph, %.0107
  %i.dc = icmp ugt i64 %i.db, -4
  br i1 %i.dc, label %.loopexit151, label %scalar.ph

.preheader152:                                    ; preds = %bb.x
  br i1 %.not168, label %.loopexit151.thread, label %.lr.ph159

.lr.ph159:                                        ; preds = %.preheader152
  %i.dd = getelementptr i8, ptr %.1114, i64 24    ; 6 uses
  %i.de = getelementptr i8, ptr %.1111, i64 24    ; 6 uses
  %i.df = getelementptr i8, ptr %i.by, i64 24     ; 6 uses
  %min.iters.check223 = icmp samesign ult i64 %.0107, 12
  br i1 %min.iters.check223, label %scalar.ph222.preheader, label %vector.memcheck218

vector.memcheck218:                               ; preds = %.lr.ph159
  %6 = ptrtoaddr ptr %i.by to i64                 ; 2 uses
  %7 = ptrtoaddr ptr %.1111 to i64
  %i.dg = sub i64 %7, %6
  %diff.check219 = icmp ugt i64 %i.dg, -32
  %8 = ptrtoaddr ptr %.1114 to i64
  %i.dh = sub i64 %8, %6
  %diff.check220 = icmp ugt i64 %i.dh, -32
  %conflict.rdx221 = or i1 %diff.check219, %diff.check220
  br i1 %conflict.rdx221, label %scalar.ph222.preheader, label %vector.ph224

vector.ph224:                                     ; preds = %vector.memcheck218
  %n.vec225 = and i64 %.0107, 2305843009213693944 ; 3 uses
  br label %vector.body226

vector.body226:                                   ; preds = %vector.body226, %vector.ph224
  %index227 = phi i64 [ 0, %vector.ph224 ], [ %index.next232, %vector.body226 ] ; 4 uses
  %i.di = getelementptr [4 x i8], ptr %i.dd, i64 %index227 ; 2 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 16
  %wide.load228 = load <4 x i32>, ptr %i.di, align 4, !tbaa !26
  %wide.load229 = load <4 x i32>, ptr %i.dj, align 4, !tbaa !26
  %i.dk = getelementptr [4 x i8], ptr %i.de, i64 %index227 ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 16
  %wide.load230 = load <4 x i32>, ptr %i.dk, align 4, !tbaa !26
  %wide.load231 = load <4 x i32>, ptr %i.dl, align 4, !tbaa !26
  %i.dm = or <4 x i32> %wide.load230, %wide.load228
  %i.dn = or <4 x i32> %wide.load231, %wide.load229
  %i.do = getelementptr [4 x i8], ptr %i.df, i64 %index227 ; 2 uses
  %i.dp = getelementptr i8, ptr %i.do, i64 16
  store <4 x i32> %i.dm, ptr %i.do, align 4, !tbaa !26
  store <4 x i32> %i.dn, ptr %i.dp, align 4, !tbaa !26
  %index.next232 = add nuw i64 %index227, 8       ; 2 uses
  %i.dq = icmp eq i64 %index.next232, %n.vec225
  br i1 %i.dq, label %middle.block233, label %vector.body226, !llvm.loop !350

middle.block233:                                  ; preds = %vector.body226
  %cmp.n234 = icmp eq i64 %.0107, %n.vec225
  br i1 %cmp.n234, label %.loopexit151.thread, label %scalar.ph222.preheader

scalar.ph222.preheader:                           ; preds = %vector.memcheck218, %.lr.ph159, %middle.block233
  %.1158.ph = phi i64 [ 0, %vector.memcheck218 ], [ 0, %.lr.ph159 ], [ %n.vec225, %middle.block233 ] ; 3 uses
  %xtraiter267 = and i64 %.0107, 3                ; 2 uses
  %lcmp.mod268.not = icmp eq i64 %xtraiter267, 0
  br i1 %lcmp.mod268.not, label %scalar.ph222.prol.loopexit, label %scalar.ph222.prol

scalar.ph222.prol:                                ; preds = %scalar.ph222.preheader, %scalar.ph222.prol
  %.1158.prol = phi i64 [ %i.dx, %scalar.ph222.prol ], [ %.1158.ph, %scalar.ph222.preheader ] ; 4 uses
  %prol.iter269 = phi i64 [ %prol.iter269.next, %scalar.ph222.prol ], [ 0, %scalar.ph222.preheader ]
  %i.dr = getelementptr [4 x i8], ptr %i.dd, i64 %.1158.prol
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !26
  %i.dt = getelementptr [4 x i8], ptr %i.de, i64 %.1158.prol
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !26
  %i.dv = or i32 %i.du, %i.ds
  %i.dw = getelementptr [4 x i8], ptr %i.df, i64 %.1158.prol
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !26
  %i.dx = add nuw nsw i64 %.1158.prol, 1          ; 2 uses
  %prol.iter269.next = add i64 %prol.iter269, 1   ; 2 uses
  %prol.iter269.cmp.not = icmp eq i64 %prol.iter269.next, %xtraiter267
  br i1 %prol.iter269.cmp.not, label %scalar.ph222.prol.loopexit, label %scalar.ph222.prol, !llvm.loop !351

scalar.ph222.prol.loopexit:                       ; preds = %scalar.ph222.prol, %scalar.ph222.preheader
  %.1158.unr = phi i64 [ %.1158.ph, %scalar.ph222.preheader ], [ %i.dx, %scalar.ph222.prol ]
  %i.dy = sub nsw i64 %.1158.ph, %.0107
  %i.dz = icmp ugt i64 %i.dy, -4
  br i1 %i.dz, label %.loopexit151.thread, label %scalar.ph222

.preheader150:                                    ; preds = %bb.x
  br i1 %.not168, label %.loopexit151.thread, label %.lr.ph162

.lr.ph162:                                        ; preds = %.preheader150
  %i.ea = getelementptr i8, ptr %.1114, i64 24    ; 6 uses
  %i.eb = getelementptr i8, ptr %.1111, i64 24    ; 6 uses
  %i.ec = getelementptr i8, ptr %i.by, i64 24     ; 6 uses
  %min.iters.check241 = icmp samesign ult i64 %.0107, 12
  br i1 %min.iters.check241, label %scalar.ph240.preheader, label %vector.memcheck236

vector.memcheck236:                               ; preds = %.lr.ph162
  %9 = ptrtoaddr ptr %i.by to i64                 ; 2 uses
  %10 = ptrtoaddr ptr %.1111 to i64
  %i.ed = sub i64 %10, %9
  %diff.check237 = icmp ugt i64 %i.ed, -32
  %11 = ptrtoaddr ptr %.1114 to i64
  %i.ee = sub i64 %11, %9
  %diff.check238 = icmp ugt i64 %i.ee, -32
  %conflict.rdx239 = or i1 %diff.check237, %diff.check238
  br i1 %conflict.rdx239, label %scalar.ph240.preheader, label %vector.ph242

vector.ph242:                                     ; preds = %vector.memcheck236
  %n.vec243 = and i64 %.0107, 2305843009213693944 ; 3 uses
  br label %vector.body244

vector.body244:                                   ; preds = %vector.body244, %vector.ph242
  %index245 = phi i64 [ 0, %vector.ph242 ], [ %index.next250, %vector.body244 ] ; 4 uses
  %i.ef = getelementptr [4 x i8], ptr %i.ea, i64 %index245 ; 2 uses
  %i.eg = getelementptr i8, ptr %i.ef, i64 16
  %wide.load246 = load <4 x i32>, ptr %i.ef, align 4, !tbaa !26
  %wide.load247 = load <4 x i32>, ptr %i.eg, align 4, !tbaa !26
  %i.eh = getelementptr [4 x i8], ptr %i.eb, i64 %index245 ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 16
  %wide.load248 = load <4 x i32>, ptr %i.eh, align 4, !tbaa !26
  %wide.load249 = load <4 x i32>, ptr %i.ei, align 4, !tbaa !26
  %i.ej = and <4 x i32> %wide.load248, %wide.load246
  %i.ek = and <4 x i32> %wide.load249, %wide.load247
  %i.el = getelementptr [4 x i8], ptr %i.ec, i64 %index245 ; 2 uses
  %i.em = getelementptr i8, ptr %i.el, i64 16
  store <4 x i32> %i.ej, ptr %i.el, align 4, !tbaa !26
  store <4 x i32> %i.ek, ptr %i.em, align 4, !tbaa !26
  %index.next250 = add nuw i64 %index245, 8       ; 2 uses
  %i.en = icmp eq i64 %index.next250, %n.vec243
  br i1 %i.en, label %middle.block251, label %vector.body244, !llvm.loop !352

middle.block251:                                  ; preds = %vector.body244
  %cmp.n252 = icmp eq i64 %.0107, %n.vec243
  br i1 %cmp.n252, label %.loopexit151.thread, label %scalar.ph240.preheader

scalar.ph240.preheader:                           ; preds = %vector.memcheck236, %.lr.ph162, %middle.block251
  %.0105161.ph = phi i64 [ 0, %vector.memcheck236 ], [ 0, %.lr.ph162 ], [ %n.vec243, %middle.block251 ] ; 3 uses
  %xtraiter270 = and i64 %.0107, 3                ; 2 uses
  %lcmp.mod271.not = icmp eq i64 %xtraiter270, 0
  br i1 %lcmp.mod271.not, label %scalar.ph240.prol.loopexit, label %scalar.ph240.prol

scalar.ph240.prol:                                ; preds = %scalar.ph240.preheader, %scalar.ph240.prol
  %.0105161.prol = phi i64 [ %i.eu, %scalar.ph240.prol ], [ %.0105161.ph, %scalar.ph240.preheader ] ; 4 uses
  %prol.iter272 = phi i64 [ %prol.iter272.next, %scalar.ph240.prol ], [ 0, %scalar.ph240.preheader ]
  %i.eo = getelementptr [4 x i8], ptr %i.ea, i64 %.0105161.prol
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !26
  %i.eq = getelementptr [4 x i8], ptr %i.eb, i64 %.0105161.prol
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !26
  %i.es = and i32 %i.er, %i.ep
  %i.et = getelementptr [4 x i8], ptr %i.ec, i64 %.0105161.prol
  store i32 %i.es, ptr %i.et, align 4, !tbaa !26
  %i.eu = add nuw nsw i64 %.0105161.prol, 1       ; 2 uses
  %prol.iter272.next = add i64 %prol.iter272, 1   ; 2 uses
  %prol.iter272.cmp.not = icmp eq i64 %prol.iter272.next, %xtraiter270
  br i1 %prol.iter272.cmp.not, label %scalar.ph240.prol.loopexit, label %scalar.ph240.prol, !llvm.loop !353

scalar.ph240.prol.loopexit:                       ; preds = %scalar.ph240.prol, %scalar.ph240.preheader
  %.0105161.unr = phi i64 [ %.0105161.ph, %scalar.ph240.preheader ], [ %i.eu, %scalar.ph240.prol ]
  %i.ev = sub nsw i64 %.0105161.ph, %.0107
  %i.ew = icmp ugt i64 %i.ev, -4
  br i1 %i.ew, label %.loopexit151.thread, label %scalar.ph240

scalar.ph240:                                     ; preds = %scalar.ph240.prol.loopexit, %scalar.ph240
  %.0105161 = phi i64 [ %i.fy, %scalar.ph240 ], [ %.0105161.unr, %scalar.ph240.prol.loopexit ] ; 7 uses
  %i.ex = getelementptr [4 x i8], ptr %i.ea, i64 %.0105161
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !26
  %i.ez = getelementptr [4 x i8], ptr %i.eb, i64 %.0105161
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !26
  %i.fb = and i32 %i.fa, %i.ey
  %i.fc = getelementptr [4 x i8], ptr %i.ec, i64 %.0105161
  store i32 %i.fb, ptr %i.fc, align 4, !tbaa !26
  %i.fd = add nuw nsw i64 %.0105161, 1            ; 3 uses
  %i.fe = getelementptr [4 x i8], ptr %i.ea, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !26
  %i.fg = getelementptr [4 x i8], ptr %i.eb, i64 %i.fd
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !26
  %i.fi = and i32 %i.fh, %i.ff
  %i.fj = getelementptr [4 x i8], ptr %i.ec, i64 %i.fd
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !26
  %i.fk = add nuw nsw i64 %.0105161, 2            ; 3 uses
  %i.fl = getelementptr [4 x i8], ptr %i.ea, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !26
  %i.fn = getelementptr [4 x i8], ptr %i.eb, i64 %i.fk
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !26
  %i.fp = and i32 %i.fo, %i.fm
  %i.fq = getelementptr [4 x i8], ptr %i.ec, i64 %i.fk
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !26
  %i.fr = add nuw nsw i64 %.0105161, 3            ; 3 uses
  %i.fs = getelementptr [4 x i8], ptr %i.ea, i64 %i.fr
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !26
  %i.fu = getelementptr [4 x i8], ptr %i.eb, i64 %i.fr
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !26
  %i.fw = and i32 %i.fv, %i.ft
  %i.fx = getelementptr [4 x i8], ptr %i.ec, i64 %i.fr
  store i32 %i.fw, ptr %i.fx, align 4, !tbaa !26
  %i.fy = add nuw nsw i64 %.0105161, 4            ; 2 uses
  %exitcond175.not.3 = icmp eq i64 %i.fy, %.0107
  br i1 %exitcond175.not.3, label %.loopexit151.thread, label %scalar.ph240, !llvm.loop !354

scalar.ph222:                                     ; preds = %scalar.ph222.prol.loopexit, %scalar.ph222
  %.1158 = phi i64 [ %i.ha, %scalar.ph222 ], [ %.1158.unr, %scalar.ph222.prol.loopexit ] ; 7 uses
  %i.fz = getelementptr [4 x i8], ptr %i.dd, i64 %.1158
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !26
  %i.gb = getelementptr [4 x i8], ptr %i.de, i64 %.1158
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !26
  %i.gd = or i32 %i.gc, %i.ga
  %i.ge = getelementptr [4 x i8], ptr %i.df, i64 %.1158
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !26
  %i.gf = add nuw nsw i64 %.1158, 1               ; 3 uses
  %i.gg = getelementptr [4 x i8], ptr %i.dd, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !26
  %i.gi = getelementptr [4 x i8], ptr %i.de, i64 %i.gf
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !26
  %i.gk = or i32 %i.gj, %i.gh
  %i.gl = getelementptr [4 x i8], ptr %i.df, i64 %i.gf
  store i32 %i.gk, ptr %i.gl, align 4, !tbaa !26
  %i.gm = add nuw nsw i64 %.1158, 2               ; 3 uses
  %i.gn = getelementptr [4 x i8], ptr %i.dd, i64 %i.gm
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !26
  %i.gp = getelementptr [4 x i8], ptr %i.de, i64 %i.gm
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !26
  %i.gr = or i32 %i.gq, %i.go
  %i.gs = getelementptr [4 x i8], ptr %i.df, i64 %i.gm
  store i32 %i.gr, ptr %i.gs, align 4, !tbaa !26
  %i.gt = add nuw nsw i64 %.1158, 3               ; 3 uses
  %i.gu = getelementptr [4 x i8], ptr %i.dd, i64 %i.gt
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !26
  %i.gw = getelementptr [4 x i8], ptr %i.de, i64 %i.gt
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !26
  %i.gy = or i32 %i.gx, %i.gv
  %i.gz = getelementptr [4 x i8], ptr %i.df, i64 %i.gt
  store i32 %i.gy, ptr %i.gz, align 4, !tbaa !26
  %i.ha = add nuw nsw i64 %.1158, 4               ; 2 uses
  %exitcond174.not.3 = icmp eq i64 %i.ha, %.0107
  br i1 %exitcond174.not.3, label %.loopexit151.thread, label %scalar.ph222, !llvm.loop !355

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.2157 = phi i64 [ %i.ic, %scalar.ph ], [ %.2157.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.hb = getelementptr [4 x i8], ptr %i.cg, i64 %.2157
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !26
  %i.hd = getelementptr [4 x i8], ptr %i.ch, i64 %.2157
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !26
  %i.hf = xor i32 %i.he, %i.hc
  %i.hg = getelementptr [4 x i8], ptr %i.ci, i64 %.2157
  store i32 %i.hf, ptr %i.hg, align 4, !tbaa !26
  %i.hh = add nuw nsw i64 %.2157, 1               ; 3 uses
  %i.hi = getelementptr [4 x i8], ptr %i.cg, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !26
  %i.hk = getelementptr [4 x i8], ptr %i.ch, i64 %i.hh
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !26
  %i.hm = xor i32 %i.hl, %i.hj
  %i.hn = getelementptr [4 x i8], ptr %i.ci, i64 %i.hh
  store i32 %i.hm, ptr %i.hn, align 4, !tbaa !26
  %i.ho = add nuw nsw i64 %.2157, 2               ; 3 uses
  %i.hp = getelementptr [4 x i8], ptr %i.cg, i64 %i.ho
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !26
  %i.hr = getelementptr [4 x i8], ptr %i.ch, i64 %i.ho
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !26
  %i.ht = xor i32 %i.hs, %i.hq
  %i.hu = getelementptr [4 x i8], ptr %i.ci, i64 %i.ho
  store i32 %i.ht, ptr %i.hu, align 4, !tbaa !26
  %i.hv = add nuw nsw i64 %.2157, 3               ; 3 uses
  %i.hw = getelementptr [4 x i8], ptr %i.cg, i64 %i.hv
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !26
  %i.hy = getelementptr [4 x i8], ptr %i.ch, i64 %i.hv
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !26
  %i.ia = xor i32 %i.hz, %i.hx
  %i.ib = getelementptr [4 x i8], ptr %i.ci, i64 %i.hv
  store i32 %i.ia, ptr %i.ib, align 4, !tbaa !26
  %i.ic = add nuw nsw i64 %.2157, 4               ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ic, %.0107
  br i1 %exitcond.not.3, label %.loopexit151, label %scalar.ph, !llvm.loop !356

bb.y:                                             ; preds = %bb.x
  unreachable

.loopexit151:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader154
  br i1 %i.al, label %.preheader, label %.loopexit151.thread

.preheader:                                       ; preds = %.loopexit151
  %i.id = icmp samesign ult i64 %.0107, %.0106
  br i1 %i.id, label %.lr.ph165, label %.loopexit

.lr.ph165:                                        ; preds = %.preheader
  %i.ie = getelementptr i8, ptr %.1114, i64 24    ; 6 uses
  %i.if = getelementptr i8, ptr %i.by, i64 24     ; 6 uses
  %i.ig = sub nuw nsw i64 %.0106, %.0107          ; 3 uses
  %min.iters.check207 = icmp ult i64 %i.ig, 8
  %12 = ptrtoaddr ptr %i.by to i64
  %13 = ptrtoaddr ptr %.1114 to i64
  %i.ih = sub i64 %13, %12
  %diff.check205 = icmp ugt i64 %i.ih, -32
  %or.cond = or i1 %min.iters.check207, %diff.check205
  br i1 %or.cond, label %scalar.ph206.preheader, label %vector.ph208

vector.ph208:                                     ; preds = %.lr.ph165
  %n.vec209 = and i64 %i.ig, -8                   ; 3 uses
  %i.ii = add nsw i64 %.0107, %n.vec209
  br label %vector.body210

vector.body210:                                   ; preds = %vector.body210, %vector.ph208
  %index211 = phi i64 [ 0, %vector.ph208 ], [ %index.next214, %vector.body210 ] ; 2 uses
  %i.ij = add nuw i64 %.0107, %index211           ; 2 uses
  %i.ik = getelementptr [4 x i8], ptr %i.ie, i64 %i.ij ; 2 uses
  %i.il = getelementptr i8, ptr %i.ik, i64 16
  %wide.load212 = load <4 x i32>, ptr %i.ik, align 4, !tbaa !26
  %wide.load213 = load <4 x i32>, ptr %i.il, align 4, !tbaa !26
  %i.im = xor <4 x i32> %wide.load212, splat (i32 1073741823)
  %i.in = xor <4 x i32> %wide.load213, splat (i32 1073741823)
  %i.io = getelementptr [4 x i8], ptr %i.if, i64 %i.ij ; 2 uses
  %i.ip = getelementptr i8, ptr %i.io, i64 16
  store <4 x i32> %i.im, ptr %i.io, align 4, !tbaa !26
  store <4 x i32> %i.in, ptr %i.ip, align 4, !tbaa !26
  %index.next214 = add nuw i64 %index211, 8       ; 2 uses
  %i.iq = icmp eq i64 %index.next214, %n.vec209
  br i1 %i.iq, label %middle.block215, label %vector.body210, !llvm.loop !357

middle.block215:                                  ; preds = %vector.body210
  %cmp.n216 = icmp eq i64 %i.ig, %n.vec209
  br i1 %cmp.n216, label %.loopexit, label %scalar.ph206.preheader

scalar.ph206.preheader:                           ; preds = %.lr.ph165, %middle.block215
  %.4164.ph = phi i64 [ %.0107, %.lr.ph165 ], [ %i.ii, %middle.block215 ] ; 4 uses
  %i.ir = sub i64 %.0106, %.4164.ph
  %xtraiter264 = and i64 %i.ir, 3                 ; 2 uses
  %lcmp.mod265.not = icmp eq i64 %xtraiter264, 0
  br i1 %lcmp.mod265.not, label %scalar.ph206.prol.loopexit, label %scalar.ph206.prol

scalar.ph206.prol:                                ; preds = %scalar.ph206.preheader, %scalar.ph206.prol
  %.4164.prol = phi i64 [ %i.iw, %scalar.ph206.prol ], [ %.4164.ph, %scalar.ph206.preheader ] ; 3 uses
  %prol.iter266 = phi i64 [ %prol.iter266.next, %scalar.ph206.prol ], [ 0, %scalar.ph206.preheader ]
  %i.is = getelementptr [4 x i8], ptr %i.ie, i64 %.4164.prol
  %i.it = load i32, ptr %i.is, align 4, !tbaa !26
  %i.iu = xor i32 %i.it, 1073741823
  %i.iv = getelementptr [4 x i8], ptr %i.if, i64 %.4164.prol
  store i32 %i.iu, ptr %i.iv, align 4, !tbaa !26
  %i.iw = add nuw nsw i64 %.4164.prol, 1          ; 2 uses
  %prol.iter266.next = add i64 %prol.iter266, 1   ; 2 uses
  %prol.iter266.cmp.not = icmp eq i64 %prol.iter266.next, %xtraiter264
  br i1 %prol.iter266.cmp.not, label %scalar.ph206.prol.loopexit, label %scalar.ph206.prol, !llvm.loop !358

scalar.ph206.prol.loopexit:                       ; preds = %scalar.ph206.prol, %scalar.ph206.preheader
  %.4164.unr = phi i64 [ %.4164.ph, %scalar.ph206.preheader ], [ %i.iw, %scalar.ph206.prol ]
  %i.ix = sub i64 %.4164.ph, %.0106
  %i.iy = icmp ugt i64 %i.ix, -4
  br i1 %i.iy, label %.loopexit, label %scalar.ph206

scalar.ph206:                                     ; preds = %scalar.ph206.prol.loopexit, %scalar.ph206
  %.4164 = phi i64 [ %i.js, %scalar.ph206 ], [ %.4164.unr, %scalar.ph206.prol.loopexit ] ; 6 uses
  %i.iz = getelementptr [4 x i8], ptr %i.ie, i64 %.4164
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !26
  %i.jb = xor i32 %i.ja, 1073741823
  %i.jc = getelementptr [4 x i8], ptr %i.if, i64 %.4164
  store i32 %i.jb, ptr %i.jc, align 4, !tbaa !26
  %i.jd = add nuw nsw i64 %.4164, 1               ; 2 uses
  %i.je = getelementptr [4 x i8], ptr %i.ie, i64 %i.jd
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !26
  %i.jg = xor i32 %i.jf, 1073741823
  %i.jh = getelementptr [4 x i8], ptr %i.if, i64 %i.jd
  store i32 %i.jg, ptr %i.jh, align 4, !tbaa !26
  %i.ji = add nuw nsw i64 %.4164, 2               ; 2 uses
  %i.jj = getelementptr [4 x i8], ptr %i.ie, i64 %i.ji
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !26
  %i.jl = xor i32 %i.jk, 1073741823
  %i.jm = getelementptr [4 x i8], ptr %i.if, i64 %i.ji
  store i32 %i.jl, ptr %i.jm, align 4, !tbaa !26
  %i.jn = add nuw nsw i64 %.4164, 3               ; 2 uses
  %i.jo = getelementptr [4 x i8], ptr %i.ie, i64 %i.jn
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !26
  %i.jq = xor i32 %i.jp, 1073741823
  %i.jr = getelementptr [4 x i8], ptr %i.if, i64 %i.jn
  store i32 %i.jq, ptr %i.jr, align 4, !tbaa !26
  %i.js = add nuw nsw i64 %.4164, 4               ; 2 uses
  %exitcond176.not.3 = icmp eq i64 %i.js, %.0106
  br i1 %exitcond176.not.3, label %.loopexit, label %scalar.ph206, !llvm.loop !359

.loopexit151.thread:                              ; preds = %scalar.ph222.prol.loopexit, %scalar.ph222, %scalar.ph240.prol.loopexit, %scalar.ph240, %middle.block233, %middle.block251, %.preheader150, %.preheader152, %.loopexit151
  %.3193 = phi i64 [ %.0107, %.loopexit151 ], [ 0, %.preheader152 ], [ 0, %.preheader150 ], [ %.0107, %middle.block251 ], [ %.0107, %middle.block233 ], [ %.0107, %scalar.ph240.prol.loopexit ], [ %.0107, %scalar.ph240 ], [ %.0107, %scalar.ph222 ], [ %.0107, %scalar.ph222.prol.loopexit ] ; 4 uses
  %i.jt = icmp samesign ult i64 %.3193, %.0106
  br i1 %i.jt, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %.loopexit151.thread
  %i.ju = getelementptr i8, ptr %i.by, i64 24
  %i.jv = getelementptr [4 x i8], ptr %i.ju, i64 %.3193
  %i.jw = getelementptr i8, ptr %.1114, i64 24
  %i.jx = getelementptr [4 x i8], ptr %i.jw, i64 %.3193
  %i.jy = sub nuw nsw i64 %.0106, %.3193
  %i.jz = shl nuw nsw i64 %i.jy, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.jv, ptr align 4 %i.jx, i64 %i.jz, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph206.prol.loopexit, %scalar.ph206, %middle.block215, %.preheader, %.loopexit151.thread, %bb.z
  %.not = icmp eq i32 %.0109, 0
  br i1 %.not, label %v_complement.exit141, label %bb.aa

bb.aa:                                            ; preds = %.loopexit
  %i.ka = getelementptr i8, ptr %i.by, i64 16     ; 2 uses
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !43 ; 2 uses
  %i.kc = and i64 %i.kb, 3
  %i.kd = sub nsw i64 2, %i.kc
  %i.ke = and i64 %i.kb, -8
  %i.kf = and i64 %i.kd, 4294967295
  %i.kg = or i64 %i.kf, %i.ke
  store i64 %i.kg, ptr %i.ka, align 8, !tbaa !43
  %i.kh = getelementptr i8, ptr %i.by, i64 24     ; 4 uses
  %i.ki = getelementptr [4 x i8], ptr %i.kh, i64 %.0106
  store i32 1073741823, ptr %i.ki, align 4, !tbaa !26
  %i.kj = add nsw i64 %.0106, 1                   ; 2 uses
  %i.kk = icmp eq i64 %.0106, 0
  br i1 %i.kk, label %.lr.ph.i137.epil.preheader, label %.new

.new:                                             ; preds = %bb.aa
  %unroll_iter276 = and i64 %i.kj, -2
  br label %.lr.ph.i137

.lr.ph.i137:                                      ; preds = %.lr.ph.i137, %.new
  %.011.i138 = phi i32 [ 1, %.new ], [ %i.kx, %.lr.ph.i137 ]
  %.0910.i139 = phi i64 [ 0, %.new ], [ %i.ky, %.lr.ph.i137 ] ; 3 uses
  %niter277 = phi i64 [ 0, %.new ], [ %niter277.next.1, %.lr.ph.i137 ]
  %i.kl = getelementptr [4 x i8], ptr %i.kh, i64 %.0910.i139 ; 2 uses
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !26
  %i.kn = xor i32 %i.km, 1073741823
  %i.ko = add i32 %i.kn, %.011.i138               ; 2 uses
  %i.kp = and i32 %i.ko, 1073741823
  store i32 %i.kp, ptr %i.kl, align 4, !tbaa !26
  %i.kq = lshr i32 %i.ko, 30
  %i.kr = getelementptr [4 x i8], ptr %i.kh, i64 %.0910.i139
  %i.ks = getelementptr i8, ptr %i.kr, i64 4      ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !26
  %i.ku = xor i32 %i.kt, 1073741823
  %i.kv = add i32 %i.ku, %i.kq                    ; 2 uses
  %i.kw = and i32 %i.kv, 1073741823
  store i32 %i.kw, ptr %i.ks, align 4, !tbaa !26
  %i.kx = lshr i32 %i.kv, 30                      ; 2 uses
  %i.ky = add nuw nsw i64 %.0910.i139, 2          ; 2 uses
  %niter277.next.1 = add i64 %niter277, 2         ; 2 uses
  %niter277.ncmp.1 = icmp eq i64 %niter277.next.1, %unroll_iter276
  br i1 %niter277.ncmp.1, label %v_complement.exit141.loopexit.unr-lcssa, label %.lr.ph.i137, !llvm.loop !347

v_complement.exit141.loopexit.unr-lcssa:          ; preds = %.lr.ph.i137
  %i.kz = and i64 %.0106, 1
  %lcmp.mod274.not.not = icmp eq i64 %i.kz, 0
  br i1 %lcmp.mod274.not.not, label %.lr.ph.i137.epil.preheader, label %v_complement.exit141

.lr.ph.i137.epil.preheader:                       ; preds = %v_complement.exit141.loopexit.unr-lcssa, %bb.aa
  %.011.i138.epil.init = phi i32 [ 1, %bb.aa ], [ %i.kx, %v_complement.exit141.loopexit.unr-lcssa ]
  %.0910.i139.epil.init = phi i64 [ 0, %bb.aa ], [ %i.ky, %v_complement.exit141.loopexit.unr-lcssa ]
  %lcmp.mod275 = trunc i64 %i.kj to i1
  tail call void @llvm.assume(i1 %lcmp.mod275)
  %i.la = getelementptr [4 x i8], ptr %i.kh, i64 %.0910.i139.epil.init ; 2 uses
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !26
  %i.lc = xor i32 %i.lb, -1
  %i.ld = add i32 %.011.i138.epil.init, %i.lc
  %i.le = and i32 %i.ld, 1073741823
  store i32 %i.le, ptr %i.la, align 4, !tbaa !26
  br label %v_complement.exit141

v_complement.exit141:                             ; preds = %.lr.ph.i137.epil.preheader, %v_complement.exit141.loopexit.unr-lcssa, %.loopexit
  %.not.i142 = icmp eq ptr %.0104, null
  br i1 %.not.i142, label %Py_XDECREF.exit144, label %bb.ab

bb.ab:                                            ; preds = %v_complement.exit141
  %i.lf = load i32, ptr %.0104, align 8, !tbaa !40 ; 2 uses
  %.not.i.i143 = icmp sgt i32 %i.lf, -1
  br i1 %.not.i.i143, label %bb.ac, label %Py_XDECREF.exit144

bb.ac:                                            ; preds = %bb.ab
  %i.lg = add nsw i32 %i.lf, -1                   ; 2 uses
  store i32 %i.lg, ptr %.0104, align 8, !tbaa !40
  %i.lh = icmp eq i32 %i.lg, 0
  br i1 %i.lh, label %bb.ad, label %Py_XDECREF.exit144

bb.ad:                                            ; preds = %bb.ac
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0104) #16
  br label %Py_XDECREF.exit144

Py_XDECREF.exit144:                               ; preds = %v_complement.exit141, %bb.ab, %bb.ac, %bb.ad
  %.not.i145 = icmp eq ptr %.0, null
  br i1 %.not.i145, label %Py_XDECREF.exit147, label %bb.ae

bb.ae:                                            ; preds = %Py_XDECREF.exit144
  %i.li = load i32, ptr %.0, align 8, !tbaa !40   ; 2 uses
  %.not.i.i146 = icmp sgt i32 %i.li, -1
  br i1 %.not.i.i146, label %bb.af, label %Py_XDECREF.exit147

bb.af:                                            ; preds = %bb.ae
  %i.lj = add nsw i32 %i.li, -1                   ; 2 uses
  store i32 %i.lj, ptr %.0, align 8, !tbaa !40
  %i.lk = icmp eq i32 %i.lj, 0
  br i1 %i.lk, label %bb.ag, label %Py_XDECREF.exit147

end_hunk_1
begin_hunk_2_@int___format__:bb.a
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val6 = load i64, ptr %i.b, align 8, !tbaa !52
  %i.c = and i64 %.val6, 268435456
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.81, ptr noundef nonnull %1) #16
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @_PyUnicodeWriter_Init(ptr noundef nonnull %2) #16
  %i.d = getelementptr i8, ptr %1, i64 16
  %.val.i = load i64, ptr %i.d, align 8, !tbaa !142
  %i.e = call i32 @_PyLong_FormatAdvancedWriter(ptr noundef nonnull %2, ptr noundef %0, ptr noundef nonnull %1, i64 noundef 0, i64 noundef %.val.i) #16
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_PyUnicodeWriter_Dealloc(ptr noundef nonnull %2) #16
  br label %int___format___impl.exit

bb.e:                                             ; preds = %bb.c
  %i.g = call ptr @_PyUnicodeWriter_Finish(ptr noundef nonnull %2) #16
  br label %int___format___impl.exit

int___format___impl.exit:                         ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ null, %bb.d ], [ %i.g, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.f

bb.f:                                             ; preds = %int___format___impl.exit, %bb.b
  %.0 = phi ptr [ %.0.i, %int___format___impl.exit ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @int___sizeof__(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val4.i = load i64, ptr %i.a, align 8, !tbaa !43
  %i.b = lshr i64 %.val4.i, 3
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1)
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val6.i = load ptr, ptr %i.c, align 8, !tbaa !39 ; 2 uses
  %i.d = getelementptr i8, ptr %.val6.i, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !377
  %i.f = getelementptr i8, ptr %.val6.i, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !378
  %i.h = mul i64 %i.g, %spec.select.i
  %i.i = add i64 %i.h, %i.e                       ; 2 uses
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %bb.b, label %.split

.split:                                           ; preds = %bb.a
  %i.k = tail call ptr @PyLong_FromSsize_t(i64 noundef %i.i)
  br label %.split3

bb.b:                                             ; preds = %bb.a
  %i.l = tail call ptr @PyErr_Occurred() #16
  %.not = icmp eq ptr %i.l, null
  %spec.select = select i1 %.not, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14264), ptr null
  br label %.split3

.split3:                                          ; preds = %bb.b, %.split
  %.0 = phi ptr [ %spec.select, %bb.b ], [ %i.k, %.split ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @int_is_integer(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #13 {
bb.a:
  ret ptr @_Py_TrueStruct
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #2

declare ptr @_PyArg_UnpackKeywords(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_PyArg_BadArgument(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @PyObject_IsTrue(ptr noundef) local_unnamed_addr #3

declare i32 @_PyUnicode_Equal(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PyBytesWriter_Create(i64 noundef) local_unnamed_addr #3

declare ptr @PyBytesWriter_GetData(ptr noundef) local_unnamed_addr #3

declare void @PyBytesWriter_Discard(ptr noundef) local_unnamed_addr #3

declare ptr @PyBytesWriter_Finish(ptr noundef) local_unnamed_addr #3

declare i32 @PyObject_CheckBuffer(ptr noundef) local_unnamed_addr #3

declare i32 @PyObject_GetBuffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @PyBuffer_Release(ptr noundef) local_unnamed_addr #3

declare ptr @PyObject_Bytes(ptr noundef) local_unnamed_addr #3

declare ptr @PyObject_CallOneArg(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PyTuple_Pack(i64 noundef, ...) local_unnamed_addr #3

declare i32 @_PyArg_CheckPositional(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @Py_BuildValue(ptr noundef, ...) local_unnamed_addr #3

declare void @_PyUnicodeWriter_Init(ptr noundef) local_unnamed_addr #3

declare i32 @_PyLong_FormatAdvancedWriter(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @_PyUnicodeWriter_Dealloc(ptr noundef) local_unnamed_addr #3

declare ptr @_PyUnicodeWriter_Finish(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal ptr @long_long_getter(ptr nofree noundef captures(ret: address, provenance) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !39
  %.not.i = icmp eq ptr %.val.i, @PyLong_Type
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.c = icmp ugt i32 %i.b, -1073741825
  br i1 %i.c, label %long_long.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %i.b, 1
  store i32 %i.d, ptr %0, align 8, !tbaa !40
  br label %long_long.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 16
  %.val24.i.i = load i64, ptr %i.e, align 8, !tbaa !43 ; 4 uses
  %i.f = icmp ugt i64 %.val24.i.i, 15
  br i1 %i.f, label %.thread.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr i8, ptr %0, i64 24
  %.val26.i.i = load i32, ptr %i.g, align 8, !tbaa !26
  %i.h = and i64 %.val24.i.i, 3
  %i.i = sub nsw i64 1, %i.h
  %i.j = zext i32 %.val26.i.i to i64
  %i.k = mul nsw i64 %i.i, %i.j                   ; 2 uses
  %i.l = add nsw i64 %i.k, -1025
  %or.cond.i.i = icmp ult i64 %i.l, -1030
  br i1 %or.cond.i.i, label %.thread.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14136), i64 %i.k
  %i.n = getelementptr i8, ptr %i.m, i64 160
  br label %long_long.exit

.thread.i.i:                                      ; preds = %bb.e, %bb.d
  %i.o = lshr i64 %.val24.i.i, 3                  ; 2 uses
  %i.p = tail call fastcc ptr @long_alloc(i64 noundef %i.o), !inline_history !157 ; 4 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %long_long.exit, label %bb.g

bb.g:                                             ; preds = %.thread.i.i
  %i.r = and i64 %.val24.i.i, -5
  %i.s = getelementptr i8, ptr %i.p, i64 16
  store i64 %i.r, ptr %i.s, align 8, !tbaa !43
  %i.t = getelementptr i8, ptr %i.p, i64 24
  %i.u = getelementptr i8, ptr %0, i64 24
  %i.v = shl nuw nsw i64 %i.o, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.t, ptr readonly align 8 %i.u, i64 %i.v, i1 false)
  br label %long_long.exit

long_long.exit:                                   ; preds = %bb.b, %bb.c, %bb.f, %.thread.i.i, %bb.g
  %.0.i = phi ptr [ %0, %bb.c ], [ %0, %bb.b ], [ %i.n, %bb.f ], [ %i.p, %bb.g ], [ null, %.thread.i.i ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal nonnull ptr @long_get0(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #13 {
bb.a:
  ret ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14296)
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal nonnull ptr @long_get1(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #13 {
bb.a:
  ret ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14328)
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @long_new_impl(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, @PyLong_Type
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc ptr @long_new_impl(ptr noundef nonnull @PyLong_Type, ptr noundef %1, ptr noundef %2), !inline_history !379 ; 10 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %long_subtype_new.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %i.a, i64 16       ; 2 uses
  %.val.i = load i64, ptr %i.c, align 8, !tbaa !43 ; 2 uses
  %i.d = lshr i64 %.val.i, 3                      ; 3 uses
  %spec.store.select.i = tail call i64 @llvm.umax.i64(i64 %i.d, i64 1) ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 304
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !383
  %i.g = tail call ptr %i.f(ptr noundef %0, i64 noundef %spec.store.select.i) #16, !inline_history !379 ; 7 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %.not.i24.i = icmp sgt i32 %i.i, -1
  br i1 %.not.i24.i, label %bb.e, label %long_subtype_new.exit

bb.e:                                             ; preds = %bb.d
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %i.a, align 8, !tbaa !40
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.f, label %long_subtype_new.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #16, !inline_history !379
  br label %long_subtype_new.exit

bb.g:                                             ; preds = %bb.c
  %i.l = load i64, ptr %i.c, align 8, !tbaa !43
  %i.m = and i64 %i.l, -5
  %i.n = getelementptr i8, ptr %i.g, i64 16
  store i64 %i.m, ptr %i.n, align 8, !tbaa !43
  %i.o = getelementptr i8, ptr %i.a, i64 24       ; 6 uses
  %i.p = getelementptr i8, ptr %i.g, i64 24       ; 6 uses
  %min.iters.check = icmp ult i64 %.val.i, 64
  %3 = ptrtoaddr ptr %i.g to i64
  %4 = ptrtoaddr ptr %i.a to i64
  %i.q = sub i64 %4, %3
  %diff.check = icmp ugt i64 %i.q, -32
  %or.cond64 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond64, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.g
  %n.vec = and i64 %spec.store.select.i, 2305843009213693944 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = getelementptr [4 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 16
  %wide.load = load <4 x i32>, ptr %i.r, align 4, !tbaa !26
  %wide.load63 = load <4 x i32>, ptr %i.s, align 4, !tbaa !26
  %i.t = getelementptr [4 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 16
  store <4 x i32> %wide.load, ptr %i.t, align 4, !tbaa !26
  store <4 x i32> %wide.load63, ptr %i.u, align 4, !tbaa !26
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !380

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.g, %middle.block
  %.0.i51.ph = phi i64 [ 0, %bb.g ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.store.select.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.0.i51.prol = phi i64 [ %i.z, %scalar.ph.prol ], [ %.0.i51.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.w = getelementptr [4 x i8], ptr %i.o, i64 %.0.i51.prol
  %i.x = load i32, ptr %i.w, align 4, !tbaa !26
  %i.y = getelementptr [4 x i8], ptr %i.p, i64 %.0.i51.prol
  store i32 %i.x, ptr %i.y, align 4, !tbaa !26
  %i.z = add nuw nsw i64 %.0.i51.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !381

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0.i51.unr = phi i64 [ %.0.i51.ph, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %i.aa = sub nsw i64 %.0.i51.ph, %spec.store.select.i
  %i.ab = icmp ugt i64 %i.aa, -4
  br i1 %i.ab, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0.i51 = phi i64 [ %i.ar, %scalar.ph ], [ %.0.i51.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ac = getelementptr [4 x i8], ptr %i.o, i64 %.0.i51
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !26
  %i.ae = getelementptr [4 x i8], ptr %i.p, i64 %.0.i51
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !26
  %i.af = add nuw nsw i64 %.0.i51, 1              ; 2 uses
  %i.ag = getelementptr [4 x i8], ptr %i.o, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !26
  %i.ai = getelementptr [4 x i8], ptr %i.p, i64 %i.af
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !26
  %i.aj = add nuw nsw i64 %.0.i51, 2              ; 2 uses
  %i.ak = getelementptr [4 x i8], ptr %i.o, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !26
  %i.am = getelementptr [4 x i8], ptr %i.p, i64 %i.aj
  store i32 %i.al, ptr %i.am, align 4, !tbaa !26
  %i.an = add nuw nsw i64 %.0.i51, 3              ; 2 uses
  %i.ao = getelementptr [4 x i8], ptr %i.o, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !26
  %i.aq = getelementptr [4 x i8], ptr %i.p, i64 %i.an
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !26
  %i.ar = add nuw nsw i64 %.0.i51, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.d, %i.ar
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !382

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.as = load i32, ptr %i.a, align 8, !tbaa !40  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.as, -1
  br i1 %.not.i.i, label %bb.h, label %long_subtype_new.exit

bb.h:                                             ; preds = %.loopexit
  %i.at = add nsw i32 %i.as, -1                   ; 2 uses
  store i32 %i.at, ptr %i.a, align 8, !tbaa !40
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.i, label %long_subtype_new.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #16, !inline_history !379
  br label %long_subtype_new.exit

bb.j:                                             ; preds = %bb.a
  %i.av = icmp eq ptr %1, null
  %.not37 = icmp eq ptr %2, null                  ; 2 uses
  br i1 %i.av, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  br i1 %.not37, label %long_subtype_new.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.aw, ptr noundef nonnull @.str.96) #16
  br label %long_subtype_new.exit

bb.m:                                             ; preds = %bb.j
  br i1 %.not37, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ax = tail call ptr @PyNumber_Long(ptr noundef nonnull %1) #16
  br label %long_subtype_new.exit

bb.o:                                             ; preds = %bb.m
  %i.ay = tail call i64 @PyNumber_AsSsize_t(ptr noundef nonnull %2, ptr noundef null) #16 ; 6 uses
  %i.az = icmp eq i64 %i.ay, -1
  br i1 %i.az, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ba = tail call ptr @PyErr_Occurred() #16
  %.not32 = icmp eq ptr %i.ba, null
  br i1 %.not32, label %bb.q, label %long_subtype_new.exit

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bb = icmp ne i64 %i.ay, 0
  %i.bc = icmp slt i64 %i.ay, 2
  %or.cond = and i1 %i.bb, %i.bc
  %i.bd = icmp sgt i64 %i.ay, 36
  %or.cond3 = or i1 %i.bd, %or.cond
  br i1 %or.cond3, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.be = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.be, ptr noundef nonnull @.str.97) #16
  br label %long_subtype_new.exit

bb.s:                                             ; preds = %bb.q
  %i.bf = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %.val39 = load ptr, ptr %i.bf, align 8, !tbaa !39 ; 3 uses
  %i.bg = getelementptr i8, ptr %.val39, i64 168
  %.val41 = load i64, ptr %i.bg, align 8, !tbaa !52
  %i.bh = and i64 %.val41, 268435456
  %.not33 = icmp eq i64 %i.bh, 0
  br i1 %.not33, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bi = trunc nuw nsw i64 %i.ay to i32
  %i.bj = tail call ptr @PyLong_FromUnicodeObject(ptr noundef nonnull %1, i32 noundef %i.bi)
  br label %long_subtype_new.exit

bb.u:                                             ; preds = %bb.s
  %.not.i = icmp eq ptr %.val39, @PyByteArray_Type
  br i1 %.not.i, label %PyObject_TypeCheck.exit46.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.u
  %i.bk = tail call i32 @PyType_IsSubtype(ptr noundef %.val39, ptr noundef nonnull @PyByteArray_Type) #16
  %.not49 = icmp eq i32 %i.bk, 0
  %.val42.pre = load ptr, ptr %i.bf, align 8, !tbaa !39 ; 3 uses
  br i1 %.not49, label %bb.v, label %PyObject_TypeCheck.exit.thread

bb.v:                                             ; preds = %PyObject_TypeCheck.exit
  %i.bl = getelementptr i8, ptr %.val42.pre, i64 168
  %.val40 = load i64, ptr %i.bl, align 8, !tbaa !52
  %i.bm = and i64 %.val40, 134217728
  %.not35 = icmp eq i64 %i.bm, 0
  br i1 %.not35, label %bb.y, label %PyObject_TypeCheck.exit.thread

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.v, %PyObject_TypeCheck.exit
  %.not.i45 = icmp eq ptr %.val42.pre, @PyByteArray_Type
  br i1 %.not.i45, label %PyObject_TypeCheck.exit46.thread, label %PyObject_TypeCheck.exit46

PyObject_TypeCheck.exit46:                        ; preds = %PyObject_TypeCheck.exit.thread
  %i.bn = tail call i32 @PyType_IsSubtype(ptr noundef %.val42.pre, ptr noundef nonnull @PyByteArray_Type) #16
  %.not50 = icmp eq i32 %i.bn, 0
  br i1 %.not50, label %bb.w, label %PyObject_TypeCheck.exit46.thread

PyObject_TypeCheck.exit46.thread:                 ; preds = %bb.u, %PyObject_TypeCheck.exit.thread, %PyObject_TypeCheck.exit46
  %i.bo = getelementptr i8, ptr %1, i64 40
  %.val44 = load ptr, ptr %i.bo, align 8, !tbaa !385
  br label %bb.x

bb.w:                                             ; preds = %PyObject_TypeCheck.exit46
  %i.bp = getelementptr i8, ptr %1, i64 32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %PyObject_TypeCheck.exit46.thread
  %.0 = phi ptr [ %.val44, %PyObject_TypeCheck.exit46.thread ], [ %i.bp, %bb.w ]
  %i.bq = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.bq, align 8, !tbaa !160
  %i.br = trunc nuw nsw i64 %i.ay to i32
  %i.bs = tail call ptr @_PyLong_FromBytes(ptr noundef %.0, i64 noundef %.val, i32 noundef %i.br)
  br label %long_subtype_new.exit

bb.y:                                             ; preds = %bb.v
  %i.bt = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.bt, ptr noundef nonnull @.str.98) #16
  br label %long_subtype_new.exit

long_subtype_new.exit:                            ; preds = %bb.k, %bb.b, %bb.f, %bb.e, %bb.d, %bb.i, %bb.h, %.loopexit, %bb.p, %bb.y, %bb.x, %bb.t, %bb.r, %bb.n, %bb.l
  %.027 = phi ptr [ null, %bb.p ], [ null, %bb.l ], [ %i.g, %.loopexit ], [ %i.ax, %bb.n ], [ null, %bb.y ], [ null, %bb.r ], [ %i.bj, %bb.t ], [ %i.bs, %bb.x ], [ null, %bb.d ], [ null, %bb.b ], [ null, %bb.f ], [ null, %bb.e ], [ %i.g, %bb.i ], [ %i.g, %bb.h ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14296), %bb.k ]
  ret ptr %.027
}

end_hunk_2
