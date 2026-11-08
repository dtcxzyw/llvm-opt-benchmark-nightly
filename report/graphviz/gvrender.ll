Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/gvrender?download=true
inline.NumInlined: 56
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@gvrender_polyline:bb.a
  %i.ac = fmul <2 x double> %i.ab, %i.z           ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !58
  %.not.i22 = icmp eq i32 %i.ae, 0
  br i1 %.not.i22, label %.preheader.i, label %.preheader36.i

.preheader36.i:                                   ; preds = %gv_calloc.exit
  br i1 %.not.i, label %gvrender_ptf_A.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader36.i
  %min.iters.check = icmp eq i64 %2, 1
  br i1 %min.iters.check, label %.lr.ph.i.preheader49, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %2, -2                         ; 3 uses
  %broadcast.splat = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat33 = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.af = shufflevector <2 x double> %i.ac, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index
  %wide.vec = load <4 x double>, ptr %i.ag, align 8, !tbaa !54 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec36 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.ah = fadd <2 x double> %broadcast.splat, %strided.vec36
  %i.ai = fneg <2 x double> %i.ah
  %i.aj = fadd <2 x double> %broadcast.splat33, %strided.vec
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %index
  %i.al = shufflevector <2 x double> %i.ai, <2 x double> %i.aj, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec = fmul <4 x double> %i.af, %i.al
  store <4 x double> %interleaved.vec, ptr %i.ak, align 8, !tbaa !54
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !148

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %gvrender_ptf_A.exit, label %.lr.ph.i.preheader49

.lr.ph.i.preheader49:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.03538.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.preheader.i:                                     ; preds = %gv_calloc.exit
  br i1 %.not.i, label %gvrender_ptf_A.exit, label %.lr.ph40.i.preheader

.lr.ph40.i.preheader:                             ; preds = %.preheader.i
  %min.iters.check38 = icmp ult i64 %2, 4
  br i1 %min.iters.check38, label %.lr.ph40.i.preheader48, label %vector.ph39

vector.ph39:                                      ; preds = %.lr.ph40.i.preheader
  %n.vec40 = and i64 %2, -2                       ; 3 uses
  br label %vector.body41

vector.body41:                                    ; preds = %vector.body41, %vector.ph39
  %index42 = phi i64 [ 0, %vector.ph39 ], [ %index.next44, %vector.body41 ] ; 4 uses
  %i.an = or disjoint i64 %index42, 1             ; 2 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index42
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.an
  %wide.load = load <2 x double>, ptr %i.ao, align 8
  %wide.load43 = load <2 x double>, ptr %i.ap, align 8
  %i.aq = fadd <2 x double> %i.y, %wide.load
  %i.ar = fadd <2 x double> %i.y, %wide.load43
  %i.as = fmul <2 x double> %i.ac, %i.aq
  %i.at = fmul <2 x double> %i.ac, %i.ar
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %index42
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.an
  store <2 x double> %i.as, ptr %i.au, align 8
  store <2 x double> %i.at, ptr %i.av, align 8
  %index.next44 = add nuw i64 %index42, 2         ; 2 uses
  %i.aw = icmp eq i64 %index.next44, %n.vec40
  br i1 %i.aw, label %middle.block45, label %vector.body41, !llvm.loop !149

middle.block45:                                   ; preds = %vector.body41
  %cmp.n46 = icmp eq i64 %2, %n.vec40
  br i1 %cmp.n46, label %gvrender_ptf_A.exit, label %.lr.ph40.i.preheader48

.lr.ph40.i.preheader48:                           ; preds = %.lr.ph40.i.preheader, %middle.block45
  %.039.i.ph = phi i64 [ 0, %.lr.ph40.i.preheader ], [ %n.vec40, %middle.block45 ]
  br label %.lr.ph40.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader49, %.lr.ph.i
  %.03538.i = phi i64 [ %i.be, %.lr.ph.i ], [ %.03538.i.ph, %.lr.ph.i.preheader49 ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.03538.i
  %i.ay = load <2 x double>, ptr %i.ax, align 8, !tbaa !54
  %i.az = fadd <2 x double> %i.y, %i.ay           ; 2 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.03538.i
  %i.bb = fneg <2 x double> %i.az
  %i.bc = shufflevector <2 x double> %i.bb, <2 x double> %i.az, <2 x i32> <i32 1, i32 2>
  %i.bd = fmul <2 x double> %i.ac, %i.bc
  store <2 x double> %i.bd, ptr %i.ba, align 8, !tbaa !54
  %i.be = add nuw i64 %.03538.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.be, %2
  br i1 %exitcond.not.i, label %gvrender_ptf_A.exit, label %.lr.ph.i, !llvm.loop !150

.lr.ph40.i:                                       ; preds = %.lr.ph40.i.preheader48, %.lr.ph40.i
  %.039.i = phi i64 [ %i.bk, %.lr.ph40.i ], [ %.039.i.ph, %.lr.ph40.i.preheader48 ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.039.i
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.039.i
  %i.bh = load <2 x double>, ptr %i.bf, align 8, !tbaa !54
  %i.bi = fadd <2 x double> %i.y, %i.bh
  %i.bj = fmul <2 x double> %i.ac, %i.bi
  store <2 x double> %i.bj, ptr %i.bg, align 8, !tbaa !54
  %i.bk = add nuw i64 %.039.i, 1                  ; 2 uses
  %exitcond44.not.i = icmp eq i64 %i.bk, %2
  br i1 %exitcond44.not.i, label %gvrender_ptf_A.exit, label %.lr.ph40.i, !llvm.loop !151

gvrender_ptf_A.exit:                              ; preds = %.lr.ph.i, %.lr.ph40.i, %middle.block, %middle.block45, %.preheader36.i, %.preheader.i
  tail call void %i.d(ptr noundef nonnull %0, ptr noundef %i.t, i64 noundef %2) #21
  tail call void @free(ptr noundef %i.t) #21
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.c, %gvrender_ptf_A.exit, %bb.e, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @gvrender_comment(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %1, align 1, !tbaa !63
  %.not10 = icmp eq i8 %i.c, 0
  %.not11 = icmp eq ptr %i.b, null
  %or.cond = select i1 %.not10, i1 true, i1 %.not11
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !153  ; 2 uses
  %.not12 = icmp eq ptr %i.e, null
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %i.e(ptr noundef nonnull %0, ptr noundef nonnull %1) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @gvrender_usershape(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i1 noundef zeroext %4, ptr noundef %5, ptr nofree noundef readonly captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.boxf, align 16              ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.c = tail call ptr @gvusershape_find(ptr noundef %1) #21 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @find_user_shape(ptr noundef %1) #21
  %i.e = icmp ne ptr %i.d, null
  %i.f = icmp ne ptr %i.b, null
  %or.cond4 = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond4, label %bb.c, label %bb.ap

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !156  ; 2 uses
  %.not96 = icmp eq ptr %i.h, null
  br i1 %.not96, label %bb.ap, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = zext i1 %4 to i32
  tail call void %i.h(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %i.i) #21
  br label %bb.ap

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.k = load double, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.m = load double, ptr %i.l, align 8
  %i.n = tail call i64 @gvusershape_size_dpi(ptr noundef nonnull %i.c, double %i.k, double %i.m) #21 ; 3 uses
  %.sroa.5.0.extract.shift = lshr i64 %i.n, 32
  %.sroa.013.0.extract.trunc = trunc i64 %i.n to i32
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %i.o = icmp slt i32 %.sroa.013.0.extract.trunc, 1
  %i.p = icmp slt i32 %.sroa.5.0.extract.trunc, 1
  %or.cond = select i1 %i.o, i1 %i.p, i1 false
  br i1 %or.cond, label %bb.ap, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %i.r = load <1 x double>, ptr %7, align 16
  %i.s = load <1 x double>, ptr %i.q, align 16
  %i.t = icmp ugt i64 %3, 1
  br i1 %i.t, label %.lr.ph, label %._crit_edge132

._crit_edge132:                                   ; preds = %bb.f
  %i.u = load <2 x double>, ptr %i.q, align 16, !tbaa !157
  %i.v = load <2 x double>, ptr %7, align 16, !tbaa !158
  br label %bb.g

.lr.ph:                                           ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.y = load <2 x double>, ptr %7, align 16, !tbaa !158 ; 2 uses
  %i.z = load <2 x double>, ptr %i.q, align 16, !tbaa !157 ; 2 uses
  %i.aa = add i64 %3, -1                          ; 2 uses
  %min.iters.check = icmp ult i64 %3, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.aa, -4                      ; 3 uses
  %broadcast.splat = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %broadcast.splat164 = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %broadcast.splat166 = shufflevector <1 x double> %i.r, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splat168 = shufflevector <1 x double> %i.s, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.phi = phi <2 x double> [ %broadcast.splat164, %vector.ph ], [ %i.ap, %vector.body ] ; 2 uses
  %vec.phi169 = phi <2 x double> [ %broadcast.splat164, %vector.ph ], [ %i.aq, %vector.body ] ; 2 uses
  %vec.phi170 = phi <2 x double> [ %broadcast.splat, %vector.ph ], [ %i.al, %vector.body ] ; 2 uses
  %vec.phi171 = phi <2 x double> [ %broadcast.splat, %vector.ph ], [ %i.am, %vector.body ] ; 2 uses
  %vec.phi172 = phi <2 x double> [ %broadcast.splat166, %vector.ph ], [ %i.ah, %vector.body ] ; 2 uses
  %vec.phi173 = phi <2 x double> [ %broadcast.splat166, %vector.ph ], [ %i.ai, %vector.body ] ; 2 uses
  %vec.phi174 = phi <2 x double> [ %broadcast.splat168, %vector.ph ], [ %i.an, %vector.body ] ; 2 uses
  %vec.phi175 = phi <2 x double> [ %broadcast.splat168, %vector.ph ], [ %i.ao, %vector.body ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %wide.vec = load <4 x double>, ptr %i.ac, align 8 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec176 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec177 = load <4 x double>, ptr %i.ae, align 8 ; 2 uses
  %strided.vec178 = shufflevector <4 x double> %wide.vec177, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec179 = shufflevector <4 x double> %wide.vec177, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.af = freeze <2 x double> %strided.vec        ; 3 uses
  %i.ag = freeze <2 x double> %strided.vec178     ; 3 uses
  %i.ah = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %vec.phi172, <2 x double> %i.af) ; 2 uses
  %i.ai = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %vec.phi173, <2 x double> %i.ag) ; 2 uses
  %i.aj = freeze <2 x double> %strided.vec176     ; 3 uses
  %i.ak = freeze <2 x double> %strided.vec179     ; 3 uses
  %i.al = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %vec.phi170, <2 x double> %i.aj) ; 2 uses
  %i.am = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %vec.phi171, <2 x double> %i.ak) ; 2 uses
  %i.an = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %vec.phi174, <2 x double> %i.af) ; 2 uses
  %i.ao = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %vec.phi175, <2 x double> %i.ag) ; 2 uses
  %i.ap = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %vec.phi, <2 x double> %i.aj) ; 2 uses
  %i.aq = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %vec.phi169, <2 x double> %i.ak) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = fcmp uno <2 x double> %i.aj, %i.af
  %i.as = fcmp uno <2 x double> %i.ak, %i.ag
  %i.at = or <2 x i1> %i.ar, %i.as
  %i.au = bitcast <2 x i1> %i.at to i2
  %i.av = icmp ne i2 %i.au, 0                     ; 11 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  %i.ax = or i1 %i.av, %i.aw
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !154

middle.block:                                     ; preds = %vector.body
  %i.ay = select i1 %i.av, <2 x double> %vec.phi, <2 x double> %i.ap
  %i.az = select i1 %i.av, <2 x double> %vec.phi169, <2 x double> %i.aq
  %i.ba = select i1 %i.av, <2 x double> %vec.phi170, <2 x double> %i.al
  %i.bb = select i1 %i.av, <2 x double> %vec.phi171, <2 x double> %i.am
  %i.bc = select i1 %i.av, <2 x double> %vec.phi172, <2 x double> %i.ah
  %i.bd = select i1 %i.av, <2 x double> %vec.phi173, <2 x double> %i.ai
  %i.be = select i1 %i.av, <2 x double> %vec.phi174, <2 x double> %i.an
  %i.bf = select i1 %i.av, <2 x double> %vec.phi175, <2 x double> %i.ao
  %i.bg = select i1 %i.av, i64 %index, i64 %n.vec
  %rdx.minmax = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.ay, <2 x double> %i.az)
  %i.bh = tail call nsz double @llvm.vector.reduce.fmax.v2f64(<2 x double> %rdx.minmax)
  %i.bi = or disjoint i64 %i.bg, 1
  %rdx.minmax180 = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.ba, <2 x double> %i.bb)
  %i.bj = tail call nsz double @llvm.vector.reduce.fmin.v2f64(<2 x double> %rdx.minmax180)
  %rdx.minmax181 = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.bc, <2 x double> %i.bd)
  %i.bk = tail call nsz double @llvm.vector.reduce.fmin.v2f64(<2 x double> %rdx.minmax181)
  %rdx.minmax182 = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.be, <2 x double> %i.bf)
  %i.bl = tail call nsz double @llvm.vector.reduce.fmax.v2f64(<2 x double> %rdx.minmax182)
  %cmp.n = icmp ne i64 %i.aa, %n.vec
  %.not186 = or i1 %cmp.n, %i.av
  %i.bm = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.bn = insertelement <2 x double> %i.bm, double %i.bh, i64 1 ; 2 uses
  %i.bo = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.bp = insertelement <2 x double> %i.bo, double %i.bj, i64 1 ; 2 uses
  br i1 %.not186, label %scalar.ph.preheader, label %._crit_edge

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.084122.ph = phi i64 [ 1, %.lr.ph ], [ %i.bi, %middle.block ]
  %.ph = phi <2 x double> [ %i.z, %.lr.ph ], [ %i.bn, %middle.block ]
  %.ph200 = phi <2 x double> [ %i.y, %.lr.ph ], [ %i.bp, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.bq = phi <2 x double> [ %i.bn, %middle.block ], [ %i.cp, %scalar.ph ] ; 2 uses
  %i.br = phi <2 x double> [ %i.bp, %middle.block ], [ %i.co, %scalar.ph ] ; 2 uses
  %i.bs = extractelement <2 x double> %i.br, i64 1
  store double %i.bs, ptr %i.w, align 8, !tbaa !158
  %i.bt = extractelement <2 x double> %i.bq, i64 1
  store double %i.bt, ptr %i.x, align 8, !tbaa !157
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge132, %._crit_edge
  %i.bu = phi <2 x double> [ %i.bq, %._crit_edge ], [ %i.u, %._crit_edge132 ] ; 3 uses
  %i.bv = phi <2 x double> [ %i.br, %._crit_edge ], [ %i.v, %._crit_edge132 ] ; 5 uses
  %i.bw = extractelement <2 x double> %i.bv, i64 0 ; 4 uses
  store double %i.bw, ptr %7, align 16
  %i.bx = extractelement <2 x double> %i.bu, i64 0 ; 3 uses
  store double %i.bx, ptr %i.q, align 16
  %i.by = fsub <2 x double> %i.bu, %i.bv          ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.cb = bitcast i64 %i.n to <2 x i32>
  %i.cc = sitofp <2 x i32> %i.cb to <2 x double>  ; 10 uses
  %i.cd = fdiv <2 x double> %i.by, %i.cc          ; 7 uses
  %i.ce = load i8, ptr %5, align 1, !tbaa !63
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %get_imagescale.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cg = tail call i32 @strcasecmp(ptr noundef nonnull %5, ptr noundef nonnull @.str.16) #22
  %.not.i = icmp eq i32 %i.cg, 0
  br i1 %.not.i, label %get_imagescale.exit.thread114, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ch = tail call i32 @strcasecmp(ptr noundef nonnull %5, ptr noundef nonnull @.str.17) #22
  %.not5.i = icmp eq i32 %i.ch, 0
  br i1 %.not5.i, label %get_imagescale.exit.thread116, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ci = tail call i32 @strcasecmp(ptr noundef nonnull %5, ptr noundef nonnull @.str.18) #22
  %.not6.i = icmp eq i32 %i.ci, 0
  br i1 %.not6.i, label %get_imagescale.exit.thread118, label %get_imagescale.exit

get_imagescale.exit:                              ; preds = %bb.j
  %i.cj = tail call zeroext i1 @mapbool(ptr noundef nonnull %5) #21
  br i1 %i.cj, label %bb.k, label %get_imagescale.exit.thread

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.084122 = phi i64 [ %i.cq, %scalar.ph ], [ %.084122.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ck = phi <2 x double> [ %i.cp, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %i.cl = phi <2 x double> [ %i.co, %scalar.ph ], [ %.ph200, %scalar.ph.preheader ]
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.084122
  %i.cn = load <2 x double>, ptr %i.cm, align 8   ; 2 uses
  %i.co = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.cl, <2 x double> %i.cn) ; 2 uses
  %i.cp = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.ck, <2 x double> %i.cn) ; 2 uses
  %i.cq = add nuw i64 %.084122, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.cq, %3
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !155

bb.k:                                             ; preds = %get_imagescale.exit
  %i.cr = extractelement <2 x double> %i.cd, i64 0
  %i.cs = extractelement <2 x double> %i.cd, i64 1
  %i.ct = fcmp olt double %i.cr, %i.cs
  br i1 %i.ct, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cu = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cv = fmul <2 x double> %i.cu, %i.cc
  br label %get_imagescale.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.cw = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cx = fmul <2 x double> %i.cw, %i.cc
  br label %get_imagescale.exit.thread

get_imagescale.exit.thread114:                    ; preds = %bb.h
  %foldExtExtBinop = fmul <2 x double> %i.cd, %i.cc
  %i.cy = shufflevector <2 x double> %foldExtExtBinop, <2 x double> %i.cc, <2 x i32> <i32 0, i32 3>
  br label %get_imagescale.exit.thread

get_imagescale.exit.thread116:                    ; preds = %bb.i
  %foldExtExtBinop188 = fmul <2 x double> %i.cd, %i.cc
  %i.cz = shufflevector <2 x double> %i.cc, <2 x double> %foldExtExtBinop188, <2 x i32> <i32 0, i32 3>
  br label %get_imagescale.exit.thread

get_imagescale.exit.thread118:                    ; preds = %bb.j
  %i.da = fmul <2 x double> %i.cd, %i.cc
  br label %get_imagescale.exit.thread

get_imagescale.exit.thread:                       ; preds = %get_imagescale.exit, %bb.g, %bb.l, %bb.m, %get_imagescale.exit.thread118, %get_imagescale.exit.thread116, %get_imagescale.exit.thread114
  %i.db = phi <2 x double> [ %i.cc, %get_imagescale.exit ], [ %i.cv, %bb.l ], [ %i.cx, %bb.m ], [ %i.cy, %get_imagescale.exit.thread114 ], [ %i.cz, %get_imagescale.exit.thread116 ], [ %i.da, %get_imagescale.exit.thread118 ], [ %i.cc, %bb.g ] ; 6 uses
  %i.dc = load i8, ptr %6, align 1, !tbaa !63
  %i.dd = icmp eq i8 %i.dc, 0
  br i1 %i.dd, label %get_imagepos.exit, label %bb.n

bb.n:                                             ; preds = %get_imagescale.exit.thread
  %i.de = tail call i32 @strcasecmp(ptr noundef nonnull readonly %6, ptr noundef nonnull @.str.19) #22
  %.not.i99 = icmp eq i32 %i.de, 0
  br i1 %.not.i99, label %get_imagepos.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.df = tail call i32 @strcasecmp(ptr noundef nonnull readonly %6, ptr noundef nonnull @.str.20) #22
  %.not10.i = icmp eq i32 %i.df, 0
  br i1 %.not10.i, label %get_imagepos.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dg = tail call i32 @strcasecmp(ptr noundef nonnull readonly %6, ptr noundef nonnull @.str.21) #22
  %.not11.i = icmp eq i32 %i.dg, 0
  br i1 %.not11.i, label %get_imagepos.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dh = tail call i32 @strcasecmp(ptr noundef nonnull readonly %6, ptr noundef nonnull @.str.22) #22
  %.not12.i = icmp eq i32 %i.dh, 0
  br i1 %.not12.i, label %get_imagepos.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.di = tail call i32 @strcasecmp(ptr noundef nonnull readonly %6, ptr noundef nonnull @.str.23) #22
  %.not13.i = icmp eq i32 %i.di, 0
  br i1 %.not13.i, label %get_imagepos.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dj = tail call i32 @strcasecmp(ptr noundef nonnull readonly %6, ptr noundef nonnull @.str.24) #22
  %.not14.i = icmp eq i32 %i.dj, 0
  br i1 %.not14.i, label %get_imagepos.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dk = tail call i32 @strcasecmp(ptr noundef nonnull readonly %6, ptr noundef nonnull @.str.25) #22
  %.not15.i = icmp eq i32 %i.dk, 0
  br i1 %.not15.i, label %get_imagepos.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dl = tail call i32 @strcasecmp(ptr noundef nonnull readonly %6, ptr noundef nonnull @.str.26) #22
  %.not16.i = icmp eq i32 %i.dl, 0
  br i1 %.not16.i, label %get_imagepos.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dm = tail call i32 @strcasecmp(ptr noundef nonnull readonly %6, ptr noundef nonnull @.str.27) #22
  %.not17.i = icmp eq i32 %i.dm, 0
  %..i100 = select i1 %.not17.i, i32 8, i32 4
  br label %get_imagepos.exit

get_imagepos.exit:                                ; preds = %get_imagescale.exit.thread, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v
  %.0.i101 = phi i32 [ 4, %get_imagescale.exit.thread ], [ 7, %bb.u ], [ %..i100, %bb.v ], [ 6, %bb.t ], [ 5, %bb.s ], [ 4, %bb.r ], [ 3, %bb.q ], [ 2, %bb.p ], [ 1, %bb.o ], [ 0, %bb.n ] ; 2 uses
  %i.dn = extractelement <2 x double> %i.db, i64 0
  %i.do = extractelement <2 x double> %i.by, i64 0
  %i.dp = fcmp olt double %i.dn, %i.do
  br i1 %i.dp, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %get_imagepos.exit
  switch i32 %.0.i101, label %bb.z [
    i32 0, label %bb.x
    i32 3, label %bb.x
    i32 6, label %bb.x
    i32 2, label %bb.y
    i32 5, label %bb.y
    i32 8, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w, %bb.w, %bb.w
  %foldExtExtBinop190 = fadd <2 x double> %i.bv, %i.db
  %i.dq = extractelement <2 x double> %foldExtExtBinop190, i64 0
  br label %.sink.split

bb.y:                                             ; preds = %bb.w, %bb.w, %bb.w
  %foldExtExtBinop192 = fsub <2 x double> %i.by, %i.db
  %foldExtExtBinop194 = fadd <2 x double> %i.bv, %foldExtExtBinop192 ; 2 uses
  %i.dr = extractelement <2 x double> %foldExtExtBinop194, i64 0 ; 2 uses
  store double %i.dr, ptr %7, align 16, !tbaa !159
  %foldExtExtBinop196 = fadd <2 x double> %i.db, %foldExtExtBinop194
  %i.ds = extractelement <2 x double> %foldExtExtBinop196, i64 0
  br label %.sink.split

bb.z:                                             ; preds = %bb.w
  %foldExtExtBinop198 = fsub <2 x double> %i.by, %i.db
  %i.dt = extractelement <2 x double> %foldExtExtBinop198, i64 0
  %i.du = fmul double %i.dt, 5.000000e-01         ; 2 uses
  %i.dv = fadd double %i.bw, %i.du                ; 2 uses
  store double %i.dv, ptr %7, align 16, !tbaa !159
  %i.dw = fsub double %i.bx, %i.du
  br label %.sink.split

.sink.split:                                      ; preds = %bb.z, %bb.y, %bb.x
  %.sink = phi double [ %i.dq, %bb.x ], [ %i.ds, %bb.y ], [ %i.dw, %bb.z ] ; 2 uses
  %.ph158 = phi double [ %i.bw, %bb.x ], [ %i.dr, %bb.y ], [ %i.dv, %bb.z ]
  store double %.sink, ptr %i.q, align 16, !tbaa !160
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split, %get_imagepos.exit
  %i.dx = phi double [ %i.bx, %get_imagepos.exit ], [ %.sink, %.sink.split ] ; 3 uses
  %i.dy = phi double [ %i.bw, %get_imagepos.exit ], [ %.ph158, %.sink.split ] ; 3 uses
  %i.dz = extractelement <2 x double> %i.db, i64 1 ; 5 uses
  %i.ea = extractelement <2 x double> %i.by, i64 1 ; 2 uses
  %i.eb = fcmp olt double %i.dz, %i.ea
  %i.ec = extractelement <2 x double> %i.bu, i64 1 ; 4 uses
  %i.ed = extractelement <2 x double> %i.bv, i64 1 ; 3 uses
  br i1 %i.eb, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  switch i32 %.0.i101, label %bb.ae [
    i32 0, label %bb.ac
    i32 1, label %bb.ac
    i32 2, label %bb.ac
    i32 6, label %bb.ad
    i32 7, label %bb.ad
    i32 8, label %bb.ad
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.ab, %bb.ab
  %i.ee = fsub double %i.ec, %i.dz                ; 2 uses
  store double %i.ee, ptr %i.ca, align 8, !tbaa !158
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab, %bb.ab, %bb.ab
  %i.ef = fadd double %i.ed, %i.dz                ; 3 uses
  store double %i.ef, ptr %i.ca, align 8, !tbaa !158
  %i.eg = fsub double %i.ef, %i.dz                ; 2 uses
  store double %i.eg, ptr %i.bz, align 8, !tbaa !157
  br label %bb.af

bb.ae:                                            ; preds = %bb.ab
  %i.eh = fsub double %i.ea, %i.dz
  %i.ei = fmul double %i.eh, 5.000000e-01         ; 2 uses
  %i.ej = fadd double %i.ed, %i.ei                ; 2 uses
  store double %i.ej, ptr %i.ca, align 8, !tbaa !158
  %i.ek = fsub double %i.ec, %i.ei                ; 2 uses
  store double %i.ek, ptr %i.bz, align 8, !tbaa !157
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ad, %bb.ae, %bb.aa
  %i.el = phi double [ %i.ec, %bb.ac ], [ %i.eg, %bb.ad ], [ %i.ek, %bb.ae ], [ %i.ec, %bb.aa ] ; 2 uses
  %i.em = phi double [ %i.ee, %bb.ac ], [ %i.ef, %bb.ad ], [ %i.ej, %bb.ae ], [ %i.ed, %bb.aa ] ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !33
  %i.ep = and i32 %i.eo, 8192
  %.not97 = icmp eq i32 %i.ep, 0
  br i1 %.not97, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 632
  %.sroa.03.0.copyload.i = load double, ptr %i.eq, align 8, !tbaa !54 ; 4 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 640
  %.sroa.55.0.copyload.i = load double, ptr %.sroa.55.0..sroa_idx.i, align 8, !tbaa !54 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.es = load double, ptr %i.er, align 8, !tbaa !55 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.eu = load double, ptr %i.et, align 8, !tbaa !56
  %i.ev = fmul double %i.es, %i.eu                ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !57 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !58
  %.not.i102 = icmp eq i32 %i.ez, 0
  %i.fa = fadd double %.sroa.55.0.copyload.i, %i.el ; 2 uses
  br i1 %.not.i102, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fb = fadd double %i.em, %.sroa.55.0.copyload.i
  %i.fc = fneg double %i.fb
  %i.fd = fmul double %i.ev, %i.fc                ; 2 uses
  %i.fe = fadd double %i.dy, %.sroa.03.0.copyload.i
  %i.ff = fmul double %i.es, %i.ex                ; 2 uses
  %.sroa.316.0.i = fmul double %i.ff, %i.fe       ; 2 uses
  store double %i.fd, ptr %7, align 16, !tbaa !54
  store double %.sroa.316.0.i, ptr %i.ca, align 8, !tbaa !54
  %i.fg = fneg double %i.fa
  %i.fh = fadd double %.sroa.03.0.copyload.i, %i.dx
  br label %gvrender_ptf.exit112

bb.ai:                                            ; preds = %bb.ag
  %i.fi = fadd double %i.dy, %.sroa.03.0.copyload.i
  %i.fj = fmul double %i.fi, %i.ev                ; 2 uses
  %i.fk = fadd double %i.em, %.sroa.55.0.copyload.i
  %i.fl = fmul double %i.es, %i.ex                ; 2 uses
  %.sroa.316.0.i149 = fmul double %i.fl, %i.fk    ; 2 uses
  store double %i.fj, ptr %7, align 16, !tbaa !54
  store double %.sroa.316.0.i149, ptr %i.ca, align 8, !tbaa !54
  %i.fm = fadd double %.sroa.03.0.copyload.i, %i.dx
  br label %gvrender_ptf.exit112

gvrender_ptf.exit112:                             ; preds = %bb.ah, %bb.ai
  %.sroa.316.0.i152 = phi double [ %.sroa.316.0.i, %bb.ah ], [ %.sroa.316.0.i149, %bb.ai ]
  %i.fn = phi double [ %i.ff, %bb.ah ], [ %i.fl, %bb.ai ]
  %.sroa.015.0.i150 = phi double [ %i.fd, %bb.ah ], [ %i.fj, %bb.ai ]
  %.pn = phi double [ %i.fg, %bb.ah ], [ %i.fm, %bb.ai ]
  %.pn.i108 = phi double [ %i.fh, %bb.ah ], [ %i.fa, %bb.ai ]
  %.sroa.015.0.i107 = fmul double %i.ev, %.pn     ; 2 uses
  %.sroa.316.0.i109 = fmul double %i.fn, %.pn.i108 ; 2 uses
  store double %.sroa.015.0.i107, ptr %i.q, align 16, !tbaa !54
  store double %.sroa.316.0.i109, ptr %i.bz, align 8, !tbaa !54
  br label %bb.aj

bb.aj:                                            ; preds = %gvrender_ptf.exit112, %bb.af
  %i.fo = phi double [ %.sroa.316.0.i109, %gvrender_ptf.exit112 ], [ %i.el, %bb.af ] ; 2 uses
  %i.fp = phi double [ %.sroa.316.0.i152, %gvrender_ptf.exit112 ], [ %i.em, %bb.af ] ; 2 uses
  %i.fq = phi double [ %.sroa.015.0.i107, %gvrender_ptf.exit112 ], [ %i.dx, %bb.af ] ; 2 uses
  %i.fr = phi double [ %.sroa.015.0.i150, %gvrender_ptf.exit112 ], [ %i.dy, %bb.af ] ; 2 uses
  %i.fs = fcmp ogt double %i.fr, %i.fq
  br i1 %i.fs, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store double %i.fq, ptr %7, align 16, !tbaa !159
  store double %i.fr, ptr %i.q, align 16, !tbaa !160
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ft = fcmp ogt double %i.fp, %i.fo
  br i1 %i.ft, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store double %i.fo, ptr %i.ca, align 8, !tbaa !158
  store double %i.fp, ptr %i.bz, align 8, !tbaa !157
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.not98 = icmp eq ptr %i.b, null
  br i1 %.not98, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !36
  tail call void @gvloadimage(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull byval(%struct.boxf) align 8 %7, i1 noundef zeroext %4, ptr noundef %i.fv) #21
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao, %bb.e, %bb.b, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  ret void
}

declare ptr @gvusershape_find(ptr noundef) local_unnamed_addr #2

declare ptr @find_user_shape(ptr noundef) local_unnamed_addr #2

declare i64 @gvusershape_size_dpi(ptr noundef, double, double) local_unnamed_addr #2

declare void @gvloadimage(ptr noundef, ptr noundef, ptr noundef byval(%struct.boxf) align 8, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @gvrender_set_penwidth(ptr nofree noundef readonly captures(none) %0, double noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  store double %1, ptr %i.e, align 8, !tbaa !70
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare i32 @colorxlate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: inlinehint nounwind uwtable
define internal void @agxbprint(ptr nofree noundef nonnull captures(none) %0, ptr nofree readnone captures(none) %1, ...) unnamed_addr #10 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = alloca [32 x i8], align 16               ; 7 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.va_start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.va_copy.p0(ptr nonnull %2, ptr nonnull %3)
  %i.b = call i32 @vsnprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull %2) #21 ; 2 uses
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.c = icmp sgt i32 %i.b, -1
  %narrow.i = add nuw i32 %i.b, 1
  %i.d = zext i32 %narrow.i to i64                ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %i.c, label %bb.b, label %vagxbprint.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 31         ; 5 uses
  %.val.i.i = load i8, ptr %i.e, align 1, !tbaa !63 ; 3 uses
  %.not.i.i = icmp ne i8 %.val.i.i, -1            ; 2 uses
  br i1 %.not.i.i, label %agxbsizeof.exit.i, label %bb.c

agxbsizeof.exit.i:                                ; preds = %bb.b
  %i.f = zext i8 %.val.i.i to i64
  br label %agxblen.exit.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !63
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !63
  br label %agxblen.exit.i

agxblen.exit.i:                                   ; preds = %bb.c, %agxbsizeof.exit.i
  %.0.i2.i = phi i64 [ 31, %agxbsizeof.exit.i ], [ %i.h, %bb.c ]
  %.0.i43.i = phi i64 [ %i.f, %agxbsizeof.exit.i ], [ %i.j, %bb.c ]
  %i.k = sub i64 %.0.i2.i, %.0.i43.i              ; 2 uses
  %i.l = icmp ult i64 %i.k, %i.d
  br i1 %i.l, label %bb.d, label %bb.g

bb.d:                                             ; preds = %agxblen.exit.i
  %i.m = sub nuw nsw i64 %i.d, %i.k               ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  %or.cond.i = select i1 %.not.i.i, i1 %i.n, i1 false
  br i1 %or.cond.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call fastcc void @agxbmore(ptr noundef nonnull %0, i64 noundef %i.m)
  %.val.i.i.pre.i = load i8, ptr %i.e, align 1, !tbaa !63
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  br label %bb.i

bb.g:                                             ; preds = %bb.e, %agxblen.exit.i
  %.val.i.i.i = phi i8 [ %.val.i.i, %agxblen.exit.i ], [ %.val.i.i.pre.i, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %.not.i.i.i = icmp eq i8 %.val.i.i.i, -1
  br i1 %.not.i.i.i, label %bb.h, label %agxblen.exit.thread.i.i

agxblen.exit.thread.i.i:                          ; preds = %bb.g
  %i.o = zext i8 %.val.i.i.i to i64
  br label %agxbnext.exit.i

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !63
  %i.r = load ptr, ptr %0, align 8, !tbaa !63
  br label %agxbnext.exit.i

agxbnext.exit.i:                                  ; preds = %bb.h, %agxblen.exit.thread.i.i
  %.0.i6.i.i = phi i64 [ %i.q, %bb.h ], [ %i.o, %agxblen.exit.thread.i.i ]
  %.pn.i.i = phi ptr [ %i.r, %bb.h ], [ %0, %agxblen.exit.thread.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 %.0.i6.i.i
  br label %bb.i

bb.i:                                             ; preds = %agxbnext.exit.i, %bb.f
  %.16.i = phi i1 [ false, %agxbnext.exit.i ], [ true, %bb.f ]
  %i.t = phi ptr [ %i.s, %agxbnext.exit.i ], [ %i.a, %bb.f ]
  %i.u = call i32 @vsnprintf(ptr noundef %i.t, i64 noundef %i.d, ptr noundef nonnull @.str.11, ptr noundef nonnull %3) #21 ; 4 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %.val.i = load i8, ptr %i.e, align 1, !tbaa !63 ; 3 uses
  %.not.i = icmp eq i8 %.val.i, -1
  br i1 %.not.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %.16.i, label %agxbnext.exit49.i, label %bb.l

agxbnext.exit49.i:                                ; preds = %bb.k
  %i.w = zext i8 %.val.i to i64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.w
  %i.y = zext nneg i32 %i.u to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull align 16 %i.a, i64 %i.y, i1 false)
  %.pre.i = load i8, ptr %i.e, align 1, !tbaa !63
  br label %bb.l

bb.l:                                             ; preds = %agxbnext.exit49.i, %bb.k
  %i.z = phi i8 [ %.pre.i, %agxbnext.exit49.i ], [ %.val.i, %bb.k ]
  %i.aa = trunc i32 %i.u to i8
  %i.ab = add i8 %i.z, %i.aa
  store i8 %i.ab, ptr %i.e, align 1, !tbaa !63
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.ac = zext nneg i32 %i.u to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !63
  %i.af = add i64 %i.ae, %i.ac
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !63
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %vagxbprint.exit

vagxbprint.exit:                                  ; preds = %bb.a, %bb.n
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void
}

declare zeroext i1 @emit_once(ptr noundef) local_unnamed_addr #2

declare void @agerrorf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy.p0(ptr, ptr) #12

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #13

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @agxbmore(ptr nofree noundef nonnull captures(none) %0, i64 noundef range(i64 -2147483646, 2147483649) %1) unnamed_addr #10 {
bb.a:
end_hunk_0
begin_hunk_1_@llvm.minnum.v2f64

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.maxnum.v2f64(<2 x double>, <2 x double>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fmax.v2f64(<2 x double>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fmin.v2f64(<2 x double>) #19

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #21 = { nounwind }
attributes #22 = { nounwind willreturn memory(read) }
attributes #23 = { nounwind allocsize(0,1) }
attributes #24 = { cold nounwind }
attributes #25 = { noreturn }
attributes #26 = { nounwind allocsize(1) }
attributes #27 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS5GVC_s", !8, i64 0}
!10 = !{!"p1 _ZTS5GVJ_s", !8, i64 0}
!11 = !{!"p1 _ZTS10GVCOMMON_s", !8, i64 0}
!12 = !{!"p1 _ZTS11obj_state_s", !8, i64 0}
!13 = !{!"p1 omnipotent char", !8, i64 0}
!14 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!15 = !{!"long", !4, i64 0}
!16 = !{!"p1 _ZTS17gvrender_engine_s", !8, i64 0}
!17 = !{!"gvplugin_active_render_s", !16, i64 0, !5, i64 8, !8, i64 16, !13, i64 24}
!18 = !{!"p1 _ZTS17gvdevice_engine_s", !8, i64 0}
!19 = !{!"gvplugin_active_device_s", !18, i64 0, !5, i64 8, !8, i64 16, !13, i64 24}
!20 = !{!"p1 _ZTS20gvloadimage_engine_s", !8, i64 0}
!21 = !{!"gvplugin_active_loadimage_t", !20, i64 0, !5, i64 8, !13, i64 16}
!22 = !{!"p1 _ZTS20gvdevice_callbacks_s", !8, i64 0}
!23 = !{!"double", !4, i64 0}
!24 = !{!"pointf_s", !23, i64 0, !23, i64 8}
!25 = !{!"_Bool", !4, i64 0}
!26 = !{!"", !5, i64 0, !5, i64 4}
!27 = !{!"", !24, i64 0, !24, i64 16}
!28 = !{!"", !26, i64 0, !26, i64 8}
!29 = !{!"p1 _ZTS21gvevent_key_binding_s", !8, i64 0}
!30 = !{!"GVJ_s", !9, i64 0, !10, i64 8, !10, i64 16, !11, i64 24, !12, i64 32, !13, i64 40, !5, i64 48, !13, i64 56, !13, i64 64, !14, i64 72, !13, i64 80, !15, i64 88, !15, i64 96, !13, i64 104, !5, i64 112, !17, i64 120, !19, i64 152, !21, i64 184, !22, i64 208, !24, i64 216, !25, i64 232, !8, i64 240, !5, i64 248, !8, i64 256, !25, i64 264, !13, i64 272, !5, i64 280, !5, i64 284, !5, i64 288, !26, i64 292, !26, i64 300, !26, i64 308, !26, i64 316, !26, i64 324, !5, i64 332, !27, i64 336, !24, i64 368, !27, i64 384, !27, i64 416, !24, i64 448, !24, i64 464, !23, i64 480, !5, i64 488, !24, i64 496, !27, i64 512, !24, i64 544, !24, i64 560, !5, i64 576, !5, i64 580, !28, i64 584, !28, i64 600, !24, i64 616, !24, i64 632, !24, i64 648, !25, i64 664, !25, i64 665, !25, i64 666, !25, i64 667, !25, i64 668, !4, i64 669, !24, i64 672, !24, i64 688, !8, i64 704, !8, i64 712, !13, i64 720, !13, i64 728, !8, i64 736, !29, i64 744, !15, i64 752, !8, i64 760}
!31 = !{!30, !9, i64 0}
!32 = !{!"p1 _ZTS18gvplugin_package_s", !8, i64 0}
!33 = !{!30, !5, i64 280}
!34 = !{!30, !16, i64 120}
!35 = !{!30, !8, i64 136}
!36 = !{!30, !13, i64 144}
!37 = !{!"any p2 pointer", !8, i64 0}
!38 = !{!"p2 omnipotent char", !37, i64 0}
!39 = !{!"", !5, i64 0, !23, i64 8, !38, i64 16, !5, i64 24, !5, i64 28}
!40 = !{!39, !5, i64 0}
!41 = !{!"gvrender_engine_s", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !8, i64 232}
!42 = !{!"GVCOMMON_s", !38, i64 0, !13, i64 8, !5, i64 16, !25, i64 20, !25, i64 21, !8, i64 24, !38, i64 32, !38, i64 40, !5, i64 48, !8, i64 56, !5, i64 64}
!43 = !{!"p1 _ZTS5GVG_s", !8, i64 0}
!44 = !{!"dtdisc_s_", !5, i64 0, !5, i64 4, !5, i64 8, !8, i64 16, !8, i64 24, !8, i64 32}
!45 = !{!"p1 _ZTS5dt_s_", !8, i64 0}
!46 = !{!"p1 _ZTS21gvtextlayout_engine_s", !8, i64 0}
!47 = !{!"gvplugin_active_textlayout_s", !46, i64 0, !5, i64 8, !13, i64 16}
!48 = !{!"p1 _ZTS8Agraph_s", !8, i64 0}
!49 = !{!"p1 _ZTS17gvlayout_engine_s", !8, i64 0}
!50 = !{!"gvplugin_active_layout_s", !49, i64 0, !5, i64 8, !8, i64 16, !13, i64 24}
!51 = !{!"p1 int", !8, i64 0}
!52 = !{!"color_s", !4, i64 0, !5, i64 32}
!53 = !{!"GVC_s", !42, i64 0, !13, i64 72, !25, i64 80, !38, i64 88, !5, i64 96, !43, i64 104, !43, i64 112, !4, i64 120, !4, i64 160, !32, i64 200, !8, i64 208, !44, i64 216, !45, i64 256, !47, i64 264, !10, i64 288, !10, i64 296, !48, i64 304, !50, i64 312, !13, i64 344, !10, i64 352, !13, i64 360, !24, i64 368, !24, i64 384, !24, i64 400, !26, i64 416, !27, i64 424, !5, i64 456, !25, i64 460, !25, i64 461, !25, i64 462, !13, i64 464, !13, i64 472, !13, i64 480, !38, i64 488, !5, i64 496, !51, i64 504, !13, i64 512, !23, i64 520, !38, i64 528, !52, i64 536, !5, i64 576}
!54 = !{!23, !23, i64 0}
!55 = !{!30, !23, i64 480}
!56 = !{!30, !23, i64 648}
!57 = !{!30, !23, i64 656}
!58 = !{!30, !5, i64 488}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"llvm.loop.isvectorized", i32 1}
!61 = !{!"llvm.loop.unroll.runtime.disable"}
!62 = !{!13, !13, i64 0}
!63 = !{!4, !4, i64 0}
!64 = !{!30, !12, i64 32}
!65 = !{!"p1 _ZTS8pointf_s", !8, i64 0}
!66 = !{!"p1 long", !8, i64 0}
!67 = !{!"obj_state_s", !12, i64 0, !5, i64 8, !4, i64 16, !5, i64 24, !52, i64 32, !52, i64 72, !52, i64 112, !5, i64 152, !23, i64 160, !5, i64 168, !5, i64 172, !23, i64 176, !38, i64 184, !23, i64 192, !23, i64 200, !23, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !13, i64 336, !13, i64 344, !5, i64 352, !5, i64 352, !5, i64 352, !5, i64 352, !5, i64 352, !5, i64 352, !5, i64 352, !5, i64 352, !5, i64 353, !5, i64 353, !5, i64 356, !15, i64 360, !65, i64 368, !15, i64 376, !66, i64 384, !65, i64 392, !5, i64 400, !65, i64 408, !5, i64 416, !65, i64 424}
!68 = !{!67, !5, i64 168}
!69 = !{!41, !8, i64 184}
!70 = !{!67, !23, i64 176}
!71 = !{i64 0, i64 8, !54, i64 8, i64 8, !54}
!72 = !{!14, !14, i64 0}
!73 = !{!"p1 _ZTS20gvplugin_available_s", !8, i64 0}
!74 = !{!73, !73, i64 0}
!75 = !{!"gvplugin_available_s", !73, i64 0, !13, i64 8, !5, i64 16, !32, i64 24, !8, i64 32}
!76 = !{!75, !8, i64 32}
!77 = !{!"", !5, i64 0, !13, i64 8, !5, i64 16, !8, i64 24, !8, i64 32}
!78 = !{!77, !8, i64 24}
!79 = !{!30, !18, i64 152}
!80 = !{!77, !8, i64 32}
!81 = !{!30, !8, i64 168}
!82 = !{!77, !5, i64 0}
!83 = !{!30, !5, i64 160}
!84 = !{!75, !13, i64 8}
!85 = !{!30, !13, i64 176}
!86 = !{!"", !5, i64 0, !24, i64 8, !24, i64 24, !24, i64 40}
!87 = !{!86, !5, i64 0}
!88 = !{!30, !5, i64 128}
!89 = !{!41, !8, i64 0}
!90 = !{!41, !8, i64 8}
!91 = !{!53, !38, i64 40}
!92 = distinct !{!92, !59, !60, !61}
!93 = distinct !{!93, !59, !60, !61}
!94 = distinct !{!94, !59, !60}
!95 = distinct !{!95, !59, !60}
!96 = !{!41, !8, i64 16}
!97 = !{!41, !8, i64 24}
!98 = !{!41, !8, i64 48}
!99 = !{!41, !8, i64 56}
!100 = !{!41, !8, i64 32}
!101 = !{!53, !38, i64 488}
!102 = !{!30, !5, i64 288}
!103 = !{!30, !5, i64 284}
!104 = !{!41, !8, i64 40}
!105 = !{!41, !8, i64 64}
!106 = !{!41, !8, i64 72}
!107 = !{!41, !8, i64 80}
!108 = !{!41, !8, i64 88}
!109 = !{!41, !8, i64 96}
!110 = !{!41, !8, i64 104}
!111 = !{!41, !8, i64 112}
!112 = !{!41, !8, i64 120}
!113 = !{!41, !8, i64 128}
!114 = !{!41, !8, i64 136}
!115 = !{!41, !8, i64 144}
!116 = !{!41, !8, i64 152}
!117 = !{!41, !8, i64 160}
!118 = !{!41, !8, i64 168}
!119 = !{!"", !13, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !23, i64 32, !23, i64 40, !24, i64 48, !4, i64 64}
!120 = !{!119, !13, i64 0}
!121 = !{!41, !8, i64 176}
!122 = distinct !{!122, !59}
!123 = !{!52, !5, i64 32}
!124 = !{!39, !38, i64 16}
!125 = !{!39, !5, i64 24}
!126 = !{!39, !5, i64 28}
!127 = !{!67, !5, i64 152}
!128 = !{!67, !23, i64 160}
!129 = distinct !{null}
!130 = distinct !{!130, !59}
!131 = !{!67, !38, i64 184}
!132 = !{!67, !5, i64 172}
!133 = !{!41, !8, i64 192}
!134 = distinct !{!134, !59, !60, !61}
!135 = distinct !{!135, !59, !60, !61}
!136 = distinct !{!136, !59, !61, !60}
!137 = distinct !{!137, !59, !61, !60}
!138 = !{!41, !8, i64 200}
!139 = !{!5, !5, i64 0}
!140 = !{i64 0, i64 32, !63, i64 32, i64 4, !139}
!141 = !{!24, !23, i64 0}
!142 = !{!24, !23, i64 8}
!143 = distinct !{!143, !59, !60, !61}
!144 = distinct !{!144, !59, !60, !61}
!145 = distinct !{!145, !59, !61, !60}
!146 = distinct !{!146, !59, !61, !60}
!147 = !{!41, !8, i64 208}
!148 = distinct !{!148, !59, !60, !61}
!149 = distinct !{!149, !59, !60, !61}
!150 = distinct !{!150, !59, !61, !60}
!151 = distinct !{!151, !59, !61, !60}
!152 = !{!41, !8, i64 216}
!153 = !{!41, !8, i64 224}
!154 = distinct !{!154, !59, !60, !61}
!155 = distinct !{!155, !59, !61, !60}
!156 = !{!41, !8, i64 232}
!157 = !{!27, !23, i64 24}
!158 = !{!27, !23, i64 8}
!159 = !{!27, !23, i64 0}
!160 = !{!27, !23, i64 16}
end_hunk_1
