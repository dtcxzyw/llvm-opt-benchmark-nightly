Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/blendif_lab?download=true
inline.NumInlined: 211
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 23
begin_hunk_0_@dt_develop_blendif_lab_blend:bb.a

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ut = phi reassoc nsz arcp contract afn float [ %i.uq, %bb.am ], [ %i.us, %bb.an ]
  %i.uu = fcmp reassoc nsz arcp contract afn ogt float %i.ui, f0x3C111AA7
  br i1 %i.uu, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.uv = fmul reassoc nsz arcp contract afn float %i.ui, f0x40F92F69
  %i.uw = fadd reassoc nsz arcp contract afn float %i.uv, f0x3E0D3DCB
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.ux = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.ui) #15
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.uy = phi reassoc nsz arcp contract afn float [ %i.ux, %bb.aq ], [ %i.uw, %bb.ap ] ; 2 uses
  %i.uz = fmul reassoc nsz arcp contract afn float %i.un, f0x3F9B2B9B ; 2 uses
  %i.va = fcmp reassoc nsz arcp contract afn ogt float %i.uz, f0x3C111AA7
  br i1 %i.va, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.vb = fmul reassoc nsz arcp contract afn float %i.un, f0x41170A26
  %i.vc = fadd reassoc nsz arcp contract afn float %i.vb, f0x3E0D3DCB
  br label %dt_XYZ_to_Lab.exit

bb.at:                                            ; preds = %bb.ar
  %i.vd = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.uz) #15
  br label %dt_XYZ_to_Lab.exit

dt_XYZ_to_Lab.exit:                               ; preds = %bb.at, %bb.as
  %i.ve = phi reassoc nsz arcp contract afn float [ %i.vd, %bb.at ], [ %i.vc, %bb.as ]
  %i.vf = fmul reassoc nsz arcp contract afn float %i.uy, 1.160000e+02
  %i.vg = fadd reassoc nsz arcp contract afn float %i.vf, -1.600000e+01
  store float %i.vg, ptr %i.tr, align 4, !tbaa !34
  %i.vh = insertelement <2 x float> poison, float %i.ut, i64 0
  %i.vi = insertelement <2 x float> %i.vh, float %i.ve, i64 1
  %i.vj = insertelement <2 x float> poison, float %i.uy, i64 0
  %i.vk = shufflevector <2 x float> %i.vj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vl = fsub reassoc nsz arcp contract afn <2 x float> %i.vi, %i.vk
  %i.vm = fmul reassoc nsz arcp contract afn <2 x float> %i.vl, <float 5.000000e+02, float -2.000000e+02>
  store <2 x float> %i.vm, ptr %i.tu, align 4, !tbaa !34
  store float %i.tt, ptr %i.ts, align 4, !tbaa !34
  %i.vn = add nuw i64 %.0131171, 4                ; 2 uses
  %i.vo = icmp ult i64 %i.vn, %i.cb
  br i1 %i.vo, label %.lr.ph172, label %.loopexit150

bb.au:                                            ; preds = %bb.b
  %i.vp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !197 ; 2 uses
  %trunc.i = trunc i32 %i.vq to i8
  %switch.tableidx = add i8 %trunc.i, -2          ; 2 uses
  %i.vr = icmp ult i8 %switch.tableidx, 31
  br i1 %i.vr, label %switch.lookup, label %_choose_blend_func.exit

switch.lookup:                                    ; preds = %bb.au
  %i.vs = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dt_develop_blendif_lab_blend, i64 %i.vs
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_choose_blend_func.exit

_choose_blend_func.exit:                          ; preds = %bb.au, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @_blend_normal_unbounded, %bb.au ] ; 2 uses
  %.not139 = icmp sgt i32 %i.vq, -1
  %i.vt = sext i32 %i.r to i64                    ; 2 uses
  %.not184 = icmp eq i32 %i.r, 0                  ; 2 uses
  br i1 %.not139, label %.preheader, label %.preheader151

.preheader151:                                    ; preds = %_choose_blend_func.exit
  br i1 %.not184, label %.loopexit150, label %.lr.ph174

.lr.ph174:                                        ; preds = %.preheader151
  %i.vu = sext i32 %i.l to i64
  %i.vv = sext i32 %i.n to i64
  %i.vw = sext i32 %i.g to i64
  %i.vx = sext i32 %i.p to i64                    ; 2 uses
  br label %bb.av

.preheader:                                       ; preds = %_choose_blend_func.exit
  br i1 %.not184, label %.loopexit150, label %.lr.ph176

.lr.ph176:                                        ; preds = %.preheader
  %i.vy = sext i32 %i.l to i64
  %i.vz = sext i32 %i.n to i64
  %i.wa = sext i32 %i.g to i64
  %i.wb = sext i32 %i.p to i64                    ; 2 uses
  br label %bb.aw

bb.av:                                            ; preds = %.lr.ph174, %bb.av
  %.0130173 = phi i64 [ 0, %.lr.ph174 ], [ %i.wj, %bb.av ] ; 3 uses
  %i.wc = add i64 %.0130173, %i.vu
  %i.wd = mul i64 %i.wc, %i.vv
  %i.we = add i64 %i.wd, %i.vw
  %i.wf = mul i64 %.0130173, %i.vx                ; 2 uses
  %.idx141 = shl i64 %i.wf, 4
  %i.wg = getelementptr inbounds nuw i8, ptr %2, i64 %.idx141 ; 2 uses
  %.idx142 = shl i64 %i.we, 4
  %i.wh = getelementptr inbounds nuw i8, ptr %1, i64 %.idx142
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.wf
  tail call void %.0.i(ptr noundef %i.wg, ptr noundef %i.wh, ptr noundef %i.wg, ptr noundef %i.wi, i64 noundef %i.vx, ptr noundef nonnull @dt_develop_blendif_lab_blend.min, ptr noundef nonnull @dt_develop_blendif_lab_blend.max) #8
  %i.wj = add nuw i64 %.0130173, 1                ; 2 uses
  %exitcond200.not.a = icmp eq i64 %i.wj, %i.vt
  br i1 %exitcond200.not.a, label %.loopexit150, label %bb.av

bb.aw:                                            ; preds = %.lr.ph176, %bb.aw
  %.0129175 = phi i64 [ 0, %.lr.ph176 ], [ %i.wr, %bb.aw ] ; 3 uses
  %i.wk = add i64 %.0129175, %i.vy
  %i.wl = mul i64 %i.wk, %i.vz
  %i.wm = add i64 %i.wl, %i.wa
  %i.wn = mul i64 %.0129175, %i.wb                ; 2 uses
  %.idx = shl i64 %i.wm, 4
  %i.wo = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.idx140 = shl i64 %i.wn, 4
  %i.wp = getelementptr inbounds nuw i8, ptr %2, i64 %.idx140 ; 2 uses
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.wn
  tail call void %.0.i(ptr noundef %i.wo, ptr noundef %i.wp, ptr noundef %i.wp, ptr noundef %i.wq, i64 noundef %i.wb, ptr noundef nonnull @dt_develop_blendif_lab_blend.min, ptr noundef nonnull @dt_develop_blendif_lab_blend.max) #8
  %i.wr = add nuw i64 %.0129175, 1                ; 2 uses
  %exitcond201.not.a = icmp eq i64 %i.wr, %i.vt
  br i1 %exitcond201.not.a, label %.loopexit150, label %bb.aw

.loopexit150:                                     ; preds = %dt_ioppr_rgb_matrix_to_lab.exit, %dt_XYZ_to_Lab.exit, %bb.av, %bb.aw, %.preheader155, %.preheader153, %.preheader151, %.preheader
  %i.ws = and i32 %i.v, 1
  %.not144 = icmp eq i32 %i.ws, 0
  br i1 %.not144, label %.loopexit, label %bb.ax

bb.ax:                                            ; preds = %.loopexit150
  %i.wt = shl i32 %i.p, 2
  %i.wu = sext i32 %i.wt to i64                   ; 3 uses
  %i.wv = sext i32 %i.r to i64
  %.not185 = icmp eq i32 %i.r, 0
  br i1 %.not185, label %.loopexit, label %.lr.ph179

.lr.ph179:                                        ; preds = %bb.ax
  %i.ww = sext i32 %i.l to i64
  %i.wx = sext i32 %i.n to i64
  %i.wy = sext i32 %i.g to i64
  %.not149 = icmp eq i32 %i.p, 0
  br i1 %.not149, label %.loopexit, label %.lr.ph.i148.preheader.preheader

.lr.ph.i148.preheader.preheader:                  ; preds = %.lr.ph179
  %i.wz = tail call i64 @llvm.umax.i64(i64 %i.wu, i64 7)
  %i.xa = add i64 %i.wz, -4                       ; 2 uses
  %min.iters.check378 = icmp ult i64 %i.xa, 32
  %i.xb = lshr i64 %i.xa, 2
  %i.xc = add nuw nsw i64 %i.xb, 1                ; 2 uses
  %i.xd = and i64 %i.xc, 7                        ; 2 uses
  %i.xe = icmp eq i64 %i.xd, 0
  %i.xf = select i1 %i.xe, i64 8, i64 %i.xd
  %n.vec380 = sub nsw i64 %i.xc, %i.xf            ; 2 uses
  %i.xg = shl i64 %n.vec380, 2
  %i.xh = or disjoint i64 %i.xg, 3
  br label %.lr.ph.i148.preheader

.lr.ph.i148.preheader:                            ; preds = %.lr.ph.i148.preheader.preheader, %_copy_mask.exit.loopexit
  %.0177 = phi i64 [ %i.xw, %_copy_mask.exit.loopexit ], [ 0, %.lr.ph.i148.preheader.preheader ] ; 3 uses
  %i.xi = add i64 %.0177, %i.ww
  %i.xj = mul i64 %i.xi, %i.wx
  %i.xk = add i64 %i.xj, %i.wy
  %i.xl = mul i64 %.0177, %i.wu
  %.idx145 = shl i64 %i.xk, 4
  %i.xm = getelementptr inbounds nuw i8, ptr %1, i64 %.idx145 ; 2 uses
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.xl ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  br i1 %min.iters.check378, label %.lr.ph.i148.preheader394, label %vector.body381

vector.body381:                                   ; preds = %.lr.ph.i148.preheader, %vector.body381
  %index382 = phi i64 [ %index.next385, %vector.body381 ], [ 0, %.lr.ph.i148.preheader ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %vec.ind.next, %vector.body381 ], [ <i64 3, i64 7, i64 11, i64 15, i64 19, i64 23, i64 27, i64 31>, %.lr.ph.i148.preheader ] ; 2 uses
  %.idx393 = shl nuw i64 %index382, 4
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xm, i64 %.idx393
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 12
  %wide.vec383 = load <32 x float>, ptr %i.xp, align 4, !tbaa !34, !alias.scope !198
  %strided.vec384 = shufflevector <32 x float> %wide.vec383, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %i.xn, <8 x i64> %vec.ind
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec384, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !34, !alias.scope !199
  %index.next385 = add nuw i64 %index382, 8       ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 32)
  %i.xq = icmp eq i64 %index.next385, %n.vec380
  br i1 %i.xq, label %.lr.ph.i148.preheader394, label %vector.body381, !llvm.loop !167

.lr.ph.i148.preheader394:                         ; preds = %vector.body381, %.lr.ph.i148.preheader
  %.06.i.ph = phi i64 [ 3, %.lr.ph.i148.preheader ], [ %i.xh, %vector.body381 ]
  br label %.lr.ph.i148

.lr.ph.i148:                                      ; preds = %.lr.ph.i148.preheader394, %.lr.ph.i148
  %.06.i = phi i64 [ %i.xu, %.lr.ph.i148 ], [ %.06.i.ph, %.lr.ph.i148.preheader394 ] ; 3 uses
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %i.xm, i64 %.06.i
  %i.xs = load float, ptr %i.xr, align 4, !tbaa !34, !alias.scope !198
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %i.xn, i64 %.06.i
  store float %i.xs, ptr %i.xt, align 4, !tbaa !34, !alias.scope !199
  %i.xu = add nuw i64 %.06.i, 4                   ; 2 uses
  %i.xv = icmp ult i64 %i.xu, %i.wu
  br i1 %i.xv, label %.lr.ph.i148, label %_copy_mask.exit.loopexit, !llvm.loop !168

_copy_mask.exit.loopexit:                         ; preds = %.lr.ph.i148
  %i.xw = add nuw i64 %.0177, 1                   ; 2 uses
  %exitcond202.not = icmp eq i64 %i.xw, %i.wv
  br i1 %exitcond202.not, label %.loopexit, label %.lr.ph.i148.preheader

.loopexit:                                        ; preds = %_copy_mask.exit.loopexit, %bb.ax, %.lr.ph179, %.loopexit150, %bb.a
  ret void
}

declare ptr @dt_ioppr_get_pipe_work_profile_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #5

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nounwind memory(argmem: write)
declare void @llvm.x86.sse.stmxcsr(ptr) #7

; Function Attrs: nounwind
declare void @llvm.x86.sse.ldmxcsr(ptr) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan2.f32(float, float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @hypotf(float noundef, float noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @cbrtf(float noundef) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_lighten(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #11 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %.031.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  %.02230.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %i.o, %vector.body ]
  br label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph
  %i.e = shl i64 %4, 4                            ; 2 uses
  %i.f = getelementptr i8, ptr %2, i64 %i.e       ; 4 uses
  %i.g = add i64 %i.e, -4                         ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 %i.g
  %i.i = getelementptr i8, ptr %1, i64 %i.g
  %i.j = getelementptr i8, ptr %5, i64 12
  %i.k = getelementptr i8, ptr %6, i64 12
  %bound0 = icmp ult ptr %2, %i.h
  %bound1 = icmp ult ptr %0, %i.f
  %found.conflict = and i1 %bound0, %bound1
  %bound047 = icmp ult ptr %2, %i.i
  %bound148 = icmp ult ptr %1, %i.f
  %found.conflict49 = and i1 %bound047, %bound148
  %conflict.rdx = or i1 %found.conflict, %found.conflict49
  %bound050 = icmp ult ptr %2, %i.j
  %bound151 = icmp ult ptr %5, %i.f
  %found.conflict52 = and i1 %bound050, %bound151
  %conflict.rdx53 = or i1 %conflict.rdx, %found.conflict52
  %bound054 = icmp ult ptr %2, %i.k
  %bound155 = icmp ult ptr %6, %i.f
  %found.conflict56 = and i1 %bound054, %bound155
  %conflict.rdx57 = or i1 %conflict.rdx53, %found.conflict56
  br i1 %conflict.rdx57, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.l = and i64 %4, 7                            ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  %i.n = select i1 %i.m, i64 8, i64 %i.l
  %n.vec = sub i64 %4, %i.n                       ; 3 uses
  %i.o = shl i64 %n.vec, 2
  %i.p = load float, ptr %5, align 4, !tbaa !34, !alias.scope !208
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.p, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %i.q = load float, ptr %6, align 4, !tbaa !34, !alias.scope !209
  %broadcast.splatinsert64 = insertelement <8 x float> poison, float %i.q, i64 0
  %broadcast.splat65 = shufflevector <8 x float> %broadcast.splatinsert64, <8 x float> poison, <8 x i32> zeroinitializer
  %i.r = load float, ptr %i.a, align 4, !tbaa !34, !alias.scope !208
  %broadcast.splatinsert66 = insertelement <8 x float> poison, float %i.r, i64 0
  %broadcast.splat67 = shufflevector <8 x float> %broadcast.splatinsert66, <8 x float> poison, <8 x i32> zeroinitializer
  %i.s = load float, ptr %i.b, align 4, !tbaa !34, !alias.scope !209
  %broadcast.splatinsert68 = insertelement <8 x float> poison, float %i.s, i64 0
  %broadcast.splat69 = shufflevector <8 x float> %broadcast.splatinsert68, <8 x float> poison, <8 x i32> zeroinitializer
  %i.t = load float, ptr %i.c, align 4, !tbaa !34, !alias.scope !208
  %broadcast.splatinsert70 = insertelement <8 x float> poison, float %i.t, i64 0
  %broadcast.splat71 = shufflevector <8 x float> %broadcast.splatinsert70, <8 x float> poison, <8 x i32> zeroinitializer
  %i.u = load float, ptr %i.d, align 4, !tbaa !34, !alias.scope !209
  %broadcast.splatinsert72 = insertelement <8 x float> poison, float %i.u, i64 0
  %broadcast.splat73 = shufflevector <8 x float> %broadcast.splatinsert72, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = shl i64 %index, 2                        ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.w, align 4, !tbaa !34 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.v
  %wide.vec = load <32 x float>, ptr %i.x, align 4, !tbaa !34, !alias.scope !210 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec58 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec59 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.y = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, splat (float f0x3C23D70A) ; 5 uses
  %i.z = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec58, splat (float 7.812500e-03) ; 3 uses
  %i.aa = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec59, splat (float 7.812500e-03) ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.v
  %wide.vec60 = load <32 x float>, ptr %i.ab, align 4, !tbaa !34, !alias.scope !211 ; 3 uses
  %strided.vec61 = shufflevector <32 x float> %wide.vec60, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec62 = shufflevector <32 x float> %wide.vec60, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec63 = shufflevector <32 x float> %wide.vec60, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.ac = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec61, splat (float f0x3C23D70A) ; 2 uses
  %i.ad = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec62, splat (float 7.812500e-03)
  %i.ae = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec63, splat (float 7.812500e-03)
  %i.af = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.y, %i.ac
  %i.ag = select reassoc nsz arcp contract afn <8 x i1> %i.af, <8 x float> %i.y, <8 x float> %i.ac
  %i.ah = fsub reassoc nsz arcp contract afn <8 x float> %i.ag, %i.y
  %i.ai = fmul reassoc nsz arcp contract afn <8 x float> %i.ah, %wide.load
  %i.aj = fadd reassoc nsz arcp contract afn <8 x float> %i.ai, %i.y
  %i.ak = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.aj, <8 x float> %broadcast.splat)
  %i.al = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ak, <8 x float> %broadcast.splat65) ; 2 uses
  %i.am = fsub reassoc nsz arcp contract afn <8 x float> %i.al, %i.y
  %i.an = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.am) ; 2 uses
  %i.ao = fadd reassoc nsz arcp contract afn <8 x float> %i.ad, %i.z
  %i.ap = fmul reassoc nsz arcp contract afn <8 x float> %i.ao, splat (float 5.000000e-01)
  %i.aq = fsub reassoc nsz arcp contract afn <8 x float> %i.ap, %i.z
  %i.ar = fmul reassoc nsz arcp contract afn <8 x float> %i.an, %i.aq
  %i.as = fadd reassoc nsz arcp contract afn <8 x float> %i.ar, %i.z
  %i.at = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.as, <8 x float> %broadcast.splat67)
  %i.au = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.at, <8 x float> %broadcast.splat69)
  %i.av = fadd reassoc nsz arcp contract afn <8 x float> %i.ae, %i.aa
  %i.aw = fmul reassoc nsz arcp contract afn <8 x float> %i.av, splat (float 5.000000e-01)
  %i.ax = fsub reassoc nsz arcp contract afn <8 x float> %i.aw, %i.aa
  %i.ay = fmul reassoc nsz arcp contract afn <8 x float> %i.an, %i.ax
  %i.az = fadd reassoc nsz arcp contract afn <8 x float> %i.ay, %i.aa
  %i.ba = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.az, <8 x float> %broadcast.splat71)
  %i.bb = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ba, <8 x float> %broadcast.splat73)
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.v
  %i.bd = fmul reassoc nsz arcp contract afn <8 x float> %i.bb, splat (float 1.280000e+02)
  %i.be = shufflevector <8 x float> %i.al, <8 x float> %i.au, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bf = fmul reassoc nsz arcp contract afn <16 x float> %i.be, <float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02>
  %i.bg = shufflevector <8 x float> %i.bd, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.bf, <16 x float> %i.bg, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.bc, align 4, !tbaa !34, !alias.scope !212, !noalias !213
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %scalar.ph.preheader, label %vector.body, !llvm.loop !206

._crit_edge:                                      ; preds = %scalar.ph, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.031 = phi i64 [ %i.cy, %scalar.ph ], [ %.031.ph, %scalar.ph.preheader ] ; 2 uses
  %.02230 = phi i64 [ %i.cz, %scalar.ph ], [ %.02230.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.031
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02230 ; 2 uses
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !34
  %i.bl = fmul reassoc nsz arcp contract afn float %i.bk, f0x3C23D70A ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02230 ; 2 uses
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !34
  %i.bp = fmul reassoc nsz arcp contract afn float %i.bo, f0x3C23D70A ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.br = fcmp reassoc nsz arcp contract afn ogt float %i.bl, %i.bp
  %i.bs = select reassoc nsz arcp contract afn i1 %i.br, float %i.bl, float %i.bp
  %i.bt = fsub reassoc nsz arcp contract afn float %i.bs, %i.bl
  %i.bu = load float, ptr %5, align 4, !tbaa !34
  %i.bv = load float, ptr %6, align 4, !tbaa !34
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02230
  %i.bx = load float, ptr %i.bi, align 4, !tbaa !34 ; 2 uses
  %i.by = fmul reassoc nsz arcp contract afn float %i.bt, %i.bx
  %i.bz = fadd reassoc nsz arcp contract afn float %i.by, %i.bl
  %i.ca = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bz, float %i.bu)
  %i.cb = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ca, float %i.bv) ; 2 uses
  %i.cc = fsub reassoc nsz arcp contract afn float %i.cb, %i.bl
  %i.cd = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.cc)
  %i.ce = load <2 x float>, ptr %i.bm, align 4, !tbaa !34
  %i.cf = fmul reassoc nsz arcp contract afn <2 x float> %i.ce, splat (float 7.812500e-03) ; 3 uses
  %i.cg = load <2 x float>, ptr %i.bq, align 4, !tbaa !34
  %i.ch = fmul reassoc nsz arcp contract afn <2 x float> %i.cg, splat (float 7.812500e-03)
  %i.ci = fadd reassoc nsz arcp contract afn <2 x float> %i.ch, %i.cf
  %i.cj = fmul reassoc nsz arcp contract afn <2 x float> %i.ci, splat (float 5.000000e-01)
  %i.ck = fsub reassoc nsz arcp contract afn <2 x float> %i.cj, %i.cf
end_hunk_0
