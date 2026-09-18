Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_channelmixerrgb?download=true
inline.NumInlined: 403
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 99
begin_hunk_0_@illuminant_to_xy:bb.a
._crit_edge:                                      ; preds = %bb.w
  %.pre = load float, ptr %i.a, align 4, !tbaa !12
  %.pre29 = load float, ptr %i.b, align 4
  br label %bb.x

bb.x:                                             ; preds = %bb.a, %._crit_edge, %CCT_to_xy_blackbody.exit, %CCT_to_xy_daylight.exit, %bb.g, %bb.e, %bb.c, %bb.b
  %i.br = phi float [ %.pre29, %._crit_edge ], [ %i.bn, %CCT_to_xy_blackbody.exit ], [ %i.ah, %CCT_to_xy_daylight.exit ], [ f0x3EAAAAAB, %bb.b ], [ 4.074500e-01, %bb.c ], [ %i.n, %bb.g ], [ %i.h, %bb.e ], [ 3.585000e-01, %bb.a ] ; 2 uses
  %i.bs = phi float [ %.pre, %._crit_edge ], [ %.038.i, %CCT_to_xy_blackbody.exit ], [ %.0.i, %CCT_to_xy_daylight.exit ], [ f0x3EAAAAAB, %bb.b ], [ 4.475700e-01, %bb.c ], [ %i.l, %bb.g ], [ %i.f, %bb.e ], [ 3.456700e-01, %bb.a ] ; 2 uses
  %i.bt = fcmp reassoc nsz arcp contract afn une float %i.bs, 0.000000e+00
  %i.bu = fcmp reassoc nsz arcp contract afn une float %i.br, 0.000000e+00
  %or.cond5 = select i1 %i.bt, i1 %i.bu, i1 false
  br i1 %or.cond5, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  store float %i.bs, ptr %3, align 4, !tbaa !12
  store float %i.br, ptr %4, align 4, !tbaa !12
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.d, %bb.f, %bb.x, %bb.w, %bb.v, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret void
}

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #10 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %.sroa.10327.i = alloca float, align 8          ; 6 uses
  %.sroa.14328.i = alloca float, align 4          ; 4 uses
  %.sroa.10323.i = alloca float, align 8          ; 6 uses
  %.sroa.14324.i = alloca float, align 4          ; 4 uses
  %.sroa.10319.i = alloca float, align 8          ; 5 uses
  %.sroa.14320.i = alloca float, align 4          ; 3 uses
  %.sroa.25.i = alloca float, align 8             ; 6 uses
  %.sroa.33.i = alloca float, align 4             ; 4 uses
  %.sroa.042.i = alloca <4 x float>, align 16     ; 15 uses
  %i.e = alloca [4 x float], align 16             ; 6 uses
  %i.f = alloca float, align 4                    ; 5 uses
  %i.g = alloca float, align 4                    ; 5 uses
  %i.h = alloca [4 x float], align 16             ; 6 uses
  %.sroa.10.i = alloca float, align 8             ; 5 uses
  %.sroa.14278.i = alloca float, align 4          ; 3 uses
  %.sroa.14.i = alloca float, align 8             ; 5 uses
  %.sroa.20.i = alloca float, align 4             ; 3 uses
  %i.i = alloca float, align 4                    ; 5 uses
  %i.j = alloca float, align 4                    ; 5 uses
  %i.k = alloca float, align 4                    ; 4 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca [4 x [4 x float]], align 64       ; 6 uses
  %i.n = alloca [4 x [4 x float]], align 64       ; 4 uses
  %i.o = alloca [4 x [4 x float]], align 64       ; 5 uses
  %i.p = alloca float, align 4                    ; 4 uses
  %i.q = alloca float, align 4                    ; 4 uses
  %i.r = alloca [4 x float], align 16             ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 16, !tbaa !45  ; 19 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !46
  %i.w = tail call ptr @dt_ioppr_get_pipe_current_profile_info(ptr noundef %0, ptr noundef %i.v) #31 ; 3 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !46
  %i.y = tail call ptr @dt_ioppr_get_pipe_input_profile_info(ptr noundef %i.x) #31
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.aa = load ptr, ptr %i.z, align 16, !tbaa !57 ; 27 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !334
  %i.ad = tail call i32 @dt_iop_have_required_input_format(i32 noundef 4, ptr noundef %0, i32 noundef %i.ac, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #31
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %bb.bv, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ae = load ptr, ptr %i.u, align 8, !tbaa !46
  %i.af = getelementptr i8, ptr %i.ae, i64 644
  %.val128 = load i32, ptr %i.af, align 4, !tbaa !72
  %i.ag = and i32 %.val128, 4
  %.not120 = icmp eq i32 %i.ag, 0
  br i1 %.not120, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_declare_cat_on_pipe(ptr noundef nonnull %0, i32 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #31
  %.not121 = icmp eq ptr %i.w, null
  br i1 %.not121, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 576
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.m, ptr noundef nonnull align 64 dereferenceable(64) %i.ah, i64 64, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.n, ptr noundef nonnull align 64 dereferenceable(64) %i.ai, i64 64, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.o, ptr noundef nonnull align 64 dereferenceable(64) %i.aj, i64 64, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 5 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !73
  %i.am = load i32, ptr %i.al, align 16, !tbaa !90
  %i.an = icmp ne i32 %i.am, 0
  %i.ao = icmp ne ptr %i.aa, null                 ; 2 uses
  %or.cond = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %or.cond, label %bb.g, label %bb.ay

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 528 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 16, !tbaa !97
  %.not122 = icmp eq i32 %i.aq, 0
  br i1 %.not122, label %bb.ay, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %i.u, align 8, !tbaa !46
  %i.as = getelementptr i8, ptr %i.ar, i64 644
  %.val127 = load i32, ptr %i.as, align 4, !tbaa !72
  %i.at = and i32 %.val127, 4
  %.not123 = icmp eq i32 %i.at, 0
  br i1 %.not123, label %bb.ay, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.av = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.au) #31 ; 0 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  %i.ax = load i32, ptr %i.aw, align 16, !tbaa !99 ; 38 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aa, i64 440 ; 7 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !100, !noalias !337
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bb = load i64, ptr %i.ba, align 16, !tbaa !101, !noalias !337
  %i.bc = shl i64 %i.bb, 4
  %i.bd = tail call ptr @dt_alloc_aligned(i64 noundef %i.bc) #31, !noalias !337 ; 10 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bd, i64 64) ]
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !338, !noalias !337 ; 2 uses
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !339, !noalias !337 ; 2 uses
  %i.bj = sext i32 %i.bi to i64
  %i.bk = mul nsw i64 %i.bj, %i.bg                ; 2 uses
  %.mask.i = and i64 %i.bk, 4611686018427387903
  %.not.i.i = icmp eq i64 %.mask.i, 0
  %.sroa.042.i.8.i.8.i.8.gep.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.042.i, i64 8
  %.sroa.042.i.12.i.12.i.12.i.12.i.12.i.12.gep40.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.042.i, i64 12 ; 2 uses
  br i1 %.not.i.i, label %dt_simd_memcpy.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.i
  %i.bl = shl i64 %i.bk, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3, ptr readonly align 4 %2, i64 %i.bl, i1 false), !tbaa !12, !alias.scope !340
  br label %dt_simd_memcpy.exit.i

dt_simd_memcpy.exit.i:                            ; preds = %.lr.ph.preheader.i.i, %bb.i
  %i.bm = call fastcc <2 x float> @_extract_patches(ptr noundef %3, i32 %i.bf, i32 %i.bi, ptr noundef nonnull %i.aa, ptr noundef nonnull readonly %i.m, ptr noundef nonnull readonly %i.o, ptr noundef %i.bd, i32 noundef 1), !noalias !335 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31, !noalias !337
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !12, !noalias !337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31, !noalias !337
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !12, !noalias !337
  %i.bn = load ptr, ptr %i.ay, align 8, !tbaa !100, !noalias !337
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aa, i64 704 ; 5 uses
  %i.bp = load ptr, ptr %i.bo, align 64, !tbaa !102, !noalias !337
  call fastcc void @_compute_patches_delta_E(ptr noundef %i.bd, ptr noundef %i.bn, ptr noundef %i.bp, ptr noundef %i.c, ptr noundef %i.d), !noalias !337
  %i.bq = load ptr, ptr %i.ay, align 8, !tbaa !100, !noalias !337 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !101, !noalias !337 ; 2 uses
  %i.bt = getelementptr inbounds nuw [48 x i8], ptr %i.bq, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 112
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 116
  %i.bw = load float, ptr %i.bu, align 4, !tbaa !12, !noalias !337
  %.idx279.i = shl i64 %i.bs, 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx279.i ; 3 uses
  %.sroa.0329.0.copyload.i = load float, ptr %i.bx, align 16, !tbaa !12, !noalias !337
  %.sroa.6330.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %.sroa.6330.0.copyload.i = load float, ptr %.sroa.6330.0..sroa_idx.i, align 4, !tbaa !12, !noalias !337 ; 3 uses
  %.sroa.8331.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.8331.0.copyload.i = load float, ptr %.sroa.8331.0..sroa_idx.i, align 8, !tbaa !12, !noalias !337
  %i.by = fmul reassoc nsz arcp contract afn float %i.bw, 8.620690e-03
  %i.bz = fadd reassoc nsz arcp contract afn float %i.by, f0x3E0D3DCB ; 6 uses
  %i.ca = fcmp reassoc nsz arcp contract afn ogt float %i.bz, f0x3E53DCB1
  %i.cb = fmul reassoc nsz arcp contract afn float %i.bz, %i.bz
  %i.cc = fmul reassoc nsz arcp contract afn float %i.cb, %i.bz
  %i.cd = fmul reassoc nsz arcp contract afn float %i.bz, f0x3E038026
  %i.ce = fadd reassoc nsz arcp contract afn float %i.cd, f0xBC911AA6
  %i.cf = select reassoc nsz arcp contract afn i1 %i.ca, float %i.cc, float %i.ce ; 3 uses
  %i.cg = load <2 x float>, ptr %i.bv, align 4, !tbaa !12, !noalias !337
  %i.ch = fmul reassoc nsz arcp contract afn <2 x float> %i.cg, <float 2.000000e-03, float 5.000000e-03> ; 2 uses
  %i.ci = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ck = fadd reassoc nsz arcp contract afn <2 x float> %i.cj, %i.ch
  %i.cl = fsub reassoc nsz arcp contract afn <2 x float> %i.cj, %i.ch
  %i.cm = shufflevector <2 x float> %i.ck, <2 x float> %i.cl, <2 x i32> <i32 0, i32 3> ; 5 uses
  %i.cn = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.cm, splat (float f0x3E53DCB1)
  %i.co = fmul reassoc nsz arcp contract afn <2 x float> %i.cm, %i.cm
  %i.cp = fmul reassoc nsz arcp contract afn <2 x float> %i.co, %i.cm
  %i.cq = fmul reassoc nsz arcp contract afn <2 x float> %i.cm, splat (float f0x3E038026)
  %i.cr = fadd reassoc nsz arcp contract afn <2 x float> %i.cq, splat (float f0xBC911AA6)
  %i.cs = select <2 x i1> %i.cn, <2 x float> %i.cp, <2 x float> %i.cr ; 2 uses
  %6 = extractelement <2 x float> %i.cs, i64 0
  %7 = fmul reassoc nsz arcp contract afn float %6, 9.642000e-01
  %8 = extractelement <2 x float> %i.cs, i64 1
  %9 = fmul reassoc nsz arcp contract afn float %8, f0x3F532CA5
  %i.ct = fcmp reassoc nsz arcp contract afn olt float %.sroa.6330.0.copyload.i, f0x37800000
  %i.cu = select reassoc nsz arcp contract afn i1 %i.ct, float f0x37800000, float %.sroa.6330.0.copyload.i ; 3 uses
  %i.cv = fcmp reassoc nsz arcp contract afn olt float %i.cf, f0x37800000
  %i.cw = select reassoc nsz arcp contract afn i1 %i.cv, float f0x37800000, float %i.cf ; 2 uses
  %i.cx = insertelement <2 x float> poison, float %i.cf, i64 0
  %10 = insertelement <2 x float> %i.cx, float %7, i64 1
  %i.cy = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.da = fdiv reassoc nsz arcp contract afn <2 x float> %10, %i.cz ; 7 uses
  %i.db = fdiv reassoc nsz arcp contract afn float %9, %i.cw ; 7 uses
  %i.dc = fdiv reassoc nsz arcp contract afn float %.sroa.0329.0.copyload.i, %i.cu ; 9 uses
  %i.dd = fdiv reassoc nsz arcp contract afn float %.sroa.6330.0.copyload.i, %i.cu ; 9 uses
  %i.de = fdiv reassoc nsz arcp contract afn float %.sroa.8331.0.copyload.i, %i.cu ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10327.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14328.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10323.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14324.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10319.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14320.i)
  %i.df = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  switch i32 %i.ax, label %convert_any_XYZ_to_LMS.exit.i [
    i32 2, label %bb.j
    i32 0, label %bb.j
    i32 1, label %convert_any_XYZ_to_LMS.exit.thread.i
  ]

bb.j:                                             ; preds = %dt_simd_memcpy.exit.i, %dt_simd_memcpy.exit.i
  %i.dg = fmul reassoc nsz arcp contract afn <2 x float> %i.df, <float f0x3F652546, float 1.713500e+00>
  %i.dh = fmul reassoc nsz arcp contract afn <2 x float> %i.da, <float 2.664000e-01, float f0xBF400D1B>
  %i.di = insertelement <2 x float> poison, float %i.db, i64 0
  %i.dj = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dk = fmul reassoc nsz arcp contract afn <2 x float> %i.dj, <float -1.614000e-01, float 3.670000e-02>
  %i.dl = fadd reassoc nsz arcp contract afn <2 x float> %i.dh, %i.dg
  %i.dm = fadd reassoc nsz arcp contract afn <2 x float> %i.dl, %i.dk
  %i.dn = extractelement <2 x float> %i.da, i64 1 ; 2 uses
  %i.do = fmul reassoc nsz arcp contract afn float %i.dn, 3.890000e-02
  %i.dp = extractelement <2 x float> %i.da, i64 0 ; 2 uses
  %i.dq = fmul reassoc nsz arcp contract afn float %i.dp, -6.850000e-02
  %i.dr = fadd reassoc nsz arcp contract afn float %i.dq, %i.do
  %i.ds = fmul reassoc nsz arcp contract afn float %i.db, 1.029600e+00
  %i.dt = fadd reassoc nsz arcp contract afn float %i.dr, %i.ds
  store float %i.dt, ptr %.sroa.10327.i, align 8, !tbaa !12, !noalias !337
  %i.du = fadd reassoc nsz arcp contract afn float %i.dp, %i.dn
  %i.dv = fadd reassoc nsz arcp contract afn float %i.du, %i.db
  %i.dw = fmul reassoc nsz arcp contract afn float %i.dv, 0.000000e+00
  br label %convert_any_XYZ_to_LMS.exit.i

convert_any_XYZ_to_LMS.exit.thread.i:             ; preds = %dt_simd_memcpy.exit.i
  %i.dx = fmul reassoc nsz arcp contract afn <2 x float> %i.df, <float 4.012880e-01, float f0x3F9A2A3D>
  %i.dy = fmul reassoc nsz arcp contract afn <2 x float> %i.da, <float 6.501730e-01, float -2.502680e-01>
  %i.dz = insertelement <2 x float> poison, float %i.db, i64 0
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eb = fmul reassoc nsz arcp contract afn <2 x float> %i.ea, <float -5.146100e-02, float 4.585400e-02>
  %i.ec = fadd reassoc nsz arcp contract afn <2 x float> %i.dy, %i.dx
  %i.ed = fadd reassoc nsz arcp contract afn <2 x float> %i.ec, %i.eb
  %i.ee = extractelement <2 x float> %i.da, i64 1 ; 2 uses
  %i.ef = fmul reassoc nsz arcp contract afn float %i.ee, -2.079000e-03
  %i.eg = extractelement <2 x float> %i.da, i64 0 ; 2 uses
  %i.eh = fmul reassoc nsz arcp contract afn float %i.eg, 4.895200e-02
  %i.ei = fadd reassoc nsz arcp contract afn float %i.eh, %i.ef
  %i.ej = fmul reassoc nsz arcp contract afn float %i.db, 9.531270e-01
  %i.ek = fadd reassoc nsz arcp contract afn float %i.ei, %i.ej
  store float %i.ek, ptr %.sroa.10327.i, align 8, !tbaa !12, !noalias !337
  %i.el = fadd reassoc nsz arcp contract afn float %i.eg, %i.ee
  %i.em = fadd reassoc nsz arcp contract afn float %i.el, %i.db
  %i.en = fmul reassoc nsz arcp contract afn float %i.em, 0.000000e+00
  store float %i.en, ptr %.sroa.14328.i, align 4, !tbaa !12, !noalias !337
  br label %convert_any_XYZ_to_LMS.exit286.thread.i

convert_any_XYZ_to_LMS.exit.i:                    ; preds = %bb.j, %dt_simd_memcpy.exit.i
  %.sink11.i.sroa.phi.i = phi ptr [ %.sroa.14328.i, %bb.j ], [ %.sroa.10327.i, %dt_simd_memcpy.exit.i ]
  %.sink.i.i = phi float [ %i.dw, %bb.j ], [ %i.db, %dt_simd_memcpy.exit.i ]
  %i.eo = phi <2 x float> [ %i.dm, %bb.j ], [ %i.df, %dt_simd_memcpy.exit.i ] ; 5 uses
  store float %.sink.i.i, ptr %.sink11.i.sroa.phi.i, align 4, !tbaa !12, !noalias !337
  switch i32 %i.ax, label %convert_any_XYZ_to_LMS.exit286.i [
    i32 2, label %bb.k
    i32 0, label %bb.k
    i32 1, label %convert_any_XYZ_to_LMS.exit286.thread.i
  ]

bb.k:                                             ; preds = %convert_any_XYZ_to_LMS.exit.i, %convert_any_XYZ_to_LMS.exit.i
  %i.ep = fmul reassoc nsz arcp contract afn float %i.dc, f0x3F652546
  %i.eq = fmul reassoc nsz arcp contract afn float %i.dd, 2.664000e-01
  %i.er = fadd reassoc nsz arcp contract afn float %i.eq, %i.ep
  %i.es = fmul reassoc nsz arcp contract afn float %i.de, -1.614000e-01
  %i.et = fadd reassoc nsz arcp contract afn float %i.er, %i.es
  %i.eu = fmul reassoc nsz arcp contract afn float %i.dc, f0xBF400D1B
  %i.ev = fmul reassoc nsz arcp contract afn float %i.dd, 1.713500e+00
  %i.ew = fadd reassoc nsz arcp contract afn float %i.ev, %i.eu
  %i.ex = fmul reassoc nsz arcp contract afn float %i.de, 3.670000e-02
  %i.ey = fadd reassoc nsz arcp contract afn float %i.ew, %i.ex
  %i.ez = fmul reassoc nsz arcp contract afn float %i.dc, 3.890000e-02
  %i.fa = fmul reassoc nsz arcp contract afn float %i.dd, -6.850000e-02
  %i.fb = fadd reassoc nsz arcp contract afn float %i.fa, %i.ez
  %i.fc = fmul reassoc nsz arcp contract afn float %i.de, 1.029600e+00
  %i.fd = fadd reassoc nsz arcp contract afn float %i.fb, %i.fc
  store float %i.fd, ptr %.sroa.10323.i, align 8, !tbaa !12, !noalias !337
  %i.fe = fadd reassoc nsz arcp contract afn float %i.dd, %i.dc
  %i.ff = fadd reassoc nsz arcp contract afn float %i.fe, %i.de
  %i.fg = fmul reassoc nsz arcp contract afn float %i.ff, 0.000000e+00
  br label %convert_any_XYZ_to_LMS.exit286.i

convert_any_XYZ_to_LMS.exit286.thread.i:          ; preds = %convert_any_XYZ_to_LMS.exit.i, %convert_any_XYZ_to_LMS.exit.thread.i
  %i.fh = phi <2 x float> [ %i.eo, %convert_any_XYZ_to_LMS.exit.i ], [ %i.ed, %convert_any_XYZ_to_LMS.exit.thread.i ]
  %i.fi = fmul reassoc nsz arcp contract afn float %i.dc, 4.012880e-01
  %i.fj = fmul reassoc nsz arcp contract afn float %i.dd, 6.501730e-01
  %i.fk = fadd reassoc nsz arcp contract afn float %i.fj, %i.fi
  %i.fl = fmul reassoc nsz arcp contract afn float %i.de, -5.146100e-02
  %i.fm = fadd reassoc nsz arcp contract afn float %i.fk, %i.fl
  %i.fn = fmul reassoc nsz arcp contract afn float %i.dc, -2.502680e-01
  %i.fo = fmul reassoc nsz arcp contract afn float %i.dd, f0x3F9A2A3D
  %i.fp = fadd reassoc nsz arcp contract afn float %i.fo, %i.fn
  %i.fq = fmul reassoc nsz arcp contract afn float %i.de, 4.585400e-02
  %i.fr = fadd reassoc nsz arcp contract afn float %i.fp, %i.fq
  %i.fs = fmul reassoc nsz arcp contract afn float %i.dc, -2.079000e-03
  %i.ft = fmul reassoc nsz arcp contract afn float %i.dd, 4.895200e-02
  %i.fu = fadd reassoc nsz arcp contract afn float %i.ft, %i.fs
  %i.fv = fmul reassoc nsz arcp contract afn float %i.de, 9.531270e-01
  %i.fw = fadd reassoc nsz arcp contract afn float %i.fu, %i.fv
  store float %i.fw, ptr %.sroa.10323.i, align 8, !tbaa !12, !noalias !337
  %i.fx = fadd reassoc nsz arcp contract afn float %i.dd, %i.dc
  %i.fy = fadd reassoc nsz arcp contract afn float %i.fx, %i.de
  %i.fz = fmul reassoc nsz arcp contract afn float %i.fy, 0.000000e+00
  store float %i.fz, ptr %.sroa.14324.i, align 4, !tbaa !12, !noalias !337
  br label %bb.l

convert_any_XYZ_to_LMS.exit286.i:                 ; preds = %bb.k, %convert_any_XYZ_to_LMS.exit.i
  %.sroa.6322.0.i = phi nsz float [ %i.ey, %bb.k ], [ %i.dd, %convert_any_XYZ_to_LMS.exit.i ] ; 4 uses
  %.sroa.0321.0.i = phi nsz float [ %i.et, %bb.k ], [ %i.dc, %convert_any_XYZ_to_LMS.exit.i ] ; 4 uses
  %.sink11.i284.sroa.phi.i = phi ptr [ %.sroa.14324.i, %bb.k ], [ %.sroa.10323.i, %convert_any_XYZ_to_LMS.exit.i ]
  %.sink.i285.i = phi float [ %i.fg, %bb.k ], [ %i.de, %convert_any_XYZ_to_LMS.exit.i ]
  store float %.sink.i285.i, ptr %.sink11.i284.sroa.phi.i, align 4, !tbaa !12, !noalias !337
  switch i32 %i.ax, label %convert_any_XYZ_to_LMS.exit289.i [
    i32 2, label %convert_any_XYZ_to_LMS.exit289.sink.split.i
    i32 0, label %convert_any_XYZ_to_LMS.exit289.sink.split.i
    i32 1, label %bb.l
  ]

bb.l:                                             ; preds = %convert_any_XYZ_to_LMS.exit286.i, %convert_any_XYZ_to_LMS.exit286.thread.i
  %.sroa.6322.1.i = phi nsz float [ %.sroa.6322.0.i, %convert_any_XYZ_to_LMS.exit286.i ], [ %i.fr, %convert_any_XYZ_to_LMS.exit286.thread.i ]
  %.sroa.0321.1.i = phi nsz float [ %.sroa.0321.0.i, %convert_any_XYZ_to_LMS.exit286.i ], [ %i.fm, %convert_any_XYZ_to_LMS.exit286.thread.i ]
  %i.ga = phi <2 x float> [ %i.eo, %convert_any_XYZ_to_LMS.exit286.i ], [ %i.fh, %convert_any_XYZ_to_LMS.exit286.thread.i ]
  br label %convert_any_XYZ_to_LMS.exit289.sink.split.i

convert_any_XYZ_to_LMS.exit289.sink.split.i:      ; preds = %bb.l, %convert_any_XYZ_to_LMS.exit286.i, %convert_any_XYZ_to_LMS.exit286.i
  %.sink.i = phi float [ f0x3F555D6B, %bb.l ], [ f0x3F519131, %convert_any_XYZ_to_LMS.exit286.i ], [ f0x3F519131, %convert_any_XYZ_to_LMS.exit286.i ]
  %.sroa.6322.2.ph.i = phi float [ %.sroa.6322.1.i, %bb.l ], [ %.sroa.6322.0.i, %convert_any_XYZ_to_LMS.exit286.i ], [ %.sroa.6322.0.i, %convert_any_XYZ_to_LMS.exit286.i ]
  %.sroa.0321.2.ph.i = phi float [ %.sroa.0321.1.i, %bb.l ], [ %.sroa.0321.0.i, %convert_any_XYZ_to_LMS.exit286.i ], [ %.sroa.0321.0.i, %convert_any_XYZ_to_LMS.exit286.i ]
  %.sroa.6318.0.ph.i = phi float [ f0x3F801ED4, %bb.l ], [ f0x3F829D89, %convert_any_XYZ_to_LMS.exit286.i ], [ f0x3F829D89, %convert_any_XYZ_to_LMS.exit286.i ]
  %.sroa.0317.0.ph.i = phi float [ f0x3F7EA061, %bb.l ], [ f0x3F7F0C42, %convert_any_XYZ_to_LMS.exit286.i ], [ f0x3F7F0C42, %convert_any_XYZ_to_LMS.exit286.i ]
  %i.gb = phi <2 x float> [ %i.ga, %bb.l ], [ %i.eo, %convert_any_XYZ_to_LMS.exit286.i ], [ %i.eo, %convert_any_XYZ_to_LMS.exit286.i ]
  store float %.sink.i, ptr %.sroa.10319.i, align 8, !tbaa !12, !noalias !337
  %i.gc = fmul reassoc nsz arcp contract afn float %.sroa.6318.0.ph.i, %.sroa.6322.2.ph.i
  br label %convert_any_XYZ_to_LMS.exit289.i

convert_any_XYZ_to_LMS.exit289.i:                 ; preds = %convert_any_XYZ_to_LMS.exit289.sink.split.i, %convert_any_XYZ_to_LMS.exit286.i
  %.sroa.6322.2.i = phi float [ %.sroa.6322.0.i, %convert_any_XYZ_to_LMS.exit286.i ], [ %i.gc, %convert_any_XYZ_to_LMS.exit289.sink.split.i ]
  %.sroa.0321.2.i = phi nsz float [ %.sroa.0321.0.i, %convert_any_XYZ_to_LMS.exit286.i ], [ %.sroa.0321.2.ph.i, %convert_any_XYZ_to_LMS.exit289.sink.split.i ]
  %.sroa.0317.0.i = phi nsz float [ 9.642120e-01, %convert_any_XYZ_to_LMS.exit286.i ], [ %.sroa.0317.0.ph.i, %convert_any_XYZ_to_LMS.exit289.sink.split.i ]
  %.sink11.i287.sroa.phi.i = phi ptr [ %.sroa.10319.i, %convert_any_XYZ_to_LMS.exit286.i ], [ %.sroa.14320.i, %convert_any_XYZ_to_LMS.exit289.sink.split.i ]
  %.sink.i288.i = phi float [ f0x3F533F8A, %convert_any_XYZ_to_LMS.exit286.i ], [ 0.000000e+00, %convert_any_XYZ_to_LMS.exit289.sink.split.i ]
  %i.gd = phi <2 x float> [ %i.eo, %convert_any_XYZ_to_LMS.exit286.i ], [ %i.gb, %convert_any_XYZ_to_LMS.exit289.sink.split.i ]
  store float %.sink.i288.i, ptr %.sink11.i287.sroa.phi.i, align 4, !tbaa !12, !noalias !337
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.25.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.33.i)
  store float 0.000000e+00, ptr %.sroa.33.i, align 4, !noalias !337
  %i.ge = fmul reassoc nsz arcp contract afn float %.sroa.0317.0.i, %.sroa.0321.2.i
  %i.gf = insertelement <2 x float> poison, float %i.ge, i64 0
  %i.gg = insertelement <2 x float> %i.gf, float %.sroa.6322.2.i, i64 1
  %i.gh = fdiv reassoc nsz arcp contract afn <2 x float> %i.gg, %i.gd ; 10 uses
  %.sroa.10319.i.0..sroa.10319.i.0..sroa.10319.i.0..sroa.10319.0..sroa.10319.8..i = load float, ptr %.sroa.10319.i, align 8, !tbaa !12, !noalias !337
  %.sroa.10323.i.0..sroa.10323.i.0..sroa.10323.i.0..sroa.10323.0..sroa.10323.8..i = load float, ptr %.sroa.10323.i, align 8, !tbaa !12, !noalias !337
  %i.gi = fmul reassoc nsz arcp contract afn float %.sroa.10323.i.0..sroa.10323.i.0..sroa.10323.i.0..sroa.10323.0..sroa.10323.8..i, %.sroa.10319.i.0..sroa.10319.i.0..sroa.10319.i.0..sroa.10319.0..sroa.10319.8..i
  %.sroa.10327.i.0..sroa.10327.i.0..sroa.10327.i.0..sroa.10327.0..sroa.10327.8..i = load float, ptr %.sroa.10327.i, align 8, !tbaa !12, !noalias !337
  %i.gj = fdiv reassoc nsz arcp contract afn float %i.gi, %.sroa.10327.i.0..sroa.10327.i.0..sroa.10327.i.0..sroa.10327.0..sroa.10327.8..i ; 8 uses
  store float %i.gj, ptr %.sroa.25.i, align 8, !tbaa !12, !noalias !337
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.042.i)
  switch i32 %i.ax, label %bb.o [
    i32 2, label %bb.m
    i32 0, label %bb.m
    i32 1, label %bb.n
  ]

bb.m:                                             ; preds = %convert_any_XYZ_to_LMS.exit289.i, %convert_any_XYZ_to_LMS.exit289.i
  %i.gk = fmul reassoc nsz arcp contract afn <2 x float> %i.gh, <float f0x3F7CAC08, float 5.184000e-01>
  %i.gl = shufflevector <2 x float> %i.gk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gm = fmul reassoc nsz arcp contract afn <2 x float> %i.gh, <float 4.323000e-01, float -1.471000e-01>
  %i.gn = insertelement <2 x float> poison, float %i.gj, i64 0
  %i.go = shufflevector <2 x float> %i.gn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gp = fmul reassoc nsz arcp contract afn <2 x float> %i.go, <float 4.930000e-02, float 1.600000e-01>
  %i.gq = fadd reassoc nsz arcp contract afn <2 x float> %i.gm, %i.gl
  %i.gr = fadd reassoc nsz arcp contract afn <2 x float> %i.gq, %i.gp
  %i.gs = shufflevector <2 x float> %i.gr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.gs, ptr %.sroa.042.i, align 16, !tbaa !12, !noalias !337
  %i.gt = extractelement <2 x float> %i.gh, i64 0 ; 2 uses
  %i.gu = fmul reassoc nsz arcp contract afn float %i.gt, -8.500000e-03
  %i.gv = extractelement <2 x float> %i.gh, i64 1 ; 2 uses
  %i.gw = fmul reassoc nsz arcp contract afn float %i.gv, 4.000000e-02
  %i.gx = fadd reassoc nsz arcp contract afn float %i.gu, %i.gw
  %i.gy = fmul reassoc nsz arcp contract afn float %i.gj, 9.685000e-01
  %i.gz = fadd reassoc nsz arcp contract afn float %i.gx, %i.gy
  %.sroa.042.i.8.i.8.i.8.gep.sroa_idx1636 = getelementptr inbounds nuw i8, ptr %.sroa.042.i, i64 8
  store float %i.gz, ptr %.sroa.042.i.8.i.8.i.8.gep.sroa_idx1636, align 8, !tbaa !12, !noalias !337
  %i.ha = fadd reassoc nsz arcp contract afn float %i.gt, %i.gv
  %i.hb = fadd reassoc nsz arcp contract afn float %i.ha, %i.gj
  %i.hc = fmul reassoc nsz arcp contract afn float %i.hb, 0.000000e+00
  br label %convert_any_LMS_to_XYZ.exit.i

bb.n:                                             ; preds = %convert_any_XYZ_to_LMS.exit289.i
  %i.hd = extractelement <2 x float> %i.gh, i64 0 ; 2 uses
end_hunk_0
