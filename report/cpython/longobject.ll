Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/longobject?download=true
inline.NumInlined: 732
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 54
begin_hunk_0_@long_or:bb.a
  %i.p = getelementptr i8, ptr %1, i64 24
  %.val18 = load i32, ptr %i.p, align 8, !tbaa !26
  %i.q = and i64 %.val15, 3
  %i.r = sub nsw i64 1, %i.q
  %i.s = zext i32 %.val18 to i64
  %i.t = mul nsw i64 %i.r, %i.s
  %i.u = or i64 %i.t, %i.o
  %i.v = tail call fastcc ptr @_PyLong_FromSTwoDigits(i64 noundef %i.u)
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.w = tail call fastcc ptr @long_bitwise(ptr noundef nonnull %0, i8 noundef signext 124, ptr noundef nonnull %1)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.a, %bb.b
  %.1 = phi ptr [ @_Py_NotImplementedStruct, %bb.a ], [ @_Py_NotImplementedStruct, %bb.b ], [ %i.v, %bb.e ], [ %i.w, %bb.f ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal ptr @long_float(ptr nofree noundef readonly captures(address_is_null) %0) #0 {
bb.a:
  %i.a = tail call double @PyLong_AsDouble(ptr noundef %0) ; 2 uses
  %i.b = fcmp oeq double %i.a, -1.000000e+00
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_Occurred() #16
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call ptr @PyFloat_FromDouble(double noundef %i.a) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ %i.d, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @long_div(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val12 = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.c = getelementptr i8, ptr %.val12, i64 168
  %.val14 = load i64, ptr %i.c, align 8, !tbaa !52
  %i.d = and i64 %.val14, 16777216
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 8
  %.val11 = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.f = getelementptr i8, ptr %.val11, i64 168
  %.val13 = load i64, ptr %i.f, align 8, !tbaa !52
  %i.g = and i64 %.val13, 16777216
  %.not9 = icmp eq i64 %i.g, 0
  br i1 %.not9, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 16
  %.val10 = load i64, ptr %i.h, align 8, !tbaa !43 ; 2 uses
  %.mask = and i64 %.val10, -8
  %i.i = icmp eq i64 %.mask, 8
  br i1 %i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.j, align 8, !tbaa !43  ; 2 uses
  %.mask19 = and i64 %.val, -8
  %i.k = icmp eq i64 %.mask19, 8
  br i1 %i.k, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %0, i64 24
  %.val16 = load i32, ptr %i.l, align 8, !tbaa !26 ; 2 uses
  %i.m = getelementptr i8, ptr %1, i64 24
  %.val18 = load i32, ptr %i.m, align 8, !tbaa !26 ; 2 uses
  %i.n = xor i64 %.val, %.val10
  %i.o = and i64 %i.n, 3
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = sdiv i32 %.val16, %.val18
  br label %fast_floor_div.exit

bb.g:                                             ; preds = %bb.e
  %i.q = add i32 %.val16, -1
  %i.r = sdiv i32 %i.q, %.val18
  %i.s = xor i32 %i.r, -1
  br label %fast_floor_div.exit

fast_floor_div.exit:                              ; preds = %bb.f, %bb.g
  %.0.i = phi i32 [ %i.p, %bb.f ], [ %i.s, %bb.g ]
  %i.t = sext i32 %.0.i to i64
  %i.u = tail call ptr @PyLong_FromLong(i64 noundef %i.t), !inline_history !13
  br label %._crit_edge

bb.h:                                             ; preds = %bb.d, %bb.c
  %i.v = call fastcc i32 @l_divmod(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.a, ptr noundef null)
  %i.w = icmp slt i32 %i.v, 0
  %.pre = load ptr, ptr %i.a, align 8
  %spec.select = select i1 %i.w, ptr null, ptr %.pre
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.h, %bb.a, %bb.b, %fast_floor_div.exit
  %.0 = phi ptr [ %i.u, %fast_floor_div.exit ], [ @_Py_NotImplementedStruct, %bb.a ], [ @_Py_NotImplementedStruct, %bb.b ], [ %spec.select, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @long_true_divide(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val193 = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.c = getelementptr i8, ptr %.val193, i64 168
  %.val195 = load i64, ptr %i.c, align 8, !tbaa !52
  %i.d = and i64 %.val195, 16777216
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.am, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 8
  %.val192 = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.f = getelementptr i8, ptr %.val192, i64 168
  %.val194 = load i64, ptr %i.f, align 8, !tbaa !52
  %i.g = and i64 %.val194, 16777216
  %.not169 = icmp eq i64 %i.g, 0
  br i1 %.not169, label %bb.am, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 16
  %.val191 = load i64, ptr %i.h, align 8, !tbaa !43 ; 4 uses
  %i.i = lshr i64 %.val191, 3                     ; 12 uses
  %i.j = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.j, align 8, !tbaa !43  ; 2 uses
  %i.k = lshr i64 %.val, 3                        ; 7 uses
  %i.l = and i64 %.val191, 3
  %i.m = icmp eq i64 %i.l, 2
  %i.n = and i64 %.val, 3
  %i.o = icmp eq i64 %i.n, 2
  %i.p = xor i1 %i.m, %i.o                        ; 2 uses
  %i.q = icmp eq i64 %i.k, 0
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr @PyExc_ZeroDivisionError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.r, ptr noundef nonnull @.str.47) #16
  br label %bb.am

bb.e:                                             ; preds = %bb.c
  switch i64 %i.i, label %.fold.split [
    i64 0, label %bb.ak
    i64 1, label %bb.g
    i64 2, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr i8, ptr %0, i64 28
  %i.t = load i32, ptr %i.s, align 4, !tbaa !26
  %i.u = icmp ult i32 %i.t, 8388608
  br label %bb.g

.fold.split:                                      ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %.fold.split, %bb.f
  %i.v = phi i1 [ true, %bb.e ], [ %i.u, %bb.f ], [ false, %.fold.split ]
  switch i64 %i.k, label %.thread [
    i64 1, label %bb.i
    i64 2, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr i8, ptr %1, i64 28
  %i.x = load i32, ptr %i.w, align 4, !tbaa !26
  %i.y = icmp ult i32 %i.x, 8388608
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.z = phi i1 [ true, %bb.g ], [ %i.y, %bb.h ]
  %or.cond = select i1 %i.v, i1 %i.z, i1 false
  br i1 %or.cond, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr i8, ptr %0, i64 24        ; 6 uses
  %i.ab = add nsw i64 %i.i, -1                    ; 4 uses
  %i.ac = getelementptr [4 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !26
  %i.ae = uitofp i32 %i.ad to double              ; 3 uses
  %i.af = icmp ugt i64 %.val191, 15
  br i1 %i.af, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.j
  %smin = tail call i64 @llvm.smin.i64(i64 %i.ab, i64 1) ; 2 uses
  %i.ag = sub i64 %i.i, %smin
  %xtraiter = and i64 %i.ag, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.0124224.prol = phi double [ %i.al, %.lr.ph.prol ], [ %i.ae, %.lr.ph.preheader ]
  %.0134223.prol = phi i64 [ %i.ah, %.lr.ph.prol ], [ %i.ab, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ah = add nsw i64 %.0134223.prol, -1          ; 3 uses
  %i.ai = getelementptr [4 x i8], ptr %i.aa, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !26
  %i.ak = uitofp i32 %i.aj to double
  %i.al = tail call double @llvm.fmuladd.f64(double %.0124224.prol, double f0x41D0000000000000, double %i.ak) ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !328

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.0124224.unr = phi double [ %i.ae, %.lr.ph.preheader ], [ %i.al, %.lr.ph.prol ]
  %.0134223.unr = phi i64 [ %i.ab, %.lr.ph.preheader ], [ %i.ah, %.lr.ph.prol ]
  %.lcssa275.unr = phi double [ poison, %.lr.ph.preheader ], [ %i.al, %.lr.ph.prol ]
  %i.am = sub i64 %smin, %i.i
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0124224 = phi double [ %i.bh, %.lr.ph ], [ %.0124224.unr, %.lr.ph.prol.loopexit ]
  %.0134223 = phi i64 [ %i.bd, %.lr.ph ], [ %.0134223.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ao = getelementptr [4 x i8], ptr %i.aa, i64 %.0134223
  %i.ap = getelementptr i8, ptr %i.ao, i64 -4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !26
  %i.ar = uitofp i32 %i.aq to double
  %i.as = tail call double @llvm.fmuladd.f64(double %.0124224, double f0x41D0000000000000, double %i.ar)
  %i.at = getelementptr [4 x i8], ptr %i.aa, i64 %.0134223
  %i.au = getelementptr i8, ptr %i.at, i64 -8
  %i.av = load i32, ptr %i.au, align 4, !tbaa !26
  %i.aw = uitofp i32 %i.av to double
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.as, double f0x41D0000000000000, double %i.aw)
  %i.ay = getelementptr [4 x i8], ptr %i.aa, i64 %.0134223
  %i.az = getelementptr i8, ptr %i.ay, i64 -12
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !26
  %i.bb = uitofp i32 %i.ba to double
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.ax, double f0x41D0000000000000, double %i.bb)
  %i.bd = add nsw i64 %.0134223, -4               ; 2 uses
  %i.be = getelementptr [4 x i8], ptr %i.aa, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !26
  %i.bg = uitofp i32 %i.bf to double
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.bc, double f0x41D0000000000000, double %i.bg) ; 2 uses
  %i.bi = icmp sgt i64 %.0134223, 4
  br i1 %i.bi, label %.lr.ph, label %._crit_edge, !llvm.loop !329

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.j
  %.0124.lcssa = phi double [ %i.ae, %bb.j ], [ %.lcssa275.unr, %.lr.ph.prol.loopexit ], [ %i.bh, %.lr.ph ]
  %i.bj = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.bk = getelementptr [4 x i8], ptr %i.bj, i64 %i.k
  %i.bl = getelementptr i8, ptr %i.bk, i64 -4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !26
  %i.bn = uitofp i32 %i.bm to double              ; 2 uses
  %.not246 = icmp eq i64 %i.k, 1
  br i1 %.not246, label %._crit_edge229, label %._crit_edge229.loopexit

._crit_edge229.loopexit:                          ; preds = %._crit_edge
  %i.bo = load i32, ptr %i.bj, align 8, !tbaa !26
  %i.bp = uitofp i32 %i.bo to double
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.bn, double f0x41D0000000000000, double %i.bp)
  br label %._crit_edge229

._crit_edge229:                                   ; preds = %._crit_edge229.loopexit, %._crit_edge
  %.0123.lcssa = phi double [ %i.bn, %._crit_edge ], [ %i.bq, %._crit_edge229.loopexit ]
  %i.br = fdiv double %.0124.lcssa, %.0123.lcssa
  br label %bb.aj

.thread:                                          ; preds = %bb.g, %bb.i
  %i.bs = sub nsw i64 %i.i, %i.k                  ; 3 uses
  %i.bt = icmp sgt i64 %i.bs, 307445734561825859
  br i1 %i.bt, label %bb.al, label %bb.k

bb.k:                                             ; preds = %.thread
  %i.bu = icmp slt i64 %i.bs, -307445734561825859
  br i1 %i.bu, label %bb.ak, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bv = mul nsw i64 %i.bs, 30
  %i.bw = getelementptr i8, ptr %0, i64 24        ; 6 uses
  %i.bx = getelementptr [4 x i8], ptr %i.bw, i64 %i.i
  %i.by = getelementptr i8, ptr %i.bx, i64 -4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !26
  %i.ca = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bz, i1 false)
  %i.cb = sub nuw nsw i32 32, %i.ca
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = add nsw i64 %i.bv, %i.cc
  %i.ce = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.cf = getelementptr [4 x i8], ptr %i.ce, i64 %i.k
  %i.cg = getelementptr i8, ptr %i.cf, i64 -4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !26
  %i.ci = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ch, i1 false)
  %i.cj = sub nuw nsw i32 32, %i.ci
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = sub nsw i64 %i.cd, %i.ck                ; 4 uses
  %i.cm = icmp sgt i64 %i.cl, 1024
  br i1 %i.cm, label %bb.al, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cn = icmp slt i64 %i.cl, -1075
  br i1 %i.cn, label %bb.ak, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.co = tail call i64 @llvm.smax.i64(i64 %i.cl, i64 -1021) ; 3 uses
  %i.cp = add nsw i64 %i.co, -55                  ; 5 uses
  %i.cq = icmp slt i64 %i.cl, 56
  br i1 %i.cq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cr = sub nsw i64 55, %i.co                   ; 3 uses
  %i.cs = udiv i64 %i.cr, 30                      ; 3 uses
  %i.ct = urem i64 %i.cr, 30                      ; 3 uses
  %i.cu = add nuw nsw i64 %i.cs, %i.i             ; 2 uses
  %i.cv = add nuw nsw i64 %i.cu, 1
  %i.cw = tail call fastcc ptr @long_alloc(i64 noundef %i.cv) ; 4 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.am, label %.preheader

.preheader:                                       ; preds = %bb.o
  %.not247 = icmp ult i64 %i.cr, 30
  br i1 %.not247, label %.lr.ph.i.preheader, label %.lr.ph238

.lr.ph238:                                        ; preds = %.preheader
  %i.cy = getelementptr i8, ptr %i.cw, i64 24
  %i.cz = shl nuw nsw i64 %i.cs, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cy, i8 0, i64 %i.cz, i1 false), !tbaa !26
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader, %.lr.ph238
  %i.da = getelementptr i8, ptr %i.cw, i64 24     ; 2 uses
  %i.db = getelementptr [4 x i8], ptr %i.da, i64 %i.cs ; 3 uses
  %i.dc = icmp eq i64 %i.i, 1
  br i1 %i.dc, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter284 = and i64 %i.i, 2305843009213693950
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.013.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.dw, %.lr.ph.i ] ; 4 uses
  %.01112.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.dv, %.lr.ph.i ]
  %niter285 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter285.next.1, %.lr.ph.i ]
  %i.dd = getelementptr [4 x i8], ptr %i.bw, i64 %.013.i
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !26
  %i.df = zext i32 %i.de to i64
  %i.dg = shl nuw nsw i64 %i.df, %i.ct
  %i.dh = or i64 %i.dg, %.01112.i                 ; 2 uses
  %i.di = trunc i64 %i.dh to i32
  %i.dj = and i32 %i.di, 1073741823
  %i.dk = getelementptr [4 x i8], ptr %i.db, i64 %.013.i
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !26
  %i.dl = lshr i64 %i.dh, 30
  %i.dm = or disjoint i64 %.013.i, 1              ; 2 uses
  %i.dn = getelementptr [4 x i8], ptr %i.bw, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !26
  %i.dp = zext i32 %i.do to i64
  %i.dq = shl nuw nsw i64 %i.dp, %i.ct
  %i.dr = or i64 %i.dq, %i.dl                     ; 2 uses
  %i.ds = trunc i64 %i.dr to i32
  %i.dt = and i32 %i.ds, 1073741823
  %i.du = getelementptr [4 x i8], ptr %i.db, i64 %i.dm
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !26
  %i.dv = lshr i64 %i.dr, 30                      ; 3 uses
  %i.dw = add nuw nsw i64 %.013.i, 2              ; 2 uses
  %niter285.next.1 = add i64 %niter285, 2         ; 2 uses
  %niter285.ncmp.1 = icmp eq i64 %niter285.next.1, %unroll_iter284
  br i1 %niter285.ncmp.1, label %.thread206.unr-lcssa, label %.lr.ph.i, !llvm.loop !4

.thread206.unr-lcssa:                             ; preds = %.lr.ph.i
  %i.dx = and i64 %.val191, 8
  %lcmp.mod281.not = icmp eq i64 %i.dx, 0
  br i1 %lcmp.mod281.not, label %.thread206, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.thread206.unr-lcssa, %.lr.ph.i.preheader
  %.013.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.dw, %.thread206.unr-lcssa ] ; 2 uses
  %.01112.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.dv, %.thread206.unr-lcssa ]
  %lcmp.mod283 = trunc i64 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod283)
  %i.dy = getelementptr [4 x i8], ptr %i.bw, i64 %.013.i.epil.init
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !26
  %i.ea = zext i32 %i.dz to i64
  %i.eb = shl nuw nsw i64 %i.ea, %i.ct
  %i.ec = or i64 %i.eb, %.01112.i.epil.init       ; 2 uses
  %i.ed = trunc i64 %i.ec to i32
  %i.ee = and i32 %i.ed, 1073741823
  %i.ef = getelementptr [4 x i8], ptr %i.db, i64 %.013.i.epil.init
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !26
  %i.eg = lshr i64 %i.ec, 30
  br label %.thread206

.thread206:                                       ; preds = %.thread206.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa274 = phi i64 [ %i.dv, %.thread206.unr-lcssa ], [ %i.eg, %.lr.ph.i.epil.preheader ]
  %i.eh = trunc nuw nsw i64 %.lcssa274 to i32
  %i.ei = getelementptr [4 x i8], ptr %i.da, i64 %i.cu
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !26
  br label %.thread212

bb.p:                                             ; preds = %bb.n
  %i.ej = udiv i64 %i.cp, 30                      ; 4 uses
  %i.ek = urem i64 %i.cp, 30                      ; 4 uses
  %i.el = sub nsw i64 %i.i, %i.ej                 ; 7 uses
  %i.em = tail call fastcc ptr @long_alloc(i64 noundef %i.el) ; 5 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %bb.am, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eo = getelementptr i8, ptr %i.em, i64 24     ; 3 uses
  %i.ep = getelementptr [4 x i8], ptr %i.bw, i64 %i.ej ; 3 uses
  %i.eq = trunc nuw nsw i64 %i.ek to i32
  %notmask.i = shl nsw i32 -1, %i.eq
  %i.er = xor i32 %notmask.i, -1                  ; 3 uses
  %i.es = icmp sgt i64 %i.el, 0
  br i1 %i.es, label %.lr.ph.i200.preheader, label %bb.r

.lr.ph.i200.preheader:                            ; preds = %bb.q
  %.neg295 = add nuw nsw i64 %i.ej, 1
  %xtraiter276 = and i64 %i.el, 1
  %i.et = icmp eq i64 %i.i, %.neg295
end_hunk_0
