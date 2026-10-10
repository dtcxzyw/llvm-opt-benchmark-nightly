Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorin?download=true
inline.NumInlined: 86
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 22
begin_hunk_0_@legacy_params:bb.a
  br i1 %.not.i232, label %._crit_edge.i233, label %.lr.ph.i228

._crit_edge.i233:                                 ; preds = %.critedge.i230, %bb.cp
  %i.dn = load i32, ptr %i.da, align 4, !tbaa !33
  %i.do = tail call ptr @dt_colorspaces_get_name(i32 noundef %i.dn, ptr noundef nonnull %i.db) #18
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.114, ptr noundef %i.do) #18
  store i32 4, ptr %i.da, align 4, !tbaa !33
  store i8 0, ptr %i.db, align 4, !tbaa !34
  br label %.sink.split

.sink.split:                                      ; preds = %bb.cs, %bb.cr, %bb.co, %bb.cn, %._crit_edge.i233, %._crit_edge.i, %bb.ad, %bb.bg, %bb.cj, %bb.ck
  %.sink = phi ptr [ %calloc242, %._crit_edge.i ], [ %calloc, %bb.ad ], [ %calloc241, %bb.ck ], [ %calloc240, %bb.cj ], [ %calloc239, %bb.bg ], [ %calloc242, %bb.co ], [ %i.cz, %._crit_edge.i233 ], [ %calloc242, %bb.cn ], [ %i.cz, %bb.cr ], [ %i.cz, %bb.cs ]
  store ptr %.sink, ptr %3, align 8, !tbaa !85
  store i32 1044, ptr %4, align 4, !tbaa !33
  store i32 7, ptr %5, align 4, !tbaa !33
  br label %bb.ct

bb.ct:                                            ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

declare i64 @dt_strlcpy_to_fixed(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @init_global(ptr nofree noundef writeonly captures(none) initializes((520, 528)) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #26 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.a, ptr %i.b, align 8, !tbaa !90
  store i32 -999, ptr %i.a, align 4, !tbaa !149
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 -999, ptr %i.c, align 4, !tbaa !150
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_global(ptr nofree noundef captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90
  tail call void @free(ptr noundef %i.b) #18
  store ptr null, ptr %i.a, align 8, !tbaa !90
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) #11

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 132 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !184
  %i.c = tail call i32 @dt_iop_have_required_input_format(i32 noundef 4, ptr noundef %0, i32 noundef %i.b, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #18
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %process_lcms2_bm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !98   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !29  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 2480
  %i.i = load i32, ptr %i.h, align 16, !tbaa !185
  %.not68 = icmp eq i32 %i.i, 0
  br i1 %.not68, label %.thread91, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 786732
  %i.k = load i32, ptr %i.j, align 4, !tbaa !32   ; 2 uses
  %.not92 = icmp eq i32 %i.k, 6
  br i1 %.not92, label %.thread91, label %bb.d

.thread91:                                        ; preds = %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !100
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 2416
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 2448
  %i.p = load <2 x double>, ptr %i.n, align 16, !tbaa !186 ; 2 uses
  %i.q = load <2 x double>, ptr %i.o, align 16, !tbaa !186
  %i.r = fdiv reassoc nsz arcp contract afn <2 x double> %i.p, %i.q
  %i.s = fptrunc <2 x double> %i.r to <2 x float> ; 5 uses
  %i.t = extractelement <2 x float> %i.s, i64 1   ; 3 uses
  %i.u = extractelement <2 x float> %i.s, i64 0   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 2432
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 2464
  %i.x = load <2 x double>, ptr %i.v, align 16, !tbaa !186 ; 2 uses
  %i.y = load <2 x double>, ptr %i.w, align 16, !tbaa !186
  %i.z = fdiv reassoc nsz arcp contract afn <2 x double> %i.x, %i.y
  %i.aa = fptrunc <2 x double> %i.z to <2 x float> ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !100 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 256 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 272 ; 2 uses
  %i.af = shufflevector <2 x double> %i.p, <2 x double> %i.x, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ag = fptrunc <4 x double> %i.af to <4 x float>
  store <4 x float> %i.ag, ptr %i.ad, align 4, !tbaa !101
  %i.ah = load <4 x float>, ptr %i.ae, align 4, !tbaa !101
  %i.ai = shufflevector <2 x float> %i.s, <2 x float> %i.aa, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aj = fmul reassoc nsz arcp contract afn <4 x float> %i.ah, %i.ai
  store <4 x float> %i.aj, ptr %i.ae, align 4, !tbaa !101
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !102
  %i.al = and i32 %i.ak, 33554432
  %.not69 = icmp eq i32 %i.al, 0
  br i1 %.not69, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = tail call ptr @dt_colorspaces_get_name(i32 noundef %i.k, ptr noundef null) #18
  %i.an = load float, ptr %i.ad, align 16, !tbaa !101
  %i.ao = fpext reassoc nsz arcp contract afn float %i.an to double
  %i.ap = fpext reassoc nsz arcp contract afn float %i.u to double
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 260
  %i.ar = fpext reassoc nsz arcp contract afn float %i.t to double
  %i.as = load <2 x float>, ptr %i.aq, align 4, !tbaa !101
  %i.at = fpext <2 x float> %i.as to <2 x double> ; 2 uses
  %i.au = extractelement <2 x float> %i.aa, i64 0
  %i.av = fpext reassoc nsz arcp contract afn float %i.au to double
  %i.aw = extractelement <2 x double> %i.at, i64 0
  %i.ax = extractelement <2 x double> %i.at, i64 1
  tail call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.22, ptr noundef nonnull %i.ac, ptr noundef nonnull %0, i32 noundef -1, ptr noundef %4, ptr noundef %5, ptr noundef nonnull @.str.23, ptr noundef %i.am, double noundef %i.ao, double noundef %i.ap, double noundef %i.aw, double noundef %i.ar, double noundef %i.ax, double noundef %i.av) #18
  br label %bb.f

bb.f:                                             ; preds = %.thread91, %bb.d, %bb.e
  %i.ay = phi ptr [ %i.m, %.thread91 ], [ %i.ac, %bb.d ], [ %i.ac, %bb.e ]
  %i.az = phi ptr [ %i.l, %.thread91 ], [ %i.ab, %bb.d ], [ %i.ab, %bb.e ]
  %i.ba = phi float [ 1.000000e+00, %.thread91 ], [ %i.t, %bb.d ], [ %i.t, %bb.e ] ; 4 uses
  %i.bb = phi float [ 1.000000e+00, %.thread91 ], [ %i.u, %bb.d ], [ %i.u, %bb.e ] ; 4 uses
  %i.bc = phi <2 x float> [ splat (float 1.000000e+00), %.thread91 ], [ %i.s, %bb.d ], [ %i.s, %bb.e ] ; 4 uses
  %i.bd = phi <2 x float> [ splat (float 1.000000e+00), %.thread91 ], [ %i.aa, %bb.d ], [ %i.aa, %bb.e ] ; 8 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 786724
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !103
  %.not70 = icmp eq i32 %i.bf, 0
  br i1 %.not70, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 656
  %i.bh = tail call i32 @dt_image_is_matrix_correction_supported(ptr noundef nonnull %i.bg) #18
  %i.bi = icmp ne i32 %i.bh, 0
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bj = phi i1 [ false, %bb.f ], [ %i.bi, %bb.g ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 786732
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !32
  %i.bm = icmp eq i32 %i.bl, 6
  br i1 %i.bm, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !187
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !188
  %i.bs = sext i32 %i.br to i64
  %i.bt = load i32, ptr %i.a, align 4, !tbaa !184
  %i.bu = sext i32 %i.bt to i64
  %i.bv = mul nsw i64 %i.bs, %i.bp
  %i.bw = mul i64 %i.bv, %i.bu
  tail call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %2, i64 noundef %i.bw) #18
  br label %process_lcms2_bm.exit

bb.j:                                             ; preds = %bb.h
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 786496
  %i.by = load float, ptr %i.bx, align 64, !tbaa !101
  %i.bz = tail call float @llvm.fabs.f32(float %i.by)
  %i.ca = fcmp ueq float %i.bz, +inf
  br i1 %i.ca, label %bb.ds, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cb = load ptr, ptr %i.f, align 16, !tbaa !29 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 786724
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !103
  %.not.i = icmp eq i32 %i.cd, 0
  br i1 %.not.i, label %.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ce = load ptr, ptr %i.az, align 8, !tbaa !100
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 656
  %i.cg = tail call i32 @dt_image_is_matrix_correction_supported(ptr noundef nonnull %i.cf) #18
  %.not1.i = icmp eq i32 %i.cg, 0
  %.val.i.pre = load ptr, ptr %i.f, align 16, !tbaa !29 ; 41 uses
  br i1 %.not1.i, label %.thread.i, label %.critedge.i

.thread.i:                                        ; preds = %bb.l, %bb.k
  %.val.i = phi ptr [ %.val.i.pre, %bb.l ], [ %i.cb, %bb.k ] ; 71 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 786728
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !104
  %.not26.i = icmp eq i32 %i.ci, 0
  %i.cj = getelementptr i8, ptr %5, i64 8
  %.val27.i = load i32, ptr %i.cj, align 4, !tbaa !187
  %i.ck = getelementptr i8, ptr %5, i64 12
  %.val28.i = load i32, ptr %i.ck, align 4, !tbaa !188
  %i.cl = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.cm = load ptr, ptr %i.cl, align 16, !tbaa !105
  %.not.i.i = icmp eq ptr %i.cm, null             ; 2 uses
  %i.cn = sext i32 %.val27.i to i64
  %i.co = sext i32 %.val28.i to i64
  %i.cp = mul nsw i64 %i.co, %i.cn                ; 8 uses
  br i1 %.not26.i, label %bb.m, label %bb.bz

bb.m:                                             ; preds = %.thread.i
  br i1 %.not.i.i, label %bb.z, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cq = getelementptr inbounds nuw i8, ptr %.val.i, i64 786560
  %i.cr = getelementptr inbounds nuw i8, ptr %.val.i, i64 786624
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  %i.cs = load float, ptr %i.cq, align 16, !tbaa !101, !noalias !191
  %i.ct = getelementptr inbounds nuw i8, ptr %.val.i, i64 786576
  %i.cu = getelementptr inbounds nuw i8, ptr %.val.i, i64 786564
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !101, !noalias !191
  %i.cw = getelementptr inbounds nuw i8, ptr %.val.i, i64 786596
  %i.cx = getelementptr inbounds nuw i8, ptr %.val.i, i64 786568
  %i.cy = load float, ptr %i.cx, align 8, !tbaa !101, !noalias !191
  %i.cz = tail call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 16 %i.ct, <5 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true>, <5 x float> poison), !tbaa !101, !noalias !191 ; 3 uses
  %i.da = shufflevector <5 x float> %i.cz, <5 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.db = load <2 x float>, ptr %i.cw, align 4, !tbaa !101, !noalias !191 ; 2 uses
  %i.dc = load float, ptr %i.cr, align 16, !tbaa !101, !noalias !191
  %i.dd = getelementptr inbounds nuw i8, ptr %.val.i, i64 786640
  %i.de = load float, ptr %i.dd, align 16, !tbaa !101, !noalias !191
  %i.df = getelementptr inbounds nuw i8, ptr %.val.i, i64 786656
  %i.dg = load float, ptr %i.df, align 16, !tbaa !101, !noalias !191
  %i.dh = getelementptr inbounds nuw i8, ptr %.val.i, i64 786628
  %i.di = load float, ptr %i.dh, align 4, !tbaa !101, !noalias !191
  %i.dj = getelementptr inbounds nuw i8, ptr %.val.i, i64 786644
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !101, !noalias !191
  %i.dl = getelementptr inbounds nuw i8, ptr %.val.i, i64 786660
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !101, !noalias !191
  %i.dn = getelementptr inbounds nuw i8, ptr %.val.i, i64 786632
  %i.do = load float, ptr %i.dn, align 8, !tbaa !101, !noalias !191
  %i.dp = getelementptr inbounds nuw i8, ptr %.val.i, i64 786648
  %i.dq = load float, ptr %i.dp, align 8, !tbaa !101, !noalias !191
  %i.dr = getelementptr inbounds nuw i8, ptr %.val.i, i64 786664
  %i.ds = load float, ptr %i.dr, align 8, !tbaa !101, !noalias !191
  %.not.i.i.i = icmp eq i64 %i.cp, 0
  br i1 %.not.i.i.i, label %process_cmatrix.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.n
  %i.dt = extractelement <2 x float> %i.bd, i64 0
  %i.du = shufflevector <5 x float> %i.cz, <5 x float> poison, <2 x i32> <i32 1, i32 4>
  %i.dv = shufflevector <2 x float> %i.db, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dw = shufflevector <4 x float> %i.da, <4 x float> %i.dv, <2 x i32> <i32 0, i32 4>
  %i.dx = shufflevector <2 x float> %i.db, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.dy = shufflevector <5 x float> %i.cz, <5 x float> %i.dx, <2 x i32> <i32 2, i32 6>
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %dt_RGB_to_Lab.exit.i.i.i
  %.068.i.i.i = phi i64 [ %i.gy, %dt_RGB_to_Lab.exit.i.i.i ], [ 0, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.dz = shl i64 %.068.i.i.i, 2                  ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dz ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !101, !alias.scope !190, !noalias !189
  %i.ed = fmul reassoc nsz arcp contract afn float %i.ec, %i.dt ; 3 uses
  %i.ee = fmul reassoc nsz arcp contract afn float %i.ed, %i.cy
  %i.ef = load <2 x float>, ptr %i.ea, align 4, !tbaa !101, !alias.scope !190, !noalias !189
  %i.eg = fmul reassoc nsz arcp contract afn <2 x float> %i.ef, %i.bc ; 4 uses
  %i.eh = extractelement <2 x float> %i.eg, i64 0 ; 2 uses
  %i.ei = fmul reassoc nsz arcp contract afn float %i.eh, %i.cs
  %i.ej = extractelement <2 x float> %i.eg, i64 1 ; 2 uses
  %i.ek = fmul reassoc nsz arcp contract afn float %i.ej, %i.cv
  %i.el = fadd reassoc nsz arcp contract afn float %i.ek, %i.ei
  %i.em = fadd reassoc nsz arcp contract afn float %i.el, %i.ee
  %.sroa.032.0.vec.insert.i.i.i = insertelement <4 x float> poison, float %i.em, i64 0
  %i.en = shufflevector <2 x float> %i.eg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.eo = fmul reassoc nsz arcp contract afn <2 x float> %i.en, %i.du
  %i.ep = fmul reassoc nsz arcp contract afn <2 x float> %i.eg, %i.dw
  %i.eq = fadd reassoc nsz arcp contract afn <2 x float> %i.ep, %i.eo
  %i.er = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer
  %i.et = fmul reassoc nsz arcp contract afn <2 x float> %i.es, %i.dy
  %i.eu = fadd reassoc nsz arcp contract afn <2 x float> %i.eq, %i.et
  %i.ev = shufflevector <2 x float> %i.eu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.032.8.vec.insert.i.i.i228 = shufflevector <4 x float> %.sroa.032.0.vec.insert.i.i.i, <4 x float> %i.ev, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.ew = fadd reassoc nsz arcp contract afn float %i.ej, %i.eh
  %i.ex = fadd reassoc nsz arcp contract afn float %i.ew, %i.ed
  %i.ey = fmul reassoc nsz arcp contract afn float %i.ex, 0.000000e+00
  %.sroa.032.12.vec.insert.i.i.i = insertelement <4 x float> %.sroa.032.8.vec.insert.i.i.i228, float %i.ey, i64 3
  %i.ez = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.032.12.vec.insert.i.i.i, <4 x float> zeroinitializer)
  %i.fa = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ez, <4 x float> splat (float 1.000000e+00)) ; 3 uses
  %.sroa.032.0.vec.extract.i.i.i = extractelement <4 x float> %i.fa, i64 0 ; 4 uses
  %i.fb = fmul reassoc nsz arcp contract afn float %.sroa.032.0.vec.extract.i.i.i, %i.dc
  %.sroa.032.4.vec.extract.i.i.i = extractelement <4 x float> %i.fa, i64 1 ; 4 uses
  %i.fc = fmul reassoc nsz arcp contract afn float %.sroa.032.4.vec.extract.i.i.i, %i.di
  %i.fd = fadd reassoc nsz arcp contract afn float %i.fc, %i.fb
  %.sroa.032.8.vec.extract.i.i.i = extractelement <4 x float> %i.fa, i64 2 ; 4 uses
  %i.fe = fmul reassoc nsz arcp contract afn float %.sroa.032.8.vec.extract.i.i.i, %i.do
  %i.ff = fadd reassoc nsz arcp contract afn float %i.fd, %i.fe ; 2 uses
  %i.fg = fmul reassoc nsz arcp contract afn float %.sroa.032.0.vec.extract.i.i.i, %i.de
  %i.fh = fmul reassoc nsz arcp contract afn float %.sroa.032.4.vec.extract.i.i.i, %i.dk
  %i.fi = fadd reassoc nsz arcp contract afn float %i.fh, %i.fg
  %i.fj = fmul reassoc nsz arcp contract afn float %.sroa.032.8.vec.extract.i.i.i, %i.dq
  %i.fk = fadd reassoc nsz arcp contract afn float %i.fi, %i.fj ; 3 uses
  %i.fl = fmul reassoc nsz arcp contract afn float %.sroa.032.0.vec.extract.i.i.i, %i.dg
  %i.fm = fmul reassoc nsz arcp contract afn float %.sroa.032.4.vec.extract.i.i.i, %i.dm
  %i.fn = fadd reassoc nsz arcp contract afn float %i.fm, %i.fl
  %i.fo = fmul reassoc nsz arcp contract afn float %.sroa.032.8.vec.extract.i.i.i, %i.ds
  %i.fp = fadd reassoc nsz arcp contract afn float %i.fn, %i.fo ; 2 uses
  %i.fq = fadd reassoc nsz arcp contract afn float %.sroa.032.4.vec.extract.i.i.i, %.sroa.032.0.vec.extract.i.i.i
  %i.fr = fadd reassoc nsz arcp contract afn float %i.fq, %.sroa.032.8.vec.extract.i.i.i
  %i.fs = fmul reassoc nsz arcp contract afn float %i.ff, f0x3F84C0A6 ; 2 uses
  %i.ft = fcmp reassoc nsz arcp contract afn ogt float %i.fs, f0x3C111AA7
  br i1 %i.ft, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i.i.i
  %i.fu = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.fs) #27
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph.i.i.i
  %i.fv = fmul reassoc nsz arcp contract afn float %i.ff, f0x410137F7
  %i.fw = fadd reassoc nsz arcp contract afn float %i.fv, f0x3E0D3DCB
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.fx = phi reassoc nsz arcp contract afn float [ %i.fu, %bb.o ], [ %i.fw, %bb.p ]
  %i.fy = fcmp reassoc nsz arcp contract afn ogt float %i.fk, f0x3C111AA7
  br i1 %i.fy, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fz = fmul reassoc nsz arcp contract afn float %i.fk, f0x40F92F69
  %i.ga = fadd reassoc nsz arcp contract afn float %i.fz, f0x3E0D3DCB
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.gb = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.fk) #27
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.gc = phi reassoc nsz arcp contract afn float [ %i.gb, %bb.s ], [ %i.ga, %bb.r ] ; 3 uses
  %i.gd = fmul reassoc nsz arcp contract afn float %i.fp, f0x3F9B2B9B ; 2 uses
  %i.ge = fcmp reassoc nsz arcp contract afn ogt float %i.gd, f0x3C111AA7
  br i1 %i.ge, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gf = fmul reassoc nsz arcp contract afn float %i.fp, f0x41170A26
  %i.gg = fadd reassoc nsz arcp contract afn float %i.gf, f0x3E0D3DCB
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.gh = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.gd) #27
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.gi = phi reassoc nsz arcp contract afn float [ %i.gh, %bb.v ], [ %i.gg, %bb.u ]
  %i.gj = fmul reassoc nsz arcp contract afn float %i.fr, 0.000000e+00 ; 3 uses
  %i.gk = fcmp reassoc nsz arcp contract afn ogt float %i.gj, f0x3C111AA7
  br i1 %i.gk, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gl = fadd reassoc nsz arcp contract afn float %i.gj, f0x3E0D3DCB
  br label %dt_RGB_to_Lab.exit.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.gm = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.gj) #27
  br label %dt_RGB_to_Lab.exit.i.i.i

dt_RGB_to_Lab.exit.i.i.i:                         ; preds = %bb.y, %bb.x
  %i.gn = phi reassoc nsz arcp contract afn float [ %i.gm, %bb.y ], [ %i.gl, %bb.x ]
  %i.go = fmul reassoc nsz arcp contract afn float %i.gc, 1.160000e+02
  %i.gp = fadd reassoc nsz arcp contract afn float %i.go, -1.600000e+01
  %i.gq = fsub reassoc nsz arcp contract afn float %i.fx, %i.gc
  %i.gr = fsub reassoc nsz arcp contract afn float %i.gi, %i.gc
  %i.gs = insertelement <4 x float> poison, float %i.gp, i64 0
  %i.gt = insertelement <4 x float> %i.gs, float %i.gq, i64 1
  %i.gu = insertelement <4 x float> %i.gt, float %i.gr, i64 2
  %i.gv = insertelement <4 x float> %i.gu, float %i.gn, i64 3
  %i.gw = fmul reassoc nsz arcp contract afn <4 x float> %i.gv, <float 1.000000e+00, float 5.000000e+02, float -2.000000e+02, float 0.000000e+00>
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dz
  store <4 x float> %i.gw, ptr %i.gx, align 16, !tbaa !34, !alias.scope !192, !noalias !190, !nontemporal !193
  %i.gy = add nuw i64 %.068.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.gy, %i.cp
  br i1 %exitcond.not.i.i.i, label %process_cmatrix.exit, label %.lr.ph.i.i.i

bb.z:                                             ; preds = %bb.m
  %i.gz = getelementptr inbounds nuw i8, ptr %.val.i, i64 786496
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  %i.ha = load float, ptr %i.gz, align 16, !tbaa !101, !noalias !196
  %i.hb = getelementptr inbounds nuw i8, ptr %.val.i, i64 786512
  %i.hc = load float, ptr %i.hb, align 16, !tbaa !101, !noalias !196
  %i.hd = getelementptr inbounds nuw i8, ptr %.val.i, i64 786528
  %i.he = load float, ptr %i.hd, align 16, !tbaa !101, !noalias !196
  %i.hf = getelementptr inbounds nuw i8, ptr %.val.i, i64 786500
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !101, !noalias !196
  %i.hh = getelementptr inbounds nuw i8, ptr %.val.i, i64 786516
end_hunk_0
begin_hunk_1_@process:bb.a
  %i.rb = fmul reassoc nsz arcp contract afn float %i.qo, f0x3F84C0A6 ; 2 uses
  %i.rc = fcmp reassoc nsz arcp contract afn ogt float %i.rb, f0x3C111AA7
  br i1 %i.rc, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.rd = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.rb) #27
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.re = fmul reassoc nsz arcp contract afn float %i.qo, f0x410137F7
  %i.rf = fadd reassoc nsz arcp contract afn float %i.re, f0x3E0D3DCB
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.rg = phi reassoc nsz arcp contract afn float [ %i.rd, %bb.bb ], [ %i.rf, %bb.bc ]
  %i.rh = fcmp reassoc nsz arcp contract afn ogt float %i.qt, f0x3C111AA7
  br i1 %i.rh, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ri = fmul reassoc nsz arcp contract afn float %i.qt, f0x40F92F69
  %i.rj = fadd reassoc nsz arcp contract afn float %i.ri, f0x3E0D3DCB
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.rk = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.qt) #27
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.rl = phi reassoc nsz arcp contract afn float [ %i.rk, %bb.bf ], [ %i.rj, %bb.be ] ; 3 uses
  %i.rm = fmul reassoc nsz arcp contract afn float %i.qy, f0x3F9B2B9B ; 2 uses
  %i.rn = fcmp reassoc nsz arcp contract afn ogt float %i.rm, f0x3C111AA7
  br i1 %i.rn, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ro = fmul reassoc nsz arcp contract afn float %i.qy, f0x41170A26
  %i.rp = fadd reassoc nsz arcp contract afn float %i.ro, f0x3E0D3DCB
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.rq = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.rm) #27
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.rr = phi reassoc nsz arcp contract afn float [ %i.rq, %bb.bi ], [ %i.rp, %bb.bh ]
  %i.rs = fmul reassoc nsz arcp contract afn float %i.ra, 0.000000e+00 ; 3 uses
  %i.rt = fcmp reassoc nsz arcp contract afn ogt float %i.rs, f0x3C111AA7
  br i1 %i.rt, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ru = fadd reassoc nsz arcp contract afn float %i.rs, f0x3E0D3DCB
  br label %dt_XYZ_to_Lab.exit.i.i

bb.bl:                                            ; preds = %bb.bj
  %i.rv = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.rs) #27
  br label %dt_XYZ_to_Lab.exit.i.i

dt_XYZ_to_Lab.exit.i.i:                           ; preds = %bb.bl, %bb.bk
  %i.rw = phi reassoc nsz arcp contract afn float [ %i.rv, %bb.bl ], [ %i.ru, %bb.bk ]
  %i.rx = fmul reassoc nsz arcp contract afn float %i.rl, 1.160000e+02
  %i.ry = fadd reassoc nsz arcp contract afn float %i.rx, -1.600000e+01
  %.sroa.03.0.vec.insert.i.i = insertelement <4 x float> poison, float %i.ry, i64 0
  %i.rz = fsub reassoc nsz arcp contract afn float %i.rg, %i.rl
  %i.sa = fmul reassoc nsz arcp contract afn float %i.rz, 5.000000e+02
  %.sroa.03.4.vec.insert.i.i = insertelement <4 x float> %.sroa.03.0.vec.insert.i.i, float %i.sa, i64 1
  %i.sb = fsub reassoc nsz arcp contract afn float %i.rr, %i.rl
  br label %bb.by

bb.bm:                                            ; preds = %_apply_blue_mapping.exit.i.i
  %i.sc = fmul reassoc nsz arcp contract afn float %i.of, %i.kx
  %i.sd = fmul reassoc nsz arcp contract afn float %.sroa.451.0.i.i, %i.ld
  %i.se = fmul reassoc nsz arcp contract afn float %.sroa.9.0.i.i, %i.lj
  %i.sf = fadd reassoc nsz arcp contract afn float %i.se, %i.sc
  %i.sg = fadd reassoc nsz arcp contract afn float %i.sf, %i.sd ; 3 uses
  %i.sh = fmul reassoc nsz arcp contract afn float %i.of, %i.kz
  %i.si = fmul reassoc nsz arcp contract afn float %.sroa.451.0.i.i, %i.lf
  %i.sj = fmul reassoc nsz arcp contract afn float %.sroa.9.0.i.i, %i.ll
  %i.sk = fadd reassoc nsz arcp contract afn float %i.sj, %i.sh
  %i.sl = fadd reassoc nsz arcp contract afn float %i.sk, %i.si ; 3 uses
  %i.sm = fmul reassoc nsz arcp contract afn float %i.of, %i.lb
  %i.sn = fmul reassoc nsz arcp contract afn float %.sroa.451.0.i.i, %i.lh
  %i.so = fmul reassoc nsz arcp contract afn float %.sroa.9.0.i.i, %i.ln
  %i.sp = fadd reassoc nsz arcp contract afn float %i.so, %i.sm
  %i.sq = fadd reassoc nsz arcp contract afn float %i.sp, %i.sn ; 3 uses
  %i.sr = fcmp reassoc nsz arcp contract afn ogt float %i.sg, 1.000000e+00
  %i.ss = fcmp reassoc nsz arcp contract afn olt float %i.sg, 0.000000e+00
  %spec.select.i.i = select reassoc nsz arcp contract afn i1 %i.ss, float 0.000000e+00, float %i.sg
  %i.st = select reassoc nsz arcp contract afn i1 %i.sr, float 1.000000e+00, float %spec.select.i.i ; 4 uses
  %i.su = fcmp reassoc nsz arcp contract afn ogt float %i.sl, 1.000000e+00
  %i.sv = fcmp reassoc nsz arcp contract afn olt float %i.sl, 0.000000e+00
  %spec.select.1.i.i = select reassoc nsz arcp contract afn i1 %i.sv, float 0.000000e+00, float %i.sl
  %i.sw = select reassoc nsz arcp contract afn i1 %i.su, float 1.000000e+00, float %spec.select.1.i.i ; 4 uses
  %i.sx = fcmp reassoc nsz arcp contract afn ogt float %i.sq, 1.000000e+00
  %i.sy = fcmp reassoc nsz arcp contract afn olt float %i.sq, 0.000000e+00
  %spec.select.2.i.i = select reassoc nsz arcp contract afn i1 %i.sy, float 0.000000e+00, float %i.sq
  %i.sz = select reassoc nsz arcp contract afn i1 %i.sx, float 1.000000e+00, float %spec.select.2.i.i ; 4 uses
  %i.ta = fmul reassoc nsz arcp contract afn float %i.st, %i.lp
  %i.tb = fmul reassoc nsz arcp contract afn float %i.sw, %i.lv
  %i.tc = fadd reassoc nsz arcp contract afn float %i.tb, %i.ta
  %i.td = fmul reassoc nsz arcp contract afn float %i.sz, %i.mb
  %i.te = fadd reassoc nsz arcp contract afn float %i.tc, %i.td ; 2 uses
  %i.tf = fmul reassoc nsz arcp contract afn float %i.st, %i.lr
  %i.tg = fmul reassoc nsz arcp contract afn float %i.sw, %i.lx
  %i.th = fadd reassoc nsz arcp contract afn float %i.tg, %i.tf
  %i.ti = fmul reassoc nsz arcp contract afn float %i.sz, %i.md
  %i.tj = fadd reassoc nsz arcp contract afn float %i.th, %i.ti ; 3 uses
  %i.tk = fmul reassoc nsz arcp contract afn float %i.st, %i.lt
  %i.tl = fmul reassoc nsz arcp contract afn float %i.sw, %i.lz
  %i.tm = fadd reassoc nsz arcp contract afn float %i.tl, %i.tk
  %i.tn = fmul reassoc nsz arcp contract afn float %i.sz, %i.mf
  %i.to = fadd reassoc nsz arcp contract afn float %i.tm, %i.tn ; 2 uses
  %i.tp = fadd reassoc nsz arcp contract afn float %i.sw, %i.st
  %i.tq = fadd reassoc nsz arcp contract afn float %i.tp, %i.sz
  %i.tr = fmul reassoc nsz arcp contract afn float %i.te, f0x3F84C0A6 ; 2 uses
  %i.ts = fcmp reassoc nsz arcp contract afn ogt float %i.tr, f0x3C111AA7
  br i1 %i.ts, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.tt = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.tr) #27
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %i.tu = fmul reassoc nsz arcp contract afn float %i.te, f0x410137F7
  %i.tv = fadd reassoc nsz arcp contract afn float %i.tu, f0x3E0D3DCB
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.tw = phi reassoc nsz arcp contract afn float [ %i.tt, %bb.bn ], [ %i.tv, %bb.bo ]
  %i.tx = fcmp reassoc nsz arcp contract afn ogt float %i.tj, f0x3C111AA7
  br i1 %i.tx, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ty = fmul reassoc nsz arcp contract afn float %i.tj, f0x40F92F69
  %i.tz = fadd reassoc nsz arcp contract afn float %i.ty, f0x3E0D3DCB
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  %i.ua = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.tj) #27
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.ub = phi reassoc nsz arcp contract afn float [ %i.ua, %bb.br ], [ %i.tz, %bb.bq ] ; 3 uses
  %i.uc = fmul reassoc nsz arcp contract afn float %i.to, f0x3F9B2B9B ; 2 uses
  %i.ud = fcmp reassoc nsz arcp contract afn ogt float %i.uc, f0x3C111AA7
  br i1 %i.ud, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ue = fmul reassoc nsz arcp contract afn float %i.to, f0x41170A26
  %i.uf = fadd reassoc nsz arcp contract afn float %i.ue, f0x3E0D3DCB
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  %i.ug = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.uc) #27
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.uh = phi reassoc nsz arcp contract afn float [ %i.ug, %bb.bu ], [ %i.uf, %bb.bt ]
  %i.ui = fmul reassoc nsz arcp contract afn float %i.tq, 0.000000e+00 ; 3 uses
  %i.uj = fcmp reassoc nsz arcp contract afn ogt float %i.ui, f0x3C111AA7
  br i1 %i.uj, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.uk = fadd reassoc nsz arcp contract afn float %i.ui, f0x3E0D3DCB
  br label %dt_XYZ_to_Lab.exit44.i.i

bb.bx:                                            ; preds = %bb.bv
  %i.ul = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.ui) #27
  br label %dt_XYZ_to_Lab.exit44.i.i

dt_XYZ_to_Lab.exit44.i.i:                         ; preds = %bb.bx, %bb.bw
  %i.um = phi reassoc nsz arcp contract afn float [ %i.ul, %bb.bx ], [ %i.uk, %bb.bw ]
  %i.un = fmul reassoc nsz arcp contract afn float %i.ub, 1.160000e+02
  %i.uo = fadd reassoc nsz arcp contract afn float %i.un, -1.600000e+01
  %.sroa.0.0.vec.insert.i.i = insertelement <4 x float> poison, float %i.uo, i64 0
  %i.up = fsub reassoc nsz arcp contract afn float %i.tw, %i.ub
  %i.uq = fmul reassoc nsz arcp contract afn float %i.up, 5.000000e+02
  %.sroa.0.4.vec.insert.i.i = insertelement <4 x float> %.sroa.0.0.vec.insert.i.i, float %i.uq, i64 1
  %i.ur = fsub reassoc nsz arcp contract afn float %i.uh, %i.ub
  br label %bb.by

bb.by:                                            ; preds = %dt_XYZ_to_Lab.exit44.i.i, %dt_XYZ_to_Lab.exit.i.i
  %.sink76.i.i = phi float [ %i.ur, %dt_XYZ_to_Lab.exit44.i.i ], [ %i.sb, %dt_XYZ_to_Lab.exit.i.i ]
  %.sroa.0.4.vec.insert.sink.i.i = phi <4 x float> [ %.sroa.0.4.vec.insert.i.i, %dt_XYZ_to_Lab.exit44.i.i ], [ %.sroa.03.4.vec.insert.i.i, %dt_XYZ_to_Lab.exit.i.i ]
  %.sink75.i.i = phi float [ %i.um, %dt_XYZ_to_Lab.exit44.i.i ], [ %i.rw, %dt_XYZ_to_Lab.exit.i.i ]
  %i.us = fmul reassoc nsz arcp contract afn float %.sink76.i.i, -2.000000e+02
  %.sroa.0.8.vec.insert.i.i = insertelement <4 x float> %.sroa.0.4.vec.insert.sink.i.i, float %i.us, i64 2
  %i.ut = fmul reassoc nsz arcp contract afn float %.sink75.i.i, 0.000000e+00
  %.sroa.0.12.vec.insert.i.i = insertelement <4 x float> %.sroa.0.8.vec.insert.i.i, float %i.ut, i64 3
  store <4 x float> %.sroa.0.12.vec.insert.i.i, ptr %i.qg, align 16, !tbaa !34
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.mi
  br i1 %exitcond.not.i.i, label %process_cmatrix.exit, label %bb.al

bb.bz:                                            ; preds = %.thread.i
  br i1 %.not.i.i, label %bb.cw, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.uu = getelementptr inbounds nuw i8, ptr %.val.i, i64 786560
  %i.uv = getelementptr inbounds nuw i8, ptr %.val.i, i64 786624
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  %i.uw = load float, ptr %i.uu, align 16, !tbaa !101, !noalias !200
  %i.ux = getelementptr inbounds nuw i8, ptr %.val.i, i64 786564
  %i.uy = load float, ptr %i.ux, align 4, !tbaa !101, !noalias !200
  %i.uz = getelementptr inbounds nuw i8, ptr %.val.i, i64 786568
  %i.va = load float, ptr %i.uz, align 8, !tbaa !101, !noalias !200
  %i.vb = load float, ptr %i.uv, align 16, !tbaa !101, !noalias !200
  %i.vc = getelementptr inbounds nuw i8, ptr %.val.i, i64 786640
  %i.vd = load float, ptr %i.vc, align 16, !tbaa !101, !noalias !200
  %i.ve = getelementptr inbounds nuw i8, ptr %.val.i, i64 786656
  %i.vf = load float, ptr %i.ve, align 16, !tbaa !101, !noalias !200
  %i.vg = getelementptr inbounds nuw i8, ptr %.val.i, i64 786628
  %i.vh = load float, ptr %i.vg, align 4, !tbaa !101, !noalias !200
  %i.vi = getelementptr inbounds nuw i8, ptr %.val.i, i64 786644
  %i.vj = load float, ptr %i.vi, align 4, !tbaa !101, !noalias !200
  %i.vk = getelementptr inbounds nuw i8, ptr %.val.i, i64 786660
  %i.vl = load float, ptr %i.vk, align 4, !tbaa !101, !noalias !200
  %i.vm = getelementptr inbounds nuw i8, ptr %.val.i, i64 786632
  %i.vn = load float, ptr %i.vm, align 8, !tbaa !101, !noalias !200
  %i.vo = getelementptr inbounds nuw i8, ptr %.val.i, i64 786648
  %i.vp = load float, ptr %i.vo, align 8, !tbaa !101, !noalias !200
  %i.vq = getelementptr inbounds nuw i8, ptr %.val.i, i64 786664
  %i.vr = load float, ptr %i.vq, align 8, !tbaa !101, !noalias !200
  %.not.i.i37.i = icmp eq i64 %i.cp, 0
  br i1 %.not.i.i37.i, label %process_cmatrix.exit, label %.lr.ph.i.i38.i

.lr.ph.i.i38.i:                                   ; preds = %bb.ca
  %6 = getelementptr inbounds nuw i8, ptr %.val.i, i64 786596
  %7 = load <2 x float>, ptr %6, align 4, !tbaa !101, !noalias !200
  %8 = getelementptr inbounds nuw i8, ptr %.val.i, i64 786576
  %9 = tail call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 16 %8, <5 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true>, <5 x float> poison), !tbaa !101, !noalias !200 ; 3 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %.val.i, i64 48 ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %.val.i, i64 786688
  %i.vu = load float, ptr %i.vs, align 16, !tbaa !101, !noalias !200
  %i.vv = fcmp reassoc nsz arcp contract afn ult float %i.vu, 0.000000e+00
  %i.vw = getelementptr inbounds nuw i8, ptr %.val.i, i64 786692
  %i.vx = getelementptr inbounds nuw i8, ptr %.val.i, i64 786696
  %i.vy = getelementptr inbounds nuw i8, ptr %.val.i, i64 262192 ; 2 uses
  %i.vz = load float, ptr %i.vy, align 16, !tbaa !101, !noalias !200
  %i.wa = fcmp reassoc nsz arcp contract afn ult float %i.vz, 0.000000e+00
  %i.wb = getelementptr inbounds nuw i8, ptr %.val.i, i64 786700
  %i.wc = getelementptr inbounds nuw i8, ptr %.val.i, i64 786704
  %i.wd = getelementptr inbounds nuw i8, ptr %.val.i, i64 786708
  %i.we = getelementptr inbounds nuw i8, ptr %.val.i, i64 524336 ; 2 uses
  %i.wf = load float, ptr %i.we, align 16, !tbaa !101, !noalias !200
  %i.wg = fcmp reassoc nsz arcp contract afn ult float %i.wf, 0.000000e+00
  %i.wh = getelementptr inbounds nuw i8, ptr %.val.i, i64 786712
  %i.wi = getelementptr inbounds nuw i8, ptr %.val.i, i64 786716
  %i.wj = getelementptr inbounds nuw i8, ptr %.val.i, i64 786720
  %10 = shufflevector <2 x float> %7, <2 x float> poison, <5 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison> ; 2 uses
  %11 = shufflevector <5 x float> %9, <5 x float> %10, <2 x i32> <i32 1, i32 5>
  %12 = shufflevector <5 x float> %9, <5 x float> poison, <2 x i32> <i32 0, i32 4>
  %13 = shufflevector <5 x float> %9, <5 x float> %10, <2 x i32> <i32 2, i32 6>
  %i.wk = extractelement <2 x float> %i.bd, i64 0
  br label %bb.cb

bb.cb:                                            ; preds = %dt_RGB_to_Lab.exit.i.i39.i, %.lr.ph.i.i38.i
  %.072.i.i.i = phi i64 [ 0, %.lr.ph.i.i38.i ], [ %i.abn, %dt_RGB_to_Lab.exit.i.i39.i ] ; 2 uses
  %i.wl = shl i64 %.072.i.i.i, 2                  ; 2 uses
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.wl ; 3 uses
  %i.wn = load float, ptr %i.wm, align 4, !tbaa !101, !alias.scope !199, !noalias !198
  %i.wo = fmul reassoc nsz arcp contract afn float %i.wn, %i.bb ; 5 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wm, i64 4
  %i.wq = load float, ptr %i.wp, align 4, !tbaa !101, !alias.scope !199, !noalias !198
  %i.wr = fmul reassoc nsz arcp contract afn float %i.wq, %i.ba ; 5 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wm, i64 8
  %i.wt = load float, ptr %i.ws, align 4, !tbaa !101, !alias.scope !199, !noalias !198
  %i.wu = fmul reassoc nsz arcp contract afn float %i.wt, %i.wk ; 5 uses
  br i1 %i.vv, label %.sink.split.i.i.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.wv = fcmp reassoc nsz arcp contract afn olt float %i.wo, 1.000000e+00
  br i1 %i.wv, label %bb.cd, label %bb.ce, !prof !201

bb.cd:                                            ; preds = %bb.cc
  %i.ww = fcmp reassoc nsz arcp contract afn ogt float %i.wo, 0.000000e+00
  %i.wx = select reassoc nsz arcp contract afn i1 %i.ww, float %i.wo, float 0.000000e+00
  %i.wy = fmul reassoc nnan nsz arcp contract afn float %i.wx, 6.553500e+04 ; 2 uses
  %i.wz = fptosi float %i.wy to i32               ; 2 uses
  %i.xa = uitofp nsz nneg i32 %i.wz to float
  %i.xb = fsub reassoc nnan nsz arcp contract afn float %i.wy, %i.xa
  %i.xc = zext nneg i32 %i.wz to i64
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %i.vs, i64 %i.xc ; 2 uses
  %i.xe = load float, ptr %i.xd, align 4, !tbaa !101, !noalias !200 ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xd, i64 4
  %i.xg = load float, ptr %i.xf, align 4, !tbaa !101, !noalias !200
  %i.xh = fsub reassoc nsz arcp contract afn float %i.xg, %i.xe
  %i.xi = fmul reassoc nsz arcp contract afn float %i.xh, %i.xb
  %i.xj = fadd reassoc nsz arcp contract afn float %i.xi, %i.xe
  br label %.sink.split.i.i.i.i

bb.ce:                                            ; preds = %bb.cc
  %i.xk = load float, ptr %i.vw, align 4, !tbaa !101, !noalias !200
  %i.xl = load float, ptr %i.vt, align 16, !tbaa !101, !noalias !200
  %i.xm = fmul reassoc nsz arcp contract afn float %i.xl, %i.wo
  %i.xn = load float, ptr %i.vx, align 8, !tbaa !101, !noalias !200
  %i.xo = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.xm, float %i.xn)
  %i.xp = fmul reassoc nsz arcp contract afn float %i.xo, %i.xk
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %bb.ce, %bb.cd, %bb.cb
  %.sroa.038.0.i.i.i = phi nsz float [ %i.wo, %bb.cb ], [ %i.xp, %bb.ce ], [ %i.xj, %bb.cd ] ; 3 uses
  br i1 %i.wa, label %.sink.split24.i.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %.sink.split.i.i.i.i
  %i.xq = fcmp reassoc nsz arcp contract afn olt float %i.wr, 1.000000e+00
  br i1 %i.xq, label %bb.ch, label %bb.cg, !prof !201

bb.cg:                                            ; preds = %bb.cf
  %i.xr = load float, ptr %i.wc, align 16, !tbaa !101, !noalias !200
  %i.xs = load float, ptr %i.wb, align 4, !tbaa !101, !noalias !200
  %i.xt = fmul reassoc nsz arcp contract afn float %i.xs, %i.wr
  %i.xu = load float, ptr %i.wd, align 4, !tbaa !101, !noalias !200
  %i.xv = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.xt, float %i.xu)
  %i.xw = fmul reassoc nsz arcp contract afn float %i.xv, %i.xr
  br label %.sink.split24.i.i.i.i

bb.ch:                                            ; preds = %bb.cf
  %i.xx = fcmp reassoc nsz arcp contract afn ogt float %i.wr, 0.000000e+00
  %i.xy = select reassoc nsz arcp contract afn i1 %i.xx, float %i.wr, float 0.000000e+00
  %i.xz = fmul reassoc nnan nsz arcp contract afn float %i.xy, 6.553500e+04 ; 2 uses
  %i.ya = fptosi float %i.xz to i32               ; 2 uses
  %i.yb = uitofp nsz nneg i32 %i.ya to float
  %i.yc = fsub reassoc nnan nsz arcp contract afn float %i.xz, %i.yb
  %i.yd = zext nneg i32 %i.ya to i64
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %i.vy, i64 %i.yd ; 2 uses
  %i.yf = load float, ptr %i.ye, align 4, !tbaa !101, !noalias !200 ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.ye, i64 4
  %i.yh = load float, ptr %i.yg, align 4, !tbaa !101, !noalias !200
  %i.yi = fsub reassoc nsz arcp contract afn float %i.yh, %i.yf
  %i.yj = fmul reassoc nsz arcp contract afn float %i.yi, %i.yc
  %i.yk = fadd reassoc nsz arcp contract afn float %i.yj, %i.yf
  br label %.sink.split24.i.i.i.i

.sink.split24.i.i.i.i:                            ; preds = %bb.ch, %bb.cg, %.sink.split.i.i.i.i
  %.sroa.9.0.i.i.i = phi nsz float [ %i.wr, %.sink.split.i.i.i.i ], [ %i.yk, %bb.ch ], [ %i.xw, %bb.cg ] ; 3 uses
  br i1 %i.wg, label %_apply_tone_curves.exit.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %.sink.split24.i.i.i.i
  %i.yl = fcmp reassoc nsz arcp contract afn olt float %i.wu, 1.000000e+00
  br i1 %i.yl, label %bb.ck, label %bb.cj, !prof !201

bb.cj:                                            ; preds = %bb.ci
  %i.ym = load float, ptr %i.wi, align 4, !tbaa !101, !noalias !200
  %i.yn = load float, ptr %i.wh, align 8, !tbaa !101, !noalias !200
  %i.yo = fmul reassoc nsz arcp contract afn float %i.yn, %i.wu
  %i.yp = load float, ptr %i.wj, align 16, !tbaa !101, !noalias !200
  %i.yq = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.yo, float %i.yp)
  %i.yr = fmul reassoc nsz arcp contract afn float %i.yq, %i.ym
  br label %_apply_tone_curves.exit.i.i.i

bb.ck:                                            ; preds = %bb.ci
  %i.ys = fcmp reassoc nsz arcp contract afn ogt float %i.wu, 0.000000e+00
  %i.yt = select reassoc nsz arcp contract afn i1 %i.ys, float %i.wu, float 0.000000e+00
  %i.yu = fmul reassoc nnan nsz arcp contract afn float %i.yt, 6.553500e+04 ; 2 uses
  %i.yv = fptosi float %i.yu to i32               ; 2 uses
  %i.yw = uitofp nsz nneg i32 %i.yv to float
  %i.yx = fsub reassoc nnan nsz arcp contract afn float %i.yu, %i.yw
  %i.yy = zext nneg i32 %i.yv to i64
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %i.we, i64 %i.yy ; 2 uses
  %i.za = load float, ptr %i.yz, align 4, !tbaa !101, !noalias !200 ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yz, i64 4
  %i.zc = load float, ptr %i.zb, align 4, !tbaa !101, !noalias !200
  %i.zd = fsub reassoc nsz arcp contract afn float %i.zc, %i.za
  %i.ze = fmul reassoc nsz arcp contract afn float %i.zd, %i.yx
  %i.zf = fadd reassoc nsz arcp contract afn float %i.ze, %i.za
  br label %_apply_tone_curves.exit.i.i.i

_apply_tone_curves.exit.i.i.i:                    ; preds = %bb.ck, %bb.cj, %.sink.split24.i.i.i.i
  %.sroa.16.0.i.i.i = phi nsz float [ %i.wu, %.sink.split24.i.i.i.i ], [ %i.zf, %bb.ck ], [ %i.yr, %bb.cj ] ; 3 uses
  %i.zg = fmul reassoc nsz arcp contract afn float %.sroa.038.0.i.i.i, %i.uw
  %i.zh = fmul reassoc nsz arcp contract afn float %.sroa.9.0.i.i.i, %i.uy
  %i.zi = fadd reassoc nsz arcp contract afn float %i.zh, %i.zg
  %i.zj = fmul reassoc nsz arcp contract afn float %.sroa.16.0.i.i.i, %i.va
  %i.zk = fadd reassoc nsz arcp contract afn float %i.zi, %i.zj
  %.sroa.033.0.vec.insert.i.i.i = insertelement <4 x float> poison, float %i.zk, i64 0
  %14 = insertelement <2 x float> poison, float %.sroa.038.0.i.i.i, i64 0
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> zeroinitializer
  %16 = fmul reassoc nsz arcp contract afn <2 x float> %15, %12
  %17 = insertelement <2 x float> poison, float %.sroa.9.0.i.i.i, i64 0
  %18 = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> zeroinitializer
  %19 = fmul reassoc nsz arcp contract afn <2 x float> %18, %11
  %20 = insertelement <2 x float> poison, float %.sroa.16.0.i.i.i, i64 0
  %21 = shufflevector <2 x float> %20, <2 x float> poison, <2 x i32> zeroinitializer
  %22 = fmul reassoc nsz arcp contract afn <2 x float> %21, %13
  %23 = fadd reassoc nsz arcp contract afn <2 x float> %19, %16
  %24 = fadd reassoc nsz arcp contract afn <2 x float> %23, %22
  %25 = shufflevector <2 x float> %24, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.033.8.vec.insert.i.i.i229 = shufflevector <4 x float> %.sroa.033.0.vec.insert.i.i.i, <4 x float> %25, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.zl = fadd reassoc nsz arcp contract afn float %.sroa.9.0.i.i.i, %.sroa.038.0.i.i.i
  %i.zm = fadd reassoc nsz arcp contract afn float %i.zl, %.sroa.16.0.i.i.i
  %i.zn = fmul reassoc nsz arcp contract afn float %i.zm, 0.000000e+00
  %.sroa.033.12.vec.insert.i.i.i = insertelement <4 x float> %.sroa.033.8.vec.insert.i.i.i229, float %i.zn, i64 3
  %i.zo = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.033.12.vec.insert.i.i.i, <4 x float> zeroinitializer)
  %i.zp = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.zo, <4 x float> splat (float 1.000000e+00)) ; 3 uses
  %.sroa.033.0.vec.extract.i.i.i = extractelement <4 x float> %i.zp, i64 0 ; 4 uses
  %i.zq = fmul reassoc nsz arcp contract afn float %.sroa.033.0.vec.extract.i.i.i, %i.vb
  %.sroa.033.4.vec.extract.i.i.i = extractelement <4 x float> %i.zp, i64 1 ; 4 uses
  %i.zr = fmul reassoc nsz arcp contract afn float %.sroa.033.4.vec.extract.i.i.i, %i.vh
  %i.zs = fadd reassoc nsz arcp contract afn float %i.zr, %i.zq
  %.sroa.033.8.vec.extract.i.i.i = extractelement <4 x float> %i.zp, i64 2 ; 4 uses
  %i.zt = fmul reassoc nsz arcp contract afn float %.sroa.033.8.vec.extract.i.i.i, %i.vn
  %i.zu = fadd reassoc nsz arcp contract afn float %i.zs, %i.zt ; 2 uses
  %i.zv = fmul reassoc nsz arcp contract afn float %.sroa.033.0.vec.extract.i.i.i, %i.vd
  %i.zw = fmul reassoc nsz arcp contract afn float %.sroa.033.4.vec.extract.i.i.i, %i.vj
  %i.zx = fadd reassoc nsz arcp contract afn float %i.zw, %i.zv
  %i.zy = fmul reassoc nsz arcp contract afn float %.sroa.033.8.vec.extract.i.i.i, %i.vp
  %i.zz = fadd reassoc nsz arcp contract afn float %i.zx, %i.zy ; 3 uses
  %i.aaa = fmul reassoc nsz arcp contract afn float %.sroa.033.0.vec.extract.i.i.i, %i.vf
  %i.aab = fmul reassoc nsz arcp contract afn float %.sroa.033.4.vec.extract.i.i.i, %i.vl
  %i.aac = fadd reassoc nsz arcp contract afn float %i.aab, %i.aaa
  %i.aad = fmul reassoc nsz arcp contract afn float %.sroa.033.8.vec.extract.i.i.i, %i.vr
  %i.aae = fadd reassoc nsz arcp contract afn float %i.aac, %i.aad ; 2 uses
  %i.aaf = fadd reassoc nsz arcp contract afn float %.sroa.033.4.vec.extract.i.i.i, %.sroa.033.0.vec.extract.i.i.i
  %i.aag = fadd reassoc nsz arcp contract afn float %i.aaf, %.sroa.033.8.vec.extract.i.i.i
  %i.aah = fmul reassoc nsz arcp contract afn float %i.zu, f0x3F84C0A6 ; 2 uses
  %i.aai = fcmp reassoc nsz arcp contract afn ogt float %i.aah, f0x3C111AA7
  br i1 %i.aai, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %_apply_tone_curves.exit.i.i.i
  %i.aaj = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.aah) #27
  br label %bb.cn

bb.cm:                                            ; preds = %_apply_tone_curves.exit.i.i.i
  %i.aak = fmul reassoc nsz arcp contract afn float %i.zu, f0x410137F7
  %i.aal = fadd reassoc nsz arcp contract afn float %i.aak, f0x3E0D3DCB
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.aam = phi reassoc nsz arcp contract afn float [ %i.aaj, %bb.cl ], [ %i.aal, %bb.cm ]
  %i.aan = fcmp reassoc nsz arcp contract afn ogt float %i.zz, f0x3C111AA7
  br i1 %i.aan, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.aao = fmul reassoc nsz arcp contract afn float %i.zz, f0x40F92F69
  %i.aap = fadd reassoc nsz arcp contract afn float %i.aao, f0x3E0D3DCB
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  %i.aaq = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.zz) #27
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.aar = phi reassoc nsz arcp contract afn float [ %i.aaq, %bb.cp ], [ %i.aap, %bb.co ] ; 3 uses
  %i.aas = fmul reassoc nsz arcp contract afn float %i.aae, f0x3F9B2B9B ; 2 uses
  %i.aat = fcmp reassoc nsz arcp contract afn ogt float %i.aas, f0x3C111AA7
  br i1 %i.aat, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.aau = fmul reassoc nsz arcp contract afn float %i.aae, f0x41170A26
  %i.aav = fadd reassoc nsz arcp contract afn float %i.aau, f0x3E0D3DCB
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cq
  %i.aaw = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.aas) #27
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.aax = phi reassoc nsz arcp contract afn float [ %i.aaw, %bb.cs ], [ %i.aav, %bb.cr ]
  %i.aay = fmul reassoc nsz arcp contract afn float %i.aag, 0.000000e+00 ; 3 uses
  %i.aaz = fcmp reassoc nsz arcp contract afn ogt float %i.aay, f0x3C111AA7
  br i1 %i.aaz, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.aba = fadd reassoc nsz arcp contract afn float %i.aay, f0x3E0D3DCB
  br label %dt_RGB_to_Lab.exit.i.i39.i

bb.cv:                                            ; preds = %bb.ct
  %i.abb = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.aay) #27
  br label %dt_RGB_to_Lab.exit.i.i39.i

dt_RGB_to_Lab.exit.i.i39.i:                       ; preds = %bb.cv, %bb.cu
  %i.abc = phi reassoc nsz arcp contract afn float [ %i.abb, %bb.cv ], [ %i.aba, %bb.cu ]
  %i.abd = fmul reassoc nsz arcp contract afn float %i.aar, 1.160000e+02
  %i.abe = fadd reassoc nsz arcp contract afn float %i.abd, -1.600000e+01
  %i.abf = fsub reassoc nsz arcp contract afn float %i.aam, %i.aar
  %i.abg = fsub reassoc nsz arcp contract afn float %i.aax, %i.aar
  %i.abh = insertelement <4 x float> poison, float %i.abe, i64 0
  %i.abi = insertelement <4 x float> %i.abh, float %i.abf, i64 1
  %i.abj = insertelement <4 x float> %i.abi, float %i.abg, i64 2
  %i.abk = insertelement <4 x float> %i.abj, float %i.abc, i64 3
  %i.abl = fmul reassoc nsz arcp contract afn <4 x float> %i.abk, <float 1.000000e+00, float 5.000000e+02, float -2.000000e+02, float 0.000000e+00>
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.wl
  store <4 x float> %i.abl, ptr %i.abm, align 16, !tbaa !34, !alias.scope !202, !noalias !199, !nontemporal !193
  %i.abn = add nuw i64 %.072.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i44.i = icmp eq i64 %i.abn, %i.cp
  br i1 %exitcond.not.i.i44.i, label %process_cmatrix.exit, label %bb.cb

bb.cw:                                            ; preds = %bb.bz
  %i.abo = getelementptr inbounds nuw i8, ptr %.val.i, i64 786496
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %i.abp = load float, ptr %i.abo, align 16, !tbaa !101, !noalias !205
  %i.abq = getelementptr inbounds nuw i8, ptr %.val.i, i64 786512
  %i.abr = load float, ptr %i.abq, align 16, !tbaa !101, !noalias !205
  %i.abs = getelementptr inbounds nuw i8, ptr %.val.i, i64 786528
  %i.abt = load float, ptr %i.abs, align 16, !tbaa !101, !noalias !205
  %i.abu = getelementptr inbounds nuw i8, ptr %.val.i, i64 786500
  %i.abv = load float, ptr %i.abu, align 4, !tbaa !101, !noalias !205
  %i.abw = getelementptr inbounds nuw i8, ptr %.val.i, i64 786516
  %i.abx = load float, ptr %i.abw, align 4, !tbaa !101, !noalias !205
  %i.aby = getelementptr inbounds nuw i8, ptr %.val.i, i64 786532
  %i.abz = load float, ptr %i.aby, align 4, !tbaa !101, !noalias !205
  %i.aca = getelementptr inbounds nuw i8, ptr %.val.i, i64 786504
  %i.acb = load float, ptr %i.aca, align 8, !tbaa !101, !noalias !205
  %i.acc = getelementptr inbounds nuw i8, ptr %.val.i, i64 786520
  %i.acd = load float, ptr %i.acc, align 8, !tbaa !101, !noalias !205
  %i.ace = getelementptr inbounds nuw i8, ptr %.val.i, i64 786536
  %i.acf = load float, ptr %i.ace, align 8, !tbaa !101, !noalias !205
  %.not.i19.i.i = icmp eq i64 %i.cp, 0
  br i1 %.not.i19.i.i, label %process_cmatrix.exit, label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %bb.cw
  %i.acg = getelementptr inbounds nuw i8, ptr %.val.i, i64 48 ; 2 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %.val.i, i64 786688
  %i.aci = load float, ptr %i.acg, align 16, !tbaa !101, !noalias !205
  %i.acj = fcmp reassoc nsz arcp contract afn ult float %i.aci, 0.000000e+00
  %i.ack = getelementptr inbounds nuw i8, ptr %.val.i, i64 786692
  %i.acl = getelementptr inbounds nuw i8, ptr %.val.i, i64 786696
  %i.acm = getelementptr inbounds nuw i8, ptr %.val.i, i64 262192 ; 2 uses
  %i.acn = load float, ptr %i.acm, align 16, !tbaa !101, !noalias !205
  %i.aco = fcmp reassoc nsz arcp contract afn ult float %i.acn, 0.000000e+00
  %i.acp = getelementptr inbounds nuw i8, ptr %.val.i, i64 786700
  %i.acq = getelementptr inbounds nuw i8, ptr %.val.i, i64 786704
  %i.acr = getelementptr inbounds nuw i8, ptr %.val.i, i64 786708
  %i.acs = getelementptr inbounds nuw i8, ptr %.val.i, i64 524336 ; 2 uses
  %i.act = load float, ptr %i.acs, align 16, !tbaa !101, !noalias !205
  %i.acu = fcmp reassoc nsz arcp contract afn ult float %i.act, 0.000000e+00
  %i.acv = getelementptr inbounds nuw i8, ptr %.val.i, i64 786712
  %i.acw = getelementptr inbounds nuw i8, ptr %.val.i, i64 786716
  %i.acx = getelementptr inbounds nuw i8, ptr %.val.i, i64 786720
  %i.acy = extractelement <2 x float> %i.bd, i64 0
  br label %bb.cx

bb.cx:                                            ; preds = %dt_RGB_to_Lab.exit.i24.i.i, %.lr.ph.i20.i.i
  %.038.i.i.i = phi i64 [ 0, %.lr.ph.i20.i.i ], [ %i.ahr, %dt_RGB_to_Lab.exit.i24.i.i ] ; 2 uses
  %i.acz = shl i64 %.038.i.i.i, 2                 ; 2 uses
  %i.ada = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.acz ; 3 uses
  %i.adb = load float, ptr %i.ada, align 4, !tbaa !101, !alias.scope !204, !noalias !203
  %i.adc = fmul reassoc nsz arcp contract afn float %i.adb, %i.bb ; 5 uses
  %i.add = getelementptr inbounds nuw i8, ptr %i.ada, i64 4
  %i.ade = load float, ptr %i.add, align 4, !tbaa !101, !alias.scope !204, !noalias !203
  %i.adf = fmul reassoc nsz arcp contract afn float %i.ade, %i.ba ; 5 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %i.ada, i64 8
  %i.adh = load float, ptr %i.adg, align 4, !tbaa !101, !alias.scope !204, !noalias !203
  %i.adi = fmul reassoc nsz arcp contract afn float %i.adh, %i.acy ; 5 uses
  br i1 %i.acj, label %.sink.split.i.i21.i.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.adj = fcmp reassoc nsz arcp contract afn olt float %i.adc, 1.000000e+00
  br i1 %i.adj, label %bb.cz, label %bb.da, !prof !201

bb.cz:                                            ; preds = %bb.cy
  %i.adk = fcmp reassoc nsz arcp contract afn ogt float %i.adc, 0.000000e+00
  %i.adl = select reassoc nsz arcp contract afn i1 %i.adk, float %i.adc, float 0.000000e+00
  %i.adm = fmul reassoc nnan nsz arcp contract afn float %i.adl, 6.553500e+04 ; 2 uses
  %i.adn = fptosi float %i.adm to i32             ; 2 uses
  %i.ado = uitofp nsz nneg i32 %i.adn to float
  %i.adp = fsub reassoc nnan nsz arcp contract afn float %i.adm, %i.ado
  %i.adq = zext nneg i32 %i.adn to i64
  %i.adr = getelementptr inbounds nuw [4 x i8], ptr %i.acg, i64 %i.adq ; 2 uses
  %i.ads = load float, ptr %i.adr, align 4, !tbaa !101, !noalias !205 ; 2 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adr, i64 4
  %i.adu = load float, ptr %i.adt, align 4, !tbaa !101, !noalias !205
  %i.adv = fsub reassoc nsz arcp contract afn float %i.adu, %i.ads
  %i.adw = fmul reassoc nsz arcp contract afn float %i.adv, %i.adp
  %i.adx = fadd reassoc nsz arcp contract afn float %i.adw, %i.ads
  br label %.sink.split.i.i21.i.i

bb.da:                                            ; preds = %bb.cy
  %i.ady = load float, ptr %i.ack, align 4, !tbaa !101, !noalias !205
  %i.adz = load float, ptr %i.ach, align 16, !tbaa !101, !noalias !205
  %i.aea = fmul reassoc nsz arcp contract afn float %i.adz, %i.adc
  %i.aeb = load float, ptr %i.acl, align 8, !tbaa !101, !noalias !205
  %i.aec = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.aea, float %i.aeb)
  %i.aed = fmul reassoc nsz arcp contract afn float %i.aec, %i.ady
  br label %.sink.split.i.i21.i.i

.sink.split.i.i21.i.i:                            ; preds = %bb.da, %bb.cz, %bb.cx
  %.sroa.024.0.i.i.i = phi nsz float [ %i.adc, %bb.cx ], [ %i.aed, %bb.da ], [ %i.adx, %bb.cz ] ; 4 uses
  br i1 %i.aco, label %.sink.split24.i.i22.i.i, label %bb.db

bb.db:                                            ; preds = %.sink.split.i.i21.i.i
  %i.aee = fcmp reassoc nsz arcp contract afn olt float %i.adf, 1.000000e+00
  br i1 %i.aee, label %bb.dd, label %bb.dc, !prof !201

bb.dc:                                            ; preds = %bb.db
  %i.aef = load float, ptr %i.acq, align 16, !tbaa !101, !noalias !205
  %i.aeg = load float, ptr %i.acp, align 4, !tbaa !101, !noalias !205
  %i.aeh = fmul reassoc nsz arcp contract afn float %i.aeg, %i.adf
  %i.aei = load float, ptr %i.acr, align 4, !tbaa !101, !noalias !205
  %i.aej = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.aeh, float %i.aei)
  %i.aek = fmul reassoc nsz arcp contract afn float %i.aej, %i.aef
end_hunk_1
