Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/unicode_formatter?download=true
inline.NumInlined: 99
inline.NumDeleted: 26
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_PyComplex_FormatAdvancedWriter:bb.a
  %.not.i.i14 = icmp eq ptr %.0121.i, null
  br i1 %.not.i.i14, label %Py_XDECREF.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.en = load i32, ptr %.0121.i, align 8, !tbaa !15 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.en, -1
  br i1 %.not.i.i.i, label %bb.ba, label %Py_XDECREF.exit.i

bb.ba:                                            ; preds = %bb.az
  %i.eo = add nsw i32 %i.en, -1                   ; 2 uses
  store i32 %i.eo, ptr %.0121.i, align 8, !tbaa !15
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %bb.bb, label %Py_XDECREF.exit.i

bb.bb:                                            ; preds = %bb.ba
  call void @_Py_Dealloc(ptr noundef nonnull %.0121.i) #10
  br label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ay
  %.not.i171.i = icmp eq ptr %.0.i13, null
  br i1 %.not.i171.i, label %Py_XDECREF.exit173.i, label %bb.bc

bb.bc:                                            ; preds = %Py_XDECREF.exit.i
  %i.eq = load i32, ptr %.0.i13, align 8, !tbaa !15 ; 2 uses
  %.not.i.i172.i = icmp sgt i32 %i.eq, -1
  br i1 %.not.i.i172.i, label %bb.bd, label %Py_XDECREF.exit173.i

bb.bd:                                            ; preds = %bb.bc
  %i.er = add nsw i32 %i.eq, -1                   ; 2 uses
  store i32 %i.er, ptr %.0.i13, align 8, !tbaa !15
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %bb.be, label %Py_XDECREF.exit173.i

bb.be:                                            ; preds = %bb.bd
  call void @_Py_Dealloc(ptr noundef nonnull %.0.i13) #10
  br label %Py_XDECREF.exit173.i

Py_XDECREF.exit173.i:                             ; preds = %bb.be, %bb.bd, %bb.bc, %Py_XDECREF.exit.i
  %i.et = load ptr, ptr %8, align 8, !tbaa !48    ; 4 uses
  %.not.i.i174.i = icmp eq ptr %i.et, null
  br i1 %.not.i.i174.i, label %Py_XDECREF.exit.i.i, label %bb.bf

bb.bf:                                            ; preds = %Py_XDECREF.exit173.i
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !15 ; 2 uses
  %.not.i.i.i.i = icmp sgt i32 %i.eu, -1
  br i1 %.not.i.i.i.i, label %bb.bg, label %Py_XDECREF.exit.i.i

bb.bg:                                            ; preds = %bb.bf
  %i.ev = add nsw i32 %i.eu, -1                   ; 2 uses
  store i32 %i.ev, ptr %i.et, align 8, !tbaa !15
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %bb.bh, label %Py_XDECREF.exit.i.i

bb.bh:                                            ; preds = %bb.bg
  call void @_Py_Dealloc(ptr noundef nonnull %i.et) #10
  br label %Py_XDECREF.exit.i.i

Py_XDECREF.exit.i.i:                              ; preds = %bb.bh, %bb.bg, %bb.bf, %Py_XDECREF.exit173.i
  %i.ex = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !50 ; 4 uses
  %.not.i4.i.i = icmp eq ptr %i.ey, null
  br i1 %.not.i4.i.i, label %Py_XDECREF.exit6.i.i, label %bb.bi

bb.bi:                                            ; preds = %Py_XDECREF.exit.i.i
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !15 ; 2 uses
  %.not.i.i5.i.i = icmp sgt i32 %i.ez, -1
  br i1 %.not.i.i5.i.i, label %bb.bj, label %Py_XDECREF.exit6.i.i

bb.bj:                                            ; preds = %bb.bi
  %i.fa = add nsw i32 %i.ez, -1                   ; 2 uses
  store i32 %i.fa, ptr %i.ey, align 8, !tbaa !15
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.bk, label %Py_XDECREF.exit6.i.i

bb.bk:                                            ; preds = %bb.bj
  call void @_Py_Dealloc(ptr noundef nonnull %i.ey) #10
  br label %Py_XDECREF.exit6.i.i

Py_XDECREF.exit6.i.i:                             ; preds = %bb.bk, %bb.bj, %bb.bi, %Py_XDECREF.exit.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !51 ; 4 uses
  %.not.i7.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i7.i.i, label %format_complex_internal.exit, label %bb.bl

bb.bl:                                            ; preds = %Py_XDECREF.exit6.i.i
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !15 ; 2 uses
  %.not.i.i8.i.i = icmp sgt i32 %i.fe, -1
  br i1 %.not.i.i8.i.i, label %bb.bm, label %format_complex_internal.exit

bb.bm:                                            ; preds = %bb.bl
  %i.ff = add nsw i32 %i.fe, -1                   ; 2 uses
  store i32 %i.ff, ptr %i.fd, align 8, !tbaa !15
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %bb.bn, label %format_complex_internal.exit

bb.bn:                                            ; preds = %bb.bm
  call void @_Py_Dealloc(ptr noundef nonnull %i.fd) #10
  br label %format_complex_internal.exit

format_complex_internal.exit:                     ; preds = %Py_XDECREF.exit6.i.i, %bb.bl, %bb.bm, %bb.bn
  %i.fh = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !52
  call void @PyMem_Free(ptr noundef %i.fi) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %format_obj.exit

bb.bo:                                            ; preds = %bb.g
  %i.fj = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.fj, align 8, !tbaa !11
  %i.fk = getelementptr i8, ptr %.val, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !35
  %i.fm = add i32 %i.s, -33
  %or.cond.i15 = icmp ult i32 %i.fm, 95
  %i.fn = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !23
  %.str.11..str.12.i = select i1 %or.cond.i15, ptr @.str.11, ptr @.str.12
  %i.fo = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.fn, ptr noundef nonnull %.str.11..str.12.i, i32 noundef %i.s, ptr noundef %i.fl) #10 ; 0 uses
  br label %format_obj.exit

format_obj.exit:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.f, %bb.bo, %format_complex_internal.exit
  %.0 = phi i32 [ -1, %bb.f ], [ -1, %bb.bo ], [ %.0126.i, %format_complex_internal.exit ], [ -1, %bb.b ], [ %i.m, %bb.c ], [ %i.m, %bb.d ], [ %i.m, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  ret i32 %.0
}

declare ptr @PyObject_Str(ptr noundef) local_unnamed_addr #2

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @get_integer(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !43     ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 32
  %i.c = load i32, ptr %i.b, align 8              ; 3 uses
  %i.d = lshr i32 %i.c, 2
  %i.e = and i32 %i.d, 7
  %i.f = and i32 %i.c, 32
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = and i32 %i.c, 64
  %.not.i.i = icmp eq i32 %i.g, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.h, align 8, !tbaa !15
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %.0.i.i, %bb.b ], [ %.val4.i, %bb.c ] ; 3 uses
  %i.i = icmp slt i64 %i.a, %2
  br i1 %i.i, label %.lr.ph, label %PyUnicode_READ.exit._crit_edge

.lr.ph:                                           ; preds = %_PyUnicode_DATA.exit
  %i.j = trunc i64 %2 to i32
  %i.k = trunc i64 %i.a to i32
  %i.l = sub i32 %i.j, %i.k                       ; 3 uses
  switch i32 %i.e, label %PyUnicode_READ.exit [
    i32 1, label %PyUnicode_READ.exit.us
    i32 2, label %PyUnicode_READ.exit.us48
  ]

PyUnicode_READ.exit.us:                           ; preds = %.lr.ph, %bb.e
  %.032.us = phi i32 [ %i.y, %bb.e ], [ 0, %.lr.ph ] ; 2 uses
  %.02231.us = phi i64 [ %i.x, %bb.e ], [ %i.a, %.lr.ph ] ; 4 uses
  %.02330.us = phi i64 [ %i.w, %bb.e ], [ 0, %.lr.ph ] ; 3 uses
  %i.m = getelementptr i8, ptr %.0.i, i64 %.02231.us
  %i.n = load i8, ptr %i.m, align 1, !tbaa !15
  %i.o = zext i8 %i.n to i32
  %i.p = tail call i32 @_PyUnicode_ToDecimalDigit(i32 noundef %i.o) #10 ; 2 uses
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = icmp slt i32 %i.p, 0
  br i1 %i.r, label %PyUnicode_READ.exit._crit_edge, label %bb.d

bb.d:                                             ; preds = %PyUnicode_READ.exit.us
  %i.s = sub nuw nsw i64 9223372036854775807, %i.q
  %i.t = udiv i64 %i.s, 10
  %i.u = icmp sgt i64 %.02330.us, %i.t
  br i1 %i.u, label %.split.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = mul i64 %.02330.us, 10
  %i.w = add i64 %i.v, %i.q                       ; 2 uses
  %i.x = add i64 %.02231.us, 1                    ; 2 uses
  %i.y = add nuw nsw i32 %.032.us, 1
  %exitcond77.not = icmp eq i64 %i.x, %2
  br i1 %exitcond77.not, label %PyUnicode_READ.exit._crit_edge, label %PyUnicode_READ.exit.us, !llvm.loop !56

PyUnicode_READ.exit.us48:                         ; preds = %.lr.ph, %bb.g
  %.032.us45 = phi i32 [ %i.al, %bb.g ], [ 0, %.lr.ph ] ; 2 uses
  %.02231.us46 = phi i64 [ %i.ak, %bb.g ], [ %i.a, %.lr.ph ] ; 4 uses
  %.02330.us47 = phi i64 [ %i.aj, %bb.g ], [ 0, %.lr.ph ] ; 3 uses
  %i.z = getelementptr [2 x i8], ptr %.0.i, i64 %.02231.us46
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !47
  %i.ab = zext i16 %i.aa to i32
  %i.ac = tail call i32 @_PyUnicode_ToDecimalDigit(i32 noundef %i.ab) #10 ; 2 uses
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = icmp slt i32 %i.ac, 0
  br i1 %i.ae, label %PyUnicode_READ.exit._crit_edge, label %bb.f

bb.f:                                             ; preds = %PyUnicode_READ.exit.us48
  %i.af = sub nuw nsw i64 9223372036854775807, %i.ad
  %i.ag = udiv i64 %i.af, 10
  %i.ah = icmp sgt i64 %.02330.us47, %i.ag
  br i1 %i.ah, label %.split.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = mul i64 %.02330.us47, 10
  %i.aj = add i64 %i.ai, %i.ad                    ; 2 uses
  %i.ak = add i64 %.02231.us46, 1                 ; 2 uses
  %i.al = add nuw nsw i32 %.032.us45, 1
  %exitcond.not = icmp eq i64 %i.ak, %2
  br i1 %exitcond.not, label %PyUnicode_READ.exit._crit_edge, label %PyUnicode_READ.exit.us48, !llvm.loop !56

PyUnicode_READ.exit:                              ; preds = %.lr.ph, %bb.i
  %.032 = phi i32 [ %i.az, %bb.i ], [ 0, %.lr.ph ] ; 2 uses
  %.02231 = phi i64 [ %i.ay, %bb.i ], [ %i.a, %.lr.ph ] ; 4 uses
  %.02330 = phi i64 [ %i.ax, %bb.i ], [ 0, %.lr.ph ] ; 3 uses
  %i.am = getelementptr [4 x i8], ptr %.0.i, i64 %.02231
  %i.an = load i32, ptr %i.am, align 4, !tbaa !7
  %i.ao = tail call i32 @_PyUnicode_ToDecimalDigit(i32 noundef %i.an) #10 ; 2 uses
  %i.ap = sext i32 %i.ao to i64                   ; 2 uses
  %i.aq = icmp slt i32 %i.ao, 0
  br i1 %i.aq, label %PyUnicode_READ.exit._crit_edge, label %bb.h

bb.h:                                             ; preds = %PyUnicode_READ.exit
  %i.ar = sub nuw nsw i64 9223372036854775807, %i.ap
  %i.as = udiv i64 %i.ar, 10
  %i.at = icmp sgt i64 %.02330, %i.as
  br i1 %i.at, label %.split.us, label %bb.i

.split.us:                                        ; preds = %bb.f, %bb.d, %bb.h
  %.us-phi40 = phi i64 [ %.02231.us, %bb.d ], [ %.02231, %bb.h ], [ %.02231.us46, %bb.f ]
  %i.au = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !23
  %i.av = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.au, ptr noundef nonnull @.str.2) #10 ; 0 uses
  store i64 %.us-phi40, ptr %1, align 8, !tbaa !43
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aw = mul i64 %.02330, 10
  %i.ax = add i64 %i.aw, %i.ap                    ; 2 uses
  %i.ay = add i64 %.02231, 1                      ; 2 uses
  %i.az = add nuw nsw i32 %.032, 1
  %exitcond78.not = icmp eq i64 %i.ay, %2
  br i1 %exitcond78.not, label %PyUnicode_READ.exit._crit_edge, label %PyUnicode_READ.exit, !llvm.loop !56

PyUnicode_READ.exit._crit_edge:                   ; preds = %bb.g, %PyUnicode_READ.exit.us48, %bb.e, %PyUnicode_READ.exit.us, %bb.i, %PyUnicode_READ.exit, %_PyUnicode_DATA.exit
  %.023.lcssa = phi i64 [ 0, %_PyUnicode_DATA.exit ], [ %.02330, %PyUnicode_READ.exit ], [ %.02330.us, %PyUnicode_READ.exit.us ], [ %i.ax, %bb.i ], [ %i.w, %bb.e ], [ %i.aj, %bb.g ], [ %.02330.us47, %PyUnicode_READ.exit.us48 ]
  %.022.lcssa = phi i64 [ %i.a, %_PyUnicode_DATA.exit ], [ %.02231, %PyUnicode_READ.exit ], [ %.02231.us, %PyUnicode_READ.exit.us ], [ %2, %bb.i ], [ %2, %bb.e ], [ %2, %bb.g ], [ %.02231.us46, %PyUnicode_READ.exit.us48 ]
  %.0.lcssa = phi i32 [ 0, %_PyUnicode_DATA.exit ], [ %.032, %PyUnicode_READ.exit ], [ %.032.us, %PyUnicode_READ.exit.us ], [ %i.l, %bb.i ], [ %i.l, %bb.e ], [ %i.l, %bb.g ], [ %.032.us45, %PyUnicode_READ.exit.us48 ]
  store i64 %.022.lcssa, ptr %1, align 8, !tbaa !43
  store i64 %.023.lcssa, ptr %3, align 8, !tbaa !43
  br label %bb.j

bb.j:                                             ; preds = %PyUnicode_READ.exit._crit_edge, %.split.us
  %.024 = phi i32 [ %.0.lcssa, %PyUnicode_READ.exit._crit_edge ], [ -1, %.split.us ]
  ret i32 %.024
}

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @PyUnicode_FromKindAndData(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @_PyUnicode_ToDecimalDigit(i32 noundef) local_unnamed_addr #2

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @_PyUnicode_FindMaxChar(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @fill_padding(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !33
  %i.c = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @_PyUnicode_FastFill(ptr noundef %i.c, i64 noundef %i.b, i64 noundef %3, i32 noundef %2) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not16 = icmp eq i64 %4, 0
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !33
  %i.f = add i64 %3, %1
  %i.g = add i64 %i.f, %i.e
  %i.h = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @_PyUnicode_FastFill(ptr noundef %i.h, i64 noundef %i.g, i64 noundef %4, i32 noundef %2) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !33
  %i.k = add i64 %i.j, %3
  store i64 %i.k, ptr %i.i, align 8, !tbaa !33
  ret void
}

declare void @_PyUnicode_FastCopyCharacters(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @_PyUnicode_FastFill(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i64 @PyLong_AsLong(ptr noundef) local_unnamed_addr #2

declare ptr @PyErr_Occurred() local_unnamed_addr #2

declare ptr @PyUnicode_FromOrdinal(i32 noundef) local_unnamed_addr #2

declare ptr @_PyLong_Format(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @PyUnicode_READ_CHAR(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8              ; 5 uses
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 7
  %i.e = and i32 %i.b, 32
  %.not.i19 = icmp eq i32 %i.e, 0                 ; 3 uses
  switch i32 %i.d, label %bb.h [
    i32 1, label %bb.b
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i19, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = and i32 %i.b, 64
  %.not.i.i = icmp eq i32 %i.f, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.g, align 8, !tbaa !15
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %.0.i.i, %bb.c ], [ %.val4.i, %bb.d ]
  %i.h = load i8, ptr %.0.i, align 1, !tbaa !15
  %i.i = zext i8 %i.h to i32
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  br i1 %.not.i19, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = and i32 %i.b, 64
  %.not.i.i12 = icmp eq i32 %i.j, 0
  %.0.v.i.i13 = select i1 %.not.i.i12, i64 56, i64 40
  %.0.i.i14 = getelementptr i8, ptr %0, i64 %.0.v.i.i13
  br label %_PyUnicode_DATA.exit17

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %0, i64 56
  %.val4.i16 = load ptr, ptr %i.k, align 8, !tbaa !15
  br label %_PyUnicode_DATA.exit17

_PyUnicode_DATA.exit17:                           ; preds = %bb.f, %bb.g
  %.0.i15 = phi ptr [ %.0.i.i14, %bb.f ], [ %.val4.i16, %bb.g ]
  %i.l = load i16, ptr %.0.i15, align 2, !tbaa !47
  %i.m = zext i16 %i.l to i32
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  br i1 %.not.i19, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = and i32 %i.b, 64
  %.not.i.i20 = icmp eq i32 %i.n, 0
  %.0.v.i.i21 = select i1 %.not.i.i20, i64 56, i64 40
  %.0.i.i22 = getelementptr i8, ptr %0, i64 %.0.v.i.i21
  br label %_PyUnicode_DATA.exit25

bb.j:                                             ; preds = %bb.h
  %i.o = getelementptr i8, ptr %0, i64 56
  %.val4.i24 = load ptr, ptr %i.o, align 8, !tbaa !15
  br label %_PyUnicode_DATA.exit25

_PyUnicode_DATA.exit25:                           ; preds = %bb.i, %bb.j
  %.0.i23 = phi ptr [ %.0.i.i22, %bb.i ], [ %.val4.i24, %bb.j ]
  %i.p = load i32, ptr %.0.i23, align 4, !tbaa !7
  br label %bb.k

bb.k:                                             ; preds = %_PyUnicode_DATA.exit25, %_PyUnicode_DATA.exit17, %_PyUnicode_DATA.exit
  %.0 = phi i32 [ %i.i, %_PyUnicode_DATA.exit ], [ %i.m, %_PyUnicode_DATA.exit17 ], [ %i.p, %_PyUnicode_DATA.exit25 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @get_locale_info(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  switch i32 %0, label %bb.l [
    i32 97, label %bb.b
    i32 44, label %bb.f
    i32 95, label %bb.f
    i32 96, label %bb.f
    i32 0, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @localeconv() #10          ; 2 uses
  %i.b = getelementptr i8, ptr %2, i64 8
  %i.c = tail call i32 @_Py_GetLocaleconvNumeric(ptr noundef %i.a, ptr noundef nonnull %2, ptr noundef %i.b) #10
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %i.a, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58
  %i.g = tail call ptr @_PyMem_Strdup(ptr noundef %i.f) #10 ; 3 uses
  %i.h = getelementptr i8, ptr %2, i64 32
  store ptr %i.g, ptr %i.h, align 8, !tbaa !52
  %i.i = icmp eq ptr %i.g, null
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @PyErr_NoMemory() #10      ; 0 uses
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %2, i64 24
  store ptr %i.g, ptr %i.k, align 8, !tbaa !60
  br label %bb.l

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.l = tail call ptr @PyUnicode_FromOrdinal(i32 noundef 46) #10
  store ptr %i.l, ptr %2, align 8, !tbaa !48
  %i.m = icmp eq i32 %0, 44
  %i.n = select i1 %i.m, i32 44, i32 95
  %i.o = tail call ptr @PyUnicode_FromOrdinal(i32 noundef %i.n) #10 ; 2 uses
end_hunk_0
