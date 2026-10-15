Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/oggenc?download=true
inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 194
begin_hunk_0_@_vp_remove_floor:bb.a
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.v = load float, ptr %i.u, align 4
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.x = load i32, ptr %i.w, align 4
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [4 x i8], ptr @FLOOR1_fromdB_INV_LOOKUP, i64 %i.y
  %i.aa = load float, ptr %i.z, align 4
  %i.ab = fmul float %i.v, %i.aa
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  store float %i.ab, ptr %i.ac, align 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.ae = load float, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr @FLOOR1_fromdB_INV_LOOKUP, i64 %i.ah
  %i.aj = load float, ptr %i.ai, align 4
  %i.ak = fmul float %i.ae, %i.aj
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  store float %i.ak, ptr %i.al, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !29

._crit_edge:                                      ; preds = %.lr.ph22.preheader, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_vp_noisemask(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #25 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 10 uses
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 2
  %i.d = alloca i8, i64 %i.c, align 16            ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  tail call fastcc void @bark_noise_hybridmp(i32 noundef %i.a, ptr noundef %i.f, ptr noundef %1, ptr noundef %2, float noundef 1.400000e+02, i32 noundef -1)
  %i.g = icmp sgt i32 %i.a, 0
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge49.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.a, 8
  br i1 %min.iters.check, label %.lr.ph.preheader78, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load = load <4 x float>, ptr %i.h, align 4
  %wide.load61 = load <4 x float>, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load62 = load <4 x float>, ptr %i.j, align 4
  %wide.load63 = load <4 x float>, ptr %i.k, align 4
  %i.l = fsub <4 x float> %wide.load, %wide.load62
  %i.m = fsub <4 x float> %wide.load61, %wide.load63
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <4 x float> %i.l, ptr %i.n, align 16
  store <4 x float> %i.m, ptr %i.o, align 16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !568

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader78

.lr.ph.preheader78:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader78, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader78 ] ; 4 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.r = load float, ptr %i.q, align 4
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.t = load float, ptr %i.s, align 4
  %i.u = fsub float %i.r, %i.t
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store float %i.u, ptr %i.v, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !569

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %i.w = load ptr, ptr %i.e, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 128
  %i.aa = load i32, ptr %i.z, align 8
  call fastcc void @bark_noise_hybridmp(i32 noundef %i.a, ptr noundef %i.w, ptr noundef nonnull %i.d, ptr noundef %2, float noundef 0.000000e+00, i32 noundef %i.aa)
  %wide.trip.count54 = zext nneg i32 %i.a to i64
  %min.iters.check65 = icmp ult i32 %i.a, 8
  br i1 %min.iters.check65, label %.lr.ph46.preheader, label %vector.ph66

vector.ph66:                                      ; preds = %._crit_edge
  %n.vec67 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body68

vector.body68:                                    ; preds = %vector.body68, %vector.ph66
  %index69 = phi i64 [ 0, %vector.ph66 ], [ %index.next74, %vector.body68 ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index69 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %wide.load70 = load <4 x float>, ptr %i.ab, align 4
  %wide.load71 = load <4 x float>, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index69 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %wide.load72 = load <4 x float>, ptr %i.ad, align 16
  %wide.load73 = load <4 x float>, ptr %i.ae, align 16
  %i.af = fsub <4 x float> %wide.load70, %wide.load72
  %i.ag = fsub <4 x float> %wide.load71, %wide.load73
  store <4 x float> %i.af, ptr %i.ad, align 16
  store <4 x float> %i.ag, ptr %i.ae, align 16
  %index.next74 = add nuw i64 %index69, 8         ; 2 uses
  %i.ah = icmp eq i64 %index.next74, %n.vec67
  br i1 %i.ah, label %middle.block75, label %vector.body68, !llvm.loop !570

middle.block75:                                   ; preds = %vector.body68
  %cmp.n76 = icmp eq i64 %n.vec67, %wide.trip.count
  br i1 %cmp.n76, label %.lr.ph48.preheader, label %.lr.ph46.preheader

.lr.ph46.preheader:                               ; preds = %._crit_edge, %middle.block75
  %indvars.iv51.ph = phi i64 [ 0, %._crit_edge ], [ %n.vec67, %middle.block75 ]
  br label %.lr.ph46

.lr.ph48.preheader:                               ; preds = %.lr.ph46, %middle.block75
  %wide.trip.count59 = zext nneg i32 %i.a to i64
  br label %.lr.ph48

.lr.ph46:                                         ; preds = %.lr.ph46.preheader, %.lr.ph46
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %.lr.ph46 ], [ %indvars.iv51.ph, %.lr.ph46.preheader ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv51
  %i.aj = load float, ptr %i.ai, align 4
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv51 ; 2 uses
  %i.al = load float, ptr %i.ak, align 4
  %i.am = fsub float %i.aj, %i.al
  store float %i.am, ptr %i.ak, align 4
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %exitcond55.not = icmp eq i64 %indvars.iv.next52, %wide.trip.count54
  br i1 %exitcond55.not, label %.lr.ph48.preheader, label %.lr.ph46, !llvm.loop !571

.lr.ph48:                                         ; preds = %.lr.ph48.preheader, %.lr.ph48
  %indvars.iv56 = phi i64 [ 0, %.lr.ph48.preheader ], [ %indvars.iv.next57, %.lr.ph48 ] ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv56 ; 2 uses
  %i.ao = load float, ptr %i.an, align 4
  %i.ap = fpext float %i.ao to double
  %i.aq = fadd double %i.ap, 5.000000e-01
  %i.ar = fptosi double %i.aq to i32
  %i.as = tail call i32 @llvm.smax.i32(i32 %i.ar, i32 0)
  %i.at = tail call i32 @llvm.umin.i32(i32 %i.as, i32 39)
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv56
  %i.av = load float, ptr %i.au, align 4
  %i.aw = load ptr, ptr %i.x, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 336
  %i.ay = zext nneg i32 %i.at to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load float, ptr %i.az, align 4
  %i.bb = fadd float %i.av, %i.ba
  store float %i.bb, ptr %i.an, align 4
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %exitcond60.not = icmp eq i64 %indvars.iv.next57, %wide.trip.count59
  br i1 %exitcond60.not, label %._crit_edge49, label %.lr.ph48, !llvm.loop !572

._crit_edge49.critedge:                           ; preds = %bb.a
  %i.bc = load ptr, ptr %i.e, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 128
  %i.bg = load i32, ptr %i.bf, align 8
  call fastcc void @bark_noise_hybridmp(i32 noundef %i.a, ptr noundef %i.bc, ptr noundef nonnull %i.d, ptr noundef %2, float noundef 0.000000e+00, i32 noundef %i.bg)
  br label %._crit_edge49

._crit_edge49:                                    ; preds = %.lr.ph48, %._crit_edge49.critedge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @bark_noise_hybridmp(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, float noundef nofpclass(nan inf nzero sub nnorm) %4, i32 noundef %5) unnamed_addr #43 {
bb.a:
  %i.a = sext i32 %0 to i64                       ; 2 uses
  %i.b = shl nsw i64 %i.a, 2                      ; 5 uses
  %i.c = alloca i8, i64 %i.b, align 16            ; 10 uses
  %i.d = alloca i8, i64 %i.b, align 16            ; 10 uses
  %i.e = alloca i8, i64 %i.b, align 16            ; 10 uses
  %i.f = alloca i8, i64 %i.b, align 16            ; 10 uses
  %i.g = alloca i8, i64 %i.b, align 16            ; 10 uses
  %i.h = load float, ptr %2, align 4
  %i.i = fadd float %4, %i.h                      ; 2 uses
  %i.j = fcmp olt float %i.i, 1.000000e+00
  %spec.store.select = select i1 %i.j, float 1.000000e+00, float %i.i ; 3 uses
  %i.k = fmul float %spec.store.select, %spec.store.select
  %i.l = fmul float %i.k, 5.000000e-01            ; 2 uses
  %6 = fadd float %i.l, 0.000000e+00              ; 4 uses
  %i.m = fmul float %spec.store.select, %i.l
  %i.n = fadd float %i.m, 0.000000e+00            ; 2 uses
  store float %6, ptr %i.c, align 16
  store float %6, ptr %i.d, align 16
  store float 0.000000e+00, ptr %i.e, align 16
  store float %i.n, ptr %i.f, align 16
  store float 0.000000e+00, ptr %i.g, align 16
  %i.o = icmp sgt i32 %0, 1
  br i1 %i.o, label %.lr.ph.preheader, label %.preheader339

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

.preheader339:                                    ; preds = %.lr.ph, %bb.a
  %i.p = load i64, ptr %1, align 8                ; 3 uses
  %i.q = and i64 %i.p, 140737488355328
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.preheader338, label %.lr.ph349

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 7 uses
  %.0346 = phi float [ 1.000000e+00, %.lr.ph.preheader ], [ %i.al, %.lr.ph ] ; 3 uses
  %.0320344 = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.af, %.lr.ph ]
  %.0321343 = phi float [ %i.n, %.lr.ph.preheader ], [ %i.ad, %.lr.ph ]
  %.0322342 = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.ab, %.lr.ph ]
  %.0323341 = phi float [ %6, %.lr.ph.preheader ], [ %i.z, %.lr.ph ]
  %.0324340 = phi float [ %6, %.lr.ph.preheader ], [ %i.x, %.lr.ph ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.t = load float, ptr %i.s, align 4
  %i.u = fadd float %4, %i.t                      ; 2 uses
  %i.v = fcmp olt float %i.u, 1.000000e+00
  %spec.store.select1 = select i1 %i.v, float 1.000000e+00, float %i.u ; 4 uses
  %i.w = fmul float %spec.store.select1, %spec.store.select1 ; 3 uses
  %i.x = fadd float %.0324340, %i.w               ; 2 uses
  %i.y = fmul float %.0346, %i.w                  ; 3 uses
  %i.z = fadd float %.0323341, %i.y               ; 2 uses
  %i.aa = fmul float %.0346, %i.y
  %i.ab = fadd float %.0322342, %i.aa             ; 2 uses
  %i.ac = fmul float %spec.store.select1, %i.w
  %i.ad = fadd float %.0321343, %i.ac             ; 2 uses
  %i.ae = fmul float %spec.store.select1, %i.y
  %i.af = fadd float %.0320344, %i.ae             ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  store float %i.x, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store float %i.z, ptr %i.ah, align 4
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  store float %i.ab, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  store float %i.ad, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  store float %i.af, ptr %i.ak, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.al = fadd float %.0346, 1.000000e+00
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader339, label %.lr.ph, !llvm.loop !573

.preheader338.loopexit:                           ; preds = %.lr.ph349
  %i.am = trunc nuw nsw i64 %indvars.iv.next408 to i32
  br label %.preheader338

.preheader338:                                    ; preds = %.preheader338.loopexit, %.preheader339
  %i.an = phi i64 [ %i.p, %.preheader339 ], [ %i.cm, %.preheader338.loopexit ] ; 2 uses
  %.1314.lcssa = phi i32 [ 0, %.preheader339 ], [ %i.am, %.preheader338.loopexit ] ; 2 uses
  %.0309.lcssa = phi float [ undef, %.preheader339 ], [ %i.bx, %.preheader338.loopexit ]
  %.0305.lcssa = phi float [ undef, %.preheader339 ], [ %i.ca, %.preheader338.loopexit ]
  %.0301.lcssa = phi float [ undef, %.preheader339 ], [ %i.cd, %.preheader338.loopexit ]
  %.1.lcssa = phi float [ 0.000000e+00, %.preheader339 ], [ %i.ck, %.preheader338.loopexit ] ; 2 uses
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.ao, 65535
  %.not354 = icmp slt i32 %i.ap, %0
  br i1 %.not354, label %.lr.ph357.preheader, label %.preheader337

.lr.ph357.preheader:                              ; preds = %.preheader338
  %i.aq = zext nneg i32 %.1314.lcssa to i64
  br label %.lr.ph357

.lr.ph349:                                        ; preds = %.preheader339, %.lr.ph349
  %indvars.iv407 = phi i64 [ %indvars.iv.next408, %.lr.ph349 ], [ 0, %.preheader339 ] ; 2 uses
  %i.ar = phi i64 [ %i.cm, %.lr.ph349 ], [ %i.p, %.preheader339 ] ; 2 uses
  %.1348 = phi float [ %i.ck, %.lr.ph349 ], [ 0.000000e+00, %.preheader339 ] ; 2 uses
  %i.as = lshr i64 %i.ar, 16
  %i.at = and i64 %i.ar, 65535                    ; 5 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.at
  %i.av = load float, ptr %i.au, align 4
  %i.aw = sub nsw i64 0, %i.as
  %i.ax = and i64 %i.aw, 4294967295               ; 5 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ax
  %i.az = load float, ptr %i.ay, align 4
  %i.ba = fadd float %i.av, %i.az                 ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.at
  %i.bc = load float, ptr %i.bb, align 4
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ax
  %i.be = load float, ptr %i.bd, align 4
  %i.bf = fsub float %i.bc, %i.be                 ; 4 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.at
  %i.bh = load float, ptr %i.bg, align 4
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ax
  %i.bj = load float, ptr %i.bi, align 4
  %i.bk = fadd float %i.bh, %i.bj                 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.at
  %i.bm = load float, ptr %i.bl, align 4
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ax
  %i.bo = load float, ptr %i.bn, align 4
  %i.bp = fadd float %i.bm, %i.bo                 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.at
  %i.br = load float, ptr %i.bq, align 4
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ax
  %i.bt = load float, ptr %i.bs, align 4
  %i.bu = fsub float %i.br, %i.bt                 ; 2 uses
  %i.bv = fmul float %i.bk, %i.bp
  %i.bw = fmul float %i.bf, %i.bu
  %i.bx = fsub float %i.bv, %i.bw                 ; 2 uses
  %i.by = fmul float %i.ba, %i.bu
  %i.bz = fmul float %i.bf, %i.bp
  %i.ca = fsub float %i.by, %i.bz                 ; 2 uses
  %i.cb = fmul float %i.ba, %i.bk
  %i.cc = fmul float %i.bf, %i.bf
  %i.cd = fsub float %i.cb, %i.cc                 ; 2 uses
  %i.ce = fmul float %.1348, %i.ca
  %i.cf = fadd float %i.bx, %i.ce
  %i.cg = fdiv float %i.cf, %i.cd                 ; 2 uses
  %i.ch = fcmp olt float %i.cg, 0.000000e+00
  %spec.store.select2 = select i1 %i.ch, float 0.000000e+00, float %i.cg
  %i.ci = fsub float %spec.store.select2, %4
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv407
  store float %i.ci, ptr %i.cj, align 4
  %indvars.iv.next408 = add nuw nsw i64 %indvars.iv407, 1 ; 3 uses
  %i.ck = fadd float %.1348, 1.000000e+00         ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next408
  %i.cm = load i64, ptr %i.cl, align 8            ; 3 uses
  %i.cn = and i64 %i.cm, 140737488355328
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %.preheader338.loopexit, label %.lr.ph349

.preheader337.loopexit:                           ; preds = %.lr.ph357
  %i.cp = trunc nuw i64 %indvars.iv.next411 to i32
  br label %.preheader337

.preheader337:                                    ; preds = %.preheader337.loopexit, %.preheader338
  %.2315.lcssa = phi i32 [ %.1314.lcssa, %.preheader338 ], [ %i.cp, %.preheader337.loopexit ] ; 4 uses
  %.1310.lcssa = phi float [ %.0309.lcssa, %.preheader338 ], [ %i.eg, %.preheader337.loopexit ] ; 4 uses
  %.1306.lcssa = phi float [ %.0305.lcssa, %.preheader338 ], [ %i.ej, %.preheader337.loopexit ] ; 4 uses
  %.1302.lcssa = phi float [ %.0301.lcssa, %.preheader338 ], [ %i.em, %.preheader337.loopexit ] ; 4 uses
  %.2.lcssa = phi float [ %.1.lcssa, %.preheader338 ], [ %i.et, %.preheader337.loopexit ] ; 3 uses
  %i.cq = icmp slt i32 %.2315.lcssa, %0
  br i1 %i.cq, label %.lr.ph365.preheader, label %._crit_edge

.lr.ph365.preheader:                              ; preds = %.preheader337
  %i.cr = zext i32 %.2315.lcssa to i64            ; 3 uses
  %i.cs = sub i32 %0, %.2315.lcssa
  %.neg = add i32 %.2315.lcssa, 1
  %xtraiter = and i32 %i.cs, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph365.prol.loopexit, label %.lr.ph365.prol

.lr.ph365.prol:                                   ; preds = %.lr.ph365.preheader
  %i.ct = fmul float %.1306.lcssa, %.2.lcssa
  %i.cu = fadd float %.1310.lcssa, %i.ct
  %i.cv = fdiv float %i.cu, %.1302.lcssa          ; 2 uses
  %i.cw = fcmp olt float %i.cv, 0.000000e+00
  %spec.store.select4.prol = select i1 %i.cw, float 0.000000e+00, float %i.cv
  %i.cx = fsub float %spec.store.select4.prol, %4
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cr
  store float %i.cx, ptr %i.cy, align 4
  %indvars.iv.next414.prol = add nuw nsw i64 %i.cr, 1
  %i.cz = fadd float %.2.lcssa, 1.000000e+00
  br label %.lr.ph365.prol.loopexit

.lr.ph365.prol.loopexit:                          ; preds = %.lr.ph365.prol, %.lr.ph365.preheader
  %indvars.iv413.unr = phi i64 [ %i.cr, %.lr.ph365.preheader ], [ %indvars.iv.next414.prol, %.lr.ph365.prol ]
  %.3364.unr = phi float [ %.2.lcssa, %.lr.ph365.preheader ], [ %i.cz, %.lr.ph365.prol ]
  %i.da = icmp eq i32 %0, %.neg
  br i1 %i.da, label %._crit_edge, label %.lr.ph365

.lr.ph357:                                        ; preds = %.lr.ph357.preheader, %.lr.ph357
  %indvars.iv410 = phi i64 [ %i.aq, %.lr.ph357.preheader ], [ %indvars.iv.next411, %.lr.ph357 ] ; 2 uses
  %i.db = phi i64 [ %i.an, %.lr.ph357.preheader ], [ %i.ev, %.lr.ph357 ] ; 2 uses
  %.2356 = phi float [ %.1.lcssa, %.lr.ph357.preheader ], [ %i.et, %.lr.ph357 ] ; 2 uses
  %i.dc = and i64 %i.db, 65535                    ; 5 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dc
  %i.de = load float, ptr %i.dd, align 4
  %i.df = shl i64 %i.db, 16
  %i.dg = ashr i64 %i.df, 32                      ; 5 uses
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.dg
  %i.di = load float, ptr %i.dh, align 4
  %i.dj = fsub float %i.de, %i.di                 ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.dc
  %i.dl = load float, ptr %i.dk, align 4
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.dg
  %i.dn = load float, ptr %i.dm, align 4
  %i.do = fsub float %i.dl, %i.dn                 ; 4 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.dc
  %i.dq = load float, ptr %i.dp, align 4
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.dg
  %i.ds = load float, ptr %i.dr, align 4
  %i.dt = fsub float %i.dq, %i.ds                 ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dc
  %i.dv = load float, ptr %i.du, align 4
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.dg
  %i.dx = load float, ptr %i.dw, align 4
  %i.dy = fsub float %i.dv, %i.dx                 ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.dc
  %i.ea = load float, ptr %i.dz, align 4
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.dg
  %i.ec = load float, ptr %i.eb, align 4
  %i.ed = fsub float %i.ea, %i.ec                 ; 2 uses
  %i.ee = fmul float %i.dt, %i.dy
  %i.ef = fmul float %i.do, %i.ed
  %i.eg = fsub float %i.ee, %i.ef                 ; 2 uses
  %i.eh = fmul float %i.dj, %i.ed
  %i.ei = fmul float %i.do, %i.dy
  %i.ej = fsub float %i.eh, %i.ei                 ; 2 uses
  %i.ek = fmul float %i.dj, %i.dt
  %i.el = fmul float %i.do, %i.do
  %i.em = fsub float %i.ek, %i.el                 ; 2 uses
  %i.en = fmul float %.2356, %i.ej
  %i.eo = fadd float %i.eg, %i.en
  %i.ep = fdiv float %i.eo, %i.em                 ; 2 uses
  %i.eq = fcmp olt float %i.ep, 0.000000e+00
  %spec.store.select3 = select i1 %i.eq, float 0.000000e+00, float %i.ep
  %i.er = fsub float %spec.store.select3, %4
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv410
  store float %i.er, ptr %i.es, align 4
  %indvars.iv.next411 = add nuw nsw i64 %indvars.iv410, 1 ; 3 uses
  %i.et = fadd float %.2356, 1.000000e+00         ; 2 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next411
end_hunk_0
