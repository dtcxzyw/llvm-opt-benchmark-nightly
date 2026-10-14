Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_channelmixerrgb?download=true
inline.NumInlined: 403
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 99
begin_hunk_0_@process:bb.a
bb.bu:                                            ; preds = %bb.bp, %bb.bq, %_validate_color_checker.exit, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #31
  br label %bb.bv

bb.bv:                                            ; preds = %bb.a, %bb.bu
  ret void
}

declare ptr @dt_ioppr_get_pipe_current_profile_info(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @dt_ioppr_get_pipe_input_profile_info(ptr noundef) local_unnamed_addr #5

declare i32 @dt_iop_have_required_input_format(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @_declare_cat_on_pipe(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !57  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2392 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !119  ; 4 uses
  %.not27 = icmp eq i32 %1, 0
  br i1 %.not27, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.j = load i32, ptr %i.i, align 16, !tbaa !120
  %.not28 = icmp eq i32 %i.j, 0
  br i1 %.not28, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 544
  %i.l = load i32, ptr %i.k, align 32, !tbaa !121
  %.not29 = icmp eq i32 %i.l, 0
  br i1 %.not29, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  %i.n = load i32, ptr %i.m, align 4, !tbaa !23
  %i.o = icmp eq i32 %i.n, 4
  br i1 %i.o, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.q = load i32, ptr %i.p, align 4, !tbaa !122
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %i.s = icmp eq ptr %i.h, null
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %0, ptr %i.g, align 8, !tbaa !119
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.t = icmp eq ptr %i.h, %0
  br i1 %i.t, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 2088
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !368
  %i.w = tail call i32 @dt_iop_is_first_instance(ptr noundef %i.v, ptr noundef nonnull %0) #31
  %.not30 = icmp eq i32 %i.w, 0
  br i1 %.not30, label %._crit_edge, label %bb.k

._crit_edge:                                      ; preds = %bb.j
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !119
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr %0, ptr %i.g, align 8, !tbaa !119
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.h, %bb.k, %bb.i
  %i.x = phi ptr [ %.pre, %._crit_edge ], [ %0, %bb.h ], [ %0, %bb.k ], [ %0, %bb.i ]
  %.not31 = icmp eq ptr %i.h, %i.x
  br i1 %.not31, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !160
  %i.z = and i32 %i.y, 33554432
  %.not32 = icmp eq i32 %i.z, 0
  br i1 %.not32, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ab = tail call ptr @dt_iop_get_instance_id(ptr noundef nonnull %0) #31
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !119
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.305, ptr noundef nonnull %i.aa, ptr noundef %i.ab, ptr noundef %i.h, ptr noundef %i.ac) #31
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.l, %bb.n, %bb.m, %bb.a
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @find_temperature_from_raw_coeffs(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #9 {
bb.a:
  %i.a = alloca [4 x [3 x float]], align 16       ; 7 uses
  %i.b = alloca [4 x [3 x float]], align 16       ; 10 uses
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @dt_image_is_matrix_correction_supported(ptr noundef nonnull %0) #31
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1428
  %i.f = load i32, ptr %i.e, align 4, !tbaa !369
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1776 ; 2 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !12
  %i.i = tail call i1 @llvm.is.fpclass.f32(float %i.h, /* (norm) */ i32 264)
  br i1 %i.i, label %bb.e, label %.critedge

bb.d:                                             ; preds = %bb.g, %bb.f
  %.lcssa = phi i1 [ %i.o, %bb.f ], [ %i.u, %bb.g ]
  br i1 %.lcssa, label %bb.h, label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1780
  %i.k = load float, ptr %i.j, align 4, !tbaa !12
  %i.l = tail call i1 @llvm.is.fpclass.f32(float %i.k, /* (norm) */ i32 264)
  br i1 %i.l, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1784
  %i.n = load float, ptr %i.m, align 4, !tbaa !12
  %i.o = tail call i1 @llvm.is.fpclass.f32(float %i.n, /* (norm) */ i32 264) ; 2 uses
  %i.p = and i32 %i.f, 16384
  %i.q = icmp ne i32 %i.p, 0
  %i.r = select i1 %i.o, i1 %i.q, i1 false
  br i1 %i.r, label %bb.g, label %bb.d

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1788
  %i.t = load float, ptr %i.s, align 4, !tbaa !12
  %i.u = tail call i1 @llvm.is.fpclass.f32(float %i.t, /* (norm) */ i32 264)
  br label %bb.d

bb.h:                                             ; preds = %bb.d
  %i.v = load <3 x float>, ptr %i.g, align 16, !tbaa !12 ; 2 uses
  %.not52 = icmp eq ptr %1, null
  br i1 %.not52, label %.loopexit60, label %.preheader59.preheader

.preheader59.preheader:                           ; preds = %bb.h
  %i.w = load <3 x float>, ptr %1, align 4, !tbaa !12
  %i.x = fmul reassoc nsz arcp contract afn <3 x float> %i.v, %i.w
  br label %.loopexit60

.loopexit60:                                      ; preds = %.preheader59.preheader, %bb.h
  %i.y = phi <3 x float> [ %i.v, %bb.h ], [ %i.x, %.preheader59.preheader ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.aa = load float, ptr %i.z, align 16, !tbaa !12 ; 2 uses
  %i.ab = tail call float @llvm.fabs.f32(float %i.aa)
  %i.ac = fcmp ueq float %i.ab, +inf
  br i1 %i.ac, label %.loopexit, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.loopexit60
  store float %i.aa, ptr %i.a, align 16, !tbaa !12
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1620
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.af = load <8 x float>, ptr %i.ad, align 4, !tbaa !12
  store <8 x float> %i.af, ptr %i.ae, align 4, !tbaa !12
  br label %bb.i

.loopexit:                                        ; preds = %.loopexit60
  %i.ag = getelementptr i8, ptr %0, i64 1792
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, ptr noundef nonnull align 16 dereferenceable(48) %i.ag, i64 48, i1 false), !tbaa !12
  %.pre = load float, ptr %i.a, align 16, !tbaa !12
  %.pre75 = tail call float @llvm.fabs.f32(float %.pre)
  %i.ah = fcmp ueq float %.pre75, +inf
  br i1 %i.ah, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.loopexit.thread, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  call fastcc void @matrice_pseudoinverse(ptr noundef %i.a, ptr noundef %i.b)
  %i.ai = load float, ptr %i.b, align 16, !tbaa !12 ; 2 uses
  %i.aj = tail call float @llvm.fabs.f32(float %i.ai)
  %i.ak = fcmp ueq float %i.aj, +inf
  br i1 %i.ak, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %4 = load <2 x float>, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %5 = load <2 x float>, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !12
  %i.ar = extractelement <3 x float> %i.y, i64 1
  %i.as = fdiv reassoc nsz arcp contract afn float %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.au = load float, ptr %i.at, align 16, !tbaa !12
  %i.av = insertelement <2 x float> %5, float %i.au, i64 1
  %i.aw = shufflevector <3 x float> %i.y, <3 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.ax = fdiv reassoc nsz arcp contract afn <2 x float> %i.av, %i.aw ; 2 uses
  %i.ay = extractelement <2 x float> %i.ax, i64 0
  %i.az = fadd reassoc nsz arcp contract afn float %i.as, %i.ay
  %i.ba = insertelement <2 x float> %4, float %i.ai, i64 1
  %i.bb = shufflevector <3 x float> %i.y, <3 x float> poison, <2 x i32> zeroinitializer
  %i.bc = fdiv reassoc nsz arcp contract afn <2 x float> %i.ba, %i.bb
  %i.bd = load <2 x float>, ptr %i.al, align 4, !tbaa !12
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bf = shufflevector <3 x float> %i.y, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bg = fdiv reassoc nsz arcp contract afn <2 x float> %i.be, %i.bf
  %i.bh = fadd reassoc nsz arcp contract afn <2 x float> %i.bg, %i.bc
  %i.bi = load <2 x float>, ptr %i.am, align 8, !tbaa !12
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bk = shufflevector <3 x float> %i.y, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bl = fdiv reassoc nsz arcp contract afn <2 x float> %i.bj, %i.bk
  %i.bm = fadd reassoc nsz arcp contract afn <2 x float> %i.bh, %i.bl ; 4 uses
  %i.bn = extractelement <2 x float> %i.ax, i64 1
  %i.bo = fadd reassoc nsz arcp contract afn float %i.az, %i.bn ; 2 uses
  %i.bp = fmul reassoc nsz arcp contract afn <2 x float> %i.bm, <float 2.664000e-01, float f0x3F400D1B>
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.br = fmul reassoc nsz arcp contract afn <2 x float> %i.bm, <float 1.713500e+00, float f0x3F652546> ; 2 uses
  %i.bs = fadd reassoc nsz arcp contract afn <2 x float> %i.br, %i.bq
  %i.bt = fsub reassoc nsz arcp contract afn <2 x float> %i.br, %i.bq
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> %i.bs, <2 x i32> <i32 0, i32 3>
  %i.bv = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = fmul reassoc nsz arcp contract afn <2 x float> %i.bw, <float 3.670000e-02, float -1.614000e-01>
  %i.by = fadd reassoc nsz arcp contract afn <2 x float> %i.bu, %i.bx ; 4 uses
  %i.bz = extractelement <2 x float> %i.bm, i64 1
  %i.ca = fmul reassoc nsz arcp contract afn float %i.bz, 3.890000e-02
  %i.cb = extractelement <2 x float> %i.bm, i64 0
  %i.cc = fmul reassoc nsz arcp contract afn float %i.cb, 6.850000e-02
  %i.cd = fsub reassoc nsz arcp contract afn float %i.ca, %i.cc
  %i.ce = fmul reassoc nsz arcp contract afn float %i.bo, 1.029600e+00
  %i.cf = fadd reassoc nsz arcp contract afn float %i.ce, %i.cd ; 2 uses
  %i.cg = fmul reassoc nsz arcp contract afn <2 x float> %i.by, <float f0xBE13BCC0, float f0x3EEA3BC9>
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ci = fmul reassoc nsz arcp contract afn <2 x float> %i.by, <float f0x3F022957, float f0x3F85B261>
  %i.cj = fadd reassoc nsz arcp contract afn <2 x float> %i.ci, %i.ch
  %i.ck = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cm = fmul reassoc nsz arcp contract afn <2 x float> %i.cl, <float f0x3D17B837, float f0x3DF632B8>
  %i.cn = fadd reassoc nsz arcp contract afn <2 x float> %i.cj, %i.cm ; 3 uses
  %i.co = extractelement <2 x float> %i.by, i64 1
  %i.cp = fmul reassoc nsz arcp contract afn float %i.co, f0xBC1360C7
  %i.cq = extractelement <2 x float> %i.by, i64 0
  %i.cr = fmul reassoc nsz arcp contract afn float %i.cq, f0x3D20B175
  %i.cs = fadd reassoc nsz arcp contract afn float %i.cr, %i.cp
  %i.ct = fmul reassoc nsz arcp contract afn float %i.cf, f0x3F3A4894
  %i.cu = fadd reassoc nsz arcp contract afn float %i.cs, %i.ct
  %i.cv = extractelement <2 x float> %i.cn, i64 0
  %i.cw = fdiv reassoc nsz arcp contract afn float %i.cu, %i.cv
  %i.cx = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = fdiv reassoc nsz arcp contract afn <2 x float> %i.cn, %i.cx ; 2 uses
  %i.cz = extractelement <2 x float> %i.cy, i64 0 ; 2 uses
  %i.da = extractelement <2 x float> %i.cy, i64 1 ; 2 uses
  %i.db = fadd reassoc nsz arcp contract afn float %i.da, %i.cz
  %i.dc = fadd reassoc nsz arcp contract afn float %i.db, %i.cw ; 2 uses
  %i.dd = fdiv reassoc nsz arcp contract afn float %i.da, %i.dc
  %i.de = fdiv reassoc nsz arcp contract afn float %i.cz, %i.dc
  store float %i.dd, ptr %2, align 4, !tbaa !12
  store float %i.de, ptr %3, align 4, !tbaa !12
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.047 = phi i32 [ 1, %bb.j ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br label %bb.l

bb.l:                                             ; preds = %.loopexit, %bb.k
  %.148 = phi i32 [ %.047, %bb.k ], [ 0, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.e, %bb.l, %bb.d, %bb.b, %bb.a
  %.3 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %.148, %bb.l ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.c ]
  ret i32 %.3
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @convert_any_XYZ_to_LMS(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, i32 noundef %2) unnamed_addr #11 {
bb.a:
  switch i32 %2, label %bb.d [
    i32 2, label %bb.b
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load float, ptr %0, align 4, !tbaa !12
  %i.d = fmul reassoc nsz arcp contract afn float %i.c, f0x3F652546
  %i.e = load float, ptr %i.a, align 4, !tbaa !12
  %i.f = fmul reassoc nsz arcp contract afn float %i.e, 2.664000e-01
  %i.g = fadd reassoc nsz arcp contract afn float %i.f, %i.d
  %i.h = load float, ptr %i.b, align 4, !tbaa !12
  %i.i = fmul reassoc nsz arcp contract afn float %i.h, -1.614000e-01
  %i.j = fadd reassoc nsz arcp contract afn float %i.g, %i.i
  store float %i.j, ptr %1, align 4, !tbaa !12
  %i.k = load float, ptr %0, align 4, !tbaa !12
  %i.l = fmul reassoc nsz arcp contract afn float %i.k, f0xBF400D1B
  %i.m = load float, ptr %i.a, align 4, !tbaa !12
  %i.n = fmul reassoc nsz arcp contract afn float %i.m, 1.713500e+00
  %i.o = fadd reassoc nsz arcp contract afn float %i.n, %i.l
  %i.p = load float, ptr %i.b, align 4, !tbaa !12
  %i.q = fmul reassoc nsz arcp contract afn float %i.p, 3.670000e-02
  %i.r = fadd reassoc nsz arcp contract afn float %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.r, ptr %i.s, align 4, !tbaa !12
  %i.t = load float, ptr %0, align 4, !tbaa !12
  %i.u = fmul reassoc nsz arcp contract afn float %i.t, 3.890000e-02
  %i.v = load float, ptr %i.a, align 4, !tbaa !12
  %i.w = fmul reassoc nsz arcp contract afn float %i.v, -6.850000e-02
  %i.x = fadd reassoc nsz arcp contract afn float %i.w, %i.u
  %i.y = load float, ptr %i.b, align 4, !tbaa !12
  %i.z = fmul reassoc nsz arcp contract afn float %i.y, 1.029600e+00
  %i.aa = fadd reassoc nsz arcp contract afn float %i.x, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.aa, ptr %i.ab, align 4, !tbaa !12
  %i.ac = load float, ptr %0, align 4, !tbaa !12
  %i.ad = load float, ptr %i.a, align 4, !tbaa !12
  %i.ae = fadd reassoc nsz arcp contract afn float %i.ad, %i.ac
  %i.af = load float, ptr %i.b, align 4, !tbaa !12
  %i.ag = fadd reassoc nsz arcp contract afn float %i.ae, %i.af
  %i.ah = fmul reassoc nsz arcp contract afn float %i.ag, 0.000000e+00
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ak = load float, ptr %0, align 4, !tbaa !12
  %i.al = fmul reassoc nsz arcp contract afn float %i.ak, 4.012880e-01
  %i.am = load float, ptr %i.ai, align 4, !tbaa !12
  %i.an = fmul reassoc nsz arcp contract afn float %i.am, 6.501730e-01
  %i.ao = fadd reassoc nsz arcp contract afn float %i.an, %i.al
  %i.ap = load float, ptr %i.aj, align 4, !tbaa !12
  %i.aq = fmul reassoc nsz arcp contract afn float %i.ap, -5.146100e-02
  %i.ar = fadd reassoc nsz arcp contract afn float %i.ao, %i.aq
  store float %i.ar, ptr %1, align 4, !tbaa !12
  %i.as = load float, ptr %0, align 4, !tbaa !12
  %i.at = fmul reassoc nsz arcp contract afn float %i.as, -2.502680e-01
  %i.au = load float, ptr %i.ai, align 4, !tbaa !12
  %i.av = fmul reassoc nsz arcp contract afn float %i.au, f0x3F9A2A3D
  %i.aw = fadd reassoc nsz arcp contract afn float %i.av, %i.at
  %i.ax = load float, ptr %i.aj, align 4, !tbaa !12
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ax, 4.585400e-02
  %i.az = fadd reassoc nsz arcp contract afn float %i.aw, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.az, ptr %i.ba, align 4, !tbaa !12
  %i.bb = load float, ptr %0, align 4, !tbaa !12
  %i.bc = fmul reassoc nsz arcp contract afn float %i.bb, -2.079000e-03
  %i.bd = load float, ptr %i.ai, align 4, !tbaa !12
  %i.be = fmul reassoc nsz arcp contract afn float %i.bd, 4.895200e-02
  %i.bf = fadd reassoc nsz arcp contract afn float %i.be, %i.bc
  %i.bg = load float, ptr %i.aj, align 4, !tbaa !12
  %i.bh = fmul reassoc nsz arcp contract afn float %i.bg, 9.531270e-01
  %i.bi = fadd reassoc nsz arcp contract afn float %i.bf, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.bi, ptr %i.bj, align 4, !tbaa !12
  %i.bk = load float, ptr %0, align 4, !tbaa !12
  %i.bl = load float, ptr %i.ai, align 4, !tbaa !12
  %i.bm = fadd reassoc nsz arcp contract afn float %i.bl, %i.bk
  %i.bn = load float, ptr %i.aj, align 4, !tbaa !12
  %i.bo = fadd reassoc nsz arcp contract afn float %i.bm, %i.bn
  %i.bp = fmul reassoc nsz arcp contract afn float %i.bo, 0.000000e+00
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.bq = load float, ptr %0, align 4, !tbaa !12
  store float %i.bq, ptr %1, align 4, !tbaa !12
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bs = load float, ptr %i.br, align 4, !tbaa !12
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.bs, ptr %i.bt, align 4, !tbaa !12
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sink11 = phi i64 [ 8, %bb.d ], [ 12, %bb.c ], [ 12, %bb.b ]
  %.sink = phi float [ %i.bv, %bb.d ], [ %i.bp, %bb.c ], [ %i.ah, %bb.b ]
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 %.sink11
  store float %.sink, ptr %i.bw, align 4, !tbaa !12
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_loop_switch(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, i64 noundef range(i64 -2147483648, 2147483648) %2, i64 noundef range(i64 -2147483648, 2147483648) %3, ptr nofree noundef nonnull readonly captures(none) %4, ptr nofree noundef nonnull readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef readonly captures(none) %10, float noundef %11, float noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef range(i32 0, 5) %15, i32 noundef %16) unnamed_addr #12 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 19 uses
  %i.b = alloca [4 x float], align 16             ; 19 uses
  %.sink11.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 14 uses
  %.sink11.i.sroa.gep116 = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 8 uses
  %i.c = load float, ptr %5, align 4, !tbaa !12   ; 6 uses
  switch i32 %15, label %bb.e [
    i32 2, label %bb.b
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %gep.1.i72 = getelementptr inbounds nuw i8, ptr %5, i64 16
end_hunk_0
