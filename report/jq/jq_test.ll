Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/jq_test?download=true
inline.NumInlined: 44
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@jq_testsuite:bb.a

bb.fx:                                            ; preds = %bb.fv
  %i.aiw = call double @jv_number_value(i64 %i.ait, ptr %i.aiu) #12
  %i.aix = fcmp oeq double %i.aiw, 1.000000e+01
  br i1 %i.aix, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  call void @__assert_fail(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.7, i32 noundef 488, ptr noundef nonnull @__PRETTY_FUNCTION__.run_jq_exhaust_and_reuse_tests) #13
  unreachable

bb.fz:                                            ; preds = %bb.fx
  call void @jv_free(i64 %i.ait, ptr %i.aiu) #12
  %i.aiy = call { i64, ptr } @jq_next(ptr noundef nonnull %i.aho) #12 ; 2 uses
  %i.aiz = extractvalue { i64, ptr } %i.aiy, 0    ; 3 uses
  %i.aja = extractvalue { i64, ptr } %i.aiy, 1    ; 3 uses
  %i.ajb = call i32 @jv_get_kind(i64 %i.aiz, ptr %i.aja) #12
  %.not71.i = icmp eq i32 %i.ajb, 0
  br i1 %.not71.i, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  call void @__assert_fail(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.7, i32 noundef 491, ptr noundef nonnull @__PRETTY_FUNCTION__.run_jq_exhaust_and_reuse_tests) #13
  unreachable

bb.gb:                                            ; preds = %bb.fz
  %i.ajc = call double @jv_number_value(i64 %i.aiz, ptr %i.aja) #12
  %i.ajd = fcmp oeq double %i.ajc, 2.000000e+01
  br i1 %i.ajd, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  call void @__assert_fail(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.7, i32 noundef 492, ptr noundef nonnull @__PRETTY_FUNCTION__.run_jq_exhaust_and_reuse_tests) #13
  unreachable

bb.gd:                                            ; preds = %bb.gb
  call void @jv_free(i64 %i.aiz, ptr %i.aja) #12
  %i.aje = call { i64, ptr } @jq_next(ptr noundef nonnull %i.aho) #12 ; 2 uses
  %i.ajf = extractvalue { i64, ptr } %i.aje, 0    ; 2 uses
  %i.ajg = extractvalue { i64, ptr } %i.aje, 1    ; 2 uses
  %i.ajh = call i32 @jv_get_kind(i64 %i.ajf, ptr %i.ajg) #12
  %.not72.i = icmp eq i32 %i.ajh, 0
  br i1 %.not72.i, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  call void @__assert_fail(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.7, i32 noundef 495, ptr noundef nonnull @__PRETTY_FUNCTION__.run_jq_exhaust_and_reuse_tests) #13
  unreachable

bb.gf:                                            ; preds = %bb.gd
  call void @jv_free(i64 %i.ajf, ptr %i.ajg) #12
  %i.aji = call { i64, ptr } @jv_parse(ptr noundef nonnull @.str.84) #12 ; 2 uses
  %i.ajj = extractvalue { i64, ptr } %i.aji, 0
  %i.ajk = extractvalue { i64, ptr } %i.aji, 1
  call void @jq_start(ptr noundef nonnull %i.aho, i64 %i.ajj, ptr %i.ajk, i32 noundef 0) #12
  %i.ajl = call { i64, ptr } @jq_next(ptr noundef nonnull %i.aho) #12 ; 2 uses
  %i.ajm = extractvalue { i64, ptr } %i.ajl, 0    ; 2 uses
  %i.ajn = extractvalue { i64, ptr } %i.ajl, 1    ; 2 uses
  %i.ajo = call i32 @jv_get_kind(i64 %i.ajm, ptr %i.ajn) #12
  %.not73.i = icmp eq i32 %i.ajo, 0
  br i1 %.not73.i, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  call void @__assert_fail(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.7, i32 noundef 501, ptr noundef nonnull @__PRETTY_FUNCTION__.run_jq_exhaust_and_reuse_tests) #13
  unreachable

bb.gh:                                            ; preds = %bb.gf
  call void @jv_free(i64 %i.ajm, ptr %i.ajn) #12
  %i.ajp = call { i64, ptr } @jv_parse(ptr noundef nonnull @.str.85) #12 ; 2 uses
  %i.ajq = extractvalue { i64, ptr } %i.ajp, 0
  %i.ajr = extractvalue { i64, ptr } %i.ajp, 1
  call void @jq_start(ptr noundef nonnull %i.aho, i64 %i.ajq, ptr %i.ajr, i32 noundef 0) #12
  %i.ajs = call { i64, ptr } @jq_next(ptr noundef nonnull %i.aho) #12 ; 2 uses
  %i.ajt = extractvalue { i64, ptr } %i.ajs, 0    ; 3 uses
  %i.aju = extractvalue { i64, ptr } %i.ajs, 1    ; 3 uses
  %i.ajv = call i32 @jv_get_kind(i64 %i.ajt, ptr %i.aju) #12
  %.not74.i = icmp eq i32 %i.ajv, 0
  br i1 %.not74.i, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  call void @__assert_fail(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.7, i32 noundef 507, ptr noundef nonnull @__PRETTY_FUNCTION__.run_jq_exhaust_and_reuse_tests) #13
  unreachable

bb.gj:                                            ; preds = %bb.gh
  %i.ajw = call double @jv_number_value(i64 %i.ajt, ptr %i.aju) #12
  %i.ajx = fcmp oeq double %i.ajw, 9.900000e+01
  br i1 %i.ajx, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  call void @__assert_fail(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.7, i32 noundef 508, ptr noundef nonnull @__PRETTY_FUNCTION__.run_jq_exhaust_and_reuse_tests) #13
  unreachable

bb.gl:                                            ; preds = %bb.gj
  call void @jv_free(i64 %i.ajt, ptr %i.aju) #12
  %i.ajy = call { i64, ptr } @jq_next(ptr noundef nonnull %i.aho) #12 ; 2 uses
  %i.ajz = extractvalue { i64, ptr } %i.ajy, 0    ; 2 uses
  %i.aka = extractvalue { i64, ptr } %i.ajy, 1    ; 2 uses
  %i.akb = call i32 @jv_get_kind(i64 %i.ajz, ptr %i.aka) #12
  %.not75.i = icmp eq i32 %i.akb, 0
  br i1 %.not75.i, label %run_jq_exhaust_and_reuse_tests.exit, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  call void @__assert_fail(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.7, i32 noundef 511, ptr noundef nonnull @__PRETTY_FUNCTION__.run_jq_exhaust_and_reuse_tests) #13
  unreachable

run_jq_exhaust_and_reuse_tests.exit:              ; preds = %bb.gl
  call void @jv_free(i64 %i.ajz, ptr %i.aka) #12
  call void @jq_teardown(ptr noundef nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  %i.akc = call i32 @pthread_create(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef nonnull @test_pthread_run, ptr noundef nonnull %5) #12
  %i.akd = icmp eq i32 %i.akc, 0
  br i1 %i.akd, label %bb.gn, label %bb.gp

bb.gn:                                            ; preds = %run_jq_exhaust_and_reuse_tests.exit
  %i.ake = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.akf = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.akg = call i32 @pthread_create(ptr noundef nonnull %i.ake, ptr noundef null, ptr noundef nonnull @test_pthread_run, ptr noundef nonnull %i.akf) #12
  %i.akh = icmp eq i32 %i.akg, 0
  br i1 %i.akh, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  %i.aki = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.akk = call i32 @pthread_create(ptr noundef nonnull %i.aki, ptr noundef null, ptr noundef nonnull @test_pthread_run, ptr noundef nonnull %i.akj) #12
  %i.akl = icmp eq i32 %i.akk, 0
  br i1 %i.akl, label %.preheader13.preheader.i, label %bb.gp

.preheader13.preheader.i:                         ; preds = %bb.go
  %i.akm = load i64, ptr %i.a, align 16, !tbaa !27 ; 2 uses
  %.not.i54 = icmp eq i64 %i.akm, 0
  br i1 %.not.i54, label %.preheader13.1.i, label %bb.gq

bb.gp:                                            ; preds = %bb.go, %bb.gn, %run_jq_exhaust_and_reuse_tests.exit
  call void @__assert_fail(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.7, i32 noundef 582, ptr noundef nonnull @__PRETTY_FUNCTION__.run_jq_pthread_tests) #13
  unreachable

bb.gq:                                            ; preds = %.preheader13.preheader.i
  %i.akn = call i32 @pthread_join(i64 noundef %i.akm, ptr noundef null) #12 ; 0 uses
  br label %.preheader13.1.i

.preheader13.1.i:                                 ; preds = %bb.gq, %.preheader13.preheader.i
  %i.ako = load i64, ptr %i.ake, align 8, !tbaa !27 ; 2 uses
  %.not.1.i = icmp eq i64 %i.ako, 0
  br i1 %.not.1.i, label %.preheader13.2.i, label %bb.gr

bb.gr:                                            ; preds = %.preheader13.1.i
  %i.akp = call i32 @pthread_join(i64 noundef %i.ako, ptr noundef null) #12 ; 0 uses
  br label %.preheader13.2.i

.preheader13.2.i:                                 ; preds = %bb.gr, %.preheader13.1.i
  %i.akq = load i64, ptr %i.aki, align 16, !tbaa !27 ; 2 uses
  %.not.2.i = icmp eq i64 %i.akq, 0
  br i1 %.not.2.i, label %.preheader.preheader.i, label %bb.gs

bb.gs:                                            ; preds = %.preheader13.2.i
  %i.akr = call i32 @pthread_join(i64 noundef %i.akq, ptr noundef null) #12 ; 0 uses
  br label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.gs, %.preheader13.2.i
  %i.aks = load i32, ptr %5, align 4, !tbaa !18
  %i.akt = icmp eq i32 %i.aks, 0
  %i.aku = load i32, ptr %i.akf, align 4
  %i.akv = icmp eq i32 %i.aku, 0
  %or.cond.i = select i1 %i.akt, i1 %i.akv, i1 false
  %i.akw = load i32, ptr %i.akj, align 4
  %i.akx = icmp eq i32 %i.akw, 0
  %or.cond24.i = select i1 %or.cond.i, i1 %i.akx, i1 false
  br i1 %or.cond24.i, label %run_jq_pthread_tests.exit, label %bb.gt

bb.gt:                                            ; preds = %.preheader.preheader.i
  call void @__assert_fail(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.7, i32 noundef 598, ptr noundef nonnull @__PRETTY_FUNCTION__.run_jq_pthread_tests) #13
  unreachable

run_jq_pthread_tests.exit:                        ; preds = %.preheader.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @run_jq_tests(i64 %0, ptr %1, i32 noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 22 uses
  %i.b = alloca [4096 x i8], align 16             ; 24 uses
  %6 = alloca %struct.err_data, align 1           ; 9 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.a, i8 0, i64 4096, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.d = tail call i32 @llvm.smax.i32(i32 %4, i32 0) ; 3 uses
  %i.e = tail call ptr @jq_init() #12             ; 3 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !16
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 105, ptr noundef nonnull @__PRETTY_FUNCTION__.run_jq_tests) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = tail call i32 @jv_get_kind(i64 %0, ptr %1) #12
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call { i64, ptr } @jv_array() #12   ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.h, 0
  %i.j = extractvalue { i64, ptr } %i.h, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0135.0 = phi i64 [ %i.i, %bb.d ], [ %0, %bb.c ]
  %.sroa.4137.0 = phi ptr [ %i.j, %bb.d ], [ %1, %bb.c ]
  %i.k = tail call { i64, ptr } @jv_string(ptr noundef nonnull @.str.8) #12 ; 2 uses
  %i.l = extractvalue { i64, ptr } %i.k, 0
  %i.m = extractvalue { i64, ptr } %i.k, 1
  tail call void @jq_set_attr(ptr noundef nonnull %i.e, i64 %i.l, ptr %i.m, i64 %.sroa.0135.0, ptr %.sroa.4137.0) #12
  %i.n = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 4096, ptr noundef %3)
  %.not182380395427 = icmp eq ptr %i.n, null
  br i1 %.not182380395427, label %.loopexit, label %.lr.ph.lr.ph.lr.ph

.lr.ph.lr.ph.lr.ph:                               ; preds = %bb.e
  %.not187 = icmp ne i32 %2, 0                    ; 2 uses
  %i.o = zext i1 %.not187 to i32
  br label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %.lr.ph.lr.ph.lr.ph, %.outer.backedge
  %.0139.ph435 = phi i32 [ %4, %.lr.ph.lr.ph.lr.ph ], [ %.0139.ph.be, %.outer.backedge ]
  %.0140.ph434 = phi i32 [ %5, %.lr.ph.lr.ph.lr.ph ], [ %.0140.ph.be, %.outer.backedge ]
  %.0143.ph433 = phi i32 [ 0, %.lr.ph.lr.ph.lr.ph ], [ %.0143.ph.be, %.outer.backedge ]
  %.0146.ph432 = phi i32 [ 0, %.lr.ph.lr.ph.lr.ph ], [ %.0146.ph.be, %.outer.backedge ]
  %.0150.ph431 = phi i32 [ 0, %.lr.ph.lr.ph.lr.ph ], [ %.0150.ph.be, %.outer.backedge ]
  %.0154.ph430 = phi i32 [ 0, %.lr.ph.lr.ph.lr.ph ], [ %.0154.ph.be, %.outer.backedge ]
  %.0162.ph429 = phi i32 [ 0, %.lr.ph.lr.ph.lr.ph ], [ %.0162.ph.be, %.outer.backedge ]
  %.0164.ph428 = phi i32 [ 0, %.lr.ph.lr.ph.lr.ph ], [ %.0164.ph.be, %.outer.backedge ] ; 2 uses
  %i.p = icmp eq i32 %.0162.ph429, 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer265
  %.0139.ph272405 = phi i32 [ %.0139.ph435, %.lr.ph.lr.ph ], [ %.1, %.outer265 ] ; 6 uses
  %.0140.ph271404 = phi i32 [ %.0140.ph434, %.lr.ph.lr.ph ], [ %.1141, %.outer265 ] ; 6 uses
  %.0143.ph270403 = phi i32 [ %.0143.ph433, %.lr.ph.lr.ph ], [ %i.as, %.outer265 ] ; 5 uses
  %.0146.ph269400 = phi i32 [ %.0146.ph432, %.lr.ph.lr.ph ], [ %i.es, %.outer265 ] ; 11 uses
  %.0150.ph268398 = phi i32 [ %.0150.ph431, %.lr.ph.lr.ph ], [ %.4, %.outer265 ] ; 13 uses
  %.0154.ph267397 = phi i32 [ %.0154.ph430, %.lr.ph.lr.ph ], [ %.5159252, %.outer265 ]
  %.0162.ph266396 = phi i1 [ %i.p, %.lr.ph.lr.ph ], [ true, %.outer265 ]
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %skipline.exit
  %.0154381 = phi i32 [ %.0154.ph267397, %.lr.ph ], [ %i.q, %skipline.exit ] ; 2 uses
  %i.q = add i32 %.0154381, 1                     ; 11 uses
  br label %bb.g

bb.g:                                             ; preds = %.critedge.i, %bb.f
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.critedge.i ], [ 0, %bb.f ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  %i.s = load i8, ptr %i.r, align 1, !tbaa !13
  switch i8 %i.s, label %bb.h [
    i8 32, label %.critedge.i
    i8 9, label %.critedge.i
    i8 35, label %skipline.exit
    i8 10, label %skipline.exit
    i8 0, label %skipline.exit
  ]

.critedge.i:                                      ; preds = %bb.g, %bb.g
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %bb.g, !llvm.loop !28

skipline.exit:                                    ; preds = %bb.g, %bb.g, %bb.g
  %i.t = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 4096, ptr noundef %3)
  %.not182 = icmp eq ptr %i.t, null
  br i1 %.not182, label %.loopexit, label %bb.f

bb.h:                                             ; preds = %bb.g
  %lhsv = load i64, ptr %i.a, align 16
  %.not256 = icmp eq i64 %lhsv, 2898627278546213  ; 2 uses
  br i1 %.not256, label %checkfail.exit.thread, label %checkfail.exit

checkfail.exit:                                   ; preds = %bb.h
  %i.u = load i128, ptr %i.a, align 16
  %i.v = xor i128 %i.u, 110726385037579375120779334334665860389
  %i.w = getelementptr i8, ptr %i.a, i64 3
  %i.x = load i128, ptr %i.w, align 1
  %i.y = xor i128 %i.x, 53369619474054972931579313962895681
  %i.z = or i128 %i.v, %i.y
  %i.aa = icmp ne i128 %i.z, 0
  %i.ab = zext i1 %i.aa to i32
  %.not257 = icmp eq i32 %i.ab, 0
  br i1 %.not257, label %checkfail.exit.thread, label %bb.i

checkfail.exit.thread:                            ; preds = %bb.h, %checkfail.exit
  %i.ac = zext i1 %.not256 to i32
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !16
  call void @jq_set_error_cb(ptr noundef %i.ad, ptr noundef nonnull @test_err_cb, ptr noundef nonnull %6) #12
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %skipline.exit229.loopexit, %bb.be, %bb.be, %bb.be, %bb.bd, %checkfail.exit.thread, %bb.ai
  %.0164.ph.be = phi i32 [ 0, %bb.ai ], [ %i.ac, %checkfail.exit.thread ], [ 0, %bb.bd ], [ 0, %bb.be ], [ 0, %bb.be ], [ 0, %bb.be ], [ 0, %skipline.exit229.loopexit ]
  %.0162.ph.be = phi i32 [ 0, %bb.ai ], [ 1, %checkfail.exit.thread ], [ 0, %bb.bd ], [ 0, %bb.be ], [ 0, %bb.be ], [ 0, %bb.be ], [ 0, %skipline.exit229.loopexit ]
  %.0154.ph.be = phi i32 [ %.2156, %bb.ai ], [ %i.q, %checkfail.exit.thread ], [ %.7161, %bb.bd ], [ %i.ex, %bb.be ], [ %i.ex, %bb.be ], [ %i.ex, %bb.be ], [ %i.ex, %skipline.exit229.loopexit ]
  %.0150.ph.be = phi i32 [ %.1151, %bb.ai ], [ %.0150.ph268398, %checkfail.exit.thread ], [ %.6, %bb.bd ], [ %.6, %bb.be ], [ %.6, %bb.be ], [ %.6, %bb.be ], [ %.6, %skipline.exit229.loopexit ] ; 2 uses
  %.0146.ph.be = phi i32 [ %i.bw, %bb.ai ], [ %.0146.ph269400, %checkfail.exit.thread ], [ %.0146.ph269400, %bb.bd ], [ %.0146.ph269400, %bb.be ], [ %.0146.ph269400, %bb.be ], [ %.0146.ph269400, %bb.be ], [ %.0146.ph269400, %skipline.exit229.loopexit ] ; 2 uses
  %.0143.ph.be = phi i32 [ %i.as, %bb.ai ], [ %.0143.ph270403, %checkfail.exit.thread ], [ %.1144, %bb.bd ], [ %.1144, %bb.be ], [ %.1144, %bb.be ], [ %.1144, %bb.be ], [ %.1144, %skipline.exit229.loopexit ] ; 2 uses
  %.0140.ph.be = phi i32 [ %.1141, %bb.ai ], [ %.0140.ph271404, %checkfail.exit.thread ], [ %.2142, %bb.bd ], [ %.2142, %bb.be ], [ %.2142, %bb.be ], [ %.2142, %bb.be ], [ %.2142, %skipline.exit229.loopexit ]
  %.0139.ph.be = phi i32 [ %.1, %bb.ai ], [ %.0139.ph272405, %checkfail.exit.thread ], [ %.2, %bb.bd ], [ %.2, %bb.be ], [ %.2, %bb.be ], [ %.2, %bb.be ], [ %.2, %skipline.exit229.loopexit ] ; 2 uses
  %i.ae = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 4096, ptr noundef %3)
  %.not182380395 = icmp eq ptr %i.ae, null
  br i1 %.not182380395, label %.loopexit, label %.lr.ph.lr.ph

bb.i:                                             ; preds = %checkfail.exit
  %i.af = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #14
  %i.ag = getelementptr i8, ptr %i.a, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 -1     ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !13
  %i.aj = icmp eq i8 %i.ai, 10
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.ah, align 1, !tbaa !13
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ak = icmp sgt i32 %.0139.ph272405, 0
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.al = add nsw i32 %.0139.ph272405, -1
  br label %bb.bd

bb.m:                                             ; preds = %bb.k
  %i.am = icmp eq i32 %.0139.ph272405, 0
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.d) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.1 = phi i32 [ -1, %bb.n ], [ %.0139.ph272405, %bb.m ] ; 6 uses
  %i.ao = icmp sgt i32 %.0140.ph271404, 0
  br i1 %i.ao, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ap = add nsw i32 %.0140.ph271404, -1
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.aq = icmp eq i32 %.0140.ph271404, 0
  br i1 %i.aq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ar = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %5) ; 0 uses
  br label %.loopexit

bb.s:                                             ; preds = %bb.q, %bb.p
  %.1141 = phi i32 [ %i.ap, %bb.p ], [ %.0140.ph271404, %bb.q ] ; 3 uses
  %i.as = add nsw i32 %.0143.ph270403, 1          ; 6 uses
  %i.at = add nsw i32 %i.as, %i.d
  %i.au = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.at, ptr noundef nonnull %i.a, i32 noundef %i.q) ; 0 uses
  %7 = load ptr, ptr %i.c, align 8, !tbaa !16     ; 6 uses
  %i.av = call i32 @jq_compile(ptr noundef %7, ptr noundef nonnull %i.a) #12 ; 2 uses
  br i1 %.0162.ph266396, label %bb.aj, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @jq_set_error_cb(ptr noundef %7, ptr noundef null, ptr noundef null) #12
  %.not200 = icmp eq i32 %i.av, 0
  br i1 %.not200, label %.preheader, label %bb.w

.preheader:                                       ; preds = %bb.t
  %i.aw = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 4096, ptr noundef %3)
  %.not201414 = icmp eq ptr %i.aw, null
  br i1 %.not201414, label %skipline.exit217, label %.lr.ph417

.lr.ph417:                                        ; preds = %.preheader
  %.not203 = icmp eq i32 %.0164.ph428, 0
  br i1 %.not203, label %.lr.ph417.split.us, label %.lr.ph417.split

.lr.ph417.split.us:                               ; preds = %.lr.ph417, %bb.v
  %.1155416.us = phi i32 [ %i.ax, %bb.v ], [ %i.q, %.lr.ph417 ]
  %i.ax = add i32 %.1155416.us, 1                 ; 5 uses
  br label %bb.u

bb.u:                                             ; preds = %.critedge.i215.us, %.lr.ph417.split.us
  %indvars.iv.i212.us = phi i64 [ %indvars.iv.next.i216.us, %.critedge.i215.us ], [ 0, %.lr.ph417.split.us ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i212.us
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !13
  switch i8 %i.az, label %bb.v [
    i8 32, label %.critedge.i215.us
    i8 9, label %.critedge.i215.us
    i8 35, label %skipline.exit217
    i8 10, label %skipline.exit217
    i8 0, label %skipline.exit217
  ]

.critedge.i215.us:                                ; preds = %bb.u, %bb.u
  %indvars.iv.next.i216.us = add nuw nsw i64 %indvars.iv.i212.us, 1
  br label %bb.u, !llvm.loop !28

bb.v:                                             ; preds = %bb.u
  %i.ba = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 4096, ptr noundef %3)
  %.not201.us = icmp eq ptr %i.ba, null
  br i1 %.not201.us, label %skipline.exit217, label %.lr.ph417.split.us, !llvm.loop !29

bb.w:                                             ; preds = %bb.t
  %i.bb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.q, ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.bc

.lr.ph417.split:                                  ; preds = %.lr.ph417, %bb.ad
  %.1155416 = phi i32 [ %i.bc, %bb.ad ], [ %i.q, %.lr.ph417 ]
  %.0175415 = phi ptr [ %spec.select.idx.sroa.sel.idx.sroa.sel, %bb.ad ], [ %6, %.lr.ph417 ] ; 7 uses
  %i.bc = add i32 %.1155416, 1                    ; 7 uses
  br label %bb.x

bb.x:                                             ; preds = %.critedge.i215, %.lr.ph417.split
  %indvars.iv.i212 = phi i64 [ %indvars.iv.next.i216, %.critedge.i215 ], [ 0, %.lr.ph417.split ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i212
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !13
  switch i8 %i.be, label %bb.y [
    i8 32, label %.critedge.i215
    i8 9, label %.critedge.i215
    i8 35, label %skipline.exit217
    i8 10, label %skipline.exit217
    i8 0, label %skipline.exit217
  ]

.critedge.i215:                                   ; preds = %bb.x, %bb.x
  %indvars.iv.next.i216 = add nuw nsw i64 %indvars.iv.i212, 1
  br label %bb.x, !llvm.loop !28

bb.y:                                             ; preds = %bb.x
  %i.bf = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #14
  %i.bg = getelementptr i8, ptr %i.b, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 -1     ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !13
  %i.bj = icmp eq i8 %i.bi, 10
  br i1 %i.bj, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i8 0, ptr %i.bh, align 1, !tbaa !13
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bk = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #14 ; 2 uses
  %i.bl = call i32 @strncmp(ptr noundef nonnull %i.b, ptr noundef %.0175415, i64 noundef %i.bk) #14
  %.not204 = icmp eq i32 %i.bl, 0
  br i1 %.not204, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bm = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.0175415, i32 noundef 10) #14 ; 2 uses
  %.not205 = icmp eq ptr %i.bm, null
  br i1 %.not205, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i8 0, ptr %i.bm, align 1, !tbaa !13
  br label %.thread

.thread:                                          ; preds = %bb.ab, %bb.ac
  %i.bn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull %.0175415, ptr noundef nonnull %i.b, i32 noundef %i.bc, ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.bc

bb.ad:                                            ; preds = %bb.aa
  %i.bo = getelementptr inbounds nuw i8, ptr %.0175415, i64 %i.bk ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !13
  %i.bq = icmp eq i8 %i.bp, 10
  %spec.select.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %i.bq to i64
  %spec.select.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.bo, i64 %spec.select.idx.sroa.sel.idx.sroa.sel.idx ; 2 uses
  %i.br = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 4096, ptr noundef %3)
  %.not201 = icmp eq ptr %i.br, null
  br i1 %.not201, label %skipline.exit217, label %.lr.ph417.split, !llvm.loop !29

skipline.exit217:                                 ; preds = %bb.ad, %bb.v, %bb.x, %bb.x, %bb.x, %bb.u, %bb.u, %bb.u, %.preheader
  %.0175375 = phi ptr [ %6, %bb.u ], [ %6, %.preheader ], [ %6, %bb.v ], [ %.0175415, %bb.x ], [ %6, %bb.u ], [ %6, %bb.u ], [ %.0175415, %bb.x ], [ %.0175415, %bb.x ], [ %spec.select.idx.sroa.sel.idx.sroa.sel, %bb.ad ] ; 3 uses
  %.2156 = phi i32 [ %i.ax, %bb.u ], [ %i.q, %.preheader ], [ %i.ax, %bb.v ], [ %i.bc, %bb.x ], [ %i.ax, %bb.u ], [ %i.ax, %bb.u ], [ %i.bc, %bb.x ], [ %i.bc, %bb.x ], [ %i.bc, %bb.ad ] ; 2 uses
  %.not206 = icmp eq i32 %.0164.ph428, 0
  br i1 %.not206, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %skipline.exit217
  %i.bs = load i8, ptr %.0175375, align 1, !tbaa !13
  %.not207 = icmp eq i8 %i.bs, 0
  br i1 %.not207, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bt = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.0175375, i32 noundef 10) #14 ; 2 uses
  %.not208 = icmp eq ptr %i.bt, null
  br i1 %.not208, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i8 0, ptr %i.bt, align 1, !tbaa !13
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.bu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef nonnull %.0175375, i32 noundef %.2156, ptr noundef nonnull %i.a) ; 0 uses
  %i.bv = add nsw i32 %.0150.ph268398, 1
  br label %bb.ai

bb.ai:                                            ; preds = %skipline.exit217, %bb.ae, %bb.ah
  %.0166 = phi i32 [ 0, %bb.ah ], [ 1, %bb.ae ], [ 1, %skipline.exit217 ]
  %.1151 = phi i32 [ %i.bv, %bb.ah ], [ %.0150.ph268398, %bb.ae ], [ %.0150.ph268398, %skipline.exit217 ]
  %i.bw = add nsw i32 %.0166, %.0146.ph269400
  br label %.outer.backedge

bb.aj:                                            ; preds = %bb.s
  %.not186 = icmp eq i32 %i.av, 0
  br i1 %.not186, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.bx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %i.q, ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.bc

bb.al:                                            ; preds = %bb.aj
  br i1 %.not187, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  call void @jq_dump_disassembly(ptr noundef %7, i32 noundef 2) #12
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.by = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 4096, ptr noundef %3)
  %.not188 = icmp eq ptr %i.by, null
  br i1 %.not188, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.bz = add nsw i32 %.0150.ph268398, 1
  br label %.loopexit

bb.ap:                                            ; preds = %bb.an
  %i.ca = add i32 %.0154381, 2                    ; 4 uses
  %i.cb = call { i64, ptr } @jv_parse(ptr noundef nonnull %i.b) #12 ; 2 uses
  %i.cc = extractvalue { i64, ptr } %i.cb, 0      ; 2 uses
  %i.cd = extractvalue { i64, ptr } %i.cb, 1      ; 2 uses
  %i.ce = call i32 @jv_get_kind(i64 %i.cc, ptr %i.cd) #12
  %.not258 = icmp eq i32 %i.ce, 0
  br i1 %.not258, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.cf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.ca, ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.bc

bb.ar:                                            ; preds = %bb.ap
  call void @jq_start(ptr noundef %7, i64 %i.cc, ptr %i.cd, i32 noundef %i.o) #12
  %i.cg = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 4096, ptr noundef %3)
  %.not192389 = icmp eq ptr %i.cg, null
  br i1 %.not192389, label %skipline.exit223.thread, label %.lr.ph392

.lr.ph392:                                        ; preds = %bb.ar, %bb.az
  %.4158391 = phi i32 [ %i.ch, %bb.az ], [ %i.ca, %bb.ar ]
  %.1167390 = phi i32 [ %.3169, %bb.az ], [ 1, %bb.ar ] ; 4 uses
  %i.ch = add i32 %.4158391, 1                    ; 9 uses
  br label %bb.as

bb.as:                                            ; preds = %.critedge.i221, %.lr.ph392
  %indvars.iv.i218 = phi i64 [ %indvars.iv.next.i222, %.critedge.i221 ], [ 0, %.lr.ph392 ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i218
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !13
  switch i8 %i.cj, label %bb.at [
    i8 32, label %.critedge.i221
    i8 9, label %.critedge.i221
    i8 35, label %skipline.exit223
    i8 10, label %skipline.exit223
    i8 0, label %skipline.exit223
  ]

.critedge.i221:                                   ; preds = %bb.as, %bb.as
  %indvars.iv.next.i222 = add nuw nsw i64 %indvars.iv.i218, 1
  br label %bb.as, !llvm.loop !28

bb.at:                                            ; preds = %bb.as
  %i.ck = call { i64, ptr } @jv_parse(ptr noundef nonnull %i.b) #12 ; 2 uses
  %i.cl = extractvalue { i64, ptr } %i.ck, 0      ; 7 uses
  %i.cm = extractvalue { i64, ptr } %i.ck, 1      ; 7 uses
  %i.cn = call i32 @jv_get_kind(i64 %i.cl, ptr %i.cm) #12
  %.not259 = icmp eq i32 %i.cn, 0
  br i1 %.not259, label %.thread245, label %bb.au

.thread245:                                       ; preds = %bb.at
  %i.co = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.ch, ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.bc

bb.au:                                            ; preds = %bb.at
  %i.cp = call { i64, ptr } @jq_next(ptr noundef %7) #12 ; 2 uses
  %i.cq = extractvalue { i64, ptr } %i.cp, 0      ; 5 uses
  %i.cr = extractvalue { i64, ptr } %i.cp, 1      ; 5 uses
  %i.cs = call i32 @jv_get_kind(i64 %i.cq, ptr %i.cr) #12
  %.not260 = icmp eq i32 %i.cs, 0
  br i1 %.not260, label %skipline.exit223.thread248, label %bb.av

skipline.exit223.thread248:                       ; preds = %bb.au
  call void @jv_free(i64 %i.cl, ptr %i.cm) #12
  call void @jv_free(i64 %i.cq, ptr %i.cr) #12
  %i.ct = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %i.ch, ptr noundef nonnull %i.a) ; 0 uses
  br label %.outer265

bb.av:                                            ; preds = %bb.au
  %i.cu = call { i64, ptr } @jv_copy(i64 %i.cl, ptr %i.cm) #12 ; 2 uses
  %i.cv = extractvalue { i64, ptr } %i.cu, 0
  %i.cw = extractvalue { i64, ptr } %i.cu, 1
  %i.cx = call { i64, ptr } @jv_copy(i64 %i.cq, ptr %i.cr) #12 ; 2 uses
  %i.cy = extractvalue { i64, ptr } %i.cx, 0
  %i.cz = extractvalue { i64, ptr } %i.cx, 1
  %i.da = call i32 @jv_equal(i64 %i.cv, ptr %i.cw, i64 %i.cy, ptr %i.cz) #12
  %.not196 = icmp eq i32 %i.da, 0
  br i1 %.not196, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.db = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21) ; 0 uses
  %i.dc = call { i64, ptr } @jv_copy(i64 %i.cl, ptr %i.cm) #12 ; 2 uses
  %i.dd = extractvalue { i64, ptr } %i.dc, 0
  %i.de = extractvalue { i64, ptr } %i.dc, 1
  call void @jv_dump(i64 %i.dd, ptr %i.de, i32 noundef 0) #12
  %i.df = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22) ; 0 uses
  %i.dg = call { i64, ptr } @jv_copy(i64 %i.cq, ptr %i.cr) #12 ; 2 uses
  %i.dh = extractvalue { i64, ptr } %i.dg, 0
  %i.di = extractvalue { i64, ptr } %i.dg, 1
  call void @jv_dump(i64 %i.dh, ptr %i.di, i32 noundef 0) #12
  %i.dj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %i.ch, ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %.2168 = phi i32 [ %.1167390, %bb.av ], [ 0, %bb.aw ]
  %i.dk = call { i64, ptr } @jv_copy(i64 %i.cl, ptr %i.cm) #12 ; 2 uses
  %i.dl = extractvalue { i64, ptr } %i.dk, 0
  %i.dm = extractvalue { i64, ptr } %i.dk, 1
  %i.dn = call { i64, ptr } @jv_dump_string(i64 %i.dl, ptr %i.dm, i32 noundef 0) #12 ; 2 uses
  %i.do = extractvalue { i64, ptr } %i.dn, 0      ; 3 uses
  %i.dp = extractvalue { i64, ptr } %i.dn, 1      ; 3 uses
  %i.dq = call ptr @jv_string_value(i64 %i.do, ptr %i.dp) #12
  %i.dr = call { i64, ptr } @jv_copy(i64 %i.do, ptr %i.dp) #12 ; 2 uses
  %i.ds = extractvalue { i64, ptr } %i.dr, 0
  %i.dt = extractvalue { i64, ptr } %i.dr, 1
  %i.du = call i32 @jv_string_length_bytes(i64 %i.ds, ptr %i.dt) #12
  %i.dv = call { i64, ptr } @jv_parse_sized(ptr noundef %i.dq, i32 noundef %i.du) #12 ; 2 uses
  %i.dw = extractvalue { i64, ptr } %i.dv, 0      ; 3 uses
  %i.dx = extractvalue { i64, ptr } %i.dv, 1      ; 3 uses
  %i.dy = call { i64, ptr } @jv_copy(i64 %i.cl, ptr %i.cm) #12 ; 2 uses
  %i.dz = extractvalue { i64, ptr } %i.dy, 0
  %i.ea = extractvalue { i64, ptr } %i.dy, 1
  %i.eb = call { i64, ptr } @jv_copy(i64 %i.dw, ptr %i.dx) #12 ; 2 uses
  %i.ec = extractvalue { i64, ptr } %i.eb, 0
  %i.ed = extractvalue { i64, ptr } %i.eb, 1
  %i.ee = call i32 @jv_equal(i64 %i.dz, ptr %i.ea, i64 %i.ec, ptr %i.ed) #12
  %.not197 = icmp eq i32 %i.ee, 0
  br i1 %.not197, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ef = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24) ; 0 uses
  %i.eg = call { i64, ptr } @jv_copy(i64 %i.dw, ptr %i.dx) #12 ; 2 uses
  %i.eh = extractvalue { i64, ptr } %i.eg, 0
  %i.ei = extractvalue { i64, ptr } %i.eg, 1
  call void @jv_dump(i64 %i.eh, ptr %i.ei, i32 noundef 0) #12
  %i.ej = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %i.ch, ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %.3169 = phi i32 [ %.2168, %bb.ax ], [ 0, %bb.ay ] ; 2 uses
  call void @jv_free(i64 %i.do, ptr %i.dp) #12
  call void @jv_free(i64 %i.dw, ptr %i.dx) #12
  call void @jv_free(i64 %i.cl, ptr %i.cm) #12
  call void @jv_free(i64 %i.cq, ptr %i.cr) #12
  %i.ek = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 4096, ptr noundef %3)
  %.not192 = icmp eq ptr %i.ek, null
  br i1 %.not192, label %skipline.exit223, label %.lr.ph392

skipline.exit223:                                 ; preds = %bb.az, %bb.as, %bb.as, %bb.as
  %.1167287 = phi i32 [ %.1167390, %bb.as ], [ %.1167390, %bb.as ], [ %.1167390, %bb.as ], [ %.3169, %bb.az ]
  %.not198 = icmp eq i32 %.1167287, 0
  br i1 %.not198, label %.outer265, label %skipline.exit223.thread

skipline.exit223.thread:                          ; preds = %bb.ar, %skipline.exit223
  %.5159574 = phi i32 [ %i.ch, %skipline.exit223 ], [ %i.ca, %bb.ar ] ; 3 uses
  %i.el = call { i64, ptr } @jq_next(ptr noundef %7) #12 ; 2 uses
  %i.em = extractvalue { i64, ptr } %i.el, 0      ; 3 uses
  %i.en = extractvalue { i64, ptr } %i.el, 1      ; 3 uses
  %i.eo = call i32 @jv_get_kind(i64 %i.em, ptr %i.en) #12
  %.not261 = icmp eq i32 %i.eo, 0
  br i1 %.not261, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %skipline.exit223.thread
  %i.ep = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26) ; 0 uses
  call void @jv_dump(i64 %i.em, ptr %i.en, i32 noundef 0) #12
  %i.eq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %.5159574, ptr noundef nonnull %i.a) ; 0 uses
  %i.er = add nsw i32 %.0150.ph268398, 1
  br label %.outer265

bb.bb:                                            ; preds = %skipline.exit223.thread
  call void @jv_free(i64 %i.em, ptr %i.en) #12
  br label %.outer265

.outer265:                                        ; preds = %skipline.exit223.thread248, %bb.ba, %bb.bb, %skipline.exit223
  %.5159252 = phi i32 [ %i.ch, %skipline.exit223 ], [ %.5159574, %bb.ba ], [ %.5159574, %bb.bb ], [ %i.ch, %skipline.exit223.thread248 ]
  %.8174 = phi i32 [ 0, %skipline.exit223 ], [ 0, %bb.ba ], [ 1, %bb.bb ], [ 0, %skipline.exit223.thread248 ]
  %.4 = phi i32 [ %.0150.ph268398, %skipline.exit223 ], [ %i.er, %bb.ba ], [ %.0150.ph268398, %bb.bb ], [ %.0150.ph268398, %skipline.exit223.thread248 ] ; 2 uses
  %i.es = add nsw i32 %.8174, %.0146.ph269400     ; 2 uses
  %i.et = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 4096, ptr noundef %3)
  %.not182380 = icmp eq ptr %i.et, null
  br i1 %.not182380, label %.loopexit, label %.lr.ph

bb.bc:                                            ; preds = %.thread245, %.thread, %bb.aq, %bb.ak, %bb.w
  %.6160 = phi i32 [ %i.q, %bb.w ], [ %i.bc, %.thread ], [ %i.ch, %.thread245 ], [ %i.ca, %bb.aq ], [ %i.q, %bb.ak ]
  %i.eu = add nsw i32 %.0150.ph268398, 1
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.l
  %.7161 = phi i32 [ %i.q, %bb.l ], [ %.6160, %bb.bc ] ; 2 uses
  %.6 = phi i32 [ %.0150.ph268398, %bb.l ], [ %i.eu, %bb.bc ] ; 5 uses
  %.1144 = phi i32 [ %.0143.ph270403, %bb.l ], [ %i.as, %bb.bc ] ; 5 uses
  %.2142 = phi i32 [ %.0140.ph271404, %bb.l ], [ %.1141, %bb.bc ] ; 5 uses
  %.2 = phi i32 [ %i.al, %bb.l ], [ %.1, %bb.bc ] ; 5 uses
  %i.ev = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 4096, ptr noundef %3)
  %.not209423 = icmp eq ptr %i.ev, null
  br i1 %.not209423, label %.outer.backedge, label %.lr.ph425

skipline.exit229.loopexit:                        ; preds = %bb.be
  %i.ew = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 4096, ptr noundef %3)
  %.not209 = icmp eq ptr %i.ew, null
  br i1 %.not209, label %.outer.backedge, label %.lr.ph425, !llvm.loop !30

.lr.ph425:                                        ; preds = %bb.bd, %skipline.exit229.loopexit
  %.8424 = phi i32 [ %i.ex, %skipline.exit229.loopexit ], [ %.7161, %bb.bd ]
  %i.ex = add i32 %.8424, 1                       ; 5 uses
  br label %bb.be

bb.be:                                            ; preds = %.critedge.i227, %.lr.ph425
  %indvars.iv.i224 = phi i64 [ %indvars.iv.next.i228, %.critedge.i227 ], [ 0, %.lr.ph425 ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i224
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !13
  switch i8 %i.ez, label %skipline.exit229.loopexit [
    i8 32, label %.critedge.i227
    i8 9, label %.critedge.i227
    i8 35, label %.outer.backedge
    i8 10, label %.outer.backedge
    i8 0, label %.outer.backedge
  ]

.critedge.i227:                                   ; preds = %bb.be, %bb.be
  %indvars.iv.next.i228 = add nuw nsw i64 %indvars.iv.i224, 1
  br label %bb.be, !llvm.loop !28

.loopexit:                                        ; preds = %.outer.backedge, %.outer265, %skipline.exit, %bb.e, %bb.ao, %bb.r
  %.0146.ph269361 = phi i32 [ %.0146.ph269400, %bb.ao ], [ %.0146.ph269400, %bb.r ], [ %i.es, %.outer265 ], [ %.0146.ph269400, %skipline.exit ], [ 0, %bb.e ], [ %.0146.ph.be, %.outer.backedge ] ; 2 uses
  %.7 = phi i32 [ %i.bz, %bb.ao ], [ %.0150.ph268398, %bb.r ], [ %.4, %.outer265 ], [ %.0150.ph268398, %skipline.exit ], [ 0, %bb.e ], [ %.0150.ph.be, %.outer.backedge ]
  %.2145 = phi i32 [ %i.as, %bb.ao ], [ %.0143.ph270403, %bb.r ], [ %i.as, %.outer265 ], [ %.0143.ph270403, %skipline.exit ], [ 0, %bb.e ], [ %.0143.ph.be, %.outer.backedge ] ; 2 uses
  %.3 = phi i32 [ %.1, %bb.ao ], [ %.1, %bb.r ], [ %.1, %.outer265 ], [ %.0139.ph272405, %skipline.exit ], [ %4, %bb.e ], [ %.0139.ph.be, %.outer.backedge ] ; 2 uses
  call void @jq_teardown(ptr noundef nonnull %i.c) #12
  %i.fa = icmp sgt i32 %.3, 0
  %i.fb = call i32 @llvm.smax.i32(i32 %.3, i32 0)
  %spec.select211 = sub nsw i32 %i.d, %i.fb
  %i.fc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef %.0146.ph269361, i32 noundef %.2145, i32 noundef %.7, i32 noundef %spec.select211) ; 0 uses
  br i1 %i.fa, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.loopexit
  %puts190 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  call void @exit(i32 noundef 2) #16
  unreachable

bb.bg:                                            ; preds = %.loopexit
  %.not189 = icmp eq i32 %.0146.ph269361, %.2145
  br i1 %.not189, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @exit(i32 noundef 1) #16
  unreachable

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

declare { i64, ptr } @jv_copy(i64, ptr) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @jv_free(i64, ptr) local_unnamed_addr #6

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare ptr @jq_init() local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

declare i32 @jv_get_kind(i64, ptr) local_unnamed_addr #6

declare { i64, ptr } @jv_array() local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @jq_set_attr(ptr noundef, i64, ptr, i64, ptr) local_unnamed_addr #6

declare { i64, ptr } @jv_string(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #4

declare void @jq_set_error_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal void @test_err_cb(ptr nofree noundef writeonly captures(none) %0, i64 %1, ptr %2) #0 {
bb.a:
  %i.a = tail call i32 @jv_get_kind(i64 %1, ptr %2) #12
  %.not = icmp eq i32 %i.a, 5
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { i64, ptr } @jv_dump_string(i64 %1, ptr %2, i32 noundef 16) #12 ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0
  %i.d = extractvalue { i64, ptr } %i.b, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.02.0 = phi i64 [ %i.c, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.7.0 = phi ptr [ %i.d, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %i.e = tail call ptr @jv_string_value(i64 %.sroa.02.0, ptr %.sroa.7.0) #12
  %i.f = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(10) @.str.32, i64 noundef 9) #14
  %.not11 = icmp eq i32 %i.f, 0
  br i1 %.not11, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @jv_string_value(i64 %.sroa.02.0, ptr %.sroa.7.0) #12
  %i.h = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %0, i64 noundef 4096, ptr noundef nonnull @.str.33, ptr noundef %i.g) #12 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @jv_free(i64 %.sroa.02.0, ptr %.sroa.7.0) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare i32 @jq_compile(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @jq_dump_disassembly(ptr noundef, i32 noundef) local_unnamed_addr #6

declare { i64, ptr } @jv_parse(ptr noundef) local_unnamed_addr #6

declare void @jq_start(ptr noundef, i64, ptr, i32 noundef) local_unnamed_addr #6

declare { i64, ptr } @jq_next(ptr noundef) local_unnamed_addr #6

declare i32 @jv_equal(i64, ptr, i64, ptr) local_unnamed_addr #6

declare void @jv_dump(i64, ptr, i32 noundef) local_unnamed_addr #6

declare { i64, ptr } @jv_dump_string(i64, ptr, i32 noundef) local_unnamed_addr #6

declare { i64, ptr } @jv_parse_sized(ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @jv_string_value(i64, ptr) local_unnamed_addr #6

declare i32 @jv_string_length_bytes(i64, ptr) local_unnamed_addr #6

declare void @jq_teardown(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @test_jq_start_resets_state(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, ptr noundef %0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.c = tail call ptr @jq_init() #12             ; 8 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !16
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 305, ptr noundef nonnull @__PRETTY_FUNCTION__.test_jq_start_resets_state) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 @jq_compile(ptr noundef nonnull %i.c, ptr noundef %0) #12
  %.not19 = icmp eq i32 %i.d, 0
  br i1 %.not19, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.7, i32 noundef 308, ptr noundef nonnull @__PRETTY_FUNCTION__.test_jq_start_resets_state) #13
  unreachable

bb.e:                                             ; preds = %bb.c
end_hunk_0
