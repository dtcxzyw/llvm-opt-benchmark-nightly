Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/lsp?download=true
inline.NumInlined: 7
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@ff_set_min_dist_lsf:bb.a
  %i.h = fcmp nsz olt double %i.g, %i.e
  %i.i = fptrunc nsz double %i.g to float
  %i.j = select i1 %i.h, float %i.d, float %i.i   ; 2 uses
  store float %i.j, ptr %i.c, align 4, !tbaa !14
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.m = load float, ptr %i.l, align 4, !tbaa !14 ; 2 uses
  %i.n = fpext nsz float %i.m to double
  %i.o = fpext nsz float %i.j to double
  %i.p = fadd nsz double %1, %i.o                 ; 2 uses
  %i.q = fcmp nsz olt double %i.p, %i.n
  %i.r = fptrunc nsz double %i.p to float
  %i.s = select i1 %i.q, float %i.m, float %i.r   ; 3 uses
  store float %i.s, ptr %i.l, align 4, !tbaa !14
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !22

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.016.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.s, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod18 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod18)
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil.init ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !14 ; 2 uses
  %i.v = fpext nsz float %i.u to double
  %i.w = fpext nsz float %.016.epil.init to double
  %i.x = fadd nsz double %1, %i.w                 ; 2 uses
  %i.y = fcmp nsz olt double %i.x, %i.v
  %i.z = fptrunc nsz double %i.x to float
  %i.aa = select i1 %i.y, float %i.u, float %i.z
  store float %i.aa, ptr %i.t, align 4, !tbaa !14
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ff_acelp_lsf2lsp(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.c = load i16, ptr %i.b, align 2, !tbaa !11
  %i.d = sext i16 %i.c to i32
  %i.e = mul nsw i32 %i.d, 20861                  ; 2 uses
  %i.f = lshr i32 %i.e, 15
  %i.g = lshr i32 %i.e, 23
  %i.h = and i32 %i.g, 255
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [2 x i8], ptr @tab_cos, i64 %i.i ; 2 uses
  %i.k = load i16, ptr %i.j, align 2, !tbaa !11   ; 2 uses
  %i.l = sext i16 %i.k to i32
  %i.m = and i32 %i.f, 255
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.o = load i16, ptr %i.n, align 2, !tbaa !11
  %i.p = sext i16 %i.o to i32
  %i.q = sub nsw i32 %i.p, %i.l
  %i.r = mul nsw i32 %i.q, %i.m
  %i.s = lshr i32 %i.r, 8
  %i.t = trunc i32 %i.s to i16
  %i.u = add i16 %i.k, %i.t
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  store i16 %i.u, ptr %i.v, align 2, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !23

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ff_acelp_lsf2lspd(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %min.iters.check = icmp eq i32 %2, 1
  br i1 %min.iters.check, label %.lr.ph.preheader8, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %wide.load = load <2 x float>, ptr %i.b, align 4, !tbaa !14
  %i.c = fpext nsz <2 x float> %wide.load to <2 x double>
  %i.d = fmul nsz <2 x double> %i.c, splat (double f0x401921FB54442D18)
  %i.e = tail call nsz <2 x double> @llvm.cos.v2f64(<2 x double> %i.d)
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  store <2 x double> %i.e, ptr %i.f, align 8, !tbaa !16
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.g = icmp eq i64 %index.next, %n.vec
  br i1 %i.g, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader8

.lr.ph.preheader8:                                ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader8, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader8 ] ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.i = load float, ptr %i.h, align 4, !tbaa !14
  %i.j = fpext nsz float %i.i to double
  %i.k = fmul nsz double %i.j, f0x401921FB54442D18
  %i.l = tail call nsz double @llvm.cos.f64(double %i.k)
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  store double %i.l, ptr %i.m, align 8, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !25

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.cos.f64(double) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ff_amrwb_lsp2lpc(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [11 x double], align 16           ; 5 uses
  %i.b = alloca [11 x double], align 16           ; 9 uses
  %i.c = ashr i32 %2, 1                           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  store double 0.000000e+00, ptr %i.a, align 16, !tbaa !16
  store double 1.000000e+00, ptr %i.b, align 16, !tbaa !16
  %i.e = load double, ptr %0, align 8, !tbaa !16
  %i.f = fmul nsz double %i.e, -2.000000e+00
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store double %i.f, ptr %i.g, align 8, !tbaa !16
  %i.h = getelementptr inbounds i8, ptr %0, i64 -16
  %.not29.i = icmp slt i32 %i.c, 2
  br i1 %.not29.i, label %lsp2polyf.exit53.._crit_edge_crit_edge, label %.lr.ph32.preheader.i

.lr.ph32.preheader.i:                             ; preds = %bb.a
  %i.i = add nuw nsw i32 %i.c, 1
  %wide.trip.count.i = zext nneg i32 %i.i to i64
  br label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %._crit_edge.i, %.lr.ph32.preheader.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge.i ], [ 0, %.lr.ph32.preheader.i ] ; 4 uses
  %indvars.iv37.i = phi i64 [ %indvars.iv.next38.i, %._crit_edge.i ], [ 2, %.lr.ph32.preheader.i ] ; 4 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ 1, %.lr.ph32.preheader.i ] ; 4 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv37.i, 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i
  %i.k = load double, ptr %i.j, align 8, !tbaa !16
  %i.l = fmul nsz double %i.k, -2.000000e+00      ; 4 uses
  %i.m = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv37.i ; 3 uses
  %i.n = getelementptr i8, ptr %i.m, i64 -8
  %i.o = load double, ptr %i.n, align 8, !tbaa !16
  %i.p = getelementptr i8, ptr %i.m, i64 -16
  %i.q = load double, ptr %i.p, align 8, !tbaa !16
  %i.r = fmul nsz double %i.q, 2.000000e+00
  %i.s = tail call nsz double @llvm.fmuladd.f64(double %i.l, double %i.o, double %i.r)
  store double %i.s, ptr %i.m, align 8, !tbaa !16
  %i.t = icmp samesign ugt i64 %indvars.iv37.i, 2
  br i1 %i.t, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.lr.ph32.i
  %min.iters.check = icmp ult i64 %indvar, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader107, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %indvar, -4                    ; 3 uses
  %i.u = sub i64 %indvars.iv.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.l, i64 0 ; 2 uses
  %i.v = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = sub i64 %indvars.iv.i, %index
  %i.y = getelementptr [8 x i8], ptr %i.b, i64 %i.x ; 6 uses
  %i.z = getelementptr i8, ptr %i.y, i64 -16
  %i.aa = getelementptr i8, ptr %i.y, i64 -32
  %wide.load = load <2 x double>, ptr %i.z, align 8, !tbaa !16
  %wide.load66 = load <2 x double>, ptr %i.aa, align 8, !tbaa !16
  %i.ab = getelementptr i8, ptr %i.y, i64 -24
  %i.ac = getelementptr i8, ptr %i.y, i64 -40
  %wide.load68 = load <2 x double>, ptr %i.ab, align 8, !tbaa !16 ; 2 uses
  %wide.load69 = load <2 x double>, ptr %i.ac, align 8, !tbaa !16
  %3 = getelementptr i8, ptr %i.y, i64 -8         ; 2 uses
  %i.ad = getelementptr i8, ptr %i.y, i64 -24
  %wide.load72 = load <2 x double>, ptr %3, align 8, !tbaa !16
  %i.ae = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %i.v, <2 x double> %wide.load68)
  %reverse76 = fadd nsz <2 x double> %wide.load72, %i.ae
  %i.af = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load66, <2 x double> %i.w, <2 x double> %wide.load69)
  %reverse77 = fadd nsz <2 x double> %wide.load68, %i.af
  store <2 x double> %reverse76, ptr %3, align 8, !tbaa !16
  store <2 x double> %reverse77, ptr %i.ad, align 8, !tbaa !16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvar, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader107

.lr.ph.i.preheader107:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv34.i.ph = phi i64 [ %indvars.iv.i, %.lr.ph.i.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %.lr.ph32.i
  %i.ah = load double, ptr %i.g, align 8, !tbaa !16
  %i.ai = fadd nsz double %i.l, %i.ah
  store double %i.ai, ptr %i.g, align 8, !tbaa !16
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 1 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next38.i, %wide.trip.count.i
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not.i, label %lsp2polyf.exit, label %.lr.ph32.i, !llvm.loop !0

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader107, %.lr.ph.i
  %indvars.iv34.i = phi i64 [ %indvars.iv.next35.i, %.lr.ph.i ], [ %indvars.iv34.i.ph, %.lr.ph.i.preheader107 ] ; 3 uses
  %i.aj = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv34.i ; 4 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 -8
  %i.al = load double, ptr %i.ak, align 8, !tbaa !16
  %i.am = getelementptr i8, ptr %i.aj, i64 -16
  %i.an = load double, ptr %i.am, align 8, !tbaa !16
  %i.ao = tail call nsz double @llvm.fmuladd.f64(double %i.al, double %i.l, double %i.an)
  %i.ap = load double, ptr %i.aj, align 8, !tbaa !16
  %i.aq = fadd nsz double %i.ap, %i.ao
  store double %i.aq, ptr %i.aj, align 8, !tbaa !16
  %indvars.iv.next35.i = add nsw i64 %indvars.iv34.i, -1
  %i.ar = icmp sgt i64 %indvars.iv34.i, 2
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !27

lsp2polyf.exit:                                   ; preds = %._crit_edge.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !16
  %i.at = load double, ptr %i.as, align 8, !tbaa !16
  %i.au = fmul nsz double %i.at, -2.000000e+00
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store double %i.au, ptr %i.av, align 16, !tbaa !16
  %i.aw = getelementptr inbounds i8, ptr %0, i64 -8
  %.not29.i39 = icmp eq i32 %i.c, 2
  br i1 %.not29.i39, label %.lr.ph, label %.lr.ph32.preheader.i40

.lr.ph32.preheader.i40:                           ; preds = %lsp2polyf.exit
  %wide.trip.count.i41 = zext nneg i32 %i.c to i64
  br label %.lr.ph32.i42

.lr.ph32.i42:                                     ; preds = %._crit_edge.i46, %.lr.ph32.preheader.i40
  %indvar78 = phi i64 [ %indvar.next79, %._crit_edge.i46 ], [ 0, %.lr.ph32.preheader.i40 ] ; 4 uses
  %indvars.iv37.i43 = phi i64 [ %indvars.iv.next38.i47, %._crit_edge.i46 ], [ 2, %.lr.ph32.preheader.i40 ] ; 4 uses
  %indvars.iv.i44 = phi i64 [ %indvars.iv.next.i48, %._crit_edge.i46 ], [ 1, %.lr.ph32.preheader.i40 ] ; 4 uses
  %.idx.i45 = shl nuw nsw i64 %indvars.iv37.i43, 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx.i45
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !16
  %i.az = fmul nsz double %i.ay, -2.000000e+00    ; 4 uses
  %i.ba = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv37.i43 ; 3 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 -8
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !16
  %i.bd = getelementptr i8, ptr %i.ba, i64 -16
  %i.be = load double, ptr %i.bd, align 8, !tbaa !16
  %i.bf = fmul nsz double %i.be, 2.000000e+00
  %i.bg = tail call nsz double @llvm.fmuladd.f64(double %i.az, double %i.bc, double %i.bf)
  store double %i.bg, ptr %i.ba, align 8, !tbaa !16
  %i.bh = icmp samesign ugt i64 %indvars.iv37.i43, 2
  br i1 %i.bh, label %.lr.ph.i50.preheader, label %._crit_edge.i46

.lr.ph.i50.preheader:                             ; preds = %.lr.ph32.i42
  %min.iters.check81 = icmp ult i64 %indvar78, 4
  br i1 %min.iters.check81, label %.lr.ph.i50.preheader106, label %vector.ph82

vector.ph82:                                      ; preds = %.lr.ph.i50.preheader
  %n.vec83 = and i64 %indvar78, -4                ; 3 uses
  %i.bi = sub i64 %indvars.iv.i44, %n.vec83
  %broadcast.splatinsert84 = insertelement <2 x double> poison, double %i.az, i64 0 ; 2 uses
  %i.bj = shufflevector <2 x double> %broadcast.splatinsert84, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bk = shufflevector <2 x double> %broadcast.splatinsert84, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body86

vector.body86:                                    ; preds = %vector.body86, %vector.ph82
  %index87 = phi i64 [ 0, %vector.ph82 ], [ %index.next102, %vector.body86 ] ; 2 uses
  %i.bl = sub i64 %indvars.iv.i44, %index87
  %i.bm = getelementptr [8 x i8], ptr %i.d, i64 %i.bl ; 6 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 -16
  %i.bo = getelementptr i8, ptr %i.bm, i64 -32
  %wide.load88 = load <2 x double>, ptr %i.bn, align 8, !tbaa !16
  %wide.load89 = load <2 x double>, ptr %i.bo, align 8, !tbaa !16
  %i.bp = getelementptr i8, ptr %i.bm, i64 -24
  %i.bq = getelementptr i8, ptr %i.bm, i64 -40
  %wide.load92 = load <2 x double>, ptr %i.bp, align 8, !tbaa !16 ; 2 uses
  %wide.load93 = load <2 x double>, ptr %i.bq, align 8, !tbaa !16
  %4 = getelementptr i8, ptr %i.bm, i64 -8        ; 2 uses
  %i.br = getelementptr i8, ptr %i.bm, i64 -24
  %wide.load96 = load <2 x double>, ptr %4, align 8, !tbaa !16
  %i.bs = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load88, <2 x double> %i.bj, <2 x double> %wide.load92)
  %reverse100 = fadd nsz <2 x double> %wide.load96, %i.bs
  %i.bt = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load89, <2 x double> %i.bk, <2 x double> %wide.load93)
  %reverse101 = fadd nsz <2 x double> %wide.load92, %i.bt
  store <2 x double> %reverse100, ptr %4, align 8, !tbaa !16
  store <2 x double> %reverse101, ptr %i.br, align 8, !tbaa !16
  %index.next102 = add nuw i64 %index87, 4        ; 2 uses
  %i.bu = icmp eq i64 %index.next102, %n.vec83
  br i1 %i.bu, label %middle.block103, label %vector.body86, !llvm.loop !28

middle.block103:                                  ; preds = %vector.body86
  %cmp.n104 = icmp eq i64 %indvar78, %n.vec83
  br i1 %cmp.n104, label %._crit_edge.i46, label %.lr.ph.i50.preheader106

.lr.ph.i50.preheader106:                          ; preds = %.lr.ph.i50.preheader, %middle.block103
  %indvars.iv34.i51.ph = phi i64 [ %indvars.iv.i44, %.lr.ph.i50.preheader ], [ %i.bi, %middle.block103 ]
  br label %.lr.ph.i50

._crit_edge.i46:                                  ; preds = %.lr.ph.i50, %middle.block103, %.lr.ph32.i42
  %i.bv = load double, ptr %i.av, align 16, !tbaa !16
  %i.bw = fadd nsz double %i.az, %i.bv
  store double %i.bw, ptr %i.av, align 16, !tbaa !16
  %indvars.iv.next38.i47 = add nuw nsw i64 %indvars.iv37.i43, 1 ; 2 uses
  %indvars.iv.next.i48 = add nuw nsw i64 %indvars.iv.i44, 1
  %exitcond.not.i49 = icmp eq i64 %indvars.iv.next38.i47, %wide.trip.count.i41
  %indvar.next79 = add i64 %indvar78, 1
  br i1 %exitcond.not.i49, label %.lr.ph, label %.lr.ph32.i42, !llvm.loop !0

.lr.ph.i50:                                       ; preds = %.lr.ph.i50.preheader106, %.lr.ph.i50
  %indvars.iv34.i51 = phi i64 [ %indvars.iv.next35.i52, %.lr.ph.i50 ], [ %indvars.iv34.i51.ph, %.lr.ph.i50.preheader106 ] ; 3 uses
  %i.bx = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv34.i51 ; 4 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 -8
  %i.bz = load double, ptr %i.by, align 8, !tbaa !16
  %i.ca = getelementptr i8, ptr %i.bx, i64 -16
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !16
  %i.cc = tail call nsz double @llvm.fmuladd.f64(double %i.bz, double %i.az, double %i.cb)
  %i.cd = load double, ptr %i.bx, align 8, !tbaa !16
  %i.ce = fadd nsz double %i.cd, %i.cc
  store double %i.ce, ptr %i.bx, align 8, !tbaa !16
  %indvars.iv.next35.i52 = add nsw i64 %indvars.iv34.i51, -1
  %i.cf = icmp sgt i64 %indvars.iv34.i51, 2
  br i1 %i.cf, label %.lr.ph.i50, label %._crit_edge.i46, !llvm.loop !29

lsp2polyf.exit53.._crit_edge_crit_edge:           ; preds = %bb.a
  %i.cg = add i32 %2, -1
  %i.ch = sext i32 %i.cg to i64                   ; 2 uses
  %.phi.trans.insert62 = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ch
  %.pre = load double, ptr %.phi.trans.insert62, align 8, !tbaa !16 ; 2 uses
  %.pre63 = fadd nsz double %.pre, 1.000000e+00
  br label %._crit_edge

.lr.ph:                                           ; preds = %._crit_edge.i46, %lsp2polyf.exit
  %i.ci = add i32 %2, -1
  %i.cj = sext i32 %i.ci to i64                   ; 3 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cj
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !16 ; 3 uses
  %i.cm = fadd nsz double %i.cl, 1.000000e+00     ; 2 uses
  %i.cn = fsub nsz double 1.000000e+00, %i.cl
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv57 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next58, %bb.b ] ; 4 uses
  %indvars.iv = phi i64 [ %i.cj, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv57
  %i.cp = load double, ptr %i.co, align 8, !tbaa !16
  %i.cq = fmul nsz double %i.cp, %i.cm            ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv57 ; 2 uses
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !16
  %i.ct = getelementptr i8, ptr %i.cr, i64 -16
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !16
  %i.cv = fsub nsz double %i.cs, %i.cu
  %i.cw = fmul nsz double %i.cn, %i.cv            ; 2 uses
  %i.cx = fadd nsz double %i.cq, %i.cw
  %i.cy = fmul nsz double %i.cx, 5.000000e-01
  %i.cz = fptrunc nsz double %i.cy to float
  %i.da = getelementptr [4 x i8], ptr %1, i64 %indvars.iv57
  %i.db = getelementptr i8, ptr %i.da, i64 -4
  store float %i.cz, ptr %i.db, align 4, !tbaa !14
  %i.dc = fsub nsz double %i.cq, %i.cw
  %i.dd = fmul nsz double %i.dc, 5.000000e-01
  %i.de = fptrunc nsz double %i.dd to float
  %i.df = getelementptr [4 x i8], ptr %1, i64 %indvars.iv
  %i.dg = getelementptr i8, ptr %i.df, i64 -4
  store float %i.de, ptr %i.dg, align 4, !tbaa !14
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %exitcond.not = icmp eq i64 %indvars.iv.next58, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !30

._crit_edge:                                      ; preds = %bb.b, %lsp2polyf.exit53.._crit_edge_crit_edge
  %.pre-phi64 = phi double [ %.pre63, %lsp2polyf.exit53.._crit_edge_crit_edge ], [ %i.cm, %bb.b ]
  %.pre-phi = phi i64 [ %i.ch, %lsp2polyf.exit53.._crit_edge_crit_edge ], [ %i.cj, %bb.b ]
  %i.dh = phi double [ %.pre, %lsp2polyf.exit53.._crit_edge_crit_edge ], [ %i.cl, %bb.b ]
  %i.di = sext i32 %i.c to i64                    ; 2 uses
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.di
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !16
  %i.dl = fmul nsz double %.pre-phi64, %i.dk
  %i.dm = fmul nsz double %i.dl, 5.000000e-01
  %i.dn = fptrunc nsz double %i.dm to float
  %i.do = getelementptr [4 x i8], ptr %1, i64 %i.di
  %i.dp = getelementptr i8, ptr %i.do, i64 -4
  store float %i.dn, ptr %i.dp, align 4, !tbaa !14
  %i.dq = fptrunc nsz double %i.dh to float
  %i.dr = getelementptr inbounds [4 x i8], ptr %1, i64 %.pre-phi
  store float %i.dq, ptr %i.dr, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ff_acelp_lp_decode(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [20 x i16], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = icmp sgt i32 %4, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %4 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %4, 8
  br i1 %min.iters.check, label %.lr.ph.preheader16, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %wide.load = load <8 x i16>, ptr %i.c, align 2, !tbaa !11
  %i.d = sext <8 x i16> %wide.load to <8 x i32>
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index
  %wide.load15 = load <8 x i16>, ptr %i.e, align 2, !tbaa !11
  %i.f = sext <8 x i16> %wide.load15 to <8 x i32>
  %i.g = add nsw <8 x i32> %i.f, %i.d
  %i.h = lshr <8 x i32> %i.g, splat (i32 1)
  %i.i = trunc <8 x i32> %i.h to <8 x i16>
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  store <8 x i16> %i.i, ptr %i.j, align 16, !tbaa !11
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader16

.lr.ph.preheader16:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader16, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader16 ] ; 4 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv
  %i.m = load i16, ptr %i.l, align 2, !tbaa !11
  %i.n = sext i16 %i.m to i32
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv
  %i.p = load i16, ptr %i.o, align 2, !tbaa !11
  %i.q = sext i16 %i.p to i32
  %i.r = add nsw i32 %i.q, %i.n
  %i.s = lshr i32 %i.r, 1
  %i.t = trunc i32 %i.s to i16
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  store i16 %i.t, ptr %i.u, align 2, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !32

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.v = ashr i32 %4, 1                           ; 2 uses
  call fastcc void @acelp_lsp2lpc(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.v)
  tail call fastcc void @acelp_lsp2lpc(ptr noundef %1, ptr noundef %2, i32 noundef %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @acelp_lsp2lpc(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 -1073741824, 1073741824) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [11 x i32], align 16              ; 10 uses
  %i.b = alloca [11 x i32], align 16              ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 4194304, ptr %i.a, align 16, !tbaa !40
  %i.c = load i16, ptr %1, align 2, !tbaa !11
  %i.d = sext i16 %i.c to i32
  %.neg.i = mul nsw i32 %i.d, -256
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  store i32 %.neg.i, ptr %i.e, align 4, !tbaa !40
  %.not27.i = icmp slt i32 %2, 2
  br i1 %.not27.i, label %lsp2poly.exit.thread, label %.lr.ph.preheader.i

lsp2poly.exit.thread:                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i32 4194304, ptr %i.b, align 16, !tbaa !40
  %i.g = load i16, ptr %i.f, align 2, !tbaa !11
end_hunk_0
begin_hunk_1_@acelp_lsp2lpc:bb.a
  br label %scalar.ph45

scalar.ph45:                                      ; preds = %scalar.ph45.preheader, %scalar.ph45
  %indvars.iv29.i28 = phi i64 [ %indvars.iv.next30.i29, %scalar.ph45 ], [ %indvars.iv29.i28.ph, %scalar.ph45.preheader ] ; 3 uses
  %i.bv = getelementptr [4 x i8], ptr %i.b, i64 %indvars.iv29.i28 ; 4 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 -4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !40
  %i.by = sext i32 %i.bx to i64
  %i.bz = mul nsw i64 %i.by, %i.bg
  %i.ca = lshr i64 %i.bz, 14
  %i.cb = getelementptr i8, ptr %i.bv, i64 -8
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !40
  %i.cd = load i32, ptr %i.bv, align 4, !tbaa !40
  %i.ce = trunc i64 %i.ca to i32
  %i.cf = add i32 %i.cd, %i.cc
  %i.cg = sub i32 %i.cf, %i.ce
  store i32 %i.cg, ptr %i.bv, align 4, !tbaa !40
  %indvars.iv.next30.i29 = add nsw i64 %indvars.iv29.i28, -1
  %i.ch = icmp sgt i64 %indvars.iv29.i28, 2
  br i1 %i.ch, label %scalar.ph45, label %.loopexit, !llvm.loop !37

.loopexit:                                        ; preds = %scalar.ph45, %middle.block60
  %i.ci = sext i16 %i.bf to i32
  %i.cj = shl nsw i32 %i.ci, 8
  %i.ck = load i32, ptr %i.az, align 4, !tbaa !40
  %i.cl = sub nsw i32 %i.ck, %i.cj
  store i32 %i.cl, ptr %i.az, align 4, !tbaa !40
  %indvars.iv.next.i30 = add nuw nsw i64 %indvars.iv.i26, 1 ; 2 uses
  %exitcond.not.i31 = icmp eq i64 %indvars.iv.next.i30, %wide.trip.count.i
  %indvar.next44 = add i64 %indvar43, 1
  br i1 %exitcond.not.i31, label %lsp2poly.exit32, label %.lr.ph.i25, !llvm.loop !35

lsp2poly.exit32:                                  ; preds = %.loopexit, %lsp2poly.exit.thread
  store i16 4096, ptr %0, align 2, !tbaa !11
  %.not35 = icmp slt i32 %2, 1
  br i1 %.not35, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %lsp2poly.exit32
  %i.cm = shl nuw nsw i32 %2, 1
  %i.cn = or disjoint i32 %i.cm, 1
  %i.co = zext nneg i32 %i.cn to i64              ; 2 uses
  %i.cp = add nuw nsw i32 %2, 1
  %wide.trip.count = zext nneg i32 %i.cp to i64
  %.pre = load i32, ptr %i.a, align 16, !tbaa !40 ; 2 uses
  %.pre38 = load i32, ptr %i.b, align 16, !tbaa !40 ; 2 uses
  %i.cq = zext nneg i32 %2 to i64                 ; 2 uses
  %min.iters.check64 = icmp ult i32 %2, 4
  br i1 %min.iters.check64, label %scalar.ph63.preheader, label %vector.ph65

vector.ph65:                                      ; preds = %.lr.ph
  %n.vec66 = and i64 %i.cq, 2147483644            ; 3 uses
  %i.cr = or disjoint i64 %n.vec66, 1
  %vector.recur.init = insertelement <4 x i32> poison, i32 %.pre38, i64 3
  %vector.recur.init69 = insertelement <4 x i32> poison, i32 %.pre, i64 3
  br label %vector.body67

vector.body67:                                    ; preds = %vector.body67, %vector.ph65
  %index68 = phi i64 [ 0, %vector.ph65 ], [ %index.next74, %vector.body67 ] ; 2 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph65 ], [ %wide.load72, %vector.body67 ]
  %vector.recur70 = phi <4 x i32> [ %vector.recur.init69, %vector.ph65 ], [ %wide.load71, %vector.body67 ]
  %i.cs = or disjoint i64 %index68, 1             ; 4 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cs
  %wide.load71 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !40 ; 4 uses
  %i.cu = shufflevector <4 x i32> %vector.recur70, <4 x i32> %wide.load71, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cs
  %wide.load72 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !40 ; 4 uses
  %i.cw = shufflevector <4 x i32> %vector.recur, <4 x i32> %wide.load72, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.cx = sub nsw <4 x i32> %wide.load72, %i.cw   ; 2 uses
  %i.cy = add <4 x i32> %wide.load71, splat (i32 1024)
  %i.cz = add <4 x i32> %i.cy, %i.cu              ; 2 uses
  %i.da = add nsw <4 x i32> %i.cx, %i.cz
  %i.db = lshr <4 x i32> %i.da, splat (i32 11)
  %i.dc = trunc <4 x i32> %i.db to <4 x i16>
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cs
  store <4 x i16> %i.dc, ptr %i.dd, align 2, !tbaa !11
  %i.de = sub nsw <4 x i32> %i.cz, %i.cx
  %i.df = lshr <4 x i32> %i.de, splat (i32 11)
  %i.dg = sub nsw i64 %i.co, %i.cs
  %i.dh = getelementptr inbounds [2 x i8], ptr %0, i64 %i.dg
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 -6
  %i.dj = shufflevector <4 x i32> %i.df, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse73 = trunc <4 x i32> %i.dj to <4 x i16>
  store <4 x i16> %reverse73, ptr %i.di, align 2, !tbaa !11
  %index.next74 = add nuw i64 %index68, 4         ; 2 uses
  %i.dk = icmp eq i64 %index.next74, %n.vec66
  br i1 %i.dk, label %middle.block75, label %vector.body67, !llvm.loop !38

middle.block75:                                   ; preds = %vector.body67
  %vector.recur.extract = extractelement <4 x i32> %wide.load72, i64 3
  %vector.recur.extract76 = extractelement <4 x i32> %wide.load71, i64 3
  %cmp.n77 = icmp eq i64 %n.vec66, %i.cq
  br i1 %cmp.n77, label %._crit_edge, label %scalar.ph63.preheader

scalar.ph63.preheader:                            ; preds = %.lr.ph, %middle.block75
  %.ph = phi i32 [ %.pre38, %.lr.ph ], [ %vector.recur.extract, %middle.block75 ]
  %.ph81 = phi i32 [ %.pre, %.lr.ph ], [ %vector.recur.extract76, %middle.block75 ]
  %indvars.iv.ph = phi i64 [ 1, %.lr.ph ], [ %i.cr, %middle.block75 ]
  br label %scalar.ph63

scalar.ph63:                                      ; preds = %scalar.ph63.preheader, %scalar.ph63
  %i.dl = phi i32 [ %i.dq, %scalar.ph63 ], [ %.ph, %scalar.ph63.preheader ]
  %i.dm = phi i32 [ %i.do, %scalar.ph63 ], [ %.ph81, %scalar.ph63.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph63 ], [ %indvars.iv.ph, %scalar.ph63.preheader ] ; 5 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !40 ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !40 ; 2 uses
  %i.dr = sub nsw i32 %i.dq, %i.dl                ; 2 uses
  %i.ds = add i32 %i.do, 1024
  %i.dt = add i32 %i.ds, %i.dm                    ; 2 uses
  %i.du = add nsw i32 %i.dr, %i.dt
  %i.dv = lshr i32 %i.du, 11
  %i.dw = trunc i32 %i.dv to i16
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  store i16 %i.dw, ptr %i.dx, align 2, !tbaa !11
  %i.dy = sub nsw i32 %i.dt, %i.dr
  %i.dz = lshr i32 %i.dy, 11
  %i.ea = trunc i32 %i.dz to i16
  %i.eb = sub nsw i64 %i.co, %indvars.iv
  %i.ec = getelementptr inbounds [2 x i8], ptr %0, i64 %i.eb
  store i16 %i.ea, ptr %i.ec, align 2, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph63, !llvm.loop !39

._crit_edge:                                      ; preds = %scalar.ph63, %middle.block75, %lsp2poly.exit32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ff_acelp_lspd2lpc(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [11 x double], align 16           ; 9 uses
  %i.b = alloca [11 x double], align 16           ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.c = shl i32 %2, 1
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [4 x i8], ptr %1, i64 %i.d
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -4
  store double 1.000000e+00, ptr %i.a, align 16, !tbaa !16
  %i.g = load double, ptr %0, align 8, !tbaa !16
  %i.h = fmul nsz double %i.g, -2.000000e+00
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store double %i.h, ptr %i.i, align 8, !tbaa !16
  %i.j = getelementptr inbounds i8, ptr %0, i64 -16
  %.not29.i = icmp slt i32 %2, 2
  br i1 %.not29.i, label %lsp2polyf.exit.thread, label %.lr.ph32.preheader.i

lsp2polyf.exit.thread:                            ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double 1.000000e+00, ptr %i.b, align 16, !tbaa !16
  %i.l = load double, ptr %i.k, align 8, !tbaa !16
  %i.m = fmul nsz double %i.l, -2.000000e+00
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double %i.m, ptr %i.n, align 8, !tbaa !16
  br label %lsp2polyf.exit32

.lr.ph32.preheader.i:                             ; preds = %bb.a
  %i.o = add nuw i32 %2, 1
  %wide.trip.count.i = zext i32 %i.o to i64       ; 2 uses
  br label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %._crit_edge.i, %.lr.ph32.preheader.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge.i ], [ 0, %.lr.ph32.preheader.i ] ; 4 uses
  %indvars.iv37.i = phi i64 [ %indvars.iv.next38.i, %._crit_edge.i ], [ 2, %.lr.ph32.preheader.i ] ; 4 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ 1, %.lr.ph32.preheader.i ] ; 4 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv37.i, 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx.i
  %i.q = load double, ptr %i.p, align 8, !tbaa !16
  %i.r = fmul nsz double %i.q, -2.000000e+00      ; 4 uses
  %i.s = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv37.i ; 3 uses
  %i.t = getelementptr i8, ptr %i.s, i64 -8
  %i.u = load double, ptr %i.t, align 8, !tbaa !16
  %i.v = getelementptr i8, ptr %i.s, i64 -16
  %i.w = load double, ptr %i.v, align 8, !tbaa !16
  %i.x = fmul nsz double %i.w, 2.000000e+00
  %i.y = tail call nsz double @llvm.fmuladd.f64(double %i.r, double %i.u, double %i.x)
  store double %i.y, ptr %i.s, align 8, !tbaa !16
  %i.z = icmp samesign ugt i64 %indvars.iv37.i, 2
  br i1 %i.z, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.lr.ph32.i
  %min.iters.check = icmp ult i64 %indvar, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader79, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %indvar, -4                    ; 3 uses
  %i.aa = sub i64 %indvars.iv.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.r, i64 0 ; 2 uses
  %i.ab = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = sub i64 %indvars.iv.i, %index
  %i.ae = getelementptr [8 x i8], ptr %i.a, i64 %i.ad ; 6 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 -16
  %i.ag = getelementptr i8, ptr %i.ae, i64 -32
  %wide.load = load <2 x double>, ptr %i.af, align 8, !tbaa !16
  %wide.load38 = load <2 x double>, ptr %i.ag, align 8, !tbaa !16
  %i.ah = getelementptr i8, ptr %i.ae, i64 -24
  %i.ai = getelementptr i8, ptr %i.ae, i64 -40
  %wide.load40 = load <2 x double>, ptr %i.ah, align 8, !tbaa !16 ; 2 uses
  %wide.load41 = load <2 x double>, ptr %i.ai, align 8, !tbaa !16
  %3 = getelementptr i8, ptr %i.ae, i64 -8        ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ae, i64 -24
  %wide.load44 = load <2 x double>, ptr %3, align 8, !tbaa !16
  %i.ak = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %i.ab, <2 x double> %wide.load40)
  %reverse48 = fadd nsz <2 x double> %wide.load44, %i.ak
  %i.al = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load38, <2 x double> %i.ac, <2 x double> %wide.load41)
  %reverse49 = fadd nsz <2 x double> %wide.load40, %i.al
  store <2 x double> %reverse48, ptr %3, align 8, !tbaa !16
  store <2 x double> %reverse49, ptr %i.aj, align 8, !tbaa !16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvar, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader79

.lr.ph.i.preheader79:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv34.i.ph = phi i64 [ %indvars.iv.i, %.lr.ph.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %.lr.ph32.i
  %i.an = load double, ptr %i.i, align 8, !tbaa !16
  %i.ao = fadd nsz double %i.r, %i.an
  store double %i.ao, ptr %i.i, align 8, !tbaa !16
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 1 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next38.i, %wide.trip.count.i
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not.i, label %lsp2polyf.exit, label %.lr.ph32.i, !llvm.loop !0

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader79, %.lr.ph.i
  %indvars.iv34.i = phi i64 [ %indvars.iv.next35.i, %.lr.ph.i ], [ %indvars.iv34.i.ph, %.lr.ph.i.preheader79 ] ; 3 uses
  %i.ap = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv34.i ; 4 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 -8
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !16
  %i.as = getelementptr i8, ptr %i.ap, i64 -16
  %i.at = load double, ptr %i.as, align 8, !tbaa !16
  %i.au = tail call nsz double @llvm.fmuladd.f64(double %i.ar, double %i.r, double %i.at)
  %i.av = load double, ptr %i.ap, align 8, !tbaa !16
  %i.aw = fadd nsz double %i.av, %i.au
  store double %i.aw, ptr %i.ap, align 8, !tbaa !16
  %indvars.iv.next35.i = add nsw i64 %indvars.iv34.i, -1
  %i.ax = icmp sgt i64 %indvars.iv34.i, 2
  br i1 %i.ax, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !42

lsp2polyf.exit:                                   ; preds = %._crit_edge.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double 1.000000e+00, ptr %i.b, align 16, !tbaa !16
  %i.az = load double, ptr %i.ay, align 8, !tbaa !16
  %i.ba = fmul nsz double %i.az, -2.000000e+00
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store double %i.ba, ptr %i.bb, align 8, !tbaa !16
  %i.bc = getelementptr inbounds i8, ptr %0, i64 -8
  br label %.lr.ph32.i21

.lr.ph32.i21:                                     ; preds = %._crit_edge.i25, %lsp2polyf.exit
  %indvar50 = phi i64 [ %indvar.next51, %._crit_edge.i25 ], [ 0, %lsp2polyf.exit ] ; 4 uses
  %indvars.iv37.i22 = phi i64 [ %indvars.iv.next38.i26, %._crit_edge.i25 ], [ 2, %lsp2polyf.exit ] ; 4 uses
  %indvars.iv.i23 = phi i64 [ %indvars.iv.next.i27, %._crit_edge.i25 ], [ 1, %lsp2polyf.exit ] ; 4 uses
  %.idx.i24 = shl nuw nsw i64 %indvars.iv37.i22, 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx.i24
  %i.be = load double, ptr %i.bd, align 8, !tbaa !16
  %i.bf = fmul nsz double %i.be, -2.000000e+00    ; 4 uses
  %i.bg = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv37.i22 ; 3 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 -8
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !16
  %i.bj = getelementptr i8, ptr %i.bg, i64 -16
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !16
  %i.bl = fmul nsz double %i.bk, 2.000000e+00
  %i.bm = tail call nsz double @llvm.fmuladd.f64(double %i.bf, double %i.bi, double %i.bl)
  store double %i.bm, ptr %i.bg, align 8, !tbaa !16
  %i.bn = icmp samesign ugt i64 %indvars.iv37.i22, 2
  br i1 %i.bn, label %.lr.ph.i29.preheader, label %._crit_edge.i25

.lr.ph.i29.preheader:                             ; preds = %.lr.ph32.i21
  %min.iters.check53 = icmp ult i64 %indvar50, 4
  br i1 %min.iters.check53, label %.lr.ph.i29.preheader78, label %vector.ph54

vector.ph54:                                      ; preds = %.lr.ph.i29.preheader
  %n.vec55 = and i64 %indvar50, -4                ; 3 uses
  %i.bo = sub i64 %indvars.iv.i23, %n.vec55
  %broadcast.splatinsert56 = insertelement <2 x double> poison, double %i.bf, i64 0 ; 2 uses
  %i.bp = shufflevector <2 x double> %broadcast.splatinsert56, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bq = shufflevector <2 x double> %broadcast.splatinsert56, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body58

vector.body58:                                    ; preds = %vector.body58, %vector.ph54
  %index59 = phi i64 [ 0, %vector.ph54 ], [ %index.next74, %vector.body58 ] ; 2 uses
  %i.br = sub i64 %indvars.iv.i23, %index59
  %i.bs = getelementptr [8 x i8], ptr %i.b, i64 %i.br ; 6 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 -16
  %i.bu = getelementptr i8, ptr %i.bs, i64 -32
  %wide.load60 = load <2 x double>, ptr %i.bt, align 8, !tbaa !16
  %wide.load61 = load <2 x double>, ptr %i.bu, align 8, !tbaa !16
  %i.bv = getelementptr i8, ptr %i.bs, i64 -24
  %i.bw = getelementptr i8, ptr %i.bs, i64 -40
  %wide.load64 = load <2 x double>, ptr %i.bv, align 8, !tbaa !16 ; 2 uses
  %wide.load65 = load <2 x double>, ptr %i.bw, align 8, !tbaa !16
  %4 = getelementptr i8, ptr %i.bs, i64 -8        ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bs, i64 -24
  %wide.load68 = load <2 x double>, ptr %4, align 8, !tbaa !16
  %i.by = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load60, <2 x double> %i.bp, <2 x double> %wide.load64)
  %reverse72 = fadd nsz <2 x double> %wide.load68, %i.by
  %i.bz = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load61, <2 x double> %i.bq, <2 x double> %wide.load65)
  %reverse73 = fadd nsz <2 x double> %wide.load64, %i.bz
  store <2 x double> %reverse72, ptr %4, align 8, !tbaa !16
  store <2 x double> %reverse73, ptr %i.bx, align 8, !tbaa !16
  %index.next74 = add nuw i64 %index59, 4         ; 2 uses
  %i.ca = icmp eq i64 %index.next74, %n.vec55
  br i1 %i.ca, label %middle.block75, label %vector.body58, !llvm.loop !43

middle.block75:                                   ; preds = %vector.body58
  %cmp.n76 = icmp eq i64 %indvar50, %n.vec55
  br i1 %cmp.n76, label %._crit_edge.i25, label %.lr.ph.i29.preheader78

.lr.ph.i29.preheader78:                           ; preds = %.lr.ph.i29.preheader, %middle.block75
  %indvars.iv34.i30.ph = phi i64 [ %indvars.iv.i23, %.lr.ph.i29.preheader ], [ %i.bo, %middle.block75 ]
  br label %.lr.ph.i29

._crit_edge.i25:                                  ; preds = %.lr.ph.i29, %middle.block75, %.lr.ph32.i21
  %i.cb = load double, ptr %i.bb, align 8, !tbaa !16
  %i.cc = fadd nsz double %i.bf, %i.cb
  store double %i.cc, ptr %i.bb, align 8, !tbaa !16
  %indvars.iv.next38.i26 = add nuw nsw i64 %indvars.iv37.i22, 1 ; 2 uses
  %indvars.iv.next.i27 = add nuw nsw i64 %indvars.iv.i23, 1
  %exitcond.not.i28 = icmp eq i64 %indvars.iv.next38.i26, %wide.trip.count.i
  %indvar.next51 = add i64 %indvar50, 1
  br i1 %exitcond.not.i28, label %lsp2polyf.exit32, label %.lr.ph32.i21, !llvm.loop !0

.lr.ph.i29:                                       ; preds = %.lr.ph.i29.preheader78, %.lr.ph.i29
  %indvars.iv34.i30 = phi i64 [ %indvars.iv.next35.i31, %.lr.ph.i29 ], [ %indvars.iv34.i30.ph, %.lr.ph.i29.preheader78 ] ; 3 uses
  %i.cd = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv34.i30 ; 4 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 -8
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !16
  %i.cg = getelementptr i8, ptr %i.cd, i64 -16
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !16
  %i.ci = tail call nsz double @llvm.fmuladd.f64(double %i.cf, double %i.bf, double %i.ch)
  %i.cj = load double, ptr %i.cd, align 8, !tbaa !16
  %i.ck = fadd nsz double %i.cj, %i.ci
  store double %i.ck, ptr %i.cd, align 8, !tbaa !16
  %indvars.iv.next35.i31 = add nsw i64 %indvars.iv34.i30, -1
  %i.cl = icmp sgt i64 %indvars.iv34.i30, 2
  br i1 %i.cl, label %.lr.ph.i29, label %._crit_edge.i25, !llvm.loop !44

lsp2polyf.exit32:                                 ; preds = %._crit_edge.i25, %lsp2polyf.exit.thread
  %.not33 = icmp eq i32 %2, 0
  br i1 %.not33, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %lsp2polyf.exit32
  %i.cm = sext i32 %2 to i64                      ; 3 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.cm
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !16
  %.phi.trans.insert36 = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.cm
  %.pre37 = load double, ptr %.phi.trans.insert36, align 8, !tbaa !16
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.cn = phi double [ %.pre37, %.lr.ph.preheader ], [ %i.ct, %.lr.ph ]
  %i.co = phi double [ %.pre, %.lr.ph.preheader ], [ %i.cq, %.lr.ph ]
  %indvars.iv = phi i64 [ %i.cm, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 5 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv.next
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !16 ; 2 uses
  %i.cr = fadd nsz double %i.co, %i.cq            ; 2 uses
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.next
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !16 ; 2 uses
  %i.cu = fsub nsz double %i.cn, %i.ct            ; 2 uses
  %i.cv = fadd nsz double %i.cr, %i.cu
  %i.cw = fmul nsz double %i.cv, 5.000000e-01
  %i.cx = fptrunc nsz double %i.cw to float
  %i.cy = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.next
  store float %i.cx, ptr %i.cy, align 4, !tbaa !14
  %i.cz = fsub nsz double %i.cr, %i.cu
  %i.da = fmul nsz double %i.cz, 5.000000e-01
  %i.db = fptrunc nsz double %i.da to float
  %i.dc = sub nsw i64 1, %indvars.iv
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.dc
  store float %i.db, ptr %i.dd, align 4, !tbaa !14
  %.not = icmp eq i64 %indvars.iv.next, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !45

._crit_edge:                                      ; preds = %.lr.ph, %lsp2polyf.exit32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ff_sort_nearly_sorted_floats(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 1
  br i1 %i.a, label %.preheader.preheader, label %._crit_edge

.preheader.preheader:                             ; preds = %bb.a
  %i.b = add nsw i32 %1, -1                       ; 3 uses
  %wide.trip.count = zext i32 %i.b to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %.preheader

.preheader:                                       ; preds = %.critedge.1, %.preheader.preheader.new
  %indvars.iv = phi i64 [ 0, %.preheader.preheader.new ], [ %indvars.iv.next.1, %.critedge.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.1, %.critedge.1 ]
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.c
  %indvars.iv23 = phi i64 [ %indvars.iv, %.preheader ], [ %indvars.iv.next24, %bb.c ] ; 3 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv23 ; 3 uses
  %i.e = load float, ptr %i.d, align 4, !tbaa !14 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !14 ; 2 uses
  %i.h = fcmp nsz ogt float %i.e, %i.g
  br i1 %i.h, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  store float %i.e, ptr %i.f, align 4, !tbaa !14
  store float %i.g, ptr %i.d, align 4, !tbaa !14
  %indvars.iv.next24 = add nsw i64 %indvars.iv23, -1
  %i.i = icmp sgt i64 %indvars.iv23, 0
  br i1 %i.i, label %bb.b, label %.critedge, !llvm.loop !46

.critedge:                                        ; preds = %bb.b, %bb.c
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.critedge
  %indvars.iv23.1 = phi i64 [ %indvars.iv.next, %.critedge ], [ %indvars.iv.next24.1, %bb.e ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv23.1 ; 3 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !14 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.m = load float, ptr %i.l, align 4, !tbaa !14 ; 2 uses
  %i.n = fcmp nsz ogt float %i.k, %i.m
  br i1 %i.n, label %bb.e, label %.critedge.1

bb.e:                                             ; preds = %bb.d
  store float %i.k, ptr %i.l, align 4, !tbaa !14
  store float %i.m, ptr %i.j, align 4, !tbaa !14
  %indvars.iv.next24.1 = add nsw i64 %indvars.iv23.1, -1
  %i.o = icmp sgt i64 %indvars.iv23.1, 0
  br i1 %i.o, label %bb.d, label %.critedge.1, !llvm.loop !46

.critedge.1:                                      ; preds = %bb.e, %bb.d
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.preheader, !llvm.loop !47

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.critedge.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %._crit_edge.loopexit.unr-lcssa, %.preheader.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod28 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.preheader.epil.preheader
  %indvars.iv23.epil = phi i64 [ %indvars.iv.epil.init, %.preheader.epil.preheader ], [ %indvars.iv.next24.epil, %bb.g ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv23.epil ; 3 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !14 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !14 ; 2 uses
  %i.t = fcmp nsz ogt float %i.q, %i.s
  br i1 %i.t, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  store float %i.q, ptr %i.r, align 4, !tbaa !14
  store float %i.s, ptr %i.p, align 4, !tbaa !14
  %indvars.iv.next24.epil = add nsw i64 %indvars.iv23.epil, -1
  %i.u = icmp sgt i64 %indvars.iv23.epil, 0
  br i1 %i.u, label %bb.f, label %._crit_edge, !llvm.loop !46

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.g, %bb.f, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.cos.v2f64(<2 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

end_hunk_1
