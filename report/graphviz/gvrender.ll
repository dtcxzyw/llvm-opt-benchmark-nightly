Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/gvrender?download=true
inline.NumInlined: 56
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@gvrender_polyline:bb.a
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
  %7 = alloca %struct.boxf, align 8               ; 18 uses
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
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %.promoted = load double, ptr %7, align 8       ; 3 uses
  %.promoted120 = load double, ptr %i.q, align 8  ; 3 uses
  %i.r = icmp ugt i64 %3, 1
  br i1 %i.r, label %.lr.ph, label %._crit_edge132

._crit_edge132:                                   ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !157 ; 2 uses
  %.phi.trans.insert133 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre134 = load double, ptr %.phi.trans.insert133, align 8, !tbaa !158 ; 2 uses
  %i.s = insertelement <2 x double> poison, double %.promoted120, i64 0
  %i.t = insertelement <2 x double> %i.s, double %.pre, i64 1
  %i.u = insertelement <2 x double> poison, double %.promoted, i64 0
  %i.v = insertelement <2 x double> %i.u, double %.pre134, i64 1
  br label %bb.g

.lr.ph:                                           ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %.promoted124 = load double, ptr %i.w, align 8, !tbaa !158 ; 2 uses
  %.promoted126 = load double, ptr %i.x, align 8, !tbaa !157 ; 2 uses
  %i.y = add i64 %3, -1                           ; 3 uses
  %min.iters.check = icmp eq i64 %3, 2
  %i.z = insertelement <4 x double> poison, double %.promoted, i64 0
  %i.aa = insertelement <4 x double> %i.z, double %.promoted124, i64 1
  %i.ab = insertelement <4 x double> %i.aa, double %.promoted120, i64 2
  %i.ac = insertelement <4 x double> %i.ab, double %.promoted126, i64 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.y, -2                       ; 2 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.promoted124, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert163 = insertelement <2 x double> poison, double %.promoted126, i64 0
  %broadcast.splat164 = shufflevector <2 x double> %broadcast.splatinsert163, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert165 = insertelement <2 x double> poison, double %.promoted, i64 0
  %broadcast.splat166 = shufflevector <2 x double> %broadcast.splatinsert165, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert167 = insertelement <2 x double> poison, double %.promoted120, i64 0
  %broadcast.splat168 = shufflevector <2 x double> %broadcast.splatinsert167, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi.a = phi <2 x double> [ %broadcast.splat164, %vector.ph ], [ %i.ak, %vector.body ] ; 2 uses
  %vec.phi169.a = phi <2 x double> [ %broadcast.splat, %vector.ph ], [ %i.ai, %vector.body ] ; 2 uses
  %vec.phi170.a = phi <2 x double> [ %broadcast.splat166, %vector.ph ], [ %i.ag, %vector.body ] ; 2 uses
  %vec.phi171.a = phi <2 x double> [ %broadcast.splat168, %vector.ph ], [ %i.aj, %vector.body ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %wide.vec.a = load <4 x double>, ptr %i.ae, align 8 ; 2 uses
  %strided.vec.a = shufflevector <4 x double> %wide.vec.a, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec172 = shufflevector <4 x double> %wide.vec.a, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.af = freeze <2 x double> %strided.vec.a      ; 3 uses
  %i.ag = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %vec.phi170.a, <2 x double> %i.af) ; 2 uses
  %i.ah = freeze <2 x double> %strided.vec172     ; 3 uses
  %i.ai = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %vec.phi169.a, <2 x double> %i.ah) ; 2 uses
  %i.aj = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %vec.phi171.a, <2 x double> %i.af) ; 2 uses
  %i.ak = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %vec.phi.a, <2 x double> %i.ah) ; 2 uses
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.al = fcmp uno <2 x double> %i.ah, %i.af
  %i.am = bitcast <2 x i1> %i.al to i2
  %i.an = icmp ne i2 %i.am, 0                     ; 7 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  %i.ap = or i1 %i.an, %i.ao
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !154

middle.block:                                     ; preds = %vector.body
  %i.aq = select i1 %i.an, <2 x double> %vec.phi.a, <2 x double> %i.ak
  %i.ar = select i1 %i.an, <2 x double> %vec.phi169.a, <2 x double> %i.ai
  %i.as = select i1 %i.an, <2 x double> %vec.phi170.a, <2 x double> %i.ag
  %i.at = select i1 %i.an, <2 x double> %vec.phi171.a, <2 x double> %i.aj
  %i.au = select i1 %i.an, i64 %index, i64 %i.y
  %i.av = tail call nsz double @llvm.vector.reduce.fmax.v2f64(<2 x double> %i.aq) ; 2 uses
  %i.aw = or i64 %i.au, 1
  %i.ax = tail call nsz double @llvm.vector.reduce.fmin.v2f64(<2 x double> %i.ar) ; 2 uses
  %i.ay = tail call nsz double @llvm.vector.reduce.fmin.v2f64(<2 x double> %i.as) ; 2 uses
  %i.az = tail call nsz double @llvm.vector.reduce.fmax.v2f64(<2 x double> %i.at) ; 2 uses
  %cmp.n = icmp ne i64 %i.y, %n.vec
  %.not176 = or i1 %cmp.n, %i.an
  %i.ba = insertelement <2 x double> poison, double %i.az, i64 0
  %i.bb = insertelement <2 x double> %i.ba, double %i.av, i64 1
  %i.bc = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.bd = insertelement <2 x double> %i.bc, double %i.ax, i64 1
  %i.be = insertelement <4 x double> poison, double %i.ay, i64 0
  %i.bf = insertelement <4 x double> %i.be, double %i.ax, i64 1
  %i.bg = insertelement <4 x double> %i.bf, double %i.az, i64 2
  %i.bh = insertelement <4 x double> %i.bg, double %i.av, i64 3
  br i1 %.not176, label %scalar.ph.preheader, label %._crit_edge

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.084122.ph = phi i64 [ 1, %.lr.ph ], [ %i.aw, %middle.block ]
  %.ph = phi <4 x double> [ %i.ac, %.lr.ph ], [ %i.bh, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.bi = phi <2 x double> [ %i.bb, %middle.block ], [ %i.ck, %scalar.ph ] ; 2 uses
  %i.bj = phi <2 x double> [ %i.bd, %middle.block ], [ %i.ci, %scalar.ph ] ; 2 uses
  %i.bk = extractelement <2 x double> %i.bj, i64 1 ; 2 uses
  %i.bl = extractelement <2 x double> %i.bi, i64 1 ; 2 uses
  store double %i.bk, ptr %i.w, align 8, !tbaa !158
  store double %i.bl, ptr %i.x, align 8, !tbaa !157
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge132, %._crit_edge
  %i.bm = phi double [ %i.bk, %._crit_edge ], [ %.pre134, %._crit_edge132 ] ; 3 uses
  %i.bn = phi double [ %i.bl, %._crit_edge ], [ %.pre, %._crit_edge132 ] ; 4 uses
  %i.bo = phi <2 x double> [ %i.bi, %._crit_edge ], [ %i.t, %._crit_edge132 ] ; 2 uses
  %i.bp = phi <2 x double> [ %i.bj, %._crit_edge ], [ %i.v, %._crit_edge132 ] ; 4 uses
  %i.bq = extractelement <2 x double> %i.bp, i64 0 ; 4 uses
  store double %i.bq, ptr %7, align 8
  %i.br = extractelement <2 x double> %i.bo, i64 0 ; 3 uses
  store double %i.br, ptr %i.q, align 8
  %i.bs = fsub <2 x double> %i.bo, %i.bp          ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.bv = bitcast i64 %i.n to <2 x i32>
  %i.bw = sitofp <2 x i32> %i.bv to <2 x double>  ; 10 uses
  %i.bx = fdiv <2 x double> %i.bs, %i.bw          ; 7 uses
  %i.by = load i8, ptr %5, align 1, !tbaa !63
  %i.bz = icmp eq i8 %i.by, 0
  br i1 %i.bz, label %get_imagescale.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ca = tail call i32 @strcasecmp(ptr noundef nonnull %5, ptr noundef nonnull @.str.16) #22
  %.not.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i, label %get_imagescale.exit.thread114, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cb = tail call i32 @strcasecmp(ptr noundef nonnull %5, ptr noundef nonnull @.str.17) #22
  %.not5.i = icmp eq i32 %i.cb, 0
  br i1 %.not5.i, label %get_imagescale.exit.thread116, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cc = tail call i32 @strcasecmp(ptr noundef nonnull %5, ptr noundef nonnull @.str.18) #22
  %.not6.i = icmp eq i32 %i.cc, 0
  br i1 %.not6.i, label %get_imagescale.exit.thread118, label %get_imagescale.exit

get_imagescale.exit:                              ; preds = %bb.j
  %i.cd = tail call zeroext i1 @mapbool(ptr noundef nonnull %5) #21
  br i1 %i.cd, label %bb.k, label %get_imagescale.exit.thread

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.084122 = phi i64 [ %i.cl, %scalar.ph ], [ %.084122.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ce = phi <4 x double> [ %i.cm, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.084122
  %i.cg = load <2 x double>, ptr %i.cf, align 8   ; 2 uses
  %i.ch = shufflevector <4 x double> %i.ce, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.ci = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.ch, <2 x double> %i.cg) ; 2 uses
  %i.cj = shufflevector <4 x double> %i.ce, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.ck = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.cj, <2 x double> %i.cg) ; 2 uses
  %i.cl = add nuw i64 %.084122, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.cl, %3
  %i.cm = shufflevector <2 x double> %i.ci, <2 x double> %i.ck, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !155

bb.k:                                             ; preds = %get_imagescale.exit
  %i.cn = extractelement <2 x double> %i.bx, i64 0
  %i.co = extractelement <2 x double> %i.bx, i64 1
  %i.cp = fcmp olt double %i.cn, %i.co
  br i1 %i.cp, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cq = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cr = fmul <2 x double> %i.cq, %i.bw
  br label %get_imagescale.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.cs = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ct = fmul <2 x double> %i.cs, %i.bw
  br label %get_imagescale.exit.thread

get_imagescale.exit.thread114:                    ; preds = %bb.h
  %foldExtExtBinop = fmul <2 x double> %i.bx, %i.bw
  %i.cu = shufflevector <2 x double> %foldExtExtBinop, <2 x double> %i.bw, <2 x i32> <i32 0, i32 3>
  br label %get_imagescale.exit.thread

get_imagescale.exit.thread116:                    ; preds = %bb.i
  %foldExtExtBinop178 = fmul <2 x double> %i.bx, %i.bw
  %i.cv = shufflevector <2 x double> %i.bw, <2 x double> %foldExtExtBinop178, <2 x i32> <i32 0, i32 3>
  br label %get_imagescale.exit.thread

get_imagescale.exit.thread118:                    ; preds = %bb.j
  %i.cw = fmul <2 x double> %i.bx, %i.bw
  br label %get_imagescale.exit.thread

get_imagescale.exit.thread:                       ; preds = %get_imagescale.exit, %bb.g, %bb.l, %bb.m, %get_imagescale.exit.thread118, %get_imagescale.exit.thread116, %get_imagescale.exit.thread114
  %i.cx = phi <2 x double> [ %i.bw, %get_imagescale.exit ], [ %i.cr, %bb.l ], [ %i.ct, %bb.m ], [ %i.cu, %get_imagescale.exit.thread114 ], [ %i.cv, %get_imagescale.exit.thread116 ], [ %i.cw, %get_imagescale.exit.thread118 ], [ %i.bw, %bb.g ] ; 6 uses
  %i.cy = load i8, ptr %6, align 1, !tbaa !63
  %i.cz = icmp eq i8 %i.cy, 0
  br i1 %i.cz, label %get_imagepos.exit, label %bb.n

bb.n:                                             ; preds = %get_imagescale.exit.thread
  %i.da = tail call i32 @strcasecmp(ptr noundef nonnull readonly %6, ptr noundef nonnull @.str.19) #22
  %.not.i99 = icmp eq i32 %i.da, 0
  br i1 %.not.i99, label %get_imagepos.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.db = tail call i32 @strcasecmp(ptr noundef nonnull readonly %6, ptr noundef nonnull @.str.20) #22
  %.not10.i = icmp eq i32 %i.db, 0
  br i1 %.not10.i, label %get_imagepos.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dc = tail call i32 @strcasecmp(ptr noundef nonnull readonly %6, ptr noundef nonnull @.str.21) #22
  %.not11.i = icmp eq i32 %i.dc, 0
  br i1 %.not11.i, label %get_imagepos.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dd = tail call i32 @strcasecmp(ptr noundef nonnull readonly %6, ptr noundef nonnull @.str.22) #22
  %.not12.i = icmp eq i32 %i.dd, 0
  br i1 %.not12.i, label %get_imagepos.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.de = tail call i32 @strcasecmp(ptr noundef nonnull readonly %6, ptr noundef nonnull @.str.23) #22
  %.not13.i = icmp eq i32 %i.de, 0
  br i1 %.not13.i, label %get_imagepos.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.df = tail call i32 @strcasecmp(ptr noundef nonnull readonly %6, ptr noundef nonnull @.str.24) #22
  %.not14.i = icmp eq i32 %i.df, 0
  br i1 %.not14.i, label %get_imagepos.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dg = tail call i32 @strcasecmp(ptr noundef nonnull readonly %6, ptr noundef nonnull @.str.25) #22
  %.not15.i = icmp eq i32 %i.dg, 0
  br i1 %.not15.i, label %get_imagepos.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dh = tail call i32 @strcasecmp(ptr noundef nonnull readonly %6, ptr noundef nonnull @.str.26) #22
  %.not16.i = icmp eq i32 %i.dh, 0
  br i1 %.not16.i, label %get_imagepos.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.di = tail call i32 @strcasecmp(ptr noundef nonnull readonly %6, ptr noundef nonnull @.str.27) #22
  %.not17.i = icmp eq i32 %i.di, 0
  %..i100 = select i1 %.not17.i, i32 8, i32 4
  br label %get_imagepos.exit

get_imagepos.exit:                                ; preds = %get_imagescale.exit.thread, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v
  %.0.i101 = phi i32 [ 4, %get_imagescale.exit.thread ], [ 7, %bb.u ], [ %..i100, %bb.v ], [ 6, %bb.t ], [ 5, %bb.s ], [ 4, %bb.r ], [ 3, %bb.q ], [ 2, %bb.p ], [ 1, %bb.o ], [ 0, %bb.n ] ; 2 uses
  %i.dj = extractelement <2 x double> %i.cx, i64 0
  %i.dk = extractelement <2 x double> %i.bs, i64 0
  %i.dl = fcmp olt double %i.dj, %i.dk
  br i1 %i.dl, label %bb.w, label %bb.aa

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
  %foldExtExtBinop180 = fadd <2 x double> %i.bp, %i.cx
  %i.dm = extractelement <2 x double> %foldExtExtBinop180, i64 0
  br label %.sink.split

bb.y:                                             ; preds = %bb.w, %bb.w, %bb.w
  %foldExtExtBinop182 = fsub <2 x double> %i.bs, %i.cx
  %foldExtExtBinop184 = fadd <2 x double> %i.bp, %foldExtExtBinop182 ; 2 uses
  %i.dn = extractelement <2 x double> %foldExtExtBinop184, i64 0 ; 2 uses
  store double %i.dn, ptr %7, align 8, !tbaa !159
  %foldExtExtBinop186 = fadd <2 x double> %i.cx, %foldExtExtBinop184
  %i.do = extractelement <2 x double> %foldExtExtBinop186, i64 0
  br label %.sink.split

bb.z:                                             ; preds = %bb.w
  %foldExtExtBinop188 = fsub <2 x double> %i.bs, %i.cx
  %i.dp = extractelement <2 x double> %foldExtExtBinop188, i64 0
  %i.dq = fmul double %i.dp, 5.000000e-01         ; 2 uses
  %i.dr = fadd double %i.bq, %i.dq                ; 2 uses
  store double %i.dr, ptr %7, align 8, !tbaa !159
  %i.ds = fsub double %i.br, %i.dq
  br label %.sink.split

end_hunk_0
