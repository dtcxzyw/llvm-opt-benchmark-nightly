Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/dynamic_tree?download=true
begin_hunk_0_@b3DynamicTree_BoxCast:bb.a
  %.val = load i16, ptr %i.dj, align 2, !tbaa !36
  %i.dk = and i16 %.val, 4
  %.not377 = icmp eq i16 %i.dk, 0
  br i1 %.not377, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  store float %.0383, ptr %i.ay, align 4, !tbaa !66
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !20
  %i.dn = call float %4(ptr noundef nonnull %6, i32 noundef %i.bh, i64 noundef %i.dm, ptr noundef %5) #19 ; 6 uses
  %i.do = add nsw i32 %.sroa.4178.0384, 1         ; 3 uses
  %i.dp = fcmp une float %i.dn, 0.000000e+00
  br i1 %i.dp, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.dq = fcmp ogt float %i.dn, 0.000000e+00
  %i.dr = fcmp olt float %i.dn, %.0383
  %or.cond = select i1 %i.dq, i1 %i.dr, i1 false
  br i1 %or.cond, label %bb.k, label %b3AABB_Overlaps.exit.thread

bb.k:                                             ; preds = %bb.j
  %.sroa.060.0.copyload = load <2 x float>, ptr %i.m, align 4
  %.sroa.261.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4
  %i.ds = fmul float %i.dn, %.sroa.261.0.copyload ; 2 uses
  %i.dt = fadd float %.sroa.7.0.copyload, %i.ds   ; 2 uses
  %i.du = fcmp olt float %.sroa.7.0.copyload, %i.dt
  %i.dv = select i1 %i.du, float %.sroa.7.0.copyload, float %i.dt
  %i.dw = fadd float %.sroa.15.0.copyload, %i.ds  ; 2 uses
  %i.dx = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.dy = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dz = fmul <2 x float> %i.dy, %.sroa.060.0.copyload ; 2 uses
  %i.ea = fadd <2 x float> %.sroa.0323.0.copyload, %i.dz ; 2 uses
  %i.eb = fcmp olt <2 x float> %.sroa.0323.0.copyload, %i.ea
  %i.ec = select <2 x i1> %i.eb, <2 x float> %.sroa.0323.0.copyload, <2 x float> %i.ea
  %i.ed = fadd <2 x float> %.sroa.11.0.copyload, %i.dz ; 2 uses
  %i.ee = fcmp ogt <2 x float> %.sroa.11.0.copyload, %i.ed
  %i.ef = select <2 x i1> %i.ee, <2 x float> %.sroa.11.0.copyload, <2 x float> %i.ed
  %i.eg = fcmp ogt float %.sroa.15.0.copyload, %i.dw
  %i.eh = select i1 %i.eg, float %.sroa.15.0.copyload, float %i.dw
  br label %b3AABB_Overlaps.exit.thread

bb.l:                                             ; preds = %bb.h
  %i.ei = icmp samesign ult i32 %.0181382, 1024
  br i1 %i.ei, label %bb.m, label %b3AABB_Overlaps.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !20 ; 3 uses
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [48 x i8], ptr %i.av, i64 %i.el ; 4 uses
  %.sroa.0334.0.copyload = load <2 x float>, ptr %i.em, align 8
  %.sroa.4335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %.sroa.4335.0.copyload = load float, ptr %.sroa.4335.0..sroa_idx, align 8
  %.sroa.5336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  %.sroa.5336.0.copyload = load <2 x float>, ptr %.sroa.5336.0..sroa_idx, align 4
  %.sroa.6337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 20
  %.sroa.6337.0.copyload = load float, ptr %.sroa.6337.0..sroa_idx, align 4
  %i.en = getelementptr inbounds nuw i8, ptr %i.bk, i64 36
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !20 ; 3 uses
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [48 x i8], ptr %i.av, i64 %i.ep ; 4 uses
  %.sroa.0338.0.copyload = load <2 x float>, ptr %i.eq, align 8
  %.sroa.4339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %.sroa.4339.0.copyload = load float, ptr %.sroa.4339.0..sroa_idx, align 8
  %.sroa.5340.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eq, i64 12
  %.sroa.5340.0.copyload = load <2 x float>, ptr %.sroa.5340.0..sroa_idx, align 4
  %.sroa.6341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eq, i64 20
  %.sroa.6341.0.copyload = load float, ptr %.sroa.6341.0..sroa_idx, align 4
  %i.er = fadd <2 x float> %.sroa.0334.0.copyload, %.sroa.5336.0.copyload
  %i.es = fmul <2 x float> %i.er, splat (float 5.000000e-01)
  %i.et = fsub <2 x float> %i.g, %i.es            ; 2 uses
  %i.eu = fmul <2 x float> %i.et, %i.et           ; 2 uses
  %i.ev = fadd <2 x float> %.sroa.0338.0.copyload, %.sroa.5340.0.copyload
  %i.ew = fmul <2 x float> %i.ev, splat (float 5.000000e-01)
  %i.ex = fsub <2 x float> %i.g, %i.ew            ; 2 uses
  %i.ey = fmul <2 x float> %i.ex, %i.ex           ; 2 uses
  %i.ez = insertelement <2 x float> poison, float %.sroa.4335.0.copyload, i64 0
  %i.fa = insertelement <2 x float> %i.ez, float %.sroa.4339.0.copyload, i64 1
  %i.fb = insertelement <2 x float> poison, float %.sroa.6337.0.copyload, i64 0
  %i.fc = insertelement <2 x float> %i.fb, float %.sroa.6341.0.copyload, i64 1
  %i.fd = fadd <2 x float> %i.fa, %i.fc
  %i.fe = fmul <2 x float> %i.fd, splat (float 5.000000e-01)
  %i.ff = fsub <2 x float> %i.bd, %i.fe           ; 2 uses
  %i.fg = shufflevector <2 x float> %i.eu, <2 x float> %i.ey, <2 x i32> <i32 0, i32 2>
  %i.fh = shufflevector <2 x float> %i.eu, <2 x float> %i.ey, <2 x i32> <i32 1, i32 3>
  %i.fi = fadd <2 x float> %i.fg, %i.fh
  %i.fj = fmul <2 x float> %i.ff, %i.ff
  %i.fk = fadd <2 x float> %i.fj, %i.fi           ; 2 uses
  %i.fl = extractelement <2 x float> %i.fk, i64 0
  %i.fm = extractelement <2 x float> %i.fk, i64 1
  %i.fn = fcmp olt float %i.fl, %i.fm             ; 2 uses
  %i.fo = zext nneg i32 %.0181382 to i64
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fo
  %. = select i1 %i.fn, i32 %i.eo, i32 %i.ek
  %.388 = select i1 %i.fn, i32 %i.ek, i32 %i.eo
  store i32 %., ptr %i.bg, align 4, !tbaa !38
  store i32 %.388, ptr %i.fp, align 4, !tbaa !38
  %.1182 = add nuw nsw i32 %.0181382, 1
  br label %b3AABB_Overlaps.exit.thread

b3AABB_Overlaps.exit.thread:                      ; preds = %bb.k, %bb.j, %bb.f, %.split, %bb.e, %bb.m, %bb.l, %bb.g, %bb.c
  %.sroa.13.2 = phi float [ %.sroa.13.0378, %bb.c ], [ %.sroa.13.0378, %bb.e ], [ %i.eh, %bb.k ], [ %.sroa.13.0378, %bb.m ], [ %.sroa.13.0378, %bb.l ], [ %.sroa.13.0378, %bb.g ], [ %.sroa.13.0378, %bb.f ], [ %.sroa.13.0378, %.split ], [ %.sroa.13.0378, %bb.j ]
  %.sroa.9.2 = phi <2 x float> [ %.sroa.9.0379, %bb.c ], [ %.sroa.9.0379, %bb.e ], [ %i.ef, %bb.k ], [ %.sroa.9.0379, %bb.m ], [ %.sroa.9.0379, %bb.l ], [ %.sroa.9.0379, %bb.g ], [ %.sroa.9.0379, %bb.f ], [ %.sroa.9.0379, %.split ], [ %.sroa.9.0379, %bb.j ]
  %.sroa.6.2 = phi float [ %.sroa.6.0380, %bb.c ], [ %.sroa.6.0380, %bb.e ], [ %i.dv, %bb.k ], [ %.sroa.6.0380, %bb.m ], [ %.sroa.6.0380, %bb.l ], [ %.sroa.6.0380, %bb.g ], [ %.sroa.6.0380, %bb.f ], [ %.sroa.6.0380, %.split ], [ %.sroa.6.0380, %bb.j ]
  %.sroa.0.2 = phi <2 x float> [ %.sroa.0.0381, %bb.c ], [ %.sroa.0.0381, %bb.e ], [ %i.ec, %bb.k ], [ %.sroa.0.0381, %bb.m ], [ %.sroa.0.0381, %bb.l ], [ %.sroa.0.0381, %bb.g ], [ %.sroa.0.0381, %bb.f ], [ %.sroa.0.0381, %.split ], [ %.sroa.0.0381, %bb.j ]
  %.5186 = phi i32 [ %i.be, %bb.c ], [ %i.be, %bb.e ], [ %i.be, %bb.k ], [ %.1182, %bb.m ], [ %i.be, %bb.l ], [ %i.be, %bb.g ], [ %i.be, %bb.f ], [ %i.be, %.split ], [ %i.be, %bb.j ] ; 2 uses
  %.6 = phi float [ %.0383, %bb.c ], [ %.0383, %bb.e ], [ %i.dn, %bb.k ], [ %.0383, %bb.m ], [ %.0383, %bb.l ], [ %.0383, %bb.g ], [ %.0383, %bb.f ], [ %.0383, %.split ], [ %.0383, %bb.j ]
  %.sroa.4178.4 = phi i32 [ %.sroa.4178.0384, %bb.c ], [ %.sroa.4178.0384, %bb.e ], [ %i.do, %bb.k ], [ %.sroa.4178.0384, %bb.m ], [ %.sroa.4178.0384, %bb.l ], [ %.sroa.4178.0384, %bb.g ], [ %.sroa.4178.0384, %bb.f ], [ %.sroa.4178.0384, %.split ], [ %i.do, %bb.j ] ; 2 uses
  %.sroa.0176.1 = phi i32 [ %.sroa.0176.0385, %bb.c ], [ %i.bl, %bb.e ], [ %i.bl, %bb.k ], [ %i.bl, %bb.m ], [ %i.bl, %bb.l ], [ %i.bl, %bb.g ], [ %i.bl, %bb.f ], [ %i.bl, %.split ], [ %i.bl, %bb.j ] ; 2 uses
  %i.fq = icmp sgt i32 %.5186, 0
  br i1 %i.fq, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.i, %b3AABB_Overlaps.exit.thread
  %.sroa.4178.5 = phi i32 [ %.sroa.4178.4, %b3AABB_Overlaps.exit.thread ], [ %i.do, %bb.i ]
  %.sroa.0176.2 = phi i32 [ %.sroa.0176.1, %b3AABB_Overlaps.exit.thread ], [ %i.bl, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.fr = zext i32 %.sroa.4178.5 to i64
  %i.fs = shl nuw i64 %i.fr, 32
  %i.ft = zext i32 %.sroa.0176.2 to i64
  %i.fu = or disjoint i64 %i.fs, %i.ft
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %.thread
  %.sroa.0176.0.insert.insert = phi i64 [ 0, %bb.a ], [ %i.fu, %.thread ]
  ret i64 %.sroa.0176.0.insert.insert
}

; Function Attrs: nounwind uwtable
define i32 @b3DynamicTree_Rebuild(ptr nofree noundef captures(none) %0, i1 noundef zeroext %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca [1024 x %struct.b3RebuildItem], align 16 ; 11 uses
  %i.a = alloca [1024 x i32], align 16            ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.c = load i32, ptr %i.b, align 4, !tbaa !22   ; 4 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !25   ; 2 uses
  %i.g = icmp sgt i32 %i.c, %i.f
  br i1 %i.g, label %bb.c, label %._crit_edge86

._crit_edge86:                                    ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !26
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = sdiv i32 %i.c, 2
  %i.i = add nsw i32 %i.h, %i.c                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24
  %i.l = sext i32 %i.f to i64
  %i.m = shl nsw i64 %i.l, 2
  tail call void @b3Free(ptr noundef %i.k, i64 noundef %i.m) #19
  %i.n = sext i32 %i.i to i64                     ; 2 uses
  %i.o = shl nsw i64 %i.n, 2
  %i.p = tail call ptr @b3Alloc(i64 noundef %i.o) #19
  store ptr %i.p, ptr %i.j, align 8, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !26
  %i.s = load i32, ptr %i.e, align 8, !tbaa !25
  %i.t = sext i32 %i.s to i64
  %i.u = mul nsw i64 %i.t, 12
  tail call void @b3Free(ptr noundef %i.r, i64 noundef %i.u) #19
  %i.v = mul nsw i64 %i.n, 12
  %i.w = tail call ptr @b3Alloc(i64 noundef %i.v) #19 ; 2 uses
  store ptr %i.w, ptr %i.q, align 8, !tbaa !26
  store i32 %i.i, ptr %i.e, align 8, !tbaa !25
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge86, %bb.c
  %i.x = phi ptr [ %.pre, %._crit_edge86 ], [ %i.w, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !16   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !19 ; 5 uses
  %i.ac = sext i32 %i.z to i64
  %i.ad = getelementptr inbounds [48 x i8], ptr %i.ab, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !24 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  br i1 %1, label %.outer.us, label %.outer

.outer.us:                                        ; preds = %bb.d, %11
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %11 ], [ 0, %bb.d ] ; 4 uses
  %.055.ph.us = phi i32 [ %12, %11 ], [ 0, %bb.d ] ; 2 uses
  %.054.ph.us = phi i32 [ %15, %11 ], [ %i.z, %bb.d ] ; 2 uses
  %.053.ph.us = phi ptr [ %17, %11 ], [ %i.ad, %bb.d ] ; 3 uses
  %i.aj = getelementptr i8, ptr %.053.ph.us, i64 46
  %.053.val60.us = load i16, ptr %i.aj, align 2, !tbaa !36
  %i.ak = and i16 %.053.val60.us, 4
  %.not5961.us = icmp eq i16 %i.ak, 0
  br i1 %.not5961.us, label %.lr.ph.us, label %._crit_edge68.split.us.us

._crit_edge68.split.us.us:                        ; preds = %bb.f, %.outer.us
  %.055.lcssa.us = phi i32 [ %.055.ph.us, %.outer.us ], [ %.1.us.us, %bb.f ] ; 2 uses
  %.054.lcssa.us = phi i32 [ %.054.ph.us, %.outer.us ], [ %i.am, %bb.f ]
  %.053.lcssa.us = phi ptr [ %.053.ph.us, %.outer.us ], [ %i.au, %bb.f ] ; 5 uses
  %3 = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv83
  store i32 %.054.lcssa.us, ptr %3, align 4, !tbaa !38
  %4 = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv83 ; 2 uses
  %.05358.sroa.0.0.copyload.us = load <2 x float>, ptr %.053.lcssa.us, align 8
  %.05358.sroa.4.0..053.sroa_idx.us = getelementptr inbounds nuw i8, ptr %.053.lcssa.us, i64 8
  %.05358.sroa.4.0.copyload.us = load float, ptr %.05358.sroa.4.0..053.sroa_idx.us, align 8
  %.05358.sroa.5.0..053.sroa_idx.us = getelementptr inbounds nuw i8, ptr %.053.lcssa.us, i64 12
  %.05358.sroa.5.0.copyload.us = load <2 x float>, ptr %.05358.sroa.5.0..053.sroa_idx.us, align 4
  %.05358.sroa.6.0..053.sroa_idx.us = getelementptr inbounds nuw i8, ptr %.053.lcssa.us, i64 20
  %.05358.sroa.6.0.copyload.us = load float, ptr %.05358.sroa.6.0..053.sroa_idx.us, align 4
  %5 = fadd float %.05358.sroa.4.0.copyload.us, %.05358.sroa.6.0.copyload.us
  %6 = fadd <2 x float> %.05358.sroa.0.0.copyload.us, %.05358.sroa.5.0.copyload.us
  %7 = fmul <2 x float> %6, splat (float 5.000000e-01)
  %8 = fmul float %5, 5.000000e-01
  store <2 x float> %7, ptr %4, align 4
  %.sroa.4.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %8, ptr %.sroa.4.0..sroa_idx.us, align 4, !tbaa !28
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %.053.lcssa.us, i64 40
  store i32 -1, ptr %9, align 8, !tbaa !20
  %10 = icmp eq i32 %.055.lcssa.us, 0
  br i1 %10, label %.split75.us, label %11

11:                                               ; preds = %._crit_edge68.split.us.us
  %12 = add nsw i32 %.055.lcssa.us, -1            ; 2 uses
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr %i.a, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !38     ; 2 uses
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [48 x i8], ptr %i.ab, i64 %16
  br label %.outer.us

.lr.ph.us:                                        ; preds = %.outer.us, %bb.f
  %.05364.us.us = phi ptr [ %i.au, %bb.f ], [ %.053.ph.us, %.outer.us ] ; 2 uses
  %.05463.us.us = phi i32 [ %i.am, %bb.f ], [ %.054.ph.us, %.outer.us ] ; 2 uses
  %.05562.us.us = phi i32 [ %.1.us.us, %bb.f ], [ %.055.ph.us, %.outer.us ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.05364.us.us, i64 32
  %i.am = load i32, ptr %i.al, align 8, !tbaa !20 ; 3 uses
  %i.an = icmp slt i32 %.05562.us.us, 1024
  br i1 %i.an, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.us
  %i.ao = getelementptr inbounds nuw i8, ptr %.05364.us.us, i64 36
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !20
  %i.aq = add nsw i32 %.05562.us.us, 1
  %i.ar = sext i32 %.05562.us.us to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ar
  store i32 %i.ap, ptr %i.as, align 4, !tbaa !38
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.us
  %.1.us.us = phi i32 [ %i.aq, %bb.e ], [ %.05562.us.us, %.lr.ph.us ] ; 2 uses
  %i.at = sext i32 %i.am to i64
  %i.au = getelementptr inbounds [48 x i8], ptr %i.ab, i64 %i.at ; 3 uses
  %i.av = load i32, ptr %i.ah, align 8, !tbaa !21
  %i.aw = load ptr, ptr %i.aa, align 8, !tbaa !19
  %i.ax = sext i32 %.05463.us.us to i64           ; 2 uses
  %i.ay = getelementptr inbounds [48 x i8], ptr %i.aw, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  store i32 %i.av, ptr %i.az, align 8, !tbaa !20
  %i.ba = load ptr, ptr %i.aa, align 8, !tbaa !19
  %i.bb = getelementptr inbounds [48 x i8], ptr %i.ba, i64 %i.ax
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 46
  store i16 0, ptr %i.bc, align 2, !tbaa !36
  store i32 %.05463.us.us, ptr %i.ah, align 8, !tbaa !21
  %i.bd = load i32, ptr %i.ai, align 4, !tbaa !18
  %i.be = add nsw i32 %i.bd, -1
  store i32 %i.be, ptr %i.ai, align 4, !tbaa !18
  %i.bf = getelementptr i8, ptr %i.au, i64 46
  %.053.val.us.us = load i16, ptr %i.bf, align 2, !tbaa !36
  %i.bg = and i16 %.053.val.us.us, 4
  %.not59.us.us = icmp eq i16 %i.bg, 0
  br i1 %.not59.us.us, label %.lr.ph.us, label %._crit_edge68.split.us.us

.outer:                                           ; preds = %bb.d, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %bb.d ] ; 4 uses
  %.055.ph = phi i32 [ %i.co, %bb.j ], [ 0, %bb.d ] ; 2 uses
  %.054.ph = phi i32 [ %i.cr, %bb.j ], [ %i.z, %bb.d ] ; 2 uses
  %.053.ph = phi ptr [ %i.ct, %bb.j ], [ %i.ad, %bb.d ] ; 3 uses
  %i.bh = getelementptr i8, ptr %.053.ph, i64 46
  %.053.val60 = load i16, ptr %i.bh, align 2, !tbaa !36 ; 2 uses
  %i.bi = and i16 %.053.val60, 4
  %.not5961 = icmp eq i16 %i.bi, 0
  br i1 %.not5961, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.outer, %bb.i
  %.053.val65 = phi i16 [ %.053.val, %bb.i ], [ %.053.val60, %.outer ]
  %.05364 = phi ptr [ %i.cb, %bb.i ], [ %.053.ph, %.outer ] ; 3 uses
  %.05463 = phi i32 [ %i.bt, %bb.i ], [ %.054.ph, %.outer ] ; 3 uses
  %.05562 = phi i32 [ %.1, %bb.i ], [ %.055.ph, %.outer ] ; 5 uses
  %i.bj = and i16 %.053.val65, 2
  %.not = icmp eq i16 %i.bj, 0
  br i1 %.not, label %._crit_edge, label %bb.g

._crit_edge:                                      ; preds = %bb.i, %.lr.ph, %.outer
  %.055.lcssa = phi i32 [ %.055.ph, %.outer ], [ %.05562, %.lr.ph ], [ %.1, %bb.i ] ; 2 uses
  %.054.lcssa = phi i32 [ %.054.ph, %.outer ], [ %.05463, %.lr.ph ], [ %i.bt, %bb.i ]
  %.053.lcssa = phi ptr [ %.053.ph, %.outer ], [ %.05364, %.lr.ph ], [ %i.cb, %bb.i ] ; 5 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv
  store i32 %.054.lcssa, ptr %i.bk, align 4, !tbaa !38
  %i.bl = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv ; 2 uses
  %.05358.sroa.0.0.copyload = load <2 x float>, ptr %.053.lcssa, align 8
  %.05358.sroa.4.0..053.sroa_idx = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 8
  %.05358.sroa.4.0.copyload = load float, ptr %.05358.sroa.4.0..053.sroa_idx, align 8
  %.05358.sroa.5.0..053.sroa_idx = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 12
  %.05358.sroa.5.0.copyload = load <2 x float>, ptr %.05358.sroa.5.0..053.sroa_idx, align 4
  %.05358.sroa.6.0..053.sroa_idx = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 20
  %.05358.sroa.6.0.copyload = load float, ptr %.05358.sroa.6.0..053.sroa_idx, align 4
  %i.bm = fadd float %.05358.sroa.4.0.copyload, %.05358.sroa.6.0.copyload
  %i.bn = fadd <2 x float> %.05358.sroa.0.0.copyload, %.05358.sroa.5.0.copyload
  %i.bo = fmul <2 x float> %i.bn, splat (float 5.000000e-01)
  %i.bp = fmul float %i.bm, 5.000000e-01
  store <2 x float> %i.bo, ptr %i.bl, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store float %i.bp, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 40
  store i32 -1, ptr %i.bq, align 8, !tbaa !20
  %i.br = icmp eq i32 %.055.lcssa, 0
  br i1 %i.br, label %.split75.us, label %bb.j

bb.g:                                             ; preds = %.lr.ph
  %i.bs = getelementptr inbounds nuw i8, ptr %.05364, i64 32
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !20 ; 3 uses
  %i.bu = icmp slt i32 %.05562, 1024
  br i1 %i.bu, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bv = getelementptr inbounds nuw i8, ptr %.05364, i64 36
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !20
  %i.bx = add nsw i32 %.05562, 1
  %i.by = sext i32 %.05562 to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.by
  store i32 %i.bw, ptr %i.bz, align 4, !tbaa !38
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1 = phi i32 [ %i.bx, %bb.h ], [ %.05562, %bb.g ] ; 2 uses
  %i.ca = sext i32 %i.bt to i64
  %i.cb = getelementptr inbounds [48 x i8], ptr %i.ab, i64 %i.ca ; 3 uses
  %i.cc = load i32, ptr %i.ah, align 8, !tbaa !21
  %i.cd = load ptr, ptr %i.aa, align 8, !tbaa !19
  %i.ce = sext i32 %.05463 to i64                 ; 2 uses
  %i.cf = getelementptr inbounds [48 x i8], ptr %i.cd, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  store i32 %i.cc, ptr %i.cg, align 8, !tbaa !20
  %i.ch = load ptr, ptr %i.aa, align 8, !tbaa !19
  %i.ci = getelementptr inbounds [48 x i8], ptr %i.ch, i64 %i.ce
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 46
  store i16 0, ptr %i.cj, align 2, !tbaa !36
  store i32 %.05463, ptr %i.ah, align 8, !tbaa !21
  %i.ck = load i32, ptr %i.ai, align 4, !tbaa !18
  %i.cl = add nsw i32 %i.ck, -1
  store i32 %i.cl, ptr %i.ai, align 4, !tbaa !18
  %i.cm = getelementptr i8, ptr %i.cb, i64 46
  %.053.val = load i16, ptr %i.cm, align 2, !tbaa !36 ; 2 uses
  %i.cn = and i16 %.053.val, 4
  %.not59 = icmp eq i16 %i.cn, 0
  br i1 %.not59, label %.lr.ph, label %._crit_edge

bb.j:                                             ; preds = %._crit_edge
  %i.co = add nsw i32 %.055.lcssa, -1             ; 2 uses
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !38 ; 2 uses
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [48 x i8], ptr %i.ab, i64 %i.cs
  br label %.outer

.split75.us:                                      ; preds = %._crit_edge, %._crit_edge68.split.us.us
  %.us-phi76.in = phi i64 [ %indvars.iv.next84, %._crit_edge68.split.us.us ], [ %indvars.iv.next, %._crit_edge ]
  %.us-phi77.in = phi i64 [ %indvars.iv83, %._crit_edge68.split.us.us ], [ %indvars.iv, %._crit_edge ]
  %.us-phi76 = trunc i64 %.us-phi76.in to i32     ; 3 uses
  %i.cu = load ptr, ptr %i.aa, align 8, !tbaa !19 ; 10 uses
  %i.cv = load ptr, ptr %i.ae, align 8, !tbaa !24 ; 5 uses
  %i.cw = and i64 %.us-phi77.in, 4294967295
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.split75.us
  %i.cy = load i32, ptr %i.cv, align 4, !tbaa !38
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [48 x i8], ptr %i.cu, i64 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  store i32 -1, ptr %i.db, align 8, !tbaa !20
  %i.dc = load i32, ptr %i.cv, align 4, !tbaa !38
  br label %b3BuildTree.exit

bb.l:                                             ; preds = %.split75.us
  %i.dd = load ptr, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.de = tail call fastcc i32 @b3AllocateNode(ptr noundef nonnull %0)
  store i32 %i.de, ptr %2, align 16, !tbaa !69
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 -1, ptr %i.df, align 4, !tbaa !70
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.dg, align 8, !tbaa !71
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %.us-phi76, ptr %i.dh, align 16, !tbaa !72
  %i.di = tail call fastcc i32 @b3PartitionMid(ptr noundef %i.cv, ptr noundef %i.dd, i32 noundef range(i32 -2147483647, -2147483648) %.us-phi76)
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !73
  br label %.outer94

.outer94:                                         ; preds = %.outer94.backedge, %bb.l
  %.ph = phi i32 [ -1, %bb.l ], [ %.ph.be, %.outer94.backedge ]
  %.098.i.ph = phi i32 [ 0, %bb.l ], [ %.098.i.ph.be, %.outer94.backedge ] ; 4 uses
  %i.dk = sext i32 %.098.i.ph to i64
  %i.dl = getelementptr inbounds [20 x i8], ptr %2, i64 %i.dk ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  br label %bb.m

bb.m:                                             ; preds = %.outer94, %bb.x
  %i.dn = phi i32 [ %i.do, %bb.x ], [ %.ph, %.outer94 ]
  %i.do = add nsw i32 %i.dn, 1                    ; 4 uses
  store i32 %i.do, ptr %i.dm, align 4, !tbaa !70
  switch i32 %i.do, label %bb.s [
    i32 2, label %bb.n
    i32 0, label %bb.t
  ]

bb.n:                                             ; preds = %bb.m
  %i.dp = icmp eq i32 %.098.i.ph, 0
  br i1 %i.dp, label %bb.z, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dq = add nsw i32 %.098.i.ph, -1              ; 2 uses
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [20 x i8], ptr %2, i64 %i.dr ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !69 ; 2 uses
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [48 x i8], ptr %i.cu, i64 %i.du ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !70 ; 2 uses
  %i.dy = icmp eq i32 %i.dx, 0
  %i.dz = load i32, ptr %i.dl, align 4, !tbaa !69 ; 3 uses
  br i1 %i.dy, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  store i32 %i.dz, ptr %i.ea, align 8, !tbaa !20
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 36
  store i32 %i.dz, ptr %i.eb, align 4, !tbaa !20
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ec = sext i32 %i.dz to i64
  %i.ed = getelementptr inbounds [48 x i8], ptr %i.cu, i64 %i.ec ; 9 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 40
  store i32 %i.dt, ptr %i.ee, align 8, !tbaa !20
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !20
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [48 x i8], ptr %i.cu, i64 %i.eh ; 6 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ed, i64 36
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !20
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [48 x i8], ptr %i.cu, i64 %i.el ; 6 uses
  %.sroa.0136.0.copyload.i = load <2 x float>, ptr %i.em, align 8 ; 2 uses
  %.sroa.4137.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %.sroa.4137.0.copyload.i = load float, ptr %.sroa.4137.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.5138.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  %.sroa.5138.0.copyload.i = load <2 x float>, ptr %.sroa.5138.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.6139.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.em, i64 20
  %.sroa.6139.0.copyload.i = load float, ptr %.sroa.6139.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.0132.0.copyload.i = load <2 x float>, ptr %i.ei, align 8 ; 2 uses
  %.sroa.4133.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %.sroa.4133.0.copyload.i = load float, ptr %.sroa.4133.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.5134.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  %.sroa.5134.0.copyload.i = load <2 x float>, ptr %.sroa.5134.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.6135.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 20
end_hunk_0
