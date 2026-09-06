Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/arraymodule?download=true
inline.NumInlined: 332
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@array__array_reconstructor:bb.a

_PyUnicode_DATA.exit25.i:                         ; preds = %bb.p, %bb.o
  %.0.i23.i = phi ptr [ %.0.i.i22.i, %bb.o ], [ %.val4.i24.i, %bb.p ]
  %i.z = load i32, ptr %.0.i23.i, align 4, !tbaa !12
  br label %PyUnicode_READ_CHAR.exit

PyUnicode_READ_CHAR.exit:                         ; preds = %_PyUnicode_DATA.exit.i, %_PyUnicode_DATA.exit17.i, %_PyUnicode_DATA.exit25.i
  %.0.i = phi i32 [ %i.s, %_PyUnicode_DATA.exit.i ], [ %i.w, %_PyUnicode_DATA.exit17.i ], [ %i.z, %_PyUnicode_DATA.exit25.i ] ; 2 uses
  %i.aa = getelementptr i8, ptr %1, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !26
  %i.ac = tail call i32 @PyLong_AsInt(ptr noundef %i.ab) #12 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, -1
  br i1 %i.ad, label %bb.q, label %.split

.split:                                           ; preds = %PyUnicode_READ_CHAR.exit
  %i.ae = getelementptr i8, ptr %1, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !26
  %i.ag = getelementptr i8, ptr %0, i64 24
  %.val27 = load ptr, ptr %i.ag, align 8, !tbaa !20
  %i.ah = tail call fastcc ptr @array__array_reconstructor_impl(ptr %.val27, ptr noundef %i.b, i32 noundef %.0.i, i32 noundef %i.ac, ptr noundef %i.af)
  br label %bb.r

bb.q:                                             ; preds = %PyUnicode_READ_CHAR.exit
  %i.ai = tail call ptr @PyErr_Occurred() #12
  %.not22 = icmp eq ptr %i.ai, null
  br i1 %.not22, label %.split18, label %bb.r

.split18:                                         ; preds = %bb.q
  %i.aj = getelementptr i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !26
  %i.al = getelementptr i8, ptr %0, i64 24
  %.val26 = load ptr, ptr %i.al, align 8, !tbaa !20
  %i.am = tail call fastcc ptr @array__array_reconstructor_impl(ptr %.val26, ptr noundef %i.b, i32 noundef %.0.i, i32 noundef -1, ptr noundef %i.ak)
  br label %bb.r

bb.r:                                             ; preds = %.split, %.split18, %bb.q, %bb.b, %bb.f, %bb.d
  %.0 = phi ptr [ null, %bb.f ], [ null, %bb.q ], [ null, %bb.b ], [ null, %bb.d ], [ %i.ah, %.split ], [ %i.am, %.split18 ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @_PyArg_CheckPositional(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @_PyArg_BadArgument(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @PyLong_AsInt(ptr noundef) local_unnamed_addr #1

declare ptr @PyErr_Occurred() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @array__array_reconstructor_impl(ptr nofree readonly captures(none) %.24.val, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val176 = load ptr, ptr %i.c, align 8, !tbaa !27 ; 2 uses
  %i.d = getelementptr i8, ptr %.val176, i64 168
  %.val176.val = load i64, ptr %i.d, align 8, !tbaa !35
  %i.e = and i64 %.val176.val, 2147483648
  %.not1 = icmp eq i64 %i.e, 0
  br i1 %.not1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !26
  %i.g = getelementptr i8, ptr %.val176, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.i = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.f, ptr noundef nonnull @.str.6, ptr noundef %i.h) #12 ; 0 uses
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %.24.val, align 8, !tbaa !22
  %i.k = tail call i32 @PyType_IsSubtype(ptr noundef nonnull %0, ptr noundef %i.j) #12
  %.not139 = icmp eq i32 %i.k, 0
  br i1 %.not139, label %bb.d, label %.preheader6

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !26
  %i.m = getelementptr i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.o = load ptr, ptr %.24.val, align 8, !tbaa !22
  %i.p = getelementptr i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !40
  %i.r = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.l, ptr noundef nonnull @.str.7, ptr noundef %i.n, ptr noundef %i.q) #12 ; 0 uses
  br label %.critedge

.preheader6:                                      ; preds = %bb.c, %.preheader6
  %.0117 = phi ptr [ %i.v, %.preheader6 ], [ @descriptors, %bb.c ] ; 2 uses
  %i.s = load i8, ptr %.0117, align 8, !tbaa !42  ; 2 uses
  %.not140 = icmp eq i8 %i.s, 0                   ; 2 uses
  %i.t = sext i8 %i.s to i32
  %i.u = icmp eq i32 %1, %i.t
  %or.cond152 = or i1 %.not140, %i.u
  %i.v = getelementptr i8, ptr %.0117, i64 48
  br i1 %or.cond152, label %bb.e, label %.preheader6, !llvm.loop !83

bb.e:                                             ; preds = %.preheader6
  br i1 %.not140, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !26
  tail call void @PyErr_SetString(ptr noundef %i.w, ptr noundef nonnull @.str.8) #12
  br label %.critedge

bb.g:                                             ; preds = %bb.e
  %or.cond = icmp ugt i32 %2, 21
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !26
  tail call void @PyErr_SetString(ptr noundef %i.x, ptr noundef nonnull @.str.9) #12
  br label %.critedge

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr i8, ptr %3, i64 8
  %.val173 = load ptr, ptr %i.y, align 8, !tbaa !27 ; 2 uses
  %i.z = getelementptr i8, ptr %.val173, i64 168
  %.val175 = load i64, ptr %i.z, align 8, !tbaa !35
  %i.aa = and i64 %.val175, 134217728
  %.not141 = icmp eq i64 %i.aa, 0
  br i1 %.not141, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !26
  %i.ac = getelementptr i8, ptr %.val173, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !40
  %i.ae = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ab, ptr noundef nonnull @.str.10, ptr noundef %i.ad) #12 ; 0 uses
  br label %.critedge

bb.k:                                             ; preds = %bb.i
  %i.af = trunc i32 %1 to i8
  %i.ag = tail call fastcc i32 @typecode_to_mformat_code(i8 noundef signext %i.af)
  %i.ah = icmp eq i32 %2, %i.ag
  br i1 %i.ah, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %sext = shl i32 %1, 24
  %i.ai = ashr exact i32 %sext, 24
  %i.aj = tail call ptr @PyUnicode_FromOrdinal(i32 noundef %i.ai) #12, !inline_history !87 ; 5 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = tail call ptr @PyTuple_New(i64 noundef 2) #12, !inline_history !87 ; 7 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.an = load i32, ptr %i.aj, align 8, !tbaa !25 ; 2 uses
  %.not.i16.i = icmp sgt i32 %i.an, -1
  br i1 %.not.i16.i, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.ao = add nsw i32 %i.an, -1                   ; 2 uses
  store i32 %i.ao, ptr %i.aj, align 8, !tbaa !25
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %Py_DECREF.exit17.sink.split.i, label %.critedge

bb.p:                                             ; preds = %bb.m
  %i.aq = getelementptr i8, ptr %i.al, i64 32
  store ptr %i.aj, ptr %i.aq, align 8, !tbaa !26
  %i.ar = load i32, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.as = icmp ugt i32 %i.ar, -1073741825
  br i1 %i.as, label %_Py_NewRef.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = add nuw i32 %i.ar, 1
  store i32 %i.at, ptr %3, align 8, !tbaa !25
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %bb.q, %bb.p
  %i.au = getelementptr i8, ptr %i.al, i64 40
  store ptr %3, ptr %i.au, align 8, !tbaa !26
  %i.av = tail call ptr @array_new(ptr noundef nonnull %0, ptr noundef nonnull %i.al, ptr noundef null), !inline_history !87 ; 3 uses
  %i.aw = load i32, ptr %i.al, align 8, !tbaa !25 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.aw, -1
  br i1 %.not.i.i, label %bb.r, label %.critedge

bb.r:                                             ; preds = %_Py_NewRef.exit.i
  %i.ax = add nsw i32 %i.aw, -1                   ; 2 uses
  store i32 %i.ax, ptr %i.al, align 8, !tbaa !25
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %Py_DECREF.exit17.sink.split.i, label %.critedge

Py_DECREF.exit17.sink.split.i:                    ; preds = %bb.r, %bb.o
  %.sink.i = phi ptr [ %i.aj, %bb.o ], [ %i.al, %bb.r ]
  %.0.ph.i = phi ptr [ null, %bb.o ], [ %i.av, %bb.r ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sink.i) #12, !inline_history !87
  br label %.critedge

bb.s:                                             ; preds = %bb.k
  %i.az = getelementptr i8, ptr %3, i64 16
  %.val171 = load i64, ptr %i.az, align 8, !tbaa !44 ; 8 uses
  %i.ba = zext nneg i32 %2 to i64                 ; 15 uses
  %i.bb = getelementptr [16 x i8], ptr @mformat_descriptors, i64 %i.ba ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 16, !tbaa !89 ; 4 uses
  %i.bd = urem i64 %.val171, %i.bc
  %i.be = udiv i64 %.val171, %i.bc                ; 3 uses
  %.not142 = icmp eq i64 %i.bd, 0
  br i1 %.not142, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !26
  tail call void @PyErr_SetString(ptr noundef %i.bf, ptr noundef nonnull @.str.11) #12
  br label %.critedge

bb.u:                                             ; preds = %bb.s
  switch i32 %2, label %default.unreachable51 [
    i32 14, label %bb.v
    i32 15, label %bb.v
    i32 16, label %bb.ab
    i32 17, label %bb.ab
    i32 18, label %bb.ah
    i32 19, label %bb.ah
    i32 20, label %bb.ai
    i32 21, label %bb.ai
    i32 0, label %bb.aj
    i32 1, label %bb.aj
    i32 2, label %bb.aj
    i32 3, label %bb.aj
    i32 4, label %bb.aj
    i32 5, label %bb.aj
    i32 6, label %bb.aj
    i32 7, label %bb.aj
    i32 8, label %bb.aj
    i32 9, label %bb.aj
    i32 10, label %bb.aj
    i32 11, label %bb.aj
    i32 12, label %bb.aj
    i32 13, label %bb.aj
  ]

bb.v:                                             ; preds = %bb.u, %bb.u
  %i.bg = icmp eq i32 %2, 14
  %i.bh = zext i1 %i.bg to i32
  %i.bi = sdiv i64 %.val171, 4                    ; 2 uses
  %i.bj = getelementptr i8, ptr %3, i64 32
  %i.bk = tail call ptr @PyList_New(i64 noundef %i.bi) #12 ; 7 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.v
  %i.bm = icmp sgt i64 %.val171, 3
  br i1 %i.bm, label %.lr.ph13, label %.loopexit

.lr.ph13:                                         ; preds = %.preheader
  %i.bn = getelementptr i8, ptr %i.bk, i64 24
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph13, %bb.aa
  %.011512 = phi i64 [ 0, %.lr.ph13 ], [ %i.bw, %bb.aa ] ; 3 uses
  %i.bo = shl nuw nsw i64 %.011512, 2
  %i.bp = getelementptr i8, ptr %i.bj, i64 %i.bo
  %i.bq = tail call double @PyFloat_Unpack4(ptr noundef %i.bp, i32 noundef %i.bh) #12
  %i.br = tail call ptr @PyFloat_FromDouble(double noundef %i.bq) #12 ; 2 uses
  %.not150 = icmp eq ptr %i.br, null
  br i1 %.not150, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.bs = load i32, ptr %i.bk, align 8, !tbaa !25 ; 2 uses
  %.not.i161 = icmp sgt i32 %i.bs, -1
  br i1 %.not.i161, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  %i.bt = add nsw i32 %i.bs, -1                   ; 2 uses
  store i32 %i.bt, ptr %i.bk, align 8, !tbaa !25
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.y
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.bk) #12
  br label %.critedge

bb.aa:                                            ; preds = %bb.w
  %.val179 = load ptr, ptr %i.bn, align 8, !tbaa !48
  %i.bv = getelementptr [8 x i8], ptr %.val179, i64 %.011512
  store ptr %i.br, ptr %i.bv, align 8, !tbaa !26
  %i.bw = add nuw nsw i64 %.011512, 1             ; 2 uses
  %exitcond16.not = icmp eq i64 %i.bw, %i.bi
  br i1 %exitcond16.not, label %.loopexit, label %bb.w, !llvm.loop !84

bb.ab:                                            ; preds = %bb.u, %bb.u
  %i.bx = icmp eq i32 %2, 16
  %i.by = zext i1 %i.bx to i32
  %i.bz = sdiv i64 %.val171, 8                    ; 2 uses
  %i.ca = getelementptr i8, ptr %3, i64 32
  %i.cb = tail call ptr @PyList_New(i64 noundef %i.bz) #12 ; 7 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %.critedge, label %.preheader2

.preheader2:                                      ; preds = %bb.ab
  %i.cd = icmp sgt i64 %.val171, 7
  br i1 %i.cd, label %.lr.ph11, label %.loopexit

.lr.ph11:                                         ; preds = %.preheader2
  %i.ce = getelementptr i8, ptr %i.cb, i64 24
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph11, %bb.ag
  %.011410 = phi i64 [ 0, %.lr.ph11 ], [ %i.cn, %bb.ag ] ; 3 uses
  %i.cf = shl nuw nsw i64 %.011410, 3
  %i.cg = getelementptr i8, ptr %i.ca, i64 %i.cf
  %i.ch = tail call double @PyFloat_Unpack8(ptr noundef %i.cg, i32 noundef %i.by) #12
  %i.ci = tail call ptr @PyFloat_FromDouble(double noundef %i.ch) #12 ; 2 uses
  %.not149 = icmp eq ptr %i.ci, null
  br i1 %.not149, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.cj = load i32, ptr %i.cb, align 8, !tbaa !25 ; 2 uses
  %.not.i159 = icmp sgt i32 %i.cj, -1
  br i1 %.not.i159, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %bb.ad
  %i.ck = add nsw i32 %i.cj, -1                   ; 2 uses
  store i32 %i.ck, ptr %i.cb, align 8, !tbaa !25
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.af, label %.critedge

bb.af:                                            ; preds = %bb.ae
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.cb) #12
  br label %.critedge

bb.ag:                                            ; preds = %bb.ac
  %.val178 = load ptr, ptr %i.ce, align 8, !tbaa !48
  %i.cm = getelementptr [8 x i8], ptr %.val178, i64 %.011410
  store ptr %i.ci, ptr %i.cm, align 8, !tbaa !26
  %i.cn = add nuw nsw i64 %.011410, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.cn, %i.bz
  br i1 %exitcond.not, label %.loopexit, label %bb.ac, !llvm.loop !85

bb.ah:                                            ; preds = %bb.u, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.co = icmp eq i32 %2, 18
  %i.cp = select i1 %i.co, i32 -1, i32 1
  store i32 %i.cp, ptr %i.a, align 4, !tbaa !12
  %i.cq = getelementptr i8, ptr %3, i64 32
  %i.cr = call ptr @PyUnicode_DecodeUTF16(ptr noundef %i.cq, i64 noundef %.val171, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.a) #12 ; 2 uses
  %.not148 = icmp eq ptr %i.cr, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br i1 %.not148, label %.critedge, label %.loopexit

bb.ai:                                            ; preds = %bb.u, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.cs = icmp eq i32 %2, 20
  %i.ct = select i1 %i.cs, i32 -1, i32 1
  store i32 %i.ct, ptr %i.b, align 4, !tbaa !12
  %i.cu = getelementptr i8, ptr %3, i64 32
  %i.cv = call ptr @PyUnicode_DecodeUTF32(ptr noundef %i.cu, i64 noundef %.val171, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.b) #12 ; 2 uses
  %.not147 = icmp eq ptr %i.cv, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br i1 %.not147, label %.critedge, label %.loopexit

bb.aj:                                            ; preds = %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !12
  %i.cw = icmp samesign ult i32 %2, 2
  br i1 %i.cw, label %.thread69, label %bb.ak

.thread69:                                        ; preds = %bb.aj
  %.not52 = icmp eq i32 %2, 1
  %spec.select.1 = select i1 %.not52, i32 98, i32 66
  br label %.thread71

bb.ak:                                            ; preds = %bb.aj
  %i.cx = icmp slt i32 %2, 6
  br i1 %i.cx, label %bb.al, label %.thread71

bb.al:                                            ; preds = %bb.ak
  %i.cy = shl nuw nsw i64 1, %i.ba
  %i.cz = and i64 %i.cy, 50
  %.not53 = icmp eq i64 %i.cz, 0
  %spec.select.4 = select i1 %.not53, i32 %1, i32 104
  %i.da = shl nuw nsw i64 1, %i.ba
  %i.db = and i64 %i.da, 204
  %.not54 = icmp eq i64 %i.db, 0
  %spec.select.5 = select i1 %.not54, i32 %spec.select.4, i32 72
  br label %.thread71

.thread71:                                        ; preds = %.thread69, %bb.ak, %bb.al
  %.1128.5 = phi i32 [ %spec.select.5, %bb.al ], [ %spec.select.1, %.thread69 ], [ %1, %bb.ak ]
  %i.dc = shl nuw nsw i64 1, %i.ba
  %i.dd = and i64 %i.dc, 836544
  %.not55 = icmp eq i64 %i.dd, 0
  %i.de = shl nuw nsw i64 1, %i.ba
  %i.df = and i64 %i.de, 13106
  %.not56 = icmp eq i64 %i.df, 0
  %i.dg = select i1 %.not55, i1 true, i1 %.not56
  %.1128.6 = select i1 %i.dg, i32 %.1128.5, i32 105
  %i.dh = shl nuw nsw i64 1, %i.ba
  %i.di = and i64 %i.dh, 836544
  %.not57 = icmp eq i64 %i.di, 0
  %i.dj = shl nuw nsw i64 1, %i.ba
  %i.dk = and i64 %i.dj, 4181197
  %.not58 = icmp eq i64 %i.dk, 0
  %i.dl = select i1 %.not57, i1 true, i1 %.not58
  %.1128.7 = select i1 %i.dl, i32 %.1128.6, i32 73
  %i.dm = shl nuw nsw i64 1, %i.ba
  %i.dn = and i64 %i.dm, 3357696
end_hunk_0
begin_hunk_1_@array_new:bb.a
  br label %.critedge149

.critedge149:                                     ; preds = %Py_DECREF.exit163, %.split, %PyObject_TypeCheck.exit216.thread, %Py_DECREF.exit155, %Py_DECREF.exit157, %bb.an, %bb.ao, %bb.ap, %PyObject_TypeCheck.exit220, %bb.be
  %.not146 = icmp eq ptr %.095, null
  br i1 %.not146, label %.critedge148, label %bb.bf

bb.bf:                                            ; preds = %.critedge149
  %i.ff = call fastcc i32 @array_iter_extend(ptr noundef nonnull %i.cb, ptr noundef nonnull %.095)
  %i.fg = icmp eq i32 %i.ff, -1
  %i.fh = load i32, ptr %.095, align 8, !tbaa !25 ; 3 uses
  %.not.i152 = icmp sgt i32 %i.fh, -1             ; 2 uses
  br i1 %i.fg, label %bb.bg, label %bb.bl

bb.bg:                                            ; preds = %bb.bf
  br i1 %.not.i152, label %bb.bh, label %Py_DECREF.exit153

bb.bh:                                            ; preds = %bb.bg
  %i.fi = add nsw i32 %i.fh, -1                   ; 2 uses
  store i32 %i.fi, ptr %.095, align 8, !tbaa !25
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %bb.bi, label %Py_DECREF.exit153

bb.bi:                                            ; preds = %bb.bh
  call void @_Py_Dealloc(ptr noundef nonnull %.095) #12
  br label %Py_DECREF.exit153

Py_DECREF.exit153:                                ; preds = %bb.bg, %bb.bh, %bb.bi
  %i.fk = load i32, ptr %i.cb, align 8, !tbaa !25 ; 2 uses
  %.not.i150 = icmp sgt i32 %i.fk, -1
  br i1 %.not.i150, label %bb.bj, label %.critedge148

bb.bj:                                            ; preds = %Py_DECREF.exit153
  %i.fl = add nsw i32 %i.fk, -1                   ; 2 uses
  store i32 %i.fl, ptr %i.cb, align 8, !tbaa !25
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %bb.bk, label %.critedge148

bb.bk:                                            ; preds = %bb.bj
  call void @_Py_Dealloc(ptr noundef nonnull %i.cb) #12
  br label %.critedge148

bb.bl:                                            ; preds = %bb.bf
  br i1 %.not.i152, label %bb.bm, label %.critedge148

bb.bm:                                            ; preds = %bb.bl
  %i.fn = add nsw i32 %i.fh, -1                   ; 2 uses
  store i32 %i.fn, ptr %.095, align 8, !tbaa !25
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %bb.bn, label %.critedge148

bb.bn:                                            ; preds = %bb.bm
  call void @_Py_Dealloc(ptr noundef nonnull %.095) #12
  br label %.critedge148

bb.bo:                                            ; preds = %PyObject_TypeCheck.exit210.thread
  %i.fp = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !26
  call void @PyErr_SetString(ptr noundef %i.fp, ptr noundef nonnull @.str.55) #12
  br label %.critedge148

.critedge148:                                     ; preds = %bb.ba, %bb.bb, %bb.bc, %bb.ak, %bb.al, %bb.am, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %Py_DECREF.exit153, %Py_DECREF.exit157.thread, %bb.y, %bb.z, %bb.aa, %Py_DECREF.exit167, %bb.ae, %bb.af, %bb.m, %bb.k, %bb.bo, %bb.q, %.critedge149, %bb.u, %bb.h, %bb.f, %bb.e, %bb.d
  %.10 = phi ptr [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.h ], [ null, %bb.d ], [ null, %bb.q ], [ null, %bb.bo ], [ null, %bb.m ], [ null, %bb.k ], [ %i.cb, %.critedge149 ], [ null, %bb.y ], [ null, %bb.u ], [ %i.cb, %bb.bn ], [ null, %Py_DECREF.exit157.thread ], [ null, %bb.ak ], [ null, %bb.bk ], [ null, %bb.af ], [ null, %bb.ae ], [ null, %Py_DECREF.exit167 ], [ null, %bb.aa ], [ null, %bb.z ], [ null, %Py_DECREF.exit153 ], [ null, %bb.bj ], [ %i.cb, %bb.bl ], [ %i.cb, %bb.bm ], [ null, %bb.am ], [ null, %bb.al ], [ null, %bb.bc ], [ null, %bb.bb ], [ null, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %.10
}

declare ptr @PyType_GetModuleByDef(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @_PyArg_NoKeywords(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyArg_ParseTuple(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @PySys_Audit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @PyErr_WarnEx(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @PyObject_GetIter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @newarrayobject(ptr noundef %0, i64 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.56, i32 noundef 714) #12
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %2, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !62
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = sdiv i64 9223372036854775807, %i.d
  %i.f = icmp sgt i64 %1, %i.e
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @PyErr_NoMemory() #12
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.h = mul i64 %1, %i.d                         ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 304
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !63
  %i.k = tail call ptr %i.j(ptr noundef %0, i64 noundef 0) #12 ; 13 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %i.k, i64 40
  store ptr %2, ptr %i.m, align 8, !tbaa !59
  %i.n = getelementptr i8, ptr %i.k, i64 32
  store i64 %1, ptr %i.n, align 8, !tbaa !61
  %i.o = getelementptr i8, ptr %i.k, i64 48
  store ptr null, ptr %i.o, align 8, !tbaa !64
  %i.p = getelementptr i8, ptr %i.k, i64 16
  store i64 %1, ptr %i.p, align 8, !tbaa !44
  %i.q = icmp eq i64 %1, 0
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %i.k, i64 24
  store ptr null, ptr %i.r, align 8, !tbaa !51
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.s = icmp slt i64 %i.h, 0
  br i1 %i.s, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.h
  %i.t = getelementptr i8, ptr %i.k, i64 24
  store ptr null, ptr %i.t, align 8, !tbaa !51
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = tail call ptr @PyMem_Malloc(i64 noundef %i.h) #12 ; 2 uses
  %i.v = getelementptr i8, ptr %i.k, i64 24
  store ptr %i.u, ptr %i.v, align 8, !tbaa !51
  %i.w = icmp eq ptr %i.u, null
  br i1 %i.w, label %bb.j, label %bb.m

bb.j:                                             ; preds = %.thread, %bb.i
  %i.x = load i32, ptr %i.k, align 8, !tbaa !25   ; 2 uses
  %.not.i = icmp sgt i32 %i.x, -1
  br i1 %.not.i, label %bb.k, label %Py_DECREF.exit

bb.k:                                             ; preds = %bb.j
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  store i32 %i.y, ptr %i.k, align 8, !tbaa !25
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.l, label %Py_DECREF.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.k) #12
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.j, %bb.k, %bb.l
  %i.aa = tail call ptr @PyErr_NoMemory() #12
  br label %bb.n

bb.m:                                             ; preds = %bb.i, %bb.g
  %i.ab = getelementptr i8, ptr %i.k, i64 56
  store i64 0, ptr %i.ab, align 8, !tbaa !65
  br label %bb.n

bb.n:                                             ; preds = %bb.e, %bb.m, %Py_DECREF.exit, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.g, %bb.d ], [ %i.aa, %Py_DECREF.exit ], [ %i.k, %bb.m ], [ null, %bb.e ]
  ret ptr %.0
}

declare ptr @PySequence_GetItem(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @array_array_frombytes(ptr nofree noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.Py_buffer, align 8          ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %2, i8 0, i64 80, i1 false)
  %i.a = call i32 @PyObject_GetBuffer(ptr noundef %1, ptr noundef nonnull %2, i32 noundef 0) #12
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %array_array_frombytes_impl.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !68
  %.not.i.i = icmp eq i64 %i.c, 1
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @PyBuffer_Release(ptr noundef nonnull %2) #12
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !26
  call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.58) #12
  br label %array_array_frombytes_impl.exit

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !59
  %i.g = getelementptr i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !62
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !69   ; 2 uses
  %i.k = sext i32 %i.h to i64                     ; 5 uses
  %i.l = srem i64 %i.j, %i.k
  %i.m = sdiv i64 %i.j, %i.k                      ; 4 uses
  %.not32.i.i = icmp eq i64 %i.l, 0
  br i1 %.not32.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @PyBuffer_Release(ptr noundef nonnull %2) #12
  %i.n = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !26
  call void @PyErr_SetString(ptr noundef %i.n, ptr noundef nonnull @.str.59) #12
  br label %array_array_frombytes_impl.exit

bb.f:                                             ; preds = %bb.d
  %i.o = icmp sgt i64 %i.m, 0
  br i1 %i.o, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %0, i64 16
  %.val.i.i = load i64, ptr %i.p, align 8, !tbaa !44 ; 3 uses
  %i.q = sub i64 9223372036854775807, %.val.i.i
  %i.r = icmp sgt i64 %i.m, %i.q
  br i1 %i.r, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = add i64 %.val.i.i, %i.m                  ; 2 uses
  %i.t = sdiv i64 9223372036854775807, %i.k
  %i.u = icmp sgt i64 %i.s, %i.t
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @PyBuffer_Release(ptr noundef nonnull %2) #12
  %i.v = call ptr @PyErr_NoMemory() #12
  br label %array_array_frombytes_impl.exit

bb.j:                                             ; preds = %bb.h
  %i.w = call fastcc i32 @array_resize(ptr noundef nonnull %0, i64 noundef %i.s)
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @PyBuffer_Release(ptr noundef nonnull %2) #12
  br label %array_array_frombytes_impl.exit

bb.l:                                             ; preds = %bb.j
  %i.y = getelementptr i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !51
  %i.aa = mul i64 %.val.i.i, %i.k
  %i.ab = getelementptr i8, ptr %i.z, i64 %i.aa
  %i.ac = load ptr, ptr %2, align 8, !tbaa !70
  %3 = mul i64 %i.m, %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.ac, i64 %3, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.f
  call void @PyBuffer_Release(ptr noundef nonnull %2) #12
  br label %array_array_frombytes_impl.exit

array_array_frombytes_impl.exit:                  ; preds = %bb.m, %bb.k, %bb.i, %bb.e, %bb.c, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.e ], [ @_Py_NoneStruct, %bb.m ], [ null, %bb.k ], [ %i.v, %bb.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !71
  %.not3 = icmp eq ptr %i.ae, null
  br i1 %.not3, label %bb.o, label %bb.n

bb.n:                                             ; preds = %array_array_frombytes_impl.exit
  call void @PyBuffer_Release(ptr noundef nonnull %2) #12
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %array_array_frombytes_impl.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret ptr %.0
}

declare ptr @PyUnicode_AsWideCharString(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #1

declare ptr @PyUnicode_AsUCS4Copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @array_iter_extend(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PyObject_GetIter(ptr noundef %1) #12 ; 9 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %Py_DECREF.exit16, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = tail call ptr @PyIter_Next(ptr noundef nonnull %i.a) #12 ; 2 uses
  %.not25 = icmp eq ptr %i.c, null
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = getelementptr i8, ptr %0, i64 40         ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Py_DECREF.exit14
  %i.f = phi ptr [ %i.c, %.lr.ph ], [ %i.ae, %Py_DECREF.exit14 ] ; 8 uses
  %.val = load i64, ptr %i.d, align 8, !tbaa !44  ; 5 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !59
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60
  %i.j = tail call i32 %i.i(ptr noundef nonnull %0, i64 noundef -1, ptr noundef nonnull %i.f) #12, !inline_history !105
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %ins1.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = add i64 %.val, 1
  %i.m = tail call fastcc i32 @array_resize(ptr noundef nonnull %0, i64 noundef %i.l)
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %ins1.exit.thread, label %ins1.exit

ins1.exit:                                        ; preds = %bb.c
  %i.o = icmp slt i64 %.val, 0
  %i.p = shl i64 %.val, 1
  %spec.store.select.i = tail call i64 @llvm.smax.i64(i64 %i.p, i64 0)
  %i.q = tail call i64 @llvm.smin.i64(i64 %spec.store.select.i, i64 %.val)
  %.1.i = select i1 %i.o, i64 %i.q, i64 %.val
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !59
  %i.s = getelementptr i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !60
  %i.u = tail call i32 %i.t(ptr noundef nonnull %0, i64 noundef %.1.i, ptr noundef nonnull %i.f) #12, !inline_history !105
  %.not12 = icmp eq i32 %i.u, 0
  br i1 %.not12, label %bb.h, label %ins1.exit.thread

ins1.exit.thread:                                 ; preds = %bb.b, %bb.c, %ins1.exit
  %i.v = load i32, ptr %i.f, align 8, !tbaa !25   ; 2 uses
  %.not.i17 = icmp sgt i32 %i.v, -1
  br i1 %.not.i17, label %bb.d, label %Py_DECREF.exit18

bb.d:                                             ; preds = %ins1.exit.thread
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %i.f, align 8, !tbaa !25
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.e, label %Py_DECREF.exit18

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #12
  br label %Py_DECREF.exit18

Py_DECREF.exit18:                                 ; preds = %ins1.exit.thread, %bb.d, %bb.e
  %i.y = load i32, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not.i15 = icmp sgt i32 %i.y, -1
  br i1 %.not.i15, label %bb.f, label %Py_DECREF.exit16

bb.f:                                             ; preds = %Py_DECREF.exit18
  %i.z = add nsw i32 %i.y, -1                     ; 2 uses
  store i32 %i.z, ptr %i.a, align 8, !tbaa !25
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.g, label %Py_DECREF.exit16

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #12
  br label %Py_DECREF.exit16

bb.h:                                             ; preds = %ins1.exit
  %i.ab = load i32, ptr %i.f, align 8, !tbaa !25  ; 2 uses
  %.not.i13 = icmp sgt i32 %i.ab, -1
  br i1 %.not.i13, label %bb.i, label %Py_DECREF.exit14

bb.i:                                             ; preds = %bb.h
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ac, ptr %i.f, align 8, !tbaa !25
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %Py_DECREF.exit14

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #12
  br label %Py_DECREF.exit14

Py_DECREF.exit14:                                 ; preds = %bb.h, %bb.i, %bb.j
  %i.ae = tail call ptr @PyIter_Next(ptr noundef nonnull %i.a) #12 ; 2 uses
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !106

._crit_edge:                                      ; preds = %Py_DECREF.exit14, %.preheader
  %i.af = load i32, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  %.not.i = icmp sgt i32 %i.af, -1
  br i1 %.not.i, label %bb.k, label %Py_DECREF.exit

bb.k:                                             ; preds = %._crit_edge
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %i.a, align 8, !tbaa !25
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.l, label %Py_DECREF.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #12
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %._crit_edge, %bb.k, %bb.l
  %i.ai = tail call ptr @PyErr_Occurred() #12
  %.not11 = icmp ne ptr %i.ai, null
  %. = sext i1 %.not11 to i32
  br label %Py_DECREF.exit16

Py_DECREF.exit16:                                 ; preds = %bb.g, %bb.f, %Py_DECREF.exit18, %Py_DECREF.exit, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %., %Py_DECREF.exit ], [ -1, %Py_DECREF.exit18 ], [ -1, %bb.f ], [ -1, %bb.g ]
  ret i32 %.0
}

declare void @_PyErr_BadInternalCall(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @PyErr_NoMemory() local_unnamed_addr #1

declare ptr @PyMem_Malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @array_ass_item(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val = load i64, ptr %i.b, align 8, !tbaa !44  ; 2 uses
  %.not = icmp slt i64 %1, %.val
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !26
  tail call void @PyErr_SetString(ptr noundef %i.c, ptr noundef nonnull @.str.29) #12
  br label %array_del_slice.exit

bb.d:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %2, null
  br i1 %i.d, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr i8, ptr %0, i64 56
  %i.f = load i64, ptr %i.e, align 8, !tbaa !65
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr @PyExc_BufferError, align 8, !tbaa !26
  tail call void @PyErr_SetString(ptr noundef %i.h, ptr noundef nonnull @.str.57) #12
  br label %array_del_slice.exit

bb.g:                                             ; preds = %bb.e
  %i.i = add nuw nsw i64 %1, 1                    ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !51   ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !59
  %i.n = getelementptr i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !62
  %i.p = sext i32 %i.o to i64                     ; 3 uses
  %i.q = mul i64 %1, %i.p
  %i.r = getelementptr i8, ptr %i.k, i64 %i.q
  %i.s = mul i64 %i.i, %i.p
end_hunk_1
