Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/formatted_print?download=true
inline.NumInlined: 21
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@php_formatted_print:bb.a
  br i1 %or.cond, label %bb.bl, label %thread-pre-split

bb.bl:                                            ; preds = %bb.bk
  switch i8 %i.jw, label %bb.bm [
    i8 103, label %thread-pre-split
    i8 71, label %thread-pre-split
    i8 104, label %thread-pre-split
    i8 72, label %thread-pre-split
  ]

bb.bm:                                            ; preds = %bb.bl
  call void (ptr, ...) @zend_value_error(ptr noundef nonnull @.str.7) #14
  br label %.thread424

thread-pre-split:                                 ; preds = %bb.bk, %bb.bl, %bb.bl, %bb.bl, %bb.bl
  %i.jx = sext i32 %spec.select193 to i64
  %i.jy = getelementptr inbounds [16 x i8], ptr %2, i64 %i.jx ; 27 uses
  switch i8 %i.jw, label %.loopexit448.loopexit [
    i8 115, label %bb.bn
    i8 100, label %bb.bt
    i8 117, label %bb.bz
    i8 101, label %bb.cd
    i8 69, label %bb.cd
    i8 102, label %bb.cd
    i8 70, label %bb.cd
    i8 103, label %bb.cd
    i8 71, label %bb.cd
    i8 104, label %bb.cd
    i8 72, label %bb.cd
    i8 99, label %bb.db
    i8 111, label %bb.di
    i8 120, label %bb.dm
    i8 88, label %bb.dq
    i8 98, label %bb.du
    i8 37, label %bb.dy
    i8 0, label %bb.ed
  ]

bb.bn:                                            ; preds = %thread-pre-split
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.ka = load i8, ptr %i.jz, align 8, !tbaa !19
  %i.kb = icmp eq i8 %i.ka, 6
  br i1 %i.kb, label %bb.bo, label %bb.bp, !prof !26

bb.bo:                                            ; preds = %bb.bn
  %i.kc = load ptr, ptr %i.jy, align 8, !tbaa !19
  br label %zval_get_tmp_string.exit

bb.bp:                                            ; preds = %bb.bn
  %i.kd = call ptr @zval_get_string_func(ptr noundef nonnull %i.jy) #14 ; 2 uses
  br label %zval_get_tmp_string.exit

zval_get_tmp_string.exit:                         ; preds = %bb.bo, %bb.bp
  %.0347 = phi ptr [ null, %bb.bo ], [ %i.kd, %bb.bp ] ; 5 uses
  %.0.i = phi ptr [ %i.kc, %bb.bo ], [ %i.kd, %bb.bp ] ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.kf = zext nneg i32 %.3141 to i64
  %i.kg = sext i32 %.2135 to i64
  %i.kh = zext nneg i32 %.2160 to i64
  %i.ki = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !29
  call fastcc void @php_sprintf_appendstring(ptr noundef %i.p, ptr noundef %i.o, ptr noundef nonnull %i.ke, i64 noundef %i.kf, i64 noundef %i.kg, i8 noundef signext %.2132, i64 noundef %i.kh, i64 noundef %i.kj, i1 noundef zeroext false, i32 noundef %.1123, i32 noundef 0)
  %.not.i = icmp eq ptr %.0347, null
  br i1 %.not.i, label %zend_tmp_string_release.exit, label %bb.bq, !prof !26

bb.bq:                                            ; preds = %zval_get_tmp_string.exit
  %i.kk = getelementptr inbounds nuw i8, ptr %.0347, i64 4
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !19
  %i.km = and i32 %i.kl, 64
  %.not.i200 = icmp eq i32 %i.km, 0
  br i1 %.not.i200, label %bb.br, label %zend_tmp_string_release.exit

bb.br:                                            ; preds = %bb.bq
  %i.kn = load i32, ptr %.0347, align 4, !tbaa !30 ; 2 uses
  %i.ko = icmp ne i32 %i.kn, 0
  call void @llvm.assume(i1 %i.ko)
  %i.kp = add i32 %i.kn, -1                       ; 2 uses
  store i32 %i.kp, ptr %.0347, align 4, !tbaa !30
  %i.kq = icmp eq i32 %i.kp, 0
  br i1 %i.kq, label %bb.bs, label %zend_tmp_string_release.exit

bb.bs:                                            ; preds = %bb.br
  call void @_efree(ptr noundef nonnull %.0347) #14
  br label %zend_tmp_string_release.exit

bb.bt:                                            ; preds = %thread-pre-split
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.ks = load i8, ptr %i.kr, align 8, !tbaa !19
  %i.kt = icmp eq i8 %i.ks, 4
  br i1 %i.kt, label %bb.bu, label %bb.bv, !prof !26

bb.bu:                                            ; preds = %bb.bt
  %i.ku = load i64, ptr %i.jy, align 8, !tbaa !19
  br label %zval_get_long.exit199

bb.bv:                                            ; preds = %bb.bt
  %i.kv = call i64 @zval_get_long_func(ptr noundef nonnull %i.jy, i1 noundef zeroext false) #14
  br label %zval_get_long.exit199

zval_get_long.exit199:                            ; preds = %bb.bu, %bb.bv
  %i.kw = phi i64 [ %i.ku, %bb.bu ], [ %i.kv, %bb.bv ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  %.028.i = call i64 @llvm.abs.i64(i64 %i.kw, i1 false)
  store i8 0, ptr %i.aa, align 1, !tbaa !19
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bw, %zval_get_long.exit199
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.bw ], [ 499, %zval_get_long.exit199 ] ; 3 uses
  %.129.i = phi i64 [ %i.kx, %bb.bw ], [ %.028.i, %zval_get_long.exit199 ] ; 3 uses
  %i.kx = udiv i64 %.129.i, 10                    ; 2 uses
  %.neg.i252 = mul i64 %i.kx, 246
  %i.ky = add i64 %.neg.i252, %.129.i
  %i.kz = trunc i64 %i.ky to i8
  %i.la = add i8 %i.kz, 48
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 4 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.next.i
  store i8 %i.la, ptr %i.lb, align 1, !tbaa !19
  %i.lc = icmp ugt i64 %.129.i, 9
  %i.ld = icmp samesign ugt i64 %indvars.iv.i, 2
  %i.le = and i1 %i.ld, %i.lc
  br i1 %i.le, label %bb.bw, label %bb.bx, !llvm.loop !75

bb.bx:                                            ; preds = %bb.bw
  %i.lf = zext nneg i32 %.3141 to i64
  %i.lg = zext nneg i32 %.2160 to i64
  %i.lh = icmp slt i64 %i.kw, 0                   ; 2 uses
  %i.li = trunc nuw nsw i64 %indvars.iv.i to i32
  br i1 %i.lh, label %._crit_edge.sink.split.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.lj = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %.not.i253 = icmp eq i32 %.2129, 0
  br i1 %.not.i253, label %php_sprintf_appendint.exit, label %._crit_edge.sink.split.i

._crit_edge.sink.split.i:                         ; preds = %bb.by, %bb.bx
  %.sink.i = phi i8 [ 45, %bb.bx ], [ 43, %bb.by ]
  %i.lk = add nsw i32 %i.li, -2                   ; 2 uses
  %i.ll = zext i32 %i.lk to i64                   ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ll
  store i8 %.sink.i, ptr %i.lm, align 1, !tbaa !19
  br label %php_sprintf_appendint.exit

php_sprintf_appendint.exit:                       ; preds = %bb.by, %._crit_edge.sink.split.i
  %.pre-phi.i254 = phi i64 [ %indvars.iv.next.i, %bb.by ], [ %i.ll, %._crit_edge.sink.split.i ]
  %.1.i255 = phi i32 [ %i.lj, %bb.by ], [ %i.lk, %._crit_edge.sink.split.i ]
  %i.ln = icmp eq i32 %.2160, 0
  %i.lo = icmp eq i8 %.2132, 48
  %or.cond.i256 = and i1 %i.ln, %i.lo
  %spec.store.select.i = select i1 %or.cond.i256, i8 32, i8 %.2132
  %i.lp = getelementptr inbounds nuw i8, ptr %i.i, i64 %.pre-phi.i254
  %i.lq = sub i32 499, %.1.i255
  %i.lr = zext i32 %i.lq to i64
  call fastcc void @php_sprintf_appendstring(ptr noundef nonnull %i.p, ptr noundef nonnull %i.o, ptr noundef nonnull %i.lp, i64 noundef range(i64 -2147483648, 2147483648) %i.lf, i64 noundef 0, i8 noundef signext %spec.store.select.i, i64 noundef range(i64 0, 2) %i.lg, i64 noundef %i.lr, i1 noundef zeroext %i.lh, i32 noundef 0, i32 noundef range(i32 0, 2) %.2129)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  br label %zend_tmp_string_release.exit

bb.bz:                                            ; preds = %thread-pre-split
  %i.ls = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.lt = load i8, ptr %i.ls, align 8, !tbaa !19
  %i.lu = icmp eq i8 %i.lt, 4
  br i1 %i.lu, label %bb.ca, label %bb.cb, !prof !26

bb.ca:                                            ; preds = %bb.bz
  %i.lv = load i64, ptr %i.jy, align 8, !tbaa !19
  br label %zval_get_long.exit198

bb.cb:                                            ; preds = %bb.bz
  %i.lw = call i64 @zval_get_long_func(ptr noundef nonnull %i.jy, i1 noundef zeroext false) #14
  br label %zval_get_long.exit198

zval_get_long.exit198:                            ; preds = %bb.ca, %bb.cb
  %i.lx = phi i64 [ %i.lv, %bb.ca ], [ %i.lw, %bb.cb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  store i8 0, ptr %i.z, align 1, !tbaa !19
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cc, %zval_get_long.exit198
  %indvars.iv.i257 = phi i64 [ %indvars.iv.next.i259, %bb.cc ], [ 499, %zval_get_long.exit198 ] ; 2 uses
  %.019.i = phi i64 [ %i.ly, %bb.cc ], [ %i.lx, %zval_get_long.exit198 ] ; 3 uses
  %i.ly = udiv i64 %.019.i, 10                    ; 2 uses
  %.neg.i258 = mul i64 %i.ly, 246
  %i.lz = add i64 %.neg.i258, %.019.i
  %i.ma = trunc i64 %i.lz to i8
  %i.mb = add i8 %i.ma, 48
  %indvars.iv.next.i259 = add nsw i64 %indvars.iv.i257, -1 ; 4 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.next.i259
  store i8 %i.mb, ptr %i.mc, align 1, !tbaa !19
  %i.md = icmp ugt i64 %.019.i, 9
  %i.me = icmp ne i64 %indvars.iv.next.i259, 0
  %i.mf = and i1 %i.md, %i.me
  br i1 %i.mf, label %bb.cc, label %php_sprintf_appenduint.exit, !llvm.loop !76

php_sprintf_appenduint.exit:                      ; preds = %bb.cc
  %i.mg = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.next.i259
  %i.mh = zext nneg i32 %.3141 to i64
  %i.mi = zext nneg i32 %.2160 to i64
  %i.mj = icmp eq i32 %.2160, 0
  %i.mk = icmp eq i8 %.2132, 48
  %or.cond.i260 = and i1 %i.mj, %i.mk
  %spec.store.select.i261 = select i1 %or.cond.i260, i8 32, i8 %.2132
  %i.ml = sub nuw nsw i64 500, %indvars.iv.i257
  call fastcc void @php_sprintf_appendstring(ptr noundef nonnull %i.p, ptr noundef nonnull %i.o, ptr noundef nonnull %i.mg, i64 noundef range(i64 -2147483648, 2147483648) %i.mh, i64 noundef 0, i8 noundef signext %spec.store.select.i261, i64 noundef range(i64 0, 2) %i.mi, i64 noundef %i.ml, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  br label %zend_tmp_string_release.exit

bb.cd:                                            ; preds = %thread-pre-split, %thread-pre-split, %thread-pre-split, %thread-pre-split, %thread-pre-split, %thread-pre-split, %thread-pre-split, %thread-pre-split
  %i.mm = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.mn = load i8, ptr %i.mm, align 8, !tbaa !19
  %i.mo = icmp eq i8 %i.mn, 5
  br i1 %i.mo, label %bb.ce, label %bb.cf, !prof !26

bb.ce:                                            ; preds = %bb.cd
  %i.mp = load double, ptr %i.jy, align 8, !tbaa !19
  br label %zval_get_double.exit

bb.cf:                                            ; preds = %bb.cd
  %i.mq = call double @zval_get_double_func(ptr noundef nonnull %i.jy) #14
  %.pre602 = load i8, ptr %.6364, align 1, !tbaa !19
  br label %zval_get_double.exit

zval_get_double.exit:                             ; preds = %bb.ce, %bb.cf
  %i.mr = phi i8 [ %i.jw, %bb.ce ], [ %.pre602, %bb.cf ] ; 5 uses
  %i.ms = phi double [ %i.mp, %bb.ce ], [ %i.mq, %bb.cf ] ; 5 uses
  %i.mt = zext nneg i32 %.3141 to i64
  %i.mu = zext nneg i32 %.2160 to i64             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  store i64 0, ptr %i.f, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  store i8 0, ptr %i.g, align 1, !tbaa !78
  br i1 %.3149, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %zval_get_double.exit
  %i.mv = icmp sgt i32 %.2135, 53
  br i1 %i.mv, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 8, ptr noundef nonnull @.str.13, i32 noundef %.2135, i32 noundef 53) #14
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %zval_get_double.exit
  %.049.i = phi i32 [ %.2135, %bb.cg ], [ 53, %bb.ch ], [ 6, %zval_get_double.exit ] ; 2 uses
  %i.mw = fcmp uno double %i.ms, 0.000000e+00
  br i1 %i.mw, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  call fastcc void @php_sprintf_appendstring(ptr noundef nonnull %i.p, ptr noundef nonnull %i.o, ptr noundef nonnull @.str.14, i64 noundef 3, i64 noundef 0, i8 noundef signext %.2132, i64 noundef range(i64 0, 2) %i.mu, i64 noundef 3, i1 noundef zeroext false, i32 noundef 0, i32 noundef range(i32 0, 2) %.2129)
  br label %php_sprintf_appenddouble.exit

bb.ck:                                            ; preds = %bb.ci
  %i.mx = call double @llvm.fabs.f64(double %i.ms) #18
  %i.my = fcmp oeq double %i.mx, +inf
  br i1 %i.my, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.mz = fcmp olt double %i.ms, 0.000000e+00     ; 3 uses
  %i.na = select i1 %i.mz, ptr @.str.15, ptr @.str.16
  %i.nb = select i1 %i.mz, i64 4, i64 3           ; 2 uses
  call fastcc void @php_sprintf_appendstring(ptr noundef nonnull %i.p, ptr noundef nonnull %i.o, ptr noundef nonnull %i.na, i64 noundef %i.nb, i64 noundef 0, i8 noundef signext %.2132, i64 noundef range(i64 0, 2) %i.mu, i64 noundef %i.nb, i1 noundef zeroext %i.mz, i32 noundef 0, i32 noundef range(i32 0, 2) %.2129)
  br label %php_sprintf_appenddouble.exit

bb.cm:                                            ; preds = %bb.ck
  switch i8 %i.mr, label %bb.da [
    i8 101, label %bb.cn
    i8 69, label %bb.cn
    i8 102, label %bb.cn
    i8 70, label %bb.cn
    i8 103, label %bb.ct
    i8 71, label %bb.ct
    i8 104, label %bb.ct
    i8 72, label %bb.ct
  ]

bb.cn:                                            ; preds = %bb.cm, %bb.cm, %bb.cm, %bb.cm
  %i.nc = call ptr @localeconv() #14
  %i.nd = icmp eq i8 %i.mr, 102                   ; 2 uses
  %narrow.i = select i1 %i.nd, i8 70, i8 %i.mr
  br i1 %i.nd, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.ne = load ptr, ptr %i.nc, align 8, !tbaa !80
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !19
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.ng = phi i8 [ %i.nf, %bb.co ], [ 46, %bb.cn ]
  %i.nh = call ptr @php_conv_fp(i8 noundef signext %narrow.i, double noundef %i.ms, i1 noundef zeroext false, i32 noundef %.049.i, i8 noundef signext %i.ng, ptr noundef nonnull %i.g, ptr noundef nonnull %i.y, ptr noundef nonnull %i.f) #14
  %i.ni = load i8, ptr %i.g, align 1, !tbaa !78, !range !81, !noundef !82
  %i.nj = trunc nuw i8 %i.ni to i1
  br i1 %i.nj, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  store i8 45, ptr %i.e, align 16, !tbaa !19
  %i.nk = load i64, ptr %i.f, align 8, !tbaa !24
  %i.nl = add i64 %i.nk, 1
  br label %.sink.split.i

bb.cr:                                            ; preds = %bb.cp
  %.not53.i = icmp eq i32 %.2129, 0
  %.pre.i268 = load i64, ptr %i.f, align 8, !tbaa !24 ; 2 uses
  br i1 %.not53.i, label %bb.da, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  store i8 43, ptr %i.e, align 16, !tbaa !19
  %i.nm = add i64 %.pre.i268, 1
  br label %.sink.split.i

bb.ct:                                            ; preds = %bb.cm, %bb.cm, %bb.cm, %bb.cm
  %spec.store.select.i262 = call i32 @llvm.umax.i32(i32 %.049.i, i32 1)
  %i.nn = and i8 %i.mr, -33
  %or.cond.i263 = icmp eq i8 %i.nn, 71
  br i1 %or.cond.i263, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.no = call ptr @localeconv() #14
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !80
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !19
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.0.i264 = phi i8 [ %i.nq, %bb.cu ], [ 46, %bb.ct ]
  %i.nr = icmp samesign ult i8 %i.mr, 73
  %i.ns = select i1 %i.nr, i8 69, i8 101
  %i.nt = call ptr @zend_gcvt(double noundef %i.ms, i32 noundef %spec.store.select.i262, i8 noundef signext %.0.i264, i8 noundef signext %i.ns, ptr noundef nonnull %i.y) #14 ; 2 uses
  store i8 0, ptr %i.g, align 1, !tbaa !78
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !19
  %i.nv = icmp eq i8 %i.nu, 45                    ; 2 uses
  br i1 %i.nv, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  store i8 1, ptr %i.g, align 1, !tbaa !78
  br label %bb.cz

bb.cx:                                            ; preds = %bb.cv
  %.not.i265 = icmp eq i32 %.2129, 0
  br i1 %.not.i265, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  store i8 43, ptr %i.e, align 16, !tbaa !19
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx, %bb.cw
  %.050.i = phi ptr [ %i.y, %bb.cw ], [ %i.e, %bb.cy ], [ %i.nt, %bb.cx ] ; 2 uses
  %i.nw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.050.i) #15
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.cz, %bb.cs, %bb.cq
  %.sink.i266 = phi i64 [ %i.nl, %bb.cq ], [ %i.nm, %bb.cs ], [ %i.nw, %bb.cz ] ; 2 uses
  %.ph.i = phi i1 [ true, %bb.cq ], [ false, %bb.cs ], [ %i.nv, %bb.cz ]
  %.1.ph.i = phi ptr [ %i.e, %bb.cq ], [ %i.e, %bb.cs ], [ %.050.i, %bb.cz ]
  store i64 %.sink.i266, ptr %i.f, align 8, !tbaa !24
  br label %bb.da

bb.da:                                            ; preds = %.sink.split.i, %bb.cr, %bb.cm
  %i.nx = phi i1 [ false, %bb.cm ], [ false, %bb.cr ], [ %.ph.i, %.sink.split.i ]
  %i.ny = phi i64 [ 0, %bb.cm ], [ %.pre.i268, %bb.cr ], [ %.sink.i266, %.sink.split.i ]
  %.1.i267 = phi ptr [ null, %bb.cm ], [ %i.nh, %bb.cr ], [ %.1.ph.i, %.sink.split.i ]
  call fastcc void @php_sprintf_appendstring(ptr noundef nonnull %i.p, ptr noundef nonnull %i.o, ptr noundef %.1.i267, i64 noundef range(i64 -2147483648, 2147483648) %i.mt, i64 noundef 0, i8 noundef signext %.2132, i64 noundef range(i64 0, 2) %i.mu, i64 noundef %i.ny, i1 noundef zeroext %i.nx, i32 noundef 0, i32 noundef range(i32 0, 2) %.2129)
  br label %php_sprintf_appenddouble.exit

php_sprintf_appenddouble.exit:                    ; preds = %bb.cj, %bb.cl, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  br label %zend_tmp_string_release.exit

bb.db:                                            ; preds = %thread-pre-split
  %i.nz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.oa = load i8, ptr %i.nz, align 8, !tbaa !19
  %i.ob = icmp eq i8 %i.oa, 4
  br i1 %i.ob, label %bb.dc, label %bb.dd, !prof !26

bb.dc:                                            ; preds = %bb.db
  %i.oc = load i64, ptr %i.jy, align 8, !tbaa !19
  br label %zval_get_long.exit197

bb.dd:                                            ; preds = %bb.db
  %i.od = call i64 @zval_get_long_func(ptr noundef nonnull %i.jy, i1 noundef zeroext false) #14
  br label %zval_get_long.exit197

zval_get_long.exit197:                            ; preds = %bb.dc, %bb.dd
  %i.oe = phi i64 [ %i.oc, %bb.dc ], [ %i.od, %bb.dd ]
  %i.of = trunc i64 %i.oe to i8
  %i.og = load i64, ptr %i.o, align 8, !tbaa !24  ; 2 uses
  %i.oh = add i64 %i.og, 1                        ; 2 uses
  %i.oi = load ptr, ptr %i.p, align 8, !tbaa !33  ; 8 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 16 ; 2 uses
  %i.ok = load i64, ptr %i.oj, align 8, !tbaa !29 ; 3 uses
  %.not.i269 = icmp ult i64 %i.oh, %i.ok
  br i1 %.not.i269, label %php_sprintf_appendchar.exit278, label %bb.de

bb.de:                                            ; preds = %zval_get_long.exit197
  %i.ol = shl nuw i64 %i.ok, 1                    ; 4 uses
  %i.om = icmp sgt i64 %i.ok, -1
  call void @llvm.assume(i1 %i.om)
  %i.on = getelementptr inbounds nuw i8, ptr %i.oi, i64 4 ; 2 uses
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !19
  %i.op = and i32 %i.oo, 64
  %.not.i.i270 = icmp eq i32 %i.op, 0
  br i1 %.not.i.i270, label %bb.df, label %zend_string_alloc.exit.i.i271

bb.df:                                            ; preds = %bb.de
end_hunk_0
