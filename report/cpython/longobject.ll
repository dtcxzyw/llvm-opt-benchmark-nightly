Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/longobject?download=true
inline.NumInlined: 732
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 59
begin_hunk_0_@long_to_decimal_string_internal:bb.a
  br i1 %.not268, label %.critedge271, label %bb.af

bb.af:                                            ; preds = %._crit_edge
  %i.ji = load i32, ptr %i.ij, align 8, !tbaa !40 ; 2 uses
  %.not.i282 = icmp sgt i32 %i.ji, -1
  br i1 %.not.i282, label %bb.ag, label %pylong_int_to_decimal_string.exit, !llvm.loop !210

bb.ag:                                            ; preds = %bb.af
  %i.jj = add nsw i32 %i.ji, -1                   ; 2 uses
  store i32 %i.jj, ptr %i.ij, align 8, !tbaa !40
  %i.jk = icmp eq i32 %i.jj, 0
  br i1 %i.jk, label %bb.ah, label %pylong_int_to_decimal_string.exit, !llvm.loop !210

bb.ah:                                            ; preds = %bb.ag
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ij) #16
  br label %pylong_int_to_decimal_string.exit, !llvm.loop !210

.critedge271._crit_edge:                          ; preds = %.critedge271, %bb.ae
  %.0236.lcssa = phi i64 [ 0, %bb.ae ], [ %.1237.lcssa, %.critedge271 ] ; 9 uses
  %i.jl = icmp eq i64 %.0236.lcssa, 0
  br i1 %i.jl, label %bb.ai, label %._crit_edge436

._crit_edge436:                                   ; preds = %.critedge271._crit_edge
  %i.jm = add i64 %.0236.lcssa, -1
  br label %bb.aj

bb.ai:                                            ; preds = %.critedge271._crit_edge
  store i32 0, ptr %i.im, align 4, !tbaa !26
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge436, %bb.ai
  %.2238 = phi i64 [ 0, %bb.ai ], [ %i.jm, %._crit_edge436 ] ; 30 uses
  %i.jn = select i1 %i.h, i64 2, i64 1
  %i.jo = mul i64 %.2238, 9
  %i.jp = add i64 %i.jo, %i.jn                    ; 2 uses
  %i.jq = getelementptr [4 x i8], ptr %i.im, i64 %.2238 ; 4 uses
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !26 ; 2 uses
  %.not257369 = icmp ult i32 %i.jr, 10
  br i1 %.not257369, label %._crit_edge374, label %.lr.ph373

.lr.ph373:                                        ; preds = %bb.aj, %.lr.ph373
  %.0218371 = phi i32 [ %i.js, %.lr.ph373 ], [ 10, %bb.aj ]
  %.0235370 = phi i64 [ %i.jt, %.lr.ph373 ], [ %i.jp, %bb.aj ]
  %i.js = mul i32 %.0218371, 10                   ; 2 uses
  %i.jt = add i64 %.0235370, 1                    ; 2 uses
  %.not257 = icmp ult i32 %i.jr, %i.js
  br i1 %.not257, label %._crit_edge374, label %.lr.ph373, !llvm.loop !211

._crit_edge374:                                   ; preds = %.lr.ph373, %bb.aj
  %.0235.lcssa = phi i64 [ %i.jp, %bb.aj ], [ %i.jt, %.lr.ph373 ] ; 37 uses
  %i.ju = icmp sgt i64 %.0235.lcssa, 640
  br i1 %i.ju, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %._crit_edge374
  %i.jv = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !31
  %i.jx = getelementptr i8, ptr %i.jw, i64 11888
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !139 ; 3 uses
  %i.jz = icmp sgt i32 %i.jy, 0
  br i1 %i.jz, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %.neg = sext i1 %i.h to i64
  %i.ka = add nsw i64 %.0235.lcssa, %.neg
  %i.kb = zext nneg i32 %i.jy to i64
  %i.kc = icmp samesign ugt i64 %i.ka, %i.kb
  br i1 %i.kc, label %.critedge273, label %bb.ao

.critedge273:                                     ; preds = %bb.al
  %i.kd = load i32, ptr %i.ij, align 8, !tbaa !40 ; 2 uses
  %.not.i280 = icmp sgt i32 %i.kd, -1
  br i1 %.not.i280, label %bb.am, label %Py_DECREF.exit281

bb.am:                                            ; preds = %.critedge273
  %i.ke = add nsw i32 %i.kd, -1                   ; 2 uses
  store i32 %i.ke, ptr %i.ij, align 8, !tbaa !40
  %i.kf = icmp eq i32 %i.ke, 0
  br i1 %i.kf, label %bb.an, label %Py_DECREF.exit281

bb.an:                                            ; preds = %bb.am
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ij) #16
  br label %Py_DECREF.exit281

Py_DECREF.exit281:                                ; preds = %.critedge273, %bb.am, %bb.an
  %i.kg = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  %i.kh = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.kg, ptr noundef nonnull @.str.37, i32 noundef %i.jy) #16 ; 0 uses
  br label %pylong_int_to_decimal_string.exit

bb.ao:                                            ; preds = %bb.al, %bb.ak, %._crit_edge374
  %.not258 = icmp eq ptr %2, null                 ; 5 uses
  br i1 %.not258, label %bb.aw, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ki = getelementptr i8, ptr %2, i64 20
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !144
  %i.kk = icmp ugt i32 %i.kj, 56
  br i1 %i.kk, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.kl = getelementptr i8, ptr %2, i64 24
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !145
  %i.kn = getelementptr i8, ptr %2, i64 32
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !146
  %i.kp = sub i64 %i.km, %i.ko
  %i.kq = icmp sle i64 %.0235.lcssa, %i.kp
  %i.kr = icmp eq i64 %.0235.lcssa, 0
  %or.cond = or i1 %i.kr, %i.kq
  br i1 %or.cond, label %.critedge275, label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %.old3 = icmp eq i64 %.0235.lcssa, 0
  br i1 %.old3, label %.critedge275, label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %i.ks = tail call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %2, i64 noundef %.0235.lcssa, i32 noundef 57) #16
  %i.kt = icmp eq i32 %i.ks, -1
  br i1 %i.kt, label %bb.at, label %.critedge275

bb.at:                                            ; preds = %bb.as
  %i.ku = load i32, ptr %i.ij, align 8, !tbaa !40 ; 2 uses
  %.not.i278 = icmp sgt i32 %i.ku, -1
  br i1 %.not.i278, label %bb.au, label %pylong_int_to_decimal_string.exit

bb.au:                                            ; preds = %bb.at
  %i.kv = add nsw i32 %i.ku, -1                   ; 2 uses
  store i32 %i.kv, ptr %i.ij, align 8, !tbaa !40
  %i.kw = icmp eq i32 %i.kv, 0
  br i1 %i.kw, label %bb.av, label %pylong_int_to_decimal_string.exit

bb.av:                                            ; preds = %bb.au
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ij) #16
  br label %pylong_int_to_decimal_string.exit

bb.aw:                                            ; preds = %bb.ao
  %.not259 = icmp eq ptr %3, null
  br i1 %.not259, label %bb.bb, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.kx = load ptr, ptr %4, align 8, !tbaa !147
  %i.ky = tail call ptr @PyBytesWriter_GrowAndUpdatePointer(ptr noundef nonnull %3, i64 noundef %.0235.lcssa, ptr noundef %i.kx) #16 ; 3 uses
  store ptr %i.ky, ptr %4, align 8, !tbaa !147
  %i.kz = icmp eq ptr %i.ky, null
  br i1 %i.kz, label %bb.ay, label %.critedge275.thread345

bb.ay:                                            ; preds = %bb.ax
  %i.la = load i32, ptr %i.ij, align 8, !tbaa !40 ; 2 uses
  %.not.i276 = icmp sgt i32 %i.la, -1
  br i1 %.not.i276, label %bb.az, label %pylong_int_to_decimal_string.exit

bb.az:                                            ; preds = %bb.ay
  %i.lb = add nsw i32 %i.la, -1                   ; 2 uses
  store i32 %i.lb, ptr %i.ij, align 8, !tbaa !40
  %i.lc = icmp eq i32 %i.lb, 0
  br i1 %i.lc, label %bb.ba, label %pylong_int_to_decimal_string.exit

bb.ba:                                            ; preds = %bb.az
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ij) #16
  br label %pylong_int_to_decimal_string.exit

bb.bb:                                            ; preds = %bb.aw
  %i.ld = tail call ptr @PyUnicode_New(i64 noundef %.0235.lcssa, i32 noundef 57) #16 ; 3 uses
  %i.le = icmp eq ptr %i.ld, null
  br i1 %i.le, label %bb.bc, label %bb.bj

bb.bc:                                            ; preds = %bb.bb
  %i.lf = load i32, ptr %i.ij, align 8, !tbaa !40 ; 2 uses
  %.not.i = icmp sgt i32 %i.lf, -1
  br i1 %.not.i, label %bb.bd, label %pylong_int_to_decimal_string.exit

bb.bd:                                            ; preds = %bb.bc
  %i.lg = add nsw i32 %i.lf, -1                   ; 2 uses
  store i32 %i.lg, ptr %i.ij, align 8, !tbaa !40
  %i.lh = icmp eq i32 %i.lg, 0
  br i1 %i.lh, label %bb.be, label %pylong_int_to_decimal_string.exit

bb.be:                                            ; preds = %bb.bd
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ij) #16
  br label %pylong_int_to_decimal_string.exit

.critedge275:                                     ; preds = %bb.aq, %bb.ar, %bb.as
  %.not260 = icmp eq ptr %3, null
  br i1 %.not260, label %bb.bi, label %.critedge275..critedge275.thread345_crit_edge

.critedge275..critedge275.thread345_crit_edge:    ; preds = %.critedge275
  %.pre = load ptr, ptr %4, align 8, !tbaa !147
  br label %.critedge275.thread345

.critedge275.thread345:                           ; preds = %.critedge275..critedge275.thread345_crit_edge, %bb.ax
  %i.li = phi ptr [ %.pre, %.critedge275..critedge275.thread345_crit_edge ], [ %i.ky, %bb.ax ] ; 11 uses
  %i.lj = getelementptr i8, ptr %i.li, i64 %.0235.lcssa ; 10 uses
  %i.lk = icmp sgt i64 %.2238, 0
  br i1 %i.lk, label %.lr.ph381.preheader, label %._crit_edge382

.lr.ph381.preheader:                              ; preds = %.critedge275.thread345
  %min.iters.check = icmp ult i64 %.2238, 8
  br i1 %min.iters.check, label %.lr.ph381.preheader786, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph381.preheader
  %umax = tail call i64 @llvm.umax.i64(i64 %.0236.lcssa, i64 1)
  %i.ll = add i64 %umax, -2
  %i.lm = getelementptr i8, ptr %i.li, i64 %.0235.lcssa
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ll, i64 9) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 9 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.ln = sub i64 0, %mul.result
  %i.lo = getelementptr i8, ptr %i.li, i64 %.0235.lcssa
  %i.lp = sub i64 0, %mul.result
  %i.lq = getelementptr i8, ptr %i.li, i64 %.0235.lcssa ; 2 uses
  %i.lr = sub i64 0, %mul.result
  %i.ls = getelementptr i8, ptr %i.li, i64 %.0235.lcssa ; 2 uses
  %i.lt = sub i64 0, %mul.result
  %i.lu = getelementptr i8, ptr %i.li, i64 %.0235.lcssa ; 2 uses
  %i.lv = sub i64 0, %mul.result
  %i.lw = getelementptr i8, ptr %i.li, i64 %.0235.lcssa ; 2 uses
  %i.lx = sub i64 0, %mul.result
  %i.ly = getelementptr i8, ptr %i.li, i64 %.0235.lcssa
  %i.lz = sub i64 0, %mul.result
  %i.ma = getelementptr i8, ptr %i.li, i64 %.0235.lcssa
  %i.mb = sub i64 0, %mul.result
  %scevgep534.a = getelementptr i8, ptr %i.lm, i64 -1 ; 2 uses
  %5 = getelementptr i8, ptr %scevgep534.a, i64 %i.ln
  %scevgep528 = getelementptr i8, ptr %i.lo, i64 -2 ; 2 uses
  %6 = getelementptr i8, ptr %scevgep528, i64 %i.lp
  %scevgep532 = getelementptr i8, ptr %i.lw, i64 -6
  %7 = insertelement <4 x ptr> poison, ptr %i.lq, i64 0
  %8 = insertelement <4 x ptr> %7, ptr %i.ls, i64 1
  %9 = insertelement <4 x ptr> %8, ptr %i.lu, i64 2
  %10 = insertelement <4 x ptr> %9, ptr %i.lw, i64 3
  %11 = getelementptr i8, <4 x ptr> %10, <4 x i64> <i64 -3, i64 -4, i64 -5, i64 -6>
  %scevgep533.a = getelementptr i8, ptr %i.lu, i64 -5
  %scevgep532.a = getelementptr i8, ptr %i.ls, i64 -4
  %scevgep531 = getelementptr i8, ptr %i.lq, i64 -3
  %scevgep530 = getelementptr i8, ptr %scevgep531, i64 %i.lr
  %scevgep529 = getelementptr i8, ptr %scevgep532.a, i64 %i.lt
  %scevgep = getelementptr i8, ptr %scevgep533.a, i64 %i.lv
  %scevgep528.a = getelementptr i8, ptr %scevgep532, i64 %i.lx
  %i.mc = getelementptr i8, ptr %i.ly, i64 -7     ; 2 uses
  %i.md = getelementptr i8, ptr %i.mc, i64 %i.lz
  %i.me = getelementptr i8, ptr %i.ma, i64 -8     ; 2 uses
  %i.mf = getelementptr i8, ptr %i.me, i64 %i.mb
  %12 = insertelement <8 x ptr> poison, ptr %6, i64 0
  %13 = insertelement <8 x ptr> %12, ptr %5, i64 1
  %14 = insertelement <8 x ptr> %13, ptr %scevgep530, i64 2
  %15 = insertelement <8 x ptr> %14, ptr %scevgep529, i64 3
  %i.mg = insertelement <8 x ptr> %15, ptr %scevgep, i64 4
  %i.mh = insertelement <8 x ptr> %i.mg, ptr %scevgep528.a, i64 5
  %i.mi = insertelement <8 x ptr> %i.mh, ptr %i.md, i64 6
  %i.mj = insertelement <8 x ptr> %i.mi, ptr %i.mf, i64 7
  %i.mk = insertelement <8 x ptr> poison, ptr %scevgep528, i64 0
  %i.ml = insertelement <8 x ptr> %i.mk, ptr %scevgep534.a, i64 1
  %16 = shufflevector <4 x ptr> %11, <4 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %17 = shufflevector <8 x ptr> %i.ml, <8 x ptr> %16, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison>
  %i.mm = insertelement <8 x ptr> %17, ptr %i.mc, i64 6
  %i.mn = insertelement <8 x ptr> %i.mm, ptr %i.me, i64 7
  %i.mo = icmp ugt <8 x ptr> %i.mj, %i.mn
  %i.mp = getelementptr i8, ptr %i.li, i64 %.0235.lcssa
  %scevgep535 = getelementptr i8, ptr %i.mp, i64 -9 ; 2 uses
  %i.mq = sub i64 0, %mul.result
  %i.mr = getelementptr i8, ptr %scevgep535, i64 %i.mq
  %i.ms = icmp ugt ptr %i.mr, %scevgep535
  %i.mt = bitcast <8 x i1> %i.mo to i8
  %i.mu = icmp ne i8 %i.mt, 0
  %op.rdx753 = or i1 %mul.overflow, %i.mu
  %op.rdx754 = or i1 %op.rdx753, %i.ms
  br i1 %op.rdx754, label %.lr.ph381.preheader786, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.mv = tail call i64 @llvm.umax.i64(i64 %.0236.lcssa, i64 1)
  %.neg744 = mul i64 %i.mv, -9
  %i.mw = getelementptr i8, ptr %i.li, i64 %.neg744
  %i.mx = getelementptr i8, ptr %i.mw, i64 %.0235.lcssa
  %i.my = getelementptr i8, ptr %i.mx, i64 9
  %bound0 = icmp ult ptr %i.im, %i.lj
  %bound1 = icmp ult ptr %i.my, %i.jq
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph381.preheader786, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.2238, 9223372036854775804    ; 4 uses
  %i.mz = mul i64 %n.vec, -9
  %i.na = getelementptr i8, ptr %i.lj, i64 %i.mz  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.nb = mul i64 %index, -9                      ; 4 uses
  %next.gep = getelementptr i8, ptr %i.lj, i64 %i.nb ; 9 uses
  %i.nc = getelementptr i8, ptr %i.lj, i64 %i.nb  ; 9 uses
  %i.nd = getelementptr i8, ptr %i.lj, i64 %i.nb  ; 9 uses
  %i.ne = getelementptr i8, ptr %i.lj, i64 %i.nb  ; 9 uses
  %i.nf = getelementptr [4 x i8], ptr %i.im, i64 %index
  %wide.load = load <4 x i32>, ptr %i.nf, align 4, !tbaa !26, !alias.scope !239, !noalias !240 ; 8 uses
  %wide.load.frozen = freeze <4 x i32> %wide.load ; 2 uses
  %i.ng = udiv <4 x i32> %wide.load.frozen, splat (i32 10) ; 2 uses
  %i.nh = mul <4 x i32> %i.ng, splat (i32 10)
  %.decomposed = sub <4 x i32> %wide.load.frozen, %i.nh
  %i.ni = trunc nuw nsw <4 x i32> %.decomposed to <4 x i8>
  %i.nj = or disjoint <4 x i8> %i.ni, splat (i8 48) ; 4 uses
  %i.nk = getelementptr i8, ptr %next.gep, i64 -1
  %i.nl = getelementptr i8, ptr %i.nc, i64 -10
  %i.nm = getelementptr i8, ptr %i.nd, i64 -19
  %i.nn = getelementptr i8, ptr %i.ne, i64 -28
  %i.no = extractelement <4 x i8> %i.nj, i64 0
  store i8 %i.no, ptr %i.nk, align 1, !tbaa !40, !alias.scope !240
  %i.np = extractelement <4 x i8> %i.nj, i64 1
  store i8 %i.np, ptr %i.nl, align 1, !tbaa !40, !alias.scope !240
  %i.nq = extractelement <4 x i8> %i.nj, i64 2
  store i8 %i.nq, ptr %i.nm, align 1, !tbaa !40, !alias.scope !240
  %i.nr = extractelement <4 x i8> %i.nj, i64 3
  store i8 %i.nr, ptr %i.nn, align 1, !tbaa !40, !alias.scope !240
  %i.ns = urem <4 x i32> %i.ng, splat (i32 10)
  %i.nt = trunc nuw nsw <4 x i32> %i.ns to <4 x i8>
  %i.nu = or disjoint <4 x i8> %i.nt, splat (i8 48) ; 4 uses
  %i.nv = getelementptr i8, ptr %next.gep, i64 -2
  %i.nw = getelementptr i8, ptr %i.nc, i64 -11
  %i.nx = getelementptr i8, ptr %i.nd, i64 -20
  %i.ny = getelementptr i8, ptr %i.ne, i64 -29
  %i.nz = extractelement <4 x i8> %i.nu, i64 0
  store i8 %i.nz, ptr %i.nv, align 1, !tbaa !40, !alias.scope !240
  %i.oa = extractelement <4 x i8> %i.nu, i64 1
  store i8 %i.oa, ptr %i.nw, align 1, !tbaa !40, !alias.scope !240
  %i.ob = extractelement <4 x i8> %i.nu, i64 2
  store i8 %i.ob, ptr %i.nx, align 1, !tbaa !40, !alias.scope !240
  %i.oc = extractelement <4 x i8> %i.nu, i64 3
  store i8 %i.oc, ptr %i.ny, align 1, !tbaa !40, !alias.scope !240
  %i.od = udiv <4 x i32> %wide.load, splat (i32 100)
  %i.oe = urem <4 x i32> %i.od, splat (i32 10)
  %i.of = trunc nuw nsw <4 x i32> %i.oe to <4 x i8>
  %i.og = or disjoint <4 x i8> %i.of, splat (i8 48) ; 4 uses
  %i.oh = getelementptr i8, ptr %next.gep, i64 -3
  %i.oi = getelementptr i8, ptr %i.nc, i64 -12
  %i.oj = getelementptr i8, ptr %i.nd, i64 -21
  %i.ok = getelementptr i8, ptr %i.ne, i64 -30
  %i.ol = extractelement <4 x i8> %i.og, i64 0
  store i8 %i.ol, ptr %i.oh, align 1, !tbaa !40, !alias.scope !240
  %i.om = extractelement <4 x i8> %i.og, i64 1
  store i8 %i.om, ptr %i.oi, align 1, !tbaa !40, !alias.scope !240
  %i.on = extractelement <4 x i8> %i.og, i64 2
  store i8 %i.on, ptr %i.oj, align 1, !tbaa !40, !alias.scope !240
  %i.oo = extractelement <4 x i8> %i.og, i64 3
  store i8 %i.oo, ptr %i.ok, align 1, !tbaa !40, !alias.scope !240
  %i.op = udiv <4 x i32> %wide.load, splat (i32 1000)
  %i.oq = urem <4 x i32> %i.op, splat (i32 10)
  %i.or = trunc nuw nsw <4 x i32> %i.oq to <4 x i8>
  %i.os = or disjoint <4 x i8> %i.or, splat (i8 48) ; 4 uses
  %i.ot = getelementptr i8, ptr %next.gep, i64 -4
  %i.ou = getelementptr i8, ptr %i.nc, i64 -13
  %i.ov = getelementptr i8, ptr %i.nd, i64 -22
  %i.ow = getelementptr i8, ptr %i.ne, i64 -31
  %i.ox = extractelement <4 x i8> %i.os, i64 0
  store i8 %i.ox, ptr %i.ot, align 1, !tbaa !40, !alias.scope !240
  %i.oy = extractelement <4 x i8> %i.os, i64 1
  store i8 %i.oy, ptr %i.ou, align 1, !tbaa !40, !alias.scope !240
  %i.oz = extractelement <4 x i8> %i.os, i64 2
  store i8 %i.oz, ptr %i.ov, align 1, !tbaa !40, !alias.scope !240
  %i.pa = extractelement <4 x i8> %i.os, i64 3
  store i8 %i.pa, ptr %i.ow, align 1, !tbaa !40, !alias.scope !240
  %i.pb = udiv <4 x i32> %wide.load, splat (i32 10000)
  %i.pc = urem <4 x i32> %i.pb, splat (i32 10)
  %i.pd = trunc nuw nsw <4 x i32> %i.pc to <4 x i8>
  %i.pe = or disjoint <4 x i8> %i.pd, splat (i8 48) ; 4 uses
  %i.pf = getelementptr i8, ptr %next.gep, i64 -5
  %i.pg = getelementptr i8, ptr %i.nc, i64 -14
  %i.ph = getelementptr i8, ptr %i.nd, i64 -23
  %i.pi = getelementptr i8, ptr %i.ne, i64 -32
  %i.pj = extractelement <4 x i8> %i.pe, i64 0
  store i8 %i.pj, ptr %i.pf, align 1, !tbaa !40, !alias.scope !240
  %i.pk = extractelement <4 x i8> %i.pe, i64 1
  store i8 %i.pk, ptr %i.pg, align 1, !tbaa !40, !alias.scope !240
  %i.pl = extractelement <4 x i8> %i.pe, i64 2
  store i8 %i.pl, ptr %i.ph, align 1, !tbaa !40, !alias.scope !240
  %i.pm = extractelement <4 x i8> %i.pe, i64 3
  store i8 %i.pm, ptr %i.pi, align 1, !tbaa !40, !alias.scope !240
  %i.pn = udiv <4 x i32> %wide.load, splat (i32 100000)
  %i.po = trunc nuw <4 x i32> %i.pn to <4 x i16>
  %i.pp = urem <4 x i16> %i.po, splat (i16 10)
  %i.pq = trunc nuw nsw <4 x i16> %i.pp to <4 x i8>
  %i.pr = or disjoint <4 x i8> %i.pq, splat (i8 48) ; 4 uses
  %i.ps = getelementptr i8, ptr %next.gep, i64 -6
  %i.pt = getelementptr i8, ptr %i.nc, i64 -15
  %i.pu = getelementptr i8, ptr %i.nd, i64 -24
  %i.pv = getelementptr i8, ptr %i.ne, i64 -33
  %i.pw = extractelement <4 x i8> %i.pr, i64 0
  store i8 %i.pw, ptr %i.ps, align 1, !tbaa !40, !alias.scope !240
  %i.px = extractelement <4 x i8> %i.pr, i64 1
  store i8 %i.px, ptr %i.pt, align 1, !tbaa !40, !alias.scope !240
  %i.py = extractelement <4 x i8> %i.pr, i64 2
  store i8 %i.py, ptr %i.pu, align 1, !tbaa !40, !alias.scope !240
  %i.pz = extractelement <4 x i8> %i.pr, i64 3
  store i8 %i.pz, ptr %i.pv, align 1, !tbaa !40, !alias.scope !240
  %i.qa = udiv <4 x i32> %wide.load, splat (i32 1000000)
  %i.qb = trunc nuw nsw <4 x i32> %i.qa to <4 x i16>
  %i.qc = urem <4 x i16> %i.qb, splat (i16 10)
  %i.qd = trunc nuw nsw <4 x i16> %i.qc to <4 x i8>
  %i.qe = or disjoint <4 x i8> %i.qd, splat (i8 48) ; 4 uses
  %i.qf = getelementptr i8, ptr %next.gep, i64 -7
  %i.qg = getelementptr i8, ptr %i.nc, i64 -16
  %i.qh = getelementptr i8, ptr %i.nd, i64 -25
  %i.qi = getelementptr i8, ptr %i.ne, i64 -34
  %i.qj = extractelement <4 x i8> %i.qe, i64 0
  store i8 %i.qj, ptr %i.qf, align 1, !tbaa !40, !alias.scope !240
  %i.qk = extractelement <4 x i8> %i.qe, i64 1
  store i8 %i.qk, ptr %i.qg, align 1, !tbaa !40, !alias.scope !240
  %i.ql = extractelement <4 x i8> %i.qe, i64 2
  store i8 %i.ql, ptr %i.qh, align 1, !tbaa !40, !alias.scope !240
  %i.qm = extractelement <4 x i8> %i.qe, i64 3
  store i8 %i.qm, ptr %i.qi, align 1, !tbaa !40, !alias.scope !240
  %i.qn = udiv <4 x i32> %wide.load, splat (i32 10000000)
  %i.qo = trunc nuw nsw <4 x i32> %i.qn to <4 x i16>
  %i.qp = urem <4 x i16> %i.qo, splat (i16 10)
  %i.qq = trunc nuw nsw <4 x i16> %i.qp to <4 x i8>
  %i.qr = or disjoint <4 x i8> %i.qq, splat (i8 48) ; 4 uses
  %i.qs = getelementptr i8, ptr %next.gep, i64 -8
  %i.qt = getelementptr i8, ptr %i.nc, i64 -17
  %i.qu = getelementptr i8, ptr %i.nd, i64 -26
  %i.qv = getelementptr i8, ptr %i.ne, i64 -35
  %i.qw = extractelement <4 x i8> %i.qr, i64 0
  store i8 %i.qw, ptr %i.qs, align 1, !tbaa !40, !alias.scope !240
  %i.qx = extractelement <4 x i8> %i.qr, i64 1
  store i8 %i.qx, ptr %i.qt, align 1, !tbaa !40, !alias.scope !240
  %i.qy = extractelement <4 x i8> %i.qr, i64 2
  store i8 %i.qy, ptr %i.qu, align 1, !tbaa !40, !alias.scope !240
  %i.qz = extractelement <4 x i8> %i.qr, i64 3
  store i8 %i.qz, ptr %i.qv, align 1, !tbaa !40, !alias.scope !240
  %i.ra = udiv <4 x i32> %wide.load, splat (i32 100000000)
  %i.rb = trunc nuw nsw <4 x i32> %i.ra to <4 x i8>
  %i.rc = urem <4 x i8> %i.rb, splat (i8 10)
  %i.rd = or disjoint <4 x i8> %i.rc, splat (i8 48) ; 4 uses
  %i.re = getelementptr i8, ptr %next.gep, i64 -9
  %i.rf = getelementptr i8, ptr %i.nc, i64 -18
  %i.rg = getelementptr i8, ptr %i.nd, i64 -27
  %i.rh = getelementptr i8, ptr %i.ne, i64 -36
  %i.ri = extractelement <4 x i8> %i.rd, i64 0
  store i8 %i.ri, ptr %i.re, align 1, !tbaa !40, !alias.scope !240
  %i.rj = extractelement <4 x i8> %i.rd, i64 1
  store i8 %i.rj, ptr %i.rf, align 1, !tbaa !40, !alias.scope !240
  %i.rk = extractelement <4 x i8> %i.rd, i64 2
  store i8 %i.rk, ptr %i.rg, align 1, !tbaa !40, !alias.scope !240
  %i.rl = extractelement <4 x i8> %i.rd, i64 3
  store i8 %i.rl, ptr %i.rh, align 1, !tbaa !40, !alias.scope !240
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.rm = icmp eq i64 %index.next, %n.vec
  br i1 %i.rm, label %middle.block, label %vector.body, !llvm.loop !215

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.2238, %n.vec
  br i1 %cmp.n, label %._crit_edge382, label %.lr.ph381.preheader786

.lr.ph381.preheader786:                           ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph381.preheader, %middle.block
  %.0206380.ph = phi ptr [ %i.lj, %vector.memcheck ], [ %i.lj, %vector.scevcheck ], [ %i.lj, %.lr.ph381.preheader ], [ %i.na, %middle.block ]
  %.1231379.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph381.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph381

.lr.ph381:                                        ; preds = %.lr.ph381.preheader786, %.lr.ph381
  %.0206380 = phi ptr [ %i.ry, %.lr.ph381 ], [ %.0206380.ph, %.lr.ph381.preheader786 ] ; 2 uses
  %.1231379 = phi i64 [ %i.sr, %.lr.ph381 ], [ %.1231379.ph, %.lr.ph381.preheader786 ] ; 2 uses
  %i.rn = getelementptr [4 x i8], ptr %i.im, i64 %.1231379
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !26 ; 6 uses
  %i.rp = urem i32 %i.ro, 10
  %i.rq = trunc nuw nsw i32 %i.rp to i8
  %i.rr = or disjoint i8 %i.rq, 48
  %i.rs = getelementptr i8, ptr %.0206380, i64 -1
  store i8 %i.rr, ptr %i.rs, align 1, !tbaa !40
  %i.rt = udiv i32 %i.ro, 10000000
  %.lhs.trunc497 = trunc nuw nsw i32 %i.rt to i16
  %i.ru = urem i16 %.lhs.trunc497, 10
  %i.rv = trunc nuw nsw i16 %i.ru to i8
  %i.rw = udiv i32 %i.ro, 100000000
  %.lhs.trunc499 = trunc nuw nsw i32 %i.rw to i8
  %i.rx = urem i8 %.lhs.trunc499, 10
  %i.ry = getelementptr i8, ptr %.0206380, i64 -9 ; 3 uses
  %i.rz = insertelement <4 x i32> poison, i32 %i.ro, i64 0
  %i.sa = shufflevector <4 x i32> %i.rz, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.sb = udiv <4 x i32> %i.sa, <i32 10000, i32 1000, i32 100, i32 10>
  %i.sc = urem <4 x i32> %i.sb, splat (i32 10)
  %i.sd = trunc nuw nsw <4 x i32> %i.sc to <4 x i8>
  %i.se = udiv i32 %i.ro, 100000
  %.lhs.trunc493 = trunc nuw i32 %i.se to i16
  %i.sf = udiv i32 %i.ro, 1000000
  %.lhs.trunc495 = trunc nuw nsw i32 %i.sf to i16
  %i.sg = insertelement <2 x i16> poison, i16 %.lhs.trunc495, i64 0
  %i.sh = insertelement <2 x i16> %i.sg, i16 %.lhs.trunc493, i64 1
  %i.si = urem <2 x i16> %i.sh, splat (i16 10)
  %i.sj = insertelement <8 x i8> poison, i8 %i.rx, i64 0
  %i.sk = insertelement <8 x i8> %i.sj, i8 %i.rv, i64 1
  %i.sl = shufflevector <4 x i8> %i.sd, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sm = shufflevector <8 x i8> %i.sk, <8 x i8> %i.sl, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.sn = shufflevector <2 x i16> %i.si, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.so = trunc <8 x i16> %i.sn to <8 x i8>
  %i.sp = shufflevector <8 x i8> %i.sm, <8 x i8> %i.so, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 6, i32 7>
  %i.sq = or disjoint <8 x i8> %i.sp, splat (i8 48)
  store <8 x i8> %i.sq, ptr %i.ry, align 1, !tbaa !40
  %i.sr = add nuw nsw i64 %.1231379, 1            ; 2 uses
  %exitcond429.not = icmp eq i64 %i.sr, %.2238
  br i1 %exitcond429.not, label %._crit_edge382, label %.lr.ph381, !llvm.loop !216

._crit_edge382:                                   ; preds = %.lr.ph381, %middle.block, %.critedge275.thread345
  %.1231.lcssa = phi i64 [ 0, %.critedge275.thread345 ], [ %.2238, %middle.block ], [ %.2238, %.lr.ph381 ]
  %.0206.lcssa = phi ptr [ %i.lj, %.critedge275.thread345 ], [ %i.na, %middle.block ], [ %i.ry, %.lr.ph381 ]
  %i.ss = getelementptr [4 x i8], ptr %i.im, i64 %.1231.lcssa
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !26
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %._crit_edge382
  %.1220 = phi i32 [ %i.st, %._crit_edge382 ], [ %i.sy, %bb.bf ] ; 3 uses
  %.2208 = phi ptr [ %.0206.lcssa, %._crit_edge382 ], [ %i.sx, %bb.bf ] ; 2 uses
  %i.su = urem i32 %.1220, 10
  %i.sv = trunc nuw nsw i32 %i.su to i8
  %i.sw = or disjoint i8 %i.sv, 48
  %i.sx = getelementptr i8, ptr %.2208, i64 -1    ; 2 uses
  store i8 %i.sw, ptr %i.sx, align 1, !tbaa !40
  %i.sy = udiv i32 %.1220, 10
  %.not266 = icmp ult i32 %.1220, 10
  br i1 %.not266, label %bb.bg, label %bb.bf, !llvm.loop !217

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.h, label %bb.bh, label %bb.cp

bb.bh:                                            ; preds = %bb.bg
  %i.sz = getelementptr i8, ptr %.2208, i64 -2
  store i8 45, ptr %i.sz, align 1, !tbaa !40
  br label %bb.cp

bb.bi:                                            ; preds = %.critedge275
  %i.ta = getelementptr i8, ptr %2, i64 16
  %i.tb = load i32, ptr %i.ta, align 8, !tbaa !151
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bb
  %i.tc = getelementptr i8, ptr %i.ld, i64 32
  %i.td = load i32, ptr %i.tc, align 8
  %i.te = lshr i32 %i.td, 2
  %i.tf = and i32 %i.te, 7
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.0239342355 = phi ptr [ null, %bb.bi ], [ %i.ld, %bb.bj ] ; 15 uses
  %i.tg = phi i32 [ %i.tb, %bb.bi ], [ %i.tf, %bb.bj ]
  switch i32 %i.tg, label %bb.cf [
    i32 1, label %bb.bl
    i32 2, label %bb.bv
  ]

bb.bl:                                            ; preds = %bb.bk
  br i1 %.not258, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.th = load ptr, ptr %2, align 8, !tbaa !152   ; 3 uses
  %i.ti = getelementptr i8, ptr %i.th, i64 32
  %.val.i292 = load i32, ptr %i.ti, align 8       ; 2 uses
  %i.tj = and i32 %.val.i292, 32
  %.not.i293 = icmp eq i32 %i.tj, 0
  br i1 %.not.i293, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.tk = and i32 %.val.i292, 64
  %.not.i.i294 = icmp eq i32 %i.tk, 0
  %.0.v.i.i = select i1 %.not.i.i294, i64 56, i64 40
  %.0.i.i295 = getelementptr i8, ptr %i.th, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.bo:                                            ; preds = %bb.bm
  %i.tl = getelementptr i8, ptr %i.th, i64 56
  %.val4.i = load ptr, ptr %i.tl, align 8, !tbaa !40
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.bn, %bb.bo
  %.0.i296 = phi ptr [ %.0.i.i295, %bb.bn ], [ %.val4.i, %bb.bo ]
  %i.tm = getelementptr i8, ptr %2, i64 32
  %i.tn = load i64, ptr %i.tm, align 8, !tbaa !146
  %i.to = getelementptr i8, ptr %.0.i296, i64 %i.tn
  br label %_PyUnicode_DATA.exit304

bb.bp:                                            ; preds = %bb.bl
  %i.tp = getelementptr i8, ptr %.0239342355, i64 32
  %.val.i297 = load i32, ptr %i.tp, align 8       ; 2 uses
  %i.tq = and i32 %.val.i297, 32
  %.not.i298 = icmp eq i32 %i.tq, 0
  br i1 %.not.i298, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.tr = and i32 %.val.i297, 64
  %.not.i.i299 = icmp eq i32 %i.tr, 0
  %.0.v.i.i300 = select i1 %.not.i.i299, i64 56, i64 40
  %.0.i.i301 = getelementptr i8, ptr %.0239342355, i64 %.0.v.i.i300
  br label %_PyUnicode_DATA.exit304

bb.br:                                            ; preds = %bb.bp
  %i.ts = getelementptr i8, ptr %.0239342355, i64 56
  %.val4.i303 = load ptr, ptr %i.ts, align 8, !tbaa !40
  br label %_PyUnicode_DATA.exit304

_PyUnicode_DATA.exit304:                          ; preds = %bb.br, %bb.bq, %_PyUnicode_DATA.exit
  %.pn264 = phi ptr [ %i.to, %_PyUnicode_DATA.exit ], [ %.0.i.i301, %bb.bq ], [ %.val4.i303, %bb.br ] ; 11 uses
  %.0202 = getelementptr i8, ptr %.pn264, i64 %.0235.lcssa ; 10 uses
  %i.tt = icmp sgt i64 %.2238, 0
  br i1 %i.tt, label %.lr.ph399.preheader, label %._crit_edge400

.lr.ph399.preheader:                              ; preds = %_PyUnicode_DATA.exit304
  %min.iters.check593 = icmp ult i64 %.2238, 8
  br i1 %min.iters.check593, label %.lr.ph399.preheader782, label %vector.scevcheck572

vector.scevcheck572:                              ; preds = %.lr.ph399.preheader
  %umax573 = tail call i64 @llvm.umax.i64(i64 %.0236.lcssa, i64 1)
  %i.tu = add i64 %umax573, -2
  %i.tv = getelementptr i8, ptr %.pn264, i64 %.0235.lcssa
  %mul575 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.tu, i64 9) ; 2 uses
  %mul.result576 = extractvalue { i64, i1 } %mul575, 0 ; 9 uses
  %mul.overflow577 = extractvalue { i64, i1 } %mul575, 1
  %i.tw = sub i64 0, %mul.result576
  %i.tx = getelementptr i8, ptr %.pn264, i64 %.0235.lcssa
  %i.ty = sub i64 0, %mul.result576
  %i.tz = getelementptr i8, ptr %.pn264, i64 %.0235.lcssa ; 2 uses
  %i.ua = sub i64 0, %mul.result576
  %i.ub = getelementptr i8, ptr %.pn264, i64 %.0235.lcssa ; 2 uses
  %i.uc = sub i64 0, %mul.result576
  %i.ud = getelementptr i8, ptr %.pn264, i64 %.0235.lcssa ; 2 uses
  %i.ue = sub i64 0, %mul.result576
  %i.uf = getelementptr i8, ptr %.pn264, i64 %.0235.lcssa ; 2 uses
  %i.ug = sub i64 0, %mul.result576
  %i.uh = getelementptr i8, ptr %.pn264, i64 %.0235.lcssa
  %i.ui = sub i64 0, %mul.result576
  %i.uj = getelementptr i8, ptr %.pn264, i64 %.0235.lcssa
  %i.uk = sub i64 0, %mul.result576
  %scevgep584.a = getelementptr i8, ptr %i.tv, i64 -1 ; 2 uses
  %18 = getelementptr i8, ptr %scevgep584.a, i64 %i.tw
  %scevgep578 = getelementptr i8, ptr %i.tx, i64 -2 ; 2 uses
  %19 = getelementptr i8, ptr %scevgep578, i64 %i.ty
  %scevgep582 = getelementptr i8, ptr %i.uf, i64 -6
  %20 = insertelement <4 x ptr> poison, ptr %i.tz, i64 0
  %21 = insertelement <4 x ptr> %20, ptr %i.ub, i64 1
  %22 = insertelement <4 x ptr> %21, ptr %i.ud, i64 2
  %23 = insertelement <4 x ptr> %22, ptr %i.uf, i64 3
  %24 = getelementptr i8, <4 x ptr> %23, <4 x i64> <i64 -3, i64 -4, i64 -5, i64 -6>
  %scevgep583.a = getelementptr i8, ptr %i.ud, i64 -5
  %scevgep582.a = getelementptr i8, ptr %i.ub, i64 -4
  %scevgep581 = getelementptr i8, ptr %i.tz, i64 -3
  %scevgep580 = getelementptr i8, ptr %scevgep581, i64 %i.ua
  %scevgep579 = getelementptr i8, ptr %scevgep582.a, i64 %i.uc
  %scevgep574 = getelementptr i8, ptr %scevgep583.a, i64 %i.ue
  %scevgep578.a = getelementptr i8, ptr %scevgep582, i64 %i.ug
  %i.ul = getelementptr i8, ptr %i.uh, i64 -7     ; 2 uses
  %i.um = getelementptr i8, ptr %i.ul, i64 %i.ui
  %i.un = getelementptr i8, ptr %i.uj, i64 -8     ; 2 uses
  %i.uo = getelementptr i8, ptr %i.un, i64 %i.uk
  %25 = insertelement <8 x ptr> poison, ptr %19, i64 0
  %26 = insertelement <8 x ptr> %25, ptr %18, i64 1
  %27 = insertelement <8 x ptr> %26, ptr %scevgep580, i64 2
  %28 = insertelement <8 x ptr> %27, ptr %scevgep579, i64 3
  %i.up = insertelement <8 x ptr> %28, ptr %scevgep574, i64 4
  %i.uq = insertelement <8 x ptr> %i.up, ptr %scevgep578.a, i64 5
  %i.ur = insertelement <8 x ptr> %i.uq, ptr %i.um, i64 6
  %i.us = insertelement <8 x ptr> %i.ur, ptr %i.uo, i64 7
  %i.ut = insertelement <8 x ptr> poison, ptr %scevgep578, i64 0
  %i.uu = insertelement <8 x ptr> %i.ut, ptr %scevgep584.a, i64 1
  %29 = shufflevector <4 x ptr> %24, <4 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %30 = shufflevector <8 x ptr> %i.uu, <8 x ptr> %29, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison>
  %i.uv = insertelement <8 x ptr> %30, ptr %i.ul, i64 6
  %i.uw = insertelement <8 x ptr> %i.uv, ptr %i.un, i64 7
  %i.ux = icmp ugt <8 x ptr> %i.us, %i.uw
  %i.uy = getelementptr i8, ptr %.pn264, i64 %.0235.lcssa
  %scevgep585 = getelementptr i8, ptr %i.uy, i64 -9 ; 2 uses
  %i.uz = sub i64 0, %mul.result576
  %i.va = getelementptr i8, ptr %scevgep585, i64 %i.uz
  %i.vb = icmp ugt ptr %i.va, %scevgep585
  %i.vc = bitcast <8 x i1> %i.ux to i8
  %i.vd = icmp ne i8 %i.vc, 0
  %op.rdx749 = or i1 %mul.overflow577, %i.vd
  %op.rdx750 = or i1 %op.rdx749, %i.vb
  br i1 %op.rdx750, label %.lr.ph399.preheader782, label %vector.memcheck594

vector.memcheck594:                               ; preds = %vector.scevcheck572
  %i.ve = tail call i64 @llvm.umax.i64(i64 %.0236.lcssa, i64 1)
  %.neg745 = mul i64 %i.ve, -9
  %i.vf = getelementptr i8, ptr %.pn264, i64 %.neg745
  %i.vg = getelementptr i8, ptr %i.vf, i64 %.0235.lcssa
  %i.vh = getelementptr i8, ptr %i.vg, i64 9
  %bound0595 = icmp ult ptr %i.im, %.0202
  %bound1596 = icmp ult ptr %i.vh, %i.jq
  %found.conflict597 = and i1 %bound0595, %bound1596
  br i1 %found.conflict597, label %.lr.ph399.preheader782, label %vector.ph598

vector.ph598:                                     ; preds = %vector.memcheck594
  %n.vec599 = and i64 %.2238, 9223372036854775804 ; 4 uses
  %i.vi = mul i64 %n.vec599, -9
  %i.vj = getelementptr i8, ptr %.0202, i64 %i.vi ; 2 uses
  br label %vector.body600

vector.body600:                                   ; preds = %vector.body600, %vector.ph598
  %index601 = phi i64 [ 0, %vector.ph598 ], [ %index.next607, %vector.body600 ] ; 3 uses
  %i.vk = mul i64 %index601, -9                   ; 4 uses
  %next.gep602 = getelementptr i8, ptr %.0202, i64 %i.vk ; 9 uses
  %i.vl = getelementptr i8, ptr %.0202, i64 %i.vk ; 9 uses
  %i.vm = getelementptr i8, ptr %.0202, i64 %i.vk ; 9 uses
  %i.vn = getelementptr i8, ptr %.0202, i64 %i.vk ; 9 uses
  %i.vo = getelementptr [4 x i8], ptr %i.im, i64 %index601
  %wide.load606 = load <4 x i32>, ptr %i.vo, align 4, !tbaa !26, !alias.scope !241, !noalias !242 ; 8 uses
  %wide.load606.frozen = freeze <4 x i32> %wide.load606 ; 2 uses
  %i.vp = udiv <4 x i32> %wide.load606.frozen, splat (i32 10) ; 2 uses
  %i.vq = mul <4 x i32> %i.vp, splat (i32 10)
  %.decomposed815 = sub <4 x i32> %wide.load606.frozen, %i.vq
  %i.vr = trunc nuw nsw <4 x i32> %.decomposed815 to <4 x i8>
  %i.vs = or disjoint <4 x i8> %i.vr, splat (i8 48) ; 4 uses
  %i.vt = getelementptr i8, ptr %next.gep602, i64 -1
  %i.vu = getelementptr i8, ptr %i.vl, i64 -10
  %i.vv = getelementptr i8, ptr %i.vm, i64 -19
  %i.vw = getelementptr i8, ptr %i.vn, i64 -28
  %i.vx = extractelement <4 x i8> %i.vs, i64 0
  store i8 %i.vx, ptr %i.vt, align 1, !tbaa !40, !alias.scope !242
  %i.vy = extractelement <4 x i8> %i.vs, i64 1
  store i8 %i.vy, ptr %i.vu, align 1, !tbaa !40, !alias.scope !242
  %i.vz = extractelement <4 x i8> %i.vs, i64 2
  store i8 %i.vz, ptr %i.vv, align 1, !tbaa !40, !alias.scope !242
  %i.wa = extractelement <4 x i8> %i.vs, i64 3
  store i8 %i.wa, ptr %i.vw, align 1, !tbaa !40, !alias.scope !242
  %i.wb = urem <4 x i32> %i.vp, splat (i32 10)
  %i.wc = trunc nuw nsw <4 x i32> %i.wb to <4 x i8>
  %i.wd = or disjoint <4 x i8> %i.wc, splat (i8 48) ; 4 uses
  %i.we = getelementptr i8, ptr %next.gep602, i64 -2
  %i.wf = getelementptr i8, ptr %i.vl, i64 -11
  %i.wg = getelementptr i8, ptr %i.vm, i64 -20
  %i.wh = getelementptr i8, ptr %i.vn, i64 -29
  %i.wi = extractelement <4 x i8> %i.wd, i64 0
  store i8 %i.wi, ptr %i.we, align 1, !tbaa !40, !alias.scope !242
  %i.wj = extractelement <4 x i8> %i.wd, i64 1
  store i8 %i.wj, ptr %i.wf, align 1, !tbaa !40, !alias.scope !242
  %i.wk = extractelement <4 x i8> %i.wd, i64 2
  store i8 %i.wk, ptr %i.wg, align 1, !tbaa !40, !alias.scope !242
  %i.wl = extractelement <4 x i8> %i.wd, i64 3
  store i8 %i.wl, ptr %i.wh, align 1, !tbaa !40, !alias.scope !242
  %i.wm = udiv <4 x i32> %wide.load606, splat (i32 100)
  %i.wn = urem <4 x i32> %i.wm, splat (i32 10)
  %i.wo = trunc nuw nsw <4 x i32> %i.wn to <4 x i8>
  %i.wp = or disjoint <4 x i8> %i.wo, splat (i8 48) ; 4 uses
  %i.wq = getelementptr i8, ptr %next.gep602, i64 -3
  %i.wr = getelementptr i8, ptr %i.vl, i64 -12
  %i.ws = getelementptr i8, ptr %i.vm, i64 -21
  %i.wt = getelementptr i8, ptr %i.vn, i64 -30
  %i.wu = extractelement <4 x i8> %i.wp, i64 0
  store i8 %i.wu, ptr %i.wq, align 1, !tbaa !40, !alias.scope !242
  %i.wv = extractelement <4 x i8> %i.wp, i64 1
  store i8 %i.wv, ptr %i.wr, align 1, !tbaa !40, !alias.scope !242
  %i.ww = extractelement <4 x i8> %i.wp, i64 2
  store i8 %i.ww, ptr %i.ws, align 1, !tbaa !40, !alias.scope !242
  %i.wx = extractelement <4 x i8> %i.wp, i64 3
  store i8 %i.wx, ptr %i.wt, align 1, !tbaa !40, !alias.scope !242
  %i.wy = udiv <4 x i32> %wide.load606, splat (i32 1000)
  %i.wz = urem <4 x i32> %i.wy, splat (i32 10)
  %i.xa = trunc nuw nsw <4 x i32> %i.wz to <4 x i8>
  %i.xb = or disjoint <4 x i8> %i.xa, splat (i8 48) ; 4 uses
  %i.xc = getelementptr i8, ptr %next.gep602, i64 -4
  %i.xd = getelementptr i8, ptr %i.vl, i64 -13
  %i.xe = getelementptr i8, ptr %i.vm, i64 -22
  %i.xf = getelementptr i8, ptr %i.vn, i64 -31
  %i.xg = extractelement <4 x i8> %i.xb, i64 0
  store i8 %i.xg, ptr %i.xc, align 1, !tbaa !40, !alias.scope !242
  %i.xh = extractelement <4 x i8> %i.xb, i64 1
  store i8 %i.xh, ptr %i.xd, align 1, !tbaa !40, !alias.scope !242
  %i.xi = extractelement <4 x i8> %i.xb, i64 2
  store i8 %i.xi, ptr %i.xe, align 1, !tbaa !40, !alias.scope !242
  %i.xj = extractelement <4 x i8> %i.xb, i64 3
  store i8 %i.xj, ptr %i.xf, align 1, !tbaa !40, !alias.scope !242
  %i.xk = udiv <4 x i32> %wide.load606, splat (i32 10000)
  %i.xl = urem <4 x i32> %i.xk, splat (i32 10)
  %i.xm = trunc nuw nsw <4 x i32> %i.xl to <4 x i8>
  %i.xn = or disjoint <4 x i8> %i.xm, splat (i8 48) ; 4 uses
  %i.xo = getelementptr i8, ptr %next.gep602, i64 -5
  %i.xp = getelementptr i8, ptr %i.vl, i64 -14
  %i.xq = getelementptr i8, ptr %i.vm, i64 -23
  %i.xr = getelementptr i8, ptr %i.vn, i64 -32
  %i.xs = extractelement <4 x i8> %i.xn, i64 0
  store i8 %i.xs, ptr %i.xo, align 1, !tbaa !40, !alias.scope !242
  %i.xt = extractelement <4 x i8> %i.xn, i64 1
  store i8 %i.xt, ptr %i.xp, align 1, !tbaa !40, !alias.scope !242
  %i.xu = extractelement <4 x i8> %i.xn, i64 2
  store i8 %i.xu, ptr %i.xq, align 1, !tbaa !40, !alias.scope !242
  %i.xv = extractelement <4 x i8> %i.xn, i64 3
  store i8 %i.xv, ptr %i.xr, align 1, !tbaa !40, !alias.scope !242
  %i.xw = udiv <4 x i32> %wide.load606, splat (i32 100000)
  %i.xx = trunc nuw <4 x i32> %i.xw to <4 x i16>
  %i.xy = urem <4 x i16> %i.xx, splat (i16 10)
  %i.xz = trunc nuw nsw <4 x i16> %i.xy to <4 x i8>
  %i.ya = or disjoint <4 x i8> %i.xz, splat (i8 48) ; 4 uses
  %i.yb = getelementptr i8, ptr %next.gep602, i64 -6
  %i.yc = getelementptr i8, ptr %i.vl, i64 -15
  %i.yd = getelementptr i8, ptr %i.vm, i64 -24
  %i.ye = getelementptr i8, ptr %i.vn, i64 -33
  %i.yf = extractelement <4 x i8> %i.ya, i64 0
  store i8 %i.yf, ptr %i.yb, align 1, !tbaa !40, !alias.scope !242
  %i.yg = extractelement <4 x i8> %i.ya, i64 1
  store i8 %i.yg, ptr %i.yc, align 1, !tbaa !40, !alias.scope !242
  %i.yh = extractelement <4 x i8> %i.ya, i64 2
  store i8 %i.yh, ptr %i.yd, align 1, !tbaa !40, !alias.scope !242
  %i.yi = extractelement <4 x i8> %i.ya, i64 3
  store i8 %i.yi, ptr %i.ye, align 1, !tbaa !40, !alias.scope !242
  %i.yj = udiv <4 x i32> %wide.load606, splat (i32 1000000)
  %i.yk = trunc nuw nsw <4 x i32> %i.yj to <4 x i16>
  %i.yl = urem <4 x i16> %i.yk, splat (i16 10)
  %i.ym = trunc nuw nsw <4 x i16> %i.yl to <4 x i8>
  %i.yn = or disjoint <4 x i8> %i.ym, splat (i8 48) ; 4 uses
  %i.yo = getelementptr i8, ptr %next.gep602, i64 -7
  %i.yp = getelementptr i8, ptr %i.vl, i64 -16
  %i.yq = getelementptr i8, ptr %i.vm, i64 -25
  %i.yr = getelementptr i8, ptr %i.vn, i64 -34
  %i.ys = extractelement <4 x i8> %i.yn, i64 0
  store i8 %i.ys, ptr %i.yo, align 1, !tbaa !40, !alias.scope !242
  %i.yt = extractelement <4 x i8> %i.yn, i64 1
  store i8 %i.yt, ptr %i.yp, align 1, !tbaa !40, !alias.scope !242
  %i.yu = extractelement <4 x i8> %i.yn, i64 2
  store i8 %i.yu, ptr %i.yq, align 1, !tbaa !40, !alias.scope !242
  %i.yv = extractelement <4 x i8> %i.yn, i64 3
  store i8 %i.yv, ptr %i.yr, align 1, !tbaa !40, !alias.scope !242
  %i.yw = udiv <4 x i32> %wide.load606, splat (i32 10000000)
  %i.yx = trunc nuw nsw <4 x i32> %i.yw to <4 x i16>
  %i.yy = urem <4 x i16> %i.yx, splat (i16 10)
  %i.yz = trunc nuw nsw <4 x i16> %i.yy to <4 x i8>
  %i.za = or disjoint <4 x i8> %i.yz, splat (i8 48) ; 4 uses
  %i.zb = getelementptr i8, ptr %next.gep602, i64 -8
  %i.zc = getelementptr i8, ptr %i.vl, i64 -17
  %i.zd = getelementptr i8, ptr %i.vm, i64 -26
  %i.ze = getelementptr i8, ptr %i.vn, i64 -35
  %i.zf = extractelement <4 x i8> %i.za, i64 0
  store i8 %i.zf, ptr %i.zb, align 1, !tbaa !40, !alias.scope !242
  %i.zg = extractelement <4 x i8> %i.za, i64 1
  store i8 %i.zg, ptr %i.zc, align 1, !tbaa !40, !alias.scope !242
  %i.zh = extractelement <4 x i8> %i.za, i64 2
  store i8 %i.zh, ptr %i.zd, align 1, !tbaa !40, !alias.scope !242
  %i.zi = extractelement <4 x i8> %i.za, i64 3
  store i8 %i.zi, ptr %i.ze, align 1, !tbaa !40, !alias.scope !242
  %i.zj = udiv <4 x i32> %wide.load606, splat (i32 100000000)
  %i.zk = trunc nuw nsw <4 x i32> %i.zj to <4 x i8>
  %i.zl = urem <4 x i8> %i.zk, splat (i8 10)
  %i.zm = or disjoint <4 x i8> %i.zl, splat (i8 48) ; 4 uses
  %i.zn = getelementptr i8, ptr %next.gep602, i64 -9
  %i.zo = getelementptr i8, ptr %i.vl, i64 -18
  %i.zp = getelementptr i8, ptr %i.vm, i64 -27
  %i.zq = getelementptr i8, ptr %i.vn, i64 -36
  %i.zr = extractelement <4 x i8> %i.zm, i64 0
  store i8 %i.zr, ptr %i.zn, align 1, !tbaa !40, !alias.scope !242
  %i.zs = extractelement <4 x i8> %i.zm, i64 1
  store i8 %i.zs, ptr %i.zo, align 1, !tbaa !40, !alias.scope !242
  %i.zt = extractelement <4 x i8> %i.zm, i64 2
  store i8 %i.zt, ptr %i.zp, align 1, !tbaa !40, !alias.scope !242
  %i.zu = extractelement <4 x i8> %i.zm, i64 3
  store i8 %i.zu, ptr %i.zq, align 1, !tbaa !40, !alias.scope !242
  %index.next607 = add nuw i64 %index601, 4       ; 2 uses
  %i.zv = icmp eq i64 %index.next607, %n.vec599
  br i1 %i.zv, label %middle.block608, label %vector.body600, !llvm.loop !221

middle.block608:                                  ; preds = %vector.body600
  %cmp.n609 = icmp eq i64 %.2238, %n.vec599
  br i1 %cmp.n609, label %._crit_edge400, label %.lr.ph399.preheader782

.lr.ph399.preheader782:                           ; preds = %vector.memcheck594, %vector.scevcheck572, %.lr.ph399.preheader, %middle.block608
  %.1203398.ph = phi ptr [ %.0202, %vector.memcheck594 ], [ %.0202, %vector.scevcheck572 ], [ %.0202, %.lr.ph399.preheader ], [ %i.vj, %middle.block608 ]
  %.2232397.ph = phi i64 [ 0, %vector.memcheck594 ], [ 0, %vector.scevcheck572 ], [ 0, %.lr.ph399.preheader ], [ %n.vec599, %middle.block608 ]
  br label %.lr.ph399

.lr.ph399:                                        ; preds = %.lr.ph399.preheader782, %.lr.ph399
  %.1203398 = phi ptr [ %i.aah, %.lr.ph399 ], [ %.1203398.ph, %.lr.ph399.preheader782 ] ; 2 uses
  %.2232397 = phi i64 [ %i.aba, %.lr.ph399 ], [ %.2232397.ph, %.lr.ph399.preheader782 ] ; 2 uses
  %i.zw = getelementptr [4 x i8], ptr %i.im, i64 %.2232397
  %i.zx = load i32, ptr %i.zw, align 4, !tbaa !26 ; 6 uses
  %i.zy = urem i32 %i.zx, 10
  %i.zz = trunc nuw nsw i32 %i.zy to i8
  %i.aaa = or disjoint i8 %i.zz, 48
  %i.aab = getelementptr i8, ptr %.1203398, i64 -1
  store i8 %i.aaa, ptr %i.aab, align 1, !tbaa !40
  %i.aac = udiv i32 %i.zx, 10000000
  %.lhs.trunc481 = trunc nuw nsw i32 %i.aac to i16
  %i.aad = urem i16 %.lhs.trunc481, 10
  %i.aae = trunc nuw nsw i16 %i.aad to i8
  %i.aaf = udiv i32 %i.zx, 100000000
  %.lhs.trunc483 = trunc nuw nsw i32 %i.aaf to i8
  %i.aag = urem i8 %.lhs.trunc483, 10
  %i.aah = getelementptr i8, ptr %.1203398, i64 -9 ; 3 uses
  %i.aai = insertelement <4 x i32> poison, i32 %i.zx, i64 0
  %i.aaj = shufflevector <4 x i32> %i.aai, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aak = udiv <4 x i32> %i.aaj, <i32 10000, i32 1000, i32 100, i32 10>
  %i.aal = urem <4 x i32> %i.aak, splat (i32 10)
  %i.aam = trunc nuw nsw <4 x i32> %i.aal to <4 x i8>
  %i.aan = udiv i32 %i.zx, 100000
  %.lhs.trunc477 = trunc nuw i32 %i.aan to i16
  %i.aao = udiv i32 %i.zx, 1000000
  %.lhs.trunc479 = trunc nuw nsw i32 %i.aao to i16
  %i.aap = insertelement <2 x i16> poison, i16 %.lhs.trunc479, i64 0
  %i.aaq = insertelement <2 x i16> %i.aap, i16 %.lhs.trunc477, i64 1
  %i.aar = urem <2 x i16> %i.aaq, splat (i16 10)
  %i.aas = insertelement <8 x i8> poison, i8 %i.aag, i64 0
  %i.aat = insertelement <8 x i8> %i.aas, i8 %i.aae, i64 1
  %i.aau = shufflevector <4 x i8> %i.aam, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aav = shufflevector <8 x i8> %i.aat, <8 x i8> %i.aau, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.aaw = shufflevector <2 x i16> %i.aar, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aax = trunc <8 x i16> %i.aaw to <8 x i8>
  %i.aay = shufflevector <8 x i8> %i.aav, <8 x i8> %i.aax, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 6, i32 7>
  %i.aaz = or disjoint <8 x i8> %i.aay, splat (i8 48)
  store <8 x i8> %i.aaz, ptr %i.aah, align 1, !tbaa !40
  %i.aba = add nuw nsw i64 %.2232397, 1           ; 2 uses
  %exitcond433.not = icmp eq i64 %i.aba, %.2238
  br i1 %exitcond433.not, label %._crit_edge400, label %.lr.ph399, !llvm.loop !222

._crit_edge400:                                   ; preds = %.lr.ph399, %middle.block608, %_PyUnicode_DATA.exit304
  %.2232.lcssa = phi i64 [ 0, %_PyUnicode_DATA.exit304 ], [ %.2238, %middle.block608 ], [ %.2238, %.lr.ph399 ]
  %.1203.lcssa = phi ptr [ %.0202, %_PyUnicode_DATA.exit304 ], [ %i.vj, %middle.block608 ], [ %i.aah, %.lr.ph399 ]
  %i.abb = getelementptr [4 x i8], ptr %i.im, i64 %.2232.lcssa
  %i.abc = load i32, ptr %i.abb, align 4, !tbaa !26
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bs, %._crit_edge400
  %.3222 = phi i32 [ %i.abc, %._crit_edge400 ], [ %i.abh, %bb.bs ] ; 3 uses
  %.3205 = phi ptr [ %.1203.lcssa, %._crit_edge400 ], [ %i.abg, %bb.bs ] ; 2 uses
  %i.abd = urem i32 %.3222, 10
  %i.abe = trunc nuw nsw i32 %i.abd to i8
  %i.abf = or disjoint i8 %i.abe, 48
  %i.abg = getelementptr i8, ptr %.3205, i64 -1   ; 2 uses
  store i8 %i.abf, ptr %i.abg, align 1, !tbaa !40
  %i.abh = udiv i32 %.3222, 10
  %.not265 = icmp ult i32 %.3222, 10
  br i1 %.not265, label %bb.bt, label %bb.bs, !llvm.loop !223

bb.bt:                                            ; preds = %bb.bs
  br i1 %i.h, label %bb.bu, label %bb.cp

bb.bu:                                            ; preds = %bb.bt
  %i.abi = getelementptr i8, ptr %.3205, i64 -2
  store i8 45, ptr %i.abi, align 1, !tbaa !40
  br label %bb.cp

bb.bv:                                            ; preds = %bb.bk
  br i1 %.not258, label %bb.bz, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.abj = load ptr, ptr %2, align 8, !tbaa !152  ; 3 uses
  %i.abk = getelementptr i8, ptr %i.abj, i64 32
  %.val.i305 = load i32, ptr %i.abk, align 8      ; 2 uses
  %i.abl = and i32 %.val.i305, 32
  %.not.i306 = icmp eq i32 %i.abl, 0
  br i1 %.not.i306, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.abm = and i32 %.val.i305, 64
  %.not.i.i307 = icmp eq i32 %i.abm, 0
  %.0.v.i.i308 = select i1 %.not.i.i307, i64 56, i64 40
  %.0.i.i309 = getelementptr i8, ptr %i.abj, i64 %.0.v.i.i308
  br label %_PyUnicode_DATA.exit312

bb.by:                                            ; preds = %bb.bw
  %i.abn = getelementptr i8, ptr %i.abj, i64 56
  %.val4.i311 = load ptr, ptr %i.abn, align 8, !tbaa !40
  br label %_PyUnicode_DATA.exit312

_PyUnicode_DATA.exit312:                          ; preds = %bb.bx, %bb.by
  %.0.i310 = phi ptr [ %.0.i.i309, %bb.bx ], [ %.val4.i311, %bb.by ]
  %i.abo = getelementptr i8, ptr %2, i64 32
  %i.abp = load i64, ptr %i.abo, align 8, !tbaa !146
  %i.abq = getelementptr [2 x i8], ptr %.0.i310, i64 %i.abp
  br label %_PyUnicode_DATA.exit320

bb.bz:                                            ; preds = %bb.bv
  %i.abr = getelementptr i8, ptr %.0239342355, i64 32
  %.val.i313 = load i32, ptr %i.abr, align 8      ; 2 uses
  %i.abs = and i32 %.val.i313, 32
  %.not.i314 = icmp eq i32 %i.abs, 0
  br i1 %.not.i314, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.abt = and i32 %.val.i313, 64
  %.not.i.i315 = icmp eq i32 %i.abt, 0
  %.0.v.i.i316 = select i1 %.not.i.i315, i64 56, i64 40
  %.0.i.i317 = getelementptr i8, ptr %.0239342355, i64 %.0.v.i.i316
  br label %_PyUnicode_DATA.exit320

bb.cb:                                            ; preds = %bb.bz
  %i.abu = getelementptr i8, ptr %.0239342355, i64 56
  %.val4.i319 = load ptr, ptr %i.abu, align 8, !tbaa !40
  br label %_PyUnicode_DATA.exit320

_PyUnicode_DATA.exit320:                          ; preds = %bb.cb, %bb.ca, %_PyUnicode_DATA.exit312
  %.pn262 = phi ptr [ %i.abq, %_PyUnicode_DATA.exit312 ], [ %.0.i.i317, %bb.ca ], [ %.val4.i319, %bb.cb ] ; 10 uses
  %.0198 = getelementptr [2 x i8], ptr %.pn262, i64 %.0235.lcssa ; 8 uses
  %i.abv = icmp sgt i64 %.2238, 0
  br i1 %i.abv, label %.lr.ph390.preheader, label %._crit_edge391

.lr.ph390.preheader:                              ; preds = %_PyUnicode_DATA.exit320
  %min.iters.check557 = icmp ult i64 %.2238, 8
  br i1 %min.iters.check557, label %.lr.ph390.preheader784, label %vector.scevcheck542

vector.scevcheck542:                              ; preds = %.lr.ph390.preheader
  %umax543 = tail call i64 @llvm.umax.i64(i64 %.0236.lcssa, i64 1)
  %i.abw = add i64 %umax543, -2
  %i.abx = shl i64 %.0235.lcssa, 1                ; 9 uses
  %i.aby = getelementptr i8, ptr %.pn262, i64 %i.abx
  %mul545 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.abw, i64 18) ; 2 uses
  %mul.result546 = extractvalue { i64, i1 } %mul545, 0 ; 9 uses
  %mul.overflow547 = extractvalue { i64, i1 } %mul545, 1
  %i.abz = sub i64 0, %mul.result546
  %i.aca = getelementptr i8, ptr %.pn262, i64 %i.abx
  %i.acb = sub i64 0, %mul.result546
  %i.acc = getelementptr i8, ptr %.pn262, i64 %i.abx ; 2 uses
  %i.acd = sub i64 0, %mul.result546
  %i.ace = getelementptr i8, ptr %.pn262, i64 %i.abx ; 2 uses
  %i.acf = sub i64 0, %mul.result546
  %i.acg = getelementptr i8, ptr %.pn262, i64 %i.abx ; 2 uses
  %i.ach = sub i64 0, %mul.result546
  %i.aci = getelementptr i8, ptr %.pn262, i64 %i.abx ; 2 uses
  %i.acj = sub i64 0, %mul.result546
  %i.ack = getelementptr i8, ptr %.pn262, i64 %i.abx
  %i.acl = sub i64 0, %mul.result546
  %i.acm = getelementptr i8, ptr %.pn262, i64 %i.abx
  %i.acn = sub i64 0, %mul.result546
  %scevgep554.a = getelementptr i8, ptr %i.aby, i64 -2 ; 2 uses
  %31 = getelementptr i8, ptr %scevgep554.a, i64 %i.abz
  %scevgep548 = getelementptr i8, ptr %i.aca, i64 -4 ; 2 uses
  %32 = getelementptr i8, ptr %scevgep548, i64 %i.acb
  %scevgep552 = getelementptr i8, ptr %i.aci, i64 -12
  %33 = insertelement <4 x ptr> poison, ptr %i.acc, i64 0
  %34 = insertelement <4 x ptr> %33, ptr %i.ace, i64 1
  %35 = insertelement <4 x ptr> %34, ptr %i.acg, i64 2
  %36 = insertelement <4 x ptr> %35, ptr %i.aci, i64 3
  %37 = getelementptr i8, <4 x ptr> %36, <4 x i64> <i64 -6, i64 -8, i64 -10, i64 -12>
  %scevgep553.a = getelementptr i8, ptr %i.acg, i64 -10
  %scevgep552.a = getelementptr i8, ptr %i.ace, i64 -8
  %scevgep551 = getelementptr i8, ptr %i.acc, i64 -6
  %scevgep550 = getelementptr i8, ptr %scevgep551, i64 %i.acd
  %scevgep549 = getelementptr i8, ptr %scevgep552.a, i64 %i.acf
  %scevgep544 = getelementptr i8, ptr %scevgep553.a, i64 %i.ach
  %scevgep548.a = getelementptr i8, ptr %scevgep552, i64 %i.acj
  %i.aco = getelementptr i8, ptr %i.ack, i64 -14  ; 2 uses
  %i.acp = getelementptr i8, ptr %i.aco, i64 %i.acl
  %i.acq = getelementptr i8, ptr %i.acm, i64 -16  ; 2 uses
  %i.acr = getelementptr i8, ptr %i.acq, i64 %i.acn
  %38 = insertelement <8 x ptr> poison, ptr %32, i64 0
  %39 = insertelement <8 x ptr> %38, ptr %31, i64 1
  %40 = insertelement <8 x ptr> %39, ptr %scevgep550, i64 2
  %41 = insertelement <8 x ptr> %40, ptr %scevgep549, i64 3
  %i.acs = insertelement <8 x ptr> %41, ptr %scevgep544, i64 4
  %i.act = insertelement <8 x ptr> %i.acs, ptr %scevgep548.a, i64 5
  %i.acu = insertelement <8 x ptr> %i.act, ptr %i.acp, i64 6
  %i.acv = insertelement <8 x ptr> %i.acu, ptr %i.acr, i64 7
  %i.acw = insertelement <8 x ptr> poison, ptr %scevgep548, i64 0
  %i.acx = insertelement <8 x ptr> %i.acw, ptr %scevgep554.a, i64 1
  %42 = shufflevector <4 x ptr> %37, <4 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %43 = shufflevector <8 x ptr> %i.acx, <8 x ptr> %42, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison>
  %i.acy = insertelement <8 x ptr> %43, ptr %i.aco, i64 6
  %i.acz = insertelement <8 x ptr> %i.acy, ptr %i.acq, i64 7
  %i.ada = icmp ugt <8 x ptr> %i.acv, %i.acz
  %i.adb = getelementptr i8, ptr %.pn262, i64 %i.abx
  %scevgep555 = getelementptr i8, ptr %i.adb, i64 -18 ; 2 uses
  %i.adc = sub i64 0, %mul.result546
  %i.add = getelementptr i8, ptr %scevgep555, i64 %i.adc
  %i.ade = icmp ugt ptr %i.add, %scevgep555
  %i.adf = bitcast <8 x i1> %i.ada to i8
  %i.adg = icmp ne i8 %i.adf, 0
  %op.rdx751 = or i1 %mul.overflow547, %i.adg
  %op.rdx752 = or i1 %op.rdx751, %i.ade
  br i1 %op.rdx752, label %.lr.ph390.preheader784, label %vector.ph558

vector.ph558:                                     ; preds = %vector.scevcheck542
  %n.vec559 = and i64 %.2238, 9223372036854775804 ; 4 uses
  %i.adh = mul i64 %n.vec559, -18
  %i.adi = getelementptr i8, ptr %.0198, i64 %i.adh ; 2 uses
  br label %vector.body560

vector.body560:                                   ; preds = %vector.body560, %vector.ph558
  %index561 = phi i64 [ 0, %vector.ph558 ], [ %index.next567, %vector.body560 ] ; 3 uses
  %i.adj = mul i64 %index561, -18                 ; 4 uses
  %next.gep562 = getelementptr i8, ptr %.0198, i64 %i.adj
  %i.adk = getelementptr i8, ptr %.0198, i64 %i.adj
  %i.adl = getelementptr i8, ptr %.0198, i64 %i.adj
  %i.adm = getelementptr i8, ptr %.0198, i64 %i.adj ; 2 uses
  %i.adn = getelementptr [4 x i8], ptr %i.im, i64 %index561
  %wide.load566 = load <4 x i32>, ptr %i.adn, align 4, !tbaa !26 ; 8 uses
  %wide.load566.frozen = freeze <4 x i32> %wide.load566 ; 2 uses
  %i.ado = udiv <4 x i32> %wide.load566.frozen, splat (i32 10) ; 2 uses
  %i.adp = mul <4 x i32> %i.ado, splat (i32 10)
  %.decomposed816 = sub <4 x i32> %wide.load566.frozen, %i.adp
  %i.adq = trunc nuw nsw <4 x i32> %.decomposed816 to <4 x i16>
  %i.adr = or disjoint <4 x i16> %i.adq, splat (i16 48) ; 4 uses
  %i.ads = shufflevector <4 x i16> %i.adr, <4 x i16> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.adt = getelementptr i8, ptr %i.adm, i64 -56
  %i.adu = urem <4 x i32> %i.ado, splat (i32 10)
  %i.adv = trunc nuw nsw <4 x i32> %i.adu to <4 x i16>
  %i.adw = or disjoint <4 x i16> %i.adv, splat (i16 48) ; 4 uses
  %i.adx = shufflevector <4 x i16> %i.adw, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ady = getelementptr i8, ptr %i.adl, i64 -40
  %i.adz = udiv <4 x i32> %wide.load566, splat (i32 100)
  %i.aea = urem <4 x i32> %i.adz, splat (i32 10)
  %i.aeb = trunc nuw nsw <4 x i32> %i.aea to <4 x i16>
  %i.aec = or disjoint <4 x i16> %i.aeb, splat (i16 48) ; 4 uses
  %i.aed = shufflevector <4 x i16> %i.aec, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aee = shufflevector <4 x i16> %i.aec, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aef = getelementptr i8, ptr %i.adk, i64 -24
  %i.aeg = udiv <4 x i32> %wide.load566, splat (i32 1000)
  %i.aeh = urem <4 x i32> %i.aeg, splat (i32 10)
  %i.aei = trunc nuw nsw <4 x i32> %i.aeh to <4 x i16>
  %i.aej = or disjoint <4 x i16> %i.aei, splat (i16 48) ; 4 uses
  %i.aek = shufflevector <4 x i16> %i.aej, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ael = shufflevector <4 x i16> %i.aej, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aem = shufflevector <4 x i16> %i.aej, <4 x i16> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aen = getelementptr i8, ptr %next.gep562, i64 -8
  %i.aeo = shufflevector <4 x i16> %i.aej, <4 x i16> %i.aec, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.aep = shufflevector <4 x i16> %i.aeo, <4 x i16> %i.adw, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.aeq = shufflevector <4 x i16> %i.aep, <4 x i16> %i.adr, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  store <4 x i16> %i.aeq, ptr %i.aen, align 2, !tbaa !148
  %i.aer = udiv <4 x i32> %wide.load566, splat (i32 10000)
  %i.aes = urem <4 x i32> %i.aer, splat (i32 10)
  %i.aet = trunc nuw nsw <4 x i32> %i.aes to <4 x i16>
  %i.aeu = or disjoint <4 x i16> %i.aet, splat (i16 48) ; 4 uses
  %i.aev = shufflevector <4 x i16> %i.aeu, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aew = shufflevector <4 x i16> %i.aeu, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aex = shufflevector <4 x i16> %i.aeu, <4 x i16> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aey = shufflevector <4 x i16> %i.aeu, <4 x i16> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aez = udiv <4 x i32> %wide.load566, splat (i32 100000)
  %i.afa = trunc nuw <4 x i32> %i.aez to <4 x i16>
  %i.afb = urem <4 x i16> %i.afa, splat (i16 10)
  %i.afc = or disjoint <4 x i16> %i.afb, splat (i16 48) ; 4 uses
  %i.afd = shufflevector <4 x i16> %i.afc, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.afe = shufflevector <4 x i16> %i.afc, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aff = shufflevector <4 x i16> %i.afc, <4 x i16> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.afg = shufflevector <4 x i16> %i.afc, <4 x i16> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.afh = udiv <4 x i32> %wide.load566, splat (i32 1000000)
  %i.afi = trunc nuw nsw <4 x i32> %i.afh to <4 x i16>
  %i.afj = urem <4 x i16> %i.afi, splat (i16 10)
  %i.afk = or disjoint <4 x i16> %i.afj, splat (i16 48) ; 4 uses
  %i.afl = shufflevector <4 x i16> %i.afk, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.afm = shufflevector <4 x i16> %i.afk, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.afn = shufflevector <4 x i16> %i.afk, <4 x i16> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.afo = shufflevector <4 x i16> %i.afk, <4 x i16> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.afp = udiv <4 x i32> %wide.load566, splat (i32 10000000)
  %i.afq = trunc nuw nsw <4 x i32> %i.afp to <4 x i16>
  %i.afr = urem <4 x i16> %i.afq, splat (i16 10)
  %i.afs = or disjoint <4 x i16> %i.afr, splat (i16 48) ; 4 uses
  %i.aft = shufflevector <4 x i16> %i.afs, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.afu = shufflevector <4 x i16> %i.afs, <4 x i16> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.afv = shufflevector <4 x i16> %i.afs, <4 x i16> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.afw = udiv <4 x i32> %wide.load566, splat (i32 100000000)
  %i.afx = trunc nuw nsw <4 x i32> %i.afw to <4 x i8>
  %i.afy = urem <4 x i8> %i.afx, splat (i8 10)
  %i.afz = or disjoint <4 x i8> %i.afy, splat (i8 48)
  %i.aga = zext nneg <4 x i8> %i.afz to <4 x i16> ; 4 uses
  %i.agb = shufflevector <4 x i16> %i.aga, <4 x i16> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.agc = shufflevector <4 x i16> %i.aga, <4 x i16> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.agd = getelementptr i8, ptr %i.adm, i64 -72
  %i.age = shufflevector <4 x i16> %i.aec, <4 x i16> %i.adw, <8 x i32> <i32 1, i32 5, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.agf = shufflevector <8 x i16> %i.age, <8 x i16> %i.ads, <8 x i32> <i32 0, i32 1, i32 9, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.agg = shufflevector <8 x i16> %i.agf, <8 x i16> %i.agc, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.agh = shufflevector <8 x i16> %i.agg, <8 x i16> %i.afv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 poison, i32 poison, i32 poison>
  %i.agi = shufflevector <8 x i16> %i.agh, <8 x i16> %i.afo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 poison, i32 poison>
  %i.agj = shufflevector <8 x i16> %i.agi, <8 x i16> %i.afg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 poison>
  %i.agk = shufflevector <8 x i16> %i.agj, <8 x i16> %i.aey, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 8>
  store <8 x i16> %i.agk, ptr %i.aef, align 2, !tbaa !148
  %i.agl = shufflevector <4 x i16> %i.adw, <4 x i16> %i.adr, <8 x i32> <i32 2, i32 6, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.agm = shufflevector <8 x i16> %i.agl, <8 x i16> %i.agb, <8 x i32> <i32 0, i32 1, i32 9, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.agn = shufflevector <8 x i16> %i.agm, <8 x i16> %i.afu, <8 x i32> <i32 0, i32 1, i32 2, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ago = shufflevector <8 x i16> %i.agn, <8 x i16> %i.afn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 9, i32 poison, i32 poison, i32 poison>
  %i.agp = shufflevector <8 x i16> %i.ago, <8 x i16> %i.aff, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 9, i32 poison, i32 poison>
  %i.agq = shufflevector <8 x i16> %i.agp, <8 x i16> %i.aex, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 9, i32 poison>
  %i.agr = shufflevector <8 x i16> %i.agq, <8 x i16> %i.aem, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 9>
  store <8 x i16> %i.agr, ptr %i.ady, align 2, !tbaa !148
  %i.ags = shufflevector <4 x i16> %i.adr, <4 x i16> %i.aga, <8 x i32> <i32 3, i32 6, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.agt = shufflevector <8 x i16> %i.ags, <8 x i16> %i.aft, <8 x i32> <i32 0, i32 1, i32 10, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.agu = shufflevector <8 x i16> %i.agt, <8 x i16> %i.afm, <8 x i32> <i32 0, i32 1, i32 2, i32 10, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.agv = shufflevector <8 x i16> %i.agu, <8 x i16> %i.afe, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 10, i32 poison, i32 poison, i32 poison>
  %i.agw = shufflevector <8 x i16> %i.agv, <8 x i16> %i.aew, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 10, i32 poison, i32 poison>
  %i.agx = shufflevector <8 x i16> %i.agw, <8 x i16> %i.ael, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 10, i32 poison>
  %i.agy = shufflevector <8 x i16> %i.agx, <8 x i16> %i.aee, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 10>
  store <8 x i16> %i.agy, ptr %i.adt, align 2, !tbaa !148
  %i.agz = shufflevector <4 x i16> %i.aga, <4 x i16> %i.afs, <8 x i32> <i32 3, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aha = shufflevector <8 x i16> %i.agz, <8 x i16> %i.afl, <8 x i32> <i32 0, i32 1, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ahb = shufflevector <8 x i16> %i.aha, <8 x i16> %i.afd, <8 x i32> <i32 0, i32 1, i32 2, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ahc = shufflevector <8 x i16> %i.ahb, <8 x i16> %i.aev, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 11, i32 poison, i32 poison, i32 poison>
  %i.ahd = shufflevector <8 x i16> %i.ahc, <8 x i16> %i.aek, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 11, i32 poison, i32 poison>
  %i.ahe = shufflevector <8 x i16> %i.ahd, <8 x i16> %i.aed, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 11, i32 poison>
  %i.ahf = shufflevector <8 x i16> %i.ahe, <8 x i16> %i.adx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 11>
  store <8 x i16> %i.ahf, ptr %i.agd, align 2, !tbaa !148
  %index.next567 = add nuw i64 %index561, 4       ; 2 uses
  %i.ahg = icmp eq i64 %index.next567, %n.vec559
  br i1 %i.ahg, label %middle.block568, label %vector.body560, !llvm.loop !224

middle.block568:                                  ; preds = %vector.body560
  %cmp.n569 = icmp eq i64 %.2238, %n.vec559
  br i1 %cmp.n569, label %._crit_edge391, label %.lr.ph390.preheader784

.lr.ph390.preheader784:                           ; preds = %vector.scevcheck542, %.lr.ph390.preheader, %middle.block568
  %.1199389.ph = phi ptr [ %.0198, %vector.scevcheck542 ], [ %.0198, %.lr.ph390.preheader ], [ %i.adi, %middle.block568 ]
  %.3233388.ph = phi i64 [ 0, %vector.scevcheck542 ], [ 0, %.lr.ph390.preheader ], [ %n.vec559, %middle.block568 ]
  br label %.lr.ph390

.lr.ph390:                                        ; preds = %.lr.ph390.preheader784, %.lr.ph390
  %.1199389 = phi ptr [ %i.ahs, %.lr.ph390 ], [ %.1199389.ph, %.lr.ph390.preheader784 ] ; 2 uses
  %.3233388 = phi i64 [ %i.ail, %.lr.ph390 ], [ %.3233388.ph, %.lr.ph390.preheader784 ] ; 2 uses
  %i.ahh = getelementptr [4 x i8], ptr %i.im, i64 %.3233388
  %i.ahi = load i32, ptr %i.ahh, align 4, !tbaa !26 ; 6 uses
  %i.ahj = urem i32 %i.ahi, 10
  %i.ahk = trunc nuw nsw i32 %i.ahj to i16
  %i.ahl = or disjoint i16 %i.ahk, 48
  %i.ahm = getelementptr i8, ptr %.1199389, i64 -2
  store i16 %i.ahl, ptr %i.ahm, align 2, !tbaa !148
  %i.ahn = udiv i32 %i.ahi, 10000000
  %.lhs.trunc489 = trunc nuw nsw i32 %i.ahn to i16
  %i.aho = urem i16 %.lhs.trunc489, 10
  %i.ahp = udiv i32 %i.ahi, 100000000
  %.lhs.trunc491 = trunc nuw nsw i32 %i.ahp to i8
  %i.ahq = urem i8 %.lhs.trunc491, 10
  %i.ahr = or disjoint i8 %i.ahq, 48
  %i.ahs = getelementptr i8, ptr %.1199389, i64 -18 ; 3 uses
  %i.aht = insertelement <4 x i32> poison, i32 %i.ahi, i64 0
  %i.ahu = shufflevector <4 x i32> %i.aht, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ahv = udiv <4 x i32> %i.ahu, <i32 10000, i32 1000, i32 100, i32 10>
  %i.ahw = urem <4 x i32> %i.ahv, splat (i32 10)
  %i.ahx = trunc nuw nsw <4 x i32> %i.ahw to <4 x i16>
  %i.ahy = udiv i32 %i.ahi, 100000
  %.lhs.trunc485 = trunc nuw i32 %i.ahy to i16
  %i.ahz = udiv i32 %i.ahi, 1000000
  %.lhs.trunc487 = trunc nuw nsw i32 %i.ahz to i16
  %i.aia = insertelement <2 x i16> poison, i16 %.lhs.trunc487, i64 0
  %i.aib = insertelement <2 x i16> %i.aia, i16 %.lhs.trunc485, i64 1
  %i.aic = urem <2 x i16> %i.aib, splat (i16 10)
  %i.aid = zext nneg i8 %i.ahr to i16
  %i.aie = insertelement <8 x i16> poison, i16 %i.aid, i64 0
  %i.aif = insertelement <8 x i16> %i.aie, i16 %i.aho, i64 1
  %i.aig = shufflevector <4 x i16> %i.ahx, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aih = shufflevector <8 x i16> %i.aif, <8 x i16> %i.aig, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.aii = shufflevector <2 x i16> %i.aic, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aij = shufflevector <8 x i16> %i.aih, <8 x i16> %i.aii, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 6, i32 7>
  %i.aik = or disjoint <8 x i16> %i.aij, <i16 0, i16 48, i16 48, i16 48, i16 48, i16 48, i16 48, i16 48>
  store <8 x i16> %i.aik, ptr %i.ahs, align 2, !tbaa !148
  %i.ail = add nuw nsw i64 %.3233388, 1           ; 2 uses
  %exitcond431.not = icmp eq i64 %i.ail, %.2238
  br i1 %exitcond431.not, label %._crit_edge391, label %.lr.ph390, !llvm.loop !225

._crit_edge391:                                   ; preds = %.lr.ph390, %middle.block568, %_PyUnicode_DATA.exit320
  %.3233.lcssa = phi i64 [ 0, %_PyUnicode_DATA.exit320 ], [ %.2238, %middle.block568 ], [ %.2238, %.lr.ph390 ]
  %.1199.lcssa = phi ptr [ %.0198, %_PyUnicode_DATA.exit320 ], [ %i.adi, %middle.block568 ], [ %i.ahs, %.lr.ph390 ]
  %i.aim = getelementptr [4 x i8], ptr %i.im, i64 %.3233.lcssa
  %i.ain = load i32, ptr %i.aim, align 4, !tbaa !26
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cc, %._crit_edge391
  %.5224 = phi i32 [ %i.ain, %._crit_edge391 ], [ %i.ais, %bb.cc ] ; 3 uses
  %.3201 = phi ptr [ %.1199.lcssa, %._crit_edge391 ], [ %i.air, %bb.cc ] ; 2 uses
  %i.aio = urem i32 %.5224, 10
  %i.aip = trunc nuw nsw i32 %i.aio to i16
  %i.aiq = or disjoint i16 %i.aip, 48
  %i.air = getelementptr i8, ptr %.3201, i64 -2   ; 2 uses
  store i16 %i.aiq, ptr %i.air, align 2, !tbaa !148
  %i.ais = udiv i32 %.5224, 10
  %.not263 = icmp ult i32 %.5224, 10
  br i1 %.not263, label %bb.cd, label %bb.cc, !llvm.loop !226

bb.cd:                                            ; preds = %bb.cc
  br i1 %i.h, label %bb.ce, label %bb.cp

bb.ce:                                            ; preds = %bb.cd
  %i.ait = getelementptr i8, ptr %.3201, i64 -4
  store i16 45, ptr %i.ait, align 2, !tbaa !148
  br label %bb.cp

bb.cf:                                            ; preds = %bb.bk
  br i1 %.not258, label %bb.cj, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.aiu = load ptr, ptr %2, align 8, !tbaa !152  ; 3 uses
  %i.aiv = getelementptr i8, ptr %i.aiu, i64 32
  %.val.i321 = load i32, ptr %i.aiv, align 8      ; 2 uses
  %i.aiw = and i32 %.val.i321, 32
  %.not.i322 = icmp eq i32 %i.aiw, 0
  br i1 %.not.i322, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.aix = and i32 %.val.i321, 64
  %.not.i.i323 = icmp eq i32 %i.aix, 0
  %.0.v.i.i324 = select i1 %.not.i.i323, i64 56, i64 40
  %.0.i.i325 = getelementptr i8, ptr %i.aiu, i64 %.0.v.i.i324
  br label %_PyUnicode_DATA.exit328

bb.ci:                                            ; preds = %bb.cg
  %i.aiy = getelementptr i8, ptr %i.aiu, i64 56
  %.val4.i327 = load ptr, ptr %i.aiy, align 8, !tbaa !40
  br label %_PyUnicode_DATA.exit328

_PyUnicode_DATA.exit328:                          ; preds = %bb.ch, %bb.ci
  %.0.i326 = phi ptr [ %.0.i.i325, %bb.ch ], [ %.val4.i327, %bb.ci ]
  %i.aiz = getelementptr i8, ptr %2, i64 32
  %i.aja = load i64, ptr %i.aiz, align 8, !tbaa !146
  %i.ajb = getelementptr [4 x i8], ptr %.0.i326, i64 %i.aja
  br label %_PyUnicode_DATA.exit336

bb.cj:                                            ; preds = %bb.cf
  %i.ajc = getelementptr i8, ptr %.0239342355, i64 32
  %.val.i329 = load i32, ptr %i.ajc, align 8      ; 2 uses
  %i.ajd = and i32 %.val.i329, 32
  %.not.i330 = icmp eq i32 %i.ajd, 0
  br i1 %.not.i330, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.aje = and i32 %.val.i329, 64
  %.not.i.i331 = icmp eq i32 %i.aje, 0
  %.0.v.i.i332 = select i1 %.not.i.i331, i64 56, i64 40
  %.0.i.i333 = getelementptr i8, ptr %.0239342355, i64 %.0.v.i.i332
  br label %_PyUnicode_DATA.exit336

bb.cl:                                            ; preds = %bb.cj
  %i.ajf = getelementptr i8, ptr %.0239342355, i64 56
  %.val4.i335 = load ptr, ptr %i.ajf, align 8, !tbaa !40
  br label %_PyUnicode_DATA.exit336

_PyUnicode_DATA.exit336:                          ; preds = %bb.cl, %bb.ck, %_PyUnicode_DATA.exit328
  %.pn = phi ptr [ %i.ajb, %_PyUnicode_DATA.exit328 ], [ %.0.i.i333, %bb.ck ], [ %.val4.i335, %bb.cl ] ; 11 uses
  %.0 = getelementptr [4 x i8], ptr %.pn, i64 %.0235.lcssa ; 10 uses
  %i.ajg = icmp sgt i64 %.2238, 0
  br i1 %i.ajg, label %.lr.ph408.preheader, label %._crit_edge409

.lr.ph408.preheader:                              ; preds = %_PyUnicode_DATA.exit336
  %min.iters.check633 = icmp ult i64 %.2238, 8
  br i1 %min.iters.check633, label %.lr.ph408.preheader780, label %vector.scevcheck612

vector.scevcheck612:                              ; preds = %.lr.ph408.preheader
  %umax613 = tail call i64 @llvm.umax.i64(i64 %.0236.lcssa, i64 1)
  %i.ajh = add i64 %umax613, -2
  %i.aji = shl i64 %.0235.lcssa, 2                ; 9 uses
  %i.ajj = getelementptr i8, ptr %.pn, i64 %i.aji
  %mul615 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ajh, i64 36) ; 2 uses
  %mul.result616 = extractvalue { i64, i1 } %mul615, 0 ; 9 uses
  %mul.overflow617 = extractvalue { i64, i1 } %mul615, 1
  %i.ajk = sub i64 0, %mul.result616
  %i.ajl = getelementptr i8, ptr %.pn, i64 %i.aji
  %i.ajm = sub i64 0, %mul.result616
  %i.ajn = getelementptr i8, ptr %.pn, i64 %i.aji ; 2 uses
  %i.ajo = sub i64 0, %mul.result616
  %i.ajp = getelementptr i8, ptr %.pn, i64 %i.aji ; 2 uses
  %i.ajq = sub i64 0, %mul.result616
  %i.ajr = getelementptr i8, ptr %.pn, i64 %i.aji ; 2 uses
  %i.ajs = sub i64 0, %mul.result616
  %i.ajt = getelementptr i8, ptr %.pn, i64 %i.aji ; 2 uses
  %i.aju = sub i64 0, %mul.result616
  %i.ajv = getelementptr i8, ptr %.pn, i64 %i.aji
  %i.ajw = sub i64 0, %mul.result616
  %i.ajx = getelementptr i8, ptr %.pn, i64 %i.aji
  %i.ajy = sub i64 0, %mul.result616
  %scevgep624.a = getelementptr i8, ptr %i.ajj, i64 -4 ; 2 uses
  %44 = getelementptr i8, ptr %scevgep624.a, i64 %i.ajk
  %scevgep618 = getelementptr i8, ptr %i.ajl, i64 -8 ; 2 uses
  %45 = getelementptr i8, ptr %scevgep618, i64 %i.ajm
  %scevgep622 = getelementptr i8, ptr %i.ajt, i64 -24
  %46 = insertelement <4 x ptr> poison, ptr %i.ajn, i64 0
  %47 = insertelement <4 x ptr> %46, ptr %i.ajp, i64 1
  %48 = insertelement <4 x ptr> %47, ptr %i.ajr, i64 2
  %49 = insertelement <4 x ptr> %48, ptr %i.ajt, i64 3
  %50 = getelementptr i8, <4 x ptr> %49, <4 x i64> <i64 -12, i64 -16, i64 -20, i64 -24>
  %scevgep623.a = getelementptr i8, ptr %i.ajr, i64 -20
  %scevgep622.a = getelementptr i8, ptr %i.ajp, i64 -16
  %scevgep621 = getelementptr i8, ptr %i.ajn, i64 -12
  %scevgep620 = getelementptr i8, ptr %scevgep621, i64 %i.ajo
  %scevgep619 = getelementptr i8, ptr %scevgep622.a, i64 %i.ajq
  %scevgep614 = getelementptr i8, ptr %scevgep623.a, i64 %i.ajs
  %scevgep618.a = getelementptr i8, ptr %scevgep622, i64 %i.aju
  %i.ajz = getelementptr i8, ptr %i.ajv, i64 -28  ; 2 uses
  %i.aka = getelementptr i8, ptr %i.ajz, i64 %i.ajw
  %i.akb = getelementptr i8, ptr %i.ajx, i64 -32  ; 2 uses
  %i.akc = getelementptr i8, ptr %i.akb, i64 %i.ajy
  %51 = insertelement <8 x ptr> poison, ptr %45, i64 0
  %52 = insertelement <8 x ptr> %51, ptr %44, i64 1
  %53 = insertelement <8 x ptr> %52, ptr %scevgep620, i64 2
  %54 = insertelement <8 x ptr> %53, ptr %scevgep619, i64 3
  %i.akd = insertelement <8 x ptr> %54, ptr %scevgep614, i64 4
  %i.ake = insertelement <8 x ptr> %i.akd, ptr %scevgep618.a, i64 5
  %i.akf = insertelement <8 x ptr> %i.ake, ptr %i.aka, i64 6
  %i.akg = insertelement <8 x ptr> %i.akf, ptr %i.akc, i64 7
  %i.akh = insertelement <8 x ptr> poison, ptr %scevgep618, i64 0
  %i.aki = insertelement <8 x ptr> %i.akh, ptr %scevgep624.a, i64 1
  %55 = shufflevector <4 x ptr> %50, <4 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %56 = shufflevector <8 x ptr> %i.aki, <8 x ptr> %55, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison>
  %i.akj = insertelement <8 x ptr> %56, ptr %i.ajz, i64 6
  %i.akk = insertelement <8 x ptr> %i.akj, ptr %i.akb, i64 7
  %i.akl = icmp ugt <8 x ptr> %i.akg, %i.akk
  %i.akm = getelementptr i8, ptr %.pn, i64 %i.aji
  %scevgep625 = getelementptr i8, ptr %i.akm, i64 -36 ; 2 uses
  %i.akn = sub i64 0, %mul.result616
  %i.ako = getelementptr i8, ptr %scevgep625, i64 %i.akn
  %i.akp = icmp ugt ptr %i.ako, %scevgep625
  %i.akq = bitcast <8 x i1> %i.akl to i8
  %i.akr = icmp ne i8 %i.akq, 0
  %op.rdx = or i1 %mul.overflow617, %i.akr
  %op.rdx748 = or i1 %op.rdx, %i.akp
  br i1 %op.rdx748, label %.lr.ph408.preheader780, label %vector.memcheck634

vector.memcheck634:                               ; preds = %vector.scevcheck612
  %i.aks = shl i64 %.0235.lcssa, 2
  %i.akt = tail call i64 @llvm.umax.i64(i64 %.0236.lcssa, i64 1)
  %.neg746 = mul i64 %i.akt, -36
  %i.aku = getelementptr i8, ptr %.pn, i64 %.neg746
  %i.akv = getelementptr i8, ptr %i.aku, i64 %i.aks
  %i.akw = getelementptr i8, ptr %i.akv, i64 36
  %bound0635 = icmp ult ptr %i.im, %.0
  %bound1636 = icmp ult ptr %i.akw, %i.jq
  %found.conflict637 = and i1 %bound0635, %bound1636
  br i1 %found.conflict637, label %.lr.ph408.preheader780, label %vector.ph638

vector.ph638:                                     ; preds = %vector.memcheck634
  %n.vec639 = and i64 %.2238, 9223372036854775804 ; 4 uses
  %i.akx = mul i64 %n.vec639, -36
  %i.aky = getelementptr i8, ptr %.0, i64 %i.akx  ; 2 uses
  br label %vector.body640

vector.body640:                                   ; preds = %vector.body640, %vector.ph638
  %index641 = phi i64 [ 0, %vector.ph638 ], [ %index.next647, %vector.body640 ] ; 3 uses
  %i.akz = mul i64 %index641, -36                 ; 4 uses
  %next.gep642 = getelementptr i8, ptr %.0, i64 %i.akz ; 4 uses
  %i.ala = getelementptr i8, ptr %.0, i64 %i.akz  ; 5 uses
  %i.alb = getelementptr i8, ptr %.0, i64 %i.akz  ; 4 uses
  %i.alc = getelementptr i8, ptr %.0, i64 %i.akz  ; 5 uses
  %i.ald = getelementptr [4 x i8], ptr %i.im, i64 %index641
  %wide.load646 = load <4 x i32>, ptr %i.ald, align 4, !tbaa !26, !alias.scope !243, !noalias !244 ; 8 uses
  %wide.load646.frozen = freeze <4 x i32> %wide.load646 ; 2 uses
  %i.ale = udiv <4 x i32> %wide.load646.frozen, splat (i32 10) ; 2 uses
  %i.alf = mul <4 x i32> %i.ale, splat (i32 10)
  %.decomposed817 = sub <4 x i32> %wide.load646.frozen, %i.alf
  %i.alg = or disjoint <4 x i32> %.decomposed817, splat (i32 48) ; 4 uses
  %i.alh = getelementptr i8, ptr %i.ala, i64 -40
  %i.ali = getelementptr i8, ptr %i.alc, i64 -112
  %i.alj = urem <4 x i32> %i.ale, splat (i32 10)
  %i.alk = or disjoint <4 x i32> %i.alj, splat (i32 48) ; 4 uses
  %i.all = getelementptr i8, ptr %next.gep642, i64 -8
  %i.alm = getelementptr i8, ptr %i.alb, i64 -80
  %i.aln = shufflevector <4 x i32> %i.alk, <4 x i32> %i.alg, <2 x i32> <i32 0, i32 4>
  store <2 x i32> %i.aln, ptr %i.all, align 4, !tbaa !26, !alias.scope !244
  %i.alo = shufflevector <4 x i32> %i.alk, <4 x i32> %i.alg, <2 x i32> <i32 2, i32 6>
  store <2 x i32> %i.alo, ptr %i.alm, align 4, !tbaa !26, !alias.scope !244
  %i.alp = udiv <4 x i32> %wide.load646, splat (i32 100)
  %i.alq = urem <4 x i32> %i.alp, splat (i32 10)
  %i.alr = or disjoint <4 x i32> %i.alq, splat (i32 48) ; 4 uses
  %i.als = getelementptr i8, ptr %i.ala, i64 -48
  %i.alt = getelementptr i8, ptr %i.alc, i64 -120
  %i.alu = shufflevector <4 x i32> %i.alr, <4 x i32> %i.alk, <2 x i32> <i32 1, i32 5>
  store <2 x i32> %i.alu, ptr %i.als, align 4, !tbaa !26, !alias.scope !244
  %i.alv = shufflevector <4 x i32> %i.alr, <4 x i32> %i.alk, <2 x i32> <i32 3, i32 7>
  store <2 x i32> %i.alv, ptr %i.alt, align 4, !tbaa !26, !alias.scope !244
  %i.alw = udiv <4 x i32> %wide.load646, splat (i32 1000)
  %i.alx = urem <4 x i32> %i.alw, splat (i32 10)
  %i.aly = or disjoint <4 x i32> %i.alx, splat (i32 48) ; 4 uses
  %i.alz = getelementptr i8, ptr %next.gep642, i64 -16
  %i.ama = getelementptr i8, ptr %i.alb, i64 -88
  %i.amb = shufflevector <4 x i32> %i.aly, <4 x i32> %i.alr, <2 x i32> <i32 0, i32 4>
  store <2 x i32> %i.amb, ptr %i.alz, align 4, !tbaa !26, !alias.scope !244
  %i.amc = shufflevector <4 x i32> %i.aly, <4 x i32> %i.alr, <2 x i32> <i32 2, i32 6>
  store <2 x i32> %i.amc, ptr %i.ama, align 4, !tbaa !26, !alias.scope !244
  %i.amd = udiv <4 x i32> %wide.load646, splat (i32 10000)
  %i.ame = urem <4 x i32> %i.amd, splat (i32 10)
  %i.amf = or disjoint <4 x i32> %i.ame, splat (i32 48) ; 4 uses
  %i.amg = getelementptr i8, ptr %i.ala, i64 -56
  %i.amh = getelementptr i8, ptr %i.alc, i64 -128
  %i.ami = shufflevector <4 x i32> %i.amf, <4 x i32> %i.aly, <2 x i32> <i32 1, i32 5>
  store <2 x i32> %i.ami, ptr %i.amg, align 4, !tbaa !26, !alias.scope !244
  %i.amj = shufflevector <4 x i32> %i.amf, <4 x i32> %i.aly, <2 x i32> <i32 3, i32 7>
  store <2 x i32> %i.amj, ptr %i.amh, align 4, !tbaa !26, !alias.scope !244
  %i.amk = udiv <4 x i32> %wide.load646, splat (i32 100000)
  %i.aml = trunc nuw <4 x i32> %i.amk to <4 x i16>
  %i.amm = urem <4 x i16> %i.aml, splat (i16 10)
  %i.amn = or disjoint <4 x i16> %i.amm, splat (i16 48)
  %i.amo = zext nneg <4 x i16> %i.amn to <4 x i32> ; 4 uses
  %i.amp = getelementptr i8, ptr %next.gep642, i64 -24
  %i.amq = getelementptr i8, ptr %i.alb, i64 -96
  %i.amr = shufflevector <4 x i32> %i.amo, <4 x i32> %i.amf, <2 x i32> <i32 0, i32 4>
  store <2 x i32> %i.amr, ptr %i.amp, align 4, !tbaa !26, !alias.scope !244
  %i.ams = shufflevector <4 x i32> %i.amo, <4 x i32> %i.amf, <2 x i32> <i32 2, i32 6>
  store <2 x i32> %i.ams, ptr %i.amq, align 4, !tbaa !26, !alias.scope !244
  %i.amt = udiv <4 x i32> %wide.load646, splat (i32 1000000)
  %i.amu = trunc nuw nsw <4 x i32> %i.amt to <4 x i16>
  %i.amv = urem <4 x i16> %i.amu, splat (i16 10)
  %i.amw = or disjoint <4 x i16> %i.amv, splat (i16 48)
  %i.amx = zext nneg <4 x i16> %i.amw to <4 x i32> ; 4 uses
  %i.amy = getelementptr i8, ptr %i.ala, i64 -64
  %i.amz = getelementptr i8, ptr %i.alc, i64 -136
  %i.ana = shufflevector <4 x i32> %i.amx, <4 x i32> %i.amo, <2 x i32> <i32 1, i32 5>
  store <2 x i32> %i.ana, ptr %i.amy, align 4, !tbaa !26, !alias.scope !244
  %i.anb = shufflevector <4 x i32> %i.amx, <4 x i32> %i.amo, <2 x i32> <i32 3, i32 7>
  store <2 x i32> %i.anb, ptr %i.amz, align 4, !tbaa !26, !alias.scope !244
  %i.anc = udiv <4 x i32> %wide.load646, splat (i32 10000000)
  %i.and = trunc nuw nsw <4 x i32> %i.anc to <4 x i16>
  %i.ane = urem <4 x i16> %i.and, splat (i16 10)
  %i.anf = or disjoint <4 x i16> %i.ane, splat (i16 48)
  %i.ang = zext nneg <4 x i16> %i.anf to <4 x i32> ; 4 uses
  %i.anh = getelementptr i8, ptr %next.gep642, i64 -32
  %i.ani = getelementptr i8, ptr %i.alb, i64 -104
  %i.anj = shufflevector <4 x i32> %i.ang, <4 x i32> %i.amx, <2 x i32> <i32 0, i32 4>
  store <2 x i32> %i.anj, ptr %i.anh, align 4, !tbaa !26, !alias.scope !244
  %i.ank = shufflevector <4 x i32> %i.ang, <4 x i32> %i.amx, <2 x i32> <i32 2, i32 6>
  store <2 x i32> %i.ank, ptr %i.ani, align 4, !tbaa !26, !alias.scope !244
  %i.anl = udiv <4 x i32> %wide.load646, splat (i32 100000000)
  %i.anm = trunc nuw nsw <4 x i32> %i.anl to <4 x i8>
  %i.ann = urem <4 x i8> %i.anm, splat (i8 10)
  %i.ano = or disjoint <4 x i8> %i.ann, splat (i8 48)
  %i.anp = zext nneg <4 x i8> %i.ano to <4 x i32> ; 4 uses
  %i.anq = getelementptr i8, ptr %i.ala, i64 -72
  %i.anr = getelementptr i8, ptr %i.alc, i64 -144
  %i.ans = shufflevector <4 x i32> %i.alg, <4 x i32> %i.anp, <2 x i32> <i32 1, i32 4>
  store <2 x i32> %i.ans, ptr %i.alh, align 4, !tbaa !26, !alias.scope !244
  %i.ant = shufflevector <4 x i32> %i.anp, <4 x i32> %i.ang, <2 x i32> <i32 1, i32 5>
  store <2 x i32> %i.ant, ptr %i.anq, align 4, !tbaa !26, !alias.scope !244
  %i.anu = shufflevector <4 x i32> %i.alg, <4 x i32> %i.anp, <2 x i32> <i32 3, i32 6>
  store <2 x i32> %i.anu, ptr %i.ali, align 4, !tbaa !26, !alias.scope !244
  %i.anv = shufflevector <4 x i32> %i.anp, <4 x i32> %i.ang, <2 x i32> <i32 3, i32 7>
  store <2 x i32> %i.anv, ptr %i.anr, align 4, !tbaa !26, !alias.scope !244
  %index.next647 = add nuw i64 %index641, 4       ; 2 uses
  %i.anw = icmp eq i64 %index.next647, %n.vec639
  br i1 %i.anw, label %middle.block648, label %vector.body640, !llvm.loop !230

middle.block648:                                  ; preds = %vector.body640
  %cmp.n649 = icmp eq i64 %.2238, %n.vec639
  br i1 %cmp.n649, label %._crit_edge409, label %.lr.ph408.preheader780

.lr.ph408.preheader780:                           ; preds = %vector.memcheck634, %vector.scevcheck612, %.lr.ph408.preheader, %middle.block648
  %.1407.ph = phi ptr [ %.0, %vector.memcheck634 ], [ %.0, %vector.scevcheck612 ], [ %.0, %.lr.ph408.preheader ], [ %i.aky, %middle.block648 ]
  %.4234406.ph = phi i64 [ 0, %vector.memcheck634 ], [ 0, %vector.scevcheck612 ], [ 0, %.lr.ph408.preheader ], [ %n.vec639, %middle.block648 ]
  br label %.lr.ph408

.lr.ph408:                                        ; preds = %.lr.ph408.preheader780, %.lr.ph408
  %.1407 = phi ptr [ %i.apa, %.lr.ph408 ], [ %.1407.ph, %.lr.ph408.preheader780 ] ; 5 uses
  %.4234406 = phi i64 [ %i.apb, %.lr.ph408 ], [ %.4234406.ph, %.lr.ph408.preheader780 ] ; 2 uses
  %i.anx = getelementptr [4 x i8], ptr %i.im, i64 %.4234406
  %i.any = load i32, ptr %i.anx, align 4, !tbaa !26 ; 6 uses
  %i.anz = urem i32 %i.any, 10
  %i.aoa = or disjoint i32 %i.anz, 48
  %i.aob = getelementptr i8, ptr %.1407, i64 -4
  store i32 %i.aoa, ptr %i.aob, align 4, !tbaa !26
  %i.aoc = getelementptr i8, ptr %.1407, i64 -20
  %i.aod = insertelement <4 x i32> poison, i32 %i.any, i64 0
  %i.aoe = shufflevector <4 x i32> %i.aod, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aof = udiv <4 x i32> %i.aoe, <i32 10000, i32 1000, i32 100, i32 10>
  %i.aog = urem <4 x i32> %i.aof, splat (i32 10)
  %i.aoh = or disjoint <4 x i32> %i.aog, splat (i32 48)
  store <4 x i32> %i.aoh, ptr %i.aoc, align 4, !tbaa !26
  %i.aoi = udiv i32 %i.any, 100000
  %.lhs.trunc469 = trunc nuw i32 %i.aoi to i16
  %i.aoj = urem i16 %.lhs.trunc469, 10
  %i.aok = or disjoint i16 %i.aoj, 48
  %i.aol = zext nneg i16 %i.aok to i32
  %i.aom = getelementptr i8, ptr %.1407, i64 -24
  store i32 %i.aol, ptr %i.aom, align 4, !tbaa !26
  %i.aon = getelementptr i8, ptr %.1407, i64 -32
  %i.aoo = udiv i32 %i.any, 1000000
  %.lhs.trunc471 = trunc nuw nsw i32 %i.aoo to i16
  %i.aop = udiv i32 %i.any, 10000000
  %.lhs.trunc473 = trunc nuw nsw i32 %i.aop to i16
  %i.aoq = insertelement <2 x i16> poison, i16 %.lhs.trunc473, i64 0
  %i.aor = insertelement <2 x i16> %i.aoq, i16 %.lhs.trunc471, i64 1
  %i.aos = urem <2 x i16> %i.aor, splat (i16 10)
  %i.aot = trunc nuw nsw <2 x i16> %i.aos to <2 x i8>
  %i.aou = or disjoint <2 x i8> %i.aot, splat (i8 48)
  %i.aov = zext nneg <2 x i8> %i.aou to <2 x i32>
  store <2 x i32> %i.aov, ptr %i.aon, align 4, !tbaa !26
  %i.aow = udiv i32 %i.any, 100000000
  %.lhs.trunc475 = trunc nuw nsw i32 %i.aow to i8
  %i.aox = urem i8 %.lhs.trunc475, 10
  %i.aoy = or disjoint i8 %i.aox, 48
  %i.aoz = zext nneg i8 %i.aoy to i32
  %i.apa = getelementptr i8, ptr %.1407, i64 -36  ; 3 uses
  store i32 %i.aoz, ptr %i.apa, align 4, !tbaa !26
  %i.apb = add nuw nsw i64 %.4234406, 1           ; 2 uses
  %exitcond435.not = icmp eq i64 %i.apb, %.2238
  br i1 %exitcond435.not, label %._crit_edge409, label %.lr.ph408, !llvm.loop !231

._crit_edge409:                                   ; preds = %.lr.ph408, %middle.block648, %_PyUnicode_DATA.exit336
  %.4234.lcssa = phi i64 [ 0, %_PyUnicode_DATA.exit336 ], [ %.2238, %middle.block648 ], [ %.2238, %.lr.ph408 ]
  %.1.lcssa = phi ptr [ %.0, %_PyUnicode_DATA.exit336 ], [ %i.aky, %middle.block648 ], [ %i.apa, %.lr.ph408 ]
  %i.apc = getelementptr [4 x i8], ptr %i.im, i64 %.4234.lcssa
  %i.apd = load i32, ptr %i.apc, align 4, !tbaa !26
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cm, %._crit_edge409
  %.7 = phi i32 [ %i.apd, %._crit_edge409 ], [ %i.aph, %bb.cm ] ; 3 uses
  %.3 = phi ptr [ %.1.lcssa, %._crit_edge409 ], [ %i.apg, %bb.cm ] ; 2 uses
  %i.ape = urem i32 %.7, 10
  %i.apf = or disjoint i32 %i.ape, 48
  %i.apg = getelementptr i8, ptr %.3, i64 -4      ; 2 uses
end_hunk_0
