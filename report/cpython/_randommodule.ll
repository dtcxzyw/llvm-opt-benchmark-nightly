inline.NumInlined: 36
inline.NumDeleted: 18
begin_hunk_0_@_random_Random_getstate:bb.a

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.a, i64 5024
  store ptr %i.n, ptr %i.p, align 8, !tbaa !20
  br label %_random_Random_getstate_impl.exit

.loopexit.i:                                      ; preds = %bb.b, %bb.d
  %i.q = load i32, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.q, -1
  br i1 %.not.i.i, label %bb.f, label %_random_Random_getstate_impl.exit

bb.f:                                             ; preds = %.loopexit.i
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.a, align 8, !tbaa !21
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %_random_Random_getstate_impl.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #6
  br label %_random_Random_getstate_impl.exit

_random_Random_getstate_impl.exit:                ; preds = %bb.a, %bb.e, %.loopexit.i, %bb.f, %bb.g
  %.016.i = phi ptr [ %i.a, %bb.e ], [ null, %bb.a ], [ null, %.loopexit.i ], [ null, %bb.f ], [ null, %bb.g ]
  ret ptr %.016.i
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @_random_Random_setstate(ptr noundef writeonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca [624 x i32], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = getelementptr i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.c = getelementptr i8, ptr %.val.i, i64 168
  %.val27.i = load i64, ptr %i.c, align 8, !tbaa !38
  %i.d = and i64 %.val27.i, 67108864
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !20
  tail call void @PyErr_SetString(ptr noundef %i.e, ptr noundef nonnull @.str.12) #6
  br label %_random_Random_setstate_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call i64 @PyTuple_Size(ptr noundef nonnull %1) #6
  %.not24.i = icmp eq i64 %i.f, 625
  br i1 %.not24.i, label %.preheader.i, label %bb.d

.preheader.i:                                     ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 32
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !20
  tail call void @PyErr_SetString(ptr noundef %i.h, ptr noundef nonnull @.str.13) #6
  br label %_random_Random_setstate_impl.exit

bb.e:                                             ; preds = %bb.g, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %bb.g ] ; 3 uses
  %i.i = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  %i.k = tail call i64 @PyLong_AsUnsignedLong(ptr noundef %i.j) #6 ; 2 uses
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @PyErr_Occurred() #6
  %.not26.i = icmp eq ptr %i.m, null
  br i1 %.not26.i, label %bb.g, label %_random_Random_setstate_impl.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = trunc i64 %i.k to i32
  %i.o = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.i
  store i32 %i.n, ptr %i.o, align 4, !tbaa !6
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 624
  br i1 %exitcond.not.i, label %bb.h, label %bb.e, !llvm.loop !39

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr i8, ptr %1, i64 5024
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !20
  %i.r = tail call i64 @PyLong_AsLong(ptr noundef %i.q) #6 ; 3 uses
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.t = tail call ptr @PyErr_Occurred() #6
  %.not25.i = icmp eq ptr %i.t, null
  br i1 %.not25.i, label %.thread.i, label %_random_Random_setstate_impl.exit

bb.j:                                             ; preds = %bb.h
  %or.cond.i = icmp ugt i64 %i.r, 624
  br i1 %or.cond.i, label %.thread.i, label %.loopexit.loopexit.i

.thread.i:                                        ; preds = %bb.j, %bb.i
  %i.u = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !20
  tail call void @PyErr_SetString(ptr noundef %i.u, ptr noundef nonnull @.str.14) #6
  br label %_random_Random_setstate_impl.exit

.loopexit.loopexit.i:                             ; preds = %bb.j
  %i.v = trunc nuw nsw i64 %i.r to i32
  %i.w = getelementptr i8, ptr %0, i64 16
  store i32 %i.v, ptr %i.w, align 8, !tbaa !36
  %i.x = getelementptr i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2496) %i.x, ptr noundef nonnull align 16 dereferenceable(2496) %i.a, i64 2496, i1 false), !tbaa !6
  br label %_random_Random_setstate_impl.exit

_random_Random_setstate_impl.exit:                ; preds = %bb.f, %bb.b, %bb.d, %bb.i, %.thread.i, %.loopexit.loopexit.i
  %.0.i = phi ptr [ null, %bb.d ], [ null, %bb.b ], [ @_Py_NoneStruct, %.loopexit.loopexit.i ], [ null, %.thread.i ], [ null, %bb.i ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_random_Random_getrandbits(ptr noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = call i32 @_PyLong_UInt64_Converter(ptr noundef %1, ptr noundef nonnull %i.a) #6
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_random_Random_getrandbits_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !tbaa !40   ; 5 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = call ptr @PyLong_FromLong(i64 noundef 0) #6
  br label %_random_Random_getrandbits_impl.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp ult i64 %i.c, 33
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = call fastcc i32 @genrand_uint32(ptr noundef %0)
  %i.h = trunc nuw nsw i64 %i.c to i32
  %i.i = sub nuw nsw i32 32, %i.h
  %i.j = lshr i32 %i.g, %i.i
  %i.k = zext i32 %i.j to i64
  %i.l = call ptr @PyLong_FromUnsignedLong(i64 noundef %i.k) #6
  br label %_random_Random_getrandbits_impl.exit

bb.f:                                             ; preds = %bb.d
  %i.m = add i64 %i.c, -1
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %i.o = shl nuw nsw i64 %i.n, 2
  %i.p = add nuw nsw i64 %i.o, 4                  ; 2 uses
  %i.q = call ptr @PyMem_Malloc(i64 noundef %i.p) #6 ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.g, label %.preheader.i

bb.g:                                             ; preds = %bb.f
  %i.s = call ptr @PyErr_NoMemory() #6            ; 0 uses
  br label %_random_Random_getrandbits_impl.exit

.preheader.i:                                     ; preds = %bb.f, %.preheader.i
  %.02330.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.c, %bb.f ] ; 3 uses
  %.02529.i = phi i64 [ %i.z, %.preheader.i ], [ 0, %bb.f ] ; 3 uses
  %i.t = call fastcc i32 @genrand_uint32(ptr noundef %0)
  %i.u = icmp ult i64 %.02330.i, 32
  %i.v = trunc nuw i64 %.02330.i to i32
  %i.w = sub nuw nsw i32 32, %i.v
  %i.x = select i1 %i.u, i32 %i.w, i32 0
  %.024.i = lshr i32 %i.t, %i.x
  %i.y = getelementptr [4 x i8], ptr %i.q, i64 %.02529.i
  store i32 %.024.i, ptr %i.y, align 4, !tbaa !6
  %i.z = add nuw nsw i64 %.02529.i, 1
  %i.aa = add i64 %.02330.i, -32
  %exitcond.not.i = icmp eq i64 %.02529.i, %i.n
  br i1 %exitcond.not.i, label %bb.h, label %.preheader.i, !llvm.loop !41

bb.h:                                             ; preds = %.preheader.i
  %i.ab = call ptr @_PyLong_FromByteArray(ptr noundef nonnull %i.q, i64 noundef %i.p, i32 noundef 1, i32 noundef 0) #6
  call void @PyMem_Free(ptr noundef nonnull %i.q) #6
  br label %_random_Random_getrandbits_impl.exit

_random_Random_getrandbits_impl.exit:             ; preds = %bb.h, %bb.g, %bb.e, %bb.c, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.e, %bb.c ], [ %i.l, %bb.e ], [ %i.ab, %bb.h ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i32 @genrand_uint32(ptr noundef captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 20         ; 11 uses
  %i.b = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !36   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 623
  br i1 %i.d, label %.preheader43.preheader, label %bb.b

.preheader43.preheader:                           ; preds = %bb.a
  %.pre = load i32, ptr %i.a, align 4, !tbaa !6
  br label %.preheader43

.lr.ph.preheader:                                 ; preds = %.preheader43
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 928
  %.pre51 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !6
  br label %.lr.ph

.preheader43:                                     ; preds = %.preheader43.1, %.preheader43.preheader
  %i.e = phi i32 [ %.pre, %.preheader43.preheader ], [ %i.x, %.preheader43.1 ]
  %indvars.iv = phi i64 [ 0, %.preheader43.preheader ], [ %indvars.iv.next.1, %.preheader43.1 ] ; 4 uses
  %i.f = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.g = and i32 %i.e, -2147483648
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.h = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.next
  %i.i = load i32, ptr %i.h, align 4, !tbaa !6    ; 3 uses
  %i.j = and i32 %i.i, 2147483646
  %i.k = or disjoint i32 %i.j, %i.g
  %i.l = getelementptr i8, ptr %i.f, i64 1588
  %i.m = load i32, ptr %i.l, align 4, !tbaa !6
  %i.n = lshr exact i32 %i.k, 1
  %i.o = and i32 %i.i, 1
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr [4 x i8], ptr @genrand_uint32.mag01, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !6
  %i.s = xor i32 %i.r, %i.m
  %i.t = xor i32 %i.s, %i.n
  store i32 %i.t, ptr %i.f, align 4, !tbaa !6
  %exitcond.not = icmp eq i64 %indvars.iv, 226
  br i1 %exitcond.not, label %.lr.ph.preheader, label %.preheader43.1

.preheader43.1:                                   ; preds = %.preheader43
  %i.u = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.next ; 2 uses
  %i.v = and i32 %i.i, -2147483648
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.w = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.next.1
  %i.x = load i32, ptr %i.w, align 4, !tbaa !6    ; 3 uses
  %i.y = and i32 %i.x, 2147483646
  %i.z = or disjoint i32 %i.y, %i.v
  %i.aa = getelementptr i8, ptr %i.u, i64 1588
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !6
  %i.ac = lshr exact i32 %i.z, 1
  %i.ad = and i32 %i.x, 1
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr [4 x i8], ptr @genrand_uint32.mag01, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !6
  %i.ah = xor i32 %i.ag, %i.ab
  %i.ai = xor i32 %i.ah, %i.ac
  store i32 %i.ai, ptr %i.u, align 4, !tbaa !6
  br label %.preheader43

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %i.aj = phi i32 [ %.pre51, %.lr.ph.preheader ], [ %i.bc, %.lr.ph ]
  %indvars.iv47 = phi i64 [ 227, %.lr.ph.preheader ], [ %indvars.iv.next48.1, %.lr.ph ] ; 3 uses
  %i.ak = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv47 ; 2 uses
  %i.al = and i32 %i.aj, -2147483648
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %i.am = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.next48
  %i.an = load i32, ptr %i.am, align 4, !tbaa !6  ; 3 uses
  %i.ao = and i32 %i.an, 2147483646
  %i.ap = or disjoint i32 %i.ao, %i.al
  %i.aq = getelementptr i8, ptr %i.ak, i64 -908
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !6
  %i.as = lshr exact i32 %i.ap, 1
  %i.at = and i32 %i.an, 1
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr [4 x i8], ptr @genrand_uint32.mag01, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !6
  %i.ax = xor i32 %i.aw, %i.ar
  %i.ay = xor i32 %i.ax, %i.as
  store i32 %i.ay, ptr %i.ak, align 4, !tbaa !6
  %i.az = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.next48 ; 2 uses
  %i.ba = and i32 %i.an, -2147483648
  %indvars.iv.next48.1 = add nuw nsw i64 %indvars.iv47, 2 ; 3 uses
  %i.bb = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.next48.1
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !6  ; 3 uses
  %i.bd = and i32 %i.bc, 2147483646
  %i.be = or disjoint i32 %i.bd, %i.ba
  %i.bf = getelementptr i8, ptr %i.az, i64 -908
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !6
  %i.bh = lshr exact i32 %i.be, 1
  %i.bi = and i32 %i.bc, 1
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr [4 x i8], ptr @genrand_uint32.mag01, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !6
  %i.bm = xor i32 %i.bl, %i.bg
  %i.bn = xor i32 %i.bm, %i.bh
  store i32 %i.bn, ptr %i.az, align 4, !tbaa !6
  %exitcond50.not.1 = icmp eq i64 %indvars.iv.next48.1, 623
  br i1 %exitcond50.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !42

._crit_edge:                                      ; preds = %.lr.ph
  %i.bo = getelementptr i8, ptr %0, i64 2512      ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !6
  %i.bq = and i32 %i.bp, -2147483648
  %i.br = load i32, ptr %i.a, align 4, !tbaa !6   ; 2 uses
  %i.bs = and i32 %i.br, 2147483646
  %i.bt = or disjoint i32 %i.bs, %i.bq
  %i.bu = getelementptr i8, ptr %0, i64 1604
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !6
  %i.bw = lshr exact i32 %i.bt, 1
  %i.bx = and i32 %i.br, 1
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr [4 x i8], ptr @genrand_uint32.mag01, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !6
  %i.cb = xor i32 %i.ca, %i.bv
  %i.cc = xor i32 %i.cb, %i.bw
  store i32 %i.cc, ptr %i.bo, align 8, !tbaa !6
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.cd = phi i32 [ 0, %._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %i.ce = add nsw i32 %i.cd, 1
  store i32 %i.ce, ptr %i.b, align 8, !tbaa !36
  %i.cf = sext i32 %i.cd to i64
  %i.cg = getelementptr [4 x i8], ptr %i.a, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !6  ; 2 uses
  %i.ci = lshr i32 %i.ch, 11
  %i.cj = xor i32 %i.ci, %i.ch                    ; 2 uses
  %i.ck = shl i32 %i.cj, 7
  %i.cl = and i32 %i.ck, -1658038656
  %i.cm = xor i32 %i.cl, %i.cj                    ; 2 uses
  %i.cn = shl i32 %i.cm, 15
  %i.co = and i32 %i.cn, -272236544
  %i.cp = xor i32 %i.co, %i.cm                    ; 2 uses
  %i.cq = lshr i32 %i.cp, 18
  %i.cr = xor i32 %i.cq, %i.cp
  ret i32 %i.cr
}

declare ptr @PyFloat_FromDouble(double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

declare i32 @_PyArg_CheckPositional(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @random_seed(ptr noundef captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca [5 x i32], align 16               ; 7 uses
  %i.c = alloca [624 x i32], align 16             ; 5 uses
  %i.d = icmp eq ptr %1, null
  %i.e = icmp eq ptr %1, @_Py_NoneStruct
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.f = call i32 @_PyOS_URandomNonblock(ptr noundef nonnull %i.c, i64 noundef 2496) #6
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 20         ; 8 uses
  store i32 19650218, ptr %i.h, align 4, !tbaa !6
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %store_forwarded107 = phi i32 [ 19650218, %bb.c ], [ %i.t, %bb.e ] ; 2 uses
  %indvars.iv.i.i.i = phi i64 [ 1, %bb.c ], [ %indvars.iv.next.i.i.i.1, %bb.e ] ; 4 uses
  %i.i = getelementptr [4 x i8], ptr %i.h, i64 %indvars.iv.i.i.i
  %i.j = lshr i32 %store_forwarded107, 30
  %i.k = xor i32 %i.j, %store_forwarded107
  %i.l = mul i32 %i.k, 1812433253
  %i.m = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  %i.n = add i32 %i.l, %i.m                       ; 3 uses
  store i32 %i.n, ptr %i.i, align 4, !tbaa !6
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 624
  br i1 %exitcond.not.i.i.i, label %init_genrand.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr [4 x i8], ptr %i.h, i64 %indvars.iv.next.i.i.i
  %i.p = lshr i32 %i.n, 30
  %i.q = xor i32 %i.p, %i.n
  %i.r = mul i32 %i.q, 1812433253
  %i.s = trunc nuw nsw i64 %indvars.iv.next.i.i.i to i32
  %i.t = add i32 %i.r, %i.s                       ; 2 uses
  store i32 %i.t, ptr %i.o, align 4, !tbaa !6
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2
  br label %bb.d

init_genrand.exit.i.i:                            ; preds = %bb.d
  %i.u = getelementptr i8, ptr %0, i64 16
  store i32 624, ptr %i.u, align 8, !tbaa !36
  %i.v = getelementptr i8, ptr %0, i64 2512       ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %init_genrand.exit.i.i
  %.048.i.i = phi i64 [ 1, %init_genrand.exit.i.i ], [ %.1.i.i, %bb.h ] ; 2 uses
  %.03947.i.i = phi i64 [ 624, %init_genrand.exit.i.i ], [ %i.an, %bb.h ]
  %.04146.i.i = phi i64 [ 0, %init_genrand.exit.i.i ], [ %spec.store.select.i.i, %bb.h ] ; 3 uses
  %i.w = getelementptr [4 x i8], ptr %i.h, i64 %.048.i.i ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !6
  %i.y = getelementptr i8, ptr %i.w, i64 -4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !6    ; 2 uses
  %i.aa = lshr i32 %i.z, 30
  %i.ab = xor i32 %i.aa, %i.z
  %i.ac = mul i32 %i.ab, 1664525
  %i.ad = xor i32 %i.ac, %i.x
  %i.ae = getelementptr [4 x i8], ptr %i.c, i64 %.04146.i.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !6
  %i.ag = trunc i64 %.04146.i.i to i32
  %i.ah = add i32 %i.af, %i.ag
  %i.ai = add i32 %i.ah, %i.ad
  store i32 %i.ai, ptr %i.w, align 4, !tbaa !6
  %i.aj = add i64 %.048.i.i, 1                    ; 2 uses
  %i.ak = add i64 %.04146.i.i, 1                  ; 2 uses
  %i.al = icmp ugt i64 %i.aj, 623
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.am = load i32, ptr %i.v, align 8, !tbaa !6
  store i32 %i.am, ptr %i.h, align 4, !tbaa !6
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1.i.i = phi i64 [ 1, %bb.g ], [ %i.aj, %bb.f ] ; 2 uses
  %.not45.i.i = icmp ult i64 %i.ak, 624
  %spec.store.select.i.i = select i1 %.not45.i.i, i64 %i.ak, i64 0
  %i.an = add nsw i64 %.03947.i.i, -1             ; 2 uses
  %.not.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.f, !llvm.loop !43

.preheader.i.i:                                   ; preds = %bb.h, %bb.j
  %.250.i.i = phi i64 [ %.3.i.i, %bb.j ], [ %.1.i.i, %bb.h ] ; 3 uses
  %.14049.i.i = phi i64 [ %i.bb, %bb.j ], [ 623, %bb.h ]
  %i.ao = getelementptr [4 x i8], ptr %i.h, i64 %.250.i.i ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !6
  %i.aq = getelementptr i8, ptr %i.ao, i64 -4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !6  ; 2 uses
  %i.as = lshr i32 %i.ar, 30
  %i.at = xor i32 %i.as, %i.ar
  %i.au = mul i32 %i.at, 1566083941
  %i.av = xor i32 %i.au, %i.ap
  %i.aw = trunc i64 %.250.i.i to i32
  %i.ax = sub i32 %i.av, %i.aw
  store i32 %i.ax, ptr %i.ao, align 4, !tbaa !6
  %i.ay = add i64 %.250.i.i, 1                    ; 2 uses
  %i.az = icmp ugt i64 %i.ay, 623
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader.i.i
  %i.ba = load i32, ptr %i.v, align 8, !tbaa !6
  store i32 %i.ba, ptr %i.h, align 4, !tbaa !6
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.preheader.i.i
  %.3.i.i = phi i64 [ 1, %bb.i ], [ %i.ay, %.preheader.i.i ]
  %i.bb = add nsw i64 %.14049.i.i, -1             ; 2 uses
  %.not44.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not44.i.i, label %random_seed_urandom.exit, label %.preheader.i.i, !llvm.loop !44

random_seed_urandom.exit:                         ; preds = %bb.j
  store i32 -2147483648, ptr %i.h, align 4, !tbaa !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br label %bb.aq

bb.k:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @PyErr_Clear() #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.bc = call i32 @PyTime_Time(ptr noundef nonnull %i.a) #6
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %random_seed_time_pid.exit.thread, label %bb.l

random_seed_time_pid.exit.thread:                 ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.aq

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.be = load i64, ptr %i.a, align 8, !tbaa !40
  store i64 %i.be, ptr %i.b, align 16
  %i.bf = call i32 @getpid() #6
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.bf, ptr %i.bg, align 8, !tbaa !6
  %i.bh = call i32 @PyTime_Monotonic(ptr noundef nonnull %i.a) #6
  %i.bi = icmp slt i32 %i.bh, 0
  br i1 %i.bi, label %random_seed_time_pid.exit.thread69, label %bb.m

random_seed_time_pid.exit.thread69:               ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.aq

bb.m:                                             ; preds = %bb.l
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !40
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i64 %i.bj, ptr %i.bk, align 4
  %i.bl = getelementptr i8, ptr %0, i64 20        ; 8 uses
  store i32 19650218, ptr %i.bl, align 4, !tbaa !6
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %store_forwarded = phi i32 [ 19650218, %bb.m ], [ %i.bx, %bb.o ] ; 2 uses
  %indvars.iv.i.i.i46 = phi i64 [ 1, %bb.m ], [ %indvars.iv.next.i.i.i47.1, %bb.o ] ; 4 uses
  %i.bm = getelementptr [4 x i8], ptr %i.bl, i64 %indvars.iv.i.i.i46
  %i.bn = lshr i32 %store_forwarded, 30
  %i.bo = xor i32 %i.bn, %store_forwarded
  %i.bp = mul i32 %i.bo, 1812433253
  %i.bq = trunc nuw nsw i64 %indvars.iv.i.i.i46 to i32
  %i.br = add i32 %i.bp, %i.bq                    ; 3 uses
  store i32 %i.br, ptr %i.bm, align 4, !tbaa !6
  %indvars.iv.next.i.i.i47 = add nuw nsw i64 %indvars.iv.i.i.i46, 1 ; 3 uses
  %exitcond.not.i.i.i48 = icmp eq i64 %indvars.iv.next.i.i.i47, 624
  br i1 %exitcond.not.i.i.i48, label %init_genrand.exit.i.i49, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = getelementptr [4 x i8], ptr %i.bl, i64 %indvars.iv.next.i.i.i47
  %i.bt = lshr i32 %i.br, 30
  %i.bu = xor i32 %i.bt, %i.br
  %i.bv = mul i32 %i.bu, 1812433253
  %i.bw = trunc nuw nsw i64 %indvars.iv.next.i.i.i47 to i32
  %i.bx = add i32 %i.bv, %i.bw                    ; 2 uses
  store i32 %i.bx, ptr %i.bs, align 4, !tbaa !6
  %indvars.iv.next.i.i.i47.1 = add nuw nsw i64 %indvars.iv.i.i.i46, 2
  br label %bb.n

init_genrand.exit.i.i49:                          ; preds = %bb.n
  %i.by = getelementptr i8, ptr %0, i64 16
  store i32 624, ptr %i.by, align 8, !tbaa !36
  %i.bz = getelementptr i8, ptr %0, i64 2512      ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %init_genrand.exit.i.i49
  %.048.i.i50 = phi i64 [ 1, %init_genrand.exit.i.i49 ], [ %.1.i.i53, %bb.r ] ; 2 uses
  %.03947.i.i51 = phi i64 [ 624, %init_genrand.exit.i.i49 ], [ %i.cr, %bb.r ]
  %.04146.i.i52 = phi i64 [ 0, %init_genrand.exit.i.i49 ], [ %spec.store.select.i.i55, %bb.r ] ; 3 uses
  %i.ca = getelementptr [4 x i8], ptr %i.bl, i64 %.048.i.i50 ; 3 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !6
  %i.cc = getelementptr i8, ptr %i.ca, i64 -4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !6  ; 2 uses
  %i.ce = lshr i32 %i.cd, 30
  %i.cf = xor i32 %i.ce, %i.cd
  %i.cg = mul i32 %i.cf, 1664525
  %i.ch = xor i32 %i.cg, %i.cb
  %i.ci = getelementptr [4 x i8], ptr %i.b, i64 %.04146.i.i52
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !6
  %i.ck = trunc i64 %.04146.i.i52 to i32
  %i.cl = add i32 %i.cj, %i.ck
  %i.cm = add i32 %i.cl, %i.ch
  store i32 %i.cm, ptr %i.ca, align 4, !tbaa !6
  %i.cn = add i64 %.048.i.i50, 1                  ; 2 uses
  %i.co = add i64 %.04146.i.i52, 1                ; 2 uses
  %i.cp = icmp ugt i64 %i.cn, 623
  br i1 %i.cp, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cq = load i32, ptr %i.bz, align 8, !tbaa !6
  store i32 %i.cq, ptr %i.bl, align 4, !tbaa !6
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.1.i.i53 = phi i64 [ 1, %bb.q ], [ %i.cn, %bb.p ] ; 2 uses
  %.not45.i.i54 = icmp ult i64 %i.co, 5
  %spec.store.select.i.i55 = select i1 %.not45.i.i54, i64 %i.co, i64 0
  %i.cr = add nsw i64 %.03947.i.i51, -1           ; 2 uses
  %.not.i.i56 = icmp eq i64 %i.cr, 0
  br i1 %.not.i.i56, label %.preheader.i.i57, label %bb.p, !llvm.loop !43

.preheader.i.i57:                                 ; preds = %bb.r, %bb.t
  %.250.i.i58 = phi i64 [ %.3.i.i60, %bb.t ], [ %.1.i.i53, %bb.r ] ; 3 uses
  %.14049.i.i59 = phi i64 [ %i.df, %bb.t ], [ 623, %bb.r ]
  %i.cs = getelementptr [4 x i8], ptr %i.bl, i64 %.250.i.i58 ; 3 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !6
  %i.cu = getelementptr i8, ptr %i.cs, i64 -4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !6  ; 2 uses
  %i.cw = lshr i32 %i.cv, 30
  %i.cx = xor i32 %i.cw, %i.cv
  %i.cy = mul i32 %i.cx, 1566083941
  %i.cz = xor i32 %i.cy, %i.ct
  %i.da = trunc i64 %.250.i.i58 to i32
  %i.db = sub i32 %i.cz, %i.da
  store i32 %i.db, ptr %i.cs, align 4, !tbaa !6
  %i.dc = add i64 %.250.i.i58, 1                  ; 2 uses
  %i.dd = icmp ugt i64 %i.dc, 623
  br i1 %i.dd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.preheader.i.i57
  %i.de = load i32, ptr %i.bz, align 8, !tbaa !6
  store i32 %i.de, ptr %i.bl, align 4, !tbaa !6
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.preheader.i.i57
  %.3.i.i60 = phi i64 [ 1, %bb.s ], [ %i.dc, %.preheader.i.i57 ]
  %i.df = add nsw i64 %.14049.i.i59, -1           ; 2 uses
  %.not44.i.i61 = icmp eq i64 %i.df, 0
  br i1 %.not44.i.i61, label %random_seed_time_pid.exit, label %.preheader.i.i57, !llvm.loop !44

random_seed_time_pid.exit:                        ; preds = %bb.t
  store i32 -2147483648, ptr %i.bl, align 4, !tbaa !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.aq

bb.u:                                             ; preds = %bb.a
  %i.dg = getelementptr i8, ptr %1, i64 8
  %.val44 = load ptr, ptr %i.dg, align 8, !tbaa !23 ; 2 uses
  %.not = icmp eq ptr %.val44, @PyLong_Type
  br i1 %.not, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dh = tail call ptr @PyNumber_Absolute(ptr noundef nonnull %1) #6
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  %i.di = getelementptr i8, ptr %.val44, i64 168
  %.val45 = load i64, ptr %i.di, align 8, !tbaa !38
  %i.dj = and i64 %.val45, 16777216
  %.not40 = icmp eq i64 %i.dj, 0
  br i1 %.not40, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dk = getelementptr i8, ptr %0, i64 8
  %.val42 = load ptr, ptr %i.dk, align 8, !tbaa !23
  %i.dl = tail call ptr @PyType_GetModuleByDef(ptr noundef %.val42, ptr noundef nonnull @_randommodule) #6
  %i.dm = getelementptr i8, ptr %i.dl, i64 24
  %.val = load ptr, ptr %i.dm, align 8, !tbaa !10
  %i.dn = getelementptr i8, ptr %.val, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !22
  %i.dp = tail call ptr @PyObject_CallOneArg(ptr noundef %i.do, ptr noundef nonnull %1) #6
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.dq = tail call i64 @PyObject_Hash(ptr noundef nonnull %1) #6 ; 2 uses
  %i.dr = icmp eq i64 %i.dq, -1
  br i1 %i.dr, label %Py_XDECREF.exit, label %.thread

.thread:                                          ; preds = %bb.y
  %i.ds = tail call ptr @PyLong_FromSize_t(i64 noundef %i.dq) #6
  br label %bb.z

bb.z:                                             ; preds = %.thread, %bb.x, %bb.v
  %.1 = phi ptr [ %i.dh, %bb.v ], [ %i.dp, %bb.x ], [ %i.ds, %.thread ] ; 6 uses
  %i.dt = icmp eq ptr %.1, null
  br i1 %i.dt, label %Py_XDECREF.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.du = tail call i64 @_PyLong_NumBits(ptr noundef nonnull %.1) #6 ; 2 uses
  %i.dv = icmp eq i64 %i.du, 0
  br i1 %i.dv, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dw = add i64 %i.du, -1
  %i.dx = sdiv i64 %i.dw, 32
  %i.dy = add nsw i64 %i.dx, 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.dz = phi i64 [ %i.dy, %bb.ab ], [ 1, %bb.aa ] ; 3 uses
  %i.ea = shl nsw i64 %i.dz, 2                    ; 2 uses
  %i.eb = tail call ptr @PyMem_Malloc(i64 noundef %i.ea) #6 ; 6 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ed = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %.thread81

bb.ae:                                            ; preds = %bb.ac
  %i.ee = tail call i32 @_PyLong_AsByteArray(ptr noundef nonnull %.1, ptr noundef nonnull %i.eb, i64 noundef %i.ea, i32 noundef 1, i32 noundef 0, i32 noundef 1) #6
  %i.ef = icmp eq i32 %i.ee, -1
  br i1 %i.ef, label %.thread81, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eg = getelementptr i8, ptr %0, i64 20        ; 8 uses
  store i32 19650218, ptr %i.eg, align 4, !tbaa !6
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %bb.af
  %store_forwarded109 = phi i32 [ 19650218, %bb.af ], [ %i.es, %bb.ah ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ 1, %bb.af ], [ %indvars.iv.next.i.i.1, %bb.ah ] ; 4 uses
  %i.eh = getelementptr [4 x i8], ptr %i.eg, i64 %indvars.iv.i.i
  %i.ei = lshr i32 %store_forwarded109, 30
  %i.ej = xor i32 %i.ei, %store_forwarded109
  %i.ek = mul i32 %i.ej, 1812433253
  %i.el = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.em = add i32 %i.ek, %i.el                    ; 3 uses
  store i32 %i.em, ptr %i.eh, align 4, !tbaa !6
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 624
  br i1 %exitcond.not.i.i, label %init_genrand.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.en = getelementptr [4 x i8], ptr %i.eg, i64 %indvars.iv.next.i.i
  %i.eo = lshr i32 %i.em, 30
  %i.ep = xor i32 %i.eo, %i.em
  %i.eq = mul i32 %i.ep, 1812433253
  %i.er = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  %i.es = add i32 %i.eq, %i.er                    ; 2 uses
  store i32 %i.es, ptr %i.en, align 4, !tbaa !6
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2
  br label %bb.ag

init_genrand.exit.i:                              ; preds = %bb.ag
  %i.et = getelementptr i8, ptr %0, i64 16
  store i32 624, ptr %i.et, align 8, !tbaa !36
  %i.eu = tail call i64 @llvm.umax.i64(i64 range(i64 -288230376151711743, 288230376151711745) %i.dz, i64 624)
  %i.ev = getelementptr i8, ptr %0, i64 2512      ; 2 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ak, %init_genrand.exit.i
  %.048.i = phi i64 [ 1, %init_genrand.exit.i ], [ %.1.i64, %bb.ak ] ; 2 uses
  %.03947.i = phi i64 [ %i.eu, %init_genrand.exit.i ], [ %i.fn, %bb.ak ]
  %.04146.i = phi i64 [ 0, %init_genrand.exit.i ], [ %spec.store.select.i, %bb.ak ] ; 3 uses
  %i.ew = getelementptr [4 x i8], ptr %i.eg, i64 %.048.i ; 3 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !6
  %i.ey = getelementptr i8, ptr %i.ew, i64 -4
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !6  ; 2 uses
  %i.fa = lshr i32 %i.ez, 30
  %i.fb = xor i32 %i.fa, %i.ez
  %i.fc = mul i32 %i.fb, 1664525
  %i.fd = xor i32 %i.fc, %i.ex
  %i.fe = getelementptr [4 x i8], ptr %i.eb, i64 %.04146.i
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !6
  %i.fg = trunc i64 %.04146.i to i32
  %i.fh = add i32 %i.ff, %i.fg
  %i.fi = add i32 %i.fh, %i.fd
  store i32 %i.fi, ptr %i.ew, align 4, !tbaa !6
  %i.fj = add i64 %.048.i, 1                      ; 2 uses
  %i.fk = add i64 %.04146.i, 1                    ; 2 uses
  %i.fl = icmp ugt i64 %i.fj, 623
  br i1 %i.fl, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fm = load i32, ptr %i.ev, align 8, !tbaa !6
  store i32 %i.fm, ptr %i.eg, align 4, !tbaa !6
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.1.i64 = phi i64 [ 1, %bb.aj ], [ %i.fj, %bb.ai ] ; 2 uses
  %.not45.i = icmp ult i64 %i.fk, %i.dz
  %spec.store.select.i = select i1 %.not45.i, i64 %i.fk, i64 0
  %i.fn = add i64 %.03947.i, -1                   ; 2 uses
  %.not.i = icmp eq i64 %i.fn, 0
  br i1 %.not.i, label %.preheader.i, label %bb.ai, !llvm.loop !43

.preheader.i:                                     ; preds = %bb.ak, %bb.am
  %.250.i = phi i64 [ %.3.i, %bb.am ], [ %.1.i64, %bb.ak ] ; 3 uses
  %.14049.i = phi i64 [ %i.gb, %bb.am ], [ 623, %bb.ak ]
  %i.fo = getelementptr [4 x i8], ptr %i.eg, i64 %.250.i ; 3 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !6
  %i.fq = getelementptr i8, ptr %i.fo, i64 -4
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !6  ; 2 uses
  %i.fs = lshr i32 %i.fr, 30
  %i.ft = xor i32 %i.fs, %i.fr
  %i.fu = mul i32 %i.ft, 1566083941
  %i.fv = xor i32 %i.fu, %i.fp
  %i.fw = trunc i64 %.250.i to i32
  %i.fx = sub i32 %i.fv, %i.fw
  store i32 %i.fx, ptr %i.fo, align 4, !tbaa !6
  %i.fy = add i64 %.250.i, 1                      ; 2 uses
  %i.fz = icmp ugt i64 %i.fy, 623
  br i1 %i.fz, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.preheader.i
  %i.ga = load i32, ptr %i.ev, align 8, !tbaa !6
  store i32 %i.ga, ptr %i.eg, align 4, !tbaa !6
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.preheader.i
  %.3.i = phi i64 [ 1, %bb.al ], [ %i.fy, %.preheader.i ]
  %i.gb = add nsw i64 %.14049.i, -1               ; 2 uses
  %.not44.i = icmp eq i64 %i.gb, 0
  br i1 %.not44.i, label %bb.an, label %.preheader.i, !llvm.loop !44

bb.an:                                            ; preds = %bb.am
  store i32 -2147483648, ptr %i.eg, align 4, !tbaa !6
  br label %.thread81

.thread81:                                        ; preds = %bb.an, %bb.ae, %bb.ad
  %.03188 = phi i32 [ 0, %bb.an ], [ -1, %bb.ad ], [ -1, %bb.ae ] ; 3 uses
  %i.gc = load i32, ptr %.1, align 8, !tbaa !21   ; 2 uses
  %.not.i.i66 = icmp sgt i32 %i.gc, -1
  br i1 %.not.i.i66, label %bb.ao, label %Py_XDECREF.exit

bb.ao:                                            ; preds = %.thread81
  %i.gd = add nsw i32 %i.gc, -1                   ; 2 uses
  store i32 %i.gd, ptr %.1, align 8, !tbaa !21
  %i.ge = icmp eq i32 %i.gd, 0
  br i1 %i.ge, label %bb.ap, label %Py_XDECREF.exit

bb.ap:                                            ; preds = %bb.ao
  tail call void @_Py_Dealloc(ptr noundef nonnull %.1) #6
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.y, %bb.z, %.thread81, %bb.ao, %bb.ap
  %.03179 = phi i32 [ %.03188, %bb.ap ], [ -1, %bb.y ], [ %.03188, %.thread81 ], [ %.03188, %bb.ao ], [ -1, %bb.z ]
  %.03478 = phi ptr [ %i.eb, %bb.ap ], [ null, %bb.y ], [ %i.eb, %.thread81 ], [ %i.eb, %bb.ao ], [ null, %bb.z ]
  tail call void @PyMem_Free(ptr noundef %.03478) #6
  br label %bb.aq

bb.aq:                                            ; preds = %random_seed_urandom.exit, %random_seed_time_pid.exit, %random_seed_time_pid.exit.thread69, %random_seed_time_pid.exit.thread, %Py_XDECREF.exit
  %.0 = phi i32 [ -1, %random_seed_time_pid.exit.thread69 ], [ -1, %random_seed_time_pid.exit.thread ], [ %.03179, %Py_XDECREF.exit ], [ 0, %random_seed_time_pid.exit ], [ 0, %random_seed_urandom.exit ]
  ret i32 %.0
}

declare void @PyErr_Clear() local_unnamed_addr #1

declare ptr @PyNumber_Absolute(ptr noundef) local_unnamed_addr #1

declare ptr @PyType_GetModuleByDef(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyObject_CallOneArg(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @PyObject_Hash(ptr noundef) local_unnamed_addr #1

declare ptr @PyLong_FromSize_t(i64 noundef) local_unnamed_addr #1

declare i64 @_PyLong_NumBits(ptr noundef) local_unnamed_addr #1

declare ptr @PyMem_Malloc(i64 noundef) local_unnamed_addr #1

declare ptr @PyErr_NoMemory() local_unnamed_addr #1

declare i32 @_PyLong_AsByteArray(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #1

declare i32 @_PyOS_URandomNonblock(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @PyTime_Time(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #5

declare i32 @PyTime_Monotonic(ptr noundef) local_unnamed_addr #1

declare ptr @PyTuple_New(i64 noundef) local_unnamed_addr #1

declare ptr @PyLong_FromUnsignedLong(i64 noundef) local_unnamed_addr #1

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @PyTuple_Size(ptr noundef) local_unnamed_addr #1

declare i64 @PyLong_AsUnsignedLong(ptr noundef) local_unnamed_addr #1

declare ptr @PyErr_Occurred() local_unnamed_addr #1

declare i64 @PyLong_AsLong(ptr noundef) local_unnamed_addr #1

declare i32 @_PyLong_UInt64_Converter(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_PyLong_FromByteArray(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @_PyArg_NoKeywords(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !14, i64 24}
!11 = !{!"", !12, i64 0, !15, i64 16, !14, i64 24, !15, i64 32, !15, i64 40, !16, i64 48, !17, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96}
!12 = !{!"_object", !8, i64 0, !13, i64 8}
!13 = !{!"p1 _ZTS11_typeobject", !14, i64 0}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!"p1 _ZTS7_object", !14, i64 0}
!16 = !{!"_Bool", !8, i64 0}
!17 = !{!"long", !8, i64 0}
!18 = !{!19, !15, i64 0}
!19 = !{!"", !15, i64 0, !15, i64 8}
!20 = !{!15, !15, i64 0}
!21 = !{!8, !8, i64 0}
!22 = !{!19, !15, i64 8}
!23 = !{!12, !13, i64 8}
!24 = !{!25, !14, i64 296}
!25 = !{!"_typeobject", !26, i64 0, !27, i64 24, !17, i64 32, !17, i64 40, !14, i64 48, !17, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !14, i64 160, !17, i64 168, !27, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !17, i64 208, !14, i64 216, !14, i64 224, !28, i64 232, !29, i64 240, !30, i64 248, !13, i64 256, !15, i64 264, !14, i64 272, !14, i64 280, !17, i64 288, !14, i64 296, !14, i64 304, !14, i64 312, !14, i64 320, !14, i64 328, !15, i64 336, !15, i64 344, !15, i64 352, !14, i64 360, !15, i64 368, !14, i64 376, !7, i64 384, !14, i64 392, !14, i64 400, !8, i64 408, !31, i64 410}
!26 = !{!"PyVarObject", !12, i64 0, !17, i64 16}
!27 = !{!"p1 omnipotent char", !14, i64 0}
!28 = !{!"p1 _ZTS11PyMethodDef", !14, i64 0}
!29 = !{!"p1 _ZTS11PyMemberDef", !14, i64 0}
!30 = !{!"p1 _ZTS11PyGetSetDef", !14, i64 0}
!31 = !{!"short", !8, i64 0}
!32 = !{!26, !17, i64 16}
!33 = distinct !{null}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!37, !7, i64 16}
!37 = !{!"", !12, i64 0, !7, i64 16, !8, i64 20}
!38 = !{!25, !17, i64 168}
!39 = distinct !{!39, !35}
!40 = !{!17, !17, i64 0}
!41 = distinct !{!41, !35}
!42 = distinct !{!42, !35}
!43 = distinct !{!43, !35}
!44 = distinct !{!44, !35}
end_hunk_0
