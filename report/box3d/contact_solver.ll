Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/contact_solver?download=true
inline.NumInlined: 529
inline.NumDeleted: 60
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@b3PrepareContacts_Mesh:bb.a
  %i.vb = fadd <2 x float> %i.ut, %i.ur
  %i.vc = fadd <2 x float> %i.uw, %i.vb
  %i.vd = fmul <2 x float> %.sroa.0383.0.copyload, %i.vc ; 2 uses
  %shift1147 = shufflevector <2 x float> %i.vd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1148 = fadd <2 x float> %i.vd, %shift1147
  %i.ve = extractelement <2 x float> %foldExtExtBinop1148, i64 0
  %i.vf = fmul float %.sroa.12.0.copyload, %i.va
  %i.vg = fadd float %i.vf, %i.ve                 ; 2 uses
  %i.vh = fcmp ogt float %i.vg, 0.000000e+00
  %i.vi = fdiv float 1.000000e+00, %i.vg
  %i.vj = select i1 %i.vh, float %i.vi, float 0.000000e+00
  %i.vk = getelementptr inbounds nuw i8, ptr %i.hs, i64 256
  store float %i.vj, ptr %i.vk, align 4, !tbaa !134
  %i.vl = getelementptr inbounds nuw i8, ptr %i.hr, i64 236
  %i.vm = load float, ptr %i.vl, align 4, !tbaa !135
  %i.vn = fmul float %i.s, %i.vm
  %i.vo = getelementptr inbounds nuw i8, ptr %i.hs, i64 260
  store float %i.vn, ptr %i.vo, align 4, !tbaa !136
  %i.vp = getelementptr inbounds nuw i8, ptr %i.hs, i64 288
  %i.vq = getelementptr inbounds nuw i8, ptr %i.hr, i64 252
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.vq, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 260
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4
  %i.vr = fmul <2 x float> %i.aa, %.sroa.01.0.copyload
  %i.vs = fmul float %i.s, %.sroa.22.0.copyload
  store <2 x float> %i.vr, ptr %i.vp, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hs, i64 296
  store float %i.vs, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !103
  %indvars.iv.next1085 = add nuw nsw i64 %indvars.iv1084, 1 ; 2 uses
  %exitcond1088.not = icmp eq i64 %indvars.iv.next1085, %wide.trip.count1087
  br i1 %exitcond1088.not, label %._crit_edge1062, label %bb.i, !llvm.loop !175

.lr.ph1057:                                       ; preds = %.lr.ph1057, %.lr.ph1057.preheader.new
  %indvars.iv1079 = phi i64 [ 0, %.lr.ph1057.preheader.new ], [ %indvars.iv.next1080.1, %.lr.ph1057 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph1057.preheader.new ], [ %niter.next.1, %.lr.ph1057 ]
  %i.vt = getelementptr inbounds nuw [48 x i8], ptr %i.hs, i64 %indvars.iv1079 ; 3 uses
  %.sroa.0151.0.copyload = load <2 x float>, ptr %i.vt, align 4
  %.sroa.2152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vt, i64 8
  %.sroa.2152.0.copyload = load float, ptr %.sroa.2152.0..sroa_idx, align 4
  %i.vu = fsub float %i.jo, %.sroa.2152.0.copyload ; 2 uses
  %i.vv = fsub <2 x float> %i.jn, %.sroa.0151.0.copyload ; 2 uses
  %i.vw = fmul <2 x float> %i.vv, %i.vv           ; 2 uses
  %shift1150 = shufflevector <2 x float> %i.vw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1151 = fadd <2 x float> %i.vw, %shift1150
  %i.vx = extractelement <2 x float> %foldExtExtBinop1151, i64 0
  %i.vy = fmul float %i.vu, %i.vu
  %i.vz = fadd float %i.vy, %i.vx
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.vz)
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vt, i64 44
  store float %sqrt.i.i, ptr %i.wa, align 4, !tbaa !131
  %i.wb = getelementptr inbounds nuw [48 x i8], ptr %i.hs, i64 %indvars.iv1079 ; 3 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 48
  %.sroa.0151.0.copyload.1 = load <2 x float>, ptr %i.wc, align 4
  %.sroa.2152.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.wb, i64 56
  %.sroa.2152.0.copyload.1 = load float, ptr %.sroa.2152.0..sroa_idx.1, align 4
  %i.wd = fsub float %i.jo, %.sroa.2152.0.copyload.1 ; 2 uses
  %i.we = fsub <2 x float> %i.jn, %.sroa.0151.0.copyload.1 ; 2 uses
  %i.wf = fmul <2 x float> %i.we, %i.we           ; 2 uses
  %shift1150.1 = shufflevector <2 x float> %i.wf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1151.1 = fadd <2 x float> %i.wf, %shift1150.1
  %i.wg = extractelement <2 x float> %foldExtExtBinop1151.1, i64 0
  %i.wh = fmul float %i.wd, %i.wd
  %i.wi = fadd float %i.wh, %i.wg
  %sqrt.i.i.1 = tail call float @llvm.sqrt.f32(float %i.wi)
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wb, i64 92
  store float %sqrt.i.i.1, ptr %i.wj, align 4, !tbaa !131
  %indvars.iv.next1080.1 = add nuw nsw i64 %indvars.iv1079, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge1058.loopexit.unr-lcssa, label %.lr.ph1057, !llvm.loop !176

._crit_edge1070:                                  ; preds = %.loopexit, %.preheader
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare float @b3GetLengthUnitsPerMeter() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @b3WarmStartContacts_Mesh(i64 %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %.sroa.2368.0.extract.shift = lshr i64 %0, 32
  %.sroa.2368.0.extract.trunc = trunc nuw i64 %.sroa.2368.0.extract.shift to i32
  %.sroa.3369.0.extract.shift = lshr i64 %0, 56
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = getelementptr inbounds nuw [112 x i8], ptr %i.b, i64 %.sroa.3369.0.extract.shift
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 3920
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !189
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !195  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1240
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !141
  %i.j = and i32 %.sroa.2368.0.extract.trunc, 65535 ; 2 uses
  %.not781 = icmp eq i32 %i.j, 0
  br i1 %.not781, label %._crit_edge780, label %.lr.ph779.preheader

.lr.ph779.preheader:                              ; preds = %bb.a
  %.sroa.0367.0.extract.trunc = trunc i64 %0 to i32
  %i.k = add nsw i32 %i.j, %.sroa.0367.0.extract.trunc
  %sext = shl i64 %0, 32
  %i.l = ashr exact i64 %sext, 32
  %i.m = sext i32 %i.k to i64
  br label %.lr.ph779

._crit_edge780:                                   ; preds = %.cont.thread, %bb.a
  ret void

.lr.ph779:                                        ; preds = %.lr.ph779.preheader, %.cont.thread
  %indvars.iv795 = phi i64 [ %i.l, %.lr.ph779.preheader ], [ %indvars.iv.next796, %.cont.thread ] ; 2 uses
  %i.n = getelementptr inbounds [168 x i8], ptr %i.i, i64 %indvars.iv795 ; 18 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !107  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !108  ; 2 uses
  %i.s = icmp eq i32 %i.p, -1                     ; 2 uses
  %i.t = sext i32 %i.p to i64
  %i.u = getelementptr inbounds [56 x i8], ptr %i.g, i64 %i.t ; 9 uses
  %i.v = icmp eq i32 %i.r, -1                     ; 2 uses
  %i.w = sext i32 %i.r to i64
  %i.x = getelementptr inbounds [56 x i8], ptr %i.g, i64 %i.w ; 9 uses
  br i1 %i.s, label %.cont668.thread, label %.else661

.cont668.thread:                                  ; preds = %.lr.ph779
  %.sroa.gep622693 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.gep624699 = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %.sroa.gep627709 = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  br label %.cont660

.else661:                                         ; preds = %.lr.ph779
  %.sroa.0325.0.copyload.else.val = load <2 x float>, ptr %i.u, align 4
  %.sroa.gep622 = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %.sroa.8328.0.copyload.else.val = load float, ptr %.sroa.gep622, align 4, !tbaa !103
  %.sroa.gep624 = getelementptr inbounds nuw i8, ptr %i.u, i64 12 ; 2 uses
  %.sroa.0317.0.copyload.else.val = load <2 x float>, ptr %.sroa.gep624, align 4
  %.sroa.gep627 = getelementptr inbounds nuw i8, ptr %i.u, i64 20 ; 2 uses
  %.sroa.12322.0.copyload.else.val = load float, ptr %.sroa.gep627, align 4, !tbaa !103
  br label %.cont660

.cont660:                                         ; preds = %.cont668.thread, %.else661
  %.sroa.gep627715 = phi ptr [ %.sroa.gep627709, %.cont668.thread ], [ %.sroa.gep627, %.else661 ]
  %.sroa.0317.0.copyload714 = phi <2 x float> [ zeroinitializer, %.cont668.thread ], [ %.sroa.0317.0.copyload.else.val, %.else661 ] ; 2 uses
  %.sroa.gep622695700713 = phi ptr [ %.sroa.gep622693, %.cont668.thread ], [ %.sroa.gep622, %.else661 ]
  %.sroa.0325.0.copyload694701712 = phi <2 x float> [ zeroinitializer, %.cont668.thread ], [ %.sroa.0325.0.copyload.else.val, %.else661 ] ; 2 uses
  %.sroa.8328.0.copyload702711 = phi float [ 0.000000e+00, %.cont668.thread ], [ %.sroa.8328.0.copyload.else.val, %.else661 ] ; 2 uses
  %.sroa.gep624703710 = phi ptr [ %.sroa.gep624699, %.cont668.thread ], [ %.sroa.gep624, %.else661 ]
  %.sroa.12322.0.copyload = phi float [ 0.000000e+00, %.cont668.thread ], [ %.sroa.12322.0.copyload.else.val, %.else661 ] ; 2 uses
  br i1 %i.v, label %.cont660.cont.thread, label %.else656

.cont660.cont.thread:                             ; preds = %.cont660
  %.sroa.gep633717 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.gep636723 = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %.sroa.gep639733 = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  br label %.cont655

.else656:                                         ; preds = %.cont660
  %.sroa.0312.0.copyload.else.val = load <2 x float>, ptr %i.x, align 4
  %.sroa.gep633 = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %.sroa.8.0.copyload.else.val = load float, ptr %.sroa.gep633, align 4, !tbaa !103
  %.sroa.gep636 = getelementptr inbounds nuw i8, ptr %i.x, i64 12 ; 2 uses
  %.sroa.0305.0.copyload.else.val = load <2 x float>, ptr %.sroa.gep636, align 4
  %.sroa.gep639 = getelementptr inbounds nuw i8, ptr %i.x, i64 20 ; 2 uses
  %.sroa.12.0.copyload.else.val = load float, ptr %.sroa.gep639, align 4, !tbaa !103
  br label %.cont655

.cont655:                                         ; preds = %.cont660.cont.thread, %.else656
  %.sroa.gep639739 = phi ptr [ %.sroa.gep639733, %.cont660.cont.thread ], [ %.sroa.gep639, %.else656 ]
  %.sroa.0305.0.copyload738 = phi <2 x float> [ zeroinitializer, %.cont660.cont.thread ], [ %.sroa.0305.0.copyload.else.val, %.else656 ] ; 2 uses
  %.sroa.gep633719724737 = phi ptr [ %.sroa.gep633717, %.cont660.cont.thread ], [ %.sroa.gep633, %.else656 ]
  %.sroa.0312.0.copyload718725736 = phi <2 x float> [ zeroinitializer, %.cont660.cont.thread ], [ %.sroa.0312.0.copyload.else.val, %.else656 ] ; 2 uses
  %.sroa.8.0.copyload726735 = phi float [ 0.000000e+00, %.cont660.cont.thread ], [ %.sroa.8.0.copyload.else.val, %.else656 ] ; 2 uses
  %.sroa.gep636727734 = phi ptr [ %.sroa.gep636723, %.cont660.cont.thread ], [ %.sroa.gep636, %.else656 ]
  %.sroa.12.0.copyload = phi float [ 0.000000e+00, %.cont660.cont.thread ], [ %.sroa.12.0.copyload.else.val, %.else656 ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.z = load float, ptr %i.y, align 8, !tbaa !109 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.15598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  %.sroa.23606.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 52
  %.sroa.23606.0.copyload = load float, ptr %.sroa.23606.0..sroa_idx, align 4, !tbaa !103 ; 3 uses
  %.sroa.27610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.ab = load <2 x float>, ptr %i.aa, align 8, !tbaa !103 ; 6 uses
  %i.ac = load <2 x float>, ptr %.sroa.15598.0..sroa_idx, align 4, !tbaa !103 ; 5 uses
  %i.ad = load <2 x float>, ptr %.sroa.27610.0..sroa_idx, align 8, !tbaa !103 ; 5 uses
  %.sroa.35618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %.sroa.35618.0.copyload = load float, ptr %.sroa.35618.0..sroa_idx, align 8, !tbaa !103 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  %i.af = load float, ptr %i.ae, align 4, !tbaa !110 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 68
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 92
  %i.ah = load <2 x float>, ptr %i.ag, align 4, !tbaa !103 ; 5 uses
  %i.ai = load <2 x float>, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !103 ; 4 uses
  %i.aj = load <2 x float>, ptr %.sroa.27.0..sroa_idx, align 4, !tbaa !103 ; 4 uses
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 100
  %.sroa.35.0.copyload = load float, ptr %.sroa.35.0..sroa_idx, align 4, !tbaa !103 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 164
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !106 ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph767, label %._crit_edge768

.lr.ph767:                                        ; preds = %.cont655
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %.sroa.23.0.copyload = load float, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !103 ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 76
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !103 ; 2 uses
  %.sroa.11594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.11594.0.copyload = load float, ptr %.sroa.11594.0..sroa_idx, align 8, !tbaa !103 ; 2 uses
  %i.an = load ptr, ptr %i.n, align 8, !tbaa !114
  %wide.trip.count793 = zext nneg i32 %i.al to i64
  %i.ao = insertelement <2 x float> poison, float %.sroa.11.0.copyload, i64 0
  %i.ap = insertelement <2 x float> %i.ao, float %.sroa.23.0.copyload, i64 1 ; 3 uses
  %i.aq = insertelement <2 x float> poison, float %.sroa.23.0.copyload, i64 0
  %i.ar = insertelement <2 x float> %i.aq, float %.sroa.11.0.copyload, i64 1
  %i.as = insertelement <2 x float> poison, float %.sroa.11594.0.copyload, i64 0
  %i.at = insertelement <2 x float> %i.as, float %.sroa.23606.0.copyload, i64 1 ; 2 uses
  %i.au = insertelement <2 x float> poison, float %.sroa.35618.0.copyload, i64 0
  %i.av = insertelement <2 x float> %i.au, float %.sroa.11594.0.copyload, i64 1 ; 2 uses
  %2 = extractelement <2 x float> %i.aj, i64 0    ; 2 uses
  %i.aw = extractelement <2 x float> %i.ah, i64 0 ; 2 uses
  %i.ax = extractelement <2 x float> %i.ai, i64 0 ; 3 uses
  %i.ay = shufflevector <2 x float> %i.aj, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.az = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.ay, <4 x i32> <i32 poison, i32 poison, i32 5, i32 3>
  %i.ba = shufflevector <2 x float> %i.ah, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bb = shufflevector <4 x float> %i.az, <4 x float> %i.ba, <4 x i32> <i32 5, i32 5, i32 2, i32 3> ; 2 uses
  %i.bc = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bd = shufflevector <4 x float> %i.bb, <4 x float> %i.bc, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.be = shufflevector <2 x float> %i.ah, <2 x float> %i.ai, <2 x i32> <i32 1, i32 3>
  %i.bf = extractelement <2 x float> %i.ac, i64 0
  %i.bg = shufflevector <2 x float> %i.ac, <2 x float> %i.ab, <2 x i32> <i32 3, i32 1>
  %i.bh = shufflevector <2 x float> %i.ad, <2 x float> %i.ab, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bi = insertelement <2 x float> poison, float %i.af, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bk = insertelement <2 x float> poison, float %i.z, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bm = shufflevector <4 x float> %i.bb, <4 x float> %i.bc, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  br label %bb.b

._crit_edge768:                                   ; preds = %._crit_edge, %.cont655
  %.sroa.0305.0.lcssa = phi <2 x float> [ %.sroa.0305.0.copyload738, %.cont655 ], [ %i.gw, %._crit_edge ]
  %.sroa.12.0.lcssa = phi float [ %.sroa.12.0.copyload, %.cont655 ], [ %i.gx, %._crit_edge ]
  %.sroa.0312.0.lcssa = phi <2 x float> [ %.sroa.0312.0.copyload718725736, %.cont655 ], [ %i.dz, %._crit_edge ]
  %.sroa.8.0.lcssa = phi float [ %.sroa.8.0.copyload726735, %.cont655 ], [ %i.eb, %._crit_edge ]
  %.sroa.0317.0.lcssa = phi <2 x float> [ %.sroa.0317.0.copyload714, %.cont655 ], [ %i.gm, %._crit_edge ]
  %.sroa.12322.0.lcssa = phi float [ %.sroa.12322.0.copyload, %.cont655 ], [ %i.gn, %._crit_edge ]
  %.sroa.0325.0.lcssa = phi <2 x float> [ %.sroa.0325.0.copyload694701712, %.cont655 ], [ %i.di, %._crit_edge ]
  %.sroa.8328.0.lcssa = phi float [ %.sroa.8328.0.copyload702711, %.cont655 ], [ %i.dk, %._crit_edge ]
  br i1 %i.s, label %.cont648.thread, label %.cont648

.cont648:                                         ; preds = %._crit_edge768
  %.sroa.gep630 = getelementptr inbounds nuw i8, ptr %i.u, i64 52
  %.else.val651 = load i32, ptr %.sroa.gep630, align 4, !tbaa !143
  %i.bn = and i32 %.else.val651, 4096
  %.not = icmp eq i32 %i.bn, 0
  br i1 %.not, label %.cont648.thread, label %.cont657

bb.b:                                             ; preds = %.lr.ph767, %._crit_edge
  %indvars.iv790 = phi i64 [ 0, %.lr.ph767 ], [ %indvars.iv.next791, %._crit_edge ] ; 2 uses
  %.sroa.8328.0766 = phi float [ %.sroa.8328.0.copyload702711, %.lr.ph767 ], [ %i.dk, %._crit_edge ] ; 2 uses
  %.sroa.0325.0765 = phi <2 x float> [ %.sroa.0325.0.copyload694701712, %.lr.ph767 ], [ %i.di, %._crit_edge ] ; 2 uses
  %.sroa.12322.0764 = phi float [ %.sroa.12322.0.copyload, %.lr.ph767 ], [ %i.gn, %._crit_edge ] ; 2 uses
  %.sroa.0317.0763 = phi <2 x float> [ %.sroa.0317.0.copyload714, %.lr.ph767 ], [ %i.gm, %._crit_edge ] ; 2 uses
  %.sroa.8.0762 = phi float [ %.sroa.8.0.copyload726735, %.lr.ph767 ], [ %i.eb, %._crit_edge ] ; 2 uses
  %.sroa.0312.0761 = phi <2 x float> [ %.sroa.0312.0.copyload718725736, %.lr.ph767 ], [ %i.dz, %._crit_edge ] ; 2 uses
  %.sroa.12.0760 = phi float [ %.sroa.12.0.copyload, %.lr.ph767 ], [ %i.gx, %._crit_edge ] ; 2 uses
  %.sroa.0305.0759 = phi <2 x float> [ %.sroa.0305.0.copyload738, %.lr.ph767 ], [ %i.gw, %._crit_edge ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [308 x i8], ptr %i.an, i64 %indvars.iv790 ; 16 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 196
  %.sroa.0283.0.copyload = load <2 x float>, ptr %i.bp, align 4 ; 2 uses
  %.sroa.4284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 204
  %.sroa.4284.0.copyload = load float, ptr %.sroa.4284.0..sroa_idx, align 4, !tbaa !103 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 192
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !121 ; 2 uses
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %i.br to i64
  %i.bt = shufflevector <2 x float> %.sroa.0283.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.bu = insertelement <4 x float> %i.bt, float 1.000000e+00, i64 3
  %i.bv = insertelement <4 x float> %i.bu, float %.sroa.4284.0.copyload, i64 0
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %.sroa.0305.1.lcssa = phi <2 x float> [ %.sroa.0305.0759, %bb.b ], [ %.sroa.08.4.vec.insert.i548, %bb.c ] ; 2 uses
  %.sroa.12.1.lcssa = phi float [ %.sroa.12.0760, %bb.b ], [ %i.jm, %bb.c ]
  %.sroa.0312.1.lcssa = phi <2 x float> [ %.sroa.0312.0761, %bb.b ], [ %i.jo, %bb.c ]
  %.sroa.8.1.lcssa = phi float [ %.sroa.8.0762, %bb.b ], [ %i.jq, %bb.c ]
  %.sroa.0317.1.lcssa = phi <2 x float> [ %.sroa.0317.0763, %bb.b ], [ %i.ig, %bb.c ]
  %.sroa.12322.1.lcssa = phi float [ %.sroa.12322.0764, %bb.b ], [ %i.ih, %bb.c ]
  %.sroa.0325.1.lcssa = phi <2 x float> [ %.sroa.0325.0765, %bb.b ], [ %i.ij, %bb.c ]
  %.sroa.8328.1.lcssa = phi float [ %.sroa.8328.0766, %bb.b ], [ %i.il, %bb.c ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 232
  %.sroa.0186.0.copyload = load <2 x float>, ptr %i.bw, align 4 ; 3 uses
  %.sroa.4187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 240
  %.sroa.4187.0.copyload = load float, ptr %.sroa.4187.0..sroa_idx, align 4, !tbaa !103 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 244
  %.sroa.0184.0.copyload = load <2 x float>, ptr %i.bx, align 4 ; 2 uses
  %.sroa.4185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 252
  %.sroa.4185.0.copyload = load float, ptr %.sroa.4185.0..sroa_idx, align 4, !tbaa !103 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 280
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 208
  %.sroa.0177.0.copyload = load <2 x float>, ptr %i.bz, align 4
  %.sroa.2178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 216
  %.sroa.2178.0.copyload = load float, ptr %.sroa.2178.0..sroa_idx, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bo, i64 220
  %.sroa.0167.0.copyload = load <2 x float>, ptr %i.ca, align 4
  %.sroa.2168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 228
  %.sroa.2168.0.copyload = load float, ptr %.sroa.2168.0..sroa_idx, align 4
  %.sroa.011.0.vec.extract.i = extractelement <2 x float> %.sroa.0186.0.copyload, i64 0
  %.sroa.06.0.vec.extract.i415 = extractelement <2 x float> %.sroa.0305.1.lcssa, i64 0
  %i.cb = load <2 x float>, ptr %i.by, align 4, !tbaa !103 ; 2 uses
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.cd = shufflevector <2 x float> %.sroa.0177.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.ce = insertelement <4 x float> %i.cd, float 1.000000e+00, i64 3
  %i.cf = insertelement <4 x float> %i.ce, float %.sroa.2178.0.copyload, i64 1
  %i.cg = fmul <4 x float> %i.cc, %i.cf
  %i.ch = shufflevector <2 x float> %i.cb, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.ci = shufflevector <2 x float> %.sroa.0167.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.cj = insertelement <4 x float> %i.ci, float 1.000000e+00, i64 3
  %i.ck = insertelement <4 x float> %i.cj, float %.sroa.2168.0.copyload, i64 1
  %i.cl = fmul <4 x float> %i.ch, %i.ck
  %i.cm = fadd <4 x float> %i.cg, %i.cl           ; 6 uses
  %i.cn = extractelement <4 x float> %i.cm, i64 1 ; 3 uses
  %i.co = extractelement <4 x float> %i.cm, i64 0
  %i.cp = fmul float %.sroa.4187.0.copyload, %i.co
  %i.cq = fmul float %.sroa.011.0.vec.extract.i, %i.cn
  %i.cr = fsub float %i.cp, %i.cq                 ; 2 uses
  %i.cs = shufflevector <4 x float> %i.cm, <4 x float> poison, <2 x i32> <i32 2, i32 1>
  %i.ct = fmul <2 x float> %.sroa.0186.0.copyload, %i.cs
  %i.cu = shufflevector <2 x float> %.sroa.0186.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cv = insertelement <2 x float> %i.cu, float %.sroa.4187.0.copyload, i64 1
  %i.cw = shufflevector <4 x float> %i.cm, <4 x float> poison, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.cx = fmul <2 x float> %i.cv, %i.cw
  %i.cy = fsub <2 x float> %i.ct, %i.cx           ; 4 uses
  %shift = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.ab, %shift
  %foldExtExtBinop816 = fmul <2 x float> %i.ad, %i.cy
  %i.cz = fmul <2 x float> %i.bh, %i.cy           ; 2 uses
  %i.da = fmul float %.sroa.23606.0.copyload, %i.cr
  %i.db = fmul <2 x float> %i.av, %i.cy           ; 2 uses
  %i.dc = extractelement <2 x float> %i.db, i64 1
  %i.dd = fadd float %i.dc, %i.da
  %i.de = extractelement <2 x float> %i.db, i64 0
  %i.df = fadd float %i.de, %i.dd
  %i.dg = fsub float %.sroa.12322.1.lcssa, %i.df
  %i.dh = fmul <2 x float> %i.bl, %i.cw
  %i.di = fsub <2 x float> %.sroa.0325.1.lcssa, %i.dh ; 2 uses
  %i.dj = fmul float %i.z, %i.cn
  %i.dk = fsub float %.sroa.8328.1.lcssa, %i.dj   ; 2 uses
  %i.dl = shufflevector <2 x float> %.sroa.0184.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.dm = insertelement <4 x float> %i.dl, float 0.000000e+00, i64 3
  %i.dn = insertelement <4 x float> %i.dm, float %.sroa.4185.0.copyload, i64 1
  %i.do = shufflevector <4 x float> %i.cm, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.dp = fmul <4 x float> %i.dn, %i.do
  %i.dq = shufflevector <2 x float> %.sroa.0184.0.copyload, <2 x float> %.sroa.0305.1.lcssa, <4 x i32> <i32 poison, i32 1, i32 0, i32 3>
  %i.dr = insertelement <4 x float> %i.dq, float %.sroa.4185.0.copyload, i64 0
  %i.ds = fmul <4 x float> %i.dr, %i.cm
  %i.dt = fsub <4 x float> %i.ds, %i.dp           ; 5 uses
  %i.du = extractelement <4 x float> %i.dt, i64 1
  %i.dv = fmul float %i.aw, %i.du
  %i.dw = extractelement <4 x float> %i.dt, i64 0
  %i.dx = fmul float %i.ax, %i.dw
  %3 = fadd float %i.dv, %i.dx
  %4 = extractelement <4 x float> %i.dt, i64 2    ; 2 uses
  %5 = fmul float %2, %4
  %6 = fadd float %5, %3
  %7 = fmul <4 x float> %i.dt, %i.bd
  %8 = shufflevector <4 x float> %i.dt, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %9 = fmul <2 x float> %i.ar, %8                 ; 2 uses
  %shift818 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop819 = fadd <2 x float> %shift818, %9
  %10 = extractelement <2 x float> %foldExtExtBinop819, i64 0
  %11 = fmul float %.sroa.35.0.copyload, %4
  %12 = fadd float %11, %10
  %13 = fadd float %.sroa.06.0.vec.extract.i415, %6
  %14 = fadd float %.sroa.12.1.lcssa, %12
  %i.dy = fmul <2 x float> %i.bj, %i.cw
  %i.dz = fadd <2 x float> %.sroa.0312.1.lcssa, %i.dy ; 2 uses
  %i.ea = fmul float %i.af, %i.cn
  %i.eb = fadd float %.sroa.8.1.lcssa, %i.ea      ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bo, i64 260
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !136 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bo, i64 288
  %.sroa.032.0.copyload = load <2 x float>, ptr %i.ee, align 4 ; 7 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 296
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !103 ; 3 uses
  %foldExtExtBinop821.a = fmul <2 x float> %i.ab, %.sroa.032.0.copyload
  %.sroa.03.4.vec.extract.i466 = extractelement <2 x float> %.sroa.032.0.copyload, i64 1 ; 2 uses
  %i.ef = fmul float %i.bf, %.sroa.03.4.vec.extract.i466
  %i.eg = fmul <2 x float> %i.bg, %.sroa.032.0.copyload ; 2 uses
  %i.eh = fmul <2 x float> %i.at, %.sroa.032.0.copyload ; 2 uses
  %shift823 = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop824 = fadd <2 x float> %i.eh, %shift823
  %i.ei = extractelement <2 x float> %foldExtExtBinop824, i64 0
  %i.ej = fmul float %.sroa.35618.0.copyload, %.sroa.5.0.copyload
  %i.ek = fadd float %i.ej, %i.ei
  %foldExtExtBinop826.a = fmul <2 x float> %i.ah, %.sroa.032.0.copyload
  %i.el = fmul float %i.ax, %.sroa.03.4.vec.extract.i466
  %i.em = fmul <2 x float> %i.be, %.sroa.032.0.copyload ; 2 uses
  %i.en = fmul <2 x float> %i.ap, %.sroa.032.0.copyload ; 2 uses
  %shift828.a = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop829.a = fadd <2 x float> %i.en, %shift828.a
  %i.eo = extractelement <2 x float> %foldExtExtBinop829.a, i64 0
  %i.ep = fmul float %.sroa.35.0.copyload, %.sroa.5.0.copyload
  %i.eq = fadd float %i.ep, %i.eo
  %i.er = tail call float @llvm.vector.reduce.fadd.v4f32(float -0.000000e+00, <4 x float> %7)
  %i.es = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.et = shufflevector <2 x float> %i.es, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eu = fmul <2 x float> %i.ac, %i.et
  %i.ev = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %i.cz, <2 x i32> <i32 0, i32 3>
  %i.ew = fadd <2 x float> %i.ev, %i.eu
  %i.ex = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ey = shufflevector <2 x float> %foldExtExtBinop816, <2 x float> %i.ex, <2 x i32> <i32 0, i32 3>
  %i.ez = fadd <2 x float> %i.ey, %i.ew
  %i.fa = fsub <2 x float> %.sroa.0317.1.lcssa, %i.ez
  %i.fb = shufflevector <2 x float> %i.eg, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fc = shufflevector <2 x float> %foldExtExtBinop821.a, <2 x float> %i.fb, <2 x i32> <i32 0, i32 3>
  %i.fd = insertelement <2 x float> %i.eg, float %i.ef, i64 0
  %i.fe = fadd <2 x float> %i.fc, %i.fd
  %i.ff = insertelement <2 x float> poison, float %.sroa.5.0.copyload, i64 0
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fh = fmul <2 x float> %i.ad, %i.fg
  %i.fi = fadd <2 x float> %i.fh, %i.fe
  %i.fj = fmul float %.sroa.4284.0.copyload, %i.ed ; 3 uses
  %i.fk = insertelement <2 x float> poison, float %i.fj, i64 0
  %i.fl = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fm = fmul <2 x float> %i.ad, %i.fl
  %i.fn = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fp = fmul <2 x float> %.sroa.0283.0.copyload, %i.fo ; 4 uses
  %i.fq = shufflevector <2 x float> %i.fp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fr = fmul <2 x float> %i.ab, %i.fq
  %i.fs = shufflevector <2 x float> %i.fp, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ft = fmul <2 x float> %i.ac, %i.fs
  %i.fu = fadd <2 x float> %i.fr, %i.ft
  %i.fv = fadd <2 x float> %i.fm, %i.fu
  %i.fw = fmul <2 x float> %i.at, %i.fp           ; 2 uses
  %shift831.a = shufflevector <2 x float> %i.fw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop832.a = fadd <2 x float> %i.fw, %shift831.a
  %i.fx = extractelement <2 x float> %foldExtExtBinop832.a, i64 0
  %i.fy = fmul float %.sroa.35618.0.copyload, %i.fj
  %i.fz = fadd float %i.fy, %i.fx
  %i.ga = fsub <2 x float> %i.fa, %i.fv
  %i.gb = fsub float %i.dg, %i.fz
  %i.gc = fmul <2 x float> %i.ah, %i.fq
  %i.gd = fmul <2 x float> %i.ai, %i.fs
  %i.ge = fadd <2 x float> %i.gc, %i.gd
  %i.gf = fmul <2 x float> %i.aj, %i.fl
  %i.gg = fadd <2 x float> %i.gf, %i.ge
  %i.gh = fmul <2 x float> %i.ap, %i.fp           ; 2 uses
  %shift834.a = shufflevector <2 x float> %i.gh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop835.a = fadd <2 x float> %i.gh, %shift834.a
  %i.gi = extractelement <2 x float> %foldExtExtBinop835.a, i64 0
  %i.gj = fmul float %.sroa.35.0.copyload, %i.fj
  %i.gk = fadd float %i.gj, %i.gi
  %i.gl = fadd float %i.gk, %14
  %i.gm = fsub <2 x float> %i.ga, %i.fi           ; 2 uses
  %i.gn = fsub float %i.gb, %i.ek                 ; 2 uses
  %i.go = shufflevector <2 x float> %i.em, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gp = shufflevector <2 x float> %foldExtExtBinop826.a, <2 x float> %i.go, <2 x i32> <i32 0, i32 3>
  %i.gq = insertelement <2 x float> %i.em, float %i.el, i64 0
  %i.gr = fadd <2 x float> %i.gp, %i.gq
  %i.gs = fmul <2 x float> %i.aj, %i.fg
  %i.gt = fadd <2 x float> %i.gs, %i.gr
  %15 = insertelement <2 x float> poison, float %13, i64 0
  %i.gu = insertelement <2 x float> %15, float %i.er, i64 1
  %i.gv = fadd <2 x float> %i.gu, %i.gg
  %i.gw = fadd <2 x float> %i.gv, %i.gt           ; 2 uses
  %i.gx = fadd float %i.eq, %i.gl                 ; 2 uses
  %indvars.iv.next791 = add nuw nsw i64 %indvars.iv790, 1 ; 2 uses
  %exitcond794.not = icmp eq i64 %indvars.iv.next791, %wide.trip.count793
  br i1 %exitcond794.not, label %._crit_edge768, label %bb.b, !llvm.loop !186

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.sroa.8328.1750 = phi float [ %.sroa.8328.0766, %.lr.ph ], [ %i.il, %bb.c ]
  %.sroa.0325.1749 = phi <2 x float> [ %.sroa.0325.0765, %.lr.ph ], [ %i.ij, %bb.c ]
  %.sroa.12322.1748 = phi float [ %.sroa.12322.0764, %.lr.ph ], [ %i.ih, %bb.c ]
  %.sroa.0317.1747 = phi <2 x float> [ %.sroa.0317.0763, %.lr.ph ], [ %i.ig, %bb.c ]
  %.sroa.8.1746 = phi float [ %.sroa.8.0762, %.lr.ph ], [ %i.jq, %bb.c ]
  %.sroa.0312.1745 = phi <2 x float> [ %.sroa.0312.0761, %.lr.ph ], [ %i.jo, %bb.c ]
  %.sroa.12.1744 = phi float [ %.sroa.12.0760, %.lr.ph ], [ %i.jm, %bb.c ]
  %.sroa.0305.1743 = phi <2 x float> [ %.sroa.0305.0759, %.lr.ph ], [ %.sroa.08.4.vec.insert.i548, %bb.c ] ; 3 uses
  %i.gy = getelementptr inbounds nuw [48 x i8], ptr %i.bo, i64 %indvars.iv ; 5 uses
  %.sroa.0276.0.copyload = load <2 x float>, ptr %i.gy, align 4 ; 3 uses
  %.sroa.4277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %.sroa.4277.0.copyload = load float, ptr %.sroa.4277.0..sroa_idx, align 4, !tbaa !103 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 12
  %.sroa.0274.0.copyload = load <2 x float>, ptr %i.gz, align 4 ; 2 uses
  %.sroa.4275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gy, i64 20
  %.sroa.4275.0.copyload = load float, ptr %.sroa.4275.0..sroa_idx, align 4, !tbaa !103 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 32
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !127
  %.sroa.011.0.vec.extract.i503 = extractelement <2 x float> %.sroa.0276.0.copyload, i64 0
  %.sroa.06.0.vec.extract.i543 = extractelement <2 x float> %.sroa.0305.1743, i64 0
  %i.hc = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.hb, i64 0
  %i.hd = shufflevector <4 x float> %i.hc, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.he = fmul <4 x float> %i.bv, %i.hd           ; 6 uses
  %i.hf = extractelement <4 x float> %i.he, i64 0 ; 3 uses
  %i.hg = extractelement <4 x float> %i.he, i64 1
  %i.hh = fmul float %.sroa.4277.0.copyload, %i.hg
  %i.hi = fmul float %.sroa.011.0.vec.extract.i503, %i.hf
  %i.hj = fsub float %i.hh, %i.hi                 ; 2 uses
  %i.hk = shufflevector <4 x float> %i.he, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.hl = fmul <2 x float> %.sroa.0276.0.copyload, %i.hk
  %i.hm = shufflevector <2 x float> %.sroa.0276.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hn = insertelement <2 x float> %i.hm, float %.sroa.4277.0.copyload, i64 1
  %i.ho = shufflevector <4 x float> %i.he, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.hp = fmul <2 x float> %i.hn, %i.ho
  %i.hq = fsub <2 x float> %i.hl, %i.hp           ; 4 uses
  %shift837 = shufflevector <2 x float> %i.hq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop838 = fmul <2 x float> %i.ab, %shift837
  %foldExtExtBinop840.a = fmul <2 x float> %i.ad, %i.hq
  %i.hr = fmul <2 x float> %i.bh, %i.hq           ; 2 uses
  %i.hs = fmul float %.sroa.23606.0.copyload, %i.hj
  %i.ht = fmul <2 x float> %i.av, %i.hq           ; 2 uses
  %i.hu = extractelement <2 x float> %i.ht, i64 1
  %i.hv = fadd float %i.hu, %i.hs
  %i.hw = extractelement <2 x float> %i.ht, i64 0
  %i.hx = fadd float %i.hw, %i.hv
  %i.hy = insertelement <2 x float> poison, float %i.hj, i64 0
  %i.hz = shufflevector <2 x float> %i.hy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ia = fmul <2 x float> %i.ac, %i.hz
  %i.ib = shufflevector <2 x float> %foldExtExtBinop838, <2 x float> %i.hr, <2 x i32> <i32 0, i32 3>
  %i.ic = fadd <2 x float> %i.ib, %i.ia
  %i.id = shufflevector <2 x float> %i.hr, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ie = shufflevector <2 x float> %foldExtExtBinop840.a, <2 x float> %i.id, <2 x i32> <i32 0, i32 3>
  %i.if = fadd <2 x float> %i.ie, %i.ic
  %i.ig = fsub <2 x float> %.sroa.0317.1747, %i.if ; 2 uses
  %i.ih = fsub float %.sroa.12322.1748, %i.hx     ; 2 uses
  %i.ii = fmul <2 x float> %i.bl, %i.ho
  %i.ij = fsub <2 x float> %.sroa.0325.1749, %i.ii ; 2 uses
  %i.ik = fmul float %i.z, %i.hf
  %i.il = fsub float %.sroa.8328.1750, %i.ik      ; 2 uses
  %i.im = shufflevector <2 x float> %.sroa.0274.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.in = insertelement <4 x float> %i.im, float 0.000000e+00, i64 3
  %i.io = insertelement <4 x float> %i.in, float %.sroa.4275.0.copyload, i64 0
  %i.ip = shufflevector <4 x float> %i.he, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.iq = fmul <4 x float> %i.io, %i.ip
  %.sroa.06.4.vec.extract.i546 = extractelement <2 x float> %.sroa.0305.1743, i64 1
  %i.ir = shufflevector <2 x float> %.sroa.0274.0.copyload, <2 x float> %.sroa.0305.1743, <4 x i32> <i32 1, i32 poison, i32 0, i32 3>
  %i.is = insertelement <4 x float> %i.ir, float %.sroa.4275.0.copyload, i64 1
  %i.it = fmul <4 x float> %i.is, %i.he
  %i.iu = fsub <4 x float> %i.it, %i.iq           ; 5 uses
  %i.iv = extractelement <4 x float> %i.iu, i64 0
  %i.iw = fmul float %i.aw, %i.iv
  %i.ix = extractelement <4 x float> %i.iu, i64 1
  %i.iy = fmul float %i.ax, %i.ix
  %i.iz = fadd float %i.iw, %i.iy
  %i.ja = extractelement <4 x float> %i.iu, i64 2 ; 2 uses
  %i.jb = fmul float %2, %i.ja
  %i.jc = fadd float %i.jb, %i.iz
  %i.jd = fmul <4 x float> %i.iu, %i.bm           ; 3 uses
  %shift842.a = shufflevector <4 x float> %i.jd, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop843.a = fadd <4 x float> %i.jd, %shift842.a
  %shift845.a = shufflevector <4 x float> %i.jd, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop846.a = fadd <4 x float> %shift845.a, %foldExtExtBinop843.a
  %i.je = extractelement <4 x float> %foldExtExtBinop846.a, i64 0
  %i.jf = shufflevector <4 x float> %i.iu, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.jg = fmul <2 x float> %i.ap, %i.jf           ; 2 uses
  %shift848 = shufflevector <2 x float> %i.jg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop849 = fadd <2 x float> %i.jg, %shift848
  %i.jh = extractelement <2 x float> %foldExtExtBinop849, i64 0
  %i.ji = fmul float %.sroa.35.0.copyload, %i.ja
  %i.jj = fadd float %i.ji, %i.jh
  %i.jk = fadd float %.sroa.06.0.vec.extract.i543, %i.jc
  %.sroa.08.0.vec.insert.i545 = insertelement <2 x float> poison, float %i.jk, i64 0
  %i.jl = fadd float %.sroa.06.4.vec.extract.i546, %i.je
  %.sroa.08.4.vec.insert.i548 = insertelement <2 x float> %.sroa.08.0.vec.insert.i545, float %i.jl, i64 1 ; 2 uses
  %i.jm = fadd float %.sroa.12.1744, %i.jj        ; 2 uses
  %i.jn = fmul <2 x float> %i.bj, %i.ho
  %i.jo = fadd <2 x float> %.sroa.0312.1745, %i.jn ; 2 uses
  %i.jp = fmul float %i.af, %i.hf
  %i.jq = fadd float %.sroa.8.1746, %i.jp         ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !187

.cont657:                                         ; preds = %.cont648
  store <2 x float> %.sroa.0325.0.lcssa, ptr %i.u, align 4
  store float %.sroa.8328.0.lcssa, ptr %.sroa.gep622695700713, align 4, !tbaa !103
  store <2 x float> %.sroa.0317.0.lcssa, ptr %.sroa.gep624703710, align 4
  store float %.sroa.12322.0.lcssa, ptr %.sroa.gep627715, align 4, !tbaa !103
  br label %.cont648.thread

.cont648.thread:                                  ; preds = %._crit_edge768, %.cont657, %.cont648
  br i1 %i.v, label %.cont.thread, label %.cont

.cont:                                            ; preds = %.cont648.thread
  %.sroa.gep642 = getelementptr inbounds nuw i8, ptr %i.x, i64 52
  %.else.val = load i32, ptr %.sroa.gep642, align 4, !tbaa !143
  %i.jr = and i32 %.else.val, 4096
  %.not372 = icmp eq i32 %i.jr, 0
  br i1 %.not372, label %.cont.thread, label %.cont653

.cont653:                                         ; preds = %.cont
  store <2 x float> %.sroa.0312.0.lcssa, ptr %i.x, align 4
  store float %.sroa.8.0.lcssa, ptr %.sroa.gep633719724737, align 4, !tbaa !103
  store <2 x float> %.sroa.0305.0.lcssa, ptr %.sroa.gep636727734, align 4
  store float %.sroa.12.0.lcssa, ptr %.sroa.gep639739, align 4, !tbaa !103
  br label %.cont.thread

.cont.thread:                                     ; preds = %.cont648.thread, %.cont653, %.cont
  %indvars.iv.next796 = add nsw i64 %indvars.iv795, 1 ; 2 uses
  %i.js = icmp slt i64 %indvars.iv.next796, %i.m
  br i1 %i.js, label %.lr.ph779, label %._crit_edge780, !llvm.loop !188
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @b3SolveContacts_Mesh(i64 %0, ptr nofree noundef readonly captures(none) %1, i1 noundef zeroext %2) local_unnamed_addr #3 {
bb.a:
  %.sroa.17 = alloca <2 x float>, align 8         ; 6 uses
  %.sroa.2729.0.extract.shift = lshr i64 %0, 32
  %.sroa.2729.0.extract.trunc = trunc nuw i64 %.sroa.2729.0.extract.shift to i32
  %.sroa.3730.0.extract.shift = lshr i64 %0, 56
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = getelementptr inbounds nuw [112 x i8], ptr %i.b, i64 %.sroa.3730.0.extract.shift
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1240
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !141
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17)
  store <2 x float> zeroinitializer, ptr %.sroa.17, align 8
  %.sroa.17.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.17, i64 4
  store float 1.000000e+00, ptr %.sroa.17.4..sroa_idx, align 4
  %i.h = and i32 %.sroa.2729.0.extract.trunc, 65535 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load float, ptr %i.i, align 4, !tbaa !144
  %.not1462 = icmp eq i32 %i.h, 0
  br i1 %.not1462, label %._crit_edge1461, label %.lr.ph1460

.lr.ph1460:                                       ; preds = %bb.a
  %.sroa.0728.0.extract.trunc = trunc i64 %0 to i32
  %i.k = add nsw i32 %i.h, %.sroa.0728.0.extract.trunc
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 4452
  %i.m = load float, ptr %i.l, align 4, !tbaa !145
  %i.n = fneg float %i.m                          ; 2 uses
  %sext = shl i64 %0, 32
  %i.o = ashr exact i64 %sext, 32
  %i.p = sext i32 %i.k to i64
  br label %bb.b

._crit_edge1461:                                  ; preds = %.cont.thread, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17)
  ret void

bb.b:                                             ; preds = %.lr.ph1460, %.cont.thread
  %indvars.iv1474 = phi i64 [ %i.o, %.lr.ph1460 ], [ %indvars.iv.next1475, %.cont.thread ] ; 2 uses
  %i.q = getelementptr inbounds [168 x i8], ptr %i.e, i64 %indvars.iv1474 ; 29 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 164
  %i.s = load i32, ptr %i.r, align 4, !tbaa !106  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !107  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.w = load i32, ptr %i.v, align 4, !tbaa !108  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.y = load float, ptr %i.x, align 8, !tbaa !109 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.aa = load <2 x float>, ptr %i.z, align 8, !tbaa !103 ; 6 uses
  %.sroa.111155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %.sroa.111155.0.copyload = load float, ptr %.sroa.111155.0..sroa_idx, align 8, !tbaa !103 ; 4 uses
  %.sroa.151159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 44
  %i.ab = load <2 x float>, ptr %.sroa.151159.0..sroa_idx, align 4, !tbaa !103 ; 5 uses
  %.sroa.231167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 52
  %.sroa.231167.0.copyload = load float, ptr %.sroa.231167.0..sroa_idx, align 4, !tbaa !103 ; 2 uses
  %.sroa.271171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %.sroa.351179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %.sroa.351179.0.copyload = load float, ptr %.sroa.351179.0..sroa_idx, align 8, !tbaa !103 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !110 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 68
  %i.af = load <2 x float>, ptr %i.ae, align 4, !tbaa !103 ; 6 uses
  %.sroa.111125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 76
  %.sroa.111125.0.copyload = load float, ptr %.sroa.111125.0..sroa_idx, align 4, !tbaa !103 ; 2 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.ag = load <2 x float>, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !103 ; 5 uses
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %.sroa.23.0.copyload = load float, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !103 ; 2 uses
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 92
  %i.ah = load <2 x float>, ptr %.sroa.271171.0..sroa_idx, align 8, !tbaa !103 ; 5 uses
  %i.ai = load <2 x float>, ptr %.sroa.27.0..sroa_idx, align 4, !tbaa !103 ; 5 uses
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 100
  %.sroa.35.0.copyload = load float, ptr %.sroa.35.0..sroa_idx, align 4, !tbaa !103
  %i.aj = icmp eq i32 %i.u, -1                    ; 4 uses
  %i.ak = sext i32 %i.u to i64
  %i.al = getelementptr inbounds [56 x i8], ptr %i.g, i64 %i.ak ; 13 uses
  br i1 %i.aj, label %.cont1255.thread, label %.else1243

.cont1255.thread:                                 ; preds = %bb.b
  %.sroa.gep11831290 = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.gep11851296 = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %.sroa.gep11881306 = getelementptr inbounds nuw i8, ptr %i.al, i64 20
  br label %.cont1242

.else1243:                                        ; preds = %bb.b
  %.sroa.0673.0.copyload.else.val = load <2 x float>, ptr %i.al, align 4
  %.sroa.gep1183 = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %.sroa.10678.0.copyload.else.val = load float, ptr %.sroa.gep1183, align 4, !tbaa !103
  %.sroa.gep1185 = getelementptr inbounds nuw i8, ptr %i.al, i64 12 ; 2 uses
  %.sroa.0661.0.copyload.else.val = load <2 x float>, ptr %.sroa.gep1185, align 4
  %.sroa.gep1188 = getelementptr inbounds nuw i8, ptr %i.al, i64 20 ; 2 uses
  %.sroa.16670.0.copyload.else.val = load float, ptr %.sroa.gep1188, align 4, !tbaa !103
  %.sroa.gep1191 = getelementptr inbounds nuw i8, ptr %i.al, i64 36
  %.sroa.0659.0.copyload.else.val = load <2 x float>, ptr %.sroa.gep1191, align 4
  br label %.cont1242

.cont1242:                                        ; preds = %.cont1255.thread, %.else1243
  %.sroa.16670.0.copyload1327 = phi float [ 0.000000e+00, %.cont1255.thread ], [ %.sroa.16670.0.copyload.else.val, %.else1243 ] ; 2 uses
  %.sroa.gep1185130013071326 = phi ptr [ %.sroa.gep11851296, %.cont1255.thread ], [ %.sroa.gep1185, %.else1243 ]
  %.sroa.10678.0.copyload129913081325 = phi float [ 0.000000e+00, %.cont1255.thread ], [ %.sroa.10678.0.copyload.else.val, %.else1243 ] ; 2 uses
  %.sroa.0673.0.copyload1291129813091324 = phi <2 x float> [ zeroinitializer, %.cont1255.thread ], [ %.sroa.0673.0.copyload.else.val, %.else1243 ] ; 2 uses
  %.sroa.gep11831292129713101323 = phi ptr [ %.sroa.gep11831290, %.cont1255.thread ], [ %.sroa.gep1183, %.else1243 ]
  %.sroa.0661.0.copyload13111322 = phi <2 x float> [ zeroinitializer, %.cont1255.thread ], [ %.sroa.0661.0.copyload.else.val, %.else1243 ] ; 2 uses
  %.sroa.gep118813121321 = phi ptr [ %.sroa.gep11881306, %.cont1255.thread ], [ %.sroa.gep1188, %.else1243 ]
  %.sroa.0659.0.copyload = phi <2 x float> [ zeroinitializer, %.cont1255.thread ], [ %.sroa.0659.0.copyload.else.val, %.else1243 ] ; 3 uses
  %.sroa.gep1194 = getelementptr inbounds nuw i8, ptr %i.al, i64 44
  %.sroa.sel1195 = select i1 %i.aj, ptr %.sroa.17, ptr %.sroa.gep1194
  %.sroa.4660.0.copyload = load <2 x float>, ptr %.sroa.sel1195, align 4 ; 4 uses
  %i.am = icmp eq i32 %i.w, -1                    ; 2 uses
  %i.an = sext i32 %i.w to i64
  %i.ao = getelementptr inbounds [56 x i8], ptr %i.g, i64 %i.an ; 13 uses
  br i1 %i.am, label %.cont1240.cont1245.thread, label %.cont1240.else

.cont1240.cont1245.thread:                        ; preds = %.cont1242
  %.sroa.gep12061329 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.gep12091335 = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %.sroa.gep12121345 = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  br label %.cont1240.cont

.cont1240.else:                                   ; preds = %.cont1242
  %.sroa.0645.0.copyload.else.val = load <2 x float>, ptr %i.ao, align 4
  %.sroa.gep1206 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %.sroa.10.0.copyload.else.val = load float, ptr %.sroa.gep1206, align 4, !tbaa !103
  %.sroa.gep1209 = getelementptr inbounds nuw i8, ptr %i.ao, i64 12 ; 2 uses
  %.sroa.0634.0.copyload.else.val = load <2 x float>, ptr %.sroa.gep1209, align 4
  %.sroa.gep1212 = getelementptr inbounds nuw i8, ptr %i.ao, i64 20 ; 2 uses
  %.sroa.16.0.copyload.else.val = load float, ptr %.sroa.gep1212, align 4, !tbaa !103
  %.sroa.gep1215 = getelementptr inbounds nuw i8, ptr %i.ao, i64 36
  %.sroa.0632.0.copyload.else.val = load <2 x float>, ptr %.sroa.gep1215, align 4
  %.sroa.gep1218 = getelementptr inbounds nuw i8, ptr %i.ao, i64 44
  %.sroa.gep1221 = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.sroa.0628.0.copyload.else.val = load <2 x float>, ptr %.sroa.gep1221, align 4
  %.sroa.gep1224 = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %.sroa.2629.0.copyload.else.val = load float, ptr %.sroa.gep1224, align 4
  br label %.cont1240.cont

.cont1240.cont:                                   ; preds = %.cont1240.cont1245.thread, %.cont1240.else
  %.sroa.0628.0.copyload1412 = phi <2 x float> [ zeroinitializer, %.cont1240.cont1245.thread ], [ %.sroa.0628.0.copyload.else.val, %.cont1240.else ] ; 2 uses
  %.sroa.16.0.copyload136613801411 = phi float [ 0.000000e+00, %.cont1240.cont1245.thread ], [ %.sroa.16.0.copyload.else.val, %.cont1240.else ] ; 2 uses
  %.sroa.gep120913391346136513811410 = phi ptr [ %.sroa.gep12091335, %.cont1240.cont1245.thread ], [ %.sroa.gep1209, %.cont1240.else ]
end_hunk_0
