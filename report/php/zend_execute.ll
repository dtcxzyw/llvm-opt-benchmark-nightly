Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_execute?download=true
inline.NumInlined: 310
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 41
begin_hunk_0_@ZEND_GENERATOR_RETURN_SPEC_VAR_HANDLER:bb.a
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.c, label %bb.d, !prof !80

bb.c:                                             ; preds = %bb.b
  tail call void @_efree_32(ptr noundef nonnull %i.j) #34
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.u = load i32, ptr %i.n, align 8              ; 2 uses
  %i.v = and i32 %i.u, 65280
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = and i32 %i.u, 65280
  %i.x = icmp ne i32 %i.w, 0
  tail call void @llvm.assume(i1 %i.x)
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !75   ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !76
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !76
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !75
  %i.ad = load i32, ptr %i.g, align 8, !tbaa !75
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !75
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !75
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !77
  store ptr %i.ag, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), align 8, !tbaa !70
  tail call void @zend_generator_close(ptr noundef nonnull %i.b, i1 noundef zeroext true) #34
  ret ptr inttoptr (i64 1 to ptr)
}

; Function Attrs: nounwind uwtable
define internal noundef nonnull ptr @ZEND_GENERATOR_RETURN_SPEC_CV_HANDLER(ptr nofree noundef captures(none) initializes((0, 8)) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !190  ; 3 uses
  store ptr %1, ptr %0, align 8, !tbaa !78
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !75   ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i8, ptr %i.g, align 8, !tbaa !75
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.b, label %_get_zval_ptr_cv_BP_VAR_R.exit, !prof !80

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @zval_undefined_cv(i32 noundef %i.d, ptr noundef nonnull %0)
  br label %_get_zval_ptr_cv_BP_VAR_R.exit

_get_zval_ptr_cv_BP_VAR_R.exit:                   ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ @executor_globals, %bb.b ], [ %i.f, %bb.a ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.k = load i32, ptr %i.j, align 8              ; 3 uses
  %i.l = and i32 %i.k, 65280
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_get_zval_ptr_cv_BP_VAR_R.exit
  %i.m = and i32 %i.k, 255
  %i.n = icmp eq i32 %i.m, 10
  br i1 %i.n, label %bb.d, label %.sink.split, !prof !80

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %.0.i, align 8, !tbaa !75  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.r = load i32, ptr %i.q, align 8              ; 2 uses
  %i.s = and i32 %i.r, 65280
  %.not21 = icmp eq i32 %i.s, 0
  br i1 %.not21, label %bb.e, label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.d
  %.sink26 = phi i32 [ %i.r, %bb.d ], [ %i.k, %bb.c ]
  %.sink.in = phi ptr [ %i.p, %bb.d ], [ %.0.i, %bb.c ] ; 2 uses
  %i.t = and i32 %.sink26, 65280
  %i.u = icmp ne i32 %i.t, 0
  tail call void @llvm.assume(i1 %i.u)
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !75 ; 2 uses
  %i.v = load i32, ptr %.sink, align 4, !tbaa !76
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %.sink, align 4, !tbaa !76
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %_get_zval_ptr_cv_BP_VAR_R.exit, %bb.d
  %.0 = phi ptr [ %.0.i, %_get_zval_ptr_cv_BP_VAR_R.exit ], [ %i.p, %bb.d ], [ %.sink.in, %.sink.split ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.y = load ptr, ptr %.0, align 8, !tbaa !75
  %i.z = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !75
  store ptr %i.y, ptr %i.x, align 8, !tbaa !75
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !75
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !77
  store ptr %i.ad, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), align 8, !tbaa !70
  tail call void @zend_generator_close(ptr noundef %i.b, i1 noundef zeroext true) #34
  ret ptr inttoptr (i64 1 to ptr)
}

; Function Attrs: nounwind uwtable
define internal ptr @ZEND_FAST_CALL_SPEC_HANDLER(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !75
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !75
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !74
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !75
  %i.i = ptrtoint ptr %1 to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = lshr exact i64 %i.k, 5
  %i.m = trunc i64 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 %i.m, ptr %i.n, align 4, !tbaa !75
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !75
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr %1, i64 %i.q
  %i.s = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 574) seq_cst, align 2, !range !84, !noundef !85
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.b, label %bb.c, !prof !80

bb.b:                                             ; preds = %bb.a
  %i.u = tail call fastcc ptr @zend_interrupt_helper_SPEC(ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.u, %bb.b ], [ %i.r, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @ZEND_FAST_RET_SPEC_HANDLER(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !75
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !75   ; 2 uses
  %.not = icmp eq i32 %i.f, -1
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !74
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !75
  %i.k = zext i32 %i.f to i64
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 574) seq_cst, align 2, !range !84, !noundef !85
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %bb.e, !prof !80

bb.c:                                             ; preds = %bb.b
  %i.p = tail call fastcc ptr @zend_interrupt_helper_SPEC(ptr noundef nonnull %0)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !75
  store ptr %i.q, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !82
  store ptr null, ptr %i.d, align 8, !tbaa !75
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !75
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !74
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !75
  %i.x = ptrtoint ptr %1 to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = lshr exact i64 %i.z, 5
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = tail call fastcc ptr @zend_dispatch_try_catch_finally_helper_SPEC(ptr noundef nonnull %0, i32 noundef %i.s, i32 noundef %i.ab)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.1 = phi ptr [ %i.ac, %bb.d ], [ %i.p, %bb.c ], [ %i.m, %bb.b ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal ptr @ZEND_RECV_VARIADIC_SPEC_UNUSED_HANDLER(ptr noundef initializes((0, 8)) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !75   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !75   ; 5 uses
  store ptr %1, ptr %0, align 8, !tbaa !78
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !75
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds i8, ptr %0, i64 %i.g ; 14 uses
  %.not = icmp ugt i32 %i.b, %i.d
  br i1 %.not, label %bb.ag, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !74   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !75   ; 2 uses
  %i.m = add i32 %i.b, -1
  %i.n = icmp eq i32 %i.l, %i.m
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !75
  %i.q = zext i32 %i.l to i64
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.q ; 3 uses
  %i.s = sub nuw i32 %i.d, %i.b
  %i.t = add i32 %i.s, 1
  %i.u = tail call ptr @_zend_new_array(i32 noundef %i.t) #34 ; 2 uses
  store ptr %i.u, ptr %i.h, align 8, !tbaa !75
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 775, ptr %i.v, align 8, !tbaa !75
  tail call void @zend_hash_real_init_packed(ptr noundef %i.u) #34
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !75   ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !75
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 5 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !156 ; 3 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !74  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 92
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !75
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !75
  %i.ai = add i32 %i.ah, %i.af
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr [16 x i8], ptr %0, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 80     ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !233
  %i.ao = and i32 %i.an, 33554431
  %.not202 = icmp eq i32 %i.ao, 0
  br i1 %.not202, label %.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !75
  %i.ar = or i32 %i.aq, 524288
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !75
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.ad, %bb.c
  %.0187 = phi ptr [ %i.al, %bb.c ], [ %i.fd, %bb.ad ] ; 7 uses
  %.0183 = phi i32 [ %i.aa, %bb.c ], [ %i.fc, %bb.ad ] ; 4 uses
  %.0181 = phi ptr [ %i.ac, %bb.c ], [ %i.fb, %bb.ad ] ; 3 uses
  %.0175 = phi i32 [ %i.b, %bb.c ], [ %i.fe, %bb.ad ] ; 2 uses
  %i.at = load ptr, ptr %i.i, align 8, !tbaa !74
  %i.au = load i32, ptr %i.am, align 8, !tbaa !233 ; 5 uses
  %i.av = and i32 %i.au, 33554431
  %i.aw = icmp ne i32 %i.av, 0
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds nuw i8, ptr %.0187, i64 8 ; 3 uses
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !75  ; 2 uses
  %i.az = icmp eq i8 %i.ay, 10
  br i1 %i.az, label %bb.e, label %bb.f, !prof !80

bb.e:                                             ; preds = %bb.d
  %i.ba = load ptr, ptr %.0187, align 8, !tbaa !75 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !75
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bc = phi i8 [ %.pre, %bb.e ], [ %i.ay, %bb.d ] ; 2 uses
  %.012.i.i217 = phi ptr [ %i.bb, %bb.e ], [ %.0187, %bb.d ] ; 8 uses
  %.0.i.i218 = phi ptr [ %i.ba, %bb.e ], [ null, %bb.d ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i217, i64 8
  %i.be = zext nneg i8 %i.bc to i32
  %i.bf = shl nuw i32 1, %i.be
  %i.bg = and i32 %i.bf, %i.au
  %.not.i.i219 = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i219, label %bb.g, label %zend_check_type.exit.i220.thread, !prof !80

bb.g:                                             ; preds = %bb.f
  %i.bh = and i32 %i.au, 29360128
  %.not.i.i.i222 = icmp ne i32 %i.bh, 0
  %i.bi = icmp eq i8 %i.bc, 8
  %or.cond = and i1 %.not.i.i.i222, %i.bi
  br i1 %or.cond, label %bb.h, label %zend_fetch_ce_from_type.exit.i.i258.thread, !prof !252

bb.h:                                             ; preds = %bb.g
  %i.bj = and i32 %i.au, 4194304
  %.not52.i.i.i237 = icmp eq i32 %i.bj, 0
  br i1 %.not52.i.i.i237, label %bb.p, label %bb.i, !prof !69

bb.i:                                             ; preds = %bb.h
  %i.bk = and i32 %i.au, 524288
  %.not54.i.i.i238 = icmp eq i32 %i.bk, 0
  %i.bl = load ptr, ptr %i.as, align 8, !tbaa !115 ; 3 uses
  br i1 %.not54.i.i.i238, label %bb.j, label %zend_check_type.exit.i220

bb.j:                                             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load i32, ptr %i.bl, align 8, !tbaa !117 ; 2 uses
  %i.bo = zext i32 %i.bn to i64
  %.idx = shl nuw nsw i64 %i.bo, 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx
  %.not58.i.i.i242348.not = icmp eq i32 %i.bn, 0
  br i1 %.not58.i.i.i242348.not, label %zend_fetch_ce_from_type.exit.i.i258.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %zend_fetch_ce_from_type.exit21.i.i249.thread
  %.0.i.i.i241349 = phi ptr [ %i.cu, %zend_fetch_ce_from_type.exit21.i.i249.thread ], [ %i.bm, %bb.j ] ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i.i.i241349, i64 8
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !114 ; 2 uses
  %i.bs = and i32 %i.br, 524288
  %.not55.i.i.i244 = icmp eq i32 %i.bs, 0
  br i1 %.not55.i.i.i244, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.bt = load ptr, ptr %.0.i.i.i241349, align 8, !tbaa !115
  %i.bu = load ptr, ptr %.012.i.i217, align 8, !tbaa !75
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !113
  %i.bx = tail call fastcc zeroext i1 @zend_check_intersection_type_from_list(ptr noundef %i.bt, ptr noundef %i.bw)
  br i1 %i.bx, label %zend_check_type.exit.i220.thread, label %zend_fetch_ce_from_type.exit21.i.i249.thread, !prof !253

bb.l:                                             ; preds = %.lr.ph
  %i.by = and i32 %i.br, 4194304
  %.not56.i.i.i245 = icmp eq i32 %i.by, 0
  tail call void @llvm.assume(i1 %.not56.i.i.i245)
  %i.bz = load ptr, ptr %.0.i.i.i241349, align 8, !tbaa !115 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !75
  %i.cc = and i32 %i.cb, 32
  %.not.i15.i.i246 = icmp eq i32 %i.cc, 0
  br i1 %.not.i15.i.i246, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = load i32, ptr %i.bz, align 4, !tbaa !76 ; 2 uses
  %i.ce = add i32 %i.cd, -1
  %i.cf = lshr i32 %i.ce, 3
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = load i64, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 528), align 8, !tbaa !131
  %i.ci = icmp ugt i64 %i.ch, %i.cg
  br i1 %i.ci, label %bb.n, label %.thread, !prof !69

bb.n:                                             ; preds = %bb.m
  %i.cj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 512), align 8, !tbaa !132
  %i.ck = zext i32 %i.cd to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !109 ; 2 uses
  %.not14.i16.i.i247 = icmp eq ptr %i.cm, null
  br i1 %.not14.i16.i.i247, label %.thread, label %zend_fetch_ce_from_type.exit21.i.i249

.thread:                                          ; preds = %bb.m, %bb.n
  %i.cn = tail call ptr @zend_lookup_class_ex(ptr noundef nonnull %i.bz, ptr noundef null, i32 noundef 128) #34 ; 2 uses
  %.not15.i19.i.i253 = icmp eq ptr %i.cn, null
  br i1 %.not15.i19.i.i253, label %zend_fetch_ce_from_type.exit21.i.i249.thread, label %zend_fetch_ce_from_type.exit21.i.i249, !prof !80

bb.o:                                             ; preds = %bb.l
  %i.co = tail call ptr @zend_fetch_class(ptr noundef nonnull %i.bz, i32 noundef 388) #34 ; 2 uses
  %.not13.i20.i.i254 = icmp eq ptr %i.co, null
  br i1 %.not13.i20.i.i254, label %zend_fetch_ce_from_type.exit21.i.i249.thread, label %zend_fetch_ce_from_type.exit21.i.i249, !prof !80

zend_fetch_ce_from_type.exit21.i.i249:            ; preds = %bb.o, %.thread, %bb.n
  %.0.i17.i.i248 = phi ptr [ %i.cm, %bb.n ], [ %i.cn, %.thread ], [ %i.co, %bb.o ] ; 2 uses
  %i.cp = load ptr, ptr %.012.i.i217, align 8, !tbaa !75
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !113 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %.0.i17.i.i248
  br i1 %i.cs, label %zend_check_type.exit.i220.thread, label %instanceof_function.exit22.i.i252, !prof !253

instanceof_function.exit22.i.i252:                ; preds = %zend_fetch_ce_from_type.exit21.i.i249
  %i.ct = tail call zeroext i1 @instanceof_function_slow(ptr noundef %i.cr, ptr noundef nonnull %.0.i17.i.i248) #34
  br i1 %i.ct, label %zend_check_type.exit.i220.thread, label %zend_fetch_ce_from_type.exit21.i.i249.thread, !prof !253

zend_fetch_ce_from_type.exit21.i.i249.thread:     ; preds = %bb.o, %.thread, %instanceof_function.exit22.i.i252, %bb.k
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i.i.i241349, i64 16 ; 2 uses
  %.not58.i.i.i242 = icmp ult ptr %i.cu, %i.bp
  br i1 %.not58.i.i.i242, label %.lr.ph, label %zend_fetch_ce_from_type.exit.i.i258.thread, !llvm.loop !0

bb.p:                                             ; preds = %bb.h
  %i.cv = load ptr, ptr %i.as, align 8, !tbaa !115 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !75
  %i.cy = and i32 %i.cx, 32
  %.not.i13.i.i255 = icmp eq i32 %i.cy, 0
  br i1 %.not.i13.i.i255, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cz = load i32, ptr %i.cv, align 4, !tbaa !76 ; 2 uses
  %i.da = add i32 %i.cz, -1
  %i.db = lshr i32 %i.da, 3
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = load i64, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 528), align 8, !tbaa !131
  %i.de = icmp ugt i64 %i.dd, %i.dc
  br i1 %i.de, label %bb.r, label %.thread268, !prof !69

bb.r:                                             ; preds = %bb.q
  %i.df = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 512), align 8, !tbaa !132
  %i.dg = zext i32 %i.cz to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !109 ; 2 uses
  %.not14.i.i.i256 = icmp eq ptr %i.di, null
  br i1 %.not14.i.i.i256, label %.thread268, label %zend_fetch_ce_from_type.exit.i.i258

.thread268:                                       ; preds = %bb.q, %bb.r
  %i.dj = tail call ptr @zend_lookup_class_ex(ptr noundef nonnull %i.cv, ptr noundef null, i32 noundef 128) #34 ; 2 uses
  %.not15.i.i.i262 = icmp eq ptr %i.dj, null
  br i1 %.not15.i.i.i262, label %zend_fetch_ce_from_type.exit.i.i258.thread, label %zend_fetch_ce_from_type.exit.i.i258, !prof !80

bb.s:                                             ; preds = %bb.p
  %i.dk = tail call ptr @zend_fetch_class(ptr noundef nonnull %i.cv, i32 noundef 388) #34 ; 2 uses
  %.not13.i.i.i263 = icmp eq ptr %i.dk, null
  br i1 %.not13.i.i.i263, label %zend_fetch_ce_from_type.exit.i.i258.thread, label %zend_fetch_ce_from_type.exit.i.i258, !prof !80

zend_fetch_ce_from_type.exit.i.i258:              ; preds = %bb.s, %.thread268, %bb.r
  %.0.i14.i.i257 = phi ptr [ %i.di, %bb.r ], [ %i.dj, %.thread268 ], [ %i.dk, %bb.s ] ; 2 uses
  %i.dl = load ptr, ptr %.012.i.i217, align 8, !tbaa !75
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !113 ; 2 uses
  %i.do = icmp eq ptr %i.dn, %.0.i14.i.i257
  br i1 %i.do, label %zend_check_type.exit.i220.thread, label %instanceof_function.exit.i.i261, !prof !253

instanceof_function.exit.i.i261:                  ; preds = %zend_fetch_ce_from_type.exit.i.i258
  %i.dp = tail call zeroext i1 @instanceof_function_slow(ptr noundef %i.dn, ptr noundef nonnull %.0.i14.i.i257) #34
  br i1 %i.dp, label %zend_check_type.exit.i220.thread, label %zend_fetch_ce_from_type.exit.i.i258.thread, !prof !253

zend_fetch_ce_from_type.exit.i.i258.thread:       ; preds = %zend_fetch_ce_from_type.exit21.i.i249.thread, %bb.j, %bb.s, %.thread268, %instanceof_function.exit.i.i261, %bb.g
  %i.dq = load i32, ptr %i.am, align 8, !tbaa !114 ; 3 uses
  %i.dr = and i32 %i.dq, 4096
  %.not59.i.i.i223 = icmp eq i32 %i.dr, 0
  br i1 %.not59.i.i.i223, label %bb.u, label %bb.t

bb.t:                                             ; preds = %zend_fetch_ce_from_type.exit.i.i258.thread
  %i.ds = tail call zeroext i1 @zend_is_callable(ptr noundef %.012.i.i217, i32 noundef 0, ptr noundef null) #34
  br i1 %i.ds, label %zend_check_type.exit.i220.thread, label %bb.u

bb.u:                                             ; preds = %bb.t, %zend_fetch_ce_from_type.exit.i.i258.thread
  %i.dt = and i32 %i.dq, 32768
  %.not60.i.i.i224 = icmp eq i32 %i.dt, 0
  br i1 %.not60.i.i.i224, label %zend_value_instanceof_static.exit.i.i226.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.du = load i8, ptr %i.bd, align 8, !tbaa !75
  %.not.i23.i.i225 = icmp eq i8 %i.du, 8
  br i1 %.not.i23.i.i225, label %bb.w, label %zend_value_instanceof_static.exit.i.i226.thread

bb.w:                                             ; preds = %bb.v
  %i.dv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), align 8, !tbaa !70
  %i.dw = tail call ptr @zend_get_called_scope(ptr noundef %i.dv) #34 ; 3 uses
  %.not6.i.i.i235 = icmp eq ptr %i.dw, null
  br i1 %.not6.i.i.i235, label %zend_value_instanceof_static.exit.i.i226.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dx = load ptr, ptr %.012.i.i217, align 8, !tbaa !75
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !113 ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.dw
  br i1 %i.ea, label %zend_check_type.exit.i220.thread, label %zend_value_instanceof_static.exit.i.i226

zend_value_instanceof_static.exit.i.i226:         ; preds = %bb.x
  %i.eb = tail call zeroext i1 @instanceof_function_slow(ptr noundef %i.dz, ptr noundef nonnull %i.dw) #34
  br i1 %i.eb, label %zend_check_type.exit.i220.thread, label %zend_value_instanceof_static.exit.i.i226.thread

zend_value_instanceof_static.exit.i.i226.thread:  ; preds = %bb.w, %bb.v, %zend_value_instanceof_static.exit.i.i226, %bb.u
  %.not61.i.i.i228 = icmp eq ptr %.0.i.i218, null
  br i1 %.not61.i.i.i228, label %bb.z, label %bb.y

bb.y:                                             ; preds = %zend_value_instanceof_static.exit.i.i226.thread
  %i.ec = getelementptr inbounds nuw i8, ptr %.0.i.i218, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !75
  %.not62.i.i.i229 = icmp eq ptr %i.ed, null
  br i1 %.not62.i.i.i229, label %bb.z, label %zend_check_type.exit.i220.thread280, !prof !254

bb.z:                                             ; preds = %bb.y, %zend_value_instanceof_static.exit.i.i226.thread
  %i.ee = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), align 8, !tbaa !70
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 48
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !77 ; 2 uses
  %.not63.i.i.i232 = icmp eq ptr %i.eg, null
  br i1 %.not63.i.i.i232, label %.split, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !74 ; 2 uses
  %.not64.i.i.i233 = icmp eq ptr %i.ei, null
  br i1 %.not64.i.i.i233, label %.split, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !75
  %i.el = icmp slt i32 %i.ek, 0
  br label %.split

.split:                                           ; preds = %bb.ab, %bb.aa, %bb.z
  %i.em = phi i1 [ %i.el, %bb.ab ], [ false, %bb.aa ], [ false, %bb.z ]
  %i.en = tail call zeroext i1 @zend_verify_scalar_type_hint(i32 noundef %i.dq, ptr noundef %.012.i.i217, i1 noundef zeroext %i.em, i1 noundef zeroext false)
  br i1 %i.en, label %zend_check_type.exit.i220.thread, label %zend_check_type.exit.i220.thread280, !prof !106

zend_check_type.exit.i220:                        ; preds = %bb.i
  %i.eo = load ptr, ptr %.012.i.i217, align 8, !tbaa !75
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !113
  %i.er = tail call fastcc zeroext i1 @zend_check_intersection_type_from_list(ptr noundef %i.bl, ptr noundef %i.eq)
  br i1 %i.er, label %zend_check_type.exit.i220.thread, label %zend_check_type.exit.i220.thread280, !prof !106

zend_check_type.exit.i220.thread:                 ; preds = %zend_fetch_ce_from_type.exit21.i.i249, %instanceof_function.exit22.i.i252, %bb.k, %zend_fetch_ce_from_type.exit.i.i258, %instanceof_function.exit.i.i261, %bb.x, %zend_value_instanceof_static.exit.i.i226, %bb.t, %bb.f, %zend_check_type.exit.i220, %.split
  %i.es = load i32, ptr %i.ax, align 8            ; 3 uses
  %i.et = and i32 %i.es, 65280
  %.not205 = icmp eq i32 %i.et, 0
  %.pre378 = load ptr, ptr %.0187, align 8, !tbaa !75 ; 3 uses
  br i1 %.not205, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %zend_check_type.exit.i220.thread
  %i.eu = and i32 %i.es, 65280
  %i.ev = icmp ne i32 %i.eu, 0
  tail call void @llvm.assume(i1 %i.ev)
  %i.ew = load i32, ptr %.pre378, align 4, !tbaa !76
  %i.ex = add i32 %i.ew, 1
  store i32 %i.ex, ptr %.pre378, align 4, !tbaa !76
  %.pre377 = load ptr, ptr %.0187, align 8, !tbaa !75
  %.pre379 = load i32, ptr %i.ax, align 8, !tbaa !75
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %zend_check_type.exit.i220.thread
  %i.ey = phi i32 [ %.pre379, %bb.ac ], [ %i.es, %zend_check_type.exit.i220.thread ]
  %i.ez = phi ptr [ %.pre377, %bb.ac ], [ %.pre378, %zend_check_type.exit.i220.thread ]
  store ptr %i.ez, ptr %.0181, align 8, !tbaa !75
  %i.fa = getelementptr inbounds nuw i8, ptr %.0181, i64 8
  store i32 %i.ey, ptr %i.fa, align 8, !tbaa !75
  %i.fb = getelementptr inbounds nuw i8, ptr %.0181, i64 16
  %i.fc = add i32 %.0183, 1                       ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.0187, i64 16
  %i.fe = add i32 %.0175, 1                       ; 3 uses
  %.not206 = icmp ugt i32 %i.fe, %i.d
  br i1 %.not206, label %.loopexit, label %bb.d, !llvm.loop !443

.preheader:                                       ; preds = %bb.b, %bb.af
  %.1188 = phi ptr [ %i.fs, %bb.af ], [ %i.al, %bb.b ] ; 4 uses
  %.1184 = phi i32 [ %i.fr, %bb.af ], [ %i.aa, %bb.b ]
  %.1182 = phi ptr [ %i.fq, %bb.af ], [ %i.ac, %bb.b ] ; 3 uses
  %.1176 = phi i32 [ %i.ft, %bb.af ], [ %i.b, %bb.b ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.1188, i64 8 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 8            ; 3 uses
  %i.fh = and i32 %i.fg, 65280
  %.not203 = icmp eq i32 %i.fh, 0
  br i1 %.not203, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.preheader
  %i.fi = and i32 %i.fg, 65280
  %i.fj = icmp ne i32 %i.fi, 0
  tail call void @llvm.assume(i1 %i.fj)
  %i.fk = load ptr, ptr %.1188, align 8, !tbaa !75 ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !76
  %i.fm = add i32 %i.fl, 1
  store i32 %i.fm, ptr %i.fk, align 4, !tbaa !76
  %.pre380 = load i32, ptr %i.ff, align 8, !tbaa !75
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.preheader
  %i.fn = phi i32 [ %.pre380, %bb.ae ], [ %i.fg, %.preheader ]
  %i.fo = load ptr, ptr %.1188, align 8, !tbaa !75
  store ptr %i.fo, ptr %.1182, align 8, !tbaa !75
  %i.fp = getelementptr inbounds nuw i8, ptr %.1182, i64 8
  store i32 %i.fn, ptr %i.fp, align 8, !tbaa !75
  %i.fq = getelementptr inbounds nuw i8, ptr %.1182, i64 16
  %i.fr = add i32 %.1184, 1                       ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.1188, i64 16
  %i.ft = add i32 %.1176, 1                       ; 2 uses
  %.not204 = icmp ugt i32 %i.ft, %i.d
  br i1 %.not204, label %.loopexit.loopexit, label %.preheader, !llvm.loop !444

zend_check_type.exit.i220.thread280:              ; preds = %bb.y, %zend_check_type.exit.i220, %.split
  tail call void @zend_verify_arg_error(ptr noundef %i.at, ptr noundef nonnull %i.r, i32 noundef %.0175, ptr noundef %.0187)
  %i.fu = load i32, ptr %i.z, align 8, !tbaa !156
  %i.fv = sub i32 %.0183, %i.fu
  %i.fw = getelementptr inbounds nuw i8, ptr %i.w, i64 28 ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !219
  %i.fy = add i32 %i.fv, %i.fx
  store i32 %i.fy, ptr %i.fw, align 4, !tbaa !219
  store i32 %.0183, ptr %i.z, align 8, !tbaa !156
  %i.fz = zext i32 %.0183 to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store i64 %i.fz, ptr %i.ga, align 8, !tbaa !327
  %i.gb = getelementptr inbounds nuw i8, ptr %i.w, i64 36
  store i32 0, ptr %i.gb, align 4, !tbaa !328
  %i.gc = load ptr, ptr %0, align 8, !tbaa !78
  br label %.critedge

.loopexit.loopexit:                               ; preds = %bb.af
  %2 = add i32 %i.b, 1
  %3 = add nuw i32 %i.d, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %2, i32 %3)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ad, %.loopexit.loopexit
  %.3186.ph = phi i32 [ %i.fr, %.loopexit.loopexit ], [ %i.fc, %bb.ad ] ; 3 uses
  %.3178.ph = phi i32 [ %umax, %.loopexit.loopexit ], [ %i.fe, %bb.ad ]
  %i.gd = load i32, ptr %i.z, align 8, !tbaa !156
  %i.ge = sub i32 %.3186.ph, %i.gd
  %i.gf = getelementptr inbounds nuw i8, ptr %i.w, i64 28 ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !219
  %i.gh = add i32 %i.ge, %i.gg
  store i32 %i.gh, ptr %i.gf, align 4, !tbaa !219
  store i32 %.3186.ph, ptr %i.z, align 8, !tbaa !156
  %i.gi = zext i32 %.3186.ph to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store i64 %i.gi, ptr %i.gj, align 8, !tbaa !327
  %i.gk = getelementptr inbounds nuw i8, ptr %i.w, i64 36
  store i32 0, ptr %i.gk, align 4, !tbaa !328
  br label %bb.ah

bb.ag:                                            ; preds = %bb.a
  store ptr @zend_empty_array, ptr %i.h, align 8, !tbaa !75
  %i.gl = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 7, ptr %i.gl, align 8, !tbaa !75
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit, %bb.ag
  %.4179 = phi i32 [ %.3178.ph, %.loopexit ], [ %i.b, %bb.ag ]
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !75
  %i.go = and i32 %i.gn, 134217728
  %.not207 = icmp eq i32 %i.go, 0
  br i1 %.not207, label %.thread330, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !74 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 40
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !75
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 32
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !75
  %i.gv = zext i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw [32 x i8], ptr %i.gs, i64 %i.gv ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16 ; 3 uses
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !233
  %i.gz = and i32 %i.gy, 33554431
  %.not208 = icmp eq i32 %i.gz, 0
  %i.ha = load ptr, ptr %i.h, align 8, !tbaa !75  ; 11 uses
  br i1 %.not208, label %bb.bp, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !76
  %i.hc = icmp ugt i32 %i.hb, 1
  br i1 %i.hc, label %bb.ak, label %zend_gc_try_delref.exit216, !prof !80

bb.ak:                                            ; preds = %bb.aj
  %i.hd = tail call ptr @zend_array_dup(ptr noundef nonnull %i.ha) #34
  store ptr %i.hd, ptr %i.h, align 8, !tbaa !75
  %i.he = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 775, ptr %i.he, align 8, !tbaa !75
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !75
  %i.hh = and i32 %i.hg, 64
  %.not.i215 = icmp eq i32 %i.hh, 0
  br i1 %.not.i215, label %bb.al, label %zend_gc_try_delref.exit216

bb.al:                                            ; preds = %bb.ak
  %i.hi = load i32, ptr %i.ha, align 4, !tbaa !76
  %i.hj = add i32 %i.hi, -1
  store i32 %i.hj, ptr %i.ha, align 4, !tbaa !76
  br label %zend_gc_try_delref.exit216

zend_gc_try_delref.exit216:                       ; preds = %bb.al, %bb.ak, %bb.aj
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !199 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !75 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !156 ; 2 uses
  %i.hq = zext i32 %i.hp to i64
  %.idx362 = shl nuw nsw i64 %i.hq, 5
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 %.idx362
  %.not213353 = icmp eq i32 %i.hp, 0
  br i1 %.not213353, label %.thread330, label %.lr.ph357

.lr.ph357:                                        ; preds = %zend_gc_try_delref.exit216
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gw, i64 8 ; 2 uses
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph357, %bb.bo
  %.0180354 = phi ptr [ %i.hn, %.lr.ph357 ], [ %i.mc, %bb.bo ] ; 9 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.0180354, i64 8
  %i.hu = load i8, ptr %i.ht, align 8, !tbaa !75  ; 3 uses
  %i.hv = icmp eq i8 %i.hu, 0
  br i1 %i.hv, label %bb.bo, label %bb.an, !prof !80

bb.an:                                            ; preds = %bb.am
  %i.hw = getelementptr inbounds nuw i8, ptr %.0180354, i64 24
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !270
  %i.hy = load ptr, ptr %i.gp, align 8, !tbaa !74
  %i.hz = load i32, ptr %i.gx, align 8, !tbaa !233 ; 5 uses
  %i.ia = and i32 %i.hz, 33554431
  %i.ib = icmp ne i32 %i.ia, 0
  tail call void @llvm.assume(i1 %i.ib)
  %i.ic = icmp eq i8 %i.hu, 10
  br i1 %i.ic, label %bb.ao, label %bb.ap, !prof !80

bb.ao:                                            ; preds = %bb.an
  %i.id = load ptr, ptr %.0180354, align 8, !tbaa !75 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %.phi.trans.insert381 = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %.pre382 = load i8, ptr %.phi.trans.insert381, align 8, !tbaa !75
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.if = phi i8 [ %.pre382, %bb.ao ], [ %i.hu, %bb.an ] ; 2 uses
  %.012.i.i = phi ptr [ %i.ie, %bb.ao ], [ %.0180354, %bb.an ] ; 8 uses
  %.0.i.i = phi ptr [ %i.id, %bb.ao ], [ null, %bb.an ] ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 8
  %i.ih = zext nneg i8 %i.if to i32
  %i.ii = shl nuw i32 1, %i.ih
  %i.ij = and i32 %i.ii, %i.hz
  %.not.i.i = icmp eq i32 %i.ij, 0
  br i1 %.not.i.i, label %bb.aq, label %zend_check_type.exit.i.thread, !prof !80

bb.aq:                                            ; preds = %bb.ap
  %i.ik = and i32 %i.hz, 29360128
  %.not.i.i.i = icmp ne i32 %i.ik, 0
  %i.il = icmp eq i8 %i.if, 8
  %or.cond334 = and i1 %.not.i.i.i, %i.il
  br i1 %or.cond334, label %bb.ar, label %zend_fetch_ce_from_type.exit.i.i.thread, !prof !252

bb.ar:                                            ; preds = %bb.aq
  %i.im = and i32 %i.hz, 4194304
  %.not52.i.i.i = icmp eq i32 %i.im, 0
  br i1 %.not52.i.i.i, label %bb.az, label %bb.as, !prof !69

bb.as:                                            ; preds = %bb.ar
  %i.in = and i32 %i.hz, 524288
  %.not54.i.i.i = icmp eq i32 %i.in, 0
  %i.io = load ptr, ptr %i.hs, align 8, !tbaa !115 ; 3 uses
  br i1 %.not54.i.i.i, label %bb.at, label %zend_check_type.exit.i

bb.at:                                            ; preds = %bb.as
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8 ; 2 uses
  %i.iq = load i32, ptr %i.io, align 8, !tbaa !117 ; 2 uses
  %i.ir = zext i32 %i.iq to i64
  %.idx363 = shl nuw nsw i64 %i.ir, 4
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 %.idx363
  %.not58.i.i.i350.not = icmp eq i32 %i.iq, 0
  br i1 %.not58.i.i.i350.not, label %zend_fetch_ce_from_type.exit.i.i.thread, label %.lr.ph352

.lr.ph352:                                        ; preds = %bb.at, %zend_fetch_ce_from_type.exit21.i.i.thread
  %.0.i.i.i351 = phi ptr [ %i.jx, %zend_fetch_ce_from_type.exit21.i.i.thread ], [ %i.ip, %bb.at ] ; 4 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.0.i.i.i351, i64 8
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !114 ; 2 uses
  %i.iv = and i32 %i.iu, 524288
  %.not55.i.i.i = icmp eq i32 %i.iv, 0
  br i1 %.not55.i.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.lr.ph352
  %i.iw = load ptr, ptr %.0.i.i.i351, align 8, !tbaa !115
  %i.ix = load ptr, ptr %.012.i.i, align 8, !tbaa !75
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !113
  %i.ja = tail call fastcc zeroext i1 @zend_check_intersection_type_from_list(ptr noundef %i.iw, ptr noundef %i.iz)
  br i1 %i.ja, label %zend_check_type.exit.i.thread, label %zend_fetch_ce_from_type.exit21.i.i.thread, !prof !253

bb.av:                                            ; preds = %.lr.ph352
  %i.jb = and i32 %i.iu, 4194304
  %.not56.i.i.i = icmp eq i32 %i.jb, 0
  tail call void @llvm.assume(i1 %.not56.i.i.i)
  %i.jc = load ptr, ptr %.0.i.i.i351, align 8, !tbaa !115 ; 4 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 4
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !75
  %i.jf = and i32 %i.je, 32
  %.not.i15.i.i = icmp eq i32 %i.jf, 0
  br i1 %.not.i15.i.i, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jg = load i32, ptr %i.jc, align 4, !tbaa !76 ; 2 uses
  %i.jh = add i32 %i.jg, -1
  %i.ji = lshr i32 %i.jh, 3
  %i.jj = zext nneg i32 %i.ji to i64
  %i.jk = load i64, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 528), align 8, !tbaa !131
  %i.jl = icmp ugt i64 %i.jk, %i.jj
  br i1 %i.jl, label %bb.ax, label %.thread296, !prof !69

bb.ax:                                            ; preds = %bb.aw
  %i.jm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 512), align 8, !tbaa !132
  %i.jn = zext i32 %i.jg to i64
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.jn
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !109 ; 2 uses
  %.not14.i16.i.i = icmp eq ptr %i.jp, null
  br i1 %.not14.i16.i.i, label %.thread296, label %zend_fetch_ce_from_type.exit21.i.i

.thread296:                                       ; preds = %bb.aw, %bb.ax
  %i.jq = tail call ptr @zend_lookup_class_ex(ptr noundef nonnull %i.jc, ptr noundef null, i32 noundef 128) #34 ; 2 uses
  %.not15.i19.i.i = icmp eq ptr %i.jq, null
  br i1 %.not15.i19.i.i, label %zend_fetch_ce_from_type.exit21.i.i.thread, label %zend_fetch_ce_from_type.exit21.i.i, !prof !80

bb.ay:                                            ; preds = %bb.av
  %i.jr = tail call ptr @zend_fetch_class(ptr noundef nonnull %i.jc, i32 noundef 388) #34 ; 2 uses
  %.not13.i20.i.i = icmp eq ptr %i.jr, null
  br i1 %.not13.i20.i.i, label %zend_fetch_ce_from_type.exit21.i.i.thread, label %zend_fetch_ce_from_type.exit21.i.i, !prof !80

end_hunk_0
begin_hunk_1_@ZEND_GENERATOR_RETURN_SPEC_VAR_TAILCALL_HANDLER:bb.a
  tail call void @_efree_32(ptr noundef nonnull %i.j) #34
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.u = load i32, ptr %i.n, align 8              ; 2 uses
  %i.v = and i32 %i.u, 65280
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = and i32 %i.u, 65280
  %i.x = icmp ne i32 %i.w, 0
  tail call void @llvm.assume(i1 %i.x)
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !75   ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !76
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !76
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !75
  %i.ad = load i32, ptr %i.g, align 8, !tbaa !75
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !75
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !75
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !77
  store ptr %i.ag, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), align 8, !tbaa !70
  tail call void @zend_generator_close(ptr noundef nonnull %i.b, i1 noundef zeroext true) #34
  ret ptr inttoptr (i64 1 to ptr)
}

; Function Attrs: nounwind uwtable
define internal preserve_nonecc noundef nonnull ptr @ZEND_GENERATOR_RETURN_SPEC_CV_TAILCALL_HANDLER(ptr nofree noundef captures(none) initializes((0, 8)) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !190  ; 3 uses
  store ptr %1, ptr %0, align 8, !tbaa !78
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !75   ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i8, ptr %i.g, align 8, !tbaa !75
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.b, label %_get_zval_ptr_cv_BP_VAR_R.exit, !prof !80

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @zval_undefined_cv(i32 noundef %i.d, ptr noundef nonnull %0)
  br label %_get_zval_ptr_cv_BP_VAR_R.exit

_get_zval_ptr_cv_BP_VAR_R.exit:                   ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ @executor_globals, %bb.b ], [ %i.f, %bb.a ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.k = load i32, ptr %i.j, align 8              ; 3 uses
  %i.l = and i32 %i.k, 65280
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_get_zval_ptr_cv_BP_VAR_R.exit
  %i.m = and i32 %i.k, 255
  %i.n = icmp eq i32 %i.m, 10
  br i1 %i.n, label %bb.d, label %.sink.split, !prof !80

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %.0.i, align 8, !tbaa !75  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.r = load i32, ptr %i.q, align 8              ; 2 uses
  %i.s = and i32 %i.r, 65280
  %.not24 = icmp eq i32 %i.s, 0
  br i1 %.not24, label %bb.e, label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.d
  %.sink29 = phi i32 [ %i.r, %bb.d ], [ %i.k, %bb.c ]
  %.sink.in = phi ptr [ %i.p, %bb.d ], [ %.0.i, %bb.c ] ; 2 uses
  %i.t = and i32 %.sink29, 65280
  %i.u = icmp ne i32 %i.t, 0
  tail call void @llvm.assume(i1 %i.u)
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !75 ; 2 uses
  %i.v = load i32, ptr %.sink, align 4, !tbaa !76
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %.sink, align 4, !tbaa !76
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %_get_zval_ptr_cv_BP_VAR_R.exit, %bb.d
  %.0 = phi ptr [ %.0.i, %_get_zval_ptr_cv_BP_VAR_R.exit ], [ %i.p, %bb.d ], [ %.sink.in, %.sink.split ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.y = load ptr, ptr %.0, align 8, !tbaa !75
  %i.z = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !75
  store ptr %i.y, ptr %i.x, align 8, !tbaa !75
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !75
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !77
  store ptr %i.ad, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), align 8, !tbaa !70
  tail call void @zend_generator_close(ptr noundef %i.b, i1 noundef zeroext true) #34
  ret ptr inttoptr (i64 1 to ptr)
}

; Function Attrs: nounwind uwtable
define internal preserve_nonecc ptr @ZEND_FAST_CALL_SPEC_TAILCALL_HANDLER(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !75
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !75
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !74
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !75
  %i.i = ptrtoint ptr %1 to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = lshr exact i64 %i.k, 5
  %i.m = trunc i64 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 %i.m, ptr %i.n, align 4, !tbaa !75
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !75
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr %1, i64 %i.q ; 3 uses
  %i.s = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 574) seq_cst, align 2, !range !84, !noundef !85
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.b, label %bb.c, !prof !80

bb.b:                                             ; preds = %bb.a
  %i.u = musttail call preserve_nonecc ptr @zend_interrupt_TAILCALL(ptr noundef nonnull %0, ptr noundef nonnull %i.r)
  ret ptr %i.u

bb.c:                                             ; preds = %bb.a
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !212
  %i.w = musttail call preserve_nonecc ptr %i.v(ptr noundef nonnull %0, ptr noundef nonnull %i.r) #34
  ret ptr %i.w
}

; Function Attrs: nounwind uwtable
define internal preserve_nonecc ptr @ZEND_FAST_RET_SPEC_TAILCALL_HANDLER(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !75
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !75   ; 2 uses
  %.not = icmp eq i32 %i.f, -1
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !74
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !75
  %i.k = zext i32 %i.f to i64
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.n = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 574) seq_cst, align 2, !range !84, !noundef !85
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %bb.d, !prof !80

bb.c:                                             ; preds = %bb.b
  %i.p = musttail call preserve_nonecc ptr @zend_interrupt_TAILCALL(ptr noundef nonnull %0, ptr noundef nonnull %i.m)
  ret ptr %i.p

bb.d:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !212
  %i.r = musttail call preserve_nonecc ptr %i.q(ptr noundef nonnull %0, ptr noundef nonnull %i.m) #34
  ret ptr %i.r

bb.e:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !75
  store ptr %i.s, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !82
  store ptr null, ptr %i.d, align 8, !tbaa !75
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !75
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !74
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !75
  %i.z = ptrtoint ptr %1 to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = lshr exact i64 %i.ab, 5
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = tail call fastcc ptr @zend_dispatch_try_catch_finally_helper_SPEC_TAILCALL(ptr noundef nonnull %0, i32 noundef %i.u, i32 noundef %i.ad) ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !212
  %i.ag = musttail call preserve_nonecc ptr %i.af(ptr noundef nonnull %0, ptr noundef nonnull %i.ae) #34
  ret ptr %i.ag
}

; Function Attrs: nounwind uwtable
define internal preserve_nonecc ptr @ZEND_RECV_VARIADIC_SPEC_UNUSED_TAILCALL_HANDLER(ptr noundef initializes((0, 8)) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !75   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !75   ; 5 uses
  store ptr %1, ptr %0, align 8, !tbaa !78
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !75
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds i8, ptr %0, i64 %i.g ; 14 uses
  %.not = icmp ugt i32 %i.b, %i.d
  br i1 %.not, label %bb.ag, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !74   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !75   ; 2 uses
  %i.m = add i32 %i.b, -1
  %i.n = icmp eq i32 %i.l, %i.m
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !75
  %i.q = zext i32 %i.l to i64
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.q ; 3 uses
  %i.s = sub nuw i32 %i.d, %i.b
  %i.t = add i32 %i.s, 1
  %i.u = tail call ptr @_zend_new_array(i32 noundef %i.t) #34 ; 2 uses
  store ptr %i.u, ptr %i.h, align 8, !tbaa !75
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 775, ptr %i.v, align 8, !tbaa !75
  tail call void @zend_hash_real_init_packed(ptr noundef %i.u) #34
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !75   ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !75
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 5 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !156 ; 3 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !74  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 92
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !75
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !75
  %i.ai = add i32 %i.ah, %i.af
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr [16 x i8], ptr %0, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 80     ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !233
  %i.ao = and i32 %i.an, 33554431
  %.not201 = icmp eq i32 %i.ao, 0
  br i1 %.not201, label %.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !75
  %i.ar = or i32 %i.aq, 524288
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !75
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.ad, %bb.c
  %.0187 = phi ptr [ %i.al, %bb.c ], [ %i.fo, %bb.ad ] ; 7 uses
  %.0184 = phi i32 [ %i.aa, %bb.c ], [ %i.fn, %bb.ad ] ; 4 uses
  %.0182 = phi ptr [ %i.ac, %bb.c ], [ %i.fm, %bb.ad ] ; 3 uses
  %.0180 = phi i32 [ %i.b, %bb.c ], [ %i.fp, %bb.ad ] ; 2 uses
  %i.at = load ptr, ptr %i.i, align 8, !tbaa !74
  %i.au = load i32, ptr %i.am, align 8, !tbaa !233 ; 5 uses
  %i.av = and i32 %i.au, 33554431
  %i.aw = icmp ne i32 %i.av, 0
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds nuw i8, ptr %.0187, i64 8 ; 3 uses
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !75  ; 2 uses
  %i.az = icmp eq i8 %i.ay, 10
  br i1 %i.az, label %bb.e, label %bb.f, !prof !80

bb.e:                                             ; preds = %bb.d
  %i.ba = load ptr, ptr %.0187, align 8, !tbaa !75 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !75
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bc = phi i8 [ %.pre, %bb.e ], [ %i.ay, %bb.d ] ; 2 uses
  %.012.i.i216 = phi ptr [ %i.bb, %bb.e ], [ %.0187, %bb.d ] ; 8 uses
  %.0.i.i217 = phi ptr [ %i.ba, %bb.e ], [ null, %bb.d ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i216, i64 8
  %i.be = zext nneg i8 %i.bc to i32
  %i.bf = shl nuw i32 1, %i.be
  %i.bg = and i32 %i.bf, %i.au
  %.not.i.i218 = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i218, label %bb.g, label %zend_check_type.exit.i219.thread, !prof !80

bb.g:                                             ; preds = %bb.f
  %i.bh = and i32 %i.au, 29360128
  %.not.i.i.i221 = icmp ne i32 %i.bh, 0
  %i.bi = icmp eq i8 %i.bc, 8
  %or.cond = and i1 %.not.i.i.i221, %i.bi
  br i1 %or.cond, label %bb.h, label %zend_fetch_ce_from_type.exit.i.i257.thread, !prof !252

bb.h:                                             ; preds = %bb.g
  %i.bj = and i32 %i.au, 4194304
  %.not52.i.i.i236 = icmp eq i32 %i.bj, 0
  br i1 %.not52.i.i.i236, label %bb.p, label %bb.i, !prof !69

bb.i:                                             ; preds = %bb.h
  %i.bk = and i32 %i.au, 524288
  %.not54.i.i.i237 = icmp eq i32 %i.bk, 0
  %i.bl = load ptr, ptr %i.as, align 8, !tbaa !115 ; 3 uses
  br i1 %.not54.i.i.i237, label %bb.j, label %zend_check_type.exit.i219

bb.j:                                             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load i32, ptr %i.bl, align 8, !tbaa !117 ; 2 uses
  %i.bo = zext i32 %i.bn to i64
  %.idx = shl nuw nsw i64 %i.bo, 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx
  %.not58.i.i.i241325.not = icmp eq i32 %i.bn, 0
  br i1 %.not58.i.i.i241325.not, label %zend_fetch_ce_from_type.exit.i.i257.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %zend_fetch_ce_from_type.exit21.i.i248.thread
  %.0.i.i.i240326 = phi ptr [ %i.cu, %zend_fetch_ce_from_type.exit21.i.i248.thread ], [ %i.bm, %bb.j ] ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i.i.i240326, i64 8
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !114 ; 2 uses
  %i.bs = and i32 %i.br, 524288
  %.not55.i.i.i243 = icmp eq i32 %i.bs, 0
  br i1 %.not55.i.i.i243, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.bt = load ptr, ptr %.0.i.i.i240326, align 8, !tbaa !115
  %i.bu = load ptr, ptr %.012.i.i216, align 8, !tbaa !75
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !113
  %i.bx = tail call fastcc zeroext i1 @zend_check_intersection_type_from_list(ptr noundef %i.bt, ptr noundef %i.bw)
  br i1 %i.bx, label %zend_check_type.exit.i219.thread, label %zend_fetch_ce_from_type.exit21.i.i248.thread, !prof !253

bb.l:                                             ; preds = %.lr.ph
  %i.by = and i32 %i.br, 4194304
  %.not56.i.i.i244 = icmp eq i32 %i.by, 0
  tail call void @llvm.assume(i1 %.not56.i.i.i244)
  %i.bz = load ptr, ptr %.0.i.i.i240326, align 8, !tbaa !115 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !75
  %i.cc = and i32 %i.cb, 32
  %.not.i15.i.i245 = icmp eq i32 %i.cc, 0
  br i1 %.not.i15.i.i245, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = load i32, ptr %i.bz, align 4, !tbaa !76 ; 2 uses
  %i.ce = add i32 %i.cd, -1
  %i.cf = lshr i32 %i.ce, 3
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = load i64, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 528), align 8, !tbaa !131
  %i.ci = icmp ugt i64 %i.ch, %i.cg
  br i1 %i.ci, label %bb.n, label %.thread, !prof !69

bb.n:                                             ; preds = %bb.m
  %i.cj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 512), align 8, !tbaa !132
  %i.ck = zext i32 %i.cd to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !109 ; 2 uses
  %.not14.i16.i.i246 = icmp eq ptr %i.cm, null
  br i1 %.not14.i16.i.i246, label %.thread, label %zend_fetch_ce_from_type.exit21.i.i248

.thread:                                          ; preds = %bb.m, %bb.n
  %i.cn = tail call ptr @zend_lookup_class_ex(ptr noundef nonnull %i.bz, ptr noundef null, i32 noundef 128) #34 ; 2 uses
  %.not15.i19.i.i252 = icmp eq ptr %i.cn, null
  br i1 %.not15.i19.i.i252, label %zend_fetch_ce_from_type.exit21.i.i248.thread, label %zend_fetch_ce_from_type.exit21.i.i248, !prof !80

bb.o:                                             ; preds = %bb.l
  %i.co = tail call ptr @zend_fetch_class(ptr noundef nonnull %i.bz, i32 noundef 388) #34 ; 2 uses
  %.not13.i20.i.i253 = icmp eq ptr %i.co, null
  br i1 %.not13.i20.i.i253, label %zend_fetch_ce_from_type.exit21.i.i248.thread, label %zend_fetch_ce_from_type.exit21.i.i248, !prof !80

zend_fetch_ce_from_type.exit21.i.i248:            ; preds = %bb.o, %.thread, %bb.n
  %.0.i17.i.i247 = phi ptr [ %i.cm, %bb.n ], [ %i.cn, %.thread ], [ %i.co, %bb.o ] ; 2 uses
  %i.cp = load ptr, ptr %.012.i.i216, align 8, !tbaa !75
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !113 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %.0.i17.i.i247
  br i1 %i.cs, label %zend_check_type.exit.i219.thread, label %instanceof_function.exit22.i.i251, !prof !253

instanceof_function.exit22.i.i251:                ; preds = %zend_fetch_ce_from_type.exit21.i.i248
  %i.ct = tail call zeroext i1 @instanceof_function_slow(ptr noundef %i.cr, ptr noundef nonnull %.0.i17.i.i247) #34
  br i1 %i.ct, label %zend_check_type.exit.i219.thread, label %zend_fetch_ce_from_type.exit21.i.i248.thread, !prof !253

zend_fetch_ce_from_type.exit21.i.i248.thread:     ; preds = %bb.o, %.thread, %instanceof_function.exit22.i.i251, %bb.k
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i.i.i240326, i64 16 ; 2 uses
  %.not58.i.i.i241 = icmp ult ptr %i.cu, %i.bp
  br i1 %.not58.i.i.i241, label %.lr.ph, label %zend_fetch_ce_from_type.exit.i.i257.thread, !llvm.loop !0

bb.p:                                             ; preds = %bb.h
  %i.cv = load ptr, ptr %i.as, align 8, !tbaa !115 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !75
  %i.cy = and i32 %i.cx, 32
  %.not.i13.i.i254 = icmp eq i32 %i.cy, 0
  br i1 %.not.i13.i.i254, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cz = load i32, ptr %i.cv, align 4, !tbaa !76 ; 2 uses
  %i.da = add i32 %i.cz, -1
  %i.db = lshr i32 %i.da, 3
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = load i64, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 528), align 8, !tbaa !131
  %i.de = icmp ugt i64 %i.dd, %i.dc
  br i1 %i.de, label %bb.r, label %.thread267, !prof !69

bb.r:                                             ; preds = %bb.q
  %i.df = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 512), align 8, !tbaa !132
  %i.dg = zext i32 %i.cz to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !109 ; 2 uses
  %.not14.i.i.i255 = icmp eq ptr %i.di, null
  br i1 %.not14.i.i.i255, label %.thread267, label %zend_fetch_ce_from_type.exit.i.i257

.thread267:                                       ; preds = %bb.q, %bb.r
  %i.dj = tail call ptr @zend_lookup_class_ex(ptr noundef nonnull %i.cv, ptr noundef null, i32 noundef 128) #34 ; 2 uses
  %.not15.i.i.i261 = icmp eq ptr %i.dj, null
  br i1 %.not15.i.i.i261, label %zend_fetch_ce_from_type.exit.i.i257.thread, label %zend_fetch_ce_from_type.exit.i.i257, !prof !80

bb.s:                                             ; preds = %bb.p
  %i.dk = tail call ptr @zend_fetch_class(ptr noundef nonnull %i.cv, i32 noundef 388) #34 ; 2 uses
  %.not13.i.i.i262 = icmp eq ptr %i.dk, null
  br i1 %.not13.i.i.i262, label %zend_fetch_ce_from_type.exit.i.i257.thread, label %zend_fetch_ce_from_type.exit.i.i257, !prof !80

zend_fetch_ce_from_type.exit.i.i257:              ; preds = %bb.s, %.thread267, %bb.r
  %.0.i14.i.i256 = phi ptr [ %i.di, %bb.r ], [ %i.dj, %.thread267 ], [ %i.dk, %bb.s ] ; 2 uses
  %i.dl = load ptr, ptr %.012.i.i216, align 8, !tbaa !75
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !113 ; 2 uses
  %i.do = icmp eq ptr %i.dn, %.0.i14.i.i256
  br i1 %i.do, label %zend_check_type.exit.i219.thread, label %instanceof_function.exit.i.i260, !prof !253

instanceof_function.exit.i.i260:                  ; preds = %zend_fetch_ce_from_type.exit.i.i257
  %i.dp = tail call zeroext i1 @instanceof_function_slow(ptr noundef %i.dn, ptr noundef nonnull %.0.i14.i.i256) #34
  br i1 %i.dp, label %zend_check_type.exit.i219.thread, label %zend_fetch_ce_from_type.exit.i.i257.thread, !prof !253

zend_fetch_ce_from_type.exit.i.i257.thread:       ; preds = %zend_fetch_ce_from_type.exit21.i.i248.thread, %bb.j, %bb.s, %.thread267, %instanceof_function.exit.i.i260, %bb.g
  %i.dq = load i32, ptr %i.am, align 8, !tbaa !114 ; 3 uses
  %i.dr = and i32 %i.dq, 4096
  %.not59.i.i.i222 = icmp eq i32 %i.dr, 0
  br i1 %.not59.i.i.i222, label %bb.u, label %bb.t

bb.t:                                             ; preds = %zend_fetch_ce_from_type.exit.i.i257.thread
  %i.ds = tail call zeroext i1 @zend_is_callable(ptr noundef %.012.i.i216, i32 noundef 0, ptr noundef null) #34
  br i1 %i.ds, label %zend_check_type.exit.i219.thread, label %bb.u

bb.u:                                             ; preds = %bb.t, %zend_fetch_ce_from_type.exit.i.i257.thread
  %i.dt = and i32 %i.dq, 32768
  %.not60.i.i.i223 = icmp eq i32 %i.dt, 0
  br i1 %.not60.i.i.i223, label %zend_value_instanceof_static.exit.i.i225.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.du = load i8, ptr %i.bd, align 8, !tbaa !75
  %.not.i23.i.i224 = icmp eq i8 %i.du, 8
  br i1 %.not.i23.i.i224, label %bb.w, label %zend_value_instanceof_static.exit.i.i225.thread

bb.w:                                             ; preds = %bb.v
  %i.dv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), align 8, !tbaa !70
  %i.dw = tail call ptr @zend_get_called_scope(ptr noundef %i.dv) #34 ; 3 uses
  %.not6.i.i.i234 = icmp eq ptr %i.dw, null
  br i1 %.not6.i.i.i234, label %zend_value_instanceof_static.exit.i.i225.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dx = load ptr, ptr %.012.i.i216, align 8, !tbaa !75
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !113 ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.dw
  br i1 %i.ea, label %zend_check_type.exit.i219.thread, label %zend_value_instanceof_static.exit.i.i225

zend_value_instanceof_static.exit.i.i225:         ; preds = %bb.x
  %i.eb = tail call zeroext i1 @instanceof_function_slow(ptr noundef %i.dz, ptr noundef nonnull %i.dw) #34
  br i1 %i.eb, label %zend_check_type.exit.i219.thread, label %zend_value_instanceof_static.exit.i.i225.thread

zend_value_instanceof_static.exit.i.i225.thread:  ; preds = %bb.w, %bb.v, %zend_value_instanceof_static.exit.i.i225, %bb.u
  %.not61.i.i.i227 = icmp eq ptr %.0.i.i217, null
  br i1 %.not61.i.i.i227, label %bb.z, label %bb.y

bb.y:                                             ; preds = %zend_value_instanceof_static.exit.i.i225.thread
  %i.ec = getelementptr inbounds nuw i8, ptr %.0.i.i217, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !75
  %.not62.i.i.i228 = icmp eq ptr %i.ed, null
  br i1 %.not62.i.i.i228, label %bb.z, label %zend_check_type.exit.i219.thread279, !prof !254

bb.z:                                             ; preds = %bb.y, %zend_value_instanceof_static.exit.i.i225.thread
  %i.ee = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), align 8, !tbaa !70
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 48
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !77 ; 2 uses
  %.not63.i.i.i231 = icmp eq ptr %i.eg, null
  br i1 %.not63.i.i.i231, label %.split, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !74 ; 2 uses
  %.not64.i.i.i232 = icmp eq ptr %i.ei, null
  br i1 %.not64.i.i.i232, label %.split, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !75
  %i.el = icmp slt i32 %i.ek, 0
  br label %.split

.split:                                           ; preds = %bb.ab, %bb.aa, %bb.z
  %i.em = phi i1 [ %i.el, %bb.ab ], [ false, %bb.aa ], [ false, %bb.z ]
  %i.en = tail call zeroext i1 @zend_verify_scalar_type_hint(i32 noundef %i.dq, ptr noundef %.012.i.i216, i1 noundef zeroext %i.em, i1 noundef zeroext false)
  br i1 %i.en, label %zend_check_type.exit.i219.thread, label %zend_check_type.exit.i219.thread279, !prof !106

zend_check_type.exit.i219:                        ; preds = %bb.i
  %i.eo = load ptr, ptr %.012.i.i216, align 8, !tbaa !75
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !113
  %i.er = tail call fastcc zeroext i1 @zend_check_intersection_type_from_list(ptr noundef %i.bl, ptr noundef %i.eq)
  br i1 %i.er, label %zend_check_type.exit.i219.thread, label %zend_check_type.exit.i219.thread279, !prof !106

zend_check_type.exit.i219.thread279:              ; preds = %bb.y, %.split, %zend_check_type.exit.i219
  tail call void @zend_verify_arg_error(ptr noundef %i.at, ptr noundef nonnull %i.r, i32 noundef %.0180, ptr noundef %.0187)
  %i.es = load i32, ptr %i.z, align 8, !tbaa !156
  %i.et = sub i32 %.0184, %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.w, i64 28 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !219
  %i.ew = add i32 %i.et, %i.ev
  store i32 %i.ew, ptr %i.eu, align 4, !tbaa !219
  store i32 %.0184, ptr %i.z, align 8, !tbaa !156
  %i.ex = zext i32 %.0184 to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !327
  %i.ez = getelementptr inbounds nuw i8, ptr %i.w, i64 36
  store i32 0, ptr %i.ez, align 4, !tbaa !328
  %i.fa = load ptr, ptr %0, align 8, !tbaa !78    ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !212
  %i.fc = musttail call preserve_nonecc ptr %i.fb(ptr noundef nonnull %0, ptr noundef nonnull %i.fa) #34
  ret ptr %i.fc

zend_check_type.exit.i219.thread:                 ; preds = %zend_fetch_ce_from_type.exit21.i.i248, %instanceof_function.exit22.i.i251, %bb.k, %zend_fetch_ce_from_type.exit.i.i257, %instanceof_function.exit.i.i260, %bb.x, %zend_value_instanceof_static.exit.i.i225, %bb.t, %bb.f, %zend_check_type.exit.i219, %.split
  %i.fd = load i32, ptr %i.ax, align 8            ; 3 uses
  %i.fe = and i32 %i.fd, 65280
  %.not204 = icmp eq i32 %i.fe, 0
  %.pre355 = load ptr, ptr %.0187, align 8, !tbaa !75 ; 3 uses
  br i1 %.not204, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %zend_check_type.exit.i219.thread
  %i.ff = and i32 %i.fd, 65280
  %i.fg = icmp ne i32 %i.ff, 0
  tail call void @llvm.assume(i1 %i.fg)
  %i.fh = load i32, ptr %.pre355, align 4, !tbaa !76
  %i.fi = add i32 %i.fh, 1
  store i32 %i.fi, ptr %.pre355, align 4, !tbaa !76
  %.pre354 = load ptr, ptr %.0187, align 8, !tbaa !75
  %.pre356 = load i32, ptr %i.ax, align 8, !tbaa !75
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %zend_check_type.exit.i219.thread
  %i.fj = phi i32 [ %.pre356, %bb.ac ], [ %i.fd, %zend_check_type.exit.i219.thread ]
  %i.fk = phi ptr [ %.pre354, %bb.ac ], [ %.pre355, %zend_check_type.exit.i219.thread ]
  store ptr %i.fk, ptr %.0182, align 8, !tbaa !75
  %i.fl = getelementptr inbounds nuw i8, ptr %.0182, i64 8
  store i32 %i.fj, ptr %i.fl, align 8, !tbaa !75
  %i.fm = getelementptr inbounds nuw i8, ptr %.0182, i64 16
  %i.fn = add i32 %.0184, 1                       ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.0187, i64 16
  %i.fp = add i32 %.0180, 1                       ; 3 uses
  %.not205 = icmp ugt i32 %i.fp, %i.d
  br i1 %.not205, label %.loopexit, label %bb.d, !llvm.loop !504

.preheader:                                       ; preds = %bb.b, %bb.af
  %.1188 = phi ptr [ %i.gd, %bb.af ], [ %i.al, %bb.b ] ; 4 uses
  %.1185 = phi i32 [ %i.gc, %bb.af ], [ %i.aa, %bb.b ]
  %.1183 = phi ptr [ %i.gb, %bb.af ], [ %i.ac, %bb.b ] ; 3 uses
  %.1 = phi i32 [ %i.ge, %bb.af ], [ %i.b, %bb.b ]
  %i.fq = getelementptr inbounds nuw i8, ptr %.1188, i64 8 ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 8            ; 3 uses
  %i.fs = and i32 %i.fr, 65280
  %.not202 = icmp eq i32 %i.fs, 0
  br i1 %.not202, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.preheader
  %i.ft = and i32 %i.fr, 65280
  %i.fu = icmp ne i32 %i.ft, 0
  tail call void @llvm.assume(i1 %i.fu)
  %i.fv = load ptr, ptr %.1188, align 8, !tbaa !75 ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !76
  %i.fx = add i32 %i.fw, 1
  store i32 %i.fx, ptr %i.fv, align 4, !tbaa !76
  %.pre357 = load i32, ptr %i.fq, align 8, !tbaa !75
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.preheader
  %i.fy = phi i32 [ %.pre357, %bb.ae ], [ %i.fr, %.preheader ]
  %i.fz = load ptr, ptr %.1188, align 8, !tbaa !75
  store ptr %i.fz, ptr %.1183, align 8, !tbaa !75
  %i.ga = getelementptr inbounds nuw i8, ptr %.1183, i64 8
  store i32 %i.fy, ptr %i.ga, align 8, !tbaa !75
  %i.gb = getelementptr inbounds nuw i8, ptr %.1183, i64 16
  %i.gc = add i32 %.1185, 1                       ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.1188, i64 16
  %i.ge = add i32 %.1, 1                          ; 2 uses
  %.not203 = icmp ugt i32 %i.ge, %i.d
  br i1 %.not203, label %.loopexit.loopexit, label %.preheader, !llvm.loop !505

.loopexit.loopexit:                               ; preds = %bb.af
  %2 = add i32 %i.b, 1
  %3 = add nuw i32 %i.d, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %2, i32 %3)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ad, %.loopexit.loopexit
  %.2186 = phi i32 [ %i.gc, %.loopexit.loopexit ], [ %i.fn, %bb.ad ] ; 3 uses
  %.2 = phi i32 [ %umax, %.loopexit.loopexit ], [ %i.fp, %bb.ad ]
  %i.gf = load i32, ptr %i.z, align 8, !tbaa !156
  %i.gg = sub i32 %.2186, %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %i.w, i64 28 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !219
  %i.gj = add i32 %i.gg, %i.gi
  store i32 %i.gj, ptr %i.gh, align 4, !tbaa !219
  store i32 %.2186, ptr %i.z, align 8, !tbaa !156
  %i.gk = zext i32 %.2186 to i64
  %i.gl = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store i64 %i.gk, ptr %i.gl, align 8, !tbaa !327
  %i.gm = getelementptr inbounds nuw i8, ptr %i.w, i64 36
  store i32 0, ptr %i.gm, align 4, !tbaa !328
  br label %bb.ah

bb.ag:                                            ; preds = %bb.a
  store ptr @zend_empty_array, ptr %i.h, align 8, !tbaa !75
  %i.gn = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 7, ptr %i.gn, align 8, !tbaa !75
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit, %bb.ag
  %.3 = phi i32 [ %.2, %.loopexit ], [ %i.b, %bb.ag ]
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !75
  %i.gq = and i32 %i.gp, 134217728
  %.not206 = icmp eq i32 %i.gq, 0
  br i1 %.not206, label %.critedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !74 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 40
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !75
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 32
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !75
  %i.gx = zext i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [32 x i8], ptr %i.gu, i64 %i.gx ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16 ; 3 uses
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !233
  %i.hb = and i32 %i.ha, 33554431
  %.not207 = icmp eq i32 %i.hb, 0
  %i.hc = load ptr, ptr %i.h, align 8, !tbaa !75  ; 11 uses
  br i1 %.not207, label %bb.bp, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !76
  %i.he = icmp ugt i32 %i.hd, 1
  br i1 %i.he, label %bb.ak, label %zend_gc_try_delref.exit215, !prof !80

bb.ak:                                            ; preds = %bb.aj
  %i.hf = tail call ptr @zend_array_dup(ptr noundef nonnull %i.hc) #34
  store ptr %i.hf, ptr %i.h, align 8, !tbaa !75
  %i.hg = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 775, ptr %i.hg, align 8, !tbaa !75
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !75
  %i.hj = and i32 %i.hi, 64
  %.not.i214 = icmp eq i32 %i.hj, 0
  br i1 %.not.i214, label %bb.al, label %zend_gc_try_delref.exit215

bb.al:                                            ; preds = %bb.ak
  %i.hk = load i32, ptr %i.hc, align 4, !tbaa !76
  %i.hl = add i32 %i.hk, -1
  store i32 %i.hl, ptr %i.hc, align 4, !tbaa !76
  br label %zend_gc_try_delref.exit215

zend_gc_try_delref.exit215:                       ; preds = %bb.al, %bb.ak, %bb.aj
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !199 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !75 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !156 ; 2 uses
  %i.hs = zext i32 %i.hr to i64
  %.idx339 = shl nuw nsw i64 %i.hs, 5
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hp, i64 %.idx339
  %.not212330 = icmp eq i32 %i.hr, 0
  br i1 %.not212330, label %.critedge, label %.lr.ph334

.lr.ph334:                                        ; preds = %zend_gc_try_delref.exit215
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gy, i64 8 ; 2 uses
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph334, %bb.bo
  %.0181331 = phi ptr [ %i.hp, %.lr.ph334 ], [ %i.mh, %bb.bo ] ; 9 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.0181331, i64 8
  %i.hw = load i8, ptr %i.hv, align 8, !tbaa !75  ; 3 uses
  %i.hx = icmp eq i8 %i.hw, 0
  br i1 %i.hx, label %bb.bo, label %bb.an, !prof !80

bb.an:                                            ; preds = %bb.am
  %i.hy = getelementptr inbounds nuw i8, ptr %.0181331, i64 24
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !270
  %i.ia = load ptr, ptr %i.gr, align 8, !tbaa !74
  %i.ib = load i32, ptr %i.gz, align 8, !tbaa !233 ; 5 uses
  %i.ic = and i32 %i.ib, 33554431
  %i.id = icmp ne i32 %i.ic, 0
  tail call void @llvm.assume(i1 %i.id)
  %i.ie = icmp eq i8 %i.hw, 10
  br i1 %i.ie, label %bb.ao, label %bb.ap, !prof !80

bb.ao:                                            ; preds = %bb.an
  %i.if = load ptr, ptr %.0181331, align 8, !tbaa !75 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %.phi.trans.insert358 = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %.pre359 = load i8, ptr %.phi.trans.insert358, align 8, !tbaa !75
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ih = phi i8 [ %.pre359, %bb.ao ], [ %i.hw, %bb.an ] ; 2 uses
  %.012.i.i = phi ptr [ %i.ig, %bb.ao ], [ %.0181331, %bb.an ] ; 8 uses
  %.0.i.i = phi ptr [ %i.if, %bb.ao ], [ null, %bb.an ] ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 8
  %i.ij = zext nneg i8 %i.ih to i32
  %i.ik = shl nuw i32 1, %i.ij
  %i.il = and i32 %i.ik, %i.ib
  %.not.i.i = icmp eq i32 %i.il, 0
  br i1 %.not.i.i, label %bb.aq, label %zend_check_type.exit.i.thread, !prof !80

bb.aq:                                            ; preds = %bb.ap
  %i.im = and i32 %i.ib, 29360128
  %.not.i.i.i = icmp ne i32 %i.im, 0
  %i.in = icmp eq i8 %i.ih, 8
  %or.cond311 = and i1 %.not.i.i.i, %i.in
  br i1 %or.cond311, label %bb.ar, label %zend_fetch_ce_from_type.exit.i.i.thread, !prof !252

bb.ar:                                            ; preds = %bb.aq
  %i.io = and i32 %i.ib, 4194304
  %.not52.i.i.i = icmp eq i32 %i.io, 0
  br i1 %.not52.i.i.i, label %bb.az, label %bb.as, !prof !69

bb.as:                                            ; preds = %bb.ar
  %i.ip = and i32 %i.ib, 524288
  %.not54.i.i.i = icmp eq i32 %i.ip, 0
  %i.iq = load ptr, ptr %i.hu, align 8, !tbaa !115 ; 3 uses
  br i1 %.not54.i.i.i, label %bb.at, label %zend_check_type.exit.i

bb.at:                                            ; preds = %bb.as
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8 ; 2 uses
  %i.is = load i32, ptr %i.iq, align 8, !tbaa !117 ; 2 uses
  %i.it = zext i32 %i.is to i64
  %.idx340 = shl nuw nsw i64 %i.it, 4
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 %.idx340
  %.not58.i.i.i327.not = icmp eq i32 %i.is, 0
  br i1 %.not58.i.i.i327.not, label %zend_fetch_ce_from_type.exit.i.i.thread, label %.lr.ph329

.lr.ph329:                                        ; preds = %bb.at, %zend_fetch_ce_from_type.exit21.i.i.thread
  %.0.i.i.i328 = phi ptr [ %i.jz, %zend_fetch_ce_from_type.exit21.i.i.thread ], [ %i.ir, %bb.at ] ; 4 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.0.i.i.i328, i64 8
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !114 ; 2 uses
  %i.ix = and i32 %i.iw, 524288
  %.not55.i.i.i = icmp eq i32 %i.ix, 0
  br i1 %.not55.i.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.lr.ph329
  %i.iy = load ptr, ptr %.0.i.i.i328, align 8, !tbaa !115
  %i.iz = load ptr, ptr %.012.i.i, align 8, !tbaa !75
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !113
  %i.jc = tail call fastcc zeroext i1 @zend_check_intersection_type_from_list(ptr noundef %i.iy, ptr noundef %i.jb)
  br i1 %i.jc, label %zend_check_type.exit.i.thread, label %zend_fetch_ce_from_type.exit21.i.i.thread, !prof !253

bb.av:                                            ; preds = %.lr.ph329
  %i.jd = and i32 %i.iw, 4194304
  %.not56.i.i.i = icmp eq i32 %i.jd, 0
  tail call void @llvm.assume(i1 %.not56.i.i.i)
  %i.je = load ptr, ptr %.0.i.i.i328, align 8, !tbaa !115 ; 4 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 4
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !75
  %i.jh = and i32 %i.jg, 32
  %.not.i15.i.i = icmp eq i32 %i.jh, 0
  br i1 %.not.i15.i.i, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ji = load i32, ptr %i.je, align 4, !tbaa !76 ; 2 uses
  %i.jj = add i32 %i.ji, -1
  %i.jk = lshr i32 %i.jj, 3
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = load i64, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 528), align 8, !tbaa !131
  %i.jn = icmp ugt i64 %i.jm, %i.jl
  br i1 %i.jn, label %bb.ax, label %.thread286, !prof !69

bb.ax:                                            ; preds = %bb.aw
  %i.jo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 512), align 8, !tbaa !132
  %i.jp = zext i32 %i.ji to i64
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.jp
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !109 ; 2 uses
  %.not14.i16.i.i = icmp eq ptr %i.jr, null
  br i1 %.not14.i16.i.i, label %.thread286, label %zend_fetch_ce_from_type.exit21.i.i

.thread286:                                       ; preds = %bb.aw, %bb.ax
  %i.js = tail call ptr @zend_lookup_class_ex(ptr noundef nonnull %i.je, ptr noundef null, i32 noundef 128) #34 ; 2 uses
  %.not15.i19.i.i = icmp eq ptr %i.js, null
  br i1 %.not15.i19.i.i, label %zend_fetch_ce_from_type.exit21.i.i.thread, label %zend_fetch_ce_from_type.exit21.i.i, !prof !80

bb.ay:                                            ; preds = %bb.av
  %i.jt = tail call ptr @zend_fetch_class(ptr noundef nonnull %i.je, i32 noundef 388) #34 ; 2 uses
  %.not13.i20.i.i = icmp eq ptr %i.jt, null
  br i1 %.not13.i20.i.i, label %zend_fetch_ce_from_type.exit21.i.i.thread, label %zend_fetch_ce_from_type.exit21.i.i, !prof !80

end_hunk_1
