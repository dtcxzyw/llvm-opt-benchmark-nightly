inline.NumInlined: 332
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@array__array_reconstructor_impl
define internal fastcc ptr @array__array_reconstructor_impl(ptr nofree readonly captures(none) %.24.val, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val176 = load ptr, ptr %i.c, align 8, !tbaa !25 ; 2 uses
  %i.d = getelementptr i8, ptr %.val176, i64 168
  %.val176.val = load i64, ptr %i.d, align 8, !tbaa !26
  %i.e = and i64 %.val176.val, 2147483648
  %.not1 = icmp eq i64 %i.e, 0
  br i1 %.not1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !24
  %i.g = getelementptr i8, ptr %.val176, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.i = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.f, ptr noundef nonnull @.str.6, ptr noundef %i.h) #12 ; 0 uses
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %.24.val, align 8, !tbaa !18
  %i.k = tail call i32 @PyType_IsSubtype(ptr noundef nonnull %0, ptr noundef %i.j) #12
  %.not139 = icmp eq i32 %i.k, 0
  br i1 %.not139, label %bb.d, label %.preheader6

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !24
  %i.m = getelementptr i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !38
  %i.o = load ptr, ptr %.24.val, align 8, !tbaa !18
  %i.p = getelementptr i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !38
  %i.r = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.l, ptr noundef nonnull @.str.7, ptr noundef %i.n, ptr noundef %i.q) #12 ; 0 uses
  br label %.critedge

.preheader6:                                      ; preds = %bb.c, %.preheader6
  %.0118 = phi ptr [ %i.v, %.preheader6 ], [ @descriptors, %bb.c ] ; 2 uses
  %i.s = load i8, ptr %.0118, align 8, !tbaa !39  ; 2 uses
  %.not140 = icmp eq i8 %i.s, 0                   ; 2 uses
  %i.t = sext i8 %i.s to i32
  %i.u = icmp eq i32 %1, %i.t
  %or.cond152 = or i1 %.not140, %i.u
  %i.v = getelementptr i8, ptr %.0118, i64 48
  br i1 %or.cond152, label %bb.e, label %.preheader6, !llvm.loop !41

bb.e:                                             ; preds = %.preheader6
  br i1 %.not140, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !24
  tail call void @PyErr_SetString(ptr noundef %i.w, ptr noundef nonnull @.str.8) #12
  br label %.critedge

bb.g:                                             ; preds = %bb.e
  %or.cond = icmp ugt i32 %2, 21
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !24
  tail call void @PyErr_SetString(ptr noundef %i.x, ptr noundef nonnull @.str.9) #12
  br label %.critedge

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr i8, ptr %3, i64 8
  %.val173 = load ptr, ptr %i.y, align 8, !tbaa !25 ; 2 uses
  %i.z = getelementptr i8, ptr %.val173, i64 168
  %.val175 = load i64, ptr %i.z, align 8, !tbaa !26
  %i.aa = and i64 %.val175, 134217728
  %.not141 = icmp eq i64 %i.aa, 0
  br i1 %.not141, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !24
  %i.ac = getelementptr i8, ptr %.val173, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !38
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
  %i.aj = tail call ptr @PyUnicode_FromOrdinal(i32 noundef %i.ai) #12, !inline_history !43 ; 5 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = tail call ptr @PyTuple_New(i64 noundef 2) #12, !inline_history !43 ; 7 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.an = load i32, ptr %i.aj, align 8, !tbaa !23 ; 2 uses
  %.not.i16.i = icmp sgt i32 %i.an, -1
  br i1 %.not.i16.i, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.ao = add nsw i32 %i.an, -1                   ; 2 uses
  store i32 %i.ao, ptr %i.aj, align 8, !tbaa !23
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %Py_DECREF.exit17.sink.split.i, label %.critedge

bb.p:                                             ; preds = %bb.m
  %i.aq = getelementptr i8, ptr %i.al, i64 32
  store ptr %i.aj, ptr %i.aq, align 8, !tbaa !24
  %i.ar = load i32, ptr %3, align 8, !tbaa !23    ; 2 uses
  %i.as = icmp ugt i32 %i.ar, -1073741825
  br i1 %i.as, label %_Py_NewRef.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = add nuw i32 %i.ar, 1
  store i32 %i.at, ptr %3, align 8, !tbaa !23
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %bb.q, %bb.p
  %i.au = getelementptr i8, ptr %i.al, i64 40
  store ptr %3, ptr %i.au, align 8, !tbaa !24
  %i.av = tail call ptr @array_new(ptr noundef nonnull %0, ptr noundef nonnull %i.al, ptr noundef null), !inline_history !43 ; 3 uses
  %i.aw = load i32, ptr %i.al, align 8, !tbaa !23 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.aw, -1
  br i1 %.not.i.i, label %bb.r, label %.critedge

bb.r:                                             ; preds = %_Py_NewRef.exit.i
  %i.ax = add nsw i32 %i.aw, -1                   ; 2 uses
  store i32 %i.ax, ptr %i.al, align 8, !tbaa !23
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %Py_DECREF.exit17.sink.split.i, label %.critedge

Py_DECREF.exit17.sink.split.i:                    ; preds = %bb.r, %bb.o
  %.sink.i = phi ptr [ %i.aj, %bb.o ], [ %i.al, %bb.r ]
  %.0.ph.i = phi ptr [ null, %bb.o ], [ %i.av, %bb.r ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sink.i) #12, !inline_history !43
  br label %.critedge

bb.s:                                             ; preds = %bb.k
  %i.az = getelementptr i8, ptr %3, i64 16
  %.val171 = load i64, ptr %i.az, align 8, !tbaa !44 ; 8 uses
  %i.ba = zext nneg i32 %2 to i64                 ; 15 uses
  %i.bb = getelementptr [16 x i8], ptr @mformat_descriptors, i64 %i.ba ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 16, !tbaa !45 ; 4 uses
  %i.bd = urem i64 %.val171, %i.bc
  %i.be = udiv i64 %.val171, %i.bc                ; 3 uses
  %.not142 = icmp eq i64 %i.bd, 0
  br i1 %.not142, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !24
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
  %.012712 = phi i64 [ 0, %.lr.ph13 ], [ %i.bw, %bb.aa ] ; 3 uses
  %i.bo = shl nuw nsw i64 %.012712, 2
  %i.bp = getelementptr i8, ptr %i.bj, i64 %i.bo
  %i.bq = tail call double @PyFloat_Unpack4(ptr noundef %i.bp, i32 noundef %i.bh) #12
  %i.br = tail call ptr @PyFloat_FromDouble(double noundef %i.bq) #12 ; 2 uses
  %.not150 = icmp eq ptr %i.br, null
  br i1 %.not150, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.bs = load i32, ptr %i.bk, align 8, !tbaa !23 ; 2 uses
  %.not.i161 = icmp sgt i32 %i.bs, -1
  br i1 %.not.i161, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  %i.bt = add nsw i32 %i.bs, -1                   ; 2 uses
  store i32 %i.bt, ptr %i.bk, align 8, !tbaa !23
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.y
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.bk) #12
  br label %.critedge

bb.aa:                                            ; preds = %bb.w
  %.val179 = load ptr, ptr %i.bn, align 8, !tbaa !47
  %i.bv = getelementptr [8 x i8], ptr %.val179, i64 %.012712
  store ptr %i.br, ptr %i.bv, align 8, !tbaa !24
  %i.bw = add nuw nsw i64 %.012712, 1             ; 2 uses
  %exitcond16.not = icmp eq i64 %i.bw, %i.bi
  br i1 %exitcond16.not, label %.loopexit, label %bb.w, !llvm.loop !51

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
  %.012910 = phi i64 [ 0, %.lr.ph11 ], [ %i.cn, %bb.ag ] ; 3 uses
  %i.cf = shl nuw nsw i64 %.012910, 3
  %i.cg = getelementptr i8, ptr %i.ca, i64 %i.cf
  %i.ch = tail call double @PyFloat_Unpack8(ptr noundef %i.cg, i32 noundef %i.by) #12
  %i.ci = tail call ptr @PyFloat_FromDouble(double noundef %i.ch) #12 ; 2 uses
  %.not149 = icmp eq ptr %i.ci, null
  br i1 %.not149, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.cj = load i32, ptr %i.cb, align 8, !tbaa !23 ; 2 uses
  %.not.i159 = icmp sgt i32 %i.cj, -1
  br i1 %.not.i159, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %bb.ad
  %i.ck = add nsw i32 %i.cj, -1                   ; 2 uses
  store i32 %i.ck, ptr %i.cb, align 8, !tbaa !23
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.af, label %.critedge

bb.af:                                            ; preds = %bb.ae
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.cb) #12
  br label %.critedge

bb.ag:                                            ; preds = %bb.ac
  %.val178 = load ptr, ptr %i.ce, align 8, !tbaa !47
  %i.cm = getelementptr [8 x i8], ptr %.val178, i64 %.012910
  store ptr %i.ci, ptr %i.cm, align 8, !tbaa !24
  %i.cn = add nuw nsw i64 %.012910, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.cn, %i.bz
  br i1 %exitcond.not, label %.loopexit, label %bb.ac, !llvm.loop !52

bb.ah:                                            ; preds = %bb.u, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.co = icmp eq i32 %2, 18
  %i.cp = select i1 %i.co, i32 -1, i32 1
  store i32 %i.cp, ptr %i.a, align 4, !tbaa !6
  %i.cq = getelementptr i8, ptr %3, i64 32
  %i.cr = call ptr @PyUnicode_DecodeUTF16(ptr noundef %i.cq, i64 noundef %.val171, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.a) #12 ; 2 uses
  %.not148 = icmp eq ptr %i.cr, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br i1 %.not148, label %.critedge, label %.loopexit

bb.ai:                                            ; preds = %bb.u, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.cs = icmp eq i32 %2, 20
  %i.ct = select i1 %i.cs, i32 -1, i32 1
  store i32 %i.ct, ptr %i.b, align 4, !tbaa !6
  %i.cu = getelementptr i8, ptr %3, i64 32
  %i.cv = call ptr @PyUnicode_DecodeUTF32(ptr noundef %i.cu, i64 noundef %.val171, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.b) #12 ; 2 uses
  %.not147 = icmp eq ptr %i.cv, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br i1 %.not147, label %.critedge, label %.loopexit

bb.aj:                                            ; preds = %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !6
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
  %.1115.5 = phi i32 [ %spec.select.5, %bb.al ], [ %spec.select.1, %.thread69 ], [ %1, %bb.ak ]
  %i.dc = shl nuw nsw i64 1, %i.ba
  %i.dd = and i64 %i.dc, 836544
  %.not55 = icmp eq i64 %i.dd, 0
  %i.de = shl nuw nsw i64 1, %i.ba
  %i.df = and i64 %i.de, 13106
  %.not56 = icmp eq i64 %i.df, 0
  %i.dg = select i1 %.not55, i1 true, i1 %.not56
  %.1115.6 = select i1 %i.dg, i32 %.1115.5, i32 105
  %i.dh = shl nuw nsw i64 1, %i.ba
  %i.di = and i64 %i.dh, 836544
  %.not57 = icmp eq i64 %i.di, 0
  %i.dj = shl nuw nsw i64 1, %i.ba
  %i.dk = and i64 %i.dj, 4181197
  %.not58 = icmp eq i64 %i.dk, 0
  %i.dl = select i1 %.not57, i1 true, i1 %.not58
  %.1115.7 = select i1 %i.dl, i32 %.1115.6, i32 73
  %i.dm = shl nuw nsw i64 1, %i.ba
  %i.dn = and i64 %i.dm, 3357696
  %.not59 = icmp eq i64 %i.dn, 0
  %i.do = shl nuw nsw i64 1, %i.ba
  %i.dp = and i64 %i.do, 13106
  %.not60 = icmp eq i64 %i.dp, 0
  %i.dq = select i1 %.not59, i1 true, i1 %.not60
  %.1115.8 = select i1 %i.dq, i32 %.1115.7, i32 108
  %i.dr = shl nuw nsw i64 1, %i.ba
  %i.ds = and i64 %i.dr, 3357696
  %.not61 = icmp eq i64 %i.ds, 0
  %i.dt = shl nuw nsw i64 1, %i.ba
  %i.du = and i64 %i.dt, 4181197
  %.not62 = icmp eq i64 %i.du, 0
  %i.dv = select i1 %.not61, i1 true, i1 %.not62
  %.1115.9 = select i1 %i.dv, i32 %.1115.8, i32 76
  %i.dw = shl nuw nsw i64 1, %i.ba
  %i.dx = and i64 %i.dw, 3357696
  %.not63 = icmp eq i64 %i.dx, 0
  %i.dy = shl nuw nsw i64 1, %i.ba
  %i.dz = and i64 %i.dy, 13106
  %.not64 = icmp eq i64 %i.dz, 0
  %i.ea = select i1 %.not63, i1 true, i1 %.not64
  %.1115.10 = select i1 %i.ea, i32 %.1115.9, i32 113
  %i.eb = shl nuw nsw i64 1, %i.ba
  %i.ec = and i64 %i.eb, 3357696
  %.not65 = icmp eq i64 %i.ec, 0
  %i.ed = shl nuw nsw i64 1, %i.ba
  %i.ee = and i64 %i.ed, 4181197
  %.not66 = icmp eq i64 %i.ee, 0
  %i.ef = select i1 %.not65, i1 true, i1 %.not66
  %.1115.11 = select i1 %i.ef, i32 %.1115.10, i32 81 ; 2 uses
  %i.eg = getelementptr i8, ptr %3, i64 32
  %i.eh = tail call ptr @PyList_New(i64 noundef %i.be) #12 ; 7 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %.critedge, label %.preheader4

.preheader4:                                      ; preds = %.thread71
  %i.ej = icmp sgt i64 %i.be, 0
  br i1 %i.ej, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader4
  %.not144 = lshr i32 1398103, %2
  %i.ek = and i32 %.not144, 1
  %i.el = getelementptr i8, ptr %i.eh, i64 24
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph, %bb.aq
  %.01289 = phi i64 [ 0, %.lr.ph ], [ %i.et, %bb.aq ] ; 3 uses
  %i.em = mul i64 %.01289, %i.bc
  %i.en = getelementptr i8, ptr %i.eg, i64 %i.em
  %i.eo = tail call ptr @_PyLong_FromByteArray(ptr noundef %i.en, i64 noundef %i.bc, i32 noundef %i.ek, i32 noundef %.sroa.7.0.copyload) #12 ; 2 uses
  %.not145 = icmp eq ptr %i.eo, null
  br i1 %.not145, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.ep = load i32, ptr %i.eh, align 8, !tbaa !23 ; 2 uses
  %.not.i157 = icmp sgt i32 %i.ep, -1
  br i1 %.not.i157, label %bb.ao, label %.critedge

bb.ao:                                            ; preds = %bb.an
  %i.eq = add nsw i32 %i.ep, -1                   ; 2 uses
  store i32 %i.eq, ptr %i.eh, align 8, !tbaa !23
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %bb.ap, label %.critedge

bb.ap:                                            ; preds = %bb.ao
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.eh) #12
  br label %.critedge

bb.aq:                                            ; preds = %bb.am
  %.val177 = load ptr, ptr %i.el, align 8, !tbaa !47
  %i.es = getelementptr [8 x i8], ptr %.val177, i64 %.01289
  store ptr %i.eo, ptr %i.es, align 8, !tbaa !24
  %i.et = add nuw nsw i64 %.01289, 1              ; 2 uses
  %i.eu = icmp slt i64 %i.et, %i.be
  br i1 %i.eu, label %bb.am, label %.loopexit, !llvm.loop !53

default.unreachable51:                            ; preds = %bb.u
  unreachable

.loopexit:                                        ; preds = %bb.aq, %bb.ag, %bb.aa, %.preheader4, %.preheader2, %.preheader, %bb.ah, %bb.ai
  %.0117 = phi ptr [ %i.cb, %.preheader2 ], [ %i.bk, %.preheader ], [ %i.cr, %bb.ah ], [ %i.cv, %bb.ai ], [ %i.eh, %.preheader4 ], [ %i.cb, %bb.ag ], [ %i.bk, %bb.aa ], [ %i.eh, %bb.aq ] ; 4 uses
  %.2116 = phi i32 [ %1, %.preheader2 ], [ %1, %.preheader ], [ %1, %bb.ah ], [ %1, %bb.ai ], [ %.1115.11, %.preheader4 ], [ %1, %bb.ag ], [ %1, %bb.aa ], [ %.1115.11, %bb.aq ]
  %i.ev = trunc i32 %.2116 to i8
  %i.ew = call fastcc ptr @make_array(ptr noundef nonnull %0, i8 noundef signext %i.ev, ptr noundef nonnull %.0117) ; 3 uses
  %i.ex = load i32, ptr %.0117, align 8, !tbaa !23 ; 2 uses
  %.not.i = icmp sgt i32 %i.ex, -1
  br i1 %.not.i, label %bb.ar, label %.critedge

bb.ar:                                            ; preds = %.loopexit
  %i.ey = add nsw i32 %i.ex, -1                   ; 2 uses
  store i32 %i.ey, ptr %.0117, align 8, !tbaa !23
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %bb.as, label %.critedge

bb.as:                                            ; preds = %bb.ar
  call void @_Py_Dealloc(ptr noundef nonnull %.0117) #12
  br label %.critedge

.critedge:                                        ; preds = %bb.an, %bb.ao, %bb.ap, %bb.ad, %bb.ae, %bb.af, %bb.x, %bb.y, %bb.z, %bb.as, %bb.ar, %.loopexit, %Py_DECREF.exit17.sink.split.i, %bb.r, %_Py_NewRef.exit.i, %bb.o, %bb.n, %bb.l, %.thread71, %bb.ab, %bb.v, %bb.ah, %bb.ai, %bb.t, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.11 = phi ptr [ null, %bb.f ], [ null, %bb.h ], [ null, %.thread71 ], [ null, %bb.t ], [ null, %bb.b ], [ %.0.ph.i, %Py_DECREF.exit17.sink.split.i ], [ null, %bb.d ], [ null, %bb.v ], [ null, %bb.ah ], [ null, %bb.ai ], [ null, %bb.ab ], [ null, %bb.j ], [ %i.ew, %bb.as ], [ null, %bb.x ], [ null, %bb.ad ], [ null, %bb.l ], [ %i.av, %bb.r ], [ null, %bb.n ], [ null, %bb.o ], [ %i.av, %_Py_NewRef.exit.i ], [ %i.ew, %.loopexit ], [ %i.ew, %bb.ar ], [ null, %bb.z ], [ null, %bb.y ], [ null, %bb.af ], [ null, %bb.ae ], [ null, %bb.ap ], [ null, %bb.ao ], [ null, %bb.an ]
  ret ptr %.11
}

end_hunk_0
begin_hunk_1_@array_array_remove:bb.a
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %.val32.i = load i64, ptr %i.a, align 8, !tbaa !44
  %i.b = icmp sgt i64 %.val32.i, 0
  br i1 %i.b, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 40         ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.k, %.lr.ph.i
  %.01633.i = phi i64 [ 0, %.lr.ph.i ], [ %i.aj, %bb.k ] ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !99
  %i.g = tail call ptr %i.f(ptr noundef nonnull %0, i64 noundef %.01633.i) #12, !inline_history !143 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %array_array_remove_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @PyObject_RichCompareBool(ptr noundef nonnull %i.g, ptr noundef %1, i32 noundef 2) #12 ; 2 uses
  %i.j = load i32, ptr %i.g, align 8, !tbaa !23   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.j, -1
  br i1 %.not.i.i, label %bb.d, label %Py_DECREF.exit.i

bb.d:                                             ; preds = %bb.c
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.g, align 8, !tbaa !23
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %Py_DECREF.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #12
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.e, %bb.d, %bb.c
  %i.m = icmp sgt i32 %i.i, 0
  br i1 %i.m, label %bb.f, label %array_del_slice.exit.i

bb.f:                                             ; preds = %Py_DECREF.exit.i
  %i.n = add nuw nsw i64 %.01633.i, 1
  %.val38.i.i = load i64, ptr %i.a, align 8, !tbaa !44 ; 3 uses
  %spec.select.i.i = tail call i64 @llvm.smin.i64(i64 %.01633.i, i64 %.val38.i.i) ; 3 uses
  %spec.select54.i.i = tail call i64 @llvm.smin.i64(i64 %i.n, i64 %.val38.i.i) ; 4 uses
  %i.o = getelementptr i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !54   ; 2 uses
  %i.q = sub i64 %spec.select54.i.i, %spec.select.i.i ; 2 uses
  %.not.i19.i = icmp eq i64 %spec.select54.i.i, %spec.select.i.i
  br i1 %.not.i19.i, label %array_array_remove_impl.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %0, i64 56
  %i.s = load i64, ptr %i.r, align 8, !tbaa !85
  %i.t = icmp sgt i64 %i.s, 0
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr @PyExc_BufferError, align 8, !tbaa !24
  tail call void @PyErr_SetString(ptr noundef %i.u, ptr noundef nonnull @.str.57) #12
  br label %array_del_slice.exit.thread.i

bb.i:                                             ; preds = %bb.g
  %i.v = icmp sgt i64 %i.q, 0
  br i1 %i.v, label %bb.j, label %array_array_remove_impl.exit

bb.j:                                             ; preds = %bb.i
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !82
  %i.z = sext i32 %i.y to i64                     ; 3 uses
  %i.aa = mul i64 %spec.select.i.i, %i.z
  %i.ab = getelementptr i8, ptr %i.p, i64 %i.aa
  %i.ac = mul i64 %spec.select54.i.i, %i.z
  %i.ad = getelementptr i8, ptr %i.p, i64 %i.ac
  %i.ae = sub i64 %.val38.i.i, %spec.select54.i.i
  %i.af = mul i64 %i.ae, %i.z
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.ad, i64 %i.af, i1 false)
  %.val.i.i = load i64, ptr %i.a, align 8, !tbaa !44
  %i.ag = sub i64 %.val.i.i, %i.q
  %i.ah = tail call fastcc i32 @array_resize(ptr noundef nonnull %0, i64 noundef %i.ag)
  %i.ai = icmp eq i32 %i.ah, -1
  br i1 %i.ai, label %array_del_slice.exit.thread.i, label %array_array_remove_impl.exit

array_del_slice.exit.thread.i:                    ; preds = %bb.j, %bb.h
  br label %array_array_remove_impl.exit

array_del_slice.exit.i:                           ; preds = %Py_DECREF.exit.i
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.k, label %array_array_remove_impl.exit

bb.k:                                             ; preds = %array_del_slice.exit.i
  %i.aj = add nuw nsw i64 %.01633.i, 1            ; 2 uses
  %.val.i = load i64, ptr %i.a, align 8, !tbaa !44
  %i.ak = icmp slt i64 %i.aj, %.val.i
  br i1 %i.ak, label %bb.b, label %._crit_edge.i, !llvm.loop !144

._crit_edge.i:                                    ; preds = %bb.k, %bb.a
  %i.al = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !24
  tail call void @PyErr_SetString(ptr noundef %i.al, ptr noundef nonnull @.str.120) #12
  br label %array_array_remove_impl.exit

array_array_remove_impl.exit:                     ; preds = %bb.b, %array_del_slice.exit.i, %bb.f, %bb.i, %bb.j, %array_del_slice.exit.thread.i, %._crit_edge.i
  %.2.i = phi ptr [ @_Py_NoneStruct, %bb.j ], [ null, %._crit_edge.i ], [ null, %array_del_slice.exit.thread.i ], [ @_Py_NoneStruct, %bb.f ], [ @_Py_NoneStruct, %bb.i ], [ null, %array_del_slice.exit.i ], [ null, %bb.b ]
  ret ptr %.2.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef nonnull ptr @array_array_reverse(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #8 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !77
  %i.d = getelementptr i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !82
  %i.f = sext i32 %i.e to i64                     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr i8, ptr %0, i64 16
  %.val19.i = load i64, ptr %i.g, align 8, !tbaa !44 ; 2 uses
  %i.h = icmp sgt i64 %.val19.i, 1
  br i1 %i.h, label %bb.b, label %array_array_reverse_impl.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !54   ; 3 uses
  %i.k = add nsw i64 %.val19.i, -1
  %i.l = mul i64 %i.k, %i.f
  %i.m = getelementptr i8, ptr %i.j, i64 %i.l     ; 2 uses
  %i.n = icmp ult ptr %i.j, %i.m
  br i1 %i.n, label %.lr.ph.i, label %array_array_reverse_impl.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.o = sub nsw i64 0, %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %.021.i = phi ptr [ %i.m, %.lr.ph.i ], [ %i.q, %bb.c ] ; 3 uses
  %.01820.i = phi ptr [ %i.j, %.lr.ph.i ], [ %i.p, %bb.c ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.01820.i, i64 %i.f, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.01820.i, ptr nonnull align 1 %.021.i, i64 %i.f, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.021.i, ptr nonnull align 16 %i.a, i64 %i.f, i1 false)
  %i.p = getelementptr i8, ptr %.01820.i, i64 %i.f ; 2 uses
  %i.q = getelementptr i8, ptr %.021.i, i64 %i.o  ; 2 uses
  %i.r = icmp ult ptr %i.p, %i.q
  br i1 %i.r, label %bb.c, label %array_array_reverse_impl.exit, !llvm.loop !145

array_array_reverse_impl.exit:                    ; preds = %bb.c, %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @array_array_tofile(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %i.b = alloca [1 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.c = icmp eq ptr %4, null
  %i.d = icmp eq i64 %3, 1
  %or.cond3 = and i1 %i.d, %i.c
  %i.e = icmp ne ptr %2, null
  %or.cond5 = and i1 %i.e, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @_PyArg_UnpackKeywords(ptr noundef %2, i64 noundef %3, ptr noundef null, ptr noundef %4, ptr noundef nonnull @array_array_tofile._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.b) #12 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %array_array_tofile_impl.exit, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %2, %bb.a ]
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.i = getelementptr i8, ptr %0, i64 16
  %.val41.i = load i64, ptr %i.i, align 8, !tbaa !44 ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !77
  %i.l = getelementptr i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !82
  %i.n = sext i32 %i.m to i64
  %i.o = mul i64 %.val41.i, %i.n                  ; 3 uses
  %i.p = add i64 %i.o, 65535                      ; 2 uses
  %i.q = sdiv i64 %i.p, 65536
  %i.r = icmp eq i64 %.val41.i, 0
  br i1 %i.r, label %array_array_tofile_impl.exit, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.s = call ptr @PyType_GetModule(ptr noundef %1) #12
  %i.t = getelementptr i8, ptr %0, i64 24
  %i.u = icmp sgt i64 %i.p, 65535
  br i1 %i.u, label %.lr.ph.i, label %array_array_tofile_impl.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.v = getelementptr i8, ptr %i.s, i64 24
  %.val.i = load ptr, ptr %i.v, align 8, !tbaa !10
  %i.w = getelementptr i8, ptr %.val.i, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.d

bb.d:                                             ; preds = %Py_DECREF.exit.i, %.lr.ph.i
  %.03242.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ap, %Py_DECREF.exit.i ] ; 2 uses
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !54
  %i.z = shl nuw nsw i64 %.03242.i, 16            ; 3 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 %i.z
  %i.ab = add nuw nsw i64 %i.z, 65536
  %i.ac = icmp sgt i64 %i.ab, %i.o
  %i.ad = sub nsw i64 %i.o, %i.z
  %spec.select.i = select i1 %i.ac, i64 %i.ad, i64 65536
  %i.ae = call ptr @PyBytes_FromStringAndSize(ptr noundef %i.aa, i64 noundef %spec.select.i) #12 ; 5 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %array_array_tofile_impl.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %i.w, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr %i.h, ptr %i.a, align 16, !tbaa !24
  store ptr %i.ae, ptr %i.x, align 8, !tbaa !24
  %i.ah = call ptr @PyObject_VectorcallMethod(ptr noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef -9223372036854775806, ptr noundef null) #12 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.ai = load i32, ptr %i.ae, align 8, !tbaa !23 ; 2 uses
  %.not.i37.i = icmp sgt i32 %i.ai, -1
  br i1 %.not.i37.i, label %bb.f, label %Py_DECREF.exit38.i

bb.f:                                             ; preds = %bb.e
  %i.aj = add nsw i32 %i.ai, -1                   ; 2 uses
  store i32 %i.aj, ptr %i.ae, align 8, !tbaa !23
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.g, label %Py_DECREF.exit38.i

bb.g:                                             ; preds = %bb.f
  call void @_Py_Dealloc(ptr noundef nonnull %i.ae) #12
  br label %Py_DECREF.exit38.i

Py_DECREF.exit38.i:                               ; preds = %bb.g, %bb.f, %bb.e
  %i.al = icmp eq ptr %i.ah, null
  br i1 %i.al, label %array_array_tofile_impl.exit, label %.critedge.i

.critedge.i:                                      ; preds = %Py_DECREF.exit38.i
  %i.am = load i32, ptr %i.ah, align 8, !tbaa !23 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.am, -1
  br i1 %.not.i.i, label %bb.h, label %Py_DECREF.exit.i

bb.h:                                             ; preds = %.critedge.i
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.ah, align 8, !tbaa !23
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.i, label %Py_DECREF.exit.i

bb.i:                                             ; preds = %bb.h
  call void @_Py_Dealloc(ptr noundef nonnull %i.ah) #12
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.i, %bb.h, %.critedge.i
  %i.ap = add nuw nsw i64 %.03242.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ap, %i.q
  br i1 %exitcond.not.i, label %array_array_tofile_impl.exit, label %bb.d, !llvm.loop !146

array_array_tofile_impl.exit:                     ; preds = %Py_DECREF.exit.i, %Py_DECREF.exit38.i, %bb.d, %bb.c, %.thread, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ @_Py_NoneStruct, %.thread ], [ @_Py_NoneStruct, %bb.c ], [ @_Py_NoneStruct, %Py_DECREF.exit.i ], [ null, %Py_DECREF.exit38.i ], [ null, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @array_array_tolist(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %.val19.i = load i64, ptr %i.a, align 8, !tbaa !44
  %i.b = tail call ptr @PyList_New(i64 noundef %.val19.i) #12 ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %array_array_tolist_impl.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %.val22.i = load i64, ptr %i.a, align 8, !tbaa !44
  %i.d = icmp sgt i64 %.val22.i, 0
  br i1 %i.d, label %.lr.ph.i, label %array_array_tolist_impl.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.e = getelementptr i8, ptr %0, i64 40
  %i.f = getelementptr i8, ptr %i.b, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %.01523.i = phi i64 [ 0, %.lr.ph.i ], [ %i.m, %bb.c ] ; 3 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !77
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !99
  %i.j = tail call ptr %i.i(ptr noundef nonnull %0, i64 noundef %.01523.i) #12, !inline_history !100 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val20.i = load ptr, ptr %i.f, align 8, !tbaa !47
  %i.l = getelementptr [8 x i8], ptr %.val20.i, i64 %.01523.i
  store ptr %i.j, ptr %i.l, align 8, !tbaa !24
  %i.m = add nuw nsw i64 %.01523.i, 1             ; 2 uses
  %.val.i = load i64, ptr %i.a, align 8, !tbaa !44
  %i.n = icmp slt i64 %i.m, %.val.i
  br i1 %i.n, label %bb.b, label %array_array_tolist_impl.exit, !llvm.loop !101

bb.d:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.o, -1
  br i1 %.not.i.i, label %bb.e, label %array_array_tolist_impl.exit

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.b, align 8, !tbaa !23
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %array_array_tolist_impl.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #12
  br label %array_array_tolist_impl.exit

array_array_tolist_impl.exit:                     ; preds = %bb.c, %bb.a, %.preheader.i, %bb.d, %bb.e, %bb.f
  %.0.i = phi ptr [ null, %bb.f ], [ null, %bb.a ], [ null, %bb.d ], [ null, %bb.e ], [ %i.b, %.preheader.i ], [ %i.b, %bb.c ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @array_array_tobytes(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val6.i = load i64, ptr %i.a, align 8, !tbaa !44 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !77
  %i.d = getelementptr i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !82
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = sdiv i64 9223372036854775807, %i.f
  %.not.i = icmp sgt i64 %.val6.i, %i.g
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.j = mul i64 %.val6.i, %i.f
  %i.k = tail call ptr @PyBytes_FromStringAndSize(ptr noundef %i.i, i64 noundef %i.j) #12
  br label %array_array_tobytes_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.l = tail call ptr @PyErr_NoMemory() #12
  br label %array_array_tobytes_impl.exit

array_array_tobytes_impl.exit:                    ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.k, %bb.b ], [ %i.l, %bb.c ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @array_array_tounicode(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !77
  %i.d = load i8, ptr %i.c, align 8, !tbaa !39    ; 2 uses
  %i.e = and i8 %i.d, -3
  %or.cond.not.i = icmp eq i8 %i.e, 117
  br i1 %or.cond.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !24
  tail call void @PyErr_SetString(ptr noundef %i.f, ptr noundef nonnull @.str.75) #12
  br label %array_array_tounicode_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.g = icmp eq i8 %i.d, 117
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.j = getelementptr i8, ptr %0, i64 16
  %.val9.i = load i64, ptr %i.j, align 8, !tbaa !44
  %i.k = tail call ptr @PyUnicode_FromWideChar(ptr noundef %i.i, i64 noundef %.val9.i) #12
  br label %array_array_tounicode_impl.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !6
  %i.l = getelementptr i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !54
  %i.n = getelementptr i8, ptr %0, i64 16
  %.val.i = load i64, ptr %i.n, align 8, !tbaa !44
  %i.o = shl i64 %.val.i, 2
  %i.p = call ptr @PyUnicode_DecodeUTF32(ptr noundef %i.m, i64 noundef %i.o, ptr noundef null, ptr noundef nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %array_array_tounicode_impl.exit

array_array_tounicode_impl.exit:                  ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi ptr [ null, %bb.b ], [ %i.k, %bb.d ], [ %i.p, %bb.e ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @array_array___sizeof__(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.b = getelementptr i8, ptr %.val.i, i64 32
  %.val4.i = load i64, ptr %i.b, align 8, !tbaa !147
  %i.c = getelementptr i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !81
  %i.e = getelementptr i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !77
  %i.g = getelementptr i8, ptr %i.f, i64 4
end_hunk_1
