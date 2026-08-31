Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/url?download=true
inline.NumInlined: 21
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@php_url_encode:bb.a
  %i.jt = load i32, ptr %i.b, align 8, !tbaa !18
  %i.ju = icmp eq i32 %i.jt, 1
  br i1 %i.ju, label %bb.bg, label %zend_string_alloc.exit.i, !prof !43

bb.bg:                                            ; preds = %bb.bf
  %i.jv = and i64 %i.jn, -8
  %i.jw = add i64 %i.jv, 32
  %i.jx = tail call ptr @_erealloc(ptr noundef nonnull %i.b, i64 noundef %i.jw) #18 ; 4 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  store i64 %i.jn, ptr %i.jy, align 8, !tbaa !36
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  store i64 0, ptr %i.jz, align 8, !tbaa !33
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 4 ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !17
  %i.kc = and i32 %i.kb, -513
  store i32 %i.kc, ptr %i.ka, align 4, !tbaa !17
  br label %zend_string_truncate.exit

zend_string_alloc.exit.i:                         ; preds = %php_url_encode_impl.exit, %bb.bf
  %i.kd = and i64 %i.jn, -8
  %i.ke = add i64 %i.kd, 32
  %i.kf = tail call noalias ptr @_emalloc(i64 noundef %i.ke) #17 ; 7 uses
  store i32 1, ptr %i.kf, align 4, !tbaa !18
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  store i32 22, ptr %i.kg, align 4, !tbaa !17
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  store i64 0, ptr %i.kh, align 8, !tbaa !33
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  store i64 %i.jn, ptr %i.ki, align 8, !tbaa !36
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kf, i64 24
  %i.kk = add i64 %i.jn, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.kj, ptr nonnull align 8 %i.g, i64 %i.kk, i1 false)
  %i.kl = load i32, ptr %i.c, align 4, !tbaa !17
  %i.km = and i32 %i.kl, 64
  %.not21.i = icmp eq i32 %i.km, 0
  br i1 %.not21.i, label %bb.bh, label %zend_string_truncate.exit

bb.bh:                                            ; preds = %zend_string_alloc.exit.i
  %i.kn = load i32, ptr %i.b, align 8, !tbaa !18  ; 2 uses
  %i.ko = icmp ne i32 %i.kn, 0
  tail call void @llvm.assume(i1 %i.ko)
  %i.kp = add i32 %i.kn, -1
  store i32 %i.kp, ptr %i.b, align 8, !tbaa !18
  br label %zend_string_truncate.exit

zend_string_truncate.exit:                        ; preds = %bb.bg, %zend_string_alloc.exit.i, %bb.bh
  %.0.i2 = phi ptr [ %i.jx, %bb.bg ], [ %i.kf, %bb.bh ], [ %i.kf, %zend_string_alloc.exit.i ]
  ret ptr %.0.i2
}

; Function Attrs: nounwind uwtable
define hidden void @zif_urlencode(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !17
  %cond = icmp eq i32 %i.c, 1
  br i1 %cond, label %bb.b, label %.thread53, !prof !54

.thread53:                                        ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 1) #13
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i8, ptr %i.e, align 8, !tbaa !17
  %i.g = icmp eq i8 %i.f, 6
  br i1 %i.g, label %.split63.thread, label %zend_parse_arg_str_ex.exit, !prof !43

.split63.thread:                                  ; preds = %bb.b
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !40
  br label %.critedge

zend_parse_arg_str_ex.exit:                       ; preds = %bb.b
  %i.i = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, i32 noundef 1) #13
  %cond.fr43 = freeze i1 %i.i
  br i1 %cond.fr43, label %zend_parse_arg_str_ex.exit..critedge_crit_edge, label %bb.c, !prof !55

zend_parse_arg_str_ex.exit..critedge_crit_edge:   ; preds = %zend_parse_arg_str_ex.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !40
  br label %.critedge

bb.c:                                             ; preds = %zend_parse_arg_str_ex.exit, %.thread53
  %.03562 = phi i32 [ 1, %.thread53 ], [ 9, %zend_parse_arg_str_ex.exit ]
  %.03661 = phi i32 [ 0, %.thread53 ], [ 4, %zend_parse_arg_str_ex.exit ]
  %.03760 = phi ptr [ null, %.thread53 ], [ %i.d, %zend_parse_arg_str_ex.exit ]
  %.03859 = phi i32 [ 0, %.thread53 ], [ 1, %zend_parse_arg_str_ex.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.03562, i32 noundef %.03859, ptr noundef null, i32 noundef %.03661, ptr noundef %.03760) #13
  br label %bb.d

.critedge:                                        ; preds = %zend_parse_arg_str_ex.exit..critedge_crit_edge, %.split63.thread
  %i.j = phi ptr [ %.pre, %zend_parse_arg_str_ex.exit..critedge_crit_edge ], [ %i.h, %.split63.thread ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !36
  %i.n = call ptr @php_url_encode(ptr noundef nonnull %i.k, i64 noundef %i.m)
  store ptr %i.n, ptr %1, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 262, ptr %i.o, align 8, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zif_urldecode(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !17
  %cond = icmp eq i32 %i.c, 1
  br i1 %cond, label %bb.b, label %.thread56, !prof !54

.thread56:                                        ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 1) #13
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i8, ptr %i.e, align 8, !tbaa !17
  %i.g = icmp eq i8 %i.f, 6
  br i1 %i.g, label %.split66.thread, label %zend_parse_arg_str_ex.exit, !prof !43

.split66.thread:                                  ; preds = %bb.b
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !40
  br label %.critedge

zend_parse_arg_str_ex.exit:                       ; preds = %bb.b
  %i.i = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, i32 noundef 1) #13
  %cond.fr46 = freeze i1 %i.i
  br i1 %cond.fr46, label %zend_parse_arg_str_ex.exit..critedge_crit_edge, label %bb.c, !prof !55

zend_parse_arg_str_ex.exit..critedge_crit_edge:   ; preds = %zend_parse_arg_str_ex.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !40
  br label %.critedge

bb.c:                                             ; preds = %zend_parse_arg_str_ex.exit, %.thread56
  %.03865 = phi i32 [ 1, %.thread56 ], [ 9, %zend_parse_arg_str_ex.exit ]
  %.03964 = phi i32 [ 0, %.thread56 ], [ 4, %zend_parse_arg_str_ex.exit ]
  %.04063 = phi ptr [ null, %.thread56 ], [ %i.d, %zend_parse_arg_str_ex.exit ]
  %.04162 = phi i32 [ 0, %.thread56 ], [ 1, %zend_parse_arg_str_ex.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.03865, i32 noundef %.04162, ptr noundef null, i32 noundef %.03964, ptr noundef %.04063) #13
  br label %bb.k

.critedge:                                        ; preds = %zend_parse_arg_str_ex.exit..critedge_crit_edge, %.split66.thread
  %i.j = phi ptr [ %.pre, %zend_parse_arg_str_ex.exit..critedge_crit_edge ], [ %i.h, %.split66.thread ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !36   ; 2 uses
  %i.m = and i64 %i.l, -8
  %i.n = add i64 %i.m, 32
  %i.o = call noalias ptr @_emalloc(i64 noundef %i.n) #17 ; 6 uses
  store i32 1, ptr %i.o, align 4, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 22, ptr %i.p, align 4, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 0, ptr %i.q, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  store i64 %i.l, ptr %i.r, align 8, !tbaa !36
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !36   ; 2 uses
  %.not28.i = icmp eq i64 %i.v, 0
  br i1 %.not28.i, label %php_url_decode_ex.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.critedge
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.j
  %.031.i = phi ptr [ %i.ba, %bb.j ], [ %i.w, %.lr.ph.i.preheader ] ; 5 uses
  %.02030.i = phi i64 [ %.121.i, %bb.j ], [ %i.v, %.lr.ph.i.preheader ] ; 2 uses
  %.02229.i = phi ptr [ %i.bb, %bb.j ], [ %i.s, %.lr.ph.i.preheader ] ; 4 uses
  %i.x = add i64 %.02030.i, -1                    ; 3 uses
  %i.y = load i8, ptr %.031.i, align 1, !tbaa !17 ; 3 uses
  %i.z = icmp eq i8 %i.y, 43
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  store i8 32, ptr %.02229.i, align 1, !tbaa !17
  br label %bb.j

bb.e:                                             ; preds = %.lr.ph.i
  %i.aa = icmp eq i8 %i.y, 37
  %i.ab = icmp ugt i64 %i.x, 1
  %or.cond.i = and i1 %i.ab, %i.aa
  br i1 %or.cond.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ac = tail call ptr @__ctype_b_loc() #16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !28 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.031.i, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !17  ; 5 uses
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.ag
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !30
  %i.aj = and i16 %i.ai, 4096
  %.not25.i = icmp eq i16 %i.aj, 0
  br i1 %.not25.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr i8, ptr %.031.i, i64 2    ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !17  ; 5 uses
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !30
  %i.ap = and i16 %i.ao, 4096
  %.not26.i = icmp eq i16 %i.ap, 0
  br i1 %.not26.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %2 = and i8 %i.af, -33
  %3 = add i8 %2, -65
  %or.cond13.i.i.i = icmp ult i8 %3, 6
  %4 = add i8 %i.af, -48
  %5 = icmp ult i8 %4, 10
  %6 = or i1 %5, %or.cond13.i.i.i
  call void @llvm.assume(i1 %6)
  %i.aq = lshr i8 %i.af, 6
  %i.ar = mul nuw nsw i8 %i.aq, 9
  %i.as = add i8 %i.ar, %i.af
  %i.at = shl i8 %i.as, 4
  %7 = and i8 %i.al, -33
  %8 = add i8 %7, -65
  %or.cond13.i5.i.i = icmp ult i8 %8, 6
  %9 = add i8 %i.al, -48
  %10 = icmp ult i8 %9, 10
  %11 = or i1 %10, %or.cond13.i5.i.i
  call void @llvm.assume(i1 %11)
  %i.au = lshr i8 %i.al, 6
  %i.av = mul nuw nsw i8 %i.au, 9
  %i.aw = and i8 %i.al, 15
  %i.ax = or disjoint i8 %i.aw, %i.at
  %i.ay = add i8 %i.ax, %i.av
  store i8 %i.ay, ptr %.02229.i, align 1, !tbaa !17
  %i.az = add i64 %.02030.i, -3
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e
  store i8 %i.y, ptr %.02229.i, align 1, !tbaa !17
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.d
  %.121.i = phi i64 [ %i.x, %bb.d ], [ %i.az, %bb.h ], [ %i.x, %bb.i ] ; 2 uses
  %.1.i = phi ptr [ %.031.i, %bb.d ], [ %i.ak, %bb.h ], [ %.031.i, %bb.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  %i.bb = getelementptr inbounds nuw i8, ptr %.02229.i, i64 1 ; 2 uses
  %.not.i = icmp eq i64 %.121.i, 0
  br i1 %.not.i, label %php_url_decode_ex.exit, label %.lr.ph.i, !llvm.loop !56

php_url_decode_ex.exit:                           ; preds = %bb.j, %.critedge
  %.022.lcssa.i = phi ptr [ %i.s, %.critedge ], [ %i.bb, %bb.j ] ; 2 uses
  store i8 0, ptr %.022.lcssa.i, align 1, !tbaa !17
  %i.bc = ptrtoint ptr %.022.lcssa.i to i64
  %i.bd = ptrtoint ptr %i.s to i64
  %i.be = sub i64 %i.bc, %i.bd
  store i64 %i.be, ptr %i.r, align 8, !tbaa !36
  store ptr %i.o, ptr %1, align 8, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 262, ptr %i.bf, align 8, !tbaa !17
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %php_url_decode_ex.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local noundef i64 @php_url_decode_ex(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #9 {
bb.a:
  %.not28 = icmp eq i64 %2, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %.031 = phi ptr [ %i.ad, %bb.h ], [ %1, %bb.a ] ; 5 uses
  %.02030 = phi i64 [ %.121, %bb.h ], [ %2, %bb.a ] ; 2 uses
  %.02229 = phi ptr [ %i.ae, %bb.h ], [ %0, %bb.a ] ; 4 uses
  %i.a = add i64 %.02030, -1                      ; 3 uses
  %i.b = load i8, ptr %.031, align 1, !tbaa !17   ; 3 uses
  %i.c = icmp eq i8 %i.b, 43
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  store i8 32, ptr %.02229, align 1, !tbaa !17
  br label %bb.h

bb.c:                                             ; preds = %.lr.ph
  %i.d = icmp eq i8 %i.b, 37
  %i.e = icmp ugt i64 %i.a, 1
  %or.cond = and i1 %i.e, %i.d
  br i1 %or.cond, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @__ctype_b_loc() #16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.031, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !17    ; 5 uses
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2, !tbaa !30
  %i.m = and i16 %i.l, 4096
  %.not25 = icmp eq i16 %i.m, 0
  br i1 %.not25, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %.031, i64 2       ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !17    ; 5 uses
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2, !tbaa !30
  %i.s = and i16 %i.r, 4096
  %.not26 = icmp eq i16 %i.s, 0
  br i1 %.not26, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %3 = and i8 %i.i, -33
  %4 = add i8 %3, -65
  %or.cond13.i.i = icmp ult i8 %4, 6
  %5 = add i8 %i.i, -48
  %6 = icmp ult i8 %5, 10
  %7 = or i1 %6, %or.cond13.i.i
  tail call void @llvm.assume(i1 %7)
  %i.t = lshr i8 %i.i, 6
  %i.u = mul nuw nsw i8 %i.t, 9
  %i.v = add i8 %i.u, %i.i
  %i.w = shl i8 %i.v, 4
  %8 = and i8 %i.o, -33
  %9 = add i8 %8, -65
  %or.cond13.i5.i = icmp ult i8 %9, 6
  %10 = add i8 %i.o, -48
  %11 = icmp ult i8 %10, 10
  %12 = or i1 %11, %or.cond13.i5.i
  tail call void @llvm.assume(i1 %12)
  %i.x = lshr i8 %i.o, 6
  %i.y = mul nuw nsw i8 %i.x, 9
  %i.z = and i8 %i.o, 15
  %i.aa = or disjoint i8 %i.z, %i.w
  %i.ab = add i8 %i.aa, %i.y
  store i8 %i.ab, ptr %.02229, align 1, !tbaa !17
  %i.ac = add i64 %.02030, -3
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  store i8 %i.b, ptr %.02229, align 1, !tbaa !17
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.b
  %.121 = phi i64 [ %i.a, %bb.b ], [ %i.ac, %bb.f ], [ %i.a, %bb.g ] ; 2 uses
  %.1 = phi ptr [ %.031, %bb.b ], [ %i.n, %bb.f ], [ %.031, %bb.g ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.ae = getelementptr inbounds nuw i8, ptr %.02229, i64 1 ; 2 uses
  %.not = icmp eq i64 %.121, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !56

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %.022.lcssa = phi ptr [ %0, %bb.a ], [ %i.ae, %bb.h ] ; 2 uses
  store i8 0, ptr %.022.lcssa, align 1, !tbaa !17
  %i.af = ptrtoint ptr %.022.lcssa to i64
  %i.ag = ptrtoint ptr %0 to i64
  %i.ah = sub i64 %i.af, %i.ag
  ret i64 %i.ah
}

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local noundef i64 @php_url_decode(ptr noundef %0, i64 noundef %1) local_unnamed_addr #9 {
bb.a:
  %.not28.i = icmp eq i64 %1, 0
  br i1 %.not28.i, label %php_url_decode_ex.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.h
  %.031.i = phi ptr [ %i.ad, %bb.h ], [ %0, %bb.a ] ; 5 uses
  %.02030.i = phi i64 [ %.121.i, %bb.h ], [ %1, %bb.a ] ; 2 uses
  %.02229.i = phi ptr [ %i.ae, %bb.h ], [ %0, %bb.a ] ; 4 uses
  %i.a = add i64 %.02030.i, -1                    ; 3 uses
  %i.b = load i8, ptr %.031.i, align 1, !tbaa !17 ; 3 uses
  %i.c = icmp eq i8 %i.b, 43
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  store i8 32, ptr %.02229.i, align 1, !tbaa !17
  br label %bb.h

bb.c:                                             ; preds = %.lr.ph.i
  %i.d = icmp eq i8 %i.b, 37
  %i.e = icmp ugt i64 %i.a, 1
  %or.cond.i = and i1 %i.e, %i.d
  br i1 %or.cond.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @__ctype_b_loc() #16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.031.i, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !17    ; 5 uses
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2, !tbaa !30
  %i.m = and i16 %i.l, 4096
  %.not25.i = icmp eq i16 %i.m, 0
  br i1 %.not25.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %.031.i, i64 2     ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !17    ; 5 uses
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2, !tbaa !30
  %i.s = and i16 %i.r, 4096
  %.not26.i = icmp eq i16 %i.s, 0
  br i1 %.not26.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %2 = and i8 %i.i, -33
  %3 = add i8 %2, -65
  %or.cond13.i.i.i = icmp ult i8 %3, 6
  %4 = add i8 %i.i, -48
  %5 = icmp ult i8 %4, 10
  %6 = or i1 %5, %or.cond13.i.i.i
  tail call void @llvm.assume(i1 %6)
  %i.t = lshr i8 %i.i, 6
  %i.u = mul nuw nsw i8 %i.t, 9
  %i.v = add i8 %i.u, %i.i
  %i.w = shl i8 %i.v, 4
  %7 = and i8 %i.o, -33
  %8 = add i8 %7, -65
  %or.cond13.i5.i.i = icmp ult i8 %8, 6
  %9 = add i8 %i.o, -48
  %10 = icmp ult i8 %9, 10
  %11 = or i1 %10, %or.cond13.i5.i.i
  tail call void @llvm.assume(i1 %11)
  %i.x = lshr i8 %i.o, 6
  %i.y = mul nuw nsw i8 %i.x, 9
  %i.z = and i8 %i.o, 15
  %i.aa = or disjoint i8 %i.z, %i.w
  %i.ab = add i8 %i.aa, %i.y
  store i8 %i.ab, ptr %.02229.i, align 1, !tbaa !17
  %i.ac = add i64 %.02030.i, -3
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  store i8 %i.b, ptr %.02229.i, align 1, !tbaa !17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.b
  %.121.i = phi i64 [ %i.a, %bb.b ], [ %i.ac, %bb.f ], [ %i.a, %bb.g ] ; 2 uses
  %.1.i = phi ptr [ %.031.i, %bb.b ], [ %i.n, %bb.f ], [ %.031.i, %bb.g ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  %i.ae = getelementptr inbounds nuw i8, ptr %.02229.i, i64 1 ; 2 uses
  %.not.i = icmp eq i64 %.121.i, 0
  br i1 %.not.i, label %php_url_decode_ex.exit, label %.lr.ph.i, !llvm.loop !56

php_url_decode_ex.exit:                           ; preds = %bb.h, %bb.a
  %.022.lcssa.i = phi ptr [ %0, %bb.a ], [ %i.ae, %bb.h ] ; 2 uses
  store i8 0, ptr %.022.lcssa.i, align 1, !tbaa !17
  %i.af = ptrtoint ptr %.022.lcssa.i to i64
  %i.ag = ptrtoint ptr %0 to i64
  %i.ah = sub i64 %i.af, %i.ag
  ret i64 %i.ah
}

; Function Attrs: nounwind uwtable
define dso_local ptr @php_raw_url_encode(ptr nofree noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = tail call noalias ptr @_safe_emalloc(i64 noundef 3, i64 noundef %1, i64 noundef 32) #13 ; 9 uses
  store i32 1, ptr %i.b, align 4, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  store i32 22, ptr %i.c, align 4, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !33
  %i.e = mul i64 %1, 3
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %i.e, ptr %i.f, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.i = icmp samesign ugt i64 %1, 16
  br i1 %i.i, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.lr.ph

.preheader.loopexit:                              ; preds = %bb.ay
  %.pre = ptrtoaddr ptr %i.n to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %.0118.i.lcssa11.pre-phi = phi i64 [ %.pre, %.preheader.loopexit ], [ %i.a, %bb.a ]
  %.0118.i.lcssa = phi ptr [ %i.n, %.preheader.loopexit ], [ %0, %bb.a ] ; 3 uses
  %.0112.i.lcssa = phi ptr [ %.3.i, %.preheader.loopexit ], [ %i.g, %bb.a ] ; 2 uses
  %i.k = icmp ult ptr %.0118.i.lcssa, %i.h
  br i1 %i.k, label %.lr.ph9.preheader, label %php_url_encode_impl.exit

.lr.ph9.preheader:                                ; preds = %.preheader
  %i.l = add i64 %1, %i.a
  %i.m = sub i64 %i.l, %.0118.i.lcssa11.pre-phi
  %scevgep = getelementptr i8, ptr %.0118.i.lcssa, i64 %i.m
  br label %.lr.ph9

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ay
  %i.n = phi ptr [ %i.ih, %bb.ay ], [ %i.j, %.lr.ph.preheader ] ; 4 uses
  %.0112.i5 = phi ptr [ %.3.i, %bb.ay ], [ %i.g, %.lr.ph.preheader ] ; 8 uses
  %.0118.i4 = phi ptr [ %i.n, %bb.ay ], [ %0, %.lr.ph.preheader ]
  %i.o = load <2 x i64>, ptr %.0118.i4, align 1, !tbaa !17 ; 3 uses
  %i.p = bitcast <2 x i64> %i.o to <16 x i8>      ; 36 uses
  %i.q = bitcast <2 x i64> %i.o to <16 x i8>
  %i.r = and <16 x i8> %i.q, splat (i8 -33)
  %i.s = add <16 x i8> %i.r, splat (i8 -65)
  %i.t = icmp ult <16 x i8> %i.s, splat (i8 26)
  %i.u = add <16 x i8> %i.p, splat (i8 -48)
  %i.v = icmp ult <16 x i8> %i.u, splat (i8 10)
  %i.w = or <16 x i1> %i.v, %i.t
  %i.x = add <16 x i8> %i.p, splat (i8 -45)
  %i.y = icmp ult <16 x i8> %i.x, splat (i8 2)
  %i.z = or <16 x i1> %i.y, %i.w
  %i.aa = icmp eq <16 x i8> %i.p, splat (i8 95)
  %i.ab = or <16 x i1> %i.aa, %i.z
  %i.ac = icmp eq <16 x i8> %i.p, splat (i8 126)
  %i.ad = or <16 x i1> %i.ac, %i.ab
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 3 uses
  %i.af = zext i16 %i.ae to i32                   ; 15 uses
  %i.ag = icmp eq i16 %i.ae, -1
  br i1 %i.ag, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  store <2 x i64> %i.o, ptr %.0112.i5, align 1, !tbaa !17
  %i.ah = getelementptr inbounds nuw i8, ptr %.0112.i5, i64 16
  br label %bb.ay

bb.c:                                             ; preds = %.lr.ph
  %i.ai = and i32 %i.af, 1
  %.not124.i = icmp eq i32 %i.ai, 0
  br i1 %.not124.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.vec.extract = extractelement <16 x i8> %i.p, i64 0
  %i.aj = getelementptr inbounds nuw i8, ptr %.0112.i5, i64 1
  store i8 %.sroa.0.0.vec.extract, ptr %.0112.i5, align 1, !tbaa !17
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %.0112.i5, i64 1
  store i8 37, ptr %.0112.i5, align 1, !tbaa !17
  %.sroa.0.0.vec.extract16 = extractelement <16 x i8> %i.p, i64 0 ; 2 uses
  %i.al = lshr i8 %.sroa.0.0.vec.extract16, 4
  %i.am = zext nneg i8 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr @hexchars, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !17
  %i.ap = getelementptr inbounds nuw i8, ptr %.0112.i5, i64 2
  store i8 %i.ao, ptr %i.ak, align 1, !tbaa !17
  %i.aq = and i8 %.sroa.0.0.vec.extract16, 15
  %i.ar = zext nneg i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @hexchars, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !17
  %i.au = getelementptr inbounds nuw i8, ptr %.0112.i5, i64 3
  store i8 %i.at, ptr %i.ap, align 1, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.2.i = phi ptr [ %i.aj, %bb.d ], [ %i.au, %bb.e ] ; 6 uses
  %i.av = and i32 %i.af, 2
  %.not124.i.1 = icmp eq i32 %i.av, 0
  br i1 %.not124.i.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.0.1.vec.extract = extractelement <16 x i8> %i.p, i64 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.2.i, i64 1
  store i8 %.sroa.0.1.vec.extract, ptr %.2.i, align 1, !tbaa !17
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %.2.i, i64 1
  store i8 37, ptr %.2.i, align 1, !tbaa !17
  %.sroa.0.1.vec.extract18 = extractelement <16 x i8> %i.p, i64 1 ; 2 uses
  %i.ay = lshr i8 %.sroa.0.1.vec.extract18, 4
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @hexchars, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !17
  %i.bc = getelementptr inbounds nuw i8, ptr %.2.i, i64 2
  store i8 %i.bb, ptr %i.ax, align 1, !tbaa !17
  %i.bd = and i8 %.sroa.0.1.vec.extract18, 15
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr @hexchars, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !17
  %i.bh = getelementptr inbounds nuw i8, ptr %.2.i, i64 3
  store i8 %i.bg, ptr %i.bc, align 1, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2.i.1 = phi ptr [ %i.aw, %bb.g ], [ %i.bh, %bb.h ] ; 6 uses
  %i.bi = and i32 %i.af, 4
  %.not124.i.2 = icmp eq i32 %i.bi, 0
  br i1 %.not124.i.2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.0.2.vec.extract = extractelement <16 x i8> %i.p, i64 2
  %i.bj = getelementptr inbounds nuw i8, ptr %.2.i.1, i64 1
  store i8 %.sroa.0.2.vec.extract, ptr %.2.i.1, align 1, !tbaa !17
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.2.i.1, i64 1
  store i8 37, ptr %.2.i.1, align 1, !tbaa !17
  %.sroa.0.2.vec.extract22 = extractelement <16 x i8> %i.p, i64 2 ; 2 uses
  %i.bl = lshr i8 %.sroa.0.2.vec.extract22, 4
  %i.bm = zext nneg i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr @hexchars, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !17
  %i.bp = getelementptr inbounds nuw i8, ptr %.2.i.1, i64 2
  store i8 %i.bo, ptr %i.bk, align 1, !tbaa !17
  %i.bq = and i8 %.sroa.0.2.vec.extract22, 15
  %i.br = zext nneg i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr @hexchars, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !17
  %i.bu = getelementptr inbounds nuw i8, ptr %.2.i.1, i64 3
  store i8 %i.bt, ptr %i.bp, align 1, !tbaa !17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.2.i.2 = phi ptr [ %i.bj, %bb.j ], [ %i.bu, %bb.k ] ; 6 uses
  %i.bv = and i32 %i.af, 8
  %.not124.i.3 = icmp eq i32 %i.bv, 0
  br i1 %.not124.i.3, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.3.vec.extract = extractelement <16 x i8> %i.p, i64 3
  %i.bw = getelementptr inbounds nuw i8, ptr %.2.i.2, i64 1
  store i8 %.sroa.0.3.vec.extract, ptr %.2.i.2, align 1, !tbaa !17
  br label %bb.o

end_hunk_0
begin_hunk_1_@php_url_encode_to_smart_str:bb.a
bb.dg:                                            ; preds = %.lr.ph26.split
  %i.sx = icmp ult i8 %i.su, 48
  %i.sy = add i8 %i.su, -47
  %i.sz = icmp ult i8 %i.sy, -2
  %or.cond8.i = and i1 %i.sx, %i.sz
  %i.ta = add i8 %i.su, -58
  %or.cond11.i = icmp ult i8 %i.ta, 7
  %or.cond.i = or i1 %or.cond11.i, %or.cond8.i
  br i1 %or.cond.i, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.tb = add i8 %i.su, -97
  %or.cond14.i = icmp ult i8 %i.tb, -6
  %i.tc = icmp eq i8 %i.su, 95
  %or.cond17.i.not30 = or i1 %i.tc, %or.cond14.i
  %i.td = icmp ult i8 %i.su, 123
  %or.cond = and i1 %or.cond17.i.not30, %i.td
  br i1 %or.cond, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  store i8 37, ptr %.4.i25, align 1, !tbaa !17
  %i.te = lshr i32 %i.sv, 4
  %i.tf = zext nneg i32 %i.te to i64
  %i.tg = getelementptr inbounds nuw i8, ptr @hexchars, i64 %i.tf
  %i.th = load i8, ptr %i.tg, align 1, !tbaa !17
  %i.ti = getelementptr inbounds nuw i8, ptr %.4.i25, i64 1
  store i8 %i.th, ptr %i.ti, align 1, !tbaa !17
  %i.tj = and i32 %i.sv, 15
  %i.tk = zext nneg i32 %i.tj to i64
  %i.tl = getelementptr inbounds nuw i8, ptr @hexchars, i64 %i.tk
  %i.tm = load i8, ptr %i.tl, align 1, !tbaa !17
  %i.tn = getelementptr inbounds nuw i8, ptr %.4.i25, i64 2
  store i8 %i.tm, ptr %i.tn, align 1, !tbaa !17
  %i.to = getelementptr inbounds nuw i8, ptr %.4.i25, i64 3
  br label %bb.dk

bb.dj:                                            ; preds = %bb.dh
  %i.tp = getelementptr inbounds nuw i8, ptr %.4.i25, i64 1
  store i8 %i.su, ptr %.4.i25, align 1, !tbaa !17
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di, %bb.df
  %.5.i = phi ptr [ %i.sw, %bb.df ], [ %i.to, %bb.di ], [ %i.tp, %bb.dj ] ; 2 uses
  %exitcond.not = icmp eq ptr %i.st, %scevgep35
  br i1 %exitcond.not, label %php_url_encode_impl.exit, label %.lr.ph26.split, !llvm.loop !53

php_url_encode_impl.exit:                         ; preds = %bb.dk, %bb.bf, %.preheader
  %.4.i.lcssa = phi ptr [ %.0112.i.lcssa, %.preheader ], [ %.5.i.us, %bb.bf ], [ %.5.i, %bb.dk ]
  %i.tq = ptrtoint ptr %.4.i.lcssa to i64
  %i.tr = ptrtoint ptr %i.s to i64
  %i.ts = sub i64 %i.n, %i.tr
  %i.tt = add i64 %i.ts, %i.tq
  %i.tu = load ptr, ptr %0, align 8, !tbaa !57
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 16
  store i64 %i.tt, ptr %i.tv, align 8, !tbaa !36
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zif_rawurlencode(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !17
  %cond = icmp eq i32 %i.c, 1
  br i1 %cond, label %bb.b, label %.thread53, !prof !54

.thread53:                                        ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 1) #13
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i8, ptr %i.e, align 8, !tbaa !17
  %i.g = icmp eq i8 %i.f, 6
  br i1 %i.g, label %.split63.thread, label %zend_parse_arg_str_ex.exit, !prof !43

.split63.thread:                                  ; preds = %bb.b
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !40
  br label %.critedge

zend_parse_arg_str_ex.exit:                       ; preds = %bb.b
  %i.i = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, i32 noundef 1) #13
  %cond.fr43 = freeze i1 %i.i
  br i1 %cond.fr43, label %zend_parse_arg_str_ex.exit..critedge_crit_edge, label %bb.c, !prof !55

zend_parse_arg_str_ex.exit..critedge_crit_edge:   ; preds = %zend_parse_arg_str_ex.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !40
  br label %.critedge

bb.c:                                             ; preds = %zend_parse_arg_str_ex.exit, %.thread53
  %.03562 = phi i32 [ 1, %.thread53 ], [ 9, %zend_parse_arg_str_ex.exit ]
  %.03661 = phi i32 [ 0, %.thread53 ], [ 4, %zend_parse_arg_str_ex.exit ]
  %.03760 = phi ptr [ null, %.thread53 ], [ %i.d, %zend_parse_arg_str_ex.exit ]
  %.03859 = phi i32 [ 0, %.thread53 ], [ 1, %zend_parse_arg_str_ex.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.03562, i32 noundef %.03859, ptr noundef null, i32 noundef %.03661, ptr noundef %.03760) #13
  br label %bb.d

.critedge:                                        ; preds = %zend_parse_arg_str_ex.exit..critedge_crit_edge, %.split63.thread
  %i.j = phi ptr [ %.pre, %zend_parse_arg_str_ex.exit..critedge_crit_edge ], [ %i.h, %.split63.thread ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !36
  %i.n = call ptr @php_raw_url_encode(ptr noundef nonnull %i.k, i64 noundef %i.m)
  store ptr %i.n, ptr %1, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 262, ptr %i.o, align 8, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zif_rawurldecode(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !17
  %cond = icmp eq i32 %i.c, 1
  br i1 %cond, label %bb.b, label %.thread56, !prof !54

.thread56:                                        ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 1) #13
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i8, ptr %i.e, align 8, !tbaa !17
  %i.g = icmp eq i8 %i.f, 6
  br i1 %i.g, label %.split66.thread, label %zend_parse_arg_str_ex.exit, !prof !43

.split66.thread:                                  ; preds = %bb.b
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !40
  br label %.critedge

zend_parse_arg_str_ex.exit:                       ; preds = %bb.b
  %i.i = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, i32 noundef 1) #13
  %cond.fr46 = freeze i1 %i.i
  br i1 %cond.fr46, label %zend_parse_arg_str_ex.exit..critedge_crit_edge, label %bb.c, !prof !55

zend_parse_arg_str_ex.exit..critedge_crit_edge:   ; preds = %zend_parse_arg_str_ex.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !40
  br label %.critedge

bb.c:                                             ; preds = %zend_parse_arg_str_ex.exit, %.thread56
  %.03865 = phi i32 [ 1, %.thread56 ], [ 9, %zend_parse_arg_str_ex.exit ]
  %.03964 = phi i32 [ 0, %.thread56 ], [ 4, %zend_parse_arg_str_ex.exit ]
  %.04063 = phi ptr [ null, %.thread56 ], [ %i.d, %zend_parse_arg_str_ex.exit ]
  %.04162 = phi i32 [ 0, %.thread56 ], [ 1, %zend_parse_arg_str_ex.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.03865, i32 noundef %.04162, ptr noundef null, i32 noundef %.03964, ptr noundef %.04063) #13
  br label %bb.i

.critedge:                                        ; preds = %zend_parse_arg_str_ex.exit..critedge_crit_edge, %.split66.thread
  %i.j = phi ptr [ %.pre, %zend_parse_arg_str_ex.exit..critedge_crit_edge ], [ %i.h, %.split66.thread ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !36   ; 2 uses
  %i.m = and i64 %i.l, -8
  %i.n = add i64 %i.m, 32
  %i.o = call noalias ptr @_emalloc(i64 noundef %i.n) #17 ; 6 uses
  store i32 1, ptr %i.o, align 4, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 22, ptr %i.p, align 4, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 0, ptr %i.q, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  store i64 %i.l, ptr %i.r, align 8, !tbaa !36
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !36   ; 2 uses
  %.not25.i = icmp eq i64 %i.v, 0
  br i1 %.not25.i, label %php_raw_url_decode_ex.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.critedge
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.h
  %.028.i = phi ptr [ %i.az, %bb.h ], [ %i.w, %.lr.ph.i.preheader ] ; 4 uses
  %.01827.i = phi i64 [ %.119.i, %bb.h ], [ %i.v, %.lr.ph.i.preheader ] ; 2 uses
  %.02026.i = phi ptr [ %i.ba, %bb.h ], [ %i.s, %.lr.ph.i.preheader ] ; 3 uses
  %i.x = add i64 %.01827.i, -1                    ; 2 uses
  %i.y = load i8, ptr %.028.i, align 1, !tbaa !17 ; 2 uses
  %i.z = icmp eq i8 %i.y, 37
  %i.aa = icmp ugt i64 %i.x, 1
  %or.cond.i = and i1 %i.aa, %i.z
  br i1 %or.cond.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.lr.ph.i
  %i.ab = tail call ptr @__ctype_b_loc() #16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !28 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.028.i, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !17  ; 5 uses
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !30
  %i.ai = and i16 %i.ah, 4096
  %.not22.i = icmp eq i16 %i.ai, 0
  br i1 %.not22.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr i8, ptr %.028.i, i64 2    ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !17  ; 5 uses
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.al
  %i.an = load i16, ptr %i.am, align 2, !tbaa !30
  %i.ao = and i16 %i.an, 4096
  %.not23.i = icmp eq i16 %i.ao, 0
  br i1 %.not23.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %2 = and i8 %i.ae, -33
  %3 = add i8 %2, -65
  %or.cond13.i.i.i = icmp ult i8 %3, 6
  %4 = add i8 %i.ae, -48
  %5 = icmp ult i8 %4, 10
  %6 = or i1 %5, %or.cond13.i.i.i
  call void @llvm.assume(i1 %6)
  %i.ap = lshr i8 %i.ae, 6
  %i.aq = mul nuw nsw i8 %i.ap, 9
  %i.ar = add i8 %i.aq, %i.ae
  %i.as = shl i8 %i.ar, 4
  %7 = and i8 %i.ak, -33
  %8 = add i8 %7, -65
  %or.cond13.i5.i.i = icmp ult i8 %8, 6
  %9 = add i8 %i.ak, -48
  %10 = icmp ult i8 %9, 10
  %11 = or i1 %10, %or.cond13.i5.i.i
  call void @llvm.assume(i1 %11)
  %i.at = lshr i8 %i.ak, 6
  %i.au = mul nuw nsw i8 %i.at, 9
  %i.av = and i8 %i.ak, 15
  %i.aw = or disjoint i8 %i.av, %i.as
  %i.ax = add i8 %i.aw, %i.au
  store i8 %i.ax, ptr %.02026.i, align 1, !tbaa !17
  %i.ay = add i64 %.01827.i, -3
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d, %.lr.ph.i
  store i8 %i.y, ptr %.02026.i, align 1, !tbaa !17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.119.i = phi i64 [ %i.ay, %bb.f ], [ %i.x, %bb.g ] ; 2 uses
  %.1.i = phi ptr [ %i.aj, %bb.f ], [ %.028.i, %bb.g ]
  %i.az = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  %i.ba = getelementptr inbounds nuw i8, ptr %.02026.i, i64 1 ; 2 uses
  %.not.i = icmp eq i64 %.119.i, 0
  br i1 %.not.i, label %php_raw_url_decode_ex.exit, label %.lr.ph.i, !llvm.loop !60

php_raw_url_decode_ex.exit:                       ; preds = %bb.h, %.critedge
  %.020.lcssa.i = phi ptr [ %i.s, %.critedge ], [ %i.ba, %bb.h ] ; 2 uses
  store i8 0, ptr %.020.lcssa.i, align 1, !tbaa !17
  %i.bb = ptrtoint ptr %.020.lcssa.i to i64
  %i.bc = ptrtoint ptr %i.s to i64
  %i.bd = sub i64 %i.bb, %i.bc
  store i64 %i.bd, ptr %i.r, align 8, !tbaa !36
  store ptr %i.o, ptr %1, align 8, !tbaa !17
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 262, ptr %i.be, align 8, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %php_raw_url_decode_ex.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local noundef i64 @php_raw_url_decode_ex(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #9 {
bb.a:
  %.not25 = icmp eq i64 %2, 0
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.028 = phi ptr [ %i.ac, %bb.f ], [ %1, %bb.a ] ; 4 uses
  %.01827 = phi i64 [ %.119, %bb.f ], [ %2, %bb.a ] ; 2 uses
  %.02026 = phi ptr [ %i.ad, %bb.f ], [ %0, %bb.a ] ; 3 uses
  %i.a = add i64 %.01827, -1                      ; 2 uses
  %i.b = load i8, ptr %.028, align 1, !tbaa !17   ; 2 uses
  %i.c = icmp eq i8 %i.b, 37
  %i.d = icmp ugt i64 %i.a, 1
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %i.e = tail call ptr @__ctype_b_loc() #16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.028, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !17    ; 5 uses
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.i
  %i.k = load i16, ptr %i.j, align 2, !tbaa !30
  %i.l = and i16 %i.k, 4096
  %.not22 = icmp eq i16 %i.l, 0
  br i1 %.not22, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %.028, i64 2       ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !17    ; 5 uses
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2, !tbaa !30
  %i.r = and i16 %i.q, 4096
  %.not23 = icmp eq i16 %i.r, 0
  br i1 %.not23, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %3 = and i8 %i.h, -33
  %4 = add i8 %3, -65
  %or.cond13.i.i = icmp ult i8 %4, 6
  %5 = add i8 %i.h, -48
  %6 = icmp ult i8 %5, 10
  %7 = or i1 %6, %or.cond13.i.i
  tail call void @llvm.assume(i1 %7)
  %i.s = lshr i8 %i.h, 6
  %i.t = mul nuw nsw i8 %i.s, 9
  %i.u = add i8 %i.t, %i.h
  %i.v = shl i8 %i.u, 4
  %8 = and i8 %i.n, -33
  %9 = add i8 %8, -65
  %or.cond13.i5.i = icmp ult i8 %9, 6
  %10 = add i8 %i.n, -48
  %11 = icmp ult i8 %10, 10
  %12 = or i1 %11, %or.cond13.i5.i
  tail call void @llvm.assume(i1 %12)
  %i.w = lshr i8 %i.n, 6
  %i.x = mul nuw nsw i8 %i.w, 9
  %i.y = and i8 %i.n, 15
  %i.z = or disjoint i8 %i.y, %i.v
  %i.aa = add i8 %i.z, %i.x
  store i8 %i.aa, ptr %.02026, align 1, !tbaa !17
  %i.ab = add i64 %.01827, -3
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b, %.lr.ph
  store i8 %i.b, ptr %.02026, align 1, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.119 = phi i64 [ %i.ab, %bb.d ], [ %i.a, %bb.e ] ; 2 uses
  %.1 = phi ptr [ %i.m, %bb.d ], [ %.028, %bb.e ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.02026, i64 1 ; 2 uses
  %.not = icmp eq i64 %.119, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !60

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.020.lcssa = phi ptr [ %0, %bb.a ], [ %i.ad, %bb.f ] ; 2 uses
  store i8 0, ptr %.020.lcssa, align 1, !tbaa !17
  %i.ae = ptrtoint ptr %.020.lcssa to i64
  %i.af = ptrtoint ptr %0 to i64
  %i.ag = sub i64 %i.ae, %i.af
  ret i64 %i.ag
}

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local noundef i64 @php_raw_url_decode(ptr noundef %0, i64 noundef %1) local_unnamed_addr #9 {
bb.a:
  %.not25.i = icmp eq i64 %1, 0
  br i1 %.not25.i, label %php_raw_url_decode_ex.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.f
  %.028.i = phi ptr [ %i.ac, %bb.f ], [ %0, %bb.a ] ; 4 uses
  %.01827.i = phi i64 [ %.119.i, %bb.f ], [ %1, %bb.a ] ; 2 uses
  %.02026.i = phi ptr [ %i.ad, %bb.f ], [ %0, %bb.a ] ; 3 uses
  %i.a = add i64 %.01827.i, -1                    ; 2 uses
  %i.b = load i8, ptr %.028.i, align 1, !tbaa !17 ; 2 uses
  %i.c = icmp eq i8 %i.b, 37
  %i.d = icmp ugt i64 %i.a, 1
  %or.cond.i = and i1 %i.d, %i.c
  br i1 %or.cond.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = tail call ptr @__ctype_b_loc() #16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.028.i, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !17    ; 5 uses
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.i
  %i.k = load i16, ptr %i.j, align 2, !tbaa !30
  %i.l = and i16 %i.k, 4096
  %.not22.i = icmp eq i16 %i.l, 0
  br i1 %.not22.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %.028.i, i64 2     ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !17    ; 5 uses
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2, !tbaa !30
  %i.r = and i16 %i.q, 4096
  %.not23.i = icmp eq i16 %i.r, 0
  br i1 %.not23.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %2 = and i8 %i.h, -33
  %3 = add i8 %2, -65
  %or.cond13.i.i.i = icmp ult i8 %3, 6
  %4 = add i8 %i.h, -48
  %5 = icmp ult i8 %4, 10
  %6 = or i1 %5, %or.cond13.i.i.i
  tail call void @llvm.assume(i1 %6)
  %i.s = lshr i8 %i.h, 6
  %i.t = mul nuw nsw i8 %i.s, 9
  %i.u = add i8 %i.t, %i.h
  %i.v = shl i8 %i.u, 4
  %7 = and i8 %i.n, -33
  %8 = add i8 %7, -65
  %or.cond13.i5.i.i = icmp ult i8 %8, 6
  %9 = add i8 %i.n, -48
  %10 = icmp ult i8 %9, 10
  %11 = or i1 %10, %or.cond13.i5.i.i
  tail call void @llvm.assume(i1 %11)
  %i.w = lshr i8 %i.n, 6
  %i.x = mul nuw nsw i8 %i.w, 9
  %i.y = and i8 %i.n, 15
  %i.z = or disjoint i8 %i.y, %i.v
  %i.aa = add i8 %i.z, %i.x
  store i8 %i.aa, ptr %.02026.i, align 1, !tbaa !17
  %i.ab = add i64 %.01827.i, -3
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b, %.lr.ph.i
  store i8 %i.b, ptr %.02026.i, align 1, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.119.i = phi i64 [ %i.ab, %bb.d ], [ %i.a, %bb.e ] ; 2 uses
  %.1.i = phi ptr [ %i.m, %bb.d ], [ %.028.i, %bb.e ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.02026.i, i64 1 ; 2 uses
  %.not.i = icmp eq i64 %.119.i, 0
  br i1 %.not.i, label %php_raw_url_decode_ex.exit, label %.lr.ph.i, !llvm.loop !60

php_raw_url_decode_ex.exit:                       ; preds = %bb.f, %bb.a
  %.020.lcssa.i = phi ptr [ %0, %bb.a ], [ %i.ad, %bb.f ] ; 2 uses
  store i8 0, ptr %.020.lcssa.i, align 1, !tbaa !17
  %i.ae = ptrtoint ptr %.020.lcssa.i to i64
  %i.af = ptrtoint ptr %0 to i64
  %i.ag = sub i64 %i.ae, %i.af
  ret i64 %i.ag
}

; Function Attrs: nounwind uwtable
define hidden void @zif_get_headers(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i8 0, ptr %i.b, align 1, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17   ; 3 uses
  %i.e = add i32 %i.d, -4
  %or.cond = icmp ult i32 %i.e, -3
  br i1 %or.cond, label %bb.b, label %bb.c, !prof !42

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 3) #13
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load i8, ptr %i.g, align 8, !tbaa !17
  %i.i = icmp eq i8 %i.h, 6
  br i1 %i.i, label %zend_parse_arg_str_ex.exit.i.thread, label %zend_parse_arg_str_ex.exit.i, !prof !43

zend_parse_arg_str_ex.exit.i.thread:              ; preds = %bb.c
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !17   ; 2 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !40
  br label %bb.d

zend_parse_arg_str_ex.exit.i:                     ; preds = %bb.c
  %i.k = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, i32 noundef 1) #13
  br i1 %i.k, label %thread-pre-split, label %zend_parse_arg_path.exit

thread-pre-split:                                 ; preds = %zend_parse_arg_str_ex.exit.i
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !40
  br label %bb.d

bb.d:                                             ; preds = %thread-pre-split, %zend_parse_arg_str_ex.exit.i.thread
  %i.l = phi ptr [ %.pr, %thread-pre-split ], [ %i.j, %zend_parse_arg_str_ex.exit.i.thread ] ; 4 uses
  %.not.i135 = icmp eq ptr %i.l, null
  br i1 %.not.i135, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.p = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.o) #14
  %.not184 = icmp eq i64 %i.n, %i.p
  br i1 %.not184, label %bb.f, label %zend_parse_arg_path.exit, !prof !43

zend_parse_arg_path.exit:                         ; preds = %bb.e, %zend_parse_arg_str_ex.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.j

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.r = icmp eq i32 %i.d, 1
  br i1 %i.r, label %bb.k, label %bb.g, !prof !45

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.t = load i8, ptr %i.s, align 8, !tbaa !17
  switch i8 %i.t, label %zend_parse_arg_bool_ex.exit [
    i8 3, label %zend_parse_arg_bool_ex.exit.thread
    i8 2, label %zend_parse_arg_bool_ex.exit.thread.fold.split
  ], !prof !61

zend_parse_arg_bool_ex.exit.thread.fold.split:    ; preds = %bb.g
  br label %zend_parse_arg_bool_ex.exit.thread

zend_parse_arg_bool_ex.exit.thread:               ; preds = %bb.g, %zend_parse_arg_bool_ex.exit.thread.fold.split
  %storemerge.i137 = phi i8 [ 1, %bb.g ], [ 0, %zend_parse_arg_bool_ex.exit.thread.fold.split ]
  store i8 %storemerge.i137, ptr %i.b, align 1, !tbaa !26
  br label %bb.h

zend_parse_arg_bool_ex.exit:                      ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.v = call zeroext i1 @zend_parse_arg_bool_slow(ptr noundef nonnull %i.u, ptr noundef nonnull %i.b, i32 noundef 2) #13
  br i1 %i.v, label %bb.h, label %bb.j, !prof !55

bb.h:                                             ; preds = %zend_parse_arg_bool_ex.exit.thread, %zend_parse_arg_bool_ex.exit
  %.not = icmp eq i32 %i.d, 3
  br i1 %.not, label %bb.i, label %bb.k, !prof !43

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.y = load i8, ptr %i.x, align 8, !tbaa !17
  switch i8 %i.y, label %bb.j [
    i8 9, label %.critedge
    i8 1, label %bb.k
  ], !prof !61

bb.j:                                             ; preds = %bb.i, %bb.b, %zend_parse_arg_bool_ex.exit, %zend_parse_arg_path.exit
  %.0114.ph = phi i32 [ 3, %bb.i ], [ 1, %zend_parse_arg_path.exit ], [ 2, %zend_parse_arg_bool_ex.exit ], [ 0, %bb.b ]
  %.0113.ph = phi ptr [ %i.w, %bb.i ], [ %i.f, %zend_parse_arg_path.exit ], [ %i.u, %zend_parse_arg_bool_ex.exit ], [ null, %bb.b ]
  %.0112.ph = phi i32 [ 15, %bb.i ], [ 16, %zend_parse_arg_path.exit ], [ 2, %zend_parse_arg_bool_ex.exit ], [ 0, %bb.b ]
  %.0111.ph = phi i32 [ 9, %bb.i ], [ 9, %zend_parse_arg_path.exit ], [ 9, %zend_parse_arg_bool_ex.exit ], [ 1, %bb.b ]
  call void @zend_wrong_parameter_error(i32 noundef %.0111.ph, i32 noundef %.0114.ph, ptr noundef null, i32 noundef %.0112.ph, ptr noundef %.0113.ph) #13
  br label %bb.ab

.critedge:                                        ; preds = %bb.i
  %i.z = call i32 @php_le_stream_context() #13
  %i.aa = call ptr @zend_fetch_resource_ex(ptr noundef nonnull %i.w, ptr noundef nonnull @.str.4, i32 noundef %i.z) #13
  br label %bb.m

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.f
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @file_globals, i64 56), align 8, !tbaa !62 ; 2 uses
  %.not123 = icmp eq ptr %i.ab, null
  br i1 %.not123, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ac = call ptr @php_stream_context_alloc() #13 ; 2 uses
  store ptr %i.ac, ptr getelementptr inbounds nuw (i8, ptr @file_globals, i64 56), align 8, !tbaa !62
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %.critedge
  %i.ad = phi ptr [ %i.aa, %.critedge ], [ %i.ac, %bb.l ], [ %i.ab, %bb.k ]
  %i.ae = call ptr @_php_stream_open_wrapper_ex(ptr noundef nonnull %i.q, ptr noundef nonnull @.str.5, i32 noundef 776, ptr noundef null, ptr noundef %i.ad) #13 ; 5 uses
  %.not124 = icmp eq ptr %i.ae, null
  br i1 %.not124, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 2, ptr %i.af, align 8, !tbaa !17
  br label %bb.ab

bb.o:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !17
  %.not125 = icmp eq i8 %i.ah, 7
  br i1 %.not125, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ai = call i32 @_php_stream_free(ptr noundef nonnull %i.ae, i32 noundef 3) #13 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 2, ptr %i.aj, align 8, !tbaa !17
  br label %bb.ab

bb.q:                                             ; preds = %bb.o
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  %i.al = call ptr @_zend_new_array_0() #13
  store ptr %i.al, ptr %1, align 8, !tbaa !17
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 775, ptr %i.am, align 8, !tbaa !17
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !17 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !69 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !17
  %i.as = shl i32 %i.ar, 2
  %i.at = and i32 %i.as, 16
  %narrow = sub nuw nsw i32 32, %i.at
  %i.au = zext nneg i32 %narrow to i64
  %.not126187 = icmp eq i32 %i.ap, 0
  br i1 %.not126187, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !17
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.aa
  %.0108189 = phi ptr [ %i.cp, %bb.aa ], [ %i.aw, %.lr.ph.preheader ] ; 6 uses
  %.0109188 = phi i32 [ %i.cq, %bb.aa ], [ %i.ap, %.lr.ph.preheader ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0108189, i64 8
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !17
  %cond = icmp eq i8 %i.ay, 6
end_hunk_1
