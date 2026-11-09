Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/unicodeobject?download=true
inline.NumInlined: 2800
inline.NumDeleted: 308
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 46
loop-unroll.NumUnrolled: 53
begin_hunk_0_@unicode_resize:bb.a
  %i.e = load i32, ptr %i.a, align 8, !tbaa !658  ; 2 uses
  %.not.i31 = icmp sgt i32 %i.e, -1
  br i1 %.not.i31, label %bb.d, label %Py_DECREF.exit32

bb.d:                                             ; preds = %bb.c
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.f, ptr %i.a, align 8, !tbaa !658
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.e, label %Py_DECREF.exit32

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #33
  br label %Py_DECREF.exit32

bb.f:                                             ; preds = %bb.b
  %.val7.i = load i32, ptr %i.a, align 8, !tbaa !658
  %.not.i35 = icmp eq i32 %.val7.i, 1
  br i1 %.not.i35, label %bb.g, label %_PyUnicode_IsModifiable.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr i8, ptr %i.a, i64 24
  %.val8.i = load i64, ptr %i.h, align 8, !tbaa !664
  %.not4.i = icmp eq i64 %.val8.i, -1
  br i1 %.not4.i, label %bb.h, label %_PyUnicode_IsModifiable.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.i = getelementptr i8, ptr %i.a, i64 32       ; 2 uses
  %.val.i = load i32, ptr %i.i, align 8           ; 3 uses
  %i.j = and i32 %.val.i, 3
  %.not5.i = icmp eq i32 %i.j, 0
  br i1 %.not5.i, label %_PyUnicode_IsModifiable.exit, label %_PyUnicode_IsModifiable.exit.thread

_PyUnicode_IsModifiable.exit:                     ; preds = %bb.h
  %i.k = getelementptr i8, ptr %i.a, i64 8
  %.val9.i = load ptr, ptr %i.k, align 8, !tbaa !650
  %.not10.i.not = icmp eq ptr %.val9.i, @PyUnicode_Type
  br i1 %.not10.i.not, label %bb.m, label %_PyUnicode_IsModifiable.exit.thread

_PyUnicode_IsModifiable.exit.thread:              ; preds = %bb.h, %bb.g, %bb.f, %_PyUnicode_IsModifiable.exit
  %i.l = getelementptr i8, ptr %i.a, i64 32
  %.val14.i = load i32, ptr %i.l, align 8         ; 2 uses
  %i.m = and i32 %.val14.i, 64
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %bb.i, label %PyUnicode_MAX_CHAR_VALUE.exit.i

bb.i:                                             ; preds = %_PyUnicode_IsModifiable.exit.thread
  %i.n = lshr i32 %.val14.i, 2
  %i.o = and i32 %i.n, 7                          ; 2 uses
  %switch.selectcmp.i.i = icmp eq i32 %i.o, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 65535, i32 1114111
  %switch.selectcmp5.i.i = icmp eq i32 %i.o, 1
  %switch.select6.i.i = select i1 %switch.selectcmp5.i.i, i32 255, i32 %switch.select.i.i
  br label %PyUnicode_MAX_CHAR_VALUE.exit.i

PyUnicode_MAX_CHAR_VALUE.exit.i:                  ; preds = %bb.i, %_PyUnicode_IsModifiable.exit.thread
  %.0.i.i = phi i32 [ %switch.select6.i.i, %bb.i ], [ 127, %_PyUnicode_IsModifiable.exit.thread ]
  %i.p = tail call ptr @PyUnicode_New(i64 noundef %1, i32 noundef %.0.i.i) ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %Py_DECREF.exit32, label %bb.j

bb.j:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit.i
  %.val13.i = load i64, ptr %i.b, align 8, !tbaa !660
  %spec.select.i = tail call i64 @llvm.smin.i64(i64 %1, i64 %.val13.i)
  %i.r = tail call fastcc i32 @_copy_characters(ptr noundef nonnull %i.p, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef 0, i64 noundef %spec.select.i, i32 noundef 0) ; 0 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !648    ; 3 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !648
  %i.t = load i32, ptr %i.s, align 8, !tbaa !658  ; 2 uses
  %.not.i = icmp sgt i32 %i.t, -1
  br i1 %.not.i, label %bb.k, label %Py_DECREF.exit32

bb.k:                                             ; preds = %bb.j
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.s, align 8, !tbaa !658
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.l, label %Py_DECREF.exit32

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.s) #33
  br label %Py_DECREF.exit32

bb.m:                                             ; preds = %_PyUnicode_IsModifiable.exit
  %i.w = and i32 %.val.i, 32
  %.not30 = icmp eq i32 %i.w, 0
  br i1 %.not30, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = tail call ptr @_PyUnicode_ResizeCompact(ptr noundef nonnull %i.a, i64 noundef %1) ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %Py_DECREF.exit32, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.x, ptr %0, align 8, !tbaa !648
  br label %Py_DECREF.exit32

bb.p:                                             ; preds = %bb.m
  %i.z = getelementptr i8, ptr %i.a, i64 56       ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !658 ; 3 uses
  %i.ab = lshr exact i32 %.val.i, 2
  %i.ac = and i32 %i.ab, 7
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = getelementptr i8, ptr %i.a, i64 48      ; 2 uses
  %.val.i.i = load ptr, ptr %i.ae, align 8, !tbaa !657 ; 3 uses
  %i.af = udiv i64 9223372036854775807, %i.ad
  %.not.i36 = icmp slt i64 %1, %i.af
  br i1 %.not.i36, label %bb.q, label %.sink.split.i

bb.q:                                             ; preds = %bb.p
  %.not39.i = icmp eq ptr %.val.i.i, %i.aa
  %i.ag = add nsw i64 %1, 1
  %i.ah = mul i64 %i.ag, %i.ad                    ; 2 uses
  br i1 %.not39.i, label %.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not4.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not4.i.i, label %_PyUnicode_HAS_UTF8_MEMORY.exit.thread.i, label %_PyUnicode_HAS_UTF8_MEMORY.exit.i

_PyUnicode_HAS_UTF8_MEMORY.exit.i:                ; preds = %bb.r
  tail call void @PyMem_Free(ptr noundef nonnull %.val.i.i) #33
  %i.ai = getelementptr i8, ptr %i.a, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  br label %_PyUnicode_HAS_UTF8_MEMORY.exit.thread.i

_PyUnicode_HAS_UTF8_MEMORY.exit.thread.i:         ; preds = %_PyUnicode_HAS_UTF8_MEMORY.exit.i, %bb.r
  %i.aj = tail call ptr @PyObject_Realloc(ptr noundef %i.aa, i64 noundef %i.ah) #33 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.sink.split.i, label %bb.s

.thread.i:                                        ; preds = %bb.q
  %i.al = tail call ptr @PyObject_Realloc(ptr noundef %i.aa, i64 noundef %i.ah) #33 ; 4 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %.sink.split.i, label %.thread38.i

.thread38.i:                                      ; preds = %.thread.i
  store ptr %i.al, ptr %i.z, align 8, !tbaa !658
  %i.an = getelementptr i8, ptr %i.a, i64 40
  store i64 %1, ptr %i.an, align 8, !tbaa !659
  store ptr %i.al, ptr %i.ae, align 8, !tbaa !657
  br label %bb.t

bb.s:                                             ; preds = %_PyUnicode_HAS_UTF8_MEMORY.exit.thread.i
  store ptr %i.aj, ptr %i.z, align 8, !tbaa !658
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.thread38.i
  %i.ao = phi ptr [ %i.al, %.thread38.i ], [ %i.aj, %bb.s ] ; 3 uses
  store i64 %1, ptr %i.b, align 8, !tbaa !660
  %i.ap = load i32, ptr %i.i, align 8
  %i.aq = lshr i32 %i.ap, 2
  %i.ar = and i32 %i.aq, 7
  switch i32 %i.ar, label %bb.w [
    i32 1, label %bb.u
    i32 2, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.as = getelementptr i8, ptr %i.ao, i64 %1
  store i8 0, ptr %i.as, align 1, !tbaa !658
  br label %PyUnicode_WRITE.exit.i

bb.v:                                             ; preds = %bb.t
  %i.at = getelementptr [2 x i8], ptr %i.ao, i64 %1
  store i16 0, ptr %i.at, align 2, !tbaa !661
  br label %PyUnicode_WRITE.exit.i

bb.w:                                             ; preds = %bb.t
  %i.au = getelementptr [4 x i8], ptr %i.ao, i64 %1
  store i32 0, ptr %i.au, align 4, !tbaa !44
  br label %PyUnicode_WRITE.exit.i

PyUnicode_WRITE.exit.i:                           ; preds = %bb.w, %bb.v, %bb.u
  %i.av = icmp sgt i64 %1, 2305843009213693950
  br i1 %i.av, label %.sink.split.i, label %Py_DECREF.exit32

.sink.split.i:                                    ; preds = %PyUnicode_WRITE.exit.i, %.thread.i, %_PyUnicode_HAS_UTF8_MEMORY.exit.thread.i, %bb.p
  %i.aw = tail call ptr @PyErr_NoMemory() #33     ; 0 uses
  br label %Py_DECREF.exit32

Py_DECREF.exit32:                                 ; preds = %PyUnicode_MAX_CHAR_VALUE.exit.i, %.sink.split.i, %PyUnicode_WRITE.exit.i, %bb.l, %bb.k, %bb.j, %bb.e, %bb.d, %bb.c, %bb.o, %bb.n, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ -1, %bb.n ], [ -1, %.sink.split.i ], [ 0, %bb.l ], [ 0, %bb.e ], [ 0, %bb.o ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %PyUnicode_WRITE.exit.i ], [ -1, %PyUnicode_MAX_CHAR_VALUE.exit.i ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_FromWideChar(ptr nofree noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #1 !guid !825 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = icmp eq ptr %0, null
  %i.c = icmp ne i64 %1, 0
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.8, i32 noundef 1900) #33
  br label %_PyUnicode_Result.exit

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %1, -1
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %0) #34
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i64 [ %i.e, %bb.d ], [ %1, %bb.c ]    ; 4 uses
  switch i64 %.0, label %bb.h [
    i64 0, label %_PyUnicode_Result.exit
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.f = load i32, ptr %0, align 4, !tbaa !44     ; 3 uses
  %i.g = icmp ult i32 %i.f, 256
  br i1 %i.g, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.h = zext nneg i32 %i.f to i64                ; 2 uses
  %i.i = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.h
  %i.j = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.h
  %i.k = getelementptr i8, ptr %i.j, i64 -8192
  %.not34 = icmp samesign ult i32 %i.f, 128
  %i.l = select i1 %.not34, ptr %i.i, ptr %i.k
  br label %_PyUnicode_Result.exit

bb.h:                                             ; preds = %bb.e, %bb.f
  %i.m = getelementptr [4 x i8], ptr %0, i64 %.0  ; 6 uses
  %i.n = icmp ult ptr %0, %i.m
  br i1 %i.n, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.h, %bb.j
  %.030 = phi i32 [ %.1, %bb.j ], [ 0, %bb.h ]
  %i.o = phi i32 [ %i.t, %bb.j ], [ 0, %bb.h ]    ; 2 uses
  %.015.i = phi ptr [ %i.q, %bb.j ], [ %0, %bb.h ] ; 2 uses
  %i.p = load i32, ptr %.015.i, align 4, !tbaa !44 ; 5 uses
  %i.q = getelementptr i8, ptr %.015.i, i64 4     ; 2 uses
  %i.r = icmp ugt i32 %i.p, %i.o
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i
  %i.s = icmp ugt i32 %i.p, 1114111
  br i1 %i.s, label %find_maxchar_surrogates.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i
  %.1 = phi i32 [ %i.p, %bb.i ], [ %.030, %.lr.ph.i ] ; 2 uses
  %i.t = phi i32 [ %i.p, %bb.i ], [ %i.o, %.lr.ph.i ]
  %i.u = icmp ult ptr %i.q, %i.m
  br i1 %i.u, label %.lr.ph.i, label %.loopexit, !llvm.loop !2

find_maxchar_surrogates.exit:                     ; preds = %bb.i
  %i.v = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !648
  %i.w = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.v, ptr noundef nonnull @.str.125, i32 noundef %i.p, i32 noundef 1114111) #33 ; 0 uses
  br label %_PyUnicode_Result.exit

.loopexit:                                        ; preds = %bb.j, %bb.h
  %.2.ph = phi i32 [ 0, %bb.h ], [ %.1, %bb.j ]
  %i.x = tail call ptr @PyUnicode_New(i64 noundef %.0, i32 noundef %.2.ph) ; 16 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %_PyUnicode_Result.exit, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.y = getelementptr i8, ptr %i.x, i64 32       ; 2 uses
  %i.z = load i32, ptr %i.y, align 8              ; 3 uses
  %i.aa = lshr i32 %i.z, 2
  %i.ab = and i32 %i.aa, 7
  %i.ac = and i32 %i.z, 32
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = and i32 %i.z, 64
  %.not.i.i = icmp eq i32 %i.ad, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %i.x, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.m:                                             ; preds = %bb.k
  %i.ae = getelementptr i8, ptr %i.x, i64 56
  %.val4.i = load ptr, ptr %i.ae, align 8, !tbaa !658
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.l, %bb.m
  %.0.i = phi ptr [ %.0.i.i, %bb.l ], [ %.val4.i, %bb.m ] ; 5 uses
  %.idx57.i = shl i64 %.0, 2                      ; 5 uses
  switch i32 %i.ab, label %bb.q [
    i32 1, label %bb.n
    i32 2, label %bb.o
    i32 4, label %bb.p
  ]

bb.n:                                             ; preds = %_PyUnicode_DATA.exit
  %i.af = ashr exact i64 %.idx57.i, 2
  %i.ag = and i64 %i.af, -4
  %i.ah = getelementptr [4 x i8], ptr %0, i64 %i.ag ; 2 uses
  %i.ai = icmp ult ptr %0, %i.ah
  br i1 %i.ai, label %.lr.ph68.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph68.i, %bb.n
  %.055.lcssa.i = phi ptr [ %.0.i, %bb.n ], [ %i.bt, %.lr.ph68.i ] ; 6 uses
  %.053.lcssa.i = phi ptr [ %0, %bb.n ], [ %i.bs, %.lr.ph68.i ] ; 8 uses
  %i.aj = icmp ult ptr %.053.lcssa.i, %i.m
  br i1 %i.aj, label %.lr.ph73.i.preheader, label %unicode_write_widechar.exit

.lr.ph73.i.preheader:                             ; preds = %.preheader.i
  %.053.lcssa.i84 = ptrtoaddr ptr %.053.lcssa.i to i64
  %i.ak = add i64 %.idx57.i, %i.a
  %i.al = xor i64 %.053.lcssa.i84, -1
  %i.am = add i64 %i.ak, %i.al                    ; 4 uses
  %i.an = lshr i64 %i.am, 2
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check86 = icmp ult i64 %i.am, 140
  br i1 %min.iters.check86, label %.lr.ph73.i.preheader100, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph73.i.preheader
  %i.ap = lshr i64 %i.am, 2
  %i.aq = getelementptr i8, ptr %.055.lcssa.i, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 1
  %i.as = and i64 %i.am, -4
  %i.at = getelementptr i8, ptr %.053.lcssa.i, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 4
  %bound0 = icmp ult ptr %.055.lcssa.i, %i.au
  %bound1 = icmp ult ptr %.053.lcssa.i, %i.ar
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph73.i.preheader100, label %vector.ph87

vector.ph87:                                      ; preds = %vector.memcheck
  %n.vec88 = and i64 %i.ao, 9223372036854775800   ; 4 uses
  %i.av = shl i64 %n.vec88, 2
  %i.aw = getelementptr i8, ptr %.053.lcssa.i, i64 %i.av
  %i.ax = getelementptr i8, ptr %.055.lcssa.i, i64 %n.vec88
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph87
  %index90 = phi i64 [ 0, %vector.ph87 ], [ %index.next95, %vector.body89 ] ; 3 uses
  %i.ay = shl i64 %index90, 2
  %next.gep91 = getelementptr i8, ptr %.053.lcssa.i, i64 %i.ay ; 2 uses
  %next.gep92 = getelementptr i8, ptr %.055.lcssa.i, i64 %index90 ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep91, i64 16
  %wide.load93 = load <4 x i32>, ptr %next.gep91, align 4, !tbaa !44, !alias.scope !826
  %wide.load94 = load <4 x i32>, ptr %i.az, align 4, !tbaa !44, !alias.scope !826
  %i.ba = trunc <4 x i32> %wide.load93 to <4 x i8>
  %i.bb = trunc <4 x i32> %wide.load94 to <4 x i8>
  %i.bc = getelementptr i8, ptr %next.gep92, i64 4
  store <4 x i8> %i.ba, ptr %next.gep92, align 1, !tbaa !658, !alias.scope !827, !noalias !826
  store <4 x i8> %i.bb, ptr %i.bc, align 1, !tbaa !658, !alias.scope !827, !noalias !826
  %index.next95 = add nuw i64 %index90, 8         ; 2 uses
  %i.bd = icmp eq i64 %index.next95, %n.vec88
  br i1 %i.bd, label %middle.block96, label %vector.body89, !llvm.loop !821

middle.block96:                                   ; preds = %vector.body89
  %cmp.n97 = icmp eq i64 %i.ao, %n.vec88
  br i1 %cmp.n97, label %unicode_write_widechar.exit, label %.lr.ph73.i.preheader100

.lr.ph73.i.preheader100:                          ; preds = %vector.memcheck, %.lr.ph73.i.preheader, %middle.block96
  %.15472.i.ph = phi ptr [ %.053.lcssa.i, %vector.memcheck ], [ %.053.lcssa.i, %.lr.ph73.i.preheader ], [ %i.aw, %middle.block96 ]
  %.15671.i.ph = phi ptr [ %.055.lcssa.i, %vector.memcheck ], [ %.055.lcssa.i, %.lr.ph73.i.preheader ], [ %i.ax, %middle.block96 ]
  br label %.lr.ph73.i

.lr.ph68.i:                                       ; preds = %bb.n, %.lr.ph68.i
  %.05367.i = phi ptr [ %i.bs, %.lr.ph68.i ], [ %0, %bb.n ] ; 5 uses
  %.05566.i = phi ptr [ %i.bt, %.lr.ph68.i ], [ %.0.i, %bb.n ] ; 5 uses
  %i.be = load i32, ptr %.05367.i, align 4, !tbaa !44
  %i.bf = trunc i32 %i.be to i8
  store i8 %i.bf, ptr %.05566.i, align 1, !tbaa !658
  %i.bg = getelementptr i8, ptr %.05367.i, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !44
  %i.bi = trunc i32 %i.bh to i8
  %i.bj = getelementptr i8, ptr %.05566.i, i64 1
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !658
  %i.bk = getelementptr i8, ptr %.05367.i, i64 8
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !44
  %i.bm = trunc i32 %i.bl to i8
  %i.bn = getelementptr i8, ptr %.05566.i, i64 2
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !658
  %i.bo = getelementptr i8, ptr %.05367.i, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !44
  %i.bq = trunc i32 %i.bp to i8
  %i.br = getelementptr i8, ptr %.05566.i, i64 3
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !658
  %i.bs = getelementptr i8, ptr %.05367.i, i64 16 ; 3 uses
  %i.bt = getelementptr i8, ptr %.05566.i, i64 4  ; 2 uses
  %i.bu = icmp ult ptr %i.bs, %i.ah
  br i1 %i.bu, label %.lr.ph68.i, label %.preheader.i, !llvm.loop !3

.lr.ph73.i:                                       ; preds = %.lr.ph73.i.preheader100, %.lr.ph73.i
  %.15472.i = phi ptr [ %i.bv, %.lr.ph73.i ], [ %.15472.i.ph, %.lr.ph73.i.preheader100 ] ; 2 uses
  %.15671.i = phi ptr [ %i.by, %.lr.ph73.i ], [ %.15671.i.ph, %.lr.ph73.i.preheader100 ] ; 2 uses
  %i.bv = getelementptr i8, ptr %.15472.i, i64 4  ; 2 uses
  %i.bw = load i32, ptr %.15472.i, align 4, !tbaa !44
  %i.bx = trunc i32 %i.bw to i8
  %i.by = getelementptr i8, ptr %.15671.i, i64 1
  store i8 %i.bx, ptr %.15671.i, align 1, !tbaa !658
  %i.bz = icmp ult ptr %i.bv, %i.m
  br i1 %i.bz, label %.lr.ph73.i, label %unicode_write_widechar.exit, !llvm.loop !822

bb.o:                                             ; preds = %_PyUnicode_DATA.exit
  %i.ca = ashr exact i64 %.idx57.i, 2
  %i.cb = and i64 %i.ca, -4
  %i.cc = getelementptr [4 x i8], ptr %0, i64 %i.cb ; 2 uses
  %i.cd = icmp ult ptr %0, %i.cc
  br i1 %i.cd, label %.lr.ph.i23, label %.preheader58.i

.preheader58.i:                                   ; preds = %.lr.ph.i23, %bb.o
  %.051.lcssa.i = phi ptr [ %.0.i, %bb.o ], [ %i.cy, %.lr.ph.i23 ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %0, %bb.o ], [ %i.cx, %.lr.ph.i23 ] ; 5 uses
  %i.ce = icmp ult ptr %.0.lcssa.i, %i.m
  br i1 %i.ce, label %.lr.ph65.i.preheader, label %unicode_write_widechar.exit

.lr.ph65.i.preheader:                             ; preds = %.preheader58.i
  %.0.lcssa.i78 = ptrtoaddr ptr %.0.lcssa.i to i64
  %i.cf = add i64 %.idx57.i, %i.a
  %i.cg = xor i64 %.0.lcssa.i78, -1
  %i.ch = add i64 %i.cf, %i.cg                    ; 2 uses
  %i.ci = lshr i64 %i.ch, 2
  %i.cj = add nuw nsw i64 %i.ci, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ch, 28
  br i1 %min.iters.check, label %.lr.ph65.i.preheader102, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph65.i.preheader
  %n.vec = and i64 %i.cj, 9223372036854775800     ; 4 uses
  %i.ck = shl i64 %n.vec, 2
  %i.cl = getelementptr i8, ptr %.0.lcssa.i, i64 %i.ck
  %i.cm = shl nuw i64 %n.vec, 1
  %i.cn = getelementptr i8, ptr %.051.lcssa.i, i64 %i.cm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.co = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0.lcssa.i, i64 %i.co ; 2 uses
  %i.cp = shl i64 %index, 1
  %next.gep79 = getelementptr i8, ptr %.051.lcssa.i, i64 %i.cp ; 2 uses
  %i.cq = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !44
  %wide.load80 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !44
  %i.cr = trunc <4 x i32> %wide.load to <4 x i16>
  %i.cs = trunc <4 x i32> %wide.load80 to <4 x i16>
  %i.ct = getelementptr i8, ptr %next.gep79, i64 8
  store <4 x i16> %i.cr, ptr %next.gep79, align 2, !tbaa !661
  store <4 x i16> %i.cs, ptr %i.ct, align 2, !tbaa !661
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !823

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cj, %n.vec
  br i1 %cmp.n, label %unicode_write_widechar.exit, label %.lr.ph65.i.preheader102

.lr.ph65.i.preheader102:                          ; preds = %.lr.ph65.i.preheader, %middle.block
  %.164.i.ph = phi ptr [ %.0.lcssa.i, %.lr.ph65.i.preheader ], [ %i.cl, %middle.block ]
  %.15263.i.ph = phi ptr [ %.051.lcssa.i, %.lr.ph65.i.preheader ], [ %i.cn, %middle.block ]
  br label %.lr.ph65.i

.lr.ph.i23:                                       ; preds = %bb.o, %.lr.ph.i23
  %.061.i = phi ptr [ %i.cx, %.lr.ph.i23 ], [ %0, %bb.o ] ; 2 uses
  %.05160.i = phi ptr [ %i.cy, %.lr.ph.i23 ], [ %.0.i, %bb.o ] ; 2 uses
  %i.cv = load <4 x i32>, ptr %.061.i, align 4, !tbaa !44
  %i.cw = trunc <4 x i32> %i.cv to <4 x i16>
  store <4 x i16> %i.cw, ptr %.05160.i, align 2, !tbaa !661
  %i.cx = getelementptr i8, ptr %.061.i, i64 16   ; 3 uses
  %i.cy = getelementptr i8, ptr %.05160.i, i64 8  ; 2 uses
  %i.cz = icmp ult ptr %i.cx, %i.cc
  br i1 %i.cz, label %.lr.ph.i23, label %.preheader58.i, !llvm.loop !4

.lr.ph65.i:                                       ; preds = %.lr.ph65.i.preheader102, %.lr.ph65.i
  %.164.i = phi ptr [ %i.da, %.lr.ph65.i ], [ %.164.i.ph, %.lr.ph65.i.preheader102 ] ; 2 uses
  %.15263.i = phi ptr [ %i.dd, %.lr.ph65.i ], [ %.15263.i.ph, %.lr.ph65.i.preheader102 ] ; 2 uses
  %i.da = getelementptr i8, ptr %.164.i, i64 4    ; 2 uses
  %i.db = load i32, ptr %.164.i, align 4, !tbaa !44
  %i.dc = trunc i32 %i.db to i16
  %i.dd = getelementptr i8, ptr %.15263.i, i64 2
  store i16 %i.dc, ptr %.15263.i, align 2, !tbaa !661
  %i.de = icmp ult ptr %i.da, %i.m
  br i1 %i.de, label %.lr.ph65.i, label %unicode_write_widechar.exit, !llvm.loop !824

bb.p:                                             ; preds = %_PyUnicode_DATA.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i, ptr readonly align 4 %0, i64 %.idx57.i, i1 false)
  br label %unicode_write_widechar.exit

bb.q:                                             ; preds = %_PyUnicode_DATA.exit
  unreachable

unicode_write_widechar.exit:                      ; preds = %.lr.ph65.i, %.lr.ph73.i, %middle.block, %middle.block96, %.preheader.i, %.preheader58.i, %bb.p
  %i.df = getelementptr i8, ptr %i.x, i64 16
  %.val.i24 = load i64, ptr %i.df, align 8, !tbaa !660
  switch i64 %.val.i24, label %_PyUnicode_Result.exit [
    i64 0, label %bb.r
    i64 1, label %bb.u
  ]

bb.r:                                             ; preds = %unicode_write_widechar.exit
  %.not26.i = icmp eq ptr %i.x, getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176)
  br i1 %.not26.i, label %_PyUnicode_Result.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dg = load i32, ptr %i.x, align 8, !tbaa !658 ; 2 uses
  %.not.i27.i = icmp sgt i32 %i.dg, -1
  br i1 %.not.i27.i, label %bb.t, label %_PyUnicode_Result.exit

bb.t:                                             ; preds = %bb.s
  %i.dh = add nsw i32 %i.dg, -1                   ; 2 uses
  store i32 %i.dh, ptr %i.x, align 8, !tbaa !658
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %Py_DECREF.exit28.sink.split.i, label %_PyUnicode_Result.exit

bb.u:                                             ; preds = %unicode_write_widechar.exit
  %i.dj = load i32, ptr %i.y, align 8             ; 3 uses
  %i.dk = and i32 %i.dj, 28
  %.not25.i = icmp eq i32 %i.dk, 4
  br i1 %.not25.i, label %bb.v, label %_PyUnicode_Result.exit

bb.v:                                             ; preds = %bb.u
  %i.dl = and i32 %i.dj, 32
  %.not.i30.i = icmp eq i32 %i.dl, 0
  br i1 %.not.i30.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dm = and i32 %i.dj, 64
  %.not.i.i.i = icmp eq i32 %i.dm, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.x, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.x:                                             ; preds = %bb.v
  %i.dn = getelementptr i8, ptr %i.x, i64 56
  %.val4.i.i = load ptr, ptr %i.dn, align 8, !tbaa !658
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.x, %bb.w
  %.0.i.i25 = phi ptr [ %.0.i.i.i, %bb.w ], [ %.val4.i.i, %bb.x ]
  %i.do = load i8, ptr %.0.i.i25, align 1, !tbaa !658 ; 2 uses
  %i.dp = zext i8 %i.do to i64                    ; 2 uses
  %i.dq = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.dp
  %i.dr = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.dp
  %i.ds = getelementptr i8, ptr %i.dr, i64 -8192
  %i.dt = icmp slt i8 %i.do, 0
  %i.du = select i1 %i.dt, ptr %i.ds, ptr %i.dq   ; 5 uses
  %.not.i26 = icmp eq ptr %i.x, %i.du
  br i1 %.not.i26, label %_PyUnicode_Result.exit, label %bb.y

bb.y:                                             ; preds = %_PyUnicode_DATA.exit.i
  %i.dv = load i32, ptr %i.x, align 8, !tbaa !658 ; 2 uses
  %.not.i.i27 = icmp sgt i32 %i.dv, -1
  br i1 %.not.i.i27, label %bb.z, label %_PyUnicode_Result.exit

bb.z:                                             ; preds = %bb.y
  %i.dw = add nsw i32 %i.dv, -1                   ; 2 uses
  store i32 %i.dw, ptr %i.x, align 8, !tbaa !658
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %Py_DECREF.exit28.sink.split.i, label %_PyUnicode_Result.exit

Py_DECREF.exit28.sink.split.i:                    ; preds = %bb.z, %bb.t
  %.1.ph.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.t ], [ %i.du, %bb.z ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.x) #33
  br label %_PyUnicode_Result.exit

_PyUnicode_Result.exit:                           ; preds = %Py_DECREF.exit28.sink.split.i, %bb.z, %bb.y, %_PyUnicode_DATA.exit.i, %bb.u, %bb.t, %bb.s, %bb.r, %unicode_write_widechar.exit, %find_maxchar_surrogates.exit, %bb.e, %.loopexit, %bb.g, %bb.b
  %.019 = phi ptr [ null, %bb.b ], [ null, %.loopexit ], [ %i.l, %bb.g ], [ null, %find_maxchar_surrogates.exit ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.e ], [ %i.x, %unicode_write_widechar.exit ], [ %i.du, %bb.y ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.r ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.s ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.t ], [ %i.x, %bb.u ], [ %i.du, %_PyUnicode_DATA.exit.i ], [ %i.du, %bb.z ], [ %.1.ph.i, %Py_DECREF.exit28.sink.split.i ]
  ret ptr %.019
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @PyUnicodeWriter_WriteWideChar(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2) local_unnamed_addr #1 !guid !835 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = icmp slt i64 %2, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %1) #34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.024 = phi i64 [ %i.c, %bb.b ], [ %2, %bb.a ]  ; 6 uses
  %i.d = icmp eq i64 %.024, 0
  br i1 %i.d, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr [4 x i8], ptr %1, i64 %.024 ; 6 uses
  %i.f = icmp ult ptr %1, %i.e
  br i1 %i.f, label %.lr.ph.i, label %.thread

.lr.ph.i:                                         ; preds = %bb.d, %bb.f
  %.034 = phi i32 [ %.135, %bb.f ], [ 0, %bb.d ]
  %i.g = phi i32 [ %i.l, %bb.f ], [ 0, %bb.d ]    ; 2 uses
  %.015.i = phi ptr [ %i.i, %bb.f ], [ %1, %bb.d ] ; 2 uses
  %i.h = load i32, ptr %.015.i, align 4, !tbaa !44 ; 5 uses
  %i.i = getelementptr i8, ptr %.015.i, i64 4     ; 2 uses
  %i.j = icmp ugt i32 %i.h, %i.g
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.k = icmp ugt i32 %i.h, 1114111
  br i1 %i.k, label %find_maxchar_surrogates.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  %.135 = phi i32 [ %i.h, %bb.e ], [ %.034, %.lr.ph.i ] ; 4 uses
  %i.l = phi i32 [ %i.h, %bb.e ], [ %i.g, %.lr.ph.i ]
  %i.m = icmp ult ptr %i.i, %i.e
  br i1 %i.m, label %.lr.ph.i, label %bb.g, !llvm.loop !2

find_maxchar_surrogates.exit:                     ; preds = %bb.e
  %i.n = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !648
  %i.o = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.n, ptr noundef nonnull @.str.125, i32 noundef %i.h, i32 noundef 1114111) #33 ; 0 uses
  br label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %0, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !668
  %.not = icmp ugt i32 %.135, %i.q
  br i1 %.not, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.d, %bb.g
  %.2.ph41 = phi i32 [ %.135, %bb.g ], [ 0, %bb.d ]
  %i.r = getelementptr i8, ptr %0, i64 24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !669
  %i.t = getelementptr i8, ptr %0, i64 32
  %i.u = load i64, ptr %i.t, align 8, !tbaa !670  ; 2 uses
  %i.v = sub i64 %i.s, %i.u
  %.not27 = icmp sgt i64 %.024, %i.v
  br i1 %.not27, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g, %.thread
  %.2.ph42 = phi i32 [ %.2.ph41, %.thread ], [ %.135, %bb.g ]
  %i.w = tail call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %0, i64 noundef %.024, i32 noundef %.2.ph42) #33
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.m, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.h
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 32
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !670
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %.thread
  %i.y = phi i64 [ %.pre, %..critedge_crit_edge ], [ %i.u, %.thread ]
  %i.z = getelementptr i8, ptr %0, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !671 ; 2 uses
  %i.ab = getelementptr i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !672
  %i.ad = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.ae = sext i32 %i.aa to i64
  %i.af = mul i64 %i.y, %i.ae
  %i.ag = getelementptr i8, ptr %i.ac, i64 %i.af  ; 5 uses
  %.idx57.i = shl i64 %.024, 2                    ; 5 uses
  switch i32 %i.aa, label %bb.l [
    i32 1, label %bb.i
    i32 2, label %bb.j
    i32 4, label %bb.k
  ]

bb.i:                                             ; preds = %.critedge
  %i.ah = ashr exact i64 %.idx57.i, 2
  %i.ai = and i64 %i.ah, -4
  %i.aj = getelementptr [4 x i8], ptr %1, i64 %i.ai ; 2 uses
  %i.ak = icmp ult ptr %1, %i.aj
  br i1 %i.ak, label %.lr.ph68.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph68.i, %bb.i
  %.055.lcssa.i = phi ptr [ %i.ag, %bb.i ], [ %i.bv, %.lr.ph68.i ] ; 6 uses
  %.053.lcssa.i = phi ptr [ %1, %bb.i ], [ %i.bu, %.lr.ph68.i ] ; 8 uses
  %i.al = icmp ult ptr %.053.lcssa.i, %i.e
  br i1 %i.al, label %.lr.ph73.i.preheader, label %unicode_write_widechar.exit

.lr.ph73.i.preheader:                             ; preds = %.preheader.i
  %.053.lcssa.i85 = ptrtoaddr ptr %.053.lcssa.i to i64
  %i.am = add i64 %.idx57.i, %i.a
  %i.an = xor i64 %.053.lcssa.i85, -1
  %i.ao = add i64 %i.am, %i.an                    ; 4 uses
  %i.ap = lshr i64 %i.ao, 2
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check87 = icmp ult i64 %i.ao, 140
  br i1 %min.iters.check87, label %.lr.ph73.i.preheader101, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph73.i.preheader
  %i.ar = lshr i64 %i.ao, 2
  %i.as = getelementptr i8, ptr %.055.lcssa.i, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 1
  %i.au = and i64 %i.ao, -4
  %i.av = getelementptr i8, ptr %.053.lcssa.i, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 4
  %bound0 = icmp ult ptr %.055.lcssa.i, %i.aw
  %bound1 = icmp ult ptr %.053.lcssa.i, %i.at
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph73.i.preheader101, label %vector.ph88

vector.ph88:                                      ; preds = %vector.memcheck
  %n.vec89 = and i64 %i.aq, 9223372036854775800   ; 4 uses
  %i.ax = shl i64 %n.vec89, 2
  %i.ay = getelementptr i8, ptr %.053.lcssa.i, i64 %i.ax
  %i.az = getelementptr i8, ptr %.055.lcssa.i, i64 %n.vec89
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph88
  %index91 = phi i64 [ 0, %vector.ph88 ], [ %index.next96, %vector.body90 ] ; 3 uses
  %i.ba = shl i64 %index91, 2
  %next.gep92 = getelementptr i8, ptr %.053.lcssa.i, i64 %i.ba ; 2 uses
  %next.gep93 = getelementptr i8, ptr %.055.lcssa.i, i64 %index91 ; 2 uses
  %i.bb = getelementptr i8, ptr %next.gep92, i64 16
  %wide.load94 = load <4 x i32>, ptr %next.gep92, align 4, !tbaa !44, !alias.scope !836
  %wide.load95 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !44, !alias.scope !836
  %i.bc = trunc <4 x i32> %wide.load94 to <4 x i8>
  %i.bd = trunc <4 x i32> %wide.load95 to <4 x i8>
  %i.be = getelementptr i8, ptr %next.gep93, i64 4
  store <4 x i8> %i.bc, ptr %next.gep93, align 1, !tbaa !658, !alias.scope !837, !noalias !836
  store <4 x i8> %i.bd, ptr %i.be, align 1, !tbaa !658, !alias.scope !837, !noalias !836
  %index.next96 = add nuw i64 %index91, 8         ; 2 uses
  %i.bf = icmp eq i64 %index.next96, %n.vec89
  br i1 %i.bf, label %middle.block97, label %vector.body90, !llvm.loop !831

middle.block97:                                   ; preds = %vector.body90
  %cmp.n98 = icmp eq i64 %i.aq, %n.vec89
  br i1 %cmp.n98, label %unicode_write_widechar.exit, label %.lr.ph73.i.preheader101

.lr.ph73.i.preheader101:                          ; preds = %vector.memcheck, %.lr.ph73.i.preheader, %middle.block97
  %.15472.i.ph = phi ptr [ %.053.lcssa.i, %vector.memcheck ], [ %.053.lcssa.i, %.lr.ph73.i.preheader ], [ %i.ay, %middle.block97 ]
  %.15671.i.ph = phi ptr [ %.055.lcssa.i, %vector.memcheck ], [ %.055.lcssa.i, %.lr.ph73.i.preheader ], [ %i.az, %middle.block97 ]
  br label %.lr.ph73.i

.lr.ph68.i:                                       ; preds = %bb.i, %.lr.ph68.i
  %.05367.i = phi ptr [ %i.bu, %.lr.ph68.i ], [ %1, %bb.i ] ; 5 uses
  %.05566.i = phi ptr [ %i.bv, %.lr.ph68.i ], [ %i.ag, %bb.i ] ; 5 uses
  %i.bg = load i32, ptr %.05367.i, align 4, !tbaa !44
  %i.bh = trunc i32 %i.bg to i8
  store i8 %i.bh, ptr %.05566.i, align 1, !tbaa !658
  %i.bi = getelementptr i8, ptr %.05367.i, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !44
  %i.bk = trunc i32 %i.bj to i8
  %i.bl = getelementptr i8, ptr %.05566.i, i64 1
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !658
  %i.bm = getelementptr i8, ptr %.05367.i, i64 8
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !44
  %i.bo = trunc i32 %i.bn to i8
  %i.bp = getelementptr i8, ptr %.05566.i, i64 2
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !658
  %i.bq = getelementptr i8, ptr %.05367.i, i64 12
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !44
  %i.bs = trunc i32 %i.br to i8
  %i.bt = getelementptr i8, ptr %.05566.i, i64 3
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !658
  %i.bu = getelementptr i8, ptr %.05367.i, i64 16 ; 3 uses
  %i.bv = getelementptr i8, ptr %.05566.i, i64 4  ; 2 uses
  %i.bw = icmp ult ptr %i.bu, %i.aj
  br i1 %i.bw, label %.lr.ph68.i, label %.preheader.i, !llvm.loop !3

.lr.ph73.i:                                       ; preds = %.lr.ph73.i.preheader101, %.lr.ph73.i
  %.15472.i = phi ptr [ %i.bx, %.lr.ph73.i ], [ %.15472.i.ph, %.lr.ph73.i.preheader101 ] ; 2 uses
  %.15671.i = phi ptr [ %i.ca, %.lr.ph73.i ], [ %.15671.i.ph, %.lr.ph73.i.preheader101 ] ; 2 uses
  %i.bx = getelementptr i8, ptr %.15472.i, i64 4  ; 2 uses
  %i.by = load i32, ptr %.15472.i, align 4, !tbaa !44
  %i.bz = trunc i32 %i.by to i8
  %i.ca = getelementptr i8, ptr %.15671.i, i64 1
  store i8 %i.bz, ptr %.15671.i, align 1, !tbaa !658
  %i.cb = icmp ult ptr %i.bx, %i.e
  br i1 %i.cb, label %.lr.ph73.i, label %unicode_write_widechar.exit, !llvm.loop !832

bb.j:                                             ; preds = %.critedge
  %i.cc = ashr exact i64 %.idx57.i, 2
  %i.cd = and i64 %i.cc, -4
  %i.ce = getelementptr [4 x i8], ptr %1, i64 %i.cd ; 2 uses
  %i.cf = icmp ult ptr %1, %i.ce
  br i1 %i.cf, label %.lr.ph.i28, label %.preheader58.i

.preheader58.i:                                   ; preds = %.lr.ph.i28, %bb.j
  %.051.lcssa.i = phi ptr [ %i.ag, %bb.j ], [ %i.da, %.lr.ph.i28 ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %1, %bb.j ], [ %i.cz, %.lr.ph.i28 ] ; 5 uses
  %i.cg = icmp ult ptr %.0.lcssa.i, %i.e
  br i1 %i.cg, label %.lr.ph65.i.preheader, label %unicode_write_widechar.exit

.lr.ph65.i.preheader:                             ; preds = %.preheader58.i
  %.0.lcssa.i79 = ptrtoaddr ptr %.0.lcssa.i to i64
end_hunk_0
begin_hunk_1_@PyUnicode_AsWideCharString:bb.a
  %i.v = shl i64 %.val23, 2
  %i.w = getelementptr i8, ptr %i.j, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %i.y = getelementptr i8, ptr %.0.i26.i, i64 %i.g
  %bound0 = icmp ult ptr %i.j, %i.y
  %bound1 = icmp ult ptr %.0.i26.i, %i.x
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader54, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, 2305843009213693944      ; 4 uses
  %i.z = getelementptr i8, ptr %.0.i26.i, i64 %n.vec
  %i.aa = and i64 %i.g, 7
  %i.ab = shl nuw nsw i64 %n.vec, 2
  %i.ac = getelementptr i8, ptr %i.j, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0.i26.i, i64 %index ; 2 uses
  %i.ad = shl i64 %index, 2
  %next.gep33 = getelementptr i8, ptr %i.j, i64 %i.ad ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !658, !alias.scope !930
  %wide.load34 = load <4 x i8>, ptr %i.ae, align 1, !tbaa !658, !alias.scope !930
  %i.af = zext <4 x i8> %wide.load to <4 x i32>
  %i.ag = zext <4 x i8> %wide.load34 to <4 x i32>
  %i.ah = getelementptr i8, ptr %next.gep33, i64 16
  store <4 x i32> %i.af, ptr %next.gep33, align 4, !tbaa !44, !alias.scope !931, !noalias !930
  store <4 x i32> %i.ag, ptr %i.ah, align 4, !tbaa !44, !alias.scope !931, !noalias !930
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !924

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %unicode_copy_as_widechar.exit, label %.lr.ph.i.preheader54

.lr.ph.i.preheader54:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.01641.i.ph = phi ptr [ %.0.i26.i, %vector.memcheck ], [ %.0.i26.i, %.lr.ph.i.preheader ], [ %i.z, %middle.block ] ; 2 uses
  %.01740.i.ph = phi i64 [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.i.preheader ], [ %i.aa, %middle.block ] ; 4 uses
  %.01839.i.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.i.preheader ], [ %i.ac, %middle.block ] ; 2 uses
  %i.aj = add nsw i64 %.01740.i.ph, -1
  %xtraiter = and i64 %.01740.i.ph, 7             ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader54, %.lr.ph.i.prol
  %.01641.i.prol = phi ptr [ %i.an, %.lr.ph.i.prol ], [ %.01641.i.ph, %.lr.ph.i.preheader54 ] ; 2 uses
  %.01740.i.prol = phi i64 [ %i.ak, %.lr.ph.i.prol ], [ %.01740.i.ph, %.lr.ph.i.preheader54 ]
  %.01839.i.prol = phi ptr [ %i.ao, %.lr.ph.i.prol ], [ %.01839.i.ph, %.lr.ph.i.preheader54 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader54 ]
  %i.ak = add nsw i64 %.01740.i.prol, -1          ; 2 uses
  %i.al = load i8, ptr %.01641.i.prol, align 1, !tbaa !658
  %i.am = zext i8 %i.al to i32
  store i32 %i.am, ptr %.01839.i.prol, align 4, !tbaa !44
  %i.an = getelementptr i8, ptr %.01641.i.prol, i64 1 ; 2 uses
  %i.ao = getelementptr i8, ptr %.01839.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !925

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader54
  %.01641.i.unr = phi ptr [ %.01641.i.ph, %.lr.ph.i.preheader54 ], [ %i.an, %.lr.ph.i.prol ]
  %.01740.i.unr = phi i64 [ %.01740.i.ph, %.lr.ph.i.preheader54 ], [ %i.ak, %.lr.ph.i.prol ]
  %.01839.i.unr = phi ptr [ %.01839.i.ph, %.lr.ph.i.preheader54 ], [ %i.ao, %.lr.ph.i.prol ]
  %i.ap = icmp ult i64 %i.aj, 7
  br i1 %i.ap, label %unicode_copy_as_widechar.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.01641.i = phi ptr [ %i.bv, %.lr.ph.i ], [ %.01641.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.01740.i = phi i64 [ %i.bs, %.lr.ph.i ], [ %.01740.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01839.i = phi ptr [ %i.bw, %.lr.ph.i ], [ %.01839.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.aq = load i8, ptr %.01641.i, align 1, !tbaa !658
  %i.ar = zext i8 %i.aq to i32
  store i32 %i.ar, ptr %.01839.i, align 4, !tbaa !44
  %i.as = getelementptr i8, ptr %.01641.i, i64 1
  %i.at = getelementptr i8, ptr %.01839.i, i64 4
  %i.au = load i8, ptr %i.as, align 1, !tbaa !658
  %i.av = zext i8 %i.au to i32
  store i32 %i.av, ptr %i.at, align 4, !tbaa !44
  %i.aw = getelementptr i8, ptr %.01641.i, i64 2
  %i.ax = getelementptr i8, ptr %.01839.i, i64 8
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !658
  %i.az = zext i8 %i.ay to i32
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !44
  %i.ba = getelementptr i8, ptr %.01641.i, i64 3
  %i.bb = getelementptr i8, ptr %.01839.i, i64 12
  %i.bc = load i8, ptr %i.ba, align 1, !tbaa !658
  %i.bd = zext i8 %i.bc to i32
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !44
  %i.be = getelementptr i8, ptr %.01641.i, i64 4
  %i.bf = getelementptr i8, ptr %.01839.i, i64 16
  %i.bg = load i8, ptr %i.be, align 1, !tbaa !658
  %i.bh = zext i8 %i.bg to i32
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !44
  %i.bi = getelementptr i8, ptr %.01641.i, i64 5
  %i.bj = getelementptr i8, ptr %.01839.i, i64 20
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !658
  %i.bl = zext i8 %i.bk to i32
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !44
  %i.bm = getelementptr i8, ptr %.01641.i, i64 6
  %i.bn = getelementptr i8, ptr %.01839.i, i64 24
  %i.bo = load i8, ptr %i.bm, align 1, !tbaa !658
  %i.bp = zext i8 %i.bo to i32
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !44
  %i.bq = getelementptr i8, ptr %.01641.i, i64 7
  %i.br = getelementptr i8, ptr %.01839.i, i64 28
  %i.bs = add nsw i64 %.01740.i, -8               ; 2 uses
  %i.bt = load i8, ptr %i.bq, align 1, !tbaa !658
  %i.bu = zext i8 %i.bt to i32
  store i32 %i.bu, ptr %i.br, align 4, !tbaa !44
  %i.bv = getelementptr i8, ptr %.01641.i, i64 8
  %i.bw = getelementptr i8, ptr %.01839.i, i64 32
  %.not20.i.7 = icmp eq i64 %i.bs, 0
  br i1 %.not20.i.7, label %unicode_copy_as_widechar.exit, label %.lr.ph.i, !llvm.loop !926

bb.n:                                             ; preds = %bb.g
  br i1 %.not.i30.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bx = and i32 %i.n, 64
  %.not.i.i31.i = icmp eq i32 %i.bx, 0
  %.0.v.i.i32.i = select i1 %.not.i.i31.i, i64 56, i64 40
  %.0.i.i33.i = getelementptr i8, ptr %0, i64 %.0.v.i.i32.i
  br label %_PyUnicode_DATA.exit36.i

bb.p:                                             ; preds = %bb.n
  %i.by = getelementptr i8, ptr %0, i64 56
  %.val4.i35.i = load ptr, ptr %i.by, align 8, !tbaa !658
  br label %_PyUnicode_DATA.exit36.i

_PyUnicode_DATA.exit36.i:                         ; preds = %bb.p, %bb.o
  %.0.i34.i = phi ptr [ %.0.i.i33.i, %bb.o ], [ %.val4.i35.i, %bb.p ] ; 3 uses
  %.not42.i = icmp eq i64 %i.g, 0
  br i1 %.not42.i, label %unicode_copy_as_widechar.exit, label %.lr.ph46.i.preheader

.lr.ph46.i.preheader:                             ; preds = %_PyUnicode_DATA.exit36.i
  %min.iters.check38 = icmp ult i64 %i.g, 8
  br i1 %min.iters.check38, label %.lr.ph46.i.preheader53, label %vector.ph39

vector.ph39:                                      ; preds = %.lr.ph46.i.preheader
  %n.vec40 = and i64 %i.g, 2305843009213693944    ; 4 uses
  %i.bz = shl nuw nsw i64 %n.vec40, 1
  %i.ca = getelementptr i8, ptr %.0.i34.i, i64 %i.bz
  %i.cb = and i64 %i.g, 7
  %i.cc = shl nuw nsw i64 %n.vec40, 2
  %i.cd = getelementptr i8, ptr %i.j, i64 %i.cc
  br label %vector.body41

vector.body41:                                    ; preds = %vector.body41, %vector.ph39
  %index42 = phi i64 [ 0, %vector.ph39 ], [ %index.next47, %vector.body41 ] ; 3 uses
  %i.ce = shl i64 %index42, 1
  %next.gep43 = getelementptr i8, ptr %.0.i34.i, i64 %i.ce ; 2 uses
  %i.cf = shl i64 %index42, 2
  %next.gep44 = getelementptr i8, ptr %i.j, i64 %i.cf ; 2 uses
  %i.cg = getelementptr i8, ptr %next.gep43, i64 8
  %wide.load45 = load <4 x i16>, ptr %next.gep43, align 2, !tbaa !661
  %wide.load46 = load <4 x i16>, ptr %i.cg, align 2, !tbaa !661
  %i.ch = zext <4 x i16> %wide.load45 to <4 x i32>
  %i.ci = zext <4 x i16> %wide.load46 to <4 x i32>
  %i.cj = getelementptr i8, ptr %next.gep44, i64 16
  store <4 x i32> %i.ch, ptr %next.gep44, align 4, !tbaa !44
  store <4 x i32> %i.ci, ptr %i.cj, align 4, !tbaa !44
  %index.next47 = add nuw i64 %index42, 8         ; 2 uses
  %i.ck = icmp eq i64 %index.next47, %n.vec40
  br i1 %i.ck, label %middle.block48, label %vector.body41, !llvm.loop !927

middle.block48:                                   ; preds = %vector.body41
  %cmp.n49 = icmp eq i64 %i.g, %n.vec40
  br i1 %cmp.n49, label %unicode_copy_as_widechar.exit, label %.lr.ph46.i.preheader53

.lr.ph46.i.preheader53:                           ; preds = %.lr.ph46.i.preheader, %middle.block48
  %.045.i.ph = phi ptr [ %.0.i34.i, %.lr.ph46.i.preheader ], [ %i.ca, %middle.block48 ]
  %.144.i.ph = phi i64 [ %i.g, %.lr.ph46.i.preheader ], [ %i.cb, %middle.block48 ]
  %.11943.i.ph = phi ptr [ %i.j, %.lr.ph46.i.preheader ], [ %i.cd, %middle.block48 ]
  br label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %.lr.ph46.i.preheader53, %.lr.ph46.i
  %.045.i = phi ptr [ %i.co, %.lr.ph46.i ], [ %.045.i.ph, %.lr.ph46.i.preheader53 ] ; 2 uses
  %.144.i = phi i64 [ %i.cl, %.lr.ph46.i ], [ %.144.i.ph, %.lr.ph46.i.preheader53 ]
  %.11943.i = phi ptr [ %i.cp, %.lr.ph46.i ], [ %.11943.i.ph, %.lr.ph46.i.preheader53 ] ; 2 uses
  %i.cl = add nsw i64 %.144.i, -1                 ; 2 uses
  %i.cm = load i16, ptr %.045.i, align 2, !tbaa !661
  %i.cn = zext i16 %i.cm to i32
  store i32 %i.cn, ptr %.11943.i, align 4, !tbaa !44
  %i.co = getelementptr i8, ptr %.045.i, i64 2
  %i.cp = getelementptr i8, ptr %.11943.i, i64 4
  %.not.i = icmp eq i64 %i.cl, 0
  br i1 %.not.i, label %unicode_copy_as_widechar.exit, label %.lr.ph46.i, !llvm.loop !928

unicode_copy_as_widechar.exit:                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph46.i, %middle.block, %middle.block48, %_PyUnicode_DATA.exit.i, %_PyUnicode_DATA.exit28.i, %_PyUnicode_DATA.exit36.i
  %.not20 = icmp eq ptr %1, null
  br i1 %.not20, label %bb.r, label %bb.q

bb.q:                                             ; preds = %unicode_copy_as_widechar.exit
  store i64 %.val23, ptr %1, align 8, !tbaa !647
  br label %bb.t

bb.r:                                             ; preds = %unicode_copy_as_widechar.exit
  %i.cq = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.j) #34
  %.not21 = icmp eq i64 %i.cq, %.val23
  br i1 %.not21, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @PyMem_Free(ptr noundef nonnull %i.j) #33
  %i.cr = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !648
  tail call void @PyErr_SetString(ptr noundef %i.cr, ptr noundef nonnull @.str.37) #33
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.r, %bb.s, %.thread, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %.thread ], [ null, %bb.d ], [ null, %bb.s ], [ %i.j, %bb.r ], [ %i.j, %bb.q ]
  ret ptr %.0
}

declare ptr @PyMem_Malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 131073) i32 @_PyUnicode_WideCharString_Converter(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 !guid !932 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !679
  tail call void @PyMem_Free(ptr noundef %i.b) #33
  store ptr null, ptr %1, align 8, !tbaa !679
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val10 = load ptr, ptr %i.c, align 8, !tbaa !650 ; 2 uses
  %i.d = getelementptr i8, ptr %.val10, i64 168
  %.val11 = load i64, ptr %i.d, align 8, !tbaa !655
  %i.e = and i64 %.val11, 268435456
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @PyUnicode_AsWideCharString(ptr noundef nonnull %0, ptr noundef null) ; 2 uses
  store ptr %i.f, ptr %1, align 8, !tbaa !679
  %i.g = icmp eq ptr %i.f, null
  %. = select i1 %i.g, i32 0, i32 131072
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !648
  %i.i = getelementptr i8, ptr %.val10, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !682
  %i.k = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.h, ptr noundef nonnull @.str.38, ptr noundef %i.j) #33 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ %., %bb.d ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 131073) i32 @_PyUnicode_WideCharString_Opt_Converter(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 !guid !933 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !679
  tail call void @PyMem_Free(ptr noundef %i.b) #33
  store ptr null, ptr %1, align 8, !tbaa !679
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, @_Py_NoneStruct
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %1, align 8, !tbaa !679
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val12 = load ptr, ptr %i.d, align 8, !tbaa !650 ; 2 uses
  %i.e = getelementptr i8, ptr %.val12, i64 168
  %.val13 = load i64, ptr %i.e, align 8, !tbaa !655
  %i.f = and i64 %.val13, 268435456
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = tail call ptr @PyUnicode_AsWideCharString(ptr noundef nonnull %0, ptr noundef null) ; 2 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !679
  %i.h = icmp eq ptr %i.g, null
  %. = select i1 %i.h, i32 0, i32 131072
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.i = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !648
  %i.j = getelementptr i8, ptr %.val12, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !682
  %i.l = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.i, ptr noundef nonnull @.str.39, ptr noundef %i.k) #33 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 1, %bb.d ], [ %., %bb.f ], [ 0, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_FromOrdinal(i32 noundef %0) local_unnamed_addr #1 !guid !934 {
bb.a:
  %or.cond = icmp ugt i32 %0, 1114111
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !648
  tail call void @PyErr_SetString(ptr noundef %i.a, ptr noundef nonnull @.str.40) #33
  br label %unicode_char.exit

bb.c:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %0, 256
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = zext nneg i32 %0 to i64                  ; 2 uses
  %i.d = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.c
  %i.e = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.c
  %i.f = getelementptr i8, ptr %i.e, i64 -8192
  %.not.i = icmp samesign ult i32 %0, 128
  %i.g = select i1 %.not.i, ptr %i.d, ptr %i.f
  br label %unicode_char.exit

bb.e:                                             ; preds = %bb.c
  %i.h = tail call ptr @PyUnicode_New(i64 noundef 1, i32 noundef %0), !inline_history !8 ; 8 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %unicode_char.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr i8, ptr %i.h, i64 32
  %i.k = load i32, ptr %i.j, align 8              ; 5 uses
  %i.l = and i32 %i.k, 28
  %i.m = icmp eq i32 %i.l, 8
  br i1 %i.m, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.n = trunc i32 %0 to i16
  %i.o = and i32 %i.k, 32
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = and i32 %i.k, 64
  %.not.i.i.i = icmp eq i32 %i.p, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.h, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.i:                                             ; preds = %bb.g
  %i.q = getelementptr i8, ptr %i.h, i64 56
  %.val4.i.i = load ptr, ptr %i.q, align 8, !tbaa !658
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.i, %bb.h
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.h ], [ %.val4.i.i, %bb.i ]
  store i16 %i.n, ptr %.0.i.i, align 2, !tbaa !661
  br label %unicode_char.exit

bb.j:                                             ; preds = %bb.f
  %i.r = and i32 %i.k, 32
  %.not.i13.i = icmp eq i32 %i.r, 0
  br i1 %.not.i13.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = and i32 %i.k, 64
  %.not.i.i14.i = icmp eq i32 %i.s, 0
  %.0.v.i.i15.i = select i1 %.not.i.i14.i, i64 56, i64 40
  %.0.i.i16.i = getelementptr i8, ptr %i.h, i64 %.0.v.i.i15.i
  br label %_PyUnicode_DATA.exit19.i

bb.l:                                             ; preds = %bb.j
  %i.t = getelementptr i8, ptr %i.h, i64 56
  %.val4.i18.i = load ptr, ptr %i.t, align 8, !tbaa !658
  br label %_PyUnicode_DATA.exit19.i

_PyUnicode_DATA.exit19.i:                         ; preds = %bb.l, %bb.k
  %.0.i17.i = phi ptr [ %.0.i.i16.i, %bb.k ], [ %.val4.i18.i, %bb.l ]
  store i32 %0, ptr %.0.i17.i, align 4, !tbaa !44
  br label %unicode_char.exit

unicode_char.exit:                                ; preds = %_PyUnicode_DATA.exit19.i, %_PyUnicode_DATA.exit.i, %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.g, %bb.d ], [ null, %bb.e ], [ %i.h, %_PyUnicode_DATA.exit19.i ], [ %i.h, %_PyUnicode_DATA.exit.i ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_FromObject(ptr nofree noundef captures(ret: address, provenance) %0) local_unnamed_addr #1 !guid !935 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val9 = load ptr, ptr %i.a, align 8, !tbaa !650 ; 3 uses
  %.not = icmp eq ptr %.val9, @PyUnicode_Type
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !658    ; 2 uses
end_hunk_1
begin_hunk_2_@PyUnicode_AsDecodedObject:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.f, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @PyUnicode_GetDefaultEncoding() local_unnamed_addr #0 !guid !953 {
bb.a:
  ret ptr @.str.58
}

declare ptr @PyCodec_Decode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_AsDecodedUnicode(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 !guid !954 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val17 = load ptr, ptr %i.a, align 8, !tbaa !650
  %i.b = getelementptr i8, ptr %.val17, i64 168
  %.val19 = load i64, ptr %i.b, align 8, !tbaa !655
  %i.c = and i64 %.val19, 268435456
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @PyErr_BadArgument() #33   ; 0 uses
  br label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %1, null
  %spec.select = select i1 %i.e, ptr @.str.58, ptr %1 ; 2 uses
  %i.f = tail call ptr @PyCodec_Decode(ptr noundef nonnull %0, ptr noundef nonnull %spec.select, ptr noundef %2) #33 ; 18 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %Py_DECREF.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %.val16 = load ptr, ptr %i.h, align 8, !tbaa !650
  %i.i = getelementptr i8, ptr %.val16, i64 168
  %.val18 = load i64, ptr %i.i, align 8, !tbaa !655
  %i.j = and i64 %.val18, 268435456
  %.not15 = icmp eq i64 %i.j, 0
  br i1 %.not15, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !648
  %.val = load ptr, ptr %i.a, align 8, !tbaa !650
  %i.l = getelementptr i8, ptr %.val, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !682
  %i.n = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.k, ptr noundef nonnull @.str.50, ptr noundef nonnull %spec.select, ptr noundef %i.m) #33 ; 0 uses
  %i.o = load i32, ptr %i.f, align 8, !tbaa !658  ; 2 uses
  %.not.i = icmp sgt i32 %i.o, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.f, align 8, !tbaa !658
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #33
  br label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %i.f, i64 16
  %.val.i = load i64, ptr %i.r, align 8, !tbaa !660
  switch i64 %.val.i, label %Py_DECREF.exit [
    i64 0, label %bb.i
    i64 1, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  %.not26.i = icmp eq ptr %i.f, getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176)
  br i1 %.not26.i, label %Py_DECREF.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = load i32, ptr %i.f, align 8, !tbaa !658  ; 2 uses
  %.not.i27.i = icmp sgt i32 %i.s, -1
  br i1 %.not.i27.i, label %bb.k, label %Py_DECREF.exit

bb.k:                                             ; preds = %bb.j
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %i.f, align 8, !tbaa !658
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %Py_DECREF.exit28.sink.split.i, label %Py_DECREF.exit

bb.l:                                             ; preds = %bb.h
  %i.v = getelementptr i8, ptr %i.f, i64 32
  %i.w = load i32, ptr %i.v, align 8              ; 3 uses
  %i.x = and i32 %i.w, 28
  %.not25.i = icmp eq i32 %i.x, 4
  br i1 %.not25.i, label %bb.m, label %Py_DECREF.exit

bb.m:                                             ; preds = %bb.l
  %i.y = and i32 %i.w, 32
  %.not.i30.i = icmp eq i32 %i.y, 0
  br i1 %.not.i30.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = and i32 %i.w, 64
  %.not.i.i.i = icmp eq i32 %i.z, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.f, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.o:                                             ; preds = %bb.m
  %i.aa = getelementptr i8, ptr %i.f, i64 56
  %.val4.i.i = load ptr, ptr %i.aa, align 8, !tbaa !658
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.o, %bb.n
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.n ], [ %.val4.i.i, %bb.o ]
  %i.ab = load i8, ptr %.0.i.i, align 1, !tbaa !658 ; 2 uses
  %i.ac = zext i8 %i.ab to i64                    ; 2 uses
  %i.ad = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.ac
  %i.ae = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.ac
  %i.af = getelementptr i8, ptr %i.ae, i64 -8192
  %i.ag = icmp slt i8 %i.ab, 0
  %i.ah = select i1 %i.ag, ptr %i.af, ptr %i.ad   ; 5 uses
  %.not.i20 = icmp eq ptr %i.f, %i.ah
  br i1 %.not.i20, label %Py_DECREF.exit, label %bb.p

bb.p:                                             ; preds = %_PyUnicode_DATA.exit.i
  %i.ai = load i32, ptr %i.f, align 8, !tbaa !658 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ai, -1
  br i1 %.not.i.i, label %bb.q, label %Py_DECREF.exit

bb.q:                                             ; preds = %bb.p
  %i.aj = add nsw i32 %i.ai, -1                   ; 2 uses
  store i32 %i.aj, ptr %i.f, align 8, !tbaa !658
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %Py_DECREF.exit28.sink.split.i, label %Py_DECREF.exit

Py_DECREF.exit28.sink.split.i:                    ; preds = %bb.q, %bb.k
  %.1.ph.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.k ], [ %i.ah, %bb.q ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #33
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %Py_DECREF.exit28.sink.split.i, %bb.q, %bb.p, %_PyUnicode_DATA.exit.i, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.b, %bb.c
  %.0 = phi ptr [ null, %bb.g ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.f ], [ %i.f, %bb.h ], [ %i.ah, %bb.p ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.k ], [ %i.f, %bb.l ], [ %i.ah, %_PyUnicode_DATA.exit.i ], [ %i.ah, %bb.q ], [ %.1.ph.i, %Py_DECREF.exit28.sink.split.i ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_AsEncodedObject(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 !guid !955 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !650
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val11 = load i64, ptr %i.b, align 8, !tbaa !655
  %i.c = and i64 %.val11, 268435456
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @PyErr_BadArgument() #33   ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %1, null
  %spec.select = select i1 %i.e, ptr @.str.58, ptr %1
  %i.f = tail call ptr @PyCodec_Encode(ptr noundef nonnull %0, ptr noundef nonnull %spec.select, ptr noundef %2) #33 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi ptr [ null, %bb.d ], [ %i.f, %bb.c ]
  ret ptr %.0
}

declare ptr @PyCodec_Encode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_EncodeLocale(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #1 !guid !956 {
bb.a:
  %i.a = tail call i32 @_Py_GetErrorHandler(ptr noundef %1)
  %i.b = tail call fastcc ptr @unicode_encode_locale(ptr noundef %0, i32 noundef %i.a, i32 noundef 1)
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @unicode_encode_locale(ptr noundef %0, i32 noundef range(i32 1, 9) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #1 !guid !957 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.e = call ptr @PyUnicode_AsWideCharString(ptr noundef %0, ptr noundef nonnull %i.a) ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.a, align 8, !tbaa !647
  %i.h = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.e) #34
  %.not = icmp eq i64 %i.g, %i.h
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !648
  call void @PyErr_SetString(ptr noundef %i.i, ptr noundef nonnull @.str.37) #33
  call void @PyMem_Free(ptr noundef nonnull %i.e) #33
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  %i.j = call i32 @_Py_EncodeLocaleEx(ptr noundef nonnull %i.e, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef %2, i32 noundef %1) #33
  call void @PyMem_Free(ptr noundef nonnull %i.e) #33
  switch i32 %i.j, label %bb.j [
    i32 0, label %bb.k
    i32 -2, label %bb.e
    i32 -3, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr @PyExc_UnicodeEncodeError, align 8, !tbaa !648
  %i.l = load i64, ptr %i.c, align 8, !tbaa !647  ; 2 uses
  %i.m = add i64 %i.l, 1
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !680
  %i.o = call ptr (ptr, ptr, ...) @PyObject_CallFunction(ptr noundef %i.k, ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.166, ptr noundef %0, i64 noundef %i.l, i64 noundef %i.m, ptr noundef %i.n) #33 ; 5 uses
  %.not20 = icmp eq ptr %i.o, null
  br i1 %.not20, label %Py_DECREF.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = call ptr @PyCodec_StrictErrors(ptr noundef nonnull %i.o) #33 ; 0 uses
  %i.q = load i32, ptr %i.o, align 8, !tbaa !658  ; 2 uses
  %.not.i = icmp sgt i32 %i.q, -1
  br i1 %.not.i, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.o, align 8, !tbaa !658
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  call void @_Py_Dealloc(ptr noundef nonnull %i.o) #33
  br label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.d
  %i.t = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !648
  call void @PyErr_SetString(ptr noundef %i.t, ptr noundef nonnull @.str.167) #33
  br label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.d
  %i.u = call ptr @PyErr_NoMemory() #33           ; 0 uses
  br label %Py_DECREF.exit

bb.k:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !680
  %i.w = call ptr @PyBytes_FromString(ptr noundef %i.v) #33
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !680
  call void @PyMem_RawFree(ptr noundef %i.x) #33
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.h, %bb.g, %bb.f, %bb.j, %bb.i, %bb.e, %bb.k
  %.0 = phi ptr [ %i.w, %bb.k ], [ null, %bb.e ], [ null, %bb.j ], [ null, %bb.i ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %Py_DECREF.exit, %bb.c
  %.1 = phi ptr [ %.0, %Py_DECREF.exit ], [ null, %bb.c ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_EncodeFSDefault(ptr noundef %0) local_unnamed_addr #1 !guid !958 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !467  ; 6 uses
  %i.c = getelementptr i8, ptr %i.b, i64 11840
  %i.d = load i32, ptr %i.c, align 8, !tbaa !685
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 11856
  %i.f = load i32, ptr %i.e, align 8, !tbaa !686
  %i.g = getelementptr i8, ptr %i.b, i64 11848
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !687
  %i.i = tail call fastcc ptr @unicode_encode_utf8(ptr noundef %0, i32 noundef %i.f, ptr noundef %i.h)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.b, i64 11832
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !688  ; 2 uses
  %.not15 = icmp eq ptr %i.k, null
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.b, i64 11848
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !687
  %i.n = tail call ptr @PyUnicode_AsEncodedString(ptr noundef %0, ptr noundef nonnull %i.k, ptr noundef %i.m)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = tail call ptr @_PyInterpreterState_GetConfig(ptr noundef nonnull %i.b) #33
  %i.p = getelementptr i8, ptr %i.o, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !689
  %i.r = tail call fastcc i32 @get_error_handler_wide(ptr noundef %i.q)
  %i.s = tail call fastcc ptr @unicode_encode_locale(ptr noundef %0, i32 noundef %i.r, i32 noundef 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ %i.i, %bb.b ], [ %i.n, %bb.d ], [ %i.s, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @unicode_encode_utf8(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 !guid !959 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !650
  %i.c = getelementptr i8, ptr %.val, i64 168
  %.val28 = load i64, ptr %i.c, align 8, !tbaa !655
  %i.d = and i64 %.val28, 268435456
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @PyErr_BadArgument() #33   ; 0 uses
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 32
  %.val4.i = load i32, ptr %i.f, align 8          ; 4 uses
  %i.g = and i32 %.val4.i, 96
  %.not.not.i = icmp eq i32 %i.g, 96
  br i1 %.not.not.i, label %PyUnicode_UTF8.exit, label %PyUnicode_UTF8.exit.thread

PyUnicode_UTF8.exit:                              ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %.not27 = icmp eq ptr %i.h, null
  br i1 %.not27, label %bb.d, label %PyUnicode_UTF8.exit34

PyUnicode_UTF8.exit.thread:                       ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 48
  %.val.i = load ptr, ptr %i.i, align 8, !tbaa !657 ; 2 uses
  %.not2742 = icmp eq ptr %.val.i, null
  br i1 %.not2742, label %bb.d, label %PyUnicode_UTF8.exit34

PyUnicode_UTF8.exit34:                            ; preds = %PyUnicode_UTF8.exit.thread, %PyUnicode_UTF8.exit
  %.0.in.v.i = phi i64 [ 16, %PyUnicode_UTF8.exit ], [ 40, %PyUnicode_UTF8.exit.thread ]
  %.0.i33 = phi ptr [ %i.h, %PyUnicode_UTF8.exit ], [ %.val.i, %PyUnicode_UTF8.exit.thread ]
  %.0.in.i = getelementptr i8, ptr %0, i64 %.0.in.v.i
  %.0.i37 = load i64, ptr %.0.in.i, align 8, !tbaa !647
  %i.j = tail call ptr @PyBytes_FromStringAndSize(ptr noundef nonnull %.0.i33, i64 noundef %.0.i37) #33
  br label %bb.y

bb.d:                                             ; preds = %PyUnicode_UTF8.exit.thread, %PyUnicode_UTF8.exit
  %i.k = lshr i32 %.val4.i, 2
  %i.l = and i32 %i.k, 7
  %i.m = and i32 %.val4.i, 32
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %.val4.i, 64
  %.not.i.i = icmp eq i32 %i.n, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %0, i64 56
  %.val4.i40 = load ptr, ptr %i.o, align 8, !tbaa !658
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.e, %bb.f
  %.0.i39 = phi ptr [ %.0.i.i, %bb.e ], [ %.val4.i40, %bb.f ] ; 5 uses
  %i.p = getelementptr i8, ptr %0, i64 16
  %.val29 = load i64, ptr %i.p, align 8, !tbaa !660 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  switch i32 %i.l, label %bb.g [
    i32 1, label %bb.h
    i32 2, label %bb.s
    i32 4, label %bb.t
  ]

bb.g:                                             ; preds = %_PyUnicode_DATA.exit
  unreachable

bb.h:                                             ; preds = %_PyUnicode_DATA.exit
  %i.q = icmp sgt i64 %.val29, 4611686018427387903
  br i1 %i.q, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.r = tail call ptr @PyErr_NoMemory() #33      ; 0 uses
  br label %ucs1lib_utf8_encoder.exit
end_hunk_2
begin_hunk_3_@ucs4lib_utf8_decode:bb.a
.thread226:                                       ; preds = %bb.m, %bb.q, %bb.p
  br label %.thread207

bb.w:                                             ; preds = %bb.v
  %i.cc = shl nuw nsw i32 %.2172, 12
  %i.cd = shl nuw nsw i32 %i.bu, 6
  %i.ce = add nsw i32 %i.cc, -925824
  %i.cf = add nsw i32 %i.ce, %i.cd
  %i.cg = add nsw i32 %i.cf, %i.bx
  %i.ch = getelementptr i8, ptr %.2161, i64 3
  %i.ci = getelementptr i8, ptr %.2156, i64 4
  store i32 %i.cg, ptr %.2156, align 4, !tbaa !44
  br label %.backedge

bb.x:                                             ; preds = %bb.k
  %i.cj = icmp samesign ult i32 %.2172, 245
  br i1 %i.cj, label %bb.y, label %.thread207

bb.y:                                             ; preds = %bb.x
  %i.ck = ptrtoint ptr %.2161 to i64
  %i.cl = sub i64 %i.e, %i.ck                     ; 3 uses
  %i.cm = icmp slt i64 %i.cl, 4
  br i1 %i.cm, label %bb.z, label %bb.ag

bb.z:                                             ; preds = %bb.y
  %i.cn = icmp slt i64 %i.cl, 2
  br i1 %i.cn, label %.thread207, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.co = getelementptr i8, ptr %.2161, i64 1
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !658 ; 2 uses
  %or.cond11 = icmp slt i8 %i.cp, -64
  br i1 %or.cond11, label %bb.ab, label %.thread207

bb.ab:                                            ; preds = %bb.aa
  %i.cq = icmp samesign ult i8 %i.cp, -112
  br i1 %i.cq, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cr = icmp eq i32 %.2172, 240
  br i1 %i.cr, label %.thread207, label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.cs = icmp eq i32 %.2172, 244
  br i1 %i.cs, label %.thread207, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.not191 = icmp eq i64 %i.cl, 3
  br i1 %.not191, label %bb.af, label %.thread207

bb.af:                                            ; preds = %bb.ae
  %i.ct = getelementptr i8, ptr %.2161, i64 2
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !658
  %or.cond13 = icmp slt i8 %i.cu, -64
  %spec.select = select i1 %or.cond13, i32 0, i32 3
  br label %.thread207

bb.ag:                                            ; preds = %bb.y
  %i.cv = getelementptr i8, ptr %.2161, i64 1
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !658 ; 4 uses
  %i.cx = zext i8 %i.cw to i32
  %i.cy = getelementptr i8, ptr %.2161, i64 2
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !658 ; 2 uses
  %i.da = zext i8 %i.cz to i32
  %i.db = getelementptr i8, ptr %.2161, i64 3
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !658 ; 2 uses
  %i.dd = zext i8 %i.dc to i32
  %or.cond15 = icmp slt i8 %i.cw, -64
  br i1 %or.cond15, label %bb.ah, label %.thread207

bb.ah:                                            ; preds = %bb.ag
  %i.de = icmp eq i32 %.2172, 240
  br i1 %i.de, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.df = icmp samesign ult i8 %i.cw, -112
  br i1 %i.df, label %.thread207, label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.dg = icmp eq i32 %.2172, 244
  %i.dh = icmp samesign ugt i8 %i.cw, -113
  %or.cond17 = and i1 %i.dg, %i.dh
  br i1 %or.cond17, label %.thread207, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %or.cond19 = icmp slt i8 %i.cz, -64
  br i1 %or.cond19, label %bb.al, label %.thread207

bb.al:                                            ; preds = %bb.ak
  %or.cond21 = icmp slt i8 %i.dc, -64
  br i1 %or.cond21, label %bb.am, label %.thread207

bb.am:                                            ; preds = %bb.al
  %i.di = shl nuw nsw i32 %.2172, 18
  %i.dj = shl nuw nsw i32 %i.cx, 12
  %i.dk = shl nuw nsw i32 %i.da, 6
  %i.dl = add nsw i32 %i.di, -63447168
  %i.dm = add nsw i32 %i.dl, %i.dj
  %i.dn = add nsw i32 %i.dm, %i.dk
  %i.do = add nsw i32 %i.dn, %i.dd
  %i.dp = getelementptr i8, ptr %.2161, i64 4
  %i.dq = getelementptr i8, ptr %.2156, i64 4
  store i32 %i.do, ptr %.2156, align 4, !tbaa !44
  br label %.backedge

.thread207:                                       ; preds = %bb.al, %bb.g, %.thread, %bb.x, %.backedge, %bb.h, %bb.i, %bb.v, %bb.r, %bb.u, %bb.t, %bb.ag, %bb.aj, %bb.ai, %bb.ak, %bb.af, %bb.a, %bb.ae, %bb.z, %bb.ad, %bb.aa, %bb.ac, %bb.p, %bb.q, %bb.n, %.thread226
  %.3173 = phi i32 [ 0, %bb.a ], [ 2, %bb.n ], [ 0, %bb.z ], [ 0, %bb.ae ], [ %spec.select, %bb.af ], [ 2, %bb.ad ], [ 0, %.thread226 ], [ 2, %bb.q ], [ 2, %bb.ac ], [ 2, %bb.p ], [ 2, %bb.aa ], [ 2, %bb.ai ], [ 3, %bb.ak ], [ 2, %bb.aj ], [ 2, %bb.ag ], [ 2, %bb.t ], [ 2, %bb.u ], [ 2, %bb.r ], [ 3, %bb.v ], [ 2, %bb.i ], [ 0, %.thread ], [ 1, %bb.g ], [ 0, %.backedge ], [ 4, %bb.al ], [ 1, %bb.x ], [ 0, %bb.h ]
  %.7166 = phi ptr [ %i.a, %bb.a ], [ %.2161, %bb.n ], [ %.2161, %bb.z ], [ %.2161, %bb.ae ], [ %.2161, %bb.af ], [ %.2161, %bb.ad ], [ %.2161, %.thread226 ], [ %.2161, %bb.q ], [ %.2161, %bb.ac ], [ %.2161, %bb.p ], [ %.2161, %bb.aa ], [ %.2161, %bb.ai ], [ %.2161, %bb.ak ], [ %.2161, %bb.aj ], [ %.2161, %bb.ag ], [ %.2161, %bb.t ], [ %.2161, %bb.u ], [ %.2161, %bb.r ], [ %.2161, %bb.v ], [ %.2161, %bb.i ], [ %.0151.lcssa, %.thread ], [ %.2161, %bb.g ], [ %.0159.be, %.backedge ], [ %.2161, %bb.al ], [ %.2161, %bb.x ], [ %.2161, %bb.h ]
  %.7 = phi ptr [ %i.c, %bb.a ], [ %.2156, %bb.n ], [ %.2156, %bb.z ], [ %.2156, %bb.ae ], [ %.2156, %bb.af ], [ %.2156, %bb.ad ], [ %.2156, %.thread226 ], [ %.2156, %bb.q ], [ %.2156, %bb.ac ], [ %.2156, %bb.p ], [ %.2156, %bb.aa ], [ %.2156, %bb.ai ], [ %.2156, %bb.ak ], [ %.2156, %bb.aj ], [ %.2156, %bb.ag ], [ %.2156, %bb.t ], [ %.2156, %bb.u ], [ %.2156, %bb.r ], [ %.2156, %bb.v ], [ %.2156, %bb.i ], [ %.0148.lcssa, %.thread ], [ %.2156, %bb.g ], [ %.0154.be, %.backedge ], [ %.2156, %bb.al ], [ %.2156, %bb.x ], [ %.2156, %bb.h ]
  store ptr %.7166, ptr %0, align 8, !tbaa !680
  %i.dr = ptrtoint ptr %.7 to i64
  %i.ds = ptrtoint ptr %2 to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = ashr exact i64 %i.dt, 2
  store i64 %i.du, ptr %3, align 8, !tbaa !647
  ret i32 %.3173
}

declare void @PyMem_RawFree(ptr noundef) #3

; Function Attrs: nounwind uwtable
define hidden ptr @_Py_DecodeUTF8_surrogateescape(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #1 !guid !1088 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8, !tbaa !680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.c = icmp sgt i64 %1, 2305843009213693950
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %1, 2
  %i.e = add i64 %i.d, 4
  %i.f = tail call ptr @PyMem_RawMalloc(i64 noundef %i.e) #33 ; 5 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 %1         ; 4 uses
  store i64 0, ptr %i.b, align 8, !tbaa !647
  %i.h = icmp ult ptr %0, %i.g
  br i1 %i.h, label %.lr.ph.split.i, label %.thread49.i

.lr.ph.split.i:                                   ; preds = %bb.c, %bb.d
  %i.i = call fastcc i32 @ucs4lib_utf8_decode(ptr noundef %i.a, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f, ptr noundef nonnull %i.b)
  %.not41.i = icmp eq i32 %i.i, 0
  %i.j = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.k = icmp eq ptr %i.j, %i.g
  %or.cond.i = select i1 %.not41.i, i1 %i.k, i1 false
  %.pre.pre = load i64, ptr %i.b, align 8, !tbaa !647 ; 3 uses
  br i1 %or.cond.i, label %.thread49.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.i
  %i.l = getelementptr i8, ptr %i.j, i64 1        ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !680
  %i.m = load i8, ptr %i.j, align 1, !tbaa !658
  %i.n = zext i8 %i.m to i32
  %i.o = or disjoint i32 %i.n, 56320
  %i.p = add i64 %.pre.pre, 1                     ; 2 uses
  store i64 %i.p, ptr %i.b, align 8, !tbaa !647
  %i.q = getelementptr [4 x i8], ptr %i.f, i64 %.pre.pre
  store i32 %i.o, ptr %i.q, align 4, !tbaa !44
  %i.r = icmp ult ptr %i.l, %i.g
  br i1 %i.r, label %.lr.ph.split.i, label %.thread49.i

.thread49.i:                                      ; preds = %bb.d, %.lr.ph.split.i, %bb.c
  %i.s = phi i64 [ 0, %bb.c ], [ %i.p, %bb.d ], [ %.pre.pre, %.lr.ph.split.i ] ; 2 uses
  %i.t = getelementptr [4 x i8], ptr %i.f, i64 %i.s
  store i32 0, ptr %i.t, align 4, !tbaa !44
  %.not46.i = icmp eq ptr %2, null
  br i1 %.not46.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %.thread49.i
  store i64 %i.s, ptr %2, align 8, !tbaa !647
  br label %bb.h

bb.f:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not9 = icmp eq ptr %2, null
  br i1 %.not9, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 -1, ptr %2, align 8, !tbaa !647
  br label %bb.i

bb.h:                                             ; preds = %bb.e, %.thread49.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h
  %.0 = phi ptr [ %i.f, %bb.h ], [ null, %bb.g ], [ null, %bb.f ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -3, 1) i32 @_Py_EncodeUTF8Ex(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 !guid !1090 {
bb.a:
  %i.a = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %0) #34 ; 5 uses
  switch i32 %5, label %.critedge [
    i32 1, label %bb.d
    i32 2, label %bb.b
    i32 6, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.b = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ false, %bb.c ]
  %i.c = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ]
  %i.d = icmp sgt i64 %i.a, 2305843009213693950
  br i1 %i.d, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not = icmp eq i32 %4, 0                       ; 4 uses
  %i.e = shl i64 %i.a, 2
  %i.f = add i64 %i.e, 4                          ; 2 uses
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = tail call ptr @PyMem_RawMalloc(i64 noundef %i.f) #33
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.h = tail call ptr @PyMem_Malloc(i64 noundef %i.f) #33
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.076 = phi ptr [ %i.g, %bb.f ], [ %i.h, %bb.g ] ; 11 uses
  %i.i = icmp eq ptr %.076, null
  br i1 %i.i, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.h
  %i.j = icmp sgt i64 %i.a, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  br i1 %i.c, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.o
  %.07495.us = phi i64 [ %i.m, %bb.o ], [ 0, %.lr.ph ] ; 2 uses
  %.07594.us = phi ptr [ %.2.us, %bb.o ], [ %.076, %.lr.ph ] ; 11 uses
  %i.k = getelementptr [4 x i8], ptr %0, i64 %.07495.us
  %i.l = load i32, ptr %i.k, align 4, !tbaa !44   ; 13 uses
  %i.m = add nuw nsw i64 %.07495.us, 1            ; 2 uses
  %i.n = icmp ult i32 %i.l, 128
  br i1 %i.n, label %bb.n, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.us
  %i.o = icmp ult i32 %i.l, 2048
  br i1 %i.o, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = icmp ult i32 %i.l, 65536
  br i1 %i.p, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %.07594.us, i64 4
  %i.r = lshr i32 %i.l, 18
  %i.s = trunc i32 %i.r to i8
  %i.t = lshr i32 %i.l, 12
  %i.u = trunc i32 %i.t to i8
  %i.v = lshr i32 %i.l, 6
  %i.w = trunc i32 %i.v to i8
  %i.x = trunc i32 %i.l to i8
  %i.y = insertelement <4 x i8> poison, i8 %i.s, i64 0
  %i.z = insertelement <4 x i8> %i.y, i8 %i.u, i64 1
  %i.aa = insertelement <4 x i8> %i.z, i8 %i.w, i64 2
  %i.ab = insertelement <4 x i8> %i.aa, i8 %i.x, i64 3
  %i.ac = and <4 x i8> %i.ab, <i8 -1, i8 63, i8 63, i8 63>
  %i.ad = or <4 x i8> %i.ac, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.ad, ptr %.07594.us, align 1, !tbaa !658
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.ae = getelementptr i8, ptr %.07594.us, i64 2
  %i.af = getelementptr i8, ptr %.07594.us, i64 1
  %i.ag = lshr i32 %i.l, 12
  %i.ah = trunc nuw nsw i32 %i.ag to i8
  %i.ai = or disjoint i8 %i.ah, -32
  store i8 %i.ai, ptr %.07594.us, align 1, !tbaa !658
  %i.aj = lshr i32 %i.l, 6
  %i.ak = trunc i32 %i.aj to i8
  %i.al = and i8 %i.ak, 63
  %i.am = or disjoint i8 %i.al, -128
  store i8 %i.am, ptr %i.af, align 1, !tbaa !658
  %i.an = trunc i32 %i.l to i8
  %i.ao = and i8 %i.an, 63
  %i.ap = or disjoint i8 %i.ao, -128
  %i.aq = getelementptr i8, ptr %.07594.us, i64 3
  store i8 %i.ap, ptr %i.ae, align 1, !tbaa !658
  br label %bb.o

bb.m:                                             ; preds = %bb.i
  %i.ar = lshr i32 %i.l, 6
  %i.as = trunc nuw nsw i32 %i.ar to i8
  %i.at = or disjoint i8 %i.as, -64
  %i.au = getelementptr i8, ptr %.07594.us, i64 1
  store i8 %i.at, ptr %.07594.us, align 1, !tbaa !658
  %i.av = trunc i32 %i.l to i8
  %i.aw = and i8 %i.av, 63
  %i.ax = or disjoint i8 %i.aw, -128
  %i.ay = getelementptr i8, ptr %.07594.us, i64 2
  store i8 %i.ax, ptr %i.au, align 1, !tbaa !658
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph.split.us
  %i.az = trunc nuw nsw i32 %i.l to i8
  %i.ba = getelementptr i8, ptr %.07594.us, i64 1
  store i8 %i.az, ptr %.07594.us, align 1, !tbaa !658
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %.2.us = phi ptr [ %i.q, %bb.k ], [ %i.aq, %bb.l ], [ %i.ba, %bb.n ], [ %i.ay, %bb.m ] ; 2 uses
  %exitcond99.not = icmp eq i64 %i.m, %i.a
  br i1 %exitcond99.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !1089

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.af
  %.07495 = phi i64 [ %i.bd, %bb.af ], [ 0, %.lr.ph ] ; 3 uses
  %.07594 = phi ptr [ %.2, %bb.af ], [ %.076, %.lr.ph ] ; 13 uses
  %i.bb = getelementptr [4 x i8], ptr %0, i64 %.07495
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !44 ; 16 uses
  %i.bd = add nuw nsw i64 %.07495, 1              ; 2 uses
  %i.be = icmp ult i32 %i.bc, 128
  br i1 %i.be, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.split
  %i.bf = trunc nuw nsw i32 %i.bc to i8
  %i.bg = getelementptr i8, ptr %.07594, i64 1
  store i8 %i.bf, ptr %.07594, align 1, !tbaa !658
  br label %bb.af

bb.q:                                             ; preds = %.lr.ph.split
  %i.bh = icmp ult i32 %i.bc, 2048
  br i1 %i.bh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bi = lshr i32 %i.bc, 6
  %i.bj = trunc nuw nsw i32 %i.bi to i8
  %i.bk = or disjoint i8 %i.bj, -64
  %i.bl = getelementptr i8, ptr %.07594, i64 1
  store i8 %i.bk, ptr %.07594, align 1, !tbaa !658
  %i.bm = trunc i32 %i.bc to i8
  %i.bn = and i8 %i.bm, 63
  %i.bo = or disjoint i8 %i.bn, -128
  %i.bp = getelementptr i8, ptr %.07594, i64 2
  store i8 %i.bo, ptr %i.bl, align 1, !tbaa !658
  br label %bb.af

bb.s:                                             ; preds = %bb.q
  %i.bq = and i32 %i.bc, -2048
  %.not96 = icmp eq i32 %i.bq, 55296
  br i1 %.not96, label %bb.t, label %bb.ac

bb.t:                                             ; preds = %bb.s
  %i.br = and i32 %i.bc, 57216
  %i.bs = icmp eq i32 %i.br, 56448
  %or.cond5 = and i1 %i.b, %i.bs
  br i1 %or.cond5, label %bb.ab, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not90 = icmp eq ptr %2, null
  br i1 %.not90, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i64 %.07495, ptr %2, align 8, !tbaa !647
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.not91 = icmp eq ptr %3, null
  br i1 %.not91, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store ptr @.str.70, ptr %3, align 8, !tbaa !680
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  br i1 %.not, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @PyMem_RawFree(ptr noundef nonnull %.076) #33
  br label %.critedge

bb.aa:                                            ; preds = %bb.y
  tail call void @PyMem_Free(ptr noundef nonnull %.076) #33
  br label %.critedge

bb.ab:                                            ; preds = %bb.t
  %i.bt = trunc i32 %i.bc to i8
  %i.bu = getelementptr i8, ptr %.07594, i64 1
  store i8 %i.bt, ptr %.07594, align 1, !tbaa !658
  br label %bb.af

bb.ac:                                            ; preds = %bb.s
  %i.bv = icmp ult i32 %i.bc, 65536
end_hunk_3
begin_hunk_4_@_PyUnicode_InitEncodings:bb.a
  br label %bb.t

bb.t:                                             ; preds = %init_stdio_encoding.exit, %bb.p, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void
}

declare void @_PyCodec_InitRegistry(ptr dead_on_unwind writable sret(%struct.PyStatus) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @_PyUnicode_FiniTypes(ptr noundef %0) local_unnamed_addr #1 !guid !1411 {
bb.a:
  tail call void @_PyStaticType_FiniBuiltin(ptr noundef %0, ptr noundef nonnull @EncodingMapType) #33
  tail call void @_PyStaticType_FiniBuiltin(ptr noundef %0, ptr noundef nonnull @PyFieldNameIter_Type) #33
  tail call void @_PyStaticType_FiniBuiltin(ptr noundef %0, ptr noundef nonnull @PyFormatterIter_Type) #33
  ret void
}

declare void @_PyStaticType_FiniBuiltin(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @_PyUnicode_Fini(ptr nofree noundef captures(none) initializes((11840, 11844), (11856, 11860), (11864, 11872)) %0) local_unnamed_addr #1 !guid !1413 {
has_shared_intern_dict.exit:
  %i.a = getelementptr i8, ptr %0, i64 11832      ; 2 uses
  %i.b = tail call ptr @_PyInterpreterState_Main() #33 ; 0 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !688
  tail call void @PyMem_RawFree(ptr noundef %i.c) #33
  store ptr null, ptr %i.a, align 8, !tbaa !688
  %i.d = getelementptr i8, ptr %0, i64 11840
  store i32 0, ptr %i.d, align 8, !tbaa !685
  %i.e = getelementptr i8, ptr %0, i64 11848      ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !687
  tail call void @PyMem_RawFree(ptr noundef %i.f) #33
  store ptr null, ptr %i.e, align 8, !tbaa !687
  %i.g = getelementptr i8, ptr %0, i64 11856
  store i32 0, ptr %i.g, align 8, !tbaa !686
  %i.h = getelementptr i8, ptr %0, i64 11864
  store ptr null, ptr %i.h, align 8, !tbaa !1414
  %i.i = getelementptr i8, ptr %0, i64 11872      ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !674
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.lr.ph.i, label %unicode_clear_identifiers.exit

.lr.ph.i:                                         ; preds = %has_shared_intern_dict.exit
  %i.l = getelementptr i8, ptr %0, i64 11880
  br label %bb.a

bb.a:                                             ; preds = %Py_XDECREF.exit.i, %.lr.ph.i
  %.08.i = phi i64 [ 0, %.lr.ph.i ], [ %i.s, %Py_XDECREF.exit.i ] ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !675
  %i.n = getelementptr [8 x i8], ptr %i.m, i64 %.08.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !648  ; 4 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %Py_XDECREF.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = load i32, ptr %i.o, align 8, !tbaa !658  ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.p, -1
  br i1 %.not.i.i.i, label %bb.c, label %Py_XDECREF.exit.i

bb.c:                                             ; preds = %bb.b
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  store i32 %i.q, ptr %i.o, align 8, !tbaa !658
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.d, label %Py_XDECREF.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.o) #33
  br label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.s = add nuw nsw i64 %.08.i, 1                ; 2 uses
  %i.t = load i64, ptr %i.i, align 8, !tbaa !674
  %i.u = icmp slt i64 %i.s, %i.t
  br i1 %i.u, label %bb.a, label %unicode_clear_identifiers.exit, !llvm.loop !1412

unicode_clear_identifiers.exit:                   ; preds = %Py_XDECREF.exit.i, %has_shared_intern_dict.exit
  store i64 0, ptr %i.i, align 8, !tbaa !674
  %i.v = getelementptr i8, ptr %0, i64 11880      ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !675
  tail call void @PyMem_Free(ptr noundef %i.w) #33
  store ptr null, ptr %i.v, align 8, !tbaa !675
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyInit__string() local_unnamed_addr #1 !guid !1415 {
bb.a:
  %i.a = tail call ptr @PyModuleDef_Init(ptr noundef nonnull @_string_module) #33
  ret ptr %i.a
}

declare ptr @PyModuleDef_Init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 8) i32 @PyUnicode_KIND(ptr noundef %0) local_unnamed_addr #1 !guid !1416 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !650
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val3 = load i64, ptr %i.b, align 8, !tbaa !655
  %i.c = and i64 %.val3, 268435456
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !648
  %i.e = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.115, ptr noundef nonnull %0) #33 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = lshr i32 %i.g, 2
  %i.i = and i32 %i.h, 7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.i, %bb.c ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_DATA(ptr noundef %0) local_unnamed_addr #1 !guid !1417 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !650
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val4 = load i64, ptr %i.b, align 8, !tbaa !655
  %i.c = and i64 %.val4, 268435456
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !648
  %i.e = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.115, ptr noundef nonnull %0) #33 ; 0 uses
  br label %_PyUnicode_DATA.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 32
  %.val.i = load i32, ptr %i.f, align 8           ; 2 uses
  %i.g = and i32 %.val.i, 32
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = and i32 %.val.i, 64
  %.not.i.i = icmp eq i32 %i.h, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.i, align 8, !tbaa !658
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %.0.i.i, %bb.d ], [ %.val4.i, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #18

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #3

declare void @_Py_NewReference(ptr noundef) local_unnamed_addr #3

declare void @PyMutex_Lock(ptr noundef) local_unnamed_addr #3

declare void @PyMutex_Unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy.p0(ptr, ptr) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @_PyUnicodeWriter_WriteASCIIString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #19

declare i32 @_PyUnicodeWriter_WriteChar(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @unicode_fromformat_write_wcstr(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) unnamed_addr #1 !guid !1419 {
bb.a:
  %i.a = icmp eq i64 %3, -1
  br i1 %i.a, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = icmp sgt i64 %3, 0
  br i1 %i.b, label %.lr.ph, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %1) #34
  br label %.critedge

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.02025 = phi i64 [ %i.f, %bb.c ], [ 0, %.preheader ] ; 3 uses
  %i.d = getelementptr [4 x i8], ptr %1, i64 %.02025
  %i.e = load i32, ptr %i.d, align 4, !tbaa !44
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = add nuw nsw i64 %.02025, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %3
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !1418

.critedge:                                        ; preds = %bb.c, %.lr.ph, %.preheader, %bb.b
  %.121 = phi i64 [ %i.c, %bb.b ], [ 0, %.preheader ], [ %3, %bb.c ], [ %.02025, %.lr.ph ] ; 2 uses
  %i.g = icmp slt i64 %2, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge
  %i.h = tail call i32 @PyUnicodeWriter_WriteWideChar(ptr noundef %0, ptr noundef %1, i64 noundef %.121)
  br label %Py_DECREF.exit

bb.e:                                             ; preds = %.critedge
  %i.i = tail call ptr @PyUnicode_FromWideChar(ptr noundef %1, i64 noundef %.121) ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %Py_DECREF.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call fastcc i32 @unicode_fromformat_write_str(ptr noundef %0, ptr noundef nonnull %i.i, i64 noundef %2, i64 noundef -1, i32 noundef %4) ; 3 uses
  %i.l = load i32, ptr %i.i, align 8, !tbaa !658  ; 2 uses
  %.not.i = icmp sgt i32 %i.l, -1
  br i1 %.not.i, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.i, align 8, !tbaa !658
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.i) #33
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.1 = phi i32 [ %i.h, %bb.d ], [ -1, %bb.e ], [ %i.k, %bb.f ], [ %i.k, %bb.g ], [ %i.k, %bb.h ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @unicode_fromformat_write_utf8(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) unnamed_addr #1 !guid !1421 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.b = icmp eq i64 %3, -1
  br i1 %i.b, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = icmp sgt i64 %3, 0
  br i1 %i.c, label %.lr.ph, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #34
  br label %bb.d

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %storemerge24 = phi i64 [ %i.g, %bb.c ], [ 0, %.preheader ] ; 3 uses
  %i.e = getelementptr i8, ptr %1, i64 %storemerge24
  %i.f = load i8, ptr %i.e, align 1, !tbaa !658
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.g = add nuw nsw i64 %storemerge24, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.g, %3
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !1420

.critedge:                                        ; preds = %.lr.ph, %bb.c, %.preheader
  %storemerge.lcssa23 = phi i64 [ 0, %.preheader ], [ %3, %bb.c ], [ %storemerge24, %.lr.ph ] ; 2 uses
  %i.h = icmp eq i64 %storemerge.lcssa23, %3
  %spec.select = select i1 %i.h, ptr %i.a, ptr null
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.b
  %i.i = phi i64 [ %i.d, %bb.b ], [ %storemerge.lcssa23, %.critedge ] ; 2 uses
  %.018 = phi ptr [ null, %bb.b ], [ %spec.select, %.critedge ] ; 2 uses
  %i.j = icmp slt i64 %2, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = call i32 @_PyUnicode_DecodeUTF8Writer(ptr noundef %0, ptr noundef %1, i64 noundef %i.i, i32 noundef 3, ptr noundef nonnull @.str.2, ptr noundef %.018)
  br label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.d
  %i.l = call fastcc ptr @unicode_decode_utf8(ptr noundef %1, i64 noundef %i.i, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef %.018), !inline_history !673 ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %Py_DECREF.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = call fastcc i32 @unicode_fromformat_write_str(ptr noundef %0, ptr noundef nonnull %i.l, i64 noundef %2, i64 noundef -1, i32 noundef %4) ; 3 uses
  %i.o = load i32, ptr %i.l, align 8, !tbaa !658  ; 2 uses
  %.not.i = icmp sgt i32 %i.o, -1
  br i1 %.not.i, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.l, align 8, !tbaa !658
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  call void @_Py_Dealloc(ptr noundef nonnull %i.l) #33
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.1 = phi i32 [ %i.k, %bb.e ], [ -1, %bb.f ], [ %i.n, %bb.g ], [ %i.n, %bb.h ], [ %i.n, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @unicode_fromformat_write_str(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) unnamed_addr #1 !guid !1422 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !660 ; 4 uses
  %i.b = icmp ne i64 %3, -1                       ; 2 uses
  %.not = icmp slt i64 %3, %.val
  %or.cond69 = select i1 %i.b, i1 %.not, i1 false
  %.not63 = icmp sgt i64 %2, %.val
  %or.cond70 = select i1 %or.cond69, i1 true, i1 %.not63
  br i1 %or.cond70, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @_PyUnicodeWriter_WriteStr(ptr noundef %0, ptr noundef nonnull %1) #33
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @llvm.smin.i64(i64 %3, i64 %.val)
  %.057 = select i1 %i.b, i64 %i.d, i64 %.val     ; 5 uses
  %i.e = tail call i64 @llvm.smax.i64(i64 %.057, i64 %2) ; 4 uses
  %i.f = getelementptr i8, ptr %1, i64 32
  %.val73 = load i32, ptr %i.f, align 8           ; 2 uses
  %i.g = and i32 %.val73, 64
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.d, label %PyUnicode_MAX_CHAR_VALUE.exit

bb.d:                                             ; preds = %bb.c
  %i.h = lshr i32 %.val73, 2
  %i.i = and i32 %i.h, 7                          ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.i, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 65535, i32 1114111
  %switch.selectcmp5.i = icmp eq i32 %i.i, 1
  %switch.select6.i = select i1 %switch.selectcmp5.i, i32 255, i32 %switch.select.i
  br label %PyUnicode_MAX_CHAR_VALUE.exit

PyUnicode_MAX_CHAR_VALUE.exit:                    ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %switch.select6.i, %bb.d ], [ 127, %bb.c ]
  %i.j = getelementptr i8, ptr %0, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !668  ; 3 uses
  %i.l = icmp ugt i32 %.0.i, %i.k
  br i1 %i.l, label %bb.e, label %.thread

bb.e:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit
  %i.m = tail call i32 @_PyUnicode_FindMaxChar(ptr noundef nonnull %1, i64 noundef 0, i64 noundef %.057) ; 3 uses
  %.not65 = icmp ugt i32 %i.m, %i.k
  br i1 %.not65, label %bb.f, label %.thread

.thread:                                          ; preds = %PyUnicode_MAX_CHAR_VALUE.exit, %bb.e
  %.077 = phi i32 [ %i.m, %bb.e ], [ %i.k, %PyUnicode_MAX_CHAR_VALUE.exit ]
  %i.n = getelementptr i8, ptr %0, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !669
  %i.p = getelementptr i8, ptr %0, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !670
  %i.r = sub i64 %i.o, %i.q
  %i.s = icmp sle i64 %i.e, %i.r
  %i.t = icmp eq i64 %i.e, 0
  %or.cond = or i1 %i.t, %i.s
  br i1 %or.cond, label %.critedge, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.old1 = icmp eq i64 %i.e, 0
  br i1 %.old1, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %.076 = phi i32 [ %.077, %.thread ], [ %i.m, %bb.f ]
  %i.u = tail call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %0, i64 noundef %i.e, i32 noundef %.076) #33
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %bb.m, label %.critedge

.critedge:                                        ; preds = %.thread, %bb.f, %bb.g
  %i.w = sub i64 %2, %.057                        ; 2 uses
  %i.x = tail call i64 @llvm.smax.i64(i64 %i.w, i64 0) ; 4 uses
  %.not66 = icmp slt i64 %i.w, 1                  ; 2 uses
  %.not66.not = xor i1 %.not66, true
  %i.y = and i32 %4, 1
  %.not67 = icmp eq i32 %i.y, 0                   ; 2 uses
  %or.cond71 = and i1 %.not67, %.not66.not
  br i1 %or.cond71, label %bb.h, label %.critedge._crit_edge

.critedge._crit_edge:                             ; preds = %.critedge
end_hunk_4
