inline.NumInlined: 135
inline.NumDeleted: 50
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0
@.str.22 = private unnamed_addr constant [98 x i8] c"Implements the 'replace' error handling, which replaces malformed data with a replacement marker.\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"xmlcharrefreplace\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"xmlcharrefreplace_errors\00", align 1
@.str.25 = private unnamed_addr constant [137 x i8] c"Implements the 'xmlcharrefreplace' error handling, which replaces an unencodable character with the appropriate XML character reference.\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"backslashreplace\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"backslashreplace_errors\00", align 1
@.str.28 = private unnamed_addr constant [116 x i8] c"Implements the 'backslashreplace' error handling, which replaces malformed data with a backslashed escape sequence.\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"namereplace\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"namereplace_errors\00", align 1
@.str.31 = private unnamed_addr constant [117 x i8] c"Implements the 'namereplace' error handling, which replaces an unencodable character with a \\N{...} escape sequence.\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"surrogatepass\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"surrogateescape\00", align 1
@.str.34 = private unnamed_addr constant [43 x i8] c"Failed to insert into codec error registry\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"encodings\00", align 1
@.str.36 = private unnamed_addr constant [34 x i8] c"Failed to import encodings module\00", align 1
@_Py_tss_interp = external thread_local local_unnamed_addr global ptr, align 8
@PyExc_OverflowError = external local_unnamed_addr global ptr, align 8
@.str.37 = private unnamed_addr constant [20 x i8] c"string is too large\00", align 1
@_Py_ctype_tolower = external local_unnamed_addr constant [256 x i8], align 16
@.str.38 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@_Py_tss_tstate = external thread_local local_unnamed_addr global ptr, align 8
@.str.39 = private unnamed_addr constant [3 x i8] c"Os\00", align 1
@.str.40 = private unnamed_addr constant [26 x i8] c"%s with '%s' codec failed\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.42 = private unnamed_addr constant [46 x i8] c"encoder must return a tuple (object, integer)\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"decoding\00", align 1
@.str.44 = private unnamed_addr constant [45 x i8] c"decoder must return a tuple (object,integer)\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"codecs.encode()\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"codecs.decode()\00", align 1
@.str.47 = private unnamed_addr constant [46 x i8] c"don't know how to handle %T in error callback\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"cp65001\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @PyCodec_Register(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @PyErr_BadArgument() #10   ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i32 @PyCallable_Check(ptr noundef nonnull %0) #10
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !14
  tail call void @PyErr_SetString(ptr noundef %i.f, ptr noundef nonnull @.str.1) #10
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.b, i64 8048
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.i = tail call i32 @PyList_Append(ptr noundef %i.h, ptr noundef nonnull %0) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %.0 = phi i32 [ %i.i, %bb.e ], [ -1, %bb.d ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @PyErr_BadArgument() local_unnamed_addr #2

declare i32 @PyCallable_Check(ptr noundef) local_unnamed_addr #2

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PyList_Append(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 2, 1) i32 @PyCodec_Unregister(ptr nofree noundef readnone captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8072
  %i.d = load i32, ptr %i.c, align 8, !tbaa !105
  %.not = icmp eq i32 %i.d, 1
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 8048
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16   ; 3 uses
  %i.g = getelementptr i8, ptr %i.f, i64 16       ; 2 uses
  %.val27 = load i64, ptr %i.g, align 8, !tbaa !106
  %.not2428 = icmp sgt i64 %.val27, 0
  br i1 %.not2428, label %.lr.ph, label %.loopexit

bb.c:                                             ; preds = %Py_DECREF.exit
  %i.h = add nuw nsw i64 %.02029, 1               ; 2 uses
  %.val = load i64, ptr %i.g, align 8, !tbaa !106
  %.not24 = icmp slt i64 %i.h, %.val
  br i1 %.not24, label %.lr.ph, label %.loopexit, !llvm.loop !108

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.02029 = phi i64 [ %i.h, %bb.c ], [ 0, %bb.b ] ; 4 uses
  %i.i = tail call ptr @PyList_GetItemRef(ptr noundef nonnull %i.f, i64 noundef %.02029) #10 ; 4 uses
  %i.j = icmp eq ptr %i.i, %0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.k = add nuw nsw i64 %.02029, 1
  %i.l = tail call i32 @PyList_SetSlice(ptr noundef nonnull %i.f, i64 noundef %.02029, i64 noundef %i.k, ptr noundef null) #10
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %.0 = phi i32 [ %i.l, %bb.d ], [ 1, %.lr.ph ]   ; 2 uses
  %i.m = load i32, ptr %i.i, align 8, !tbaa !110  ; 2 uses
  %.not.i = icmp sgt i32 %i.m, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.i, align 8, !tbaa !110
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.i) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.e, %bb.f, %bb.g
  %.not23 = icmp eq i32 %.0, 1
  br i1 %.not23, label %bb.c, label %bb.h

bb.h:                                             ; preds = %Py_DECREF.exit
  %i.p = getelementptr i8, ptr %i.b, i64 8056
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !111
  tail call void @PyDict_Clear(ptr noundef %i.q) #10
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.b, %bb.h, %bb.a
  %.4 = phi i32 [ 0, %bb.a ], [ %.0, %bb.h ], [ 0, %bb.b ], [ 0, %bb.c ]
  ret i32 %.4
}

declare ptr @PyList_GetItemRef(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @PyList_SetSlice(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @PyDict_Clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden ptr @_PyCodec_Lookup(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %i.b = alloca ptr, align 8                      ; 13 uses
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @PyErr_BadArgument() #10   ; 0 uses
  br label %bb.ap

bb.c:                                             ; preds = %bb.a
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !11   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.g = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #11 ; 8 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %normalizestring.exit.thread, label %bb.d

normalizestring.exit.thread:                      ; preds = %bb.c
  %i.i = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !14
  tail call void @PyErr_SetString(ptr noundef %i.i, ptr noundef nonnull @.str.37) #10
  br label %bb.ao

bb.d:                                             ; preds = %bb.c
  %i.j = add nuw i64 %i.g, 1
  %i.k = tail call ptr @PyMem_Malloc(i64 noundef %i.j) #10 ; 7 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %.not.i51 = icmp eq i64 %i.g, 0
  br i1 %.not.i51, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %xtraiter = and i64 %i.g, 1
  %i.m = icmp eq i64 %i.g, 1
  br i1 %i.m, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.g, 9223372036854775806
  br label %.lr.ph.i

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @PyErr_NoMemory() #10
  br label %normalizestring.exit

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i.preheader.new
  %.02024.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ac, %bb.h ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %bb.h ]
  %i.o = getelementptr i8, ptr %0, i64 %.02024.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !110   ; 2 uses
  %i.q = icmp eq i8 %i.p, 32
  br i1 %i.q, label %.lr.ph.i.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.r = zext i8 %i.p to i64
  %i.s = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !110
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.f, %.lr.ph.i
  %.0.i = phi i8 [ %i.t, %bb.f ], [ 45, %.lr.ph.i ]
  %i.u = getelementptr i8, ptr %i.k, i64 %.02024.i
  store i8 %.0.i, ptr %i.u, align 1, !tbaa !110
  %1 = or disjoint i64 %.02024.i, 1               ; 2 uses
  %i.v = getelementptr i8, ptr %0, i64 %1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !110   ; 2 uses
  %i.x = icmp eq i8 %i.w, 32
  br i1 %i.x, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.1
  %i.y = zext i8 %i.w to i64
  %i.z = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !110
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.1
  %.0.i.1 = phi i8 [ %i.aa, %bb.g ], [ 45, %.lr.ph.i.1 ]
  %i.ab = getelementptr i8, ptr %i.k, i64 %1
  store i8 %.0.i.1, ptr %i.ab, align 1, !tbaa !110
  %i.ac = add nuw nsw i64 %.02024.i, 2            ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !112

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.02024.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ac, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod78 = trunc i64 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod78)
  %i.ad = getelementptr i8, ptr %0, i64 %.02024.i.epil.init
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !110 ; 2 uses
  %i.af = icmp eq i8 %i.ae, 32
  br i1 %i.af, label %._crit_edge.i.loopexit.epilog-lcssa, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.ag = zext i8 %i.ae to i64
  %i.ah = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !110
  br label %._crit_edge.i.loopexit.epilog-lcssa

._crit_edge.i.loopexit.epilog-lcssa:              ; preds = %bb.i, %.lr.ph.i.epil.preheader
  %.0.i.epil = phi i8 [ %i.ai, %bb.i ], [ 45, %.lr.ph.i.epil.preheader ]
  %i.aj = getelementptr i8, ptr %i.k, i64 %.02024.i.epil.init
  store i8 %.0.i.epil, ptr %i.aj, align 1, !tbaa !110
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.epilog-lcssa, %._crit_edge.i.loopexit.unr-lcssa, %.preheader.i
  %i.ak = getelementptr i8, ptr %i.k, i64 %i.g
  store i8 0, ptr %i.ak, align 1, !tbaa !110
  %i.al = tail call ptr @PyUnicode_FromString(ptr noundef nonnull %i.k) #10
  tail call void @PyMem_Free(ptr noundef nonnull %i.k) #10
  br label %normalizestring.exit

normalizestring.exit:                             ; preds = %bb.e, %._crit_edge.i
  %.019.i = phi ptr [ %i.al, %._crit_edge.i ], [ %i.n, %bb.e ] ; 2 uses
  store ptr %.019.i, ptr %i.a, align 8, !tbaa !14
  %i.am = icmp eq ptr %.019.i, null
  br i1 %i.am, label %bb.ao, label %bb.j

bb.j:                                             ; preds = %normalizestring.exit
  call void @_PyUnicode_InternMortal(ptr noundef %i.f, ptr noundef nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.an = getelementptr i8, ptr %i.f, i64 8048    ; 2 uses
  %i.ao = getelementptr i8, ptr %i.f, i64 8056    ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !111
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.ar = call i32 @PyDict_GetItemRef(ptr noundef %i.ap, ptr noundef %i.aq, ptr noundef nonnull %i.b) #10
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %Py_DECREF.exit34, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !14
  %.not = icmp eq ptr %i.at, null
  br i1 %.not, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !14  ; 3 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !110 ; 2 uses
  %.not.i41 = icmp sgt i32 %i.av, -1
  br i1 %.not.i41, label %bb.m, label %Py_DECREF.exit42

bb.m:                                             ; preds = %bb.l
  %i.aw = add nsw i32 %i.av, -1                   ; 2 uses
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !110
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.n, label %Py_DECREF.exit42

bb.n:                                             ; preds = %bb.m
  call void @_Py_Dealloc(ptr noundef nonnull %i.au) #10
  br label %Py_DECREF.exit42

Py_DECREF.exit42:                                 ; preds = %bb.l, %bb.m, %bb.n
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !14
  br label %Py_DECREF.exit

bb.o:                                             ; preds = %bb.k
  %i.az = load ptr, ptr %i.an, align 8, !tbaa !16
  %i.ba = call i64 @PyList_Size(ptr noundef %i.az) #10 ; 3 uses
  %i.bb = icmp slt i64 %i.ba, 0
  br i1 %i.bb, label %Py_DECREF.exit34, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = icmp eq i64 %i.ba, 0
  br i1 %i.bc, label %bb.q, label %.lr.ph

bb.q:                                             ; preds = %bb.p
  %i.bd = load ptr, ptr @PyExc_LookupError, align 8, !tbaa !14
  call void @PyErr_SetString(ptr noundef %i.bd, ptr noundef nonnull @.str.2) #10
  br label %Py_DECREF.exit34

.lr.ph:                                           ; preds = %bb.p, %bb.ad
  %.02457 = phi i64 [ %i.cb, %bb.ad ], [ 0, %bb.p ] ; 2 uses
  %i.be = load ptr, ptr %i.an, align 8, !tbaa !16
  %i.bf = call ptr @PyList_GetItemRef(ptr noundef %i.be, i64 noundef %.02457) #10 ; 5 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %Py_DECREF.exit34, label %bb.r

bb.r:                                             ; preds = %.lr.ph
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.bi = call ptr @PyObject_CallOneArg(ptr noundef nonnull %i.bf, ptr noundef %i.bh) #10 ; 2 uses
  store ptr %i.bi, ptr %i.b, align 8, !tbaa !14
  %i.bj = load i32, ptr %i.bf, align 8, !tbaa !110 ; 2 uses
  %.not.i39 = icmp sgt i32 %i.bj, -1
  br i1 %.not.i39, label %bb.s, label %Py_DECREF.exit40

bb.s:                                             ; preds = %bb.r
  %i.bk = add nsw i32 %i.bj, -1                   ; 2 uses
  store i32 %i.bk, ptr %i.bf, align 8, !tbaa !110
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.t, label %Py_DECREF.exit40thread-pre-split

bb.t:                                             ; preds = %bb.s
  call void @_Py_Dealloc(ptr noundef nonnull %i.bf) #10
  br label %Py_DECREF.exit40thread-pre-split

Py_DECREF.exit40thread-pre-split:                 ; preds = %bb.t, %bb.s
  %.pr = load ptr, ptr %i.b, align 8, !tbaa !14
  br label %Py_DECREF.exit40

Py_DECREF.exit40:                                 ; preds = %Py_DECREF.exit40thread-pre-split, %bb.r
  %i.bm = phi ptr [ %.pr, %Py_DECREF.exit40thread-pre-split ], [ %i.bi, %bb.r ] ; 4 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %Py_DECREF.exit34, label %bb.u

bb.u:                                             ; preds = %Py_DECREF.exit40
  %i.bo = icmp eq ptr %i.bm, @_Py_NoneStruct
  br i1 %i.bo, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  store ptr null, ptr %i.b, align 8, !tbaa !14
  %i.bp = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !110 ; 2 uses
  %.not.i37 = icmp sgt i32 %i.bp, -1
  br i1 %.not.i37, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %bb.v
  %i.bq = add nsw i32 %i.bp, -1                   ; 2 uses
  store i32 %i.bq, ptr @_Py_NoneStruct, align 8, !tbaa !110
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %bb.w
  call void @_Py_Dealloc(ptr noundef nonnull @_Py_NoneStruct) #10
  br label %bb.ad

bb.y:                                             ; preds = %bb.u
  %i.bs = getelementptr i8, ptr %i.bm, i64 8
  %.val = load ptr, ptr %i.bs, align 8, !tbaa !113
  %i.bt = getelementptr i8, ptr %.val, i64 168
  %.val49 = load i64, ptr %i.bt, align 8, !tbaa !114
  %i.bu = and i64 %.val49, 67108864
  %.not29 = icmp eq i64 %i.bu, 0
  br i1 %.not29, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bv = getelementptr i8, ptr %i.bm, i64 16
  %.val50 = load i64, ptr %i.bv, align 8, !tbaa !106
  %.not30 = icmp eq i64 %.val50, 4
  br i1 %.not30, label %Py_DECREF.exit38, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bw = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !14
  call void @PyErr_SetString(ptr noundef %i.bw, ptr noundef nonnull @.str.3) #10
  %i.bx = load ptr, ptr %i.b, align 8, !tbaa !14  ; 3 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !110 ; 2 uses
  %.not.i35 = icmp sgt i32 %i.by, -1
  br i1 %.not.i35, label %bb.ab, label %Py_DECREF.exit34

bb.ab:                                            ; preds = %bb.aa
  %i.bz = add nsw i32 %i.by, -1                   ; 2 uses
  store i32 %i.bz, ptr %i.bx, align 8, !tbaa !110
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.ac, label %Py_DECREF.exit34

bb.ac:                                            ; preds = %bb.ab
  call void @_Py_Dealloc(ptr noundef nonnull %i.bx) #10
  br label %Py_DECREF.exit34

bb.ad:                                            ; preds = %bb.v, %bb.w, %bb.x
  %i.cb = add nuw nsw i64 %.02457, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.cb, %i.ba
  br i1 %exitcond.not, label %Py_DECREF.exit38, label %.lr.ph, !llvm.loop !119

Py_DECREF.exit38:                                 ; preds = %bb.ad, %bb.z
  %i.cc = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %Py_DECREF.exit38
  %i.ce = load ptr, ptr @PyExc_LookupError, align 8, !tbaa !14
  %i.cf = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ce, ptr noundef nonnull @.str.4, ptr noundef nonnull %0) #10 ; 0 uses
  br label %Py_DECREF.exit34

bb.af:                                            ; preds = %Py_DECREF.exit38
  call void @_PyUnicode_InternImmortal(ptr noundef nonnull %i.f, ptr noundef nonnull %i.a) #10
  %i.cg = load ptr, ptr %i.ao, align 8, !tbaa !111
end_hunk_0
