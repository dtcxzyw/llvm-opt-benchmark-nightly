Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorout?download=true
inline.NumInlined: 43
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@dcgettext
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @description(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #16
  %i.b = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #16
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #16
  %i.d = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #16
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #16
  %i.f = tail call ptr @dt_iop_set_description(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e) #16
  ret ptr %i.f
}

declare ptr @dt_iop_set_description(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_group() local_unnamed_addr #0 {
bb.a:
  ret i32 36
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @flags() local_unnamed_addr #0 {
bb.a:
  ret i32 2097296
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_colorspace(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @input_colorspace(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 1, 3) i32 @output_colorspace(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %2, null
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sink7.in.in = select i1 %.not, ptr %i.a, ptr %i.b
  %.sink7.in = load ptr, ptr %.sink7.in.in, align 8, !tbaa !12
  %.sink7 = load i32, ptr %.sink7.in, align 4, !tbaa !13
  %i.c = icmp eq i32 %.sink7, 6
  %spec.select6 = select i1 %i.c, i32 1, i32 2
  ret i32 %spec.select6
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @legacy_params(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = and i32 %2, -2
  %or.cond = icmp eq i32 %i.a, 2
  br i1 %or.cond, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %calloc = tail call dereferenceable_or_null(520) ptr @calloc(i64 1, i64 520) ; 13 uses
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.6) #20
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %calloc, align 4, !tbaa !121
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(18) @.str.7) #20
  %.not39 = icmp eq i32 %i.c, 0
  br i1 %.not39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.8) #20
  %.not40 = icmp eq i32 %i.d, 0
  br i1 %.not40, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  store i32 3, ptr %calloc, align 4, !tbaa !121
  br label %.sink.split

bb.g:                                             ; preds = %bb.e
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(19) @.str.9) #20
  %.not41 = icmp eq i32 %i.e, 0
  br i1 %.not41, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 4, ptr %calloc, align 4, !tbaa !121
  br label %.sink.split

bb.i:                                             ; preds = %bb.g
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.10) #20
  %.not42 = icmp eq i32 %i.f, 0
  br i1 %.not42, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 2, ptr %calloc, align 4, !tbaa !121
  br label %.sink.split

bb.k:                                             ; preds = %bb.i
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.11) #20
  %.not43 = icmp eq i32 %i.g, 0
  br i1 %.not43, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 8, ptr %calloc, align 4, !tbaa !121
  br label %.sink.split

bb.m:                                             ; preds = %bb.k
  store i32 0, ptr %calloc, align 4, !tbaa !121
  %i.h = getelementptr inbounds nuw i8, ptr %calloc, i64 4
  %i.i = tail call i64 @dt_strlcpy_to_fixed(ptr noundef nonnull %i.h, ptr noundef nonnull %1, i64 noundef 512) #16 ; 0 uses
  br label %.sink.split

bb.n:                                             ; preds = %bb.a
  %i.j = icmp eq i32 %2, 4
  br i1 %i.j, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %calloc44 = tail call dereferenceable_or_null(520) ptr @calloc(i64 1, i64 520) ; 3 uses
  %i.k = load i32, ptr %1, align 4, !tbaa !123
  store i32 %i.k, ptr %calloc44, align 4, !tbaa !121
  %i.l = getelementptr inbounds nuw i8, ptr %calloc44, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = tail call i64 @dt_strlcpy_to_fixed(ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, i64 noundef 512) #16 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.h, %bb.l, %bb.m, %bb.j, %bb.f, %bb.o
  %.sink = phi i64 [ 104, %bb.o ], [ 200, %bb.f ], [ 200, %bb.j ], [ 200, %bb.m ], [ 200, %bb.l ], [ 200, %bb.h ], [ 200, %bb.c ]
  %calloc44.sink46 = phi ptr [ %calloc44, %bb.o ], [ %calloc, %bb.f ], [ %calloc, %bb.j ], [ %calloc, %bb.m ], [ %calloc, %bb.l ], [ %calloc, %bb.h ], [ %calloc, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.sink
  %i.p = load i32, ptr %i.o, align 4, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %calloc44.sink46, i64 516
  store i32 %i.p, ptr %i.q, align 4, !tbaa !124
  store ptr %calloc44.sink46, ptr %3, align 8, !tbaa !12
  store i32 520, ptr %4, align 4, !tbaa !13
  store i32 5, ptr %5, align 4, !tbaa !13
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.n
  %.0 = phi i32 [ 1, %bb.n ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

declare i64 @dt_strlcpy_to_fixed(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @init_global(ptr nofree noundef writeonly captures(none) initializes((520, 528)) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #21 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.a, ptr %i.b, align 8, !tbaa !19
  store i32 -999, ptr %i.a, align 4, !tbaa !126
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_global(ptr nofree noundef captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  tail call void @free(ptr noundef %i.b) #16
  store ptr null, ptr %i.a, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 132 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !140
  %i.c = tail call i32 @dt_iop_have_required_input_format(i32 noundef 4, ptr noundef %0, i32 noundef %i.b, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #16
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_process_fastpath_apply_tonecurves.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !37  ; 15 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !141
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !142
  %i.k = sext i32 %i.j to i64
  %i.l = mul nsw i64 %i.k, %i.h                   ; 11 uses
  %i.m = load i32, ptr %i.e, align 64, !tbaa !40
  %i.n = icmp eq i32 %i.m, 6
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.a, align 4, !tbaa !140
  %i.p = sext i32 %i.o to i64
  %i.q = mul i64 %i.l, %i.p
  tail call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %2, i64 noundef %i.q) #16
  br label %_process_fastpath_apply_tonecurves.exit

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 786496
  %i.s = load float, ptr %i.r, align 64, !tbaa !41 ; 2 uses
  %i.t = tail call float @llvm.fabs.f32(float %i.s)
  %i.u = fcmp ueq float %i.t, +inf
  br i1 %i.u, label %bb.am, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.w = load float, ptr %i.v, align 8, !tbaa !41, !noalias !145
  %i.x = fcmp reassoc nsz arcp contract afn olt float %i.w, 0.000000e+00
  br i1 %i.x, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 262152
  %i.z = load float, ptr %i.y, align 8, !tbaa !41, !noalias !145
  %i.aa = fcmp reassoc nsz arcp contract afn olt float %i.z, 0.000000e+00
  br i1 %i.aa, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 524296
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !41, !noalias !145
  %i.ad = fcmp reassoc nsz arcp contract afn uge float %i.ac, 0.000000e+00
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.not31 = phi i1 [ false, %bb.f ], [ false, %bb.e ], [ %i.ad, %bb.g ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 786512
  %i.af = load float, ptr %i.ae, align 16, !tbaa !41, !noalias !148
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 786528
  %i.ah = load float, ptr %i.ag, align 32, !tbaa !41, !noalias !148
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 786500
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !41, !noalias !148
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 786516
  %i.al = load float, ptr %i.ak, align 4, !tbaa !41, !noalias !148
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 786532
  %i.an = load float, ptr %i.am, align 4, !tbaa !41, !noalias !148
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 786504
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !41, !noalias !148
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 786520
  %i.ar = load float, ptr %i.aq, align 8, !tbaa !41, !noalias !148
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 786536
  %i.at = load float, ptr %i.as, align 8, !tbaa !41, !noalias !148
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %_transform_cmatrix.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.i.i
  %.01318.i.i = phi i64 [ %i.cu, %.lr.ph.i.i ], [ 0, %bb.h ] ; 2 uses
  %i.au = shl i64 %.01318.i.i, 2                  ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !41, !alias.scope !149, !noalias !150
  %i.ay = load float, ptr %i.av, align 4, !tbaa !41, !alias.scope !149, !noalias !150
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ba = load float, ptr %i.az, align 4, !tbaa !41, !alias.scope !149, !noalias !150
  %i.bb = fmul reassoc nsz arcp contract afn float %i.ax, 2.000000e-03
  %i.bc = fmul reassoc nsz arcp contract afn float %i.ay, 8.620690e-03
  %i.bd = fadd reassoc nsz arcp contract afn float %i.bc, f0x3E0D3DCB ; 7 uses
  %i.be = fmul reassoc nsz arcp contract afn float %i.ba, 5.000000e-03
  %i.bf = fadd reassoc nsz arcp contract afn float %i.bd, %i.bb ; 5 uses
  %i.bg = fcmp reassoc nsz arcp contract afn ogt float %i.bf, f0x3E53DCB1
  %i.bh = fmul reassoc nsz arcp contract afn float %i.bf, %i.bf
  %i.bi = fmul reassoc nsz arcp contract afn float %i.bh, %i.bf
  %i.bj = fmul reassoc nsz arcp contract afn float %i.bf, f0x3E038026
  %i.bk = fadd reassoc nsz arcp contract afn float %i.bj, f0xBC911AA6
  %i.bl = select reassoc nsz arcp contract afn i1 %i.bg, float %i.bi, float %i.bk ; 2 uses
  %i.bm = fcmp reassoc nsz arcp contract afn ogt float %i.bd, f0x3E53DCB1
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bd, %i.bd
  %i.bo = fmul reassoc nsz arcp contract afn float %i.bn, %i.bd
  %i.bp = fmul reassoc nsz arcp contract afn float %i.bd, f0x3E038026
  %i.bq = fadd reassoc nsz arcp contract afn float %i.bp, f0xBC911AA6
  %i.br = select reassoc nsz arcp contract afn i1 %i.bm, float %i.bo, float %i.bq ; 4 uses
  %i.bs = fsub reassoc nsz arcp contract afn float %i.bd, %i.be ; 5 uses
  %i.bt = fcmp reassoc nsz arcp contract afn ogt float %i.bs, f0x3E53DCB1
  %i.bu = fmul reassoc nsz arcp contract afn float %i.bs, %i.bs
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bu, %i.bs
  %i.bw = fmul reassoc nsz arcp contract afn float %i.bs, f0x3E038026
  %i.bx = fadd reassoc nsz arcp contract afn float %i.bw, f0xBC911AA6
  %i.by = select reassoc nsz arcp contract afn i1 %i.bt, float %i.bv, float %i.bx ; 2 uses
  %i.bz = fmul reassoc nsz arcp contract afn float %i.bl, 9.642000e-01 ; 3 uses
  %i.ca = fmul reassoc nsz arcp contract afn float %i.by, f0x3F532CA5 ; 3 uses
  %i.cb = fmul reassoc nsz arcp contract afn float %i.bz, %i.s
  %i.cc = fmul reassoc nsz arcp contract afn float %i.br, %i.aj
  %i.cd = fadd reassoc nsz arcp contract afn float %i.cb, %i.cc
  %i.ce = fmul reassoc nsz arcp contract afn float %i.ca, %i.ap
  %i.cf = fadd reassoc nsz arcp contract afn float %i.cd, %i.ce
  %.sroa.0.0.vec.insert.i.i = insertelement <4 x float> poison, float %i.cf, i64 0
  %i.cg = fmul reassoc nsz arcp contract afn float %i.bz, %i.af
  %i.ch = fmul reassoc nsz arcp contract afn float %i.br, %i.al
  %i.ci = fadd reassoc nsz arcp contract afn float %i.cg, %i.ch
  %i.cj = fmul reassoc nsz arcp contract afn float %i.ca, %i.ar
  %i.ck = fadd reassoc nsz arcp contract afn float %i.ci, %i.cj
  %.sroa.0.4.vec.insert.i.i = insertelement <4 x float> %.sroa.0.0.vec.insert.i.i, float %i.ck, i64 1
  %i.cl = fmul reassoc nsz arcp contract afn float %i.bz, %i.ah
  %i.cm = fmul reassoc nsz arcp contract afn float %i.br, %i.an
  %i.cn = fadd reassoc nsz arcp contract afn float %i.cl, %i.cm
  %i.co = fmul reassoc nsz arcp contract afn float %i.ca, %i.at
  %i.cp = fadd reassoc nsz arcp contract afn float %i.cn, %i.co
  %.sroa.0.8.vec.insert.i.i = insertelement <4 x float> %.sroa.0.4.vec.insert.i.i, float %i.cp, i64 2
  %i.cq = fadd reassoc nsz arcp contract afn float %i.bl, %i.br
  %i.cr = fadd reassoc nsz arcp contract afn float %i.cq, %i.by
  %i.cs = fmul reassoc nsz arcp contract afn float %i.cr, 0.000000e+00
  %.sroa.0.12.vec.insert.i.i = insertelement <4 x float> %.sroa.0.8.vec.insert.i.i, float %i.cs, i64 3
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.au
  store <4 x float> %.sroa.0.12.vec.insert.i.i, ptr %i.ct, align 16, !tbaa !42, !alias.scope !151, !noalias !149, !nontemporal !152
  %i.cu = add nuw i64 %.01318.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cu, %i.l
  br i1 %exitcond.not.i.i, label %_transform_cmatrix.exit, label %.lr.ph.i.i

_transform_cmatrix.exit:                          ; preds = %.lr.ph.i.i, %bb.h
  tail call void @llvm.x86.sse.sfence(), !noalias !148
  br i1 %.not31, label %bb.i, label %_process_fastpath_apply_tonecurves.exit

bb.i:                                             ; preds = %_transform_cmatrix.exit
  %.val = load ptr, ptr %i.d, align 16, !tbaa !37 ; 24 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.val, i64 786496
  %i.cw = load float, ptr %i.cv, align 64, !tbaa !41
  %i.cx = tail call float @llvm.fabs.f32(float %i.cw)
  %i.cy = fcmp ueq float %i.cx, +inf
  br i1 %i.cy, label %_process_fastpath_apply_tonecurves.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cz = load i32, ptr %i.f, align 4, !tbaa !141
  %i.da = sext i32 %i.cz to i64
  %i.db = load i32, ptr %i.i, align 4, !tbaa !142
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %i.dc, %i.da                ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.df = load float, ptr %i.de, align 8, !tbaa !41
  %i.dg = fcmp reassoc nsz arcp contract afn ult float %i.df, 0.000000e+00
  %i.dh = getelementptr inbounds nuw i8, ptr %.val, i64 262152 ; 4 uses
  %i.di = load float, ptr %i.dh, align 8, !tbaa !41
  %i.dj = fcmp reassoc nsz arcp contract afn ult float %i.di, 0.000000e+00 ; 2 uses
  br i1 %i.dg, label %bb.v, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %i.dj, label %.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dk = getelementptr inbounds nuw i8, ptr %.val, i64 524296 ; 2 uses
  %i.dl = load float, ptr %i.dk, align 8, !tbaa !41
  %i.dm = fcmp reassoc nsz arcp contract afn ult float %i.dl, 0.000000e+00
  br i1 %i.dm, label %.thread.i, label %.preheader2.i

.preheader2.i:                                    ; preds = %bb.l
  %i.dn = shl i64 %i.dd, 2                        ; 2 uses
  %.not.i = icmp eq i64 %i.dn, 0
  br i1 %.not.i, label %_process_fastpath_apply_tonecurves.exit, label %.preheader1.lr.ph.i

.preheader1.lr.ph.i:                              ; preds = %.preheader2.i
  %i.do = getelementptr inbounds nuw i8, ptr %.val, i64 786568
  %i.dp = getelementptr inbounds nuw i8, ptr %.val, i64 786572
  %i.dq = getelementptr inbounds nuw i8, ptr %.val, i64 786576
  %i.dr = getelementptr inbounds nuw i8, ptr %.val, i64 786580
  %i.ds = getelementptr inbounds nuw i8, ptr %.val, i64 786584
  %i.dt = getelementptr inbounds nuw i8, ptr %.val, i64 786588
  %i.du = getelementptr inbounds nuw i8, ptr %.val, i64 786592
  %i.dv = getelementptr inbounds nuw i8, ptr %.val, i64 786596
  %i.dw = getelementptr inbounds nuw i8, ptr %.val, i64 786600
  br label %.preheader1.i

.preheader1.i:                                    ; preds = %bb.u, %.preheader1.lr.ph.i
  %.0565.i = phi i64 [ 0, %.preheader1.lr.ph.i ], [ %i.gr, %bb.u ] ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0565.i ; 4 uses
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !41 ; 4 uses
  %i.dz = fcmp reassoc nsz arcp contract afn olt float %i.dy, 1.000000e+00
  br i1 %i.dz, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.preheader1.i
  %i.ea = fcmp reassoc nsz arcp contract afn ogt float %i.dy, 0.000000e+00
  %i.eb = select reassoc nsz arcp contract afn i1 %i.ea, float %i.dy, float 0.000000e+00
  %i.ec = fmul reassoc nnan nsz arcp contract afn float %i.eb, 6.553500e+04 ; 2 uses
  %i.ed = fptosi float %i.ec to i32               ; 2 uses
  %i.ee = uitofp nsz nneg i32 %i.ed to float
  %i.ef = fsub reassoc nnan nsz arcp contract afn float %i.ec, %i.ee
  %i.eg = zext nneg i32 %i.ed to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.eg ; 2 uses
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !41 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !41
  %i.el = fsub reassoc nsz arcp contract afn float %i.ek, %i.ei
  %i.em = fmul reassoc nsz arcp contract afn float %i.el, %i.ef
  %i.en = fadd reassoc nsz arcp contract afn float %i.em, %i.ei
  br label %bb.o

end_hunk_0
begin_hunk_1_@process:bb.a

bb.t:                                             ; preds = %bb.r
  %i.gc = fcmp reassoc nsz arcp contract afn ogt float %i.fu, 0.000000e+00
  %i.gd = select reassoc nsz arcp contract afn i1 %i.gc, float %i.fu, float 0.000000e+00
  %i.ge = fmul reassoc nnan nsz arcp contract afn float %i.gd, 6.553500e+04 ; 2 uses
  %i.gf = fptosi float %i.ge to i32               ; 2 uses
  %i.gg = uitofp nsz nneg i32 %i.gf to float
  %i.gh = fsub reassoc nnan nsz arcp contract afn float %i.ge, %i.gg
  %i.gi = zext nneg i32 %i.gf to i64
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.gi ; 2 uses
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !41 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !41
  %i.gn = fsub reassoc nsz arcp contract afn float %i.gm, %i.gk
  %i.go = fmul reassoc nsz arcp contract afn float %i.gn, %i.gh
  %i.gp = fadd reassoc nsz arcp contract afn float %i.go, %i.gk
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.gq = phi reassoc nsz arcp contract afn float [ %i.gp, %bb.t ], [ %i.gb, %bb.s ]
  store float %i.gq, ptr %i.ft, align 4, !tbaa !41
  %i.gr = add nuw i64 %.0565.i, 4                 ; 2 uses
  %i.gs = icmp ult i64 %i.gr, %i.dn
  br i1 %i.gs, label %.preheader1.i, label %_process_fastpath_apply_tonecurves.exit

bb.v:                                             ; preds = %bb.j
  br i1 %i.dj, label %bb.w, label %.thread.i

bb.w:                                             ; preds = %bb.v
  %i.gt = getelementptr inbounds nuw i8, ptr %.val, i64 524296
  %i.gu = load float, ptr %i.gt, align 8, !tbaa !41
  %i.gv = fcmp reassoc nsz arcp contract afn ult float %i.gu, 0.000000e+00
  br i1 %i.gv, label %_process_fastpath_apply_tonecurves.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.w, %bb.v, %bb.l, %bb.k
  %i.gw = shl i64 %i.dd, 2                        ; 2 uses
  %.not8.i = icmp eq i64 %i.gw, 0
  br i1 %.not8.i, label %_process_fastpath_apply_tonecurves.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %.thread.i
  %i.gx = getelementptr inbounds nuw i8, ptr %.val, i64 786568
  %i.gy = getelementptr inbounds nuw i8, ptr %.val, i64 786572
  %i.gz = getelementptr inbounds nuw i8, ptr %.val, i64 786576
  %i.ha = getelementptr inbounds nuw i8, ptr %.val, i64 786580
  %i.hb = getelementptr inbounds nuw i8, ptr %.val, i64 786584
  %i.hc = getelementptr inbounds nuw i8, ptr %.val, i64 786588
  %i.hd = getelementptr inbounds nuw i8, ptr %.val, i64 524296 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.val, i64 786592
  %i.hf = getelementptr inbounds nuw i8, ptr %.val, i64 786596
  %i.hg = getelementptr inbounds nuw i8, ptr %.val, i64 786600
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.al, %.preheader.lr.ph.i
  %.0547.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %i.kh, %bb.al ] ; 2 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0547.i ; 4 uses
  %i.hi = load float, ptr %i.de, align 8, !tbaa !41
  %i.hj = fcmp reassoc nsz arcp contract afn ult float %i.hi, 0.000000e+00
  br i1 %i.hj, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %.preheader.i
  %i.hk = load float, ptr %i.hh, align 4, !tbaa !41 ; 4 uses
  %i.hl = fcmp reassoc nsz arcp contract afn olt float %i.hk, 1.000000e+00
  br i1 %i.hl, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.hm = fcmp reassoc nsz arcp contract afn ogt float %i.hk, 0.000000e+00
  %i.hn = select reassoc nsz arcp contract afn i1 %i.hm, float %i.hk, float 0.000000e+00
  %i.ho = fmul reassoc nnan nsz arcp contract afn float %i.hn, 6.553500e+04 ; 2 uses
  %i.hp = fptosi float %i.ho to i32               ; 2 uses
  %i.hq = uitofp nsz nneg i32 %i.hp to float
  %i.hr = fsub reassoc nnan nsz arcp contract afn float %i.ho, %i.hq
  %i.hs = zext nneg i32 %i.hp to i64
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.hs ; 2 uses
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !41 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !41
  %i.hx = fsub reassoc nsz arcp contract afn float %i.hw, %i.hu
  %i.hy = fmul reassoc nsz arcp contract afn float %i.hx, %i.hr
  %i.hz = fadd reassoc nsz arcp contract afn float %i.hy, %i.hu
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.ia = load float, ptr %i.gy, align 4, !tbaa !41
  %i.ib = load float, ptr %i.gx, align 8, !tbaa !41
  %i.ic = fmul reassoc nsz arcp contract afn float %i.ib, %i.hk
  %i.id = load float, ptr %i.gz, align 16, !tbaa !41
  %i.ie = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ic, float %i.id)
  %i.if = fmul reassoc nsz arcp contract afn float %i.ie, %i.ia
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ig = phi reassoc nsz arcp contract afn float [ %i.hz, %bb.y ], [ %i.if, %bb.z ]
  store float %i.ig, ptr %i.hh, align 4, !tbaa !41
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.preheader.i
  %i.ih = load float, ptr %i.dh, align 8, !tbaa !41
  %i.ii = fcmp reassoc nsz arcp contract afn ult float %i.ih, 0.000000e+00
  br i1 %i.ii, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hh, i64 4 ; 2 uses
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !41 ; 4 uses
  %i.il = fcmp reassoc nsz arcp contract afn olt float %i.ik, 1.000000e+00
  br i1 %i.il, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.im = load float, ptr %i.hb, align 8, !tbaa !41
  %i.in = load float, ptr %i.ha, align 4, !tbaa !41
  %i.io = fmul reassoc nsz arcp contract afn float %i.in, %i.ik
  %i.ip = load float, ptr %i.hc, align 4, !tbaa !41
  %i.iq = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.io, float %i.ip)
  %i.ir = fmul reassoc nsz arcp contract afn float %i.iq, %i.im
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.is = fcmp reassoc nsz arcp contract afn ogt float %i.ik, 0.000000e+00
  %i.it = select reassoc nsz arcp contract afn i1 %i.is, float %i.ik, float 0.000000e+00
  %i.iu = fmul reassoc nnan nsz arcp contract afn float %i.it, 6.553500e+04 ; 2 uses
  %i.iv = fptosi float %i.iu to i32               ; 2 uses
  %i.iw = uitofp nsz nneg i32 %i.iv to float
  %i.ix = fsub reassoc nnan nsz arcp contract afn float %i.iu, %i.iw
  %i.iy = zext nneg i32 %i.iv to i64
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.iy ; 2 uses
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !41 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 4
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !41
  %i.jd = fsub reassoc nsz arcp contract afn float %i.jc, %i.ja
  %i.je = fmul reassoc nsz arcp contract afn float %i.jd, %i.ix
  %i.jf = fadd reassoc nsz arcp contract afn float %i.je, %i.ja
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.jg = phi reassoc nsz arcp contract afn float [ %i.jf, %bb.ae ], [ %i.ir, %bb.ad ]
  store float %i.jg, ptr %i.ij, align 4, !tbaa !41
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ab
  %i.jh = load float, ptr %i.hd, align 8, !tbaa !41
  %i.ji = fcmp reassoc nsz arcp contract afn ult float %i.jh, 0.000000e+00
  br i1 %i.ji, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.jj = getelementptr inbounds nuw i8, ptr %i.hh, i64 8 ; 2 uses
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !41 ; 4 uses
  %i.jl = fcmp reassoc nsz arcp contract afn olt float %i.jk, 1.000000e+00
  br i1 %i.jl, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jm = load float, ptr %i.hf, align 4, !tbaa !41
  %i.jn = load float, ptr %i.he, align 32, !tbaa !41
  %i.jo = fmul reassoc nsz arcp contract afn float %i.jn, %i.jk
  %i.jp = load float, ptr %i.hg, align 8, !tbaa !41
  %i.jq = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.jo, float %i.jp)
  %i.jr = fmul reassoc nsz arcp contract afn float %i.jq, %i.jm
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.js = fcmp reassoc nsz arcp contract afn ogt float %i.jk, 0.000000e+00
  %i.jt = select reassoc nsz arcp contract afn i1 %i.js, float %i.jk, float 0.000000e+00
  %i.ju = fmul reassoc nnan nsz arcp contract afn float %i.jt, 6.553500e+04 ; 2 uses
  %i.jv = fptosi float %i.ju to i32               ; 2 uses
  %i.jw = uitofp nsz nneg i32 %i.jv to float
  %i.jx = fsub reassoc nnan nsz arcp contract afn float %i.ju, %i.jw
  %i.jy = zext nneg i32 %i.jv to i64
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.jy ; 2 uses
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !41 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 4
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !41
  %i.kd = fsub reassoc nsz arcp contract afn float %i.kc, %i.ka
  %i.ke = fmul reassoc nsz arcp contract afn float %i.kd, %i.jx
  %i.kf = fadd reassoc nsz arcp contract afn float %i.ke, %i.ka
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.kg = phi reassoc nsz arcp contract afn float [ %i.kf, %bb.aj ], [ %i.jr, %bb.ai ]
  store float %i.kg, ptr %i.jj, align 4, !tbaa !41
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ag
  %i.kh = add nuw i64 %.0547.i, 4                 ; 2 uses
  %i.ki = icmp ult i64 %i.kh, %i.gw
  br i1 %i.ki, label %.preheader.i, label %_process_fastpath_apply_tonecurves.exit

bb.am:                                            ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.kj = add nsw i64 %i.l, 3
  %i.kk = and i64 %i.kj, -4                       ; 5 uses
  %.not.i32 = icmp eq i64 %i.l, 0
  br i1 %.not.i32, label %_transform_lcms.exit, label %.lr.ph36.i

.lr.ph36.i:                                       ; preds = %bb.am
  %i.kl = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !43, !noalias !154
  %.fr37.i = freeze i32 %i.km
  %i.kn = icmp eq i32 %.fr37.i, 2
  %i.ko = getelementptr inbounds nuw i8, ptr %i.e, i64 786560 ; 2 uses
  br i1 %i.kn, label %.preheader.us.i, label %.lr.ph36.split.i

.preheader.us.i:                                  ; preds = %.lr.ph36.i, %.loopexit.us.i
  %indvars.iv43.i = phi i64 [ %indvars.iv.next44.i, %.loopexit.us.i ], [ 0, %.lr.ph36.i ] ; 3 uses
  %indvars.iv41.i = phi i64 [ %indvars.iv.next42.i, %.loopexit.us.i ], [ %i.kk, %.lr.ph36.i ] ; 3 uses
  %.03235.us.i = phi i64 [ %i.kq, %.loopexit.us.i ], [ 0, %.lr.ph36.i ] ; 4 uses
  %umin.a = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %indvars.iv41.i)
  %i.kp = add i64 %umin.a, %indvars.iv43.i
  %umax = tail call i64 @llvm.umax.i64(i64 %i.kp, i64 1) ; 3 uses
  %i.kq = add i64 %.03235.us.i, %i.kk             ; 3 uses
  %i.kr = tail call i64 @llvm.umin.i64(i64 %i.kq, i64 range(i64 -4611686016279904256, 4611686018427387905) %i.l) ; 2 uses
  %i.ks = sub i64 %i.kr, %.03235.us.i
  %i.kt = shl i64 %.03235.us.i, 2                 ; 2 uses
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.kt ; 4 uses
  %i.kv = load ptr, ptr %i.ko, align 64, !tbaa !44, !noalias !154
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kt
  %i.kx = trunc i64 %i.ks to i32
  tail call void @cmsDoTransform(ptr noundef %i.kv, ptr noundef %i.kw, ptr noundef %i.ku, i32 noundef %i.kx) #16
  %.not38.i = icmp eq i64 %i.kr, %.03235.us.i
  br i1 %.not38.i, label %.loopexit.us.i, label %.lr.ph.us.i.preheader

.lr.ph.us.i.preheader:                            ; preds = %.preheader.us.i
  %umin = tail call i64 @llvm.umin.i64(i64 %indvars.iv41.i, i64 %i.l)
  %6 = add i64 %umin, %indvars.iv43.i
  %xtraiter = and i64 %umax, 1
  %i.ky = icmp ult i64 %6, 2
  br i1 %i.ky, label %.lr.ph.us.i.epil.preheader, label %.lr.ph.us.i.preheader.new

.lr.ph.us.i.preheader.new:                        ; preds = %.lr.ph.us.i.preheader
  %unroll_iter = and i64 %umax, -2
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %bb.at, %.lr.ph.us.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.us.i.preheader.new ], [ %indvars.iv.next.i.1, %bb.at ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.us.i.preheader.new ], [ %niter.next.1, %bb.at ]
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 4
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ku, i64 %.idx.i ; 4 uses
  %i.la = load float, ptr %i.kz, align 4, !tbaa !41, !alias.scope !153, !noalias !155
  %i.lb = fcmp reassoc nsz arcp contract afn olt float %i.la, 0.000000e+00
  br i1 %i.lb, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %.lr.ph.us.i
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kz, i64 4
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !41, !alias.scope !153, !noalias !155
  %i.le = fcmp reassoc nsz arcp contract afn olt float %i.ld, 0.000000e+00
  br i1 %i.le, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !41, !alias.scope !153, !noalias !155
  %i.lh = fcmp reassoc nsz arcp contract afn olt float %i.lg, 0.000000e+00
  br i1 %i.lh, label %bb.ap, label %.lr.ph.us.i.1

bb.ap:                                            ; preds = %bb.ao, %bb.an, %.lr.ph.us.i
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.kz, align 16, !tbaa !42, !alias.scope !156, !noalias !155, !nontemporal !152
  br label %.lr.ph.us.i.1

.lr.ph.us.i.1:                                    ; preds = %bb.ap, %bb.ao
  %indvars.iv.next.i = shl i64 %indvars.iv.i, 4
  %i.li = getelementptr inbounds nuw i8, ptr %i.ku, i64 %indvars.iv.next.i ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 16 ; 2 uses
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !41, !alias.scope !153, !noalias !155
  %i.ll = fcmp reassoc nsz arcp contract afn olt float %i.lk, 0.000000e+00
  br i1 %i.ll, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.us.i.1
  %i.lm = getelementptr inbounds nuw i8, ptr %i.li, i64 20
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !41, !alias.scope !153, !noalias !155
  %i.lo = fcmp reassoc nsz arcp contract afn olt float %i.ln, 0.000000e+00
  br i1 %i.lo, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.lp = getelementptr inbounds nuw i8, ptr %i.li, i64 24
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !41, !alias.scope !153, !noalias !155
  %i.lr = fcmp reassoc nsz arcp contract afn olt float %i.lq, 0.000000e+00
  br i1 %i.lr, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar, %bb.aq, %.lr.ph.us.i.1
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.lj, align 16, !tbaa !42, !alias.scope !156, !noalias !155, !nontemporal !152
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.us.i.loopexit.unr-lcssa, label %.lr.ph.us.i

.loopexit.us.i.loopexit.unr-lcssa:                ; preds = %bb.at
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.us.i, label %.lr.ph.us.i.epil.preheader

.lr.ph.us.i.epil.preheader:                       ; preds = %.loopexit.us.i.loopexit.unr-lcssa, %.lr.ph.us.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.us.i.preheader ], [ %indvars.iv.next.i.1, %.loopexit.us.i.loopexit.unr-lcssa ]
  %lcmp.mod60 = trunc i64 %umax to i1
  tail call void @llvm.assume(i1 %lcmp.mod60)
  %.idx.i.epil = shl nuw nsw i64 %indvars.iv.i.epil.init, 4
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ku, i64 %.idx.i.epil ; 4 uses
  %i.lt = load float, ptr %i.ls, align 4, !tbaa !41, !alias.scope !153, !noalias !155
  %i.lu = fcmp reassoc nsz arcp contract afn olt float %i.lt, 0.000000e+00
  br i1 %i.lu, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %.lr.ph.us.i.epil.preheader
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 4
  %i.lw = load float, ptr %i.lv, align 4, !tbaa !41, !alias.scope !153, !noalias !155
  %i.lx = fcmp reassoc nsz arcp contract afn olt float %i.lw, 0.000000e+00
  br i1 %i.lx, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !41, !alias.scope !153, !noalias !155
  %i.ma = fcmp reassoc nsz arcp contract afn olt float %i.lz, 0.000000e+00
  br i1 %i.ma, label %bb.aw, label %.loopexit.us.i

bb.aw:                                            ; preds = %bb.av, %bb.au, %.lr.ph.us.i.epil.preheader
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.ls, align 16, !tbaa !42, !alias.scope !156, !noalias !155, !nontemporal !152
  br label %.loopexit.us.i

.loopexit.us.i:                                   ; preds = %.loopexit.us.i.loopexit.unr-lcssa, %bb.aw, %bb.av, %.preheader.us.i
  %i.mb = icmp ult i64 %i.kq, %i.l
  %indvars.iv.next42.i = add i64 %indvars.iv41.i, %i.kk
  %indvars.iv.next44.i = sub i64 %indvars.iv43.i, %i.kk
  br i1 %i.mb, label %.preheader.us.i, label %_transform_lcms.exit

.lr.ph36.split.i:                                 ; preds = %.lr.ph36.i, %.lr.ph36.split.i
  %.03235.i = phi i64 [ %i.mc, %.lr.ph36.split.i ], [ 0, %.lr.ph36.i ] ; 3 uses
  %i.mc = add i64 %.03235.i, %i.kk                ; 3 uses
  %i.md = tail call i64 @llvm.umin.i64(i64 %i.mc, i64 range(i64 -4611686016279904256, 4611686018427387905) %i.l)
  %i.me = sub i64 %i.md, %.03235.i
  %i.mf = shl i64 %.03235.i, 2                    ; 2 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.mf
  %i.mh = load ptr, ptr %i.ko, align 64, !tbaa !44, !noalias !154
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.mf
  %i.mj = trunc i64 %i.me to i32
  tail call void @cmsDoTransform(ptr noundef %i.mh, ptr noundef %i.mi, ptr noundef %i.mg, i32 noundef %i.mj) #16
  %i.mk = icmp ult i64 %i.mc, %i.l
  br i1 %i.mk, label %.lr.ph36.split.i, label %_transform_lcms.exit

_transform_lcms.exit:                             ; preds = %.lr.ph36.split.i, %.loopexit.us.i, %bb.am
  tail call void @llvm.x86.sse.sfence()
  br label %_process_fastpath_apply_tonecurves.exit

_process_fastpath_apply_tonecurves.exit:          ; preds = %bb.u, %bb.al, %.thread.i, %bb.w, %.preheader2.i, %bb.i, %bb.c, %_transform_cmatrix.exit, %_transform_lcms.exit, %bb.a
  ret void
}

declare i32 @dt_iop_have_required_input_format(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @commit_params(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) initializes((216, 220)) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !37  ; 38 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !46     ; 2 uses
  store i32 %i.c, ptr %i.b, align 64, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !57
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !157
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 516 ; 5 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !58
  %i.k = tail call ptr @dt_ioppr_set_pipe_export_profile_info(ptr noundef %i.e, ptr noundef %i.g, i32 noundef %i.c, ptr noundef nonnull %i.h, i32 noundef %i.j) #16 ; 0 uses
  %i.l = tail call i32 @dt_conf_get_bool(ptr noundef nonnull @.str.13) #16
  %i.m = tail call ptr @dt_colorspaces_get_profile(i32 noundef 6, ptr noundef nonnull @.str.14, i32 noundef 63) #16
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1032
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !158  ; 2 uses
  %i.p = getelementptr i8, ptr %2, i64 644        ; 3 uses
  %.val151 = load i32, ptr %i.p, align 4, !tbaa !165 ; 2 uses
  %i.q = and i32 %.val151, 2
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 216), align 8, !tbaa !104
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2184
  %i.t = load i32, ptr %i.s, align 8, !tbaa !167
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.u = phi i32 [ %i.t, %bb.b ], [ 0, %bb.a ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 4 uses
  store i32 %i.u, ptr %i.v, align 4, !tbaa !43
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 786560 ; 5 uses
  %i.x = load ptr, ptr %i.w, align 64, !tbaa !44  ; 2 uses
  %.not135 = icmp eq ptr %i.x, null
  br i1 %.not135, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @cmsDeleteTransform(ptr noundef nonnull %i.x) #16
  store ptr null, ptr %i.w, align 64, !tbaa !44
  %.val152.pre = load i32, ptr %i.p, align 4, !tbaa !165
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.val152 = phi i32 [ %.val151, %bb.c ], [ %.val152.pre, %bb.d ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 786496 ; 6 uses
  store float +qnan, ptr %i.y, align 64, !tbaa !41
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store float -1.000000e+00, ptr %i.z, align 8, !tbaa !41
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 262152 ; 3 uses
  store float -1.000000e+00, ptr %i.aa, align 8, !tbaa !41
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 524296 ; 3 uses
  store float -1.000000e+00, ptr %i.ab, align 8, !tbaa !41
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 216 ; 3 uses
  store i32 1, ptr %i.ac, align 8, !tbaa !168
  %i.ad = and i32 %.val152, 1
  %.not136 = icmp eq i32 %i.ad, 0
  br i1 %.not136, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 2544
  %i.af = load i32, ptr %i.ae, align 16, !tbaa !169 ; 2 uses
  %.not139 = icmp eq i32 %i.af, -1
  br i1 %.not139, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.af, ptr %1, align 4, !tbaa !46
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 2552
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !170
  %i.ai = tail call i64 @dt_strlcpy_to_fixed(ptr noundef nonnull %i.h, ptr noundef %i.ah, i64 noundef 512) #16 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 2560
  %i.ak = load i32, ptr %i.aj, align 16, !tbaa !171 ; 2 uses
  %i.al = icmp ult i32 %i.ak, 4
end_hunk_1
