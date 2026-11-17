Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/string?download=true
inline.NumInlined: 35
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 28
begin_hunk_0_@zif_ltrim:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  store ptr %.0102.i.i, ptr %1, align 8, !tbaa !32
  %i.cr = getelementptr inbounds nuw i8, ptr %.0102.i.i, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !32
  %i.ct = and i32 %i.cs, 64
  %.not58.i = icmp eq i32 %i.ct, 0
  %i.cu = select i1 %.not58.i, i32 262, i32 6
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.cu, ptr %i.cv, align 8, !tbaa !32
  br label %php_do_trim.exit

php_do_trim.exit:                                 ; preds = %.thread18, %php_trim_int.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zif_wordwrap(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = alloca i64, align 8                      ; 10 uses
  %i.d = alloca i8, align 1                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i64 75, ptr %i.c, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i8 0, ptr %i.d, align 1, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !32   ; 4 uses
  %i.g = add i32 %i.f, -5
  %or.cond243 = icmp ult i32 %i.g, -4
  br i1 %or.cond243, label %bb.b, label %bb.c, !prof !47

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 4) #26
  br label %.thread298

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = load i8, ptr %i.i, align 8, !tbaa !32
  %i.k = icmp eq i8 %i.j, 6
  br i1 %i.k, label %zend_parse_arg_str_ex.exit.thread, label %zend_parse_arg_str_ex.exit, !prof !34

zend_parse_arg_str_ex.exit.thread:                ; preds = %bb.c
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !32
  store ptr %i.l, ptr %i.b, align 8, !tbaa !36
  br label %bb.d

zend_parse_arg_str_ex.exit:                       ; preds = %bb.c
  %i.m = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.h, ptr noundef nonnull %i.b, i32 noundef 1) #26
  br i1 %i.m, label %bb.d, label %.thread298, !prof !37

bb.d:                                             ; preds = %zend_parse_arg_str_ex.exit.thread, %zend_parse_arg_str_ex.exit
  %i.n = icmp eq i32 %i.f, 1
  br i1 %i.n, label %.critedge, label %bb.e, !prof !45

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = load i8, ptr %i.p, align 8, !tbaa !32
  %i.r = icmp eq i8 %i.q, 4
  br i1 %i.r, label %zend_parse_arg_long_ex.exit.thread, label %zend_parse_arg_long_ex.exit, !prof !34

zend_parse_arg_long_ex.exit.thread:               ; preds = %bb.e
  %i.s = load i64, ptr %i.o, align 8, !tbaa !32
  store i64 %i.s, ptr %i.c, align 8, !tbaa !46
  br label %bb.f

zend_parse_arg_long_ex.exit:                      ; preds = %bb.e
  %i.t = call zeroext i1 @zend_parse_arg_long_slow(ptr noundef nonnull %i.o, ptr noundef nonnull %i.c, i32 noundef 2) #26
  br i1 %i.t, label %bb.f, label %.thread298, !prof !37

bb.f:                                             ; preds = %zend_parse_arg_long_ex.exit.thread, %zend_parse_arg_long_ex.exit
  %i.u = icmp samesign ult i32 %i.f, 3
  br i1 %i.u, label %.critedge, label %bb.g, !prof !45

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.x = load i8, ptr %i.w, align 8, !tbaa !32
  %i.y = icmp eq i8 %i.x, 6
  br i1 %i.y, label %zend_parse_arg_str_ex.exit.i.thread, label %zend_parse_arg_str_ex.exit.i, !prof !34

zend_parse_arg_str_ex.exit.i:                     ; preds = %bb.g
  %i.z = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.v, ptr noundef nonnull %i.a, i32 noundef range(i32 1, 0) 3) #26
  br i1 %i.z, label %zend_parse_arg_str_ex.exit.i.thread, label %zend_parse_arg_string.exit, !prof !56

zend_parse_arg_string.exit:                       ; preds = %zend_parse_arg_str_ex.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %.thread298

zend_parse_arg_str_ex.exit.i.thread:              ; preds = %zend_parse_arg_str_ex.exit.i, %bb.g
  %.in = phi ptr [ %i.v, %bb.g ], [ %i.a, %zend_parse_arg_str_ex.exit.i ]
  %i.aa = load ptr, ptr %.in, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !41 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not = icmp eq i32 %i.f, 4
  br i1 %.not, label %bb.h, label %.critedge, !prof !34

bb.h:                                             ; preds = %zend_parse_arg_str_ex.exit.i.thread
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !32
  switch i8 %i.af, label %zend_parse_arg_bool_ex.exit [
    i8 3, label %.split310.thread
    i8 2, label %.split310.thread.fold.split
  ], !prof !57

.split310.thread.fold.split:                      ; preds = %bb.h
  br label %.split310.thread

.split310.thread:                                 ; preds = %bb.h, %.split310.thread.fold.split
  %storemerge.i = phi i8 [ 1, %bb.h ], [ 0, %.split310.thread.fold.split ]
  store i8 %storemerge.i, ptr %i.d, align 1, !tbaa !50
  br label %.critedge

zend_parse_arg_bool_ex.exit:                      ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ah = call zeroext i1 @zend_parse_arg_bool_slow(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.d, i32 noundef 4) #26
  %cond.fr288 = freeze i1 %i.ah
  br i1 %cond.fr288, label %.critedge, label %.thread298, !prof !37

.thread298:                                       ; preds = %zend_parse_arg_bool_ex.exit, %zend_parse_arg_long_ex.exit, %zend_parse_arg_str_ex.exit, %zend_parse_arg_string.exit, %bb.b
  %.0219309 = phi i32 [ 1, %bb.b ], [ 9, %zend_parse_arg_string.exit ], [ 9, %zend_parse_arg_long_ex.exit ], [ 9, %zend_parse_arg_str_ex.exit ], [ 9, %zend_parse_arg_bool_ex.exit ]
  %.0220308 = phi i32 [ 0, %bb.b ], [ 4, %zend_parse_arg_string.exit ], [ 0, %zend_parse_arg_long_ex.exit ], [ 4, %zend_parse_arg_str_ex.exit ], [ 2, %zend_parse_arg_bool_ex.exit ]
  %.0221307 = phi ptr [ null, %bb.b ], [ %i.v, %zend_parse_arg_string.exit ], [ %i.o, %zend_parse_arg_long_ex.exit ], [ %i.h, %zend_parse_arg_str_ex.exit ], [ %i.ag, %zend_parse_arg_bool_ex.exit ]
  %.0222306 = phi i32 [ 0, %bb.b ], [ 3, %zend_parse_arg_string.exit ], [ 2, %zend_parse_arg_long_ex.exit ], [ 1, %zend_parse_arg_str_ex.exit ], [ 4, %zend_parse_arg_bool_ex.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.0219309, i32 noundef %.0222306, ptr noundef null, i32 noundef %.0220308, ptr noundef %.0221307) #26
  br label %bb.av

.critedge:                                        ; preds = %zend_parse_arg_bool_ex.exit, %.split310.thread, %bb.d, %bb.f, %zend_parse_arg_str_ex.exit.i.thread
  %.1276 = phi ptr [ %i.ab, %.split310.thread ], [ @.str.3, %bb.d ], [ @.str.3, %bb.f ], [ %i.ab, %zend_parse_arg_str_ex.exit.i.thread ], [ %i.ab, %zend_parse_arg_bool_ex.exit ] ; 6 uses
  %.1 = phi i64 [ %i.ad, %.split310.thread ], [ 1, %bb.d ], [ 1, %bb.f ], [ %i.ad, %zend_parse_arg_str_ex.exit.i.thread ], [ %i.ad, %zend_parse_arg_bool_ex.exit ] ; 16 uses
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !36  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !41 ; 11 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.critedge
  %i.am = load ptr, ptr @zend_empty_string, align 8, !tbaa !36
  store ptr %i.am, ptr %1, align 8, !tbaa !32
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 6, ptr %i.an, align 8, !tbaa !32
  br label %bb.av

bb.j:                                             ; preds = %.critedge
  %i.ao = icmp eq i64 %.1, 0
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @zend_argument_must_not_be_empty_error(i32 noundef 3) #26
  br label %bb.av

bb.l:                                             ; preds = %bb.j
  %i.ap = load i64, ptr %i.c, align 8, !tbaa !46  ; 3 uses
  %i.aq = icmp eq i64 %i.ap, 0
  %i.ar = load i8, ptr %i.d, align 1, !range !52
  %i.as = trunc nuw i8 %i.ar to i1                ; 2 uses
  %or.cond = select i1 %i.aq, i1 %i.as, i1 false
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void (i32, ptr, ...) @zend_argument_value_error(i32 noundef 4, ptr noundef nonnull @.str.4) #26
  br label %bb.av

bb.n:                                             ; preds = %bb.l
  %i.at = icmp ne i64 %.1, 1
  %or.cond3 = select i1 %i.at, i1 true, i1 %i.as
  br i1 %or.cond3, label %bb.w, label %zend_string_alloc.exit256

zend_string_alloc.exit256:                        ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.av = and i64 %i.ak, -8
  %i.aw = add i64 %i.av, 32
  %i.ax = call noalias ptr @_emalloc(i64 noundef %i.aw) #27 ; 6 uses
  store i32 1, ptr %i.ax, align 4, !tbaa !42
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store i32 22, ptr %i.ay, align 4, !tbaa !32
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 0, ptr %i.az, align 8, !tbaa !43
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 %i.ak, ptr %i.ba, align 8, !tbaa !41
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 24 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr nonnull align 8 %i.au, i64 %i.ak, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ak
  store i8 0, ptr %i.bc, align 1, !tbaa !32
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !36  ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !41 ; 2 uses
  %i.bg = icmp sgt i64 %i.bf, 0
  br i1 %i.bg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %zend_string_alloc.exit256
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %2 = load i64, ptr %i.c, align 8
  %.pre331 = load i8, ptr %.1276, align 1, !tbaa !32 ; 3 uses
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.v
  %.0206314 = phi i64 [ 0, %.lr.ph ], [ %i.bs, %bb.v ] ; 8 uses
  %.0209313 = phi i64 [ 0, %.lr.ph ], [ %.2211, %bb.v ] ; 4 uses
  %.0214312 = phi i64 [ 0, %.lr.ph ], [ %.1215, %bb.v ] ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.0206314
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !32  ; 2 uses
  %i.bk = icmp eq i8 %i.bj, %.pre331
  br i1 %i.bk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bl = add nuw nsw i64 %.0206314, 1            ; 2 uses
  br label %bb.v

bb.q:                                             ; preds = %bb.o
  %i.bm = icmp eq i8 %i.bj, 32
  %i.bn = sub nsw i64 %.0206314, %.0209313
  %.not237 = icmp slt i64 %i.bn, %2               ; 2 uses
  br i1 %i.bm, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  br i1 %.not237, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.0206314
  store i8 %.pre331, ptr %i.bo, align 1, !tbaa !32
  %i.bp = add nuw nsw i64 %.0206314, 1
  br label %bb.v

bb.t:                                             ; preds = %bb.q
  %.not236 = icmp eq i64 %.0209313, %.0214312
  %or.cond246 = select i1 %.not237, i1 true, i1 %.not236
  br i1 %or.cond246, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = getelementptr inbounds i8, ptr %i.bb, i64 %.0214312
  store i8 %.pre331, ptr %i.bq, align 1, !tbaa !32
  %i.br = add nsw i64 %.0214312, 1
  br label %bb.v

bb.v:                                             ; preds = %bb.r, %bb.s, %bb.p, %bb.t, %bb.u
  %.1215 = phi i64 [ %i.bl, %bb.p ], [ %.0214312, %bb.t ], [ %.0214312, %bb.u ], [ %.0206314, %bb.r ], [ %.0206314, %bb.s ]
  %.2211 = phi i64 [ %i.bl, %bb.p ], [ %.0209313, %bb.t ], [ %i.br, %bb.u ], [ %.0209313, %bb.r ], [ %i.bp, %bb.s ]
  %i.bs = add nuw nsw i64 %.0206314, 1            ; 2 uses
  %3 = icmp slt i64 %i.bs, %i.bf
  br i1 %3, label %bb.o, label %._crit_edge, !llvm.loop !130

._crit_edge:                                      ; preds = %bb.v, %zend_string_alloc.exit256
  store ptr %i.ax, ptr %1, align 8, !tbaa !32
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 262, ptr %i.bt, align 8, !tbaa !32
  br label %bb.av

bb.w:                                             ; preds = %bb.n
  %i.bu = icmp sgt i64 %i.ap, 0
  br i1 %i.bu, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bv = udiv i64 %i.ak, %i.ap
  %i.bw = add i64 %i.bv, 1                        ; 3 uses
  %i.bx = and i64 %i.ak, -8
  %i.by = add i64 %i.bx, 32
  %i.bz = call noalias ptr @_safe_emalloc(i64 noundef %i.bw, i64 noundef %.1, i64 noundef %i.by) #26 ; 5 uses
  store i32 1, ptr %i.bz, align 4, !tbaa !42
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  store i32 22, ptr %i.ca, align 4, !tbaa !32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i64 0, ptr %i.cb, align 8, !tbaa !43
  %i.cc = mul i64 %i.bw, %.1                      ; 2 uses
  %i.cd = add i64 %i.cc, %i.ak
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !41
  %i.cf = load ptr, ptr %i.b, align 8, !tbaa !36  ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !41 ; 2 uses
  %i.ci = add i64 %i.ch, %i.cc
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.cj = add i64 %.1, 1                          ; 2 uses
  %i.ck = mul i64 %i.ak, %i.cj                    ; 2 uses
  %i.cl = call noalias ptr @_safe_emalloc(i64 noundef %i.ak, i64 noundef %i.cj, i64 noundef 32) #26 ; 5 uses
  store i32 1, ptr %i.cl, align 4, !tbaa !42
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  store i32 22, ptr %i.cm, align 4, !tbaa !32
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i64 0, ptr %i.cn, align 8, !tbaa !43
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store i64 %i.ck, ptr %i.co, align 8, !tbaa !41
  %.pre332.a = load ptr, ptr %i.b, align 8, !tbaa !36 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre332.a, i64 16
  %.pre333 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !41
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.cp = phi i64 [ %i.ch, %bb.x ], [ %.pre333, %bb.y ] ; 2 uses
  %i.cq = phi ptr [ %i.cf, %bb.x ], [ %.pre332.a, %bb.y ]
  %.0223 = phi ptr [ %i.bz, %bb.x ], [ %i.cl, %bb.y ] ; 2 uses
  %.0203.in = phi i64 [ %i.ci, %bb.x ], [ %i.ck, %bb.y ]
  %.0199 = phi i64 [ %i.bw, %bb.x ], [ %i.ak, %bb.y ]
  %i.cr = icmp sgt i64 %i.cp, 0
  br i1 %i.cr, label %.lr.ph323, label %._crit_edge324.thread

.lr.ph323:                                        ; preds = %bb.z
  %.0203 = add i64 %.0203.in, 1
  %i.cs = add i64 %.1, -1
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph323, %bb.aq
  %i.ct = phi ptr [ %i.cq, %.lr.ph323 ], [ %i.gn, %bb.aq ]
  %i.cu = phi i64 [ %i.cp, %.lr.ph323 ], [ %i.gp, %bb.aq ]
  %.0321 = phi i64 [ 0, %.lr.ph323 ], [ %.2, %bb.aq ] ; 10 uses
  %.1200320 = phi i64 [ %.0199, %.lr.ph323 ], [ %.4, %bb.aq ] ; 2 uses
  %.1204319 = phi i64 [ %.0203, %.lr.ph323 ], [ %.2205, %bb.aq ] ; 2 uses
  %.1207318 = phi i64 [ 0, %.lr.ph323 ], [ %i.gm, %bb.aq ] ; 17 uses
  %.3212317 = phi i64 [ 0, %.lr.ph323 ], [ %.5, %bb.aq ] ; 10 uses
  %.2216316 = phi i64 [ 0, %.lr.ph323 ], [ %.3217, %bb.aq ] ; 4 uses
  %.1224315 = phi ptr [ %.0223, %.lr.ph323 ], [ %.2225, %bb.aq ] ; 8 uses
  %i.cv = icmp eq i64 %.1200320, 0
  br i1 %i.cv, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %reass.sub = sub i64 %i.cu, %.1207318
  %i.cw = add i64 %reass.sub, 1
  %i.cx = load i64, ptr %i.c, align 8, !tbaa !46
  %i.cy = udiv i64 %i.cw, %i.cx
  %i.cz = add i64 %i.cy, 1
  %i.da = mul i64 %i.cz, %.1
  %i.db = add i64 %.1204319, 1
  %i.dc = add i64 %i.db, %i.da                    ; 6 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.1224315, i64 16 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !41
  %i.df = icmp uge i64 %i.dc, %i.de
  call void @llvm.assume(i1 %i.df)
  %i.dg = getelementptr inbounds nuw i8, ptr %.1224315, i64 4 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !32
  %i.di = and i32 %i.dh, 64
  %.not.i250 = icmp eq i32 %i.di, 0
  br i1 %.not.i250, label %bb.ac, label %zend_string_alloc.exit255

bb.ac:                                            ; preds = %bb.ab
  %i.dj = load i32, ptr %.1224315, align 8, !tbaa !42
  %i.dk = icmp eq i32 %i.dj, 1
  br i1 %i.dk, label %bb.ad, label %zend_string_alloc.exit255, !prof !34

bb.ad:                                            ; preds = %bb.ac
  %i.dl = and i64 %i.dc, -8
  %i.dm = add i64 %i.dl, 32
  %i.dn = call ptr @_erealloc(ptr noundef nonnull %.1224315, i64 noundef %i.dm) #29 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store i64 %i.dc, ptr %i.do, align 8, !tbaa !41
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store i64 0, ptr %i.dp, align 8, !tbaa !43
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 4 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !32
  %i.ds = and i32 %i.dr, -513
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !32
  br label %zend_string_extend.exit

zend_string_alloc.exit255:                        ; preds = %bb.ab, %bb.ac
  %i.dt = and i64 %i.dc, -8
  %i.du = add i64 %i.dt, 32
  %i.dv = call noalias ptr @_emalloc(i64 noundef %i.du) #27 ; 7 uses
  store i32 1, ptr %i.dv, align 4, !tbaa !42
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  store i32 22, ptr %i.dw, align 4, !tbaa !32
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store i64 0, ptr %i.dx, align 8, !tbaa !43
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store i64 %i.dc, ptr %i.dy, align 8, !tbaa !41
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.ea = getelementptr inbounds nuw i8, ptr %.1224315, i64 24
  %i.eb = load i64, ptr %i.dd, align 8, !tbaa !41
  %i.ec = add i64 %i.eb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dz, ptr nonnull align 8 %i.ea, i64 %i.ec, i1 false)
  %i.ed = load i32, ptr %i.dg, align 4, !tbaa !32
  %i.ee = and i32 %i.ed, 64
  %.not21.i = icmp eq i32 %i.ee, 0
  br i1 %.not21.i, label %bb.ae, label %zend_string_extend.exit

bb.ae:                                            ; preds = %zend_string_alloc.exit255
  %i.ef = load i32, ptr %.1224315, align 8, !tbaa !42 ; 2 uses
  %i.eg = icmp ne i32 %i.ef, 0
  call void @llvm.assume(i1 %i.eg)
  %i.eh = add i32 %i.ef, -1
  store i32 %i.eh, ptr %.1224315, align 8, !tbaa !42
  br label %zend_string_extend.exit

zend_string_extend.exit:                          ; preds = %bb.ad, %zend_string_alloc.exit255, %bb.ae
  %.0.i251 = phi ptr [ %i.dn, %bb.ad ], [ %i.dv, %bb.ae ], [ %i.dv, %zend_string_alloc.exit255 ]
  %i.ei = load ptr, ptr %i.b, align 8, !tbaa !36  ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !41
  %i.el = sub i64 %i.ek, %.1207318
  %i.em = load i64, ptr %i.c, align 8, !tbaa !46
  %i.en = udiv i64 %i.el, %i.em
  %i.eo = add i64 %i.en, 1
  br label %bb.af

bb.af:                                            ; preds = %zend_string_extend.exit, %bb.aa
  %i.ep = phi ptr [ %i.ei, %zend_string_extend.exit ], [ %i.ct, %bb.aa ] ; 2 uses
  %.2225 = phi ptr [ %.0.i251, %zend_string_extend.exit ], [ %.1224315, %bb.aa ] ; 8 uses
  %.2205 = phi i64 [ %i.dc, %zend_string_extend.exit ], [ %.1204319, %bb.aa ]
  %.2201 = phi i64 [ %i.eo, %zend_string_extend.exit ], [ %.1200320, %bb.aa ] ; 6 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24 ; 5 uses
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 %.1207318 ; 2 uses
  %i.es = load i8, ptr %i.er, align 1, !tbaa !32  ; 2 uses
  %i.et = load i8, ptr %.1276, align 1, !tbaa !32
  %i.eu = icmp eq i8 %i.es, %i.et
  br i1 %i.eu, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.ev = add i64 %.1207318, %.1                  ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !41
  %i.ey = icmp ult i64 %i.ev, %i.ex
  br i1 %i.ey, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.ez = call i32 @strncmp(ptr noundef nonnull %i.er, ptr noundef nonnull %.1276, i64 noundef %.1) #28
  %.not239 = icmp eq i32 %i.ez, 0
  br i1 %.not239, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fa = getelementptr inbounds nuw i8, ptr %.2225, i64 24
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.0321
  %i.fc = getelementptr inbounds i8, ptr %i.eq, i64 %.3212317
  %i.fd = sub nsw i64 %.1207318, %.3212317
  %i.fe = add i64 %i.fd, %.1                      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fb, ptr nonnull align 1 %i.fc, i64 %i.fe, i1 false)
  %i.ff = add i64 %.0321, %i.fe
  %i.fg = add i64 %i.cs, %.1207318
  %i.fh = add i64 %.2201, -1
  br label %bb.aq

bb.aj:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %i.fi = icmp eq i8 %i.es, 32
  %i.fj = sub nsw i64 %.1207318, %.3212317        ; 6 uses
  %i.fk = load i64, ptr %i.c, align 8, !tbaa !46  ; 2 uses
  br i1 %i.fi, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %.not242 = icmp slt i64 %i.fj, %i.fk
  br i1 %.not242, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
end_hunk_0
begin_hunk_1_@zif_substr_count:bb.a
  %.not.i110 = icmp ugt ptr %i.dr, %i.cx
  br i1 %.not.i110, label %count_chars.exit, label %bb.y, !llvm.loop !8

zend_memnstr.exit:                                ; preds = %.lr.ph224
  %i.ds = call ptr @zend_memnstr_ex(ptr noundef %.190222, ptr noundef nonnull %i.w, i64 noundef %i.y, ptr noundef %i.cr) #26 ; 2 uses
  %.not100 = icmp eq ptr %i.ds, null
  br i1 %.not100, label %count_chars.exit, label %zend_memnstr.exit.thread195

zend_memnstr.exit.thread195:                      ; preds = %bb.aa, %zend_memnstr.exit
  %.1.i198 = phi ptr [ %i.ds, %zend_memnstr.exit ], [ %i.dm, %bb.aa ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.1.i198, i64 %i.y ; 3 uses
  %i.du = add nuw nsw i64 %.0223, 1               ; 2 uses
  %i.dv = icmp uge ptr %i.cr, %i.dt
  call void @llvm.assume(i1 %i.dv)
  %i.dw = ptrtoint ptr %i.dt to i64
  %i.dx = sub i64 %i.cs, %i.dw                    ; 2 uses
  %i.dy = icmp ugt i64 %i.y, %i.dx
  br i1 %i.dy, label %count_chars.exit, label %.lr.ph224, !llvm.loop !295

count_chars.exit:                                 ; preds = %zend_memnstr.exit, %zend_memnstr.exit.thread195, %bb.x, %bb.y, %bb.ab, %.lr.ph239.prol.loopexit, %.lr.ph239, %.split, %.loopexit
  %.1 = phi i64 [ %.0223, %bb.y ], [ 0, %.split ], [ %.2.i, %.loopexit ], [ %i.cp, %.lr.ph239 ], [ %.lcssa.unr, %.lr.ph239.prol.loopexit ], [ %.0223, %bb.ab ], [ %.0223, %bb.x ], [ %i.du, %zend_memnstr.exit.thread195 ], [ %.0223, %zend_memnstr.exit ]
  store i64 %.1, ptr %1, align 8, !tbaa !32
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 4, ptr %i.dz, align 8, !tbaa !32
  br label %bb.ac

bb.ac:                                            ; preds = %.thread176, %count_chars.exit, %bb.r, %bb.l, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zif_str_pad(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i64 1, ptr %i.d, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !32   ; 3 uses
  %i.g = add i32 %i.f, -5
  %or.cond123 = icmp ult i32 %i.g, -3
  br i1 %or.cond123, label %bb.b, label %bb.c, !prof !47

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 2, i32 noundef 4) #26
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = load i8, ptr %i.i, align 8, !tbaa !32
  %i.k = icmp eq i8 %i.j, 6
  br i1 %i.k, label %zend_parse_arg_str_ex.exit.thread, label %zend_parse_arg_str_ex.exit, !prof !34

zend_parse_arg_str_ex.exit.thread:                ; preds = %bb.c
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !32
  store ptr %i.l, ptr %i.b, align 8, !tbaa !36
  br label %bb.d

zend_parse_arg_str_ex.exit:                       ; preds = %bb.c
  %i.m = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.h, ptr noundef nonnull %i.b, i32 noundef 1) #26
  br i1 %i.m, label %bb.d, label %.thread, !prof !37

bb.d:                                             ; preds = %zend_parse_arg_str_ex.exit.thread, %zend_parse_arg_str_ex.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = load i8, ptr %i.o, align 8, !tbaa !32
  %i.q = icmp eq i8 %i.p, 4
  br i1 %i.q, label %zend_parse_arg_long_ex.exit.thread, label %zend_parse_arg_long_ex.exit, !prof !34

zend_parse_arg_long_ex.exit.thread:               ; preds = %bb.d
  %i.r = load i64, ptr %i.n, align 8, !tbaa !32
  store i64 %i.r, ptr %i.c, align 8, !tbaa !46
  br label %bb.e

zend_parse_arg_long_ex.exit:                      ; preds = %bb.d
  %i.s = call zeroext i1 @zend_parse_arg_long_slow(ptr noundef nonnull %i.n, ptr noundef nonnull %i.c, i32 noundef 2) #26
  br i1 %i.s, label %bb.e, label %.thread, !prof !37

bb.e:                                             ; preds = %zend_parse_arg_long_ex.exit.thread, %zend_parse_arg_long_ex.exit
  %i.t = icmp eq i32 %i.f, 2
  br i1 %i.t, label %.critedge, label %bb.f, !prof !45

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.w = load i8, ptr %i.v, align 8, !tbaa !32
  %i.x = icmp eq i8 %i.w, 6
  br i1 %i.x, label %zend_parse_arg_str_ex.exit.i.thread, label %zend_parse_arg_str_ex.exit.i, !prof !34

zend_parse_arg_str_ex.exit.i:                     ; preds = %bb.f
  %i.y = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.u, ptr noundef nonnull %i.a, i32 noundef range(i32 1, 0) 3) #26
  br i1 %i.y, label %zend_parse_arg_str_ex.exit.i.thread, label %zend_parse_arg_string.exit, !prof !56

zend_parse_arg_string.exit:                       ; preds = %zend_parse_arg_str_ex.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %.thread

zend_parse_arg_str_ex.exit.i.thread:              ; preds = %zend_parse_arg_str_ex.exit.i, %bb.f
  %.in = phi ptr [ %i.u, %bb.f ], [ %i.a, %zend_parse_arg_str_ex.exit.i ]
  %i.z = load ptr, ptr %.in, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !41 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not = icmp eq i32 %i.f, 4
  br i1 %.not, label %bb.g, label %.critedge, !prof !34

bb.g:                                             ; preds = %zend_parse_arg_str_ex.exit.i.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !32
  %i.ag = icmp eq i8 %i.af, 4
  br i1 %i.ag, label %.thread162, label %zend_parse_arg_long_ex.exit128, !prof !34

.thread162:                                       ; preds = %bb.g
  %i.ah = load i64, ptr %i.ad, align 8, !tbaa !32
  store i64 %i.ah, ptr %i.d, align 8, !tbaa !46
  br label %.critedge

zend_parse_arg_long_ex.exit128:                   ; preds = %bb.g
  %i.ai = call zeroext i1 @zend_parse_arg_long_slow(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.d, i32 noundef 4) #26
  br i1 %i.ai, label %.critedge, label %.thread, !prof !298

.thread:                                          ; preds = %zend_parse_arg_long_ex.exit128, %zend_parse_arg_str_ex.exit, %zend_parse_arg_long_ex.exit, %zend_parse_arg_string.exit, %bb.b
  %.0111161 = phi i32 [ 9, %zend_parse_arg_long_ex.exit128 ], [ 1, %bb.b ], [ 9, %zend_parse_arg_str_ex.exit ], [ 9, %zend_parse_arg_long_ex.exit ], [ 9, %zend_parse_arg_string.exit ]
  %.0112160 = phi i32 [ 0, %zend_parse_arg_long_ex.exit128 ], [ 0, %bb.b ], [ 4, %zend_parse_arg_str_ex.exit ], [ 0, %zend_parse_arg_long_ex.exit ], [ 4, %zend_parse_arg_string.exit ]
  %.0113159 = phi ptr [ %i.ad, %zend_parse_arg_long_ex.exit128 ], [ null, %bb.b ], [ %i.h, %zend_parse_arg_str_ex.exit ], [ %i.n, %zend_parse_arg_long_ex.exit ], [ %i.u, %zend_parse_arg_string.exit ]
  %.0114158 = phi i32 [ 4, %zend_parse_arg_long_ex.exit128 ], [ 0, %bb.b ], [ 1, %zend_parse_arg_str_ex.exit ], [ 2, %zend_parse_arg_long_ex.exit ], [ 3, %zend_parse_arg_string.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.0111161, i32 noundef %.0114158, ptr noundef null, i32 noundef %.0112160, ptr noundef %.0113159) #26
  br label %bb.u

.critedge:                                        ; preds = %zend_parse_arg_long_ex.exit128, %.thread162, %zend_parse_arg_str_ex.exit.i.thread, %bb.e
  %.1135 = phi ptr [ %i.aa, %zend_parse_arg_long_ex.exit128 ], [ @.str.44, %bb.e ], [ %i.aa, %zend_parse_arg_str_ex.exit.i.thread ], [ %i.aa, %.thread162 ] ; 6 uses
  %.1133 = phi i64 [ %i.ac, %zend_parse_arg_long_ex.exit128 ], [ 1, %bb.e ], [ %i.ac, %zend_parse_arg_str_ex.exit.i.thread ], [ %i.ac, %.thread162 ] ; 7 uses
  %i.aj = load i64, ptr %i.c, align 8, !tbaa !46  ; 3 uses
  %i.ak = icmp slt i64 %i.aj, 0
  %.pre179 = load ptr, ptr %i.b, align 8, !tbaa !36 ; 5 uses
  br i1 %i.ak, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.critedge
  %i.al = getelementptr inbounds nuw i8, ptr %.pre179, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !41 ; 3 uses
  %.not121 = icmp ugt i64 %i.aj, %i.am
  br i1 %.not121, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h, %.critedge
  store ptr %.pre179, ptr %1, align 8, !tbaa !32
  %i.an = getelementptr inbounds nuw i8, ptr %.pre179, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !32
  %i.ap = and i32 %i.ao, 64
  %.not122 = icmp eq i32 %i.ap, 0
  br i1 %.not122, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 6, ptr %i.aq, align 8, !tbaa !32
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  %i.ar = load i32, ptr %.pre179, align 4, !tbaa !42
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %.pre179, align 4, !tbaa !42
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 262, ptr %i.at, align 8, !tbaa !32
  br label %bb.u

bb.l:                                             ; preds = %bb.h
  %i.au = icmp eq i64 %.1133, 0
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @zend_argument_must_not_be_empty_error(i32 noundef 3) #26
  br label %bb.u

bb.n:                                             ; preds = %bb.l
  %i.av = load i64, ptr %i.d, align 8, !tbaa !46
  %or.cond = icmp ugt i64 %i.av, 2
  br i1 %or.cond, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void (i32, ptr, ...) @zend_argument_value_error(i32 noundef 4, ptr noundef nonnull @.str.45) #26
  br label %bb.u

bb.p:                                             ; preds = %bb.n
  %i.aw = sub nuw nsw i64 %i.aj, %i.am            ; 5 uses
  %i.ax = and i64 %i.aw, 9223372036854775800
  %i.ay = add nuw i64 %i.ax, 32
  %i.az = call noalias ptr @_safe_emalloc(i64 noundef 1, i64 noundef %i.am, i64 noundef %i.ay) #26 ; 7 uses
  store i32 1, ptr %i.az, align 4, !tbaa !42
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store i32 22, ptr %i.ba, align 4, !tbaa !32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 4 uses
  store i64 0, ptr %i.bb, align 8
  %i.bd = load i64, ptr %i.d, align 8, !tbaa !46  ; 2 uses
  switch i64 %i.bd, label %._crit_edge [
    i64 1, label %bb.q
    i64 0, label %bb.s
    i64 2, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  br label %._crit_edge

bb.r:                                             ; preds = %bb.p
  %i.be = lshr i64 %i.aw, 1                       ; 2 uses
  %i.bf = sub nuw nsw i64 %i.aw, %i.be
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.r
  %.0116 = phi i64 [ %i.be, %bb.r ], [ %i.aw, %bb.p ] ; 5 uses
  %.0115 = phi i64 [ %i.bf, %bb.r ], [ %i.bd, %bb.p ] ; 3 uses
  %.not176 = icmp eq i64 %.0116, 0
  br i1 %.not176, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 3 uses
  %xtraiter = and i64 %.0116, 1
  %i.bh = icmp eq i64 %.0116, 1
  br i1 %i.bh, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %.0116, -2
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph.new
  %i.bi = phi i64 [ 0, %.lr.ph.new ], [ %i.br, %bb.t ] ; 3 uses
  %.0170 = phi i64 [ 0, %.lr.ph.new ], [ %i.bu, %bb.t ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.t ]
  %i.bj = urem i64 %.0170, %.1133
  %i.bk = getelementptr inbounds nuw i8, ptr %.1135, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bi
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !32
  %i.bn = or disjoint i64 %.0170, 1
  %i.bo = urem i64 %i.bn, %.1133
  %i.bp = getelementptr inbounds nuw i8, ptr %.1135, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !32
  %i.br = add nuw i64 %i.bi, 2                    ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bi
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  store i8 %i.bq, ptr %i.bt, align 1, !tbaa !32
  %i.bu = add nuw i64 %.0170, 2                   ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.t, !llvm.loop !296

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.t
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.br, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.0170.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.bu, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod191 = trunc i64 %.0116 to i1
  call void @llvm.assume(i1 %lcmp.mod191)
  %i.bv = urem i64 %.0170.epil.init, %.1133
  %i.bw = getelementptr inbounds nuw i8, ptr %.1135, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !32
  %i.by = add i64 %.epil.init, 1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.epil.init
  store i8 %i.bx, ptr %i.bz, align 1, !tbaa !32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.q, %bb.p, %bb.s
  %.0115186 = phi i64 [ 0, %bb.p ], [ %.0115, %bb.s ], [ %i.aw, %bb.q ], [ %.0115, %._crit_edge.loopexit.unr-lcssa ], [ %.0115, %.epil.preheader ] ; 5 uses
  %i.ca = phi i64 [ 0, %bb.p ], [ 0, %bb.s ], [ 0, %bb.q ], [ %i.br, %._crit_edge.loopexit.unr-lcssa ], [ %i.by, %.epil.preheader ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ca
  %i.cd = load ptr, ptr %i.b, align 8, !tbaa !36  ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !41 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cc, ptr nonnull align 8 %i.ce, i64 %i.cg, i1 false)
  %i.ch = add i64 %i.cg, %i.ca                    ; 4 uses
  store i64 %i.ch, ptr %i.bc, align 8, !tbaa !41
  %.not177 = icmp eq i64 %.0115186, 0
  br i1 %.not177, label %._crit_edge174.a, label %.lr.ph173.preheader

.lr.ph173.preheader:                              ; preds = %._crit_edge
  %xtraiter192 = and i64 %.0115186, 1
  %i.ci = icmp eq i64 %.0115186, 1
  br i1 %i.ci, label %.lr.ph173.epil.preheader, label %.lr.ph173.preheader.new

.lr.ph173.preheader.new:                          ; preds = %.lr.ph173.preheader
  %unroll_iter198 = and i64 %.0115186, -2
  br label %.lr.ph173

.lr.ph173:                                        ; preds = %.lr.ph173, %.lr.ph173.preheader.new
  %i.cj = phi i64 [ %i.ch, %.lr.ph173.preheader.new ], [ %i.cs, %.lr.ph173 ] ; 3 uses
  %.1171 = phi i64 [ 0, %.lr.ph173.preheader.new ], [ %i.cu, %.lr.ph173 ] ; 3 uses
  %niter199 = phi i64 [ 0, %.lr.ph173.preheader.new ], [ %niter199.next.1, %.lr.ph173 ]
  %i.ck = urem i64 %.1171, %.1133
  %i.cl = getelementptr inbounds nuw i8, ptr %.1135, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !32
  %2 = add i64 %i.cj, 1                           ; 2 uses
  store i64 %2, ptr %i.bc, align 8, !tbaa !41
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cj
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !32
  %i.co = or disjoint i64 %.1171, 1
  %i.cp = urem i64 %i.co, %.1133
  %i.cq = getelementptr inbounds nuw i8, ptr %.1135, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !32
  %i.cs = add i64 %i.cj, 2                        ; 4 uses
  store i64 %i.cs, ptr %i.bc, align 8, !tbaa !41
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cb, i64 %2
  store i8 %i.cr, ptr %i.ct, align 1, !tbaa !32
  %i.cu = add nuw i64 %.1171, 2                   ; 2 uses
  %niter199.next.1 = add nuw i64 %niter199, 2     ; 2 uses
  %niter199.ncmp.1 = icmp eq i64 %niter199.next.1, %unroll_iter198
  br i1 %niter199.ncmp.1, label %._crit_edge174.loopexit.unr-lcssa, label %.lr.ph173, !llvm.loop !297

._crit_edge174.loopexit.unr-lcssa:                ; preds = %.lr.ph173
  %lcmp.mod195.not = icmp eq i64 %xtraiter192, 0
  br i1 %lcmp.mod195.not, label %._crit_edge174.a, label %.lr.ph173.epil.preheader

.lr.ph173.epil.preheader:                         ; preds = %._crit_edge174.loopexit.unr-lcssa, %.lr.ph173.preheader
  %.epil.init194 = phi i64 [ %i.ch, %.lr.ph173.preheader ], [ %i.cs, %._crit_edge174.loopexit.unr-lcssa ] ; 2 uses
  %.1171.epil.init = phi i64 [ 0, %.lr.ph173.preheader ], [ %i.cu, %._crit_edge174.loopexit.unr-lcssa ]
  %lcmp.mod197 = trunc i64 %.0115186 to i1
  call void @llvm.assume(i1 %lcmp.mod197)
  %i.cv = urem i64 %.1171.epil.init, %.1133
  %i.cw = getelementptr inbounds nuw i8, ptr %.1135, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !32
  %i.cy = add i64 %.epil.init194, 1               ; 2 uses
  store i64 %i.cy, ptr %i.bc, align 8, !tbaa !41
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.epil.init194
  store i8 %i.cx, ptr %i.cz, align 1, !tbaa !32
  br label %._crit_edge174.a

._crit_edge174.a:                                 ; preds = %.lr.ph173.epil.preheader, %._crit_edge174.loopexit.unr-lcssa, %._crit_edge
  %3 = phi i64 [ %i.ch, %._crit_edge ], [ %i.cs, %._crit_edge174.loopexit.unr-lcssa ], [ %i.cy, %.lr.ph173.epil.preheader ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.cb, i64 %3
  store i8 0, ptr %i.da, align 1, !tbaa !32
  store ptr %i.az, ptr %1, align 8, !tbaa !32
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 262, ptr %i.db, align 8, !tbaa !32
  br label %bb.u

bb.u:                                             ; preds = %.thread, %bb.j, %bb.k, %._crit_edge174.a, %bb.o, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zif_sscanf(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !32   ; 3 uses
  %i.e = icmp ult i32 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.c, !prof !45

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 2, i32 noundef -1) #26
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load i8, ptr %i.g, align 8, !tbaa !32
  %i.i = icmp eq i8 %i.h, 6
  br i1 %i.i, label %zend_parse_arg_str_ex.exit.i72.thread, label %zend_parse_arg_str_ex.exit.i72, !prof !34

zend_parse_arg_str_ex.exit.i72:                   ; preds = %bb.c
  %i.j = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, i32 noundef range(i32 1, 0) 1) #26
  br i1 %i.j, label %zend_parse_arg_str_ex.exit.i72.thread, label %zend_parse_arg_string.exit75

zend_parse_arg_string.exit75:                     ; preds = %zend_parse_arg_str_ex.exit.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.d

zend_parse_arg_str_ex.exit.i72.thread:            ; preds = %zend_parse_arg_str_ex.exit.i72, %bb.c
  %.in = phi ptr [ %i.f, %bb.c ], [ %i.a, %zend_parse_arg_str_ex.exit.i72 ]
  %i.k = load ptr, ptr %.in, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load i8, ptr %i.n, align 8, !tbaa !32
  %i.p = icmp eq i8 %i.o, 6
  br i1 %i.p, label %zend_parse_arg_str_ex.exit.i.thread, label %zend_parse_arg_str_ex.exit.i, !prof !34

zend_parse_arg_str_ex.exit.i:                     ; preds = %zend_parse_arg_str_ex.exit.i72.thread
  %i.q = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.m, ptr noundef nonnull %i.b, i32 noundef range(i32 1, 0) 2) #26
  br i1 %i.q, label %zend_parse_arg_str_ex.exit.i.thread, label %zend_parse_arg_string.exit

zend_parse_arg_string.exit:                       ; preds = %zend_parse_arg_str_ex.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.d

zend_parse_arg_str_ex.exit.i.thread:              ; preds = %zend_parse_arg_str_ex.exit.i, %zend_parse_arg_str_ex.exit.i72.thread
  %.in106 = phi ptr [ %i.m, %zend_parse_arg_str_ex.exit.i72.thread ], [ %i.b, %zend_parse_arg_str_ex.exit.i ]
  %i.r = load ptr, ptr %.in106, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.s = add i32 %i.d, -2                         ; 2 uses
  %.not = icmp eq i32 %i.s, 0                     ; 2 uses
  %.062 = select i1 %.not, i32 2, i32 %i.d, !prof !45
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load i32, ptr %i.t, align 8, !tbaa !32
  %i.v = and i32 %i.u, 134217728
  %.not70 = icmp eq i32 %i.v, 0
  br i1 %.not70, label %.critedge, label %bb.d, !prof !34

bb.d:                                             ; preds = %bb.b, %zend_parse_arg_str_ex.exit.i.thread, %zend_parse_arg_string.exit75, %zend_parse_arg_string.exit
  %.163.ph = phi i32 [ 2, %zend_parse_arg_string.exit ], [ 1, %zend_parse_arg_string.exit75 ], [ %.062, %zend_parse_arg_str_ex.exit.i.thread ], [ 0, %bb.b ]
  %.061.ph = phi ptr [ %i.m, %zend_parse_arg_string.exit ], [ %i.f, %zend_parse_arg_string.exit75 ], [ %i.m, %zend_parse_arg_str_ex.exit.i.thread ], [ null, %bb.b ]
  %.060.ph = phi i32 [ 4, %zend_parse_arg_string.exit ], [ 4, %zend_parse_arg_string.exit75 ], [ 0, %zend_parse_arg_str_ex.exit.i.thread ], [ 0, %bb.b ]
  %.1.ph = phi i32 [ 9, %zend_parse_arg_string.exit ], [ 9, %zend_parse_arg_string.exit75 ], [ 11, %zend_parse_arg_str_ex.exit.i.thread ], [ 1, %bb.b ]
  call void @zend_wrong_parameter_error(i32 noundef %.1.ph, i32 noundef %.163.ph, ptr noundef null, i32 noundef %.060.ph, ptr noundef %.061.ph) #26
  br label %bb.f

.critedge:                                        ; preds = %zend_parse_arg_str_ex.exit.i.thread
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.066 = select i1 %.not, ptr null, ptr %i.w, !prof !45
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.y = call i32 @php_sscanf_internal(ptr noundef nonnull %i.l, ptr noundef nonnull %i.x, i32 noundef %i.s, ptr noundef %.066, i32 noundef 0, ptr noundef %1) #26
  %i.z = icmp eq i32 %i.y, -3
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge
  call void @zend_wrong_param_count() #26
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %.critedge, %bb.e
  ret void
}

declare i32 @php_sscanf_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @zend_wrong_param_count() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @zif_str_rot13(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !32
  %cond = icmp eq i32 %i.c, 1
  br i1 %cond, label %bb.b, label %.thread56, !prof !33

.thread56:                                        ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 1) #26
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i8, ptr %i.e, align 8, !tbaa !32
  %i.g = icmp eq i8 %i.f, 6
  br i1 %i.g, label %.split66.thread, label %zend_parse_arg_str_ex.exit, !prof !34

.split66.thread:                                  ; preds = %bb.b
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !32   ; 2 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !36
  br label %.critedge

zend_parse_arg_str_ex.exit:                       ; preds = %bb.b
  %i.i = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, i32 noundef 1) #26
  %cond.fr46 = freeze i1 %i.i
  br i1 %cond.fr46, label %zend_parse_arg_str_ex.exit..critedge_crit_edge, label %bb.c, !prof !37

zend_parse_arg_str_ex.exit..critedge_crit_edge:   ; preds = %zend_parse_arg_str_ex.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !36
  br label %.critedge

bb.c:                                             ; preds = %zend_parse_arg_str_ex.exit, %.thread56
  %.03665 = phi i32 [ 1, %.thread56 ], [ 9, %zend_parse_arg_str_ex.exit ]
  %.03764 = phi i32 [ 0, %.thread56 ], [ 4, %zend_parse_arg_str_ex.exit ]
  %.03863 = phi ptr [ null, %.thread56 ], [ %i.d, %zend_parse_arg_str_ex.exit ]
  %.03962 = phi i32 [ 0, %.thread56 ], [ 1, %zend_parse_arg_str_ex.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.03665, i32 noundef %.03962, ptr noundef null, i32 noundef %.03764, ptr noundef %.03863) #26
  br label %bb.i

.critedge:                                        ; preds = %zend_parse_arg_str_ex.exit..critedge_crit_edge, %.split66.thread
  %i.j = phi ptr [ %.pre, %zend_parse_arg_str_ex.exit..critedge_crit_edge ], [ %i.h, %.split66.thread ] ; 3 uses
  %i.k = ptrtoaddr ptr %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !41   ; 3 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.d, label %zend_string_alloc.exit.i, !prof !45

bb.d:                                             ; preds = %.critedge
  %i.o = load ptr, ptr @zend_empty_string, align 8, !tbaa !36
  br label %php_str_rot13.exit

zend_string_alloc.exit.i:                         ; preds = %.critedge
  %i.p = and i64 %i.m, -8
  %i.q = add i64 %i.p, 32
  %i.r = call noalias ptr @_emalloc(i64 noundef %i.q) #27 ; 6 uses
  store i32 1, ptr %i.r, align 4, !tbaa !42
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 22, ptr %i.s, align 4, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 0, ptr %i.t, align 8, !tbaa !43
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %i.m, ptr %i.u, align 8, !tbaa !41
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  %i.w = load i64, ptr %i.l, align 8, !tbaa !41   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = icmp sgt i64 %i.w, 15
  br i1 %i.aa, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %zend_string_alloc.exit.i, %.preheader.i
  %.079.i = phi ptr [ %i.ax, %.preheader.i ], [ %i.v, %zend_string_alloc.exit.i ] ; 2 uses
  %.075.i = phi ptr [ %i.ay, %.preheader.i ], [ %i.y, %zend_string_alloc.exit.i ] ; 2 uses
  %i.ab = load <16 x i8>, ptr %.079.i, align 1, !tbaa !32 ; 5 uses
  %i.ac = add <16 x i8> %i.ab, splat (i8 -97)
  %i.ad = icmp ult <16 x i8> %i.ac, splat (i8 13) ; 2 uses
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %.not.i = icmp eq i16 %i.ae, 0
  %.inner = select <16 x i1> %i.ad, <16 x i8> splat (i8 13), <16 x i8> zeroinitializer
  %i.af = bitcast <16 x i8> %.inner to <2 x i64>
  %.0.i45 = select i1 %.not.i, <2 x i64> zeroinitializer, <2 x i64> %i.af
  %i.ag = add <16 x i8> %i.ab, splat (i8 -110)
  %i.ah = icmp ult <16 x i8> %i.ag, splat (i8 13) ; 2 uses
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %.not87.i = icmp eq i16 %i.ai, 0
  %.inner88 = select <16 x i1> %i.ah, <16 x i8> splat (i8 -13), <16 x i8> zeroinitializer
  %i.aj = bitcast <16 x i8> %.inner88 to <2 x i64>
  %i.ak = select i1 %.not87.i, <2 x i64> zeroinitializer, <2 x i64> %i.aj
  %.1.i = or <2 x i64> %.0.i45, %i.ak
  %i.al = add <16 x i8> %i.ab, splat (i8 -65)
  %i.am = icmp ult <16 x i8> %i.al, splat (i8 13) ; 2 uses
end_hunk_1
begin_hunk_2_@zif_substr_compare:bb.a
.split152.thread:                                 ; preds = %bb.j, %.split152.thread.fold.split
  %storemerge.i124 = phi i8 [ 1, %bb.j ], [ 0, %.split152.thread.fold.split ]
  store i8 %storemerge.i124, ptr %i.e, align 1, !tbaa !50
  br label %.critedge

zend_parse_arg_bool_ex.exit:                      ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.aj = call zeroext i1 @zend_parse_arg_bool_slow(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.e, i32 noundef 5) #26
  %cond.fr131 = freeze i1 %i.aj
  br i1 %cond.fr131, label %.critedge, label %.thread141, !prof !37

.thread141:                                       ; preds = %zend_parse_arg_bool_ex.exit, %zend_parse_arg_str_ex.exit, %zend_parse_arg_str_ex.exit119, %zend_parse_arg_long_ex.exit, %zend_parse_arg_long_ex.exit122, %bb.b
  %.099151 = phi i32 [ 1, %bb.b ], [ 9, %zend_parse_arg_long_ex.exit122 ], [ 9, %zend_parse_arg_str_ex.exit ], [ 9, %zend_parse_arg_str_ex.exit119 ], [ 9, %zend_parse_arg_long_ex.exit ], [ 9, %zend_parse_arg_bool_ex.exit ]
  %.0100150 = phi i32 [ 0, %bb.b ], [ 1, %zend_parse_arg_long_ex.exit122 ], [ 4, %zend_parse_arg_str_ex.exit ], [ 4, %zend_parse_arg_str_ex.exit119 ], [ 0, %zend_parse_arg_long_ex.exit ], [ 2, %zend_parse_arg_bool_ex.exit ]
  %.0101149 = phi ptr [ null, %bb.b ], [ %i.ab, %zend_parse_arg_long_ex.exit122 ], [ %i.i, %zend_parse_arg_str_ex.exit ], [ %i.o, %zend_parse_arg_str_ex.exit119 ], [ %i.u, %zend_parse_arg_long_ex.exit ], [ %i.ai, %zend_parse_arg_bool_ex.exit ]
  %.0102148 = phi i32 [ 0, %bb.b ], [ 4, %zend_parse_arg_long_ex.exit122 ], [ 1, %zend_parse_arg_str_ex.exit ], [ 2, %zend_parse_arg_str_ex.exit119 ], [ 3, %zend_parse_arg_long_ex.exit ], [ 5, %zend_parse_arg_bool_ex.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.099151, i32 noundef %.0102148, ptr noundef null, i32 noundef %.0100150, ptr noundef %.0101149) #26
  br label %bb.u

.critedge:                                        ; preds = %zend_parse_arg_bool_ex.exit, %.split152.thread, %bb.i
  %i.ak = load i64, ptr %i.d, align 8             ; 3 uses
  %i.al = icmp sgt i64 %i.ak, 0
  %or.cond.not = select i1 %.3130, i1 true, i1 %i.al
  br i1 %or.cond.not, label %.critedge.thread, label %bb.k

bb.k:                                             ; preds = %.critedge
  %i.am = icmp eq i64 %i.ak, 0
  br i1 %i.am, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i64 0, ptr %1, align 8, !tbaa !32
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 4, ptr %i.an, align 8, !tbaa !32
  br label %bb.u

bb.m:                                             ; preds = %bb.k
  call void (i32, ptr, ...) @zend_argument_value_error(i32 noundef 4, ptr noundef nonnull @.str.24) #26
  br label %bb.u

.critedge.thread:                                 ; preds = %bb.f, %.critedge
  %i.ao = phi i64 [ %i.ak, %.critedge ], [ 0, %bb.f ] ; 2 uses
  %i.ap = load i64, ptr %i.c, align 8, !tbaa !46  ; 3 uses
  %i.aq = icmp slt i64 %i.ap, 0
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !36  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !41 ; 4 uses
  br i1 %i.aq, label %bb.n, label %._crit_edge

bb.n:                                             ; preds = %.critedge.thread
  %i.at = add i64 %i.as, %i.ap
  %i.au = call i64 @llvm.smax.i64(i64 %i.at, i64 0) ; 2 uses
  store i64 %i.au, ptr %i.c, align 8, !tbaa !46
  br label %._crit_edge

._crit_edge:                                      ; preds = %.critedge.thread, %bb.n
  %i.av = phi i64 [ %i.au, %bb.n ], [ %i.ap, %.critedge.thread ] ; 4 uses
  %i.aw = icmp ugt i64 %i.av, %i.as
  br i1 %i.aw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge
  call void (i32, ptr, ...) @zend_argument_value_error(i32 noundef 3, ptr noundef nonnull @.str.14) #26
  br label %bb.u

bb.p:                                             ; preds = %._crit_edge
  %.not = icmp eq i64 %i.ao, 0
  br i1 %.not, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !41
  %i.ba = sub nuw i64 %i.as, %i.av
  %.116 = call i64 @llvm.umax.i64(i64 %i.az, i64 %i.ba)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bb = phi i64 [ %i.ao, %bb.p ], [ %.116, %bb.q ] ; 2 uses
  %i.bc = load i8, ptr %i.e, align 1, !tbaa !50, !range !52, !noundef !53
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.av ; 2 uses
  %i.bg = sub nuw i64 %i.as, %i.av                ; 2 uses
  %i.bh = load ptr, ptr %i.b, align 8, !tbaa !36  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !41 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.bd, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = call i32 @zend_binary_strncmp(ptr noundef nonnull %i.bf, i64 noundef %i.bg, ptr noundef nonnull %i.bi, i64 noundef %i.bk, i64 noundef %i.bb) #26
  %i.bn = sext i32 %i.bm to i64
  store i64 %i.bn, ptr %1, align 8, !tbaa !32
  store i32 4, ptr %i.bl, align 8, !tbaa !32
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bo = call i32 @zend_binary_strncasecmp_l(ptr noundef nonnull %i.bf, i64 noundef %i.bg, ptr noundef nonnull %i.bi, i64 noundef %i.bk, i64 noundef %i.bb) #26
  %i.bp = sext i32 %i.bo to i64
  store i64 %i.bp, ptr %1, align 8, !tbaa !32
  store i32 4, ptr %i.bl, align 8, !tbaa !32
  br label %bb.u

bb.u:                                             ; preds = %.thread141, %bb.t, %bb.s, %bb.o, %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

declare i32 @zend_binary_strncmp(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @zend_binary_strncasecmp_l(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @zif_utf8_encode(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !32
  %cond = icmp eq i32 %i.c, 1
  br i1 %cond, label %bb.b, label %.thread, !prof !33

.thread:                                          ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 1) #26
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i8, ptr %i.e, align 8, !tbaa !32
  %i.g = icmp eq i8 %i.f, 6
  br i1 %i.g, label %.critedge, label %zend_parse_arg_str_ex.exit.i, !prof !34

zend_parse_arg_str_ex.exit.i:                     ; preds = %bb.b
  %i.h = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, i32 noundef range(i32 1, 0) 1) #26
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %zend_parse_arg_str_ex.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread
  %.03662 = phi i32 [ 1, %.thread ], [ 9, %bb.c ]
  %.03761 = phi i32 [ 0, %.thread ], [ 4, %bb.c ]
  %.03860 = phi ptr [ null, %.thread ], [ %i.d, %bb.c ]
  %.03959 = phi i32 [ 0, %.thread ], [ 1, %bb.c ]
  call void @zend_wrong_parameter_error(i32 noundef %.03662, i32 noundef %.03959, ptr noundef null, i32 noundef %.03761, ptr noundef %.03860) #26
  br label %bb.g

.critedge:                                        ; preds = %zend_parse_arg_str_ex.exit.i, %bb.b
  %.in = phi ptr [ %i.d, %bb.b ], [ %i.a, %zend_parse_arg_str_ex.exit.i ]
  %i.i = load ptr, ptr %.in, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !41   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.l = call noalias ptr @_safe_emalloc(i64 noundef %i.k, i64 noundef 2, i64 noundef 32) #26 ; 6 uses
  store i32 1, ptr %i.l, align 4, !tbaa !42
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 22, ptr %i.m, align 4, !tbaa !32
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.not23.i = icmp eq i64 %i.k, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 4 uses
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.critedge
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  br label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %.critedge
  store i8 0, ptr %i.p, align 8, !tbaa !32
  br label %php_utf8_encode.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.f
  %i.r = phi i64 [ %i.z, %bb.f ], [ 0, %.lr.ph.i.preheader ] ; 4 uses
  %.025.i = phi i64 [ %i.ab, %bb.f ], [ %i.k, %.lr.ph.i.preheader ]
  %.02124.i = phi ptr [ %i.ac, %bb.f ], [ %i.q, %.lr.ph.i.preheader ] ; 2 uses
  %i.s = load i8, ptr %.02124.i, align 1, !tbaa !32 ; 4 uses
  %i.t = icmp sgt i8 %i.s, -1
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.u = lshr i8 %i.s, 6
  %i.v = or disjoint i8 %i.u, -64
  %i.w = add i64 %i.r, 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.r
  store i8 %i.v, ptr %i.x, align 1, !tbaa !32
  %i.y = and i8 %i.s, -65
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.i, %bb.e
  %.sink = phi i64 [ 2, %bb.e ], [ 1, %.lr.ph.i ]
  %.sink34.i = phi i64 [ %i.w, %bb.e ], [ %i.r, %.lr.ph.i ]
  %.sink.i = phi i8 [ %i.y, %bb.e ], [ %i.s, %.lr.ph.i ]
  %i.z = add i64 %i.r, %.sink                     ; 4 uses
  store i64 %i.z, ptr %i.o, align 8, !tbaa !41
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sink34.i
  store i8 %.sink.i, ptr %i.aa, align 1, !tbaa !32
  %i.ab = add i64 %.025.i, -1                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.02124.i, i64 1
  %.not.i45 = icmp eq i64 %i.ab, 0
  br i1 %.not.i45, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !310

._crit_edge.i:                                    ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.z
  store i8 0, ptr %i.ad, align 1, !tbaa !32
  br label %php_utf8_encode.exit

php_utf8_encode.exit:                             ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %i.ae = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.z, %._crit_edge.i ] ; 2 uses
  %i.af = and i64 %i.ae, -8
  %i.ag = add i64 %i.af, 32
  %i.ah = call ptr @_erealloc(ptr noundef nonnull %i.l, i64 noundef %i.ag) #29 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 %i.ae, ptr %i.ai, align 8, !tbaa !41
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 0, ptr %i.aj, align 8, !tbaa !43
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !32
  %i.am = and i32 %i.al, -513
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !32
  store ptr %i.ah, ptr %1, align 8, !tbaa !32
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !32
  %i.ap = and i32 %i.ao, 64
  %.not42 = icmp eq i32 %i.ap, 0
  %i.aq = select i1 %.not42, i32 262, i32 6
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !32
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %php_utf8_encode.exit
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zif_utf8_decode(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.e = load i32, ptr %i.d, align 4, !tbaa !32
  %cond = icmp eq i32 %i.e, 1
  br i1 %cond, label %bb.b, label %.thread, !prof !33

.thread:                                          ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 1) #26
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load i8, ptr %i.g, align 8, !tbaa !32
  %i.i = icmp eq i8 %i.h, 6
  br i1 %i.i, label %.critedge, label %zend_parse_arg_str_ex.exit.i, !prof !34

zend_parse_arg_str_ex.exit.i:                     ; preds = %bb.b
  %i.j = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, i32 noundef range(i32 1, 0) 1) #26
  br i1 %i.j, label %.critedge, label %bb.c

bb.c:                                             ; preds = %zend_parse_arg_str_ex.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread
  %.03661 = phi i32 [ 1, %.thread ], [ 9, %bb.c ]
  %.03760 = phi i32 [ 0, %.thread ], [ 4, %bb.c ]
  %.03859 = phi ptr [ null, %.thread ], [ %i.f, %bb.c ]
  %.03958 = phi i32 [ 0, %.thread ], [ 1, %bb.c ]
  call void @zend_wrong_parameter_error(i32 noundef %.03661, i32 noundef %.03958, ptr noundef null, i32 noundef %.03760, ptr noundef %.03859) #26
  br label %bb.j

.critedge:                                        ; preds = %zend_parse_arg_str_ex.exit.i, %bb.b
  %.in = phi ptr [ %i.f, %bb.b ], [ %i.c, %zend_parse_arg_str_ex.exit.i ]
  %i.k = load ptr, ptr %.in, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !41   ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8, !tbaa !46
  %i.o = and i64 %i.n, -8
  %i.p = add i64 %i.o, 32
  %i.q = call noalias ptr @_emalloc(i64 noundef %i.p) #27 ; 11 uses
  store i32 1, ptr %i.q, align 4, !tbaa !42
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 3 uses
  store i32 22, ptr %i.r, align 4, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %.not.i45 = icmp eq i64 %i.n, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  br i1 %.not.i45, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 -1, ptr %i.b, align 4, !tbaa !122
  %i.v = call i32 @php_next_utf8_char(ptr noundef nonnull %i.l, i64 noundef %i.n, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #26 ; 2 uses
  %i.w = load i32, ptr %i.b, align 4, !tbaa !122
  %i.x = icmp eq i32 %i.w, -1
  %i.y = icmp ugt i32 %i.v, 255
  %or.cond.i = select i1 %i.x, i1 true, i1 %i.y
  %i.z = trunc i32 %i.v to i8
  %i.aa = select i1 %or.cond.i, i8 63, i8 %i.z
  %i.ab = load i64, ptr %i.t, align 8, !tbaa !41  ; 2 uses
  %i.ac = add i64 %i.ab, 1                        ; 2 uses
  store i64 %i.ac, ptr %i.t, align 8, !tbaa !41
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ab
  store i8 %i.aa, ptr %i.ad, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !46
  %i.af = icmp ult i64 %i.ae, %i.n
  br i1 %i.af, label %bb.e, label %._crit_edge.i, !llvm.loop !311

._crit_edge.i:                                    ; preds = %bb.e, %.critedge
  %i.ag = phi i64 [ 0, %.critedge ], [ %i.ac, %bb.e ] ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ag
  store i8 0, ptr %i.ai, align 1, !tbaa !32
  %i.aj = icmp ult i64 %i.ag, %i.n
  br i1 %i.aj, label %bb.f, label %php_utf8_decode.exit

bb.f:                                             ; preds = %._crit_edge.i
  %i.ak = load i32, ptr %i.r, align 4, !tbaa !32
  %i.al = and i32 %i.ak, 64
  %.not.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i, label %bb.g, label %zend_string_alloc.exit.i

bb.g:                                             ; preds = %bb.f
  %i.am = load i32, ptr %i.q, align 8, !tbaa !42
  %i.an = icmp eq i32 %i.am, 1
  br i1 %i.an, label %bb.h, label %zend_string_alloc.exit.i, !prof !34

bb.h:                                             ; preds = %bb.g
  %i.ao = and i64 %i.ag, -8
  %i.ap = add i64 %i.ao, 32
  %i.aq = call ptr @_erealloc(ptr noundef nonnull %i.q, i64 noundef %i.ap) #29 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 %i.ag, ptr %i.ar, align 8, !tbaa !41
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 0, ptr %i.as, align 8, !tbaa !43
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 4 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !32
  %i.av = and i32 %i.au, -513
  store i32 %i.av, ptr %i.at, align 4, !tbaa !32
  br label %php_utf8_decode.exit

zend_string_alloc.exit.i:                         ; preds = %bb.f, %bb.g
  %i.aw = and i64 %i.ag, -8
  %i.ax = add i64 %i.aw, 32
  %i.ay = call noalias ptr @_emalloc(i64 noundef %i.ax) #27 ; 7 uses
  store i32 1, ptr %i.ay, align 4, !tbaa !42
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store i32 22, ptr %i.az, align 4, !tbaa !32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 0, ptr %i.ba, align 8, !tbaa !43
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i64 %i.ag, ptr %i.bb, align 8, !tbaa !41
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bd = add nuw i64 %i.ag, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.bd, i1 false)
  %i.be = load i32, ptr %i.r, align 4, !tbaa !32
  %i.bf = and i32 %i.be, 64
  %.not21.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not21.i.i, label %bb.i, label %php_utf8_decode.exit

bb.i:                                             ; preds = %zend_string_alloc.exit.i
  %i.bg = load i32, ptr %i.q, align 8, !tbaa !42  ; 2 uses
  %i.bh = icmp ne i32 %i.bg, 0
  call void @llvm.assume(i1 %i.bh)
  %i.bi = add i32 %i.bg, -1
  store i32 %i.bi, ptr %i.q, align 8, !tbaa !42
  br label %php_utf8_decode.exit

php_utf8_decode.exit:                             ; preds = %._crit_edge.i, %bb.h, %zend_string_alloc.exit.i, %bb.i
  %.0.i = phi ptr [ %i.q, %._crit_edge.i ], [ %i.aq, %bb.h ], [ %i.ay, %bb.i ], [ %i.ay, %zend_string_alloc.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  store ptr %.0.i, ptr %1, align 8, !tbaa !32
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !32
  %i.bl = and i32 %i.bk, 64
  %.not42 = icmp eq i32 %i.bl, 0
  %i.bm = select i1 %.not42, i32 262, i32 6
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.bm, ptr %i.bn, align 8, !tbaa !32
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %php_utf8_decode.exit
  ret void
}

declare zeroext i1 @zend_parse_arg_str_slow(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare noalias ptr @_safe_emalloc(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

declare ptr @zend_memnstr_ex(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3
end_hunk_2
