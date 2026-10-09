Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/ceval?download=true
inline.NumInlined: 2622
inline.NumDeleted: 159
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_PyEvalFramePushAndInit:bb.a
  %prol.iter324.cmp.not = icmp eq i64 %prol.iter324.next, %xtraiter322
  br i1 %prol.iter324.cmp.not, label %scalar.ph259.prol.loopexit, label %scalar.ph259.prol, !llvm.loop !376

scalar.ph259.prol.loopexit:                       ; preds = %scalar.ph259.prol, %scalar.ph259.preheader
  %.0260454.i.unr = phi i64 [ %.0260454.i.ph, %scalar.ph259.preheader ], [ %i.it, %scalar.ph259.prol ]
  %i.iu = sub nsw i64 %.0260454.i.ph, %i.au
  %i.iv = icmp ugt i64 %i.iu, -4
  br i1 %i.iv, label %._crit_edge457.i, label %scalar.ph259

._crit_edge457.i:                                 ; preds = %scalar.ph259.prol.loopexit, %scalar.ph259, %middle.block268, %bb.au
  %i.iw = tail call ptr @_Py_CalculateSuggestions(ptr noundef nonnull %i.hz, ptr noundef nonnull %i.ee) #21 ; 7 uses
  %i.ix = load i32, ptr %i.hz, align 8, !tbaa !124 ; 2 uses
  %.not306.i = icmp sgt i32 %i.ix, -1
  br i1 %.not306.i, label %bb.av, label %bb.az

scalar.ph259:                                     ; preds = %scalar.ph259.prol.loopexit, %scalar.ph259
  %.0260454.i = phi i64 [ %i.jr, %scalar.ph259 ], [ %.0260454.i.unr, %scalar.ph259.prol.loopexit ] ; 6 uses
  %i.iy = sub nsw i64 %.0260454.i, %i.ib
  %i.iz = getelementptr [8 x i8], ptr %i.eo, i64 %.0260454.i
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !120
  %i.jb = getelementptr [8 x i8], ptr %.val333.i, i64 %i.iy
  store ptr %i.ja, ptr %i.jb, align 8, !tbaa !120
  %i.jc = add nsw i64 %.0260454.i, 1              ; 2 uses
  %i.jd = sub nsw i64 %i.jc, %i.ib
  %i.je = getelementptr [8 x i8], ptr %i.eo, i64 %i.jc
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !120
  %i.jg = getelementptr [8 x i8], ptr %.val333.i, i64 %i.jd
  store ptr %i.jf, ptr %i.jg, align 8, !tbaa !120
  %i.jh = add nsw i64 %.0260454.i, 2              ; 2 uses
  %i.ji = sub nsw i64 %i.jh, %i.ib
  %i.jj = getelementptr [8 x i8], ptr %i.eo, i64 %i.jh
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !120
  %i.jl = getelementptr [8 x i8], ptr %.val333.i, i64 %i.ji
  store ptr %i.jk, ptr %i.jl, align 8, !tbaa !120
  %i.jm = add nsw i64 %.0260454.i, 3              ; 2 uses
  %i.jn = sub nsw i64 %i.jm, %i.ib
  %i.jo = getelementptr [8 x i8], ptr %i.eo, i64 %i.jm
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !120
  %i.jq = getelementptr [8 x i8], ptr %.val333.i, i64 %i.jn
  store ptr %i.jp, ptr %i.jq, align 8, !tbaa !120
  %i.jr = add nsw i64 %.0260454.i, 4              ; 2 uses
  %exitcond516.not.i.3 = icmp eq i64 %i.jr, %i.au
  br i1 %exitcond516.not.i.3, label %._crit_edge457.i, label %scalar.ph259, !llvm.loop !377

bb.av:                                            ; preds = %._crit_edge457.i
  %i.js = add nsw i32 %i.ix, -1                   ; 2 uses
  store i32 %i.js, ptr %i.hz, align 8, !tbaa !124
  %i.jt = icmp eq i32 %i.js, 0
  br i1 %i.jt, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.ju = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !134 ; 2 uses
  %.not307.i = icmp eq ptr %i.ju, null
  br i1 %.not307.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !135
  %i.jw = tail call i32 %i.ju(ptr noundef nonnull %i.hz, i32 noundef 1, ptr noundef %i.jv) #21, !inline_history !374 ; 0 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.jx = getelementptr i8, ptr %i.hz, i64 8
  %.val330.i = load ptr, ptr %i.jx, align 8, !tbaa !125
  %i.jy = getelementptr i8, ptr %.val330.i, i64 48
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !136
  tail call void %i.jz(ptr noundef nonnull %i.hz) #21, !inline_history !374
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.av, %._crit_edge457.i
  %.not308.i = icmp eq ptr %i.iw, null
  br i1 %.not308.i, label %.thread359.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ka = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !120
  %i.kb = getelementptr i8, ptr %i.d, i64 40
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !390
  %i.kd = tail call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef %0, ptr noundef %i.ka, ptr noundef nonnull @.str.93, ptr noundef %i.kc, ptr noundef nonnull %i.ee, ptr noundef nonnull %i.iw) #21 ; 0 uses
  %i.ke = load i32, ptr %i.iw, align 8, !tbaa !124 ; 2 uses
  %.not309.i = icmp sgt i32 %i.ke, -1
  br i1 %.not309.i, label %bb.bb, label %.lr.ph461.i.preheader

bb.bb:                                            ; preds = %bb.ba
  %i.kf = add nsw i32 %i.ke, -1                   ; 2 uses
  store i32 %i.kf, ptr %i.iw, align 8, !tbaa !124
  %i.kg = icmp eq i32 %i.kf, 0
  br i1 %i.kg, label %bb.bc, label %.lr.ph461.i.preheader

bb.bc:                                            ; preds = %bb.bb
  %i.kh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !134 ; 2 uses
  %.not310.i = icmp eq ptr %i.kh, null
  br i1 %.not310.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ki = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !135
  %i.kj = tail call i32 %i.kh(ptr noundef nonnull %i.iw, i32 noundef 1, ptr noundef %i.ki) #21, !inline_history !374 ; 0 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.kk = getelementptr i8, ptr %i.iw, i64 8
  %.1262.val.i = load ptr, ptr %i.kk, align 8, !tbaa !125
  %i.kl = getelementptr i8, ptr %.1262.val.i, i64 48
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !136
  tail call void %i.km(ptr noundef nonnull %i.iw) #21, !inline_history !374
  br label %.lr.ph461.i.preheader

.thread359.i:                                     ; preds = %bb.az, %bb.at, %positional_only_passed_as_keyword.exit.thread355.i
  %i.kn = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !120
  %i.ko = getelementptr i8, ptr %i.d, i64 40
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !390
  %i.kq = tail call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef %0, ptr noundef %i.kn, ptr noundef nonnull @.str.94, ptr noundef %i.kp, ptr noundef nonnull %i.ee) #21 ; 0 uses
  br label %.lr.ph461.i.preheader

bb.bf:                                            ; preds = %._crit_edge450.i
  %i.kr = and i64 %.sroa.063.0.copyload.i, -2
  %i.ks = inttoptr i64 %i.kr to ptr
  %i.kt = tail call i32 @PyDict_SetItem(ptr noundef nonnull %.0251.i, ptr noundef nonnull %i.ee, ptr noundef %i.ks) #21
  %i.ku = icmp eq i32 %i.kt, -1
  br i1 %i.ku, label %.lr.ph461.i.preheader, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.kv = and i64 %.sroa.063.0.copyload.i, 1
  %.not.not.i336.i = icmp eq i64 %i.kv, 0
  br i1 %.not.not.i336.i, label %bb.bh, label %bb.bn

bb.bh:                                            ; preds = %bb.bg
  %i.kw = inttoptr i64 %.sroa.063.0.copyload.i to ptr ; 3 uses
  %i.kx = load i32, ptr %i.kw, align 8, !tbaa !124
  %i.ky = add i32 %i.kx, -1                       ; 2 uses
  store i32 %i.ky, ptr %i.kw, align 8, !tbaa !124
  %i.kz = icmp eq i32 %i.ky, 0
  br i1 %i.kz, label %bb.bi, label %bb.bn

bb.bi:                                            ; preds = %bb.bh
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.kw) #21
  br label %bb.bn

positional_only_passed_as_keyword.exit.thread.critedge.i: ; preds = %bb.ar
  %i.la = getelementptr i8, ptr %i.fg, i64 8
  %.val.i.c386.i = load ptr, ptr %i.la, align 8, !tbaa !125
  %i.lb = getelementptr i8, ptr %.val.i.c386.i, i64 48
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !136
  tail call void %i.lc(ptr noundef nonnull %i.fg) #21, !inline_history !373
  br label %.lr.ph461.i.preheader

.lr.ph461.i.preheader:                            ; preds = %bb.bf, %.lr.ph449.i, %bb.r, %bb.w, %.thread146.i.i, %bb.aq, %.sink.split.sink.split.i.i, %bb.ba, %bb.bb, %bb.be, %.thread359.i, %positional_only_passed_as_keyword.exit.thread.critedge.i, %bb.bl
  br label %.lr.ph461.i

.lr.ph461.i:                                      ; preds = %.lr.ph461.i.preheader, %PyStackRef_CLOSE.exit339.i
  %.2254460.i = phi i64 [ %i.lj, %PyStackRef_CLOSE.exit339.i ], [ %.1253451.i, %.lr.ph461.i.preheader ] ; 2 uses
  %gep459.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %.2254460.i
  %i.ld = load i64, ptr %gep459.i, align 8        ; 2 uses
  %i.le = and i64 %i.ld, 1
  %.not.not.i338.i = icmp eq i64 %i.le, 0
  br i1 %.not.not.i338.i, label %bb.bj, label %PyStackRef_CLOSE.exit339.i

bb.bj:                                            ; preds = %.lr.ph461.i
  %i.lf = inttoptr i64 %i.ld to ptr               ; 3 uses
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !124
  %i.lh = add i32 %i.lg, -1                       ; 2 uses
  store i32 %i.lh, ptr %i.lf, align 8, !tbaa !124
  %i.li = icmp eq i32 %i.lh, 0
  br i1 %i.li, label %bb.bk, label %PyStackRef_CLOSE.exit339.i

bb.bk:                                            ; preds = %bb.bj
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.lf) #21
  br label %PyStackRef_CLOSE.exit339.i

PyStackRef_CLOSE.exit339.i:                       ; preds = %bb.bk, %bb.bj, %.lr.ph461.i
  %i.lj = add i64 %.2254460.i, 1                  ; 2 uses
  %exitcond517.not.i = icmp eq i64 %i.lj, %.val329.i
  br i1 %exitcond517.not.i, label %.loopexit69, label %.lr.ph461.i, !llvm.loop !378

.loopexit.i:                                      ; preds = %.lr.ph447.i, %.lr.ph449.i
  %.2265.i = phi i64 [ %.1264448.i, %.lr.ph449.i ], [ %.0263445.i, %.lr.ph447.i ]
  %i.lk = getelementptr [8 x i8], ptr %i.x, i64 %.2265.i ; 2 uses
  %i.ll = load i64, ptr %i.lk, align 8
  %.not311.i = icmp ult i64 %i.ll, 2
  br i1 %.not311.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %.loopexit.i
  %i.lm = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !120
  %i.ln = getelementptr i8, ptr %i.d, i64 40
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !390
  %i.lp = tail call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef %0, ptr noundef %i.lm, ptr noundef nonnull @.str.95, ptr noundef %i.lo, ptr noundef nonnull %i.ee) #21 ; 0 uses
  br label %.lr.ph461.i.preheader

bb.bm:                                            ; preds = %.loopexit.i
  store i64 %.sroa.063.0.copyload.i, ptr %i.lk, align 8, !tbaa !124
  br label %bb.bn

.unreachabledefault.i:                            ; preds = %.lr.ph449.i
  unreachable

bb.bn:                                            ; preds = %bb.bm, %bb.bi, %bb.bh, %bb.bg
  %i.lq = add nuw nsw i64 %.1253451.i, 1          ; 2 uses
  %exitcond510.not.i = icmp eq i64 %i.lq, %.val329.i
  br i1 %exitcond510.not.i, label %PyStackRef_CLOSE.exit337.thread365.i, label %bb.p, !llvm.loop !379

PyStackRef_CLOSE.exit337.thread365.i:             ; preds = %bb.bn, %bb.o, %.loopexit392.i
  %i.lr = load i32, ptr %i.ap, align 4, !tbaa !189 ; 2 uses
  %i.ls = sext i32 %i.lr to i64                   ; 8 uses
  %i.lt = icmp sgt i64 %4, %i.ls
  br i1 %i.lt, label %bb.bo, label %bb.ci

bb.bo:                                            ; preds = %PyStackRef_CLOSE.exit337.thread365.i
  %i.lu = load i32, ptr %i.av, align 8, !tbaa !164
  %i.lv = and i32 %i.lu, 4
  %.not312.i = icmp eq i32 %i.lv, 0
  br i1 %.not312.i, label %bb.bp, label %bb.ci

bb.bp:                                            ; preds = %bb.bo
  %i.lw = getelementptr i8, ptr %i.d, i64 56
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !392 ; 2 uses
  %i.ly = getelementptr i8, ptr %i.d, i64 40
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !390
  %i.ma = load i32, ptr %i.ar, align 4, !tbaa !208 ; 2 uses
  %i.mb = zext nneg i32 %i.ma to i64
  %i.mc = add nsw i64 %i.mb, %i.ls
  %i.md = icmp sgt i32 %i.ma, 0
  br i1 %i.md, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.bp, %.lr.ph.i.i
  %.06695.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.bp ]
  %.06794.i.i = phi i64 [ %i.mh, %.lr.ph.i.i ], [ %i.ls, %bb.bp ] ; 2 uses
  %i.me = getelementptr [8 x i8], ptr %i.x, i64 %.06794.i.i
  %i.mf = load i64, ptr %i.me, align 8
  %.not88.i.i = icmp ugt i64 %i.mf, 1
  %i.mg = zext i1 %.not88.i.i to i64
  %spec.select.i.i = add i64 %.06695.i.i, %i.mg   ; 2 uses
  %i.mh = add nsw i64 %.06794.i.i, 1              ; 2 uses
  %i.mi = icmp slt i64 %i.mh, %i.mc
  br i1 %i.mi, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !380

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.bp
  %.066.lcssa.i.i = phi i64 [ 0, %bb.bp ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.mj = icmp eq ptr %i.lx, null
  br i1 %i.mj, label %.thread.i.i, label %bb.bq

bb.bq:                                            ; preds = %._crit_edge.i.i
  %i.mk = getelementptr i8, ptr %i.lx, i64 16
  %.val.i340.i = load i64, ptr %i.mk, align 8, !tbaa !123 ; 2 uses
  %.not.i.i60 = icmp eq i64 %.val.i340.i, 0
  br i1 %.not.i.i60, label %.thread.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ml = sub i64 %i.ls, %.val.i340.i
  %i.mm = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.98, i64 noundef %i.ml, i64 noundef %i.ls) #21
  br label %bb.bs

.thread.i.i:                                      ; preds = %bb.bq, %._crit_edge.i.i
  %.not83.i.i = icmp eq i32 %i.lr, 1
  %i.mn = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.99, i64 noundef %i.ls) #21
  %i.mo = select i1 %.not83.i.i, ptr @.str.15, ptr @.str.16
  br label %bb.bs

bb.bs:                                            ; preds = %.thread.i.i, %bb.br
  %.068.i.i = phi ptr [ %i.mm, %bb.br ], [ %i.mn, %.thread.i.i ] ; 12 uses
  %.0.i341.i = phi ptr [ @.str.16, %bb.br ], [ %i.mo, %.thread.i.i ]
  %i.mp = icmp eq ptr %.068.i.i, null
  br i1 %i.mp, label %.loopexit69, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %.not76.i.i = icmp eq i64 %.066.lcssa.i.i, 0
  br i1 %.not76.i.i, label %bb.bz, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %.not77.i.i = icmp eq i64 %4, 1
  %i.mq = select i1 %.not77.i.i, ptr @.str.15, ptr @.str.16
  %.not78.i.i = icmp eq i64 %.066.lcssa.i.i, 1
  %i.mr = select i1 %.not78.i.i, ptr @.str.15, ptr @.str.16
  %i.ms = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.100, ptr noundef nonnull %i.mq, i64 noundef %.066.lcssa.i.i, ptr noundef nonnull %i.mr) #21 ; 2 uses
  %.not81.i.i = icmp eq ptr %i.ms, null
  br i1 %.not81.i.i, label %bb.bv, label %.critedge.i.i

bb.bv:                                            ; preds = %bb.bu
  %i.mt = load i32, ptr %.068.i.i, align 8, !tbaa !124 ; 2 uses
  %.not79.i.i = icmp sgt i32 %i.mt, -1
  br i1 %.not79.i.i, label %bb.bw, label %.loopexit69

bb.bw:                                            ; preds = %bb.bv
  %i.mu = add nsw i32 %i.mt, -1                   ; 2 uses
  store i32 %i.mu, ptr %.068.i.i, align 8, !tbaa !124
  %i.mv = icmp eq i32 %i.mu, 0
  br i1 %i.mv, label %bb.bx, label %.loopexit69

bb.bx:                                            ; preds = %bb.bw
  %i.mw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !134 ; 2 uses
  %.not80.i.i = icmp eq ptr %i.mw, null
  br i1 %.not80.i.i, label %.sink.split.i342.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.mx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !135
  %i.my = tail call i32 %i.mw(ptr noundef nonnull %.068.i.i, i32 noundef 1, ptr noundef %i.mx) #21, !inline_history !381 ; 0 uses
  br label %.sink.split.i342.i

bb.bz:                                            ; preds = %bb.bt
  %i.mz = tail call ptr @Py_GetConstant(i32 noundef 7) #21
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.bz, %bb.bu
  %i.na = phi ptr [ @.str.103, %bb.bu ], [ @.str.102, %bb.bz ]
  %.069.i.i = phi ptr [ %i.ms, %bb.bu ], [ %i.mz, %bb.bz ] ; 6 uses
  %i.nb = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !120
  %i.nc = icmp eq i64 %4, 1
  %spec.select89.i.i = select i1 %i.nc, ptr %i.na, ptr @.str.103
  %i.nd = tail call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef %0, ptr noundef %i.nb, ptr noundef nonnull @.str.101, ptr noundef %i.lz, ptr noundef nonnull %.068.i.i, ptr noundef nonnull %.0.i341.i, i64 noundef range(i64 -2147483647, -9223372036854775808) %4, ptr noundef %.069.i.i, ptr noundef nonnull %spec.select89.i.i) #21 ; 0 uses
  %i.ne = load i32, ptr %.068.i.i, align 8, !tbaa !124 ; 2 uses
  %.not84.i.i = icmp sgt i32 %i.ne, -1
  br i1 %.not84.i.i, label %bb.ca, label %bb.ce

bb.ca:                                            ; preds = %.critedge.i.i
  %i.nf = add nsw i32 %i.ne, -1                   ; 2 uses
  store i32 %i.nf, ptr %.068.i.i, align 8, !tbaa !124
  %i.ng = icmp eq i32 %i.nf, 0
  br i1 %i.ng, label %bb.cb, label %bb.ce

bb.cb:                                            ; preds = %bb.ca
  %i.nh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !134 ; 2 uses
  %.not85.i.i = icmp eq ptr %i.nh, null
  br i1 %.not85.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ni = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !135
  %i.nj = tail call i32 %i.nh(ptr noundef nonnull %.068.i.i, i32 noundef 1, ptr noundef %i.ni) #21, !inline_history !381 ; 0 uses
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.nk = getelementptr i8, ptr %.068.i.i, i64 8
  %.068.val.i.i = load ptr, ptr %i.nk, align 8, !tbaa !125
  %i.nl = getelementptr i8, ptr %.068.val.i.i, i64 48
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !136
  tail call void %i.nm(ptr noundef nonnull %.068.i.i) #21, !inline_history !381
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.ca, %.critedge.i.i
  %i.nn = load i32, ptr %.069.i.i, align 8, !tbaa !124 ; 2 uses
  %.not86.i.i = icmp sgt i32 %i.nn, -1
  br i1 %.not86.i.i, label %bb.cf, label %.loopexit69

bb.cf:                                            ; preds = %bb.ce
  %i.no = add nsw i32 %i.nn, -1                   ; 2 uses
  store i32 %i.no, ptr %.069.i.i, align 8, !tbaa !124
  %i.np = icmp eq i32 %i.no, 0
  br i1 %i.np, label %bb.cg, label %.loopexit69

bb.cg:                                            ; preds = %bb.cf
  %i.nq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !134 ; 2 uses
  %.not87.i.i = icmp eq ptr %i.nq, null
  br i1 %.not87.i.i, label %.sink.split.i342.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.nr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !135
  %i.ns = tail call i32 %i.nq(ptr noundef nonnull %.069.i.i, i32 noundef 1, ptr noundef %i.nr) #21, !inline_history !381 ; 0 uses
  br label %.sink.split.i342.i

.sink.split.i342.i:                               ; preds = %bb.ch, %bb.cg, %bb.by, %bb.bx
  %.068.sink105.i.i = phi ptr [ %.068.i.i, %bb.bx ], [ %.068.i.i, %bb.by ], [ %.069.i.i, %bb.ch ], [ %.069.i.i, %bb.cg ] ; 2 uses
  %i.nt = getelementptr i8, ptr %.068.sink105.i.i, i64 8
  %.068.val92.i.i = load ptr, ptr %i.nt, align 8, !tbaa !125
  %i.nu = getelementptr i8, ptr %.068.val92.i.i, i64 48
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !136
  tail call void %i.nv(ptr noundef nonnull %.068.sink105.i.i) #21, !inline_history !381
  br label %.loopexit69

bb.ci:                                            ; preds = %bb.bo, %PyStackRef_CLOSE.exit337.thread365.i
  %i.nw = icmp slt i64 %4, %i.ls
  br i1 %i.nw, label %bb.cj, label %.thread369.i

bb.cj:                                            ; preds = %bb.ci
  %i.nx = getelementptr i8, ptr %i.d, i64 56
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !392 ; 3 uses
  %i.nz = icmp eq ptr %i.ny, null
  br i1 %i.nz, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.oa = getelementptr i8, ptr %i.ny, i64 16
  %.val328.i = load i64, ptr %i.oa, align 8, !tbaa !123
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.ob = phi i64 [ %.val328.i, %bb.ck ], [ 0, %bb.cj ] ; 5 uses
  %i.oc = sub i64 %i.ls, %i.ob                    ; 6 uses
  %i.od = icmp slt i64 %4, %i.oc
  br i1 %i.od, label %.lr.ph465.i.preheader, label %._crit_edge466.thread.i

.lr.ph465.i.preheader:                            ; preds = %bb.cl
  %i.oe = sub i64 %i.oc, %4                       ; 3 uses
  %min.iters.check272 = icmp ult i64 %i.oe, 4
  br i1 %min.iters.check272, label %.lr.ph465.i.preheader284, label %vector.ph273

vector.ph273:                                     ; preds = %.lr.ph465.i.preheader
  %n.vec274 = and i64 %i.oe, -4                   ; 3 uses
  %i.of = add i64 %4, %n.vec274
  %i.og = getelementptr [8 x i8], ptr %i.x, i64 %4
  br label %vector.body275

vector.body275:                                   ; preds = %vector.body275, %vector.ph273
  %index276 = phi i64 [ 0, %vector.ph273 ], [ %index.next280, %vector.body275 ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph273 ], [ %i.on, %vector.body275 ]
  %vec.phi277 = phi <2 x i64> [ zeroinitializer, %vector.ph273 ], [ %i.oo, %vector.body275 ]
  %i.oh = getelementptr [8 x i8], ptr %i.og, i64 %index276 ; 2 uses
  %i.oi = getelementptr i8, ptr %i.oh, i64 16
  %wide.load278 = load <2 x i64>, ptr %i.oh, align 8, !tbaa !124
  %wide.load279 = load <2 x i64>, ptr %i.oi, align 8, !tbaa !124
  %i.oj = icmp eq <2 x i64> %wide.load278, splat (i64 1)
  %i.ok = icmp eq <2 x i64> %wide.load279, splat (i64 1)
  %i.ol = zext <2 x i1> %i.oj to <2 x i64>
  %i.om = zext <2 x i1> %i.ok to <2 x i64>
  %i.on = add <2 x i64> %vec.phi, %i.ol           ; 2 uses
  %i.oo = add <2 x i64> %vec.phi277, %i.om        ; 2 uses
  %index.next280 = add nuw i64 %index276, 4       ; 2 uses
  %i.op = icmp eq i64 %index.next280, %n.vec274
  br i1 %i.op, label %middle.block281, label %vector.body275, !llvm.loop !382

middle.block281:                                  ; preds = %vector.body275
  %bin.rdx = add <2 x i64> %i.oo, %i.on
  %i.oq = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n282 = icmp eq i64 %i.oe, %n.vec274
  br i1 %cmp.n282, label %._crit_edge466.i, label %.lr.ph465.i.preheader284

.lr.ph465.i.preheader284:                         ; preds = %.lr.ph465.i.preheader, %middle.block281
  %.0249463.i.ph = phi i64 [ 0, %.lr.ph465.i.preheader ], [ %i.oq, %middle.block281 ]
  %.4462.i.ph = phi i64 [ %4, %.lr.ph465.i.preheader ], [ %i.of, %middle.block281 ]
  br label %.lr.ph465.i

.lr.ph465.i:                                      ; preds = %.lr.ph465.i.preheader284, %.lr.ph465.i
  %.0249463.i = phi i64 [ %spec.select322.i, %.lr.ph465.i ], [ %.0249463.i.ph, %.lr.ph465.i.preheader284 ]
  %.4462.i = phi i64 [ %i.ov, %.lr.ph465.i ], [ %.4462.i.ph, %.lr.ph465.i.preheader284 ] ; 2 uses
  %i.or = getelementptr [8 x i8], ptr %i.x, i64 %.4462.i
  %i.os = load i64, ptr %i.or, align 8, !tbaa !124
  %i.ot = icmp eq i64 %i.os, 1
  %i.ou = zext i1 %i.ot to i64
  %spec.select322.i = add i64 %.0249463.i, %i.ou  ; 2 uses
  %i.ov = add nsw i64 %.4462.i, 1                 ; 2 uses
  %i.ow = icmp slt i64 %i.ov, %i.oc
  br i1 %i.ow, label %.lr.ph465.i, label %._crit_edge466.i, !llvm.loop !383

._crit_edge466.i:                                 ; preds = %.lr.ph465.i, %middle.block281
  %spec.select322.i.lcssa = phi i64 [ %i.oq, %middle.block281 ], [ %spec.select322.i, %.lr.ph465.i ] ; 2 uses
  %.not313.i = icmp eq i64 %spec.select322.i.lcssa, 0
  br i1 %.not313.i, label %._crit_edge466.thread.i, label %bb.cs

._crit_edge466.thread.i:                          ; preds = %._crit_edge466.i, %bb.cl
  %.not314.i = icmp eq i64 %i.ob, 0
  br i1 %.not314.i, label %.thread369.i, label %bb.cm

bb.cm:                                            ; preds = %._crit_edge466.thread.i
  %i.ox = icmp sgt i64 %..i, %i.oc
  %i.oy = sub i64 %..i, %i.oc
  %.5.i = select i1 %i.ox, i64 %i.oy, i64 0       ; 2 uses
  %i.oz = getelementptr i8, ptr %i.ny, i64 32
  %i.pa = icmp slt i64 %.5.i, %i.ob
  br i1 %i.pa, label %.lr.ph469.i, label %.thread369.i

.lr.ph469.i:                                      ; preds = %bb.cm
  %i.pb = getelementptr [8 x i8], ptr %i.x, i64 %i.oc
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cr, %.lr.ph469.i
  %.6467.i = phi i64 [ %.5.i, %.lr.ph469.i ], [ %i.pm, %bb.cr ] ; 3 uses
  %i.pc = getelementptr [8 x i8], ptr %i.pb, i64 %.6467.i ; 2 uses
  %i.pd = load i64, ptr %i.pc, align 8
  %i.pe = icmp ult i64 %i.pd, 2
  br i1 %i.pe, label %bb.co, label %bb.cr

bb.co:                                            ; preds = %bb.cn
  %i.pf = getelementptr [8 x i8], ptr %i.oz, i64 %.6467.i
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !120 ; 4 uses
  %i.ph = load i32, ptr %i.pg, align 8, !tbaa !124 ; 2 uses
  %.not.i343.i = icmp sgt i32 %i.ph, -1
  br i1 %.not.i343.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.pi = ptrtoint ptr %i.pg to i64
  %i.pj = or i64 %i.pi, 1
  br label %_PyStackRef_FromPyObjectNew.exit.i58

bb.cq:                                            ; preds = %bb.co
  %i.pk = add nuw i32 %i.ph, 1
  store i32 %i.pk, ptr %i.pg, align 8, !tbaa !124
  %i.pl = ptrtoint ptr %i.pg to i64
  br label %_PyStackRef_FromPyObjectNew.exit.i58

_PyStackRef_FromPyObjectNew.exit.i58:             ; preds = %bb.cq, %bb.cp
  %.sroa.0.0.i.i59 = phi i64 [ %i.pj, %bb.cp ], [ %i.pl, %bb.cq ]
  store i64 %.sroa.0.0.i.i59, ptr %i.pc, align 8, !tbaa !124
  br label %bb.cr

bb.cr:                                            ; preds = %_PyStackRef_FromPyObjectNew.exit.i58, %bb.cn
  %i.pm = add nsw i64 %.6467.i, 1                 ; 2 uses
  %i.pn = icmp slt i64 %i.pm, %i.ob
  br i1 %i.pn, label %bb.cn, label %.thread369.i, !llvm.loop !384

bb.cs:                                            ; preds = %._crit_edge466.i
  %i.po = getelementptr i8, ptr %i.d, i64 40
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !390
  tail call fastcc void @missing_arguments(ptr noundef %0, ptr noundef nonnull %i.ao, i64 noundef %spec.select322.i.lcssa, i64 noundef %i.ob, ptr noundef nonnull %i.x, ptr noundef %i.pp)
  br label %.loopexit69

.thread369.i:                                     ; preds = %bb.cr, %bb.cm, %._crit_edge466.thread.i, %bb.ci
  %i.pq = load i32, ptr %i.ar, align 4, !tbaa !208
  %i.pr = icmp sgt i32 %i.pq, 0
  br i1 %i.pr, label %bb.ct, label %initialize_locals.exit

bb.ct:                                            ; preds = %.thread369.i
  %i.ps = load i32, ptr %i.ap, align 4, !tbaa !189 ; 2 uses
  %i.pt = icmp slt i32 %i.ps, %i.at
  br i1 %i.pt, label %.lr.ph474.i, label %initialize_locals.exit

.lr.ph474.i:                                      ; preds = %bb.ct
  %i.pu = sext i32 %i.ps to i64
  %i.pv = getelementptr i8, ptr %i.d, i64 64
  %i.pw = getelementptr i8, ptr %i.ao, i64 96
  br label %bb.cu

bb.cu:                                            ; preds = %bb.da, %.lr.ph474.i
  %.0248472.i = phi i64 [ 0, %.lr.ph474.i ], [ %.2.i, %bb.da ] ; 3 uses
  %.7470.i = phi i64 [ %i.pu, %.lr.ph474.i ], [ %i.qo, %bb.da ] ; 3 uses
  %i.px = getelementptr [8 x i8], ptr %i.x, i64 %.7470.i ; 2 uses
  %i.py = load i64, ptr %i.px, align 8
  %.not316.i = icmp ult i64 %i.py, 2
  br i1 %.not316.i, label %bb.cv, label %bb.da

bb.cv:                                            ; preds = %bb.cu
  %i.pz = load ptr, ptr %i.pv, align 8, !tbaa !393 ; 2 uses
  %.not317.i = icmp eq ptr %i.pz, null
  br i1 %.not317.i, label %.thread375.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.qa = load ptr, ptr %i.pw, align 8, !tbaa !193
  %i.qb = getelementptr i8, ptr %i.qa, i64 32
  %i.qc = getelementptr [8 x i8], ptr %i.qb, i64 %.7470.i
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.qe = call i32 @PyDict_GetItemRef(ptr noundef nonnull %i.pz, ptr noundef %i.qd, ptr noundef nonnull %i.b) #21
  %i.qf = icmp slt i32 %i.qe, 0
  br i1 %i.qf, label %.thread378.i, label %bb.cx

.thread378.i:                                     ; preds = %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %.loopexit69

bb.cx:                                            ; preds = %bb.cw
  %i.qg = load ptr, ptr %i.b, align 8, !tbaa !120 ; 3 uses
  %.not318.i = icmp eq ptr %i.qg, null
  br i1 %.not318.i, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %.thread375.i

.thread375.i:                                     ; preds = %bb.cy, %bb.cv
  %i.qh = add i64 %.0248472.i, 1
  br label %bb.da

bb.cz:                                            ; preds = %bb.cx
  %i.qi = getelementptr i8, ptr %i.qg, i64 6
  %i.qj = load i16, ptr %i.qi, align 2, !tbaa !124
  %i.qk = and i16 %i.qj, 1
  %i.ql = ptrtoint ptr %i.qg to i64
  %i.qm = zext nneg i16 %i.qk to i64
  %i.qn = or i64 %i.qm, %i.ql
  store i64 %i.qn, ptr %i.px, align 8, !tbaa !124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %.thread375.i, %bb.cu
  %.2.i = phi i64 [ %.0248472.i, %bb.cu ], [ %i.qh, %.thread375.i ], [ %.0248472.i, %bb.cz ] ; 3 uses
  %i.qo = add nsw i64 %.7470.i, 1                 ; 2 uses
  %exitcond518.not.i = icmp eq i64 %i.qo, %i.au
  br i1 %exitcond518.not.i, label %._crit_edge475.i, label %bb.cu, !llvm.loop !385

._crit_edge475.i:                                 ; preds = %bb.da
  %.not315.i = icmp eq i64 %.2.i, 0
  br i1 %.not315.i, label %initialize_locals.exit, label %bb.db

bb.db:                                            ; preds = %._crit_edge475.i
  %i.qp = getelementptr i8, ptr %i.d, i64 40
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !390
  call fastcc void @missing_arguments(ptr noundef %0, ptr noundef %i.ao, i64 noundef %.2.i, i64 noundef -1, ptr noundef nonnull %i.x, ptr noundef %i.qq)
  br label %.loopexit69

.lr.ph.i61:                                       ; preds = %.preheader396.i, %PyStackRef_CLOSE.exit345.i
  %.2257436.i = phi i64 [ %i.qy, %PyStackRef_CLOSE.exit345.i ], [ 0, %.preheader396.i ] ; 2 uses
  %i.qr = getelementptr [8 x i8], ptr %3, i64 %.2257436.i
  %i.qs = load i64, ptr %i.qr, align 8            ; 2 uses
  %i.qt = and i64 %i.qs, 1
end_hunk_0
begin_hunk_1_@_PyEval_UnpackIterableStackRef:bb.a
  %i.f = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val158 = load ptr, ptr %i.f, align 8, !tbaa !125
  %i.g = getelementptr i8, ptr %.val158, i64 216
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !190
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.ap

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @PySequence_Check(ptr noundef nonnull %1) #21
  %.not148 = icmp eq i32 %i.j, 0
  br i1 %.not148, label %bb.e, label %bb.ap

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !120
  %.val157 = load ptr, ptr %i.f, align 8, !tbaa !125
  %i.l = getelementptr i8, ptr %.val157, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !137
  %i.n = tail call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef %0, ptr noundef %i.k, ptr noundef nonnull @.str.45, ptr noundef %i.m) #21 ; 0 uses
  br label %bb.ap

.lr.ph:                                           ; preds = %.preheader169, %bb.i
  %.0116173 = phi ptr [ %i.y, %bb.i ], [ %4, %.preheader169 ] ; 4 uses
  %.0117172 = phi i32 [ %i.af, %bb.i ], [ 0, %.preheader169 ] ; 6 uses
  %i.o = tail call ptr @PyIter_Next(ptr noundef nonnull %i.a) #21 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.lr.ph
  %i.q = getelementptr i8, ptr %0, i64 128
  %.val160 = load ptr, ptr %i.q, align 8, !tbaa !132 ; 2 uses
  %i.r = icmp eq ptr %.val160, null
  br i1 %i.r, label %_PyErr_Occurred.exit.thread, label %_PyErr_Occurred.exit

_PyErr_Occurred.exit:                             ; preds = %bb.f
  %i.s = getelementptr i8, ptr %.val160, i64 8
  %.val.i = load ptr, ptr %i.s, align 8, !tbaa !125
  %.not144 = icmp eq ptr %.val.i, null
  br i1 %.not144, label %_PyErr_Occurred.exit.thread, label %bb.ai

_PyErr_Occurred.exit.thread:                      ; preds = %bb.f, %_PyErr_Occurred.exit
  %i.t = icmp eq i32 %3, -1
  %i.u = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !120 ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_PyErr_Occurred.exit.thread
  %i.v = tail call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef nonnull %0, ptr noundef %i.u, ptr noundef nonnull @.str.46, i32 noundef %2, i32 noundef %.0117172) #21 ; 0 uses
  br label %bb.ai

bb.h:                                             ; preds = %_PyErr_Occurred.exit.thread
  %i.w = add i32 %3, %2
  %i.x = tail call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef nonnull %0, ptr noundef %i.u, ptr noundef nonnull @.str.47, i32 noundef %i.w, i32 noundef %.0117172) #21 ; 0 uses
  br label %bb.ai

bb.i:                                             ; preds = %.lr.ph
  %i.y = getelementptr i8, ptr %.0116173, i64 -8  ; 3 uses
  %i.z = getelementptr i8, ptr %i.o, i64 6
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !124
  %i.ab = and i16 %i.aa, 1
  %i.ac = ptrtoint ptr %i.o to i64
  %i.ad = zext nneg i16 %i.ab to i64
  %i.ae = or i64 %i.ad, %i.ac
  store i64 %i.ae, ptr %i.y, align 8, !tbaa !124
  %i.af = add nuw nsw i32 %.0117172, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.af, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !408

._crit_edge:                                      ; preds = %bb.i, %.preheader169
  %.0117.lcssa = phi i32 [ 0, %.preheader169 ], [ %2, %bb.i ] ; 5 uses
  %.0116.lcssa = phi ptr [ %4, %.preheader169 ], [ %i.y, %bb.i ] ; 6 uses
  %i.ag = icmp eq i32 %3, -1
  br i1 %i.ag, label %bb.j, label %bb.ab

bb.j:                                             ; preds = %._crit_edge
  %i.ah = tail call ptr @PyIter_Next(ptr noundef nonnull %i.a) #21 ; 6 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr i8, ptr %0, i64 128
  %.val159 = load ptr, ptr %i.aj, align 8, !tbaa !132 ; 2 uses
  %i.ak = icmp eq ptr %.val159, null
  br i1 %i.ak, label %_PyErr_Occurred.exit164.thread, label %_PyErr_Occurred.exit164

_PyErr_Occurred.exit164:                          ; preds = %bb.k
  %i.al = getelementptr i8, ptr %.val159, i64 8
  %.val.i162 = load ptr, ptr %i.al, align 8, !tbaa !125
  %.not141 = icmp eq ptr %.val.i162, null
  br i1 %.not141, label %_PyErr_Occurred.exit164.thread, label %bb.ai

_PyErr_Occurred.exit164.thread:                   ; preds = %bb.k, %_PyErr_Occurred.exit164
  %i.am = load i32, ptr %i.a, align 8, !tbaa !124 ; 2 uses
  %.not142 = icmp sgt i32 %i.am, -1
  br i1 %.not142, label %bb.l, label %bb.ap

bb.l:                                             ; preds = %_PyErr_Occurred.exit164.thread
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.a, align 8, !tbaa !124
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.m, label %bb.ap

bb.m:                                             ; preds = %bb.l
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !134 ; 2 uses
  %.not143 = icmp eq ptr %i.ap, null
  br i1 %.not143, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !135
  %i.ar = tail call i32 %i.ap(ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef %i.aq) #21 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.as = getelementptr i8, ptr %i.a, i64 8
  %.val156 = load ptr, ptr %i.as, align 8, !tbaa !125
  %i.at = getelementptr i8, ptr %.val156, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !136
  tail call void %i.au(ptr noundef nonnull %i.a) #21
  br label %bb.ap

bb.p:                                             ; preds = %bb.j
  %i.av = load i32, ptr %i.ah, align 8, !tbaa !124 ; 2 uses
  %.not139 = icmp sgt i32 %i.av, -1
  br i1 %.not139, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.aw = add nsw i32 %i.av, -1                   ; 2 uses
  store i32 %i.aw, ptr %i.ah, align 8, !tbaa !124
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !134 ; 2 uses
  %.not140 = icmp eq ptr %i.ay, null
  br i1 %.not140, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !135
  %i.ba = tail call i32 %i.ay(ptr noundef nonnull %i.ah, i32 noundef 1, ptr noundef %i.az) #21 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bb = getelementptr i8, ptr %i.ah, i64 8
  %.val155 = load ptr, ptr %i.bb, align 8, !tbaa !125
  %i.bc = getelementptr i8, ptr %.val155, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !136
  tail call void %i.bd(ptr noundef nonnull %i.ah) #21
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %bb.t, %bb.p
  %i.be = getelementptr i8, ptr %1, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !125 ; 3 uses
  %i.bg = icmp eq ptr %i.bf, @PyList_Type
  %i.bh = icmp eq ptr %i.bf, @PyTuple_Type
  %or.cond = or i1 %i.bg, %i.bh
  %i.bi = icmp eq ptr %i.bf, @PyDict_Type         ; 2 uses
  %or.cond149 = or i1 %i.bi, %or.cond
  br i1 %or.cond149, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  br i1 %i.bi, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bj = tail call i64 @PyDict_Size(ptr noundef nonnull %1) #21
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.bk = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.bk, align 8, !tbaa !123
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bl = phi i64 [ %i.bj, %bb.w ], [ %.val, %bb.x ] ; 2 uses
  %i.bm = sext i32 %2 to i64
  %i.bn = icmp sgt i64 %i.bl, %i.bm
  br i1 %i.bn, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bo = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !120
  %i.bp = tail call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef %0, ptr noundef %i.bo, ptr noundef nonnull @.str.48, i32 noundef %2, i64 noundef %i.bl) #21 ; 0 uses
  br label %bb.ai

bb.aa:                                            ; preds = %bb.u, %bb.y
  %i.bq = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !120
  %i.br = tail call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef %0, ptr noundef %i.bq, ptr noundef nonnull @.str.49, i32 noundef %2) #21 ; 0 uses
  br label %bb.ai

bb.ab:                                            ; preds = %._crit_edge
  %i.bs = tail call ptr @PySequence_List(ptr noundef nonnull %i.a) #21 ; 5 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.ai, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bu = getelementptr i8, ptr %.0116.lcssa, i64 -8 ; 3 uses
  %i.bv = getelementptr i8, ptr %i.bs, i64 6
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !124
  %i.bx = and i16 %i.bw, 1
  %i.by = ptrtoint ptr %i.bs to i64
  %i.bz = zext nneg i16 %i.bx to i64
  %i.ca = or i64 %i.bz, %i.by
  store i64 %i.ca, ptr %i.bu, align 8, !tbaa !124
  %i.cb = getelementptr i8, ptr %i.bs, i64 16     ; 2 uses
  %.val161 = load i64, ptr %i.cb, align 8, !tbaa !123 ; 5 uses
  %i.cc = sext i32 %3 to i64                      ; 2 uses
  %i.cd = icmp slt i64 %.val161, %i.cc
  br i1 %i.cd, label %bb.ad, label %.preheader

.preheader:                                       ; preds = %bb.ac
  %i.ce = icmp sgt i32 %3, 0
  br i1 %i.ce, label %.lr.ph177, label %._crit_edge178

.lr.ph177:                                        ; preds = %.preheader
  %i.cf = getelementptr i8, ptr %i.bs, i64 24     ; 3 uses
  %i.cg = zext nneg i32 %3 to i64                 ; 4 uses
  %xtraiter = and i64 %i.cg, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph177
  %i.ch = getelementptr i8, ptr %.0116.lcssa, i64 -16 ; 2 uses
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !183
  %i.cj = sub nsw i64 %.val161, %i.cg
  %i.ck = getelementptr [8 x i8], ptr %i.ci, i64 %i.cj
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !120 ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 6
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !124
  %i.co = and i16 %i.cn, 1
  %i.cp = ptrtoint ptr %i.cl to i64
  %i.cq = zext nneg i16 %i.co to i64
  %i.cr = or i64 %i.cq, %i.cp
  store i64 %i.cr, ptr %i.ch, align 8, !tbaa !124
  %indvars.iv.next.prol = add nsw i64 %i.cg, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph177
  %indvars.iv.unr = phi i64 [ %i.cg, %.lr.ph177 ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %.1176.unr = phi ptr [ %i.bu, %.lr.ph177 ], [ %i.ch, %.prol.loopexit.unr-lcssa ]
  %i.cs = icmp eq i32 %3, 1
  br i1 %i.cs, label %._crit_edge178, label %.lr.ph177.new

bb.ad:                                            ; preds = %bb.ac
  %i.ct = add nuw i32 %.0117.lcssa, 1
  %i.cu = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !120
  %i.cv = add i32 %3, %2
  %i.cw = sext i32 %2 to i64
  %i.cx = add i64 %.val161, %i.cw
  %i.cy = tail call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef %0, ptr noundef %i.cu, ptr noundef nonnull @.str.50, i32 noundef %i.cv, i64 noundef %i.cx) #21 ; 0 uses
  br label %bb.ai

.lr.ph177.new:                                    ; preds = %.prol.loopexit, %.lr.ph177.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph177.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %.1176 = phi ptr [ %i.dk, %.lr.ph177.new ], [ %.1176.unr, %.prol.loopexit ] ; 2 uses
  %i.cz = getelementptr i8, ptr %.1176, i64 -8
  %i.da = load ptr, ptr %i.cf, align 8, !tbaa !183
  %i.db = sub nsw i64 %.val161, %indvars.iv       ; 2 uses
  %i.dc = getelementptr [8 x i8], ptr %i.da, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !120 ; 2 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 6
  %i.df = load i16, ptr %i.de, align 2, !tbaa !124
  %i.dg = and i16 %i.df, 1
  %i.dh = ptrtoint ptr %i.dd to i64
  %i.di = zext nneg i16 %i.dg to i64
  %i.dj = or i64 %i.di, %i.dh
  store i64 %i.dj, ptr %i.cz, align 8, !tbaa !124
  %i.dk = getelementptr i8, ptr %.1176, i64 -16   ; 2 uses
  %i.dl = load ptr, ptr %i.cf, align 8, !tbaa !183
  %5 = getelementptr [8 x i8], ptr %i.dl, i64 %i.db
  %6 = getelementptr i8, ptr %5, i64 8
  %i.dm = load ptr, ptr %6, align 8, !tbaa !120   ; 2 uses
  %i.dn = getelementptr i8, ptr %i.dm, i64 6
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !124
  %i.dp = and i16 %i.do, 1
  %i.dq = ptrtoint ptr %i.dm to i64
  %i.dr = zext nneg i16 %i.dp to i64
  %i.ds = or i64 %i.dr, %i.dq
  store i64 %i.ds, ptr %i.dk, align 8, !tbaa !124
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2
  %i.dt = icmp sgt i64 %indvars.iv, 2
  br i1 %i.dt, label %.lr.ph177.new, label %._crit_edge178, !llvm.loop !409

._crit_edge178:                                   ; preds = %.prol.loopexit, %.lr.ph177.new, %.preheader
  %i.du = sub i64 %.val161, %i.cc
  store i64 %i.du, ptr %i.cb, align 8, !tbaa !123
  %i.dv = load i32, ptr %i.a, align 8, !tbaa !124 ; 2 uses
  %.not = icmp sgt i32 %i.dv, -1
  br i1 %.not, label %bb.ae, label %bb.ap

bb.ae:                                            ; preds = %._crit_edge178
  %i.dw = add nsw i32 %i.dv, -1                   ; 2 uses
  store i32 %i.dw, ptr %i.a, align 8, !tbaa !124
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %bb.af, label %bb.ap

bb.af:                                            ; preds = %bb.ae
  %i.dy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !134 ; 2 uses
  %.not138 = icmp eq ptr %i.dy, null
  br i1 %.not138, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !135
  %i.ea = tail call i32 %i.dy(ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef %i.dz) #21 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.eb = getelementptr i8, ptr %i.a, i64 8
  %.val154 = load ptr, ptr %i.eb, align 8, !tbaa !125
  %i.ec = getelementptr i8, ptr %.val154, i64 48
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !136
  tail call void %i.ed(ptr noundef nonnull %i.a) #21
  br label %bb.ap

bb.ai:                                            ; preds = %bb.ab, %_PyErr_Occurred.exit164, %_PyErr_Occurred.exit, %bb.h, %bb.g, %bb.ad, %bb.aa, %bb.z
  %.2119 = phi i32 [ %.0117172, %_PyErr_Occurred.exit ], [ %.0117172, %bb.g ], [ %.0117172, %bb.h ], [ %.0117.lcssa, %_PyErr_Occurred.exit164 ], [ %.0117.lcssa, %bb.z ], [ %.0117.lcssa, %bb.aa ], [ %.0117.lcssa, %bb.ab ], [ %i.ct, %bb.ad ] ; 2 uses
  %.2 = phi ptr [ %.0116173, %_PyErr_Occurred.exit ], [ %.0116173, %bb.g ], [ %.0116173, %bb.h ], [ %.0116.lcssa, %_PyErr_Occurred.exit164 ], [ %.0116.lcssa, %bb.z ], [ %.0116.lcssa, %bb.aa ], [ %.0116.lcssa, %bb.ab ], [ %i.bu, %bb.ad ]
  %i.ee = icmp sgt i32 %.2119, 0
  br i1 %i.ee, label %.lr.ph182, label %._crit_edge183

.lr.ph182:                                        ; preds = %bb.ai, %PyStackRef_CLOSE.exit
  %.3180 = phi ptr [ %i.em, %PyStackRef_CLOSE.exit ], [ %.2, %bb.ai ] ; 2 uses
  %.3120179 = phi i32 [ %i.el, %PyStackRef_CLOSE.exit ], [ %.2119, %bb.ai ] ; 2 uses
  %i.ef = load i64, ptr %.3180, align 8           ; 2 uses
  %i.eg = and i64 %i.ef, 1
  %.not.not.i = icmp eq i64 %i.eg, 0
  br i1 %.not.not.i, label %bb.aj, label %PyStackRef_CLOSE.exit

bb.aj:                                            ; preds = %.lr.ph182
  %i.eh = inttoptr i64 %i.ef to ptr               ; 3 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !124
  %i.ej = add i32 %i.ei, -1                       ; 2 uses
  store i32 %i.ej, ptr %i.eh, align 8, !tbaa !124
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %bb.ak, label %PyStackRef_CLOSE.exit

bb.ak:                                            ; preds = %bb.aj
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.eh) #21
  br label %PyStackRef_CLOSE.exit

PyStackRef_CLOSE.exit:                            ; preds = %.lr.ph182, %bb.aj, %bb.ak
  %i.el = add nsw i32 %.3120179, -1
  %i.em = getelementptr i8, ptr %.3180, i64 8
  %i.en = icmp sgt i32 %.3120179, 1
  br i1 %i.en, label %.lr.ph182, label %._crit_edge183, !llvm.loop !410

._crit_edge183:                                   ; preds = %PyStackRef_CLOSE.exit, %bb.ai
  %i.eo = load i32, ptr %i.a, align 8, !tbaa !124 ; 2 uses
  %.not145 = icmp sgt i32 %i.eo, -1
  br i1 %.not145, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %._crit_edge183
  %i.ep = add nsw i32 %i.eo, -1                   ; 2 uses
  store i32 %i.ep, ptr %i.a, align 8, !tbaa !124
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.er = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !134 ; 2 uses
  %.not146 = icmp eq ptr %i.er, null
  br i1 %.not146, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.es = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !135
  %i.et = tail call i32 %i.er(ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef %i.es) #21 ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.eu = getelementptr i8, ptr %i.a, i64 8
  %.val153 = load ptr, ptr %i.eu, align 8, !tbaa !125
  %i.ev = getelementptr i8, ptr %.val153, i64 48
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !136
  tail call void %i.ew(ptr noundef nonnull %i.a) #21
  br label %bb.ap

bb.ap:                                            ; preds = %bb.al, %bb.ao, %._crit_edge183, %._crit_edge178, %bb.ah, %bb.ae, %_PyErr_Occurred.exit164.thread, %bb.o, %bb.l, %bb.b, %bb.c, %bb.d, %bb.e
  %.0 = phi i32 [ 1, %_PyErr_Occurred.exit164.thread ], [ 1, %._crit_edge178 ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 1, %bb.l ], [ 1, %bb.o ], [ 1, %bb.ae ], [ 1, %bb.ah ], [ 0, %._crit_edge183 ], [ 0, %bb.ao ], [ 0, %bb.al ]
  ret i32 %.0
}

declare void @_Py_Specialize_UnpackSequence(i64, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @PyException_GetTraceback(ptr noundef) local_unnamed_addr #3

declare i32 @PyUnstable_InterpreterFrame_GetLine(ptr noundef) local_unnamed_addr #3

declare i32 @PyTraceBack_Here(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @get_exception_handler(ptr %.40.val, i32 noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %.40.val, i64 32   ; 5 uses
  %i.b = getelementptr i8, ptr %.40.val, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !123 ; 2 uses
  %i.c = getelementptr i8, ptr %i.a, i64 %.val    ; 2 uses
  %i.d = icmp sgt i64 %.val, 40
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.a, align 8, !tbaa !124   ; 2 uses
  %i.f = and i8 %i.e, 63
  %i.g = zext nneg i8 %i.f to i32                 ; 2 uses
  %i.h = and i8 %i.e, 64
  %.not8.i = icmp eq i8 %i.h, 0
  br i1 %.not8.i, label %parse_varint.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.010.i = phi i32 [ %i.n, %.lr.ph.i ], [ %i.g, %bb.b ]
  %.079.i = phi ptr [ %i.i, %.lr.ph.i ], [ %i.a, %bb.b ]
  %i.i = getelementptr i8, ptr %.079.i, i64 1     ; 2 uses
  %i.j = shl i32 %.010.i, 6
  %i.k = load i8, ptr %i.i, align 1, !tbaa !124   ; 2 uses
  %i.l = and i8 %i.k, 63
  %i.m = zext nneg i8 %i.l to i32
  %i.n = or disjoint i32 %i.j, %i.m               ; 2 uses
  %i.o = and i8 %i.k, 64
  %.not.i = icmp eq i8 %i.o, 0
  br i1 %.not.i, label %parse_varint.exit, label %.lr.ph.i, !llvm.loop !411

parse_varint.exit:                                ; preds = %.lr.ph.i, %bb.b
  %.0.lcssa.i = phi i32 [ %i.g, %bb.b ], [ %i.n, %.lr.ph.i ]
  %.not = icmp sgt i32 %.0.lcssa.i, %0
  br i1 %.not, label %.critedge, label %.preheader

.preheader:                                       ; preds = %parse_varint.exit, %parse_varint.exit53
  %.037 = phi ptr [ %.037., %parse_varint.exit53 ], [ %i.a, %parse_varint.exit ] ; 3 uses
  %.035 = phi ptr [ %..035, %parse_varint.exit53 ], [ %i.c, %parse_varint.exit ] ; 2 uses
  %i.p = ptrtoint ptr %.035 to i64
  %i.q = ptrtoint ptr %.037 to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr i64 %i.r, 1
  %i.t = getelementptr i8, ptr %.037, i64 %i.s
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader
  %.0.i = phi ptr [ %i.t, %.preheader ], [ %i.w, %bb.c ] ; 5 uses
  %i.u = load i8, ptr %.0.i, align 1, !tbaa !124  ; 3 uses
  %i.v = icmp sgt i8 %i.u, -1
  %i.w = getelementptr i8, ptr %.0.i, i64 -1
  br i1 %i.v, label %bb.c, label %scan_back_to_entry_start.exit, !llvm.loop !412

scan_back_to_entry_start.exit:                    ; preds = %bb.c
  %i.x = and i8 %i.u, 63
  %i.y = zext nneg i8 %i.x to i32                 ; 2 uses
  %i.z = and i8 %i.u, 64
  %.not8.i46 = icmp eq i8 %i.z, 0
  br i1 %.not8.i46, label %parse_varint.exit53, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %scan_back_to_entry_start.exit, %.lr.ph.i47
  %.010.i48 = phi i32 [ %i.af, %.lr.ph.i47 ], [ %i.y, %scan_back_to_entry_start.exit ]
  %.079.i49 = phi ptr [ %i.aa, %.lr.ph.i47 ], [ %.0.i, %scan_back_to_entry_start.exit ]
  %i.aa = getelementptr i8, ptr %.079.i49, i64 1  ; 2 uses
  %i.ab = shl i32 %.010.i48, 6
  %i.ac = load i8, ptr %i.aa, align 1, !tbaa !124 ; 2 uses
  %i.ad = and i8 %i.ac, 63
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ab, %i.ae            ; 2 uses
  %i.ag = and i8 %i.ac, 64
  %.not.i50 = icmp eq i8 %i.ag, 0
  br i1 %.not.i50, label %parse_varint.exit53, label %.lr.ph.i47, !llvm.loop !411

parse_varint.exit53:                              ; preds = %.lr.ph.i47, %scan_back_to_entry_start.exit
  %.0.lcssa.i52 = phi i32 [ %i.y, %scan_back_to_entry_start.exit ], [ %i.af, %.lr.ph.i47 ]
  %i.ah = icmp sgt i32 %.0.lcssa.i52, %0          ; 2 uses
  %.037. = select i1 %i.ah, ptr %.037, ptr %.0.i  ; 3 uses
  %..035 = select i1 %i.ah, ptr %.0.i, ptr %.035  ; 3 uses
  %i.ai = ptrtoint ptr %..035 to i64
  %i.aj = ptrtoint ptr %.037. to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = icmp sgt i64 %i.ak, 40
  br i1 %i.al, label %.preheader, label %.loopexit, !llvm.loop !413
end_hunk_1
