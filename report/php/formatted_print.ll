Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/formatted_print?download=true
inline.NumInlined: 21
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@php_formatted_print:bb.a
  %.pre601 = load i8, ptr %.phi.trans.insert600, align 8, !tbaa !19
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.iz = phi i8 [ %.pre601, %bb.az ], [ %i.iv, %bb.ay ]
  %.1121 = phi ptr [ %i.iy, %bb.az ], [ %i.it, %bb.ay ]
  %.not183 = icmp eq i8 %i.iz, 4
  br i1 %.not183, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void (ptr, ...) @zend_value_error(ptr noundef nonnull @.str.4) #14
  br label %.thread424

bb.bc:                                            ; preds = %bb.ba
  %i.ja = load i64, ptr %.1121, align 8, !tbaa !19 ; 2 uses
  %i.jb = add i64 %i.ja, -2147483648
  %or.cond192 = icmp ult i64 %i.jb, -2147483649
  br i1 %or.cond192, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call void (ptr, ...) @zend_value_error(ptr noundef nonnull @.str.5, i32 noundef 2147483647) #14
  br label %.thread424

bb.be:                                            ; preds = %bb.bc
  %i.jc = trunc nsw i64 %i.ja to i32
  br label %bb.bi

bb.bf:                                            ; preds = %bb.as
  %i.jd = load ptr, ptr %i.ey, align 8, !tbaa !18
  %i.je = zext i8 %i.hv to i64
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr %i.jd, i64 %i.je
  %i.jg = load i16, ptr %i.jf, align 2, !tbaa !21
  %i.jh = and i16 %i.jg, 2048
  %.not181 = icmp eq i16 %i.jh, 0
  br i1 %.not181, label %bb.bi, label %php_sprintf_getnumber.exit251

php_sprintf_getnumber.exit251:                    ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  %i.ji = call i64 @__isoc23_strtoll(ptr noundef nonnull %i.ht, ptr noundef nonnull %i.j, i32 noundef 10) #14 ; 2 uses
  %i.jj = load ptr, ptr %i.j, align 8, !tbaa !16  ; 3 uses
  %or.cond.i249 = icmp ugt i64 %i.ji, 2147483646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  br i1 %or.cond.i249, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %php_sprintf_getnumber.exit251
  call void (ptr, ...) @zend_value_error(ptr noundef nonnull @.str.6, i32 noundef 2147483647) #14
  br label %.thread424

bb.bh:                                            ; preds = %php_sprintf_getnumber.exit251
  %i.jk = trunc nuw nsw i64 %i.ji to i32
  %.not.i247 = icmp eq ptr %i.jj, null            ; 2 uses
  %i.jl = ptrtoint ptr %i.ht to i64
  %i.jm = ptrtoint ptr %i.jj to i64
  %.neg.i248 = sub i64 %i.jl, %i.jm
  %i.jn = select i1 %.not.i247, i64 0, i64 %.neg.i248
  %.16 = add i64 %i.jn, %i.hu
  %.16374 = select i1 %.not.i247, ptr %i.ht, ptr %i.jj
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bf, %bb.be, %bb.ar, %bb.t, %bb.bh
  %.5363 = phi ptr [ %.15373409, %bb.be ], [ %i.di, %bb.t ], [ %.16374, %bb.bh ], [ %.4362, %bb.ar ], [ %i.ht, %bb.bf ] ; 2 uses
  %.5353 = phi i64 [ %.15411, %bb.be ], [ %i.dj, %bb.t ], [ %.16, %bb.bh ], [ %.4352, %bb.ar ], [ %i.hu, %bb.bf ]
  %.2160 = phi i32 [ %.0158, %bb.be ], [ 1, %bb.t ], [ %.0158, %bb.bh ], [ %.0158, %bb.ar ], [ %.0158, %bb.bf ] ; 10 uses
  %.6156 = phi i32 [ %.4154, %bb.be ], [ %.0150528, %bb.t ], [ %.3153, %bb.bh ], [ %.3153, %bb.ar ], [ %.3153, %bb.bf ] ; 2 uses
  %.3149 = phi i1 [ false, %bb.be ], [ true, %bb.t ], [ false, %bb.bh ], [ true, %bb.ar ], [ false, %bb.bf ]
  %.0144 = phi i32 [ %.1.i, %bb.be ], [ -1, %bb.t ], [ %.1.i, %bb.bh ], [ %.1.i, %bb.ar ], [ %.1.i, %bb.bf ] ; 2 uses
  %.3141 = phi i32 [ %.2140, %bb.be ], [ 0, %bb.t ], [ %.2140, %bb.bh ], [ %.2140, %bb.ar ], [ %.2140, %bb.bf ] ; 8 uses
  %.2135 = phi i32 [ %i.jc, %bb.be ], [ 0, %bb.t ], [ %i.jk, %bb.bh ], [ 0, %bb.ar ], [ 0, %bb.bf ] ; 5 uses
  %.2132 = phi i8 [ %.0130, %bb.be ], [ 32, %bb.t ], [ %.0130, %bb.bh ], [ %.0130, %bb.ar ], [ %.0130, %bb.bf ] ; 12 uses
  %.2129 = phi i32 [ %.0127, %bb.be ], [ 0, %bb.t ], [ %.0127, %bb.bh ], [ %.0127, %bb.ar ], [ %.0127, %bb.bf ] ; 7 uses
  %i.jo = phi i1 [ true, %bb.be ], [ false, %bb.t ], [ true, %bb.bh ], [ false, %bb.ar ], [ false, %bb.bf ]
  %.1123 = phi i32 [ 1, %bb.be ], [ 0, %bb.t ], [ 1, %bb.bh ], [ 0, %bb.ar ], [ 0, %bb.bf ] ; 5 uses
  %i.jp = load i8, ptr %.5363, align 1, !tbaa !19
  %i.jq = icmp eq i8 %i.jp, 108                   ; 2 uses
  %.6364.idx = zext i1 %i.jq to i64
  %.6364 = getelementptr inbounds nuw i8, ptr %.5363, i64 %.6364.idx ; 16 uses
  %i.jr = sext i1 %i.jq to i64
  %.6354 = add i64 %.5353, %i.jr                  ; 15 uses
  %i.js = icmp eq i32 %.0144, -1                  ; 2 uses
  %i.jt = zext i1 %i.js to i32
  %spec.select = add nsw i32 %.6156, %i.jt        ; 14 uses
  %spec.select193 = select i1 %i.js, i32 %.6156, i32 %.0144 ; 3 uses
  %.not184 = icmp slt i32 %spec.select193, %3
  br i1 %.not184, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ju = call i32 @llvm.smax.i32(i32 %.0124529, i32 %spec.select193)
  br label %.thread, !llvm.loop !74

bb.bk:                                            ; preds = %bb.bi
  %i.jv = icmp eq i32 %.2135, -1
  %or.cond = select i1 %i.jo, i1 %i.jv, i1 false
  %i.jw = load i8, ptr %.6364, align 1, !tbaa !19 ; 4 uses
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
  %5 = icmp ugt i64 %.129.i, 9
  %i.lc = icmp samesign ugt i64 %indvars.iv.i, 2
  %6 = and i1 %i.lc, %5
  br i1 %6, label %bb.bw, label %bb.bx, !llvm.loop !75

bb.bx:                                            ; preds = %bb.bw
  %i.ld = zext nneg i32 %.3141 to i64
  %i.le = zext nneg i32 %.2160 to i64
  %i.lf = icmp slt i64 %i.kw, 0                   ; 2 uses
  %i.lg = trunc nuw nsw i64 %indvars.iv.i to i32
  br i1 %i.lf, label %._crit_edge.sink.split.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.lh = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %.not.i253 = icmp eq i32 %.2129, 0
  br i1 %.not.i253, label %php_sprintf_appendint.exit, label %._crit_edge.sink.split.i

._crit_edge.sink.split.i:                         ; preds = %bb.by, %bb.bx
  %.sink.i = phi i8 [ 45, %bb.bx ], [ 43, %bb.by ]
  %i.li = add nsw i32 %i.lg, -2                   ; 2 uses
  %i.lj = zext i32 %i.li to i64                   ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.lj
  store i8 %.sink.i, ptr %i.lk, align 1, !tbaa !19
  br label %php_sprintf_appendint.exit

php_sprintf_appendint.exit:                       ; preds = %bb.by, %._crit_edge.sink.split.i
  %.pre-phi.i254 = phi i64 [ %indvars.iv.next.i, %bb.by ], [ %i.lj, %._crit_edge.sink.split.i ]
  %.1.i255 = phi i32 [ %i.lh, %bb.by ], [ %i.li, %._crit_edge.sink.split.i ]
  %i.ll = icmp eq i32 %.2160, 0
  %i.lm = icmp eq i8 %.2132, 48
  %or.cond.i256 = and i1 %i.ll, %i.lm
  %spec.store.select.i = select i1 %or.cond.i256, i8 32, i8 %.2132
  %i.ln = getelementptr inbounds nuw i8, ptr %i.i, i64 %.pre-phi.i254
  %i.lo = sub i32 499, %.1.i255
  %i.lp = zext i32 %i.lo to i64
  call fastcc void @php_sprintf_appendstring(ptr noundef nonnull %i.p, ptr noundef nonnull %i.o, ptr noundef nonnull %i.ln, i64 noundef range(i64 -2147483648, 2147483648) %i.ld, i64 noundef 0, i8 noundef signext %spec.store.select.i, i64 noundef range(i64 0, 2) %i.le, i64 noundef %i.lp, i1 noundef zeroext %i.lf, i32 noundef 0, i32 noundef range(i32 0, 2) %.2129)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  br label %zend_tmp_string_release.exit

bb.bz:                                            ; preds = %thread-pre-split
  %i.lq = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.lr = load i8, ptr %i.lq, align 8, !tbaa !19
  %i.ls = icmp eq i8 %i.lr, 4
  br i1 %i.ls, label %bb.ca, label %bb.cb, !prof !26

bb.ca:                                            ; preds = %bb.bz
  %i.lt = load i64, ptr %i.jy, align 8, !tbaa !19
  br label %zval_get_long.exit198

bb.cb:                                            ; preds = %bb.bz
  %i.lu = call i64 @zval_get_long_func(ptr noundef nonnull %i.jy, i1 noundef zeroext false) #14
  br label %zval_get_long.exit198

zval_get_long.exit198:                            ; preds = %bb.ca, %bb.cb
  %i.lv = phi i64 [ %i.lt, %bb.ca ], [ %i.lu, %bb.cb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  store i8 0, ptr %i.z, align 1, !tbaa !19
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cc, %zval_get_long.exit198
  %indvars.iv.i257 = phi i64 [ %indvars.iv.next.i259, %bb.cc ], [ 499, %zval_get_long.exit198 ] ; 2 uses
  %.019.i = phi i64 [ %i.lw, %bb.cc ], [ %i.lv, %zval_get_long.exit198 ] ; 3 uses
  %i.lw = udiv i64 %.019.i, 10                    ; 2 uses
  %.neg.i258 = mul i64 %i.lw, 246
  %i.lx = add i64 %.neg.i258, %.019.i
  %i.ly = trunc i64 %i.lx to i8
  %i.lz = add i8 %i.ly, 48
  %indvars.iv.next.i259 = add nsw i64 %indvars.iv.i257, -1 ; 4 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.next.i259
  store i8 %i.lz, ptr %i.ma, align 1, !tbaa !19
  %i.mb = icmp ugt i64 %.019.i, 9
  %7 = icmp ne i64 %indvars.iv.next.i259, 0
  %8 = and i1 %i.mb, %7
  br i1 %8, label %bb.cc, label %php_sprintf_appenduint.exit, !llvm.loop !76

php_sprintf_appenduint.exit:                      ; preds = %bb.cc
  %i.mc = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.next.i259
  %i.md = zext nneg i32 %.3141 to i64
  %i.me = zext nneg i32 %.2160 to i64
  %i.mf = icmp eq i32 %.2160, 0
  %i.mg = icmp eq i8 %.2132, 48
  %or.cond.i260 = and i1 %i.mf, %i.mg
  %spec.store.select.i261 = select i1 %or.cond.i260, i8 32, i8 %.2132
  %i.mh = sub nsw i64 500, %indvars.iv.i257
  %i.mi = and i64 %i.mh, 4294967295
  call fastcc void @php_sprintf_appendstring(ptr noundef nonnull %i.p, ptr noundef nonnull %i.o, ptr noundef nonnull %i.mc, i64 noundef range(i64 -2147483648, 2147483648) %i.md, i64 noundef 0, i8 noundef signext %spec.store.select.i261, i64 noundef range(i64 0, 2) %i.me, i64 noundef %i.mi, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  br label %zend_tmp_string_release.exit

bb.cd:                                            ; preds = %thread-pre-split, %thread-pre-split, %thread-pre-split, %thread-pre-split, %thread-pre-split, %thread-pre-split, %thread-pre-split, %thread-pre-split
  %i.mj = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.mk = load i8, ptr %i.mj, align 8, !tbaa !19
  %i.ml = icmp eq i8 %i.mk, 5
  br i1 %i.ml, label %bb.ce, label %bb.cf, !prof !26

bb.ce:                                            ; preds = %bb.cd
  %i.mm = load double, ptr %i.jy, align 8, !tbaa !19
  br label %zval_get_double.exit

bb.cf:                                            ; preds = %bb.cd
  %i.mn = call double @zval_get_double_func(ptr noundef nonnull %i.jy) #14
  %.pre602 = load i8, ptr %.6364, align 1, !tbaa !19
  br label %zval_get_double.exit

zval_get_double.exit:                             ; preds = %bb.ce, %bb.cf
  %i.mo = phi i8 [ %i.jw, %bb.ce ], [ %.pre602, %bb.cf ] ; 5 uses
  %i.mp = phi double [ %i.mm, %bb.ce ], [ %i.mn, %bb.cf ] ; 5 uses
  %i.mq = zext nneg i32 %.3141 to i64
  %i.mr = zext nneg i32 %.2160 to i64             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  store i64 0, ptr %i.f, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  store i8 0, ptr %i.g, align 1, !tbaa !78
  br i1 %.3149, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %zval_get_double.exit
  %i.ms = icmp sgt i32 %.2135, 53
  br i1 %i.ms, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 8, ptr noundef nonnull @.str.13, i32 noundef %.2135, i32 noundef 53) #14
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %zval_get_double.exit
  %.049.i = phi i32 [ %.2135, %bb.cg ], [ 53, %bb.ch ], [ 6, %zval_get_double.exit ] ; 2 uses
  %i.mt = fcmp uno double %i.mp, 0.000000e+00
  br i1 %i.mt, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  call fastcc void @php_sprintf_appendstring(ptr noundef nonnull %i.p, ptr noundef nonnull %i.o, ptr noundef nonnull @.str.14, i64 noundef 3, i64 noundef 0, i8 noundef signext %.2132, i64 noundef range(i64 0, 2) %i.mr, i64 noundef 3, i1 noundef zeroext false, i32 noundef 0, i32 noundef range(i32 0, 2) %.2129)
  br label %php_sprintf_appenddouble.exit

bb.ck:                                            ; preds = %bb.ci
  %i.mu = call double @llvm.fabs.f64(double %i.mp) #18
  %i.mv = fcmp oeq double %i.mu, +inf
  br i1 %i.mv, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.mw = fcmp olt double %i.mp, 0.000000e+00     ; 3 uses
  %i.mx = select i1 %i.mw, ptr @.str.15, ptr @.str.16
  %i.my = select i1 %i.mw, i64 4, i64 3           ; 2 uses
  call fastcc void @php_sprintf_appendstring(ptr noundef nonnull %i.p, ptr noundef nonnull %i.o, ptr noundef nonnull %i.mx, i64 noundef %i.my, i64 noundef 0, i8 noundef signext %.2132, i64 noundef range(i64 0, 2) %i.mr, i64 noundef %i.my, i1 noundef zeroext %i.mw, i32 noundef 0, i32 noundef range(i32 0, 2) %.2129)
  br label %php_sprintf_appenddouble.exit

bb.cm:                                            ; preds = %bb.ck
  switch i8 %i.mo, label %bb.da [
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
  %i.mz = call ptr @localeconv() #14
  %i.na = icmp eq i8 %i.mo, 102                   ; 2 uses
  %narrow.i = select i1 %i.na, i8 70, i8 %i.mo
  br i1 %i.na, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.nb = load ptr, ptr %i.mz, align 8, !tbaa !80
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !19
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.nd = phi i8 [ %i.nc, %bb.co ], [ 46, %bb.cn ]
  %i.ne = call ptr @php_conv_fp(i8 noundef signext %narrow.i, double noundef %i.mp, i1 noundef zeroext false, i32 noundef %.049.i, i8 noundef signext %i.nd, ptr noundef nonnull %i.g, ptr noundef nonnull %i.y, ptr noundef nonnull %i.f) #14
  %i.nf = load i8, ptr %i.g, align 1, !tbaa !78, !range !81, !noundef !82
  %i.ng = trunc nuw i8 %i.nf to i1
  br i1 %i.ng, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  store i8 45, ptr %i.e, align 16, !tbaa !19
  %i.nh = load i64, ptr %i.f, align 8, !tbaa !24
  %i.ni = add i64 %i.nh, 1
  br label %.sink.split.i

bb.cr:                                            ; preds = %bb.cp
  %.not53.i = icmp eq i32 %.2129, 0
  %.pre.i268 = load i64, ptr %i.f, align 8, !tbaa !24 ; 2 uses
  br i1 %.not53.i, label %bb.da, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  store i8 43, ptr %i.e, align 16, !tbaa !19
  %i.nj = add i64 %.pre.i268, 1
  br label %.sink.split.i

bb.ct:                                            ; preds = %bb.cm, %bb.cm, %bb.cm, %bb.cm
  %spec.store.select.i262 = call i32 @llvm.umax.i32(i32 %.049.i, i32 1)
  %i.nk = and i8 %i.mo, -33
  %or.cond.i263 = icmp eq i8 %i.nk, 71
  br i1 %or.cond.i263, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.nl = call ptr @localeconv() #14
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !80
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !19
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.0.i264 = phi i8 [ %i.nn, %bb.cu ], [ 46, %bb.ct ]
  %i.no = icmp samesign ult i8 %i.mo, 73
  %i.np = select i1 %i.no, i8 69, i8 101
  %i.nq = call ptr @zend_gcvt(double noundef %i.mp, i32 noundef %spec.store.select.i262, i8 noundef signext %.0.i264, i8 noundef signext %i.np, ptr noundef nonnull %i.y) #14 ; 2 uses
  store i8 0, ptr %i.g, align 1, !tbaa !78
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !19
  %i.ns = icmp eq i8 %i.nr, 45                    ; 2 uses
  br i1 %i.ns, label %bb.cw, label %bb.cx

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
  %.050.i = phi ptr [ %i.y, %bb.cw ], [ %i.e, %bb.cy ], [ %i.nq, %bb.cx ] ; 2 uses
  %i.nt = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.050.i) #15
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.cz, %bb.cs, %bb.cq
  %.sink.i266 = phi i64 [ %i.ni, %bb.cq ], [ %i.nj, %bb.cs ], [ %i.nt, %bb.cz ] ; 2 uses
  %.ph.i = phi i1 [ true, %bb.cq ], [ false, %bb.cs ], [ %i.ns, %bb.cz ]
  %.1.ph.i = phi ptr [ %i.e, %bb.cq ], [ %i.e, %bb.cs ], [ %.050.i, %bb.cz ]
  store i64 %.sink.i266, ptr %i.f, align 8, !tbaa !24
  br label %bb.da

bb.da:                                            ; preds = %.sink.split.i, %bb.cr, %bb.cm
  %i.nu = phi i1 [ false, %bb.cm ], [ false, %bb.cr ], [ %.ph.i, %.sink.split.i ]
  %i.nv = phi i64 [ 0, %bb.cm ], [ %.pre.i268, %bb.cr ], [ %.sink.i266, %.sink.split.i ]
  %.1.i267 = phi ptr [ null, %bb.cm ], [ %i.ne, %bb.cr ], [ %.1.ph.i, %.sink.split.i ]
  call fastcc void @php_sprintf_appendstring(ptr noundef nonnull %i.p, ptr noundef nonnull %i.o, ptr noundef %.1.i267, i64 noundef range(i64 -2147483648, 2147483648) %i.mq, i64 noundef 0, i8 noundef signext %.2132, i64 noundef range(i64 0, 2) %i.mr, i64 noundef %i.nv, i1 noundef zeroext %i.nu, i32 noundef 0, i32 noundef range(i32 0, 2) %.2129)
  br label %php_sprintf_appenddouble.exit

php_sprintf_appenddouble.exit:                    ; preds = %bb.cj, %bb.cl, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  br label %zend_tmp_string_release.exit

bb.db:                                            ; preds = %thread-pre-split
  %i.nw = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.nx = load i8, ptr %i.nw, align 8, !tbaa !19
  %i.ny = icmp eq i8 %i.nx, 4
  br i1 %i.ny, label %bb.dc, label %bb.dd, !prof !26

bb.dc:                                            ; preds = %bb.db
  %i.nz = load i64, ptr %i.jy, align 8, !tbaa !19
  br label %zval_get_long.exit197

bb.dd:                                            ; preds = %bb.db
  %i.oa = call i64 @zval_get_long_func(ptr noundef nonnull %i.jy, i1 noundef zeroext false) #14
  br label %zval_get_long.exit197

zval_get_long.exit197:                            ; preds = %bb.dc, %bb.dd
  %i.ob = phi i64 [ %i.nz, %bb.dc ], [ %i.oa, %bb.dd ]
  %i.oc = trunc i64 %i.ob to i8
  %i.od = load i64, ptr %i.o, align 8, !tbaa !24  ; 2 uses
  %i.oe = add i64 %i.od, 1                        ; 2 uses
  %i.of = load ptr, ptr %i.p, align 8, !tbaa !33  ; 8 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 16 ; 2 uses
  %i.oh = load i64, ptr %i.og, align 8, !tbaa !29 ; 3 uses
  %.not.i269 = icmp ult i64 %i.oe, %i.oh
  br i1 %.not.i269, label %php_sprintf_appendchar.exit278, label %bb.de
end_hunk_0
