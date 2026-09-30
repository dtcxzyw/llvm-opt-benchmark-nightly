Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/contact_solver?download=true
inline.NumInlined: 529
inline.NumDeleted: 60
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@b3PrepareContacts_Mesh:bb.a
  %i.sz = fmul float %i.qt, %i.rr
  %i.ta = shufflevector <2 x float> %i.rd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.tb = fadd <2 x float> %i.rd, %i.ta
  %i.tc = insertelement <2 x float> %i.tb, float %i.sz, i64 1
  %i.td = fadd <2 x float> %i.sy, %i.tc
  %i.te = fmul float %i.qu, %i.rw
  %i.tf = insertelement <2 x float> %i.gn, float %i.te, i64 1
  %i.tg = fadd <2 x float> %i.tf, %i.td
  %i.th = shufflevector <2 x float> %i.qo, <2 x float> %i.qr, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ti = fmul <2 x float> %i.th, %i.sk
  %i.tj = shufflevector <2 x float> %i.th, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.tk = fmul <2 x float> %i.tj, %i.sp
  %i.tl = fadd <2 x float> %i.tk, %i.ti
  %i.tm = shufflevector <2 x float> %i.qs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tn = fmul <2 x float> %i.tm, %i.sv
  %i.to = fadd <2 x float> %i.tn, %i.tl
  %i.tp = fadd <2 x float> %i.to, %i.tg           ; 3 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.hs, i64 264
  %i.tr = insertelement <2 x float> %i.tp, float %i.sx, i64 0
  %i.ts = fmul <2 x float> %i.tp, %i.tr           ; 2 uses
  %shift1134 = shufflevector <2 x float> %i.ts, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1135 = fsub <2 x float> %i.ts, %shift1134
  %i.tt = extractelement <2 x float> %foldExtExtBinop1135, i64 0 ; 2 uses
  %i.tu = tail call float @llvm.fabs.f32(float %i.tt)
  %i.tv = fcmp ogt float %i.tu, f0x057A0000
  br i1 %i.tv, label %bb.n, label %b3Invert2.exit

bb.n:                                             ; preds = %._crit_edge1058
  %i.tw = fdiv float 1.000000e+00, %i.tt          ; 3 uses
  %i.tx = fmul float %i.sx, %i.tw
  %i.ty = fneg float %i.tw
  %i.tz = insertelement <2 x float> poison, float %i.tw, i64 0
  %i.ua = insertelement <2 x float> %i.tz, float %i.ty, i64 1
  %i.ub = fmul <2 x float> %i.tp, %i.ua           ; 2 uses
  %i.uc = insertelement <2 x float> %i.ub, float %i.tx, i64 0
  %i.ud = shufflevector <2 x float> %i.ub, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %b3Invert2.exit

b3Invert2.exit:                                   ; preds = %._crit_edge1058, %bb.n
  %.sroa.08.0.i = phi <2 x float> [ %i.uc, %bb.n ], [ zeroinitializer, %._crit_edge1058 ]
  %.sroa.5.0.i = phi <2 x float> [ %i.ud, %bb.n ], [ zeroinitializer, %._crit_edge1058 ]
  store <2 x float> %.sroa.08.0.i, ptr %i.tq, align 4, !tbaa !103
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hs, i64 272
  store <2 x float> %.sroa.5.0.i, ptr %.sroa.426.0..sroa_idx, align 4, !tbaa !103
  %i.ue = getelementptr inbounds nuw i8, ptr %i.hr, i64 240 ; 2 uses
  %.sroa.023.0.copyload = load <2 x float>, ptr %i.ue, align 4 ; 2 uses
  %.sroa.224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 248 ; 2 uses
  %.sroa.224.0.copyload = load float, ptr %.sroa.224.0..sroa_idx, align 4
  %foldExtExtBinop1137 = fmul <2 x float> %.sroa.018.0.i.i, %.sroa.023.0.copyload
  %foldExtExtBinop1139 = fmul <2 x float> %.sroa.018.0.i.i, %.sroa.023.0.copyload
  %shift1141 = shufflevector <2 x float> %foldExtExtBinop1139, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1142 = fadd <2 x float> %foldExtExtBinop1137, %shift1141
  %i.uf = extractelement <2 x float> %foldExtExtBinop1142, i64 0
  %i.ug = fmul float %.sroa.5.0.i.i, %.sroa.224.0.copyload
  %i.uh = fadd float %i.ug, %i.uf
  %i.ui = fmul float %i.s, %i.uh
  %i.uj = getelementptr inbounds nuw i8, ptr %i.hs, i64 280
  store float %i.ui, ptr %i.uj, align 4, !tbaa !132
  %.sroa.019.0.copyload = load <2 x float>, ptr %i.ue, align 4 ; 2 uses
  %.sroa.220.0.copyload = load float, ptr %.sroa.224.0..sroa_idx, align 4
  %.sroa.04.0.vec.extract.i776 = extractelement <2 x float> %.sroa.019.0.copyload, i64 0
  %i.uk = fmul float %i.il, %.sroa.04.0.vec.extract.i776
  %.sroa.04.4.vec.extract.i778 = extractelement <2 x float> %.sroa.019.0.copyload, i64 1
  %i.ul = fmul float %i.io, %.sroa.04.4.vec.extract.i778
  %i.um = fadd float %i.uk, %i.ul
  %i.un = fmul float %i.ir, %.sroa.220.0.copyload
  %i.uo = fadd float %i.un, %i.um
  %i.up = fmul float %i.s, %i.uo
  %i.uq = getelementptr inbounds nuw i8, ptr %i.hs, i64 284
  store float %i.up, ptr %i.uq, align 4, !tbaa !133
  %i.ur = fmul <2 x float> %i.de, %.sroa.0383.0.copyload
  %i.us = shufflevector <2 x float> %.sroa.0383.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ut = fmul <2 x float> %i.df, %i.us
  %i.uu = insertelement <2 x float> poison, float %.sroa.12.0.copyload, i64 0
  %i.uv = shufflevector <2 x float> %i.uu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uw = fmul <2 x float> %i.dh, %i.uv
  %i.ux = fmul <2 x float> %i.dg, %.sroa.0383.0.copyload ; 2 uses
  %shift1144 = shufflevector <2 x float> %i.ux, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1145 = fadd <2 x float> %i.ux, %shift1144
  %i.uy = extractelement <2 x float> %foldExtExtBinop1145, i64 0
  %i.uz = fmul float %i.dv, %.sroa.12.0.copyload
  %i.va = fadd float %i.uz, %i.uy
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
  store <2 x float> %i.vr, ptr %i.vp, align 4, !tbaa !103
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
  %i.n = getelementptr inbounds [168 x i8], ptr %i.i, i64 %indvars.iv795 ; 22 uses
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
  %.sroa.0325.0.copyload.else.val = load <2 x float>, ptr %i.u, align 4, !tbaa !103
  %.sroa.gep622 = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %.sroa.8328.0.copyload.else.val = load float, ptr %.sroa.gep622, align 4, !tbaa !103
  %.sroa.gep624 = getelementptr inbounds nuw i8, ptr %i.u, i64 12 ; 2 uses
  %.sroa.0317.0.copyload.else.val = load <2 x float>, ptr %.sroa.gep624, align 4, !tbaa !103
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
  %.sroa.0312.0.copyload.else.val = load <2 x float>, ptr %i.x, align 4, !tbaa !103
  %.sroa.gep633 = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %.sroa.8.0.copyload.else.val = load float, ptr %.sroa.gep633, align 4, !tbaa !103
  %.sroa.gep636 = getelementptr inbounds nuw i8, ptr %i.x, i64 12 ; 2 uses
  %.sroa.0305.0.copyload.else.val = load <2 x float>, ptr %.sroa.gep636, align 4, !tbaa !103
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
  %.sroa.0586.0.copyload = load float, ptr %i.aa, align 8, !tbaa !103 ; 4 uses
  %.sroa.15598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  %2 = load <2 x float>, ptr %.sroa.15598.0..sroa_idx, align 4, !tbaa !103 ; 4 uses
  %.sroa.23606.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 52
  %.sroa.23606.0.copyload = load float, ptr %.sroa.23606.0..sroa_idx, align 4, !tbaa !103 ; 3 uses
  %.sroa.27610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %.sroa.27610.0.copyload = load float, ptr %.sroa.27610.0..sroa_idx, align 8, !tbaa !103 ; 4 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  %4 = load float, ptr %3, align 4, !tbaa !110    ; 3 uses
  %.sroa.35618.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.n, i64 68
  %.sroa.35618.0.copyload.a = load float, ptr %.sroa.35618.0..sroa_idx.a, align 4, !tbaa !103 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !103 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %.sroa.15.0.copyload = load float, ptr %i.ad, align 8, !tbaa !103 ; 4 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 84
  %.sroa.19.0.copyload = load float, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !103 ; 3 uses
  %.sroa.27.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %.sroa.23.0.copyload = load float, ptr %.sroa.27.0..sroa_idx.a, align 8, !tbaa !103 ; 2 uses
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 92
  %i.ae = load <2 x float>, ptr %.sroa.27.0..sroa_idx, align 4, !tbaa !103 ; 4 uses
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 100
  %.sroa.35.0.copyload = load float, ptr %.sroa.35.0..sroa_idx, align 4, !tbaa !103 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 164
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !106 ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph767, label %._crit_edge768

.lr.ph767:                                        ; preds = %.cont655
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 76
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !103 ; 2 uses
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %.sroa.23.0.copyload.a = load float, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !103
  %.sroa.11.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.n, i64 60
  %.sroa.11.0.copyload.a = load float, ptr %.sroa.11.0..sroa_idx.a, align 4, !tbaa !103
  %.sroa.11594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.11594.0.copyload = load float, ptr %.sroa.11594.0..sroa_idx, align 8, !tbaa !103 ; 2 uses
  %.sroa.7590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 36
  %.sroa.11594.0.copyload.a = load float, ptr %.sroa.7590.0..sroa_idx, align 4, !tbaa !103 ; 2 uses
  %i.ai = load ptr, ptr %i.n, align 8, !tbaa !114
  %wide.trip.count793 = zext nneg i32 %i.ag to i64
  %5 = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %.sroa.19.0.copyload, i64 0
  %6 = insertelement <4 x float> %5, float %i.ac, i64 1
  %i.aj = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ak = insertelement <2 x float> %i.aj, float %.sroa.19.0.copyload, i64 1 ; 2 uses
  %i.al = insertelement <2 x float> poison, float %.sroa.35.0.copyload, i64 0
  %7 = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = insertelement <2 x float> poison, float %.sroa.11.0.copyload, i64 0 ; 2 uses
  %8 = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = insertelement <2 x float> poison, float %.sroa.23.0.copyload, i64 0 ; 2 uses
  %9 = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = insertelement <2 x float> %i.an, float %.sroa.11.0.copyload, i64 1
  %i.ap = insertelement <2 x float> poison, float %.sroa.11.0.copyload.a, i64 0 ; 2 uses
  %10 = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = insertelement <2 x float> poison, float %.sroa.11594.0.copyload.a, i64 0
  %11 = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %12 = insertelement <2 x float> %i.ap, float %.sroa.11594.0.copyload.a, i64 1 ; 2 uses
  %13 = insertelement <2 x float> poison, float %.sroa.23.0.copyload.a, i64 0 ; 2 uses
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %15 = insertelement <2 x float> poison, float %.sroa.11594.0.copyload, i64 0
  %16 = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> zeroinitializer
  %17 = insertelement <2 x float> poison, float %.sroa.23606.0.copyload, i64 0
  %18 = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> zeroinitializer
  %19 = insertelement <2 x float> %13, float %.sroa.11594.0.copyload, i64 1 ; 2 uses
  %i.ar = extractelement <2 x float> %i.ae, i64 0 ; 2 uses
  %20 = shufflevector <2 x float> %i.ae, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %21 = shufflevector <4 x float> %6, <4 x float> %20, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %22 = extractelement <2 x float> %2, i64 0      ; 2 uses
  %i.as = insertelement <2 x float> poison, float %4, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.au = insertelement <2 x float> poison, float %i.z, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %23 = insertelement <2 x float> poison, float %.sroa.15.0.copyload, i64 0
  %24 = insertelement <2 x float> %23, float %.sroa.35618.0.copyload.a, i64 1
  %25 = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.ac, i64 0
  %26 = insertelement <4 x float> %25, float %.sroa.19.0.copyload, i64 1
  %27 = insertelement <2 x float> %i.am, float %.sroa.23.0.copyload, i64 1
  %28 = shufflevector <4 x float> %26, <4 x float> %20, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.aw = insertelement <2 x float> poison, float %.sroa.35618.0.copyload.a, i64 0
  %29 = insertelement <2 x float> %i.aw, float %.sroa.15.0.copyload, i64 1
  %30 = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %bb.b

._crit_edge768:                                   ; preds = %._crit_edge, %.cont655
  %.sroa.0305.0.lcssa = phi <2 x float> [ %.sroa.0305.0.copyload738, %.cont655 ], [ %i.eh, %._crit_edge ]
  %.sroa.12.0.lcssa = phi float [ %.sroa.12.0.copyload, %.cont655 ], [ %i.ei, %._crit_edge ]
  %.sroa.0312.0.lcssa = phi <2 x float> [ %.sroa.0312.0.copyload718725736, %.cont655 ], [ %i.dg, %._crit_edge ]
  %.sroa.8.0.lcssa = phi float [ %.sroa.8.0.copyload726735, %.cont655 ], [ %i.di, %._crit_edge ]
  %.sroa.0317.0.lcssa = phi <2 x float> [ %.sroa.0317.0.copyload714, %.cont655 ], [ %86, %._crit_edge ]
  %.sroa.12322.0.lcssa = phi float [ %.sroa.12322.0.copyload, %.cont655 ], [ %88, %._crit_edge ]
  %.sroa.0325.0.lcssa = phi <2 x float> [ %.sroa.0325.0.copyload694701712, %.cont655 ], [ %i.cs, %._crit_edge ]
  %.sroa.8328.0.lcssa = phi float [ %.sroa.8328.0.copyload702711, %.cont655 ], [ %i.cu, %._crit_edge ]
  br i1 %i.s, label %.cont648.thread, label %.cont648

.cont648:                                         ; preds = %._crit_edge768
  %.sroa.gep630 = getelementptr inbounds nuw i8, ptr %i.u, i64 52
  %.else.val651 = load i32, ptr %.sroa.gep630, align 4, !tbaa !143
  %i.ax = and i32 %.else.val651, 4096
  %.not = icmp eq i32 %i.ax, 0
  br i1 %.not, label %.cont648.thread, label %.cont657

bb.b:                                             ; preds = %.lr.ph767, %._crit_edge
  %indvars.iv790 = phi i64 [ 0, %.lr.ph767 ], [ %indvars.iv.next791, %._crit_edge ] ; 2 uses
  %.sroa.8328.0766 = phi float [ %.sroa.8328.0.copyload702711, %.lr.ph767 ], [ %i.cu, %._crit_edge ] ; 2 uses
  %.sroa.0325.0765 = phi <2 x float> [ %.sroa.0325.0.copyload694701712, %.lr.ph767 ], [ %i.cs, %._crit_edge ] ; 2 uses
  %.sroa.12322.0764 = phi float [ %.sroa.12322.0.copyload, %.lr.ph767 ], [ %88, %._crit_edge ] ; 2 uses
  %.sroa.0317.0763 = phi <2 x float> [ %.sroa.0317.0.copyload714, %.lr.ph767 ], [ %86, %._crit_edge ] ; 2 uses
  %.sroa.8.0762 = phi float [ %.sroa.8.0.copyload726735, %.lr.ph767 ], [ %i.di, %._crit_edge ] ; 2 uses
  %.sroa.0312.0761 = phi <2 x float> [ %.sroa.0312.0.copyload718725736, %.lr.ph767 ], [ %i.dg, %._crit_edge ] ; 2 uses
  %.sroa.12.0760 = phi float [ %.sroa.12.0.copyload, %.lr.ph767 ], [ %i.ei, %._crit_edge ] ; 2 uses
  %.sroa.0305.0759 = phi <2 x float> [ %.sroa.0305.0.copyload738, %.lr.ph767 ], [ %i.eh, %._crit_edge ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [308 x i8], ptr %i.ai, i64 %indvars.iv790 ; 16 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 196
  %.sroa.0283.0.copyload = load <2 x float>, ptr %i.az, align 4, !tbaa !103 ; 2 uses
  %.sroa.4284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 204
  %.sroa.4284.0.copyload = load float, ptr %.sroa.4284.0..sroa_idx, align 4, !tbaa !103 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 192
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !121 ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %i.bb to i64
  %i.bd = shufflevector <2 x float> %.sroa.0283.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.be = insertelement <4 x float> %i.bd, float 1.000000e+00, i64 3
  %i.bf = insertelement <4 x float> %i.be, float %.sroa.4284.0.copyload, i64 0
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %.sroa.0305.1.lcssa = phi <2 x float> [ %.sroa.0305.0759, %bb.b ], [ %127, %bb.c ] ; 2 uses
  %.sroa.12.1.lcssa = phi float [ %.sroa.12.0760, %bb.b ], [ %i.gi, %bb.c ]
  %.sroa.0312.1.lcssa = phi <2 x float> [ %.sroa.0312.0761, %bb.b ], [ %i.gk, %bb.c ]
  %.sroa.8.1.lcssa = phi float [ %.sroa.8.0762, %bb.b ], [ %i.gm, %bb.c ]
  %.sroa.0317.1.lcssa = phi <2 x float> [ %.sroa.0317.0763, %bb.b ], [ %i.fp, %bb.c ]
  %.sroa.12322.1.lcssa = phi float [ %.sroa.12322.0764, %bb.b ], [ %i.fq, %bb.c ]
  %.sroa.0325.1.lcssa = phi <2 x float> [ %.sroa.0325.0765, %bb.b ], [ %i.fs, %bb.c ]
  %.sroa.8328.1.lcssa = phi float [ %.sroa.8328.0766, %bb.b ], [ %i.fu, %bb.c ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 232
  %.sroa.0186.0.copyload = load <2 x float>, ptr %i.bg, align 4, !tbaa !103 ; 3 uses
  %.sroa.4187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 240
  %.sroa.4187.0.copyload = load float, ptr %.sroa.4187.0..sroa_idx, align 4, !tbaa !103 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 244
  %.sroa.0184.0.copyload = load <2 x float>, ptr %i.bh, align 4, !tbaa !103 ; 2 uses
  %.sroa.4185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 252
  %.sroa.4185.0.copyload = load float, ptr %.sroa.4185.0..sroa_idx, align 4, !tbaa !103 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 280
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 208
  %.sroa.0177.0.copyload = load <2 x float>, ptr %i.bj, align 4
  %.sroa.2178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 216
  %.sroa.2178.0.copyload = load float, ptr %.sroa.2178.0..sroa_idx, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 220
  %.sroa.0167.0.copyload = load <2 x float>, ptr %i.bk, align 4
  %.sroa.2168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 228
  %.sroa.2168.0.copyload = load float, ptr %.sroa.2168.0..sroa_idx, align 4
  %.sroa.011.0.vec.extract.i = extractelement <2 x float> %.sroa.0186.0.copyload, i64 0
  %.sroa.011.0.vec.extract.i.a = extractelement <2 x float> %.sroa.0305.1.lcssa, i64 0
  %i.bl = load <2 x float>, ptr %i.bi, align 4, !tbaa !103 ; 2 uses
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.bn = shufflevector <2 x float> %.sroa.0177.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.bo = insertelement <4 x float> %i.bn, float 1.000000e+00, i64 3
  %i.bp = insertelement <4 x float> %i.bo, float %.sroa.2178.0.copyload, i64 1
  %i.bq = fmul <4 x float> %i.bm, %i.bp
  %i.br = shufflevector <2 x float> %i.bl, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.bs = shufflevector <2 x float> %.sroa.0167.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.bt = insertelement <4 x float> %i.bs, float 1.000000e+00, i64 3
  %i.bu = insertelement <4 x float> %i.bt, float %.sroa.2168.0.copyload, i64 1
  %i.bv = fmul <4 x float> %i.br, %i.bu
  %i.bw = fadd <4 x float> %i.bq, %i.bv           ; 6 uses
  %i.bx = extractelement <4 x float> %i.bw, i64 1 ; 3 uses
  %i.by = extractelement <4 x float> %i.bw, i64 0
  %i.bz = fmul float %.sroa.4187.0.copyload, %i.by
  %i.ca = fmul float %.sroa.011.0.vec.extract.i, %i.bx
  %i.cb = fsub float %i.bz, %i.ca                 ; 2 uses
  %i.cc = shufflevector <4 x float> %i.bw, <4 x float> poison, <2 x i32> <i32 2, i32 1>
  %i.cd = fmul <2 x float> %.sroa.0186.0.copyload, %i.cc
  %i.ce = shufflevector <2 x float> %.sroa.0186.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cf = insertelement <2 x float> %i.ce, float %.sroa.4187.0.copyload, i64 1
  %i.cg = shufflevector <4 x float> %i.bw, <4 x float> poison, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.ch = fmul <2 x float> %i.cf, %i.cg
  %i.ci = fsub <2 x float> %i.cd, %i.ch           ; 4 uses
  %31 = extractelement <2 x float> %i.ci, i64 1
  %32 = fmul float %.sroa.0586.0.copyload, %31
  %33 = extractelement <2 x float> %i.ci, i64 0
  %34 = fmul float %.sroa.27610.0.copyload, %33
  %i.cj = fmul <2 x float> %12, %i.ci             ; 2 uses
  %i.ck = fmul float %.sroa.23606.0.copyload, %i.cb
  %i.cl = fmul <2 x float> %19, %i.ci             ; 2 uses
  %i.cm = extractelement <2 x float> %i.cl, i64 1
  %i.cn = fadd float %i.cm, %i.ck
  %i.co = extractelement <2 x float> %i.cl, i64 0
  %i.cp = fadd float %i.co, %i.cn
  %i.cq = fsub float %.sroa.12322.1.lcssa, %i.cp
  %i.cr = fmul <2 x float> %i.av, %i.cg
  %i.cs = fsub <2 x float> %.sroa.0325.1.lcssa, %i.cr ; 2 uses
  %i.ct = fmul float %i.z, %i.bx
  %i.cu = fsub float %.sroa.8328.1.lcssa, %i.ct   ; 2 uses
  %i.cv = shufflevector <2 x float> %.sroa.0184.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.cw = insertelement <4 x float> %i.cv, float 0.000000e+00, i64 3
  %i.cx = insertelement <4 x float> %i.cw, float %.sroa.4185.0.copyload, i64 1
  %i.cy = shufflevector <4 x float> %i.bw, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.cz = fmul <4 x float> %i.cx, %i.cy
  %i.da = shufflevector <2 x float> %.sroa.0184.0.copyload, <2 x float> %.sroa.0305.1.lcssa, <4 x i32> <i32 poison, i32 1, i32 0, i32 3>
  %i.db = insertelement <4 x float> %i.da, float %.sroa.4185.0.copyload, i64 0
  %i.dc = fmul <4 x float> %i.db, %i.bw
  %i.dd = fsub <4 x float> %i.dc, %i.cz           ; 3 uses
  %35 = shufflevector <4 x float> %i.dd, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %36 = fmul <2 x float> %24, %35                 ; 2 uses
  %shift = shufflevector <2 x float> %36, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %shift, %36
  %37 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %38 = extractelement <4 x float> %i.dd, i64 2   ; 2 uses
  %39 = fmul float %i.ar, %38
  %40 = fadd float %39, %37
  %41 = fmul <4 x float> %i.dd, %21
  %42 = fmul <2 x float> %i.ao, %35               ; 2 uses
  %shift816 = shufflevector <2 x float> %42, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.de = fadd <2 x float> %shift816, %42
  %43 = extractelement <2 x float> %i.de, i64 0
  %44 = fmul float %.sroa.35.0.copyload, %38
  %45 = fadd float %44, %43
  %46 = fadd float %.sroa.011.0.vec.extract.i.a, %40
  %47 = fadd float %.sroa.12.1.lcssa, %45
  %i.df = fmul <2 x float> %i.at, %i.cg
  %i.dg = fadd <2 x float> %.sroa.0312.1.lcssa, %i.df ; 2 uses
  %i.dh = fmul float %4, %i.bx
  %i.di = fadd float %.sroa.8.1.lcssa, %i.dh      ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ay, i64 260
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !136 ; 2 uses
  %48 = fmul float %.sroa.4284.0.copyload, %i.dk  ; 3 uses
  %49 = fmul float %.sroa.27610.0.copyload, %48
  %50 = insertelement <2 x float> poison, float %i.dk, i64 0
  %51 = shufflevector <2 x float> %50, <2 x float> poison, <2 x i32> zeroinitializer
  %foldExtExtBinop818 = fmul <2 x float> %.sroa.0283.0.copyload, %51 ; 7 uses
  %.sroa.03.4.vec.extract.i466.a = extractelement <2 x float> %foldExtExtBinop818, i64 0 ; 2 uses
  %i.dl = fmul float %.sroa.0586.0.copyload, %.sroa.03.4.vec.extract.i466.a
  %52 = extractelement <2 x float> %foldExtExtBinop818, i64 1 ; 2 uses
  %53 = fmul float %22, %52
  %54 = fadd float %i.dl, %53
  %55 = fmul float %.sroa.35618.0.copyload.a, %.sroa.03.4.vec.extract.i466.a
  %i.dm = fmul float %.sroa.15.0.copyload, %52
  %56 = fmul <2 x float> %i.ak, %foldExtExtBinop818 ; 2 uses
  %57 = getelementptr inbounds nuw i8, ptr %i.ay, i64 288
  %.sroa.032.0.copyload = load <2 x float>, ptr %57, align 4, !tbaa !103 ; 7 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 296
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !103 ; 3 uses
  %.sroa.03.0.vec.extract.i465 = extractelement <2 x float> %.sroa.032.0.copyload, i64 0 ; 2 uses
  %58 = fmul float %.sroa.0586.0.copyload, %.sroa.03.0.vec.extract.i465
  %i.dn = extractelement <2 x float> %.sroa.032.0.copyload, i64 1 ; 2 uses
  %i.do = fmul float %22, %i.dn
  %i.dp = fadd float %58, %i.do
  %59 = fmul float %.sroa.27610.0.copyload, %.sroa.5.0.copyload
  %60 = shufflevector <2 x float> %foldExtExtBinop818, <2 x float> %.sroa.032.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %61 = fmul <2 x float> %11, %60
  %62 = shufflevector <2 x float> %foldExtExtBinop818, <2 x float> %.sroa.032.0.copyload, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.dq = fmul <2 x float> %30, %62
  %63 = fadd <2 x float> %61, %i.dq
  %64 = insertelement <2 x float> poison, float %48, i64 0 ; 2 uses
  %65 = insertelement <2 x float> %64, float %.sroa.5.0.copyload, i64 1 ; 2 uses
  %66 = fmul <2 x float> %10, %65
  %i.dr = fadd <2 x float> %66, %63               ; 2 uses
  %67 = fmul <2 x float> %16, %60
  %68 = fmul <2 x float> %18, %62
  %69 = fadd <2 x float> %67, %68
  %70 = fmul <2 x float> %14, %65
  %i.ds = fadd <2 x float> %70, %69               ; 2 uses
  %71 = extractelement <2 x float> %i.ds, i64 0
  %72 = fsub float %i.cq, %71
  %73 = insertelement <2 x float> poison, float %i.cb, i64 0
  %74 = shufflevector <2 x float> %73, <2 x float> poison, <2 x i32> zeroinitializer
  %75 = fmul <2 x float> %2, %74
  %i.dt = insertelement <2 x float> %i.cj, float %32, i64 0
  %76 = fadd <2 x float> %i.dt, %75
  %77 = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.du = insertelement <2 x float> %77, float %34, i64 0
  %78 = fadd <2 x float> %i.du, %76
  %79 = fsub <2 x float> %.sroa.0317.1.lcssa, %78
  %80 = fadd float %49, %54
  %81 = fadd float %59, %i.dp
  %82 = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %83 = insertelement <2 x float> %82, float %80, i64 0
  %84 = fsub <2 x float> %79, %83
  %85 = insertelement <2 x float> %i.dr, float %81, i64 0
  %86 = fsub <2 x float> %84, %85                 ; 2 uses
  %87 = extractelement <2 x float> %i.ds, i64 1
  %88 = fsub float %72, %87                       ; 2 uses
  %89 = fmul float %.sroa.35618.0.copyload.a, %.sroa.03.0.vec.extract.i465
  %i.dv = fmul float %.sroa.15.0.copyload, %i.dn
  %90 = fmul <2 x float> %i.ak, %.sroa.032.0.copyload ; 2 uses
  %91 = shufflevector <2 x float> %.sroa.032.0.copyload, <2 x float> %foldExtExtBinop818, <2 x i32> <i32 0, i32 2>
  %92 = fmul <2 x float> %8, %91
  %93 = shufflevector <2 x float> %.sroa.032.0.copyload, <2 x float> %foldExtExtBinop818, <2 x i32> <i32 1, i32 3>
  %i.dw = fmul <2 x float> %9, %93
  %i.dx = fadd <2 x float> %92, %i.dw
  %94 = insertelement <2 x float> poison, float %.sroa.5.0.copyload, i64 0 ; 2 uses
  %95 = insertelement <2 x float> %94, float %48, i64 1
  %i.dy = fmul <2 x float> %7, %95
  %i.dz = fadd <2 x float> %i.dy, %i.dx           ; 2 uses
  %96 = extractelement <2 x float> %i.dz, i64 1
  %97 = fadd float %96, %47
  %98 = tail call float @llvm.vector.reduce.fadd.v4f32(float -0.000000e+00, <4 x float> %41)
  %99 = shufflevector <2 x float> %56, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %100 = insertelement <2 x float> %99, float %55, i64 0
  %101 = insertelement <2 x float> %56, float %i.dm, i64 0
  %102 = fadd <2 x float> %100, %101
  %103 = shufflevector <2 x float> %64, <2 x float> poison, <2 x i32> zeroinitializer
  %104 = fmul <2 x float> %i.ae, %103
  %105 = fadd <2 x float> %104, %102
  %i.ea = shufflevector <2 x float> %90, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %106 = insertelement <2 x float> %i.ea, float %89, i64 0
  %i.eb = insertelement <2 x float> %90, float %i.dv, i64 0
  %i.ec = fadd <2 x float> %106, %i.eb
  %107 = shufflevector <2 x float> %94, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ed = fmul <2 x float> %i.ae, %107
  %i.ee = fadd <2 x float> %i.ed, %i.ec
  %108 = insertelement <2 x float> poison, float %46, i64 0
  %i.ef = insertelement <2 x float> %108, float %98, i64 1
  %i.eg = fadd <2 x float> %i.ef, %105
  %i.eh = fadd <2 x float> %i.eg, %i.ee           ; 2 uses
  %109 = extractelement <2 x float> %i.dz, i64 0
  %i.ei = fadd float %109, %97                    ; 2 uses
  %indvars.iv.next791 = add nuw nsw i64 %indvars.iv790, 1 ; 2 uses
  %exitcond794.not = icmp eq i64 %indvars.iv.next791, %wide.trip.count793
  br i1 %exitcond794.not, label %._crit_edge768, label %bb.b, !llvm.loop !186

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.sroa.8328.1750 = phi float [ %.sroa.8328.0766, %.lr.ph ], [ %i.fu, %bb.c ]
  %.sroa.0325.1749 = phi <2 x float> [ %.sroa.0325.0765, %.lr.ph ], [ %i.fs, %bb.c ]
  %.sroa.12322.1748 = phi float [ %.sroa.12322.0764, %.lr.ph ], [ %i.fq, %bb.c ]
  %.sroa.0317.1747 = phi <2 x float> [ %.sroa.0317.0763, %.lr.ph ], [ %i.fp, %bb.c ]
  %.sroa.8.1746 = phi float [ %.sroa.8.0762, %.lr.ph ], [ %i.gm, %bb.c ]
  %.sroa.0312.1745 = phi <2 x float> [ %.sroa.0312.0761, %.lr.ph ], [ %i.gk, %bb.c ]
  %.sroa.12.1744 = phi float [ %.sroa.12.0760, %.lr.ph ], [ %i.gi, %bb.c ]
  %.sroa.0305.1743 = phi <2 x float> [ %.sroa.0305.0759, %.lr.ph ], [ %127, %bb.c ] ; 2 uses
  %i.ej = getelementptr inbounds nuw [48 x i8], ptr %i.ay, i64 %indvars.iv ; 5 uses
  %.sroa.0276.0.copyload = load <2 x float>, ptr %i.ej, align 4, !tbaa !103 ; 3 uses
  %.sroa.4277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %.sroa.4277.0.copyload = load float, ptr %.sroa.4277.0..sroa_idx, align 4, !tbaa !103 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  %.sroa.0274.0.copyload = load <2 x float>, ptr %i.ek, align 4, !tbaa !103 ; 2 uses
  %.sroa.4275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 20
  %.sroa.4275.0.copyload = load float, ptr %.sroa.4275.0..sroa_idx, align 4, !tbaa !103 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  %i.em = load float, ptr %i.el, align 4, !tbaa !127
  %.sroa.06.0.vec.extract.i543 = extractelement <2 x float> %.sroa.0276.0.copyload, i64 0
  %i.en = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.em, i64 0
  %i.eo = shufflevector <4 x float> %i.en, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ep = fmul <4 x float> %i.bf, %i.eo           ; 6 uses
  %i.eq = extractelement <4 x float> %i.ep, i64 0 ; 3 uses
  %i.er = extractelement <4 x float> %i.ep, i64 1
  %i.es = fmul float %.sroa.4277.0.copyload, %i.er
  %i.et = fmul float %.sroa.06.0.vec.extract.i543, %i.eq
  %i.eu = fsub float %i.es, %i.et                 ; 2 uses
  %i.ev = shufflevector <4 x float> %i.ep, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.ew = fmul <2 x float> %.sroa.0276.0.copyload, %i.ev
  %i.ex = shufflevector <2 x float> %.sroa.0276.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ey = insertelement <2 x float> %i.ex, float %.sroa.4277.0.copyload, i64 1
  %i.ez = shufflevector <4 x float> %i.ep, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.fa = fmul <2 x float> %i.ey, %i.ez
  %i.fb = fsub <2 x float> %i.ew, %i.fa           ; 4 uses
  %110 = extractelement <2 x float> %i.fb, i64 1
  %111 = fmul float %.sroa.0586.0.copyload, %110
  %112 = extractelement <2 x float> %i.fb, i64 0
  %113 = fmul float %.sroa.27610.0.copyload, %112
  %i.fc = fmul <2 x float> %12, %i.fb             ; 2 uses
  %i.fd = fmul float %.sroa.23606.0.copyload, %i.eu
  %i.fe = fmul <2 x float> %19, %i.fb             ; 2 uses
  %i.ff = extractelement <2 x float> %i.fe, i64 1
  %i.fg = fadd float %i.ff, %i.fd
  %i.fh = extractelement <2 x float> %i.fe, i64 0
  %i.fi = fadd float %i.fh, %i.fg
  %i.fj = insertelement <2 x float> poison, float %i.eu, i64 0
  %i.fk = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fl = fmul <2 x float> %2, %i.fk
  %114 = insertelement <2 x float> %i.fc, float %111, i64 0
  %i.fm = fadd <2 x float> %114, %i.fl
  %i.fn = shufflevector <2 x float> %i.fc, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %115 = insertelement <2 x float> %i.fn, float %113, i64 0
  %i.fo = fadd <2 x float> %115, %i.fm
  %i.fp = fsub <2 x float> %.sroa.0317.1747, %i.fo ; 2 uses
  %i.fq = fsub float %.sroa.12322.1748, %i.fi     ; 2 uses
  %i.fr = fmul <2 x float> %i.av, %i.ez
  %i.fs = fsub <2 x float> %.sroa.0325.1749, %i.fr ; 2 uses
  %i.ft = fmul float %i.z, %i.eq
  %i.fu = fsub float %.sroa.8328.1750, %i.ft      ; 2 uses
  %i.fv = shufflevector <2 x float> %.sroa.0274.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.fw = insertelement <4 x float> %i.fv, float 0.000000e+00, i64 3
  %i.fx = insertelement <4 x float> %i.fw, float %.sroa.4275.0.copyload, i64 0
  %i.fy = shufflevector <4 x float> %i.ep, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.fz = fmul <4 x float> %i.fx, %i.fy
  %i.ga = shufflevector <2 x float> %.sroa.0274.0.copyload, <2 x float> %.sroa.0305.1743, <4 x i32> <i32 1, i32 poison, i32 0, i32 3>
  %i.gb = insertelement <4 x float> %i.ga, float %.sroa.4275.0.copyload, i64 1
  %i.gc = fmul <4 x float> %i.gb, %i.ep
  %i.gd = fsub <4 x float> %i.gc, %i.fz           ; 3 uses
  %116 = shufflevector <4 x float> %i.gd, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %117 = fmul <2 x float> %29, %116
  %i.ge = extractelement <4 x float> %i.gd, i64 2 ; 2 uses
  %i.gf = fmul float %i.ar, %i.ge
  %i.gg = fmul <4 x float> %i.gd, %28             ; 3 uses
  %118 = fmul <2 x float> %27, %116               ; 2 uses
  %shift819 = shufflevector <2 x float> %118, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop820 = fadd <2 x float> %118, %shift819
  %i.gh = extractelement <2 x float> %foldExtExtBinop820, i64 0
  %119 = fmul float %.sroa.35.0.copyload, %i.ge
  %120 = fadd float %119, %i.gh
  %121 = shufflevector <2 x float> %117, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %122 = shufflevector <4 x float> %121, <4 x float> %i.gg, <2 x i32> <i32 0, i32 4>
  %123 = shufflevector <4 x float> %121, <4 x float> %i.gg, <2 x i32> <i32 1, i32 5>
  %124 = fadd <2 x float> %122, %123
  %125 = shufflevector <4 x float> %i.gg, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %.sroa.08.0.vec.insert.i545 = insertelement <2 x float> %125, float %i.gf, i64 0
  %126 = fadd <2 x float> %.sroa.08.0.vec.insert.i545, %124
  %127 = fadd <2 x float> %.sroa.0305.1743, %126  ; 2 uses
  %i.gi = fadd float %.sroa.12.1744, %120         ; 2 uses
  %i.gj = fmul <2 x float> %i.at, %i.ez
  %i.gk = fadd <2 x float> %.sroa.0312.1745, %i.gj ; 2 uses
  %i.gl = fmul float %4, %i.eq
  %i.gm = fadd float %.sroa.8.1746, %i.gl         ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !187

.cont657:                                         ; preds = %.cont648
  store <2 x float> %.sroa.0325.0.lcssa, ptr %i.u, align 4, !tbaa !103
  store float %.sroa.8328.0.lcssa, ptr %.sroa.gep622695700713, align 4, !tbaa !103
  store <2 x float> %.sroa.0317.0.lcssa, ptr %.sroa.gep624703710, align 4, !tbaa !103
  store float %.sroa.12322.0.lcssa, ptr %.sroa.gep627715, align 4, !tbaa !103
  br label %.cont648.thread

.cont648.thread:                                  ; preds = %._crit_edge768, %.cont657, %.cont648
  br i1 %i.v, label %.cont.thread, label %.cont

.cont:                                            ; preds = %.cont648.thread
  %.sroa.gep642 = getelementptr inbounds nuw i8, ptr %i.x, i64 52
  %.else.val = load i32, ptr %.sroa.gep642, align 4, !tbaa !143
  %i.gn = and i32 %.else.val, 4096
  %.not372 = icmp eq i32 %i.gn, 0
  br i1 %.not372, label %.cont.thread, label %.cont653

.cont653:                                         ; preds = %.cont
  store <2 x float> %.sroa.0312.0.lcssa, ptr %i.x, align 4, !tbaa !103
  store float %.sroa.8.0.lcssa, ptr %.sroa.gep633719724737, align 4, !tbaa !103
  store <2 x float> %.sroa.0305.0.lcssa, ptr %.sroa.gep636727734, align 4, !tbaa !103
  store float %.sroa.12.0.lcssa, ptr %.sroa.gep639739, align 4, !tbaa !103
  br label %.cont.thread

.cont.thread:                                     ; preds = %.cont648.thread, %.cont653, %.cont
  %indvars.iv.next796 = add nsw i64 %indvars.iv795, 1 ; 2 uses
  %i.go = icmp slt i64 %indvars.iv.next796, %i.m
  br i1 %i.go, label %.lr.ph779, label %._crit_edge780, !llvm.loop !188
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
  %.sroa.0673.0.copyload.else.val = load <2 x float>, ptr %i.al, align 4, !tbaa !103
  %.sroa.gep1183 = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %.sroa.10678.0.copyload.else.val = load float, ptr %.sroa.gep1183, align 4, !tbaa !103
  %.sroa.gep1185 = getelementptr inbounds nuw i8, ptr %i.al, i64 12 ; 2 uses
  %.sroa.0661.0.copyload.else.val = load <2 x float>, ptr %.sroa.gep1185, align 4, !tbaa !103
  %.sroa.gep1188 = getelementptr inbounds nuw i8, ptr %i.al, i64 20 ; 2 uses
  %.sroa.16670.0.copyload.else.val = load float, ptr %.sroa.gep1188, align 4, !tbaa !103
  %.sroa.gep1191 = getelementptr inbounds nuw i8, ptr %i.al, i64 36
  %.sroa.0659.0.copyload.else.val = load <2 x float>, ptr %.sroa.gep1191, align 4, !tbaa !103
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
  %.sroa.4660.0.copyload = load <2 x float>, ptr %.sroa.sel1195, align 4, !tbaa !103 ; 4 uses
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
  %.sroa.0645.0.copyload.else.val = load <2 x float>, ptr %i.ao, align 4, !tbaa !103
  %.sroa.gep1206 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %.sroa.10.0.copyload.else.val = load float, ptr %.sroa.gep1206, align 4, !tbaa !103
  %.sroa.gep1209 = getelementptr inbounds nuw i8, ptr %i.ao, i64 12 ; 2 uses
  %.sroa.0634.0.copyload.else.val = load <2 x float>, ptr %.sroa.gep1209, align 4, !tbaa !103
  %.sroa.gep1212 = getelementptr inbounds nuw i8, ptr %i.ao, i64 20 ; 2 uses
  %.sroa.16.0.copyload.else.val = load float, ptr %.sroa.gep1212, align 4, !tbaa !103
  %.sroa.gep1215 = getelementptr inbounds nuw i8, ptr %i.ao, i64 36
  %.sroa.0632.0.copyload.else.val = load <2 x float>, ptr %.sroa.gep1215, align 4, !tbaa !103
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
  %.sroa.10.0.copyload13381347136413821409 = phi float [ 0.000000e+00, %.cont1240.cont1245.thread ], [ %.sroa.10.0.copyload.else.val, %.cont1240.else ] ; 2 uses
  %.sroa.0645.0.copyload133013371348136313831408 = phi <2 x float> [ zeroinitializer, %.cont1240.cont1245.thread ], [ %.sroa.0645.0.copyload.else.val, %.cont1240.else ] ; 2 uses
  %.sroa.gep1206133113361349136213841407 = phi ptr [ %.sroa.gep12061329, %.cont1240.cont1245.thread ], [ %.sroa.gep1206, %.cont1240.else ]
  %.sroa.0634.0.copyload1350136113851406 = phi <2 x float> [ zeroinitializer, %.cont1240.cont1245.thread ], [ %.sroa.0634.0.copyload.else.val, %.cont1240.else ] ; 2 uses
  %.sroa.gep12121351136013861405 = phi ptr [ %.sroa.gep12121345, %.cont1240.cont1245.thread ], [ %.sroa.gep1212, %.cont1240.else ]
  %.sroa.0632.0.copyload13871404 = phi <2 x float> [ zeroinitializer, %.cont1240.cont1245.thread ], [ %.sroa.0632.0.copyload.else.val, %.cont1240.else ] ; 3 uses
  %.sroa.4633.0.copyload13881403.in = phi ptr [ %.sroa.17, %.cont1240.cont1245.thread ], [ %.sroa.gep1218, %.cont1240.else ]
  %.sroa.2629.0.copyload = phi float [ 0.000000e+00, %.cont1240.cont1245.thread ], [ %.sroa.2629.0.copyload.else.val, %.cont1240.else ]
  %.sroa.4633.0.copyload13881403 = load <2 x float>, ptr %.sroa.4633.0.copyload13881403.in, align 4, !tbaa !103 ; 4 uses
  br i1 %i.aj, label %.cont1240.cont.cont, label %.cont1240.cont.else

.cont1240.cont.else:                              ; preds = %.cont1240.cont
  %.sroa.gep119713891402 = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %.sroa.0626.0.copyload.else.val = load <2 x float>, ptr %.sroa.gep119713891402, align 4
  %.sroa.gep1200 = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %.sroa.2627.0.copyload.else.val = load float, ptr %.sroa.gep1200, align 4
  br label %.cont1240.cont.cont

.cont1240.cont.cont:                              ; preds = %.cont1240.cont, %.cont1240.cont.else
  %.sroa.0626.0.copyload1415 = phi <2 x float> [ %.sroa.0626.0.copyload.else.val, %.cont1240.cont.else ], [ zeroinitializer, %.cont1240.cont ] ; 2 uses
  %.sroa.2627.0.copyload = phi float [ %.sroa.2627.0.copyload.else.val, %.cont1240.cont.else ], [ 0.000000e+00, %.cont1240.cont ]
  %foldExtExtBinop = fsub <2 x float> %.sroa.0628.0.copyload1412, %.sroa.0626.0.copyload1415
end_hunk_0
