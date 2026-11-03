Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/capsule?download=true
inline.NumInlined: 93
inline.NumDeleted: 24
begin_hunk_0_@b3RayCastCapsule:bb.a
  %i.co = fmul <2 x float> %i.al, %.sroa.0150.0.copyload ; 2 uses
  %shift619 = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop620 = fadd <2 x float> %i.co, %shift619
  %i.cp = extractelement <2 x float> %foldExtExtBinop620, i64 0
  %i.cq = fmul float %i.am, %.sroa.5152.0.copyload
  %i.cr = fadd float %i.cq, %i.cp
  %i.cs = fmul float %i.cr, %i.cn
  %i.ct = fadd float %i.av, %i.cs                 ; 2 uses
  %i.cu = fneg float %i.h                         ; 2 uses
  %i.cv = fcmp olt float %i.av, %i.cu
  %i.cw = fcmp olt float %i.ct, %i.cu
  %or.cond = select i1 %i.cv, i1 %i.cw, i1 false
  br i1 %or.cond, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cx = fadd float %sqrt, %i.h                  ; 2 uses
  %i.cy = fcmp olt float %i.cx, %i.av
  %i.cz = fcmp olt float %i.cx, %i.ct
  %or.cond348 = select i1 %i.cy, i1 %i.cz, i1 false
  br i1 %or.cond348, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %bb.ab

bb.o:                                             ; preds = %bb.m
  %i.da = fmul <2 x float> %i.al, %i.ck           ; 2 uses
  %shift622 = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop623 = fadd <2 x float> %i.da, %shift622
  %i.db = extractelement <2 x float> %foldExtExtBinop623, i64 0
  %i.dc = fmul float %i.am, %i.cl
  %i.dd = fadd float %i.dc, %i.db                 ; 7 uses
  %i.de = fmul float %i.dd, %i.dd
  %i.df = fsub float 1.000000e+00, %i.de          ; 2 uses
  %i.dg = fcmp olt float %i.df, f0x34000000
  br i1 %i.dg, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.dh = fmul float %i.am, %i.dd
  %i.di = fsub float %i.cl, %i.dh                 ; 3 uses
  %i.dj = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dl = fmul <2 x float> %i.al, %i.dk
  %i.dm = fsub <2 x float> %i.ck, %i.dl           ; 4 uses
  %i.dn = fmul <2 x float> %i.dm, %i.dm           ; 2 uses
  %shift625 = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop626 = fadd <2 x float> %i.dn, %shift625
  %i.do = extractelement <2 x float> %foldExtExtBinop626, i64 0
  %i.dp = fmul float %i.di, %i.di
  %i.dq = fadd float %i.dp, %i.do
  %i.dr = extractelement <2 x float> %i.dm, i64 0
  %i.ds = fmul float %i.az, %i.dr
  %i.dt = extractelement <2 x float> %i.dm, i64 1
  %i.du = fmul float %i.ba, %i.dt
  %i.dv = fadd float %i.ds, %i.du
  %i.dw = fmul float %i.bb, %i.di
  %i.dx = fadd float %i.dw, %i.dv                 ; 4 uses
  %i.dy = fsub float %i.bg, %i.bh                 ; 2 uses
  %i.dz = fmul float %i.dx, %i.dx
  %i.ea = fmul float %i.dy, %i.dq
  %i.eb = fsub float %i.dz, %i.ea                 ; 2 uses
  %i.ec = fcmp ult float %i.dx, 0.000000e+00
  %i.ed = fcmp uge float %i.eb, 0.000000e+00
  %or.cond.not = and i1 %i.ec, %i.ed
  br i1 %or.cond.not, label %.thread, label %bb.q

.thread:                                          ; preds = %bb.p
  %i.ee = tail call float @sqrtf(float noundef %i.eb) #9
  %i.ef = fsub float %i.ee, %i.dx
  %i.eg = fdiv float %i.dy, %i.ef
  br label %bb.t

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %bb.ab

bb.r:                                             ; preds = %bb.o
  %i.eh = fdiv float 1.000000e+00, %i.df          ; 3 uses
  %i.ei = fmul <2 x float> %i.ag, %i.ck           ; 2 uses
  %shift628 = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop629 = fadd <2 x float> %i.ei, %shift628
  %i.ej = extractelement <2 x float> %foldExtExtBinop629, i64 0
  %i.ek = fmul float %i.ah, %i.cl
  %i.el = fadd float %i.ek, %i.ej                 ; 2 uses
  %i.em = fmul float %i.dd, %i.el
  %i.en = fmul float %i.av, %i.dd
  %i.eo = fsub float %i.av, %i.em
  %i.ep = fmul float %i.eo, %i.eh                 ; 2 uses
  %i.eq = fsub float %i.en, %i.el
  %i.er = fmul float %i.eq, %i.eh                 ; 3 uses
  %i.es = insertelement <2 x float> poison, float %i.ep, i64 0
  %i.et = shufflevector <2 x float> %i.es, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eu = fmul <2 x float> %i.al, %i.et
  %i.ev = fmul float %i.am, %i.ep
  %i.ew = insertelement <2 x float> poison, float %i.er, i64 0
  %i.ex = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ey = fmul <2 x float> %i.ck, %i.ex
  %i.ez = fadd <2 x float> %i.ag, %i.ey
  %i.fa = fmul float %i.cl, %i.er
  %i.fb = fadd float %i.ah, %i.fa
  %i.fc = fsub <2 x float> %i.ez, %i.eu           ; 2 uses
  %i.fd = fsub float %i.fb, %i.ev                 ; 2 uses
  %i.fe = fmul <2 x float> %i.fc, %i.fc           ; 2 uses
  %shift631 = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop632 = fadd <2 x float> %i.fe, %shift631
  %i.ff = extractelement <2 x float> %foldExtExtBinop632, i64 0
  %i.fg = fmul float %i.fd, %i.fd
  %i.fh = fadd float %i.fg, %i.ff                 ; 2 uses
  %i.fi = fcmp ule float %i.fh, %i.bh
  br i1 %i.fi, label %.thread594, label %bb.s

.thread594:                                       ; preds = %bb.r
  %i.fj = fsub float %i.bh, %i.fh
  %i.fk = fmul float %i.eh, %i.fj
  %i.fl = tail call float @sqrtf(float noundef %i.fk) #9
  %i.fm = fsub float %i.er, %i.fl
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %bb.ab

bb.t:                                             ; preds = %.thread594, %.thread
  %.2 = phi float [ %i.eg, %.thread ], [ %i.fm, %.thread594 ] ; 6 uses
  %i.fn = fcmp olt float %.2, 0.000000e+00
  %i.fo = fmul float %sqrt.i, %i.cn
  %i.fp = fcmp olt float %i.fo, %.2
  %or.cond597 = select i1 %i.fn, i1 true, i1 %i.fp
  br i1 %or.cond597, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %bb.ab

bb.v:                                             ; preds = %bb.t
  %i.fq = fmul float %i.dd, %.2
  %i.fr = fadd float %i.av, %i.fq                 ; 4 uses
  %i.fs = fcmp olt float %i.fr, 0.000000e+00
  br i1 %i.fs, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  store <2 x float> %.sroa.0308.0.copyload, ptr %5, align 8, !tbaa !12
  %.sroa.8.0..sroa_idx313 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %.sroa.8.0.copyload, ptr %.sroa.8.0..sroa_idx313, align 8, !tbaa !12
  %i.ft = getelementptr inbounds nuw i8, ptr %5, i64 12
  store float %i.h, ptr %i.ft, align 4, !tbaa !38
  call void @b3RayCastSphere(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4 %0, ptr noundef nonnull %5, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.ab

bb.x:                                             ; preds = %bb.v
  %i.fu = fcmp olt float %sqrt, %i.fr
  br i1 %i.fu, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  store <2 x float> %.sroa.0303.0.copyload, ptr %6, align 8, !tbaa !12
  %.sroa.5305.0..sroa_idx306 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x float> %i.g, ptr %.sroa.5305.0..sroa_idx306, align 8, !tbaa !12
  call void @b3RayCastSphere(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4 %0, ptr noundef nonnull %6, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  %i.fv = insertelement <2 x float> poison, float %.2, i64 0
  %i.fw = shufflevector <2 x float> %i.fv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fx = fmul <2 x float> %i.ck, %i.fw
  %i.fy = fadd <2 x float> %i.ag, %i.fx           ; 2 uses
  %i.fz = fmul float %i.cl, %.2
  %i.ga = fadd float %i.ah, %i.fz                 ; 2 uses
  %i.gb = insertelement <2 x float> poison, float %i.fr, i64 0
  %i.gc = shufflevector <2 x float> %i.gb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gd = fmul <2 x float> %i.al, %i.gc
  %i.ge = fsub <2 x float> %i.fy, %i.gd           ; 3 uses
  %i.gf = fmul float %i.am, %i.fr
  %i.gg = fsub float %i.ga, %i.gf                 ; 3 uses
  %i.gh = fmul <2 x float> %i.ge, %i.ge           ; 2 uses
  %shift634 = shufflevector <2 x float> %i.gh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop635 = fadd <2 x float> %i.gh, %shift634
  %i.gi = extractelement <2 x float> %foldExtExtBinop635, i64 0
  %i.gj = fmul float %i.gg, %i.gg
  %i.gk = fadd float %i.gj, %i.gi                 ; 2 uses
  %i.gl = fcmp ogt float %i.gk, f0x057A0000
  br i1 %i.gl, label %bb.aa, label %b3Normalize.exit

bb.aa:                                            ; preds = %bb.z
  %sqrt598 = tail call float @llvm.sqrt.f32(float %i.gk)
  %i.gm = fdiv float 1.000000e+00, %sqrt598       ; 2 uses
  %i.gn = insertelement <2 x float> poison, float %i.gm, i64 0
  %i.go = shufflevector <2 x float> %i.gn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gp = fmul <2 x float> %i.ge, %i.go
  %i.gq = fmul float %i.gg, %i.gm
  br label %b3Normalize.exit

b3Normalize.exit:                                 ; preds = %bb.z, %bb.aa
  %.sroa.07.0.i = phi <2 x float> [ %i.gp, %bb.aa ], [ zeroinitializer, %bb.z ]
  %.sroa.5.0.i = phi float [ %i.gq, %bb.aa ], [ 0.000000e+00, %bb.z ]
  %i.gr = fadd <2 x float> %.sroa.0308.0.copyload, %i.fy
  %i.gs = fadd float %.sroa.8.0.copyload, %i.ga
  %i.gt = fdiv float %.2, %sqrt.i                 ; 3 uses
  %7 = fcmp olt float %i.gt, 0.000000e+00
  %i.gu = fcmp olt float %i.cn, %i.gt
  %8 = select i1 %i.gu, float %i.cn, float %i.gt
  %i.gv = select i1 %7, float 0.000000e+00, float %8
  store <2 x float> %.sroa.07.0.i, ptr %0, align 4, !tbaa !12
  %.sroa.11.0..sroa_idx515 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.5.0.i, ptr %.sroa.11.0..sroa_idx515, align 4, !tbaa !12
  %.sroa.12.0..sroa_idx527 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x float> %i.gr, ptr %.sroa.12.0..sroa_idx527, align 4, !tbaa !12
  %.sroa.14.0..sroa_idx539 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.gs, ptr %.sroa.14.0..sroa_idx539, align 4, !tbaa !12
  %.sroa.15.0..sroa_idx551 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.gv, ptr %.sroa.15.0..sroa_idx551, align 4, !tbaa !12
  %.sroa.16.0..sroa_idx558 = getelementptr inbounds nuw i8, ptr %0, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.16.0..sroa_idx558, i8 0, i64 16, i1 false)
  %.sroa.16559.0..sroa_idx570 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 1, ptr %.sroa.16559.0..sroa_idx570, align 4, !tbaa !39
  %.sroa.18.0..sroa_idx577 = getelementptr inbounds nuw i8, ptr %0, i64 45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.18.0..sroa_idx577, i8 0, i64 3, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %b3GetLengthAndNormalize.exit.thread, %bb.u, %b3Normalize.exit, %bb.y, %bb.w, %bb.n, %bb.q, %bb.s, %bb.j, %bb.i, %bb.d
  ret void
}

declare void @b3RayCastSphere(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @b3ShapeCastCapsule(ptr dead_on_unwind noalias writable sret(%struct.b3CastOutput) align 4 %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 !func_sanitize !42 {
bb.a:
  %3 = alloca %struct.b3ShapeCastPairInput, align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.a = icmp ne ptr %1, null, !nosanitize !9
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @11, i64 %i.b) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load float, ptr %i.f, align 4, !tbaa !15
  store ptr %1, ptr %3, align 8, !tbaa !18
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 2, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !19
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float %i.g, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !12
  %i.h = icmp ne ptr %2, null, !nosanitize !9
  %i.i = ptrtoint ptr %2 to i64, !nosanitize !9   ; 2 uses
  %i.j = and i64 %i.i, 7, !nosanitize !9
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !9
  %i.l = and i1 %i.h, %i.k, !nosanitize !9
  br i1 %i.l, label %bb.e, label %bb.d, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @13, i64 %i.i) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !20
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.n, ptr noundef nonnull align 8 dereferenceable(28) @b3Transform_identity, i64 28, i1 false), !tbaa.struct !43
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.p, ptr noundef nonnull align 8 dereferenceable(12) %i.o, i64 12, i1 false), !tbaa.struct !44
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.s = load float, ptr %i.q, align 4, !tbaa !46
  store float %i.s, ptr %i.r, align 8, !tbaa !48
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.u = load i8, ptr %i.t, align 8, !tbaa !49    ; 3 uses
  %i.v = icmp ult i8 %i.u, 2
  br i1 %i.v, label %bb.g, label %bb.f, !prof !10, !nosanitize !9

bb.f:                                             ; preds = %bb.e
  %i.w = zext i8 %i.u to i64, !nosanitize !9
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @14, i64 %i.w) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 76
  store i8 %i.u, ptr %i.x, align 4, !tbaa !50
  call void @b3ShapeCast(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4 %0, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret void
}

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_load_invalid_value_abort(ptr, i64) local_unnamed_addr #2

declare void @b3ShapeCast(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @b3CollideMoverAndCapsule(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !func_sanitize !51 {
bb.a:
  %.sroa.014.i = alloca <2 x float>, align 8      ; 5 uses
  %.sroa.0.i = alloca <2 x float>, align 8        ; 5 uses
  %3 = alloca %struct.b3SegmentDistanceResult, align 8 ; 8 uses
  %i.a = icmp ne ptr %2, null, !nosanitize !9
  %i.b = ptrtoint ptr %2 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @15, i64 %i.b) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = icmp ne ptr %1, null, !nosanitize !9
  %i.g = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.h = and i64 %i.g, 3, !nosanitize !9
  %i.i = icmp eq i64 %i.h, 0, !nosanitize !9
  %i.j = and i1 %i.f, %i.i, !nosanitize !9
  br i1 %i.j, label %bb.e, label %bb.d, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @16, i64 %i.g) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load float, ptr %i.k, align 4, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load float, ptr %i.m, align 4, !tbaa !15
  %i.o = fadd float %i.l, %i.n                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %.sroa.049.0.copyload = load <2 x float>, ptr %1, align 4
  %.sroa.250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.250.0.copyload = load float, ptr %.sroa.250.0..sroa_idx, align 4
  %.sroa.047.0.copyload = load <2 x float>, ptr %i.p, align 4
  %.sroa.248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.248.0.copyload = load float, ptr %.sroa.248.0..sroa_idx, align 4
  %.sroa.045.0.copyload = load <2 x float>, ptr %2, align 4
  %.sroa.246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.246.0.copyload = load float, ptr %.sroa.246.0..sroa_idx, align 4
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.q, align 4
  %.sroa.244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %.sroa.244.0.copyload = load float, ptr %.sroa.244.0..sroa_idx, align 4
  call void @b3SegmentDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3SegmentDistanceResult) align 4 %3, <2 x float> %.sroa.049.0.copyload, float %.sroa.250.0.copyload, <2 x float> %.sroa.047.0.copyload, float %.sroa.248.0.copyload, <2 x float> %.sroa.045.0.copyload, float %.sroa.246.0.copyload, <2 x float> %.sroa.0.0.copyload, float %.sroa.244.0.copyload) #9
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.037.0.copyload = load <2 x float>, ptr %i.r, align 8
  %.sroa.238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.238.0.copyload = load float, ptr %.sroa.238.0..sroa_idx, align 8
  %.sroa.035.0.copyload = load <2 x float>, ptr %3, align 8
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.236.0.copyload = load float, ptr %.sroa.236.0..sroa_idx, align 8
  %i.s = fsub <2 x float> %.sroa.037.0.copyload, %.sroa.035.0.copyload ; 3 uses
  %i.t = fsub float %.sroa.238.0.copyload, %.sroa.236.0.copyload ; 3 uses
  %i.u = fmul <2 x float> %i.s, %i.s              ; 2 uses
  %shift = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.u, %shift
  %i.v = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.w = fmul float %i.t, %i.t
  %i.x = fadd float %i.w, %i.v                    ; 2 uses
  %i.y = fcmp ogt float %i.x, f0x057A0000
  br i1 %i.y, label %bb.f, label %b3GetLengthAndNormalize.exit

bb.f:                                             ; preds = %bb.e
  %sqrt.i = call float @llvm.sqrt.f32(float %i.x) ; 2 uses
  %i.z = fdiv float 1.000000e+00, %sqrt.i         ; 2 uses
  %i.aa = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fmul <2 x float> %i.s, %i.ab
  %i.ad = fmul float %i.t, %i.z
  br label %b3GetLengthAndNormalize.exit

b3GetLengthAndNormalize.exit:                     ; preds = %bb.e, %bb.f
  %.096 = phi float [ %sqrt.i, %bb.f ], [ 0.000000e+00, %bb.e ] ; 3 uses
  %.sroa.010.0.i = phi <2 x float> [ %i.ac, %bb.f ], [ zeroinitializer, %bb.e ]
  %.sroa.5.0.i = phi float [ %i.ad, %bb.f ], [ 0.000000e+00, %bb.e ]
  %i.ae = fcmp ogt float %.096, %i.o
  br i1 %i.ae, label %bb.r, label %bb.g

bb.g:                                             ; preds = %b3GetLengthAndNormalize.exit
  %i.af = call float @b3GetLengthUnitsPerMeter() #9
  %i.ag = fmul float %i.af, 5.000000e-03          ; 2 uses
  %i.ah = fcmp olt float %.096, %i.ag
  br i1 %i.ah, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %.sroa.018.0.copyload = load <2 x float>, ptr %i.q, align 4
  %.sroa.219.0.copyload = load float, ptr %.sroa.244.0..sroa_idx, align 4
  %.sroa.016.0.copyload = load <2 x float>, ptr %2, align 4
  %.sroa.217.0.copyload = load float, ptr %.sroa.246.0..sroa_idx, align 4
  %i.ai = fsub <2 x float> %.sroa.018.0.copyload, %.sroa.016.0.copyload ; 3 uses
  %i.aj = fsub float %.sroa.219.0.copyload, %.sroa.217.0.copyload ; 3 uses
  %i.ak = fmul <2 x float> %i.ai, %i.ai           ; 2 uses
  %shift106 = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop107 = fadd <2 x float> %i.ak, %shift106
  %i.al = extractelement <2 x float> %foldExtExtBinop107, i64 0
  %i.am = fmul float %i.aj, %i.aj
  %i.an = fadd float %i.am, %i.al                 ; 2 uses
end_hunk_0
