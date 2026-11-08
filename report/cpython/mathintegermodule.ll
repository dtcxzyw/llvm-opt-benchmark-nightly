Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/mathintegermodule?download=true
inline.NumInlined: 33
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@math_integer_gcd:bb.a
  br i1 %i.o, label %bb.j, label %math_integer_gcd_impl.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.i) #6
  br label %math_integer_gcd_impl.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %Py_DECREF.exit54.i
  %.0287.i = phi i64 [ %i.ai, %Py_DECREF.exit54.i ], [ 1, %.preheader.i ] ; 2 uses
  %.0386.i = phi ptr [ %.139.i, %Py_DECREF.exit54.i ], [ %i.i, %.preheader.i ] ; 8 uses
  %i.p = getelementptr [8 x i8], ptr %1, i64 %.0287.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !46
  %i.r = tail call ptr @_PyNumber_Index(ptr noundef %i.q) #6 ; 8 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.k, label %bb.n

bb.k:                                             ; preds = %.lr.ph.i
  %i.t = load i32, ptr %.0386.i, align 8, !tbaa !47 ; 2 uses
  %.not.i53.i = icmp sgt i32 %i.t, -1
  br i1 %.not.i53.i, label %bb.l, label %math_integer_gcd_impl.exit

bb.l:                                             ; preds = %bb.k
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %.0386.i, align 8, !tbaa !47
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.m, label %math_integer_gcd_impl.exit

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0386.i) #6
  br label %math_integer_gcd_impl.exit

bb.n:                                             ; preds = %.lr.ph.i
  %i.w = icmp eq ptr %.0386.i, getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14328)
  br i1 %i.w, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.x = load i32, ptr %i.r, align 8, !tbaa !47   ; 2 uses
  %.not.i51.i = icmp sgt i32 %i.x, -1
  br i1 %.not.i51.i, label %bb.p, label %Py_DECREF.exit54.i

bb.p:                                             ; preds = %bb.o
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  store i32 %i.y, ptr %i.r, align 8, !tbaa !47
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.q, label %Py_DECREF.exit54.i

bb.q:                                             ; preds = %bb.p
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.r) #6
  br label %Py_DECREF.exit54.i

bb.r:                                             ; preds = %bb.n
  %i.aa = tail call ptr @_PyLong_GCD(ptr noundef %.0386.i, ptr noundef nonnull %i.r) #6 ; 2 uses
  %i.ab = load i32, ptr %.0386.i, align 8, !tbaa !47 ; 2 uses
  %.not.i49.i = icmp sgt i32 %i.ab, -1
  br i1 %.not.i49.i, label %bb.s, label %Py_DECREF.exit50.i

bb.s:                                             ; preds = %bb.r
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ac, ptr %.0386.i, align 8, !tbaa !47
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.t, label %Py_DECREF.exit50.i

bb.t:                                             ; preds = %bb.s
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0386.i) #6
  br label %Py_DECREF.exit50.i

Py_DECREF.exit50.i:                               ; preds = %bb.t, %bb.s, %bb.r
  %i.ae = load i32, ptr %i.r, align 8, !tbaa !47  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ae, -1
  br i1 %.not.i.i, label %bb.u, label %Py_DECREF.exit.i

bb.u:                                             ; preds = %Py_DECREF.exit50.i
  %i.af = add nsw i32 %i.ae, -1                   ; 2 uses
  store i32 %i.af, ptr %i.r, align 8, !tbaa !47
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.v, label %Py_DECREF.exit.i

bb.v:                                             ; preds = %bb.u
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.r) #6
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.v, %bb.u, %Py_DECREF.exit50.i
  %i.ah = icmp eq ptr %i.aa, null
  br i1 %i.ah, label %math_integer_gcd_impl.exit, label %Py_DECREF.exit54.i

Py_DECREF.exit54.i:                               ; preds = %Py_DECREF.exit.i, %bb.q, %bb.p, %bb.o
  %.139.i = phi ptr [ %i.aa, %Py_DECREF.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14328), %bb.o ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14328), %bb.p ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14328), %bb.q ] ; 2 uses
  %i.ai = add nuw nsw i64 %.0287.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ai, %2
  br i1 %exitcond.not.i, label %math_integer_gcd_impl.exit, label %.lr.ph.i, !llvm.loop !61

math_integer_gcd_impl.exit:                       ; preds = %Py_DECREF.exit.i, %Py_DECREF.exit54.i, %bb.d, %bb.e, %bb.f, %.preheader.i, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %.5.i = phi ptr [ %i.f, %bb.d ], [ %i.g, %bb.e ], [ %i.l, %bb.j ], [ null, %bb.f ], [ %i.l, %bb.h ], [ %i.l, %bb.i ], [ null, %bb.k ], [ null, %bb.m ], [ null, %bb.l ], [ %i.i, %.preheader.i ], [ %.139.i, %Py_DECREF.exit54.i ], [ null, %Py_DECREF.exit.i ]
  ret ptr %.5.i
}

; Function Attrs: nounwind uwtable
define internal ptr @math_integer_isqrt(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 !guid !66 {
bb.a:
  %i.a = tail call ptr @_PyNumber_Index(ptr noundef %1) #6 ; 19 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %Py_DECREF.exit116, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val = load i64, ptr %i.c, align 8, !tbaa !53
  %i.d = and i64 %.val, 3
  switch i64 %i.d, label %bb.g [
    i64 2, label %bb.c
    i64 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !46
  tail call void @PyErr_SetString(ptr noundef %i.e, ptr noundef nonnull @.str.13) #6
  br label %Py_XDECREF.exit

bb.d:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %.not.i135 = icmp sgt i32 %i.f, -1
  br i1 %.not.i135, label %bb.e, label %Py_DECREF.exit136

bb.e:                                             ; preds = %bb.d
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.a, align 8, !tbaa !47
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %Py_DECREF.exit136

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #6
  br label %Py_DECREF.exit136

Py_DECREF.exit136:                                ; preds = %bb.d, %bb.e, %bb.f
  %i.i = tail call ptr @PyLong_FromLong(i64 noundef 0) #6
  br label %Py_DECREF.exit116

bb.g:                                             ; preds = %bb.b
  %i.j = tail call i64 @_PyLong_NumBits(ptr noundef nonnull %i.a) #6
  %i.k = add i64 %i.j, -1                         ; 2 uses
  %i.l = sdiv i64 %i.k, 2                         ; 5 uses
  %i.m = icmp slt i64 %i.k, 64
  br i1 %i.m, label %bb.h, label %.preheader

bb.h:                                             ; preds = %bb.g
  %i.n = trunc i64 %i.l to i32
  %i.o = sub i32 31, %i.n                         ; 2 uses
  %i.p = tail call i64 @PyLong_AsUnsignedLongLong(ptr noundef nonnull %i.a) #6 ; 3 uses
  %i.q = load i32, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %.not.i133 = icmp sgt i32 %i.q, -1
  br i1 %.not.i133, label %bb.i, label %Py_DECREF.exit134

bb.i:                                             ; preds = %bb.h
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.a, align 8, !tbaa !47
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.j, label %Py_DECREF.exit134

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #6
  br label %Py_DECREF.exit134

Py_DECREF.exit134:                                ; preds = %bb.h, %bb.i, %bb.j
  %i.t = icmp eq i64 %i.p, -1
  br i1 %i.t, label %bb.k, label %bb.l

bb.k:                                             ; preds = %Py_DECREF.exit134
  %i.u = tail call ptr @PyErr_Occurred() #6
  %.not112 = icmp eq ptr %i.u, null
  br i1 %.not112, label %bb.l, label %Py_DECREF.exit116

bb.l:                                             ; preds = %bb.k, %Py_DECREF.exit134
  %i.v = shl i32 %i.o, 1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.p, %i.w                       ; 3 uses
  %i.y = lshr i64 %i.x, 56
  %i.z = getelementptr i8, ptr @_approximate_isqrt_tab, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 -64
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !47
  %i.ac = zext i8 %i.ab to i32                    ; 2 uses
  %i.ad = shl nuw nsw i32 %i.ac, 7
  %i.ae = lshr i64 %i.x, 41
  %i.af = trunc nuw nsw i64 %i.ae to i32
  %i.ag = udiv i32 %i.af, %i.ac
  %i.ah = add nuw nsw i32 %i.ad, %i.ag            ; 2 uses
  %i.ai = shl i32 %i.ah, 15
  %i.aj = lshr i64 %i.x, 17
  %i.ak = zext nneg i32 %i.ah to i64
  %i.al = udiv i64 %i.aj, %i.ak
  %i.am = trunc i64 %i.al to i32
  %i.an = add i32 %i.ai, %i.am
  %i.ao = lshr i32 %i.an, %i.o                    ; 2 uses
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = mul nuw i64 %i.ap, %i.ap
  %i.ar = icmp ugt i64 %i.aq, %i.p
  %.neg = sext i1 %i.ar to i32
  %i.as = add i32 %i.ao, %.neg
  %i.at = zext i32 %i.as to i64
  %i.au = tail call ptr @PyLong_FromUnsignedLong(i64 noundef %i.at) #6
  br label %Py_DECREF.exit116

.preheader:                                       ; preds = %bb.g, %.preheader
  %indvars.iv = phi i32 [ %indvars.iv.next.a, %.preheader ], [ 0, %bb.g ] ; 2 uses
  %.068 = phi i32 [ %2, %.preheader ], [ 6, %bb.g ] ; 4 uses
  %i.av = zext nneg i32 %.068 to i64
  %i.aw = lshr i64 %i.l, %i.av
  %i.ax = icmp sgt i64 %i.aw, 0
  %2 = add i32 %.068, 1
  %indvars.iv.next.a = add i32 %indvars.iv, 1
  br i1 %i.ax, label %.preheader, label %bb.m, !llvm.loop !64

bb.m:                                             ; preds = %.preheader
  %i.ay = add i32 %.068, -5
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = lshr i64 %i.l, %i.az                    ; 2 uses
  %i.bb = shl nuw nsw i64 %i.l, 1                 ; 2 uses
  %i.bc = add nsw i64 %i.bb, -62
  %i.bd = tail call ptr @_PyLong_Rshift(ptr noundef nonnull %i.a, i64 noundef %i.bc) #6 ; 5 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %Py_XDECREF.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = tail call i64 @PyLong_AsUnsignedLongLong(ptr noundef nonnull %i.bd) #6 ; 4 uses
  %i.bg = load i32, ptr %i.bd, align 8, !tbaa !47 ; 2 uses
  %.not.i131 = icmp sgt i32 %i.bg, -1
  br i1 %.not.i131, label %bb.o, label %Py_DECREF.exit132

bb.o:                                             ; preds = %bb.n
  %i.bh = add nsw i32 %i.bg, -1                   ; 2 uses
  store i32 %i.bh, ptr %i.bd, align 8, !tbaa !47
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.p, label %Py_DECREF.exit132

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.bd) #6
  br label %Py_DECREF.exit132

Py_DECREF.exit132:                                ; preds = %bb.n, %bb.o, %bb.p
  %i.bj = icmp eq i64 %i.bf, -1
  br i1 %i.bj, label %bb.q, label %.split

.split:                                           ; preds = %Py_DECREF.exit132
  %i.bk = lshr i64 %i.bf, 56
  %i.bl = getelementptr i8, ptr @_approximate_isqrt_tab, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bl, i64 -64
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !47
  %i.bo = zext i8 %i.bn to i32                    ; 2 uses
  %i.bp = shl nuw nsw i32 %i.bo, 7
  %i.bq = lshr i64 %i.bf, 41
  %i.br = trunc nuw nsw i64 %i.bq to i32
  %i.bs = udiv i32 %i.br, %i.bo
  %i.bt = add nuw nsw i32 %i.bp, %i.bs            ; 2 uses
  %i.bu = shl i32 %i.bt, 15
  %i.bv = lshr i64 %i.bf, 17
  %i.bw = zext nneg i32 %i.bt to i64
  %i.bx = udiv i64 %i.bv, %i.bw
  %i.by = trunc i64 %i.bx to i32
  %i.bz = add i32 %i.bu, %i.by
  br label %.split95

bb.q:                                             ; preds = %Py_DECREF.exit132
  %i.ca = tail call ptr @PyErr_Occurred() #6
  %.not = icmp eq ptr %i.ca, null
  br i1 %.not, label %.split95, label %Py_XDECREF.exit

.split95:                                         ; preds = %bb.q, %.split
  %phi.call = phi i32 [ %i.bz, %.split ], [ -1, %bb.q ]
  %i.cb = trunc i64 %i.ba to i32
  %i.cc = sub i32 31, %i.cb
  %i.cd = lshr i32 %phi.call, %i.cc
  %i.ce = zext i32 %i.cd to i64
  %i.cf = tail call ptr @PyLong_FromUnsignedLong(i64 noundef %i.ce) #6 ; 3 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %Py_XDECREF.exit, label %bb.r

bb.r:                                             ; preds = %.split95
  %i.ch = add i32 %.068, -6
  %i.ci = icmp sgt i32 %i.ch, -1
  br i1 %i.ci, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.r
  %.neg166 = or disjoint i64 %i.bb, 1
  %i.cj = zext i32 %indvars.iv to i64
  br label %bb.t

bb.s:                                             ; preds = %Py_DECREF.exit126
  %indvars.iv.next175 = add nsw i64 %indvars.iv174, -1
  %i.ck = icmp sgt i64 %indvars.iv174, 0
  br i1 %i.ck, label %bb.t, label %.thread, !llvm.loop !65

bb.t:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv174 = phi i64 [ %i.cj, %.lr.ph ], [ %indvars.iv.next175, %bb.s ] ; 3 uses
  %.069171 = phi i64 [ %i.ba, %.lr.ph ], [ %i.cl, %bb.s ] ; 2 uses
  %.093169 = phi ptr [ %i.cf, %.lr.ph ], [ %i.df, %bb.s ] ; 7 uses
  %i.cl = lshr i64 %i.l, %indvars.iv174           ; 3 uses
  %i.cm = add nsw i64 %.069171, %i.cl
  %i.cn = sub i64 %.neg166, %i.cm
  %i.co = tail call ptr @_PyLong_Rshift(ptr noundef nonnull %i.a, i64 noundef %i.cn) #6 ; 5 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cq = tail call ptr @PyNumber_FloorDivide(ptr noundef nonnull %i.co, ptr noundef nonnull %.093169) #6 ; 8 uses
  %i.cr = load i32, ptr %i.co, align 8, !tbaa !47 ; 2 uses
  %.not.i129 = icmp sgt i32 %i.cr, -1
  br i1 %.not.i129, label %bb.v, label %Py_DECREF.exit130

bb.v:                                             ; preds = %bb.u
  %i.cs = add nsw i32 %i.cr, -1                   ; 2 uses
  store i32 %i.cs, ptr %i.co, align 8, !tbaa !47
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.w, label %Py_DECREF.exit130

bb.w:                                             ; preds = %bb.v
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.co) #6
  br label %Py_DECREF.exit130

Py_DECREF.exit130:                                ; preds = %bb.u, %bb.v, %bb.w
  %i.cu = icmp eq ptr %i.cq, null
  br i1 %i.cu, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %Py_DECREF.exit130
  %i.cv = xor i64 %.069171, -1
  %i.cw = add nsw i64 %i.cl, %i.cv
  %i.cx = tail call ptr @_PyLong_Lshift(ptr noundef nonnull %.093169, i64 noundef %i.cw) #6 ; 5 uses
  %i.cy = load i32, ptr %.093169, align 8, !tbaa !47 ; 2 uses
  %.not.i127 = icmp sgt i32 %i.cy, -1
  br i1 %.not.i127, label %bb.y, label %Py_DECREF.exit128

bb.y:                                             ; preds = %bb.x
  %i.cz = add nsw i32 %i.cy, -1                   ; 2 uses
  store i32 %i.cz, ptr %.093169, align 8, !tbaa !47
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.z, label %Py_DECREF.exit128

bb.z:                                             ; preds = %bb.y
  tail call void @_Py_Dealloc(ptr noundef nonnull %.093169) #6
  br label %Py_DECREF.exit128

Py_DECREF.exit128:                                ; preds = %bb.x, %bb.y, %bb.z
  %i.db = icmp eq ptr %i.cx, null
  br i1 %i.db, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %Py_DECREF.exit128
  %i.dc = load i32, ptr %i.cq, align 8, !tbaa !47 ; 2 uses
  %.not.i125 = icmp sgt i32 %i.dc, -1
  br i1 %.not.i125, label %bb.ab, label %Py_XDECREF.exit

bb.ab:                                            ; preds = %bb.aa
  %i.dd = add nsw i32 %i.dc, -1                   ; 2 uses
  store i32 %i.dd, ptr %i.cq, align 8, !tbaa !47
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %bb.ac, label %Py_XDECREF.exit

bb.ac:                                            ; preds = %bb.ab
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.cq) #6
  br label %Py_XDECREF.exit

bb.ad:                                            ; preds = %Py_DECREF.exit128
  %i.df = tail call ptr @PyNumber_Add(ptr noundef nonnull %i.cx, ptr noundef nonnull %i.cq) #6 ; 3 uses
  %i.dg = load i32, ptr %i.cx, align 8, !tbaa !47 ; 2 uses
  %.not.i123 = icmp sgt i32 %i.dg, -1
  br i1 %.not.i123, label %bb.ae, label %Py_DECREF.exit124

bb.ae:                                            ; preds = %bb.ad
  %i.dh = add nsw i32 %i.dg, -1                   ; 2 uses
  store i32 %i.dh, ptr %i.cx, align 8, !tbaa !47
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.af, label %Py_DECREF.exit124

bb.af:                                            ; preds = %bb.ae
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.cx) #6
  br label %Py_DECREF.exit124

Py_DECREF.exit124:                                ; preds = %bb.ad, %bb.ae, %bb.af
  %i.dj = load i32, ptr %i.cq, align 8, !tbaa !47 ; 2 uses
  %.not.i121 = icmp sgt i32 %i.dj, -1
  br i1 %.not.i121, label %bb.ag, label %Py_DECREF.exit126

bb.ag:                                            ; preds = %Py_DECREF.exit124
  %i.dk = add nsw i32 %i.dj, -1                   ; 2 uses
  store i32 %i.dk, ptr %i.cq, align 8, !tbaa !47
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.ah, label %Py_DECREF.exit126

bb.ah:                                            ; preds = %bb.ag
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.cq) #6
  br label %Py_DECREF.exit126

Py_DECREF.exit126:                                ; preds = %bb.ah, %bb.ag, %Py_DECREF.exit124
  %.not164 = icmp eq ptr %i.df, null
  br i1 %.not164, label %Py_XDECREF.exit, label %bb.s

.thread:                                          ; preds = %bb.s, %bb.r
  %.093.lcssa = phi ptr [ %i.cf, %bb.r ], [ %i.df, %bb.s ] ; 9 uses
  %i.dm = tail call ptr @PyNumber_Multiply(ptr noundef nonnull %.093.lcssa, ptr noundef nonnull %.093.lcssa) #6 ; 5 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %.loopexit, label %bb.ai

bb.ai:                                            ; preds = %.thread
  %i.do = tail call i32 @PyObject_RichCompareBool(ptr noundef nonnull %i.a, ptr noundef nonnull %i.dm, i32 noundef 0) #6
  %i.dp = load i32, ptr %i.dm, align 8, !tbaa !47 ; 2 uses
  %.not.i119 = icmp sgt i32 %i.dp, -1
  br i1 %.not.i119, label %bb.aj, label %Py_DECREF.exit120

bb.aj:                                            ; preds = %bb.ai
  %i.dq = add nsw i32 %i.dp, -1                   ; 2 uses
  store i32 %i.dq, ptr %i.dm, align 8, !tbaa !47
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %bb.ak, label %Py_DECREF.exit120

bb.ak:                                            ; preds = %bb.aj
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.dm) #6
  br label %Py_DECREF.exit120

Py_DECREF.exit120:                                ; preds = %bb.ai, %bb.aj, %bb.ak
  switch i32 %i.do, label %bb.al [
    i32 -1, label %.loopexit
    i32 0, label %Py_DECREF.exit118
  ]

bb.al:                                            ; preds = %Py_DECREF.exit120
  %i.ds = tail call ptr @PyNumber_Subtract(ptr noundef nonnull %.093.lcssa, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14328)) #6 ; 3 uses
  %i.dt = load i32, ptr %.093.lcssa, align 8, !tbaa !47 ; 2 uses
  %.not.i117 = icmp sgt i32 %i.dt, -1
  br i1 %.not.i117, label %bb.am, label %Py_DECREF.exit118

bb.am:                                            ; preds = %bb.al
  %i.du = add nsw i32 %i.dt, -1                   ; 2 uses
  store i32 %i.du, ptr %.093.lcssa, align 8, !tbaa !47
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.an, label %Py_DECREF.exit118

bb.an:                                            ; preds = %bb.am
  tail call void @_Py_Dealloc(ptr noundef nonnull %.093.lcssa) #6
  br label %Py_DECREF.exit118

Py_DECREF.exit118:                                ; preds = %bb.an, %bb.am, %bb.al, %Py_DECREF.exit120
  %.3 = phi ptr [ %.093.lcssa, %Py_DECREF.exit120 ], [ %i.ds, %bb.al ], [ %i.ds, %bb.am ], [ %i.ds, %bb.an ] ; 3 uses
  %i.dw = load i32, ptr %i.a, align 8, !tbaa !47  ; 2 uses
  %.not.i115 = icmp sgt i32 %i.dw, -1
  br i1 %.not.i115, label %bb.ao, label %Py_DECREF.exit116

bb.ao:                                            ; preds = %Py_DECREF.exit118
  %i.dx = add nsw i32 %i.dw, -1                   ; 2 uses
  store i32 %i.dx, ptr %i.a, align 8, !tbaa !47
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %bb.ap, label %Py_DECREF.exit116

bb.ap:                                            ; preds = %bb.ao
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #6
  br label %Py_DECREF.exit116

.loopexit:                                        ; preds = %bb.t, %Py_DECREF.exit130, %.thread, %Py_DECREF.exit120
  %.4.ph = phi ptr [ %.093.lcssa, %Py_DECREF.exit120 ], [ %.093.lcssa, %.thread ], [ %.093169, %Py_DECREF.exit130 ], [ %.093169, %bb.t ] ; 3 uses
  %i.dz = load i32, ptr %.4.ph, align 8, !tbaa !47 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.dz, -1
  br i1 %.not.i.i, label %bb.aq, label %Py_XDECREF.exit

bb.aq:                                            ; preds = %.loopexit
  %i.ea = add nsw i32 %i.dz, -1                   ; 2 uses
  store i32 %i.ea, ptr %.4.ph, align 8, !tbaa !47
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.ar, label %Py_XDECREF.exit

bb.ar:                                            ; preds = %bb.aq
  tail call void @_Py_Dealloc(ptr noundef nonnull %.4.ph) #6
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %Py_DECREF.exit126, %bb.aa, %bb.ab, %bb.ac, %.split95, %bb.q, %bb.m, %bb.c, %.loopexit, %bb.aq, %bb.ar
  %i.ec = load i32, ptr %i.a, align 8, !tbaa !47  ; 2 uses
  %.not.i = icmp sgt i32 %i.ec, -1
  br i1 %.not.i, label %bb.as, label %Py_DECREF.exit116

bb.as:                                            ; preds = %Py_XDECREF.exit
  %i.ed = add nsw i32 %i.ec, -1                   ; 2 uses
  store i32 %i.ed, ptr %i.a, align 8, !tbaa !47
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %bb.at, label %Py_DECREF.exit116

bb.at:                                            ; preds = %bb.as
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #6
  br label %Py_DECREF.exit116
end_hunk_0
