Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/ast_unparse?download=true
inline.NumInlined: 168
inline.NumDeleted: 41
begin_hunk_0_@append_ast_args:bb.a
  %i.fs = icmp eq i32 %i.fr, -1
  br i1 %i.fs, label %append_ast_arg.exit.thread, label %append_ast_arg.exit107

append_ast_arg.exit107:                           ; preds = %bb.bg, %bb.be
  %.reass118 = add i64 %.1120, %invariant.op117   ; 2 uses
  %i.ft = icmp sgt i64 %.reass118, -1
  br i1 %i.ft, label %bb.bh, label %.critedge98

bb.bh:                                            ; preds = %append_ast_arg.exit107
  %i.fu = load ptr, ptr %i.dy, align 8, !tbaa !94
  %i.fv = getelementptr i8, ptr %i.fu, i64 16
  %i.fw = getelementptr [8 x i8], ptr %i.fv, i64 %.reass118
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !27 ; 2 uses
  %.not94 = icmp eq ptr %i.fx, null
  br i1 %.not94, label %.critedge98, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fy = tail call i32 @PyUnicodeWriter_WriteChar(ptr noundef nonnull %0, i32 noundef 61) #3
  %i.fz = icmp eq i32 %i.fy, -1
  br i1 %i.fz, label %append_ast_arg.exit.thread, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ga = tail call fastcc i32 @append_ast_expr(ptr noundef %0, ptr noundef nonnull %i.fx, i32 noundef 1)
  %i.gb = icmp eq i32 %i.ga, -1
  br i1 %i.gb, label %append_ast_arg.exit.thread, label %.critedge98

.critedge98:                                      ; preds = %bb.bh, %bb.bj, %append_ast_arg.exit107
  %i.gc = add nuw nsw i64 %.1120, 1               ; 2 uses
  %exitcond127.not = icmp eq i64 %i.gc, %i.dx
  br i1 %exitcond127.not, label %._crit_edge123, label %.lr.ph122.peel.next, !llvm.loop !86

._crit_edge123:                                   ; preds = %.critedge98, %.critedge98.peel, %bb.av
  %.2.lcssa = phi i1 [ %i.ed, %bb.av ], [ false, %.critedge98.peel ], [ false, %.critedge98 ]
  %i.gd = getelementptr i8, ptr %1, i64 40        ; 2 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !95
  %.not93 = icmp eq ptr %i.ge, null
  br i1 %.not93, label %append_ast_arg.exit.thread, label %bb.bk

bb.bk:                                            ; preds = %._crit_edge123
  br i1 %.2.lcssa, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gf = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.28, i64 noundef -1) #3
  %i.gg = icmp eq i32 %i.gf, -1
  br i1 %i.gg, label %append_ast_arg.exit.thread, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.gh = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.31, i64 noundef -1) #3
  %i.gi = icmp eq i32 %i.gh, -1
  br i1 %i.gi, label %append_ast_arg.exit.thread, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gj = load ptr, ptr %i.gd, align 8, !tbaa !95 ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !90
  %i.gl = tail call i32 @PyUnicodeWriter_WriteStr(ptr noundef nonnull %0, ptr noundef %i.gk) #3, !inline_history !84
  %i.gm = icmp slt i32 %i.gl, 0
  br i1 %i.gm, label %append_ast_arg.exit148.thread, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gn = getelementptr i8, ptr %i.gj, i64 8      ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !91
  %.not.i147 = icmp eq ptr %i.go, null
  br i1 %.not.i147, label %append_ast_arg.exit.thread, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gp = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.27, i64 noundef -1) #3, !inline_history !84
  %i.gq = icmp eq i32 %i.gp, -1
  br i1 %i.gq, label %append_ast_arg.exit148.thread, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gr = load ptr, ptr %i.gn, align 8, !tbaa !91
  %i.gs = tail call fastcc i32 @append_ast_expr(ptr noundef nonnull %0, ptr noundef %i.gr, i32 noundef 1), !inline_history !84
  %i.gt = icmp eq i32 %i.gs, -1
  br i1 %i.gt, label %append_ast_arg.exit148.thread, label %append_ast_arg.exit.thread

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
  %.not27 = icmp eq ptr @PyFloat_Type, @PyComplex_Type
  %or.cond = or i1 %.not27, %i.e
  br i1 %or.cond, label %bb.e, label %bb.h

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

bb.i:                                             ; preds = %bb.h
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.l, ptr %.116, align 8, !tbaa !20
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %.116) #3
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.j, %bb.i, %bb.h, %bb.a, %Py_DECREF.exit22
  %.1 = phi i32 [ -1, %bb.a ], [ -1, %Py_DECREF.exit22 ], [ %i.j, %bb.h ], [ %i.j, %bb.i ], [ %i.j, %bb.j ]
  ret i32 %.1
}

declare ptr @PyObject_Repr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

declare ptr @PyUnicode_Replace(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @append_fstring_element(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !19
  switch i32 %i.a, label %bb.au [
    i32 22, label %bb.b
    i32 20, label %bb.i
    i32 21, label %bb.v
    i32 18, label %bb.ag
    i32 19, label %bb.an
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.d = tail call ptr @PyUnicode_Replace(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 110992), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 59968), i64 noundef -1) #3 ; 5 uses
  %.not.i6.i = icmp eq ptr %i.d, null
  br i1 %.not.i6.i, label %append_fstring_unicode.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @PyUnicode_Replace(ptr noundef nonnull %i.d, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111088), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 59920), i64 noundef -1) #3 ; 5 uses
  %i.f = load i32, ptr %i.d, align 8, !tbaa !20   ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.f, -1
  br i1 %.not.i.i.i, label %bb.d, label %escape_braces.exit.i

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.d, align 8, !tbaa !20
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %escape_braces.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #3
  br label %escape_braces.exit.i

escape_braces.exit.i:                             ; preds = %bb.e, %bb.d, %bb.c
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %append_fstring_unicode.exit, label %bb.f

bb.f:                                             ; preds = %escape_braces.exit.i
  %i.i = tail call i32 @PyUnicodeWriter_WriteStr(ptr noundef nonnull %0, ptr noundef nonnull %i.e) #3 ; 3 uses
  %i.j = load i32, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.j, -1
  br i1 %.not.i.i, label %bb.g, label %append_fstring_unicode.exit

bb.g:                                             ; preds = %bb.f
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.e, align 8, !tbaa !20
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.h, label %append_fstring_unicode.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #3
  br label %append_fstring_unicode.exit

bb.i:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20   ; 3 uses
  %i.o = tail call ptr @PyUnicodeWriter_Create(i64 noundef 256) #3, !inline_history !105 ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %append_fstring_unicode.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = icmp eq ptr %i.n, null
  br i1 %i.q, label %build_ftstring_body.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = load i64, ptr %i.n, align 8, !tbaa !25   ; 2 uses
  %.not.i15.i51 = icmp sgt i64 %i.r, 0
  br i1 %.not.i15.i51, label %.lr.ph53, label %build_ftstring_body.exit.i

.lr.ph53:                                         ; preds = %bb.k
  %i.s = getelementptr i8, ptr %i.n, i64 16
  br label %bb.m

bb.l:                                             ; preds = %bb.m
  %i.t = add nuw nsw i64 %.0.i.i52, 1             ; 2 uses
  %exitcond54.not = icmp eq i64 %i.t, %i.r
  br i1 %exitcond54.not, label %build_ftstring_body.exit.i, label %bb.m, !llvm.loop !1

bb.m:                                             ; preds = %.lr.ph53, %bb.l
  %.0.i.i52 = phi i64 [ 0, %.lr.ph53 ], [ %i.t, %bb.l ] ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %i.s, i64 %.0.i.i52
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !27
  %i.w = tail call fastcc i32 @append_fstring_element(ptr noundef %i.o, ptr noundef %i.v, i1 noundef zeroext %2), !inline_history !105
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %bb.n, label %bb.l

bb.n:                                             ; preds = %bb.m
  tail call void @PyUnicodeWriter_Discard(ptr noundef nonnull %i.o) #3, !inline_history !105
  br label %append_fstring_unicode.exit

build_ftstring_body.exit.i:                       ; preds = %bb.l, %bb.j, %bb.k
  %i.y = tail call ptr @PyUnicodeWriter_Finish(ptr noundef nonnull %i.o) #3, !inline_history !105 ; 6 uses
  %.not.i12 = icmp eq ptr %i.y, null
  br i1 %.not.i12, label %append_fstring_unicode.exit, label %bb.o

bb.o:                                             ; preds = %build_ftstring_body.exit.i
  br i1 %2, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.z = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.52, i64 noundef -1) #3, !inline_history !2
  %.not13.i = icmp eq i32 %i.z, -1
  br i1 %.not13.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aa = tail call fastcc i32 @append_repr(ptr noundef nonnull %0, ptr noundef nonnull %i.y), !inline_history !2
  %.not14.i = icmp eq i32 %i.aa, -1
  %spec.select.i = sext i1 %.not14.i to i32
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.ab = tail call i32 @PyUnicodeWriter_WriteStr(ptr noundef nonnull %0, ptr noundef nonnull %i.y) #3, !inline_history !2
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.0.i13 = phi i32 [ %i.ab, %bb.r ], [ -1, %bb.p ], [ %spec.select.i, %bb.q ] ; 3 uses
  %i.ac = load i32, ptr %i.y, align 8, !tbaa !20  ; 2 uses
  %.not.i.i14 = icmp sgt i32 %i.ac, -1
  br i1 %.not.i.i14, label %bb.t, label %append_fstring_unicode.exit

bb.t:                                             ; preds = %bb.s
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.ad, ptr %i.y, align 8, !tbaa !20
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.u, label %append_fstring_unicode.exit

bb.u:                                             ; preds = %bb.t
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.y) #3, !inline_history !2
  br label %append_fstring_unicode.exit

bb.v:                                             ; preds = %bb.a
  %i.af = getelementptr i8, ptr %1, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !20 ; 3 uses
  %i.ah = tail call ptr @PyUnicodeWriter_Create(i64 noundef 256) #3, !inline_history !3 ; 4 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %append_fstring_unicode.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aj = icmp eq ptr %i.ag, null
  br i1 %i.aj, label %build_ftstring_body.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ak = load i64, ptr %i.ag, align 8, !tbaa !25 ; 2 uses
end_hunk_0
