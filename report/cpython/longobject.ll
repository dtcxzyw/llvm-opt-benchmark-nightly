inline.NumInlined: 732
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 46
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_PyLong_AsByteArray:bb.a
  br i1 %.not106, label %.loopexit, label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.loopexit109, %bb.c
  %.str.14.sink = phi ptr [ @.str.13, %bb.c ], [ @.str.14, %.loopexit109 ]
  %i.ck = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.ck, ptr noundef nonnull %.str.14.sink) #16
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph150.prol.loopexit, %.lr.ph150, %.loopexit.sink.split, %bb.p, %.loopexit109, %bb.c, %bb.o
  %.1 = phi i32 [ -1, %bb.c ], [ -1, %.loopexit109 ], [ 0, %bb.p ], [ 0, %bb.o ], [ -1, %.loopexit.sink.split ], [ 0, %.lr.ph150 ], [ 0, %.lr.ph150.prol.loopexit ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -1152921504606846975, 1152921504606846977) i64 @PyLong_AsNativeBytes(ptr noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %.sroa.0 = alloca i64, align 8                  ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.a = icmp eq ptr %0, null
  %i.b = icmp slt i64 %2, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.2, i32 noundef 1286) #16
  br label %Py_DECREF.exit134

bb.c:                                             ; preds = %bb.a
  %i.c = and i32 %3, 3
  %i.d = icmp ne i32 %i.c, 0                      ; 6 uses
  %storemerge.i = zext i1 %i.d to i32
  %i.e = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.f = getelementptr i8, ptr %.val, i64 168
  %.val138 = load i64, ptr %i.f, align 8, !tbaa !35
  %i.g = and i64 %.val138, 16777216
  %.not.not.not = icmp eq i64 %i.g, 0             ; 3 uses
  br i1 %.not.not.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not109 = icmp eq i32 %3, -1
  %i.h = and i32 %3, 16
  %.not110 = icmp eq i32 %i.h, 0
  %or.cond125 = or i1 %.not109, %.not110
  br i1 %or.cond125, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call ptr @_PyNumber_Index(ptr noundef nonnull %0) #16 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %Py_DECREF.exit134, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.k = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  %i.l = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.k, ptr noundef nonnull @.str.12, ptr noundef nonnull %0) #16 ; 0 uses
  br label %Py_DECREF.exit134

bb.g:                                             ; preds = %bb.e, %bb.c
  %.089 = phi ptr [ %0, %bb.c ], [ %i.i, %bb.e ]  ; 11 uses
  %.not111 = icmp ne i32 %3, -1
  %i.m = and i32 %3, 8
  %.not112 = icmp ne i32 %i.m, 0
  %or.cond126.not184 = and i1 %.not111, %.not112
  %.phi.trans.insert = getelementptr i8, ptr %.089, i64 16
  %.089.val.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !25 ; 4 uses
  %i.n = and i64 %.089.val.pre, 3
  %i.o = icmp eq i64 %i.n, 2
  %or.cond183 = select i1 %or.cond126.not184, i1 %i.o, i1 false
  br i1 %or.cond183, label %bb.h, label %._crit_edge172

bb.h:                                             ; preds = %bb.g
  %i.p = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.p, ptr noundef nonnull @.str.15) #16
  br i1 %.not.not.not, label %bb.i, label %Py_DECREF.exit134

bb.i:                                             ; preds = %bb.h
  %i.q = load i32, ptr %.089, align 8, !tbaa !24  ; 2 uses
  %.not.i133 = icmp sgt i32 %i.q, -1
  br i1 %.not.i133, label %bb.j, label %Py_DECREF.exit134

bb.j:                                             ; preds = %bb.i
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %.089, align 8, !tbaa !24
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.k, label %Py_DECREF.exit134

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %.089) #16
  br label %Py_DECREF.exit134

._crit_edge172:                                   ; preds = %bb.g
  %i.t = getelementptr i8, ptr %.089, i64 16
  %i.u = icmp ugt i64 %.089.val.pre, 15
  br i1 %i.u, label %bb.z, label %bb.l

bb.l:                                             ; preds = %._crit_edge172
  %i.v = getelementptr i8, ptr %.089, i64 24
  %.089.val137 = load i32, ptr %i.v, align 8, !tbaa !7
  %i.w = and i64 %.089.val.pre, 3
  %i.x = sub nsw i64 1, %i.w
  %i.y = zext i32 %.089.val137 to i64
  %i.z = mul nsw i64 %i.x, %i.y                   ; 14 uses
  store i64 %i.z, ptr %.sroa.0, align 8, !tbaa !24
  %i.aa = icmp eq i64 %2, 0
  %i.ab = lshr i64 %i.z, 56
  %i.ac = trunc nuw i64 %i.ab to i8
  %i.ad = lshr i64 %i.z, 48
  %i.ae = trunc i64 %i.ad to i8
  %i.af = lshr i64 %i.z, 40
  %i.ag = trunc i64 %i.af to i8
  %i.ah = lshr i64 %i.z, 32
  %i.ai = trunc i64 %i.ah to i8
  %i.aj = lshr i64 %i.z, 24
  %i.ak = trunc i64 %i.aj to i8
  %i.al = lshr i64 %i.z, 16
  %i.am = trunc i64 %i.al to i8
  %i.an = lshr i64 %i.z, 8
  %i.ao = trunc i64 %i.an to i8
  %i.ap = trunc i64 %i.z to i8
  br i1 %i.aa, label %_fits_in_n_bits.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = icmp samesign ult i64 %2, 9
  br i1 %i.aq, label %bb.n, label %bb.x

bb.n:                                             ; preds = %bb.m
  br i1 %i.d, label %bb.o, label %.lr.ph166

.lr.ph166:                                        ; preds = %bb.n
  %i.ar = getelementptr i8, ptr %1, i64 %2        ; 8 uses
  %.sroa.0.0..sroa.0.0. = load i8, ptr %.sroa.0, align 8, !tbaa !24
  %i.as = getelementptr i8, ptr %i.ar, i64 -1
  store i8 %.sroa.0.0..sroa.0.0., ptr %i.as, align 1, !tbaa !24
  %exitcond.not = icmp eq i64 %2, 1
  br i1 %exitcond.not, label %.loopexit, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 8 %.sroa.0, i64 %2, i1 false)
  br label %.loopexit

bb.p:                                             ; preds = %.lr.ph166
  %.sroa.0.1..sroa_idx187 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  %.sroa.0.1..sroa.0.1. = load i8, ptr %.sroa.0.1..sroa_idx187, align 1, !tbaa !24
  %i.at = getelementptr i8, ptr %i.ar, i64 -2
  store i8 %.sroa.0.1..sroa.0.1., ptr %i.at, align 1, !tbaa !24
  %exitcond.not.1 = icmp eq i64 %2, 2
  br i1 %exitcond.not.1, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.0.2..sroa_idx188 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  %.sroa.0.2..sroa.0.2. = load i8, ptr %.sroa.0.2..sroa_idx188, align 2, !tbaa !24
  %i.au = getelementptr i8, ptr %i.ar, i64 -3
  store i8 %.sroa.0.2..sroa.0.2., ptr %i.au, align 1, !tbaa !24
  %exitcond.not.2 = icmp eq i64 %2, 3
  br i1 %exitcond.not.2, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.0.3..sroa_idx189 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 3
  %.sroa.0.3..sroa.0.3. = load i8, ptr %.sroa.0.3..sroa_idx189, align 1, !tbaa !24
  %i.av = getelementptr i8, ptr %i.ar, i64 -4
  store i8 %.sroa.0.3..sroa.0.3., ptr %i.av, align 1, !tbaa !24
  %exitcond.not.3 = icmp eq i64 %2, 4
  br i1 %exitcond.not.3, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.0.4..sroa_idx190 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  %.sroa.0.4..sroa.0.4. = load i8, ptr %.sroa.0.4..sroa_idx190, align 4, !tbaa !24
  %i.aw = getelementptr i8, ptr %i.ar, i64 -5
  store i8 %.sroa.0.4..sroa.0.4., ptr %i.aw, align 1, !tbaa !24
  %exitcond.not.4 = icmp eq i64 %2, 5
  br i1 %exitcond.not.4, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.sroa.0.5..sroa_idx191 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 5
  %.sroa.0.5..sroa.0.5. = load i8, ptr %.sroa.0.5..sroa_idx191, align 1, !tbaa !24
  %i.ax = getelementptr i8, ptr %i.ar, i64 -6
  store i8 %.sroa.0.5..sroa.0.5., ptr %i.ax, align 1, !tbaa !24
  %exitcond.not.5 = icmp eq i64 %2, 6
  br i1 %exitcond.not.5, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.0.6..sroa_idx192 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 6
  %.sroa.0.6..sroa.0.6. = load i8, ptr %.sroa.0.6..sroa_idx192, align 2, !tbaa !24
  %i.ay = getelementptr i8, ptr %i.ar, i64 -7
  store i8 %.sroa.0.6..sroa.0.6., ptr %i.ay, align 1, !tbaa !24
  %exitcond.not.6 = icmp eq i64 %2, 7
  br i1 %exitcond.not.6, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.sroa.0.7..sroa_idx193 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 7
  %.sroa.0.7..sroa.0.7. = load i8, ptr %.sroa.0.7..sroa_idx193, align 1, !tbaa !24
  %i.az = getelementptr i8, ptr %i.ar, i64 -8
  store i8 %.sroa.0.7..sroa.0.7., ptr %i.az, align 1, !tbaa !24
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph166, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.o
  %i.ba = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.bb = icmp eq i64 %2, 8
  br i1 %i.bb, label %_fits_in_n_bits.exit.thread, label %_fits_in_n_bits.exit

_fits_in_n_bits.exit:                             ; preds = %.loopexit
  %i.bc = add nuw nsw i64 %i.ba, 4294967295
  %4 = and i64 %i.bc, 4294967295
  %i.bd = ashr i64 %i.z, %4
  %i.be = add nsw i64 %i.bd, -1
  %i.bf = icmp ult i64 %i.be, -2
  br i1 %i.bf, label %bb.w, label %_fits_in_n_bits.exit.thread

bb.w:                                             ; preds = %_fits_in_n_bits.exit
  %i.bg = icmp sgt i64 %i.z, 0
  %i.bh = lshr i64 %i.z, %i.ba
  %.not = icmp eq i64 %i.bh, 0
  %or.cond157 = select i1 %i.bg, i1 %.not, i1 false
  br i1 %or.cond157, label %_fits_in_n_bits.exit142.thread, label %_fits_in_n_bits.exit.thread

_fits_in_n_bits.exit142.thread:                   ; preds = %bb.w
  %i.bi = and i32 %3, 4
  %.not123 = icmp eq i32 %i.bi, 0
  %i.bj = zext i1 %.not123 to i64
  %spec.select131 = add nuw nsw i64 %2, %i.bj
  br label %_fits_in_n_bits.exit.thread

bb.x:                                             ; preds = %bb.m
  %.lobit = ashr i64 %i.z, 63
  %i.bk = trunc nsw i64 %.lobit to i8             ; 2 uses
  br i1 %i.d, label %bb.y, label %.preheader159

bb.y:                                             ; preds = %bb.x
  store i64 %i.z, ptr %1, align 1
  %i.bl = getelementptr i8, ptr %1, i64 8
  %i.bm = add nsw i64 %2, -8
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bl, i8 %i.bk, i64 %i.bm, i1 false)
  br label %_fits_in_n_bits.exit.thread

.preheader159:                                    ; preds = %bb.x
  %i.bn = add nsw i64 %2, -8                      ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.bk, i64 %i.bn, i1 false), !tbaa !24
  %scevgep = getelementptr i8, ptr %1, i64 %i.bn  ; 8 uses
  %i.bo = getelementptr i8, ptr %scevgep, i64 1
  store i8 %i.ac, ptr %scevgep, align 1, !tbaa !24
  %i.bp = getelementptr i8, ptr %scevgep, i64 2
  store i8 %i.ae, ptr %i.bo, align 1, !tbaa !24
  %i.bq = getelementptr i8, ptr %scevgep, i64 3
  store i8 %i.ag, ptr %i.bp, align 1, !tbaa !24
  %i.br = getelementptr i8, ptr %scevgep, i64 4
  store i8 %i.ai, ptr %i.bq, align 1, !tbaa !24
  %i.bs = getelementptr i8, ptr %scevgep, i64 5
  store i8 %i.ak, ptr %i.br, align 1, !tbaa !24
  %i.bt = getelementptr i8, ptr %scevgep, i64 6
  store i8 %i.am, ptr %i.bs, align 1, !tbaa !24
  %i.bu = getelementptr i8, ptr %scevgep, i64 7
  store i8 %i.ao, ptr %i.bt, align 1, !tbaa !24
  store i8 %i.ap, ptr %i.bu, align 1, !tbaa !24
  br label %_fits_in_n_bits.exit.thread

bb.z:                                             ; preds = %._crit_edge172
  %.not156 = icmp eq i64 %2, 0                    ; 2 uses
  br i1 %.not156, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bv = tail call i32 @_PyLong_AsByteArray(ptr noundef nonnull %.089, ptr noundef %1, i64 noundef %2, i32 noundef %storemerge.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.val.i.pre = load i64, ptr %i.t, align 8, !tbaa !25
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.val.i = phi i64 [ %.val.i.pre, %bb.aa ], [ %.089.val.pre, %bb.z ] ; 2 uses
  %i.bw = lshr i64 %.val.i, 3                     ; 2 uses
  %.not.i143 = icmp eq i64 %i.bw, 0
  br i1 %.not.i143, label %_PyLong_NumBits.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bx = getelementptr i8, ptr %.089, i64 24
  %i.by = add nsw i64 %i.bw, -1                   ; 2 uses
  %i.bz = getelementptr [4 x i8], ptr %i.bx, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !7
  %i.cb = mul i64 %i.by, 30
  %i.cc = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ca, i1 false)
  %i.cd = sub nuw nsw i32 32, %i.cc
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = add i64 %i.cb, %i.ce
  br label %_PyLong_NumBits.exit

_PyLong_NumBits.exit:                             ; preds = %bb.ab, %bb.ac
  %.0.i144 = phi i64 [ %i.cf, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %i.cg = sdiv i64 %.0.i144, 8                    ; 2 uses
  %i.ch = add nsw i64 %i.cg, 1                    ; 4 uses
  br i1 %.not156, label %_fits_in_n_bits.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %_PyLong_NumBits.exit
  %i.ci = icmp eq i64 %i.cg, %2
  %i.cj = and i64 %.0.i144, 7
  %i.ck = icmp eq i64 %i.cj, 0
  %or.cond129 = and i1 %i.ci, %i.ck
  br i1 %or.cond129, label %bb.ae, label %_fits_in_n_bits.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.cl = and i64 %.val.i, 3
  %i.cm = icmp eq i64 %i.cl, 2
  %i.cn = add nsw i64 %2, -1                      ; 2 uses
  br i1 %i.cm, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.co = select i1 %i.d, i32 128, i32 0
  %i.cp = select i1 %i.d, i32 0, i32 128
  %i.cq = load i8, ptr %1, align 1, !tbaa !24
  %i.cr = zext i8 %i.cq to i32
  %i.cs = icmp eq i32 %i.cp, %i.cr                ; 2 uses
  %i.ct = icmp ne i64 %2, 1
  %i.cu = select i1 %i.ct, i1 %i.cs, i1 false
  br i1 %i.cu, label %.peel.next, label %._crit_edge

._crit_edge:                                      ; preds = %.peel.next, %bb.af
  %.188.in.lcssa = phi i1 [ %i.cs, %bb.af ], [ %.188.in, %.peel.next ]
  %spec.select = select i1 %.188.in.lcssa, i64 %2, i64 %i.ch
  br label %_fits_in_n_bits.exit.thread

.peel.next:                                       ; preds = %bb.af, %.peel.next
  %.085168 = phi i64 [ %i.da, %.peel.next ], [ 1, %bb.af ] ; 2 uses
  %.pn = phi ptr [ %.086167, %.peel.next ], [ %1, %bb.af ]
  %.086167 = getelementptr i8, ptr %.pn, i64 1    ; 2 uses
  %i.cv = icmp slt i64 %.085168, %i.cn
  %i.cw = load i8, ptr %.086167, align 1, !tbaa !24 ; 2 uses
  %i.cx = zext i8 %i.cw to i32
  %i.cy = icmp eq i32 %i.co, %i.cx
  %i.cz = icmp eq i8 %i.cw, 0
  %.188.in = select i1 %i.cv, i1 %i.cz, i1 %i.cy  ; 2 uses
  %i.da = add nuw nsw i64 %.085168, 1             ; 2 uses
  %i.db = icmp slt i64 %i.da, %2
  %i.dc = select i1 %i.db, i1 %.188.in, i1 false
  br i1 %i.dc, label %.peel.next, label %._crit_edge, !llvm.loop !61

bb.ag:                                            ; preds = %bb.ae
  %i.dd = select i1 %i.d, i64 %i.cn, i64 0
  %i.de = getelementptr i8, ptr %1, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !24
  %.not115 = icmp sgt i8 %i.df, -1
  br i1 %.not115, label %_fits_in_n_bits.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dg = and i32 %3, 4
  %.not116 = icmp eq i32 %i.dg, 0
  %i.dh = zext i1 %.not116 to i64
  %spec.select132 = add nuw nsw i64 %2, %i.dh
  br label %_fits_in_n_bits.exit.thread

_fits_in_n_bits.exit.thread:                      ; preds = %.preheader159, %.loopexit, %bb.ah, %_fits_in_n_bits.exit142.thread, %_PyLong_NumBits.exit, %bb.ad, %._crit_edge, %bb.ag, %bb.y, %_fits_in_n_bits.exit, %bb.l, %bb.w
  %.3 = phi i64 [ 8, %bb.l ], [ 8, %bb.y ], [ %2, %_fits_in_n_bits.exit ], [ %spec.select131, %_fits_in_n_bits.exit142.thread ], [ 8, %.loopexit ], [ 8, %bb.w ], [ %spec.select132, %bb.ah ], [ %i.ch, %bb.ag ], [ %spec.select, %._crit_edge ], [ %i.ch, %bb.ad ], [ %i.ch, %_PyLong_NumBits.exit ], [ 8, %.preheader159 ] ; 4 uses
  br i1 %.not.not.not, label %bb.ai, label %Py_DECREF.exit134

bb.ai:                                            ; preds = %_fits_in_n_bits.exit.thread
  %i.di = load i32, ptr %.089, align 8, !tbaa !24 ; 2 uses
  %.not.i = icmp sgt i32 %i.di, -1
  br i1 %.not.i, label %bb.aj, label %Py_DECREF.exit134

bb.aj:                                            ; preds = %bb.ai
  %i.dj = add nsw i32 %i.di, -1                   ; 2 uses
  store i32 %i.dj, ptr %.089, align 8, !tbaa !24
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.ak, label %Py_DECREF.exit134

bb.ak:                                            ; preds = %bb.aj
  tail call void @_Py_Dealloc(ptr noundef nonnull %.089) #16
  br label %Py_DECREF.exit134

Py_DECREF.exit134:                                ; preds = %bb.f, %bb.e, %bb.h, %_fits_in_n_bits.exit.thread, %bb.i, %bb.j, %bb.k, %bb.ai, %bb.aj, %bb.ak, %bb.b
  %.1 = phi i64 [ -1, %bb.b ], [ -1, %bb.f ], [ -1, %bb.e ], [ -1, %bb.h ], [ %.3, %_fits_in_n_bits.exit.thread ], [ -1, %bb.k ], [ -1, %bb.i ], [ -1, %bb.j ], [ %.3, %bb.ai ], [ %.3, %bb.aj ], [ %.3, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret i64 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define dso_local ptr @PyLong_FromNativeBytes(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.2, i32 noundef 1463) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.a = and i32 %2, 3
  %i.b = icmp ne i32 %i.a, 0
  %storemerge.i = zext i1 %i.b to i32
  %i.c = icmp eq i32 %2, -1
  %i.d = lshr i32 %2, 2
  %.lobit = and i32 %i.d, 1
  %i.e = xor i32 %.lobit, 1
  %i.f = select i1 %i.c, i32 1, i32 %i.e
  %i.g = tail call ptr @_PyLong_FromByteArray(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %storemerge.i, i32 noundef %i.f)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi ptr [ %i.g, %bb.c ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyLong_FromUnsignedNativeBytes(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
end_hunk_0
begin_hunk_1_@_PyCompactLong_Subtract:bb.a
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val3 = load i64, ptr %i.a, align 8, !tbaa !25
  %i.b = getelementptr i8, ptr %0, i64 24
  %.val4 = load i32, ptr %i.b, align 8, !tbaa !7
  %i.c = and i64 %.val3, 3
  %i.d = sub nsw i64 1, %i.c
  %i.e = zext i32 %.val4 to i64
  %i.f = mul nsw i64 %i.d, %i.e
  %i.g = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.g, align 8, !tbaa !25
  %i.h = getelementptr i8, ptr %1, i64 24
  %.val2 = load i32, ptr %i.h, align 8, !tbaa !7
  %i.i = and i64 %.val, 3
  %.neg = add nsw i64 %i.i, -1
  %i.j = zext i32 %.val2 to i64
  %.neg5 = mul nsw i64 %.neg, %i.j
  %i.k = add nsw i64 %.neg5, %i.f                 ; 5 uses
  %i.l = add nsw i64 %i.k, 5
  %or.cond.i = icmp ult i64 %i.l, 1030
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14136), i64 %i.k
  %i.n = getelementptr i8, ptr %i.m, i64 160
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = or disjoint i64 %i.o, 1
  br label %medium_from_stwodigits.exit

bb.c:                                             ; preds = %bb.a
  %i.q = add nsw i64 %i.k, -1073741824
  %i.r = icmp ult i64 %i.q, -2147483647
  br i1 %i.r, label %medium_from_stwodigits.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !14   ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 11200    ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !16   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %bb.e, label %_PyFreeList_Pop.exit.i

_PyFreeList_Pop.exit.i:                           ; preds = %bb.d
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !19
  store ptr %i.w, ptr %i.u, align 8, !tbaa !16
  %i.x = getelementptr i8, ptr %i.t, i64 11208    ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !20
  %i.z = add i64 %i.y, -1
  store i64 %i.z, ptr %i.x, align 8, !tbaa !20
  br label %_PyObject_Init.exit.i

bb.e:                                             ; preds = %bb.d
  %i.aa = tail call ptr @PyObject_Malloc(i64 noundef 32) #16 ; 4 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %medium_from_stwodigits.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr i8, ptr %i.aa, i64 8
  store ptr @PyLong_Type, ptr %i.ac, align 8, !tbaa !21
  %i.ad = load i32, ptr @PyLong_Type, align 8, !tbaa !24 ; 2 uses
  %i.ae = icmp ugt i32 %i.ad, -1073741825
  br i1 %i.ae, label %_PyObject_Init.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = add nuw i32 %i.ad, 1
  store i32 %i.af, ptr @PyLong_Type, align 8, !tbaa !24
  br label %_PyObject_Init.exit.i

_PyObject_Init.exit.i:                            ; preds = %bb.g, %bb.f, %_PyFreeList_Pop.exit.i
  %.sink.i = phi ptr [ %i.v, %_PyFreeList_Pop.exit.i ], [ %i.aa, %bb.f ], [ %i.aa, %bb.g ] ; 4 uses
  tail call void @_Py_NewReference(ptr noundef nonnull %.sink.i) #16
  %i.ag = icmp slt i64 %i.k, 0                    ; 2 uses
  %i.ah = trunc nsw i64 %i.k to i32               ; 2 uses
  %i.ai = sub nsw i32 0, %i.ah
  %i.aj = select i1 %i.ag, i32 %i.ai, i32 %i.ah
  %i.ak = select i1 %i.ag, i64 10, i64 8
  %i.al = getelementptr i8, ptr %.sink.i, i64 16
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !25
  %i.am = getelementptr i8, ptr %.sink.i, i64 24
  store i32 %i.aj, ptr %i.am, align 8, !tbaa !7
  %i.an = ptrtoint ptr %.sink.i to i64
  br label %medium_from_stwodigits.exit

medium_from_stwodigits.exit:                      ; preds = %bb.b, %bb.c, %bb.e, %_PyObject_Init.exit.i
  %.sroa.0.1.i = phi i64 [ %i.p, %bb.b ], [ 1, %bb.c ], [ %i.an, %_PyObject_Init.exit.i ], [ 1, %bb.e ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: nounwind uwtable
define dso_local i64 @_PyCompactLong_Multiply(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val3 = load i64, ptr %i.a, align 8, !tbaa !25
  %i.b = getelementptr i8, ptr %0, i64 24
  %.val4 = load i32, ptr %i.b, align 8, !tbaa !7
  %i.c = and i64 %.val3, 3
  %i.d = sub nsw i64 1, %i.c
  %i.e = zext i32 %.val4 to i64
  %i.f = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.f, align 8, !tbaa !25
  %i.g = getelementptr i8, ptr %1, i64 24
  %.val2 = load i32, ptr %i.g, align 8, !tbaa !7
  %i.h = and i64 %.val, 3
  %i.i = sub nsw i64 1, %i.h
  %i.j = zext i32 %.val2 to i64
  %i.k = mul nsw i64 %i.d, %i.e
  %i.l = mul i64 %i.k, %i.j
  %i.m = mul i64 %i.l, %i.i                       ; 5 uses
  %i.n = add i64 %i.m, 5
  %or.cond.i = icmp ult i64 %i.n, 1030
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14136), i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 160
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = or disjoint i64 %i.q, 1
  br label %medium_from_stwodigits.exit

bb.c:                                             ; preds = %bb.a
  %i.s = add i64 %i.m, -1073741824
  %i.t = icmp ult i64 %i.s, -2147483647
  br i1 %i.t, label %medium_from_stwodigits.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !14   ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 11200    ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !16   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %bb.e, label %_PyFreeList_Pop.exit.i

_PyFreeList_Pop.exit.i:                           ; preds = %bb.d
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !19
  store ptr %i.y, ptr %i.w, align 8, !tbaa !16
  %i.z = getelementptr i8, ptr %i.v, i64 11208    ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !20
  %i.ab = add i64 %i.aa, -1
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !20
  br label %_PyObject_Init.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call ptr @PyObject_Malloc(i64 noundef 32) #16 ; 4 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %medium_from_stwodigits.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr i8, ptr %i.ac, i64 8
  store ptr @PyLong_Type, ptr %i.ae, align 8, !tbaa !21
  %i.af = load i32, ptr @PyLong_Type, align 8, !tbaa !24 ; 2 uses
  %i.ag = icmp ugt i32 %i.af, -1073741825
  br i1 %i.ag, label %_PyObject_Init.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = add nuw i32 %i.af, 1
  store i32 %i.ah, ptr @PyLong_Type, align 8, !tbaa !24
  br label %_PyObject_Init.exit.i

_PyObject_Init.exit.i:                            ; preds = %bb.g, %bb.f, %_PyFreeList_Pop.exit.i
  %.sink.i = phi ptr [ %i.x, %_PyFreeList_Pop.exit.i ], [ %i.ac, %bb.f ], [ %i.ac, %bb.g ] ; 4 uses
  tail call void @_Py_NewReference(ptr noundef nonnull %.sink.i) #16
  %i.ai = icmp slt i64 %i.m, 0                    ; 2 uses
  %i.aj = trunc nsw i64 %i.m to i32               ; 2 uses
  %i.ak = sub nsw i32 0, %i.aj
  %i.al = select i1 %i.ai, i32 %i.ak, i32 %i.aj
  %i.am = select i1 %i.ai, i64 10, i64 8
  %i.an = getelementptr i8, ptr %.sink.i, i64 16
  store i64 %i.am, ptr %i.an, align 8, !tbaa !25
  %i.ao = getelementptr i8, ptr %.sink.i, i64 24
  store i32 %i.al, ptr %i.ao, align 8, !tbaa !7
  %i.ap = ptrtoint ptr %.sink.i to i64
  br label %medium_from_stwodigits.exit

medium_from_stwodigits.exit:                      ; preds = %bb.b, %bb.c, %bb.e, %_PyObject_Init.exit.i
  %.sroa.0.1.i = phi i64 [ %i.r, %bb.b ], [ 1, %bb.c ], [ %i.ap, %_PyObject_Init.exit.i ], [ 1, %bb.e ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyLong_Rshift(ptr nofree noundef captures(ret: address, provenance) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !25  ; 4 uses
  %i.b = and i64 %.val, 3                         ; 3 uses
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %long_rshift1.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sdiv i64 %1, 30                          ; 2 uses
  %i.e = srem i64 %1, 30                          ; 3 uses
  %i.f = icmp ugt i64 %.val, 15
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 24
  %.val73.i = load i32, ptr %i.g, align 8, !tbaa !7
  %i.h = sub nsw i64 1, %i.b
  %i.i = zext i32 %.val73.i to i64
  %i.j = mul nsw i64 %i.h, %i.i
  %.off = add i64 %1, 29
  %i.k = icmp ult i64 %.off, 59
  %2 = and i64 %i.e, 4294967295
  %i.l = select i1 %i.k, i64 %2, i64 30
  %i.m = ashr i64 %i.j, %i.l
  %i.n = tail call fastcc ptr @_PyLong_FromSTwoDigits(i64 noundef %i.m), !inline_history !219
  br label %long_rshift1.exit

bb.d:                                             ; preds = %bb.b
  %i.o = trunc nsw i64 %i.e to i32
  %i.p = icmp eq i64 %i.b, 2                      ; 3 uses
  %i.q = lshr i64 %.val, 3                        ; 6 uses
  %i.r = icmp eq i64 %i.e, 0
  %or.cond.i = and i1 %i.r, %i.p
  br i1 %or.cond.i, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %.off6 = add i64 %1, 29
  %i.s = icmp ult i64 %.off6, 59
  br i1 %i.s, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.t, align 8, !tbaa !21
  %.not.i.i = icmp eq ptr %.val.i.i, @PyLong_Type
  br i1 %.not.i.i, label %bb.g, label %.thread.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.v = icmp ugt i32 %i.u, -1073741825
  br i1 %i.v, label %long_rshift1.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = add nuw i32 %i.u, 1
  store i32 %i.w, ptr %0, align 8, !tbaa !24
  br label %long_rshift1.exit

.thread.i.i.i:                                    ; preds = %bb.f
  %i.x = tail call fastcc ptr @long_alloc(i64 noundef %i.q), !inline_history !220 ; 4 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %long_rshift1.exit, label %bb.i

bb.i:                                             ; preds = %.thread.i.i.i
  %i.z = and i64 %.val, -6
  %i.aa = getelementptr i8, ptr %i.x, i64 16
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !25
  %i.ab = getelementptr i8, ptr %i.x, i64 24
  %i.ac = getelementptr i8, ptr %0, i64 24
  %i.ad = shl nuw nsw i64 %i.q, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ab, ptr readonly align 8 %i.ac, i64 %i.ad, i1 false)
  br label %long_rshift1.exit

bb.j:                                             ; preds = %bb.e
  %i.ae = add nsw i64 %i.d, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.d
  %.064.i = phi i32 [ 30, %bb.j ], [ %i.o, %bb.d ] ; 2 uses
  %.063.i = phi i64 [ %i.ae, %bb.j ], [ %i.d, %bb.d ] ; 10 uses
  %i.af = sub nsw i64 %i.q, %.063.i               ; 4 uses
  %i.ag = icmp slt i64 %i.af, 1
  br i1 %i.ag, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ah = sext i1 %i.p to i64
  %i.ai = tail call ptr @PyLong_FromLong(i64 noundef %i.ah), !inline_history !219
  br label %long_rshift1.exit

bb.m:                                             ; preds = %bb.k
  %i.aj = tail call fastcc ptr @long_alloc(i64 noundef %i.af), !inline_history !219 ; 6 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %long_rshift1.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = sub nsw i32 30, %.064.i                 ; 2 uses
  %i.am = zext nneg i32 %i.al to i64              ; 3 uses
  %i.an = getelementptr i8, ptr %0, i64 24        ; 6 uses
  %i.ao = getelementptr [4 x i8], ptr %i.an, i64 %.063.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !7
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  br i1 %i.p, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ar = shl i64 %i.af, 3
  %i.as = or disjoint i64 %i.ar, 2
  %i.at = getelementptr i8, ptr %i.aj, i64 16
  store i64 %i.as, ptr %i.at, align 8, !tbaa !25
  %i.au = icmp sgt i64 %.063.i, 0
  br i1 %i.au, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.o
  %min.iters.check = icmp ult i64 %.063.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader26, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %.063.i, 9223372036854775800   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi23 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ay, %vector.body ]
  %i.av = getelementptr [4 x i8], ptr %i.an, i64 %index ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 16
  %wide.load = load <4 x i32>, ptr %i.av, align 4, !tbaa !7
  %wide.load24 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !7
  %i.ax = or <4 x i32> %wide.load, %vec.phi       ; 2 uses
  %i.ay = or <4 x i32> %wide.load24, %vec.phi23   ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !221

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.ay, %i.ax
  %i.ba = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.063.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %.lr.ph.i.preheader26

.lr.ph.i.preheader26:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.06079.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  %.06178.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.ba, %middle.block ]
  br label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i, %middle.block
  %.lcssa22 = phi i32 [ %i.ba, %middle.block ], [ %i.bj, %.lr.ph.i ]
  %i.bb = icmp ne i32 %.lcssa22, 0
  %i.bc = zext i1 %i.bb to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.o
  %.061.lcssa.i = phi i32 [ 0, %bb.o ], [ %i.bc, %._crit_edge.loopexit.i ]
  %i.bd = lshr i32 1073741823, %i.al
  %i.be = add nuw nsw i32 %.061.lcssa.i, %i.bd
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = add nuw nsw i64 %i.bf, %i.aq
  br label %bb.p

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader26, %.lr.ph.i
  %.06079.i = phi i64 [ %i.bk, %.lr.ph.i ], [ %.06079.i.ph, %.lr.ph.i.preheader26 ] ; 2 uses
  %.06178.i = phi i32 [ %i.bj, %.lr.ph.i ], [ %.06178.i.ph, %.lr.ph.i.preheader26 ]
  %i.bh = getelementptr [4 x i8], ptr %i.an, i64 %.06079.i
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !7
  %i.bj = or i32 %i.bi, %.06178.i                 ; 2 uses
  %i.bk = add nuw nsw i64 %.06079.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bk, %.063.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !222

bb.p:                                             ; preds = %._crit_edge.i, %bb.n
  %.065.i = phi i64 [ %i.bg, %._crit_edge.i ], [ %i.aq, %bb.n ]
  %i.bl = zext nneg i32 %.064.i to i64
  %i.bm = lshr i64 %.065.i, %i.bl                 ; 3 uses
  %.080.i = add nsw i64 %.063.i, 1                ; 3 uses
  %i.bn = icmp slt i64 %.080.i, %i.q
  br i1 %i.bn, label %.lr.ph85.i, label %._crit_edge86.i

.lr.ph85.i:                                       ; preds = %bb.p
  %i.bo = getelementptr i8, ptr %i.aj, i64 24     ; 3 uses
  %i.bp = xor i64 %.063.i, -1
  %i.bq = add nsw i64 %i.q, %i.bp                 ; 3 uses
  %i.br = add nsw i64 %i.q, -2
  %xtraiter = and i64 %i.bq, 1
  %i.bs = icmp eq i64 %i.br, %.063.i
  br i1 %i.bs, label %.epil.preheader, label %.lr.ph85.i.new

.lr.ph85.i.new:                                   ; preds = %.lr.ph85.i
  %unroll_iter = and i64 %i.bq, -2
  br label %bb.s

._crit_edge86.i.loopexit.unr-lcssa:               ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge86.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge86.i.loopexit.unr-lcssa, %.lr.ph85.i
  %.083.i.epil.init = phi i64 [ %.080.i, %.lr.ph85.i ], [ %.0.i.1, %._crit_edge86.i.loopexit.unr-lcssa ]
  %.05982.i.epil.init = phi i64 [ 0, %.lr.ph85.i ], [ %i.dj, %._crit_edge86.i.loopexit.unr-lcssa ]
  %.181.i.epil.init = phi i64 [ %i.bm, %.lr.ph85.i ], [ %i.di, %._crit_edge86.i.loopexit.unr-lcssa ]
  %lcmp.mod31 = trunc i64 %i.bq to i1
  tail call void @llvm.assume(i1 %lcmp.mod31)
  %i.bt = getelementptr [4 x i8], ptr %i.an, i64 %.083.i.epil.init
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !7
  %i.bv = zext i32 %i.bu to i64
  %i.bw = shl i64 %i.bv, %i.am
  %i.bx = add i64 %i.bw, %.181.i.epil.init        ; 2 uses
  %i.by = trunc i64 %i.bx to i32
  %i.bz = and i32 %i.by, 1073741823
  %i.ca = getelementptr [4 x i8], ptr %i.bo, i64 %.05982.i.epil.init
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !7
  %i.cb = lshr i64 %i.bx, 30
  br label %._crit_edge86.i

._crit_edge86.i:                                  ; preds = %.epil.preheader, %._crit_edge86.i.loopexit.unr-lcssa, %bb.p
  %.1.lcssa.i = phi i64 [ %i.bm, %bb.p ], [ %i.di, %._crit_edge86.i.loopexit.unr-lcssa ], [ %i.cb, %.epil.preheader ]
  %i.cc = trunc i64 %.1.lcssa.i to i32
  %i.cd = getelementptr i8, ptr %i.aj, i64 20     ; 2 uses
  %i.ce = getelementptr [4 x i8], ptr %i.cd, i64 %i.af
  store i32 %i.cc, ptr %i.ce, align 4, !tbaa !7
  %i.cf = getelementptr i8, ptr %i.aj, i64 16     ; 2 uses
  %.val.i75.i = load i64, ptr %i.cf, align 8, !tbaa !25 ; 2 uses
  %i.cg = lshr i64 %.val.i75.i, 3                 ; 3 uses
  %.not1315.i.i = icmp eq i64 %i.cg, 0
  br i1 %.not1315.i.i, label %long_normalize.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge86.i, %bb.q
  %.016.i.i = phi i64 [ %i.ck, %bb.q ], [ %i.cg, %._crit_edge86.i ] ; 4 uses
  %i.ch = getelementptr [4 x i8], ptr %i.cd, i64 %.016.i.i
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !7
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.q, label %.critedge.i.i

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.ck = add nsw i64 %.016.i.i, -1               ; 2 uses
  %.not13.i.i = icmp eq i64 %i.ck, 0
  br i1 %.not13.i.i, label %.critedge.thread.thread.sink.split.i.i, label %.lr.ph.i.i, !llvm.loop !50

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %.not.i76.i = icmp eq i64 %.016.i.i, %i.cg
  br i1 %.not.i76.i, label %long_normalize.exit.i, label %bb.r

bb.r:                                             ; preds = %.critedge.i.i
  %i.cl = shl nuw i64 %.016.i.i, 3
  %i.cm = and i64 %.val.i75.i, 3
  %i.cn = or disjoint i64 %i.cl, %i.cm
  br label %.critedge.thread.thread.sink.split.i.i

.critedge.thread.thread.sink.split.i.i:           ; preds = %bb.q, %bb.r
  %.sink.i.i = phi i64 [ %i.cn, %bb.r ], [ 1, %bb.q ]
  store i64 %.sink.i.i, ptr %i.cf, align 8, !tbaa !25
  br label %long_normalize.exit.i

long_normalize.exit.i:                            ; preds = %.critedge.thread.thread.sink.split.i.i, %.critedge.i.i, %._crit_edge86.i
  %i.co = tail call fastcc ptr @maybe_small_long(ptr noundef nonnull %i.aj), !inline_history !219
  br label %long_rshift1.exit

bb.s:                                             ; preds = %bb.s, %.lr.ph85.i.new
  %.083.i = phi i64 [ %.080.i, %.lr.ph85.i.new ], [ %.0.i.1, %bb.s ] ; 3 uses
  %.05982.i = phi i64 [ 0, %.lr.ph85.i.new ], [ %i.dj, %bb.s ] ; 3 uses
  %.181.i = phi i64 [ %i.bm, %.lr.ph85.i.new ], [ %i.di, %bb.s ]
  %niter = phi i64 [ 0, %.lr.ph85.i.new ], [ %niter.next.1, %bb.s ]
  %i.cp = getelementptr [4 x i8], ptr %i.an, i64 %.083.i
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !7
  %i.cr = zext i32 %i.cq to i64
  %i.cs = shl i64 %i.cr, %i.am
  %i.ct = add i64 %i.cs, %.181.i                  ; 2 uses
  %i.cu = trunc i64 %i.ct to i32
  %i.cv = and i32 %i.cu, 1073741823
  %i.cw = getelementptr [4 x i8], ptr %i.bo, i64 %.05982.i
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !7
  %i.cx = lshr i64 %i.ct, 30
  %i.cy = getelementptr [4 x i8], ptr %i.an, i64 %.083.i
  %i.cz = getelementptr i8, ptr %i.cy, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !7
  %i.db = zext i32 %i.da to i64
  %i.dc = shl i64 %i.db, %i.am
  %i.dd = add i64 %i.dc, %i.cx                    ; 2 uses
  %i.de = trunc i64 %i.dd to i32
  %i.df = and i32 %i.de, 1073741823
  %i.dg = getelementptr [4 x i8], ptr %i.bo, i64 %.05982.i
  %i.dh = getelementptr i8, ptr %i.dg, i64 4
  store i32 %i.df, ptr %i.dh, align 4, !tbaa !7
  %i.di = lshr i64 %i.dd, 30                      ; 3 uses
  %i.dj = add nuw nsw i64 %.05982.i, 2            ; 2 uses
  %.0.i.1 = add nsw i64 %.083.i, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge86.i.loopexit.unr-lcssa, label %bb.s, !llvm.loop !223

long_rshift1.exit:                                ; preds = %long_normalize.exit.i, %bb.m, %bb.l, %bb.i, %.thread.i.i.i, %bb.h, %bb.g, %bb.c, %bb.a
  %.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14296), %bb.a ], [ %i.n, %bb.c ], [ null, %bb.m ], [ %i.ai, %bb.l ], [ %i.co, %long_normalize.exit.i ], [ %0, %bb.h ], [ %0, %bb.g ], [ null, %.thread.i.i.i ], [ %i.x, %bb.i ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyLong_Lshift(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @long_lshift_int64(ptr noundef %0, i64 noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @long_lshift_int64(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val = load i64, ptr %i.a, align 8, !tbaa !25  ; 4 uses
  %i.b = and i64 %.val, 3                         ; 2 uses
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %long_lshift1.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sdiv i64 %1, 30                          ; 3 uses
  %i.e = srem i64 %1, 30                          ; 3 uses
  %i.f = add i64 %1, -30
  %i.g = icmp ult i64 %i.f, -59
  %i.h = icmp ugt i64 %.val, 15
  %or.cond.i = or i1 %i.g, %i.h
  br i1 %or.cond.i, label %._crit_edge62.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %0, i64 24
  %.val51.i = load i32, ptr %i.i, align 8, !tbaa !7
  %i.j = sub nsw i64 1, %i.b
  %i.k = zext i32 %.val51.i to i64
  %i.l = mul nsw i64 %i.j, %i.k
  %.pn.i = and i64 %i.e, 4294967295
  %i.m = shl i64 %i.l, %.pn.i
  %i.n = tail call fastcc ptr @_PyLong_FromSTwoDigits(i64 noundef %i.m), !inline_history !224
  br label %long_lshift1.exit

._crit_edge62.i:                                  ; preds = %bb.b
  %i.o = lshr i64 %.val, 3                        ; 5 uses
  %i.p = add nsw i64 %i.o, %i.d                   ; 2 uses
  %.not48.i = icmp eq i64 %i.e, 0                 ; 2 uses
  %i.q = add nsw i64 %i.p, 1                      ; 2 uses
  %spec.select.i = select i1 %.not48.i, i64 %i.p, i64 %i.q
  %i.r = tail call fastcc ptr @long_alloc(i64 noundef %spec.select.i), !inline_history !224 ; 8 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %long_lshift1.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge62.i
  %.val52.i = load i64, ptr %i.a, align 8, !tbaa !25
  %i.t = and i64 %.val52.i, 3
  %i.u = icmp eq i64 %i.t, 2
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr i8, ptr %i.r, i64 16       ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !25   ; 2 uses
  %i.x = and i64 %i.w, 3
  %i.y = sub nsw i64 2, %i.x
  %i.z = and i64 %i.w, -8
  %i.aa = and i64 %i.y, 4294967295
  %i.ab = or i64 %i.aa, %i.z
  store i64 %i.ab, ptr %i.v, align 8, !tbaa !25
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ac = icmp sgt i64 %1, 29
  br i1 %i.ac, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.ad = getelementptr i8, ptr %i.r, i64 24
  %i.ae = shl nuw nsw i64 %i.d, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ad, i8 0, i64 %i.ae, i1 false), !tbaa !7
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i, %bb.f
  %.043.lcssa.i = phi i64 [ 0, %bb.f ], [ %i.d, %.lr.ph.i ] ; 2 uses
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph58.i

.lr.ph58.i:                                       ; preds = %.preheader.i
  %i.af = getelementptr i8, ptr %0, i64 24        ; 3 uses
  %2 = and i64 %i.e, 4294967295                   ; 3 uses
  %i.ag = getelementptr i8, ptr %i.r, i64 24      ; 3 uses
  %i.ah = icmp eq i64 %i.o, 1
  br i1 %i.ah, label %.epil.preheader, label %.lr.ph58.i.new

.lr.ph58.i.new:                                   ; preds = %.lr.ph58.i
  %unroll_iter = and i64 %i.o, 2305843009213693950
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph58.i.new
  %.04157.i = phi i64 [ 0, %.lr.ph58.i.new ], [ %i.bb, %bb.g ]
  %.04256.i = phi i64 [ 0, %.lr.ph58.i.new ], [ %i.bd, %bb.g ] ; 3 uses
  %.155.i = phi i64 [ %.043.lcssa.i, %.lr.ph58.i.new ], [ %i.bc, %bb.g ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph58.i.new ], [ %niter.next.1, %bb.g ]
  %i.ai = getelementptr [4 x i8], ptr %i.af, i64 %.04256.i
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !7
  %i.ak = zext i32 %i.aj to i64
  %i.al = shl i64 %i.ak, %2
  %i.am = or i64 %i.al, %.04157.i                 ; 2 uses
  %i.an = trunc i64 %i.am to i32
  %i.ao = and i32 %i.an, 1073741823
  %i.ap = getelementptr [4 x i8], ptr %i.ag, i64 %.155.i
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !7
  %i.aq = lshr i64 %i.am, 30
  %i.ar = getelementptr [4 x i8], ptr %i.af, i64 %.04256.i
  %i.as = getelementptr i8, ptr %i.ar, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !7
  %i.au = zext i32 %i.at to i64
  %i.av = shl i64 %i.au, %2
  %i.aw = or i64 %i.av, %i.aq                     ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 1073741823
  %i.az = getelementptr [4 x i8], ptr %i.ag, i64 %.155.i
  %i.ba = getelementptr i8, ptr %i.az, i64 4
  store i32 %i.ay, ptr %i.ba, align 4, !tbaa !7
  %i.bb = lshr i64 %i.aw, 30                      ; 3 uses
  %i.bc = add nuw nsw i64 %.155.i, 2              ; 2 uses
  %i.bd = add nuw nsw i64 %.04256.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %bb.g, !llvm.loop !225

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %bb.g
  %i.be = and i64 %.val, 8
  %lcmp.mod.not = icmp eq i64 %i.be, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph58.i
  %.04157.i.epil.init = phi i64 [ 0, %.lr.ph58.i ], [ %i.bb, %._crit_edge.loopexit.i.unr-lcssa ]
  %.04256.i.epil.init = phi i64 [ 0, %.lr.ph58.i ], [ %i.bd, %._crit_edge.loopexit.i.unr-lcssa ]
  %.155.i.epil.init = phi i64 [ %.043.lcssa.i, %.lr.ph58.i ], [ %i.bc, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod17 = trunc i64 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod17)
  %i.bf = getelementptr [4 x i8], ptr %i.af, i64 %.04256.i.epil.init
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !7
  %i.bh = zext i32 %i.bg to i64
  %i.bi = shl i64 %i.bh, %2
  %i.bj = or i64 %i.bi, %.04157.i.epil.init       ; 2 uses
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = and i32 %i.bk, 1073741823
  %i.bm = getelementptr [4 x i8], ptr %i.ag, i64 %.155.i.epil.init
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !7
  %i.bn = lshr i64 %i.bj, 30
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.bb, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.bn, %.epil.preheader ]
  %i.bo = trunc i64 %.lcssa to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.041.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.bo, %._crit_edge.loopexit.i ]
  br i1 %.not48.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  %i.bp = getelementptr i8, ptr %i.r, i64 20
  %i.bq = getelementptr [4 x i8], ptr %i.bp, i64 %i.q
  store i32 %.041.lcssa.i, ptr %i.bq, align 4, !tbaa !7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i
  %i.br = getelementptr i8, ptr %i.r, i64 16      ; 2 uses
  %.val.i.i = load i64, ptr %i.br, align 8, !tbaa !25 ; 2 uses
  %i.bs = lshr i64 %.val.i.i, 3                   ; 3 uses
  %.not1315.i.i = icmp eq i64 %i.bs, 0
  br i1 %.not1315.i.i, label %long_normalize.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i
  %i.bt = getelementptr i8, ptr %i.r, i64 20
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i
  %.016.i.i = phi i64 [ %i.bs, %.lr.ph.i.i ], [ %i.bx, %bb.k ] ; 4 uses
  %i.bu = getelementptr [4 x i8], ptr %i.bt, i64 %.016.i.i
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !7
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.k, label %.critedge.i.i

bb.k:                                             ; preds = %bb.j
  %i.bx = add nsw i64 %.016.i.i, -1               ; 2 uses
  %.not13.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not13.i.i, label %.critedge.thread.thread.sink.split.i.i, label %bb.j, !llvm.loop !50

.critedge.i.i:                                    ; preds = %bb.j
  %.not.i.i = icmp eq i64 %.016.i.i, %i.bs
  br i1 %.not.i.i, label %long_normalize.exit.i, label %bb.l

bb.l:                                             ; preds = %.critedge.i.i
  %i.by = shl nuw i64 %.016.i.i, 3
  %i.bz = and i64 %.val.i.i, 3
  %i.ca = or disjoint i64 %i.by, %i.bz
  br label %.critedge.thread.thread.sink.split.i.i

.critedge.thread.thread.sink.split.i.i:           ; preds = %bb.k, %bb.l
  %.sink.i.i = phi i64 [ %i.ca, %bb.l ], [ 1, %bb.k ]
  store i64 %.sink.i.i, ptr %i.br, align 8, !tbaa !25
  br label %long_normalize.exit.i

long_normalize.exit.i:                            ; preds = %.critedge.thread.thread.sink.split.i.i, %.critedge.i.i, %bb.i
  %i.cb = tail call fastcc ptr @maybe_small_long(ptr noundef nonnull %i.r), !inline_history !224
  br label %long_lshift1.exit

long_lshift1.exit:                                ; preds = %long_normalize.exit.i, %._crit_edge62.i, %bb.c, %bb.a
  %.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14296), %bb.a ], [ %i.n, %bb.c ], [ %i.cb, %long_normalize.exit.i ], [ null, %._crit_edge62.i ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyLong_GCD(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val271 = load i64, ptr %i.d, align 8, !tbaa !25
  %i.e = icmp ult i64 %.val271, 24
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 16
  %.val270 = load i64, ptr %i.f, align 8, !tbaa !25
  %i.g = icmp ult i64 %.val270, 24
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.i = icmp ugt i32 %i.h, -1073741825
  br i1 %i.i, label %Py_INCREF.exit260, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = add nuw i32 %i.h, 1
  store i32 %i.j, ptr %0, align 8, !tbaa !24
  br label %Py_INCREF.exit260

Py_INCREF.exit260:                                ; preds = %bb.c, %bb.d
  %i.k = load i32, ptr %1, align 8, !tbaa !24     ; 2 uses
  %i.l = icmp ugt i32 %i.k, -1073741825
  br i1 %i.l, label %Py_INCREF.exit259, label %bb.e

bb.e:                                             ; preds = %Py_INCREF.exit260
  %i.m = add nuw i32 %i.k, 1
  store i32 %i.m, ptr %1, align 8, !tbaa !24
  br label %Py_INCREF.exit259

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.n = tail call fastcc ptr @long_abs(ptr noundef nonnull %0) ; 10 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %Py_DECREF.exit257, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call fastcc ptr @long_abs(ptr noundef %1) ; 6 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.r = load i32, ptr %i.n, align 8, !tbaa !24   ; 2 uses
  %.not.i256 = icmp sgt i32 %i.r, -1
  br i1 %.not.i256, label %bb.i, label %Py_DECREF.exit257

bb.i:                                             ; preds = %bb.h
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.n, align 8, !tbaa !24
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.j, label %Py_DECREF.exit257

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.n) #16
  br label %Py_DECREF.exit257

bb.k:                                             ; preds = %bb.g
  %i.u = getelementptr i8, ptr %i.n, i64 16
  %.val31.i = load i64, ptr %i.u, align 8, !tbaa !25 ; 6 uses
  %i.v = getelementptr i8, ptr %i.p, i64 16
  %.val32.i = load i64, ptr %i.v, align 8, !tbaa !25 ; 6 uses
  %i.w = or i64 %.val32.i, %.val31.i
  %i.x = icmp ugt i64 %i.w, 15
  br i1 %i.x, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr i8, ptr %i.n, i64 24
  %.val29.i = load i32, ptr %i.y, align 8, !tbaa !7
  %i.z = and i64 %.val31.i, 3
  %i.aa = sub nsw i64 1, %i.z
  %i.ab = zext i32 %.val29.i to i64
  %i.ac = mul nsw i64 %i.aa, %i.ab
  %i.ad = getelementptr i8, ptr %i.p, i64 24
  %.val27.i = load i32, ptr %i.ad, align 8, !tbaa !7
  %i.ae = and i64 %.val32.i, 3
  %.neg.i = add nsw i64 %i.ae, -1
  %i.af = zext i32 %.val27.i to i64
  %.neg35.i = mul nsw i64 %.neg.i, %i.af
  %i.ag = add nsw i64 %.neg35.i, %i.ac
  br label %long_compare.exit

bb.m:                                             ; preds = %bb.k
  %i.ah = and i64 %.val31.i, 3                    ; 2 uses
  %i.ai = sub nsw i64 1, %i.ah
  %i.aj = lshr i64 %.val31.i, 3                   ; 3 uses
  %i.ak = mul nsw i64 %i.ai, %i.aj
  %i.al = and i64 %.val32.i, 3
  %.neg36.i = add nsw i64 %i.al, -1
  %i.am = lshr i64 %.val32.i, 3
  %.neg37.i = mul nsw i64 %.neg36.i, %i.am
  %i.an = add nsw i64 %.neg37.i, %i.ak            ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %.preheader.i, label %long_compare.exit

.preheader.i:                                     ; preds = %bb.m
  %i.ap = getelementptr i8, ptr %i.n, i64 24
  %i.aq = getelementptr i8, ptr %i.p, i64 24
  %.not650 = icmp eq i64 %i.aj, 0
  br i1 %.not650, label %._crit_edge648, label %.lr.ph646

bb.n:                                             ; preds = %.lr.ph646
  %i.ar = icmp sgt i64 %.018.i645, 1
  br i1 %i.ar, label %.lr.ph646, label %._crit_edge648, !llvm.loop !226

.lr.ph646:                                        ; preds = %.preheader.i, %bb.n
  %.018.i645 = phi i64 [ %i.as, %bb.n ], [ %i.aj, %.preheader.i ] ; 2 uses
  %i.as = add nsw i64 %.018.i645, -1              ; 3 uses
  %i.at = getelementptr [4 x i8], ptr %i.ap, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !7
  %i.av = getelementptr [4 x i8], ptr %i.aq, i64 %i.as
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !7
  %i.ax = sub i32 %i.au, %i.aw                    ; 2 uses
  %.not25.i = icmp eq i32 %i.ax, 0
  br i1 %.not25.i, label %bb.n, label %._crit_edge647, !llvm.loop !226

._crit_edge647:                                   ; preds = %.lr.ph646
  br label %._crit_edge648, !llvm.loop !226

._crit_edge648:                                   ; preds = %bb.n, %._crit_edge647, %.preheader.i
  %.1.i = phi i32 [ %i.ax, %._crit_edge647 ], [ 0, %.preheader.i ], [ 0, %bb.n ] ; 2 uses
  %i.ay = icmp eq i64 %i.ah, 2
  %i.az = sub i32 0, %.1.i
  %i.ba = select i1 %i.ay, i32 %i.az, i32 %.1.i
end_hunk_1
