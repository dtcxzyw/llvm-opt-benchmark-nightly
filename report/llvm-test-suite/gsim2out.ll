inline.NumInlined: 20
begin_hunk_0_@gs_type1imagepath:bb.a

bb.az:                                            ; preds = %bb.ay, %bb.ao
  %.073 = phi i32 [ 0, %bb.ay ], [ %i.du, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  %i.if = shl nsw i32 %.075126, 2
  %i.ig = getelementptr inbounds nuw i8, ptr %10, i64 120 ; 2 uses
  store i32 %i.if, ptr %i.ig, align 8, !tbaa !27
  %i.ih = fptosi double %i.bo to i32
  %i.ii = getelementptr inbounds nuw i8, ptr %10, i64 124 ; 2 uses
  store i32 %i.ih, ptr %i.ii, align 4, !tbaa !28
  %i.ij = load i32, ptr %i.ch, align 8, !tbaa !24
  %i.ik = add nsw i32 %i.ij, %i.dm
  %i.il = getelementptr inbounds nuw i8, ptr %10, i64 128
  store i32 %i.ik, ptr %i.il, align 8, !tbaa !29
  %i.im = load i32, ptr %i.cq, align 4, !tbaa !26
  %i.in = add nsw i32 %i.im, %.073
  %i.io = getelementptr inbounds nuw i8, ptr %10, i64 132
  store i32 %i.in, ptr %i.io, align 4, !tbaa !30
  %i.ip = add nsw i32 %3, 1
  %i.iq = mul nsw i32 %i.ip, %i.k                 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %10, i64 144
  %.not40.i = icmp slt i32 %i.iq, 2
  br i1 %.not40.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.az
  %i.is = zext nneg i32 %i.iq to i64
  %i.it = getelementptr i8, ptr %i.n, i64 %i.is
  %i.iu = getelementptr i8, ptr %i.it, i64 -2
  %i.iv = sub nsw i32 -2, %2
  %i.iw = sext i32 %i.iv to i64
  %i.ix = ptrtoint ptr %i.n to i64
  %i.iy = sext i32 %i.k to i64                    ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bg, %.lr.ph.i
  %.03141.i = phi ptr [ %i.iu, %.lr.ph.i ], [ %i.jz, %bb.bg ] ; 5 uses
  %i.iz = load i8, ptr %.03141.i, align 1, !tbaa !16
  %i.ja = icmp eq i8 %i.iz, 1
  br i1 %i.ja, label %bb.bb, label %bb.bg

bb.bb:                                            ; preds = %bb.ba
  %i.jb = getelementptr inbounds i8, ptr %.03141.i, i64 %i.iw
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !16
  %i.jd = icmp eq i8 %i.jc, 0
  br i1 %i.jd, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.je = ptrtoint ptr %.03141.i to i64
  %i.jf = sub i64 %i.je, %i.ix                    ; 2 uses
  %i.jg = srem i64 %i.jf, %i.iy
  %i.jh = trunc nsw i64 %i.jg to i32
  %i.ji = sdiv i64 %i.jf, %i.iy
  %i.jj = trunc i64 %i.ji to i32
  %i.jk = shl i32 %i.jh, 2
  %i.jl = add i32 %i.jk, -3
  %i.jm = load i32, ptr %i.ig, align 8, !tbaa !27
  %i.jn = sub i32 %i.jl, %i.jm
  %i.jo = shl i32 %i.jj, 2
  %i.jp = add i32 %i.jo, -4
  %i.jq = load i32, ptr %i.ii, align 4, !tbaa !28
  %i.jr = sub i32 %i.jp, %i.jq
  %i.js = call i32 @put_dxdy(ptr noundef nonnull %10, i32 noundef %i.jn, i32 noundef %i.jr, i32 noundef 1) ; 2 uses
  %i.jt = icmp slt i32 %i.js, 0
  br i1 %i.jt, label %trace_cells.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store i32 0, ptr %i.ir, align 8, !tbaa !31
  %i.ju = call i32 @trace_from(ptr noundef nonnull %10, ptr noundef nonnull %.03141.i, i32 noundef %2) ; 2 uses
  %i.jv = icmp slt i32 %i.ju, 0
  br i1 %i.jv, label %trace_cells.exit.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jw = load ptr, ptr %i.bm, align 8, !tbaa !8  ; 3 uses
  %i.jx = load ptr, ptr %i.bl, align 8, !tbaa !15
  %.not36.i = icmp ult ptr %i.jw, %i.jx
  br i1 %.not36.i, label %bb.bf, label %trace_cells.exit.thread

bb.bf:                                            ; preds = %bb.be
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 1
  store ptr %i.jy, ptr %i.bm, align 8, !tbaa !8
  store i8 9, ptr %i.jw, align 1, !tbaa !16
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.bb, %bb.ba
  %i.jz = getelementptr inbounds i8, ptr %.03141.i, i64 -1 ; 2 uses
  %.not.i = icmp ult ptr %i.jz, %i.n
  br i1 %.not.i, label %.loopexit, label %bb.ba, !llvm.loop !32

trace_cells.exit.thread:                          ; preds = %bb.bc, %bb.be, %bb.bd
  %.3.i.ph = phi i32 [ %i.ju, %bb.bd ], [ -13, %bb.be ], [ %i.js, %bb.bc ]
  call void @gs_free(ptr noundef nonnull %i.n, i32 noundef %i.m, i32 noundef 1, ptr noundef nonnull @.str) #9
  br label %bb.bi

.loopexit:                                        ; preds = %bb.bg, %bb.az
  call void @gs_free(ptr noundef nonnull %i.n, i32 noundef %i.m, i32 noundef 1, ptr noundef nonnull @.str) #9
  %i.ka = load ptr, ptr %i.bm, align 8, !tbaa !8  ; 3 uses
  %i.kb = load ptr, ptr %i.bl, align 8, !tbaa !15
  %.not93 = icmp ult ptr %i.ka, %i.kb
  br i1 %.not93, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %.loopexit
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 1
  store ptr %i.kc, ptr %i.bm, align 8, !tbaa !8
  store i8 14, ptr %i.ka, align 1, !tbaa !16
  %i.kd = load ptr, ptr %i.bm, align 8, !tbaa !8
  %i.ke = ptrtoint ptr %i.kd to i64
  %i.kf = ptrtoint ptr %8 to i64
  %i.kg = sub i64 %i.ke, %i.kf
  %i.kh = trunc i64 %i.kg to i32
  br label %bb.bi

bb.bi:                                            ; preds = %trace_cells.exit.thread, %.thread116, %.thread, %.loopexit, %bb.d, %bb.c, %bb.bh
  %.269 = phi i32 [ %i.i, %bb.c ], [ -25, %bb.d ], [ %.168.ph, %.thread116 ], [ %.3.i.ph, %trace_cells.exit.thread ], [ %i.kh, %bb.bh ], [ -13, %.loopexit ], [ %.067.ph, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  ret i32 %.269
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
define dso_local void @fill_cells(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = add nsw i32 %2, 2                        ; 2 uses
  %i.b = add nsw i32 %3, 2
  %i.c = mul nsw i32 %i.b, %i.a
  %i.d = sext i32 %i.c to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %i.d, i1 false)
  %i.e = icmp sgt i32 %3, 0
  br i1 %i.e, label %.preheader.lr.ph, label %._crit_edge42

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.f = icmp sgt i32 %2, 0
  %i.g = shl nsw i32 %2, 1
  %narrow = sub nuw nsw i32 -2, %i.g
  %i.h = sext i32 %narrow to i64
  br i1 %i.f, label %.preheader.us.preheader, label %._crit_edge42

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.i = getelementptr inbounds i8, ptr %1, i64 -1
  %i.j = mul nuw nsw i32 %i.a, %3
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %xtraiter = and i32 %2, 1
  %i.n = icmp eq i32 %2, 1
  %unroll_iter = and i32 %2, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod51 = trunc i32 %2 to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.02141.us = phi i32 [ %.2.us.lcssa, %._crit_edge.us ], [ undef, %.preheader.us.preheader ] ; 2 uses
  %.02440.us = phi ptr [ %i.ai, %._crit_edge.us ], [ %i.m, %.preheader.us.preheader ] ; 2 uses
  %.02639.us = phi ptr [ %.228.us.lcssa, %._crit_edge.us ], [ %i.i, %.preheader.us.preheader ] ; 2 uses
  %.02938.us = phi i32 [ %i.aj, %._crit_edge.us ], [ 0, %.preheader.us.preheader ]
  br i1 %i.n, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %bb.i
  %.134.us = phi i32 [ %.2.us.1, %bb.i ], [ %.02141.us, %.preheader.us ]
  %.02233.us = phi i32 [ %i.aa, %bb.i ], [ 0, %.preheader.us ] ; 2 uses
  %.12532.us = phi ptr [ %i.ab, %bb.i ], [ %.02440.us, %.preheader.us ] ; 3 uses
  %.12731.us = phi ptr [ %.228.us.1, %bb.i ], [ %.02639.us, %.preheader.us ] ; 2 uses
  %niter = phi i32 [ %niter.next.1, %bb.i ], [ 0, %.preheader.us ]
  %i.o = icmp eq i32 %.02233.us, 0
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader.us.new
  %i.p = getelementptr inbounds nuw i8, ptr %.12731.us, i64 1 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !16
  %i.r = zext i8 %i.q to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader.us.new
  %.228.us = phi ptr [ %i.p, %bb.b ], [ %.12731.us, %.preheader.us.new ] ; 2 uses
  %.123.us = phi i32 [ 128, %bb.b ], [ %.02233.us, %.preheader.us.new ] ; 2 uses
  %.2.us = phi i32 [ %i.r, %bb.b ], [ %.134.us, %.preheader.us.new ] ; 2 uses
  %i.s = and i32 %.2.us, %.123.us
  %.not.us = icmp eq i32 %i.s, 0
  br i1 %.not.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %.12532.us, align 1, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = lshr i32 %.123.us, 1                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.12532.us, i64 1
  %i.v = icmp eq i32 %i.t, 0
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.228.us, i64 1 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !16
  %i.y = zext i8 %i.x to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.228.us.1 = phi ptr [ %i.w, %bb.f ], [ %.228.us, %bb.e ] ; 3 uses
  %.123.us.1 = phi i32 [ 128, %bb.f ], [ %i.t, %bb.e ] ; 2 uses
  %.2.us.1 = phi i32 [ %i.y, %bb.f ], [ %.2.us, %bb.e ] ; 4 uses
  %i.z = and i32 %.2.us.1, %.123.us.1
  %.not.us.1 = icmp eq i32 %i.z, 0
  br i1 %.not.us.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.u, align 1, !tbaa !16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aa = lshr i32 %.123.us.1, 1                  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.12532.us, i64 2 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !17

._crit_edge.us.unr-lcssa:                         ; preds = %bb.i
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %.134.us.epil.init = phi i32 [ %.02141.us, %.preheader.us ], [ %.2.us.1, %._crit_edge.us.unr-lcssa ]
  %.02233.us.epil.init = phi i32 [ 0, %.preheader.us ], [ %i.aa, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.12532.us.epil.init = phi ptr [ %.02440.us, %.preheader.us ], [ %i.ab, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.12731.us.epil.init = phi ptr [ %.02639.us, %.preheader.us ], [ %.228.us.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod51)
  %i.ac = icmp eq i32 %.02233.us.epil.init, 0
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.epil.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %.12731.us.epil.init, i64 1 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !16
  %i.af = zext i8 %i.ae to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.epil.preheader
  %.228.us.epil = phi ptr [ %i.ad, %bb.j ], [ %.12731.us.epil.init, %.epil.preheader ]
  %.123.us.epil = phi i32 [ 128, %bb.j ], [ %.02233.us.epil.init, %.epil.preheader ]
  %.2.us.epil = phi i32 [ %i.af, %bb.j ], [ %.134.us.epil.init, %.epil.preheader ] ; 2 uses
  %i.ag = and i32 %.2.us.epil, %.123.us.epil
  %.not.us.epil = icmp eq i32 %i.ag, 0
  br i1 %.not.us.epil, label %._crit_edge.us.epilog-lcssa, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %.12532.us.epil.init, align 1, !tbaa !16
  br label %._crit_edge.us.epilog-lcssa

._crit_edge.us.epilog-lcssa:                      ; preds = %bb.l, %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %.12532.us.epil.init, i64 1
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %._crit_edge.us.epilog-lcssa
  %.lcssa = phi ptr [ %i.ab, %._crit_edge.us.unr-lcssa ], [ %i.ah, %._crit_edge.us.epilog-lcssa ]
  %.228.us.lcssa = phi ptr [ %.228.us.1, %._crit_edge.us.unr-lcssa ], [ %.228.us.epil, %._crit_edge.us.epilog-lcssa ]
  %.2.us.lcssa = phi i32 [ %.2.us.1, %._crit_edge.us.unr-lcssa ], [ %.2.us.epil, %._crit_edge.us.epilog-lcssa ]
  %i.ai = getelementptr inbounds i8, ptr %.lcssa, i64 %i.h
  %i.aj = add nuw nsw i32 %.02938.us, 1           ; 2 uses
  %exitcond44.not = icmp eq i32 %i.aj, %3
  br i1 %exitcond44.not, label %._crit_edge42, label %.preheader.us, !llvm.loop !19

._crit_edge42:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph, %bb.a
  ret void
}

declare i32 @gs_distance_transform(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 -32767, 32768) i32 @round_coord(double noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = fadd double %0, 5.000000e-01
  %i.b = fptosi double %i.a to i64
  %i.c = tail call i64 @llvm.smax.i64(i64 %i.b, i64 -32767)
  %i.d = tail call i64 @llvm.smin.i64(i64 %i.c, i64 32767)
  %i.e = trunc nsw i64 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -13, 1) i32 @put_int(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15
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
  store i8 %i.i, ptr %i.b, align 1, !tbaa !16
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
  store i8 %i.n, ptr %i.b, align 1, !tbaa !16
  %i.p = trunc i32 %i.k to i8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.p, ptr %i.o, align 1, !tbaa !16
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
  store i8 %i.v, ptr %i.b, align 1, !tbaa !16
  %i.x = trunc i32 %i.s to i8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.x, ptr %i.w, align 1, !tbaa !16
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 -1, ptr %i.b, align 1, !tbaa !16
  %i.aa = lshr i32 %1, 24
  %i.ab = trunc nuw i32 %i.aa to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.ab, ptr %i.z, align 1, !tbaa !16
  %i.ad = lshr i32 %1, 16
  %i.ae = trunc i32 %i.ad to i8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.ae, ptr %i.ac, align 1, !tbaa !16
  %i.ag = lshr i32 %1, 8
  %i.ah = trunc i32 %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.ah, ptr %i.af, align 1, !tbaa !16
  %i.aj = trunc i32 %1 to i8
  store i8 %i.aj, ptr %i.ai, align 1, !tbaa !16
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.g, %bb.c
  %.0 = phi ptr [ %i.j, %bb.c ], [ %i.q, %bb.e ], [ %i.y, %bb.g ], [ %i.c, %bb.h ]
  store ptr %.0, ptr %i.a, align 8, !tbaa !8
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  %.037 = phi i32 [ 0, %bb.i ], [ -13, %bb.a ]
  ret i32 %.037
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -13, 1) i32 @trace_cells(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
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
end_hunk_0
