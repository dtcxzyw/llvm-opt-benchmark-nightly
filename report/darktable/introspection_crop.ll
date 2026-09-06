Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_crop?download=true
inline.NumInlined: 46
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@distort_backtransform:bb.a

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.015 = phi i64 [ %i.af, %.lr.ph ], [ %.015.ph, %.lr.ph.preheader ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.015 ; 2 uses
  %i.ad = load <2 x float>, ptr %i.ac, align 8, !tbaa !110
  %i.ae = fadd reassoc nsz arcp contract afn <2 x float> %i.ad, %i.e
  store <2 x float> %i.ae, ptr %i.ac, align 8, !tbaa !110
  %i.af = add nuw i64 %.015, 2                    ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.i
  br i1 %i.ag, label %.lr.ph, label %.loopexit, !llvm.loop !211

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.b, %bb.a
  ret i32 1
}

; Function Attrs: nounwind uwtable
define void @distort_mask(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  tail call void @dt_iop_copy_image_roi(ptr noundef %3, ptr noundef %2, i64 noundef 1, ptr noundef %4, ptr noundef %5) #22
  ret void
}

declare void @dt_iop_copy_image_roi(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @modify_roi_out(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 20)) %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !111
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !122 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load <2 x i32>, ptr %i.e, align 4, !tbaa !109
  %i.l = sitofp <2 x i32> %i.k to <2 x float>     ; 2 uses
  %i.m = load <2 x float>, ptr %i.f, align 4, !tbaa !110 ; 2 uses
  %i.n = load <2 x float>, ptr %i.h, align 4, !tbaa !110
  %i.o = fsub reassoc nsz arcp contract afn <2 x float> %i.n, %i.m
  %i.p = fmul reassoc nsz arcp contract afn <2 x float> %i.o, %i.l ; 3 uses
  %i.q = extractelement <2 x float> %i.p, i64 1   ; 2 uses
  %i.r = fmul reassoc nsz arcp contract afn <2 x float> %i.m, %i.l
  %i.s = fptosi <2 x float> %i.r to <2 x i32>
  %i.t = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.s, <2 x i32> zeroinitializer) ; 2 uses
  %i.u = fptosi float %i.q to i32
  %i.v = fptosi <2 x float> %i.p to <2 x i32>
  %i.w = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.v, <2 x i32> splat (i32 4)) ; 4 uses
  %i.x = shufflevector <2 x i32> %i.t, <2 x i32> %i.w, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.x, ptr %2, align 4, !tbaa !109
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !212  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !124
  %.not99 = icmp eq i32 %i.ab, 0
  br i1 %.not99, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr i8, ptr %i.z, i64 644
  %.val = load i32, ptr %i.ac, align 4, !tbaa !132
  %i.ad = and i32 %.val, 9
  %i.ae = icmp ne i32 %i.ad, 0
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !133
  %i.ah = icmp ne i32 %i.ag, 0
  %or.cond = select i1 %i.ae, i1 %i.ah, i1 false
  br i1 %or.cond, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.ai = extractelement <2 x float> %i.p, i64 0
  %i.aj = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.ai) ; 6 uses
  %i.ak = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.q) ; 6 uses
  %i.al = load float, ptr %i.d, align 4, !tbaa !134 ; 3 uses
  %i.am = fcmp reassoc nsz arcp contract afn olt float %i.al, 0.000000e+00 ; 2 uses
  %i.an = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.al
  %i.ao = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.an)
  %i.ap = select reassoc nsz arcp contract afn i1 %i.am, float %i.ao, float %i.al ; 5 uses
  %i.aq = fpext reassoc nsz arcp contract afn float %i.ap to double ; 2 uses
  %i.ar = fcmp reassoc nsz arcp contract afn ogt double %i.aq, 1.000000e-05 ; 2 uses
  %i.as = load i32, ptr %i.e, align 4, !tbaa !213
  %i.at = load i32, ptr %i.g, align 4, !tbaa !214
  %.not100 = icmp slt i32 %i.as, %i.at            ; 3 uses
  br i1 %i.ar, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.au = fcmp reassoc nsz arcp contract afn ogt float %i.aj, %i.ak
  br i1 %i.au, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.av = fdiv reassoc nsz arcp contract afn float %i.aj, %i.ap
  %i.aw = fmul reassoc nsz arcp contract afn float %i.ap, %i.aj
  %i.ax = select reassoc nsz arcp contract afn i1 %.not100, float %i.aw, float %i.av
  %i.ay = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.ax)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.az = fmul reassoc nsz arcp contract afn float %i.ap, %i.ak
  %i.ba = fdiv reassoc nsz arcp contract afn float %i.ak, %i.ap
  %i.bb = select reassoc nsz arcp contract afn i1 %.not100, float %i.ba, float %i.az
  %i.bc = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.bb)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %.093 = phi nsz float [ %i.aj, %bb.e ], [ %i.bc, %bb.f ], [ %i.aj, %bb.c ]
  %.0 = phi nsz float [ %i.ay, %bb.e ], [ %i.ak, %bb.f ], [ %i.ak, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.bd = extractelement <2 x i32> %i.w, i64 0    ; 2 uses
  %.not101 = icmp slt i32 %i.bd, %i.u             ; 2 uses
  %.in = select i1 %.not101, ptr %i.af, ptr %i.aa
  %i.be = load i32, ptr %.in, align 4, !tbaa !109
  store i32 %i.be, ptr %i.a, align 4, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %.in103 = select i1 %.not101, ptr %i.aa, ptr %i.af
  %i.bf = load i32, ptr %.in103, align 4, !tbaa !109
  store i32 %i.bf, ptr %i.b, align 4, !tbaa !109
  %i.bg = call fastcc i32 @_reduce_aligners(ptr noundef %i.a, ptr noundef %i.b)
  %.not104 = icmp eq i32 %i.bg, 0
  br i1 %.not104, label %.thread110, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = load i32, ptr %i.a, align 4, !tbaa !109
  %i.bi = srem i32 %i.bd, %i.bh
  %i.bj = load i32, ptr %i.b, align 4, !tbaa !109
  %i.bk = extractelement <2 x i32> %i.w, i64 1
  %i.bl = srem i32 %i.bk, %i.bj
  br label %.thread110

.thread110:                                       ; preds = %bb.g, %bb.h
  %i.bm = phi i32 [ %i.bi, %bb.h ], [ 0, %bb.g ]  ; 2 uses
  %i.bn = phi i32 [ %i.bl, %bb.h ], [ 0, %bb.g ]  ; 2 uses
  %i.bo = insertelement <2 x i32> poison, i32 %i.bm, i64 0
  %i.bp = insertelement <2 x i32> %i.bo, i32 %i.bn, i64 1 ; 2 uses
  %i.bq = lshr <2 x i32> %i.bp, splat (i32 1)
  %i.br = add nuw nsw <2 x i32> %i.bq, %i.t       ; 2 uses
  %i.bs = extractelement <2 x i32> %i.br, i64 0
  store i32 %i.bs, ptr %2, align 4, !tbaa !215
  %i.bt = extractelement <2 x i32> %i.br, i64 1
  store i32 %i.bt, ptr %i.i, align 4, !tbaa !216
  %i.bu = sub nsw <2 x i32> %i.w, %i.bp
  %i.bv = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.bu, <2 x i32> splat (i32 4))
  store <2 x i32> %i.bv, ptr %i.j, align 4, !tbaa !109
  %i.bw = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !107
  %i.bx = and i32 %i.bw, 50331648
  %or.cond107.not = icmp eq i32 %i.bx, 50331648
  br i1 %or.cond107.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread110
  %i.by = select i1 %i.am, ptr @.str.18, ptr @.str.8
  %i.bz = select i1 %i.ar, ptr @.str.19, ptr @.str.8
  %i.ca = select i1 %.not100, ptr @.str.21, ptr @.str.20
  %i.cb = fpext reassoc nsz arcp contract afn float %i.aj to double
  %i.cc = fpext reassoc nsz arcp contract afn float %i.ak to double
  %i.cd = fpext reassoc nsz arcp contract afn float %.093 to double
  %i.ce = fpext reassoc nsz arcp contract afn float %.0 to double
  %i.cf = load i32, ptr %i.a, align 4, !tbaa !109
  %i.cg = load i32, ptr %i.b, align 4, !tbaa !109
  tail call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.16, ptr noundef nonnull %i.z, ptr noundef %0, i32 noundef -2, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.by, ptr noundef nonnull %i.bz, ptr noundef nonnull %i.ca, double noundef %i.aq, double noundef %i.cb, double noundef %i.cc, double noundef %i.cd, double noundef %i.ce, i32 noundef %i.cf, i32 noundef %i.cg, i32 noundef %i.bm, i32 noundef %i.bn) #22
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.j
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 2) i32 @_reduce_aligners(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #9 {
.preheader:
  %i.a = load i32, ptr %0, align 4, !tbaa !109
  %i.b = load i32, ptr %1, align 4, !tbaa !109
  %i.c = insertelement <2 x i32> poison, i32 %i.b, i64 0
  %i.d = insertelement <2 x i32> %i.c, i32 %i.a, i64 1 ; 2 uses
  %i.e = icmp eq <2 x i32> %i.d, zeroinitializer
  %i.f = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.d, i1 true)
  %i.g = select <2 x i1> %i.e, <2 x i32> splat (i32 1), <2 x i32> %i.f ; 3 uses
  %i.h = extractelement <2 x i32> %i.g, i64 1
  %i.i = urem i32 %i.h, 7
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader, %bb.a
  %i.k = phi <2 x i32> [ %i.o, %bb.a ], [ %i.g, %.preheader ] ; 3 uses
  %i.l = extractelement <2 x i32> %i.k, i64 0
  %i.m = urem i32 %i.l, 7
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.a, label %.critedge

bb.a:                                             ; preds = %.lr.ph
  %i.o = udiv <2 x i32> %i.k, splat (i32 7)       ; 3 uses
  %i.p = extractelement <2 x i32> %i.o, i64 1
  %i.q = urem i32 %i.p, 7
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.lr.ph, label %.critedge

.critedge:                                        ; preds = %bb.a, %.lr.ph, %.preheader
  %i.s = phi <2 x i32> [ %i.g, %.preheader ], [ %i.k, %.lr.ph ], [ %i.o, %bb.a ] ; 3 uses
  %i.t = extractelement <2 x i32> %i.s, i64 1     ; 2 uses
  %i.u = urem i32 %i.t, 6
  %i.v = icmp eq i32 %i.u, 0
  %i.w = extractelement <2 x i32> %i.s, i64 0
  br i1 %i.v, label %.lr.ph.1.preheader, label %.critedge.1

.lr.ph.1.preheader:                               ; preds = %.critedge
  %i.x = shufflevector <2 x i32> %i.s, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph.1.preheader, %bb.b
  %i.y = phi <2 x i32> [ %i.ac, %bb.b ], [ %i.x, %.lr.ph.1.preheader ] ; 3 uses
  %i.z = extractelement <2 x i32> %i.y, i64 1     ; 2 uses
  %i.aa = urem i32 %i.z, 6
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.b, label %.critedge.1.loopexit.split.loop.exit36

bb.b:                                             ; preds = %.lr.ph.1
  %i.ac = udiv <2 x i32> %i.y, splat (i32 6)      ; 3 uses
  %i.ad = extractelement <2 x i32> %i.ac, i64 0   ; 2 uses
  %i.ae = urem i32 %i.ad, 6
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph.1, label %.critedge.1.loopexit.split.loop.exit

.critedge.1.loopexit.split.loop.exit:             ; preds = %bb.b
  %i.ag = extractelement <2 x i32> %i.ac, i64 1
  br label %.critedge.1

.critedge.1.loopexit.split.loop.exit36:           ; preds = %.lr.ph.1
  %i.ah = extractelement <2 x i32> %i.y, i64 0
  br label %.critedge.1

.critedge.1:                                      ; preds = %.critedge.1.loopexit.split.loop.exit, %.critedge.1.loopexit.split.loop.exit36, %.critedge
  %.124.lcssa.1 = phi i32 [ %i.t, %.critedge ], [ %i.ad, %.critedge.1.loopexit.split.loop.exit ], [ %i.ah, %.critedge.1.loopexit.split.loop.exit36 ] ; 3 uses
  %.1.lcssa.1 = phi i32 [ %i.w, %.critedge ], [ %i.ag, %.critedge.1.loopexit.split.loop.exit ], [ %i.z, %.critedge.1.loopexit.split.loop.exit36 ] ; 2 uses
  %i.ai = urem i32 %.124.lcssa.1, 5
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph.2, label %.critedge.2

.lr.ph.2:                                         ; preds = %.critedge.1, %bb.c
  %.128.2 = phi i32 [ %i.al, %bb.c ], [ %.1.lcssa.1, %.critedge.1 ] ; 3 uses
  %.12427.2 = phi i32 [ %i.an, %bb.c ], [ %.124.lcssa.1, %.critedge.1 ] ; 2 uses
  %i.ak = urem i32 %.128.2, 5
  %i.al = udiv i32 %.128.2, 5                     ; 2 uses
  %i.am = icmp eq i32 %i.ak, 0
  br i1 %i.am, label %bb.c, label %.critedge.2

bb.c:                                             ; preds = %.lr.ph.2
  %i.an = udiv i32 %.12427.2, 5                   ; 3 uses
  %i.ao = urem i32 %i.an, 5
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.2, label %.critedge.2

.critedge.2:                                      ; preds = %.lr.ph.2, %bb.c, %.critedge.1
  %.124.lcssa.2 = phi i32 [ %.124.lcssa.1, %.critedge.1 ], [ %.12427.2, %.lr.ph.2 ], [ %i.an, %bb.c ] ; 3 uses
  %.1.lcssa.2 = phi i32 [ %.1.lcssa.1, %.critedge.1 ], [ %.128.2, %.lr.ph.2 ], [ %i.al, %bb.c ] ; 2 uses
  %i.aq = and i32 %.124.lcssa.2, 3
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.3, label %.critedge.3

.lr.ph.3:                                         ; preds = %.critedge.2, %bb.d
  %.128.3 = phi i32 [ %i.av, %bb.d ], [ %.1.lcssa.2, %.critedge.2 ] ; 3 uses
  %.12427.3 = phi i32 [ %i.au, %bb.d ], [ %.124.lcssa.2, %.critedge.2 ] ; 3 uses
  %i.as = and i32 %.128.3, 3
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.d, label %.critedge.3

bb.d:                                             ; preds = %.lr.ph.3
  %i.au = lshr i32 %.12427.3, 2                   ; 2 uses
  %i.av = lshr exact i32 %.128.3, 2               ; 2 uses
  %i.aw = and i32 %.12427.3, 12
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.3, label %.critedge.3

.critedge.3:                                      ; preds = %.lr.ph.3, %bb.d, %.critedge.2
  %.124.lcssa.3 = phi i32 [ %.124.lcssa.2, %.critedge.2 ], [ %.12427.3, %.lr.ph.3 ], [ %i.au, %bb.d ] ; 3 uses
  %.1.lcssa.3 = phi i32 [ %.1.lcssa.2, %.critedge.2 ], [ %.128.3, %.lr.ph.3 ], [ %i.av, %bb.d ] ; 2 uses
  %i.ay = urem i32 %.124.lcssa.3, 3
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %.lr.ph.4, label %.critedge.4

.lr.ph.4:                                         ; preds = %.critedge.3, %bb.e
  %.128.4 = phi i32 [ %i.bb, %bb.e ], [ %.1.lcssa.3, %.critedge.3 ] ; 3 uses
  %.12427.4 = phi i32 [ %i.bd, %bb.e ], [ %.124.lcssa.3, %.critedge.3 ] ; 2 uses
  %i.ba = urem i32 %.128.4, 3
  %i.bb = udiv i32 %.128.4, 3                     ; 2 uses
  %i.bc = icmp eq i32 %i.ba, 0
  br i1 %i.bc, label %bb.e, label %.critedge.4

bb.e:                                             ; preds = %.lr.ph.4
  %i.bd = udiv i32 %.12427.4, 3                   ; 3 uses
  %i.be = urem i32 %i.bd, 3
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph.4, label %.critedge.4

.critedge.4:                                      ; preds = %.lr.ph.4, %bb.e, %.critedge.3
  %.124.lcssa.4 = phi i32 [ %.124.lcssa.3, %.critedge.3 ], [ %.12427.4, %.lr.ph.4 ], [ %i.bd, %bb.e ] ; 3 uses
  %.1.lcssa.4 = phi i32 [ %.1.lcssa.3, %.critedge.3 ], [ %.128.4, %.lr.ph.4 ], [ %i.bb, %bb.e ] ; 2 uses
  %i.bg = and i32 %.124.lcssa.4, 1
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.5, label %.critedge.5

.lr.ph.5:                                         ; preds = %.critedge.4, %bb.f
  %.128.5 = phi i32 [ %i.bl, %bb.f ], [ %.1.lcssa.4, %.critedge.4 ] ; 3 uses
  %.12427.5 = phi i32 [ %i.bk, %bb.f ], [ %.124.lcssa.4, %.critedge.4 ] ; 3 uses
  %i.bi = and i32 %.128.5, 1
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.f, label %.critedge.5

bb.f:                                             ; preds = %.lr.ph.5
  %i.bk = lshr i32 %.12427.5, 1                   ; 2 uses
  %i.bl = lshr exact i32 %.128.5, 1               ; 2 uses
  %i.bm = and i32 %.12427.5, 2
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.5, label %.critedge.5

.critedge.5:                                      ; preds = %.lr.ph.5, %bb.f, %.critedge.4
  %.124.lcssa.5 = phi i32 [ %.124.lcssa.4, %.critedge.4 ], [ %.12427.5, %.lr.ph.5 ], [ %i.bk, %bb.f ] ; 3 uses
  %.1.lcssa.5 = phi i32 [ %.1.lcssa.4, %.critedge.4 ], [ %.128.5, %.lr.ph.5 ], [ %i.bl, %bb.f ] ; 3 uses
  store i32 %.124.lcssa.5, ptr %0, align 4, !tbaa !109
  store i32 %.1.lcssa.5, ptr %1, align 4, !tbaa !109
  %i.bo = icmp samesign ult i32 %.124.lcssa.5, 17
  %i.bp = icmp slt i32 %.1.lcssa.5, 17
  %i.bq = icmp samesign ugt i32 %.124.lcssa.5, 1
  %i.br = icmp sgt i32 %.1.lcssa.5, 1
  %i.bs = select i1 %i.bq, i1 true, i1 %i.br
  %i.bt = and i1 %i.bp, %i.bs
  %narrow = select i1 %i.bo, i1 %i.bt, i1 false
  %i.bu = zext i1 %narrow to i32
  ret i32 %i.bu
}

declare void @dt_print_pipe_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @modify_roi_in(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) initializes((0, 20)) %3) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !122
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !111
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load float, ptr %i.d, align 4, !tbaa !217
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.g = load <2 x i32>, ptr %i.c, align 16, !tbaa !109
  %i.h = sitofp <2 x i32> %i.g to <2 x float>
  %i.i = insertelement <2 x float> poison, float %i.e, i64 0
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = fmul reassoc nsz arcp contract afn <2 x float> %i.j, %i.h ; 2 uses
  %i.l = load <2 x float>, ptr %i.f, align 4, !tbaa !110
  %i.m = fmul reassoc nsz arcp contract afn <2 x float> %i.l, %i.k
  %i.n = load <2 x i32>, ptr %3, align 4, !tbaa !109
  %i.o = sitofp <2 x i32> %i.n to <2 x float>
  %i.p = fadd reassoc nsz arcp contract afn <2 x float> %i.m, %i.o
  %i.q = fptosi <2 x float> %i.p to <2 x i32>     ; 2 uses
  %i.r = tail call reassoc nsz arcp contract afn <2 x float> @llvm.floor.v2f32(<2 x float> %i.k)
  %i.s = fptosi <2 x float> %i.r to <2 x i32>     ; 2 uses
  %i.t = icmp sgt <2 x i32> %i.q, %i.s
  %i.u = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.q, <2 x i32> zeroinitializer)
  %i.v = select <2 x i1> %i.t, <2 x i32> %i.s, <2 x i32> %i.u
  store <2 x i32> %i.v, ptr %3, align 4, !tbaa !109
  ret void
}

; Function Attrs: nounwind uwtable
define void @process(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  tail call void @dt_iop_copy_image_roi(ptr noundef %3, ptr noundef %2, i64 noundef 4, ptr noundef %4, ptr noundef %5) #22
  ret void
}

; Function Attrs: nounwind uwtable
define void @commit_params(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !122 ; 6 uses
  %i.c = tail call i32 @dt_iop_has_focus(ptr noundef %0) #22
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %2, i64 644
  %.val = load i32, ptr %i.d, align 4, !tbaa !132
  %i.e = and i32 %.val, 6
  %.not48 = icmp eq i32 %i.e, 0
  br i1 %.not48, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %i.f, align 4, !tbaa !110
  br label %.sink.split

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.h = load <4 x float>, ptr %1, align 4, !tbaa !110 ; 3 uses
  %i.i = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.h, <float 0.000000e+00, float 0.000000e+00, float f0x3C23D70A, float f0x3C23D70A>
  %i.j = fcmp reassoc nsz arcp contract afn ole <4 x float> %i.h, <float 9.900000e-01, float 9.900000e-01, float 1.000000e+00, float 1.000000e+00>
  %i.k = select <4 x i1> %i.j, <4 x float> %i.h, <4 x float> <float 9.900000e-01, float 9.900000e-01, float 1.000000e+00, float 1.000000e+00>
  %i.l = select <4 x i1> %i.i, <4 x float> <float 0.000000e+00, float 0.000000e+00, float f0x3C23D70A, float f0x3C23D70A>, <4 x float> %i.k
  store <4 x float> %i.l, ptr %i.g, align 4, !tbaa !110
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !33   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i32, ptr %i.o, align 4, !tbaa !34   ; 2 uses
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !134
  %i.q = icmp eq i32 %i.p, 0                      ; 2 uses
  %i.r = tail call i32 @llvm.abs.i32(i32 %i.n, i1 true)
  %i.s = icmp eq i32 %i.r, 1
  %or.cond = select i1 %i.q, i1 %i.s, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  %i.w = tail call reassoc nsz arcp contract afn float @dt_image_get_sensor_ratio(ptr noundef nonnull %i.v) #22 ; 2 uses
  %i.x = icmp sgt i32 %i.n, 0
  %i.y = fneg reassoc nsz arcp contract afn float %i.w
  %i.z = select reassoc nsz arcp contract afn i1 %i.x, float %i.w, float %i.y
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  br i1 %i.q, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = sitofp reassoc nsz arcp contract afn i32 %i.n to float
  %i.ab = sitofp reassoc nsz arcp contract afn i32 %i.p to float
  %i.ac = fdiv reassoc nsz arcp contract afn float %i.aa, %i.ab
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.g, %bb.e
  %.sink = phi float [ %i.z, %bb.e ], [ %i.ac, %bb.g ], [ 0.000000e+00, %bb.c ]
  store float %.sink, ptr %i.b, align 4, !tbaa !134
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !34 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !133
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !33 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !124
  %i.aj = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !107
  %i.ak = and i32 %i.aj, 2097152
  %.not49 = icmp eq i32 %i.ak, 0
  br i1 %.not49, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.22, i32 noundef %i.ah, i32 noundef %i.ae) #22
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  ret void
}

declare i32 @dt_iop_has_focus(ptr noundef) local_unnamed_addr #3

declare float @dt_image_get_sensor_ratio(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @gui_focus(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !135 ; 2 uses
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2064
  store i32 0, ptr %i.b, align 16, !tbaa !218
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !136 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.f = load i32, ptr %i.e, align 16, !tbaa !137
  %.not51 = icmp eq i32 %i.f, 0
  br i1 %.not51, label %bb.k, label %bb.c

.thread:                                          ; preds = %bb.a
  %i.g = tail call i32 @dt_dev_modulegroups_test_activated(ptr noundef %i.a) #22
  %i.h = icmp ne i32 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !135
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 2064
  store i32 %i.i, ptr %i.k, align 16, !tbaa !218
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !136 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.o = load i32, ptr %i.n, align 16, !tbaa !137
  %.not5156 = icmp eq i32 %i.o, 0
  br i1 %.not5156, label %bb.j, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.p = phi ptr [ %i.m, %.thread ], [ %i.d, %bb.b ] ; 9 uses
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.q = load ptr, ptr %.in, align 8, !tbaa !138  ; 3 uses
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !139
  %i.s = and i32 %i.r, 2
  %i.t = icmp ne i32 %i.s, 0
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3400), align 8
  %i.v = icmp ne i32 %i.u, 0
  %or.cond = select i1 %i.t, i1 %i.v, i1 false
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !107
  %i.x = and i32 %i.w, 1048576
  %.not52 = icmp eq i32 %i.x, 0
  br i1 %.not52, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
end_hunk_0
