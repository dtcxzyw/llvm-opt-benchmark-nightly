Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/specialize?download=true
inline.NumInlined: 375
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Py_Specialize_CallKw:bb.a
  %i.j = load i32, ptr %i.i, align 4, !tbaa !73
  %.not4.i.i = icmp eq i32 %i.j, 0
  br i1 %.not4.i.i, label %bb.d, label %function_kind.exit.i

bb.d:                                             ; preds = %bb.c
  %i.k = and i32 %i.g, 1
  %i.l = icmp eq i32 %i.k, 0
  br label %function_kind.exit.i

function_kind.exit.i:                             ; preds = %bb.d, %bb.c, %bb.b
  %.0.i.i = phi i1 [ false, %bb.b ], [ %i.l, %bb.d ], [ false, %bb.c ]
  %i.m = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !49
  %i.o = getelementptr i8, ptr %i.n, i64 8568
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !145
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.e, label %bb.q

bb.e:                                             ; preds = %function_kind.exit.i
  %i.q = getelementptr i8, ptr %i.b, i64 136
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !156
  %.not11.i = icmp ne ptr %i.r, @_PyFunction_Vectorcall
  %or.cond.i = or i1 %.0.i.i, %.not11.i
  br i1 %or.cond.i, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = tail call i32 @_PyFunction_GetVersionForCurrentState(ptr noundef nonnull %i.b) #11 ; 2 uses
  %i.t = icmp ult i32 %i.s, 2
  br i1 %i.t, label %bb.q, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr i8, ptr %1, i64 4
  store i32 %i.s, ptr %i.u, align 2
  store i8 -100, ptr %1, align 2, !tbaa !29
  %i.v = getelementptr i8, ptr %1, i64 2
  store i16 416, ptr %i.v, align 2, !tbaa !41
  br label %specialize_py_call_kw.exit

bb.h:                                             ; preds = %bb.a
  %.not28 = icmp eq ptr %.val16, @PyMethod_Type
  br i1 %.not28, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr i8, ptr %i.b, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !158  ; 4 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val = load ptr, ptr %i.y, align 8, !tbaa !32
  %.not29 = icmp eq ptr %.val, @PyFunction_Type
  br i1 %.not29, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr i8, ptr %i.x, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !69  ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 48
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !72 ; 2 uses
  %i.ad = and i32 %i.ac, 12
  %.not.i.i17 = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i17, label %bb.k, label %function_kind.exit.i18

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr i8, ptr %i.aa, i64 60
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !73
  %.not4.i.i24 = icmp eq i32 %i.af, 0
  br i1 %.not4.i.i24, label %bb.l, label %function_kind.exit.i18

bb.l:                                             ; preds = %bb.k
  %i.ag = and i32 %i.ac, 1
  %i.ah = icmp eq i32 %i.ag, 0
  br label %function_kind.exit.i18

function_kind.exit.i18:                           ; preds = %bb.l, %bb.k, %bb.j
  %.0.i.i19 = phi i1 [ false, %bb.j ], [ %i.ah, %bb.l ], [ false, %bb.k ]
  %i.ai = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !49
  %i.ak = getelementptr i8, ptr %i.aj, i64 8568
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !145
  %.not.i20 = icmp eq ptr %i.al, null
  br i1 %.not.i20, label %bb.m, label %bb.q

bb.m:                                             ; preds = %function_kind.exit.i18
  %i.am = getelementptr i8, ptr %i.x, i64 136
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !156
  %.not11.i22 = icmp ne ptr %i.an, @_PyFunction_Vectorcall
  %or.cond.i23 = or i1 %.0.i.i19, %.not11.i22
  br i1 %or.cond.i23, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = tail call i32 @_PyFunction_GetVersionForCurrentState(ptr noundef nonnull %i.x) #11 ; 2 uses
  %i.ap = icmp ult i32 %i.ao, 2
  br i1 %i.ap, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr i8, ptr %1, i64 4
  store i32 %i.ao, ptr %i.aq, align 2
  store i8 -102, ptr %1, align 2, !tbaa !29
  %i.ar = getelementptr i8, ptr %1, i64 2
  store i16 416, ptr %i.ar, align 2, !tbaa !41
  br label %specialize_py_call_kw.exit

bb.p:                                             ; preds = %bb.h
  store i8 -101, ptr %1, align 2, !tbaa !29
  %i.as = getelementptr i8, ptr %1, i64 2
  store i16 416, ptr %i.as, align 2, !tbaa !41
  br label %specialize_py_call_kw.exit

bb.q:                                             ; preds = %bb.i, %bb.f, %function_kind.exit.i, %bb.e, %bb.n, %function_kind.exit.i18, %bb.m
  %i.at = load i8, ptr %1, align 2, !tbaa !29
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !29
  store i8 %i.aw, ptr %1, align 2, !tbaa !29
  %i.ax = getelementptr i8, ptr %1, i64 2         ; 2 uses
  %.val.i = load i16, ptr %i.ax, align 2, !tbaa !41
  %i.ay = and i16 %.val.i, 7
  %i.az = zext nneg i16 %i.ay to i64
  %i.ba = getelementptr [2 x i8], ptr @value_and_backoff_next, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !42
  store i16 %i.bb, ptr %i.ax, align 2, !tbaa !41
  br label %specialize_py_call_kw.exit

specialize_py_call_kw.exit:                       ; preds = %bb.p, %bb.g, %bb.o, %bb.q
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @_Py_Specialize_BinaryOp(i64 %0, i64 %1, ptr nofree noundef captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = and i64 %0, -2                           ; 2 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 23 uses
  %i.d = and i64 %1, -2
  %i.e = inttoptr i64 %i.d to ptr                 ; 22 uses
  %i.f = load i8, ptr %2, align 2, !tbaa !29
  %i.g = icmp eq i8 %i.f, -124
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %2, i64 4
  store ptr null, ptr %i.h, align 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  switch i32 %3, label %.thread [
    i32 0, label %bb.d
    i32 13, label %bb.d
    i32 5, label %bb.n
    i32 18, label %bb.n
    i32 10, label %bb.s
    i32 23, label %bb.s
    i32 26, label %bb.x
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.i = getelementptr i8, ptr %i.e, i64 8
  %.val109 = load ptr, ptr %i.i, align 8, !tbaa !32 ; 4 uses
  %i.j = getelementptr i8, ptr %i.c, i64 8
  %.val124 = load ptr, ptr %i.j, align 8, !tbaa !32
  %.not186 = icmp eq ptr %.val124, %.val109
  br i1 %.not186, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %.not187 = icmp eq ptr %.val109, @PyUnicode_Type
  br i1 %.not187, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %2, i64 12
  %.sroa.0.0.copyload = load i8, ptr %i.k, align 2
  %i.l = icmp eq i8 %.sroa.0.0.copyload, 112
  br i1 %i.l, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %.sroa.4.0..sroa_idx = getelementptr i8, ptr %2, i64 13
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !29
  %i.m = zext i8 %.sroa.4.0.copyload to i64
  %i.n = getelementptr [8 x i8], ptr %4, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, -2
  %i.q = icmp eq i64 %i.p, %i.b
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 3, ptr %2, align 2, !tbaa !29
  %i.r = getelementptr i8, ptr %2, i64 2
  store i16 416, ptr %i.r, align 2, !tbaa !41
  br label %bb.bw

bb.i:                                             ; preds = %bb.g, %bb.f
  store i8 -125, ptr %2, align 2, !tbaa !29
  %i.s = getelementptr i8, ptr %2, i64 2
  store i16 416, ptr %i.s, align 2, !tbaa !41
  br label %bb.bw

bb.j:                                             ; preds = %bb.e
  %.not.i128 = icmp eq ptr %.val109, @PyLong_Type
  br i1 %.not.i128, label %_PyLong_CheckExactAndCompact.exit, label %bb.l

_PyLong_CheckExactAndCompact.exit:                ; preds = %bb.j
  %i.t = getelementptr i8, ptr %i.c, i64 16
  %.val2.i = load i64, ptr %i.t, align 8, !tbaa !154
  %i.u = icmp ult i64 %.val2.i, 16
  br i1 %i.u, label %_PyLong_CheckExactAndCompact.exit132, label %.thread

_PyLong_CheckExactAndCompact.exit132:             ; preds = %_PyLong_CheckExactAndCompact.exit
  %i.v = getelementptr i8, ptr %i.e, i64 16
  %.val2.i131 = load i64, ptr %i.v, align 8, !tbaa !154
  %i.w = icmp ugt i64 %.val2.i131, 15
  br i1 %i.w, label %.thread, label %bb.k

bb.k:                                             ; preds = %_PyLong_CheckExactAndCompact.exit132
  store i8 -126, ptr %2, align 2, !tbaa !29
  %i.x = getelementptr i8, ptr %2, i64 2
  store i16 416, ptr %i.x, align 2, !tbaa !41
  br label %bb.bw

bb.l:                                             ; preds = %bb.j
  %.not188 = icmp eq ptr %.val109, @PyFloat_Type
  br i1 %.not188, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  store i8 -127, ptr %2, align 2, !tbaa !29
  %i.y = getelementptr i8, ptr %2, i64 2
  store i16 416, ptr %i.y, align 2, !tbaa !41
  br label %bb.bw

bb.n:                                             ; preds = %bb.c, %bb.c
  %i.z = getelementptr i8, ptr %i.e, i64 8
  %.val108 = load ptr, ptr %i.z, align 8, !tbaa !32 ; 3 uses
  %i.aa = getelementptr i8, ptr %i.c, i64 8
  %.val121 = load ptr, ptr %i.aa, align 8, !tbaa !32
  %.not184 = icmp eq ptr %.val121, %.val108
  br i1 %.not184, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %.not.i134 = icmp eq ptr %.val108, @PyLong_Type
  br i1 %.not.i134, label %_PyLong_CheckExactAndCompact.exit136, label %bb.q

_PyLong_CheckExactAndCompact.exit136:             ; preds = %bb.o
  %i.ab = getelementptr i8, ptr %i.c, i64 16
  %.val2.i135 = load i64, ptr %i.ab, align 8, !tbaa !154
  %i.ac = icmp ult i64 %.val2.i135, 16
  br i1 %i.ac, label %_PyLong_CheckExactAndCompact.exit140, label %.thread

_PyLong_CheckExactAndCompact.exit140:             ; preds = %_PyLong_CheckExactAndCompact.exit136
  %i.ad = getelementptr i8, ptr %i.e, i64 16
  %.val2.i139 = load i64, ptr %i.ad, align 8, !tbaa !154
  %i.ae = icmp ugt i64 %.val2.i139, 15
  br i1 %i.ae, label %.thread, label %bb.p

bb.p:                                             ; preds = %_PyLong_CheckExactAndCompact.exit140
  store i8 -122, ptr %2, align 2, !tbaa !29
  %i.af = getelementptr i8, ptr %2, i64 2
  store i16 416, ptr %i.af, align 2, !tbaa !41
  br label %bb.bw

bb.q:                                             ; preds = %bb.o
  %.not185 = icmp eq ptr %.val108, @PyFloat_Type
  br i1 %.not185, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  store i8 -123, ptr %2, align 2, !tbaa !29
  %i.ag = getelementptr i8, ptr %2, i64 2
  store i16 416, ptr %i.ag, align 2, !tbaa !41
  br label %bb.bw

bb.s:                                             ; preds = %bb.c, %bb.c
  %i.ah = getelementptr i8, ptr %i.e, i64 8
  %.val107 = load ptr, ptr %i.ah, align 8, !tbaa !32 ; 3 uses
  %i.ai = getelementptr i8, ptr %i.c, i64 8
  %.val119 = load ptr, ptr %i.ai, align 8, !tbaa !32
  %.not182 = icmp eq ptr %.val119, %.val107
  br i1 %.not182, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %.not.i142 = icmp eq ptr %.val107, @PyLong_Type
  br i1 %.not.i142, label %_PyLong_CheckExactAndCompact.exit144, label %bb.v

_PyLong_CheckExactAndCompact.exit144:             ; preds = %bb.t
  %i.aj = getelementptr i8, ptr %i.c, i64 16
  %.val2.i143 = load i64, ptr %i.aj, align 8, !tbaa !154
  %i.ak = icmp ult i64 %.val2.i143, 16
  br i1 %i.ak, label %_PyLong_CheckExactAndCompact.exit148, label %.thread

_PyLong_CheckExactAndCompact.exit148:             ; preds = %_PyLong_CheckExactAndCompact.exit144
  %i.al = getelementptr i8, ptr %i.e, i64 16
  %.val2.i147 = load i64, ptr %i.al, align 8, !tbaa !154
  %i.am = icmp ugt i64 %.val2.i147, 15
  br i1 %i.am, label %.thread, label %bb.u

bb.u:                                             ; preds = %_PyLong_CheckExactAndCompact.exit148
  store i8 -113, ptr %2, align 2, !tbaa !29
  %i.an = getelementptr i8, ptr %2, i64 2
  store i16 416, ptr %i.an, align 2, !tbaa !41
  br label %bb.bw

bb.v:                                             ; preds = %bb.t
  %.not183 = icmp eq ptr %.val107, @PyFloat_Type
  br i1 %.not183, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v
  store i8 -114, ptr %2, align 2, !tbaa !29
  %i.ao = getelementptr i8, ptr %2, i64 2
  store i16 416, ptr %i.ao, align 2, !tbaa !41
  br label %bb.bw

bb.x:                                             ; preds = %bb.c
  %i.ap = getelementptr i8, ptr %i.e, i64 8
  %.val117 = load ptr, ptr %i.ap, align 8, !tbaa !32 ; 2 uses
  %.not = icmp eq ptr %.val117, @PyLong_Type
  br i1 %.not, label %bb.y, label %bb.ah

bb.y:                                             ; preds = %bb.x
  %i.aq = getelementptr i8, ptr %i.e, i64 16
  %.val126 = load i64, ptr %i.aq, align 8, !tbaa !154
  %i.ar = and i64 %.val126, -5
  %i.as = icmp ugt i64 %i.ar, 8
  br i1 %i.as, label %bb.ah, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.at = getelementptr i8, ptr %i.c, i64 8
  %.val116 = load ptr, ptr %i.at, align 8, !tbaa !32 ; 3 uses
  %.not173.a = icmp eq ptr %.val116, @PyList_Type
  br i1 %.not173.a, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i8 -119, ptr %2, align 2, !tbaa !29
  %i.au = getelementptr i8, ptr %2, i64 2
  store i16 416, ptr %i.au, align 2, !tbaa !41
  br label %bb.bw

bb.ab:                                            ; preds = %bb.z
  %.not174.a = icmp eq ptr %.val116, @PyTuple_Type
  br i1 %.not174.a, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i8 -116, ptr %2, align 2, !tbaa !29
  %i.av = getelementptr i8, ptr %2, i64 2
  store i16 416, ptr %i.av, align 2, !tbaa !41
  br label %bb.bw

bb.ad:                                            ; preds = %bb.ab
  %.not175 = icmp eq ptr %.val116, @PyUnicode_Type
  br i1 %.not175, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.aw = getelementptr i8, ptr %i.c, i64 32
  %.val127 = load i32, ptr %i.aw, align 8
  %i.ax = and i32 %.val127, 96
  %.not89.not = icmp eq i32 %i.ax, 96
  %i.ay = getelementptr i8, ptr %2, i64 2         ; 2 uses
  br i1 %.not89.not, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i8 -117, ptr %2, align 2, !tbaa !29
  store i16 416, ptr %i.ay, align 2, !tbaa !41
  br label %bb.bw

bb.ag:                                            ; preds = %bb.ae
  store i8 -115, ptr %2, align 2, !tbaa !29
  store i16 416, ptr %i.ay, align 2, !tbaa !41
  br label %bb.bw

bb.ah:                                            ; preds = %bb.ad, %bb.y, %bb.x
  %i.az = getelementptr i8, ptr %i.c, i64 8
  %.val113 = load ptr, ptr %i.az, align 8, !tbaa !32 ; 6 uses
  %.not177 = icmp eq ptr %.val113, @PyDict_Type
  %.not178 = icmp eq ptr %.val113, @PyFrozenDict_Type
  %or.cond189 = or i1 %.not177, %.not178
  br i1 %or.cond189, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i8 -121, ptr %2, align 2, !tbaa !29
  %i.ba = getelementptr i8, ptr %2, i64 2
  store i16 416, ptr %i.ba, align 2, !tbaa !41
  br label %bb.bw

bb.aj:                                            ; preds = %bb.ah
  %.not179 = icmp eq ptr %.val113, @PyList_Type
  %.not180 = icmp eq ptr %.val117, @PySlice_Type
  %or.cond190 = and i1 %.not180, %.not179
  br i1 %or.cond190, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i8 -118, ptr %2, align 2, !tbaa !29
  %i.bb = getelementptr i8, ptr %2, i64 2
  store i16 416, ptr %i.bb, align 2, !tbaa !41
  br label %bb.bw

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.bc = call ptr @_PyType_LookupRefAndVersion(ptr noundef %.val113, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 65368), ptr noundef nonnull %i.a) #11 ; 8 uses
  %.not85 = icmp eq ptr %i.bc, null
  br i1 %.not85, label %.critedge105, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bd = getelementptr i8, ptr %i.bc, i64 8
  %.val = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.be = icmp eq ptr %.val, @PyFunction_Type
  br i1 %i.be, label %bb.an, label %.critedge105

bb.an:                                            ; preds = %bb.am
  %i.bf = getelementptr i8, ptr %.val113, i64 168
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !39
  %i.bh = and i64 %i.bg, 512
  %.not86 = icmp eq i64 %i.bh, 0
  br i1 %.not86, label %.critedge105, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bi = getelementptr i8, ptr %i.bc, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !69 ; 3 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 48
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !72 ; 2 uses
  %i.bm = and i32 %i.bl, 12
  %.not.i150 = icmp eq i32 %i.bm, 0
  br i1 %.not.i150, label %bb.ap, label %.critedge105

bb.ap:                                            ; preds = %bb.ao
  %i.bn = getelementptr i8, ptr %i.bj, i64 60
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !73
  %.not4.i = icmp ne i32 %i.bo, 0
  %i.bp = and i32 %i.bl, 1
  %.not181 = icmp eq i32 %i.bp, 0
  %or.cond191 = or i1 %.not181, %.not4.i
  br i1 %or.cond191, label %.critedge105, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bq = getelementptr i8, ptr %i.bj, i64 52
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !74
  %i.bs = icmp eq i32 %i.br, 2
  br i1 %i.bs, label %bb.ar, label %.critedge105

bb.ar:                                            ; preds = %bb.aq
  %i.bt = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !49
  %i.bv = getelementptr i8, ptr %i.bu, i64 8568
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !145
  %.not87 = icmp eq ptr %i.bw, null
  br i1 %.not87, label %bb.as, label %.critedge105

bb.as:                                            ; preds = %bb.ar
  %i.bx = load i32, ptr %i.a, align 4, !tbaa !10
  %i.by = call i32 @_PyType_CacheGetItemForSpecialization(ptr noundef nonnull %.val113, ptr noundef nonnull %i.bc, i32 noundef %i.bx) #11
  %.not88 = icmp eq i32 %i.by, 0
  br i1 %.not88, label %.critedge105, label %.critedge

.critedge:                                        ; preds = %bb.as
  store i8 -120, ptr %2, align 2, !tbaa !29
  %i.bz = getelementptr i8, ptr %2, i64 2
  store i16 416, ptr %i.bz, align 2, !tbaa !41
  %i.ca = load i32, ptr %i.bc, align 8, !tbaa !29 ; 2 uses
  %.not.i = icmp sgt i32 %i.ca, -1
  br i1 %.not.i, label %bb.at, label %Py_DECREF.exit

bb.at:                                            ; preds = %.critedge
  %i.cb = add nsw i32 %i.ca, -1                   ; 2 uses
  store i32 %i.cb, ptr %i.bc, align 8, !tbaa !29
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.au, label %Py_DECREF.exit

bb.au:                                            ; preds = %bb.at
  call void @_Py_Dealloc(ptr noundef nonnull %i.bc) #11
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %.critedge, %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.bw

.critedge105:                                     ; preds = %bb.ap, %bb.ao, %bb.as, %bb.ar, %bb.aq, %bb.an, %bb.am, %bb.al
  call fastcc void @Py_XDECREF(ptr noundef %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.thread

.thread:                                          ; preds = %_PyLong_CheckExactAndCompact.exit144, %_PyLong_CheckExactAndCompact.exit148, %_PyLong_CheckExactAndCompact.exit136, %_PyLong_CheckExactAndCompact.exit140, %_PyLong_CheckExactAndCompact.exit, %_PyLong_CheckExactAndCompact.exit132, %.critedge105, %bb.v, %bb.s, %bb.q, %bb.n, %bb.l, %bb.d, %bb.c
  %i.cd = load i32, ptr @binaryop_extend_descrs, align 16, !tbaa !192
  %i.ce = icmp eq i32 %i.cd, %3
  br i1 %i.ce, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.thread
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @binaryop_extend_descrs, i64 8), align 8, !tbaa !193
  %i.cg = call i32 %i.cf(ptr noundef %i.c, ptr noundef %i.e) #11, !inline_history !190
  %.not.i151 = icmp eq i32 %i.cg, 0
  br i1 %.not.i151, label %bb.aw, label %.critedge.i

bb.aw:                                            ; preds = %bb.av, %.thread
  %i.ch = load i32, ptr getelementptr inbounds nuw (i8, ptr @binaryop_extend_descrs, i64 24), align 8, !tbaa !192
  %i.ci = icmp eq i32 %i.ch, %3
  br i1 %i.ci, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.cj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @binaryop_extend_descrs, i64 32), align 16, !tbaa !193
  %i.ck = call i32 %i.cj(ptr noundef %i.c, ptr noundef %i.e) #11, !inline_history !190
  %.not.1.i = icmp eq i32 %i.ck, 0
  br i1 %.not.1.i, label %bb.ay, label %.critedge.i

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.cl = load i32, ptr getelementptr inbounds nuw (i8, ptr @binaryop_extend_descrs, i64 48), align 16, !tbaa !192
  %i.cm = icmp eq i32 %i.cl, %3
  br i1 %i.cm, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @binaryop_extend_descrs, i64 56), align 8, !tbaa !193
  %i.co = call i32 %i.cn(ptr noundef %i.c, ptr noundef %i.e) #11, !inline_history !190
  %.not.2.i = icmp eq i32 %i.co, 0
  br i1 %.not.2.i, label %bb.ba, label %.critedge.i

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.cp = load i32, ptr getelementptr inbounds nuw (i8, ptr @binaryop_extend_descrs, i64 72), align 8, !tbaa !192
  %i.cq = icmp eq i32 %i.cp, %3
  br i1 %i.cq, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @binaryop_extend_descrs, i64 80), align 16, !tbaa !193
  %i.cs = call i32 %i.cr(ptr noundef %i.c, ptr noundef %i.e) #11, !inline_history !190
  %.not.3.i = icmp eq i32 %i.cs, 0
  br i1 %.not.3.i, label %bb.bc, label %.critedge.i

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.ct = load i32, ptr getelementptr inbounds nuw (i8, ptr @binaryop_extend_descrs, i64 96), align 16, !tbaa !192
  %i.cu = icmp eq i32 %i.ct, %3
  br i1 %i.cu, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @binaryop_extend_descrs, i64 104), align 8, !tbaa !193
  %i.cw = call i32 %i.cv(ptr noundef %i.c, ptr noundef %i.e) #11, !inline_history !190
  %.not.4.i = icmp eq i32 %i.cw, 0
  br i1 %.not.4.i, label %bb.be, label %.critedge.i

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.cx = load i32, ptr getelementptr inbounds nuw (i8, ptr @binaryop_extend_descrs, i64 120), align 8, !tbaa !192
  %i.cy = icmp eq i32 %i.cx, %3
  br i1 %i.cy, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.cz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @binaryop_extend_descrs, i64 128), align 16, !tbaa !193
  %i.da = call i32 %i.cz(ptr noundef %i.c, ptr noundef %i.e) #11, !inline_history !190
  %.not.5.i = icmp eq i32 %i.da, 0
  br i1 %.not.5.i, label %bb.bg, label %.critedge.i

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.db = load i32, ptr getelementptr inbounds nuw (i8, ptr @binaryop_extend_descrs, i64 144), align 16, !tbaa !192
  %i.dc = icmp eq i32 %i.db, %3
  br i1 %i.dc, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.dd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @binaryop_extend_descrs, i64 152), align 8, !tbaa !193
  %i.de = call i32 %i.dd(ptr noundef %i.c, ptr noundef %i.e) #11, !inline_history !190
  %.not.6.i = icmp eq i32 %i.de, 0
  br i1 %.not.6.i, label %bb.bi, label %.critedge.i

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.df = load i32, ptr getelementptr inbounds nuw (i8, ptr @binaryop_extend_descrs, i64 168), align 8, !tbaa !192
  %i.dg = icmp eq i32 %i.df, %3
  br i1 %i.dg, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.dh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @binaryop_extend_descrs, i64 176), align 16, !tbaa !193
  %i.di = call i32 %i.dh(ptr noundef %i.c, ptr noundef %i.e) #11, !inline_history !190
  %.not.7.i = icmp eq i32 %i.di, 0
  br i1 %.not.7.i, label %bb.bk, label %.critedge.i

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.dj = load i32, ptr getelementptr inbounds nuw (i8, ptr @binaryop_extend_descrs, i64 192), align 16, !tbaa !192
  %i.dk = icmp eq i32 %i.dj, %3
  br i1 %i.dk, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.dl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @binaryop_extend_descrs, i64 200), align 8, !tbaa !193
  %i.dm = call i32 %i.dl(ptr noundef %i.c, ptr noundef %i.e) #11, !inline_history !190
  %.not.8.i = icmp eq i32 %i.dm, 0
  br i1 %.not.8.i, label %bb.bm, label %.critedge.i

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.dn = load i32, ptr getelementptr inbounds nuw (i8, ptr @binaryop_extend_descrs, i64 216), align 8, !tbaa !192
  %i.do = icmp eq i32 %i.dn, %3
  br i1 %i.do, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.dp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @binaryop_extend_descrs, i64 224), align 16, !tbaa !193
  %i.dq = call i32 %i.dp(ptr noundef %i.c, ptr noundef %i.e) #11, !inline_history !190
  %.not.9.i = icmp eq i32 %i.dq, 0
  br i1 %.not.9.i, label %bb.bo, label %.critedge.i

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.dr = load i32, ptr getelementptr inbounds nuw (i8, ptr @binaryop_extend_descrs, i64 240), align 16, !tbaa !192
  %i.ds = icmp eq i32 %i.dr, %3
  br i1 %i.ds, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.dt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @binaryop_extend_descrs, i64 248), align 8, !tbaa !193
  %i.du = call i32 %i.dt(ptr noundef %i.c, ptr noundef %i.e) #11, !inline_history !190
  %.not.10.i = icmp eq i32 %i.du, 0
  br i1 %.not.10.i, label %bb.bq, label %.critedge.i

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.dv = load i32, ptr getelementptr inbounds nuw (i8, ptr @binaryop_extend_descrs, i64 264), align 8, !tbaa !192
  %i.dw = icmp eq i32 %i.dv, %3
  br i1 %i.dw, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.dx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @binaryop_extend_descrs, i64 272), align 16, !tbaa !193
  %i.dy = call i32 %i.dx(ptr noundef %i.c, ptr noundef %i.e) #11, !inline_history !190
  %.not.11.i = icmp eq i32 %i.dy, 0
  br i1 %.not.11.i, label %bb.bs, label %.critedge.i

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.dz = load i32, ptr getelementptr inbounds nuw (i8, ptr @binaryop_extend_descrs, i64 288), align 16, !tbaa !192
  %i.ea = icmp eq i32 %i.dz, %3
  br i1 %i.ea, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.eb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @binaryop_extend_descrs, i64 296), align 8, !tbaa !193
  %i.ec = call i32 %i.eb(ptr noundef %i.c, ptr noundef %i.e) #11, !inline_history !190
  %.not.12.i = icmp eq i32 %i.ec, 0
  br i1 %.not.12.i, label %bb.bu, label %.critedge.i

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.ed = load i32, ptr getelementptr inbounds nuw (i8, ptr @binaryop_extend_descrs, i64 312), align 8, !tbaa !192
  %i.ee = icmp eq i32 %i.ed, %3
  br i1 %i.ee, label %bb.bv, label %binary_op_extended_specialization.exit

bb.bv:                                            ; preds = %bb.bu
  %i.ef = load ptr, ptr getelementptr inbounds nuw (i8, ptr @binaryop_extend_descrs, i64 320), align 16, !tbaa !193
  %i.eg = call i32 %i.ef(ptr noundef %i.c, ptr noundef %i.e) #11, !inline_history !190
  %.not.13.i = icmp eq i32 %i.eg, 0
  br i1 %.not.13.i, label %binary_op_extended_specialization.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.bv, %bb.bt, %bb.br, %bb.bp, %bb.bn, %bb.bl, %bb.bj, %bb.bh, %bb.bf, %bb.bd, %bb.bb, %bb.az, %bb.ax, %bb.av
  %.0.ph = phi ptr [ @binaryop_extend_descrs, %bb.av ], [ getelementptr inbounds nuw (i8, ptr @binaryop_extend_descrs, i64 288), %bb.bt ], [ getelementptr inbounds nuw (i8, ptr @binaryop_extend_descrs, i64 264), %bb.br ], [ getelementptr inbounds nuw (i8, ptr @binaryop_extend_descrs, i64 240), %bb.bp ], [ getelementptr inbounds nuw (i8, ptr @binaryop_extend_descrs, i64 216), %bb.bn ], [ getelementptr inbounds nuw (i8, ptr @binaryop_extend_descrs, i64 192), %bb.bl ], [ getelementptr inbounds nuw (i8, ptr @binaryop_extend_descrs, i64 168), %bb.bj ], [ getelementptr inbounds nuw (i8, ptr @binaryop_extend_descrs, i64 144), %bb.bh ], [ getelementptr inbounds nuw (i8, ptr @binaryop_extend_descrs, i64 120), %bb.bf ], [ getelementptr inbounds nuw (i8, ptr @binaryop_extend_descrs, i64 96), %bb.bd ], [ getelementptr inbounds nuw (i8, ptr @binaryop_extend_descrs, i64 72), %bb.bb ], [ getelementptr inbounds nuw (i8, ptr @binaryop_extend_descrs, i64 48), %bb.az ], [ getelementptr inbounds nuw (i8, ptr @binaryop_extend_descrs, i64 24), %bb.ax ], [ getelementptr inbounds nuw (i8, ptr @binaryop_extend_descrs, i64 312), %bb.bv ]
  store i8 -124, ptr %2, align 2, !tbaa !29
  %i.eh = getelementptr i8, ptr %2, i64 2
  store i16 416, ptr %i.eh, align 2, !tbaa !41
  %i.ei = getelementptr i8, ptr %2, i64 4
  store ptr %.0.ph, ptr %i.ei, align 2
  br label %bb.bw

binary_op_extended_specialization.exit:           ; preds = %bb.bv, %bb.bu
  %i.ej = load i8, ptr %2, align 2, !tbaa !29
  %i.ek = zext i8 %i.ej to i64
  %i.el = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !29
  store i8 %i.em, ptr %2, align 2, !tbaa !29
  %i.en = getelementptr i8, ptr %2, i64 2         ; 2 uses
  %.val.i152 = load i16, ptr %i.en, align 2, !tbaa !41
  %i.eo = and i16 %.val.i152, 7
  %i.ep = zext nneg i16 %i.eo to i64
  %i.eq = getelementptr [2 x i8], ptr @value_and_backoff_next, i64 %i.ep
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !42
  store i16 %i.er, ptr %i.en, align 2, !tbaa !41
  br label %bb.bw

bb.bw:                                            ; preds = %.critedge.i, %binary_op_extended_specialization.exit, %Py_DECREF.exit, %bb.h, %bb.i, %bb.ak, %bb.ai, %bb.ag, %bb.af, %bb.ac, %bb.aa, %bb.w, %bb.u, %bb.r, %bb.p, %bb.m, %bb.k
  ret void
}

declare ptr @_PyType_LookupRefAndVersion(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @_PyType_CacheGetItemForSpecialization(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_Py_Specialize_CompareOp(i64 %0, i64 %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = and i64 %0, -2
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = and i64 %1, -2
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = getelementptr i8, ptr %i.b, i64 8
  %.val21 = load ptr, ptr %i.e, align 8, !tbaa !32 ; 4 uses
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val = load ptr, ptr %i.f, align 8, !tbaa !32
  %.not = icmp eq ptr %.val21, %.val
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
end_hunk_0
