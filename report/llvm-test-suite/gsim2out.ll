Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/gsim2out?download=true
inline.NumInlined: 20
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@gs_type1imagepath:bb.a
  br label %bb.bi

.loopexit:                                        ; preds = %bb.bg, %bb.az
  call void @gs_free(ptr noundef nonnull %i.n, i32 noundef %i.m, i32 noundef 1, ptr noundef nonnull @.str) #9
  %i.ka = load ptr, ptr %i.bm, align 8, !tbaa !19 ; 3 uses
  %i.kb = load ptr, ptr %i.bl, align 8, !tbaa !20
  %.not93 = icmp ult ptr %i.ka, %i.kb
  br i1 %.not93, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %.loopexit
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 1
  store ptr %i.kc, ptr %i.bm, align 8, !tbaa !19
  store i8 14, ptr %i.ka, align 1, !tbaa !21
  %i.kd = load ptr, ptr %i.bm, align 8, !tbaa !19
  %i.ke = ptrtoint ptr %i.kd to i64
  %i.kf = ptrtoint ptr %8 to i64
  %i.kg = sub i64 %i.ke, %i.kf
  %i.kh = trunc i64 %i.kg to i32
  br label %bb.bi

bb.bi:                                            ; preds = %trace_cells.exit.thread, %.thread116, %.thread, %.loopexit, %bb.d, %bb.c, %bb.bh
  %.275 = phi i32 [ %i.i, %bb.c ], [ -25, %bb.d ], [ %.174.ph, %.thread116 ], [ %.3.i.ph, %trace_cells.exit.thread ], [ %i.kh, %bb.bh ], [ -13, %.loopexit ], [ %.073.ph, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  ret i32 %.275
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @gs_currentmatrix(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gs_make_scaling(double noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gs_matrix_multiply(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gs_matrix_invert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @gs_malloc(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @fill_cells(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 !guid !38 {
bb.a:
  %i.a = add nsw i32 %2, 2                        ; 2 uses
  %i.b = add nsw i32 %3, 2
  %i.c = mul nsw i32 %i.b, %i.a
  %i.d = sext i32 %i.c to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %i.d, i1 false)
  %i.e = icmp sgt i32 %3, 0
  br i1 %i.e, label %.preheader.lr.ph, label %._crit_edge39.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.f = icmp sgt i32 %2, 0
  %i.g = shl nsw i32 %2, 1
  %narrow = sub nuw nsw i32 -2, %i.g
  %i.h = sext i32 %narrow to i64
  br i1 %i.f, label %.preheader.preheader, label %._crit_edge39.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.i = getelementptr inbounds i8, ptr %1, i64 -1
  %i.j = mul nuw nsw i32 %i.a, %3
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %xtraiter = and i32 %2, 1
  %i.n = icmp eq i32 %2, 1
  %unroll_iter = and i32 %2, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod46 = trunc i32 %2 to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.02438 = phi ptr [ %i.ai, %._crit_edge ], [ %i.m, %.preheader.preheader ] ; 2 uses
  %.02637 = phi ptr [ %.2.lcssa, %._crit_edge ], [ %i.i, %.preheader.preheader ] ; 2 uses
  %.02836 = phi i32 [ %i.aj, %._crit_edge ], [ 0, %.preheader.preheader ]
  br i1 %i.n, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %bb.i
  %.02133 = phi i32 [ %.1.1, %bb.i ], [ undef, %.preheader ]
  %.02232 = phi i32 [ %i.aa, %bb.i ], [ 0, %.preheader ] ; 2 uses
  %.12531 = phi ptr [ %i.ab, %bb.i ], [ %.02438, %.preheader ] ; 3 uses
  %.12730 = phi ptr [ %.2.1, %bb.i ], [ %.02637, %.preheader ] ; 2 uses
  %niter = phi i32 [ %niter.next.1, %bb.i ], [ 0, %.preheader ]
  %i.o = icmp eq i32 %.02232, 0
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader.new
  %i.p = getelementptr inbounds nuw i8, ptr %.12730, i64 1 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !21
  %i.r = zext i8 %i.q to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader.new
  %.2 = phi ptr [ %i.p, %bb.b ], [ %.12730, %.preheader.new ] ; 2 uses
  %.123 = phi i32 [ 128, %bb.b ], [ %.02232, %.preheader.new ] ; 2 uses
  %.1 = phi i32 [ %i.r, %bb.b ], [ %.02133, %.preheader.new ] ; 2 uses
  %i.s = and i32 %.1, %.123
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %.12531, align 1, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.t = lshr i32 %.123, 1                        ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.12531, i64 1
  %i.v = icmp eq i32 %i.t, 0
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !21
  %i.y = zext i8 %i.x to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2.1 = phi ptr [ %i.w, %bb.f ], [ %.2, %bb.e ] ; 3 uses
  %.123.1 = phi i32 [ 128, %bb.f ], [ %i.t, %bb.e ] ; 2 uses
  %.1.1 = phi i32 [ %i.y, %bb.f ], [ %.1, %bb.e ] ; 3 uses
  %i.z = and i32 %.1.1, %.123.1
  %.not.1 = icmp eq i32 %i.z, 0
  br i1 %.not.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.u, align 1, !tbaa !21
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aa = lshr i32 %.123.1, 1                     ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.12531, i64 2 ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !0

._crit_edge.unr-lcssa:                            ; preds = %bb.i
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %.02133.epil.init = phi i32 [ undef, %.preheader ], [ %.1.1, %._crit_edge.unr-lcssa ]
  %.02232.epil.init = phi i32 [ 0, %.preheader ], [ %i.aa, %._crit_edge.unr-lcssa ] ; 2 uses
  %.12531.epil.init = phi ptr [ %.02438, %.preheader ], [ %i.ab, %._crit_edge.unr-lcssa ] ; 2 uses
  %.12730.epil.init = phi ptr [ %.02637, %.preheader ], [ %.2.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod46)
  %i.ac = icmp eq i32 %.02232.epil.init, 0
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.epil.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %.12730.epil.init, i64 1 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !21
  %i.af = zext i8 %i.ae to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.epil.preheader
  %.2.epil = phi ptr [ %i.ad, %bb.j ], [ %.12730.epil.init, %.epil.preheader ]
  %.123.epil = phi i32 [ 128, %bb.j ], [ %.02232.epil.init, %.epil.preheader ]
  %.1.epil = phi i32 [ %i.af, %bb.j ], [ %.02133.epil.init, %.epil.preheader ]
  %i.ag = and i32 %.1.epil, %.123.epil
  %.not.epil = icmp eq i32 %i.ag, 0
  br i1 %.not.epil, label %._crit_edge.epilog-lcssa, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %.12531.epil.init, align 1, !tbaa !21
  br label %._crit_edge.epilog-lcssa

._crit_edge.epilog-lcssa:                         ; preds = %bb.l, %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %.12531.epil.init, i64 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %._crit_edge.epilog-lcssa
  %.lcssa = phi ptr [ %i.ab, %._crit_edge.unr-lcssa ], [ %i.ah, %._crit_edge.epilog-lcssa ]
  %.2.lcssa = phi ptr [ %.2.1, %._crit_edge.unr-lcssa ], [ %.2.epil, %._crit_edge.epilog-lcssa ]
  %i.ai = getelementptr inbounds i8, ptr %.lcssa, i64 %i.h
  %i.aj = add nuw nsw i32 %.02836, 1              ; 2 uses
  %exitcond40.not = icmp eq i32 %i.aj, %3
  br i1 %exitcond40.not, label %._crit_edge39.split, label %.preheader, !llvm.loop !1

._crit_edge39.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

declare i32 @gs_distance_transform(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 -32767, 32768) i32 @round_coord(double noundef %0) local_unnamed_addr #4 !guid !39 {
bb.a:
  %i.a = fadd double %0, 5.000000e-01
  %i.b = fptosi double %i.a to i64
  %i.c = tail call i64 @llvm.smax.i64(i64 %i.b, i64 -32767)
  %i.d = tail call i64 @llvm.smin.i64(i64 %i.c, i64 32767)
  %i.e = trunc nsw i64 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -13, 1) i32 @put_int(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #5 !guid !40 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.f = icmp ugt ptr %i.c, %i.e
  br i1 %i.f, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %1, 107
  %or.cond = icmp ult i32 %i.g, 215
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = trunc nsw i32 %1 to i8
  %i.i = add i8 %i.h, -117
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.i, ptr %i.b, align 1, !tbaa !21
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.k = add i32 %1, -108                         ; 3 uses
  %or.cond3 = icmp ult i32 %i.k, 1024
  br i1 %or.cond3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = lshr i32 %i.k, 8
  %i.m = trunc nuw nsw i32 %i.l to i8
  %i.n = add nuw nsw i8 %i.m, -9
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.n, ptr %i.b, align 1, !tbaa !21
  %i.p = trunc i32 %i.k to i8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.p, ptr %i.o, align 1, !tbaa !21
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.r = add i32 %1, 1131
  %or.cond5 = icmp ult i32 %i.r, 1024
  br i1 %or.cond5, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = sub nuw nsw i32 -108, %1                 ; 2 uses
  %i.t = lshr i32 %i.s, 8
  %i.u = trunc nuw nsw i32 %i.t to i8
  %i.v = add nuw nsw i8 %i.u, -5
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.v, ptr %i.b, align 1, !tbaa !21
  %i.x = trunc i32 %i.s to i8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.x, ptr %i.w, align 1, !tbaa !21
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 -1, ptr %i.b, align 1, !tbaa !21
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  store i32 %2, ptr %i.z, align 1, !tbaa !21
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.g, %bb.c
  %.0 = phi ptr [ %i.j, %bb.c ], [ %i.q, %bb.e ], [ %i.y, %bb.g ], [ %i.c, %bb.h ]
  store ptr %.0, ptr %i.a, align 8, !tbaa !19
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  %.037 = phi i32 [ 0, %bb.i ], [ -13, %bb.a ]
  ret i32 %.037
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -13, 1) i32 @trace_cells(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 !guid !41 {
bb.a:
  %i.a = add nsw i32 %1, 2                        ; 2 uses
  %i.b = add nsw i32 %2, 1
  %i.c = mul nsw i32 %i.b, %i.a                   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %.not40 = icmp slt i32 %i.c, 2
  br i1 %.not40, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = zext nneg i32 %i.c to i64
  %i.g = getelementptr i8, ptr %0, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -2
  %i.i = sub nsw i32 -2, %1
  %i.j = sext i32 %i.i to i64
  %i.k = ptrtoint ptr %0 to i64
  %i.l = sext i32 %i.a to i64                     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 96
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.03041 = phi ptr [ %i.h, %.lr.ph ], [ %i.ap, %bb.h ] ; 5 uses
  %i.p = load i8, ptr %.03041, align 1, !tbaa !21
  %i.q = icmp eq i8 %i.p, 1
  br i1 %i.q, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds i8, ptr %.03041, i64 %i.j
  %i.s = load i8, ptr %i.r, align 1, !tbaa !21
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.u = ptrtoint ptr %.03041 to i64
  %i.v = sub i64 %i.u, %i.k                       ; 2 uses
  %i.w = srem i64 %i.v, %i.l
  %i.x = trunc nsw i64 %i.w to i32
  %i.y = sdiv i64 %i.v, %i.l
  %i.z = trunc i64 %i.y to i32
  %i.aa = shl i32 %i.x, 2
  %i.ab = add i32 %i.aa, -3
  %i.ac = load i32, ptr %i.m, align 8, !tbaa !26
  %i.ad = sub i32 %i.ab, %i.ac
  %i.ae = shl i32 %i.z, 2
  %i.af = add i32 %i.ae, -4
  %i.ag = load i32, ptr %i.n, align 4, !tbaa !27
  %i.ah = sub i32 %i.af, %i.ag
  %i.ai = tail call i32 @put_dxdy(ptr noundef %3, i32 noundef %i.ad, i32 noundef %i.ah, i32 noundef 1) ; 2 uses
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.d, align 8, !tbaa !30
  %i.ak = tail call i32 @trace_from(ptr noundef nonnull %3, ptr noundef nonnull %.03041, i32 noundef %1) ; 2 uses
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = load ptr, ptr %i.e, align 8, !tbaa !19  ; 3 uses
  %i.an = load ptr, ptr %i.o, align 8, !tbaa !20
  %.not36 = icmp ult ptr %i.am, %i.an
  br i1 %.not36, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  store ptr %i.ao, ptr %i.e, align 8, !tbaa !19
  store i8 9, ptr %i.am, align 1, !tbaa !21
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b, %bb.c
  %i.ap = getelementptr inbounds i8, ptr %.03041, i64 -1 ; 2 uses
  %.not = icmp ult ptr %i.ap, %0
  br i1 %.not, label %.thread, label %bb.b, !llvm.loop !2

.thread:                                          ; preds = %bb.h, %bb.d, %bb.e, %bb.f, %bb.a
  %.3 = phi i32 [ 0, %bb.a ], [ %i.ai, %bb.d ], [ -13, %bb.f ], [ %i.ak, %bb.e ], [ 0, %bb.h ]
  ret i32 %.3
}

declare void @gs_free(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local range(i32 -13, 1) i32 @put_dxdy(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !guid !42 {
bb.a:
  %4 = alloca %struct.gs_point_s, align 4         ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26
  %i.c = add nsw i32 %i.b, %1                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !27
  %i.f = add nsw i32 %i.e, %2                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.g = sitofp i32 %i.c to double
  %i.h = sitofp i32 %i.f to double
  %i.i = call i32 @gs_distance_transform(double noundef %i.g, double noundef %i.h, ptr noundef %0, ptr noundef nonnull %4) #9 ; 0 uses
  %i.j = load float, ptr %4, align 4, !tbaa !24
  %i.k = fpext float %i.j to double
  %i.l = fadd double %i.k, 5.000000e-01
  %i.m = fptosi double %i.l to i64
  %i.n = call i64 @llvm.smax.i64(i64 %i.m, i64 -32767)
  %i.o = call i64 @llvm.smin.i64(i64 %i.n, i64 32767)
  %i.p = trunc nsw i64 %i.o to i32                ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.r = load float, ptr %i.q, align 4, !tbaa !25
  %i.s = fpext float %i.r to double
  %i.t = fadd double %i.s, 5.000000e-01
  %i.u = fptosi double %i.t to i64
  %i.v = call i64 @llvm.smax.i64(i64 %i.u, i64 -32767)
  %i.w = call i64 @llvm.smin.i64(i64 %i.v, i64 32767)
  %i.x = trunc nsw i64 %i.w to i32                ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !28   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !29 ; 2 uses
  %i.ac = sub nsw i32 %i.x, %i.ab                 ; 6 uses
  %i.ad = icmp ne i32 %i.z, %i.p                  ; 2 uses
  %i.ae = icmp eq i32 %i.ab, %i.x                 ; 2 uses
  %or.cond = select i1 %i.ad, i1 true, i1 %i.ae
  br i1 %or.cond, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.af = sub nsw i32 %i.p, %i.z                  ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !19 ; 11 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 5 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !20
  %i.al = icmp ugt ptr %i.ai, %i.ak
  br i1 %i.al, label %put_int.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = add i32 %i.af, 107
  %or.cond.i = icmp ult i32 %i.am, 215
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.an = trunc nsw i32 %i.af to i8
  %i.ao = add i8 %i.an, -117
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store i8 %i.ao, ptr %i.ah, align 1, !tbaa !21
  br label %put_int.exit

bb.e:                                             ; preds = %bb.c
  %i.aq = add i32 %i.af, -108                     ; 3 uses
  %or.cond3.i = icmp ult i32 %i.aq, 1024
  br i1 %or.cond3.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = lshr i32 %i.aq, 8
  %i.as = trunc nuw nsw i32 %i.ar to i8
  %i.at = add nuw nsw i8 %i.as, -9
  %i.au = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store i8 %i.at, ptr %i.ah, align 1, !tbaa !21
  %i.av = trunc i32 %i.aq to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  store i8 %i.av, ptr %i.au, align 1, !tbaa !21
  br label %put_int.exit

bb.g:                                             ; preds = %bb.e
  %i.ax = add i32 %i.af, 1131
  %or.cond5.i = icmp ult i32 %i.ax, 1024
  br i1 %or.cond5.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ay = sub nuw nsw i32 -108, %i.af             ; 2 uses
  %i.az = lshr i32 %i.ay, 8
  %i.ba = trunc nuw nsw i32 %i.az to i8
  %i.bb = add nuw nsw i8 %i.ba, -5
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store i8 %i.bb, ptr %i.ah, align 1, !tbaa !21
  %i.bd = trunc i32 %i.ay to i8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  store i8 %i.bd, ptr %i.bc, align 1, !tbaa !21
  br label %put_int.exit

bb.i:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store i8 -1, ptr %i.ah, align 1, !tbaa !21
  %5 = call i32 @llvm.bswap.i32(i32 %i.af)
  store i32 %5, ptr %i.bf, align 1, !tbaa !21
  br label %put_int.exit

put_int.exit:                                     ; preds = %bb.d, %bb.f, %bb.h, %bb.i
  %.0.i = phi ptr [ %i.ap, %bb.d ], [ %i.aw, %bb.f ], [ %i.be, %bb.h ], [ %i.ai, %bb.i ]
  store ptr %.0.i, ptr %i.ag, align 8, !tbaa !19
  br label %bb.j

bb.j:                                             ; preds = %put_int.exit, %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !19 ; 13 uses
  br i1 %i.ae, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 5 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !20
  %i.bl = icmp ugt ptr %i.bi, %i.bk
  br i1 %i.bl, label %put_int.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = add i32 %i.ac, 107
  %or.cond.i43 = icmp ult i32 %i.bm, 215
  br i1 %or.cond.i43, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bn = trunc nsw i32 %i.ac to i8
  %i.bo = add i8 %i.bn, -117
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  store i8 %i.bo, ptr %i.bh, align 1, !tbaa !21
  br label %.thread

bb.n:                                             ; preds = %bb.l
  %i.bq = add i32 %i.ac, -108                     ; 3 uses
  %or.cond3.i44 = icmp ult i32 %i.bq, 1024
  br i1 %or.cond3.i44, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.br = lshr i32 %i.bq, 8
  %i.bs = trunc nuw nsw i32 %i.br to i8
  %i.bt = add nuw nsw i8 %i.bs, -9
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  store i8 %i.bt, ptr %i.bh, align 1, !tbaa !21
  %i.bv = trunc i32 %i.bq to i8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  store i8 %i.bv, ptr %i.bu, align 1, !tbaa !21
  br label %.thread

bb.p:                                             ; preds = %bb.n
  %i.bx = add i32 %i.ac, 1131
  %or.cond5.i45 = icmp ult i32 %i.bx, 1024
  br i1 %or.cond5.i45, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.by = sub nuw nsw i32 -108, %i.ac             ; 2 uses
  %i.bz = lshr i32 %i.by, 8
  %i.ca = trunc nuw nsw i32 %i.bz to i8
  %i.cb = add nuw nsw i8 %i.ca, -5
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  store i8 %i.cb, ptr %i.bh, align 1, !tbaa !21
  %i.cd = trunc i32 %i.by to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  store i8 %i.cd, ptr %i.cc, align 1, !tbaa !21
  br label %.thread

bb.r:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  store i8 -1, ptr %i.bh, align 1, !tbaa !21
  %6 = call i32 @llvm.bswap.i32(i32 %i.ac)
  store i32 %6, ptr %i.cf, align 1, !tbaa !21
  br label %.thread

bb.s:                                             ; preds = %bb.j
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !20
  %i.ci = icmp eq ptr %i.bh, %i.ch
  br i1 %i.ci, label %put_int.exit.thread, label %bb.t

.thread:                                          ; preds = %bb.r, %bb.q, %bb.o, %bb.m
  %.0.i46 = phi ptr [ %i.bp, %bb.m ], [ %i.bw, %bb.o ], [ %i.ce, %bb.q ], [ %i.bi, %bb.r ] ; 4 uses
  store ptr %.0.i46, ptr %i.bg, align 8, !tbaa !19
  %i.cj = load ptr, ptr %i.bj, align 8, !tbaa !20
  %i.ck = icmp eq ptr %.0.i46, %i.cj
  br i1 %i.ck, label %put_int.exit.thread, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.not42 = icmp eq i32 %3, 0
  %i.cl = select i1 %.not42, i8 6, i8 22
  br label %bb.x

bb.u:                                             ; preds = %.thread
  %.not40 = icmp eq i32 %3, 0                     ; 2 uses
  br i1 %i.ad, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cm = select i1 %.not40, i8 7, i8 4
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.cn = select i1 %.not40, i8 5, i8 21
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.t
  %i.co = phi ptr [ %i.bh, %bb.t ], [ %.0.i46, %bb.v ], [ %.0.i46, %bb.w ] ; 2 uses
  %i.cp = phi i8 [ %i.cl, %bb.t ], [ %i.cm, %bb.v ], [ %i.cn, %bb.w ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  store ptr %i.cq, ptr %i.bg, align 8, !tbaa !19
  store i8 %i.cp, ptr %i.co, align 1, !tbaa !21
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  store i32 %i.f, ptr %i.d, align 4, !tbaa !27
  store i32 %i.p, ptr %i.y, align 8, !tbaa !28
  store i32 %i.x, ptr %i.aa, align 4, !tbaa !29
  br label %put_int.exit.thread

put_int.exit.thread:                              ; preds = %bb.k, %bb.b, %.thread, %bb.s, %bb.x
  %.0 = phi i32 [ 0, %bb.x ], [ -13, %.thread ], [ -13, %bb.b ], [ -13, %bb.s ], [ -13, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -13, 1) i32 @trace_from(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #0 !guid !44 {
bb.a:
  %i.a = add nsw i32 %2, 2                        ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 21 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 22 uses
  br label %add_dxdy.exit.outer

add_dxdy.exit.outer:                              ; preds = %add_dxdy.exit.outer.backedge, %bb.a
  %.053.ph = phi ptr [ %1, %bb.a ], [ %.053.ph.be, %add_dxdy.exit.outer.backedge ] ; 10 uses
  %.049.ph = phi i32 [ 3, %bb.a ], [ %.049.ph.be, %add_dxdy.exit.outer.backedge ] ; 5 uses
  %.048.ph = phi i32 [ 1, %bb.a ], [ %.048.ph.be, %add_dxdy.exit.outer.backedge ] ; 4 uses
  %i.e = zext nneg i32 %.049.ph to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @trace_from.nesw, i64 %i.e ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i16, ptr %i.g, align 4, !tbaa !47
  %i.i = sext i16 %i.h to i32                     ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.k = load i16, ptr %i.j, align 2, !tbaa !48
  %i.l = sext i16 %i.k to i32                     ; 6 uses
  %i.m = icmp eq i32 %.049.ph, 3
  br i1 %i.m, label %bb.b, label %bb.d

bb.b:                                             ; preds = %add_dxdy.exit.outer
  %i.n = load i8, ptr %.053.ph, align 1, !tbaa !21
  %i.o = icmp eq i8 %i.n, 2
  br i1 %i.o, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 2, ptr %.053.ph, align 1, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %add_dxdy.exit.outer
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.q = load i16, ptr %i.p, align 2, !tbaa !49
  %i.r = sext i16 %i.q to i32                     ; 2 uses
  %i.s = mul nsw i32 %i.a, %i.r
  %i.t = load i16, ptr %i.f, align 8, !tbaa !50
  %i.u = sext i16 %i.t to i32                     ; 2 uses
  %i.v = add nsw i32 %i.s, %i.u
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds i8, ptr %.053.ph, i64 %i.w ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !21
  %.not.peel = icmp eq i8 %i.y, 0
  br i1 %.not.peel, label %bb.e, label %bb.v

bb.e:                                             ; preds = %bb.d
  %i.z = mul nsw i32 %i.a, %i.l
  %i.aa = add nsw i32 %i.z, %i.i
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %.053.ph, i64 %i.ab ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !21
  %.not60.peel = icmp eq i8 %i.ad, 0
  br i1 %.not60.peel, label %bb.f, label %bb.aw

bb.f:                                             ; preds = %bb.e
  %i.ae = xor i32 %.048.ph, 3                     ; 2 uses
  %.not.i64.peel = icmp eq i32 %.048.ph, 3
  %.pre99.peel = load i32, ptr %i.b, align 8, !tbaa !31 ; 3 uses
  br i1 %.not.i64.peel, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = icmp eq i32 %.pre99.peel, %i.i
  br i1 %i.af, label %bb.h, label %._crit_edge96.peel

._crit_edge96.peel:                               ; preds = %bb.g
  %.pre97.peel = load i32, ptr %i.d, align 8, !tbaa !30
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = load i32, ptr %i.c, align 4, !tbaa !32
  %i.ah = icmp eq i32 %i.ag, %i.l
  %.pre98.peel = load i32, ptr %i.d, align 8, !tbaa !30 ; 2 uses
  br i1 %i.ah, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge96.peel
  %i.ai = phi i32 [ %.pre97.peel, %._crit_edge96.peel ], [ %.pre98.peel, %bb.h ] ; 3 uses
  %.not23.i65.peel = icmp eq i32 %i.ai, 0
  br i1 %.not23.i65.peel, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = mul nsw i32 %i.ai, %.pre99.peel
  %i.ak = load i32, ptr %i.c, align 4, !tbaa !32
  %i.al = mul nsw i32 %i.ak, %i.ai
  %i.am = tail call i32 @put_dxdy(ptr noundef nonnull %0, i32 noundef %i.aj, i32 noundef %i.al, i32 noundef 0) ; 2 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %select.unfold, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 %i.i, ptr %i.b, align 8, !tbaa !31
  store i32 %i.l, ptr %i.c, align 4, !tbaa !32
  br label %.sink.split115.peel

bb.l:                                             ; preds = %bb.h
  %i.ao = add nsw i32 %.pre98.peel, %i.ae
  br label %.sink.split115.peel

.sink.split115.peel:                              ; preds = %bb.l, %bb.k
  %.sink116.peel = phi i32 [ %i.ao, %bb.l ], [ %i.ae, %bb.k ]
  store i32 %.sink116.peel, ptr %i.d, align 8, !tbaa !30
  br label %bb.m

bb.m:                                             ; preds = %.sink.split115.peel, %bb.f
  %i.ap = phi i32 [ %.pre99.peel, %bb.f ], [ %i.i, %.sink.split115.peel ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.ar = load i16, ptr %i.aq, align 4, !tbaa !47
  %i.as = sext i16 %i.ar to i32
  %i.at = add nsw i32 %i.as, %i.i                 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 14
  %i.av = load i16, ptr %i.au, align 2, !tbaa !48
  %i.aw = sext i16 %i.av to i32
  %i.ax = add nsw i32 %i.aw, %i.l                 ; 2 uses
  %i.ay = icmp eq i32 %i.at, %i.ap
  br i1 %i.ay, label %bb.n, label %._crit_edge100.peel

._crit_edge100.peel:                              ; preds = %bb.m
  %.pre101.peel = load i32, ptr %i.d, align 8, !tbaa !30
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.az = load i32, ptr %i.c, align 4, !tbaa !32
  %i.ba = icmp eq i32 %i.ax, %i.az
  %.pre102.peel = load i32, ptr %i.d, align 8, !tbaa !30 ; 2 uses
  br i1 %i.ba, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge100.peel
  %i.bb = phi i32 [ %.pre101.peel, %._crit_edge100.peel ], [ %.pre102.peel, %bb.n ] ; 3 uses
  %.not23.i68.peel = icmp eq i32 %i.bb, 0
  br i1 %.not23.i68.peel, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = mul nsw i32 %i.bb, %i.ap
  %i.bd = load i32, ptr %i.c, align 4, !tbaa !32
  %i.be = mul nsw i32 %i.bd, %i.bb
  %i.bf = tail call i32 @put_dxdy(ptr noundef nonnull %0, i32 noundef %i.bc, i32 noundef %i.be, i32 noundef 0) ; 2 uses
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %select.unfold, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store i32 %i.at, ptr %i.b, align 8, !tbaa !31
  store i32 %i.ax, ptr %i.c, align 4, !tbaa !32
  br label %add_dxdy.exit.peel.next

bb.r:                                             ; preds = %bb.n
  %i.bh = add nsw i32 %.pre102.peel, 1
  br label %add_dxdy.exit.peel.next

add_dxdy.exit.peel.next:                          ; preds = %bb.r, %bb.q
  %storemerge114.peel = phi i32 [ 1, %bb.q ], [ %i.bh, %bb.r ]
end_hunk_0
begin_hunk_1_@trace_from:bb.a
  %i.dh = icmp eq i32 %.pre99, %i.bm
  br i1 %i.dh, label %bb.al, label %._crit_edge96

._crit_edge96:                                    ; preds = %bb.ak
  %.pre97 = load i32, ptr %i.d, align 8, !tbaa !30
  br label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.di = load i32, ptr %i.c, align 4, !tbaa !32
  %i.dj = icmp eq i32 %i.di, %i.bp
  %.pre98 = load i32, ptr %i.d, align 8, !tbaa !30 ; 2 uses
  br i1 %i.dj, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dk = add nsw i32 %.pre98, 2
  br label %.sink.split115

bb.an:                                            ; preds = %._crit_edge96, %bb.al
  %i.dl = phi i32 [ %.pre97, %._crit_edge96 ], [ %.pre98, %bb.al ] ; 3 uses
  %.not23.i65 = icmp eq i32 %i.dl, 0
  br i1 %.not23.i65, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dm = mul nsw i32 %i.dl, %.pre99
  %i.dn = load i32, ptr %i.c, align 4, !tbaa !32
  %i.do = mul nsw i32 %i.dn, %i.dl
  %i.dp = tail call i32 @put_dxdy(ptr noundef nonnull %0, i32 noundef %i.dm, i32 noundef %i.do, i32 noundef 0) ; 2 uses
  %i.dq = icmp slt i32 %i.dp, 0
  br i1 %i.dq, label %select.unfold, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  store i32 %i.bm, ptr %i.b, align 8, !tbaa !31
  store i32 %i.bp, ptr %i.c, align 4, !tbaa !32
  br label %.sink.split115

.sink.split115:                                   ; preds = %bb.ap, %bb.am
  %.sink116 = phi i32 [ %i.dk, %bb.am ], [ 2, %bb.ap ]
  store i32 %.sink116, ptr %i.d, align 8, !tbaa !30
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %i.ds = load i16, ptr %i.dr, align 4, !tbaa !47 ; 2 uses
  %i.dt = sext i16 %i.ds to i32
  %i.du = add nsw i32 %i.dt, %i.bm
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bj, i64 14
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !48
  %i.dx = sext i16 %i.dw to i32
  %i.dy = add nsw i32 %i.dx, %i.bp                ; 2 uses
  %i.dz = icmp eq i16 %i.ds, 0
  br i1 %i.dz, label %bb.aq, label %._crit_edge100

._crit_edge100:                                   ; preds = %.sink.split115
  %.pre101 = load i32, ptr %i.d, align 8, !tbaa !30
  br label %bb.as

bb.aq:                                            ; preds = %.sink.split115
  %i.ea = load i32, ptr %i.c, align 4, !tbaa !32
  %i.eb = icmp eq i32 %i.dy, %i.ea
  %.pre102 = load i32, ptr %i.d, align 8, !tbaa !30 ; 2 uses
  br i1 %i.eb, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ec = add nsw i32 %.pre102, 1
  br label %bb.av

bb.as:                                            ; preds = %._crit_edge100, %bb.aq
  %i.ed = phi i32 [ %.pre101, %._crit_edge100 ], [ %.pre102, %bb.aq ] ; 3 uses
  %.not23.i68 = icmp eq i32 %i.ed, 0
  br i1 %.not23.i68, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ee = mul nsw i32 %i.ed, %i.bm
  %i.ef = load i32, ptr %i.c, align 4, !tbaa !32
  %i.eg = mul nsw i32 %i.ef, %i.ed
  %i.eh = tail call i32 @put_dxdy(ptr noundef nonnull %0, i32 noundef %i.ee, i32 noundef %i.eg, i32 noundef 0) ; 2 uses
  %i.ei = icmp slt i32 %i.eh, 0
  br i1 %i.ei, label %select.unfold, label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  store i32 %i.du, ptr %i.b, align 8, !tbaa !31
  store i32 %i.dy, ptr %i.c, align 4, !tbaa !32
  br label %bb.av

bb.av:                                            ; preds = %bb.ar, %bb.au
  %storemerge114 = phi i32 [ 1, %bb.au ], [ %i.ec, %bb.ar ]
  store i32 %storemerge114, ptr %i.d, align 8, !tbaa !30
  br label %add_dxdy.exit, !llvm.loop !43

.loopexit136:                                     ; preds = %bb.aj
  %i.ej = getelementptr inbounds i8, ptr %.053.ph, i64 %i.de
  br label %bb.aw

bb.aw:                                            ; preds = %.loopexit136, %bb.e
  %.049.lcssa134 = phi i32 [ %.049.ph, %bb.e ], [ %.049, %.loopexit136 ] ; 2 uses
  %.048.lcssa132 = phi i32 [ %.048.ph, %bb.e ], [ 1, %.loopexit136 ] ; 2 uses
  %.lcssa130 = phi i32 [ %i.i, %bb.e ], [ %i.bm, %.loopexit136 ] ; 2 uses
  %.lcssa127 = phi i32 [ %i.l, %bb.e ], [ %i.bp, %.loopexit136 ] ; 2 uses
  %.lcssa124 = phi ptr [ %i.ac, %bb.e ], [ %i.ej, %.loopexit136 ] ; 2 uses
  %i.ek = load i32, ptr %i.b, align 8, !tbaa !31  ; 2 uses
  %i.el = icmp eq i32 %i.ek, %.lcssa130
  br i1 %i.el, label %bb.ax, label %._crit_edge93

._crit_edge93:                                    ; preds = %bb.aw
  %.pre94 = load i32, ptr %i.d, align 8, !tbaa !30
  br label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.em = load i32, ptr %i.c, align 4, !tbaa !32
  %i.en = icmp eq i32 %i.em, %.lcssa127
  %.pre95 = load i32, ptr %i.d, align 8, !tbaa !30 ; 2 uses
  br i1 %i.en, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.eo = add nsw i32 %.pre95, 4
  store i32 %i.eo, ptr %i.d, align 8, !tbaa !30
  br label %add_dxdy.exit.outer.backedge

bb.az:                                            ; preds = %._crit_edge93, %bb.ax
  %i.ep = phi i32 [ %.pre94, %._crit_edge93 ], [ %.pre95, %bb.ax ] ; 3 uses
  %.not23.i71 = icmp eq i32 %i.ep, 0
  br i1 %.not23.i71, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.eq = mul nsw i32 %i.ep, %i.ek
  %i.er = load i32, ptr %i.c, align 4, !tbaa !32
  %i.es = mul nsw i32 %i.er, %i.ep
  %i.et = tail call i32 @put_dxdy(ptr noundef nonnull %0, i32 noundef %i.eq, i32 noundef %i.es, i32 noundef 0) ; 2 uses
  %i.eu = icmp slt i32 %i.et, 0
  br i1 %i.eu, label %select.unfold, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  store i32 %.lcssa130, ptr %i.b, align 8, !tbaa !31
  store i32 %.lcssa127, ptr %i.c, align 4, !tbaa !32
  store i32 4, ptr %i.d, align 8, !tbaa !30
  br label %add_dxdy.exit.outer.backedge

select.unfold:                                    ; preds = %bb.ba, %bb.ag, %bb.aa, %bb.s, %bb.ao, %bb.at, %bb.b, %bb.j, %bb.p
  %.152.ph = phi i32 [ 0, %bb.b ], [ %i.dp, %bb.ao ], [ 0, %bb.s ], [ %i.eh, %bb.at ], [ %i.bf, %bb.p ], [ %i.am, %bb.j ], [ %i.cn, %bb.aa ], [ %i.cy, %bb.ag ], [ %i.et, %bb.ba ]
  ret i32 %.152.ph
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -13, 1) i32 @add_dxdy(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !guid !52 {
bb.a:
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = icmp eq i32 %1, %i.b
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.e = load i32, ptr %i.d, align 4, !tbaa !32
  %i.f = icmp eq i32 %2, %i.e
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !30
  %i.i = add nsw i32 %i.h, %3
  store i32 %i.i, ptr %i.g, align 8, !tbaa !30
  br label %bb.h

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !30   ; 3 uses
  %.not23 = icmp eq i32 %i.k, 0
  br i1 %.not23, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = mul nsw i32 %i.k, %i.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.n = load i32, ptr %i.m, align 4, !tbaa !32
  %i.o = mul nsw i32 %i.n, %i.k
  %i.p = tail call i32 @put_dxdy(ptr noundef nonnull %0, i32 noundef %i.l, i32 noundef %i.o, i32 noundef 0) ; 2 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 %1, ptr %i.a, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %2, ptr %i.r, align 4, !tbaa !32
  store i32 %3, ptr %i.j, align 8, !tbaa !30
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g, %bb.d, %bb.f
  %.0 = phi i32 [ %i.p, %bb.f ], [ 0, %bb.d ], [ 0, %bb.g ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !22}
!1 = distinct !{!1, !22}
!2 = distinct !{!2, !22}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{i64 -8226392465269620481}
!12 = !{i64 -2340637645378924221}
!13 = !{!"float", !8, i64 0}
!14 = !{!"long", !8, i64 0}
!15 = !{!"gs_matrix_s", !13, i64 0, !14, i64 8, !13, i64 16, !14, i64 24, !13, i64 32, !14, i64 40, !13, i64 48, !14, i64 56, !13, i64 64, !14, i64 72, !13, i64 80, !14, i64 88}
!16 = !{!"any pointer", !8, i64 0}
!17 = !{!"p1 omnipotent char", !16, i64 0}
!18 = !{!"", !15, i64 0, !17, i64 96, !9, i64 104, !9, i64 108, !17, i64 112, !9, i64 120, !9, i64 124, !9, i64 128, !9, i64 132, !9, i64 136, !9, i64 140, !9, i64 144}
!19 = !{!18, !17, i64 112}
!20 = !{!18, !17, i64 96}
!21 = !{!8, !8, i64 0}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"gs_point_s", !13, i64 0, !13, i64 4}
!24 = !{!23, !13, i64 0}
!25 = !{!23, !13, i64 4}
!26 = !{!18, !9, i64 120}
!27 = !{!18, !9, i64 124}
!28 = !{!18, !9, i64 128}
!29 = !{!18, !9, i64 132}
!30 = !{!18, !9, i64 144}
!31 = !{!18, !9, i64 136}
!32 = !{!18, !9, i64 140}
!33 = distinct !{!33, !22}
!34 = distinct !{!34, !22}
!35 = !{i64 -8197017671066916189}
!36 = !{!18, !9, i64 104}
!37 = !{!18, !9, i64 108}
!38 = !{i64 3821637450263194252}
!39 = !{i64 1903377215895770139}
!40 = !{i64 2151220705480369222}
!41 = !{i64 8799337025155995983}
!42 = !{i64 4302537824013202864}
!43 = distinct !{!43, !51}
!44 = !{i64 -1435560622027573128}
!45 = !{!"short", !8, i64 0}
!46 = !{!"", !45, i64 0, !45, i64 2, !45, i64 4, !45, i64 6}
!47 = !{!46, !45, i64 4}
!48 = !{!46, !45, i64 6}
!49 = !{!46, !45, i64 2}
!50 = !{!46, !45, i64 0}
!51 = !{!"llvm.loop.peeled.count", i32 1}
!52 = !{i64 4056029452557042326}
end_hunk_1
