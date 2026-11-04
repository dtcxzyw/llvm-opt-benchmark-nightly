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
  %i.bc = phi <2 x float> [ splat (float 1.000000e+00), %.thread91 ], [ %i.s, %bb.d ], [ %i.s, %bb.e ]
  %i.bd = phi <2 x float> [ splat (float 1.000000e+00), %.thread91 ], [ %i.aa, %bb.d ], [ %i.aa, %bb.e ] ; 8 uses
  %.fr = freeze <2 x float> %i.bc                 ; 4 uses
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
  %i.eg = fmul reassoc nsz arcp contract afn <2 x float> %i.ef, %.fr ; 4 uses
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
  store <4 x float> %i.gw, ptr %i.gx, align 16, !tbaa !34, !alias.scope !192, !nontemporal !193
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
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !101, !noalias !196
  %i.hj = getelementptr inbounds nuw i8, ptr %.val.i, i64 786532
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !101, !noalias !196
  %i.hl = getelementptr inbounds nuw i8, ptr %.val.i, i64 786504
  %i.hm = load float, ptr %i.hl, align 8, !tbaa !101, !noalias !196
  %i.hn = getelementptr inbounds nuw i8, ptr %.val.i, i64 786520
  %i.ho = load float, ptr %i.hn, align 8, !tbaa !101, !noalias !196
  %i.hp = getelementptr inbounds nuw i8, ptr %.val.i, i64 786536
  %i.hq = load float, ptr %i.hp, align 8, !tbaa !101, !noalias !196
  %.not.i17.i.i = icmp eq i64 %i.cp, 0
  br i1 %.not.i17.i.i, label %process_cmatrix.exit, label %.lr.ph.i18.i.i.preheader

.lr.ph.i18.i.i.preheader:                         ; preds = %bb.z
  %i.hr = extractelement <2 x float> %i.bd, i64 0
  br label %.lr.ph.i18.i.i

.lr.ph.i18.i.i:                                   ; preds = %.lr.ph.i18.i.i.preheader, %dt_RGB_to_Lab.exit.i19.i.i
  %.036.i.i.i = phi i64 [ %i.jz, %dt_RGB_to_Lab.exit.i19.i.i ], [ 0, %.lr.ph.i18.i.i.preheader ] ; 2 uses
  %i.hs = shl i64 %.036.i.i.i, 2                  ; 2 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hs ; 3 uses
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !101, !alias.scope !195
  %i.hv = fmul reassoc nsz arcp contract afn float %i.hu, %i.bb ; 4 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !101, !alias.scope !195
  %i.hy = fmul reassoc nsz arcp contract afn float %i.hx, %i.ba ; 4 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !101, !alias.scope !195
  %i.ib = fmul reassoc nsz arcp contract afn float %i.ia, %i.hr ; 4 uses
  %i.ic = fmul reassoc nsz arcp contract afn float %i.hv, %i.ha
  %i.id = fmul reassoc nsz arcp contract afn float %i.hy, %i.hg
  %i.ie = fadd reassoc nsz arcp contract afn float %i.id, %i.ic
  %i.if = fmul reassoc nsz arcp contract afn float %i.ib, %i.hm
  %i.ig = fadd reassoc nsz arcp contract afn float %i.ie, %i.if ; 2 uses
  %i.ih = fmul reassoc nsz arcp contract afn float %i.hv, %i.hc
  %i.ii = fmul reassoc nsz arcp contract afn float %i.hy, %i.hi
  %i.ij = fadd reassoc nsz arcp contract afn float %i.ii, %i.ih
  %i.ik = fmul reassoc nsz arcp contract afn float %i.ib, %i.ho
  %i.il = fadd reassoc nsz arcp contract afn float %i.ij, %i.ik ; 3 uses
  %i.im = fmul reassoc nsz arcp contract afn float %i.hv, %i.he
  %i.in = fmul reassoc nsz arcp contract afn float %i.hy, %i.hk
  %i.io = fadd reassoc nsz arcp contract afn float %i.in, %i.im
  %i.ip = fmul reassoc nsz arcp contract afn float %i.ib, %i.hq
  %i.iq = fadd reassoc nsz arcp contract afn float %i.io, %i.ip ; 2 uses
  %i.ir = fadd reassoc nsz arcp contract afn float %i.hy, %i.hv
  %i.is = fadd reassoc nsz arcp contract afn float %i.ir, %i.ib
  %i.it = fmul reassoc nsz arcp contract afn float %i.ig, f0x3F84C0A6 ; 2 uses
  %i.iu = fcmp reassoc nsz arcp contract afn ogt float %i.it, f0x3C111AA7
  br i1 %i.iu, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i18.i.i
  %i.iv = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.it) #27
  br label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.i18.i.i
  %i.iw = fmul reassoc nsz arcp contract afn float %i.ig, f0x410137F7
  %i.ix = fadd reassoc nsz arcp contract afn float %i.iw, f0x3E0D3DCB
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.iy = phi reassoc nsz arcp contract afn float [ %i.iv, %bb.aa ], [ %i.ix, %bb.ab ]
  %i.iz = fcmp reassoc nsz arcp contract afn ogt float %i.il, f0x3C111AA7
  br i1 %i.iz, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ja = fmul reassoc nsz arcp contract afn float %i.il, f0x40F92F69
  %i.jb = fadd reassoc nsz arcp contract afn float %i.ja, f0x3E0D3DCB
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.jc = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.il) #27
  br label %bb.af

end_hunk_0
begin_hunk_1_@process:bb.a
  %brmerge = select i1 %min.iters.check216, i1 true, i1 %i.aiy
  br i1 %brmerge, label %scalar.ph215.preheader, label %vector.body224

vector.body224:                                   ; preds = %.lr.ph.us.i, %vector.body224
  %index225 = phi i64 [ %index.next232, %vector.body224 ], [ 0, %.lr.ph.us.i ]
  %vec.ind = phi <8 x i64> [ %vec.ind.next, %vector.body224 ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %.lr.ph.us.i ] ; 2 uses
  %i.ajh = shl nuw nsw <8 x i64> %vec.ind, splat (i64 2) ; 2 uses
  %i.aji = extractelement <8 x i64> %i.ajh, i64 0
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %i.ajf, i64 %i.aji
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %i.ajg, <8 x i64> %i.ajh ; 3 uses
  %wide.vec226 = load <32 x float>, ptr %i.ajj, align 4, !tbaa !101, !alias.scope !207 ; 3 uses
  %strided.vec227 = shufflevector <32 x float> %wide.vec226, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 2 uses
  %strided.vec228 = shufflevector <32 x float> %wide.vec226, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 3 uses
  %strided.vec229 = shufflevector <32 x float> %wide.vec226, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 4 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec227, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !101, !alias.scope !208, !noalias !207
  %wide.gep230 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4 ; 2 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec228, <8 x ptr> align 4 %wide.gep230, <8 x i1> splat (i1 true)), !tbaa !101, !alias.scope !208, !noalias !207
  %wide.gep231 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8 ; 2 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec229, <8 x ptr> align 4 %wide.gep231, <8 x i1> splat (i1 true)), !tbaa !101, !alias.scope !208, !noalias !207
  %i.ajk = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec228, %strided.vec227
  %i.ajl = fadd reassoc nsz arcp contract afn <8 x float> %i.ajk, %strided.vec229 ; 3 uses
  %i.ajm = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.ajl, zeroinitializer
  %i.ajn = fdiv reassoc nsz arcp contract afn <8 x float> %strided.vec229, %i.ajl ; 2 uses
  %i.ajo = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.ajn, splat (float 5.000000e-01)
  %i.ajp = and <8 x i1> %i.ajm, %i.ajo            ; 2 uses
  %i.ajq = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ajn, splat (float 2.000000e+00)
  %i.ajr = fadd reassoc nnan nsz arcp contract afn <8 x float> %i.ajq, splat (float -1.000000e+00)
  %i.ajs = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ajl, splat (float 2.000000e+00)
  %i.ajt = tail call reassoc nnan nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ajs, <8 x float> splat (float 1.000000e+00))
  %i.aju = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ajt, splat (float 1.100000e-01)
  %i.ajv = fmul reassoc nsz arcp contract afn <8 x float> %i.aju, %i.ajr ; 2 uses
  %i.ajw = fadd reassoc nsz arcp contract afn <8 x float> %i.ajv, %strided.vec228
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ajw, <8 x ptr> align 4 %wide.gep230, <8 x i1> %i.ajp), !tbaa !101, !alias.scope !208, !noalias !207
  %i.ajx = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec229, %i.ajv
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ajx, <8 x ptr> align 4 %wide.gep231, <8 x i1> %i.ajp), !tbaa !101, !alias.scope !208, !noalias !207
  %index.next232 = add nuw i64 %index225, 8       ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.ajy = icmp eq i64 %index.next232, %n.vec223
  br i1 %i.ajy, label %scalar.ph215.preheader, label %vector.body224, !llvm.loop !174

scalar.ph215.preheader:                           ; preds = %vector.body224, %.lr.ph.us.i
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.us.i ], [ %n.vec223, %vector.body224 ]
  br label %scalar.ph215

scalar.ph215:                                     ; preds = %scalar.ph215.preheader, %_apply_blue_mapping.exit.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_apply_blue_mapping.exit.us.i ], [ %indvars.iv.i.ph, %scalar.ph215.preheader ] ; 2 uses
  %i.ajz = shl nuw nsw i64 %indvars.iv.i, 2       ; 2 uses
  %i.aka = getelementptr inbounds nuw [4 x i8], ptr %i.ajf, i64 %i.ajz ; 3 uses
  %i.akb = getelementptr inbounds nuw [4 x i8], ptr %i.ajg, i64 %i.ajz ; 3 uses
  %i.akc = load float, ptr %i.aka, align 4, !tbaa !101 ; 2 uses
  store float %i.akc, ptr %i.akb, align 4, !tbaa !101
  %i.akd = getelementptr inbounds nuw i8, ptr %i.aka, i64 4
  %i.ake = load float, ptr %i.akd, align 4, !tbaa !101 ; 3 uses
  %i.akf = getelementptr inbounds nuw i8, ptr %i.akb, i64 4 ; 2 uses
  store float %i.ake, ptr %i.akf, align 4, !tbaa !101
  %i.akg = getelementptr inbounds nuw i8, ptr %i.aka, i64 8
  %i.akh = load float, ptr %i.akg, align 4, !tbaa !101 ; 4 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akb, i64 8 ; 2 uses
  store float %i.akh, ptr %i.aki, align 4, !tbaa !101
  %i.akj = fadd reassoc nsz arcp contract afn float %i.ake, %i.akc
  %i.akk = fadd reassoc nsz arcp contract afn float %i.akj, %i.akh ; 3 uses
  %i.akl = fcmp reassoc nsz arcp contract afn ogt float %i.akk, 0.000000e+00
  br i1 %i.akl, label %bb.du, label %_apply_blue_mapping.exit.us.i

bb.du:                                            ; preds = %scalar.ph215
  %i.akm = fdiv reassoc nsz arcp contract afn float %i.akh, %i.akk ; 2 uses
  %i.akn = fcmp reassoc nsz arcp contract afn ogt float %i.akm, 5.000000e-01
  br i1 %i.akn, label %bb.dv, label %_apply_blue_mapping.exit.us.i

bb.dv:                                            ; preds = %bb.du
  %i.ako = fmul reassoc nnan nsz arcp contract afn float %i.akm, 2.000000e+00
  %i.akp = fadd reassoc nnan nsz arcp contract afn float %i.ako, -1.000000e+00
  %i.akq = fmul reassoc nnan nsz arcp contract afn float %i.akk, 2.000000e+00
  %i.akr = tail call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.akq, float 1.000000e+00)
  %i.aks = fmul reassoc nnan nsz arcp contract afn float %i.akr, 1.100000e-01
  %i.akt = fmul reassoc nsz arcp contract afn float %i.aks, %i.akp ; 2 uses
  %i.aku = fadd reassoc nsz arcp contract afn float %i.akt, %i.ake
  store float %i.aku, ptr %i.akf, align 4, !tbaa !101
  %i.akv = fsub reassoc nsz arcp contract afn float %i.akh, %i.akt
  store float %i.akv, ptr %i.aki, align 4, !tbaa !101
  br label %_apply_blue_mapping.exit.us.i

_apply_blue_mapping.exit.us.i:                    ; preds = %bb.dv, %bb.du, %scalar.ph215
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %scalar.ph215, !llvm.loop !175

.lr.ph4.us.preheader.i:                           ; preds = %._crit_edge.us.i
  %i.akw = load ptr, ptr %i.aiq, align 32, !tbaa !106
  tail call void @cmsDoTransform(ptr noundef %i.akw, ptr noundef nonnull %i.ajg, ptr noundef nonnull %i.ajg, i32 noundef %.8.val.fr.i) #18
  br i1 %i.ajc, label %.lr.ph4.us.i.epil.preheader, label %.lr.ph4.us.i

.lr.ph4.us.i:                                     ; preds = %.lr.ph4.us.preheader.i, %.lr.ph4.us.i
  %indvars.iv22.i = phi i64 [ %indvars.iv.next23.i.3, %.lr.ph4.us.i ], [ 0, %.lr.ph4.us.preheader.i ] ; 5 uses
  %niter257 = phi i64 [ %niter257.next.3, %.lr.ph4.us.i ], [ 0, %.lr.ph4.us.preheader.i ]
  %.idx.i = shl nuw nsw i64 %indvars.iv22.i, 4
  %i.akx = getelementptr inbounds nuw i8, ptr %i.ajg, i64 %.idx.i ; 2 uses
  %.val.i.us.i = load <4 x float>, ptr %i.akx, align 16, !tbaa !34
  %i.aky = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.i, <4 x float> zeroinitializer)
  %i.akz = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aky, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.akz, ptr %i.akx, align 16, !tbaa !34
  %indvars.iv.next23.i = shl i64 %indvars.iv22.i, 4
  %i.ala = getelementptr inbounds nuw i8, ptr %i.ajg, i64 %indvars.iv.next23.i
  %i.alb = getelementptr inbounds nuw i8, ptr %i.ala, i64 16 ; 2 uses
  %.val.i.us.i.1 = load <4 x float>, ptr %i.alb, align 16, !tbaa !34
  %i.alc = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.i.1, <4 x float> zeroinitializer)
  %i.ald = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.alc, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.ald, ptr %i.alb, align 16, !tbaa !34
  %indvars.iv.next23.i.1 = shl i64 %indvars.iv22.i, 4
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ajg, i64 %indvars.iv.next23.i.1
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ale, i64 32 ; 2 uses
  %.val.i.us.i.2 = load <4 x float>, ptr %i.alf, align 16, !tbaa !34
  %i.alg = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.i.2, <4 x float> zeroinitializer)
  %i.alh = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.alg, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.alh, ptr %i.alf, align 16, !tbaa !34
  %indvars.iv.next23.i.2 = shl i64 %indvars.iv22.i, 4
  %i.ali = getelementptr inbounds nuw i8, ptr %i.ajg, i64 %indvars.iv.next23.i.2
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ali, i64 48 ; 2 uses
  %.val.i.us.i.3 = load <4 x float>, ptr %i.alj, align 16, !tbaa !34
  %i.alk = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.i.3, <4 x float> zeroinitializer)
  %i.all = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.alk, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.all, ptr %i.alj, align 16, !tbaa !34
  %indvars.iv.next23.i.3 = add nuw nsw i64 %indvars.iv22.i, 4 ; 2 uses
  %niter257.next.3 = add i64 %niter257, 4         ; 2 uses
  %niter257.ncmp.3 = icmp eq i64 %niter257.next.3, %unroll_iter256
  br i1 %niter257.ncmp.3, label %._crit_edge5.us.i.loopexit.unr-lcssa, label %.lr.ph4.us.i

._crit_edge5.us.i.loopexit.unr-lcssa:             ; preds = %.lr.ph4.us.i
  br i1 %lcmp.mod254.not, label %._crit_edge5.us.i, label %.lr.ph4.us.i.epil.preheader

.lr.ph4.us.i.epil.preheader:                      ; preds = %._crit_edge5.us.i.loopexit.unr-lcssa, %.lr.ph4.us.preheader.i
  %indvars.iv22.i.epil.init = phi i64 [ 0, %.lr.ph4.us.preheader.i ], [ %indvars.iv.next23.i.3, %._crit_edge5.us.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod255)
  br label %.lr.ph4.us.i.epil

.lr.ph4.us.i.epil:                                ; preds = %.lr.ph4.us.i.epil, %.lr.ph4.us.i.epil.preheader
  %indvars.iv22.i.epil = phi i64 [ %indvars.iv22.i.epil.init, %.lr.ph4.us.i.epil.preheader ], [ %indvars.iv.next23.i.epil, %.lr.ph4.us.i.epil ] ; 2 uses
  %epil.iter253 = phi i64 [ 0, %.lr.ph4.us.i.epil.preheader ], [ %epil.iter253.next, %.lr.ph4.us.i.epil ]
  %.idx.i.epil = shl nuw nsw i64 %indvars.iv22.i.epil, 4
  %i.alm = getelementptr inbounds nuw i8, ptr %i.ajg, i64 %.idx.i.epil ; 2 uses
  %.val.i.us.i.epil = load <4 x float>, ptr %i.alm, align 16, !tbaa !34
  %i.aln = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.i.epil, <4 x float> zeroinitializer)
  %i.alo = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aln, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.alo, ptr %i.alm, align 16, !tbaa !34
  %indvars.iv.next23.i.epil = add nuw nsw i64 %indvars.iv22.i.epil, 1
  %epil.iter253.next = add i64 %epil.iter253, 1   ; 2 uses
  %epil.iter253.cmp.not = icmp eq i64 %epil.iter253.next, %xtraiter252
  br i1 %epil.iter253.cmp.not, label %._crit_edge5.us.i, label %.lr.ph4.us.i.epil, !llvm.loop !176

._crit_edge5.us.i:                                ; preds = %._crit_edge5.us.i.loopexit.unr-lcssa, %.lr.ph4.us.i.epil, %._crit_edge.us.i
  %.sink.in.i = phi ptr [ %i.ais, %._crit_edge.us.i ], [ %i.air, %.lr.ph4.us.i.epil ], [ %i.air, %._crit_edge5.us.i.loopexit.unr-lcssa ]
  %.sink.i = load ptr, ptr %.sink.in.i, align 8, !tbaa !212
  tail call void @cmsDoTransform(ptr noundef %.sink.i, ptr noundef nonnull %i.ajg, ptr noundef nonnull %i.ajg, i32 noundef %.8.val.fr.i) #18
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1 ; 2 uses
  %exitcond31.not.i = icmp eq i64 %indvars.iv.next28.i, %wide.trip.count45.i
  br i1 %exitcond31.not.i, label %process_lcms2_bm.exit, label %.lr.ph.us.i

._crit_edge.us.i:                                 ; preds = %_apply_blue_mapping.exit.us.i
  %i.alp = load ptr, ptr %i.aip, align 16, !tbaa !105
  %.not.us.i = icmp eq ptr %i.alp, null
  br i1 %.not.us.i, label %._crit_edge5.us.i, label %.lr.ph4.us.preheader.i

.lr.ph8.split.split.i:                            ; preds = %.lr.ph8.i, %bb.dx
  %indvars.iv42.i = phi i64 [ %indvars.iv.next43.i, %bb.dx ], [ 0, %.lr.ph8.i ]
  %i.alq = load ptr, ptr %i.aip, align 16, !tbaa !105
  %.not.i77 = icmp eq ptr %i.alq, null
  br i1 %.not.i77, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %.lr.ph8.split.split.i
  %i.alr = load ptr, ptr %i.aiq, align 32, !tbaa !106
  tail call void @cmsDoTransform(ptr noundef %i.alr, ptr noundef %3, ptr noundef %3, i32 noundef 0) #18
  br label %bb.dx

bb.dx:                                            ; preds = %.lr.ph8.split.split.i, %bb.dw
  %.sink49.in.i = phi ptr [ %i.air, %bb.dw ], [ %i.ais, %.lr.ph8.split.split.i ]
  %.sink49.i = load ptr, ptr %.sink49.in.i, align 8, !tbaa !212
  tail call void @cmsDoTransform(ptr noundef %.sink49.i, ptr noundef %3, ptr noundef %3, i32 noundef 0) #18
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1 ; 2 uses
  %exitcond46.not.i = icmp eq i64 %indvars.iv.next43.i, %wide.trip.count45.i
  br i1 %exitcond46.not.i, label %process_lcms2_bm.exit, label %.lr.ph8.split.split.i

bb.dy:                                            ; preds = %bb.ds
  %.val74 = load ptr, ptr %i.f, align 16, !tbaa !29 ; 4 uses
  %i.als = getelementptr i8, ptr %5, i64 8
  %.val75 = load i32, ptr %i.als, align 4, !tbaa !187
  %i.alt = getelementptr i8, ptr %5, i64 12
  %.val76 = load i32, ptr %i.alt, align 4, !tbaa !188 ; 2 uses
  %.8.val.fr.i78 = freeze i32 %.val75             ; 13 uses
  %i.alu = sext i32 %.val76 to i64                ; 5 uses
  %i.alv = sext i32 %.8.val.fr.i78 to i64         ; 6 uses
  %i.alw = shl nsw i64 %i.alv, 2                  ; 3 uses
  %i.alx = shl nsw i64 %i.alv, 4
  %i.aly = add nsw i64 %i.alx, 48
  %i.alz = and i64 %i.aly, -64
  %i.ama = tail call ptr @dt_alloc_aligned(i64 noundef %i.alz) #18 ; 10 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ama, i64 64) ]
  %.not14.i = icmp eq i32 %.val76, 0
  br i1 %.not14.i, label %process_lcms2_proper.exit, label %.lr.ph6.i

.lr.ph6.i:                                        ; preds = %bb.dy
  %i.amb = fcmp reassoc nsz arcp contract afn une <2 x float> %.fr, splat (float 1.000000e+00)
  %6 = bitcast <2 x i1> %i.amb to i2
  %or.cond = icmp ne i2 %6, 0
  %i.amc = extractelement <2 x float> %i.bd, i64 0 ; 2 uses
  %i.amd = fcmp reassoc nsz arcp contract afn une float %i.amc, 1.000000e+00
  %spec.select = select i1 %or.cond, i1 true, i1 %i.amd
  %i.ame = getelementptr inbounds nuw i8, ptr %.val74, i64 16 ; 4 uses
  %i.amf = getelementptr inbounds nuw i8, ptr %.val74, i64 32 ; 4 uses
  %.not16.i79 = icmp eq i32 %.8.val.fr.i78, 0     ; 2 uses
  %i.amg = getelementptr inbounds nuw i8, ptr %.val74, i64 40 ; 4 uses
  %i.amh = getelementptr inbounds nuw i8, ptr %.val74, i64 24 ; 4 uses
  br i1 %spec.select, label %.lr.ph6.split.us.i, label %.lr.ph6.split.i

.lr.ph6.split.us.i:                               ; preds = %.lr.ph6.i
  br i1 %.not16.i79, label %.preheader.us.i, label %.preheader.us.us.preheader.i

.preheader.us.us.preheader.i:                     ; preds = %.lr.ph6.split.us.i
  %wide.trip.count26.i = zext i32 %.8.val.fr.i78 to i64 ; 2 uses
  %i.ami = add nsw i64 %i.alu, 1152921504606846975
  %i.amj = mul i64 %i.ami, %i.alv
  %i.amk = shl i64 %i.amj, 4
  %i.aml = tail call i64 @llvm.usub.sat.i64(i64 %i.alw, i64 4)
  %i.amm = shl i64 %i.aml, 2                      ; 2 uses
  %i.amn = getelementptr i8, ptr %2, i64 %i.amk
  %i.amo = getelementptr i8, ptr %i.amn, i64 %i.amm
  %scevgep = getelementptr i8, ptr %i.amo, i64 16
  %i.amp = getelementptr i8, ptr %i.ama, i64 %i.amm
  %scevgep196 = getelementptr i8, ptr %i.amp, i64 16
  %i.amq = tail call i64 @llvm.usub.sat.i64(i64 %i.alw, i64 4) ; 2 uses
  %i.amr = lshr exact i64 %i.amq, 2
  %i.ams = add nuw nsw i64 %i.amr, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.amq, 12
  %bound0 = icmp ult ptr %i.ama, %scevgep
  %bound1 = icmp ult ptr %2, %scevgep196
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %.8.val.fr.i78, 0
  %i.amt = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.ams, 9223372036854775804    ; 3 uses
  %i.amu = shl i64 %n.vec, 2
  %broadcast.splat = shufflevector <2 x float> %.fr, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat198 = shufflevector <2 x float> %.fr, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat200 = shufflevector <2 x float> %i.bd, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat202 = shufflevector <2 x float> %i.bd, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %cmp.n = icmp eq i64 %i.ams, %n.vec
  %i.amv = extractelement <2 x float> %i.bd, i64 1
  %xtraiter246 = and i64 %wide.trip.count26.i, 3  ; 3 uses
  %i.amw = icmp ult i32 %.8.val.fr.i78, 4
  %unroll_iter250 = and i64 %wide.trip.count26.i, 4294967292
  %lcmp.mod248.not = icmp eq i64 %xtraiter246, 0
  %lcmp.mod249 = icmp ne i64 %xtraiter246, 0
  br label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %bb.ea, %.preheader.us.us.preheader.i
  %.0474.us.us.i = phi i64 [ %i.aoz, %bb.ea ], [ 0, %.preheader.us.us.preheader.i ] ; 2 uses
  %i.amx = shl i64 %.0474.us.us.i, 2
  %i.amy = mul i64 %i.amx, %i.alv                 ; 2 uses
  %i.amz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.amy ; 2 uses
  %brmerge258 = select i1 %min.iters.check, i1 true, i1 %i.amt
  br i1 %brmerge258, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us.us.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.us.i ] ; 2 uses
  %i.ana = shl nuw i64 %index, 2                  ; 2 uses
  %i.anb = getelementptr inbounds nuw [4 x i8], ptr %i.ama, i64 %i.ana
  %i.anc = getelementptr inbounds nuw [4 x i8], ptr %i.amz, i64 %i.ana
  %wide.vec = load <16 x float>, ptr %i.anc, align 4, !tbaa !101, !alias.scope !213 ; 4 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec203 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec204 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec205 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.and = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec, %broadcast.splat
  %i.ane = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec203, %broadcast.splat198
  %i.anf = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec204, %broadcast.splat200
  %i.ang = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec205, %broadcast.splat202
  %i.anh = shufflevector <4 x float> %i.and, <4 x float> %i.ane, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ani = shufflevector <4 x float> %i.anf, <4 x float> %i.ang, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.anh, <8 x float> %i.ani, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.anb, align 64, !tbaa !101, !alias.scope !214, !noalias !213
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.anj = icmp eq i64 %index.next, %n.vec
  br i1 %i.anj, label %middle.block, label %vector.body, !llvm.loop !180

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.us.i, %middle.block
  %.0451.us.us.i.ph = phi i64 [ %i.amu, %middle.block ], [ 0, %.preheader.us.us.i ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0451.us.us.i = phi i64 [ %i.aoa, %scalar.ph ], [ %.0451.us.us.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ank = getelementptr inbounds nuw [4 x i8], ptr %i.ama, i64 %.0451.us.us.i ; 4 uses
  %i.anl = getelementptr inbounds nuw [4 x i8], ptr %i.amz, i64 %.0451.us.us.i ; 4 uses
  %i.anm = load float, ptr %i.anl, align 4, !tbaa !101
  %i.ann = fmul reassoc nsz arcp contract afn float %i.anm, %i.bb
  store float %i.ann, ptr %i.ank, align 16, !tbaa !101
  %i.ano = getelementptr inbounds nuw i8, ptr %i.anl, i64 4
  %i.anp = load float, ptr %i.ano, align 4, !tbaa !101
  %i.anq = fmul reassoc nsz arcp contract afn float %i.anp, %i.ba
  %i.anr = getelementptr inbounds nuw i8, ptr %i.ank, i64 4
  store float %i.anq, ptr %i.anr, align 4, !tbaa !101
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anl, i64 8
  %i.ant = load float, ptr %i.ans, align 4, !tbaa !101
  %i.anu = fmul reassoc nsz arcp contract afn float %i.ant, %i.amc
  %i.anv = getelementptr inbounds nuw i8, ptr %i.ank, i64 8
  store float %i.anu, ptr %i.anv, align 8, !tbaa !101
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anl, i64 12
  %i.anx = load float, ptr %i.anw, align 4, !tbaa !101
  %i.any = fmul reassoc nsz arcp contract afn float %i.anx, %i.amv
  %i.anz = getelementptr inbounds nuw i8, ptr %i.ank, i64 12
  store float %i.any, ptr %i.anz, align 4, !tbaa !101
  %i.aoa = add nuw i64 %.0451.us.us.i, 4          ; 2 uses
  %i.aob = icmp ult i64 %i.aoa, %i.alw
  br i1 %i.aob, label %scalar.ph, label %..loopexit_crit_edge.us.us.i, !llvm.loop !181

..loopexit_crit_edge.us.us.i:                     ; preds = %scalar.ph, %middle.block
  %i.aoc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.amy ; 9 uses
  %i.aod = load ptr, ptr %i.ame, align 16, !tbaa !105
  %.not.us.us.i = icmp eq ptr %i.aod, null
  br i1 %.not.us.us.i, label %bb.dz, label %.lr.ph3.us.us.preheader.i

.lr.ph3.us.us.preheader.i:                        ; preds = %..loopexit_crit_edge.us.us.i
  %i.aoe = load ptr, ptr %i.amf, align 32, !tbaa !106
  tail call void @cmsDoTransform(ptr noundef %i.aoe, ptr noundef nonnull %i.ama, ptr noundef %i.aoc, i32 noundef %.8.val.fr.i78) #18
  br i1 %i.amw, label %.lr.ph3.us.us.i.epil.preheader, label %.lr.ph3.us.us.i

.lr.ph3.us.us.i:                                  ; preds = %.lr.ph3.us.us.preheader.i, %.lr.ph3.us.us.i
  %indvars.iv23.i = phi i64 [ %indvars.iv.next24.i.3, %.lr.ph3.us.us.i ], [ 0, %.lr.ph3.us.us.preheader.i ] ; 5 uses
  %niter251 = phi i64 [ %niter251.next.3, %.lr.ph3.us.us.i ], [ 0, %.lr.ph3.us.us.preheader.i ]
  %.idx38.i = shl nuw nsw i64 %indvars.iv23.i, 4
  %i.aof = getelementptr inbounds nuw i8, ptr %i.aoc, i64 %.idx38.i ; 2 uses
  %.val.i.us.us.i = load <4 x float>, ptr %i.aof, align 16, !tbaa !34
  %i.aog = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.us.i, <4 x float> zeroinitializer)
  %i.aoh = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aog, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.aoh, ptr %i.aof, align 16, !tbaa !34
  %indvars.iv.next24.i = shl i64 %indvars.iv23.i, 4
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.aoc, i64 %indvars.iv.next24.i
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aoi, i64 16 ; 2 uses
  %.val.i.us.us.i.1 = load <4 x float>, ptr %i.aoj, align 16, !tbaa !34
  %i.aok = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.us.i.1, <4 x float> zeroinitializer)
  %i.aol = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aok, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.aol, ptr %i.aoj, align 16, !tbaa !34
  %indvars.iv.next24.i.1 = shl i64 %indvars.iv23.i, 4
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aoc, i64 %indvars.iv.next24.i.1
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aom, i64 32 ; 2 uses
  %.val.i.us.us.i.2 = load <4 x float>, ptr %i.aon, align 16, !tbaa !34
  %i.aoo = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.us.i.2, <4 x float> zeroinitializer)
  %i.aop = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aoo, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.aop, ptr %i.aon, align 16, !tbaa !34
  %indvars.iv.next24.i.2 = shl i64 %indvars.iv23.i, 4
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aoc, i64 %indvars.iv.next24.i.2
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aoq, i64 48 ; 2 uses
  %.val.i.us.us.i.3 = load <4 x float>, ptr %i.aor, align 16, !tbaa !34
  %i.aos = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.us.i.3, <4 x float> zeroinitializer)
  %i.aot = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aos, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.aot, ptr %i.aor, align 16, !tbaa !34
  %indvars.iv.next24.i.3 = add nuw nsw i64 %indvars.iv23.i, 4 ; 2 uses
  %niter251.next.3 = add i64 %niter251, 4         ; 2 uses
  %niter251.ncmp.3 = icmp eq i64 %niter251.next.3, %unroll_iter250
  br i1 %niter251.ncmp.3, label %._crit_edge.us.us.i.unr-lcssa, label %.lr.ph3.us.us.i

._crit_edge.us.us.i.unr-lcssa:                    ; preds = %.lr.ph3.us.us.i
  br i1 %lcmp.mod248.not, label %._crit_edge.us.us.i, label %.lr.ph3.us.us.i.epil.preheader

.lr.ph3.us.us.i.epil.preheader:                   ; preds = %._crit_edge.us.us.i.unr-lcssa, %.lr.ph3.us.us.preheader.i
  %indvars.iv23.i.epil.init = phi i64 [ 0, %.lr.ph3.us.us.preheader.i ], [ %indvars.iv.next24.i.3, %._crit_edge.us.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod249)
  br label %.lr.ph3.us.us.i.epil

.lr.ph3.us.us.i.epil:                             ; preds = %.lr.ph3.us.us.i.epil, %.lr.ph3.us.us.i.epil.preheader
  %indvars.iv23.i.epil = phi i64 [ %indvars.iv23.i.epil.init, %.lr.ph3.us.us.i.epil.preheader ], [ %indvars.iv.next24.i.epil, %.lr.ph3.us.us.i.epil ] ; 2 uses
  %epil.iter247 = phi i64 [ 0, %.lr.ph3.us.us.i.epil.preheader ], [ %epil.iter247.next, %.lr.ph3.us.us.i.epil ]
  %.idx38.i.epil = shl nuw nsw i64 %indvars.iv23.i.epil, 4
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aoc, i64 %.idx38.i.epil ; 2 uses
  %.val.i.us.us.i.epil = load <4 x float>, ptr %i.aou, align 16, !tbaa !34
  %i.aov = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.us.i.epil, <4 x float> zeroinitializer)
  %i.aow = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aov, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.aow, ptr %i.aou, align 16, !tbaa !34
  %indvars.iv.next24.i.epil = add nuw nsw i64 %indvars.iv23.i.epil, 1
  %epil.iter247.next = add i64 %epil.iter247, 1   ; 2 uses
  %epil.iter247.cmp.not = icmp eq i64 %epil.iter247.next, %xtraiter246
  br i1 %epil.iter247.cmp.not, label %._crit_edge.us.us.i, label %.lr.ph3.us.us.i.epil, !llvm.loop !182

._crit_edge.us.us.i:                              ; preds = %.lr.ph3.us.us.i.epil, %._crit_edge.us.us.i.unr-lcssa
  %i.aox = load ptr, ptr %i.amg, align 8, !tbaa !107
  tail call void @cmsDoTransform(ptr noundef %i.aox, ptr noundef nonnull %i.aoc, ptr noundef nonnull %i.aoc, i32 noundef %.8.val.fr.i78) #18
  br label %bb.ea

bb.dz:                                            ; preds = %..loopexit_crit_edge.us.us.i
  %i.aoy = load ptr, ptr %i.amh, align 8, !tbaa !108
  tail call void @cmsDoTransform(ptr noundef %i.aoy, ptr noundef nonnull %i.ama, ptr noundef %i.aoc, i32 noundef %.8.val.fr.i78) #18
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %._crit_edge.us.us.i
  %i.aoz = add nuw i64 %.0474.us.us.i, 1          ; 2 uses
  %exitcond28.not.i = icmp eq i64 %i.aoz, %i.alu
  br i1 %exitcond28.not.i, label %process_lcms2_proper.exit, label %.preheader.us.us.i

.preheader.us.i:                                  ; preds = %.lr.ph6.split.us.i, %bb.ec
  %.0474.us.i = phi i64 [ %i.apd, %bb.ec ], [ 0, %.lr.ph6.split.us.i ]
  %i.apa = load ptr, ptr %i.ame, align 16, !tbaa !105
  %.not.us.i86 = icmp eq ptr %i.apa, null
  br i1 %.not.us.i86, label %bb.eb, label %._crit_edge.us.i87

._crit_edge.us.i87:                               ; preds = %.preheader.us.i
  %i.apb = load ptr, ptr %i.amf, align 32, !tbaa !106
  tail call void @cmsDoTransform(ptr noundef %i.apb, ptr noundef %i.ama, ptr noundef %3, i32 noundef 0) #18
  %.pre.i = load ptr, ptr %i.amg, align 8, !tbaa !107
  tail call void @cmsDoTransform(ptr noundef %.pre.i, ptr noundef %3, ptr noundef %3, i32 noundef 0) #18
  br label %bb.ec

bb.eb:                                            ; preds = %.preheader.us.i
  %i.apc = load ptr, ptr %i.amh, align 8, !tbaa !108
  tail call void @cmsDoTransform(ptr noundef %i.apc, ptr noundef %i.ama, ptr noundef %3, i32 noundef 0) #18
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %._crit_edge.us.i87
  %i.apd = add nuw i64 %.0474.us.i, 1             ; 2 uses
  %exitcond34.not.i = icmp eq i64 %i.apd, %i.alu
  br i1 %exitcond34.not.i, label %process_lcms2_proper.exit, label %.preheader.us.i

.lr.ph6.split.i:                                  ; preds = %.lr.ph6.i
  br i1 %.not16.i79, label %.lr.ph6.split.split.i, label %.lr.ph6.split.split.us.preheader.i

.lr.ph6.split.split.us.preheader.i:               ; preds = %.lr.ph6.split.i
  %wide.trip.count.i80 = zext i32 %.8.val.fr.i78 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i80, 3     ; 3 uses
  %i.ape = icmp ult i32 %.8.val.fr.i78, 4
  %unroll_iter = and i64 %wide.trip.count.i80, 4294967292
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod245 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph6.split.split.us.i

.lr.ph6.split.split.us.i:                         ; preds = %bb.ef, %.lr.ph6.split.split.us.preheader.i
  %.0474.us8.i = phi i64 [ %i.aqf, %bb.ef ], [ 0, %.lr.ph6.split.split.us.preheader.i ] ; 2 uses
  %i.apf = shl i64 %.0474.us8.i, 2
  %i.apg = mul i64 %i.apf, %i.alv                 ; 2 uses
  %i.aph = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.apg ; 2 uses
  %i.api = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.apg ; 9 uses
  %i.apj = load ptr, ptr %i.ame, align 16, !tbaa !105
  %.not.us9.i = icmp eq ptr %i.apj, null
end_hunk_1
