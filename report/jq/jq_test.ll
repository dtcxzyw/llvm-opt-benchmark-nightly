Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/jq_test?download=true
inline.NumInlined: 44
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@jq_testsuite:bb.a

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
  %.0139.ph272405.a = phi i32 [ %.0139.ph435, %.lr.ph.lr.ph ], [ %.1, %.outer265 ] ; 6 uses
  %.0140.ph271404 = phi i32 [ %.0140.ph434, %.lr.ph.lr.ph ], [ %.1141, %.outer265 ] ; 6 uses
  %.0143.ph270403 = phi i32 [ %.0143.ph433, %.lr.ph.lr.ph ], [ %i.aq, %.outer265 ] ; 5 uses
  %.0146.ph269400 = phi i32 [ %.0146.ph432, %.lr.ph.lr.ph ], [ %i.er, %.outer265 ] ; 11 uses
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
  %.0154.ph.be = phi i32 [ %.2156, %bb.ai ], [ %i.q, %checkfail.exit.thread ], [ %.7161, %bb.bd ], [ %i.ew, %bb.be ], [ %i.ew, %bb.be ], [ %i.ew, %bb.be ], [ %i.ew, %skipline.exit229.loopexit ]
  %.0150.ph.be = phi i32 [ %.1151, %bb.ai ], [ %.0150.ph268398, %checkfail.exit.thread ], [ %.6, %bb.bd ], [ %.6, %bb.be ], [ %.6, %bb.be ], [ %.6, %bb.be ], [ %.6, %skipline.exit229.loopexit ] ; 2 uses
  %.0146.ph.be = phi i32 [ %i.bv, %bb.ai ], [ %.0146.ph269400, %checkfail.exit.thread ], [ %.0146.ph269400, %bb.bd ], [ %.0146.ph269400, %bb.be ], [ %.0146.ph269400, %bb.be ], [ %.0146.ph269400, %bb.be ], [ %.0146.ph269400, %skipline.exit229.loopexit ] ; 2 uses
  %.0143.ph.be = phi i32 [ %i.aq, %bb.ai ], [ %.0143.ph270403, %checkfail.exit.thread ], [ %.1144, %bb.bd ], [ %.1144, %bb.be ], [ %.1144, %bb.be ], [ %.1144, %bb.be ], [ %.1144, %skipline.exit229.loopexit ] ; 2 uses
  %.0140.ph.be = phi i32 [ %.1141, %bb.ai ], [ %.0140.ph271404, %checkfail.exit.thread ], [ %.2142, %bb.bd ], [ %.2142, %bb.be ], [ %.2142, %bb.be ], [ %.2142, %bb.be ], [ %.2142, %skipline.exit229.loopexit ]
  %.0139.ph.be = phi i32 [ %.1, %bb.ai ], [ %.0139.ph272405.a, %checkfail.exit.thread ], [ %.2, %bb.bd ], [ %.2, %bb.be ], [ %.2, %bb.be ], [ %.2, %bb.be ], [ %.2, %skipline.exit229.loopexit ] ; 2 uses
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
  %7 = icmp sgt i32 %.0139.ph272405.a, 0
  br i1 %7, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ak = add nsw i32 %.0139.ph272405.a, -1
  br label %bb.bd

bb.m:                                             ; preds = %bb.k
  %8 = icmp eq i32 %.0139.ph272405.a, 0
  br i1 %8, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.al = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.d) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.1 = phi i32 [ -1, %bb.n ], [ %.0139.ph272405.a, %bb.m ] ; 6 uses
  %i.am = icmp sgt i32 %.0140.ph271404, 0
  br i1 %i.am, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.an = add nsw i32 %.0140.ph271404, -1
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.ao = icmp eq i32 %.0140.ph271404, 0
  br i1 %i.ao, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ap = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %5) ; 0 uses
  br label %.loopexit

bb.s:                                             ; preds = %bb.q, %bb.p
  %.1141 = phi i32 [ %i.an, %bb.p ], [ %.0140.ph271404, %bb.q ] ; 3 uses
  %i.aq = add nsw i32 %.0143.ph270403, 1          ; 6 uses
  %i.ar = add nsw i32 %i.aq, %i.d
  %i.as = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.ar, ptr noundef nonnull %i.a, i32 noundef %i.q) ; 0 uses
  %i.at = load ptr, ptr %i.c, align 8, !tbaa !16  ; 6 uses
  %i.au = call i32 @jq_compile(ptr noundef %i.at, ptr noundef nonnull %i.a) #12 ; 2 uses
  br i1 %.0162.ph266396, label %bb.aj, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @jq_set_error_cb(ptr noundef %i.at, ptr noundef null, ptr noundef null) #12
  %.not200 = icmp eq i32 %i.au, 0
  br i1 %.not200, label %.preheader, label %bb.w

.preheader:                                       ; preds = %bb.t
  %i.av = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 4096, ptr noundef %3)
  %.not201414 = icmp eq ptr %i.av, null
  br i1 %.not201414, label %skipline.exit217, label %.lr.ph417

.lr.ph417:                                        ; preds = %.preheader
  %.not203 = icmp eq i32 %.0164.ph428, 0
  br i1 %.not203, label %.lr.ph417.split.us, label %.lr.ph417.split

.lr.ph417.split.us:                               ; preds = %.lr.ph417, %bb.v
  %.1155416.us = phi i32 [ %i.aw, %bb.v ], [ %i.q, %.lr.ph417 ]
  %i.aw = add i32 %.1155416.us, 1                 ; 5 uses
  br label %bb.u

bb.u:                                             ; preds = %.critedge.i215.us, %.lr.ph417.split.us
  %indvars.iv.i212.us = phi i64 [ %indvars.iv.next.i216.us, %.critedge.i215.us ], [ 0, %.lr.ph417.split.us ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i212.us
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !13
  switch i8 %i.ay, label %bb.v [
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
  %i.az = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 4096, ptr noundef %3)
  %.not201.us = icmp eq ptr %i.az, null
  br i1 %.not201.us, label %skipline.exit217, label %.lr.ph417.split.us, !llvm.loop !29

bb.w:                                             ; preds = %bb.t
  %i.ba = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.q, ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.bc

.lr.ph417.split:                                  ; preds = %.lr.ph417, %bb.ad
  %.1155416 = phi i32 [ %i.bb, %bb.ad ], [ %i.q, %.lr.ph417 ]
  %.0175415 = phi ptr [ %spec.select.idx.sroa.sel.idx.sroa.sel, %bb.ad ], [ %6, %.lr.ph417 ] ; 7 uses
  %i.bb = add i32 %.1155416, 1                    ; 7 uses
  br label %bb.x

bb.x:                                             ; preds = %.critedge.i215, %.lr.ph417.split
  %indvars.iv.i212 = phi i64 [ %indvars.iv.next.i216, %.critedge.i215 ], [ 0, %.lr.ph417.split ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i212
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !13
  switch i8 %i.bd, label %bb.y [
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
  %i.be = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #14
  %i.bf = getelementptr i8, ptr %i.b, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 -1     ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !13
  %i.bi = icmp eq i8 %i.bh, 10
  br i1 %i.bi, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i8 0, ptr %i.bg, align 1, !tbaa !13
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #14 ; 2 uses
  %i.bk = call i32 @strncmp(ptr noundef nonnull %i.b, ptr noundef %.0175415, i64 noundef %i.bj) #14
  %.not204 = icmp eq i32 %i.bk, 0
  br i1 %.not204, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bl = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.0175415, i32 noundef 10) #14 ; 2 uses
  %.not205 = icmp eq ptr %i.bl, null
  br i1 %.not205, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i8 0, ptr %i.bl, align 1, !tbaa !13
  br label %.thread

.thread:                                          ; preds = %bb.ab, %bb.ac
  %i.bm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull %.0175415, ptr noundef nonnull %i.b, i32 noundef %i.bb, ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.bc

bb.ad:                                            ; preds = %bb.aa
  %i.bn = getelementptr inbounds nuw i8, ptr %.0175415, i64 %i.bj ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !13
  %i.bp = icmp eq i8 %i.bo, 10
  %spec.select.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %i.bp to i64
  %spec.select.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.bn, i64 %spec.select.idx.sroa.sel.idx.sroa.sel.idx ; 2 uses
  %i.bq = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 4096, ptr noundef %3)
  %.not201 = icmp eq ptr %i.bq, null
  br i1 %.not201, label %skipline.exit217, label %.lr.ph417.split, !llvm.loop !29

skipline.exit217:                                 ; preds = %bb.ad, %bb.v, %bb.x, %bb.x, %bb.x, %bb.u, %bb.u, %bb.u, %.preheader
  %.0175375 = phi ptr [ %6, %bb.u ], [ %6, %.preheader ], [ %6, %bb.v ], [ %.0175415, %bb.x ], [ %6, %bb.u ], [ %6, %bb.u ], [ %.0175415, %bb.x ], [ %.0175415, %bb.x ], [ %spec.select.idx.sroa.sel.idx.sroa.sel, %bb.ad ] ; 3 uses
  %.2156 = phi i32 [ %i.aw, %bb.u ], [ %i.q, %.preheader ], [ %i.aw, %bb.v ], [ %i.bb, %bb.x ], [ %i.aw, %bb.u ], [ %i.aw, %bb.u ], [ %i.bb, %bb.x ], [ %i.bb, %bb.x ], [ %i.bb, %bb.ad ] ; 2 uses
  %.not206 = icmp eq i32 %.0164.ph428, 0
  br i1 %.not206, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %skipline.exit217
  %i.br = load i8, ptr %.0175375, align 1, !tbaa !13
  %.not207 = icmp eq i8 %i.br, 0
  br i1 %.not207, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bs = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.0175375, i32 noundef 10) #14 ; 2 uses
  %.not208 = icmp eq ptr %i.bs, null
  br i1 %.not208, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i8 0, ptr %i.bs, align 1, !tbaa !13
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.bt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef nonnull %.0175375, i32 noundef %.2156, ptr noundef nonnull %i.a) ; 0 uses
  %i.bu = add nsw i32 %.0150.ph268398, 1
  br label %bb.ai

bb.ai:                                            ; preds = %skipline.exit217, %bb.ae, %bb.ah
  %.0166 = phi i32 [ 0, %bb.ah ], [ 1, %bb.ae ], [ 1, %skipline.exit217 ]
  %.1151 = phi i32 [ %i.bu, %bb.ah ], [ %.0150.ph268398, %bb.ae ], [ %.0150.ph268398, %skipline.exit217 ]
  %i.bv = add nsw i32 %.0166, %.0146.ph269400
  br label %.outer.backedge

bb.aj:                                            ; preds = %bb.s
  %.not186 = icmp eq i32 %i.au, 0
  br i1 %.not186, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.bw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %i.q, ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.bc

bb.al:                                            ; preds = %bb.aj
  br i1 %.not187, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  call void @jq_dump_disassembly(ptr noundef %i.at, i32 noundef 2) #12
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.bx = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 4096, ptr noundef %3)
  %.not188 = icmp eq ptr %i.bx, null
  br i1 %.not188, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.by = add nsw i32 %.0150.ph268398, 1
  br label %.loopexit

bb.ap:                                            ; preds = %bb.an
  %i.bz = add i32 %.0154381, 2                    ; 4 uses
  %i.ca = call { i64, ptr } @jv_parse(ptr noundef nonnull %i.b) #12 ; 2 uses
  %i.cb = extractvalue { i64, ptr } %i.ca, 0      ; 2 uses
  %i.cc = extractvalue { i64, ptr } %i.ca, 1      ; 2 uses
end_hunk_0
