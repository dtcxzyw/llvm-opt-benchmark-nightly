Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 60
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 278
begin_hunk_0_@ma_gainer_process_pcm_frames:bb.a
  %i.qi = add i64 %indvars.iv333.i, %i.pv         ; 2 uses
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %.1252.i, i64 %i.qi
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !349, !alias.scope !1848
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %indvars.iv333.i
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !349, !noalias !1849
  %i.qn = fmul float %i.qk, %i.qm
  %i.qo = fmul float %i.qn, %i.mt
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %.1.i, i64 %i.qi
  store float %i.qo, ptr %i.qp, align 4, !tbaa !349, !alias.scope !1847
  %indvars.iv.next334.i = add nuw nsw i64 %indvars.iv333.i, 1 ; 2 uses
  %exitcond337.not.i = icmp eq i64 %indvars.iv.next334.i, %i.mp
  br i1 %exitcond337.not.i, label %.loopexit, label %scalar.ph60, !llvm.loop !1845

.loopexit:                                        ; preds = %scalar.ph60, %middle.block72
  %i.qq = add nuw i64 %.9249304.i, 1              ; 2 uses
  %exitcond338.not.i = icmp eq i64 %i.qq, %.0250.i
  br i1 %exitcond338.not.i, label %.loopexit.i, label %.preheader.i, !llvm.loop !1846

.loopexit.i:                                      ; preds = %.loopexit, %ma_copy_and_apply_volume_factor_per_channel_f32.exit.i, %.preheader271.i, %bb.i
  %i.qr = icmp eq i32 %i.mk, -1
  br i1 %i.qr, label %bb.l, label %ma_gainer_process_pcm_frames_internal.exit

bb.l:                                             ; preds = %.loopexit.i
  %i.qs = zext i32 %i.h to i64
  %i.qt = tail call i64 @llvm.umin.i64(i64 %.0250.i, i64 %i.qs)
  %i.qu = trunc nuw i64 %i.qt to i32
  store i32 %i.qu, ptr %i.e, align 8, !tbaa !458, !noalias !1849
  br label %ma_gainer_process_pcm_frames_internal.exit

ma_gainer_process_pcm_frames_internal.exit:       ; preds = %bb.l, %.loopexit.i, %bb.a
  %.0 = phi i32 [ -2, %bb.a ], [ 0, %.loopexit.i ], [ 0, %bb.l ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -2, 1) i32 @ma_gainer_set_gain(ptr nofree noundef captures(address_is_null) %0, float noundef %1) local_unnamed_addr #23 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !461    ; 3 uses
  %.not = icmp eq i32 %i.b, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !458 ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.c = uitofp i32 %.pre to float
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !460
  %i.f = uitofp i32 %i.e to float
  %i.g = fdiv float %i.c, %i.f                    ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !455  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !456  ; 6 uses
  %wide.trip.count = zext i32 %i.b to i64         ; 6 uses
  %min.iters.check = icmp ult i32 %i.b, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.l = shl nuw nsw i64 %wide.trip.count, 2      ; 2 uses
  %i.m = getelementptr i8, ptr %i.i, i64 %i.l
  %i.n = getelementptr i8, ptr %i.k, i64 %i.l
  %bound0 = icmp ult ptr %i.i, %i.n
  %bound1 = icmp ult ptr %i.k, %i.m
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.g, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert14 = insertelement <4 x float> poison, float %1, i64 0
  %broadcast.splat15 = shufflevector <4 x float> %broadcast.splatinsert14, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.o, align 4, !tbaa !349, !alias.scope !1855, !noalias !1856 ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index ; 2 uses
  %wide.load16 = load <4 x float>, ptr %i.p, align 4, !tbaa !349, !alias.scope !1856
  %i.q = fsub <4 x float> %wide.load16, %wide.load
  %i.r = fmul <4 x float> %broadcast.splat, %i.q
  %i.s = fadd <4 x float> %wide.load, %i.r
  store <4 x float> %i.s, ptr %i.o, align 4, !tbaa !349, !alias.scope !1855, !noalias !1856
  store <4 x float> %broadcast.splat15, ptr %i.p, align 4, !tbaa !349, !alias.scope !1856
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !1853

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.ph ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !349 ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.ph ; 2 uses
  %i.x = load float, ptr %i.w, align 4, !tbaa !349
  %i.y = fsub float %i.x, %i.v
  %i.z = fmul float %i.g, %i.y
  %i.aa = fadd float %i.v, %i.z
  store float %i.aa, ptr %i.u, align 4, !tbaa !349
  store float %1, ptr %i.w, align 4, !tbaa !349
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ab = add nsw i64 %wide.trip.count, -1
  %i.ac = icmp eq i64 %indvars.iv.ph, %i.ab
  br i1 %i.ac, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv ; 2 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !349 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv ; 2 uses
  %i.ag = load float, ptr %i.af, align 4, !tbaa !349
  %i.ah = fsub float %i.ag, %i.ae
  %i.ai = fmul float %i.g, %i.ah
  %i.aj = fadd float %i.ae, %i.ai
  store float %i.aj, ptr %i.ad, align 4, !tbaa !349
  store float %1, ptr %i.af, align 4, !tbaa !349
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next ; 2 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !349 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next ; 2 uses
  %i.an = load float, ptr %i.am, align 4, !tbaa !349
  %i.ao = fsub float %i.an, %i.al
  %i.ap = fmul float %i.g, %i.ao
  %i.aq = fadd float %i.al, %i.ap
  store float %i.aq, ptr %i.ak, align 4, !tbaa !349
  store float %1, ptr %i.am, align 4, !tbaa !349
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !1854

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = icmp eq i32 %.pre, -1
  br i1 %i.as, label %bb.b, label %ma_gainer_reset_smoothing_time.exit

bb.b:                                             ; preds = %._crit_edge
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !460
  br label %ma_gainer_reset_smoothing_time.exit

ma_gainer_reset_smoothing_time.exit:              ; preds = %._crit_edge, %bb.b
  %storemerge.i = phi i32 [ %i.au, %bb.b ], [ 0, %._crit_edge ]
  store i32 %storemerge.i, ptr %i.ar, align 8, !tbaa !458
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %ma_gainer_reset_smoothing_time.exit
  %.08 = phi i32 [ 0, %ma_gainer_reset_smoothing_time.exit ], [ -2, %bb.a ]
  ret i32 %.08
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -2, 1) i32 @ma_gainer_set_gains(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #23 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !461    ; 3 uses
  %.not = icmp eq i32 %i.c, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !458 ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.d = uitofp i32 %.pre to float
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !460
  %i.g = uitofp i32 %i.f to float
  %i.h = fdiv float %i.d, %i.g                    ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !455  ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !456  ; 7 uses
  %wide.trip.count = zext i32 %i.c to i64         ; 6 uses
  %min.iters.check = icmp ult i32 %i.c, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.m = shl nuw nsw i64 %wide.trip.count, 2      ; 3 uses
  %i.n = getelementptr i8, ptr %i.j, i64 %i.m     ; 2 uses
  %i.o = getelementptr i8, ptr %i.l, i64 %i.m     ; 2 uses
  %2 = getelementptr i8, ptr %1, i64 %i.m         ; 2 uses
  %bound0.a = icmp ult ptr %i.j, %i.o
  %bound1 = icmp ult ptr %i.l, %i.n
  %found.conflict = and i1 %bound0.a, %bound1
  %bound027 = icmp ult ptr %i.j, %2
  %bound128 = icmp ult ptr %1, %i.n
  %found.conflict29 = and i1 %bound027, %bound128
  %conflict.rdx = or i1 %found.conflict, %found.conflict29
  %bound030 = icmp ult ptr %i.l, %2
  %bound131 = icmp ult ptr %1, %i.o
  %found.conflict32 = and i1 %bound030, %bound131
  %conflict.rdx33 = or i1 %conflict.rdx, %found.conflict32
  br i1 %conflict.rdx33, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.h, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %wide.load = load <4 x float>, ptr %i.p, align 4, !tbaa !349, !alias.scope !1863
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %wide.load34 = load <4 x float>, ptr %i.q, align 4, !tbaa !349, !alias.scope !1864, !noalias !1865 ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index ; 2 uses
  %wide.load35 = load <4 x float>, ptr %i.r, align 4, !tbaa !349, !alias.scope !1866, !noalias !1863
  %i.s = fsub <4 x float> %wide.load35, %wide.load34
  %i.t = fmul <4 x float> %broadcast.splat, %i.s
  %i.u = fadd <4 x float> %wide.load34, %i.t
  store <4 x float> %i.u, ptr %i.q, align 4, !tbaa !349, !alias.scope !1864, !noalias !1865
  store <4 x float> %wide.load, ptr %i.r, align 4, !tbaa !349, !alias.scope !1866, !noalias !1863
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !1861

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.ph
  %i.x = load float, ptr %i.w, align 4, !tbaa !349
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.ph ; 2 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !349 ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.ph ; 2 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !349
  %i.ac = fsub float %i.ab, %i.z
  %i.ad = fmul float %i.h, %i.ac
  %i.ae = fadd float %i.z, %i.ad
  store float %i.ae, ptr %i.y, align 4, !tbaa !349
  store float %i.x, ptr %i.aa, align 4, !tbaa !349
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.af = add nsw i64 %wide.trip.count, -1
  %i.ag = icmp eq i64 %indvars.iv.ph, %i.af
  br i1 %i.ag, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !349
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv ; 2 uses
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !349 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv ; 2 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !349
  %i.an = fsub float %i.am, %i.ak
  %i.ao = fmul float %i.h, %i.an
  %i.ap = fadd float %i.ak, %i.ao
  store float %i.ap, ptr %i.aj, align 4, !tbaa !349
  store float %i.ai, ptr %i.al, align 4, !tbaa !349
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !349
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next ; 2 uses
  %i.at = load float, ptr %i.as, align 4, !tbaa !349 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next ; 2 uses
  %i.av = load float, ptr %i.au, align 4, !tbaa !349
  %i.aw = fsub float %i.av, %i.at
  %i.ax = fmul float %i.h, %i.aw
  %i.ay = fadd float %i.at, %i.ax
  store float %i.ay, ptr %i.as, align 4, !tbaa !349
  store float %i.ar, ptr %i.au, align 4, !tbaa !349
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !1862

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = icmp eq i32 %.pre, -1
  br i1 %i.ba, label %bb.b, label %ma_gainer_reset_smoothing_time.exit

bb.b:                                             ; preds = %._crit_edge
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !460
  br label %ma_gainer_reset_smoothing_time.exit

ma_gainer_reset_smoothing_time.exit:              ; preds = %._crit_edge, %bb.b
  %storemerge.i = phi i32 [ %i.bc, %bb.b ], [ 0, %._crit_edge ]
  store i32 %storemerge.i, ptr %i.az, align 8, !tbaa !458
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %ma_gainer_reset_smoothing_time.exit
  %.011 = phi i32 [ 0, %ma_gainer_reset_smoothing_time.exit ], [ -2, %bb.a ]
  ret i32 %.011
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -2, 1) i32 @ma_gainer_set_master_volume(ptr nofree noundef writeonly captures(address_is_null) %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %1, ptr %i.b, align 4, !tbaa !457
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -2, 1) i32 @ma_gainer_get_master_volume(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load float, ptr %i.c, align 4, !tbaa !457
  store float %i.d, ptr %1, align 4, !tbaa !349
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { i64, i64 } @ma_panner_config_init(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %.sroa.0.sroa.3.0.insert.ext = zext i32 %1 to i64
  %.sroa.0.sroa.3.0.insert.shift = shl nuw i64 %.sroa.0.sroa.3.0.insert.ext, 32
  %.sroa.0.sroa.0.0.insert.ext = zext i32 %0 to i64
  %.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.sroa.3.0.insert.shift, %.sroa.0.sroa.0.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.sroa.0.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -2, 1) i32 @ma_panner_init(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %ma_zero_memory_default.exit
  %i.c = load <2 x i32>, ptr %0, align 4, !tbaa !118
  store <2 x i32> %i.c, ptr %1, align 4, !tbaa !118
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !463
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.e, ptr %i.f, align 4, !tbaa !463
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load float, ptr %i.g, align 4, !tbaa !464
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %i.h, ptr %i.i, align 4, !tbaa !464
  br label %bb.c

bb.c:                                             ; preds = %ma_zero_memory_default.exit, %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -2, %bb.a ], [ -2, %ma_zero_memory_default.exit ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 -2, 1) i32 @ma_panner_process_pcm_frames(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %2, null
  %or.cond3 = or i1 %or.cond, %i.c
  br i1 %or.cond3, label %ma_stereo_balance_pcm_frames.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@ma_spatializer_process_pcm_frames:bb.a
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !503 ; 2 uses
  %wide.trip.count = zext i32 %i.af to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.af, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.go, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %index ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  store <4 x float> %broadcast.splat, ptr %i.gr, align 4, !tbaa !349
  store <4 x float> %broadcast.splat, ptr %i.gs, align 4, !tbaa !349
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gt = icmp eq i64 %index.next, %n.vec
  br i1 %i.gt, label %middle.block, label %vector.body, !llvm.loop !1925

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %ma_spatializer_listener_is_enabled.exit309, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv
  store float %i.go, ptr %i.gu, align 4, !tbaa !349
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %ma_spatializer_listener_is_enabled.exit309, label %scalar.ph, !llvm.loop !1926

ma_spatializer_listener_is_enabled.exit309:       ; preds = %scalar.ph, %middle.block, %bb.y
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !482
  %.not = icmp eq i32 %i.gw, 0
  br i1 %.not, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %ma_spatializer_listener_is_enabled.exit309
  call fastcc void @ma_channel_map_apply_f32(ptr noundef %2, ptr noundef %i.f, i32 noundef %i.af, ptr noundef %3, ptr noundef %i.d, i32 noundef %i.ag, i64 noundef %4, i32 noundef 0, i32 noundef 0)
  br label %ma_silence_pcm_frames.exit318

bb.aa:                                            ; preds = %ma_spatializer_listener_is_enabled.exit309
  %i.gx = load i32, ptr %i.ae, align 4, !tbaa !506
  %i.gy = shl i32 %i.gx, 2
  %i.gz = zext i32 %i.gy to i64
  %i.ha = mul i64 %4, %i.gz                       ; 2 uses
  %.not.i13.i310 = icmp eq i64 %i.ha, 0
  br i1 %.not.i13.i310, label %ma_silence_pcm_frames.exit318, label %.lr.ph.i311

.lr.ph.i311:                                      ; preds = %bb.aa, %ma_zero_memory_default.exit.i.i316
  %.0.i15.i312 = phi ptr [ %i.hc, %ma_zero_memory_default.exit.i.i316 ], [ %2, %bb.aa ] ; 3 uses
  %.08.i14.i313 = phi i64 [ %i.hb, %ma_zero_memory_default.exit.i.i316 ], [ %i.ha, %bb.aa ] ; 2 uses
  %spec.store.select.i.i314 = call i64 @llvm.umin.i64(i64 %.08.i14.i313, i64 4294967295) ; 3 uses
  %.not.i315 = icmp eq ptr %.0.i15.i312, null
  br i1 %.not.i315, label %ma_zero_memory_default.exit.i.i316, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i311
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i15.i312, i8 0, i64 %spec.store.select.i.i314, i1 false)
  br label %ma_zero_memory_default.exit.i.i316

ma_zero_memory_default.exit.i.i316:               ; preds = %bb.ab, %.lr.ph.i311
  %i.hb = sub nuw i64 %.08.i14.i313, %spec.store.select.i.i314 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.0.i15.i312, i64 %spec.store.select.i.i314
  %.not.i.i317 = icmp eq i64 %i.hb, 0
  br i1 %.not.i.i317, label %ma_silence_pcm_frames.exit318, label %.lr.ph.i311, !llvm.loop !7

ma_silence_pcm_frames.exit318:                    ; preds = %ma_zero_memory_default.exit.i.i316, %bb.aa, %bb.z
  br i1 %i.dg, label %bb.ac, label %.loopexit387

bb.ac:                                            ; preds = %ma_silence_pcm_frames.exit318
  %.sroa.051.0.copyload = load <2 x float>, ptr %5, align 8, !tbaa !349 ; 2 uses
  %.sroa.8.0.copyload = load float, ptr %.sroa.296.0..sroa_idx, align 8, !tbaa !349
  %i.hd = fdiv float 1.000000e+00, %.0238375      ; 3 uses
  %.sroa.051.0.vec.extract = extractelement <2 x float> %.sroa.051.0.copyload, i64 0
  %i.he = fmul float %i.hd, %.sroa.051.0.vec.extract
  %.sroa.051.4.vec.extract = extractelement <2 x float> %.sroa.051.0.copyload, i64 1
  %i.hf = fmul float %i.hd, %.sroa.051.4.vec.extract
  %i.hg = fmul float %i.hd, %.sroa.8.0.copyload
  br i1 %.not392, label %.loopexit387, label %.lr.ph391

.lr.ph391:                                        ; preds = %bb.ac
  %i.hh = icmp eq ptr %i.f, null
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 176
  %wide.trip.count399 = zext i32 %i.af to i64
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph391, %ma_is_spatial_channel_position.exit.thread379
  %indvars.iv396 = phi i64 [ 0, %.lr.ph391 ], [ %indvars.iv.next397, %ma_is_spatial_channel_position.exit.thread379 ] ; 4 uses
  br i1 %i.hh, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.hl = trunc nuw i64 %indvars.iv396 to i32
  %i.hm = call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %i.af, i32 noundef %i.hl)
  br label %ma_channel_map_get_channel.exit

bb.af:                                            ; preds = %bb.ad
  %i.hn = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv396
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !119
  br label %ma_channel_map_get_channel.exit

ma_channel_map_get_channel.exit:                  ; preds = %bb.ae, %bb.af
  %.0.i320 = phi i8 [ %i.hm, %bb.ae ], [ %i.ho, %bb.af ] ; 4 uses
  switch i8 %.0.i320, label %bb.ag [
    i8 5, label %ma_is_spatial_channel_position.exit.thread379
    i8 1, label %ma_is_spatial_channel_position.exit.thread379
    i8 0, label %ma_is_spatial_channel_position.exit.thread379
  ]

bb.ag:                                            ; preds = %ma_channel_map_get_channel.exit
  %i.hp = icmp ugt i8 %.0.i320, 19
  br i1 %i.hp, label %ma_is_spatial_channel_position.exit.thread379, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ag
  %i.hq = zext nneg i8 %.0.i320 to i64            ; 2 uses
  %i.hr = shl nuw nsw i64 1, %i.hq                ; 2 uses
  %i.hs = and i64 %i.hr, 777180
  %or.cond383 = icmp eq i64 %i.hs, 0
  br i1 %or.cond383, label %ma_is_spatial_channel_position.exit, label %ma_spatializer_get_directional_attenuation_factor.exit

ma_is_spatial_channel_position.exit:              ; preds = %.preheader.i
  %i.ht = and i64 %i.hr, 263168
  %.not20.i = icmp eq i64 %i.ht, 0
  %i.hu = icmp samesign ult i8 %.0.i320, 13
  %or.cond.i.not = and i1 %.not20.i, %i.hu
  br i1 %or.cond.i.not, label %ma_is_spatial_channel_position.exit.thread379, label %ma_spatializer_get_directional_attenuation_factor.exit

ma_spatializer_get_directional_attenuation_factor.exit: ; preds = %.preheader.i, %ma_is_spatial_channel_position.exit
  %i.hv = getelementptr inbounds nuw [12 x i8], ptr @g_maChannelDirections, i64 %i.hq ; 2 uses
  %.sroa.04.0.copyload.i = load <2 x float>, ptr %i.hv, align 4, !tbaa !349 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %.sroa.3.0.copyload.i = load float, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !349
  %.sroa.01.0.vec.extract.i = extractelement <2 x float> %.sroa.04.0.copyload.i, i64 0
  %.sroa.01.4.vec.extract.i = extractelement <2 x float> %.sroa.04.0.copyload.i, i64 1
  %i.hw = fmul float %i.hf, %.sroa.01.4.vec.extract.i
  %i.hx = call float @llvm.fmuladd.f32(float %i.he, float %.sroa.01.0.vec.extract.i, float %i.hw)
  %i.hy = call float @llvm.fmuladd.f32(float %i.hg, float %.sroa.3.0.copyload.i, float %i.hx)
  %i.hz = load atomic volatile i32, ptr %i.hi seq_cst, align 8
  %i.ia = bitcast i32 %i.hz to float
  %i.ib = fadd float %i.hy, -1.000000e+00
  %i.ic = fmul float %i.ib, %i.ia
  %i.id = fadd float %i.ic, 1.000000e+00
  %i.ie = fadd float %i.id, 1.000000e+00
  %i.if = fmul float %i.ie, 5.000000e-01
  br label %ma_is_spatial_channel_position.exit.thread379

ma_is_spatial_channel_position.exit.thread379:    ; preds = %bb.ag, %ma_channel_map_get_channel.exit, %ma_channel_map_get_channel.exit, %ma_channel_map_get_channel.exit, %ma_is_spatial_channel_position.exit, %ma_spatializer_get_directional_attenuation_factor.exit
  %.0242 = phi float [ %i.if, %ma_spatializer_get_directional_attenuation_factor.exit ], [ 1.000000e+00, %ma_is_spatial_channel_position.exit ], [ 1.000000e+00, %ma_channel_map_get_channel.exit ], [ 1.000000e+00, %ma_channel_map_get_channel.exit ], [ 1.000000e+00, %ma_channel_map_get_channel.exit ], [ 1.000000e+00, %bb.ag ] ; 2 uses
  %i.ig = load float, ptr %i.hj, align 4, !tbaa !499 ; 2 uses
  %i.ih = fcmp ogt float %.0242, %i.ig
  %i.ii = select i1 %i.ih, float %.0242, float %i.ig
  %i.ij = load ptr, ptr %i.hk, align 8, !tbaa !503
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %indvars.iv396 ; 2 uses
  %i.il = load float, ptr %i.ik, align 4, !tbaa !349
  %i.im = fmul float %i.il, %i.ii
  store float %i.im, ptr %i.ik, align 4, !tbaa !349
  %indvars.iv.next397 = add nuw nsw i64 %indvars.iv396, 1 ; 2 uses
  %exitcond400.not = icmp eq i64 %indvars.iv.next397, %wide.trip.count399
  br i1 %exitcond400.not, label %.loopexit387, label %bb.ad, !llvm.loop !1927

.loopexit387:                                     ; preds = %ma_is_spatial_channel_position.exit.thread379, %bb.ac, %ma_silence_pcm_frames.exit318
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !503 ; 8 uses
  %i.iq = icmp eq ptr %i.ip, null
  br i1 %i.iq, label %ma_gainer_set_gains.exit, label %.preheader.i324

.preheader.i324:                                  ; preds = %.loopexit387
  %i.ir = load i32, ptr %i.in, align 8, !tbaa !461 ; 3 uses
  %.not.i325 = icmp eq i32 %i.ir, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !458 ; 2 uses
  br i1 %.not.i325, label %._crit_edge.i, label %.lr.ph.i326

.lr.ph.i326:                                      ; preds = %.preheader.i324
  %i.is = uitofp i32 %.pre.i to float
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !460
  %i.iv = uitofp i32 %i.iu to float
  %i.iw = fdiv float %i.is, %i.iv                 ; 4 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !455 ; 7 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !456 ; 7 uses
  %wide.trip.count.i = zext i32 %i.ir to i64      ; 6 uses
  %min.iters.check448 = icmp ult i32 %i.ir, 12
  br i1 %min.iters.check448, label %scalar.ph447.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i326
  %i.jb = shl nuw nsw i64 %wide.trip.count.i, 2   ; 3 uses
  %i.jc = getelementptr i8, ptr %i.iy, i64 %i.jb  ; 2 uses
  %i.jd = getelementptr i8, ptr %i.ja, i64 %i.jb  ; 2 uses
  %7 = getelementptr i8, ptr %i.ip, i64 %i.jb     ; 2 uses
  %bound0.a = icmp ult ptr %i.iy, %i.jd
  %bound1 = icmp ult ptr %i.ja, %i.jc
  %found.conflict = and i1 %bound0.a, %bound1
  %bound0449 = icmp ult ptr %i.iy, %7
  %bound1450 = icmp ult ptr %i.ip, %i.jc
  %found.conflict451 = and i1 %bound0449, %bound1450
  %conflict.rdx = or i1 %found.conflict, %found.conflict451
  %bound0452 = icmp ult ptr %i.ja, %7
  %bound1453 = icmp ult ptr %i.ip, %i.jd
  %found.conflict454 = and i1 %bound0452, %bound1453
  %conflict.rdx455 = or i1 %conflict.rdx, %found.conflict454
  br i1 %conflict.rdx455, label %scalar.ph447.preheader, label %vector.ph456

vector.ph456:                                     ; preds = %vector.memcheck
  %n.vec457 = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  %broadcast.splatinsert458 = insertelement <4 x float> poison, float %i.iw, i64 0
  %broadcast.splat459 = shufflevector <4 x float> %broadcast.splatinsert458, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body460

vector.body460:                                   ; preds = %vector.body460, %vector.ph456
  %index461 = phi i64 [ 0, %vector.ph456 ], [ %index.next464, %vector.body460 ] ; 4 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %index461
  %wide.load = load <4 x float>, ptr %i.je, align 4, !tbaa !349, !alias.scope !1934
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %index461 ; 2 uses
  %wide.load462 = load <4 x float>, ptr %i.jf, align 4, !tbaa !349, !alias.scope !1935, !noalias !1936 ; 2 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %index461 ; 2 uses
  %wide.load463 = load <4 x float>, ptr %i.jg, align 4, !tbaa !349, !alias.scope !1937, !noalias !1934
  %i.jh = fsub <4 x float> %wide.load463, %wide.load462
  %i.ji = fmul <4 x float> %broadcast.splat459, %i.jh
  %i.jj = fadd <4 x float> %wide.load462, %i.ji
  store <4 x float> %i.jj, ptr %i.jf, align 4, !tbaa !349, !alias.scope !1935, !noalias !1936
  store <4 x float> %wide.load, ptr %i.jg, align 4, !tbaa !349, !alias.scope !1937, !noalias !1934
  %index.next464 = add nuw i64 %index461, 4       ; 2 uses
  %i.jk = icmp eq i64 %index.next464, %n.vec457
  br i1 %i.jk, label %middle.block465, label %vector.body460, !llvm.loop !1932

middle.block465:                                  ; preds = %vector.body460
  %cmp.n466 = icmp eq i64 %n.vec457, %wide.trip.count.i
  br i1 %cmp.n466, label %._crit_edge.i, label %scalar.ph447.preheader

scalar.ph447.preheader:                           ; preds = %vector.memcheck, %.lr.ph.i326, %middle.block465
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i326 ], [ %n.vec457, %middle.block465 ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph447.prol.loopexit, label %scalar.ph447.prol

scalar.ph447.prol:                                ; preds = %scalar.ph447.preheader
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %indvars.iv.i.ph
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !349
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %indvars.iv.i.ph ; 2 uses
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !349 ; 2 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv.i.ph ; 2 uses
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !349
  %i.jr = fsub float %i.jq, %i.jo
  %i.js = fmul float %i.iw, %i.jr
  %i.jt = fadd float %i.jo, %i.js
  store float %i.jt, ptr %i.jn, align 4, !tbaa !349
  store float %i.jm, ptr %i.jp, align 4, !tbaa !349
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph447.prol.loopexit

scalar.ph447.prol.loopexit:                       ; preds = %scalar.ph447.prol, %scalar.ph447.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph447.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph447.prol ]
  %i.ju = add nsw i64 %wide.trip.count.i, -1
  %i.jv = icmp eq i64 %indvars.iv.i.ph, %i.ju
  br i1 %i.jv, label %._crit_edge.i, label %scalar.ph447

scalar.ph447:                                     ; preds = %scalar.ph447.prol.loopexit, %scalar.ph447
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph447 ], [ %indvars.iv.i.unr, %scalar.ph447.prol.loopexit ] ; 5 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %indvars.iv.i
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !349
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %indvars.iv.i ; 2 uses
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !349 ; 2 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv.i ; 2 uses
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !349
  %i.kc = fsub float %i.kb, %i.jz
  %i.kd = fmul float %i.iw, %i.kc
  %i.ke = fadd float %i.jz, %i.kd
  store float %i.ke, ptr %i.jy, align 4, !tbaa !349
  store float %i.jx, ptr %i.ka, align 4, !tbaa !349
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %indvars.iv.next.i
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !349
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %indvars.iv.next.i ; 2 uses
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !349 ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv.next.i ; 2 uses
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !349
  %i.kl = fsub float %i.kk, %i.ki
  %i.km = fmul float %i.iw, %i.kl
  %i.kn = fadd float %i.ki, %i.km
  store float %i.kn, ptr %i.kh, align 4, !tbaa !349
  store float %i.kg, ptr %i.kj, align 4, !tbaa !349
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph447, !llvm.loop !1933

._crit_edge.i:                                    ; preds = %scalar.ph447.prol.loopexit, %scalar.ph447, %middle.block465, %.preheader.i324
  %i.ko = icmp eq i32 %.pre.i, -1
  br i1 %i.ko, label %bb.ah, label %ma_gainer_reset_smoothing_time.exit.i

bb.ah:                                            ; preds = %._crit_edge.i
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !460
  br label %ma_gainer_reset_smoothing_time.exit.i

ma_gainer_reset_smoothing_time.exit.i:            ; preds = %bb.ah, %._crit_edge.i
  %storemerge.i.i = phi i32 [ %i.kq, %bb.ah ], [ 0, %._crit_edge.i ]
  store i32 %storemerge.i.i, ptr %.phi.trans.insert.i, align 8, !tbaa !458
  br label %ma_gainer_set_gains.exit

ma_gainer_set_gains.exit:                         ; preds = %.loopexit387, %ma_gainer_reset_smoothing_time.exit.i
  %i.kr = call i32 @ma_gainer_process_pcm_frames(ptr noundef nonnull %i.in, ptr noundef %2, ptr noundef %2, i64 noundef %4) ; 0 uses
  %i.ks = fcmp ogt float %i.as, 0.000000e+00
  br i1 %i.ks, label %bb.ai, label %ma_doppler_pitch.exit

bb.ai:                                            ; preds = %ma_gainer_set_gains.exit
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 5 uses
  %i.kv = atomicrmw volatile xchg ptr %i.ku, i32 1 acquire, align 4
  %i.kw = icmp eq i32 %i.kv, 0
  br i1 %i.kw, label %.loopexit386, label %.preheader.i.i.i327

.loopexit.i.i.i328:                               ; preds = %.lr.ph.i.i.i336, %.preheader.i.i.i327
  %i.kx = atomicrmw volatile xchg ptr %i.ku, i32 1 acquire, align 4
  %i.ky = icmp eq i32 %i.kx, 0
  br i1 %i.ky, label %.loopexit386, label %.preheader.i.i.i327

.preheader.i.i.i327:                              ; preds = %bb.ai, %.loopexit.i.i.i328
  %i.kz = load atomic volatile i32, ptr %i.ku monotonic, align 4
  %i.la = icmp eq i32 %i.kz, 1
  br i1 %i.la, label %.lr.ph.i.i.i336, label %.loopexit.i.i.i328

.lr.ph.i.i.i336:                                  ; preds = %.preheader.i.i.i327, %.lr.ph.i.i.i336
  call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !143
  %i.lb = load atomic volatile i32, ptr %i.ku monotonic, align 4
  %i.lc = icmp eq i32 %i.lb, 1
  br i1 %i.lc, label %.lr.ph.i.i.i336, label %.loopexit.i.i.i328, !llvm.loop !1

.loopexit386:                                     ; preds = %.loopexit.i.i.i328, %bb.ai
  %.sroa.03.0.copyload.i.i330 = load <2 x float>, ptr %i.kt, align 8, !tbaa !349 ; 2 uses
  %.sroa.24.0..sroa_idx.i.i331 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.24.0.copyload.i.i332 = load float, ptr %.sroa.24.0..sroa_idx.i.i331, align 8, !tbaa !349
  store atomic volatile i32 0, ptr %i.ku release, align 4
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 5 uses
  %i.lf = atomicrmw volatile xchg ptr %i.le, i32 1 acquire, align 4
  %i.lg = icmp eq i32 %i.lf, 0
  br i1 %i.lg, label %.loopexit, label %.preheader.i.i.i337

.loopexit.i.i.i338:                               ; preds = %.lr.ph.i.i.i346, %.preheader.i.i.i337
  %i.lh = atomicrmw volatile xchg ptr %i.le, i32 1 acquire, align 4
  %i.li = icmp eq i32 %i.lh, 0
  br i1 %i.li, label %.loopexit, label %.preheader.i.i.i337

.preheader.i.i.i337:                              ; preds = %.loopexit386, %.loopexit.i.i.i338
  %i.lj = load atomic volatile i32, ptr %i.le monotonic, align 4
  %i.lk = icmp eq i32 %i.lj, 1
  br i1 %i.lk, label %.lr.ph.i.i.i346, label %.loopexit.i.i.i338

.lr.ph.i.i.i346:                                  ; preds = %.preheader.i.i.i337, %.lr.ph.i.i.i346
  call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !143
  %i.ll = load atomic volatile i32, ptr %i.le monotonic, align 4
  %i.lm = icmp eq i32 %i.ll, 1
  br i1 %i.lm, label %.lr.ph.i.i.i346, label %.loopexit.i.i.i338, !llvm.loop !1

.loopexit:                                        ; preds = %.loopexit.i.i.i338, %.loopexit386
  %.sroa.03.0.copyload.i.i340 = load <2 x float>, ptr %i.ld, align 8, !tbaa !349 ; 2 uses
  %.sroa.24.0..sroa_idx.i.i341 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.24.0.copyload.i.i342 = load float, ptr %.sroa.24.0..sroa_idx.i.i341, align 8, !tbaa !349
  store atomic volatile i32 0, ptr %i.le release, align 4
  %foldExtExtBinop469 = fsub <2 x float> %.sroa.03.0.copyload.i.i330, %.sroa.03.0.copyload.i.i340 ; 2 uses
  %i.ln = extractelement <2 x float> %foldExtExtBinop469, i64 0 ; 2 uses
  %foldExtExtBinop471 = fsub <2 x float> %.sroa.03.0.copyload.i.i330, %.sroa.03.0.copyload.i.i340 ; 2 uses
  %i.lo = extractelement <2 x float> %foldExtExtBinop471, i64 1 ; 2 uses
  %i.lp = fsub float %.sroa.24.0.copyload.i.i332, %.sroa.24.0.copyload.i.i342 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 5 uses
  %i.ls = atomicrmw volatile xchg ptr %i.lr, i32 1 acquire, align 4
  %i.lt = icmp eq i32 %i.ls, 0
  br i1 %i.lt, label %ma_spatializer_get_velocity.exit, label %.preheader.i.i.i354

.loopexit.i.i.i355:                               ; preds = %.lr.ph.i.i.i363, %.preheader.i.i.i354
  %i.lu = atomicrmw volatile xchg ptr %i.lr, i32 1 acquire, align 4
  %i.lv = icmp eq i32 %i.lu, 0
  br i1 %i.lv, label %ma_spatializer_get_velocity.exit, label %.preheader.i.i.i354

.preheader.i.i.i354:                              ; preds = %.loopexit, %.loopexit.i.i.i355
  %i.lw = load atomic volatile i32, ptr %i.lr monotonic, align 4
  %i.lx = icmp eq i32 %i.lw, 1
  br i1 %i.lx, label %.lr.ph.i.i.i363, label %.loopexit.i.i.i355

.lr.ph.i.i.i363:                                  ; preds = %.preheader.i.i.i354, %.lr.ph.i.i.i363
  call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !143
  %i.ly = load atomic volatile i32, ptr %i.lr monotonic, align 4
  %i.lz = icmp eq i32 %i.ly, 1
  br i1 %i.lz, label %.lr.ph.i.i.i363, label %.loopexit.i.i.i355, !llvm.loop !1

ma_spatializer_get_velocity.exit:                 ; preds = %.loopexit.i.i.i355, %.loopexit
  %.sroa.03.0.copyload.i.i357 = load <2 x float>, ptr %i.lq, align 8, !tbaa !349 ; 2 uses
  %.sroa.24.0..sroa_idx.i.i358 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.24.0.copyload.i.i359 = load float, ptr %.sroa.24.0..sroa_idx.i.i358, align 8, !tbaa !349
  store atomic volatile i32 0, ptr %i.lr release, align 4
  %i.ma = fmul float %i.lo, %i.lo
end_hunk_1
begin_hunk_2_@ma_dr_flac_read_pcm_frames_s32:bb.a
.preheader.i:                                     ; preds = %bb.c, %bb.d
  %i.j = load i8, ptr %i.f, align 1, !tbaa !728
  %i.k = tail call fastcc i32 @ma_dr_flac__read_next_flac_frame_header(ptr noundef %i.e, i8 noundef zeroext %i.j, ptr noundef %i.g)
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %ma_dr_flac__seek_forward_by_pcm_frames.exit, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.l = tail call fastcc i32 @ma_dr_flac__decode_flac_frame(ptr noundef nonnull %0)
  switch i32 %i.l, label %ma_dr_flac__seek_forward_by_pcm_frames.exit [
    i32 0, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.i
    i32 -100, label %.preheader.i
  ]

bb.e:                                             ; preds = %bb.c
  %i.m = zext i32 %i.h to i64                     ; 3 uses
  %i.n = icmp ult i64 %.01627.i, %i.m
  br i1 %i.n, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread33.i, label %bb.f

ma_dr_flac__read_and_decode_next_flac_frame.exit.thread33.i: ; preds = %bb.e
  %i.o = add i64 %.01627.i, %.028.i
  %i.p = trunc nuw i64 %.01627.i to i32
  %i.q = sub nuw i32 %i.h, %i.p
  store i32 %i.q, ptr %i.d, align 8, !tbaa !727
  br label %ma_dr_flac__seek_forward_by_pcm_frames.exit

bb.f:                                             ; preds = %bb.e
  %i.r = add i64 %.028.i, %i.m
  %i.s = sub nuw i64 %.01627.i, %i.m
  store i32 0, ptr %i.d, align 8, !tbaa !727
  br label %ma_dr_flac__read_and_decode_next_flac_frame.exit.i

ma_dr_flac__read_and_decode_next_flac_frame.exit.i: ; preds = %bb.d, %bb.f
  %.117.i = phi i64 [ %i.s, %bb.f ], [ %.01627.i, %bb.d ] ; 2 uses
  %.1.i111 = phi i64 [ %i.r, %bb.f ], [ %.028.i, %bb.d ] ; 2 uses
  %.not.i = icmp eq i64 %.117.i, 0
  br i1 %.not.i, label %ma_dr_flac__seek_forward_by_pcm_frames.exit, label %bb.c, !llvm.loop !59

ma_dr_flac__seek_forward_by_pcm_frames.exit:      ; preds = %ma_dr_flac__read_and_decode_next_flac_frame.exit.i, %.preheader.i, %bb.d, %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread33.i
  %.025.i = phi i64 [ %.028.i, %.preheader.i ], [ %i.o, %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread33.i ], [ %.028.i, %bb.d ], [ %.1.i111, %ma_dr_flac__read_and_decode_next_flac_frame.exit.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !729
  %i.v = add i64 %i.u, %.025.i
  store i64 %i.v, ptr %i.t, align 8, !tbaa !729
  br label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread

.lr.ph220:                                        ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 53 ; 6 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !728   ; 3 uses
  %i.y = zext i8 %i.x to i32                      ; 2 uses
  %i.z = sub nsw i32 32, %i.y                     ; 18 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 90
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.af = icmp ult i8 %i.x, 32
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 105 ; 13 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 13 uses
  %i.ai = sub nsw i32 31, %i.y                    ; 6 uses
  %i.aj = icmp eq i8 %i.x, 32
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ao = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %i.ap = shufflevector <4 x i32> %i.ao, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert662 = insertelement <2 x i32> poison, i32 %i.z, i64 0
  %i.aq = shufflevector <2 x i32> %broadcast.splatinsert662, <2 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert622 = insertelement <2 x i32> poison, i32 %i.ai, i64 0
  %i.ar = shufflevector <2 x i32> %broadcast.splatinsert622, <2 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph220, %ma_dr_flac__read_and_decode_next_flac_frame.exit
  %.078218 = phi i64 [ 0, %.lr.ph220 ], [ %.1, %ma_dr_flac__read_and_decode_next_flac_frame.exit ] ; 4 uses
  %.079215 = phi ptr [ %2, %.lr.ph220 ], [ %.180, %ma_dr_flac__read_and_decode_next_flac_frame.exit ] ; 49 uses
  %.081214 = phi i64 [ %1, %.lr.ph220 ], [ %.182, %ma_dr_flac__read_and_decode_next_flac_frame.exit ] ; 3 uses
  %i.as = load i32, ptr %i.aa, align 8, !tbaa !727 ; 3 uses
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %.preheader242, label %bb.i

.preheader242:                                    ; preds = %bb.g, %bb.h
  %i.au = load i8, ptr %i.w, align 1, !tbaa !728
  %i.av = tail call fastcc i32 @ma_dr_flac__read_next_flac_frame_header(ptr noundef %i.am, i8 noundef zeroext %i.au, ptr noundef %i.an)
  %.not.i112 = icmp eq i32 %i.av, 0
  br i1 %.not.i112, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread, label %bb.h

bb.h:                                             ; preds = %.preheader242
  %i.aw = tail call fastcc i32 @ma_dr_flac__decode_flac_frame(ptr noundef nonnull %0)
  switch i32 %i.aw, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread [
    i32 0, label %ma_dr_flac__read_and_decode_next_flac_frame.exit
    i32 -100, label %.preheader242
  ]

bb.i:                                             ; preds = %bb.g
  %i.ax = load i8, ptr %i.ab, align 2, !tbaa !730 ; 3 uses
  %i.ay = sext i8 %i.ax to i64                    ; 2 uses
  %i.az = getelementptr inbounds i8, ptr @__const.ma_dr_flac__get_channel_count_from_channel_assignment.lookup, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !119 ; 3 uses
  %i.bb = load i16, ptr %i.ac, align 8, !tbaa !731
  %i.bc = zext i16 %i.bb to i32
  %i.bd = sub i32 %i.bc, %i.as
  %i.be = zext i32 %i.bd to i64                   ; 23 uses
  %i.bf = zext i32 %i.as to i64
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.081214, i64 %i.bf) ; 50 uses
  %i.bg = shl nuw i64 1, %i.ay
  %i.bh = and i64 %i.bg, 1794
  %.not115 = icmp eq i64 %i.bh, 0
  br i1 %.not115, label %.preheader.preheader, label %bb.j

.preheader.preheader:                             ; preds = %bb.i
  %i.bi = zext i8 %i.ba to i64
  %i.bj = tail call i8 @llvm.umax.i8(i8 %i.ba, i8 1) ; 2 uses
  %wide.trip.count = zext i8 %i.bj to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bk = icmp eq i8 %i.ax, 0
  %unroll_iter = and i64 %wide.trip.count, 254
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod698 = trunc i8 %i.bj to i1
  br label %.preheader

bb.j:                                             ; preds = %bb.i
  %i.bl = load ptr, ptr %i.ad, align 8, !tbaa !733 ; 19 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.be ; 39 uses
  %i.bn = load ptr, ptr %i.ae, align 8, !tbaa !733 ; 19 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.be ; 39 uses
  %.b.i92 = load i1, ptr @ma_dr_flac__gIsSSE2Supported, align 4 ; 4 uses
  switch i8 %i.ax, label %bb.aa [
    i8 8, label %bb.k
    i8 9, label %bb.o
    i8 10, label %bb.s
  ]

bb.k:                                             ; preds = %bb.j
  br i1 %.b.i92, label %bb.l, label %._crit_edge278

._crit_edge278:                                   ; preds = %bb.k
  %.pre279 = load i8, ptr %i.ag, align 1, !tbaa !734
  %.pre281 = load i8, ptr %i.ah, align 1, !tbaa !734
  br label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bp = load i8, ptr %i.w, align 1, !tbaa !728
  %i.bq = icmp ult i8 %i.bp, 25
  %.pre280 = load i8, ptr %i.ag, align 1, !tbaa !734 ; 2 uses
  %.pre282 = load i8, ptr %i.ah, align 1, !tbaa !734 ; 2 uses
  br i1 %i.bq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.br = lshr i64 %spec.select, 2                ; 4 uses
  %i.bs = zext i8 %.pre280 to i32
  %i.bt = add nsw i32 %i.z, %i.bs                 ; 3 uses
  %i.bu = zext i8 %.pre282 to i32
  %i.bv = add nsw i32 %i.z, %i.bu                 ; 3 uses
  %.not234 = icmp eq i64 %i.br, 0
  br i1 %.not234, label %._crit_edge191, label %.lr.ph190

.lr.ph190:                                        ; preds = %bb.m, %.lr.ph190
  %.0.i188 = phi i64 [ %i.ch, %.lr.ph190 ], [ 0, %bb.m ] ; 4 uses
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %.0.i188
  %i.bx = load <4 x i32>, ptr %i.bw, align 1, !tbaa !119
  %i.by = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.bx, i32 range(i32 -232, 288) %i.bt) ; 3 uses
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %.0.i188
  %i.ca = load <4 x i32>, ptr %i.bz, align 1, !tbaa !119
  %i.cb = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.ca, i32 range(i32 -232, 288) %i.bv)
  %i.cc = sub <4 x i32> %i.by, %i.cb              ; 2 uses
  %.idx.i = shl nuw nsw i64 %.0.i188, 5
  %i.cd = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx.i ; 2 uses
  %i.ce = shufflevector <4 x i32> %i.by, <4 x i32> %i.cc, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x i32> %i.ce, ptr %i.cd, align 1, !tbaa !119
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cg = shufflevector <4 x i32> %i.by, <4 x i32> %i.cc, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x i32> %i.cg, ptr %i.cf, align 1, !tbaa !119
  %i.ch = add nuw nsw i64 %.0.i188, 1             ; 2 uses
  %exitcond267.not = icmp eq i64 %i.ch, %i.br
  br i1 %exitcond267.not, label %._crit_edge191, label %.lr.ph190, !llvm.loop !2330

._crit_edge191:                                   ; preds = %.lr.ph190, %bb.m
  %i.ci = and i64 %spec.select, 4294967292        ; 7 uses
  %.not235 = icmp eq i64 %i.ci, %spec.select
  br i1 %.not235, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %.lr.ph194.preheader

.lr.ph194.preheader:                              ; preds = %._crit_edge191
  %i.cj = or disjoint i64 %i.ci, 1
  %i.ck = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.cj) ; 4 uses
  %i.cl = sub nsw i64 %i.ck, %i.ci                ; 2 uses
  %min.iters.check417 = icmp ult i64 %i.cl, 8
  br i1 %min.iters.check417, label %.lr.ph194.preheader684, label %vector.memcheck418

vector.memcheck418:                               ; preds = %.lr.ph194.preheader
  %i.cm = shl nuw nsw i64 %i.br, 5
  %i.cn = getelementptr i8, ptr %.079215, i64 %i.cm ; 2 uses
  %i.co = shl nuw nsw i64 %i.ck, 3
  %i.cp = getelementptr i8, ptr %.079215, i64 %i.co ; 2 uses
  %i.cq = shl nuw nsw i64 %i.br, 4
  %i.cr = shl nuw nsw i64 %i.be, 2
  %i.cs = add nuw nsw i64 %i.cq, %i.cr            ; 2 uses
  %i.ct = getelementptr i8, ptr %i.bl, i64 %i.cs
  %i.cu = add nuw nsw i64 %i.ck, %i.be
  %i.cv = shl nuw nsw i64 %i.cu, 2                ; 2 uses
  %i.cw = getelementptr i8, ptr %i.bl, i64 %i.cv
  %3 = getelementptr i8, ptr %i.bn, i64 %i.cs
  %4 = getelementptr i8, ptr %i.bn, i64 %i.cv
  %bound0419 = icmp ult ptr %i.cn, %i.cw
  %bound1420 = icmp ult ptr %i.ct, %i.cp
  %found.conflict421 = and i1 %bound0419, %bound1420
  %bound0422 = icmp ult ptr %i.cn, %4
  %bound1423 = icmp ult ptr %3, %i.cp
  %found.conflict424 = and i1 %bound0422, %bound1423
  %conflict.rdx425 = or i1 %found.conflict421, %found.conflict424
  br i1 %conflict.rdx425, label %.lr.ph194.preheader684, label %vector.ph426

vector.ph426:                                     ; preds = %vector.memcheck418
  %i.cx = and i64 %i.ck, 1                        ; 2 uses
  %n.vec427 = sub nsw i64 %i.cl, %i.cx            ; 2 uses
  %i.cy = add nsw i64 %i.ci, %n.vec427
  %broadcast.splatinsert428 = insertelement <2 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat429 = shufflevector <2 x i32> %broadcast.splatinsert428, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert430 = insertelement <2 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat431 = shufflevector <2 x i32> %broadcast.splatinsert430, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body432

vector.body432:                                   ; preds = %vector.body432, %vector.ph426
  %index433 = phi i64 [ 0, %vector.ph426 ], [ %index.next437, %vector.body432 ] ; 2 uses
  %i.cz = add nuw i64 %i.ci, %index433            ; 3 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.cz
  %wide.load434 = load <2 x i32>, ptr %i.da, align 4, !tbaa !118, !alias.scope !2397
  %i.db = shl <2 x i32> %wide.load434, %broadcast.splat429 ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.cz
  %wide.load435 = load <2 x i32>, ptr %i.dc, align 4, !tbaa !118, !alias.scope !2398
  %i.dd = shl <2 x i32> %wide.load435, %broadcast.splat431
  %i.de = sub <2 x i32> %i.db, %i.dd
  %i.df = shl nuw nsw i64 %i.cz, 3
  %i.dg = getelementptr inbounds nuw i8, ptr %.079215, i64 %i.df
  %interleaved.vec436 = shufflevector <2 x i32> %i.db, <2 x i32> %i.de, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec436, ptr %i.dg, align 4, !tbaa !118, !alias.scope !2399, !noalias !2400
  %index.next437 = add nuw i64 %index433, 2       ; 2 uses
  %i.dh = icmp eq i64 %index.next437, %n.vec427
  br i1 %i.dh, label %middle.block438, label %vector.body432, !llvm.loop !2335

middle.block438:                                  ; preds = %vector.body432
  %cmp.n439 = icmp eq i64 %i.cx, 0
  br i1 %cmp.n439, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %.lr.ph194.preheader684

.lr.ph194.preheader684:                           ; preds = %vector.memcheck418, %.lr.ph194.preheader, %middle.block438
  %.1.i192.ph = phi i64 [ %i.ci, %vector.memcheck418 ], [ %i.ci, %.lr.ph194.preheader ], [ %i.cy, %middle.block438 ]
  br label %.lr.ph194

.lr.ph194:                                        ; preds = %.lr.ph194.preheader684, %.lr.ph194
  %.1.i192 = phi i64 [ %i.dr, %.lr.ph194 ], [ %.1.i192.ph, %.lr.ph194.preheader684 ] ; 4 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.1.i192
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !118
  %i.dk = shl i32 %i.dj, %i.bt                    ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.1.i192
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !118
  %i.dn = shl i32 %i.dm, %i.bv
  %i.do = sub i32 %i.dk, %i.dn
  %.idx125 = shl nuw nsw i64 %.1.i192, 3
  %i.dp = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx125 ; 2 uses
  store i32 %i.dk, ptr %i.dp, align 4, !tbaa !118
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  store i32 %i.do, ptr %i.dq, align 4, !tbaa !118
  %i.dr = add nuw nsw i64 %.1.i192, 1             ; 2 uses
  %i.ds = icmp samesign ult i64 %i.dr, %spec.select
  br i1 %i.ds, label %.lr.ph194, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, !llvm.loop !2336

bb.n:                                             ; preds = %._crit_edge278, %bb.l
  %i.dt = phi i8 [ %.pre281, %._crit_edge278 ], [ %.pre282, %bb.l ]
  %i.du = phi i8 [ %.pre279, %._crit_edge278 ], [ %.pre280, %bb.l ]
  %i.dv = lshr i64 %spec.select, 2                ; 4 uses
  %i.dw = zext i8 %i.du to i32
  %i.dx = add nsw i32 %i.z, %i.dw                 ; 6 uses
  %i.dy = zext i8 %i.dt to i32
  %i.dz = add nsw i32 %i.z, %i.dy                 ; 6 uses
  %.not232 = icmp eq i64 %i.dv, 0
  br i1 %.not232, label %._crit_edge184, label %.lr.ph183

.lr.ph183:                                        ; preds = %bb.n, %.lr.ph183
  %.0.i93181 = phi i64 [ %i.fo, %.lr.ph183 ], [ 0, %bb.n ] ; 3 uses
  %i.ea = shl nuw nsw i64 %.0.i93181, 2           ; 5 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !118
  %i.ed = shl i32 %i.ec, %i.dx                    ; 2 uses
  %i.ee = or disjoint i64 %i.ea, 1                ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !118
  %i.eh = shl i32 %i.eg, %i.dx                    ; 2 uses
  %i.ei = or disjoint i64 %i.ea, 2                ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !118
  %i.el = shl i32 %i.ek, %i.dx                    ; 2 uses
  %i.em = or disjoint i64 %i.ea, 3                ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !118
  %i.ep = shl i32 %i.eo, %i.dx                    ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ea
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !118
  %i.es = shl i32 %i.er, %i.dz
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ee
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !118
  %i.ev = shl i32 %i.eu, %i.dz
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ei
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !118
  %i.ey = shl i32 %i.ex, %i.dz
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.em
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !118
  %i.fb = shl i32 %i.fa, %i.dz
  %i.fc = sub i32 %i.ed, %i.es
  %i.fd = sub i32 %i.eh, %i.ev
  %i.fe = sub i32 %i.el, %i.ey
  %i.ff = sub i32 %i.ep, %i.fb
  %.idx124 = shl nuw nsw i64 %.0.i93181, 5
  %i.fg = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx124 ; 8 uses
  store i32 %i.ed, ptr %i.fg, align 4, !tbaa !118
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  store i32 %i.fc, ptr %i.fh, align 4, !tbaa !118
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store i32 %i.eh, ptr %i.fi, align 4, !tbaa !118
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 12
  store i32 %i.fd, ptr %i.fj, align 4, !tbaa !118
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store i32 %i.el, ptr %i.fk, align 4, !tbaa !118
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 20
  store i32 %i.fe, ptr %i.fl, align 4, !tbaa !118
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  store i32 %i.ep, ptr %i.fm, align 4, !tbaa !118
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fg, i64 28
  store i32 %i.ff, ptr %i.fn, align 4, !tbaa !118
  %i.fo = add nuw nsw i64 %.0.i93181, 1           ; 2 uses
  %exitcond266.not = icmp eq i64 %i.fo, %i.dv
  br i1 %exitcond266.not, label %._crit_edge184, label %.lr.ph183, !llvm.loop !2337

._crit_edge184:                                   ; preds = %.lr.ph183, %bb.n
  %i.fp = and i64 %spec.select, 4294967292        ; 7 uses
  %.not233 = icmp eq i64 %i.fp, %spec.select
  br i1 %.not233, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %.lr.ph187.preheader

.lr.ph187.preheader:                              ; preds = %._crit_edge184
  %i.fq = or disjoint i64 %i.fp, 1
  %i.fr = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.fq) ; 4 uses
  %i.fs = sub nsw i64 %i.fr, %i.fp                ; 2 uses
  %min.iters.check455 = icmp ult i64 %i.fs, 8
  br i1 %min.iters.check455, label %.lr.ph187.preheader686, label %vector.memcheck456

vector.memcheck456:                               ; preds = %.lr.ph187.preheader
  %i.ft = shl nuw nsw i64 %i.dv, 5
  %i.fu = getelementptr i8, ptr %.079215, i64 %i.ft ; 2 uses
  %i.fv = shl nuw nsw i64 %i.fr, 3
  %i.fw = getelementptr i8, ptr %.079215, i64 %i.fv ; 2 uses
  %i.fx = shl nuw nsw i64 %i.dv, 4
  %i.fy = shl nuw nsw i64 %i.be, 2
  %i.fz = add nuw nsw i64 %i.fx, %i.fy            ; 2 uses
  %i.ga = getelementptr i8, ptr %i.bl, i64 %i.fz
  %i.gb = add nuw nsw i64 %i.fr, %i.be
  %i.gc = shl nuw nsw i64 %i.gb, 2                ; 2 uses
  %i.gd = getelementptr i8, ptr %i.bl, i64 %i.gc
  %5 = getelementptr i8, ptr %i.bn, i64 %i.fz
  %6 = getelementptr i8, ptr %i.bn, i64 %i.gc
  %bound0457 = icmp ult ptr %i.fu, %i.gd
  %bound1458 = icmp ult ptr %i.ga, %i.fw
  %found.conflict459 = and i1 %bound0457, %bound1458
  %bound0460 = icmp ult ptr %i.fu, %6
  %bound1461 = icmp ult ptr %5, %i.fw
  %found.conflict462 = and i1 %bound0460, %bound1461
  %conflict.rdx463 = or i1 %found.conflict459, %found.conflict462
  br i1 %conflict.rdx463, label %.lr.ph187.preheader686, label %vector.ph464

vector.ph464:                                     ; preds = %vector.memcheck456
  %i.ge = and i64 %i.fr, 1                        ; 2 uses
  %n.vec465 = sub nsw i64 %i.fs, %i.ge            ; 2 uses
  %i.gf = add nsw i64 %i.fp, %n.vec465
  %broadcast.splatinsert466 = insertelement <2 x i32> poison, i32 %i.dx, i64 0
  %broadcast.splat467 = shufflevector <2 x i32> %broadcast.splatinsert466, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert468 = insertelement <2 x i32> poison, i32 %i.dz, i64 0
  %broadcast.splat469 = shufflevector <2 x i32> %broadcast.splatinsert468, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body470

vector.body470:                                   ; preds = %vector.body470, %vector.ph464
  %index471 = phi i64 [ 0, %vector.ph464 ], [ %index.next475, %vector.body470 ] ; 2 uses
  %i.gg = add nuw i64 %i.fp, %index471            ; 3 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.gg
  %wide.load472 = load <2 x i32>, ptr %i.gh, align 4, !tbaa !118, !alias.scope !2401
  %i.gi = shl <2 x i32> %wide.load472, %broadcast.splat467 ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.gg
  %wide.load473 = load <2 x i32>, ptr %i.gj, align 4, !tbaa !118, !alias.scope !2402
  %i.gk = shl <2 x i32> %wide.load473, %broadcast.splat469
  %i.gl = sub <2 x i32> %i.gi, %i.gk
  %i.gm = shl nuw nsw i64 %i.gg, 3
  %i.gn = getelementptr inbounds nuw i8, ptr %.079215, i64 %i.gm
  %interleaved.vec474 = shufflevector <2 x i32> %i.gi, <2 x i32> %i.gl, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec474, ptr %i.gn, align 4, !tbaa !118, !alias.scope !2403, !noalias !2404
  %index.next475 = add nuw i64 %index471, 2       ; 2 uses
  %i.go = icmp eq i64 %index.next475, %n.vec465
  br i1 %i.go, label %middle.block476, label %vector.body470, !llvm.loop !2342

middle.block476:                                  ; preds = %vector.body470
  %cmp.n477 = icmp eq i64 %i.ge, 0
  br i1 %cmp.n477, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %.lr.ph187.preheader686

.lr.ph187.preheader686:                           ; preds = %vector.memcheck456, %.lr.ph187.preheader, %middle.block476
  %.1.i94185.ph = phi i64 [ %i.fp, %vector.memcheck456 ], [ %i.fp, %.lr.ph187.preheader ], [ %i.gf, %middle.block476 ]
  br label %.lr.ph187

.lr.ph187:                                        ; preds = %.lr.ph187.preheader686, %.lr.ph187
  %.1.i94185 = phi i64 [ %i.gy, %.lr.ph187 ], [ %.1.i94185.ph, %.lr.ph187.preheader686 ] ; 4 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.1.i94185
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !118
  %i.gr = shl i32 %i.gq, %i.dx                    ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.1.i94185
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !118
  %i.gu = shl i32 %i.gt, %i.dz
  %i.gv = sub i32 %i.gr, %i.gu
  %.idx123 = shl nuw nsw i64 %.1.i94185, 3
  %i.gw = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx123 ; 2 uses
  store i32 %i.gr, ptr %i.gw, align 4, !tbaa !118
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  store i32 %i.gv, ptr %i.gx, align 4, !tbaa !118
  %i.gy = add nuw nsw i64 %.1.i94185, 1           ; 2 uses
  %i.gz = icmp samesign ult i64 %i.gy, %spec.select
  br i1 %i.gz, label %.lr.ph187, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, !llvm.loop !2343

bb.o:                                             ; preds = %bb.j
  br i1 %.b.i92, label %bb.p, label %._crit_edge274

._crit_edge274:                                   ; preds = %bb.o
  %.pre = load i8, ptr %i.ag, align 1, !tbaa !734
  %.pre276 = load i8, ptr %i.ah, align 1, !tbaa !734
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ha = load i8, ptr %i.w, align 1, !tbaa !728
  %i.hb = icmp ult i8 %i.ha, 25
  %.pre275 = load i8, ptr %i.ag, align 1, !tbaa !734 ; 2 uses
  %.pre277 = load i8, ptr %i.ah, align 1, !tbaa !734 ; 2 uses
  br i1 %i.hb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.hc = lshr i64 %spec.select, 2                ; 4 uses
  %i.hd = zext i8 %.pre275 to i32
  %i.he = add nsw i32 %i.z, %i.hd                 ; 3 uses
  %i.hf = zext i8 %.pre277 to i32
  %i.hg = add nsw i32 %i.z, %i.hf                 ; 3 uses
  %.not230 = icmp eq i64 %i.hc, 0
  br i1 %.not230, label %._crit_edge177, label %.lr.ph176

.lr.ph176:                                        ; preds = %bb.q, %.lr.ph176
  %.0.i95174 = phi i64 [ %i.hs, %.lr.ph176 ], [ 0, %bb.q ] ; 4 uses
  %i.hh = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %.0.i95174
  %i.hi = load <4 x i32>, ptr %i.hh, align 1, !tbaa !119
  %i.hj = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.hi, i32 range(i32 -232, 288) %i.he)
  %i.hk = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %.0.i95174
  %i.hl = load <4 x i32>, ptr %i.hk, align 1, !tbaa !119
  %i.hm = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.hl, i32 range(i32 -232, 288) %i.hg) ; 3 uses
  %i.hn = add <4 x i32> %i.hm, %i.hj              ; 2 uses
  %.idx.i97 = shl nuw nsw i64 %.0.i95174, 5
  %i.ho = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx.i97 ; 2 uses
  %i.hp = shufflevector <4 x i32> %i.hn, <4 x i32> %i.hm, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x i32> %i.hp, ptr %i.ho, align 1, !tbaa !119
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hr = shufflevector <4 x i32> %i.hn, <4 x i32> %i.hm, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x i32> %i.hr, ptr %i.hq, align 1, !tbaa !119
  %i.hs = add nuw nsw i64 %.0.i95174, 1           ; 2 uses
  %exitcond265.not = icmp eq i64 %i.hs, %i.hc
  br i1 %exitcond265.not, label %._crit_edge177, label %.lr.ph176, !llvm.loop !2344

._crit_edge177:                                   ; preds = %.lr.ph176, %bb.q
  %i.ht = and i64 %spec.select, 4294967292        ; 7 uses
  %.not231 = icmp eq i64 %i.ht, %spec.select
  br i1 %.not231, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %.lr.ph180.preheader

.lr.ph180.preheader:                              ; preds = %._crit_edge177
  %i.hu = or disjoint i64 %i.ht, 1
  %i.hv = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.hu) ; 4 uses
  %i.hw = sub nsw i64 %i.hv, %i.ht                ; 2 uses
  %min.iters.check493 = icmp ult i64 %i.hw, 8
  br i1 %min.iters.check493, label %.lr.ph180.preheader688, label %vector.memcheck494

vector.memcheck494:                               ; preds = %.lr.ph180.preheader
  %i.hx = shl nuw nsw i64 %i.hc, 5
  %i.hy = getelementptr i8, ptr %.079215, i64 %i.hx ; 2 uses
  %i.hz = shl nuw nsw i64 %i.hv, 3
  %i.ia = getelementptr i8, ptr %.079215, i64 %i.hz ; 2 uses
  %i.ib = shl nuw nsw i64 %i.hc, 4
  %i.ic = shl nuw nsw i64 %i.be, 2
  %i.id = add nuw nsw i64 %i.ib, %i.ic            ; 2 uses
  %i.ie = getelementptr i8, ptr %i.bl, i64 %i.id
  %i.if = add nuw nsw i64 %i.hv, %i.be
  %i.ig = shl nuw nsw i64 %i.if, 2                ; 2 uses
  %i.ih = getelementptr i8, ptr %i.bl, i64 %i.ig
  %7 = getelementptr i8, ptr %i.bn, i64 %i.id
  %8 = getelementptr i8, ptr %i.bn, i64 %i.ig
  %bound0495 = icmp ult ptr %i.hy, %i.ih
  %bound1496 = icmp ult ptr %i.ie, %i.ia
  %found.conflict497 = and i1 %bound0495, %bound1496
  %bound0498 = icmp ult ptr %i.hy, %8
  %bound1499 = icmp ult ptr %7, %i.ia
  %found.conflict500 = and i1 %bound0498, %bound1499
  %conflict.rdx501 = or i1 %found.conflict497, %found.conflict500
  br i1 %conflict.rdx501, label %.lr.ph180.preheader688, label %vector.ph502

vector.ph502:                                     ; preds = %vector.memcheck494
  %i.ii = and i64 %i.hv, 1                        ; 2 uses
  %n.vec503 = sub nsw i64 %i.hw, %i.ii            ; 2 uses
  %i.ij = add nsw i64 %i.ht, %n.vec503
  %broadcast.splatinsert504 = insertelement <2 x i32> poison, i32 %i.he, i64 0
  %broadcast.splat505 = shufflevector <2 x i32> %broadcast.splatinsert504, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert506 = insertelement <2 x i32> poison, i32 %i.hg, i64 0
  %broadcast.splat507 = shufflevector <2 x i32> %broadcast.splatinsert506, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body508

vector.body508:                                   ; preds = %vector.body508, %vector.ph502
  %index509 = phi i64 [ 0, %vector.ph502 ], [ %index.next513, %vector.body508 ] ; 2 uses
  %i.ik = add nuw i64 %i.ht, %index509            ; 3 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.ik
  %wide.load510 = load <2 x i32>, ptr %i.il, align 4, !tbaa !118, !alias.scope !2405
  %i.im = shl <2 x i32> %wide.load510, %broadcast.splat505
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ik
  %wide.load511 = load <2 x i32>, ptr %i.in, align 4, !tbaa !118, !alias.scope !2406
  %i.io = shl <2 x i32> %wide.load511, %broadcast.splat507 ; 2 uses
  %i.ip = add <2 x i32> %i.io, %i.im
  %i.iq = shl nuw nsw i64 %i.ik, 3
  %i.ir = getelementptr inbounds nuw i8, ptr %.079215, i64 %i.iq
  %interleaved.vec512 = shufflevector <2 x i32> %i.ip, <2 x i32> %i.io, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec512, ptr %i.ir, align 4, !tbaa !118, !alias.scope !2407, !noalias !2408
  %index.next513 = add nuw i64 %index509, 2       ; 2 uses
  %i.is = icmp eq i64 %index.next513, %n.vec503
  br i1 %i.is, label %middle.block514, label %vector.body508, !llvm.loop !2349

middle.block514:                                  ; preds = %vector.body508
  %cmp.n515 = icmp eq i64 %i.ii, 0
  br i1 %cmp.n515, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %.lr.ph180.preheader688

.lr.ph180.preheader688:                           ; preds = %vector.memcheck494, %.lr.ph180.preheader, %middle.block514
  %.1.i96178.ph = phi i64 [ %i.ht, %vector.memcheck494 ], [ %i.ht, %.lr.ph180.preheader ], [ %i.ij, %middle.block514 ]
  br label %.lr.ph180

.lr.ph180:                                        ; preds = %.lr.ph180.preheader688, %.lr.ph180
  %.1.i96178 = phi i64 [ %i.jc, %.lr.ph180 ], [ %.1.i96178.ph, %.lr.ph180.preheader688 ] ; 4 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.1.i96178
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !118
  %i.iv = shl i32 %i.iu, %i.he
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.1.i96178
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !118
  %i.iy = shl i32 %i.ix, %i.hg                    ; 2 uses
  %i.iz = add i32 %i.iy, %i.iv
  %.idx122 = shl nuw nsw i64 %.1.i96178, 3
  %i.ja = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx122 ; 2 uses
  store i32 %i.iz, ptr %i.ja, align 4, !tbaa !118
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 4
  store i32 %i.iy, ptr %i.jb, align 4, !tbaa !118
  %i.jc = add nuw nsw i64 %.1.i96178, 1           ; 2 uses
  %i.jd = icmp samesign ult i64 %i.jc, %spec.select
  br i1 %i.jd, label %.lr.ph180, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, !llvm.loop !2350

bb.r:                                             ; preds = %._crit_edge274, %bb.p
  %i.je = phi i8 [ %.pre276, %._crit_edge274 ], [ %.pre277, %bb.p ]
  %i.jf = phi i8 [ %.pre, %._crit_edge274 ], [ %.pre275, %bb.p ]
  %i.jg = lshr i64 %spec.select, 2                ; 4 uses
  %i.jh = zext i8 %i.jf to i32
  %i.ji = add nsw i32 %i.z, %i.jh                 ; 6 uses
  %i.jj = zext i8 %i.je to i32
  %i.jk = add nsw i32 %i.z, %i.jj                 ; 6 uses
  %.not228 = icmp eq i64 %i.jg, 0
  br i1 %.not228, label %._crit_edge170, label %.lr.ph169

.lr.ph169:                                        ; preds = %bb.r, %.lr.ph169
  %.0.i98167 = phi i64 [ %i.kz, %.lr.ph169 ], [ 0, %bb.r ] ; 3 uses
  %i.jl = shl nuw nsw i64 %.0.i98167, 2           ; 5 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.jl
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !118
  %i.jo = shl i32 %i.jn, %i.ji
  %i.jp = or disjoint i64 %i.jl, 1                ; 2 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.jp
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !118
  %i.js = shl i32 %i.jr, %i.ji
  %i.jt = or disjoint i64 %i.jl, 2                ; 2 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.jt
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !118
  %i.jw = shl i32 %i.jv, %i.ji
  %i.jx = or disjoint i64 %i.jl, 3                ; 2 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.jx
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !118
  %i.ka = shl i32 %i.jz, %i.ji
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.jl
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !118
  %i.kd = shl i32 %i.kc, %i.jk                    ; 2 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.jp
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !118
  %i.kg = shl i32 %i.kf, %i.jk                    ; 2 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.jt
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !118
  %i.kj = shl i32 %i.ki, %i.jk                    ; 2 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.jx
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !118
  %i.km = shl i32 %i.kl, %i.jk                    ; 2 uses
  %i.kn = add i32 %i.kd, %i.jo
  %i.ko = add i32 %i.kg, %i.js
  %i.kp = add i32 %i.kj, %i.jw
  %i.kq = add i32 %i.km, %i.ka
  %.idx121 = shl nuw nsw i64 %.0.i98167, 5
  %i.kr = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx121 ; 8 uses
  store i32 %i.kn, ptr %i.kr, align 4, !tbaa !118
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 4
  store i32 %i.kd, ptr %i.ks, align 4, !tbaa !118
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  store i32 %i.ko, ptr %i.kt, align 4, !tbaa !118
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 12
  store i32 %i.kg, ptr %i.ku, align 4, !tbaa !118
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  store i32 %i.kp, ptr %i.kv, align 4, !tbaa !118
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kr, i64 20
  store i32 %i.kj, ptr %i.kw, align 4, !tbaa !118
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kr, i64 24
  store i32 %i.kq, ptr %i.kx, align 4, !tbaa !118
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kr, i64 28
  store i32 %i.km, ptr %i.ky, align 4, !tbaa !118
  %i.kz = add nuw nsw i64 %.0.i98167, 1           ; 2 uses
  %exitcond264.not = icmp eq i64 %i.kz, %i.jg
  br i1 %exitcond264.not, label %._crit_edge170, label %.lr.ph169, !llvm.loop !2351

._crit_edge170:                                   ; preds = %.lr.ph169, %bb.r
  %i.la = and i64 %spec.select, 4294967292        ; 7 uses
  %.not229 = icmp eq i64 %i.la, %spec.select
  br i1 %.not229, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %.lr.ph173.preheader

.lr.ph173.preheader:                              ; preds = %._crit_edge170
  %i.lb = or disjoint i64 %i.la, 1
  %i.lc = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.lb) ; 4 uses
  %i.ld = sub nsw i64 %i.lc, %i.la                ; 2 uses
  %min.iters.check531 = icmp ult i64 %i.ld, 8
  br i1 %min.iters.check531, label %.lr.ph173.preheader690, label %vector.memcheck532

vector.memcheck532:                               ; preds = %.lr.ph173.preheader
  %i.le = shl nuw nsw i64 %i.jg, 5
  %i.lf = getelementptr i8, ptr %.079215, i64 %i.le ; 2 uses
  %i.lg = shl nuw nsw i64 %i.lc, 3
  %i.lh = getelementptr i8, ptr %.079215, i64 %i.lg ; 2 uses
  %i.li = shl nuw nsw i64 %i.jg, 4
  %i.lj = shl nuw nsw i64 %i.be, 2
  %i.lk = add nuw nsw i64 %i.li, %i.lj            ; 2 uses
  %i.ll = getelementptr i8, ptr %i.bl, i64 %i.lk
  %i.lm = add nuw nsw i64 %i.lc, %i.be
  %i.ln = shl nuw nsw i64 %i.lm, 2                ; 2 uses
  %i.lo = getelementptr i8, ptr %i.bl, i64 %i.ln
  %9 = getelementptr i8, ptr %i.bn, i64 %i.lk
  %10 = getelementptr i8, ptr %i.bn, i64 %i.ln
  %bound0533 = icmp ult ptr %i.lf, %i.lo
  %bound1534 = icmp ult ptr %i.ll, %i.lh
  %found.conflict535 = and i1 %bound0533, %bound1534
  %bound0536 = icmp ult ptr %i.lf, %10
  %bound1537 = icmp ult ptr %9, %i.lh
  %found.conflict538 = and i1 %bound0536, %bound1537
  %conflict.rdx539 = or i1 %found.conflict535, %found.conflict538
  br i1 %conflict.rdx539, label %.lr.ph173.preheader690, label %vector.ph540

vector.ph540:                                     ; preds = %vector.memcheck532
  %i.lp = and i64 %i.lc, 1                        ; 2 uses
  %n.vec541 = sub nsw i64 %i.ld, %i.lp            ; 2 uses
  %i.lq = add nsw i64 %i.la, %n.vec541
  %broadcast.splatinsert542 = insertelement <2 x i32> poison, i32 %i.ji, i64 0
  %broadcast.splat543 = shufflevector <2 x i32> %broadcast.splatinsert542, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert544 = insertelement <2 x i32> poison, i32 %i.jk, i64 0
  %broadcast.splat545 = shufflevector <2 x i32> %broadcast.splatinsert544, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body546

vector.body546:                                   ; preds = %vector.body546, %vector.ph540
  %index547 = phi i64 [ 0, %vector.ph540 ], [ %index.next551, %vector.body546 ] ; 2 uses
  %i.lr = add nuw i64 %i.la, %index547            ; 3 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.lr
  %wide.load548 = load <2 x i32>, ptr %i.ls, align 4, !tbaa !118, !alias.scope !2409
  %i.lt = shl <2 x i32> %wide.load548, %broadcast.splat543
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.lr
  %wide.load549 = load <2 x i32>, ptr %i.lu, align 4, !tbaa !118, !alias.scope !2410
  %i.lv = shl <2 x i32> %wide.load549, %broadcast.splat545 ; 2 uses
  %i.lw = add <2 x i32> %i.lv, %i.lt
  %i.lx = shl nuw nsw i64 %i.lr, 3
  %i.ly = getelementptr inbounds nuw i8, ptr %.079215, i64 %i.lx
  %interleaved.vec550 = shufflevector <2 x i32> %i.lw, <2 x i32> %i.lv, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec550, ptr %i.ly, align 4, !tbaa !118, !alias.scope !2411, !noalias !2412
  %index.next551 = add nuw i64 %index547, 2       ; 2 uses
  %i.lz = icmp eq i64 %index.next551, %n.vec541
  br i1 %i.lz, label %middle.block552, label %vector.body546, !llvm.loop !2356

middle.block552:                                  ; preds = %vector.body546
  %cmp.n553 = icmp eq i64 %i.lp, 0
  br i1 %cmp.n553, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %.lr.ph173.preheader690

.lr.ph173.preheader690:                           ; preds = %vector.memcheck532, %.lr.ph173.preheader, %middle.block552
  %.1.i99171.ph = phi i64 [ %i.la, %vector.memcheck532 ], [ %i.la, %.lr.ph173.preheader ], [ %i.lq, %middle.block552 ]
  br label %.lr.ph173

.lr.ph173:                                        ; preds = %.lr.ph173.preheader690, %.lr.ph173
  %.1.i99171 = phi i64 [ %i.mj, %.lr.ph173 ], [ %.1.i99171.ph, %.lr.ph173.preheader690 ] ; 4 uses
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.1.i99171
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !118
  %i.mc = shl i32 %i.mb, %i.ji
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.1.i99171
  %i.me = load i32, ptr %i.md, align 4, !tbaa !118
  %i.mf = shl i32 %i.me, %i.jk                    ; 2 uses
  %i.mg = add i32 %i.mf, %i.mc
  %.idx120 = shl nuw nsw i64 %.1.i99171, 3
  %i.mh = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx120 ; 2 uses
  store i32 %i.mg, ptr %i.mh, align 4, !tbaa !118
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 4
  store i32 %i.mf, ptr %i.mi, align 4, !tbaa !118
  %i.mj = add nuw nsw i64 %.1.i99171, 1           ; 2 uses
  %i.mk = icmp samesign ult i64 %i.mj, %spec.select
  br i1 %i.mk, label %.lr.ph173, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, !llvm.loop !2357

bb.s:                                             ; preds = %bb.j
  br i1 %.b.i92, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.ml = load i8, ptr %i.w, align 1, !tbaa !728
  %i.mm = icmp ult i8 %i.ml, 25
  br i1 %i.mm, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.mn = lshr i64 %spec.select, 2                ; 7 uses
  %.not226 = icmp eq i64 %i.mn, 0                 ; 2 uses
  br i1 %i.aj, label %.preheader138, label %bb.v

.preheader138:                                    ; preds = %bb.u
  br i1 %.not226, label %._crit_edge163, label %.lr.ph162

.lr.ph162:                                        ; preds = %.preheader138, %.lr.ph162
  %.0.i101161 = phi i64 [ %i.nj, %.lr.ph162 ], [ 0, %.preheader138 ] ; 4 uses
  %i.mo = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %.0.i101161
  %i.mp = load <4 x i32>, ptr %i.mo, align 1, !tbaa !119
  %i.mq = load i8, ptr %i.ag, align 1, !tbaa !734
  %i.mr = zext i8 %i.mq to i32
  %i.ms = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.mp, i32 range(i32 -232, 288) %i.mr)
  %i.mt = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %.0.i101161
  %i.mu = load <4 x i32>, ptr %i.mt, align 1, !tbaa !119
  %i.mv = load i8, ptr %i.ah, align 1, !tbaa !734
  %i.mw = zext i8 %i.mv to i32
  %i.mx = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.mu, i32 range(i32 -232, 288) %i.mw) ; 3 uses
  %i.my = shl <4 x i32> %i.ms, splat (i32 1)
  %i.mz = and <4 x i32> %i.mx, splat (i32 1)
  %i.na = or disjoint <4 x i32> %i.mz, %i.my      ; 2 uses
  %i.nb = add <4 x i32> %i.na, %i.mx
  %i.nc = ashr <4 x i32> %i.nb, splat (i32 1)     ; 2 uses
  %i.nd = sub <4 x i32> %i.na, %i.mx
  %i.ne = ashr <4 x i32> %i.nd, splat (i32 1)     ; 2 uses
  %.idx98.i = shl nuw nsw i64 %.0.i101161, 5
  %i.nf = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx98.i ; 2 uses
  %i.ng = shufflevector <4 x i32> %i.nc, <4 x i32> %i.ne, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x i32> %i.ng, ptr %i.nf, align 1, !tbaa !119
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  %i.ni = shufflevector <4 x i32> %i.nc, <4 x i32> %i.ne, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x i32> %i.ni, ptr %i.nh, align 1, !tbaa !119
  %i.nj = add nuw nsw i64 %.0.i101161, 1          ; 2 uses
  %exitcond263.not = icmp eq i64 %i.nj, %i.mn
  br i1 %exitcond263.not, label %._crit_edge163, label %.lr.ph162, !llvm.loop !2358

._crit_edge163:                                   ; preds = %.lr.ph162, %.preheader138
  %i.nk = and i64 %spec.select, 4294967292        ; 7 uses
  %.not227 = icmp eq i64 %i.nk, %spec.select
  br i1 %.not227, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %.lr.ph166

.lr.ph166:                                        ; preds = %._crit_edge163
  %i.nl = load i8, ptr %i.ag, align 1, !tbaa !734
  %i.nm = zext nneg i8 %i.nl to i32               ; 2 uses
  %i.nn = load i8, ptr %i.ah, align 1, !tbaa !734
  %i.no = zext nneg i8 %i.nn to i32               ; 2 uses
  %i.np = or disjoint i64 %i.nk, 1
  %i.nq = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.np) ; 4 uses
  %i.nr = sub nsw i64 %i.nq, %i.nk                ; 2 uses
  %min.iters.check569 = icmp ult i64 %i.nr, 6
  br i1 %min.iters.check569, label %scalar.ph568.preheader, label %vector.memcheck570

vector.memcheck570:                               ; preds = %.lr.ph166
  %i.ns = shl nuw nsw i64 %i.mn, 5
  %i.nt = getelementptr i8, ptr %.079215, i64 %i.ns ; 2 uses
  %i.nu = shl nuw nsw i64 %i.nq, 3
  %i.nv = getelementptr i8, ptr %.079215, i64 %i.nu ; 2 uses
  %i.nw = shl nuw nsw i64 %i.mn, 4
  %i.nx = shl nuw nsw i64 %i.be, 2
  %i.ny = add nuw nsw i64 %i.nw, %i.nx            ; 2 uses
  %i.nz = getelementptr i8, ptr %i.bl, i64 %i.ny
  %i.oa = add nuw nsw i64 %i.nq, %i.be
  %i.ob = shl nuw nsw i64 %i.oa, 2                ; 2 uses
  %i.oc = getelementptr i8, ptr %i.bl, i64 %i.ob
  %11 = getelementptr i8, ptr %i.bn, i64 %i.ny
  %12 = getelementptr i8, ptr %i.bn, i64 %i.ob
  %bound0571 = icmp ult ptr %i.nt, %i.oc
  %bound1572 = icmp ult ptr %i.nz, %i.nv
  %found.conflict573 = and i1 %bound0571, %bound1572
  %bound0574 = icmp ult ptr %i.nt, %12
  %bound1575 = icmp ult ptr %11, %i.nv
  %found.conflict576 = and i1 %bound0574, %bound1575
  %conflict.rdx577 = or i1 %found.conflict573, %found.conflict576
  br i1 %conflict.rdx577, label %scalar.ph568.preheader, label %vector.ph578

vector.ph578:                                     ; preds = %vector.memcheck570
  %i.od = and i64 %i.nq, 1                        ; 2 uses
  %n.vec579 = sub nsw i64 %i.nr, %i.od            ; 2 uses
  %i.oe = add nsw i64 %i.nk, %n.vec579
  %broadcast.splatinsert580 = insertelement <2 x i32> poison, i32 %i.nm, i64 0
  %broadcast.splat581 = shufflevector <2 x i32> %broadcast.splatinsert580, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert582 = insertelement <2 x i32> poison, i32 %i.no, i64 0
  %broadcast.splat583 = shufflevector <2 x i32> %broadcast.splatinsert582, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body584

vector.body584:                                   ; preds = %vector.body584, %vector.ph578
  %index585 = phi i64 [ 0, %vector.ph578 ], [ %index.next589, %vector.body584 ] ; 2 uses
  %i.of = add nuw i64 %i.nk, %index585            ; 3 uses
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.of
  %wide.load586 = load <2 x i32>, ptr %i.og, align 4, !tbaa !118, !alias.scope !2413
  %i.oh = shl <2 x i32> %wide.load586, %broadcast.splat581
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.of
  %wide.load587 = load <2 x i32>, ptr %i.oi, align 4, !tbaa !118, !alias.scope !2414
  %i.oj = shl <2 x i32> %wide.load587, %broadcast.splat583 ; 3 uses
  %i.ok = shl <2 x i32> %i.oh, splat (i32 1)
  %i.ol = and <2 x i32> %i.oj, splat (i32 1)
  %i.om = or disjoint <2 x i32> %i.ol, %i.ok      ; 2 uses
  %i.on = add <2 x i32> %i.om, %i.oj
  %i.oo = shl nuw nsw i64 %i.of, 3
  %i.op = getelementptr inbounds nuw i8, ptr %.079215, i64 %i.oo
  %i.oq = sub <2 x i32> %i.om, %i.oj
  %i.or = shufflevector <2 x i32> %i.on, <2 x i32> %i.oq, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec588 = ashr <4 x i32> %i.or, splat (i32 1)
  store <4 x i32> %interleaved.vec588, ptr %i.op, align 4, !tbaa !118, !alias.scope !2415, !noalias !2416
  %index.next589 = add nuw i64 %index585, 2       ; 2 uses
  %i.os = icmp eq i64 %index.next589, %n.vec579
  br i1 %i.os, label %middle.block590, label %vector.body584, !llvm.loop !2363

middle.block590:                                  ; preds = %vector.body584
  %cmp.n591 = icmp eq i64 %i.od, 0
  br i1 %cmp.n591, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %scalar.ph568.preheader

scalar.ph568.preheader:                           ; preds = %vector.memcheck570, %.lr.ph166, %middle.block590
  %.1.i102164.ph = phi i64 [ %i.nk, %vector.memcheck570 ], [ %i.nk, %.lr.ph166 ], [ %i.oe, %middle.block590 ]
  br label %scalar.ph568

scalar.ph568:                                     ; preds = %scalar.ph568.preheader, %scalar.ph568
  %.1.i102164 = phi i64 [ %i.pi, %scalar.ph568 ], [ %.1.i102164.ph, %scalar.ph568.preheader ] ; 4 uses
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.1.i102164
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !118
  %i.ov = shl i32 %i.ou, %i.nm
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.1.i102164
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !118
  %i.oy = shl i32 %i.ox, %i.no                    ; 3 uses
  %i.oz = shl i32 %i.ov, 1
  %i.pa = and i32 %i.oy, 1
  %i.pb = or disjoint i32 %i.pa, %i.oz            ; 2 uses
  %i.pc = add i32 %i.pb, %i.oy
  %i.pd = ashr i32 %i.pc, 1
  %.idx119 = shl nuw nsw i64 %.1.i102164, 3
  %i.pe = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx119 ; 2 uses
  store i32 %i.pd, ptr %i.pe, align 4, !tbaa !118
  %i.pf = sub i32 %i.pb, %i.oy
  %i.pg = ashr i32 %i.pf, 1
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pe, i64 4
  store i32 %i.pg, ptr %i.ph, align 4, !tbaa !118
  %i.pi = add nuw nsw i64 %.1.i102164, 1          ; 2 uses
  %i.pj = icmp samesign ult i64 %i.pi, %spec.select
  br i1 %i.pj, label %scalar.ph568, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, !llvm.loop !2364

bb.v:                                             ; preds = %bb.u
  br i1 %.not226, label %._crit_edge, label %.lr.ph157

.lr.ph157:                                        ; preds = %bb.v, %.lr.ph157
  %.2.i156 = phi i64 [ %i.qf, %.lr.ph157 ], [ 0, %bb.v ] ; 4 uses
  %i.pk = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %.2.i156
  %i.pl = load <4 x i32>, ptr %i.pk, align 1, !tbaa !119
  %i.pm = load i8, ptr %i.ag, align 1, !tbaa !734
  %i.pn = zext i8 %i.pm to i32
  %i.po = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.pl, i32 range(i32 -232, 288) %i.pn)
  %i.pp = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %.2.i156
  %i.pq = load <4 x i32>, ptr %i.pp, align 1, !tbaa !119
  %i.pr = load i8, ptr %i.ah, align 1, !tbaa !734
  %i.ps = zext i8 %i.pr to i32
  %i.pt = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.pq, i32 range(i32 -232, 288) %i.ps) ; 3 uses
  %i.pu = shl <4 x i32> %i.po, splat (i32 1)
  %i.pv = and <4 x i32> %i.pt, splat (i32 1)
  %i.pw = or disjoint <4 x i32> %i.pv, %i.pu      ; 2 uses
  %i.px = add <4 x i32> %i.pw, %i.pt
  %i.py = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.px, i32 range(i32 -232, 288) %i.ai) ; 2 uses
  %i.pz = sub <4 x i32> %i.pw, %i.pt
  %i.qa = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.pz, i32 range(i32 -232, 288) %i.ai) ; 2 uses
  %.idx.i100 = shl nuw nsw i64 %.2.i156, 5
  %i.qb = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx.i100 ; 2 uses
  %i.qc = shufflevector <4 x i32> %i.py, <4 x i32> %i.qa, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x i32> %i.qc, ptr %i.qb, align 1, !tbaa !119
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qb, i64 16
  %i.qe = shufflevector <4 x i32> %i.py, <4 x i32> %i.qa, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x i32> %i.qe, ptr %i.qd, align 1, !tbaa !119
  %i.qf = add nuw nsw i64 %.2.i156, 1             ; 2 uses
  %exitcond262.not = icmp eq i64 %i.qf, %i.mn
  br i1 %exitcond262.not, label %._crit_edge, label %.lr.ph157, !llvm.loop !2365

._crit_edge:                                      ; preds = %.lr.ph157, %bb.v
  %i.qg = and i64 %spec.select, 4294967292        ; 7 uses
  %.not225 = icmp eq i64 %i.qg, %spec.select
  br i1 %.not225, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %.lr.ph160

.lr.ph160:                                        ; preds = %._crit_edge
  %i.qh = load i8, ptr %i.ag, align 1, !tbaa !734
  %i.qi = zext nneg i8 %i.qh to i32               ; 2 uses
  %i.qj = load i8, ptr %i.ah, align 1, !tbaa !734
  %i.qk = zext nneg i8 %i.qj to i32               ; 2 uses
  %i.ql = or disjoint i64 %i.qg, 1
  %i.qm = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.ql) ; 4 uses
  %i.qn = sub nsw i64 %i.qm, %i.qg                ; 2 uses
  %min.iters.check607 = icmp ult i64 %i.qn, 6
  br i1 %min.iters.check607, label %scalar.ph606.preheader, label %vector.memcheck608

vector.memcheck608:                               ; preds = %.lr.ph160
  %i.qo = shl nuw nsw i64 %i.mn, 5
  %i.qp = getelementptr i8, ptr %.079215, i64 %i.qo ; 2 uses
  %i.qq = shl nuw nsw i64 %i.qm, 3
  %i.qr = getelementptr i8, ptr %.079215, i64 %i.qq ; 2 uses
  %i.qs = shl nuw nsw i64 %i.mn, 4
  %i.qt = shl nuw nsw i64 %i.be, 2
  %i.qu = add nuw nsw i64 %i.qs, %i.qt            ; 2 uses
  %i.qv = getelementptr i8, ptr %i.bl, i64 %i.qu
  %i.qw = add nuw nsw i64 %i.qm, %i.be
  %i.qx = shl nuw nsw i64 %i.qw, 2                ; 2 uses
  %i.qy = getelementptr i8, ptr %i.bl, i64 %i.qx
  %13 = getelementptr i8, ptr %i.bn, i64 %i.qu
  %14 = getelementptr i8, ptr %i.bn, i64 %i.qx
  %bound0609 = icmp ult ptr %i.qp, %i.qy
  %bound1610 = icmp ult ptr %i.qv, %i.qr
  %found.conflict611 = and i1 %bound0609, %bound1610
  %bound0612 = icmp ult ptr %i.qp, %14
  %bound1613 = icmp ult ptr %13, %i.qr
  %found.conflict614 = and i1 %bound0612, %bound1613
  %conflict.rdx615 = or i1 %found.conflict611, %found.conflict614
  br i1 %conflict.rdx615, label %scalar.ph606.preheader, label %vector.ph616

vector.ph616:                                     ; preds = %vector.memcheck608
  %i.qz = and i64 %i.qm, 1                        ; 2 uses
  %n.vec617 = sub nsw i64 %i.qn, %i.qz            ; 2 uses
  %i.ra = add nsw i64 %i.qg, %n.vec617
  %broadcast.splatinsert618 = insertelement <2 x i32> poison, i32 %i.qi, i64 0
  %broadcast.splat619 = shufflevector <2 x i32> %broadcast.splatinsert618, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert620 = insertelement <2 x i32> poison, i32 %i.qk, i64 0
  %broadcast.splat621 = shufflevector <2 x i32> %broadcast.splatinsert620, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body624

vector.body624:                                   ; preds = %vector.body624, %vector.ph616
  %index625 = phi i64 [ 0, %vector.ph616 ], [ %index.next629, %vector.body624 ] ; 2 uses
  %i.rb = add nuw i64 %i.qg, %index625            ; 3 uses
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.rb
  %wide.load626 = load <2 x i32>, ptr %i.rc, align 4, !tbaa !118, !alias.scope !2417
  %i.rd = shl <2 x i32> %wide.load626, %broadcast.splat619
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.rb
  %wide.load627 = load <2 x i32>, ptr %i.re, align 4, !tbaa !118, !alias.scope !2418
  %i.rf = shl <2 x i32> %wide.load627, %broadcast.splat621 ; 3 uses
  %i.rg = shl <2 x i32> %i.rd, splat (i32 1)
  %i.rh = and <2 x i32> %i.rf, splat (i32 1)
  %i.ri = or disjoint <2 x i32> %i.rh, %i.rg      ; 2 uses
  %i.rj = add <2 x i32> %i.ri, %i.rf
  %i.rk = shl nuw nsw i64 %i.rb, 3
  %i.rl = getelementptr inbounds nuw i8, ptr %.079215, i64 %i.rk
  %i.rm = sub <2 x i32> %i.ri, %i.rf
  %i.rn = shufflevector <2 x i32> %i.rj, <2 x i32> %i.rm, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec628 = shl <4 x i32> %i.rn, %i.ar
  store <4 x i32> %interleaved.vec628, ptr %i.rl, align 4, !tbaa !118, !alias.scope !2419, !noalias !2420
  %index.next629 = add nuw i64 %index625, 2       ; 2 uses
  %i.ro = icmp eq i64 %index.next629, %n.vec617
  br i1 %i.ro, label %middle.block630, label %vector.body624, !llvm.loop !2370

middle.block630:                                  ; preds = %vector.body624
  %cmp.n631 = icmp eq i64 %i.qz, 0
  br i1 %cmp.n631, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %scalar.ph606.preheader

scalar.ph606.preheader:                           ; preds = %vector.memcheck608, %.lr.ph160, %middle.block630
  %.3.i158.ph = phi i64 [ %i.qg, %vector.memcheck608 ], [ %i.qg, %.lr.ph160 ], [ %i.ra, %middle.block630 ]
  br label %scalar.ph606

scalar.ph606:                                     ; preds = %scalar.ph606.preheader, %scalar.ph606
  %.3.i158 = phi i64 [ %i.se, %scalar.ph606 ], [ %.3.i158.ph, %scalar.ph606.preheader ] ; 4 uses
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.3.i158
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !118
  %i.rr = shl i32 %i.rq, %i.qi
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.3.i158
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !118
  %i.ru = shl i32 %i.rt, %i.qk                    ; 3 uses
  %i.rv = shl i32 %i.rr, 1
  %i.rw = and i32 %i.ru, 1
  %i.rx = or disjoint i32 %i.rw, %i.rv            ; 2 uses
  %i.ry = add i32 %i.rx, %i.ru
  %i.rz = shl i32 %i.ry, %i.ai
  %.idx118 = shl nuw nsw i64 %.3.i158, 3
  %i.sa = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx118 ; 2 uses
  store i32 %i.rz, ptr %i.sa, align 4, !tbaa !118
  %i.sb = sub i32 %i.rx, %i.ru
  %i.sc = shl i32 %i.sb, %i.ai
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sa, i64 4
  store i32 %i.sc, ptr %i.sd, align 4, !tbaa !118
  %i.se = add nuw nsw i64 %.3.i158, 1             ; 2 uses
  %i.sf = icmp samesign ult i64 %i.se, %spec.select
  br i1 %i.sf, label %scalar.ph606, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, !llvm.loop !2371

bb.w:                                             ; preds = %bb.t, %bb.s
  %i.sg = lshr i64 %spec.select, 2                ; 5 uses
  %.not222 = icmp eq i64 %i.sg, 0                 ; 2 uses
  br i1 %i.af, label %bb.x, label %.preheader141

.preheader141:                                    ; preds = %bb.w
  br i1 %.not222, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader141
  %i.sh = load i8, ptr %i.ag, align 1, !tbaa !734
  %i.si = zext i8 %i.sh to i32
  %i.sj = load i8, ptr %i.ah, align 1, !tbaa !734
  %i.sk = zext i8 %i.sj to i32
  %i.sl = insertelement <2 x i32> poison, i32 %i.sk, i64 0
  %i.sm = shufflevector <2 x i32> %i.sl, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.sn = insertelement <2 x i32> poison, i32 %i.si, i64 0
  %i.so = shufflevector <2 x i32> %i.sn, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.z

bb.x:                                             ; preds = %bb.w
  br i1 %.not222, label %.loopexit, label %.lr.ph153

.lr.ph153:                                        ; preds = %bb.x
  %i.sp = load i8, ptr %i.ag, align 1, !tbaa !734
  %i.sq = zext i8 %i.sp to i32
  %i.sr = load i8, ptr %i.ah, align 1, !tbaa !734
  %i.ss = zext i8 %i.sr to i32
  %i.st = insertelement <2 x i32> poison, i32 %i.ss, i64 0
  %i.su = shufflevector <2 x i32> %i.st, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.sv = insertelement <2 x i32> poison, i32 %i.sq, i64 0
  %i.sw = shufflevector <2 x i32> %i.sv, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph153, %bb.y
  %.0.i105152 = phi i64 [ 0, %.lr.ph153 ], [ %i.uf, %bb.y ] ; 3 uses
  %i.sx = shl nuw nsw i64 %.0.i105152, 2          ; 3 uses
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.sx
  %i.sz = or disjoint i64 %i.sx, 2                ; 2 uses
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.sz
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.sx
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.sz
  %.idx117 = shl nuw nsw i64 %.0.i105152, 5
  %i.td = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx117 ; 2 uses
  %i.te = load <2 x i32>, ptr %i.sy, align 4, !tbaa !118
  %i.tf = shl <2 x i32> %i.te, %i.sw
  %i.tg = load <2 x i32>, ptr %i.tb, align 4, !tbaa !118
  %i.th = shl <2 x i32> %i.tg, %i.su              ; 2 uses
  %i.ti = shl <2 x i32> %i.tf, splat (i32 1)
  %i.tj = and <2 x i32> %i.th, splat (i32 1)
  %i.tk = or disjoint <2 x i32> %i.tj, %i.ti
  %i.tl = shufflevector <2 x i32> %i.tk, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.tm = shufflevector <2 x i32> %i.th, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.tn = add <4 x i32> %i.tl, %i.tm
  %i.to = sub <4 x i32> %i.tl, %i.tm
  %i.tp = shufflevector <4 x i32> %i.tn, <4 x i32> %i.to, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.tq = shl <4 x i32> %i.tp, %i.ap
  %i.tr = getelementptr inbounds nuw i8, ptr %i.td, i64 16
  %i.ts = load <2 x i32>, ptr %i.ta, align 4, !tbaa !118
  %i.tt = shl <2 x i32> %i.ts, %i.sw
  %i.tu = load <2 x i32>, ptr %i.tc, align 4, !tbaa !118
  %i.tv = shl <2 x i32> %i.tu, %i.su              ; 2 uses
  %i.tw = shl <2 x i32> %i.tt, splat (i32 1)
  %i.tx = and <2 x i32> %i.tv, splat (i32 1)
  %i.ty = or disjoint <2 x i32> %i.tx, %i.tw
  %i.tz = shufflevector <2 x i32> %i.ty, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.ua = shufflevector <2 x i32> %i.tv, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.ub = add <4 x i32> %i.tz, %i.ua
  %i.uc = sub <4 x i32> %i.tz, %i.ua
  %i.ud = shufflevector <4 x i32> %i.ub, <4 x i32> %i.uc, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.ue = shl <4 x i32> %i.ud, %i.ap
  store <4 x i32> %i.tq, ptr %i.td, align 4, !tbaa !118
  store <4 x i32> %i.ue, ptr %i.tr, align 4, !tbaa !118
  %i.uf = add nuw nsw i64 %.0.i105152, 1          ; 2 uses
  %exitcond261.not = icmp eq i64 %i.uf, %i.sg
  br i1 %exitcond261.not, label %.loopexit, label %bb.y, !llvm.loop !2372

bb.z:                                             ; preds = %.lr.ph, %bb.z
  %.1.i103151 = phi i64 [ 0, %.lr.ph ], [ %i.vo, %bb.z ] ; 3 uses
  %i.ug = shl nuw nsw i64 %.1.i103151, 2          ; 3 uses
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.ug
  %i.ui = or disjoint i64 %i.ug, 2                ; 2 uses
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.ui
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ug
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ui
  %.idx = shl nuw nsw i64 %.1.i103151, 5
  %i.um = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx ; 2 uses
  %i.un = load <2 x i32>, ptr %i.uh, align 4, !tbaa !118
  %i.uo = shl <2 x i32> %i.un, %i.so
  %i.up = load <2 x i32>, ptr %i.uk, align 4, !tbaa !118
  %i.uq = shl <2 x i32> %i.up, %i.sm              ; 2 uses
  %i.ur = shl <2 x i32> %i.uo, splat (i32 1)
  %i.us = and <2 x i32> %i.uq, splat (i32 1)
  %i.ut = or disjoint <2 x i32> %i.us, %i.ur
  %i.uu = shufflevector <2 x i32> %i.ut, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.uv = shufflevector <2 x i32> %i.uq, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.uw = add <4 x i32> %i.uu, %i.uv
  %i.ux = sub <4 x i32> %i.uu, %i.uv
  %i.uy = shufflevector <4 x i32> %i.uw, <4 x i32> %i.ux, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.uz = ashr <4 x i32> %i.uy, splat (i32 1)
  %i.va = getelementptr inbounds nuw i8, ptr %i.um, i64 16
  %i.vb = load <2 x i32>, ptr %i.uj, align 4, !tbaa !118
  %i.vc = shl <2 x i32> %i.vb, %i.so
  %i.vd = load <2 x i32>, ptr %i.ul, align 4, !tbaa !118
  %i.ve = shl <2 x i32> %i.vd, %i.sm              ; 2 uses
  %i.vf = shl <2 x i32> %i.vc, splat (i32 1)
  %i.vg = and <2 x i32> %i.ve, splat (i32 1)
  %i.vh = or disjoint <2 x i32> %i.vg, %i.vf
  %i.vi = shufflevector <2 x i32> %i.vh, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.vj = shufflevector <2 x i32> %i.ve, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.vk = add <4 x i32> %i.vi, %i.vj
  %i.vl = sub <4 x i32> %i.vi, %i.vj
  %i.vm = shufflevector <4 x i32> %i.vk, <4 x i32> %i.vl, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.vn = ashr <4 x i32> %i.vm, splat (i32 1)
  store <4 x i32> %i.uz, ptr %i.um, align 4, !tbaa !118
  store <4 x i32> %i.vn, ptr %i.va, align 4, !tbaa !118
  %i.vo = add nuw nsw i64 %.1.i103151, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.vo, %i.sg
  br i1 %exitcond.not, label %.loopexit, label %bb.z, !llvm.loop !2373

.loopexit:                                        ; preds = %bb.z, %bb.y, %.preheader141, %bb.x
  %i.vp = and i64 %spec.select, 4294967292        ; 7 uses
  %.not223 = icmp eq i64 %i.vp, %spec.select
  br i1 %.not223, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %.lr.ph155

.lr.ph155:                                        ; preds = %.loopexit
  %i.vq = load i8, ptr %i.ag, align 1, !tbaa !734
  %i.vr = zext nneg i8 %i.vq to i32               ; 2 uses
  %i.vs = load i8, ptr %i.ah, align 1, !tbaa !734
  %i.vt = zext nneg i8 %i.vs to i32               ; 2 uses
  %i.vu = or disjoint i64 %i.vp, 1
  %i.vv = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.vu) ; 4 uses
  %i.vw = sub nsw i64 %i.vv, %i.vp                ; 2 uses
  %min.iters.check647 = icmp ult i64 %i.vw, 6
  br i1 %min.iters.check647, label %scalar.ph646.preheader, label %vector.memcheck648

vector.memcheck648:                               ; preds = %.lr.ph155
  %i.vx = shl nuw nsw i64 %i.sg, 5
  %i.vy = getelementptr i8, ptr %.079215, i64 %i.vx ; 2 uses
  %i.vz = shl nuw nsw i64 %i.vv, 3
  %i.wa = getelementptr i8, ptr %.079215, i64 %i.vz ; 2 uses
  %i.wb = shl nuw nsw i64 %i.sg, 4
  %i.wc = shl nuw nsw i64 %i.be, 2
  %i.wd = add nuw nsw i64 %i.wb, %i.wc            ; 2 uses
  %i.we = getelementptr i8, ptr %i.bl, i64 %i.wd
  %i.wf = add nuw nsw i64 %i.vv, %i.be
  %i.wg = shl nuw nsw i64 %i.wf, 2                ; 2 uses
  %i.wh = getelementptr i8, ptr %i.bl, i64 %i.wg
  %15 = getelementptr i8, ptr %i.bn, i64 %i.wd
  %16 = getelementptr i8, ptr %i.bn, i64 %i.wg
  %bound0649 = icmp ult ptr %i.vy, %i.wh
  %bound1650 = icmp ult ptr %i.we, %i.wa
  %found.conflict651 = and i1 %bound0649, %bound1650
  %bound0652 = icmp ult ptr %i.vy, %16
  %bound1653 = icmp ult ptr %15, %i.wa
  %found.conflict654 = and i1 %bound0652, %bound1653
  %conflict.rdx655 = or i1 %found.conflict651, %found.conflict654
  br i1 %conflict.rdx655, label %scalar.ph646.preheader, label %vector.ph656

vector.ph656:                                     ; preds = %vector.memcheck648
  %i.wi = and i64 %i.vv, 1                        ; 2 uses
  %n.vec657 = sub nsw i64 %i.vw, %i.wi            ; 2 uses
  %i.wj = add nsw i64 %i.vp, %n.vec657
  %broadcast.splatinsert658 = insertelement <2 x i32> poison, i32 %i.vr, i64 0
  %broadcast.splat659 = shufflevector <2 x i32> %broadcast.splatinsert658, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert660 = insertelement <2 x i32> poison, i32 %i.vt, i64 0
  %broadcast.splat661 = shufflevector <2 x i32> %broadcast.splatinsert660, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body664

vector.body664:                                   ; preds = %vector.body664, %vector.ph656
  %index665 = phi i64 [ 0, %vector.ph656 ], [ %index.next669, %vector.body664 ] ; 2 uses
  %i.wk = add nuw i64 %i.vp, %index665            ; 3 uses
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.wk
  %wide.load666 = load <2 x i32>, ptr %i.wl, align 4, !tbaa !118, !alias.scope !2421
  %i.wm = shl <2 x i32> %wide.load666, %broadcast.splat659
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.wk
  %wide.load667 = load <2 x i32>, ptr %i.wn, align 4, !tbaa !118, !alias.scope !2422
  %i.wo = shl <2 x i32> %wide.load667, %broadcast.splat661 ; 3 uses
  %i.wp = shl <2 x i32> %i.wm, splat (i32 1)
  %i.wq = and <2 x i32> %i.wo, splat (i32 1)
  %i.wr = or disjoint <2 x i32> %i.wq, %i.wp      ; 2 uses
  %i.ws = add <2 x i32> %i.wr, %i.wo
  %i.wt = shl nuw nsw i64 %i.wk, 3
  %i.wu = getelementptr inbounds nuw i8, ptr %.079215, i64 %i.wt
  %i.wv = sub <2 x i32> %i.wr, %i.wo
  %i.ww = shufflevector <2 x i32> %i.ws, <2 x i32> %i.wv, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.wx = ashr <4 x i32> %i.ww, splat (i32 1)
  %interleaved.vec668 = shl <4 x i32> %i.wx, %i.aq
  store <4 x i32> %interleaved.vec668, ptr %i.wu, align 4, !tbaa !118, !alias.scope !2423, !noalias !2424
  %index.next669 = add nuw i64 %index665, 2       ; 2 uses
  %i.wy = icmp eq i64 %index.next669, %n.vec657
  br i1 %i.wy, label %middle.block670, label %vector.body664, !llvm.loop !2378

middle.block670:                                  ; preds = %vector.body664
  %cmp.n671 = icmp eq i64 %i.wi, 0
  br i1 %cmp.n671, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %scalar.ph646.preheader

scalar.ph646.preheader:                           ; preds = %vector.memcheck648, %.lr.ph155, %middle.block670
  %.2.i104154.ph = phi i64 [ %i.vp, %vector.memcheck648 ], [ %i.vp, %.lr.ph155 ], [ %i.wj, %middle.block670 ]
  br label %scalar.ph646

scalar.ph646:                                     ; preds = %scalar.ph646.preheader, %scalar.ph646
  %.2.i104154 = phi i64 [ %i.xq, %scalar.ph646 ], [ %.2.i104154.ph, %scalar.ph646.preheader ] ; 4 uses
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.2.i104154
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !118
  %i.xb = shl i32 %i.xa, %i.vr
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.2.i104154
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !118
  %i.xe = shl i32 %i.xd, %i.vt                    ; 3 uses
  %i.xf = shl i32 %i.xb, 1
  %i.xg = and i32 %i.xe, 1
  %i.xh = or disjoint i32 %i.xg, %i.xf            ; 2 uses
  %i.xi = add i32 %i.xh, %i.xe
  %i.xj = ashr i32 %i.xi, 1
  %i.xk = shl i32 %i.xj, %i.z
  %.idx116 = shl nuw nsw i64 %.2.i104154, 3
  %i.xl = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx116 ; 2 uses
  store i32 %i.xk, ptr %i.xl, align 4, !tbaa !118
  %i.xm = sub i32 %i.xh, %i.xe
  %i.xn = ashr i32 %i.xm, 1
  %i.xo = shl i32 %i.xn, %i.z
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xl, i64 4
  store i32 %i.xo, ptr %i.xp, align 4, !tbaa !118
  %i.xq = add nuw nsw i64 %.2.i104154, 1          ; 2 uses
  %i.xr = icmp samesign ult i64 %i.xq, %spec.select
  br i1 %i.xr, label %scalar.ph646, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, !llvm.loop !2379

bb.aa:                                            ; preds = %bb.j
  br i1 %.b.i92, label %bb.ab, label %._crit_edge283

._crit_edge283:                                   ; preds = %bb.aa
  %.pre284 = load i8, ptr %i.ag, align 1, !tbaa !734
  %.pre286 = load i8, ptr %i.ah, align 1, !tbaa !734
  br label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.xs = load i8, ptr %i.w, align 1, !tbaa !728
  %i.xt = icmp ult i8 %i.xs, 25
  %.pre285 = load i8, ptr %i.ag, align 1, !tbaa !734 ; 2 uses
  %.pre287 = load i8, ptr %i.ah, align 1, !tbaa !734 ; 2 uses
  br i1 %i.xt, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.xu = lshr i64 %spec.select, 2                ; 4 uses
  %i.xv = zext i8 %.pre285 to i32
  %i.xw = add nsw i32 %i.z, %i.xv                 ; 3 uses
  %i.xx = zext i8 %.pre287 to i32
  %i.xy = add nsw i32 %i.z, %i.xx                 ; 3 uses
  %.not238 = icmp eq i64 %i.xu, 0
  br i1 %.not238, label %._crit_edge205, label %.lr.ph204

.lr.ph204:                                        ; preds = %bb.ac, %.lr.ph204
  %.0.i106202 = phi i64 [ %i.yj, %.lr.ph204 ], [ 0, %bb.ac ] ; 4 uses
  %i.xz = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %.0.i106202
  %i.ya = load <4 x i32>, ptr %i.xz, align 1, !tbaa !119
  %i.yb = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.ya, i32 range(i32 -232, 288) %i.xw) ; 2 uses
  %i.yc = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %.0.i106202
  %i.yd = load <4 x i32>, ptr %i.yc, align 1, !tbaa !119
  %i.ye = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.yd, i32 range(i32 -232, 288) %i.xy) ; 2 uses
  %.idx.i108 = shl nuw nsw i64 %.0.i106202, 5
  %i.yf = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx.i108 ; 2 uses
  %i.yg = shufflevector <4 x i32> %i.yb, <4 x i32> %i.ye, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x i32> %i.yg, ptr %i.yf, align 1, !tbaa !119
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yf, i64 16
  %i.yi = shufflevector <4 x i32> %i.yb, <4 x i32> %i.ye, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x i32> %i.yi, ptr %i.yh, align 1, !tbaa !119
  %i.yj = add nuw nsw i64 %.0.i106202, 1          ; 2 uses
  %exitcond269.not = icmp eq i64 %i.yj, %i.xu
  br i1 %exitcond269.not, label %._crit_edge205, label %.lr.ph204, !llvm.loop !2380

._crit_edge205:                                   ; preds = %.lr.ph204, %bb.ac
  %i.yk = and i64 %spec.select, 4294967292        ; 7 uses
  %.not239 = icmp eq i64 %i.yk, %spec.select
  br i1 %.not239, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %.lr.ph208.preheader

.lr.ph208.preheader:                              ; preds = %._crit_edge205
  %i.yl = or disjoint i64 %i.yk, 1
  %i.ym = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.yl) ; 4 uses
  %i.yn = sub nsw i64 %i.ym, %i.yk                ; 2 uses
  %min.iters.check = icmp ult i64 %i.yn, 10
  br i1 %min.iters.check, label %.lr.ph208.preheader680, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph208.preheader
  %i.yo = shl nuw nsw i64 %i.xu, 5
  %i.yp = getelementptr i8, ptr %.079215, i64 %i.yo ; 2 uses
  %i.yq = shl nuw nsw i64 %i.ym, 3
  %i.yr = getelementptr i8, ptr %.079215, i64 %i.yq ; 2 uses
  %i.ys = shl nuw nsw i64 %i.xu, 4
  %i.yt = shl nuw nsw i64 %i.be, 2
  %i.yu = add nuw nsw i64 %i.ys, %i.yt            ; 2 uses
  %i.yv = getelementptr i8, ptr %i.bl, i64 %i.yu
  %i.yw = add nuw nsw i64 %i.ym, %i.be
  %i.yx = shl nuw nsw i64 %i.yw, 2                ; 2 uses
  %i.yy = getelementptr i8, ptr %i.bl, i64 %i.yx
  %17 = getelementptr i8, ptr %i.bn, i64 %i.yu
  %18 = getelementptr i8, ptr %i.bn, i64 %i.yx
  %bound0 = icmp ult ptr %i.yp, %i.yy
  %bound1 = icmp ult ptr %i.yv, %i.yr
  %found.conflict = and i1 %bound0, %bound1
  %bound0359 = icmp ult ptr %i.yp, %18
  %bound1360 = icmp ult ptr %17, %i.yr
  %found.conflict361 = and i1 %bound0359, %bound1360
  %conflict.rdx = or i1 %found.conflict, %found.conflict361
  br i1 %conflict.rdx, label %.lr.ph208.preheader680, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.yz = and i64 %i.ym, 1                        ; 2 uses
  %n.vec = sub nsw i64 %i.yn, %i.yz               ; 2 uses
  %i.za = add nsw i64 %i.yk, %n.vec
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.xw, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert362 = insertelement <2 x i32> poison, i32 %i.xy, i64 0
  %broadcast.splat363 = shufflevector <2 x i32> %broadcast.splatinsert362, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.zb = add nuw i64 %i.yk, %index               ; 3 uses
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.zb
  %wide.load = load <2 x i32>, ptr %i.zc, align 4, !tbaa !118, !alias.scope !2425
  %i.zd = shl <2 x i32> %wide.load, %broadcast.splat
  %i.ze = shl nuw nsw i64 %i.zb, 3
  %i.zf = getelementptr inbounds nuw i8, ptr %.079215, i64 %i.ze
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.zb
  %wide.load364 = load <2 x i32>, ptr %i.zg, align 4, !tbaa !118, !alias.scope !2426
  %i.zh = shl <2 x i32> %wide.load364, %broadcast.splat363
  %interleaved.vec = shufflevector <2 x i32> %i.zd, <2 x i32> %i.zh, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.zf, align 4, !tbaa !118, !alias.scope !2427, !noalias !2428
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.zi = icmp eq i64 %index.next, %n.vec
  br i1 %i.zi, label %middle.block, label %vector.body, !llvm.loop !2385

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.yz, 0
  br i1 %cmp.n, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %.lr.ph208.preheader680

.lr.ph208.preheader680:                           ; preds = %vector.memcheck, %.lr.ph208.preheader, %middle.block
  %.1.i107206.ph = phi i64 [ %i.yk, %vector.memcheck ], [ %i.yk, %.lr.ph208.preheader ], [ %i.za, %middle.block ]
  br label %.lr.ph208

.lr.ph208:                                        ; preds = %.lr.ph208.preheader680, %.lr.ph208
  %.1.i107206 = phi i64 [ %i.zr, %.lr.ph208 ], [ %.1.i107206.ph, %.lr.ph208.preheader680 ] ; 4 uses
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.1.i107206
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !118
  %i.zl = shl i32 %i.zk, %i.xw
  %.idx128 = shl nuw nsw i64 %.1.i107206, 3
  %i.zm = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx128 ; 2 uses
  store i32 %i.zl, ptr %i.zm, align 4, !tbaa !118
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.1.i107206
  %i.zo = load i32, ptr %i.zn, align 4, !tbaa !118
  %i.zp = shl i32 %i.zo, %i.xy
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zm, i64 4
  store i32 %i.zp, ptr %i.zq, align 4, !tbaa !118
  %i.zr = add nuw nsw i64 %.1.i107206, 1          ; 2 uses
  %i.zs = icmp samesign ult i64 %i.zr, %spec.select
  br i1 %i.zs, label %.lr.ph208, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, !llvm.loop !2386

bb.ad:                                            ; preds = %._crit_edge283, %bb.ab
  %i.zt = phi i8 [ %.pre286, %._crit_edge283 ], [ %.pre287, %bb.ab ]
  %i.zu = phi i8 [ %.pre284, %._crit_edge283 ], [ %.pre285, %bb.ab ]
  %i.zv = lshr i64 %spec.select, 2                ; 4 uses
  %i.zw = zext i8 %i.zu to i32
  %i.zx = add nsw i32 %i.z, %i.zw                 ; 6 uses
  %i.zy = zext i8 %i.zt to i32
  %i.zz = add nsw i32 %i.z, %i.zy                 ; 6 uses
  %.not236 = icmp eq i64 %i.zv, 0
  br i1 %.not236, label %._crit_edge198, label %.lr.ph197

.lr.ph197:                                        ; preds = %bb.ad, %.lr.ph197
  %.0.i109195 = phi i64 [ %i.abk, %.lr.ph197 ], [ 0, %bb.ad ] ; 3 uses
  %i.aaa = shl nuw nsw i64 %.0.i109195, 2         ; 5 uses
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.aaa
  %i.aac = load i32, ptr %i.aab, align 4, !tbaa !118
  %i.aad = shl i32 %i.aac, %i.zx
  %i.aae = or disjoint i64 %i.aaa, 1              ; 2 uses
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.aae
  %i.aag = load i32, ptr %i.aaf, align 4, !tbaa !118
  %i.aah = shl i32 %i.aag, %i.zx
  %i.aai = or disjoint i64 %i.aaa, 2              ; 2 uses
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.aai
  %i.aak = load i32, ptr %i.aaj, align 4, !tbaa !118
  %i.aal = shl i32 %i.aak, %i.zx
  %i.aam = or disjoint i64 %i.aaa, 3              ; 2 uses
  %i.aan = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.aam
  %i.aao = load i32, ptr %i.aan, align 4, !tbaa !118
  %i.aap = shl i32 %i.aao, %i.zx
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.aaa
  %i.aar = load i32, ptr %i.aaq, align 4, !tbaa !118
  %i.aas = shl i32 %i.aar, %i.zz
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.aae
  %i.aau = load i32, ptr %i.aat, align 4, !tbaa !118
  %i.aav = shl i32 %i.aau, %i.zz
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.aai
  %i.aax = load i32, ptr %i.aaw, align 4, !tbaa !118
  %i.aay = shl i32 %i.aax, %i.zz
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.aam
  %i.aba = load i32, ptr %i.aaz, align 4, !tbaa !118
  %i.abb = shl i32 %i.aba, %i.zz
  %.idx127 = shl nuw nsw i64 %.0.i109195, 5
  %i.abc = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx127 ; 8 uses
  store i32 %i.aad, ptr %i.abc, align 4, !tbaa !118
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 4
  store i32 %i.aas, ptr %i.abd, align 4, !tbaa !118
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abc, i64 8
  store i32 %i.aah, ptr %i.abe, align 4, !tbaa !118
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abc, i64 12
  store i32 %i.aav, ptr %i.abf, align 4, !tbaa !118
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abc, i64 16
  store i32 %i.aal, ptr %i.abg, align 4, !tbaa !118
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abc, i64 20
  store i32 %i.aay, ptr %i.abh, align 4, !tbaa !118
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abc, i64 24
  store i32 %i.aap, ptr %i.abi, align 4, !tbaa !118
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abc, i64 28
  store i32 %i.abb, ptr %i.abj, align 4, !tbaa !118
  %i.abk = add nuw nsw i64 %.0.i109195, 1         ; 2 uses
  %exitcond268.not = icmp eq i64 %i.abk, %i.zv
  br i1 %exitcond268.not, label %._crit_edge198, label %.lr.ph197, !llvm.loop !2387

._crit_edge198:                                   ; preds = %.lr.ph197, %bb.ad
  %i.abl = and i64 %spec.select, 4294967292       ; 7 uses
  %.not237 = icmp eq i64 %i.abl, %spec.select
  br i1 %.not237, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %.lr.ph201.preheader

.lr.ph201.preheader:                              ; preds = %._crit_edge198
  %i.abm = or disjoint i64 %i.abl, 1
  %i.abn = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.abm) ; 4 uses
  %i.abo = sub nsw i64 %i.abn, %i.abl             ; 2 uses
  %min.iters.check379 = icmp ult i64 %i.abo, 10
  br i1 %min.iters.check379, label %.lr.ph201.preheader682, label %vector.memcheck380

vector.memcheck380:                               ; preds = %.lr.ph201.preheader
  %i.abp = shl nuw nsw i64 %i.zv, 5
  %i.abq = getelementptr i8, ptr %.079215, i64 %i.abp ; 2 uses
  %i.abr = shl nuw nsw i64 %i.abn, 3
  %i.abs = getelementptr i8, ptr %.079215, i64 %i.abr ; 2 uses
  %i.abt = shl nuw nsw i64 %i.zv, 4
  %i.abu = shl nuw nsw i64 %i.be, 2
  %i.abv = add nuw nsw i64 %i.abt, %i.abu         ; 2 uses
  %i.abw = getelementptr i8, ptr %i.bl, i64 %i.abv
  %i.abx = add nuw nsw i64 %i.abn, %i.be
  %i.aby = shl nuw nsw i64 %i.abx, 2              ; 2 uses
  %i.abz = getelementptr i8, ptr %i.bl, i64 %i.aby
  %19 = getelementptr i8, ptr %i.bn, i64 %i.abv
  %20 = getelementptr i8, ptr %i.bn, i64 %i.aby
  %bound0381 = icmp ult ptr %i.abq, %i.abz
  %bound1382 = icmp ult ptr %i.abw, %i.abs
  %found.conflict383 = and i1 %bound0381, %bound1382
  %bound0384 = icmp ult ptr %i.abq, %20
  %bound1385 = icmp ult ptr %19, %i.abs
  %found.conflict386 = and i1 %bound0384, %bound1385
  %conflict.rdx387 = or i1 %found.conflict383, %found.conflict386
  br i1 %conflict.rdx387, label %.lr.ph201.preheader682, label %vector.ph388

vector.ph388:                                     ; preds = %vector.memcheck380
  %i.aca = and i64 %i.abn, 1                      ; 2 uses
  %n.vec389 = sub nsw i64 %i.abo, %i.aca          ; 2 uses
  %i.acb = add nsw i64 %i.abl, %n.vec389
  %broadcast.splatinsert390 = insertelement <2 x i32> poison, i32 %i.zx, i64 0
  %broadcast.splat391 = shufflevector <2 x i32> %broadcast.splatinsert390, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert392 = insertelement <2 x i32> poison, i32 %i.zz, i64 0
  %broadcast.splat393 = shufflevector <2 x i32> %broadcast.splatinsert392, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body394

vector.body394:                                   ; preds = %vector.body394, %vector.ph388
  %index395 = phi i64 [ 0, %vector.ph388 ], [ %index.next399, %vector.body394 ] ; 2 uses
  %i.acc = add nuw i64 %i.abl, %index395          ; 3 uses
  %i.acd = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.acc
  %wide.load396 = load <2 x i32>, ptr %i.acd, align 4, !tbaa !118, !alias.scope !2429
  %i.ace = shl <2 x i32> %wide.load396, %broadcast.splat391
  %i.acf = shl nuw nsw i64 %i.acc, 3
  %i.acg = getelementptr inbounds nuw i8, ptr %.079215, i64 %i.acf
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.acc
  %wide.load397 = load <2 x i32>, ptr %i.ach, align 4, !tbaa !118, !alias.scope !2430
  %i.aci = shl <2 x i32> %wide.load397, %broadcast.splat393
  %interleaved.vec398 = shufflevector <2 x i32> %i.ace, <2 x i32> %i.aci, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec398, ptr %i.acg, align 4, !tbaa !118, !alias.scope !2431, !noalias !2432
  %index.next399 = add nuw i64 %index395, 2       ; 2 uses
  %i.acj = icmp eq i64 %index.next399, %n.vec389
  br i1 %i.acj, label %middle.block400, label %vector.body394, !llvm.loop !2392

middle.block400:                                  ; preds = %vector.body394
  %cmp.n401 = icmp eq i64 %i.aca, 0
  br i1 %cmp.n401, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %.lr.ph201.preheader682

.lr.ph201.preheader682:                           ; preds = %vector.memcheck380, %.lr.ph201.preheader, %middle.block400
  %.1.i110199.ph = phi i64 [ %i.abl, %vector.memcheck380 ], [ %i.abl, %.lr.ph201.preheader ], [ %i.acb, %middle.block400 ]
  br label %.lr.ph201

.lr.ph201:                                        ; preds = %.lr.ph201.preheader682, %.lr.ph201
  %.1.i110199 = phi i64 [ %i.acs, %.lr.ph201 ], [ %.1.i110199.ph, %.lr.ph201.preheader682 ] ; 4 uses
  %i.ack = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.1.i110199
  %i.acl = load i32, ptr %i.ack, align 4, !tbaa !118
  %i.acm = shl i32 %i.acl, %i.zx
  %.idx126 = shl nuw nsw i64 %.1.i110199, 3
  %i.acn = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx126 ; 2 uses
  store i32 %i.acm, ptr %i.acn, align 4, !tbaa !118
  %i.aco = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.1.i110199
  %i.acp = load i32, ptr %i.aco, align 4, !tbaa !118
  %i.acq = shl i32 %i.acp, %i.zz
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acn, i64 4
  store i32 %i.acq, ptr %i.acr, align 4, !tbaa !118
  %i.acs = add nuw nsw i64 %.1.i110199, 1         ; 2 uses
  %i.act = icmp samesign ult i64 %i.acs, %spec.select
  br i1 %i.act, label %.lr.ph201, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, !llvm.loop !2393

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge211
  %.076212 = phi i64 [ %i.aeg, %._crit_edge211 ], [ 0, %.preheader.preheader ] ; 5 uses
  %i.acu = mul nuw nsw i64 %.076212, %i.bi
  %i.acv = getelementptr inbounds nuw [4 x i8], ptr %.079215, i64 %i.acu ; 3 uses
  br i1 %i.bk, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.acw = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %indvars.iv ; 2 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 8
  %i.acy = load ptr, ptr %i.acx, align 8, !tbaa !733
  %i.acz = getelementptr inbounds nuw [4 x i8], ptr %i.acy, i64 %.076212
  %i.ada = getelementptr inbounds nuw [4 x i8], ptr %i.acz, i64 %i.be
  %i.adb = load i32, ptr %i.ada, align 4, !tbaa !118
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acw, i64 1
  %i.add = load i8, ptr %i.adc, align 1, !tbaa !734
  %i.ade = zext i8 %i.add to i32
  %i.adf = add nsw i32 %i.z, %i.ade
  %i.adg = shl i32 %i.adb, %i.adf
  %i.adh = getelementptr inbounds nuw [4 x i8], ptr %i.acv, i64 %indvars.iv
  store i32 %i.adg, ptr %i.adh, align 4, !tbaa !118
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.adi = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %indvars.iv.next ; 2 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 8
  %i.adk = load ptr, ptr %i.adj, align 8, !tbaa !733
  %i.adl = getelementptr inbounds nuw [4 x i8], ptr %i.adk, i64 %.076212
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %i.adl, i64 %i.be
  %i.adn = load i32, ptr %i.adm, align 4, !tbaa !118
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adi, i64 1
  %i.adp = load i8, ptr %i.ado, align 1, !tbaa !734
  %i.adq = zext i8 %i.adp to i32
  %i.adr = add nsw i32 %i.z, %i.adq
  %i.ads = shl i32 %i.adn, %i.adr
  %i.adt = getelementptr inbounds nuw [4 x i8], ptr %i.acv, i64 %indvars.iv.next
  store i32 %i.ads, ptr %i.adt, align 4, !tbaa !118
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge211.unr-lcssa, label %.preheader.new, !llvm.loop !2394

._crit_edge211.unr-lcssa:                         ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge211, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge211.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge211.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod698)
  %i.adu = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %indvars.iv.epil.init ; 2 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 8
  %i.adw = load ptr, ptr %i.adv, align 8, !tbaa !733
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %i.adw, i64 %.076212
  %i.ady = getelementptr inbounds nuw [4 x i8], ptr %i.adx, i64 %i.be
  %i.adz = load i32, ptr %i.ady, align 4, !tbaa !118
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adu, i64 1
  %i.aeb = load i8, ptr %i.aea, align 1, !tbaa !734
  %i.aec = zext i8 %i.aeb to i32
  %i.aed = add nsw i32 %i.z, %i.aec
  %i.aee = shl i32 %i.adz, %i.aed
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr %i.acv, i64 %indvars.iv.epil.init
  store i32 %i.aee, ptr %i.aef, align 4, !tbaa !118
  br label %._crit_edge211

._crit_edge211:                                   ; preds = %._crit_edge211.unr-lcssa, %.epil.preheader
  %i.aeg = add nuw nsw i64 %.076212, 1            ; 2 uses
  %exitcond273.not = icmp eq i64 %i.aeg, %spec.select
  br i1 %exitcond273.not, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %.preheader, !llvm.loop !2395

ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit: ; preds = %scalar.ph646, %scalar.ph606, %scalar.ph568, %.lr.ph173, %.lr.ph180, %.lr.ph187, %.lr.ph194, %.lr.ph201, %.lr.ph208, %._crit_edge211, %middle.block670, %middle.block630, %middle.block590, %middle.block552, %middle.block514, %middle.block476, %middle.block438, %middle.block400, %middle.block, %.loopexit, %._crit_edge, %._crit_edge163, %._crit_edge170, %._crit_edge177, %._crit_edge184, %._crit_edge191, %._crit_edge198, %._crit_edge205
  %i.aeh = add i64 %spec.select, %.078218
  %i.aei = zext i8 %i.ba to i64
  %i.aej = mul nuw nsw i64 %spec.select, %i.aei
  %i.aek = getelementptr inbounds nuw [4 x i8], ptr %.079215, i64 %i.aej
  %i.ael = sub nuw i64 %.081214, %spec.select
  %i.aem = load i64, ptr %i.al, align 8, !tbaa !729
  %i.aen = add i64 %i.aem, %spec.select
  store i64 %i.aen, ptr %i.al, align 8, !tbaa !729
  %i.aeo = trunc nuw i64 %spec.select to i32
  %i.aep = load i32, ptr %i.aa, align 8, !tbaa !727
  %i.aeq = sub i32 %i.aep, %i.aeo
  store i32 %i.aeq, ptr %i.aa, align 8, !tbaa !727
  br label %ma_dr_flac__read_and_decode_next_flac_frame.exit

ma_dr_flac__read_and_decode_next_flac_frame.exit: ; preds = %bb.h, %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit
  %.182 = phi i64 [ %i.ael, %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit ], [ %.081214, %bb.h ] ; 2 uses
  %.180 = phi ptr [ %i.aek, %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit ], [ %.079215, %bb.h ]
  %.1 = phi i64 [ %i.aeh, %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit ], [ %.078218, %bb.h ] ; 2 uses
  %.not = icmp eq i64 %.182, 0
  br i1 %.not, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread, label %bb.g, !llvm.loop !2396

ma_dr_flac__read_and_decode_next_flac_frame.exit.thread: ; preds = %ma_dr_flac__read_and_decode_next_flac_frame.exit, %bb.h, %.preheader242, %bb.a, %ma_dr_flac__seek_forward_by_pcm_frames.exit
  %.083 = phi i64 [ 0, %bb.a ], [ %.025.i, %ma_dr_flac__seek_forward_by_pcm_frames.exit ], [ %.078218, %bb.h ], [ %.078218, %.preheader242 ], [ %.1, %ma_dr_flac__read_and_decode_next_flac_frame.exit ]
  ret i64 %.083
}

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @ma_flac_seek_to_pcm_frame(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !708
  %i.d = tail call i32 @ma_dr_flac_seek_to_pcm_frame(ptr noundef %i.c, i64 noundef %1)
  %sext = add nsw i32 %i.d, -1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.1 = phi i32 [ %sext, %bb.b ], [ -2, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ma_dr_flac_seek_to_pcm_frame(ptr noundef %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4456 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4472 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4480 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 53 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 54
  br label %tailrecurse

end_hunk_2
