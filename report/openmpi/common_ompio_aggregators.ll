inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@mca_common_ompio_prepare_to_group:bb.a
bb.ai:                                            ; preds = %bb.af
  %i.eq = load i32, ptr %i.du, align 8, !tbaa !71
  %i.er = load ptr, ptr %i.cs, align 8, !tbaa !92
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %indvars.iv185
  %i.et = load i32, ptr %i.es, align 4, !tbaa !36
  %i.eu = icmp eq i32 %i.eq, %i.et
  br i1 %i.eu, label %.thread140.sink.split, label %.thread140

.thread140.sink.split:                            ; preds = %bb.ai, %bb.ah, %bb.ag
  store i32 %i.ef, ptr %8, align 4, !tbaa !36
  br label %.thread140

.thread140:                                       ; preds = %.thread140.sink.split, %bb.af, %bb.ag, %bb.ah, %bb.ai
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1 ; 2 uses
  %i.ev = load i32, ptr %i.bv, align 8, !tbaa !91
  %i.ew = sext i32 %i.ev to i64
  %i.ex = icmp slt i64 %indvars.iv.next186, %i.ew
  br i1 %i.ex, label %bb.af, label %._crit_edge163, !llvm.loop !130

._crit_edge163:                                   ; preds = %.thread140, %._crit_edge156, %._crit_edge156.thread
  store ptr %i.cq, ptr %5, align 8, !tbaa !113
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge163, %._crit_edge153
  %i.ey = load ptr, ptr %i.r, align 8, !tbaa !94
  %i.ez = load i32, ptr %i.k, align 4, !tbaa !93
  %i.fa = load ptr, ptr %i.t, align 8, !tbaa !72
  %i.fb = call i32 @ompi_fcoll_base_coll_bcast_array(ptr noundef %8, i32 noundef 1, ptr noundef nonnull @ompi_mpi_int, i32 noundef 0, ptr noundef %i.ey, i32 noundef %i.ez, ptr noundef %i.fa) #10
  br label %bb.ak

bb.ak:                                            ; preds = %bb.f, %bb.o, %bb.s, %bb.aj, %bb.q, %bb.h, %bb.d
  %.0127 = phi i32 [ -2, %bb.d ], [ -2, %bb.h ], [ %i.v, %bb.f ], [ -2, %bb.o ], [ -2, %bb.q ], [ %i.fb, %bb.aj ], [ %i.cv, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0127
}

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @mca_common_ompio_split_initial_groups(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i64 0, ptr %i.c, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i64 0, ptr %i.d, align 8, !tbaa !70
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.g = tail call i32 %i.f(ptr noundef nonnull @.str.10, i32 noundef 14) #10
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = sdiv i64 %i.h, %3
  %i.j = srem i64 %i.h, %3
  %.not = icmp ne i64 %i.j, 0
  %i.k = zext i1 %.not to i64
  %i.l = add nsw i64 %i.i, %i.k
  %i.m = trunc i64 %i.l to i32                    ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.o = load i32, ptr %i.n, align 4, !tbaa !93   ; 8 uses
  %i.p = call i32 @mca_common_ompio_split_a_group(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.m, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) ; 2 uses
  %.not56 = icmp eq i32 %i.p, 0
  br i1 %.not56, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.16) #10
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.r = tail call i32 %i.q(ptr noundef nonnull @.str.5, i32 noundef 16) #10
  switch i32 %i.r, label %bb.n [
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %.preheader
    i32 4, label %.preheader61
  ]

bb.d:                                             ; preds = %bb.c
  %i.s = load i32, ptr %i.a, align 4, !tbaa !36
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.a, align 4, !tbaa !36   ; 3 uses
  %i.u = sitofp i32 %i.t to double
  %i.v = sitofp i32 %i.m to double
  %i.w = fmul nnan double %i.v, 5.000000e-01
  %i.x = fcmp ult double %i.w, %i.u
  br i1 %i.x, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load i32, ptr %i.b, align 4, !tbaa !36   ; 2 uses
  %i.z = srem i32 %i.o, %i.y
  %i.aa = sdiv i32 %i.o, %i.y                     ; 2 uses
  %i.ab = icmp eq i32 %i.z, 0                     ; 2 uses
  %i.ac = add nsw i32 %i.t, %i.m
  %spec.select = select i1 %i.ab, i32 %i.aa, i32 %i.m
  %spec.select85 = select i1 %i.ab, i32 %i.aa, i32 %i.ac
  br label %bb.n

.preheader:                                       ; preds = %bb.c, %bb.g
  %.049 = phi i32 [ %i.ah, %bb.g ], [ %i.m, %bb.c ] ; 3 uses
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !70
  %i.ae = icmp slt i64 %i.ad, 1048576
  %i.af = icmp slt i32 %.049, %i.o
  %or.cond = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.preheader
  %i.ag = add nsw i32 %.049, %i.o
  %i.ah = sdiv i32 %i.ag, 2                       ; 2 uses
  %i.ai = call i32 @mca_common_ompio_split_a_group(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.ah, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) ; 2 uses
  %.not59 = icmp eq i32 %i.ai, 0
  br i1 %.not59, label %.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.17) #10
  br label %bb.o

bb.i:                                             ; preds = %.preheader
  %i.aj = load i32, ptr %i.a, align 4, !tbaa !36
  br label %bb.n

.preheader61:                                     ; preds = %bb.c, %bb.j
  %.1 = phi i32 [ %i.aq, %bb.j ], [ %i.m, %bb.c ] ; 6 uses
  %i.ak = load i64, ptr %i.c, align 8, !tbaa !70
  %i.al = icmp slt i64 %i.ak, 1048576
  %i.am = icmp slt i32 %.1, %i.o
  %or.cond60 = select i1 %i.al, i1 %i.am, i1 false
  br i1 %or.cond60, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.preheader61
  %i.an = add nsw i32 %.1, %i.o                   ; 2 uses
  %i.ao = sdiv i32 %i.an, 2
  %i.ap = and i32 %i.an, 1
  %i.aq = add nsw i32 %i.ao, %i.ap                ; 2 uses
  %i.ar = call i32 @mca_common_ompio_split_a_group(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.aq, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) ; 2 uses
  %.not58 = icmp eq i32 %i.ar, 0
  br i1 %.not58, label %.preheader61, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.18) #10
  br label %bb.o

bb.l:                                             ; preds = %.preheader61
  %i.as = load i32, ptr %i.a, align 4, !tbaa !36  ; 3 uses
  %i.at = sitofp i32 %i.as to double
  %i.au = sitofp i32 %.1 to double
  %i.av = fmul nnan double %i.au, 5.000000e-01
  %i.aw = fcmp ult double %i.av, %i.at
  br i1 %i.aw, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = load i32, ptr %i.b, align 4, !tbaa !36  ; 2 uses
  %i.ay = srem i32 %i.o, %i.ax
  %i.az = sdiv i32 %i.o, %i.ax                    ; 2 uses
  %i.ba = icmp eq i32 %i.ay, 0                    ; 2 uses
  %i.bb = add nsw i32 %i.as, %.1
  %spec.select86 = select i1 %i.ba, i32 %i.az, i32 %.1
  %spec.select87 = select i1 %i.ba, i32 %i.az, i32 %i.bb
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.f, %bb.l, %bb.e, %bb.i, %bb.d, %bb.c
  %.2 = phi i32 [ %i.m, %bb.c ], [ %i.m, %bb.d ], [ %.1, %bb.l ], [ %spec.select, %bb.f ], [ %i.m, %bb.e ], [ %.049, %bb.i ], [ %spec.select86, %bb.m ]
  %.0 = phi i32 [ 0, %bb.c ], [ %i.s, %bb.d ], [ %i.as, %bb.l ], [ %spec.select85, %bb.f ], [ %i.t, %bb.e ], [ %i.aj, %bb.i ], [ %spec.select87, %bb.m ]
  %i.bc = tail call i32 @mca_common_ompio_finalize_split(ptr noundef %0, i32 noundef %.2, i32 noundef %.0)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k, %bb.h, %bb.b
  %.050 = phi i32 [ %i.p, %bb.b ], [ %i.bc, %bb.n ], [ %i.ai, %bb.h ], [ %i.ar, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.050
}

; Function Attrs: nounwind uwtable
define i32 @mca_common_ompio_merge_initial_groups(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %.thread186, label %.preheader210

.preheader210:                                    ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !91   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader209.lr.ph, label %.thread186

.preheader209.lr.ph:                              ; preds = %.preheader210
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  br label %.preheader209

.preheader209:                                    ; preds = %.preheader209.lr.ph, %.loopexit
  %i.e = phi i32 [ %i.b, %.preheader209.lr.ph ], [ %i.ai, %.loopexit ] ; 2 uses
  %.0131232 = phi i32 [ 4, %.preheader209.lr.ph ], [ %.4135, %.loopexit ] ; 2 uses
  %.0142231 = phi i32 [ 0, %.preheader209.lr.ph ], [ %.3145, %.loopexit ] ; 3 uses
  %.0154230 = phi i64 [ 0, %.preheader209.lr.ph ], [ %.3157, %.loopexit ] ; 2 uses
  %.not182224 = icmp slt i32 %.0142231, %i.e
  br i1 %.not182224, label %.lr.ph, label %.loopexit

.preheader208:                                    ; preds = %.loopexit
  %i.f = icmp sgt i32 %i.ai, 0
  br i1 %i.f, label %.lr.ph254, label %.thread186

.lr.ph254:                                        ; preds = %.preheader208
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.j

.lr.ph:                                           ; preds = %.preheader209, %bb.i
  %.1132227 = phi i32 [ %.3134, %bb.i ], [ %.0131232, %.preheader209 ] ; 6 uses
  %.1143226 = phi i32 [ %.2144, %bb.i ], [ %.0142231, %.preheader209 ] ; 4 uses
  %.1155225 = phi i64 [ %.2156, %bb.i ], [ %.0154230, %.preheader209 ] ; 4 uses
  %4 = sext i32 %.1143226 to i64                  ; 3 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %2, i64 %4 ; 5 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !36
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.b, label %.thread

bb.b:                                             ; preds = %.lr.ph
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.m = tail call i32 %i.l(ptr noundef nonnull @.str.10, i32 noundef 14) #10
  %i.n = sext i32 %i.m to i64
  %.not183 = icmp sgt i64 %.1155225, %i.n
  br i1 %.not183, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds [8 x i8], ptr %1, i64 %4
  %i.p = load i64, ptr %i.o, align 8, !tbaa !70
  %i.q = add nsw i64 %i.p, %.1155225
  store i32 %.1132227, ptr %i.i, align 4, !tbaa !36
  %5 = add nsw i32 %.1143226, 1
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %.pr = load i32, ptr %i.i, align 4, !tbaa !36
  %i.r = icmp eq i32 %.pr, 1
  br i1 %i.r, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.t = tail call i32 %i.s(ptr noundef nonnull @.str.10, i32 noundef 14) #10
  %i.u = sext i32 %i.t to i64
  %.not184 = icmp slt i64 %.1155225, %i.u
  br i1 %.not184, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %6 = add nsw i32 %.1143226, 1                   ; 3 uses
  %7 = sext i32 %6 to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %2, i64 %7
  %i.w = load i32, ptr %i.v, align 4, !tbaa !36
  %i.x = icmp eq i32 %i.w, 1
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = add nsw i32 %.1132227, 1                 ; 2 uses
  store i32 %i.y, ptr %i.i, align 4, !tbaa !36
  %i.z = getelementptr inbounds [8 x i8], ptr %1, i64 %4
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !70
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store i32 %.1132227, ptr %i.i, align 4, !tbaa !36
  br label %bb.i

.thread:                                          ; preds = %.lr.ph, %bb.e, %bb.d
  %i.ab = add nsw i32 %.1143226, 1                ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !36
  %i.af = icmp eq i32 %i.ae, 1
  %i.ag = zext i1 %i.af to i32
  %spec.select = add nsw i32 %.1132227, %i.ag
  %.pre = load i32, ptr %i.a, align 8, !tbaa !91
  br label %.loopexit

bb.i:                                             ; preds = %bb.c, %bb.g, %bb.h
  %.2156 = phi i64 [ %i.q, %bb.c ], [ %i.aa, %bb.g ], [ %.1155225, %bb.h ] ; 2 uses
  %.2144 = phi i32 [ %5, %bb.c ], [ %6, %bb.g ], [ %6, %bb.h ] ; 3 uses
  %.3134 = phi i32 [ %.1132227, %bb.c ], [ %i.y, %bb.g ], [ %.1132227, %bb.h ] ; 2 uses
  %i.ah = load i32, ptr %i.a, align 8, !tbaa !91  ; 2 uses
  %.not182 = icmp slt i32 %.2144, %i.ah
  br i1 %.not182, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %bb.i, %.preheader209, %.thread
  %i.ai = phi i32 [ %.pre, %.thread ], [ %i.e, %.preheader209 ], [ %i.ah, %bb.i ] ; 5 uses
  %.3157 = phi i64 [ 0, %.thread ], [ %.0154230, %.preheader209 ], [ %.2156, %bb.i ]
  %.3145 = phi i32 [ %i.ab, %.thread ], [ %.0142231, %.preheader209 ], [ %.2144, %bb.i ] ; 2 uses
  %.4135 = phi i32 [ %spec.select, %.thread ], [ %.0131232, %.preheader209 ], [ %.3134, %bb.i ]
  %i.aj = icmp slt i32 %.3145, %i.ai
  br i1 %i.aj, label %.preheader209, label %.preheader208, !llvm.loop !131

bb.j:                                             ; preds = %.lr.ph254, %bb.p
  %.pre286289 = phi i32 [ %i.ai, %.lr.ph254 ], [ %.pre286290, %bb.p ] ; 2 uses
  %i.ak = phi i32 [ %i.ai, %.lr.ph254 ], [ %i.cq, %bb.p ] ; 2 uses
  %.0127253 = phi i32 [ 0, %.lr.ph254 ], [ %.2129, %bb.p ] ; 2 uses
  %.4146252 = phi i32 [ 0, %.lr.ph254 ], [ %i.cr, %bb.p ] ; 8 uses
  %.0149251 = phi i32 [ 0, %.lr.ph254 ], [ %.2151, %bb.p ] ; 3 uses
  %i.al = sext i32 %.4146252 to i64               ; 4 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %2, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !36 ; 3 uses
  %i.ao = icmp sgt i32 %i.an, 3
  br i1 %i.ao, label %.preheader207, label %bb.p

.preheader207:                                    ; preds = %bb.j
  %i.ap = add nsw i32 %i.ak, -1                   ; 2 uses
  %i.aq = icmp slt i32 %.4146252, %i.ap
  br i1 %i.aq, label %.lr.ph237.preheader, label %.critedge

.lr.ph237.preheader:                              ; preds = %.preheader207
  %i.ar = sext i32 %i.ap to i64
  %indvars.iv.next338 = add nsw i64 %i.al, 1      ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next338
  %i.at = load i32, ptr %i.as, align 4, !tbaa !36
  %i.au = icmp eq i32 %i.at, %i.an
  br i1 %i.au, label %.lr.ph340, label %..critedge_crit_edge240, !llvm.loop !132

.lr.ph340:                                        ; preds = %.lr.ph237.preheader
  br label %bb.k, !llvm.loop !132

bb.k:                                             ; preds = %.lr.ph340, %.lr.ph237
  %indvars.iv.next339 = phi i64 [ %indvars.iv.next338, %.lr.ph340 ], [ %indvars.iv.next, %.lr.ph237 ] ; 5 uses
  %i.av = icmp slt i64 %indvars.iv.next339, %i.ar
  br i1 %i.av, label %.lr.ph237, label %.critedge.loopexit, !llvm.loop !132

.lr.ph237:                                        ; preds = %bb.k
  %indvars.iv.next = add nsw i64 %indvars.iv.next339, 1 ; 2 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !36
  %i.ay = icmp eq i32 %i.ax, %i.an
  br i1 %i.ay, label %bb.k, label %.lr.ph237...critedge_crit_edge240_crit_edge, !llvm.loop !132

.lr.ph237...critedge_crit_edge240_crit_edge:      ; preds = %.lr.ph237
  %i.az = trunc nsw i64 %indvars.iv.next339 to i32
  %i.ba = trunc nsw i64 %indvars.iv.next339 to i32
  br label %..critedge_crit_edge240, !llvm.loop !132

..critedge_crit_edge240:                          ; preds = %.lr.ph237...critedge_crit_edge240_crit_edge, %.lr.ph237.preheader
  %indvars.iv.lcssa = phi i32 [ %i.ba, %.lr.ph237...critedge_crit_edge240_crit_edge ], [ %.4146252, %.lr.ph237.preheader ]
  %.1150235.lcssa = phi i32 [ %i.az, %.lr.ph237...critedge_crit_edge240_crit_edge ], [ %.0149251, %.lr.ph237.preheader ]
  br label %.critedge, !llvm.loop !132

.critedge.loopexit:                               ; preds = %bb.k
  %i.bb = trunc nsw i64 %indvars.iv.next339 to i32 ; 2 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %..critedge_crit_edge240, %.preheader207
  %.1150.lcssa = phi i32 [ %.0149251, %.preheader207 ], [ %.1150235.lcssa, %..critedge_crit_edge240 ], [ %i.bb, %.critedge.loopexit ] ; 4 uses
  %.5147.lcssa = phi i32 [ %.4146252, %.preheader207 ], [ %indvars.iv.lcssa, %..critedge_crit_edge240 ], [ %i.bb, %.critedge.loopexit ]
  %i.bc = sub nsw i32 %.1150.lcssa, %.4146252     ; 2 uses
  %i.bd = add nsw i32 %i.bc, 1                    ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = shl nsw i64 %i.be, 2
  %i.bg = tail call noalias ptr @malloc(i64 noundef %i.bf) #11 ; 13 uses
  %i.bh = ptrtoaddr ptr %i.bg to i64
  %i.bi = icmp eq ptr %i.bg, null
  br i1 %i.bi, label %bb.l, label %.preheader206

.preheader206:                                    ; preds = %.critedge
  %.not179243 = icmp slt i32 %i.bc, 0
  br i1 %.not179243, label %._crit_edge250, label %.lr.ph245

.lr.ph245:                                        ; preds = %.preheader206
  %i.bj = load ptr, ptr %i.g, align 8, !tbaa !92  ; 2 uses
  %i.bk = add i32 %.1150.lcssa, 1
  %i.bl = sub i32 %i.bk, %.4146252                ; 2 uses
  %wide.trip.count = zext i32 %i.bl to i64        ; 5 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.bj, i64 %i.al ; 6 uses
  %min.iters.check = icmp ult i32 %i.bl, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph245
  %i.bm = ptrtoaddr ptr %i.bj to i64
  %i.bn = shl nsw i64 %i.al, 2
  %i.bo = add i64 %i.bn, %i.bm
  %i.bp = sub i64 %i.bo, %i.bh
  %diff.check = icmp ugt i64 %i.bp, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bq = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 16
  %wide.load = load <4 x i32>, ptr %i.bq, align 4, !tbaa !36
  %wide.load342 = load <4 x i32>, ptr %i.br, align 4, !tbaa !36
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %index ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store <4 x i32> %wide.load, ptr %i.bs, align 4, !tbaa !36
  store <4 x i32> %wide.load342, ptr %i.bt, align 4, !tbaa !36
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !133

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph249.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph245, %middle.block
  %indvars.iv274.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph245 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv274.prol = phi i64 [ %indvars.iv.next275.prol, %scalar.ph.prol ], [ %indvars.iv274.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv274.prol
  %i.bv = load i32, ptr %gep.prol, align 4, !tbaa !36
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv274.prol
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !36
  %indvars.iv.next275.prol = add nuw nsw i64 %indvars.iv274.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !134

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv274.unr = phi i64 [ %indvars.iv274.ph, %scalar.ph.preheader ], [ %indvars.iv.next275.prol, %scalar.ph.prol ]
  %i.bx = sub nsw i64 %indvars.iv274.ph, %wide.trip.count
  %i.by = icmp ugt i64 %i.bx, -4
  br i1 %i.by, label %.lr.ph249.preheader, label %scalar.ph

bb.l:                                             ; preds = %.critedge
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.2) #10
  br label %.thread195

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv274 = phi i64 [ %indvars.iv.next275.3, %scalar.ph ], [ %indvars.iv274.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv274
  %i.bz = load i32, ptr %gep, align 4, !tbaa !36
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv274
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !36
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 1 ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next275
  %i.cb = load i32, ptr %gep.1, align 4, !tbaa !36
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.next275
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !36
  %indvars.iv.next275.1 = add nuw nsw i64 %indvars.iv274, 2 ; 2 uses
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next275.1
  %i.cd = load i32, ptr %gep.2, align 4, !tbaa !36
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.next275.1
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !36
  %indvars.iv.next275.2 = add nuw nsw i64 %indvars.iv274, 3 ; 2 uses
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next275.2
  %i.cf = load i32, ptr %gep.3, align 4, !tbaa !36
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.next275.2
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !36
  %indvars.iv.next275.3 = add nuw nsw i64 %indvars.iv274, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next275.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.lr.ph249.preheader, label %scalar.ph, !llvm.loop !135

.lr.ph249.preheader:                              ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.pre285 = load i32, ptr %i.bg, align 4, !tbaa !36
  %i.ch = load i32, ptr %i.h, align 8, !tbaa !71
  %i.ci = icmp eq i32 %i.ch, %.pre285
  %spec.select185 = select i1 %i.ci, i32 1, i32 %.0127253
  %i.cj = add i32 %.1150.lcssa, 1
  %i.ck = sub i32 %i.cj, %.4146252
  %wide.trip.count280 = zext i32 %i.ck to i64
  br label %.lr.ph249

.lr.ph249:                                        ; preds = %.lr.ph249.preheader, %bb.o
  %indvars.iv277 = phi i64 [ 0, %.lr.ph249.preheader ], [ %indvars.iv.next278, %bb.o ] ; 2 uses
  %i.cl = load i32, ptr %i.h, align 8, !tbaa !71
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv277
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !36
  %i.co = icmp eq i32 %i.cl, %i.cn
  br i1 %i.co, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.lr.ph249
  %i.cp = tail call i32 @mca_common_ompio_merge_groups(ptr noundef nonnull %0, ptr noundef nonnull %i.bg, i32 noundef %i.bd) ; 2 uses
  %.not181 = icmp eq i32 %i.cp, 0
  br i1 %.not181, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.11) #10
  tail call void @free(ptr noundef nonnull %i.bg) #10
end_hunk_0
