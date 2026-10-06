Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/dynamic_tree?download=true
inline.NumInlined: 175
inline.NumDeleted: 37
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@b3DynamicTree_BoxCast:bb.a

bb.e:                                             ; preds = %bb.d
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %b3AABB_Overlaps.exit.thread, label %bb.f, !llvm.loop !64

bb.f:                                             ; preds = %.split, %bb.e
  %.sroa.7333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %.sroa.7333.0.copyload = load float, ptr %.sroa.7333.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr i8, ptr %i.bk, i64 20
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4 ; 2 uses
  %.sroa.0.4.vec.extract = extractelement <2 x float> %.sroa.0.0381, i64 1
  %i.bq = fcmp uge float %.sroa.7333.0.copyload, %.sroa.0.4.vec.extract
  %i.br = fcmp uge float %.sroa.8.0.copyload, %.sroa.6.0380
  %i.bs = load <4 x float>, ptr %i.bk, align 8    ; 3 uses
  %i.bt = shufflevector <2 x float> %.sroa.9.0379, <2 x float> %.sroa.0.0381, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %i.bu = insertelement <4 x float> %i.bt, float %.sroa.13.0378, i64 2 ; 2 uses
  %i.bv = fcmp ule <4 x float> %i.bs, %i.bu
  %i.bw = fcmp uge <4 x float> %i.bs, %i.bu
  %i.bx = shufflevector <4 x i1> %i.bv, <4 x i1> %i.bw, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.by = freeze <4 x i1> %i.bx
  %i.bz = bitcast <4 x i1> %i.by to i4
  %i.ca = icmp eq i4 %i.bz, -1
  %.fr = freeze i1 %i.bq
  %op.rdx = and i1 %i.ca, %.fr
  %op.rdx389 = select i1 %op.rdx, i1 %i.br, i1 false
  br i1 %op.rdx389, label %bb.g, label %b3AABB_Overlaps.exit.thread, !llvm.loop !64

bb.g:                                             ; preds = %bb.f
  %.sroa.6332.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %.val196 = load double, ptr %i.bk, align 8, !tbaa !20
  %i.cb = insertelement <2 x double> poison, double %.val196, i64 0
  %i.cc = bitcast <2 x double> %i.cb to <4 x float>
  %i.cd = shufflevector <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x float> %i.bs, <4 x i32> <i32 6, i32 1, i32 poison, i32 poison>
  %i.ce = shufflevector <4 x float> %i.cc, <4 x float> %i.cd, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cf = fsub <4 x float> %i.ce, %i.aa
  %.val194 = load double, ptr %.sroa.6332.0..sroa_idx, align 4, !tbaa !20
  %i.cg = insertelement <2 x double> poison, double %.val194, i64 0
  %i.ch = bitcast <2 x double> %i.cg to <4 x float>
  %i.ci = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.8.0.copyload, i64 0
  %i.cj = shufflevector <4 x float> %i.ch, <4 x float> %i.ci, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ck = fadd <4 x float> %i.aa, %i.cj           ; 2 uses
  %i.cl = fadd <4 x float> %i.cf, %i.ck
  %i.cm = fmul <4 x float> %i.cl, splat (float 5.000000e-01) ; 2 uses
  %i.cn = fsub <4 x float> %i.ck, %i.cm           ; 2 uses
  %i.co = fsub <4 x float> %i.r, %i.cm            ; 2 uses
  %i.cp = shufflevector <4 x float> %i.co, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.cq = shufflevector <4 x float> %i.co, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.cr = fmul <4 x float> %i.az, %i.cq
  %i.cs = fmul <4 x float> %i.ba, %i.cp
  %i.ct = fsub <4 x float> %i.cr, %i.cs           ; 2 uses
  %i.cu = fsub <4 x float> zeroinitializer, %i.ct
  %i.cv = call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cu, <4 x float> %i.ct)
  %i.cw = call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.bb, <4 x float> %i.v) ; 2 uses
  %i.cx = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.cy = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.cz = shufflevector <4 x float> %i.cn, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.da = shufflevector <4 x float> %i.cn, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.db = fmul <4 x float> %i.cx, %i.da
  %i.dc = fmul <4 x float> %i.cy, %i.cz
  %i.dd = fadd <4 x float> %i.db, %i.dc
  %i.de = fsub <4 x float> %i.cv, %i.dd
  %i.df = fcmp ole <4 x float> %i.de, zeroinitializer
  %i.dg = bitcast <4 x i1> %i.df to i4
  %i.dh = and i4 %i.dg, 7
  %i.di = icmp eq i4 %i.dh, 7
  br i1 %i.di, label %bb.h, label %b3AABB_Overlaps.exit.thread, !llvm.loop !64

bb.h:                                             ; preds = %bb.g
  %i.dj = getelementptr i8, ptr %i.bk, i64 46
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
  %2 = alloca [1024 x %struct.b3RebuildItem], align 16 ; 10 uses
  %i.a = alloca [1024 x i32], align 16            ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.c = load i32, ptr %i.b, align 4, !tbaa !22   ; 4 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.ab, label %bb.b

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

.outer.us:                                        ; preds = %bb.d, %bb.g
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %bb.g ], [ 0, %bb.d ] ; 4 uses
  %.055.ph.us = phi i32 [ %i.bp, %bb.g ], [ 0, %bb.d ] ; 2 uses
  %.054.ph.us = phi i32 [ %i.bs, %bb.g ], [ %i.z, %bb.d ] ; 2 uses
  %.053.ph.us = phi ptr [ %i.bu, %bb.g ], [ %i.ad, %bb.d ] ; 3 uses
  %i.aj = getelementptr i8, ptr %.053.ph.us, i64 46
  %.053.val60.us = load i16, ptr %i.aj, align 2, !tbaa !36
  %i.ak = and i16 %.053.val60.us, 4
  %.not5961.us = icmp eq i16 %i.ak, 0
  br i1 %.not5961.us, label %.lr.ph.us, label %._crit_edge68.split.us.us

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

._crit_edge68.split.us.us:                        ; preds = %bb.f, %.outer.us
  %.055.lcssa.us = phi i32 [ %.055.ph.us, %.outer.us ], [ %.1.us.us, %bb.f ] ; 2 uses
  %.054.lcssa.us = phi i32 [ %.054.ph.us, %.outer.us ], [ %i.am, %bb.f ]
  %.053.lcssa.us = phi ptr [ %.053.ph.us, %.outer.us ], [ %i.au, %bb.f ] ; 5 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv83
  store i32 %.054.lcssa.us, ptr %i.bh, align 4, !tbaa !38
  %i.bi = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv83 ; 2 uses
  %.05358.sroa.0.0.copyload.us = load <2 x float>, ptr %.053.lcssa.us, align 8
  %.05358.sroa.4.0..053.sroa_idx.us = getelementptr inbounds nuw i8, ptr %.053.lcssa.us, i64 8
  %.05358.sroa.4.0.copyload.us = load float, ptr %.05358.sroa.4.0..053.sroa_idx.us, align 8
  %.05358.sroa.5.0..053.sroa_idx.us = getelementptr inbounds nuw i8, ptr %.053.lcssa.us, i64 12
  %.05358.sroa.5.0.copyload.us = load <2 x float>, ptr %.05358.sroa.5.0..053.sroa_idx.us, align 4
  %.05358.sroa.6.0..053.sroa_idx.us = getelementptr inbounds nuw i8, ptr %.053.lcssa.us, i64 20
  %.05358.sroa.6.0.copyload.us = load float, ptr %.05358.sroa.6.0..053.sroa_idx.us, align 4
  %i.bj = fadd float %.05358.sroa.4.0.copyload.us, %.05358.sroa.6.0.copyload.us
  %i.bk = fadd <2 x float> %.05358.sroa.0.0.copyload.us, %.05358.sroa.5.0.copyload.us
  %i.bl = fmul <2 x float> %i.bk, splat (float 5.000000e-01)
  %i.bm = fmul float %i.bj, 5.000000e-01
  store <2 x float> %i.bl, ptr %i.bi, align 4, !tbaa !28
  %.sroa.4.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store float %i.bm, ptr %.sroa.4.0..sroa_idx.us, align 4, !tbaa !28
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.053.lcssa.us, i64 40
  store i32 -1, ptr %i.bn, align 8, !tbaa !20
  %i.bo = icmp eq i32 %.055.lcssa.us, 0
  br i1 %i.bo, label %.split75.us, label %bb.g

bb.g:                                             ; preds = %._crit_edge68.split.us.us
  %i.bp = add nsw i32 %.055.lcssa.us, -1          ; 2 uses
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !38 ; 2 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [48 x i8], ptr %i.ab, i64 %i.bt
  br label %.outer.us

.outer:                                           ; preds = %bb.d, %bb.k
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.k ], [ 0, %bb.d ] ; 4 uses
  %.055.ph = phi i32 [ %i.dc, %bb.k ], [ 0, %bb.d ] ; 2 uses
  %.054.ph = phi i32 [ %i.df, %bb.k ], [ %i.z, %bb.d ] ; 2 uses
  %.053.ph = phi ptr [ %i.dh, %bb.k ], [ %i.ad, %bb.d ] ; 3 uses
  %i.bv = getelementptr i8, ptr %.053.ph, i64 46
  %.053.val60 = load i16, ptr %i.bv, align 2, !tbaa !36 ; 2 uses
  %i.bw = and i16 %.053.val60, 4
  %.not5961 = icmp eq i16 %i.bw, 0
  br i1 %.not5961, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.outer, %bb.j
  %.053.val65 = phi i16 [ %.053.val, %bb.j ], [ %.053.val60, %.outer ]
  %.05364 = phi ptr [ %i.cp, %bb.j ], [ %.053.ph, %.outer ] ; 3 uses
  %.05463 = phi i32 [ %i.ch, %bb.j ], [ %.054.ph, %.outer ] ; 3 uses
  %.05562 = phi i32 [ %.1, %bb.j ], [ %.055.ph, %.outer ] ; 5 uses
  %i.bx = and i16 %.053.val65, 2
  %.not = icmp eq i16 %i.bx, 0
  br i1 %.not, label %._crit_edge, label %bb.h

._crit_edge:                                      ; preds = %bb.j, %.lr.ph, %.outer
  %.055.lcssa = phi i32 [ %.055.ph, %.outer ], [ %.05562, %.lr.ph ], [ %.1, %bb.j ] ; 2 uses
  %.054.lcssa = phi i32 [ %.054.ph, %.outer ], [ %.05463, %.lr.ph ], [ %i.ch, %bb.j ]
  %.053.lcssa = phi ptr [ %.053.ph, %.outer ], [ %.05364, %.lr.ph ], [ %i.cp, %bb.j ] ; 5 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv
  store i32 %.054.lcssa, ptr %i.by, align 4, !tbaa !38
  %i.bz = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv ; 2 uses
  %.05358.sroa.0.0.copyload = load <2 x float>, ptr %.053.lcssa, align 8
  %.05358.sroa.4.0..053.sroa_idx = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 8
  %.05358.sroa.4.0.copyload = load float, ptr %.05358.sroa.4.0..053.sroa_idx, align 8
  %.05358.sroa.5.0..053.sroa_idx = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 12
  %.05358.sroa.5.0.copyload = load <2 x float>, ptr %.05358.sroa.5.0..053.sroa_idx, align 4
  %.05358.sroa.6.0..053.sroa_idx = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 20
  %.05358.sroa.6.0.copyload = load float, ptr %.05358.sroa.6.0..053.sroa_idx, align 4
  %i.ca = fadd float %.05358.sroa.4.0.copyload, %.05358.sroa.6.0.copyload
  %i.cb = fadd <2 x float> %.05358.sroa.0.0.copyload, %.05358.sroa.5.0.copyload
  %i.cc = fmul <2 x float> %i.cb, splat (float 5.000000e-01)
  %i.cd = fmul float %i.ca, 5.000000e-01
  store <2 x float> %i.cc, ptr %i.bz, align 4, !tbaa !28
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store float %i.cd, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 40
  store i32 -1, ptr %i.ce, align 8, !tbaa !20
  %i.cf = icmp eq i32 %.055.lcssa, 0
  br i1 %i.cf, label %.split75.us, label %bb.k

bb.h:                                             ; preds = %.lr.ph
  %i.cg = getelementptr inbounds nuw i8, ptr %.05364, i64 32
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !20 ; 3 uses
  %i.ci = icmp slt i32 %.05562, 1024
  br i1 %i.ci, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cj = getelementptr inbounds nuw i8, ptr %.05364, i64 36
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !20
  %i.cl = add nsw i32 %.05562, 1
  %i.cm = sext i32 %.05562 to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cm
  store i32 %i.ck, ptr %i.cn, align 4, !tbaa !38
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1 = phi i32 [ %i.cl, %bb.i ], [ %.05562, %bb.h ] ; 2 uses
  %i.co = sext i32 %i.ch to i64
  %i.cp = getelementptr inbounds [48 x i8], ptr %i.ab, i64 %i.co ; 3 uses
  %i.cq = load i32, ptr %i.ah, align 8, !tbaa !21
  %i.cr = load ptr, ptr %i.aa, align 8, !tbaa !19
  %i.cs = sext i32 %.05463 to i64                 ; 2 uses
  %i.ct = getelementptr inbounds [48 x i8], ptr %i.cr, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  store i32 %i.cq, ptr %i.cu, align 8, !tbaa !20
  %i.cv = load ptr, ptr %i.aa, align 8, !tbaa !19
  %i.cw = getelementptr inbounds [48 x i8], ptr %i.cv, i64 %i.cs
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 46
  store i16 0, ptr %i.cx, align 2, !tbaa !36
  store i32 %.05463, ptr %i.ah, align 8, !tbaa !21
  %i.cy = load i32, ptr %i.ai, align 4, !tbaa !18
  %i.cz = add nsw i32 %i.cy, -1
  store i32 %i.cz, ptr %i.ai, align 4, !tbaa !18
  %i.da = getelementptr i8, ptr %i.cp, i64 46
  %.053.val = load i16, ptr %i.da, align 2, !tbaa !36 ; 2 uses
  %i.db = and i16 %.053.val, 4
  %.not59 = icmp eq i16 %i.db, 0
  br i1 %.not59, label %.lr.ph, label %._crit_edge

bb.k:                                             ; preds = %._crit_edge
  %i.dc = add nsw i32 %.055.lcssa, -1             ; 2 uses
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !38 ; 2 uses
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [48 x i8], ptr %i.ab, i64 %i.dg
  br label %.outer

.split75.us:                                      ; preds = %._crit_edge, %._crit_edge68.split.us.us
  %.us-phi76.in = phi i64 [ %indvars.iv.next84, %._crit_edge68.split.us.us ], [ %indvars.iv.next, %._crit_edge ]
  %.us-phi77.in = phi i64 [ %indvars.iv83, %._crit_edge68.split.us.us ], [ %indvars.iv, %._crit_edge ]
  %.us-phi76 = trunc i64 %.us-phi76.in to i32     ; 3 uses
  %i.di = load ptr, ptr %i.aa, align 8, !tbaa !19 ; 10 uses
  %i.dj = load ptr, ptr %i.ae, align 8, !tbaa !24 ; 5 uses
  %i.dk = and i64 %.us-phi77.in, 4294967295
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.split75.us
  %i.dm = load i32, ptr %i.dj, align 4, !tbaa !38
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [48 x i8], ptr %i.di, i64 %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 40
  store i32 -1, ptr %i.dp, align 8, !tbaa !20
  %i.dq = load i32, ptr %i.dj, align 4, !tbaa !38
  br label %b3BuildTree.exit

bb.m:                                             ; preds = %.split75.us
  %i.dr = load ptr, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.ds = tail call fastcc i32 @b3AllocateNode(ptr noundef nonnull %0)
  store i32 %i.ds, ptr %2, align 16, !tbaa !69
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.dt, align 8, !tbaa !70
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %.us-phi76, ptr %i.du, align 16, !tbaa !71
  %i.dv = tail call fastcc i32 @b3PartitionMid(ptr noundef %i.dj, ptr noundef %i.dr, i32 noundef range(i32 -2147483647, -2147483648) %.us-phi76)
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !72
  br label %.outer94

.outer94:                                         ; preds = %.outer94.backedge, %bb.m
  %.ph = phi i32 [ -1, %bb.m ], [ %.ph.be, %.outer94.backedge ]
  %.098.i.ph = phi i32 [ 0, %bb.m ], [ %.098.i.ph.be, %.outer94.backedge ] ; 4 uses
  %i.dx = sext i32 %.098.i.ph to i64
  %i.dy = getelementptr inbounds [20 x i8], ptr %2, i64 %i.dx ; 5 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  br label %bb.n

bb.n:                                             ; preds = %.outer94, %bb.y
  %i.ea = phi i32 [ %i.eb, %bb.y ], [ %.ph, %.outer94 ]
  %i.eb = add nsw i32 %i.ea, 1                    ; 4 uses
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !73
  switch i32 %i.eb, label %bb.t [
    i32 2, label %bb.o
    i32 0, label %bb.u
  ]

bb.o:                                             ; preds = %bb.n
  %i.ec = icmp eq i32 %.098.i.ph, 0
  br i1 %i.ec, label %bb.aa, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ed = add nsw i32 %.098.i.ph, -1              ; 2 uses
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [20 x i8], ptr %2, i64 %i.ee ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !69 ; 2 uses
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [48 x i8], ptr %i.di, i64 %i.eh ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !73 ; 2 uses
  %i.el = icmp eq i32 %i.ek, 0
  %i.em = load i32, ptr %i.dy, align 4, !tbaa !69 ; 3 uses
  br i1 %i.el, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  store i32 %i.em, ptr %i.en, align 8, !tbaa !20
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ei, i64 36
  store i32 %i.em, ptr %i.eo, align 4, !tbaa !20
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ep = sext i32 %i.em to i64
  %i.eq = getelementptr inbounds [48 x i8], ptr %i.di, i64 %i.ep ; 9 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  store i32 %i.eg, ptr %i.er, align 8, !tbaa !20
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  %i.et = load i32, ptr %i.es, align 8, !tbaa !20
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds [48 x i8], ptr %i.di, i64 %i.eu ; 6 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eq, i64 36
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !20
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds [48 x i8], ptr %i.di, i64 %i.ey ; 6 uses
  %.sroa.0136.0.copyload.i = load <2 x float>, ptr %i.ez, align 8 ; 2 uses
  %.sroa.4137.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %.sroa.4137.0.copyload.i = load float, ptr %.sroa.4137.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.5138.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  %.sroa.5138.0.copyload.i = load <2 x float>, ptr %.sroa.5138.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.6139.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 20
  %.sroa.6139.0.copyload.i = load float, ptr %.sroa.6139.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.0132.0.copyload.i = load <2 x float>, ptr %i.ev, align 8 ; 2 uses
  %.sroa.4133.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %.sroa.4133.0.copyload.i = load float, ptr %.sroa.4133.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.5134.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  %.sroa.5134.0.copyload.i = load <2 x float>, ptr %.sroa.5134.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.6135.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ev, i64 20
  %.sroa.6135.0.copyload.i = load float, ptr %.sroa.6135.0..sroa_idx.i, align 4 ; 2 uses
  %i.fa = fcmp olt <2 x float> %.sroa.0132.0.copyload.i, %.sroa.0136.0.copyload.i
  %i.fb = select <2 x i1> %i.fa, <2 x float> %.sroa.0132.0.copyload.i, <2 x float> %.sroa.0136.0.copyload.i
  %i.fc = fcmp olt float %.sroa.4133.0.copyload.i, %.sroa.4137.0.copyload.i
  %i.fd = select i1 %i.fc, float %.sroa.4133.0.copyload.i, float %.sroa.4137.0.copyload.i
  %i.fe = fcmp ogt <2 x float> %.sroa.5134.0.copyload.i, %.sroa.5138.0.copyload.i
  %i.ff = select <2 x i1> %i.fe, <2 x float> %.sroa.5134.0.copyload.i, <2 x float> %.sroa.5138.0.copyload.i
  %i.fg = fcmp ogt float %.sroa.6135.0.copyload.i, %.sroa.6139.0.copyload.i
  %i.fh = select i1 %i.fg, float %.sroa.6135.0.copyload.i, float %.sroa.6139.0.copyload.i
  store <2 x float> %i.fb, ptr %i.eq, align 8, !tbaa !28
  %.sroa.4129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store float %i.fd, ptr %.sroa.4129.0..sroa_idx.i, align 8, !tbaa !28
  %.sroa.5130.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eq, i64 12
  store <2 x float> %i.ff, ptr %.sroa.5130.0..sroa_idx.i, align 4, !tbaa !28
  %.sroa.6131.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eq, i64 20
  store float %i.fh, ptr %.sroa.6131.0..sroa_idx.i, align 4, !tbaa !28
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ev, i64 44
  %i.fj = load i16, ptr %i.fi, align 4, !tbaa !35
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ez, i64 44
  %i.fl = load i16, ptr %i.fk, align 4, !tbaa !35
  %i.fm = tail call noundef i16 @llvm.umax.i16(i16 %i.fj, i16 %i.fl)
  %i.fn = add i16 %i.fm, 1
  %i.fo = getelementptr inbounds nuw i8, ptr %i.eq, i64 44
  store i16 %i.fn, ptr %i.fo, align 4, !tbaa !35
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !34
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !34
  %i.ft = or i64 %i.fs, %i.fq
  %i.fu = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  store i64 %i.ft, ptr %i.fu, align 8, !tbaa !34
  br label %.outer94.backedge

bb.t:                                             ; preds = %bb.n
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.n
  %.sink155.i = phi i64 [ 12, %bb.t ], [ 8, %bb.n ]
  %.sink.i = phi i64 [ 16, %bb.t ], [ 12, %bb.n ]
  %i.fv = getelementptr inbounds nuw i8, ptr %i.dy, i64 %.sink155.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dy, i64 %.sink.i
  %.096.i = load i32, ptr %i.fw, align 4, !tbaa !38 ; 2 uses
  %.097.i = load i32, ptr %i.fv, align 4, !tbaa !38 ; 5 uses
  %i.fx = sub nsw i32 %.096.i, %.097.i            ; 2 uses
  %i.fy = icmp eq i32 %i.fx, 1
  br i1 %i.fy, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.fz = sext i32 %.097.i to i64
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !38 ; 3 uses
  %i.gc = load i32, ptr %i.dy, align 4, !tbaa !69 ; 2 uses
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [48 x i8], ptr %i.di, i64 %i.gd ; 2 uses
  %i.gf = icmp eq i32 %i.eb, 0
  br i1 %i.gf, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  store i32 %i.gb, ptr %i.gg, align 8, !tbaa !20
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 36
  store i32 %i.gb, ptr %i.gh, align 4, !tbaa !20
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.gi = sext i32 %i.gb to i64
  %i.gj = getelementptr inbounds [48 x i8], ptr %i.di, i64 %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 40
  store i32 %i.gc, ptr %i.gk, align 8, !tbaa !20
  br label %bb.n

bb.z:                                             ; preds = %bb.u
  %i.gl = add nsw i32 %.098.i.ph, 1               ; 2 uses
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds [20 x i8], ptr %2, i64 %i.gm ; 5 uses
  %i.go = tail call fastcc i32 @b3AllocateNode(ptr noundef nonnull %0)
  store i32 %i.go, ptr %i.gn, align 4, !tbaa !69
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  store i32 -1, ptr %i.gp, align 4, !tbaa !73
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store i32 %.097.i, ptr %i.gq, align 4, !tbaa !70
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  store i32 %.096.i, ptr %i.gr, align 4, !tbaa !71
  %i.gs = sext i32 %.097.i to i64                 ; 2 uses
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.gs
  %i.gu = getelementptr inbounds [12 x i8], ptr %i.dr, i64 %i.gs
  %i.gv = tail call fastcc i32 @b3PartitionMid(ptr noundef %i.gt, ptr noundef %i.gu, i32 noundef %i.fx)
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gn, i64 12
  %i.gx = add nsw i32 %i.gv, %.097.i
  store i32 %i.gx, ptr %i.gw, align 4, !tbaa !72
  br label %.outer94.backedge

.outer94.backedge:                                ; preds = %bb.z, %bb.s
  %.ph.be = phi i32 [ %i.ek, %bb.s ], [ -1, %bb.z ]
  %.098.i.ph.be = phi i32 [ %i.ed, %bb.s ], [ %i.gl, %bb.z ]
  br label %.outer94

bb.aa:                                            ; preds = %bb.o
  %i.gy = load i32, ptr %2, align 16, !tbaa !69   ; 2 uses
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr inbounds [48 x i8], ptr %i.di, i64 %i.gz ; 8 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 32
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !20
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds [48 x i8], ptr %i.di, i64 %i.hd ; 6 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 36
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !20
  %i.hh = sext i32 %i.hg to i64
  %i.hi = getelementptr inbounds [48 x i8], ptr %i.di, i64 %i.hh ; 6 uses
  %.sroa.0144.0.copyload.i = load <2 x float>, ptr %i.hi, align 8 ; 2 uses
  %.sroa.4145.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %.sroa.4145.0.copyload.i = load float, ptr %.sroa.4145.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.5146.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hi, i64 12
  %.sroa.5146.0.copyload.i = load <2 x float>, ptr %.sroa.5146.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.6147.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hi, i64 20
  %.sroa.6147.0.copyload.i = load float, ptr %.sroa.6147.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.0140.0.copyload.i = load <2 x float>, ptr %i.he, align 8 ; 2 uses
  %.sroa.4141.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %.sroa.4141.0.copyload.i = load float, ptr %.sroa.4141.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.5142.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.he, i64 12
  %.sroa.5142.0.copyload.i = load <2 x float>, ptr %.sroa.5142.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.6143.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.he, i64 20
  %.sroa.6143.0.copyload.i = load float, ptr %.sroa.6143.0..sroa_idx.i, align 4 ; 2 uses
  %i.hj = fcmp olt <2 x float> %.sroa.0140.0.copyload.i, %.sroa.0144.0.copyload.i
  %i.hk = select <2 x i1> %i.hj, <2 x float> %.sroa.0140.0.copyload.i, <2 x float> %.sroa.0144.0.copyload.i
  %i.hl = fcmp olt float %.sroa.4141.0.copyload.i, %.sroa.4145.0.copyload.i
  %i.hm = select i1 %i.hl, float %.sroa.4141.0.copyload.i, float %.sroa.4145.0.copyload.i
  %i.hn = fcmp ogt <2 x float> %.sroa.5142.0.copyload.i, %.sroa.5146.0.copyload.i
  %i.ho = select <2 x i1> %i.hn, <2 x float> %.sroa.5142.0.copyload.i, <2 x float> %.sroa.5146.0.copyload.i
  %i.hp = fcmp ogt float %.sroa.6143.0.copyload.i, %.sroa.6147.0.copyload.i
  %i.hq = select i1 %i.hp, float %.sroa.6143.0.copyload.i, float %.sroa.6147.0.copyload.i
  store <2 x float> %i.hk, ptr %i.ha, align 8, !tbaa !28
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store float %i.hm, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !28
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ha, i64 12
  store <2 x float> %i.ho, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !28
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ha, i64 20
  store float %i.hq, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !28
  %i.hr = getelementptr inbounds nuw i8, ptr %i.he, i64 44
  %i.hs = load i16, ptr %i.hr, align 4, !tbaa !35
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hi, i64 44
  %i.hu = load i16, ptr %i.ht, align 4, !tbaa !35
  %i.hv = tail call noundef i16 @llvm.umax.i16(i16 %i.hs, i16 %i.hu)
  %i.hw = add i16 %i.hv, 1
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ha, i64 44
  store i16 %i.hw, ptr %i.hx, align 4, !tbaa !35
  %i.hy = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !34
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !34
  %i.ic = or i64 %i.ib, %i.hz
  %i.id = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  store i64 %i.ic, ptr %i.id, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %b3BuildTree.exit

b3BuildTree.exit:                                 ; preds = %bb.l, %bb.aa
  %.0.i = phi i32 [ %i.dq, %bb.l ], [ %i.gy, %bb.aa ]
  store i32 %.0.i, ptr %i.y, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.ab

bb.ab:                                            ; preds = %bb.a, %b3BuildTree.exit
  %.0 = phi i32 [ %.us-phi76, %b3BuildTree.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind uwtable
define void @b3DynamicTree_Save(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #13 {
bb.a:
  %2 = alloca %struct.b3DynamicTree, align 8      ; 6 uses
  %i.a = tail call noalias noundef ptr @fopen(ptr noundef readonly %1, ptr noundef nonnull @.str) ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(80) %0, i64 80, i1 false), !tbaa.struct !78
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.c, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.d, i8 0, i64 36, i1 false)
  %i.e = call i64 @fwrite(ptr noundef nonnull %2, i64 noundef 80, i64 noundef 1, ptr noundef nonnull %i.a) ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !17   ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19   ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %i.g to i64
  %i.l = tail call i64 @fwrite(ptr noundef nonnull %i.j, i64 noundef 48, i64 noundef %i.k, ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.m = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define void @b3DynamicTree_Load(ptr dead_on_unwind noalias nofree writable sret(%struct.b3DynamicTree) align 8 captures(none) initializes((0, 80)) %0, ptr nofree noundef readonly captures(none) %1, float noundef %2) local_unnamed_addr #4 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  %i.a = tail call noalias noundef ptr @fopen(ptr noundef readonly %1, ptr noundef nonnull @.str.1) ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @fread(ptr noundef nonnull %0, i64 noundef 80, i64 noundef 1, ptr noundef nonnull %i.a)
  %i.d = and i64 %i.c, 4294967295
  %.not = icmp eq i64 %i.d, 1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.f = load i64, ptr %0, align 8, !tbaa !15
  %.not32 = icmp eq i64 %i.f, -7787375179321898166
  br i1 %.not32, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !17   ; 3 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.k = zext nneg i32 %i.i to i64                ; 3 uses
  %i.l = mul nuw nsw i64 %i.k, 48                 ; 2 uses
  %i.m = tail call ptr @b3Alloc(i64 noundef %i.l) #19 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !19
  %i.o = tail call i64 @fread(ptr noundef %i.m, i64 noundef 48, i64 noundef %i.k, ptr noundef nonnull %i.a)
  %i.p = trunc i64 %i.o to i32
  %.not33 = icmp eq i32 %i.i, %i.p
  br i1 %.not33, label %.lr.ph.preheader, label %bb.h

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.q = insertelement <2 x float> poison, float %2, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph

bb.h:                                             ; preds = %bb.g
  tail call void @b3Free(ptr noundef %i.m, i64 noundef %i.l) #19
  %i.s = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  br label %bb.j

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %indvars.iv ; 5 uses
  %.sroa.08.0.copyload = load <2 x float>, ptr %i.t, align 8
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %.sroa.29.0.copyload = load float, ptr %.sroa.29.0..sroa_idx, align 8
  %i.u = fmul <2 x float> %i.r, %.sroa.08.0.copyload
  %i.v = fmul float %2, %.sroa.29.0.copyload
  store <2 x float> %i.u, ptr %i.t, align 8, !tbaa !28
  store float %i.v, ptr %.sroa.29.0..sroa_idx, align 8, !tbaa !28
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 12 ; 2 uses
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.w, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 20 ; 2 uses
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4
  %i.x = fmul <2 x float> %i.r, %.sroa.01.0.copyload
  %i.y = fmul float %2, %.sroa.22.0.copyload
  store <2 x float> %i.x, ptr %i.w, align 4, !tbaa !28
  store float %i.y, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.k
end_hunk_0
begin_hunk_1_@b3PartitionMid:bb.a
  %i.bo = add nsw i32 %.4192.lcssa, 1
  br label %.critedge201

.critedge201:                                     ; preds = %bb.l, %.critedge4, %.critedge6
  %.5193 = phi i32 [ %i.bo, %.critedge6 ], [ %.4192.lcssa, %.critedge4 ], [ %.4192.lcssa, %bb.l ] ; 3 uses
  %.5.in = phi i64 [ %indvars.iv.next295, %.critedge6 ], [ %i.au, %.critedge4 ], [ %indvars.iv.next295, %bb.l ]
  %.5 = trunc i64 %.5.in to i32                   ; 2 uses
  %i.bp = icmp slt i32 %.5193, %.5
  br i1 %i.bp, label %.preheader231, label %.loopexit, !llvm.loop !86

.preheader:                                       ; preds = %bb.i, %.critedge202
  %.6262 = phi i32 [ %.8, %.critedge202 ], [ %2, %bb.i ] ; 3 uses
  %.6194261 = phi i32 [ %.8196, %.critedge202 ], [ 0, %bb.i ] ; 2 uses
  %i.bq = sext i32 %.6194261 to i64
  %i.br = sext i32 %.6262 to i64                  ; 3 uses
  %i.bs = add nsw i32 %.6194261, 1
  %smax299 = tail call i32 @llvm.smax.i32(i32 %.6262, i32 %i.bs)
  br label %bb.m

bb.m:                                             ; preds = %.preheader, %bb.n
  %indvars.iv297 = phi i64 [ %i.bq, %.preheader ], [ %indvars.iv.next298, %bb.n ] ; 3 uses
  %i.bt = getelementptr inbounds [12 x i8], ptr %1, i64 %indvars.iv297
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !93
  %i.bw = fcmp olt float %i.bv, %i.j
  br i1 %i.bw, label %bb.n, label %.critedge8.split.loop.exit326

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next298 = add nsw i64 %indvars.iv297, 1 ; 2 uses
  %i.bx = icmp slt i64 %indvars.iv.next298, %i.br
  br i1 %i.bx, label %bb.m, label %.critedge8, !llvm.loop !87

.critedge8.split.loop.exit326:                    ; preds = %bb.m
  %i.by = trunc nsw i64 %indvars.iv297 to i32
  br label %.critedge8

.critedge8:                                       ; preds = %bb.n, %.critedge8.split.loop.exit326
  %.7195.lcssa = phi i32 [ %i.by, %.critedge8.split.loop.exit326 ], [ %smax299, %bb.n ] ; 5 uses
  %i.bz = sext i32 %.7195.lcssa to i64            ; 3 uses
  %i.ca = icmp sgt i32 %.6262, %.7195.lcssa
  br i1 %i.ca, label %.lr.ph349, label %.critedge202

bb.o:                                             ; preds = %.lr.ph349
  %i.cb = icmp sgt i64 %indvars.iv.next302, %i.bz
  br i1 %i.cb, label %.lr.ph349, label %.critedge202, !llvm.loop !88

.lr.ph349:                                        ; preds = %.critedge8, %bb.o
  %indvars.iv301348 = phi i64 [ %indvars.iv.next302, %bb.o ], [ %i.br, %.critedge8 ]
  %indvars.iv.next302 = add nsw i64 %indvars.iv301348, -1 ; 6 uses
  %i.cc = getelementptr inbounds [12 x i8], ptr %1, i64 %indvars.iv.next302 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !93
  %i.cf = fcmp ult float %i.ce, %i.j
  br i1 %i.cf, label %.critedge10, label %bb.o, !llvm.loop !88

.critedge10:                                      ; preds = %.lr.ph349
  %i.cg = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bz ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !38
  %i.ci = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next302 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !38
  store i32 %i.cj, ptr %i.cg, align 4, !tbaa !38
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !38
  %i.ck = getelementptr inbounds [12 x i8], ptr %1, i64 %i.bz ; 2 uses
  %.sroa.0.0.copyload = load <3 x float>, ptr %i.ck, align 4, !tbaa !28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ck, ptr noundef nonnull align 4 dereferenceable(12) %i.cc, i64 12, i1 false), !tbaa.struct !91
  store <3 x float> %.sroa.0.0.copyload, ptr %i.cc, align 4, !tbaa !28
  %i.cl = add nsw i32 %.7195.lcssa, 1
  br label %.critedge202

.critedge202:                                     ; preds = %bb.o, %.critedge8, %.critedge10
  %.8196 = phi i32 [ %i.cl, %.critedge10 ], [ %.7195.lcssa, %.critedge8 ], [ %.7195.lcssa, %bb.o ] ; 3 uses
  %.8.in = phi i64 [ %indvars.iv.next302, %.critedge10 ], [ %i.br, %.critedge8 ], [ %indvars.iv.next302, %bb.o ]
  %.8 = trunc i64 %.8.in to i32                   ; 2 uses
  %i.cm = icmp slt i32 %.8196, %.8
  br i1 %i.cm, label %.preheader, label %.loopexit, !llvm.loop !89

.loopexit:                                        ; preds = %.critedge200, %.critedge201, %.critedge202
  %.9 = phi i32 [ %.5193, %.critedge201 ], [ %.8196, %.critedge202 ], [ %.2190, %.critedge200 ] ; 3 uses
  %i.cn = icmp sgt i32 %.9, 0
  %i.co = icmp slt i32 %.9, %2
  %or.cond203 = and i1 %i.cn, %i.co
  %i.cp = lshr i32 %2, 1
  %.0 = select i1 %or.cond203, i32 %.9, i32 %i.cp
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %bb.b
  %.1 = phi i32 [ %i.b, %bb.b ], [ %.0, %.loopexit ]
  ret i32 %.1
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #17

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #16 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"long", !4, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"p1 _ZTS10b3TreeNode", !9, i64 0}
!11 = !{!"p1 int", !9, i64 0}
!12 = !{!"p1 _ZTS6b3AABB", !9, i64 0}
!13 = !{!"p1 _ZTS6b3Vec3", !9, i64 0}
!14 = !{!"b3DynamicTree", !8, i64 0, !10, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !11, i64 40, !12, i64 48, !13, i64 56, !11, i64 64, !5, i64 72}
!15 = !{!14, !8, i64 0}
!16 = !{!14, !5, i64 16}
!17 = !{!14, !5, i64 24}
!18 = !{!14, !5, i64 20}
!19 = !{!14, !10, i64 8}
!20 = !{!4, !4, i64 0}
!21 = !{!14, !5, i64 32}
!22 = !{!14, !5, i64 28}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!14, !11, i64 40}
!25 = !{!14, !5, i64 72}
!26 = !{!14, !13, i64 56}
!27 = !{!"float", !4, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{i64 0, i64 4, !28, i64 4, i64 4, !28, i64 8, i64 4, !28, i64 12, i64 4, !28, i64 16, i64 4, !28, i64 20, i64 4, !28}
!30 = !{!"b3Vec3", !27, i64 0, !27, i64 4, !27, i64 8}
!31 = !{!"b3AABB", !30, i64 0, !30, i64 12}
!32 = !{!"short", !4, i64 0}
!33 = !{!"b3TreeNode", !31, i64 0, !8, i64 24, !4, i64 32, !4, i64 40, !32, i64 44, !32, i64 46}
!34 = !{!33, !8, i64 24}
!35 = !{!33, !32, i64 44}
!36 = !{!33, !32, i64 46}
!37 = !{!8, !8, i64 0}
!38 = !{!5, !5, i64 0}
!39 = distinct !{!39, !41}
!40 = distinct !{!40, !23}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = !{!14, !12, i64 48}
!43 = !{!14, !11, i64 64}
!44 = distinct !{!44, !23}
!45 = !{!32, !32, i64 0}
!46 = !{i64 0, i64 4, !28, i64 4, i64 4, !28, i64 8, i64 4, !28, i64 12, i64 4, !28, i64 16, i64 4, !28, i64 20, i64 4, !28, i64 24, i64 8, !37, i64 32, i64 8, !20, i64 40, i64 4, !20, i64 44, i64 2, !45, i64 46, i64 2, !45}
!47 = distinct !{!47, !23}
!48 = distinct !{!48, !23}
!49 = distinct !{!49, !23}
!50 = !{!31, !27, i64 0}
!51 = !{!31, !27, i64 4}
!52 = !{!31, !27, i64 8}
!53 = !{!31, !27, i64 12}
!54 = !{!31, !27, i64 16}
!55 = !{!31, !27, i64 20}
!56 = distinct !{!56, !23}
!57 = distinct !{!57, !23}
!58 = distinct !{!58, !23}
!59 = distinct !{!59, !23}
!60 = distinct !{!60, !23}
!61 = !{!"b3RayCastInput", !30, i64 0, !30, i64 12, !27, i64 24}
!62 = !{!61, !27, i64 24}
!63 = !{i64 0, i64 4, !28, i64 4, i64 4, !28, i64 8, i64 4, !28, i64 12, i64 4, !28, i64 16, i64 4, !28, i64 20, i64 4, !28, i64 24, i64 4, !28}
!64 = distinct !{!64, !23}
!65 = !{!"b3BoxCastInput", !31, i64 0, !30, i64 24, !27, i64 36}
!66 = !{!65, !27, i64 36}
!67 = !{i64 0, i64 4, !28, i64 4, i64 4, !28, i64 8, i64 4, !28, i64 12, i64 4, !28, i64 16, i64 4, !28, i64 20, i64 4, !28, i64 24, i64 4, !28, i64 28, i64 4, !28, i64 32, i64 4, !28, i64 36, i64 4, !28}
!68 = !{!"b3RebuildItem", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16}
!69 = !{!68, !5, i64 0}
!70 = !{!68, !5, i64 8}
!71 = !{!68, !5, i64 16}
!72 = !{!68, !5, i64 12}
!73 = !{!68, !5, i64 4}
!74 = !{!10, !10, i64 0}
!75 = !{!11, !11, i64 0}
!76 = !{!12, !12, i64 0}
!77 = !{!13, !13, i64 0}
!78 = !{i64 0, i64 8, !37, i64 8, i64 8, !74, i64 16, i64 4, !38, i64 20, i64 4, !38, i64 24, i64 4, !38, i64 28, i64 4, !38, i64 32, i64 4, !38, i64 40, i64 8, !75, i64 48, i64 8, !76, i64 56, i64 8, !77, i64 64, i64 8, !75, i64 72, i64 4, !38}
!79 = distinct !{!79, !23}
!80 = distinct !{!80, !23}
!81 = distinct !{!81, !23}
!82 = distinct !{!82, !23}
!83 = distinct !{!83, !23}
!84 = distinct !{!84, !23}
!85 = distinct !{!85, !23}
!86 = distinct !{!86, !23}
!87 = distinct !{!87, !23}
!88 = distinct !{!88, !23}
!89 = distinct !{!89, !23}
!90 = !{!30, !27, i64 0}
!91 = !{i64 0, i64 4, !28, i64 4, i64 4, !28, i64 8, i64 4, !28}
!92 = !{!30, !27, i64 4}
!93 = !{!30, !27, i64 8}
end_hunk_1
