Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/hxprops?download=true
inline.NumInlined: 101
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_Z8av_hblenP8_IO_FILES0_S0_S0_S0_S0_fiP4t_bb:bb.a
  %i.ai = fdiv float %.147, %i.ah
  %i.aj = fpext float %i.ai to double
  %i.ak = sitofp i32 %.252 to float
  %i.al = sitofp i32 %.149 to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.050.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ak, %._crit_edge.loopexit ]
  %.048.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.al, %._crit_edge.loopexit ]
  %.044.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.2, %._crit_edge.loopexit ]
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.1, %._crit_edge.loopexit ]
  %i.am = phi double [ +qnan, %bb.a ], [ %i.aj, %._crit_edge.loopexit ]
  %i.an = fpext float %6 to double                ; 3 uses
  %i.ao = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, double noundef %i.an, double noundef %i.am) #21 ; 0 uses
  %i.ap = fdiv float %.044.lcssa, %.050.lcssa
  %i.aq = fpext float %i.ap to double
  %i.ar = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.3, double noundef %i.an, double noundef %i.aq) #21 ; 0 uses
  %i.as = fdiv float %.0.lcssa, %.048.lcssa
  %i.at = fpext float %i.as to double
  %i.au = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.3, double noundef %i.an, double noundef %i.at) #21 ; 0 uses
  %fputc = tail call i32 @fputc(i32 10, ptr %1)   ; 0 uses
  %fputc56 = tail call i32 @fputc(i32 10, ptr %3) ; 0 uses
  %fputc57 = tail call i32 @fputc(i32 10, ptr %5) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_Z9av_phipsiP8_IO_FILES0_S0_S0_fiP4t_bb(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, float noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6) local_unnamed_addr #5 {
bb.a:
  %i.a = fpext float %4 to double                 ; 4 uses
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2, double noundef %i.a) #21 ; 0 uses
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.2, double noundef %i.a) #21 ; 0 uses
  %i.d = icmp sgt i32 %5, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %5 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.03338 = phi i32 [ 0, %.lr.ph.preheader ], [ %.134, %bb.c ] ; 2 uses
  %i.e = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.t, %bb.c ] ; 2 uses
  %i.f = getelementptr inbounds nuw [108 x i8], ptr %6, i64 %indvars.iv ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i8, ptr %i.g, align 4, !tbaa !19, !range !20, !noundef !21
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.k = load <2 x float>, ptr %i.f, align 4, !tbaa !10 ; 2 uses
  %i.l = fadd <2 x float> %i.e, %i.k
  %i.m = extractelement <2 x float> %i.k, i64 0
  %i.n = fpext float %i.m to double
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str, double noundef %i.n) #21 ; 0 uses
  %i.p = load float, ptr %i.j, align 4, !tbaa !25
  %i.q = fpext float %i.p to double
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str, double noundef %i.q) #21 ; 0 uses
  %i.s = add nsw i32 %.03338, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.134 = phi i32 [ %i.s, %bb.b ], [ %.03338, %.lr.ph ] ; 2 uses
  %i.t = phi <2 x float> [ %i.l, %bb.b ], [ %i.e, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !63

._crit_edge.loopexit:                             ; preds = %bb.c
  %i.u = sitofp i32 %.134 to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.033.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.u, %._crit_edge.loopexit ]
  %i.v = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.t, %._crit_edge.loopexit ]
  %i.w = insertelement <2 x float> poison, float %.033.lcssa, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = fdiv <2 x float> %i.v, %i.x
  %i.z = fpext <2 x float> %i.y to <2 x double>   ; 2 uses
  %i.aa = extractelement <2 x double> %i.z, i64 0
  %i.ab = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, double noundef %i.a, double noundef %i.aa) #21 ; 0 uses
  %i.ac = extractelement <2 x double> %i.z, i64 1
  %i.ad = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.3, double noundef %i.a, double noundef %i.ac) #21 ; 0 uses
  %fputc = tail call i32 @fputc(i32 10, ptr %2)   ; 0 uses
  %fputc36 = tail call i32 @fputc(i32 10, ptr %3) ; 0 uses
  ret void
}

; Function Attrs: cold mustprogress uwtable
define noundef ptr @_Z7mkbbindPKcPiS1_iS1_PS1_PPPcP6t_atomP9t_resinfo(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4, ptr noundef %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8) local_unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %9 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !28
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.10, i64 53, i64 1, ptr %i.c) #22 ; 0 uses
  call void @_Z8rd_indexPKciPiPS1_PPc(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.b, ptr noundef %5, ptr noundef nonnull %i.a)
  %i.d = load i32, ptr %i.b, align 4, !tbaa !14
  store i32 %i.d, ptr %4, align 4, !tbaa !14
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.g = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.11, ptr noundef %i.f) #23 ; 0 uses
  %i.h = load ptr, ptr %5, align 8, !tbaa !79     ; 4 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !14
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [36 x i8], ptr %7, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load i32, ptr %i.l, align 4, !tbaa !80   ; 7 uses
  %i.n = load i32, ptr %i.b, align 4, !tbaa !14   ; 4 uses
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.n to i64    ; 2 uses
  %i.p = add nsw i64 %wide.trip.count, -1         ; 5 uses
  %min.iters.check = icmp ult i32 %i.n, 9
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check263 = icmp ult i32 %i.n, 33
  br i1 %min.iters.check263, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %i.p, 24
  %n.vec = and i64 %i.p, -32                      ; 4 uses
  %i.r = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.m, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ab, %vector.body ]
  %vec.phi264 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ac, %vector.body ]
  %vec.phi265 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ad, %vector.body ]
  %vec.phi266 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ae, %vector.body ]
  %vec.phi267 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.af, %vector.body ]
  %vec.phi268 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ag, %vector.body ]
  %vec.phi269 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ah, %vector.body ]
  %vec.phi270 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ai, %vector.body ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 36
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 68
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 100
  %wide.load = load <8 x i32>, ptr %i.t, align 4, !tbaa !14
  %wide.load271 = load <8 x i32>, ptr %i.u, align 4, !tbaa !14
  %wide.load272 = load <8 x i32>, ptr %i.v, align 4, !tbaa !14
  %wide.load273 = load <8 x i32>, ptr %i.w, align 4, !tbaa !14
  %i.x = sext <8 x i32> %wide.load to <8 x i64>
  %i.y = sext <8 x i32> %wide.load271 to <8 x i64>
  %i.z = sext <8 x i32> %wide.load272 to <8 x i64>
  %i.aa = sext <8 x i32> %wide.load273 to <8 x i64>
  %wide.gep = getelementptr inbounds [36 x i8], ptr %7, <8 x i64> %i.x
  %wide.gep274 = getelementptr inbounds [36 x i8], ptr %7, <8 x i64> %i.y
  %wide.gep275 = getelementptr inbounds [36 x i8], ptr %7, <8 x i64> %i.z
  %wide.gep276 = getelementptr inbounds [36 x i8], ptr %7, <8 x i64> %i.aa
  %wide.gep277 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 24
  %wide.gep278 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep274, i64 24
  %wide.gep279 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep275, i64 24
  %wide.gep280 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep276, i64 24
  %wide.masked.gather = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep277, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !14 ; 2 uses
  %wide.masked.gather281 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep278, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !14 ; 2 uses
  %wide.masked.gather282 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep279, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !14 ; 2 uses
  %wide.masked.gather283 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep280, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !14 ; 2 uses
  %i.ab = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather, <8 x i32> %vec.phi) ; 2 uses
  %i.ac = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather281, <8 x i32> %vec.phi264) ; 2 uses
  %i.ad = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather282, <8 x i32> %vec.phi265) ; 2 uses
  %i.ae = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather283, <8 x i32> %vec.phi266) ; 2 uses
  %i.af = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi267, <8 x i32> %wide.masked.gather) ; 2 uses
  %i.ag = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi268, <8 x i32> %wide.masked.gather281) ; 2 uses
  %i.ah = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi269, <8 x i32> %wide.masked.gather282) ; 2 uses
  %i.ai = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi270, <8 x i32> %wide.masked.gather283) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.ab, <8 x i32> %i.ac)
  %rdx.minmax284 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax, <8 x i32> %i.ad)
  %rdx.minmax285 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax284, <8 x i32> %i.ae)
  %i.ak = call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %rdx.minmax285) ; 3 uses
  %rdx.minmax286 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.af, <8 x i32> %i.ag)
  %rdx.minmax287 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax286, <8 x i32> %i.ah)
  %rdx.minmax288 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax287, <8 x i32> %i.ai)
  %i.al = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax288) ; 3 uses
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !81

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.ak, %vec.epilog.iter.check ], [ %i.m, %vector.main.loop.iter.check ]
  %bc.merge.rdx289 = phi i32 [ %i.al, %vec.epilog.iter.check ], [ %i.m, %vector.main.loop.iter.check ]
  %broadcast.splatinsert295 = insertelement <8 x i32> poison, i32 %bc.merge.rdx289, i64 0
  %broadcast.splat296 = shufflevector <8 x i32> %broadcast.splatinsert295, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert291 = insertelement <8 x i32> poison, i32 %bc.merge.rdx, i64 0
  %broadcast.splat292 = shufflevector <8 x i32> %broadcast.splatinsert291, <8 x i32> poison, <8 x i32> zeroinitializer
  %n.vec290 = and i64 %i.p, -8                    ; 3 uses
  %10 = or disjoint i64 %n.vec290, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index295 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next302, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi296 = phi <8 x i32> [ %broadcast.splat292, %vec.epilog.ph ], [ %i.ap, %vec.epilog.vector.body ]
  %vec.phi297 = phi <8 x i32> [ %broadcast.splat296, %vec.epilog.ph ], [ %i.aq, %vec.epilog.vector.body ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index295
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %wide.load298 = load <8 x i32>, ptr %i.an, align 4, !tbaa !14
  %i.ao = sext <8 x i32> %wide.load298 to <8 x i64>
  %wide.gep299 = getelementptr inbounds [36 x i8], ptr %7, <8 x i64> %i.ao
  %wide.gep300 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep299, i64 24
  %wide.masked.gather301 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep300, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !14 ; 2 uses
  %i.ap = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather301, <8 x i32> %vec.phi296) ; 2 uses
  %i.aq = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi297, <8 x i32> %wide.masked.gather301) ; 2 uses
  %index.next302 = add nuw i64 %index295, 8       ; 2 uses
  %i.ar = icmp eq i64 %index.next302, %n.vec290
  br i1 %i.ar, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !65

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.as = call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %i.ap) ; 2 uses
  %i.at = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %i.aq) ; 2 uses
  %cmp.n303 = icmp eq i64 %i.p, %n.vec290
  br i1 %cmp.n303, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ %i.r, %vec.epilog.iter.check ], [ %10, %vec.epilog.middle.block ]
  %.0167175.ph = phi i32 [ %i.m, %iter.check ], [ %i.ak, %vec.epilog.iter.check ], [ %i.as, %vec.epilog.middle.block ]
  %.0168174.ph = phi i32 [ %i.m, %iter.check ], [ %i.al, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.0168.lcssa = phi i32 [ %i.m, %bb.a ], [ %i.at, %vec.epilog.middle.block ], [ %i.al, %middle.block ], [ %.sroa.speculated139, %.lr.ph ] ; 3 uses
  %.0167.lcssa = phi i32 [ %i.m, %bb.a ], [ %i.as, %vec.epilog.middle.block ], [ %i.ak, %middle.block ], [ %.sroa.speculated146, %.lr.ph ] ; 4 uses
  %i.au = sub nsw i32 %.0168.lcssa, %.0167.lcssa  ; 5 uses
  %i.av = add nsw i32 %i.au, 1                    ; 2 uses
  %i.aw = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.ax = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aw, ptr noundef nonnull @.str.12, i32 noundef %i.av) #23 ; 0 uses
  %i.ay = sext i32 %i.av to i64
  %i.az = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 344, i64 noundef range(i64 -2147483647, 2147483648) %i.ay, i64 noundef 108) ; 37 uses
  %.not178 = icmp slt i32 %i.au, 0                ; 2 uses
  br i1 %.not178, label %.preheader173, label %.lr.ph181.preheader

.lr.ph181.preheader:                              ; preds = %._crit_edge
  %i.ba = add i32 %.0168.lcssa, 1
  %i.bb = sub i32 %i.ba, %.0167.lcssa             ; 2 uses
  %wide.trip.count216 = zext i32 %i.bb to i64     ; 2 uses
  %xtraiter = and i64 %wide.trip.count216, 7      ; 3 uses
  %i.bc = add i32 %i.bb, -1
  %i.bd = icmp ult i32 %i.bc, 7
  br i1 %i.bd, label %.lr.ph181.epil.preheader, label %.lr.ph181.preheader.new

.lr.ph181.preheader.new:                          ; preds = %.lr.ph181.preheader
  %unroll_iter = and i64 %wide.trip.count216, 4294967288
  br label %.lr.ph181

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %.0167175 = phi i32 [ %.sroa.speculated146, %.lr.ph ], [ %.0167175.ph, %.lr.ph.preheader ]
  %.0168174 = phi i32 [ %.sroa.speculated139, %.lr.ph ], [ %.0168174.ph, %.lr.ph.preheader ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !14
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [36 x i8], ptr %7, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !14 ; 2 uses
  %.sroa.speculated146 = call i32 @llvm.smin.i32(i32 %i.bj, i32 %.0167175) ; 2 uses
  %.sroa.speculated139 = call i32 @llvm.smax.i32(i32 %.0168174, i32 %i.bj) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !66

.preheader173.loopexit.unr-lcssa:                 ; preds = %.lr.ph181
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader173, label %.lr.ph181.epil.preheader

.lr.ph181.epil.preheader:                         ; preds = %.preheader173.loopexit.unr-lcssa, %.lr.ph181.preheader
  %indvars.iv213.epil.init = phi i64 [ 0, %.lr.ph181.preheader ], [ %indvars.iv.next214.7, %.preheader173.loopexit.unr-lcssa ]
  %lcmp.mod318 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod318)
  br label %.lr.ph181.epil

.lr.ph181.epil:                                   ; preds = %.lr.ph181.epil, %.lr.ph181.epil.preheader
  %indvars.iv213.epil = phi i64 [ %indvars.iv213.epil.init, %.lr.ph181.epil.preheader ], [ %indvars.iv.next214.epil, %.lr.ph181.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph181.epil.preheader ], [ %epil.iter.next, %.lr.ph181.epil ]
  %i.bk = getelementptr inbounds nuw [108 x i8], ptr %i.az, i64 %indvars.iv213.epil ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 52
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 44
  %i.bn = trunc i64 %indvars.iv213.epil to i32
  %i.bo = add i32 %3, %i.bn
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bl, i8 -1, i64 20, i1 false)
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !32
  %indvars.iv.next214.epil = add nuw nsw i64 %indvars.iv213.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader173, label %.lr.ph181.epil, !llvm.loop !67

.preheader173:                                    ; preds = %.preheader173.loopexit.unr-lcssa, %.lr.ph181.epil, %._crit_edge
  %i.bp = load i32, ptr %i.b, align 4, !tbaa !14
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %.lr.ph184, label %.preheader172

.lr.ph184:                                        ; preds = %.preheader173
  %i.br = load ptr, ptr %5, align 8, !tbaa !79
  br label %bb.b

.lr.ph181:                                        ; preds = %.lr.ph181, %.lr.ph181.preheader.new
  %indvars.iv213 = phi i64 [ 0, %.lr.ph181.preheader.new ], [ %indvars.iv.next214.7, %.lr.ph181 ] ; 10 uses
  %niter = phi i64 [ 0, %.lr.ph181.preheader.new ], [ %niter.next.7, %.lr.ph181 ]
  %i.bs = getelementptr inbounds nuw [108 x i8], ptr %i.az, i64 %indvars.iv213 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 52
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 44
  %i.bv = trunc i64 %indvars.iv213 to i32
  %i.bw = add i32 %3, %i.bv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bt, i8 -1, i64 20, i1 false)
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !32
  %indvars.iv.next214 = or disjoint i64 %indvars.iv213, 1 ; 2 uses
  %i.bx = getelementptr inbounds nuw [108 x i8], ptr %i.az, i64 %indvars.iv.next214 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 52
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 44
  %i.ca = trunc i64 %indvars.iv.next214 to i32
  %i.cb = add i32 %3, %i.ca
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.by, i8 -1, i64 20, i1 false)
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !32
  %indvars.iv.next214.1 = or disjoint i64 %indvars.iv213, 2 ; 2 uses
  %i.cc = getelementptr inbounds nuw [108 x i8], ptr %i.az, i64 %indvars.iv.next214.1 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 52
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 44
  %i.cf = trunc i64 %indvars.iv.next214.1 to i32
  %i.cg = add i32 %3, %i.cf
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cd, i8 -1, i64 20, i1 false)
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !32
  %indvars.iv.next214.2 = or disjoint i64 %indvars.iv213, 3 ; 2 uses
  %i.ch = getelementptr inbounds nuw [108 x i8], ptr %i.az, i64 %indvars.iv.next214.2 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 52
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 44
  %i.ck = trunc i64 %indvars.iv.next214.2 to i32
  %i.cl = add i32 %3, %i.ck
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ci, i8 -1, i64 20, i1 false)
  store i32 %i.cl, ptr %i.cj, align 4, !tbaa !32
  %indvars.iv.next214.3 = or disjoint i64 %indvars.iv213, 4 ; 2 uses
  %i.cm = getelementptr inbounds nuw [108 x i8], ptr %i.az, i64 %indvars.iv.next214.3 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 52
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 44
  %i.cp = trunc i64 %indvars.iv.next214.3 to i32
  %i.cq = add i32 %3, %i.cp
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cn, i8 -1, i64 20, i1 false)
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !32
  %indvars.iv.next214.4 = or disjoint i64 %indvars.iv213, 5 ; 2 uses
  %i.cr = getelementptr inbounds nuw [108 x i8], ptr %i.az, i64 %indvars.iv.next214.4 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 52
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 44
  %i.cu = trunc i64 %indvars.iv.next214.4 to i32
  %i.cv = add i32 %3, %i.cu
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cs, i8 -1, i64 20, i1 false)
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !32
  %indvars.iv.next214.5 = or disjoint i64 %indvars.iv213, 6 ; 2 uses
  %i.cw = getelementptr inbounds nuw [108 x i8], ptr %i.az, i64 %indvars.iv.next214.5 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 52
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 44
  %i.cz = trunc i64 %indvars.iv.next214.5 to i32
  %i.da = add i32 %3, %i.cz
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cx, i8 -1, i64 20, i1 false)
  store i32 %i.da, ptr %i.cy, align 4, !tbaa !32
  %indvars.iv.next214.6 = or disjoint i64 %indvars.iv213, 7 ; 2 uses
  %i.db = getelementptr inbounds nuw [108 x i8], ptr %i.az, i64 %indvars.iv.next214.6 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 52
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 44
  %i.de = trunc i64 %indvars.iv.next214.6 to i32
  %i.df = add i32 %3, %i.de
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.dc, i8 -1, i64 20, i1 false)
  store i32 %i.df, ptr %i.dd, align 4, !tbaa !32
  %indvars.iv.next214.7 = add nuw nsw i64 %indvars.iv213, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader173.loopexit.unr-lcssa, label %.lr.ph181, !llvm.loop !68

.preheader172:                                    ; preds = %bb.i, %.preheader173
  br i1 %.not178, label %._crit_edge195, label %.lr.ph187.preheader

.lr.ph187.preheader:                              ; preds = %.preheader172
  %i.dg = add i32 %.0168.lcssa, 1
  %i.dh = sub i32 %i.dg, %.0167.lcssa             ; 2 uses
  %wide.trip.count228 = zext i32 %i.dh to i64
  br label %.lr.ph187

bb.b:                                             ; preds = %.lr.ph184, %bb.i
  %indvars.iv222 = phi i64 [ 0, %.lr.ph184 ], [ %indvars.iv.next223, %bb.i ] ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv222
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !14 ; 3 uses
  %i.dk = sext i32 %i.dj to i64                   ; 2 uses
  %i.dl = getelementptr inbounds [36 x i8], ptr %7, i64 %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !80 ; 2 uses
  %i.do = sub nsw i32 %i.dn, %.0167.lcssa         ; 2 uses
  %i.dp = sext i32 %i.dn to i64
  %i.dq = getelementptr inbounds [32 x i8], ptr %8, i64 %i.dp
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !85
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !77
  %i.dt = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ds, ptr noundef nonnull dereferenceable(4) @.str.15) #24
  %i.du = icmp eq i32 %i.dt, 0
  %i.dv = getelementptr inbounds [8 x i8], ptr %6, i64 %i.dk
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !86
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !77 ; 9 uses
  br i1 %i.du, label %sub_0, label %.tail.thread

end_hunk_0
