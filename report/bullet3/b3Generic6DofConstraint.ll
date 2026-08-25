Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3Generic6DofConstraint?download=true
inline.NumInlined: 350
inline.NumDeleted: 70
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN23b3Generic6DofConstraint16setAngularLimitsEPN17b3TypedConstraint17b3ConstraintInfo2EiRK11b3TransformS5_RK9b3Vector3S8_S8_S8_:bb.a
  %i.z = add nsw i32 %i.y, %2
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  %.1 = phi i32 [ %i.z, %bb.h ], [ %2, %bb.a ]    ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !22
  %i.ad = icmp ne i32 %i.ac, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 492
  %i.af = load i8, ptr %i.ae, align 4, !range !65
  %i.ag = icmp ne i8 %i.af, 0
  %or.cond.not.i.1 = select i1 %i.ad, i1 true, i1 %i.ag
  br i1 %or.cond.not.i.1, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 736
  %.sroa.0.0.copyload.i.1 = load <2 x float>, ptr %i.ah, align 16
  %.sroa.2.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %0, i64 744
  %.sroa.2.0.copyload.i.1 = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i.1, align 8, !tbaa !12
  store <2 x float> %.sroa.0.0.copyload.i.1, ptr %9, align 16
  store <2 x float> %.sroa.2.0.copyload.i.1, ptr %i.b, align 8
  %i.ai = load i32, ptr %i.c, align 4, !tbaa !35  ; 3 uses
  %i.aj = and i32 %i.ai, 4096
  %.not.1 = icmp eq i32 %i.aj, 0
  br i1 %.not.1, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !93
  %i.al = load float, ptr %i.ak, align 4, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 476
  store float %i.al, ptr %i.am, align 4, !tbaa !97
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.an = and i32 %i.ai, 8192
  %.not30.1 = icmp eq i32 %i.an, 0
  br i1 %.not30.1, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !93
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !13
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 484
  store float %i.ap, ptr %i.aq, align 4, !tbaa !98
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ar = and i32 %i.ai, 16384
  %.not31.1 = icmp eq i32 %i.ar, 0
  br i1 %.not31.1, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.as = load float, ptr %i.e, align 4, !tbaa !99
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 480
  store float %i.as, ptr %i.at, align 16, !tbaa !100
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.au = call noundef i32 @_ZN23b3Generic6DofConstraint21get_limit_motor_info2EP22b3RotationalLimitMotorRK11b3TransformS4_RK9b3Vector3S7_S7_S7_PN17b3TypedConstraint17b3ConstraintInfo2EiRS5_ii(ptr noundef nonnull align 16 dereferenceable(824) %0, ptr noundef nonnull %i.aa, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef nonnull align 16 dereferenceable(64) %4, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef %1, i32 noundef %.1, ptr noundef nonnull align 16 dereferenceable(16) %9, i32 noundef 1, i32 noundef 0)
  %i.av = add nsw i32 %i.au, %.1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.i
  %.1.1 = phi i32 [ %i.av, %bb.p ], [ %.1, %bb.i ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !22
  %i.az = icmp ne i32 %i.ay, 0
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 556
  %i.bb = load i8, ptr %i.ba, align 4, !range !65
  %i.bc = icmp ne i8 %i.bb, 0
  %or.cond.not.i.2 = select i1 %i.az, i1 true, i1 %i.bc
  br i1 %or.cond.not.i.2, label %bb.r, label %bb.y

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 752
  %.sroa.0.0.copyload.i.2 = load <2 x float>, ptr %i.bd, align 16
  %.sroa.2.0..sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %0, i64 760
  %.sroa.2.0.copyload.i.2 = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i.2, align 8, !tbaa !12
  store <2 x float> %.sroa.0.0.copyload.i.2, ptr %9, align 16
  store <2 x float> %.sroa.2.0.copyload.i.2, ptr %i.b, align 8
  %i.be = load i32, ptr %i.c, align 4, !tbaa !35  ; 3 uses
  %i.bf = and i32 %i.be, 32768
  %.not.2 = icmp eq i32 %i.bf, 0
  br i1 %.not.2, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bg = load ptr, ptr %i.d, align 8, !tbaa !93
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 540
  store float %i.bh, ptr %i.bi, align 4, !tbaa !97
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bj = and i32 %i.be, 65536
  %.not30.2 = icmp eq i32 %i.bj, 0
  br i1 %.not30.2, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bk = load ptr, ptr %i.d, align 8, !tbaa !93
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !13
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 548
  store float %i.bl, ptr %i.bm, align 4, !tbaa !98
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bn = and i32 %i.be, 131072
  %.not31.2 = icmp eq i32 %i.bn, 0
  br i1 %.not31.2, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bo = load float, ptr %i.e, align 4, !tbaa !99
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 544
  store float %i.bo, ptr %i.bp, align 16, !tbaa !100
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bq = call noundef i32 @_ZN23b3Generic6DofConstraint21get_limit_motor_info2EP22b3RotationalLimitMotorRK11b3TransformS4_RK9b3Vector3S7_S7_S7_PN17b3TypedConstraint17b3ConstraintInfo2EiRS5_ii(ptr noundef nonnull align 16 dereferenceable(824) %0, ptr noundef nonnull %i.aw, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef nonnull align 16 dereferenceable(64) %4, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef %1, i32 noundef %.1.1, ptr noundef nonnull align 16 dereferenceable(16) %9, i32 noundef 1, i32 noundef 0)
  %i.br = add nsw i32 %i.bq, %.1.1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.q
  %.1.2 = phi i32 [ %i.br, %bb.x ], [ %.1.1, %bb.q ]
  ret i32 %.1.2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN23b3Generic6DofConstraint15setLinearLimitsEPN17b3TypedConstraint17b3ConstraintInfo2EiRK11b3TransformS5_RK9b3Vector3S8_S8_S8_(ptr noundef nonnull align 16 dereferenceable(824) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(64) %4, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %5, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %6, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %7, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %8) local_unnamed_addr #10 align 2 {
.peel.begin:
  %9 = alloca %class.b3RotationalLimitMotor, align 4 ; 22 uses
  %10 = alloca %class.b3Vector3, align 16         ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 60
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 28 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 36 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 44 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 52 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 820 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 817 ; 3 uses
  %i.y = load i32, ptr %i.n, align 16, !tbaa !46  ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  %.pre = load i8, ptr %i.o, align 4, !tbaa !18, !range !65 ; 2 uses
  %i.aa = icmp eq i8 %.pre, 0
  %or.cond = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond, label %.peel.next, label %bb.a

bb.a:                                             ; preds = %.peel.begin
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 336
  store float 0.000000e+00, ptr %i.i, align 4, !tbaa !20
  store i32 %i.y, ptr %i.k, align 4, !tbaa !22
  %i.al = load float, ptr %i.ak, align 16, !tbaa !13
  store float %i.al, ptr %i.p, align 4, !tbaa !77
  %i.am = load float, ptr %i.aj, align 16, !tbaa !13
  store float %i.am, ptr %i.l, align 4, !tbaa !23
  store i8 %.pre, ptr %i.m, align 4, !tbaa !24
  %i.an = load float, ptr %i.ai, align 16, !tbaa !13
  store float %i.an, ptr %i.e, align 4, !tbaa !45
  %i.ao = load <2 x float>, ptr %i.q, align 16, !tbaa !13
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.ap, ptr %i.j, align 4, !tbaa !13
  %i.aq = load float, ptr %i.ah, align 16, !tbaa !13
  store float %i.aq, ptr %9, align 4, !tbaa !44
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !101
  %i.ar = load float, ptr %i.ag, align 16, !tbaa !13
  store float %i.ar, ptr %i.c, align 4, !tbaa !102
  %i.as = load float, ptr %i.af, align 16, !tbaa !13
  store float %i.as, ptr %i.b, align 4, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %11 = load float, ptr %i.ae, align 16, !tbaa !13
  %i.at = load float, ptr %i.ad, align 16, !tbaa !13
  %i.au = load float, ptr %i.ac, align 16, !tbaa !13
  %.sroa.0.0.vec.insert.i.i.peel = insertelement <2 x float> poison, float %11, i64 0
  %.sroa.0.4.vec.insert.i.i.peel = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.peel, float %i.at, i64 1
  %.sroa.3.12.vec.insert.i.i.peel = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.au, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i.i.peel, ptr %10, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i.peel, ptr %i.r, align 8
  %i.av = load i32, ptr %i.s, align 4, !tbaa !35  ; 3 uses
  %i.aw = and i32 %i.av, 1
  %.not.peel = icmp eq i32 %i.aw, 0
  br i1 %.not.peel, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ax = load ptr, ptr %i.t, align 8, !tbaa !93
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.in.peel = phi ptr [ %i.ax, %bb.b ], [ %i.ab, %bb.a ]
  %i.ay = load float, ptr %.in.peel, align 4, !tbaa !13
  store float %i.ay, ptr %i.f, align 4, !tbaa !97
  %i.az = and i32 %i.av, 2
  %.not48.peel = icmp eq i32 %i.az, 0
  br i1 %.not48.peel, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ba = load ptr, ptr %i.t, align 8, !tbaa !93
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.in49.peel = phi ptr [ %i.ba, %bb.d ], [ %i.u, %bb.c ]
  %i.bb = load float, ptr %.in49.peel, align 4, !tbaa !13
  store float %i.bb, ptr %i.h, align 4, !tbaa !98
  %i.bc = and i32 %i.av, 4
  %.not50.peel = icmp eq i32 %i.bc, 0
  %.in51.peel = select i1 %.not50.peel, ptr %i.w, ptr %i.v
  %i.bd = load float, ptr %.in51.peel, align 4, !tbaa !13
  store float %i.bd, ptr %i.g, align 4, !tbaa !100
  %i.be = load i8, ptr %i.x, align 1, !tbaa !34, !range !65, !noundef !66
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !22
  %.not52.peel = icmp eq i32 %i.bh, 0
  br i1 %.not52.peel, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !22
  %.not53.peel = icmp eq i32 %i.bj, 0
  %spec.select.peel = zext i1 %.not53.peel to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.0.peel.sink = phi i32 [ 0, %bb.e ], [ 1, %bb.f ], [ %spec.select.peel, %bb.g ]
  %i.bk = call noundef i32 @_ZN23b3Generic6DofConstraint21get_limit_motor_info2EP22b3RotationalLimitMotorRK11b3TransformS4_RK9b3Vector3S7_S7_S7_PN17b3TypedConstraint17b3ConstraintInfo2EiRS5_ii(ptr noundef nonnull align 16 dereferenceable(824) %0, ptr noundef nonnull %9, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef nonnull align 16 dereferenceable(64) %4, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 16 dereferenceable(16) %10, i32 noundef 0, i32 noundef %.0.peel.sink)
  %.1.peel = add nsw i32 %i.bk, %2
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %.peel.next

.peel.next:                                       ; preds = %bb.h, %.peel.begin
  %.04758.ph = phi i32 [ %.1.peel, %bb.h ], [ %2, %.peel.begin ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !46 ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 0
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 365
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !18, !range !65 ; 2 uses
  br i1 %i.bn, label %bb.i, label %._crit_edge

bb.i:                                             ; preds = %.peel.next
  %i.bq = icmp eq i8 %i.bp, 0
  br i1 %i.bq, label %_ZN25b3TranslationalLimitMotor14needApplyForceEi.exit, label %._crit_edge

._crit_edge:                                      ; preds = %.peel.next, %bb.i
  %i.br = phi i8 [ 1, %bb.i ], [ %i.bp, %.peel.next ]
  store float 0.000000e+00, ptr %i.i, align 4, !tbaa !20
  store i32 %i.bm, ptr %i.k, align 4, !tbaa !22
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !13
  store float %i.bt, ptr %i.p, align 4, !tbaa !77
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !13
  store float %i.bv, ptr %i.l, align 4, !tbaa !23
  store i8 %i.br, ptr %i.m, align 4, !tbaa !24
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !13
  store float %i.bx, ptr %i.e, align 4, !tbaa !45
  %i.by = load <2 x float>, ptr %i.q, align 16, !tbaa !13
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.bz, ptr %i.j, align 4, !tbaa !13
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !13
  store float %i.cb, ptr %9, align 4, !tbaa !44
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !101
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !13
  store float %i.cd, ptr %i.c, align 4, !tbaa !102
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !13
  store float %i.cf, ptr %i.b, align 4, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 580
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !13
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !13
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !13
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.ch, i64 0
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %i.cj, i64 1
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cl, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %10, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %i.r, align 8
  %i.cm = load i32, ptr %i.s, align 4, !tbaa !35  ; 3 uses
  %i.cn = and i32 %i.cm, 8
  %.not = icmp eq i32 %i.cn, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 244
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge
  %i.cp = load ptr, ptr %i.t, align 8, !tbaa !93
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.in = phi ptr [ %i.co, %bb.j ], [ %i.cp, %bb.k ]
  %i.cq = load float, ptr %.in, align 4, !tbaa !13
  store float %i.cq, ptr %i.f, align 4, !tbaa !97
  %i.cr = and i32 %i.cm, 16
  %.not48 = icmp eq i32 %i.cr, 0
  br i1 %.not48, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 276
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ct = load ptr, ptr %i.t, align 8, !tbaa !93
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.in49 = phi ptr [ %i.cs, %bb.m ], [ %i.ct, %bb.n ]
  %i.cu = load float, ptr %.in49, align 4, !tbaa !13
  store float %i.cu, ptr %i.h, align 4, !tbaa !98
  %i.cv = and i32 %i.cm, 32
  %.not50 = icmp eq i32 %i.cv, 0
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 260
  %.in51 = select i1 %.not50, ptr %i.w, ptr %i.cw
  %i.cx = load float, ptr %.in51, align 4, !tbaa !13
  store float %i.cx, ptr %i.g, align 4, !tbaa !100
  %i.cy = load i8, ptr %i.x, align 1, !tbaa !34, !range !65, !noundef !66
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.db = load i32, ptr %i.da, align 8, !tbaa !22
  %.not52 = icmp eq i32 %i.db, 0
  br i1 %.not52, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !22
  %.not53 = icmp eq i32 %i.dd, 0
  %spec.select = zext i1 %.not53 to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.p, %bb.q
  %.sink = phi i32 [ %spec.select, %bb.q ], [ 1, %bb.p ], [ 0, %bb.o ]
  %i.de = call noundef i32 @_ZN23b3Generic6DofConstraint21get_limit_motor_info2EP22b3RotationalLimitMotorRK11b3TransformS4_RK9b3Vector3S7_S7_S7_PN17b3TypedConstraint17b3ConstraintInfo2EiRS5_ii(ptr noundef nonnull align 16 dereferenceable(824) %0, ptr noundef nonnull %9, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef nonnull align 16 dereferenceable(64) %4, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef %1, i32 noundef %.04758.ph, ptr noundef nonnull align 16 dereferenceable(16) %10, i32 noundef 0, i32 noundef %.sink)
  %.1 = add nsw i32 %i.de, %.04758.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %_ZN25b3TranslationalLimitMotor14needApplyForceEi.exit

_ZN25b3TranslationalLimitMotor14needApplyForceEi.exit: ; preds = %bb.i, %bb.r
  %.2 = phi i32 [ %.1, %bb.r ], [ %.04758.ph, %bb.i ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !46 ; 2 uses
  %i.dh = icmp eq i32 %i.dg, 0
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 366
  %i.dj = load i8, ptr %i.di, align 2, !tbaa !18, !range !65 ; 2 uses
  br i1 %i.dh, label %bb.s, label %._crit_edge.1

bb.s:                                             ; preds = %_ZN25b3TranslationalLimitMotor14needApplyForceEi.exit
  %i.dk = icmp eq i8 %i.dj, 0
  br i1 %i.dk, label %_ZN25b3TranslationalLimitMotor14needApplyForceEi.exit.1, label %._crit_edge.1

._crit_edge.1:                                    ; preds = %bb.s, %_ZN25b3TranslationalLimitMotor14needApplyForceEi.exit
  %i.dl = phi i8 [ 1, %bb.s ], [ %i.dj, %_ZN25b3TranslationalLimitMotor14needApplyForceEi.exit ]
  store float 0.000000e+00, ptr %i.i, align 4, !tbaa !20
  store i32 %i.dg, ptr %i.k, align 4, !tbaa !22
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.dn = load float, ptr %i.dm, align 8, !tbaa !13
  store float %i.dn, ptr %i.p, align 4, !tbaa !77
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.dp = load float, ptr %i.do, align 8, !tbaa !13
  store float %i.dp, ptr %i.l, align 4, !tbaa !23
  store i8 %i.dl, ptr %i.m, align 4, !tbaa !24
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.dr = load float, ptr %i.dq, align 8, !tbaa !13
  store float %i.dr, ptr %i.e, align 4, !tbaa !45
end_hunk_0
begin_hunk_1_@_ZN23b3Generic6DofConstraint18getInfo2NonVirtualEPN17b3TypedConstraint17b3ConstraintInfo2ERK11b3TransformS5_RK9b3Vector3S8_S8_S8_PK15b3RigidBodyData:bb.a
bb.w:                                             ; preds = %bb.v
  %i.bb = fadd float %i.ax, f0x40C90FDB
  store float %i.bb, ptr %i.ay, align 16, !tbaa !23
  br label %_ZN23b3Generic6DofConstraint21testAngularLimitMotorEi.exit.1

bb.x:                                             ; preds = %bb.u
  %i.bc = fadd float %i.ax, f0xC0C90FDB
  store float %i.bc, ptr %i.ay, align 16, !tbaa !23
  br label %_ZN23b3Generic6DofConstraint21testAngularLimitMotorEi.exit.1

bb.y:                                             ; preds = %_ZN23b3Generic6DofConstraint21testAngularLimitMotorEi.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i32 0, ptr %i.bd, align 8, !tbaa !22
  br label %_ZN23b3Generic6DofConstraint21testAngularLimitMotorEi.exit.1

_ZN23b3Generic6DofConstraint21testAngularLimitMotorEi.exit.1: ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.t, %bb.s, %bb.r, %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.bf = load float, ptr %i.be, align 8, !tbaa !13
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.bh = load float, ptr %i.bg, align 16, !tbaa !44
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 516 ; 2 uses
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !45
  %i.bk = tail call noundef float @_Z21b3AdjustAngleToLimitsfff(float noundef %i.bf, float noundef %i.bh, float noundef %i.bj) ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 564
  store float %i.bk, ptr %i.bl, align 4, !tbaa !77
  %i.bm = load float, ptr %i.bg, align 16, !tbaa !44 ; 3 uses
  %i.bn = load float, ptr %i.bi, align 4, !tbaa !45 ; 3 uses
  %i.bo = fcmp ogt float %i.bm, %i.bn
  br i1 %i.bo, label %bb.ak, label %bb.z

bb.z:                                             ; preds = %_ZN23b3Generic6DofConstraint21testAngularLimitMotorEi.exit.1
  %i.bp = fcmp olt float %i.bk, %i.bm
  br i1 %i.bp, label %bb.ag, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bq = fcmp ogt float %i.bk, %i.bn
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  br i1 %i.bq, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.br, align 8, !tbaa !22
  br label %_ZN23b3Generic6DofConstraint21testAngularLimitMotorEi.exit.2

bb.ac:                                            ; preds = %bb.aa
  store i32 2, ptr %i.br, align 8, !tbaa !22
  %i.bs = fsub float %i.bk, %i.bn                 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 3 uses
  store float %i.bs, ptr %i.bt, align 16, !tbaa !23
  %i.bu = fcmp ogt float %i.bs, f0x40490FDB
  br i1 %i.bu, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bv = fcmp olt float %i.bs, f0xC0490FDB
  br i1 %i.bv, label %bb.ae, label %_ZN23b3Generic6DofConstraint21testAngularLimitMotorEi.exit.2

bb.ae:                                            ; preds = %bb.ad
  %i.bw = fadd float %i.bs, f0x40C90FDB
  store float %i.bw, ptr %i.bt, align 16, !tbaa !23
  br label %_ZN23b3Generic6DofConstraint21testAngularLimitMotorEi.exit.2

bb.af:                                            ; preds = %bb.ac
  %i.bx = fadd float %i.bs, f0xC0C90FDB
  store float %i.bx, ptr %i.bt, align 16, !tbaa !23
  br label %_ZN23b3Generic6DofConstraint21testAngularLimitMotorEi.exit.2

bb.ag:                                            ; preds = %bb.z
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i32 1, ptr %i.by, align 8, !tbaa !22
  %i.bz = fsub float %i.bk, %i.bm                 ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 3 uses
  store float %i.bz, ptr %i.ca, align 16, !tbaa !23
  %i.cb = fcmp ogt float %i.bz, f0x40490FDB
  br i1 %i.cb, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cc = fcmp olt float %i.bz, f0xC0490FDB
  br i1 %i.cc, label %bb.ai, label %_ZN23b3Generic6DofConstraint21testAngularLimitMotorEi.exit.2

bb.ai:                                            ; preds = %bb.ah
  %i.cd = fadd float %i.bz, f0x40C90FDB
  store float %i.cd, ptr %i.ca, align 16, !tbaa !23
  br label %_ZN23b3Generic6DofConstraint21testAngularLimitMotorEi.exit.2

bb.aj:                                            ; preds = %bb.ag
  %i.ce = fadd float %i.bz, f0xC0C90FDB
  store float %i.ce, ptr %i.ca, align 16, !tbaa !23
  br label %_ZN23b3Generic6DofConstraint21testAngularLimitMotorEi.exit.2

bb.ak:                                            ; preds = %_ZN23b3Generic6DofConstraint21testAngularLimitMotorEi.exit.1
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i32 0, ptr %i.cf, align 8, !tbaa !22
  br label %_ZN23b3Generic6DofConstraint21testAngularLimitMotorEi.exit.2

_ZN23b3Generic6DofConstraint21testAngularLimitMotorEi.exit.2: ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.af, %bb.ae, %bb.ad, %bb.ab
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 817
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !34, !range !65, !noundef !66
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZN23b3Generic6DofConstraint21testAngularLimitMotorEi.exit.2
  %i.cj = tail call noundef i32 @_ZN23b3Generic6DofConstraint16setAngularLimitsEPN17b3TypedConstraint17b3ConstraintInfo2EiRK11b3TransformS5_RK9b3Vector3S8_S8_S8_(ptr noundef nonnull align 16 dereferenceable(824) %0, ptr noundef %1, i32 noundef 0, ptr noundef nonnull align 16 dereferenceable(64) %2, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %7)
  %i.ck = tail call noundef i32 @_ZN23b3Generic6DofConstraint15setLinearLimitsEPN17b3TypedConstraint17b3ConstraintInfo2EiRK11b3TransformS5_RK9b3Vector3S8_S8_S8_(ptr noundef nonnull align 16 dereferenceable(824) %0, ptr noundef %1, i32 noundef %i.cj, ptr noundef nonnull align 16 dereferenceable(64) %2, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %7) ; 0 uses
  br label %bb.an

bb.am:                                            ; preds = %_ZN23b3Generic6DofConstraint21testAngularLimitMotorEi.exit.2
  %i.cl = tail call noundef i32 @_ZN23b3Generic6DofConstraint15setLinearLimitsEPN17b3TypedConstraint17b3ConstraintInfo2EiRK11b3TransformS5_RK9b3Vector3S8_S8_S8_(ptr noundef nonnull align 16 dereferenceable(824) %0, ptr noundef %1, i32 noundef 0, ptr noundef nonnull align 16 dereferenceable(64) %2, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %7)
  %i.cm = tail call noundef i32 @_ZN23b3Generic6DofConstraint16setAngularLimitsEPN17b3TypedConstraint17b3ConstraintInfo2EiRK11b3TransformS5_RK9b3Vector3S8_S8_S8_(ptr noundef nonnull align 16 dereferenceable(824) %0, ptr noundef %1, i32 noundef %i.cl, ptr noundef nonnull align 16 dereferenceable(64) %2, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %7) ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN23b3Generic6DofConstraint21get_limit_motor_info2EP22b3RotationalLimitMotorRK11b3TransformS4_RK9b3Vector3S7_S7_S7_PN17b3TypedConstraint17b3ConstraintInfo2EiRS5_ii(ptr noundef nonnull align 16 dereferenceable(824) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(64) %2, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %5, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %6, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %7, ptr nofree noundef readonly captures(none) %8, i32 noundef %9, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %10, i32 noundef %11, i32 noundef %12) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !104
  %i.c = mul i32 %i.b, %9                         ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.e = load i8, ptr %i.d, align 4, !tbaa !24, !range !65, !noundef !66
  %i.f = trunc nuw i8 %i.e to i1                  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = load i32, ptr %i.g, align 4, !tbaa !22   ; 2 uses
  %i.i = icmp ne i32 %i.h, 0                      ; 2 uses
  %or.cond = select i1 %i.f, i1 true, i1 %i.i
  br i1 %or.cond, label %bb.b, label %.thread376

bb.b:                                             ; preds = %bb.a
  %.not193 = icmp eq i32 %11, 0                   ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.in = select i1 %.not193, ptr %i.k, ptr %i.j
  %i.l = load ptr, ptr %.in, align 8, !tbaa !105  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.in194 = select i1 %.not193, ptr %i.n, ptr %i.m
  %i.o = load ptr, ptr %.in194, align 8, !tbaa !105 ; 2 uses
  %.not195 = icmp eq ptr %i.l, null
  br i1 %.not195, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load float, ptr %10, align 16, !tbaa !13
  %i.q = sext i32 %i.c to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.q ; 3 uses
  store float %i.p, ptr %i.r, align 4, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.t = load float, ptr %i.s, align 4, !tbaa !13
  %i.u = getelementptr i8, ptr %i.r, i64 4
  store float %i.t, ptr %i.u, align 4, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.w = load float, ptr %i.v, align 8, !tbaa !13
  %i.x = getelementptr i8, ptr %i.r, i64 8
  store float %i.w, ptr %i.x, align 4, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not196 = icmp eq ptr %i.o, null
  br i1 %.not196, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = load float, ptr %10, align 16, !tbaa !13
  %i.z = fneg float %i.y
  %i.aa = sext i32 %i.c to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.aa ; 3 uses
  store float %i.z, ptr %i.ab, align 4, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !13
  %i.ae = fneg float %i.ad
  %i.af = getelementptr i8, ptr %i.ab, i64 4
  store float %i.ae, ptr %i.af, align 4, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !13
  %i.ai = fneg float %i.ah
  %i.aj = getelementptr i8, ptr %i.ab, i64 8
  store float %i.ai, ptr %i.aj, align 4, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %.not193, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 817
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !34, !range !65, !noundef !66
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %i.ao = load <2 x float>, ptr %i.an, align 16, !tbaa !12 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !12 ; 2 uses
  br i1 %i.am, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.at = load float, ptr %i.as, align 8, !tbaa !12
  %i.au = load float, ptr %10, align 16, !tbaa !12 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 632
  %13 = load float, ptr %i.ay, align 8, !tbaa !12
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ba = load float, ptr %i.az, align 8, !tbaa !12
  %i.bb = load <2 x float>, ptr %i.ar, align 16, !tbaa !12 ; 2 uses
  %i.bc = load <2 x float>, ptr %i.aw, align 16, !tbaa !12 ; 2 uses
  %i.bd = load <2 x float>, ptr %i.ax, align 16, !tbaa !12 ; 2 uses
  %i.be = shufflevector <2 x float> %i.bc, <2 x float> %i.ao, <2 x i32> <i32 0, i32 2>
  %i.bf = shufflevector <2 x float> %i.bd, <2 x float> %i.bb, <2 x i32> <i32 0, i32 2>
  %i.bg = fsub <2 x float> %i.be, %i.bf           ; 3 uses
  %i.bh = shufflevector <2 x float> %i.bc, <2 x float> %i.ao, <2 x i32> <i32 1, i32 3>
  %i.bi = shufflevector <2 x float> %i.bd, <2 x float> %i.bb, <2 x i32> <i32 1, i32 3>
  %i.bj = fsub <2 x float> %i.bh, %i.bi           ; 3 uses
  %14 = insertelement <2 x float> poison, float %13, i64 0
  %i.bk = insertelement <2 x float> %14, float %i.aq, i64 1
  %i.bl = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bm = insertelement <2 x float> %i.bl, float %i.at, i64 1
  %i.bn = fsub <2 x float> %i.bk, %i.bm           ; 4 uses
  %i.bo = insertelement <2 x float> poison, float %i.au, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.br = load float, ptr %i.bq, align 4, !tbaa !77
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !23
  %i.bu = fsub float %i.br, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 788
  %i.bw = fneg float %i.au
  %i.bx = load <2 x float>, ptr %i.av, align 4, !tbaa !12 ; 7 uses
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bz = fmul <2 x float> %i.by, %i.bj
  %i.ca = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.bp, <2 x float> %i.bz)
  %i.cb = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cc = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.cc, <2 x float> %i.ca) ; 3 uses
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cf = fmul <2 x float> %i.bx, %i.ce           ; 3 uses
  %i.cg = fmul <2 x float> %i.bp, %i.cd           ; 3 uses
  %i.ch = shufflevector <2 x float> %i.bj, <2 x float> %i.bn, <2 x i32> <i32 1, i32 3>
  %i.ci = fsub <2 x float> %i.ch, %i.cf
  %i.cj = shufflevector <2 x float> %i.bn, <2 x float> %i.bg, <2 x i32> <i32 1, i32 3>
  %i.ck = shufflevector <2 x float> %i.cg, <2 x float> %i.cf, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.cl = fsub <2 x float> %i.cj, %i.ck
  %i.cm = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cn = fmul <2 x float> %i.bx, %i.cm           ; 3 uses
  %i.co = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cq = fmul <2 x float> %i.bx, %i.cp
  %i.cr = insertelement <2 x float> %i.cb, float %i.au, i64 1 ; 3 uses
  %i.cs = fmul <2 x float> %i.cr, %i.cp
  %i.ct = fadd <2 x float> %i.cn, %i.cq
  %i.cu = shufflevector <2 x float> %i.cn, <2 x float> %i.cg, <2 x i32> <i32 1, i32 2>
  %i.cv = fadd <2 x float> %i.cu, %i.cs
  %i.cw = fsub <2 x float> %i.ct, %i.cf           ; 2 uses
  %i.cx = fsub <2 x float> %i.cv, %i.ck           ; 2 uses
  %i.cy = fneg <2 x float> %i.bx                  ; 2 uses
  %i.cz = shufflevector <2 x float> %i.bj, <2 x float> %i.bn, <2 x i32> <i32 0, i32 2>
  %i.da = fsub <2 x float> %i.cz, %i.cn
  %foldExtExtBinop = fsub <2 x float> %i.bg, %i.cg
  %i.db = load <2 x float>, ptr %i.bv, align 4, !tbaa !13 ; 4 uses
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.dd = fmul <2 x float> %i.dc, %i.cw
  %i.de = fmul <2 x float> %i.dc, %i.cx
  %i.df = fsub <2 x float> %i.ci, %i.dd           ; 2 uses
  %i.dg = fsub <2 x float> %i.cl, %i.de           ; 2 uses
  %i.dh = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.di = fmul <2 x float> %i.dh, %i.cw
  %shift = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop435 = fmul <2 x float> %i.db, %shift
  %i.dj = fadd <2 x float> %i.da, %i.di           ; 3 uses
  %foldExtExtBinop437 = fadd <2 x float> %foldExtExtBinop, %foldExtExtBinop435 ; 2 uses
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> %foldExtExtBinop437, <2 x i32> <i32 1, i32 2>
  %i.dl = fmul <2 x float> %i.dk, %i.cy
  %i.dm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dj, <2 x float> %i.cr, <2 x float> %i.dl) ; 2 uses
  %i.dn = shufflevector <2 x float> %i.dj, <2 x float> %i.df, <2 x i32> <i32 0, i32 2>
  %i.do = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dq = fmul <2 x float> %i.dn, %i.dp
  %i.dr = shufflevector <2 x float> %foldExtExtBinop437, <2 x float> %i.dg, <2 x i32> <i32 0, i32 3>
  %i.ds = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dr, <2 x float> %i.by, <2 x float> %i.dq) ; 3 uses
  %i.dt = insertelement <2 x float> %i.ds, float 0.000000e+00, i64 1
  %i.du = fmul <2 x float> %i.dg, %i.cy
  %i.dv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> %i.cr, <2 x float> %i.du) ; 2 uses
  %i.dw = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.ds, <2 x i32> <i32 3, i32 1>
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 796
  %i.dy = load i8, ptr %i.dx, align 4, !tbaa !71, !range !65, !noundef !66
  %i.dz = trunc nuw i8 %i.dy to i1
  %i.ea = icmp eq i32 %12, 0
  %or.cond3.not = and i1 %i.ea, %i.dz
  br i1 %or.cond3.not, label %bb.i, label %.preheader

bb.i:                                             ; preds = %bb.h
  %i.eb = fmul <2 x float> %i.dh, %i.dm
  %i.ec = fmul <2 x float> %i.db, %i.ds           ; 2 uses
  %i.ed = insertelement <2 x float> %i.ec, float 0.000000e+00, i64 1
  %i.ee = fmul <2 x float> %i.dc, %i.dv
  %i.ef = shufflevector <2 x float> %i.ec, <2 x float> <float poison, float 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  br label %.preheader

.preheader:                                       ; preds = %bb.i, %bb.h
  %.sroa.8.0 = phi <2 x float> [ %i.ed, %bb.i ], [ %i.dt, %bb.h ]
  %.sroa.0391.0 = phi <2 x float> [ %i.eb, %bb.i ], [ %i.dm, %bb.h ]
  %.sroa.9.0 = phi <2 x float> [ %i.ef, %bb.i ], [ %i.dw, %bb.h ]
  %.sroa.0.0 = phi <2 x float> [ %i.ee, %bb.i ], [ %i.dv, %bb.h ]
  %i.eg = load ptr, ptr %i.j, align 8, !tbaa !106
  %i.eh = sext i32 %i.c to i64                    ; 3 uses
  %i.ei = shl nsw i64 %i.eh, 2
  %scevgep = getelementptr i8, ptr %i.eg, i64 %i.ei ; 2 uses
  store <2 x float> %.sroa.0391.0, ptr %scevgep, align 4, !tbaa !13
  %.sroa.8.0.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 8
  %.sroa.8.0.vec.extract = extractelement <2 x float> %.sroa.8.0, i64 0
  store float %.sroa.8.0.vec.extract, ptr %.sroa.8.0.scevgep.sroa_idx, align 4, !tbaa !13
  %i.ej = load ptr, ptr %i.m, align 8, !tbaa !107 ; 2 uses
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.eh
  %i.el = fneg <2 x float> %.sroa.0.0
  store <2 x float> %i.el, ptr %i.ek, align 4, !tbaa !13
  %.sroa.9.8.vec.extract390 = extractelement <2 x float> %.sroa.9.0, i64 0
  %i.em = fneg float %.sroa.9.8.vec.extract390
  %i.en = getelementptr [4 x i8], ptr %i.ej, i64 %i.eh
  %i.eo = getelementptr i8, ptr %i.en, i64 8
  store float %i.em, ptr %i.eo, align 4, !tbaa !13
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 692
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !12
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.es = load float, ptr %i.er, align 16, !tbaa !12
  %i.et = extractelement <2 x float> %i.ao, i64 0
  %i.eu = fsub float %i.et, %i.es                 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !12
  %i.ex = fsub float %i.eq, %i.ew                 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ez = load float, ptr %i.ey, align 8, !tbaa !12
  %i.fa = fsub float %i.aq, %i.ez                 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.fc = load float, ptr %i.fb, align 8, !tbaa !12 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !12 ; 2 uses
  %i.ff = fneg float %i.fe
  %i.fg = fmul float %i.fa, %i.ff
  %i.fh = tail call float @llvm.fmuladd.f32(float %i.ex, float %i.fc, float %i.fg)
  %i.fi = load float, ptr %10, align 16, !tbaa !12 ; 2 uses
  %i.fj = fneg float %i.fc
  %i.fk = fmul float %i.eu, %i.fj
  %i.fl = tail call float @llvm.fmuladd.f32(float %i.fa, float %i.fi, float %i.fk)
  %i.fm = fneg float %i.fi
  %i.fn = fmul float %i.ex, %i.fm
  %i.fo = tail call float @llvm.fmuladd.f32(float %i.eu, float %i.fe, float %i.fn)
  %i.fp = load ptr, ptr %i.j, align 8, !tbaa !106 ; 3 uses
  %i.fq = sext i32 %i.c to i64                    ; 2 uses
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.fq
  store float %i.fh, ptr %i.fr, align 4, !tbaa !13
  %i.fs = add nsw i32 %i.c, 1
  %i.ft = sext i32 %i.fs to i64                   ; 2 uses
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.ft
  store float %i.fl, ptr %i.fu, align 4, !tbaa !13
  %i.fv = add nsw i32 %i.c, 2
  %i.fw = sext i32 %i.fv to i64                   ; 2 uses
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.fw
  store float %i.fo, ptr %i.fx, align 4, !tbaa !13
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.fz = load float, ptr %i.ap, align 8, !tbaa !12
  %i.ga = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.gb = load float, ptr %i.ga, align 8, !tbaa !12
  %i.gc = load float, ptr %i.fb, align 8, !tbaa !12 ; 2 uses
  %i.gd = load <2 x float>, ptr %i.an, align 16, !tbaa !12 ; 2 uses
  %i.ge = load <2 x float>, ptr %i.fy, align 16, !tbaa !12 ; 2 uses
  %i.gf = fsub <2 x float> %i.gd, %i.ge           ; 2 uses
  %i.gg = shufflevector <2 x float> %i.gd, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gh = insertelement <2 x float> %i.gg, float %i.fz, i64 0
  %i.gi = shufflevector <2 x float> %i.ge, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gj = insertelement <2 x float> %i.gi, float %i.gb, i64 0
  %i.gk = fsub <2 x float> %i.gh, %i.gj           ; 2 uses
  %i.gl = load float, ptr %i.fd, align 4, !tbaa !12
  %i.gm = load <2 x float>, ptr %10, align 16, !tbaa !12 ; 2 uses
  %i.gn = fneg float %i.gl
  %i.go = extractelement <2 x float> %i.gk, i64 0
  %i.gp = fmul float %i.go, %i.gn
  %i.gq = extractelement <2 x float> %i.gf, i64 1
  %i.gr = tail call float @llvm.fmuladd.f32(float %i.gq, float %i.gc, float %i.gp)
  %i.gs = shufflevector <2 x float> %i.gm, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gt = insertelement <2 x float> %i.gs, float %i.gc, i64 0
  %i.gu = fneg <2 x float> %i.gt
  %i.gv = fmul <2 x float> %i.gf, %i.gu
  %i.gw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gk, <2 x float> %i.gm, <2 x float> %i.gv)
  %i.gx = fneg float %i.gr
  %i.gy = fneg <2 x float> %i.gw                  ; 2 uses
  %i.gz = load ptr, ptr %i.m, align 8, !tbaa !107 ; 3 uses
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.gz, i64 %i.fq
  store float %i.gx, ptr %i.ha, align 4, !tbaa !13
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.gz, i64 %i.ft
  %i.hc = extractelement <2 x float> %i.gy, i64 0
  store float %i.hc, ptr %i.hb, align 4, !tbaa !13
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.gz, i64 %i.fw
  %i.he = extractelement <2 x float> %i.gy, i64 1
  store float %i.he, ptr %i.hd, align 4, !tbaa !13
  br label %bb.k

bb.k:                                             ; preds = %.preheader, %bb.j, %bb.f
  br i1 %i.i, label %bb.l, label %.thread373

bb.l:                                             ; preds = %bb.k
  %i.hf = load float, ptr %1, align 4, !tbaa !44
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !45
  %i.hi = fcmp une float %i.hf, %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !108 ; 4 uses
  %i.hl = sext i32 %i.c to i64                    ; 10 uses
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.hk, i64 %i.hl
  store float 0.000000e+00, ptr %i.hm, align 4, !tbaa !13
  %brmerge.not = and i1 %i.hi, %i.f
  br i1 %brmerge.not, label %bb.m, label %.critedge
end_hunk_1
