Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/ast_unparse?download=true
inline.NumInlined: 168
inline.NumDeleted: 41
begin_hunk_0_@append_ast_expr:bb.a
bb.hl:                                            ; preds = %bb.hk
  %i.ue = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, i64 noundef -1) #3
  %i.uf = icmp eq i32 %i.ue, -1
  br i1 %i.uf, label %common.ret332, label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %bb.hk
  %i.ug = getelementptr i8, ptr %1, i64 8
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !20
  %i.ui = tail call fastcc i32 @append_ast_expr(ptr noundef nonnull %0, ptr noundef %i.uh, i32 noundef 15), !inline_history !73
  %i.uj = icmp eq i32 %i.ui, -1
  br i1 %i.uj, label %common.ret332, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.uk = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.65, i64 noundef -1) #3
  %i.ul = icmp eq i32 %i.uk, -1
  br i1 %i.ul, label %common.ret332, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.um = getelementptr i8, ptr %1, i64 16
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !20
  %i.uo = tail call fastcc i32 @append_ast_expr(ptr noundef nonnull %0, ptr noundef %i.un, i32 noundef 15), !inline_history !73
  %i.up = icmp eq i32 %i.uo, -1
  br i1 %i.up, label %common.ret332, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  br i1 %.not.i116, label %bb.k, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.uq = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, i64 noundef -1) #3
  %i.ur = icmp eq i32 %i.uq, -1
  br i1 %i.ur, label %common.ret332, label %bb.k

bb.hr:                                            ; preds = %bb.a
  %i.us = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !31
  tail call void @PyErr_SetString(ptr noundef %i.us, ptr noundef nonnull @.str.1) #3
  br label %common.ret332
}

declare void @PyUnicodeWriter_Discard(ptr noundef) local_unnamed_addr #1

declare ptr @PyUnicodeWriter_Finish(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @append_ast_genexp(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @PyUnicodeWriter_WriteChar(ptr noundef nonnull %0, i32 noundef 40) #3
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %append_ast_comprehensions.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.e = tail call fastcc i32 @append_ast_expr(ptr noundef %0, ptr noundef %i.d, i32 noundef 1)
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %append_ast_comprehensions.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20   ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %append_ast_comprehensions.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !tbaa !25   ; 2 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %append_ast_comprehensions.exit

.lr.ph:                                           ; preds = %bb.d
  %i.l = getelementptr i8, ptr %i.h, i64 16
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.m = add nuw nsw i64 %.0.i7, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %i.j
  br i1 %exitcond.not, label %append_ast_comprehensions.exit, label %bb.f, !llvm.loop !6

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %.0.i7 = phi i64 [ 0, %.lr.ph ], [ %i.m, %bb.e ] ; 2 uses
  %i.n = getelementptr [8 x i8], ptr %i.l, i64 %.0.i7
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !40
  %i.p = tail call fastcc i32 @append_ast_comprehension(ptr noundef nonnull %0, ptr noundef %i.o), !inline_history !80
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %append_ast_comprehensions.exit.thread, label %bb.e

append_ast_comprehensions.exit:                   ; preds = %bb.e, %bb.c, %bb.d
  %i.r = tail call i32 @PyUnicodeWriter_WriteChar(ptr noundef nonnull %0, i32 noundef 41) #3
  br label %append_ast_comprehensions.exit.thread

append_ast_comprehensions.exit.thread:            ; preds = %bb.f, %bb.b, %bb.a, %append_ast_comprehensions.exit
  %.0 = phi i32 [ %i.r, %append_ast_comprehensions.exit ], [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.f ]
  ret i32 %.0
}

declare i32 @PyUnicodeWriter_WriteStr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @append_ast_constant(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !38
  %.not = icmp eq ptr %.val, @PyTuple_Type
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 16
  %.val19 = load i64, ptr %i.b, align 8, !tbaa !83 ; 3 uses
  %i.c = tail call i32 @PyUnicodeWriter_WriteChar(ptr noundef nonnull %0, i32 noundef 40) #3
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.e = icmp sgt i64 %.val19, 0
  br i1 %i.e, label %bb.c, label %._crit_edge.thread25

bb.c:                                             ; preds = %.preheader
  %i.f = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.g = tail call fastcc i32 @append_ast_constant(ptr noundef %0, ptr noundef %.pre)
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %exitcond.peel.not = icmp eq i64 %.val19, 1
  br i1 %exitcond.peel.not, label %._crit_edge.thread, label %.peel.next

bb.e:                                             ; preds = %bb.f
  %i.i = add nuw nsw i64 %.01721, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.i, %.val19
  br i1 %exitcond.not, label %._crit_edge.thread25, label %.peel.next, !llvm.loop !81

.peel.next:                                       ; preds = %bb.d, %bb.e
  %.01721 = phi i64 [ %i.i, %bb.e ], [ 1, %bb.d ] ; 2 uses
  %i.j = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.28, i64 noundef -1) #3
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.peel.next
  %i.l = getelementptr [8 x i8], ptr %i.f, i64 %.01721
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.n = tail call fastcc i32 @append_ast_constant(ptr noundef %0, ptr noundef %i.m)
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %.loopexit, label %bb.e

._crit_edge.thread:                               ; preds = %bb.d
  %i.p = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.51, i64 noundef -1) #3
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %.loopexit, label %._crit_edge.thread25

._crit_edge.thread25:                             ; preds = %bb.e, %.preheader, %._crit_edge.thread
  %i.r = tail call i32 @PyUnicodeWriter_WriteChar(ptr noundef nonnull %0, i32 noundef 41) #3
  br label %.loopexit

bb.g:                                             ; preds = %bb.a
  %i.s = tail call fastcc i32 @append_repr(ptr noundef %0, ptr noundef nonnull %1)
  br label %.loopexit

.loopexit:                                        ; preds = %.peel.next, %bb.f, %bb.c, %._crit_edge.thread25, %bb.b, %._crit_edge.thread, %bb.g
  %.1 = phi i32 [ %i.s, %bb.g ], [ %i.r, %._crit_edge.thread25 ], [ -1, %bb.b ], [ -1, %._crit_edge.thread ], [ -1, %bb.c ], [ -1, %bb.f ], [ -1, %.peel.next ]
  ret i32 %.1
}

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef range(i32 -1, 1) i32 @append_ast_args(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !35     ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]    ; 7 uses
  %i.e = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34   ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i64, ptr %i.f, align 8, !tbaa !25
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.i = phi i64 [ %i.h, %bb.d ], [ 0, %bb.c ]
  %i.j = getelementptr i8, ptr %1, i64 48         ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !87   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load i64, ptr %i.k, align 8, !tbaa !25
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.n = phi i64 [ %i.m, %bb.f ], [ 0, %bb.e ]
  %i.o = add i64 %i.i, %i.d                       ; 4 uses
  %invariant.op = sub i64 %i.n, %i.o              ; 3 uses
  %2 = icmp sgt i64 %i.o, 0
  br i1 %2, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.p = icmp sgt i64 %i.d, 0
  br i1 %i.p, label %bb.l, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.q = getelementptr i8, ptr %i.f, i64 16
  %i.r = sub i64 0, %i.d
  %i.s = getelementptr [8 x i8], ptr %i.q, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !88   ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !90
  %i.v = tail call i32 @PyUnicodeWriter_WriteStr(ptr noundef nonnull %0, ptr noundef %i.u) #3, !inline_history !84
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %append_ast_arg.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr i8, ptr %i.t, i64 8        ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !91
  %.not.i99.peel = icmp eq ptr %i.y, null
  br i1 %.not.i99.peel, label %append_ast_arg.exit.peel, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.27, i64 noundef -1) #3
  %i.aa = icmp eq i32 %i.z, -1
  br i1 %i.aa, label %append_ast_arg.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !91
  %i.ac = tail call fastcc i32 @append_ast_expr(ptr noundef nonnull %0, ptr noundef %i.ab, i32 noundef 1), !inline_history !84
  %i.ad = icmp eq i32 %i.ac, -1
  br i1 %i.ad, label %append_ast_arg.exit.thread, label %append_ast_arg.exit.peel

bb.l:                                             ; preds = %.lr.ph
  %i.ae = getelementptr i8, ptr %i.a, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !88 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !90
  %i.ah = tail call i32 @PyUnicodeWriter_WriteStr(ptr noundef nonnull %0, ptr noundef %i.ag) #3, !inline_history !84
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %append_ast_arg.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr i8, ptr %i.af, i64 8      ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !91
  %.not.i.peel = icmp eq ptr %i.ak, null
  br i1 %.not.i.peel, label %append_ast_arg.exit.peel, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.27, i64 noundef -1) #3
  %i.am = icmp eq i32 %i.al, -1
  br i1 %i.am, label %append_ast_arg.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !91
  %i.ao = tail call fastcc i32 @append_ast_expr(ptr noundef nonnull %0, ptr noundef %i.an, i32 noundef 1), !inline_history !84
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %append_ast_arg.exit.thread, label %append_ast_arg.exit.peel

append_ast_arg.exit.peel:                         ; preds = %bb.o, %bb.m, %bb.k, %bb.i
  %i.aq = icmp sgt i64 %invariant.op, -1
  br i1 %i.aq, label %bb.p, label %bb.r

bb.p:                                             ; preds = %append_ast_arg.exit.peel
  %i.ar = tail call i32 @PyUnicodeWriter_WriteChar(ptr noundef nonnull %0, i32 noundef 61) #3
  %i.as = icmp eq i32 %i.ar, -1
  br i1 %i.as, label %append_ast_arg.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = load ptr, ptr %i.j, align 8, !tbaa !87
  %i.au = getelementptr i8, ptr %i.at, i64 16
  %i.av = getelementptr [8 x i8], ptr %i.au, i64 %invariant.op
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !27
  %i.ax = tail call fastcc i32 @append_ast_expr(ptr noundef %0, ptr noundef %i.aw, i32 noundef 1)
  %i.ay = icmp eq i32 %i.ax, -1
  br i1 %i.ay, label %append_ast_arg.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q, %append_ast_arg.exit.peel
  %i.az = icmp eq i64 %i.d, 1
  br i1 %i.az, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ba = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.29, i64 noundef -1) #3
  %i.bb = icmp eq i32 %i.ba, -1
  br i1 %i.bb, label %append_ast_arg.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %exitcond.peel.not = icmp eq i64 %i.o, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %bb.t, %bb.ah
  %.072116 = phi i64 [ %i.cr, %bb.ah ], [ 1, %bb.t ] ; 5 uses
  %i.bc = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.28, i64 noundef -1) #3
  %i.bd = icmp eq i32 %i.bc, -1
  br i1 %i.bd, label %append_ast_arg.exit.thread, label %bb.u

bb.u:                                             ; preds = %.peel.next
  %i.be = icmp slt i64 %.072116, %i.d
  br i1 %i.be, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.bf = load ptr, ptr %1, align 8, !tbaa !35
  %i.bg = getelementptr i8, ptr %i.bf, i64 16
  %i.bh = getelementptr [8 x i8], ptr %i.bg, i64 %.072116
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !88 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !90
  %i.bk = tail call i32 @PyUnicodeWriter_WriteStr(ptr noundef nonnull %0, ptr noundef %i.bj) #3, !inline_history !84
  %i.bl = icmp slt i32 %i.bk, 0
  br i1 %i.bl, label %append_ast_arg.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bm = getelementptr i8, ptr %i.bi, i64 8      ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !91
  %.not.i = icmp eq ptr %i.bn, null
  br i1 %.not.i, label %append_ast_arg.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bo = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.27, i64 noundef -1) #3
  %i.bp = icmp eq i32 %i.bo, -1
  br i1 %i.bp, label %append_ast_arg.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !91
  %i.br = tail call fastcc i32 @append_ast_expr(ptr noundef nonnull %0, ptr noundef %i.bq, i32 noundef 1), !inline_history !84
  %i.bs = icmp eq i32 %i.br, -1
  br i1 %i.bs, label %append_ast_arg.exit.thread, label %append_ast_arg.exit

bb.z:                                             ; preds = %bb.u
  %i.bt = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.bu = getelementptr i8, ptr %i.bt, i64 16
  %i.bv = sub i64 %.072116, %i.d
  %i.bw = getelementptr [8 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !88 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !90
  %i.bz = tail call i32 @PyUnicodeWriter_WriteStr(ptr noundef nonnull %0, ptr noundef %i.by) #3, !inline_history !84
  %i.ca = icmp slt i32 %i.bz, 0
  br i1 %i.ca, label %append_ast_arg.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr i8, ptr %i.bx, i64 8      ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !91
  %.not.i99 = icmp eq ptr %i.cc, null
  br i1 %.not.i99, label %append_ast_arg.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cd = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.27, i64 noundef -1) #3
  %i.ce = icmp eq i32 %i.cd, -1
  br i1 %i.ce, label %append_ast_arg.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cf = load ptr, ptr %i.cb, align 8, !tbaa !91
  %i.cg = tail call fastcc i32 @append_ast_expr(ptr noundef nonnull %0, ptr noundef %i.cf, i32 noundef 1), !inline_history !84
  %i.ch = icmp eq i32 %i.cg, -1
  br i1 %i.ch, label %append_ast_arg.exit.thread, label %append_ast_arg.exit

append_ast_arg.exit:                              ; preds = %bb.ac, %bb.aa, %bb.y, %bb.w
  %.reass = add i64 %.072116, %invariant.op       ; 2 uses
  %i.ci = icmp sgt i64 %.reass, -1
  br i1 %i.ci, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %append_ast_arg.exit
  %i.cj = tail call i32 @PyUnicodeWriter_WriteChar(ptr noundef nonnull %0, i32 noundef 61) #3
  %i.ck = icmp eq i32 %i.cj, -1
  br i1 %i.ck, label %append_ast_arg.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cl = load ptr, ptr %i.j, align 8, !tbaa !87
  %i.cm = getelementptr i8, ptr %i.cl, i64 16
  %i.cn = getelementptr [8 x i8], ptr %i.cm, i64 %.reass
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !27
  %i.cp = tail call fastcc i32 @append_ast_expr(ptr noundef %0, ptr noundef %i.co, i32 noundef 1)
  %i.cq = icmp eq i32 %i.cp, -1
  br i1 %i.cq, label %append_ast_arg.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae, %append_ast_arg.exit
  %i.cr = add nuw nsw i64 %.072116, 1             ; 3 uses
  %i.cs = icmp eq i64 %i.cr, %i.d
  br i1 %i.cs, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ct = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.29, i64 noundef -1) #3
  %i.cu = icmp eq i32 %i.ct, -1
  br i1 %i.cu, label %append_ast_arg.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %exitcond.not = icmp eq i64 %i.cr, %i.o
  br i1 %exitcond.not, label %._crit_edge, label %.peel.next, !llvm.loop !85

._crit_edge:                                      ; preds = %bb.ah, %bb.t, %bb.g
  %.073.lcssa = phi i8 [ 1, %bb.g ], [ 0, %bb.t ], [ 0, %bb.ah ] ; 3 uses
  %i.cv = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !92
  %.not = icmp eq ptr %i.cw, null
  br i1 %.not, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %._crit_edge
  %i.cx = getelementptr i8, ptr %1, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !93 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %.critedge, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !25
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %.critedge, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge
  %3 = trunc nuw i8 %.073.lcssa to i1
  br i1 %3, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dc = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.28, i64 noundef -1) #3
  %i.dd = icmp eq i32 %i.dc, -1
  br i1 %i.dd, label %append_ast_arg.exit.thread, label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.de = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.30, i64 noundef -1) #3
  %i.df = icmp eq i32 %i.de, -1
  br i1 %i.df, label %append_ast_arg.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dg = load ptr, ptr %i.cv, align 8, !tbaa !92 ; 3 uses
  %.not92 = icmp eq ptr %i.dg, null
  br i1 %.not92, label %.critedge, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !90
  %i.di = tail call i32 @PyUnicodeWriter_WriteStr(ptr noundef nonnull %0, ptr noundef %i.dh) #3, !inline_history !84
  %i.dj = icmp slt i32 %i.di, 0
  br i1 %i.dj, label %append_ast_arg.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dk = getelementptr i8, ptr %i.dg, i64 8      ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !91
  %.not.i102 = icmp eq ptr %i.dl, null
  br i1 %.not.i102, label %.critedge, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dm = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.27, i64 noundef -1) #3
  %i.dn = icmp eq i32 %i.dm, -1
  br i1 %i.dn, label %append_ast_arg.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.do = load ptr, ptr %i.dk, align 8, !tbaa !91
  %i.dp = tail call fastcc i32 @append_ast_expr(ptr noundef nonnull %0, ptr noundef %i.do, i32 noundef 1), !inline_history !84
  %i.dq = icmp eq i32 %i.dp, -1
  br i1 %i.dq, label %append_ast_arg.exit.thread, label %.critedge

.critedge:                                        ; preds = %bb.ar, %bb.ap, %bb.ai, %bb.an, %bb.aj
  %.174 = phi i8 [ %.073.lcssa, %bb.ai ], [ 0, %bb.an ], [ %.073.lcssa, %bb.aj ], [ 0, %bb.ap ], [ 0, %bb.ar ]
  %i.dr = getelementptr i8, ptr %1, i64 24        ; 3 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !93 ; 3 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.critedge
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !25
  br label %bb.at

bb.at:                                            ; preds = %.critedge, %bb.as
  %i.dv = phi i64 [ %i.du, %bb.as ], [ 0, %.critedge ] ; 4 uses
  %i.dw = getelementptr i8, ptr %1, i64 32        ; 3 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !94 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !25
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.ea = phi i64 [ %i.dz, %bb.au ], [ 0, %bb.at ]
  %4 = trunc nuw i8 %.174 to i1                   ; 2 uses
  %invariant.op117 = sub i64 %i.ea, %i.dv         ; 3 uses
  %i.eb = icmp sgt i64 %i.dv, 0
  br i1 %i.eb, label %.lr.ph122.preheader, label %._crit_edge123

.lr.ph122.preheader:                              ; preds = %bb.av
  br i1 %4, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph122.preheader
  %i.ec = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.28, i64 noundef -1) #3
  %i.ed = icmp eq i32 %i.ec, -1
  br i1 %i.ed, label %append_ast_arg.exit.thread, label %._crit_edge131.a

._crit_edge131.a:                                 ; preds = %bb.aw
  %.pre = load ptr, ptr %i.dr, align 8, !tbaa !93
  br label %bb.ax

bb.ax:                                            ; preds = %._crit_edge131.a, %.lr.ph122.preheader
  %i.ee = phi ptr [ %.pre, %._crit_edge131.a ], [ %i.ds, %.lr.ph122.preheader ]
  %i.ef = getelementptr i8, ptr %i.ee, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !88 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !90
  %i.ei = tail call i32 @PyUnicodeWriter_WriteStr(ptr noundef nonnull %0, ptr noundef %i.eh) #3, !inline_history !84
  %i.ej = icmp slt i32 %i.ei, 0
  br i1 %i.ej, label %append_ast_arg.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ek = getelementptr i8, ptr %i.eg, i64 8      ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !91
  %.not.i105.peel = icmp eq ptr %i.el, null
  br i1 %.not.i105.peel, label %append_ast_arg.exit107.peel, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.em = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.27, i64 noundef -1) #3
  %i.en = icmp eq i32 %i.em, -1
  br i1 %i.en, label %append_ast_arg.exit.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.eo = load ptr, ptr %i.ek, align 8, !tbaa !91
  %i.ep = tail call fastcc i32 @append_ast_expr(ptr noundef nonnull %0, ptr noundef %i.eo, i32 noundef 1), !inline_history !84
  %i.eq = icmp eq i32 %i.ep, -1
  br i1 %i.eq, label %append_ast_arg.exit.thread, label %append_ast_arg.exit107.peel

append_ast_arg.exit107.peel:                      ; preds = %bb.ba, %bb.ay
  %i.er = icmp sgt i64 %invariant.op117, -1
  br i1 %i.er, label %bb.bb, label %.critedge98.peel

bb.bb:                                            ; preds = %append_ast_arg.exit107.peel
  %i.es = load ptr, ptr %i.dw, align 8, !tbaa !94
  %i.et = getelementptr i8, ptr %i.es, i64 16
  %i.eu = getelementptr [8 x i8], ptr %i.et, i64 %invariant.op117
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !27 ; 2 uses
  %.not94.peel = icmp eq ptr %i.ev, null
  br i1 %.not94.peel, label %.critedge98.peel, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ew = tail call i32 @PyUnicodeWriter_WriteChar(ptr noundef nonnull %0, i32 noundef 61) #3
  %i.ex = icmp eq i32 %i.ew, -1
  br i1 %i.ex, label %append_ast_arg.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ey = tail call fastcc i32 @append_ast_expr(ptr noundef %0, ptr noundef nonnull %i.ev, i32 noundef 1)
  %i.ez = icmp eq i32 %i.ey, -1
  br i1 %i.ez, label %append_ast_arg.exit.thread, label %.critedge98.peel

.critedge98.peel:                                 ; preds = %bb.bd, %bb.bb, %append_ast_arg.exit107.peel
  %exitcond127.peel.not = icmp eq i64 %i.dv, 1
  br i1 %exitcond127.peel.not, label %._crit_edge123, label %.lr.ph122.peel.next

.lr.ph122.peel.next:                              ; preds = %.critedge98.peel, %.critedge98
  %.1120 = phi i64 [ %i.fz, %.critedge98 ], [ 1, %.critedge98.peel ] ; 3 uses
  %i.fa = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.28, i64 noundef -1) #3
  %i.fb = icmp eq i32 %i.fa, -1
  br i1 %i.fb, label %append_ast_arg.exit.thread, label %._crit_edge132

._crit_edge132:                                   ; preds = %.lr.ph122.peel.next
  %i.fc = load ptr, ptr %i.dr, align 8, !tbaa !93
  %i.fd = getelementptr i8, ptr %i.fc, i64 16
  %i.fe = getelementptr [8 x i8], ptr %i.fd, i64 %.1120
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !88 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !90
  %i.fh = tail call i32 @PyUnicodeWriter_WriteStr(ptr noundef nonnull %0, ptr noundef %i.fg) #3, !inline_history !84
  %i.fi = icmp slt i32 %i.fh, 0
  br i1 %i.fi, label %append_ast_arg.exit.thread, label %bb.be

bb.be:                                            ; preds = %._crit_edge132
  %i.fj = getelementptr i8, ptr %i.ff, i64 8      ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !91
  %.not.i105 = icmp eq ptr %i.fk, null
  br i1 %.not.i105, label %append_ast_arg.exit107, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fl = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.27, i64 noundef -1) #3
  %i.fm = icmp eq i32 %i.fl, -1
  br i1 %i.fm, label %append_ast_arg.exit.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fn = load ptr, ptr %i.fj, align 8, !tbaa !91
  %i.fo = tail call fastcc i32 @append_ast_expr(ptr noundef nonnull %0, ptr noundef %i.fn, i32 noundef 1), !inline_history !84
  %i.fp = icmp eq i32 %i.fo, -1
  br i1 %i.fp, label %append_ast_arg.exit.thread, label %append_ast_arg.exit107

append_ast_arg.exit107:                           ; preds = %bb.bg, %bb.be
  %.reass118 = add i64 %.1120, %invariant.op117   ; 2 uses
  %i.fq = icmp sgt i64 %.reass118, -1
  br i1 %i.fq, label %bb.bh, label %.critedge98

bb.bh:                                            ; preds = %append_ast_arg.exit107
  %i.fr = load ptr, ptr %i.dw, align 8, !tbaa !94
  %i.fs = getelementptr i8, ptr %i.fr, i64 16
  %i.ft = getelementptr [8 x i8], ptr %i.fs, i64 %.reass118
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !27 ; 2 uses
  %.not94 = icmp eq ptr %i.fu, null
  br i1 %.not94, label %.critedge98, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fv = tail call i32 @PyUnicodeWriter_WriteChar(ptr noundef nonnull %0, i32 noundef 61) #3
  %i.fw = icmp eq i32 %i.fv, -1
  br i1 %i.fw, label %append_ast_arg.exit.thread, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fx = tail call fastcc i32 @append_ast_expr(ptr noundef %0, ptr noundef nonnull %i.fu, i32 noundef 1)
  %i.fy = icmp eq i32 %i.fx, -1
  br i1 %i.fy, label %append_ast_arg.exit.thread, label %.critedge98

.critedge98:                                      ; preds = %bb.bh, %bb.bj, %append_ast_arg.exit107
  %i.fz = add nuw nsw i64 %.1120, 1               ; 2 uses
  %exitcond127.not = icmp eq i64 %i.fz, %i.dv
  br i1 %exitcond127.not, label %._crit_edge123, label %.lr.ph122.peel.next, !llvm.loop !86

._crit_edge123:                                   ; preds = %.critedge98, %.critedge98.peel, %bb.av
  %.2.lcssa = phi i1 [ %4, %bb.av ], [ false, %.critedge98.peel ], [ false, %.critedge98 ]
  %i.ga = getelementptr i8, ptr %1, i64 40        ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !95
  %.not93 = icmp eq ptr %i.gb, null
  br i1 %.not93, label %append_ast_arg.exit.thread, label %bb.bk

bb.bk:                                            ; preds = %._crit_edge123
  br i1 %.2.lcssa, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gc = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.28, i64 noundef -1) #3
  %i.gd = icmp eq i32 %i.gc, -1
  br i1 %i.gd, label %append_ast_arg.exit.thread, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.ge = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.31, i64 noundef -1) #3
  %i.gf = icmp eq i32 %i.ge, -1
  br i1 %i.gf, label %append_ast_arg.exit.thread, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gg = load ptr, ptr %i.ga, align 8, !tbaa !95 ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !90
  %i.gi = tail call i32 @PyUnicodeWriter_WriteStr(ptr noundef nonnull %0, ptr noundef %i.gh) #3, !inline_history !84
  %i.gj = icmp slt i32 %i.gi, 0
  br i1 %i.gj, label %append_ast_arg.exit148.thread, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gk = getelementptr i8, ptr %i.gg, i64 8      ; 2 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !91
  %.not.i147 = icmp eq ptr %i.gl, null
  br i1 %.not.i147, label %append_ast_arg.exit.thread, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gm = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.27, i64 noundef -1) #3, !inline_history !84
  %i.gn = icmp eq i32 %i.gm, -1
  br i1 %i.gn, label %append_ast_arg.exit148.thread, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.go = load ptr, ptr %i.gk, align 8, !tbaa !91
  %i.gp = tail call fastcc i32 @append_ast_expr(ptr noundef nonnull %0, ptr noundef %i.go, i32 noundef 1), !inline_history !84
  %i.gq = icmp eq i32 %i.gp, -1
  br i1 %i.gq, label %append_ast_arg.exit148.thread, label %append_ast_arg.exit.thread

append_ast_arg.exit148.thread:                    ; preds = %bb.bn, %bb.bp, %bb.bq
  br label %append_ast_arg.exit.thread

append_ast_arg.exit.thread:                       ; preds = %bb.ac, %bb.ab, %bb.z, %bb.y, %bb.x, %bb.v, %bb.ag, %bb.ae, %bb.ad, %.peel.next, %bb.bg, %bb.bf, %._crit_edge132, %bb.bi, %bb.bj, %.lr.ph122.peel.next, %._crit_edge123, %bb.bo, %bb.bq, %append_ast_arg.exit148.thread, %bb.h, %bb.j, %bb.k, %bb.l, %bb.n, %bb.o, %bb.p, %bb.q, %bb.s, %bb.aw, %bb.ax, %bb.az, %bb.ba, %bb.bc, %bb.bd, %bb.ar, %bb.aq, %bb.ao, %bb.bm, %bb.bl, %bb.am, %bb.al
  %.3 = phi i32 [ -1, %bb.aw ], [ -1, %bb.bl ], [ -1, %bb.bm ], [ 0, %bb.bq ], [ -1, %append_ast_arg.exit148.thread ], [ -1, %bb.ao ], [ -1, %bb.al ], [ -1, %bb.am ], [ -1, %bb.aq ], [ -1, %bb.ar ], [ -1, %bb.o ], [ -1, %bb.n ], [ -1, %bb.l ], [ -1, %bb.k ], [ -1, %bb.j ], [ -1, %bb.h ], [ -1, %bb.bd ], [ -1, %bb.bc ], [ -1, %bb.ba ], [ -1, %bb.az ], [ -1, %bb.ax ], [ -1, %bb.p ], [ 0, %bb.bo ], [ -1, %bb.s ], [ -1, %bb.q ], [ 0, %._crit_edge123 ], [ -1, %bb.bg ], [ -1, %.lr.ph122.peel.next ], [ -1, %bb.bj ], [ -1, %bb.bi ], [ -1, %._crit_edge132 ], [ -1, %bb.bf ], [ -1, %.peel.next ], [ -1, %bb.ad ], [ -1, %bb.ae ], [ -1, %bb.ag ], [ -1, %bb.v ], [ -1, %bb.x ], [ -1, %bb.y ], [ -1, %bb.z ], [ -1, %bb.ab ], [ -1, %bb.ac ]
  ret i32 %.3
}

declare i32 @PyUnicodeWriter_WriteChar(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @append_ast_comprehensions(ptr noundef nonnull %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 16
  %i.d = icmp sgt i64 %i.b, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

bb.c:                                             ; preds = %.lr.ph
  %i.e = add nuw nsw i64 %.010, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.e, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !6

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.010 = phi i64 [ %i.e, %bb.c ], [ 0, %bb.b ]   ; 2 uses
  %i.f = getelementptr [8 x i8], ptr %i.c, i64 %.010
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.h = tail call fastcc i32 @append_ast_comprehension(ptr noundef %0, ptr noundef %i.g)
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %.lr.ph, %bb.c, %bb.a, %bb.b
  %.08 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ -1, %.lr.ph ], [ 0, %bb.c ]
  ret i32 %.08
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @append_ast_comprehension(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !98
  %.not = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not, ptr @.str.35, ptr @.str.34
  %i.d = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef -1) #3
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !99
  %i.g = tail call fastcc i32 @append_ast_expr(ptr noundef %0, ptr noundef %i.f, i32 noundef 0)
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.36, i64 noundef -1) #3
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !100
  %i.m = tail call fastcc i32 @append_ast_expr(ptr noundef %0, ptr noundef %i.l, i32 noundef 2)
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !101  ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i64, ptr %i.p, align 8, !tbaa !25   ; 2 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %.lr.ph, label %.loopexit

bb.g:                                             ; preds = %bb.h
  %i.t = add nuw nsw i64 %.018, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, %i.r
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !96

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.018 = phi i64 [ %i.t, %bb.g ], [ 0, %bb.f ]   ; 2 uses
  %i.u = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.32, i64 noundef -1) #3
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !101
  %i.x = getelementptr i8, ptr %i.w, i64 16
  %i.y = getelementptr [8 x i8], ptr %i.x, i64 %.018
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !27
  %i.aa = tail call fastcc i32 @append_ast_expr(ptr noundef %0, ptr noundef %i.z, i32 noundef 2)
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %.loopexit, label %bb.g

.loopexit:                                        ; preds = %.lr.ph, %bb.h, %bb.g, %bb.e, %bb.f, %bb.d, %bb.c, %bb.b, %bb.a
  %.016 = phi i32 [ -1, %bb.d ], [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ], [ 0, %bb.f ], [ 0, %bb.e ], [ -1, %.lr.ph ], [ 0, %bb.g ], [ -1, %bb.h ]
  ret i32 %.016
}

declare i32 @PyUnicodeWriter_WriteUTF8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @append_repr(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PyObject_Repr(ptr noundef %1) #3 ; 7 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 8
  %.val24 = load ptr, ptr %i.b, align 8, !tbaa !38 ; 2 uses
  %.not26 = icmp eq ptr %.val24, @PyFloat_Type
  br i1 %.not26, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %1, i64 16
  %.val25 = load double, ptr %i.c, align 8, !tbaa !104
  %i.d = tail call double @llvm.fabs.f64(double %.val25) #4
  %i.e = fcmp oeq double %i.d, +inf
  br i1 %i.e, label %bb.e, label %bb.h

bb.d:                                             ; preds = %bb.b
  %.not27.old = icmp eq ptr %.val24, @PyComplex_Type
  br i1 %.not27.old, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = tail call ptr @PyUnicode_Replace(ptr noundef nonnull %i.a, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 87160), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60608), i64 noundef -1) #3 ; 2 uses
  %i.g = load i32, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %.not.i21 = icmp sgt i32 %i.g, -1
  br i1 %.not.i21, label %bb.f, label %Py_DECREF.exit22

bb.f:                                             ; preds = %bb.e
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr %i.a, align 8, !tbaa !20
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.g, label %Py_DECREF.exit22

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #3
  br label %Py_DECREF.exit22

Py_DECREF.exit22:                                 ; preds = %bb.e, %bb.f, %bb.g
  %.not20.not = icmp eq ptr %i.f, null
  br i1 %.not20.not, label %Py_DECREF.exit, label %bb.h

bb.h:                                             ; preds = %bb.c, %Py_DECREF.exit22, %bb.d
  %.116 = phi ptr [ %i.f, %Py_DECREF.exit22 ], [ %i.a, %bb.d ], [ %i.a, %bb.c ] ; 4 uses
  %i.j = tail call i32 @PyUnicodeWriter_WriteStr(ptr noundef nonnull %0, ptr noundef nonnull %.116) #3 ; 3 uses
  %i.k = load i32, ptr %.116, align 8, !tbaa !20  ; 2 uses
  %.not.i = icmp sgt i32 %i.k, -1
  br i1 %.not.i, label %bb.i, label %Py_DECREF.exit

end_hunk_0
