inline.NumInlined: 135
inline.NumDeleted: 50
begin_hunk_0_@PyCodec_ReplaceErrors:bb.a
_PyCodec_ReplaceUnicodeDecodeError.exit:          ; preds = %PyObject_TypeCheck.exit13.thread, %bb.g, %_PyUnicode_DATA.exit.i.i
  %.1.i16 = phi ptr [ null, %PyObject_TypeCheck.exit13.thread ], [ %i.ah, %_PyUnicode_DATA.exit.i.i ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  br label %bb.q

bb.k:                                             ; preds = %PyObject_TypeCheck.exit13
  %i.ai = load ptr, ptr @PyExc_UnicodeTranslateError, align 8, !tbaa !14 ; 2 uses
  %.val = load ptr, ptr %i.i, align 8, !tbaa !113 ; 2 uses
  %.not.i17 = icmp eq ptr %.val, %i.ai
  br i1 %.not.i17, label %PyObject_TypeCheck.exit18.thread, label %PyObject_TypeCheck.exit18

PyObject_TypeCheck.exit18:                        ; preds = %bb.k
  %i.aj = tail call i32 @PyType_IsSubtype(ptr noundef %.val, ptr noundef %i.ai) #10
  %.not32 = icmp eq i32 %i.aj, 0
  br i1 %.not32, label %bb.p, label %PyObject_TypeCheck.exit18.thread

PyObject_TypeCheck.exit18.thread:                 ; preds = %bb.k, %PyObject_TypeCheck.exit18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.ak = call i32 @_PyUnicodeError_GetParams(ptr noundef nonnull %0, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 0) #10
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %_PyCodec_ReplaceUnicodeTranslateError.exit, label %bb.l

bb.l:                                             ; preds = %PyObject_TypeCheck.exit18.thread
  %i.am = load i64, ptr %i.c, align 8, !tbaa !124 ; 10 uses
  %i.an = call ptr @PyUnicode_New(i64 noundef %i.am, i32 noundef 65533) #10 ; 5 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_PyCodec_ReplaceUnicodeTranslateError.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr i8, ptr %i.an, i64 32
  %.val.i.i.i19 = load i32, ptr %i.ap, align 8    ; 2 uses
  %i.aq = and i32 %.val.i.i.i19, 32
  %.not.i.i.i20 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i20, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = and i32 %.val.i.i.i19, 64
  %.not.i.i.i.i21 = icmp eq i32 %i.ar, 0
  %.0.v.i.i.i.i22 = select i1 %.not.i.i.i.i21, i64 56, i64 40
  %.0.i.i.i.i23 = getelementptr i8, ptr %i.an, i64 %.0.v.i.i.i.i22
  br label %_PyUnicode_DATA.exit.i.i24

bb.o:                                             ; preds = %bb.m
  %i.as = getelementptr i8, ptr %i.an, i64 56
  %.val4.i.i.i27 = load ptr, ptr %i.as, align 8, !tbaa !110
  br label %_PyUnicode_DATA.exit.i.i24

_PyUnicode_DATA.exit.i.i24:                       ; preds = %bb.o, %bb.n
  %.0.i.i.i25 = phi ptr [ %.0.i.i.i.i23, %bb.n ], [ %.val4.i.i.i27, %bb.o ] ; 3 uses
  %i.at = icmp sgt i64 %i.am, 0
  br i1 %i.at, label %iter.check, label %.loopexit.i

iter.check:                                       ; preds = %_PyUnicode_DATA.exit.i.i24
  %min.iters.check = icmp ult i64 %i.am, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check40 = icmp ult i64 %i.am, 16
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.am, 12
  %n.vec = and i64 %i.am, 9223372036854775792     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = getelementptr [2 x i8], ptr %.0.i.i.i25, i64 %index ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 16
  store <8 x i16> splat (i16 -3), ptr %i.au, align 2, !tbaa !125
  store <8 x i16> splat (i16 -3), ptr %i.av, align 2, !tbaa !125
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !126

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !129

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec42 = and i64 %i.am, 9223372036854775804   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index43 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next44, %vec.epilog.vector.body ] ; 2 uses
  %i.ax = getelementptr [2 x i8], ptr %.0.i.i.i25, i64 %index43
  store <4 x i16> splat (i16 -3), ptr %i.ax, align 2, !tbaa !125
  %index.next44 = add nuw i64 %index43, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next44, %n.vec42
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !130

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n45 = icmp eq i64 %i.am, %n.vec42
  br i1 %cmp.n45, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.011.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec42, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.011.i.i = phi i64 [ %i.ba, %.lr.ph.i.i ], [ %.011.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.az = getelementptr [2 x i8], ptr %.0.i.i.i25, i64 %.011.i.i
  store i16 -3, ptr %i.az, align 2, !tbaa !125
  %i.ba = add nuw nsw i64 %.011.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ba, %i.am
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !131

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %_PyUnicode_DATA.exit.i.i24
  %i.bb = load i64, ptr %i.b, align 8, !tbaa !124
  %i.bc = call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.14, ptr noundef nonnull %i.an, i64 noundef %i.bb) #10
  br label %_PyCodec_ReplaceUnicodeTranslateError.exit

_PyCodec_ReplaceUnicodeTranslateError.exit:       ; preds = %PyObject_TypeCheck.exit18.thread, %bb.l, %.loopexit.i
  %.1.i26 = phi ptr [ null, %PyObject_TypeCheck.exit18.thread ], [ %i.bc, %.loopexit.i ], [ null, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.q

bb.p:                                             ; preds = %PyObject_TypeCheck.exit18
  %i.bd = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !14
  %i.be = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bd, ptr noundef nonnull @.str.47, ptr noundef nonnull %0) #10 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_PyCodec_ReplaceUnicodeTranslateError.exit, %_PyCodec_ReplaceUnicodeDecodeError.exit, %_PyCodec_ReplaceUnicodeEncodeError.exit
  %.0 = phi ptr [ %.1.i, %_PyCodec_ReplaceUnicodeEncodeError.exit ], [ %.1.i16, %_PyCodec_ReplaceUnicodeDecodeError.exit ], [ %.1.i26, %_PyCodec_ReplaceUnicodeTranslateError.exit ], [ null, %bb.p ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyCodec_XMLCharRefReplaceErrors(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = load ptr, ptr @PyExc_UnicodeEncodeError, align 8, !tbaa !14 ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.g, align 8, !tbaa !113 ; 2 uses
  %.not.i42 = icmp eq ptr %.val, %i.f
  br i1 %.not.i42, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.a
  %i.h = tail call i32 @PyType_IsSubtype(ptr noundef %.val, ptr noundef %i.f) #10
  %.not72 = icmp eq i32 %i.h, 0
  br i1 %.not72, label %bb.b, label %PyObject_TypeCheck.exit.thread

bb.b:                                             ; preds = %PyObject_TypeCheck.exit
  %i.i = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !14
  %i.j = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.i, ptr noundef nonnull @.str.47, ptr noundef nonnull %0) #10 ; 0 uses
  br label %bb.as

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.a, %PyObject_TypeCheck.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  %i.k = call i32 @_PyUnicodeError_GetParams(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef 0) #10
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %Py_DECREF.exit40, label %bb.c

bb.c:                                             ; preds = %PyObject_TypeCheck.exit.thread
  %i.m = load i64, ptr %i.e, align 8, !tbaa !124
  %i.n = icmp sgt i64 %i.m, 922337203685477580
  %.pre = load i64, ptr %i.c, align 8, !tbaa !124 ; 13 uses
  br i1 %i.n, label %bb.d, label %._crit_edge118

._crit_edge118:                                   ; preds = %bb.c
  %.pre119 = load i64, ptr %i.d, align 8, !tbaa !124
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = add i64 %.pre, 922337203685477580
  %i.p = load i64, ptr %i.b, align 8, !tbaa !124
  %i.q = call i64 @llvm.smin.i64(i64 %i.o, i64 %i.p) ; 3 uses
  store i64 %i.q, ptr %i.d, align 8, !tbaa !124
  %i.r = sub i64 %i.q, %.pre
  %i.s = call i64 @llvm.smax.i64(i64 %i.r, i64 0)
  store i64 %i.s, ptr %i.e, align 8, !tbaa !124
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge118, %bb.d
  %i.t = phi i64 [ %.pre119, %._crit_edge118 ], [ %i.q, %bb.d ] ; 7 uses
  %i.u = icmp slt i64 %.pre, %i.t
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %i.w = getelementptr i8, ptr %i.v, i64 32
  %i.x = load i32, ptr %i.w, align 8
  %.fr106 = freeze i32 %i.x                       ; 3 uses
  %1 = lshr i32 %.fr106, 2
  %i.y = and i32 %1, 7                            ; 2 uses
  %i.z = and i32 %.fr106, 32
  %.not.i19.i = icmp eq i32 %i.z, 0
  %i.aa = and i32 %.fr106, 64
  %.not.i.i12.i = icmp eq i32 %i.aa, 0
  %.0.v.i.i13.i = select i1 %.not.i.i12.i, i64 56, i64 40
  %.0.i.i14.i = getelementptr i8, ptr %i.v, i64 %.0.v.i.i13.i ; 6 uses
  %i.ab = getelementptr i8, ptr %i.v, i64 56
  br i1 %.not.i19.i, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %.val4.i24.i.us = load ptr, ptr %i.ab, align 8, !tbaa !110 ; 3 uses
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %n_decimal_digits_for_codepoint.exit.us
  %.03474.us = phi i64 [ %i.ar, %n_decimal_digits_for_codepoint.exit.us ], [ 0, %.lr.ph.split.us.preheader ]
  %.03573.us = phi i64 [ %i.as, %n_decimal_digits_for_codepoint.exit.us ], [ %.pre, %.lr.ph.split.us.preheader ] ; 4 uses
  switch i32 %i.y, label %_PyUnicode_DATA.exit25.i.us [
    i32 1, label %_PyUnicode_DATA.exit.i.us
    i32 2, label %_PyUnicode_DATA.exit17.i.us
  ]

_PyUnicode_DATA.exit17.i.us:                      ; preds = %.lr.ph.split.us
  %i.ac = getelementptr [2 x i8], ptr %.val4.i24.i.us, i64 %.03573.us
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !125
  %i.ae = zext i16 %i.ad to i32
  br label %PyUnicode_READ_CHAR.exit.us

_PyUnicode_DATA.exit.i.us:                        ; preds = %.lr.ph.split.us
  %i.af = getelementptr i8, ptr %.val4.i24.i.us, i64 %.03573.us
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !110
  %i.ah = zext i8 %i.ag to i32
  br label %PyUnicode_READ_CHAR.exit.us

_PyUnicode_DATA.exit25.i.us:                      ; preds = %.lr.ph.split.us
  %i.ai = getelementptr [4 x i8], ptr %.val4.i24.i.us, i64 %.03573.us
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit.us

PyUnicode_READ_CHAR.exit.us:                      ; preds = %_PyUnicode_DATA.exit25.i.us, %_PyUnicode_DATA.exit.i.us, %_PyUnicode_DATA.exit17.i.us
  %.0.i.us = phi i32 [ %i.ah, %_PyUnicode_DATA.exit.i.us ], [ %i.ae, %_PyUnicode_DATA.exit17.i.us ], [ %i.aj, %_PyUnicode_DATA.exit25.i.us ] ; 6 uses
  %i.ak = icmp ult i32 %.0.i.us, 10
  br i1 %i.ak, label %n_decimal_digits_for_codepoint.exit.us, label %bb.f

bb.f:                                             ; preds = %PyUnicode_READ_CHAR.exit.us
  %i.al = icmp ult i32 %.0.i.us, 100
  br i1 %i.al, label %n_decimal_digits_for_codepoint.exit.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = icmp ult i32 %.0.i.us, 1000
  br i1 %i.am, label %n_decimal_digits_for_codepoint.exit.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = icmp ult i32 %.0.i.us, 10000
  br i1 %i.an, label %n_decimal_digits_for_codepoint.exit.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = icmp ult i32 %.0.i.us, 100000
  br i1 %i.ao, label %n_decimal_digits_for_codepoint.exit.us, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = icmp ult i32 %.0.i.us, 1000000
  %i.aq = select i1 %i.ap, i64 9, i64 10
  br label %n_decimal_digits_for_codepoint.exit.us

n_decimal_digits_for_codepoint.exit.us:           ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %PyUnicode_READ_CHAR.exit.us
  %.0.i43.us = phi i64 [ %i.aq, %bb.j ], [ 4, %PyUnicode_READ_CHAR.exit.us ], [ 5, %bb.f ], [ 6, %bb.g ], [ 7, %bb.h ], [ 8, %bb.i ]
  %i.ar = add i64 %.0.i43.us, %.03474.us          ; 2 uses
  %i.as = add nsw i64 %.03573.us, 1               ; 2 uses
  %exitcond117.not = icmp eq i64 %i.as, %i.t
  br i1 %exitcond117.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !132

.lr.ph.split:                                     ; preds = %.lr.ph
  switch i32 %i.y, label %_PyUnicode_DATA.exit25.i [
    i32 1, label %_PyUnicode_DATA.exit.i.us77.preheader
    i32 2, label %_PyUnicode_DATA.exit17.i.us87.preheader
  ]

_PyUnicode_DATA.exit17.i.us87.preheader:          ; preds = %.lr.ph.split
  %i.at = sub i64 %i.t, %.pre                     ; 3 uses
  %.neg = add i64 %.pre, 1
  %xtraiter = and i64 %i.at, 1
  %i.au = icmp eq i64 %i.t, %.neg
  br i1 %i.au, label %_PyUnicode_DATA.exit17.i.us87.epil.preheader, label %_PyUnicode_DATA.exit17.i.us87.preheader.new

_PyUnicode_DATA.exit17.i.us87.preheader.new:      ; preds = %_PyUnicode_DATA.exit17.i.us87.preheader
  %unroll_iter = and i64 %i.at, -2
  br label %_PyUnicode_DATA.exit17.i.us87

_PyUnicode_DATA.exit.i.us77.preheader:            ; preds = %.lr.ph.split
  %i.av = sub i64 %i.t, %.pre                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.av, 4
  br i1 %min.iters.check, label %_PyUnicode_DATA.exit.i.us77.preheader156, label %vector.ph

vector.ph:                                        ; preds = %_PyUnicode_DATA.exit.i.us77.preheader
  %n.vec = and i64 %i.av, -4                      ; 3 uses
  %i.aw = add i64 %.pre, %n.vec
  %i.ax = getelementptr i8, ptr %.0.i.i14.i, i64 %.pre
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bi, %vector.body ]
  %vec.phi150 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bj, %vector.body ]
  %i.ay = getelementptr i8, ptr %i.ax, i64 %index ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 2
  %wide.load = load <2 x i8>, ptr %i.ay, align 1, !tbaa !110 ; 2 uses
  %wide.load151 = load <2 x i8>, ptr %i.az, align 1, !tbaa !110 ; 2 uses
  %i.ba = icmp ult <2 x i8> %wide.load, splat (i8 10)
  %i.bb = icmp ult <2 x i8> %wide.load151, splat (i8 10)
  %i.bc = icmp ult <2 x i8> %wide.load, splat (i8 100)
  %i.bd = icmp ult <2 x i8> %wide.load151, splat (i8 100)
  %i.be = select <2 x i1> %i.bc, <2 x i64> splat (i64 5), <2 x i64> splat (i64 6)
  %i.bf = select <2 x i1> %i.bd, <2 x i64> splat (i64 5), <2 x i64> splat (i64 6)
  %i.bg = select <2 x i1> %i.ba, <2 x i64> splat (i64 4), <2 x i64> %i.be
  %i.bh = select <2 x i1> %i.bb, <2 x i64> splat (i64 4), <2 x i64> %i.bf
  %i.bi = add <2 x i64> %i.bg, %vec.phi           ; 2 uses
  %i.bj = add <2 x i64> %i.bh, %vec.phi150        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !133

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bj, %i.bi
  %i.bl = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %_PyUnicode_DATA.exit.i.us77.preheader156

_PyUnicode_DATA.exit.i.us77.preheader156:         ; preds = %_PyUnicode_DATA.exit.i.us77.preheader, %middle.block
  %.03474.us75.ph = phi i64 [ 0, %_PyUnicode_DATA.exit.i.us77.preheader ], [ %i.bl, %middle.block ]
  %.03573.us76.ph = phi i64 [ %.pre, %_PyUnicode_DATA.exit.i.us77.preheader ], [ %i.aw, %middle.block ]
  br label %_PyUnicode_DATA.exit.i.us77

_PyUnicode_DATA.exit.i.us77:                      ; preds = %_PyUnicode_DATA.exit.i.us77.preheader156, %_PyUnicode_DATA.exit.i.us77
  %.03474.us75 = phi i64 [ %i.bq, %_PyUnicode_DATA.exit.i.us77 ], [ %.03474.us75.ph, %_PyUnicode_DATA.exit.i.us77.preheader156 ]
  %.03573.us76 = phi i64 [ %i.br, %_PyUnicode_DATA.exit.i.us77 ], [ %.03573.us76.ph, %_PyUnicode_DATA.exit.i.us77.preheader156 ] ; 2 uses
  %i.bm = getelementptr i8, ptr %.0.i.i14.i, i64 %.03573.us76
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !110 ; 2 uses
  %i.bo = icmp ult i8 %i.bn, 10
  %i.bp = icmp ult i8 %i.bn, 100
  %spec.select = select i1 %i.bp, i64 5, i64 6
  %.0.i43.us81 = select i1 %i.bo, i64 4, i64 %spec.select
  %i.bq = add i64 %.0.i43.us81, %.03474.us75      ; 2 uses
  %i.br = add nsw i64 %.03573.us76, 1             ; 2 uses
  %exitcond115.not = icmp eq i64 %i.br, %i.t
  br i1 %exitcond115.not, label %._crit_edge, label %_PyUnicode_DATA.exit.i.us77, !llvm.loop !134

_PyUnicode_DATA.exit17.i.us87:                    ; preds = %n_decimal_digits_for_codepoint.exit.us90.1, %_PyUnicode_DATA.exit17.i.us87.preheader.new
  %.03474.us85 = phi i64 [ 0, %_PyUnicode_DATA.exit17.i.us87.preheader.new ], [ %i.cg, %n_decimal_digits_for_codepoint.exit.us90.1 ]
  %.03573.us86 = phi i64 [ %.pre, %_PyUnicode_DATA.exit17.i.us87.preheader.new ], [ %i.ch, %n_decimal_digits_for_codepoint.exit.us90.1 ] ; 3 uses
  %niter = phi i64 [ 0, %_PyUnicode_DATA.exit17.i.us87.preheader.new ], [ %niter.next.1, %n_decimal_digits_for_codepoint.exit.us90.1 ]
  %i.bs = getelementptr [2 x i8], ptr %.0.i.i14.i, i64 %.03573.us86
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !125 ; 4 uses
  %i.bu = icmp ult i16 %i.bt, 10
  br i1 %i.bu, label %n_decimal_digits_for_codepoint.exit.us90, label %bb.k

bb.k:                                             ; preds = %_PyUnicode_DATA.exit17.i.us87
  %i.bv = icmp ult i16 %i.bt, 100
  br i1 %i.bv, label %n_decimal_digits_for_codepoint.exit.us90, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = icmp ult i16 %i.bt, 1000
  br i1 %i.bw, label %n_decimal_digits_for_codepoint.exit.us90, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bx = icmp ult i16 %i.bt, 10000
  %spec.select105 = select i1 %i.bx, i64 7, i64 8
  br label %n_decimal_digits_for_codepoint.exit.us90

n_decimal_digits_for_codepoint.exit.us90:         ; preds = %bb.m, %bb.l, %bb.k, %_PyUnicode_DATA.exit17.i.us87
  %.0.i43.us91 = phi i64 [ %spec.select105, %bb.m ], [ 4, %_PyUnicode_DATA.exit17.i.us87 ], [ 5, %bb.k ], [ 6, %bb.l ]
  %i.by = add i64 %.0.i43.us91, %.03474.us85
  %i.bz = getelementptr [2 x i8], ptr %.0.i.i14.i, i64 %.03573.us86
  %i.ca = getelementptr i8, ptr %i.bz, i64 2
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !125 ; 4 uses
  %i.cc = icmp ult i16 %i.cb, 10
  br i1 %i.cc, label %n_decimal_digits_for_codepoint.exit.us90.1, label %bb.n

bb.n:                                             ; preds = %n_decimal_digits_for_codepoint.exit.us90
  %i.cd = icmp ult i16 %i.cb, 100
  br i1 %i.cd, label %n_decimal_digits_for_codepoint.exit.us90.1, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ce = icmp ult i16 %i.cb, 1000
  br i1 %i.ce, label %n_decimal_digits_for_codepoint.exit.us90.1, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = icmp ult i16 %i.cb, 10000
  %spec.select105.1 = select i1 %i.cf, i64 7, i64 8
  br label %n_decimal_digits_for_codepoint.exit.us90.1

n_decimal_digits_for_codepoint.exit.us90.1:       ; preds = %bb.p, %bb.o, %bb.n, %n_decimal_digits_for_codepoint.exit.us90
  %.0.i43.us91.1 = phi i64 [ %spec.select105.1, %bb.p ], [ 4, %n_decimal_digits_for_codepoint.exit.us90 ], [ 5, %bb.n ], [ 6, %bb.o ]
  %i.cg = add i64 %.0.i43.us91.1, %i.by           ; 3 uses
  %i.ch = add nsw i64 %.03573.us86, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit161.unr-lcssa, label %_PyUnicode_DATA.exit17.i.us87, !llvm.loop !132

._crit_edge.loopexit161.unr-lcssa:                ; preds = %n_decimal_digits_for_codepoint.exit.us90.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_PyUnicode_DATA.exit17.i.us87.epil.preheader

_PyUnicode_DATA.exit17.i.us87.epil.preheader:     ; preds = %._crit_edge.loopexit161.unr-lcssa, %_PyUnicode_DATA.exit17.i.us87.preheader
  %.03474.us85.epil.init = phi i64 [ 0, %_PyUnicode_DATA.exit17.i.us87.preheader ], [ %i.cg, %._crit_edge.loopexit161.unr-lcssa ]
  %.03573.us86.epil.init = phi i64 [ %.pre, %_PyUnicode_DATA.exit17.i.us87.preheader ], [ %i.ch, %._crit_edge.loopexit161.unr-lcssa ]
  %lcmp.mod164 = trunc i64 %i.at to i1
  call void @llvm.assume(i1 %lcmp.mod164)
  %i.ci = getelementptr [2 x i8], ptr %.0.i.i14.i, i64 %.03573.us86.epil.init
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !125 ; 4 uses
  %i.ck = icmp ult i16 %i.cj, 10
  br i1 %i.ck, label %n_decimal_digits_for_codepoint.exit.us90.epil, label %bb.q

bb.q:                                             ; preds = %_PyUnicode_DATA.exit17.i.us87.epil.preheader
  %i.cl = icmp ult i16 %i.cj, 100
  br i1 %i.cl, label %n_decimal_digits_for_codepoint.exit.us90.epil, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cm = icmp ult i16 %i.cj, 1000
  br i1 %i.cm, label %n_decimal_digits_for_codepoint.exit.us90.epil, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cn = icmp ult i16 %i.cj, 10000
  %spec.select105.epil = select i1 %i.cn, i64 7, i64 8
  br label %n_decimal_digits_for_codepoint.exit.us90.epil

n_decimal_digits_for_codepoint.exit.us90.epil:    ; preds = %bb.s, %bb.r, %bb.q, %_PyUnicode_DATA.exit17.i.us87.epil.preheader
  %.0.i43.us91.epil = phi i64 [ %spec.select105.epil, %bb.s ], [ 4, %_PyUnicode_DATA.exit17.i.us87.epil.preheader ], [ 5, %bb.q ], [ 6, %bb.r ]
  %i.co = add i64 %.0.i43.us91.epil, %.03474.us85.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %n_decimal_digits_for_codepoint.exit.us90.epil, %._crit_edge.loopexit161.unr-lcssa, %_PyUnicode_DATA.exit.i.us77, %n_decimal_digits_for_codepoint.exit, %n_decimal_digits_for_codepoint.exit.us, %middle.block, %bb.e
  %.034.lcssa = phi i64 [ 0, %bb.e ], [ %i.bq, %_PyUnicode_DATA.exit.i.us77 ], [ %i.ar, %n_decimal_digits_for_codepoint.exit.us ], [ %i.da, %n_decimal_digits_for_codepoint.exit ], [ %i.bl, %middle.block ], [ %i.cg, %._crit_edge.loopexit161.unr-lcssa ], [ %i.co, %n_decimal_digits_for_codepoint.exit.us90.epil ]
  %i.cp = call ptr @PyUnicode_New(i64 noundef %.034.lcssa, i32 noundef 127) #10 ; 5 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.y, label %bb.aa

_PyUnicode_DATA.exit25.i:                         ; preds = %.lr.ph.split, %n_decimal_digits_for_codepoint.exit
  %.03474 = phi i64 [ %i.da, %n_decimal_digits_for_codepoint.exit ], [ 0, %.lr.ph.split ]
  %.03573 = phi i64 [ %i.db, %n_decimal_digits_for_codepoint.exit ], [ %.pre, %.lr.ph.split ] ; 2 uses
  %i.cr = getelementptr [4 x i8], ptr %.0.i.i14.i, i64 %.03573
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !7  ; 6 uses
  %i.ct = icmp ult i32 %i.cs, 10
  br i1 %i.ct, label %n_decimal_digits_for_codepoint.exit, label %bb.t

bb.t:                                             ; preds = %_PyUnicode_DATA.exit25.i
  %i.cu = icmp ult i32 %i.cs, 100
  br i1 %i.cu, label %n_decimal_digits_for_codepoint.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cv = icmp ult i32 %i.cs, 1000
  br i1 %i.cv, label %n_decimal_digits_for_codepoint.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cw = icmp ult i32 %i.cs, 10000
  br i1 %i.cw, label %n_decimal_digits_for_codepoint.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cx = icmp ult i32 %i.cs, 100000
  br i1 %i.cx, label %n_decimal_digits_for_codepoint.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cy = icmp ult i32 %i.cs, 1000000
  %i.cz = select i1 %i.cy, i64 9, i64 10
  br label %n_decimal_digits_for_codepoint.exit

n_decimal_digits_for_codepoint.exit:              ; preds = %_PyUnicode_DATA.exit25.i, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x
  %.0.i43 = phi i64 [ %i.cz, %bb.x ], [ 4, %_PyUnicode_DATA.exit25.i ], [ 5, %bb.t ], [ 6, %bb.u ], [ 7, %bb.v ], [ 8, %bb.w ]
  %i.da = add i64 %.0.i43, %.03474                ; 2 uses
  %i.db = add nsw i64 %.03573, 1                  ; 2 uses
  %exitcond116.not = icmp eq i64 %i.db, %i.t
  br i1 %exitcond116.not, label %._crit_edge, label %_PyUnicode_DATA.exit25.i, !llvm.loop !132

bb.y:                                             ; preds = %._crit_edge
  %i.dc = load ptr, ptr %i.a, align 8, !tbaa !14  ; 3 uses
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !110 ; 2 uses
  %.not.i39 = icmp sgt i32 %i.dd, -1
  br i1 %.not.i39, label %bb.z, label %Py_DECREF.exit40

bb.z:                                             ; preds = %bb.y
  %i.de = add nsw i32 %i.dd, -1                   ; 2 uses
  store i32 %i.de, ptr %i.dc, align 8, !tbaa !110
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %Py_DECREF.exit40.sink.split, label %Py_DECREF.exit40

bb.aa:                                            ; preds = %._crit_edge
  %i.dg = getelementptr i8, ptr %i.cp, i64 32
  %.val.i = load i32, ptr %i.dg, align 8          ; 2 uses
  %i.dh = and i32 %.val.i, 32
  %.not.i44 = icmp eq i32 %i.dh, 0
  br i1 %.not.i44, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.di = and i32 %.val.i, 64
  %.not.i.i = icmp eq i32 %i.di, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i45 = getelementptr i8, ptr %i.cp, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.ac:                                            ; preds = %bb.aa
  %i.dj = getelementptr i8, ptr %i.cp, i64 56
  %.val4.i = load ptr, ptr %i.dj, align 8, !tbaa !110
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.ab, %bb.ac
  %.0.i46 = phi ptr [ %.0.i.i45, %bb.ab ], [ %.val4.i, %bb.ac ]
  %i.dk = load i64, ptr %i.c, align 8, !tbaa !124 ; 2 uses
  %i.dl = load i64, ptr %i.d, align 8, !tbaa !124 ; 2 uses
  %i.dm = icmp slt i64 %i.dk, %i.dl
  br i1 %i.dm, label %.lr.ph102, label %._crit_edge103

._crit_edge103:                                   ; preds = %._crit_edge99, %_PyUnicode_DATA.exit
  %.lcssa = phi i64 [ %i.dl, %_PyUnicode_DATA.exit ], [ %i.ew, %._crit_edge99 ]
  %i.dn = call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.14, ptr noundef nonnull %i.cp, i64 noundef %.lcssa) #10 ; 3 uses
  %i.do = load ptr, ptr %i.a, align 8, !tbaa !14  ; 3 uses
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !110 ; 2 uses
  %.not.i = icmp sgt i32 %i.dp, -1
  br i1 %.not.i, label %bb.ad, label %Py_DECREF.exit40

bb.ad:                                            ; preds = %._crit_edge103
  %i.dq = add nsw i32 %i.dp, -1                   ; 2 uses
  store i32 %i.dq, ptr %i.do, align 8, !tbaa !110
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %Py_DECREF.exit40.sink.split, label %Py_DECREF.exit40

.lr.ph102:                                        ; preds = %_PyUnicode_DATA.exit, %._crit_edge99
  %.032101 = phi i64 [ %i.ev, %._crit_edge99 ], [ %i.dk, %_PyUnicode_DATA.exit ] ; 4 uses
  %.033100 = phi ptr [ %i.eu, %._crit_edge99 ], [ %.0.i46, %_PyUnicode_DATA.exit ] ; 3 uses
  %i.ds = load ptr, ptr %i.a, align 8, !tbaa !14  ; 7 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 32
  %i.du = load i32, ptr %i.dt, align 8            ; 5 uses
  %2 = lshr i32 %i.du, 2
  %i.dv = and i32 %2, 7
  %i.dw = and i32 %i.du, 32
  %.not.i19.i47 = icmp eq i32 %i.dw, 0            ; 3 uses
  switch i32 %i.dv, label %bb.ak [
    i32 1, label %bb.ae
    i32 2, label %bb.ah
  ]

bb.ae:                                            ; preds = %.lr.ph102
  br i1 %.not.i19.i47, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dx = and i32 %i.du, 64
  %.not.i.i.i55 = icmp eq i32 %i.dx, 0
  %.0.v.i.i.i56 = select i1 %.not.i.i.i55, i64 56, i64 40
  %.0.i.i.i57 = getelementptr i8, ptr %i.ds, i64 %.0.v.i.i.i56
  br label %_PyUnicode_DATA.exit.i58

bb.ag:                                            ; preds = %bb.ae
  %i.dy = getelementptr i8, ptr %i.ds, i64 56
  %.val4.i.i60 = load ptr, ptr %i.dy, align 8, !tbaa !110
  br label %_PyUnicode_DATA.exit.i58

_PyUnicode_DATA.exit.i58:                         ; preds = %bb.ag, %bb.af
  %.0.i.i59 = phi ptr [ %.0.i.i.i57, %bb.af ], [ %.val4.i.i60, %bb.ag ]
  %i.dz = getelementptr i8, ptr %.0.i.i59, i64 %.032101
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !110
  %i.eb = zext i8 %i.ea to i32
  br label %PyUnicode_READ_CHAR.exit67

bb.ah:                                            ; preds = %.lr.ph102
  br i1 %.not.i19.i47, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ec = and i32 %i.du, 64
  %.not.i.i12.i48 = icmp eq i32 %i.ec, 0
  %.0.v.i.i13.i49 = select i1 %.not.i.i12.i48, i64 56, i64 40
  %.0.i.i14.i50 = getelementptr i8, ptr %i.ds, i64 %.0.v.i.i13.i49
  br label %_PyUnicode_DATA.exit17.i51

bb.aj:                                            ; preds = %bb.ah
  %i.ed = getelementptr i8, ptr %i.ds, i64 56
  %.val4.i16.i54 = load ptr, ptr %i.ed, align 8, !tbaa !110
  br label %_PyUnicode_DATA.exit17.i51

_PyUnicode_DATA.exit17.i51:                       ; preds = %bb.aj, %bb.ai
  %.0.i15.i52 = phi ptr [ %.0.i.i14.i50, %bb.ai ], [ %.val4.i16.i54, %bb.aj ]
  %i.ee = getelementptr [2 x i8], ptr %.0.i15.i52, i64 %.032101
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !125
  %i.eg = zext i16 %i.ef to i32
  br label %PyUnicode_READ_CHAR.exit67

bb.ak:                                            ; preds = %.lr.ph102
  br i1 %.not.i19.i47, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eh = and i32 %i.du, 64
  %.not.i.i20.i61 = icmp eq i32 %i.eh, 0
  %.0.v.i.i21.i62 = select i1 %.not.i.i20.i61, i64 56, i64 40
  %.0.i.i22.i63 = getelementptr i8, ptr %i.ds, i64 %.0.v.i.i21.i62
  br label %_PyUnicode_DATA.exit25.i64

bb.am:                                            ; preds = %bb.ak
  %i.ei = getelementptr i8, ptr %i.ds, i64 56
  %.val4.i24.i66 = load ptr, ptr %i.ei, align 8, !tbaa !110
  br label %_PyUnicode_DATA.exit25.i64

_PyUnicode_DATA.exit25.i64:                       ; preds = %bb.am, %bb.al
  %.0.i23.i65 = phi ptr [ %.0.i.i22.i63, %bb.al ], [ %.val4.i24.i66, %bb.am ]
  %i.ej = getelementptr [4 x i8], ptr %.0.i23.i65, i64 %.032101
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit67

PyUnicode_READ_CHAR.exit67:                       ; preds = %_PyUnicode_DATA.exit.i58, %_PyUnicode_DATA.exit17.i51, %_PyUnicode_DATA.exit25.i64
  %.0.i53 = phi i32 [ %i.eb, %_PyUnicode_DATA.exit.i58 ], [ %i.eg, %_PyUnicode_DATA.exit17.i51 ], [ %i.ek, %_PyUnicode_DATA.exit25.i64 ] ; 7 uses
  %i.el = getelementptr i8, ptr %.033100, i64 1
  store i8 38, ptr %.033100, align 1, !tbaa !110
  %i.em = getelementptr i8, ptr %.033100, i64 2   ; 3 uses
  store i8 35, ptr %i.el, align 1, !tbaa !110
  %i.en = icmp ult i32 %.0.i53, 10
  br i1 %i.en, label %n_decimal_digits_for_codepoint.exit70, label %bb.an

bb.an:                                            ; preds = %PyUnicode_READ_CHAR.exit67
  %i.eo = icmp ult i32 %.0.i53, 100
  br i1 %i.eo, label %n_decimal_digits_for_codepoint.exit70, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ep = icmp ult i32 %.0.i53, 1000
  br i1 %i.ep, label %n_decimal_digits_for_codepoint.exit70, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.eq = icmp ult i32 %.0.i53, 10000
  br i1 %i.eq, label %n_decimal_digits_for_codepoint.exit70, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.er = icmp ult i32 %.0.i53, 100000
  br i1 %i.er, label %n_decimal_digits_for_codepoint.exit70, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.es = icmp ult i32 %.0.i53, 1000000
  %spec.select.i68 = select i1 %i.es, i64 6, i64 7
  br label %n_decimal_digits_for_codepoint.exit70

n_decimal_digits_for_codepoint.exit70:            ; preds = %PyUnicode_READ_CHAR.exit67, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar
  %.0.i69 = phi i64 [ %spec.select.i68, %bb.ar ], [ 1, %PyUnicode_READ_CHAR.exit67 ], [ 2, %bb.an ], [ 3, %bb.ao ], [ 4, %bb.ap ], [ 5, %bb.aq ]
  %i.et = getelementptr i8, ptr %i.em, i64 %.0.i69 ; 3 uses
  %.03094 = getelementptr i8, ptr %i.et, i64 -1   ; 2 uses
  %.not3895 = icmp ult ptr %.03094, %i.em
  br i1 %.not3895, label %._crit_edge99, label %.lr.ph98

._crit_edge99:                                    ; preds = %.lr.ph98, %n_decimal_digits_for_codepoint.exit70
  %i.eu = getelementptr i8, ptr %i.et, i64 1
  store i8 59, ptr %i.et, align 1, !tbaa !110
  %i.ev = add nsw i64 %.032101, 1                 ; 2 uses
  %i.ew = load i64, ptr %i.d, align 8, !tbaa !124 ; 2 uses
  %i.ex = icmp slt i64 %i.ev, %i.ew
  br i1 %i.ex, label %.lr.ph102, label %._crit_edge103, !llvm.loop !135

.lr.ph98:                                         ; preds = %n_decimal_digits_for_codepoint.exit70, %.lr.ph98
  %.03097 = phi ptr [ %.030, %.lr.ph98 ], [ %.03094, %n_decimal_digits_for_codepoint.exit70 ] ; 2 uses
  %.03196 = phi i32 [ %i.fb, %.lr.ph98 ], [ %.0.i53, %n_decimal_digits_for_codepoint.exit70 ] ; 2 uses
  %i.ey = urem i32 %.03196, 10
  %i.ez = trunc nuw nsw i32 %i.ey to i8
  %i.fa = or disjoint i8 %i.ez, 48
  store i8 %i.fa, ptr %.03097, align 1, !tbaa !110
  %i.fb = udiv i32 %.03196, 10
  %.030 = getelementptr i8, ptr %.03097, i64 -1   ; 2 uses
  %.not38 = icmp ult ptr %.030, %i.em
  br i1 %.not38, label %._crit_edge99, label %.lr.ph98, !llvm.loop !136

Py_DECREF.exit40.sink.split:                      ; preds = %bb.ad, %bb.z
  %.sink = phi ptr [ %i.dc, %bb.z ], [ %i.do, %bb.ad ]
  %.1.ph = phi ptr [ null, %bb.z ], [ %i.dn, %bb.ad ]
  call void @_Py_Dealloc(ptr noundef nonnull %.sink) #10
  br label %Py_DECREF.exit40

Py_DECREF.exit40:                                 ; preds = %Py_DECREF.exit40.sink.split, %bb.ad, %._crit_edge103, %bb.z, %bb.y, %PyObject_TypeCheck.exit.thread
  %.1 = phi ptr [ null, %PyObject_TypeCheck.exit.thread ], [ %i.dn, %bb.ad ], [ null, %bb.y ], [ null, %bb.z ], [ %i.dn, %._crit_edge103 ], [ %.1.ph, %Py_DECREF.exit40.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.as

bb.as:                                            ; preds = %Py_DECREF.exit40, %bb.b
  %.2 = phi ptr [ %.1, %Py_DECREF.exit40 ], [ null, %bb.b ]
  ret ptr %.2
}

declare i32 @_PyUnicodeError_GetParams(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @PyUnicode_New(i64 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Py_BuildValue(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @PyCodec_BackslashReplaceErrors(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = load ptr, ptr @PyExc_UnicodeEncodeError, align 8, !tbaa !14 ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %.val11 = load ptr, ptr %i.g, align 8, !tbaa !113 ; 2 uses
  %.not.i = icmp eq ptr %.val11, %i.f
  br i1 %.not.i, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.a
  %i.h = tail call i32 @PyType_IsSubtype(ptr noundef %.val11, ptr noundef %i.f) #10
  %.not19 = icmp eq i32 %i.h, 0
  br i1 %.not19, label %bb.b, label %PyObject_TypeCheck.exit.thread

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.a, %PyObject_TypeCheck.exit
  %i.i = tail call fastcc ptr @_PyCodec_BackslashReplaceUnicodeEncodeError(ptr noundef nonnull %0)
  br label %bb.n

bb.b:                                             ; preds = %PyObject_TypeCheck.exit
  %i.j = load ptr, ptr @PyExc_UnicodeDecodeError, align 8, !tbaa !14 ; 2 uses
  %.val10 = load ptr, ptr %i.g, align 8, !tbaa !113 ; 2 uses
  %.not.i12 = icmp eq ptr %.val10, %i.j
  br i1 %.not.i12, label %PyObject_TypeCheck.exit13.thread, label %PyObject_TypeCheck.exit13

PyObject_TypeCheck.exit13:                        ; preds = %bb.b
  %i.k = tail call i32 @PyType_IsSubtype(ptr noundef %.val10, ptr noundef %i.j) #10
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.l, label %PyObject_TypeCheck.exit13.thread

PyObject_TypeCheck.exit13.thread:                 ; preds = %bb.b, %PyObject_TypeCheck.exit13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  %i.l = call i32 @_PyUnicodeError_GetParams(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef 1) #10
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %_PyCodec_BackslashReplaceUnicodeDecodeError.exit, label %bb.c

bb.c:                                             ; preds = %PyObject_TypeCheck.exit13.thread
  %i.n = load i64, ptr %i.e, align 8, !tbaa !124
  %i.o = shl i64 %i.n, 2
  %i.p = call ptr @PyUnicode_New(i64 noundef %i.o, i32 noundef 127) #10 ; 5 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !110  ; 2 uses
  %.not.i18.i = icmp sgt i32 %i.s, -1
  br i1 %.not.i18.i, label %bb.e, label %_PyCodec_BackslashReplaceUnicodeDecodeError.exit

bb.e:                                             ; preds = %bb.d
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %i.r, align 8, !tbaa !110
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.f, label %_PyCodec_BackslashReplaceUnicodeDecodeError.exit

bb.f:                                             ; preds = %bb.e
  call void @_Py_Dealloc(ptr noundef nonnull %i.r) #10
  br label %_PyCodec_BackslashReplaceUnicodeDecodeError.exit

bb.g:                                             ; preds = %bb.c
  %i.v = getelementptr i8, ptr %i.p, i64 32
  %.val.i.i = load i32, ptr %i.v, align 8         ; 2 uses
  %i.w = and i32 %.val.i.i, 32
  %.not.i21.i = icmp eq i32 %i.w, 0
  br i1 %.not.i21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = and i32 %.val.i.i, 64
  %.not.i.i.i = icmp eq i32 %i.x, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.p, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr i8, ptr %i.p, i64 56
  %.val4.i.i = load ptr, ptr %i.y, align 8, !tbaa !110
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.i, %bb.h
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.h ], [ %.val4.i.i, %bb.i ]
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 32
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !124 ; 2 uses
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !124
  %i.ad = icmp slt i64 %i.ab, %i.ac
  br i1 %i.ad, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !14
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_PyUnicode_DATA.exit.i
  %i.ae = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.z, %_PyUnicode_DATA.exit.i ] ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !110 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.af, -1
  br i1 %.not.i.i, label %bb.j, label %Py_DECREF.exit.i

bb.j:                                             ; preds = %._crit_edge.i
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !110
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.k, label %Py_DECREF.exit.i

bb.k:                                             ; preds = %bb.j
  call void @_Py_Dealloc(ptr noundef nonnull %i.ae) #10
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.k, %bb.j, %._crit_edge.i
  %i.ai = load i64, ptr %i.d, align 8, !tbaa !124
  %i.aj = call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.14, ptr noundef nonnull %i.p, i64 noundef %i.ai) #10
  br label %_PyCodec_BackslashReplaceUnicodeDecodeError.exit

.lr.ph.i:                                         ; preds = %_PyUnicode_DATA.exit.i, %.lr.ph.i
  %.01523.i = phi i64 [ %i.ba, %.lr.ph.i ], [ %i.ab, %_PyUnicode_DATA.exit.i ] ; 2 uses
  %.01622.i = phi ptr [ %i.bb, %.lr.ph.i ], [ %.0.i.i, %_PyUnicode_DATA.exit.i ] ; 5 uses
  %i.ak = getelementptr i8, ptr %i.aa, i64 %.01523.i
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !110
  store i8 92, ptr %.01622.i, align 1, !tbaa !110
  %i.am = getelementptr i8, ptr %.01622.i, i64 1
  store i8 120, ptr %i.am, align 1, !tbaa !110
  %i.an = load ptr, ptr @Py_hexdigits, align 8, !tbaa !137
  %i.ao = zext i8 %i.al to i32                    ; 2 uses
  %i.ap = lshr i32 %i.ao, 4
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr i8, ptr %i.an, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !110
  %i.at = getelementptr i8, ptr %.01622.i, i64 2
  store i8 %i.as, ptr %i.at, align 1, !tbaa !110
  %i.au = load ptr, ptr @Py_hexdigits, align 8, !tbaa !137
  %i.av = and i32 %i.ao, 15
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr i8, ptr %i.au, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !110
  %i.az = getelementptr i8, ptr %.01622.i, i64 3
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !110
  %i.ba = add nsw i64 %.01523.i, 1                ; 2 uses
  %i.bb = getelementptr i8, ptr %.01622.i, i64 4
  %i.bc = load i64, ptr %i.d, align 8, !tbaa !124
  %i.bd = icmp slt i64 %i.ba, %i.bc
  br i1 %i.bd, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !138

_PyCodec_BackslashReplaceUnicodeDecodeError.exit: ; preds = %PyObject_TypeCheck.exit13.thread, %bb.d, %bb.e, %bb.f, %Py_DECREF.exit.i
  %.1.i = phi ptr [ null, %PyObject_TypeCheck.exit13.thread ], [ %i.aj, %Py_DECREF.exit.i ], [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.n

bb.l:                                             ; preds = %PyObject_TypeCheck.exit13
  %i.be = load ptr, ptr @PyExc_UnicodeTranslateError, align 8, !tbaa !14 ; 2 uses
  %.val = load ptr, ptr %i.g, align 8, !tbaa !113 ; 2 uses
  %.not.i14 = icmp eq ptr %.val, %i.be
  br i1 %.not.i14, label %PyObject_TypeCheck.exit15.thread, label %PyObject_TypeCheck.exit15

PyObject_TypeCheck.exit15:                        ; preds = %bb.l
  %i.bf = tail call i32 @PyType_IsSubtype(ptr noundef %.val, ptr noundef %i.be) #10
  %.not20 = icmp eq i32 %i.bf, 0
  br i1 %.not20, label %bb.m, label %PyObject_TypeCheck.exit15.thread

PyObject_TypeCheck.exit15.thread:                 ; preds = %bb.l, %PyObject_TypeCheck.exit15
  %i.bg = tail call fastcc ptr @_PyCodec_BackslashReplaceUnicodeEncodeError(ptr noundef nonnull %0)
  br label %bb.n

bb.m:                                             ; preds = %PyObject_TypeCheck.exit15
  %i.bh = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !14
  %i.bi = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bh, ptr noundef nonnull @.str.47, ptr noundef nonnull %0) #10 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %PyObject_TypeCheck.exit15.thread, %_PyCodec_BackslashReplaceUnicodeDecodeError.exit, %PyObject_TypeCheck.exit.thread
  %.0 = phi ptr [ %i.i, %PyObject_TypeCheck.exit.thread ], [ %.1.i, %_PyCodec_BackslashReplaceUnicodeDecodeError.exit ], [ %i.bg, %PyObject_TypeCheck.exit15.thread ], [ null, %bb.m ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_PyCodec_BackslashReplaceUnicodeEncodeError(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  %i.f = call i32 @_PyUnicodeError_GetParams(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef 0) #10
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %Py_DECREF.exit19, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.e, align 8, !tbaa !124
  %i.i = icmp sgt i64 %i.h, 922337203685477580
  %.pre = load i64, ptr %i.c, align 8, !tbaa !124 ; 20 uses
  br i1 %i.i, label %bb.c, label %._crit_edge100

._crit_edge100:                                   ; preds = %bb.b
  %.pre101 = load i64, ptr %i.d, align 8, !tbaa !124
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = add i64 %.pre, 922337203685477580
  %i.k = load i64, ptr %i.b, align 8, !tbaa !124
  %i.l = call i64 @llvm.smin.i64(i64 %i.j, i64 %i.k) ; 3 uses
  store i64 %i.l, ptr %i.d, align 8, !tbaa !124
  %i.m = sub i64 %i.l, %.pre
  %i.n = call i64 @llvm.smax.i64(i64 %i.m, i64 0)
  store i64 %i.n, ptr %i.e, align 8, !tbaa !124
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge100, %bb.c
  %i.o = phi i64 [ %.pre101, %._crit_edge100 ], [ %i.l, %bb.c ] ; 10 uses
  %i.p = icmp slt i64 %.pre, %i.o
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %i.r = getelementptr i8, ptr %i.q, i64 32
  %i.s = load i32, ptr %i.r, align 8              ; 3 uses
  %1 = lshr i32 %i.s, 2
  %i.t = and i32 %1, 7
  %i.u = and i32 %i.s, 32
  %.not.i19.i = icmp eq i32 %i.u, 0               ; 2 uses
  %i.v = and i32 %i.s, 64
  %.not.i.i12.i = icmp eq i32 %i.v, 0
  %.0.v.i.i13.i = select i1 %.not.i.i12.i, i64 56, i64 40
  %.0.i.i14.i = getelementptr i8, ptr %i.q, i64 %.0.v.i.i13.i ; 4 uses
  %i.w = getelementptr i8, ptr %i.q, i64 56       ; 2 uses
  switch i32 %i.t, label %.lr.ph.split [
    i32 1, label %.lr.ph.split.us
    i32 2, label %.lr.ph.split.us64
  ]

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.x = sub i64 %i.o, %.pre
  %i.y = shl i64 %i.x, 2
  br label %._crit_edge

.lr.ph.split.us64:                                ; preds = %.lr.ph
  br i1 %.not.i19.i, label %.lr.ph.split.us64.split.us, label %_PyUnicode_DATA.exit17.i.us.preheader

_PyUnicode_DATA.exit17.i.us.preheader:            ; preds = %.lr.ph.split.us64
  %i.z = sub i64 %i.o, %.pre                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.z, 4
  br i1 %min.iters.check, label %_PyUnicode_DATA.exit17.i.us.preheader185, label %vector.ph

vector.ph:                                        ; preds = %_PyUnicode_DATA.exit17.i.us.preheader
  %n.vec = and i64 %i.z, -4                       ; 3 uses
  %i.aa = add i64 %.pre, %n.vec
  %i.ab = getelementptr [2 x i8], ptr %.0.i.i14.i, i64 %.pre
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ai, %vector.body ]
  %vec.phi121 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aj, %vector.body ]
  %i.ac = getelementptr [2 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 4
  %wide.load = load <2 x i16>, ptr %i.ac, align 2, !tbaa !125
  %wide.load122 = load <2 x i16>, ptr %i.ad, align 2, !tbaa !125
  %i.ae = icmp ugt <2 x i16> %wide.load, splat (i16 255)
  %i.af = icmp ugt <2 x i16> %wide.load122, splat (i16 255)
  %i.ag = select <2 x i1> %i.ae, <2 x i64> splat (i64 6), <2 x i64> splat (i64 4)
  %i.ah = select <2 x i1> %i.af, <2 x i64> splat (i64 6), <2 x i64> splat (i64 4)
  %i.ai = add <2 x i64> %i.ag, %vec.phi           ; 2 uses
  %i.aj = add <2 x i64> %i.ah, %vec.phi121        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aj, %i.ai
  %i.al = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %_PyUnicode_DATA.exit17.i.us.preheader185

_PyUnicode_DATA.exit17.i.us.preheader185:         ; preds = %_PyUnicode_DATA.exit17.i.us.preheader, %middle.block
  %.01563.us65.ph = phi i64 [ 0, %_PyUnicode_DATA.exit17.i.us.preheader ], [ %i.al, %middle.block ]
  %.01662.us66.ph = phi i64 [ %.pre, %_PyUnicode_DATA.exit17.i.us.preheader ], [ %i.aa, %middle.block ]
  br label %_PyUnicode_DATA.exit17.i.us

.lr.ph.split.us64.split.us:                       ; preds = %.lr.ph.split.us64
  %.val4.i16.i.us.us = load ptr, ptr %i.w, align 8, !tbaa !110 ; 2 uses
  %i.am = sub i64 %i.o, %.pre                     ; 3 uses
  %min.iters.check124 = icmp ult i64 %i.am, 4
  br i1 %min.iters.check124, label %_PyUnicode_DATA.exit17.i.us.us.preheader, label %vector.ph125

vector.ph125:                                     ; preds = %.lr.ph.split.us64.split.us
  %n.vec127 = and i64 %i.am, -4                   ; 3 uses
  %i.an = add i64 %.pre, %n.vec127
  %i.ao = getelementptr [2 x i8], ptr %.val4.i16.i.us.us, i64 %.pre
  br label %vector.body128

vector.body128:                                   ; preds = %vector.body128, %vector.ph125
  %index129 = phi i64 [ 0, %vector.ph125 ], [ %index.next134, %vector.body128 ] ; 2 uses
  %vec.phi130 = phi <2 x i64> [ zeroinitializer, %vector.ph125 ], [ %i.av, %vector.body128 ]
  %vec.phi131 = phi <2 x i64> [ zeroinitializer, %vector.ph125 ], [ %i.aw, %vector.body128 ]
  %i.ap = getelementptr [2 x i8], ptr %i.ao, i64 %index129 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 4
  %wide.load132 = load <2 x i16>, ptr %i.ap, align 2, !tbaa !125
  %wide.load133 = load <2 x i16>, ptr %i.aq, align 2, !tbaa !125
  %i.ar = icmp ugt <2 x i16> %wide.load132, splat (i16 255)
  %i.as = icmp ugt <2 x i16> %wide.load133, splat (i16 255)
  %i.at = select <2 x i1> %i.ar, <2 x i64> splat (i64 6), <2 x i64> splat (i64 4)
  %i.au = select <2 x i1> %i.as, <2 x i64> splat (i64 6), <2 x i64> splat (i64 4)
  %i.av = add <2 x i64> %i.at, %vec.phi130        ; 2 uses
  %i.aw = add <2 x i64> %i.au, %vec.phi131        ; 2 uses
  %index.next134 = add nuw i64 %index129, 4       ; 2 uses
  %i.ax = icmp eq i64 %index.next134, %n.vec127
  br i1 %i.ax, label %middle.block135, label %vector.body128, !llvm.loop !140

middle.block135:                                  ; preds = %vector.body128
  %bin.rdx136 = add <2 x i64> %i.aw, %i.av
  %i.ay = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx136) ; 2 uses
  %cmp.n137 = icmp eq i64 %i.am, %n.vec127
  br i1 %cmp.n137, label %._crit_edge, label %_PyUnicode_DATA.exit17.i.us.us.preheader

_PyUnicode_DATA.exit17.i.us.us.preheader:         ; preds = %.lr.ph.split.us64.split.us, %middle.block135
  %.01563.us65.us.ph = phi i64 [ 0, %.lr.ph.split.us64.split.us ], [ %i.ay, %middle.block135 ]
  %.01662.us66.us.ph = phi i64 [ %.pre, %.lr.ph.split.us64.split.us ], [ %i.an, %middle.block135 ]
  br label %_PyUnicode_DATA.exit17.i.us.us

_PyUnicode_DATA.exit17.i.us.us:                   ; preds = %_PyUnicode_DATA.exit17.i.us.us.preheader, %_PyUnicode_DATA.exit17.i.us.us
  %.01563.us65.us = phi i64 [ %i.bc, %_PyUnicode_DATA.exit17.i.us.us ], [ %.01563.us65.us.ph, %_PyUnicode_DATA.exit17.i.us.us.preheader ]
  %.01662.us66.us = phi i64 [ %i.bd, %_PyUnicode_DATA.exit17.i.us.us ], [ %.01662.us66.us.ph, %_PyUnicode_DATA.exit17.i.us.us.preheader ] ; 2 uses
  %i.az = getelementptr [2 x i8], ptr %.val4.i16.i.us.us, i64 %.01662.us66.us
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !125
  %i.bb = icmp ugt i16 %i.ba, 255
  %..i.us69.us = select i1 %i.bb, i64 6, i64 4
  %i.bc = add i64 %..i.us69.us, %.01563.us65.us   ; 2 uses
  %i.bd = add nsw i64 %.01662.us66.us, 1          ; 2 uses
  %exitcond97.not = icmp eq i64 %i.bd, %i.o
  br i1 %exitcond97.not, label %._crit_edge, label %_PyUnicode_DATA.exit17.i.us.us, !llvm.loop !141

_PyUnicode_DATA.exit17.i.us:                      ; preds = %_PyUnicode_DATA.exit17.i.us.preheader185, %_PyUnicode_DATA.exit17.i.us
  %.01563.us65 = phi i64 [ %i.bh, %_PyUnicode_DATA.exit17.i.us ], [ %.01563.us65.ph, %_PyUnicode_DATA.exit17.i.us.preheader185 ]
  %.01662.us66 = phi i64 [ %i.bi, %_PyUnicode_DATA.exit17.i.us ], [ %.01662.us66.ph, %_PyUnicode_DATA.exit17.i.us.preheader185 ] ; 2 uses
  %i.be = getelementptr [2 x i8], ptr %.0.i.i14.i, i64 %.01662.us66
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !125
  %i.bg = icmp ugt i16 %i.bf, 255
  %..i.us69 = select i1 %i.bg, i64 6, i64 4
  %i.bh = add i64 %..i.us69, %.01563.us65         ; 2 uses
  %i.bi = add nsw i64 %.01662.us66, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.bi, %i.o
  br i1 %exitcond.not, label %._crit_edge, label %_PyUnicode_DATA.exit17.i.us, !llvm.loop !142

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not.i19.i, label %.lr.ph.split.split.us, label %_PyUnicode_DATA.exit25.i.preheader

_PyUnicode_DATA.exit25.i.preheader:               ; preds = %.lr.ph.split
  %i.bj = sub i64 %i.o, %.pre                     ; 3 uses
  %min.iters.check141 = icmp ult i64 %i.bj, 4
  br i1 %min.iters.check141, label %_PyUnicode_DATA.exit25.i.preheader176, label %vector.ph142

vector.ph142:                                     ; preds = %_PyUnicode_DATA.exit25.i.preheader
  %n.vec144 = and i64 %i.bj, -4                   ; 3 uses
  %i.bk = add i64 %.pre, %n.vec144
  %i.bl = getelementptr [4 x i8], ptr %.0.i.i14.i, i64 %.pre
  br label %vector.body145

vector.body145:                                   ; preds = %vector.body145, %vector.ph142
  %index146 = phi i64 [ 0, %vector.ph142 ], [ %index.next151, %vector.body145 ] ; 2 uses
  %vec.phi147 = phi <2 x i64> [ zeroinitializer, %vector.ph142 ], [ %i.bw, %vector.body145 ]
  %vec.phi148 = phi <2 x i64> [ zeroinitializer, %vector.ph142 ], [ %i.bx, %vector.body145 ]
  %i.bm = getelementptr [4 x i8], ptr %i.bl, i64 %index146 ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 8
  %wide.load149 = load <2 x i32>, ptr %i.bm, align 4, !tbaa !7 ; 2 uses
  %wide.load150 = load <2 x i32>, ptr %i.bn, align 4, !tbaa !7 ; 2 uses
  %i.bo = icmp ugt <2 x i32> %wide.load149, splat (i32 65535)
  %i.bp = icmp ugt <2 x i32> %wide.load150, splat (i32 65535)
  %i.bq = icmp ugt <2 x i32> %wide.load149, splat (i32 255)
  %i.br = icmp ugt <2 x i32> %wide.load150, splat (i32 255)
  %i.bs = select <2 x i1> %i.bq, <2 x i64> splat (i64 6), <2 x i64> splat (i64 4)
  %i.bt = select <2 x i1> %i.br, <2 x i64> splat (i64 6), <2 x i64> splat (i64 4)
  %i.bu = select <2 x i1> %i.bo, <2 x i64> splat (i64 10), <2 x i64> %i.bs
  %i.bv = select <2 x i1> %i.bp, <2 x i64> splat (i64 10), <2 x i64> %i.bt
  %i.bw = add <2 x i64> %i.bu, %vec.phi147        ; 2 uses
  %i.bx = add <2 x i64> %i.bv, %vec.phi148        ; 2 uses
  %index.next151 = add nuw i64 %index146, 4       ; 2 uses
  %i.by = icmp eq i64 %index.next151, %n.vec144
  br i1 %i.by, label %middle.block152, label %vector.body145, !llvm.loop !143

middle.block152:                                  ; preds = %vector.body145
  %bin.rdx153 = add <2 x i64> %i.bx, %i.bw
  %i.bz = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx153) ; 2 uses
  %cmp.n154 = icmp eq i64 %i.bj, %n.vec144
  br i1 %cmp.n154, label %._crit_edge, label %_PyUnicode_DATA.exit25.i.preheader176

_PyUnicode_DATA.exit25.i.preheader176:            ; preds = %_PyUnicode_DATA.exit25.i.preheader, %middle.block152
  %.01563.ph = phi i64 [ 0, %_PyUnicode_DATA.exit25.i.preheader ], [ %i.bz, %middle.block152 ]
  %.01662.ph = phi i64 [ %.pre, %_PyUnicode_DATA.exit25.i.preheader ], [ %i.bk, %middle.block152 ]
  br label %_PyUnicode_DATA.exit25.i

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %.val4.i24.i.us = load ptr, ptr %i.w, align 8, !tbaa !110 ; 2 uses
  %i.ca = sub i64 %i.o, %.pre                     ; 3 uses
  %min.iters.check158 = icmp ult i64 %i.ca, 4
  br i1 %min.iters.check158, label %_PyUnicode_DATA.exit25.i.us.preheader, label %vector.ph159

vector.ph159:                                     ; preds = %.lr.ph.split.split.us
  %n.vec161 = and i64 %i.ca, -4                   ; 3 uses
  %i.cb = add i64 %.pre, %n.vec161
  %i.cc = getelementptr [4 x i8], ptr %.val4.i24.i.us, i64 %.pre
  br label %vector.body162

vector.body162:                                   ; preds = %vector.body162, %vector.ph159
  %index163 = phi i64 [ 0, %vector.ph159 ], [ %index.next168, %vector.body162 ] ; 2 uses
  %vec.phi164 = phi <2 x i64> [ zeroinitializer, %vector.ph159 ], [ %i.cn, %vector.body162 ]
  %vec.phi165 = phi <2 x i64> [ zeroinitializer, %vector.ph159 ], [ %i.co, %vector.body162 ]
  %i.cd = getelementptr [4 x i8], ptr %i.cc, i64 %index163 ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 8
  %wide.load166 = load <2 x i32>, ptr %i.cd, align 4, !tbaa !7 ; 2 uses
  %wide.load167 = load <2 x i32>, ptr %i.ce, align 4, !tbaa !7 ; 2 uses
  %i.cf = icmp ugt <2 x i32> %wide.load166, splat (i32 65535)
  %i.cg = icmp ugt <2 x i32> %wide.load167, splat (i32 65535)
  %i.ch = icmp ugt <2 x i32> %wide.load166, splat (i32 255)
  %i.ci = icmp ugt <2 x i32> %wide.load167, splat (i32 255)
  %i.cj = select <2 x i1> %i.ch, <2 x i64> splat (i64 6), <2 x i64> splat (i64 4)
  %i.ck = select <2 x i1> %i.ci, <2 x i64> splat (i64 6), <2 x i64> splat (i64 4)
  %i.cl = select <2 x i1> %i.cf, <2 x i64> splat (i64 10), <2 x i64> %i.cj
  %i.cm = select <2 x i1> %i.cg, <2 x i64> splat (i64 10), <2 x i64> %i.ck
  %i.cn = add <2 x i64> %i.cl, %vec.phi164        ; 2 uses
  %i.co = add <2 x i64> %i.cm, %vec.phi165        ; 2 uses
  %index.next168 = add nuw i64 %index163, 4       ; 2 uses
  %i.cp = icmp eq i64 %index.next168, %n.vec161
  br i1 %i.cp, label %middle.block169, label %vector.body162, !llvm.loop !144

middle.block169:                                  ; preds = %vector.body162
  %bin.rdx170 = add <2 x i64> %i.co, %i.cn
  %i.cq = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx170) ; 2 uses
  %cmp.n171 = icmp eq i64 %i.ca, %n.vec161
  br i1 %cmp.n171, label %._crit_edge, label %_PyUnicode_DATA.exit25.i.us.preheader

_PyUnicode_DATA.exit25.i.us.preheader:            ; preds = %.lr.ph.split.split.us, %middle.block169
  %.01563.us73.ph = phi i64 [ 0, %.lr.ph.split.split.us ], [ %i.cq, %middle.block169 ]
  %.01662.us74.ph = phi i64 [ %.pre, %.lr.ph.split.split.us ], [ %i.cb, %middle.block169 ]
  br label %_PyUnicode_DATA.exit25.i.us

_PyUnicode_DATA.exit25.i.us:                      ; preds = %_PyUnicode_DATA.exit25.i.us.preheader, %_PyUnicode_DATA.exit25.i.us
  %.01563.us73 = phi i64 [ %i.cv, %_PyUnicode_DATA.exit25.i.us ], [ %.01563.us73.ph, %_PyUnicode_DATA.exit25.i.us.preheader ]
  %.01662.us74 = phi i64 [ %i.cw, %_PyUnicode_DATA.exit25.i.us ], [ %.01662.us74.ph, %_PyUnicode_DATA.exit25.i.us.preheader ] ; 2 uses
  %i.cr = getelementptr [4 x i8], ptr %.val4.i24.i.us, i64 %.01662.us74
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !7  ; 2 uses
  %i.ct = icmp ugt i32 %i.cs, 65535
  %i.cu = icmp samesign ugt i32 %i.cs, 255
  %..i.us75 = select i1 %i.cu, i64 6, i64 4
  %.0.i21.us76 = select i1 %i.ct, i64 10, i64 %..i.us75
  %i.cv = add i64 %.0.i21.us76, %.01563.us73      ; 2 uses
  %i.cw = add nsw i64 %.01662.us74, 1             ; 2 uses
  %exitcond99.not = icmp eq i64 %i.cw, %i.o
  br i1 %exitcond99.not, label %._crit_edge, label %_PyUnicode_DATA.exit25.i.us, !llvm.loop !145

._crit_edge:                                      ; preds = %_PyUnicode_DATA.exit17.i.us, %_PyUnicode_DATA.exit17.i.us.us, %_PyUnicode_DATA.exit25.i, %_PyUnicode_DATA.exit25.i.us, %middle.block, %middle.block135, %middle.block152, %middle.block169, %.lr.ph.split.us, %bb.d
  %.015.lcssa = phi i64 [ 0, %bb.d ], [ %i.dd, %_PyUnicode_DATA.exit25.i ], [ %i.cv, %_PyUnicode_DATA.exit25.i.us ], [ %i.bc, %_PyUnicode_DATA.exit17.i.us.us ], [ %i.y, %.lr.ph.split.us ], [ %i.cq, %middle.block169 ], [ %i.bz, %middle.block152 ], [ %i.ay, %middle.block135 ], [ %i.al, %middle.block ], [ %i.bh, %_PyUnicode_DATA.exit17.i.us ]
  %i.cx = call ptr @PyUnicode_New(i64 noundef %.015.lcssa, i32 noundef 127) #10 ; 5 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.e, label %bb.h

_PyUnicode_DATA.exit25.i:                         ; preds = %_PyUnicode_DATA.exit25.i.preheader176, %_PyUnicode_DATA.exit25.i
  %.01563 = phi i64 [ %i.dd, %_PyUnicode_DATA.exit25.i ], [ %.01563.ph, %_PyUnicode_DATA.exit25.i.preheader176 ]
  %.01662 = phi i64 [ %i.de, %_PyUnicode_DATA.exit25.i ], [ %.01662.ph, %_PyUnicode_DATA.exit25.i.preheader176 ] ; 2 uses
  %i.cz = getelementptr [4 x i8], ptr %.0.i.i14.i, i64 %.01662
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !7  ; 2 uses
  %i.db = icmp ugt i32 %i.da, 65535
  %i.dc = icmp samesign ugt i32 %i.da, 255
  %..i = select i1 %i.dc, i64 6, i64 4
  %.0.i21 = select i1 %i.db, i64 10, i64 %..i
  %i.dd = add i64 %.0.i21, %.01563                ; 2 uses
  %i.de = add nsw i64 %.01662, 1                  ; 2 uses
  %exitcond98.not = icmp eq i64 %i.de, %i.o
  br i1 %exitcond98.not, label %._crit_edge, label %_PyUnicode_DATA.exit25.i, !llvm.loop !146

bb.e:                                             ; preds = %._crit_edge
  %i.df = load ptr, ptr %i.a, align 8, !tbaa !14  ; 3 uses
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !110 ; 2 uses
  %.not.i18 = icmp sgt i32 %i.dg, -1
  br i1 %.not.i18, label %bb.f, label %Py_DECREF.exit19

bb.f:                                             ; preds = %bb.e
  %i.dh = add nsw i32 %i.dg, -1                   ; 2 uses
  store i32 %i.dh, ptr %i.df, align 8, !tbaa !110
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.g, label %Py_DECREF.exit19

bb.g:                                             ; preds = %bb.f
  call void @_Py_Dealloc(ptr noundef nonnull %i.df) #10
  br label %Py_DECREF.exit19

bb.h:                                             ; preds = %._crit_edge
  %i.dj = getelementptr i8, ptr %i.cx, i64 32
  %.val.i = load i32, ptr %i.dj, align 8          ; 2 uses
  %i.dk = and i32 %.val.i, 32
  %.not.i22 = icmp eq i32 %i.dk, 0
  br i1 %.not.i22, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dl = and i32 %.val.i, 64
  %.not.i.i = icmp eq i32 %i.dl, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i23 = getelementptr i8, ptr %i.cx, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.j:                                             ; preds = %bb.h
  %i.dm = getelementptr i8, ptr %i.cx, i64 56
  %.val4.i = load ptr, ptr %i.dm, align 8, !tbaa !110
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.i, %bb.j
  %.0.i24 = phi ptr [ %.0.i.i23, %bb.i ], [ %.val4.i, %bb.j ]
  %i.dn = load i64, ptr %i.c, align 8, !tbaa !124 ; 2 uses
  %i.do = load i64, ptr %i.d, align 8, !tbaa !124
  %i.dp = icmp slt i64 %i.dn, %i.do
  br i1 %i.dp, label %.lr.ph85, label %._crit_edge86

._crit_edge86:                                    ; preds = %codec_handler_write_unicode_hex.exit, %_PyUnicode_DATA.exit
  %i.dq = load ptr, ptr %i.a, align 8, !tbaa !14  ; 3 uses
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !110 ; 2 uses
  %.not.i = icmp sgt i32 %i.dr, -1
  br i1 %.not.i, label %bb.k, label %Py_DECREF.exit

bb.k:                                             ; preds = %._crit_edge86
  %i.ds = add nsw i32 %i.dr, -1                   ; 2 uses
  store i32 %i.ds, ptr %i.dq, align 8, !tbaa !110
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.l, label %Py_DECREF.exit

bb.l:                                             ; preds = %bb.k
  call void @_Py_Dealloc(ptr noundef nonnull %i.dq) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %._crit_edge86, %bb.k, %bb.l
  %i.du = load i64, ptr %i.d, align 8, !tbaa !124
  %i.dv = call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.14, ptr noundef nonnull %i.cx, i64 noundef %i.du) #10
  br label %Py_DECREF.exit19

.lr.ph85:                                         ; preds = %_PyUnicode_DATA.exit, %codec_handler_write_unicode_hex.exit
  %.01482 = phi i64 [ %i.hl, %codec_handler_write_unicode_hex.exit ], [ %i.dn, %_PyUnicode_DATA.exit ] ; 4 uses
  %.081 = phi ptr [ %i.hk, %codec_handler_write_unicode_hex.exit ], [ %.0.i24, %_PyUnicode_DATA.exit ] ; 14 uses
  %i.dw = load ptr, ptr %i.a, align 8, !tbaa !14  ; 7 uses
  %i.dx = getelementptr i8, ptr %i.dw, i64 32
  %i.dy = load i32, ptr %i.dx, align 8            ; 5 uses
  %2 = lshr i32 %i.dy, 2
  %i.dz = and i32 %2, 7
  %i.ea = and i32 %i.dy, 32
  %.not.i19.i25 = icmp eq i32 %i.ea, 0            ; 3 uses
  switch i32 %i.dz, label %bb.s [
    i32 1, label %bb.m
    i32 2, label %bb.p
  ]

bb.m:                                             ; preds = %.lr.ph85
  br i1 %.not.i19.i25, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eb = and i32 %i.dy, 64
  %.not.i.i.i33 = icmp eq i32 %i.eb, 0
  %.0.v.i.i.i34 = select i1 %.not.i.i.i33, i64 56, i64 40
  %.0.i.i.i35 = getelementptr i8, ptr %i.dw, i64 %.0.v.i.i.i34
  br label %_PyUnicode_DATA.exit.i36

bb.o:                                             ; preds = %bb.m
  %i.ec = getelementptr i8, ptr %i.dw, i64 56
  %.val4.i.i38 = load ptr, ptr %i.ec, align 8, !tbaa !110
  br label %_PyUnicode_DATA.exit.i36

_PyUnicode_DATA.exit.i36:                         ; preds = %bb.o, %bb.n
  %.0.i.i37 = phi ptr [ %.0.i.i.i35, %bb.n ], [ %.val4.i.i38, %bb.o ]
  %i.ed = getelementptr i8, ptr %.0.i.i37, i64 %.01482
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !110
  %i.ef = zext i8 %i.ee to i32
  br label %PyUnicode_READ_CHAR.exit45.thread

bb.p:                                             ; preds = %.lr.ph85
  br i1 %.not.i19.i25, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eg = and i32 %i.dy, 64
  %.not.i.i12.i26 = icmp eq i32 %i.eg, 0
  %.0.v.i.i13.i27 = select i1 %.not.i.i12.i26, i64 56, i64 40
  %.0.i.i14.i28 = getelementptr i8, ptr %i.dw, i64 %.0.v.i.i13.i27
  br label %_PyUnicode_DATA.exit17.i29

bb.r:                                             ; preds = %bb.p
  %i.eh = getelementptr i8, ptr %i.dw, i64 56
  %.val4.i16.i32 = load ptr, ptr %i.eh, align 8, !tbaa !110
  br label %_PyUnicode_DATA.exit17.i29

_PyUnicode_DATA.exit17.i29:                       ; preds = %bb.r, %bb.q
  %.0.i15.i30 = phi ptr [ %.0.i.i14.i28, %bb.q ], [ %.val4.i16.i32, %bb.r ]
  %i.ei = getelementptr [2 x i8], ptr %.0.i15.i30, i64 %.01482
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !125
  %i.ek = zext i16 %i.ej to i32
  br label %PyUnicode_READ_CHAR.exit45.thread

bb.s:                                             ; preds = %.lr.ph85
  br i1 %.not.i19.i25, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.el = and i32 %i.dy, 64
  %.not.i.i20.i39 = icmp eq i32 %i.el, 0
  %.0.v.i.i21.i40 = select i1 %.not.i.i20.i39, i64 56, i64 40
  %.0.i.i22.i41 = getelementptr i8, ptr %i.dw, i64 %.0.v.i.i21.i40
  br label %PyUnicode_READ_CHAR.exit45

bb.u:                                             ; preds = %bb.s
  %i.em = getelementptr i8, ptr %i.dw, i64 56
  %.val4.i24.i44 = load ptr, ptr %i.em, align 8, !tbaa !110
  br label %PyUnicode_READ_CHAR.exit45

PyUnicode_READ_CHAR.exit45.thread:                ; preds = %_PyUnicode_DATA.exit.i36, %_PyUnicode_DATA.exit17.i29
  %.0.i31.ph = phi i32 [ %i.ek, %_PyUnicode_DATA.exit17.i29 ], [ %i.ef, %_PyUnicode_DATA.exit.i36 ]
  %i.en = getelementptr i8, ptr %.081, i64 1
  store i8 92, ptr %.081, align 1, !tbaa !110
  br label %bb.w

PyUnicode_READ_CHAR.exit45:                       ; preds = %bb.t, %bb.u
  %.0.i23.i43 = phi ptr [ %.0.i.i22.i41, %bb.t ], [ %.val4.i24.i44, %bb.u ]
  %i.eo = getelementptr [4 x i8], ptr %.0.i23.i43, i64 %.01482
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !7  ; 9 uses
  %i.eq = getelementptr i8, ptr %.081, i64 1      ; 2 uses
  store i8 92, ptr %.081, align 1, !tbaa !110
  %i.er = icmp ugt i32 %i.ep, 65535
  br i1 %i.er, label %bb.v, label %bb.w

bb.v:                                             ; preds = %PyUnicode_READ_CHAR.exit45
  %i.es = getelementptr i8, ptr %.081, i64 2
  store i8 85, ptr %i.eq, align 1, !tbaa !110
  %i.et = load ptr, ptr @Py_hexdigits, align 8, !tbaa !137
  %i.eu = lshr i32 %i.ep, 28
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = getelementptr i8, ptr %i.et, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !110
  %i.ey = getelementptr i8, ptr %.081, i64 3
  store i8 %i.ex, ptr %i.es, align 1, !tbaa !110
  %i.ez = load ptr, ptr @Py_hexdigits, align 8, !tbaa !137
  %i.fa = lshr i32 %i.ep, 24
  %i.fb = and i32 %i.fa, 15
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = getelementptr i8, ptr %i.ez, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !110
  %i.ff = getelementptr i8, ptr %.081, i64 4
  store i8 %i.fe, ptr %i.ey, align 1, !tbaa !110
  %i.fg = load ptr, ptr @Py_hexdigits, align 8, !tbaa !137
  %i.fh = lshr i32 %i.ep, 20
  %i.fi = and i32 %i.fh, 15
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = getelementptr i8, ptr %i.fg, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !110
  %i.fm = getelementptr i8, ptr %.081, i64 5
  store i8 %i.fl, ptr %i.ff, align 1, !tbaa !110
  %i.fn = load ptr, ptr @Py_hexdigits, align 8, !tbaa !137
  %i.fo = lshr i32 %i.ep, 16
  %i.fp = and i32 %i.fo, 15
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = getelementptr i8, ptr %i.fn, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !110
  %i.ft = getelementptr i8, ptr %.081, i64 6
  store i8 %i.fs, ptr %i.fm, align 1, !tbaa !110
  %i.fu = load ptr, ptr @Py_hexdigits, align 8, !tbaa !137
  %i.fv = lshr i32 %i.ep, 12
  %i.fw = and i32 %i.fv, 15
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = getelementptr i8, ptr %i.fu, i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !110
  %i.ga = getelementptr i8, ptr %.081, i64 7
  store i8 %i.fz, ptr %i.ft, align 1, !tbaa !110
  %i.gb = load ptr, ptr @Py_hexdigits, align 8, !tbaa !137
  %i.gc = lshr i32 %i.ep, 8
  %i.gd = and i32 %i.gc, 15
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = getelementptr i8, ptr %i.gb, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !110
  %i.gh = getelementptr i8, ptr %.081, i64 8
  store i8 %i.gg, ptr %i.ga, align 1, !tbaa !110
  br label %codec_handler_write_unicode_hex.exit

bb.w:                                             ; preds = %PyUnicode_READ_CHAR.exit45.thread, %PyUnicode_READ_CHAR.exit45
  %i.gi = phi ptr [ %i.en, %PyUnicode_READ_CHAR.exit45.thread ], [ %i.eq, %PyUnicode_READ_CHAR.exit45 ] ; 2 uses
  %.0.i3160 = phi i32 [ %.0.i31.ph, %PyUnicode_READ_CHAR.exit45.thread ], [ %i.ep, %PyUnicode_READ_CHAR.exit45 ] ; 5 uses
  %i.gj = icmp samesign ugt i32 %.0.i3160, 255
  %i.gk = getelementptr i8, ptr %.081, i64 2      ; 2 uses
  br i1 %i.gj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i8 117, ptr %i.gi, align 1, !tbaa !110
  %i.gl = load ptr, ptr @Py_hexdigits, align 8, !tbaa !137
  %i.gm = lshr i32 %.0.i3160, 12
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = getelementptr i8, ptr %i.gl, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !110
  %i.gq = getelementptr i8, ptr %.081, i64 3
  store i8 %i.gp, ptr %i.gk, align 1, !tbaa !110
  %i.gr = load ptr, ptr @Py_hexdigits, align 8, !tbaa !137
  %i.gs = lshr i32 %.0.i3160, 8
  %i.gt = and i32 %i.gs, 15
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = getelementptr i8, ptr %i.gr, i64 %i.gu
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !110
  %i.gx = getelementptr i8, ptr %.081, i64 4
  store i8 %i.gw, ptr %i.gq, align 1, !tbaa !110
  br label %codec_handler_write_unicode_hex.exit

bb.y:                                             ; preds = %bb.w
  store i8 120, ptr %i.gi, align 1, !tbaa !110
  br label %codec_handler_write_unicode_hex.exit

codec_handler_write_unicode_hex.exit:             ; preds = %bb.v, %bb.x, %bb.y
  %.0.i3161 = phi i32 [ %i.ep, %bb.v ], [ %.0.i3160, %bb.x ], [ %.0.i3160, %bb.y ] ; 2 uses
  %.158 = phi ptr [ %i.gh, %bb.v ], [ %i.gx, %bb.x ], [ %i.gk, %bb.y ] ; 3 uses
  %i.gy = load ptr, ptr @Py_hexdigits, align 8, !tbaa !137
  %i.gz = lshr i32 %.0.i3161, 4
  %i.ha = and i32 %i.gz, 15
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = getelementptr i8, ptr %i.gy, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !110
  %i.he = getelementptr i8, ptr %.158, i64 1
  store i8 %i.hd, ptr %.158, align 1, !tbaa !110
  %i.hf = load ptr, ptr @Py_hexdigits, align 8, !tbaa !137
  %i.hg = and i32 %.0.i3161, 15
  %i.hh = zext nneg i32 %i.hg to i64
  %i.hi = getelementptr i8, ptr %i.hf, i64 %i.hh
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !110
  %i.hk = getelementptr i8, ptr %.158, i64 2
  store i8 %i.hj, ptr %i.he, align 1, !tbaa !110
  %i.hl = add nsw i64 %.01482, 1                  ; 2 uses
  %i.hm = load i64, ptr %i.d, align 8, !tbaa !124
  %i.hn = icmp slt i64 %i.hl, %i.hm
  br i1 %i.hn, label %.lr.ph85, label %._crit_edge86, !llvm.loop !147

Py_DECREF.exit19:                                 ; preds = %bb.g, %bb.f, %bb.e, %Py_DECREF.exit, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.dv, %Py_DECREF.exit ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyCodec_NameReplaceErrors(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca [256 x i8], align 16              ; 7 uses
  %i.e = load ptr, ptr @PyExc_UnicodeEncodeError, align 8, !tbaa !14 ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.f, align 8, !tbaa !113 ; 2 uses
  %.not.i42 = icmp eq ptr %.val, %i.e
  br i1 %.not.i42, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.a
  %i.g = tail call i32 @PyType_IsSubtype(ptr noundef %.val, ptr noundef %i.e) #10
  %.not88 = icmp eq i32 %i.g, 0
  br i1 %.not88, label %bb.b, label %PyObject_TypeCheck.exit.thread

bb.b:                                             ; preds = %PyObject_TypeCheck.exit
  %i.h = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !14
  %i.i = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.h, ptr noundef nonnull @.str.47, ptr noundef nonnull %0) #10 ; 0 uses
  br label %bb.ao

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.a, %PyObject_TypeCheck.exit
  %i.j = tail call ptr @_PyUnicode_GetNameCAPI() #10 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.ao, label %bb.c

bb.c:                                             ; preds = %PyObject_TypeCheck.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.l = call i32 @_PyUnicodeError_GetParams(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef null, i32 noundef 0) #10
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.an, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.n = load i64, ptr %i.b, align 8, !tbaa !124  ; 3 uses
  %i.o = load i64, ptr %i.c, align 8, !tbaa !124
  %i.p = icmp slt i64 %i.n, %i.o
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %bb.q
  %.03090 = phi i64 [ %i.as, %bb.q ], [ %i.n, %bb.d ] ; 5 uses
  %.03189 = phi i64 [ %i.ar, %bb.q ], [ 0, %bb.d ] ; 3 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !14   ; 7 uses
  %i.r = getelementptr i8, ptr %i.q, i64 32
  %i.s = load i32, ptr %i.r, align 8              ; 5 uses
  %1 = lshr i32 %i.s, 2
  %i.t = and i32 %1, 7
  %i.u = and i32 %i.s, 32
  %.not.i19.i = icmp eq i32 %i.u, 0               ; 3 uses
  switch i32 %i.t, label %bb.k [
    i32 1, label %bb.e
    i32 2, label %bb.h
  ]

bb.e:                                             ; preds = %.lr.ph
  br i1 %.not.i19.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = and i32 %i.s, 64
  %.not.i.i.i = icmp eq i32 %i.v, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.q, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.g:                                             ; preds = %bb.e
  %i.w = getelementptr i8, ptr %i.q, i64 56
  %.val4.i.i = load ptr, ptr %i.w, align 8, !tbaa !110
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.g, %bb.f
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.f ], [ %.val4.i.i, %bb.g ]
  %i.x = getelementptr i8, ptr %.0.i.i, i64 %.03090
  %i.y = load i8, ptr %i.x, align 1, !tbaa !110
  %i.z = zext i8 %i.y to i32
  br label %PyUnicode_READ_CHAR.exit

bb.h:                                             ; preds = %.lr.ph
  br i1 %.not.i19.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = and i32 %i.s, 64
  %.not.i.i12.i = icmp eq i32 %i.aa, 0
  %.0.v.i.i13.i = select i1 %.not.i.i12.i, i64 56, i64 40
  %.0.i.i14.i = getelementptr i8, ptr %i.q, i64 %.0.v.i.i13.i
  br label %_PyUnicode_DATA.exit17.i

bb.j:                                             ; preds = %bb.h
  %i.ab = getelementptr i8, ptr %i.q, i64 56
  %.val4.i16.i = load ptr, ptr %i.ab, align 8, !tbaa !110
  br label %_PyUnicode_DATA.exit17.i

_PyUnicode_DATA.exit17.i:                         ; preds = %bb.j, %bb.i
  %.0.i15.i = phi ptr [ %.0.i.i14.i, %bb.i ], [ %.val4.i16.i, %bb.j ]
  %i.ac = getelementptr [2 x i8], ptr %.0.i15.i, i64 %.03090
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !125
  %i.ae = zext i16 %i.ad to i32
  br label %PyUnicode_READ_CHAR.exit

bb.k:                                             ; preds = %.lr.ph
  br i1 %.not.i19.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = and i32 %i.s, 64
  %.not.i.i20.i = icmp eq i32 %i.af, 0
  %.0.v.i.i21.i = select i1 %.not.i.i20.i, i64 56, i64 40
  %.0.i.i22.i = getelementptr i8, ptr %i.q, i64 %.0.v.i.i21.i
  br label %_PyUnicode_DATA.exit25.i

bb.m:                                             ; preds = %bb.k
  %i.ag = getelementptr i8, ptr %i.q, i64 56
  %.val4.i24.i = load ptr, ptr %i.ag, align 8, !tbaa !110
  br label %_PyUnicode_DATA.exit25.i

_PyUnicode_DATA.exit25.i:                         ; preds = %bb.m, %bb.l
  %.0.i23.i = phi ptr [ %.0.i.i22.i, %bb.l ], [ %.val4.i24.i, %bb.m ]
  %i.ah = getelementptr [4 x i8], ptr %.0.i23.i, i64 %.03090
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit

PyUnicode_READ_CHAR.exit:                         ; preds = %_PyUnicode_DATA.exit.i, %_PyUnicode_DATA.exit17.i, %_PyUnicode_DATA.exit25.i
  %.0.i = phi i32 [ %i.z, %_PyUnicode_DATA.exit.i ], [ %i.ae, %_PyUnicode_DATA.exit17.i ], [ %i.ai, %_PyUnicode_DATA.exit25.i ] ; 3 uses
  %i.aj = load ptr, ptr %i.j, align 8, !tbaa !148
  %i.ak = call i32 %i.aj(i32 noundef %.0.i, ptr noundef nonnull %i.d, i32 noundef 256, i32 noundef 1) #10
  %.not37 = icmp eq i32 %i.ak, 0
  br i1 %.not37, label %bb.o, label %bb.n

bb.n:                                             ; preds = %PyUnicode_READ_CHAR.exit
  %i.al = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #11
  %i.am = add i64 %i.al, 4
  br label %bb.p

bb.o:                                             ; preds = %PyUnicode_READ_CHAR.exit
  %i.an = icmp ugt i32 %.0.i, 65535
  %i.ao = icmp samesign ugt i32 %.0.i, 255
  %..i = select i1 %i.ao, i64 6, i64 4
  %.0.i43 = select i1 %i.an, i64 10, i64 %..i
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.034 = phi i64 [ %i.am, %bb.n ], [ %.0.i43, %bb.o ] ; 2 uses
  %i.ap = sub i64 9223372036854775807, %.034
  %i.aq = icmp sgt i64 %.03189, %i.ap
  br i1 %i.aq, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ar = add i64 %.034, %.03189                  ; 2 uses
  %i.as = add nsw i64 %.03090, 1                  ; 3 uses
  %i.at = load i64, ptr %i.c, align 8, !tbaa !124
  %i.au = icmp slt i64 %i.as, %i.at
  br i1 %i.au, label %.lr.ph, label %._crit_edge, !llvm.loop !150

._crit_edge:                                      ; preds = %bb.q, %bb.p, %bb.d
  %.031.lcssa = phi i64 [ 0, %bb.d ], [ %.03189, %bb.p ], [ %i.ar, %bb.q ]
  %.030.lcssa = phi i64 [ %i.n, %bb.d ], [ %.03090, %bb.p ], [ %i.as, %bb.q ] ; 3 uses
  %i.av = call ptr @PyUnicode_New(i64 noundef %.031.lcssa, i32 noundef 127) #10 ; 5 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.r, label %bb.t

bb.r:                                             ; preds = %._crit_edge
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !14  ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !110 ; 2 uses
  %.not.i39 = icmp sgt i32 %i.ay, -1
  br i1 %.not.i39, label %bb.s, label %Py_DECREF.exit40

bb.s:                                             ; preds = %bb.r
  %i.az = add nsw i32 %i.ay, -1                   ; 2 uses
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !110
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %Py_DECREF.exit40.sink.split, label %Py_DECREF.exit40

bb.t:                                             ; preds = %._crit_edge
  %i.bb = getelementptr i8, ptr %i.av, i64 32
  %.val.i = load i32, ptr %i.bb, align 8          ; 2 uses
  %i.bc = and i32 %.val.i, 32
  %.not.i44 = icmp eq i32 %i.bc, 0
  br i1 %.not.i44, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bd = and i32 %.val.i, 64
  %.not.i.i = icmp eq i32 %i.bd, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i45 = getelementptr i8, ptr %i.av, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.v:                                             ; preds = %bb.t
  %i.be = getelementptr i8, ptr %i.av, i64 56
  %.val4.i = load ptr, ptr %i.be, align 8, !tbaa !110
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.u, %bb.v
  %.0.i46 = phi ptr [ %.0.i.i45, %bb.u ], [ %.val4.i, %bb.v ]
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !124 ; 2 uses
  %i.bg = icmp slt i64 %i.bf, %.030.lcssa
  br i1 %i.bg, label %.lr.ph97, label %._crit_edge98

._crit_edge98:                                    ; preds = %bb.am, %_PyUnicode_DATA.exit
  %i.bh = call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.14, ptr noundef nonnull %i.av, i64 noundef %.030.lcssa) #10 ; 3 uses
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !14  ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !110 ; 2 uses
  %.not.i = icmp sgt i32 %i.bj, -1
  br i1 %.not.i, label %bb.w, label %Py_DECREF.exit40

bb.w:                                             ; preds = %._crit_edge98
  %i.bk = add nsw i32 %i.bj, -1                   ; 2 uses
  store i32 %i.bk, ptr %i.bi, align 8, !tbaa !110
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %Py_DECREF.exit40.sink.split, label %Py_DECREF.exit40

.lr.ph97:                                         ; preds = %_PyUnicode_DATA.exit, %bb.am
  %.02996 = phi i64 [ %i.fh, %bb.am ], [ %i.bf, %_PyUnicode_DATA.exit ] ; 4 uses
  %.08595 = phi ptr [ %.186, %bb.am ], [ %.0.i46, %_PyUnicode_DATA.exit ] ; 14 uses
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !14  ; 7 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 32
  %i.bo = load i32, ptr %i.bn, align 8            ; 5 uses
  %2 = lshr i32 %i.bo, 2
  %i.bp = and i32 %2, 7
  %i.bq = and i32 %i.bo, 32
  %.not.i19.i47 = icmp eq i32 %i.bq, 0            ; 3 uses
  switch i32 %i.bp, label %bb.ad [
    i32 1, label %bb.x
    i32 2, label %bb.aa
  ]

bb.x:                                             ; preds = %.lr.ph97
  br i1 %.not.i19.i47, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.br = and i32 %i.bo, 64
  %.not.i.i.i55 = icmp eq i32 %i.br, 0
  %.0.v.i.i.i56 = select i1 %.not.i.i.i55, i64 56, i64 40
  %.0.i.i.i57 = getelementptr i8, ptr %i.bm, i64 %.0.v.i.i.i56
  br label %_PyUnicode_DATA.exit.i58

bb.z:                                             ; preds = %bb.x
  %i.bs = getelementptr i8, ptr %i.bm, i64 56
  %.val4.i.i60 = load ptr, ptr %i.bs, align 8, !tbaa !110
  br label %_PyUnicode_DATA.exit.i58

_PyUnicode_DATA.exit.i58:                         ; preds = %bb.z, %bb.y
  %.0.i.i59 = phi ptr [ %.0.i.i.i57, %bb.y ], [ %.val4.i.i60, %bb.z ]
  %i.bt = getelementptr i8, ptr %.0.i.i59, i64 %.02996
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !110
  %i.bv = zext i8 %i.bu to i32
  br label %PyUnicode_READ_CHAR.exit67

bb.aa:                                            ; preds = %.lr.ph97
  br i1 %.not.i19.i47, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bw = and i32 %i.bo, 64
  %.not.i.i12.i48 = icmp eq i32 %i.bw, 0
  %.0.v.i.i13.i49 = select i1 %.not.i.i12.i48, i64 56, i64 40
  %.0.i.i14.i50 = getelementptr i8, ptr %i.bm, i64 %.0.v.i.i13.i49
  br label %_PyUnicode_DATA.exit17.i51

bb.ac:                                            ; preds = %bb.aa
  %i.bx = getelementptr i8, ptr %i.bm, i64 56
  %.val4.i16.i54 = load ptr, ptr %i.bx, align 8, !tbaa !110
  br label %_PyUnicode_DATA.exit17.i51

_PyUnicode_DATA.exit17.i51:                       ; preds = %bb.ac, %bb.ab
  %.0.i15.i52 = phi ptr [ %.0.i.i14.i50, %bb.ab ], [ %.val4.i16.i54, %bb.ac ]
  %i.by = getelementptr [2 x i8], ptr %.0.i15.i52, i64 %.02996
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !125
  %i.ca = zext i16 %i.bz to i32
  br label %PyUnicode_READ_CHAR.exit67

bb.ad:                                            ; preds = %.lr.ph97
  br i1 %.not.i19.i47, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cb = and i32 %i.bo, 64
  %.not.i.i20.i61 = icmp eq i32 %i.cb, 0
  %.0.v.i.i21.i62 = select i1 %.not.i.i20.i61, i64 56, i64 40
  %.0.i.i22.i63 = getelementptr i8, ptr %i.bm, i64 %.0.v.i.i21.i62
  br label %_PyUnicode_DATA.exit25.i64

bb.af:                                            ; preds = %bb.ad
  %i.cc = getelementptr i8, ptr %i.bm, i64 56
  %.val4.i24.i66 = load ptr, ptr %i.cc, align 8, !tbaa !110
  br label %_PyUnicode_DATA.exit25.i64

_PyUnicode_DATA.exit25.i64:                       ; preds = %bb.af, %bb.ae
  %.0.i23.i65 = phi ptr [ %.0.i.i22.i63, %bb.ae ], [ %.val4.i24.i66, %bb.af ]
  %i.cd = getelementptr [4 x i8], ptr %.0.i23.i65, i64 %.02996
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit67

PyUnicode_READ_CHAR.exit67:                       ; preds = %_PyUnicode_DATA.exit.i58, %_PyUnicode_DATA.exit17.i51, %_PyUnicode_DATA.exit25.i64
  %.0.i53 = phi i32 [ %i.bv, %_PyUnicode_DATA.exit.i58 ], [ %i.ca, %_PyUnicode_DATA.exit17.i51 ], [ %i.ce, %_PyUnicode_DATA.exit25.i64 ] ; 13 uses
  %i.cf = load ptr, ptr %i.j, align 8, !tbaa !148
  %i.cg = call i32 %i.cf(i32 noundef %.0.i53, ptr noundef nonnull %i.d, i32 noundef 256, i32 noundef 1) #10
  %.not38 = icmp eq i32 %i.cg, 0
  %i.ch = getelementptr i8, ptr %.08595, i64 1    ; 4 uses
  store i8 92, ptr %.08595, align 1, !tbaa !110
  br i1 %.not38, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %PyUnicode_READ_CHAR.exit67
  %i.ci = getelementptr i8, ptr %.08595, i64 2
  store i8 78, ptr %i.ch, align 1, !tbaa !110
  %i.cj = getelementptr i8, ptr %.08595, i64 3    ; 2 uses
  store i8 123, ptr %i.ci, align 1, !tbaa !110
  %i.ck = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.cj, ptr noundef nonnull dereferenceable(1) %i.d) #10 ; 0 uses
  %i.cl = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #11
  %i.cm = getelementptr i8, ptr %i.cj, i64 %i.cl  ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 1
  store i8 125, ptr %i.cm, align 1, !tbaa !110
  br label %bb.am

bb.ah:                                            ; preds = %PyUnicode_READ_CHAR.exit67
  %i.co = icmp ugt i32 %.0.i53, 65535
  br i1 %i.co, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cp = getelementptr i8, ptr %.08595, i64 2
  store i8 85, ptr %i.ch, align 1, !tbaa !110
  %i.cq = load ptr, ptr @Py_hexdigits, align 8, !tbaa !137
  %i.cr = lshr i32 %.0.i53, 28
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr i8, ptr %i.cq, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !110
  %i.cv = getelementptr i8, ptr %.08595, i64 3
  store i8 %i.cu, ptr %i.cp, align 1, !tbaa !110
  %i.cw = load ptr, ptr @Py_hexdigits, align 8, !tbaa !137
  %i.cx = lshr i32 %.0.i53, 24
  %i.cy = and i32 %i.cx, 15
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr i8, ptr %i.cw, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !110
  %i.dc = getelementptr i8, ptr %.08595, i64 4
  store i8 %i.db, ptr %i.cv, align 1, !tbaa !110
  %i.dd = load ptr, ptr @Py_hexdigits, align 8, !tbaa !137
  %i.de = lshr i32 %.0.i53, 20
  %i.df = and i32 %i.de, 15
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr i8, ptr %i.dd, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !110
  %i.dj = getelementptr i8, ptr %.08595, i64 5
  store i8 %i.di, ptr %i.dc, align 1, !tbaa !110
  %i.dk = load ptr, ptr @Py_hexdigits, align 8, !tbaa !137
  %i.dl = lshr i32 %.0.i53, 16
  %i.dm = and i32 %i.dl, 15
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr i8, ptr %i.dk, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !110
  %i.dq = getelementptr i8, ptr %.08595, i64 6
  store i8 %i.dp, ptr %i.dj, align 1, !tbaa !110
  %i.dr = load ptr, ptr @Py_hexdigits, align 8, !tbaa !137
  %i.ds = lshr i32 %.0.i53, 12
  %i.dt = and i32 %i.ds, 15
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr i8, ptr %i.dr, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !110
  %i.dx = getelementptr i8, ptr %.08595, i64 7
  store i8 %i.dw, ptr %i.dq, align 1, !tbaa !110
  %i.dy = load ptr, ptr @Py_hexdigits, align 8, !tbaa !137
  %i.dz = lshr i32 %.0.i53, 8
  %i.ea = and i32 %i.dz, 15
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr i8, ptr %i.dy, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !110
  %i.ee = getelementptr i8, ptr %.08595, i64 8
  store i8 %i.ed, ptr %i.dx, align 1, !tbaa !110
  br label %codec_handler_write_unicode_hex.exit

bb.aj:                                            ; preds = %bb.ah
  %i.ef = icmp samesign ugt i32 %.0.i53, 255
  %i.eg = getelementptr i8, ptr %.08595, i64 2    ; 2 uses
  br i1 %i.ef, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i8 117, ptr %i.ch, align 1, !tbaa !110
  %i.eh = load ptr, ptr @Py_hexdigits, align 8, !tbaa !137
  %i.ei = lshr i32 %.0.i53, 12
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = getelementptr i8, ptr %i.eh, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !110
  %i.em = getelementptr i8, ptr %.08595, i64 3
  store i8 %i.el, ptr %i.eg, align 1, !tbaa !110
  %i.en = load ptr, ptr @Py_hexdigits, align 8, !tbaa !137
  %i.eo = lshr i32 %.0.i53, 8
  %i.ep = and i32 %i.eo, 15
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr i8, ptr %i.en, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !110
  %i.et = getelementptr i8, ptr %.08595, i64 4
  store i8 %i.es, ptr %i.em, align 1, !tbaa !110
  br label %codec_handler_write_unicode_hex.exit

bb.al:                                            ; preds = %bb.aj
  store i8 120, ptr %i.ch, align 1, !tbaa !110
  br label %codec_handler_write_unicode_hex.exit

codec_handler_write_unicode_hex.exit:             ; preds = %bb.ai, %bb.ak, %bb.al
  %.2 = phi ptr [ %i.ee, %bb.ai ], [ %i.et, %bb.ak ], [ %i.eg, %bb.al ] ; 3 uses
  %i.eu = load ptr, ptr @Py_hexdigits, align 8, !tbaa !137
  %i.ev = lshr i32 %.0.i53, 4
  %i.ew = and i32 %i.ev, 15
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = getelementptr i8, ptr %i.eu, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !110
  %i.fa = getelementptr i8, ptr %.2, i64 1
  store i8 %i.ez, ptr %.2, align 1, !tbaa !110
  %i.fb = load ptr, ptr @Py_hexdigits, align 8, !tbaa !137
  %i.fc = and i32 %.0.i53, 15
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = getelementptr i8, ptr %i.fb, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !110
  %i.fg = getelementptr i8, ptr %.2, i64 2
  store i8 %i.ff, ptr %i.fa, align 1, !tbaa !110
  br label %bb.am

bb.am:                                            ; preds = %codec_handler_write_unicode_hex.exit, %bb.ag
  %.186 = phi ptr [ %i.fg, %codec_handler_write_unicode_hex.exit ], [ %i.cn, %bb.ag ]
  %i.fh = add i64 %.02996, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.fh, %.030.lcssa
  br i1 %exitcond.not, label %._crit_edge98, label %.lr.ph97, !llvm.loop !151

Py_DECREF.exit40.sink.split:                      ; preds = %bb.w, %bb.s
  %.sink = phi ptr [ %i.ax, %bb.s ], [ %i.bi, %bb.w ]
  %.0.ph = phi ptr [ null, %bb.s ], [ %i.bh, %bb.w ]
end_hunk_0
begin_hunk_1_@_PyCodec_InitRegistry:bb.a
  store i32 %i.ch, ptr %i.bx, align 8, !tbaa !110
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.aj, label %Py_DECREF.exit

bb.aj:                                            ; preds = %bb.ai
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.bx) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.ah, %bb.ai, %bb.aj
  tail call void @PyStatus_Ok(ptr dead_on_unwind writable sret(%struct.PyStatus) align 8 %0) #10
  br label %.thread

.thread:                                          ; preds = %.critedge, %bb.af, %bb.ag, %Py_DECREF.exit, %bb.f, %bb.d, %bb.b
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal noalias noundef ptr @strict_errors(ptr readnone captures(none) %0, ptr noundef %1) #5 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val3.i = load ptr, ptr %i.a, align 8, !tbaa !113 ; 2 uses
  %i.b = getelementptr i8, ptr %.val3.i, i64 168
  %.val4.i = load i64, ptr %i.b, align 8, !tbaa !114
  %i.c = and i64 %.val4.i, 1073741824
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @PyErr_SetObject(ptr noundef nonnull %.val3.i, ptr noundef nonnull %1) #10
  br label %PyCodec_StrictErrors.exit

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !14
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.13) #10
  br label %PyCodec_StrictErrors.exit

PyCodec_StrictErrors.exit:                        ; preds = %bb.b, %bb.c
  ret ptr null
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @ignore_errors(ptr readnone captures(none) %0, ptr noundef %1) #5 {
bb.a:
  %i.a = tail call ptr @PyCodec_IgnoreErrors(ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @replace_errors(ptr readnone captures(none) %0, ptr noundef %1) #5 {
bb.a:
  %i.a = tail call ptr @PyCodec_ReplaceErrors(ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @xmlcharrefreplace_errors(ptr readnone captures(none) %0, ptr noundef %1) #5 {
bb.a:
  %i.a = tail call ptr @PyCodec_XMLCharRefReplaceErrors(ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @backslashreplace_errors(ptr readnone captures(none) %0, ptr noundef %1) #5 {
bb.a:
  %i.a = tail call ptr @PyCodec_BackslashReplaceErrors(ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @namereplace_errors(ptr readnone captures(none) %0, ptr noundef %1) #5 {
bb.a:
  %i.a = tail call ptr @PyCodec_NameReplaceErrors(ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @surrogatepass_errors(ptr readnone captures(none) %0, ptr noundef %1) #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 3 uses
  %i.g = alloca i64, align 8                      ; 3 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca ptr, align 8                      ; 6 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %i.m = alloca i64, align 8                      ; 7 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %i.o = load ptr, ptr @PyExc_UnicodeEncodeError, align 8, !tbaa !14 ; 2 uses
  %i.p = getelementptr i8, ptr %1, i64 8          ; 4 uses
  %.val7.i = load ptr, ptr %i.p, align 8, !tbaa !113 ; 2 uses
  %.not.i.i = icmp eq ptr %.val7.i, %i.o
  br i1 %.not.i.i, label %PyObject_TypeCheck.exit.thread.i, label %PyObject_TypeCheck.exit.i

PyObject_TypeCheck.exit.i:                        ; preds = %bb.a
  %i.q = tail call i32 @PyType_IsSubtype(ptr noundef %.val7.i, ptr noundef %i.o) #10
  %.not19.i = icmp eq i32 %i.q, 0
  br i1 %.not19.i, label %bb.ak, label %PyObject_TypeCheck.exit.thread.i

PyObject_TypeCheck.exit.thread.i:                 ; preds = %PyObject_TypeCheck.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.r = tail call ptr @PyUnicodeEncodeError_GetEncoding(ptr noundef nonnull %1) #10 ; 5 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_PyCodec_SurrogatePassUnicodeEncodeError.exit.i, label %bb.b

bb.b:                                             ; preds = %PyObject_TypeCheck.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  %i.t = call fastcc i32 @get_standard_encoding(ptr noundef %i.r, ptr noundef %i.h, ptr noundef %i.i)
  %i.u = load i32, ptr %i.r, align 8, !tbaa !110  ; 2 uses
  %.not.i63.i.i = icmp sgt i32 %i.u, -1
  br i1 %.not.i63.i.i, label %bb.c, label %Py_DECREF.exit64.i.i

bb.c:                                             ; preds = %bb.b
  %i.v = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.v, ptr %i.r, align 8, !tbaa !110
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.d, label %Py_DECREF.exit64.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.r) #10
  br label %Py_DECREF.exit64.i.i

Py_DECREF.exit64.i.i:                             ; preds = %bb.d, %bb.c, %bb.b
  %i.x = icmp slt i32 %i.t, 0
  br i1 %i.x, label %Py_DECREF.exit62.i.i, label %bb.e

bb.e:                                             ; preds = %Py_DECREF.exit64.i.i
  %i.y = load i32, ptr %i.h, align 4, !tbaa !7
  %i.z = icmp eq i32 %i.y, -1
  br i1 %i.z, label %Py_DECREF.exit58.thread73.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = call i32 @_PyUnicodeError_GetParams(ptr noundef nonnull %1, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, i32 noundef 0) #10
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %Py_DECREF.exit62.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = load i64, ptr %i.n, align 8, !tbaa !124 ; 2 uses
  %i.ad = load i32, ptr %i.i, align 4, !tbaa !7
  %i.ae = sext i32 %i.ad to i64                   ; 2 uses
  %i.af = sdiv i64 9223372036854775807, %i.ae     ; 2 uses
  %i.ag = icmp sgt i64 %i.ac, %i.af
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = load i64, ptr %i.l, align 8, !tbaa !124 ; 2 uses
  %i.ai = add i64 %i.ah, %i.af
  %i.aj = load i64, ptr %i.k, align 8, !tbaa !124
  %i.ak = call i64 @llvm.smin.i64(i64 %i.ai, i64 %i.aj) ; 2 uses
  store i64 %i.ak, ptr %i.m, align 8, !tbaa !124
  %i.al = sub i64 %i.ak, %i.ah
  %i.am = call i64 @llvm.smax.i64(i64 %i.al, i64 0) ; 2 uses
  store i64 %i.am, ptr %i.n, align 8, !tbaa !124
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.an = phi i64 [ %i.am, %bb.h ], [ %i.ac, %bb.g ]
  %i.ao = mul i64 %i.an, %i.ae
  %i.ap = call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %i.ao) #10 ; 6 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ar = load ptr, ptr %i.j, align 8, !tbaa !14  ; 3 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !110 ; 2 uses
  %.not.i61.i.i = icmp sgt i32 %i.as, -1
  br i1 %.not.i61.i.i, label %bb.k, label %Py_DECREF.exit62.i.i

bb.k:                                             ; preds = %bb.j
  %i.at = add nsw i32 %i.as, -1                   ; 2 uses
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !110
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.l, label %Py_DECREF.exit62.i.i

bb.l:                                             ; preds = %bb.k
  call void @_Py_Dealloc(ptr noundef nonnull %i.ar) #10
  br label %Py_DECREF.exit62.i.i

bb.m:                                             ; preds = %bb.i
  %i.av = call ptr @PyBytes_AsString(ptr noundef nonnull %i.ap) #10
  %i.aw = load i64, ptr %i.l, align 8, !tbaa !124 ; 2 uses
  %i.ax = load i64, ptr %i.m, align 8, !tbaa !124
  %i.ay = icmp slt i64 %i.aw, %i.ax
  br i1 %i.ay, label %.lr.ph.i.i, label %Py_DECREF.exit58.i.i

.lr.ph.i.i:                                       ; preds = %bb.m, %bb.ah
  %.05176.i.i = phi i64 [ %i.dc, %bb.ah ], [ %i.aw, %bb.m ] ; 4 uses
  %.05275.i.i = phi ptr [ %.2.ph.i.i, %bb.ah ], [ %i.av, %bb.m ] ; 19 uses
  %i.az = load ptr, ptr %i.j, align 8, !tbaa !14  ; 10 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 32
  %i.bb = load i32, ptr %i.ba, align 8            ; 5 uses
  %2 = lshr i32 %i.bb, 2
  %i.bc = and i32 %2, 7
  %i.bd = and i32 %i.bb, 32
  %.not.i19.i.i.i = icmp eq i32 %i.bd, 0          ; 3 uses
  switch i32 %i.bc, label %bb.t [
    i32 1, label %bb.n
    i32 2, label %bb.q
  ]

bb.n:                                             ; preds = %.lr.ph.i.i
  br i1 %.not.i19.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = and i32 %i.bb, 64
  %.not.i.i.i.i.i = icmp eq i32 %i.be, 0
  %.0.v.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 56, i64 40
  %.0.i.i.i.i.i = getelementptr i8, ptr %i.az, i64 %.0.v.i.i.i.i.i
  br label %_PyUnicode_DATA.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.bf = getelementptr i8, ptr %i.az, i64 56
  %.val4.i.i.i.i = load ptr, ptr %i.bf, align 8, !tbaa !110
  br label %_PyUnicode_DATA.exit.i.i.i

_PyUnicode_DATA.exit.i.i.i:                       ; preds = %bb.p, %bb.o
  %.0.i.i.i.i = phi ptr [ %.0.i.i.i.i.i, %bb.o ], [ %.val4.i.i.i.i, %bb.p ]
  %i.bg = getelementptr i8, ptr %.0.i.i.i.i, i64 %.05176.i.i
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !110
  %i.bi = zext i8 %i.bh to i32
  br label %PyUnicode_READ_CHAR.exit.i.i

bb.q:                                             ; preds = %.lr.ph.i.i
  br i1 %.not.i19.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = and i32 %i.bb, 64
  %.not.i.i12.i.i.i = icmp eq i32 %i.bj, 0
  %.0.v.i.i13.i.i.i = select i1 %.not.i.i12.i.i.i, i64 56, i64 40
  %.0.i.i14.i.i.i = getelementptr i8, ptr %i.az, i64 %.0.v.i.i13.i.i.i
  br label %_PyUnicode_DATA.exit17.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bk = getelementptr i8, ptr %i.az, i64 56
  %.val4.i16.i.i.i = load ptr, ptr %i.bk, align 8, !tbaa !110
  br label %_PyUnicode_DATA.exit17.i.i.i

_PyUnicode_DATA.exit17.i.i.i:                     ; preds = %bb.s, %bb.r
  %.0.i15.i.i.i = phi ptr [ %.0.i.i14.i.i.i, %bb.r ], [ %.val4.i16.i.i.i, %bb.s ]
  %i.bl = getelementptr [2 x i8], ptr %.0.i15.i.i.i, i64 %.05176.i.i
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !125
  %i.bn = zext i16 %i.bm to i32
  br label %PyUnicode_READ_CHAR.exit.i.i

bb.t:                                             ; preds = %.lr.ph.i.i
  br i1 %.not.i19.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bo = and i32 %i.bb, 64
  %.not.i.i20.i.i.i = icmp eq i32 %i.bo, 0
  %.0.v.i.i21.i.i.i = select i1 %.not.i.i20.i.i.i, i64 56, i64 40
  %.0.i.i22.i.i.i = getelementptr i8, ptr %i.az, i64 %.0.v.i.i21.i.i.i
  br label %_PyUnicode_DATA.exit25.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.bp = getelementptr i8, ptr %i.az, i64 56
  %.val4.i24.i.i.i = load ptr, ptr %i.bp, align 8, !tbaa !110
  br label %_PyUnicode_DATA.exit25.i.i.i

_PyUnicode_DATA.exit25.i.i.i:                     ; preds = %bb.v, %bb.u
  %.0.i23.i.i.i = phi ptr [ %.0.i.i22.i.i.i, %bb.u ], [ %.val4.i24.i.i.i, %bb.v ]
  %i.bq = getelementptr [4 x i8], ptr %.0.i23.i.i.i, i64 %.05176.i.i
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit.i.i

PyUnicode_READ_CHAR.exit.i.i:                     ; preds = %_PyUnicode_DATA.exit25.i.i.i, %_PyUnicode_DATA.exit17.i.i.i, %_PyUnicode_DATA.exit.i.i.i
  %.0.i.i.i = phi i32 [ %i.bi, %_PyUnicode_DATA.exit.i.i.i ], [ %i.bn, %_PyUnicode_DATA.exit17.i.i.i ], [ %i.br, %_PyUnicode_DATA.exit25.i.i.i ] ; 9 uses
  %i.bs = and i32 %.0.i.i.i, -2048
  %.not.i8.i = icmp eq i32 %i.bs, 55296
  br i1 %.not.i8.i, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %PyUnicode_READ_CHAR.exit.i.i
  %i.bt = load i32, ptr %i.az, align 8, !tbaa !110 ; 2 uses
  %.not.i59.i.i = icmp sgt i32 %i.bt, -1
  br i1 %.not.i59.i.i, label %bb.x, label %Py_DECREF.exit60.i.i

bb.x:                                             ; preds = %bb.w
  %i.bu = add nsw i32 %i.bt, -1                   ; 2 uses
  store i32 %i.bu, ptr %i.az, align 8, !tbaa !110
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.y, label %Py_DECREF.exit60.i.i

bb.y:                                             ; preds = %bb.x
  call void @_Py_Dealloc(ptr noundef nonnull %i.az) #10
  br label %Py_DECREF.exit60.i.i

Py_DECREF.exit60.i.i:                             ; preds = %bb.y, %bb.x, %bb.w
  %i.bw = load i32, ptr %i.ap, align 8, !tbaa !110 ; 2 uses
  %.not.i57.i.i = icmp sgt i32 %i.bw, -1
  br i1 %.not.i57.i.i, label %bb.z, label %Py_DECREF.exit58.thread73.i.i

bb.z:                                             ; preds = %Py_DECREF.exit60.i.i
  %i.bx = add nsw i32 %i.bw, -1                   ; 2 uses
  store i32 %i.bx, ptr %i.ap, align 8, !tbaa !110
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.aa, label %Py_DECREF.exit58.thread73.i.i

bb.aa:                                            ; preds = %bb.z
  call void @_Py_Dealloc(ptr noundef nonnull %i.ap) #10
  br label %Py_DECREF.exit58.thread73.i.i

bb.ab:                                            ; preds = %PyUnicode_READ_CHAR.exit.i.i
  %i.bz = load i32, ptr %i.h, align 4, !tbaa !7
  switch i32 %i.bz, label %bb.ah [
    i32 0, label %bb.ac
    i32 2, label %bb.ad
    i32 1, label %bb.ae
    i32 4, label %bb.af
    i32 3, label %bb.ag
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.ca = getelementptr i8, ptr %.05275.i.i, i64 1
  store i8 -19, ptr %.05275.i.i, align 1, !tbaa !110
  %i.cb = lshr i32 %.0.i.i.i, 6
  %i.cc = trunc i32 %i.cb to i8
  %i.cd = and i8 %i.cc, 63
  %i.ce = or disjoint i8 %i.cd, -128
  %i.cf = getelementptr i8, ptr %.05275.i.i, i64 2
  store i8 %i.ce, ptr %i.ca, align 1, !tbaa !110
  %i.cg = trunc i32 %.0.i.i.i to i8
  %i.ch = and i8 %i.cg, 63
  %i.ci = or disjoint i8 %i.ch, -128
  %i.cj = getelementptr i8, ptr %.05275.i.i, i64 3
  store i8 %i.ci, ptr %i.cf, align 1, !tbaa !110
  br label %bb.ah

bb.ad:                                            ; preds = %bb.ab
  %i.ck = trunc nuw i32 %.0.i.i.i to i16
  store i16 %i.ck, ptr %.05275.i.i, align 1
  %i.cl = getelementptr i8, ptr %.05275.i.i, i64 2
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ab
  %i.cm = lshr i32 %.0.i.i.i, 8
  %i.cn = trunc nuw i32 %i.cm to i8
  %i.co = getelementptr i8, ptr %.05275.i.i, i64 1
  store i8 %i.cn, ptr %.05275.i.i, align 1, !tbaa !110
  %i.cp = trunc i32 %.0.i.i.i to i8
  %i.cq = getelementptr i8, ptr %.05275.i.i, i64 2
  store i8 %i.cp, ptr %i.co, align 1, !tbaa !110
  br label %bb.ah

bb.af:                                            ; preds = %bb.ab
  %i.cr = trunc nuw i32 %.0.i.i.i to i16
  store i16 %i.cr, ptr %.05275.i.i, align 1
  %i.cs = getelementptr i8, ptr %.05275.i.i, i64 2
  %i.ct = getelementptr i8, ptr %.05275.i.i, i64 3
  store i8 0, ptr %i.cs, align 1, !tbaa !110
  %i.cu = getelementptr i8, ptr %.05275.i.i, i64 4
  store i8 0, ptr %i.ct, align 1, !tbaa !110
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ab
  %i.cv = getelementptr i8, ptr %.05275.i.i, i64 1
  store i8 0, ptr %.05275.i.i, align 1, !tbaa !110
  %i.cw = getelementptr i8, ptr %.05275.i.i, i64 2
  store i8 0, ptr %i.cv, align 1, !tbaa !110
  %i.cx = lshr i32 %.0.i.i.i, 8
  %i.cy = trunc nuw i32 %i.cx to i8
  %i.cz = getelementptr i8, ptr %.05275.i.i, i64 3
  store i8 %i.cy, ptr %i.cw, align 1, !tbaa !110
  %i.da = trunc i32 %.0.i.i.i to i8
  %i.db = getelementptr i8, ptr %.05275.i.i, i64 4
  store i8 %i.da, ptr %i.cz, align 1, !tbaa !110
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %.2.ph.i.i = phi ptr [ %i.cu, %bb.af ], [ %i.cq, %bb.ae ], [ %i.cl, %bb.ad ], [ %i.cj, %bb.ac ], [ %.05275.i.i, %bb.ab ], [ %i.db, %bb.ag ]
  %i.dc = add nsw i64 %.05176.i.i, 1              ; 2 uses
  %i.dd = load i64, ptr %i.m, align 8, !tbaa !124
  %i.de = icmp slt i64 %i.dc, %i.dd
  br i1 %i.de, label %.lr.ph.i.i, label %Py_DECREF.exit58.i.i, !llvm.loop !155

Py_DECREF.exit58.i.i:                             ; preds = %bb.ah, %bb.m
  %i.df = load ptr, ptr %i.j, align 8, !tbaa !14  ; 3 uses
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !110 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.dg, -1
  br i1 %.not.i.i.i, label %bb.ai, label %Py_DECREF.exit.i.i

bb.ai:                                            ; preds = %Py_DECREF.exit58.i.i
  %i.dh = add nsw i32 %i.dg, -1                   ; 2 uses
  store i32 %i.dh, ptr %i.df, align 8, !tbaa !110
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.aj, label %Py_DECREF.exit.i.i

bb.aj:                                            ; preds = %bb.ai
  call void @_Py_Dealloc(ptr noundef nonnull %i.df) #10
  br label %Py_DECREF.exit.i.i

Py_DECREF.exit.i.i:                               ; preds = %bb.aj, %bb.ai, %Py_DECREF.exit58.i.i
  %i.dj = load i64, ptr %i.m, align 8, !tbaa !124
  %i.dk = call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.14, ptr noundef nonnull %i.ap, i64 noundef %i.dj) #10
  br label %Py_DECREF.exit62.i.i

Py_DECREF.exit58.thread73.i.i:                    ; preds = %bb.aa, %bb.z, %Py_DECREF.exit60.i.i, %bb.e
  %.val.i.i = load ptr, ptr %i.p, align 8, !tbaa !113
  call void @PyErr_SetObject(ptr noundef %.val.i.i, ptr noundef nonnull %1) #10
end_hunk_1
begin_hunk_2_@surrogatepass_errors:bb.a
  %i.ee = load i32, ptr %i.b, align 4, !tbaa !7
  %i.ef = sext i32 %i.ee to i64                   ; 2 uses
  %.not.i11.i = icmp slt i64 %i.ed, %i.ef
  br i1 %.not.i11.i, label %bb.ba, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  switch i32 %i.du, label %bb.ba [
    i32 0, label %bb.as
    i32 2, label %bb.aw
    i32 1, label %bb.ax
    i32 4, label %bb.ay
    i32 3, label %bb.az
  ]

bb.as:                                            ; preds = %bb.ar
  %i.eg = load i8, ptr %i.eb, align 1, !tbaa !110
  %i.eh = zext i8 %i.eg to i32                    ; 2 uses
  %i.ei = and i32 %i.eh, 240
  %i.ej = icmp eq i32 %i.ei, 224
  br i1 %i.ej, label %bb.at, label %bb.ba

bb.at:                                            ; preds = %bb.as
  %i.ek = getelementptr i8, ptr %i.eb, i64 1
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !110
  %i.em = zext i8 %i.el to i32                    ; 2 uses
  %i.en = and i32 %i.em, 192
  %i.eo = icmp eq i32 %i.en, 128
  br i1 %i.eo, label %bb.au, label %bb.ba

bb.au:                                            ; preds = %bb.at
  %i.ep = getelementptr i8, ptr %i.eb, i64 2
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !110
  %i.er = zext i8 %i.eq to i32                    ; 2 uses
  %i.es = and i32 %i.er, 192
  %i.et = icmp eq i32 %i.es, 128
  br i1 %i.et, label %bb.av, label %bb.ba

bb.av:                                            ; preds = %bb.au
  %i.eu = shl nuw nsw i32 %i.eh, 12
  %i.ev = and i32 %i.eu, 61440
  %i.ew = shl nuw nsw i32 %i.em, 6
  %i.ex = and i32 %i.ew, 4032
  %i.ey = or disjoint i32 %i.ex, %i.ev
  %i.ez = and i32 %i.er, 63
  %i.fa = or disjoint i32 %i.ey, %i.ez
  br label %bb.ba

bb.aw:                                            ; preds = %bb.ar
  %i.fb = load i16, ptr %i.eb, align 1
  %i.fc = zext i16 %i.fb to i32
  br label %bb.ba

bb.ax:                                            ; preds = %bb.ar
  %i.fd = load i8, ptr %i.eb, align 1, !tbaa !110
  %i.fe = zext i8 %i.fd to i32
  %i.ff = shl nuw nsw i32 %i.fe, 8
  %i.fg = getelementptr i8, ptr %i.eb, i64 1
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !110
  %i.fi = zext i8 %i.fh to i32
  %i.fj = or disjoint i32 %i.ff, %i.fi
  br label %bb.ba

bb.ay:                                            ; preds = %bb.ar
  %i.fk = load i32, ptr %i.eb, align 1
  br label %bb.ba

bb.az:                                            ; preds = %bb.ar
  %i.fl = load i32, ptr %i.eb, align 1
  %i.fm = call i32 @llvm.bswap.i32(i32 %i.fl)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq
  %.031.i.i = phi i32 [ 0, %bb.ar ], [ %i.fa, %bb.av ], [ 0, %bb.au ], [ 0, %bb.at ], [ 0, %bb.as ], [ %i.fc, %bb.aw ], [ %i.fj, %bb.ax ], [ %i.fk, %bb.ay ], [ %i.fm, %bb.az ], [ 0, %bb.aq ] ; 2 uses
  %i.fn = load i32, ptr %i.dy, align 8, !tbaa !110 ; 2 uses
  %.not.i.i12.i = icmp sgt i32 %i.fn, -1
  br i1 %.not.i.i12.i, label %bb.bb, label %Py_DECREF.exit.i13.i

bb.bb:                                            ; preds = %bb.ba
  %i.fo = add nsw i32 %i.fn, -1                   ; 2 uses
  store i32 %i.fo, ptr %i.dy, align 8, !tbaa !110
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %bb.bc, label %Py_DECREF.exit.i13.i

bb.bc:                                            ; preds = %bb.bb
  call void @_Py_Dealloc(ptr noundef nonnull %i.dy) #10
  br label %Py_DECREF.exit.i13.i

Py_DECREF.exit.i13.i:                             ; preds = %bb.bc, %bb.bb, %bb.ba
  %i.fq = and i32 %.031.i.i, -2048
  %.not38.i.i = icmp eq i32 %i.fq, 55296
  br i1 %.not38.i.i, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %Py_DECREF.exit.i13.i
  %i.fr = call ptr @PyUnicode_FromOrdinal(i32 noundef %.031.i.i) #10 ; 2 uses
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ft = load i64, ptr %i.e, align 8, !tbaa !124
  %i.fu = add i64 %i.ft, %i.ef
  %i.fv = call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.14, ptr noundef nonnull %i.fr, i64 noundef %i.fu) #10
  br label %bb.bg

bb.bf:                                            ; preds = %Py_DECREF.exit.i13.i, %bb.ao
  %.val.i14.i = load ptr, ptr %i.p, align 8, !tbaa !113
  call void @PyErr_SetObject(ptr noundef %.val.i14.i, ptr noundef nonnull %1) #10
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bd, %bb.ap, %Py_DECREF.exit36.i.i
  %.0.i15.i = phi ptr [ %i.fv, %bb.be ], [ null, %bb.bf ], [ null, %Py_DECREF.exit36.i.i ], [ null, %bb.ap ], [ null, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %_PyCodec_SurrogatePassUnicodeDecodeError.exit.i

_PyCodec_SurrogatePassUnicodeDecodeError.exit.i:  ; preds = %bb.bg, %PyObject_TypeCheck.exit10.thread.i
  %.1.i16.i = phi ptr [ %.0.i15.i, %bb.bg ], [ null, %PyObject_TypeCheck.exit10.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %PyCodec_SurrogatePassErrors.exit

bb.bh:                                            ; preds = %PyObject_TypeCheck.exit10.i
  %i.fw = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !14
  %i.fx = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.fw, ptr noundef nonnull @.str.47, ptr noundef nonnull %1) #10 ; 0 uses
  br label %PyCodec_SurrogatePassErrors.exit

PyCodec_SurrogatePassErrors.exit:                 ; preds = %_PyCodec_SurrogatePassUnicodeEncodeError.exit.i, %_PyCodec_SurrogatePassUnicodeDecodeError.exit.i, %bb.bh
  %.0.i = phi ptr [ %.1.i.i, %_PyCodec_SurrogatePassUnicodeEncodeError.exit.i ], [ %.1.i16.i, %_PyCodec_SurrogatePassUnicodeDecodeError.exit.i ], [ null, %bb.bh ]
  ret ptr %.0.i
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @surrogateescape_errors(ptr readnone captures(none) %0, ptr noundef %1) #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca [4 x i16], align 2                ; 7 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %i.j = load ptr, ptr @PyExc_UnicodeEncodeError, align 8, !tbaa !14 ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 8          ; 4 uses
  %.val7.i = load ptr, ptr %i.k, align 8, !tbaa !113 ; 2 uses
  %.not.i.i = icmp eq ptr %.val7.i, %i.j
  br i1 %.not.i.i, label %PyObject_TypeCheck.exit.thread.i, label %PyObject_TypeCheck.exit.i

PyObject_TypeCheck.exit.i:                        ; preds = %bb.a
  %i.l = tail call i32 @PyType_IsSubtype(ptr noundef %.val7.i, ptr noundef %i.j) #10
  %.not17.i = icmp eq i32 %i.l, 0
  br i1 %.not17.i, label %bb.y, label %PyObject_TypeCheck.exit.thread.i

PyObject_TypeCheck.exit.thread.i:                 ; preds = %PyObject_TypeCheck.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  %i.m = call i32 @_PyUnicodeError_GetParams(ptr noundef nonnull %1, ptr noundef nonnull %i.f, ptr noundef null, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, i32 noundef 0) #10
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %_PyCodec_SurrogateEscapeUnicodeEncodeError.exit.i, label %bb.b

bb.b:                                             ; preds = %PyObject_TypeCheck.exit.thread.i
  %i.o = load i64, ptr %i.i, align 8, !tbaa !124
  %i.p = call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %i.o) #10 ; 6 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !14   ; 3 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !110  ; 2 uses
  %.not.i29.i.i = icmp sgt i32 %i.s, -1
  br i1 %.not.i29.i.i, label %bb.d, label %_PyCodec_SurrogateEscapeUnicodeEncodeError.exit.i

bb.d:                                             ; preds = %bb.c
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %i.r, align 8, !tbaa !110
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.e, label %_PyCodec_SurrogateEscapeUnicodeEncodeError.exit.i

bb.e:                                             ; preds = %bb.d
  call void @_Py_Dealloc(ptr noundef nonnull %i.r) #10
  br label %_PyCodec_SurrogateEscapeUnicodeEncodeError.exit.i

bb.f:                                             ; preds = %bb.b
  %i.v = call ptr @PyBytes_AsString(ptr noundef nonnull %i.p) #10
  %i.w = load i64, ptr %i.g, align 8, !tbaa !124  ; 2 uses
  %i.x = load i64, ptr %i.h, align 8, !tbaa !124
  %.not36.i.i = icmp slt i64 %i.w, %i.x
  br i1 %.not36.i.i, label %.lr.ph.i.i, label %.critedge.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.u
  %.01838.i.i = phi i64 [ %i.ba, %bb.u ], [ %i.w, %bb.f ] ; 4 uses
  %.01937.i.i = phi ptr [ %i.az, %bb.u ], [ %i.v, %bb.f ] ; 2 uses
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !14   ; 10 uses
  %i.z = getelementptr i8, ptr %i.y, i64 32
  %i.aa = load i32, ptr %i.z, align 8             ; 5 uses
  %2 = lshr i32 %i.aa, 2
  %i.ab = and i32 %2, 7
  %i.ac = and i32 %i.aa, 32
  %.not.i19.i.i.i = icmp eq i32 %i.ac, 0          ; 3 uses
  switch i32 %i.ab, label %bb.m [
    i32 1, label %bb.g
    i32 2, label %bb.j
  ]

bb.g:                                             ; preds = %.lr.ph.i.i
  br i1 %.not.i19.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = and i32 %i.aa, 64
  %.not.i.i.i.i.i = icmp eq i32 %i.ad, 0
  %.0.v.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 56, i64 40
  %.0.i.i.i.i.i = getelementptr i8, ptr %i.y, i64 %.0.v.i.i.i.i.i
  br label %_PyUnicode_DATA.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ae = getelementptr i8, ptr %i.y, i64 56
  %.val4.i.i.i.i = load ptr, ptr %i.ae, align 8, !tbaa !110
  br label %_PyUnicode_DATA.exit.i.i.i

_PyUnicode_DATA.exit.i.i.i:                       ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi ptr [ %.0.i.i.i.i.i, %bb.h ], [ %.val4.i.i.i.i, %bb.i ]
  %i.af = getelementptr i8, ptr %.0.i.i.i.i, i64 %.01838.i.i
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !110
  %i.ah = zext i8 %i.ag to i32
  br label %PyUnicode_READ_CHAR.exit.i.i

bb.j:                                             ; preds = %.lr.ph.i.i
  br i1 %.not.i19.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = and i32 %i.aa, 64
  %.not.i.i12.i.i.i = icmp eq i32 %i.ai, 0
  %.0.v.i.i13.i.i.i = select i1 %.not.i.i12.i.i.i, i64 56, i64 40
  %.0.i.i14.i.i.i = getelementptr i8, ptr %i.y, i64 %.0.v.i.i13.i.i.i
  br label %_PyUnicode_DATA.exit17.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.aj = getelementptr i8, ptr %i.y, i64 56
  %.val4.i16.i.i.i = load ptr, ptr %i.aj, align 8, !tbaa !110
  br label %_PyUnicode_DATA.exit17.i.i.i

_PyUnicode_DATA.exit17.i.i.i:                     ; preds = %bb.l, %bb.k
  %.0.i15.i.i.i = phi ptr [ %.0.i.i14.i.i.i, %bb.k ], [ %.val4.i16.i.i.i, %bb.l ]
  %i.ak = getelementptr [2 x i8], ptr %.0.i15.i.i.i, i64 %.01838.i.i
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !125
  %i.am = zext i16 %i.al to i32
  br label %PyUnicode_READ_CHAR.exit.i.i

bb.m:                                             ; preds = %.lr.ph.i.i
  br i1 %.not.i19.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = and i32 %i.aa, 64
  %.not.i.i20.i.i.i = icmp eq i32 %i.an, 0
  %.0.v.i.i21.i.i.i = select i1 %.not.i.i20.i.i.i, i64 56, i64 40
  %.0.i.i22.i.i.i = getelementptr i8, ptr %i.y, i64 %.0.v.i.i21.i.i.i
  br label %_PyUnicode_DATA.exit25.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.ao = getelementptr i8, ptr %i.y, i64 56
  %.val4.i24.i.i.i = load ptr, ptr %i.ao, align 8, !tbaa !110
  br label %_PyUnicode_DATA.exit25.i.i.i

_PyUnicode_DATA.exit25.i.i.i:                     ; preds = %bb.o, %bb.n
  %.0.i23.i.i.i = phi ptr [ %.0.i.i22.i.i.i, %bb.n ], [ %.val4.i24.i.i.i, %bb.o ]
  %i.ap = getelementptr [4 x i8], ptr %.0.i23.i.i.i, i64 %.01838.i.i
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit.i.i

PyUnicode_READ_CHAR.exit.i.i:                     ; preds = %_PyUnicode_DATA.exit25.i.i.i, %_PyUnicode_DATA.exit17.i.i.i, %_PyUnicode_DATA.exit.i.i.i
  %.0.i.i.i = phi i32 [ %i.ah, %_PyUnicode_DATA.exit.i.i.i ], [ %i.am, %_PyUnicode_DATA.exit17.i.i.i ], [ %i.aq, %_PyUnicode_DATA.exit25.i.i.i ] ; 2 uses
  %i.ar = and i32 %.0.i.i.i, -128
  %or.cond.i.i = icmp eq i32 %i.ar, 56448
  br i1 %or.cond.i.i, label %bb.u, label %bb.p

bb.p:                                             ; preds = %PyUnicode_READ_CHAR.exit.i.i
  %i.as = load i32, ptr %i.y, align 8, !tbaa !110 ; 2 uses
  %.not.i27.i.i = icmp sgt i32 %i.as, -1
  br i1 %.not.i27.i.i, label %bb.q, label %Py_DECREF.exit28.i.i

bb.q:                                             ; preds = %bb.p
  %i.at = add nsw i32 %i.as, -1                   ; 2 uses
  store i32 %i.at, ptr %i.y, align 8, !tbaa !110
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.r, label %Py_DECREF.exit28.i.i

bb.r:                                             ; preds = %bb.q
  call void @_Py_Dealloc(ptr noundef nonnull %i.y) #10
  br label %Py_DECREF.exit28.i.i

Py_DECREF.exit28.i.i:                             ; preds = %bb.r, %bb.q, %bb.p
  %i.av = load i32, ptr %i.p, align 8, !tbaa !110 ; 2 uses
  %.not.i25.i.i = icmp sgt i32 %i.av, -1
  br i1 %.not.i25.i.i, label %bb.s, label %bb.v

bb.s:                                             ; preds = %Py_DECREF.exit28.i.i
  %i.aw = add nsw i32 %i.av, -1                   ; 2 uses
  store i32 %i.aw, ptr %i.p, align 8, !tbaa !110
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  call void @_Py_Dealloc(ptr noundef nonnull %i.p) #10
  br label %bb.v

bb.u:                                             ; preds = %PyUnicode_READ_CHAR.exit.i.i
  %i.ay = trunc i32 %.0.i.i.i to i8
  %i.az = getelementptr i8, ptr %.01937.i.i, i64 1
  store i8 %i.ay, ptr %.01937.i.i, align 1, !tbaa !110
  %i.ba = add nsw i64 %.01838.i.i, 1              ; 2 uses
  %i.bb = load i64, ptr %i.h, align 8, !tbaa !124
  %.not.i8.i = icmp slt i64 %i.ba, %i.bb
  br i1 %.not.i8.i, label %.lr.ph.i.i, label %.critedge.i.i, !llvm.loop !156

bb.v:                                             ; preds = %bb.t, %bb.s, %Py_DECREF.exit28.i.i
  %.val.i.i = load ptr, ptr %i.k, align 8, !tbaa !113
  call void @PyErr_SetObject(ptr noundef %.val.i.i, ptr noundef nonnull %1) #10
  br label %_PyCodec_SurrogateEscapeUnicodeEncodeError.exit.i

.critedge.i.i:                                    ; preds = %bb.u, %bb.f
  %i.bc = load ptr, ptr %i.f, align 8, !tbaa !14  ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !110 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.bd, -1
  br i1 %.not.i.i.i, label %bb.w, label %Py_DECREF.exit.i.i

bb.w:                                             ; preds = %.critedge.i.i
  %i.be = add nsw i32 %i.bd, -1                   ; 2 uses
  store i32 %i.be, ptr %i.bc, align 8, !tbaa !110
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.x, label %Py_DECREF.exit.i.i

bb.x:                                             ; preds = %bb.w
  call void @_Py_Dealloc(ptr noundef nonnull %i.bc) #10
  br label %Py_DECREF.exit.i.i

Py_DECREF.exit.i.i:                               ; preds = %bb.x, %bb.w, %.critedge.i.i
  %i.bg = load i64, ptr %i.h, align 8, !tbaa !124
  %i.bh = call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.14, ptr noundef nonnull %i.p, i64 noundef %i.bg) #10
  br label %_PyCodec_SurrogateEscapeUnicodeEncodeError.exit.i

_PyCodec_SurrogateEscapeUnicodeEncodeError.exit.i: ; preds = %Py_DECREF.exit.i.i, %bb.v, %bb.e, %bb.d, %bb.c, %PyObject_TypeCheck.exit.thread.i
  %.5.i.i = phi ptr [ null, %PyObject_TypeCheck.exit.thread.i ], [ null, %bb.v ], [ %i.bh, %Py_DECREF.exit.i.i ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  br label %PyCodec_SurrogateEscapeErrors.exit

bb.y:                                             ; preds = %PyObject_TypeCheck.exit.i
  %i.bi = load ptr, ptr @PyExc_UnicodeDecodeError, align 8, !tbaa !14 ; 2 uses
  %.val.i = load ptr, ptr %i.k, align 8, !tbaa !113 ; 2 uses
  %.not.i9.i = icmp eq ptr %.val.i, %i.bi
  br i1 %.not.i9.i, label %PyObject_TypeCheck.exit10.thread.i, label %PyObject_TypeCheck.exit10.i

PyObject_TypeCheck.exit10.i:                      ; preds = %bb.y
  %i.bj = tail call i32 @PyType_IsSubtype(ptr noundef %.val.i, ptr noundef %i.bi) #10
  %.not.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i, label %bb.an, label %PyObject_TypeCheck.exit10.thread.i

PyObject_TypeCheck.exit10.thread.i:               ; preds = %PyObject_TypeCheck.exit10.i, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.bk = call i32 @_PyUnicodeError_GetParams(ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef 1) #10
  %i.bl = icmp slt i32 %i.bk, 0
  br i1 %i.bl, label %_PyCodec_SurrogateEscapeUnicodeDecodeError.exit.i, label %bb.z

bb.z:                                             ; preds = %PyObject_TypeCheck.exit10.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !14  ; 4 uses
  %i.bn = load i64, ptr %i.d, align 8             ; 2 uses
  %i.bo = icmp sgt i64 %i.bn, 0
  br i1 %i.bo, label %.lr.ph.i14.i, label %._crit_edge.i.i

.lr.ph.i14.i:                                     ; preds = %bb.z
  %i.bp = getelementptr i8, ptr %i.bm, i64 32
  %i.bq = load i64, ptr %i.b, align 8, !tbaa !124
  %i.br = getelementptr i8, ptr %i.bp, i64 %i.bq  ; 4 uses
  %i.bs = add nsw i64 %i.bn, -1                   ; 4 uses
  %umin.i.i = call i64 @llvm.umin.i64(i64 %i.bs, i64 3)
  %i.bt = add nuw nsw i64 %umin.i.i, 1            ; 4 uses
  %i.bu = load i8, ptr %i.br, align 1, !tbaa !110 ; 2 uses
  %i.bv = icmp sgt i8 %i.bu, -1                   ; 5 uses
  br i1 %i.bv, label %._crit_edge.i.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i14.i
  %i.bw = zext i8 %i.bu to i16
  %i.bx = or disjoint i16 %i.bw, -9216
  store i16 %i.bx, ptr %i.e, align 2, !tbaa !125
  %exitcond.not.i.i = icmp eq i64 %i.bs, 0
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.by = getelementptr i8, ptr %i.br, i64 1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !110 ; 2 uses
  %i.ca = icmp sgt i8 %i.bz, -1
  br i1 %i.ca, label %._crit_edge.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cb = zext i8 %i.bz to i16
  %i.cc = or disjoint i16 %i.cb, -9216
end_hunk_2
