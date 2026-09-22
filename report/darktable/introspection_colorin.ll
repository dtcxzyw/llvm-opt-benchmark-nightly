Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorin?download=true
inline.NumInlined: 86
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 22
begin_hunk_0_@legacy_params:bb.a
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
  %i.ba = phi float [ 1.000000e+00, %.thread91 ], [ %i.t, %bb.d ], [ %i.t, %bb.e ] ; 3 uses
  %i.bb = phi float [ 1.000000e+00, %.thread91 ], [ %i.u, %bb.d ], [ %i.u, %bb.e ] ; 4 uses
  %i.bc = phi <2 x float> [ splat (float 1.000000e+00), %.thread91 ], [ %i.s, %bb.d ], [ %i.s, %bb.e ] ; 6 uses
  %i.bd = phi <2 x float> [ splat (float 1.000000e+00), %.thread91 ], [ %i.aa, %bb.d ], [ %i.aa, %bb.e ] ; 9 uses
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
  %.val.i.pre = load ptr, ptr %i.f, align 16, !tbaa !29 ; 36 uses
  br i1 %.not1.i, label %.thread.i, label %.critedge.i

.thread.i:                                        ; preds = %bb.l, %bb.k
  %.val.i = phi ptr [ %.val.i.pre, %bb.l ], [ %i.cb, %bb.k ] ; 53 uses
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
  %i.cs = getelementptr inbounds nuw i8, ptr %.val.i, i64 786592
  %i.ct = getelementptr inbounds nuw i8, ptr %.val.i, i64 786564
  %i.cu = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.ct, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !101, !noalias !191
  %i.cv = tail call <7 x float> @llvm.masked.load.v7f32.p0(ptr nonnull align 16 %i.cq, <7 x i1> <i1 true, i1 false, i1 true, i1 false, i1 false, i1 true, i1 true>, <7 x float> poison), !tbaa !101, !noalias !191 ; 2 uses
  %i.cw = load <3 x float>, ptr %i.cs, align 16, !tbaa !101, !noalias !191 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.val.i, i64 786656
  %i.cy = tail call <6 x float> @llvm.masked.load.v6f32.p0(ptr nonnull align 16 %i.cr, <6 x i1> <i1 true, i1 true, i1 false, i1 false, i1 true, i1 true>, <6 x float> poison), !tbaa !101, !noalias !191 ; 2 uses
  %i.cz = load <2 x float>, ptr %i.cx, align 16, !tbaa !101, !noalias !191
  %i.da = getelementptr inbounds nuw i8, ptr %.val.i, i64 786632
  %i.db = load float, ptr %i.da, align 8, !tbaa !101, !noalias !191
  %i.dc = getelementptr inbounds nuw i8, ptr %.val.i, i64 786648
  %i.dd = load float, ptr %i.dc, align 8, !tbaa !101, !noalias !191
  %i.de = getelementptr inbounds nuw i8, ptr %.val.i, i64 786664
  %i.df = load float, ptr %i.de, align 8, !tbaa !101, !noalias !191
  %.not.i.i.i = icmp eq i64 %i.cp, 0
  br i1 %.not.i.i.i, label %process_cmatrix.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.n
  %6 = shufflevector <2 x float> %i.bc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %7 = shufflevector <4 x float> %6, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 1, i32 0, i32 7>
  %i.dg = shufflevector <3 x float> %i.cw, <3 x float> poison, <7 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dh = shufflevector <7 x float> %i.cv, <7 x float> %i.dg, <4 x i32> <i32 0, i32 5, i32 7, i32 poison>
  %i.di = shufflevector <2 x float> %i.bd, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %i.dj = shufflevector <4 x float> %i.dh, <4 x float> %i.di, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %factor.op.fmul = fmul reassoc nsz arcp contract afn <4 x float> %7, %i.dj
  %8 = shufflevector <2 x float> <float poison, float 1.000000e+00>, <2 x float> %i.bd, <4 x i32> <i32 2, i32 2, i32 2, i32 1>
  %i.dk = shufflevector <3 x float> %i.cw, <3 x float> poison, <7 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dl = shufflevector <7 x float> %i.cv, <7 x float> %i.dk, <4 x i32> <i32 2, i32 6, i32 9, i32 poison>
  %i.dm = insertelement <4 x float> %i.dl, float 1.000000e+00, i64 3
  %factor.op.fmul249 = fmul reassoc nsz arcp contract afn <4 x float> %8, %i.dm
  %i.dn = shufflevector <4 x float> %i.cu, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.do = shufflevector <2 x float> %i.cz, <2 x float> poison, <6 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.dp = shufflevector <6 x float> %i.cy, <6 x float> %i.do, <4 x i32> <i32 0, i32 4, i32 6, i32 poison>
  %i.dq = insertelement <4 x float> %i.dp, float 1.000000e+00, i64 3
  %i.dr = shufflevector <6 x float> %i.cy, <6 x float> %i.do, <4 x i32> <i32 1, i32 5, i32 7, i32 poison>
  %i.ds = insertelement <4 x float> %i.dr, float 1.000000e+00, i64 3
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %dt_RGB_to_Lab.exit.i.i.i
  %.068.i.i.i = phi i64 [ %i.gg, %dt_RGB_to_Lab.exit.i.i.i ], [ 0, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.dt = shl i64 %.068.i.i.i, 2                  ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dt ; 2 uses
  %9 = load <2 x float>, ptr %i.du, align 4, !tbaa !101, !alias.scope !190, !noalias !189
  %10 = load <3 x float>, ptr %i.du, align 4, !tbaa !101, !alias.scope !190, !noalias !189 ; 2 uses
  %11 = shufflevector <3 x float> %10, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 2>
  %i.dv = fmul reassoc nsz arcp contract afn <2 x float> %9, %i.bc ; 2 uses
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 1> ; 2 uses
  %.reass = fmul reassoc nsz arcp contract afn <4 x float> %11, %factor.op.fmul
  %12 = shufflevector <3 x float> %10, <3 x float> poison, <2 x i32> <i32 2, i32 poison>
  %13 = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %12, <4 x i32> <i32 2, i32 2, i32 2, i32 1>
  %i.dx = fmul reassoc nsz arcp contract afn <4 x float> %13, %factor.op.fmul249 ; 2 uses
  %i.dy = shufflevector <2 x float> %i.dv, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.dz = shufflevector <3 x float> %i.cw, <3 x float> %i.dy, <4 x i32> <i32 poison, i32 poison, i32 1, i32 3>
  %i.ea = shufflevector <4 x float> %i.dn, <4 x float> %i.dz, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.eb = fmul reassoc nsz arcp contract afn <4 x float> %i.dw, %i.ea
  %i.ec = fadd reassoc nsz arcp contract afn <4 x float> %i.dw, %i.ea
  %i.ed = shufflevector <4 x float> %i.eb, <4 x float> %i.ec, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.ee = fadd reassoc nsz arcp contract afn <4 x float> %i.ed, %.reass ; 2 uses
  %i.ef = fadd reassoc nsz arcp contract afn <4 x float> %i.ee, %i.dx
  %i.eg = fmul reassoc nsz arcp contract afn <4 x float> %i.ee, %i.dx
  %i.eh = shufflevector <4 x float> %i.ef, <4 x float> %i.eg, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.ei = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.eh, <4 x float> zeroinitializer)
  %i.ej = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ei, <4 x float> splat (float 1.000000e+00)) ; 3 uses
  %.sroa.032.8.vec.extract.i.i.i = extractelement <4 x float> %i.ej, i64 2 ; 4 uses
  %i.ek = fmul reassoc nsz arcp contract afn float %.sroa.032.8.vec.extract.i.i.i, %i.db
  %i.el = fmul reassoc nsz arcp contract afn float %.sroa.032.8.vec.extract.i.i.i, %i.dd
  %i.em = fmul reassoc nsz arcp contract afn float %.sroa.032.8.vec.extract.i.i.i, %i.df
  %i.en = shufflevector <4 x float> %i.ej, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eo = fmul reassoc nsz arcp contract afn <4 x float> %i.en, %i.dq
  %i.ep = shufflevector <4 x float> %i.ej, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.eq = fmul reassoc nsz arcp contract afn <4 x float> %i.ep, %i.ds
  %i.er = fadd reassoc nsz arcp contract afn <4 x float> %i.eq, %i.eo ; 4 uses
  %i.es = extractelement <4 x float> %i.er, i64 0
  %i.et = fadd reassoc nsz arcp contract afn float %i.es, %i.ek ; 2 uses
  %i.eu = extractelement <4 x float> %i.er, i64 1
  %i.ev = fadd reassoc nsz arcp contract afn float %i.eu, %i.el ; 3 uses
  %i.ew = extractelement <4 x float> %i.er, i64 2
  %i.ex = fadd reassoc nsz arcp contract afn float %i.ew, %i.em ; 2 uses
  %i.ey = extractelement <4 x float> %i.er, i64 3
  %i.ez = fadd reassoc nsz arcp contract afn float %i.ey, %.sroa.032.8.vec.extract.i.i.i
  %i.fa = fmul reassoc nsz arcp contract afn float %i.et, f0x3F84C0A6 ; 2 uses
  %i.fb = fcmp reassoc nsz arcp contract afn ogt float %i.fa, f0x3C111AA7
  br i1 %i.fb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i.i.i
  %i.fc = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.fa) #27
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph.i.i.i
  %i.fd = fmul reassoc nsz arcp contract afn float %i.et, f0x410137F7
  %i.fe = fadd reassoc nsz arcp contract afn float %i.fd, f0x3E0D3DCB
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ff = phi reassoc nsz arcp contract afn float [ %i.fc, %bb.o ], [ %i.fe, %bb.p ]
  %i.fg = fcmp reassoc nsz arcp contract afn ogt float %i.ev, f0x3C111AA7
  br i1 %i.fg, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fh = fmul reassoc nsz arcp contract afn float %i.ev, f0x40F92F69
  %i.fi = fadd reassoc nsz arcp contract afn float %i.fh, f0x3E0D3DCB
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.fj = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.ev) #27
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.fk = phi reassoc nsz arcp contract afn float [ %i.fj, %bb.s ], [ %i.fi, %bb.r ] ; 2 uses
  %i.fl = fmul reassoc nsz arcp contract afn float %i.ex, f0x3F9B2B9B ; 2 uses
  %i.fm = fcmp reassoc nsz arcp contract afn ogt float %i.fl, f0x3C111AA7
  br i1 %i.fm, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fn = fmul reassoc nsz arcp contract afn float %i.ex, f0x41170A26
  %i.fo = fadd reassoc nsz arcp contract afn float %i.fn, f0x3E0D3DCB
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.fp = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.fl) #27
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.fq = phi reassoc nsz arcp contract afn float [ %i.fp, %bb.v ], [ %i.fo, %bb.u ]
  %i.fr = fmul reassoc nsz arcp contract afn float %i.ez, 0.000000e+00 ; 3 uses
  %i.fs = fcmp reassoc nsz arcp contract afn ogt float %i.fr, f0x3C111AA7
  br i1 %i.fs, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ft = fadd reassoc nsz arcp contract afn float %i.fr, f0x3E0D3DCB
  br label %dt_RGB_to_Lab.exit.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.fu = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.fr) #27
  br label %dt_RGB_to_Lab.exit.i.i.i

dt_RGB_to_Lab.exit.i.i.i:                         ; preds = %bb.y, %bb.x
  %i.fv = phi reassoc nsz arcp contract afn float [ %i.fu, %bb.y ], [ %i.ft, %bb.x ]
  %i.fw = fmul reassoc nsz arcp contract afn float %i.fk, 1.160000e+02
  %i.fx = insertelement <4 x float> poison, float %i.fw, i64 0
  %i.fy = insertelement <4 x float> %i.fx, float %i.ff, i64 1
  %i.fz = insertelement <4 x float> %i.fy, float %i.fq, i64 2
  %i.ga = insertelement <4 x float> %i.fz, float %i.fv, i64 3
  %i.gb = insertelement <4 x float> <float 1.600000e+01, float poison, float poison, float 0.000000e+00>, float %i.fk, i64 1
  %i.gc = shufflevector <4 x float> %i.gb, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.gd = fsub reassoc nsz arcp contract afn <4 x float> %i.ga, %i.gc
  %i.ge = fmul reassoc nsz arcp contract afn <4 x float> %i.gd, <float 1.000000e+00, float 5.000000e+02, float -2.000000e+02, float 0.000000e+00>
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dt
  store <4 x float> %i.ge, ptr %i.gf, align 16, !tbaa !34, !alias.scope !192, !noalias !190, !nontemporal !193
  %i.gg = add nuw i64 %.068.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.gg, %i.cp
  br i1 %exitcond.not.i.i.i, label %process_cmatrix.exit, label %.lr.ph.i.i.i

bb.z:                                             ; preds = %bb.m
  %i.gh = getelementptr inbounds nuw i8, ptr %.val.i, i64 786496
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  %i.gi = load float, ptr %i.gh, align 16, !tbaa !101, !noalias !196
  %i.gj = getelementptr inbounds nuw i8, ptr %.val.i, i64 786512
  %i.gk = load float, ptr %i.gj, align 16, !tbaa !101, !noalias !196
  %i.gl = getelementptr inbounds nuw i8, ptr %.val.i, i64 786528
  %i.gm = load float, ptr %i.gl, align 16, !tbaa !101, !noalias !196
  %i.gn = getelementptr inbounds nuw i8, ptr %.val.i, i64 786500
  %i.go = getelementptr inbounds nuw i8, ptr %.val.i, i64 786516
  %i.gp = load float, ptr %i.go, align 4, !tbaa !101, !noalias !196
  %i.gq = getelementptr inbounds nuw i8, ptr %.val.i, i64 786532
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !101, !noalias !196
  %i.gs = load <2 x float>, ptr %i.gn, align 4, !tbaa !101, !noalias !196
  %i.gt = getelementptr inbounds nuw i8, ptr %.val.i, i64 786520
  %i.gu = load float, ptr %i.gt, align 8, !tbaa !101, !noalias !196
  %i.gv = getelementptr inbounds nuw i8, ptr %.val.i, i64 786536
  %i.gw = load float, ptr %i.gv, align 8, !tbaa !101, !noalias !196
  %.not.i17.i.i = icmp eq i64 %i.cp, 0
  br i1 %.not.i17.i.i, label %process_cmatrix.exit, label %.lr.ph.i18.i.i.preheader

.lr.ph.i18.i.i.preheader:                         ; preds = %bb.z
  %i.gx = shufflevector <2 x float> %i.bc, <2 x float> %i.bd, <2 x i32> <i32 1, i32 2>
  br label %.lr.ph.i18.i.i

.lr.ph.i18.i.i:                                   ; preds = %.lr.ph.i18.i.i.preheader, %dt_RGB_to_Lab.exit.i19.i.i
  %.036.i.i.i = phi i64 [ %i.jf, %dt_RGB_to_Lab.exit.i19.i.i ], [ 0, %.lr.ph.i18.i.i.preheader ] ; 2 uses
  %i.gy = shl i64 %.036.i.i.i, 2                  ; 2 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.gy ; 2 uses
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !101, !alias.scope !195, !noalias !194
  %i.hb = fmul reassoc nsz arcp contract afn float %i.ha, %i.bb ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  %i.hd = fmul reassoc nsz arcp contract afn float %i.hb, %i.gi
  %i.he = load <2 x float>, ptr %i.hc, align 4, !tbaa !101, !alias.scope !195, !noalias !194
  %i.hf = fmul reassoc nsz arcp contract afn <2 x float> %i.he, %i.gx ; 3 uses
  %i.hg = fmul reassoc nsz arcp contract afn <2 x float> %i.hf, %i.gs ; 2 uses
  %i.hh = extractelement <2 x float> %i.hg, i64 0
  %i.hi = fadd reassoc nsz arcp contract afn float %i.hh, %i.hd
  %i.hj = extractelement <2 x float> %i.hg, i64 1
  %i.hk = fadd reassoc nsz arcp contract afn float %i.hi, %i.hj ; 2 uses
  %i.hl = fmul reassoc nsz arcp contract afn float %i.hb, %i.gk
  %i.hm = extractelement <2 x float> %i.hf, i64 0 ; 3 uses
  %i.hn = fmul reassoc nsz arcp contract afn float %i.hm, %i.gp
  %i.ho = fadd reassoc nsz arcp contract afn float %i.hn, %i.hl
  %i.hp = extractelement <2 x float> %i.hf, i64 1 ; 3 uses
  %i.hq = fmul reassoc nsz arcp contract afn float %i.hp, %i.gu
  %i.hr = fadd reassoc nsz arcp contract afn float %i.ho, %i.hq ; 3 uses
  %i.hs = fmul reassoc nsz arcp contract afn float %i.hb, %i.gm
  %i.ht = fmul reassoc nsz arcp contract afn float %i.hm, %i.gr
  %i.hu = fadd reassoc nsz arcp contract afn float %i.ht, %i.hs
  %i.hv = fmul reassoc nsz arcp contract afn float %i.hp, %i.gw
  %i.hw = fadd reassoc nsz arcp contract afn float %i.hu, %i.hv ; 2 uses
  %i.hx = fadd reassoc nsz arcp contract afn float %i.hm, %i.hb
  %i.hy = fadd reassoc nsz arcp contract afn float %i.hx, %i.hp
  %i.hz = fmul reassoc nsz arcp contract afn float %i.hk, f0x3F84C0A6 ; 2 uses
  %i.ia = fcmp reassoc nsz arcp contract afn ogt float %i.hz, f0x3C111AA7
  br i1 %i.ia, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i18.i.i
  %i.ib = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.hz) #27
  br label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.i18.i.i
  %i.ic = fmul reassoc nsz arcp contract afn float %i.hk, f0x410137F7
  %i.id = fadd reassoc nsz arcp contract afn float %i.ic, f0x3E0D3DCB
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ie = phi reassoc nsz arcp contract afn float [ %i.ib, %bb.aa ], [ %i.id, %bb.ab ]
  %i.if = fcmp reassoc nsz arcp contract afn ogt float %i.hr, f0x3C111AA7
  br i1 %i.if, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ig = fmul reassoc nsz arcp contract afn float %i.hr, f0x40F92F69
  %i.ih = fadd reassoc nsz arcp contract afn float %i.ig, f0x3E0D3DCB
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.ii = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.hr) #27
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ij = phi reassoc nsz arcp contract afn float [ %i.ii, %bb.ae ], [ %i.ih, %bb.ad ] ; 2 uses
  %i.ik = fmul reassoc nsz arcp contract afn float %i.hw, f0x3F9B2B9B ; 2 uses
  %i.il = fcmp reassoc nsz arcp contract afn ogt float %i.ik, f0x3C111AA7
  br i1 %i.il, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.im = fmul reassoc nsz arcp contract afn float %i.hw, f0x41170A26
  %i.in = fadd reassoc nsz arcp contract afn float %i.im, f0x3E0D3DCB
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.io = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.ik) #27
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ip = phi reassoc nsz arcp contract afn float [ %i.io, %bb.ah ], [ %i.in, %bb.ag ]
  %i.iq = fmul reassoc nsz arcp contract afn float %i.hy, 0.000000e+00 ; 3 uses
  %i.ir = fcmp reassoc nsz arcp contract afn ogt float %i.iq, f0x3C111AA7
  br i1 %i.ir, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.is = fadd reassoc nsz arcp contract afn float %i.iq, f0x3E0D3DCB
end_hunk_0
