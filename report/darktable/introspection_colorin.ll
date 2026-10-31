Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorin?download=true
inline.NumInlined: 86
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 22
begin_hunk_0_@legacy_params:bb.a
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !139
  %i.bz = getelementptr inbounds nuw i8, ptr %calloc241, i64 528
  store i32 3, ptr %i.bz, align 4, !tbaa !140
  %i.ca = getelementptr inbounds nuw i8, ptr %calloc241, i64 532
  store i8 0, ptr %i.ca, align 4, !tbaa !34
  br label %.sink.split

bb.cl:                                            ; preds = %bb.a
  %calloc242 = tail call dereferenceable_or_null(1044) ptr @calloc(i64 1, i64 1044) ; 8 uses
  %i.cb = load i32, ptr %1, align 4, !tbaa !147
  store i32 %i.cb, ptr %calloc242, align 4, !tbaa !136
  %i.cc = getelementptr inbounds nuw i8, ptr %calloc242, i64 4
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ce = tail call i64 @dt_strlcpy_to_fixed(ptr noundef nonnull %i.cc, ptr noundef nonnull %i.cd, i64 noundef 512) #18 ; 0 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.cg = getelementptr inbounds nuw i8, ptr %calloc242, i64 516
  %i.ch = getelementptr inbounds nuw i8, ptr %calloc242, i64 528 ; 3 uses
  %i.ci = load <4 x i32>, ptr %i.cf, align 4, !tbaa !33
  store <4 x i32> %i.ci, ptr %i.cg, align 4, !tbaa !33
  %i.cj = getelementptr inbounds nuw i8, ptr %calloc242, i64 532 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.cl = tail call i64 @dt_strlcpy_to_fixed(ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ck, i64 noundef 512) #18 ; 0 uses
  %i.cm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 216), align 8, !tbaa !78
  %.01520.i = load ptr, ptr %i.cm, align 8, !tbaa !79 ; 2 uses
  %.not21.i = icmp eq ptr %.01520.i, null
  br i1 %.not21.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.cl, %.critedge.i
  %.01522.i = phi ptr [ %.015.i, %.critedge.i ], [ %.01520.i, %bb.cl ] ; 2 uses
  %i.cn = load ptr, ptr %.01522.i, align 8, !tbaa !81 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 1060
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !83
  %i.cq = icmp sgt i32 %i.cp, -1
  br i1 %i.cq, label %bb.cm, label %.critedge.i

bb.cm:                                            ; preds = %.lr.ph.i
  %i.cr = load i32, ptr %i.ch, align 4, !tbaa !33 ; 2 uses
  %i.cs = load i32, ptr %i.cn, align 8, !tbaa !84
  %i.ct = icmp eq i32 %i.cr, %i.cs
  br i1 %i.ct, label %bb.cn, label %.critedge.i

bb.cn:                                            ; preds = %bb.cm
  %.not17.i = icmp eq i32 %i.cr, 0
  br i1 %.not17.i, label %bb.co, label %.sink.split

bb.co:                                            ; preds = %bb.cn
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cv = tail call i32 @dt_colorspaces_is_profile_equal(ptr noundef nonnull %i.cu, ptr noundef nonnull %i.cj) #18
  %.not18.i = icmp eq i32 %i.cv, 0
  br i1 %.not18.i, label %.critedge.i, label %.sink.split

.critedge.i:                                      ; preds = %bb.co, %bb.cm, %.lr.ph.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.01522.i, i64 8
  %.015.i = load ptr, ptr %i.cw, align 8, !tbaa !79 ; 2 uses
  %.not.i = icmp eq ptr %.015.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.critedge.i, %bb.cl
  %i.cx = load i32, ptr %i.ch, align 4, !tbaa !33
  %i.cy = tail call ptr @dt_colorspaces_get_name(i32 noundef %i.cx, ptr noundef nonnull %i.cj) #18
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.114, ptr noundef %i.cy) #18
  store i32 4, ptr %i.ch, align 4, !tbaa !33
  store i8 0, ptr %i.cj, align 4, !tbaa !34
  br label %.sink.split

bb.cp:                                            ; preds = %bb.a
  %i.cz = tail call noalias dereferenceable_or_null(1044) ptr @malloc(i64 noundef 1044) #26 ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1044) %i.cz, ptr noundef nonnull align 4 dereferenceable(1044) %1, i64 1044, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 528 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 532 ; 3 uses
  %i.dc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 216), align 8, !tbaa !78
  %.01520.i226 = load ptr, ptr %i.dc, align 8, !tbaa !79 ; 2 uses
  %.not21.i227 = icmp eq ptr %.01520.i226, null
  br i1 %.not21.i227, label %._crit_edge.i233, label %.lr.ph.i228

.lr.ph.i228:                                      ; preds = %bb.cp, %.critedge.i230
  %.01522.i229 = phi ptr [ %.015.i231, %.critedge.i230 ], [ %.01520.i226, %bb.cp ] ; 2 uses
  %i.dd = load ptr, ptr %.01522.i229, align 8, !tbaa !81 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1060
  %i.df = load i32, ptr %i.de, align 4, !tbaa !83
  %i.dg = icmp sgt i32 %i.df, -1
  br i1 %i.dg, label %bb.cq, label %.critedge.i230

bb.cq:                                            ; preds = %.lr.ph.i228
  %i.dh = load i32, ptr %i.da, align 4, !tbaa !33 ; 2 uses
  %i.di = load i32, ptr %i.dd, align 8, !tbaa !84
  %i.dj = icmp eq i32 %i.dh, %i.di
  br i1 %i.dj, label %bb.cr, label %.critedge.i230

bb.cr:                                            ; preds = %bb.cq
  %.not17.i234 = icmp eq i32 %i.dh, 0
  br i1 %.not17.i234, label %bb.cs, label %.sink.split

bb.cs:                                            ; preds = %bb.cr
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.dl = tail call i32 @dt_colorspaces_is_profile_equal(ptr noundef nonnull %i.dk, ptr noundef nonnull %i.db) #18
  %.not18.i235 = icmp eq i32 %i.dl, 0
  br i1 %.not18.i235, label %.critedge.i230, label %.sink.split

.critedge.i230:                                   ; preds = %bb.cs, %bb.cq, %.lr.ph.i228
  %i.dm = getelementptr inbounds nuw i8, ptr %.01522.i229, i64 8
  %.015.i231 = load ptr, ptr %i.dm, align 8, !tbaa !79 ; 2 uses
  %.not.i232 = icmp eq ptr %.015.i231, null
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
  %i.s = fptrunc reassoc nsz arcp contract afn <2 x double> %i.r to <2 x float> ; 5 uses
  %i.t = extractelement <2 x float> %i.s, i64 1   ; 3 uses
  %i.u = extractelement <2 x float> %i.s, i64 0   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 2432
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 2464
  %i.x = load <2 x double>, ptr %i.v, align 16, !tbaa !186 ; 2 uses
  %i.y = load <2 x double>, ptr %i.w, align 16, !tbaa !186
  %i.z = fdiv reassoc nsz arcp contract afn <2 x double> %i.x, %i.y
  %i.aa = fptrunc reassoc nsz arcp contract afn <2 x double> %i.z to <2 x float> ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !100 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 256 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 272 ; 2 uses
  %i.af = shufflevector <2 x double> %i.p, <2 x double> %i.x, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ag = fptrunc reassoc nsz arcp contract afn <4 x double> %i.af to <4 x float>
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
  %i.at = fpext reassoc nsz arcp contract afn <2 x float> %i.as to <2 x double> ; 2 uses
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
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !101, !alias.scope !190
  %i.ed = fmul reassoc nsz arcp contract afn float %i.ec, %i.dt ; 3 uses
  %i.ee = fmul reassoc nsz arcp contract afn float %i.ed, %i.cy
  %i.ef = load <2 x float>, ptr %i.ea, align 4, !tbaa !101, !alias.scope !190
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
  %.sroa.032.8.vec.insert.i.i.i235 = shufflevector <4 x float> %.sroa.032.0.vec.insert.i.i.i, <4 x float> %i.ev, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.ew = fadd reassoc nsz arcp contract afn float %i.ej, %i.eh
  %i.ex = fadd reassoc nsz arcp contract afn float %i.ew, %i.ed
  %i.ey = fmul reassoc nsz arcp contract afn float %i.ex, 0.000000e+00
  %.sroa.032.12.vec.insert.i.i.i = insertelement <4 x float> %.sroa.032.8.vec.insert.i.i.i235, float %i.ey, i64 3
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
end_hunk_0
