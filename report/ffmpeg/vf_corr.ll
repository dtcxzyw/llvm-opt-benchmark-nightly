Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_corr?download=true
inline.NumInlined: 14
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@corr_slice8:bb.a
.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.081101.us = phi i32 [ %i.by, %._crit_edge.us ], [ %i.aj, %.preheader.us.preheader ]
  %.082100.us = phi float [ %i.bv, %._crit_edge.us ], [ 0.000000e+00, %.preheader.us.preheader ]
  %.08797.us = phi ptr [ %i.bx, %._crit_edge.us ], [ %i.bf, %.preheader.us.preheader ] ; 2 uses
  %.08896.us = phi ptr [ %i.bw, %._crit_edge.us ], [ %i.bb, %.preheader.us.preheader ] ; 2 uses
  %i.bi = phi <2 x float> [ %i.bt, %._crit_edge.us ], [ zeroinitializer, %.preheader.us.preheader ]
  br label %bb.c

bb.c:                                             ; preds = %.preheader.us, %bb.c
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %.192.us = phi float [ %.082100.us, %.preheader.us ], [ %i.bv, %bb.c ]
  %i.bj = phi <2 x float> [ %i.bi, %.preheader.us ], [ %i.bt, %bb.c ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.08896.us, i64 %indvars.iv
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !30
  %i.bm = getelementptr inbounds nuw i8, ptr %.08797.us, i64 %indvars.iv
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !30
  %i.bo = insertelement <2 x i8> poison, i8 %i.bn, i64 0
  %i.bp = insertelement <2 x i8> %i.bo, i8 %i.bl, i64 1
  %i.bq = uitofp <2 x i8> %i.bp to <2 x float>
  %i.br = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %i.bq, <2 x float> %i.aw) ; 3 uses
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bt = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.br, <2 x float> %i.bj) ; 3 uses
  %i.bu = extractelement <2 x float> %i.br, i64 0 ; 2 uses
  %i.bv = tail call nsz float @llvm.fmuladd.f32(float %i.bu, float %i.bu, float %.192.us) ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !92

._crit_edge.us:                                   ; preds = %bb.c
  %i.bw = getelementptr inbounds i8, ptr %.08896.us, i64 %i.y
  %i.bx = getelementptr inbounds i8, ptr %.08797.us, i64 %i.ab
  %i.by = add nsw i32 %.081101.us, 1              ; 2 uses
  %exitcond113.not = icmp eq i32 %i.by, %i.am
  br i1 %exitcond113.not, label %._crit_edge102, label %.preheader.us, !llvm.loop !93

._crit_edge102:                                   ; preds = %._crit_edge.us, %.preheader.lr.ph, %bb.b
  %.082.lcssa = phi float [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %.preheader.lr.ph ], [ %i.bv, %._crit_edge.us ]
  %i.bz = phi <2 x float> [ zeroinitializer, %bb.b ], [ zeroinitializer, %.preheader.lr.ph ], [ %i.bt, %._crit_edge.us ]
  %gep = getelementptr [12 x i8], ptr %invariant.gep, i64 %indvars.iv114 ; 2 uses
  store <2 x float> %i.bz, ptr %gep, align 4, !tbaa !68
  %i.ca = getelementptr inbounds nuw i8, ptr %gep, i64 8
  store float %.082.lcssa, ptr %i.ca, align 4, !tbaa !68
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count117
  br i1 %exitcond118.not, label %._crit_edge, label %bb.b, !llvm.loop !94
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @config_output(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !95     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.h = tail call i32 @ff_framesync_init_dualinput(ptr noundef nonnull %i.g, ptr noundef %i.a) #11 ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %av_cmp_q.exit44.thread52, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load <2 x i32>, ptr %i.j, align 8, !tbaa !51
  store <2 x i32> %i.l, ptr %i.k, align 8, !tbaa !51
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !51
  store i64 %i.o, ptr %i.m, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.r = load i64, ptr %i.q, align 8, !tbaa !51
  store i64 %i.r, ptr %i.p, align 8, !tbaa !51
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 280
  %i.u = load i64, ptr %i.t, align 8, !tbaa !51
  store i64 %i.u, ptr %i.s, align 8, !tbaa !51
  %i.v = tail call i32 @ff_framesync_configure(ptr noundef nonnull %i.g) #11 ; 2 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %av_cmp_q.exit44.thread52, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.y = load i64, ptr %i.x, align 4, !tbaa !51   ; 5 uses
  store i64 %i.y, ptr %i.m, align 8, !tbaa !51
  %i.z = load i64, ptr %i.n, align 8              ; 5 uses
  %.sroa.011.0.extract.trunc.i = trunc i64 %i.z to i32 ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.y to i32 ; 4 uses
  %sext.i = shl i64 %i.z, 32
  %i.aa = ashr exact i64 %sext.i, 32
  %i.ab = ashr i64 %i.y, 32                       ; 2 uses
  %i.ac = mul nsw i64 %i.aa, %i.ab
  %sext20.i = shl i64 %i.y, 32
  %i.ad = ashr exact i64 %sext20.i, 32            ; 2 uses
  %i.ae = ashr i64 %i.z, 32
  %i.af = mul nsw i64 %i.ae, %i.ad
  %.not.i = icmp eq i64 %i.ac, %i.af
  %i.ag = lshr i64 %i.z, 32
  %i.ah = trunc nuw i64 %i.ag to i32
  br i1 %.not.i, label %bb.d, label %av_cmp_q.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ai = icmp ugt i64 %i.y, 4294967295           ; 2 uses
  %i.aj = icmp ugt i64 %i.z, 4294967295
  %or.cond.i = and i1 %i.ai, %i.aj
  br i1 %or.cond.i, label %av_cmp_q.exit.thread47, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = icmp ne i32 %.sroa.011.0.extract.trunc.i, 0
  %i.al = icmp ne i32 %.sroa.0.0.extract.trunc.i, 0
  %or.cond5.i = and i1 %i.al, %i.ak
  %.not.unshifted = xor i32 %.sroa.011.0.extract.trunc.i, %.sroa.0.0.extract.trunc.i
  %.not = icmp sgt i32 %.not.unshifted, -1
  %or.cond = and i1 %or.cond5.i, %.not
  br i1 %or.cond, label %av_cmp_q.exit.thread47, label %av_cmp_q.exit.thread

av_cmp_q.exit.thread47:                           ; preds = %bb.e, %bb.d
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !48
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !50
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 96
  %i.aq = load i64, ptr %i.ap, align 8            ; 4 uses
  %.sroa.011.0.extract.trunc.i35 = trunc i64 %i.aq to i32 ; 2 uses
  %sext.i37 = shl i64 %i.aq, 32
  %i.ar = ashr exact i64 %sext.i37, 32
  %i.as = mul nsw i64 %i.ar, %i.ab
  %i.at = ashr i64 %i.aq, 32
  %i.au = mul nsw i64 %i.at, %i.ad
  %.not.i39 = icmp eq i64 %i.as, %i.au
  br i1 %.not.i39, label %bb.f, label %av_cmp_q.exit.thread

bb.f:                                             ; preds = %av_cmp_q.exit.thread47
  %i.av = icmp ugt i64 %i.aq, 4294967295
  %or.cond.i41 = and i1 %i.ai, %i.av
  br i1 %or.cond.i41, label %av_cmp_q.exit44.thread52, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = icmp ne i32 %.sroa.011.0.extract.trunc.i35, 0
  %i.ax = icmp ne i32 %.sroa.0.0.extract.trunc.i, 0
  %or.cond5.i42 = and i1 %i.ax, %i.aw
  %.not34.unshifted = xor i32 %.sroa.011.0.extract.trunc.i35, %.sroa.0.0.extract.trunc.i
  %.not34 = icmp sgt i32 %.not34.unshifted, -1
  %or.cond55 = and i1 %or.cond5.i42, %.not34
  br i1 %or.cond55, label %av_cmp_q.exit44.thread52, label %av_cmp_q.exit.thread

av_cmp_q.exit.thread:                             ; preds = %av_cmp_q.exit.thread47, %bb.g, %bb.c, %bb.e
  %i.ay = load ptr, ptr %i.d, align 8, !tbaa !48
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !50 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 96
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !96
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 100
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !97
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.a, i32 noundef 24, ptr noundef nonnull @.str.6, i32 noundef %.sroa.011.0.extract.trunc.i, i32 noundef %i.ah, i32 noundef %i.bc, i32 noundef %i.be) #11
  br label %av_cmp_q.exit44.thread52

av_cmp_q.exit44.thread52:                         ; preds = %bb.g, %bb.f, %av_cmp_q.exit.thread, %bb.b, %bb.a
  %.0 = phi i32 [ %i.v, %bb.b ], [ %i.h, %bb.a ], [ 0, %av_cmp_q.exit.thread ], [ 0, %bb.g ], [ 0, %bb.f ]
  ret i32 %.0
}

declare i32 @ff_framesync_init_dualinput(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @ff_framesync_configure(ptr noundef) local_unnamed_addr #4

declare ptr @av_default_item_name(ptr noundef) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal ptr @corr_child_next(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr nofree noundef readnone captures(address_is_null) %1) #8 {
bb.a:
  %.not = icmp eq ptr %1, null
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = select i1 %.not, ptr %i.a, ptr null
  ret ptr %i.b
}

declare ptr @ff_framesync_child_class_iterate(ptr noundef) #4

declare void @ff_framesync_preinit(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal i32 @do_corr(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 5 uses
  %i.b = alloca [128 x i8], align 16              ; 4 uses
  %i.c = alloca [128 x i8], align 16              ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 4 uses
  %i.e = alloca [128 x i8], align 16              ; 4 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca [4 x double], align 16            ; 15 uses
  %1 = alloca %struct.ThreadData, align 8         ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !111  ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19   ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  %i.m = call i32 @ff_framesync_dualinput_get(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #11 ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.p = load i32, ptr %i.o, align 8, !tbaa !112
  %i.q = icmp eq i32 %i.p, 0
  %i.r = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.s = icmp ne ptr %i.r, null
  %or.cond = select i1 %i.q, i1 %i.s, i1 false
  br i1 %or.cond, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !113  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 312 ; 3 uses
  store ptr %i.t, ptr %1, align 8, !tbaa !58
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.r, ptr %i.v, align 8, !tbaa !59
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 288
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !54
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 268 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 272 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !51
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 168 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !47
  %. = call i32 @llvm.smin.i32(i32 %i.aa, i32 %i.ac)
  %i.ad = call i32 @ff_filter_execute(ptr noundef nonnull %i.j, ptr noundef %i.x, ptr noundef nonnull %1, ptr noundef null, i32 noundef %.) #11 ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 248 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !31 ; 5 uses
  %i.ag = icmp sgt i32 %i.af, 0
  %.pre = load i32, ptr %i.ab, align 8, !tbaa !47 ; 4 uses
  br i1 %i.ag, label %.lr.ph149, label %._crit_edge150

.lr.ph149:                                        ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 180 ; 3 uses
  %i.ai = icmp sgt i32 %.pre, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 252 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 200 ; 3 uses
  br i1 %i.ai, label %.lr.ph149.split.us, label %.lr.ph149.split.preheader

.lr.ph149.split.preheader:                        ; preds = %.lr.ph149
  %wide.trip.count = zext nneg i32 %i.af to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.af, 4
  br i1 %min.iters.check, label %.lr.ph149.split.preheader280, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph149.split.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index
  %wide.load = load <4 x i32>, ptr %i.al, align 4, !tbaa !51
  %i.am = sitofp nsz <4 x i32> %wide.load to <4 x float>
  %i.an = fdiv nnan nsz <4 x float> splat (float 1.000000e+00), %i.am
  %i.ao = fpext nnan nsz <4 x float> %i.an to <4 x double>
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %index
  %wide.load237 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !51
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index
  %wide.load238 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !51
  %i.ar = mul nsw <4 x i32> %wide.load238, %wide.load237
  %i.as = sitofp nsz <4 x i32> %i.ar to <4 x double>
  %i.at = fdiv ninf nsz <4 x double> zeroinitializer, %i.as
  %i.au = fmul nsz <4 x double> %i.at, %i.ao
  %i.av = fptrunc nsz <4 x double> %i.au to <4 x float>
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %index
  %interleaved.vec = shufflevector <4 x float> %i.av, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x float> %interleaved.vec, ptr %i.aw, align 4, !tbaa !68
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !98

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge150, label %.lr.ph149.split.preheader280

.lr.ph149.split.preheader280:                     ; preds = %.lr.ph149.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph149.split.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph149.split

.lr.ph149.split.us:                               ; preds = %.lr.ph149
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 232
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !52
  %i.ba = zext nneg i32 %i.af to i64              ; 6 uses
  %wide.trip.count182 = zext nneg i32 %.pre to i64 ; 5 uses
  %min.iters.check240 = icmp ugt i32 %.pre, 3
  %ident.check.not = icmp eq i32 %i.af, 1
  %or.cond272 = and i1 %min.iters.check240, %ident.check.not
  %n.vec242.a = and i64 %wide.trip.count182, 2147483644 ; 3 uses
  %cmp.n255 = icmp eq i64 %n.vec242.a, %wide.trip.count182
  %xtraiter = and i64 %wide.trip.count182, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %._crit_edge.us, %.lr.ph149.split.us
  %indvars.iv184 = phi i64 [ %indvars.iv.next185, %._crit_edge.us ], [ 0, %.lr.ph149.split.us ] ; 6 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv184
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !51
  %invariant.gep = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %indvars.iv184 ; 7 uses
  br i1 %or.cond272, label %vector.body243.a, label %scalar.ph239.preheader

vector.body243.a:                                 ; preds = %.lr.ph.us, %vector.body243.a
  %index244.a = phi i64 [ %index.next252, %vector.body243.a ], [ 0, %.lr.ph.us ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.be, %vector.body243.a ], [ zeroinitializer, %.lr.ph.us ]
  %vec.phi245 = phi <2 x i64> [ %6, %vector.body243.a ], [ zeroinitializer, %.lr.ph.us ]
  %vec.phi246 = phi <2 x i64> [ %4, %vector.body243.a ], [ zeroinitializer, %.lr.ph.us ]
  %vec.phi247 = phi <2 x i64> [ %5, %vector.body243.a ], [ zeroinitializer, %.lr.ph.us ]
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep, i64 %index244.a
  %2 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep, i64 %index244.a
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %wide.vec = load <4 x i64>, ptr %i.bd, align 8, !tbaa !65 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec248 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec249 = load <4 x i64>, ptr %3, align 8, !tbaa !65 ; 2 uses
  %strided.vec250 = shufflevector <4 x i64> %wide.vec249, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec251 = shufflevector <4 x i64> %wide.vec249, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %4 = add <2 x i64> %strided.vec, %vec.phi246    ; 2 uses
  %5 = add <2 x i64> %strided.vec250, %vec.phi247 ; 2 uses
  %i.be = add <2 x i64> %strided.vec248, %vec.phi ; 2 uses
  %6 = add <2 x i64> %strided.vec251, %vec.phi245 ; 2 uses
  %index.next252 = add nuw i64 %index244.a, 4     ; 2 uses
  %i.bf = icmp eq i64 %index.next252, %n.vec242.a
  br i1 %i.bf, label %middle.block253, label %vector.body243.a, !llvm.loop !99

middle.block253:                                  ; preds = %vector.body243.a
  %bin.rdx = add <2 x i64> %6, %i.be
  %7 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  %bin.rdx254 = add <2 x i64> %5, %4
  %8 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx254)
  %9 = insertelement <2 x i64> poison, i64 %8, i64 0
  %10 = insertelement <2 x i64> %9, i64 %7, i64 1 ; 2 uses
  br i1 %cmp.n255, label %._crit_edge.us, label %scalar.ph239.preheader

scalar.ph239.preheader:                           ; preds = %.lr.ph.us, %middle.block253
  %indvars.iv179.ph = phi i64 [ 0, %.lr.ph.us ], [ %n.vec242.a, %middle.block253 ] ; 3 uses
  %.ph = phi <2 x i64> [ zeroinitializer, %.lr.ph.us ], [ %10, %middle.block253 ] ; 2 uses
  br i1 %lcmp.mod.not, label %scalar.ph239.prol.loopexit, label %scalar.ph239.prol

scalar.ph239.prol:                                ; preds = %scalar.ph239.preheader, %scalar.ph239.prol
  %indvars.iv179.prol = phi i64 [ %indvars.iv.next180.prol, %scalar.ph239.prol ], [ %indvars.iv179.ph, %scalar.ph239.preheader ] ; 2 uses
  %11 = phi <2 x i64> [ %14, %scalar.ph239.prol ], [ %.ph, %scalar.ph239.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph239.prol ], [ 0, %scalar.ph239.preheader ]
  %12 = mul nuw nsw i64 %indvars.iv179.prol, %i.ba
  %gep.prol = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep, i64 %12
  %13 = load <2 x i64>, ptr %gep.prol, align 8, !tbaa !65
  %14 = add <2 x i64> %13, %11                    ; 3 uses
  %indvars.iv.next180.prol = add nuw nsw i64 %indvars.iv179.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph239.prol.loopexit, label %scalar.ph239.prol, !llvm.loop !100

scalar.ph239.prol.loopexit:                       ; preds = %scalar.ph239.prol, %scalar.ph239.preheader
  %.lcssa279.unr = phi <2 x i64> [ poison, %scalar.ph239.preheader ], [ %14, %scalar.ph239.prol ]
  %indvars.iv179.unr = phi i64 [ %indvars.iv179.ph, %scalar.ph239.preheader ], [ %indvars.iv.next180.prol, %scalar.ph239.prol ]
  %.unr = phi <2 x i64> [ %.ph, %scalar.ph239.preheader ], [ %14, %scalar.ph239.prol ]
  %15 = sub nsw i64 %indvars.iv179.ph, %wide.trip.count182
  %16 = icmp ugt i64 %15, -4
  br i1 %16, label %._crit_edge.us, label %scalar.ph239.a

scalar.ph239.a:                                   ; preds = %scalar.ph239.prol.loopexit, %scalar.ph239.a
  %indvars.iv179 = phi i64 [ %indvars.iv.next180.3.a, %scalar.ph239.a ], [ %indvars.iv179.unr, %scalar.ph239.prol.loopexit ] ; 5 uses
  %i.bg = phi <2 x i64> [ %25, %scalar.ph239.a ], [ %.unr, %scalar.ph239.prol.loopexit ]
  %17 = mul nuw nsw i64 %indvars.iv179, %i.ba
  %gep = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep, i64 %17
  %18 = load <2 x i64>, ptr %gep, align 8, !tbaa !65
  %19 = add <2 x i64> %18, %i.bg
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1
  %20 = mul nuw nsw i64 %indvars.iv.next180, %i.ba
  %gep.1 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep, i64 %20
  %21 = load <2 x i64>, ptr %gep.1, align 8, !tbaa !65
  %22 = add <2 x i64> %21, %19
  %indvars.iv.next180.1 = add nuw nsw i64 %indvars.iv179, 2
  %i.bh = mul nuw nsw i64 %indvars.iv.next180.1, %i.ba
  %gep.2.a = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep, i64 %i.bh
  %i.bi = load <2 x i64>, ptr %gep.2.a, align 8, !tbaa !65
  %i.bj = add <2 x i64> %i.bi, %22
  %indvars.iv.next180.2.a = add nuw nsw i64 %indvars.iv179, 3
  %23 = mul nuw nsw i64 %indvars.iv.next180.2.a, %i.ba
  %gep.3 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep, i64 %23
  %24 = load <2 x i64>, ptr %gep.3, align 8, !tbaa !65
  %25 = add <2 x i64> %24, %i.bj                  ; 2 uses
  %indvars.iv.next180.3.a = add nuw nsw i64 %indvars.iv179, 4 ; 2 uses
  %exitcond183.not.3 = icmp eq i64 %indvars.iv.next180.3.a, %wide.trip.count182
  br i1 %exitcond183.not.3, label %._crit_edge.us, label %scalar.ph239.a, !llvm.loop !101

._crit_edge.us:                                   ; preds = %scalar.ph239.prol.loopexit, %scalar.ph239.a, %middle.block253
  %26 = phi <2 x i64> [ %10, %middle.block253 ], [ %.lcssa279.unr, %scalar.ph239.prol.loopexit ], [ %25, %scalar.ph239.a ]
  %i.bk = sitofp nsz i32 %i.bc to float
  %i.bl = fdiv nsz float 1.000000e+00, %i.bk
  %i.bm = fpext nsz float %i.bl to double
  %i.bn = uitofp nsz <2 x i64> %26 to <2 x double>
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv184
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !51
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv184
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !51
  %i.bs = mul nsw i32 %i.br, %i.bp
  %i.bt = sitofp nsz i32 %i.bs to double
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv184
  %i.bv = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.bw = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bx = fdiv nsz <2 x double> %i.bn, %i.bw
  %i.by = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.bz = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ca = fmul nsz <2 x double> %i.bx, %i.bz
  %i.cb = fptrunc nsz <2 x double> %i.ca to <2 x float>
  store <2 x float> %i.cb, ptr %i.bu, align 8, !tbaa !68
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %exitcond188.not = icmp eq i64 %indvars.iv.next185, %i.ba
  br i1 %exitcond188.not, label %._crit_edge150, label %.lr.ph.us, !llvm.loop !102

._crit_edge150:                                   ; preds = %.lr.ph149.split, %._crit_edge.us, %middle.block, %bb.c
  %i.cc = getelementptr inbounds nuw i8, ptr %i.l, i64 296
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !55
  %i.ce = load i32, ptr %i.z, align 8, !tbaa !51
  %.140 = call i32 @llvm.smin.i32(i32 %i.ce, i32 %.pre)
  %i.cf = call i32 @ff_filter_execute(ptr noundef nonnull %i.j, ptr noundef %i.cd, ptr noundef nonnull %1, ptr noundef null, i32 noundef %.140) #11 ; 0 uses
  %i.cg = load i32, ptr %i.ae, align 8, !tbaa !31 ; 6 uses
  %i.ch = icmp sgt i32 %i.cg, 0                   ; 2 uses
  br i1 %i.ch, label %.preheader141.lr.ph, label %._crit_edge162

.preheader141.lr.ph:                              ; preds = %._crit_edge150
  %i.ci = load i32, ptr %i.ab, align 8, !tbaa !47 ; 4 uses
  %i.cj = icmp sgt i32 %i.ci, 0
  %i.ck = getelementptr inbounds nuw i8, ptr %i.l, i64 240
  %i.cl = zext nneg i32 %i.cg to i64              ; 6 uses
  %wide.trip.count192 = zext i32 %i.ci to i64     ; 2 uses
  %xtraiter282 = and i64 %wide.trip.count192, 1
  %i.cm = icmp eq i32 %i.ci, 1
  %unroll_iter = and i64 %wide.trip.count192, 2147483646
  %lcmp.mod284.not = icmp eq i64 %xtraiter282, 0
  %lcmp.mod287 = trunc i32 %i.ci to i1
  br label %.preheader141

.lr.ph149.split:                                  ; preds = %.lr.ph149.split.preheader280, %.lr.ph149.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph149.split ], [ %indvars.iv.ph, %.lr.ph149.split.preheader280 ] ; 5 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !51
  %i.cp = sitofp nsz i32 %i.co to float
  %i.cq = fdiv nnan nsz float 1.000000e+00, %i.cp
  %i.cr = fpext nnan nsz float %i.cq to double
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !51
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !51
  %i.cw = mul nsw i32 %i.cv, %i.ct
  %i.cx = sitofp nsz i32 %i.cw to double
  %i.cy = fdiv ninf nsz double 0.000000e+00, %i.cx
  %i.cz = fmul nsz double %i.cy, %i.cr
  %i.da = fptrunc nsz double %i.cz to float       ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv ; 2 uses
  store float %i.da, ptr %i.db, align 8, !tbaa !68
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  store float %i.da, ptr %i.dc, align 4, !tbaa !68
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge150, label %.lr.ph149.split, !llvm.loop !103

.preheader141:                                    ; preds = %.preheader141.lr.ph, %._crit_edge.thread
  %indvars.iv194 = phi i64 [ 0, %.preheader141.lr.ph ], [ %indvars.iv.next195, %._crit_edge.thread ] ; 3 uses
  br i1 %i.cj, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.preheader141
  %i.dd = load ptr, ptr %i.ck, align 8, !tbaa !53
  %invariant.gep225 = getelementptr inbounds nuw [12 x i8], ptr %i.dd, i64 %indvars.iv194 ; 3 uses
  br i1 %i.cm, label %.epil.preheader, label %.lr.ph.new

.lr.ph161.preheader:                              ; preds = %._crit_edge.thread
  %xtraiter288 = and i64 %i.cl, 7                 ; 3 uses
  %i.de = icmp ult i32 %i.cg, 8
  br i1 %i.de, label %.lr.ph161.epil.preheader, label %.lr.ph161.preheader.new

.lr.ph161.preheader.new:                          ; preds = %.lr.ph161.preheader
  %unroll_iter292 = and i64 %i.cl, 2147483640
  br label %.lr.ph161

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph.new
  br i1 %lcmp.mod284.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv189.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next190.1, %._crit_edge.unr-lcssa ]
  %.0123153.epil.init = phi double [ 0.000000e+00, %.lr.ph ], [ %i.eg, %._crit_edge.unr-lcssa ]
  %.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.ec, %._crit_edge.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod287)
  %i.df = mul nuw nsw i64 %indvars.iv189.epil.init, %i.cl
  %gep226.epil = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep225, i64 %i.df ; 2 uses
  %i.dg = load <2 x float>, ptr %gep226.epil, align 4, !tbaa !68
  %i.dh = fpext nsz <2 x float> %i.dg to <2 x double>
  %i.di = fadd nsz <2 x double> %.epil.init, %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %gep226.epil, i64 8
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !68
  %i.dl = fpext nsz float %i.dk to double
  %i.dm = fadd nsz double %.0123153.epil.init, %i.dl
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %.lcssa274 = phi <2 x double> [ %i.ec, %._crit_edge.unr-lcssa ], [ %i.di, %.epil.preheader ] ; 2 uses
  %.lcssa273 = phi double [ %i.eg, %._crit_edge.unr-lcssa ], [ %i.dm, %.epil.preheader ]
  %i.dn = extractelement <2 x double> %.lcssa274, i64 1
  %i.do = fmul nsz double %i.dn, %.lcssa273       ; 2 uses
  %i.dp = fcmp nsz ogt double %i.do, 0.000000e+00
  br i1 %i.dp, label %bb.d, label %._crit_edge.thread

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %indvars.iv189 = phi i64 [ %indvars.iv.next190.1, %.lr.ph.new ], [ 0, %.lr.ph ] ; 3 uses
  %.0123153 = phi double [ %i.eg, %.lr.ph.new ], [ 0.000000e+00, %.lr.ph ]
  %i.dq = phi <2 x double> [ %i.ec, %.lr.ph.new ], [ zeroinitializer, %.lr.ph ]
  %niter.a = phi i64 [ %niter.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.dr = mul nuw nsw i64 %indvars.iv189, %i.cl
  %gep226 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep225, i64 %i.dr ; 2 uses
  %i.ds = load <2 x float>, ptr %gep226, align 4, !tbaa !68
  %i.dt = fpext nsz <2 x float> %i.ds to <2 x double>
  %i.du = fadd nsz <2 x double> %i.dq, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %gep226, i64 8
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !68
  %i.dx = fpext nsz float %i.dw to double
  %i.dy = fadd nsz double %.0123153, %i.dx
  %indvars.iv.next190 = or disjoint i64 %indvars.iv189, 1
  %i.dz = mul nuw nsw i64 %indvars.iv.next190, %i.cl
  %gep226.1 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep225, i64 %i.dz ; 2 uses
  %i.ea = load <2 x float>, ptr %gep226.1, align 4, !tbaa !68
  %i.eb = fpext nsz <2 x float> %i.ea to <2 x double>
  %i.ec = fadd nsz <2 x double> %i.du, %i.eb      ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %gep226.1, i64 8
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !68
  %i.ef = fpext nsz float %i.ee to double
  %i.eg = fadd nsz double %i.dy, %i.ef            ; 3 uses
  %indvars.iv.next190.1 = add nuw nsw i64 %indvars.iv189, 2 ; 2 uses
  %niter.next.1 = add i64 %niter.a, 2             ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph.new, !llvm.loop !104

bb.d:                                             ; preds = %._crit_edge
  %i.eh = call nsz double @llvm.sqrt.f64(double %i.do)
  %i.ei = extractelement <2 x double> %.lcssa274, i64 0
  %i.ej = fdiv nsz double %i.ei, %i.eh            ; 2 uses
  %i.ek = fcmp nsz ogt double %i.ej, -1.000000e+00
  %i.el = select nsz i1 %i.ek, double %i.ej, double -1.000000e+00 ; 2 uses
  %i.em = fcmp nsz ogt double %i.el, 1.000000e+00
  %..i = select nsz i1 %i.em, double 1.000000e+00, double %i.el
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader141, %._crit_edge, %bb.d
  %.sink = phi double [ %..i, %bb.d ], [ 0.000000e+00, %._crit_edge ], [ 0.000000e+00, %.preheader141 ]
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv194
  store double %.sink, ptr %i.en, align 8, !tbaa !39
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1 ; 2 uses
  %exitcond198.not = icmp eq i64 %indvars.iv.next195, %i.cl
  br i1 %exitcond198.not, label %.lr.ph161.preheader, label %.preheader141, !llvm.loop !105

._crit_edge162.loopexit.unr-lcssa:                ; preds = %.lr.ph161
  %lcmp.mod289.not = icmp eq i64 %xtraiter288, 0
  br i1 %lcmp.mod289.not, label %._crit_edge162, label %.lr.ph161.epil.preheader

.lr.ph161.epil.preheader:                         ; preds = %._crit_edge162.loopexit.unr-lcssa, %.lr.ph161.preheader
  %indvars.iv199.epil.init = phi i64 [ 0, %.lr.ph161.preheader ], [ %indvars.iv.next200.7, %._crit_edge162.loopexit.unr-lcssa ]
  %.0131159.epil.init = phi double [ 0.000000e+00, %.lr.ph161.preheader ], [ %i.go, %._crit_edge162.loopexit.unr-lcssa ]
  %lcmp.mod291 = icmp ne i64 %xtraiter288, 0
  call void @llvm.assume(i1 %lcmp.mod291)
  br label %.lr.ph161.epil

.lr.ph161.epil:                                   ; preds = %.lr.ph161.epil, %.lr.ph161.epil.preheader
  %indvars.iv199.epil = phi i64 [ %indvars.iv199.epil.init, %.lr.ph161.epil.preheader ], [ %indvars.iv.next200.epil, %.lr.ph161.epil ] ; 2 uses
  %.0131159.epil = phi double [ %.0131159.epil.init, %.lr.ph161.epil.preheader ], [ %i.eq, %.lr.ph161.epil ]
  %epil.iter.a = phi i64 [ 0, %.lr.ph161.epil.preheader ], [ %epil.iter.next, %.lr.ph161.epil ]
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv199.epil
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !39
  %i.eq = fadd nsz double %.0131159.epil, %i.ep   ; 2 uses
  %indvars.iv.next200.epil = add nuw nsw i64 %indvars.iv199.epil, 1
  %epil.iter.next = add i64 %epil.iter.a, 1       ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter288
  br i1 %epil.iter.cmp.not, label %._crit_edge162, label %.lr.ph161.epil, !llvm.loop !106

._crit_edge162:                                   ; preds = %._crit_edge162.loopexit.unr-lcssa, %.lr.ph161.epil, %._crit_edge150
  %.0131.lcssa = phi double [ 0.000000e+00, %._crit_edge150 ], [ %i.go, %._crit_edge162.loopexit.unr-lcssa ], [ %i.eq, %.lr.ph161.epil ]
  %i.er = sitofp nsz i32 %i.cg to double
  %i.es = fdiv nsz double %.0131.lcssa, %i.er     ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.l, i64 104 ; 2 uses
  %i.eu = load double, ptr %i.et, align 8, !tbaa !35
  %i.ev = fadd nsz double %i.es, %i.eu
  store double %i.ev, ptr %i.et, align 8, !tbaa !35
  %i.ew = getelementptr inbounds nuw i8, ptr %i.l, i64 112 ; 2 uses
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !36
  %i.ey = call nsz double @llvm.minnum.f64(double %i.ex, double %i.es)
  store double %i.ey, ptr %i.ew, align 8, !tbaa !36
  %i.ez = getelementptr inbounds nuw i8, ptr %i.l, i64 120 ; 2 uses
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !37
  %i.fb = call nsz double @llvm.maxnum.f64(double %i.fa, double %i.es)
  store double %i.fb, ptr %i.ez, align 8, !tbaa !37
  br i1 %i.ch, label %.lr.ph166, label %._crit_edge167

.lr.ph166:                                        ; preds = %._crit_edge162
  %i.fc = getelementptr inbounds nuw i8, ptr %i.l, i64 128 ; 2 uses
  %wide.trip.count207 = zext nneg i32 %i.cg to i64 ; 3 uses
  %min.iters.check259 = icmp ult i32 %i.cg, 4
  br i1 %min.iters.check259, label %scalar.ph258.preheader, label %vector.ph260

vector.ph260:                                     ; preds = %.lr.ph166
  %n.vec261 = and i64 %wide.trip.count207, 2147483644 ; 3 uses
  br label %vector.body262

vector.body262:                                   ; preds = %vector.body262, %vector.ph260
  %index263 = phi i64 [ 0, %vector.ph260 ], [ %index.next268, %vector.body262 ] ; 3 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index263 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %wide.load264 = load <2 x double>, ptr %i.fd, align 16, !tbaa !39
  %wide.load265 = load <2 x double>, ptr %i.fe, align 16, !tbaa !39
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %index263 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16 ; 2 uses
  %wide.load266 = load <2 x double>, ptr %i.ff, align 8, !tbaa !39
  %wide.load267 = load <2 x double>, ptr %i.fg, align 8, !tbaa !39
  %i.fh = fadd nsz <2 x double> %wide.load264, %wide.load266
  %i.fi = fadd nsz <2 x double> %wide.load265, %wide.load267
  store <2 x double> %i.fh, ptr %i.ff, align 8, !tbaa !39
  store <2 x double> %i.fi, ptr %i.fg, align 8, !tbaa !39
  %index.next268 = add nuw i64 %index263, 4       ; 2 uses
  %i.fj = icmp eq i64 %index.next268, %n.vec261
  br i1 %i.fj, label %middle.block269, label %vector.body262, !llvm.loop !107

middle.block269:                                  ; preds = %vector.body262
  %cmp.n270 = icmp eq i64 %n.vec261, %wide.trip.count207
  br i1 %cmp.n270, label %.lr.ph170, label %scalar.ph258.preheader

scalar.ph258.preheader:                           ; preds = %.lr.ph166, %middle.block269
  %indvars.iv204.ph = phi i64 [ 0, %.lr.ph166 ], [ %n.vec261, %middle.block269 ]
  br label %scalar.ph258

.lr.ph161:                                        ; preds = %.lr.ph161, %.lr.ph161.preheader.new
  %indvars.iv199 = phi i64 [ 0, %.lr.ph161.preheader.new ], [ %indvars.iv.next200.7, %.lr.ph161 ] ; 9 uses
  %.0131159 = phi double [ 0.000000e+00, %.lr.ph161.preheader.new ], [ %i.go, %.lr.ph161 ]
  %niter293 = phi i64 [ 0, %.lr.ph161.preheader.new ], [ %niter293.next.7, %.lr.ph161 ]
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv199
  %i.fl = load double, ptr %i.fk, align 16, !tbaa !39
  %i.fm = fadd nsz double %.0131159, %i.fl
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv199
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !39
  %i.fq = fadd nsz double %i.fm, %i.fp
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv199
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.ft = load double, ptr %i.fs, align 16, !tbaa !39
  %i.fu = fadd nsz double %i.fq, %i.ft
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv199
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !39
  %i.fy = fadd nsz double %i.fu, %i.fx
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv199
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  %i.gb = load double, ptr %i.ga, align 16, !tbaa !39
  %i.gc = fadd nsz double %i.fy, %i.gb
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv199
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 40
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !39
  %i.gg = fadd nsz double %i.gc, %i.gf
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv199
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 48
  %i.gj = load double, ptr %i.gi, align 16, !tbaa !39
  %i.gk = fadd nsz double %i.gg, %i.gj
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv199
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 56
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !39
  %i.go = fadd nsz double %i.gk, %i.gn            ; 3 uses
  %indvars.iv.next200.7 = add nuw nsw i64 %indvars.iv199, 8 ; 2 uses
  %niter293.next.7 = add i64 %niter293, 8         ; 2 uses
  %niter293.ncmp.7 = icmp eq i64 %niter293.next.7, %unroll_iter292
  br i1 %niter293.ncmp.7, label %._crit_edge162.loopexit.unr-lcssa, label %.lr.ph161, !llvm.loop !108

._crit_edge167:                                   ; preds = %._crit_edge162
  %i.gp = getelementptr inbounds nuw i8, ptr %i.l, i64 160 ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !29
  %i.gr = add i64 %i.gq, 1
  store i64 %i.gr, ptr %i.gp, align 8, !tbaa !29
  br label %._crit_edge171

.lr.ph170:                                        ; preds = %scalar.ph258, %middle.block269
  %i.gs = getelementptr inbounds nuw i8, ptr %i.l, i64 160 ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !29
  %i.gu = add i64 %i.gt, 1
  store i64 %i.gu, ptr %i.gs, align 8, !tbaa !29
  %i.gv = getelementptr inbounds nuw i8, ptr %i.l, i64 172
  %i.gw = getelementptr inbounds nuw i8, ptr %i.l, i64 176
  %i.gx = getelementptr inbounds nuw i8, ptr %i.l, i64 196
  %i.gy = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  br label %bb.e

scalar.ph258:                                     ; preds = %scalar.ph258.preheader, %scalar.ph258
  %indvars.iv204 = phi i64 [ %indvars.iv.next205, %scalar.ph258 ], [ %indvars.iv204.ph, %scalar.ph258.preheader ] ; 3 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv204
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !39
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %indvars.iv204 ; 2 uses
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !39
  %i.hd = fadd nsz double %i.ha, %i.hc
  store double %i.hd, ptr %i.hb, align 8, !tbaa !39
  %indvars.iv.next205 = add nuw nsw i64 %indvars.iv204, 1 ; 2 uses
  %exitcond208.not = icmp eq i64 %indvars.iv.next205, %wide.trip.count207
  br i1 %exitcond208.not, label %.lr.ph170, label %scalar.ph258, !llvm.loop !109

._crit_edge171:                                   ; preds = %set_meta.exit, %._crit_edge167
  %i.he = fptrunc nsz double %i.es to float
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.hf = fpext nsz float %i.he to double
  %i.hg = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 128, ptr noundef nonnull @.str.10, double noundef %i.hf) #11 ; 0 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !32
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !34 ; 2 uses
  %i.hk = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 128, ptr noundef nonnull @.str.12, ptr noundef %i.hj, ptr noundef %i.hj, ptr noundef nonnull @.str.9) #11 ; 0 uses
  %i.hl = call i32 @av_dict_set(ptr noundef nonnull %i.u, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, i32 noundef 0) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %.sink.split

bb.e:                                             ; preds = %.lr.ph170, %set_meta.exit
  %indvars.iv209 = phi i64 [ 0, %.lr.ph170 ], [ %indvars.iv.next210, %set_meta.exit ] ; 4 uses
  %i.hm = load i32, ptr %i.gv, align 4, !tbaa !38
  %.not = icmp eq i32 %i.hm, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gw, i64 %indvars.iv209
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !30
  %i.hp = zext i8 %i.ho to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.hq = phi i64 [ %i.hp, %bb.f ], [ %indvars.iv209, %bb.e ]
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gx, i64 %indvars.iv209
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !30  ; 2 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.hq
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !39
  %i.hv = fptrunc nsz double %i.hu to float
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.hw = fpext nsz float %i.hv to double
  %i.hx = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.10, double noundef %i.hw) #11 ; 0 uses
  %.not.i = icmp eq i8 %i.hs, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.hy = load ptr, ptr %i.gy, align 8, !tbaa !32
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !34 ; 2 uses
  %i.ia = sext i8 %i.hs to i32
  %i.ib = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 128, ptr noundef nonnull @.str.11, ptr noundef %i.hz, ptr noundef %i.hz, ptr noundef nonnull @.str.8, i32 noundef %i.ia) #11 ; 0 uses
  %i.ic = call i32 @av_dict_set(ptr noundef nonnull %i.u, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef 0) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %set_meta.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.id = load ptr, ptr %i.gy, align 8, !tbaa !32
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !34 ; 2 uses
  %i.if = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 128, ptr noundef nonnull @.str.12, ptr noundef %i.ie, ptr noundef %i.ie, ptr noundef nonnull @.str.8) #11 ; 0 uses
  %i.ig = call i32 @av_dict_set(ptr noundef nonnull %i.u, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, i32 noundef 0) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %set_meta.exit

set_meta.exit:                                    ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 1 ; 2 uses
  %i.ih = load i32, ptr %i.ae, align 8, !tbaa !31
  %i.ii = sext i32 %i.ih to i64
  %i.ij = icmp slt i64 %indvars.iv.next210, %i.ii
  br i1 %i.ij, label %bb.e, label %._crit_edge171, !llvm.loop !110

.sink.split:                                      ; preds = %bb.b, %._crit_edge171
  %i.ik = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !114
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !50
  %i.in = load ptr, ptr %i.f, align 8, !tbaa !113
  %i.io = call i32 @ff_filter_frame(ptr noundef %i.im, ptr noundef %i.in) #11
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.a
  %.0132 = phi i32 [ %i.m, %bb.a ], [ %i.io, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  ret i32 %.0132
}

declare i32 @ff_framesync_dualinput_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.minnum.f64(double, double) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #7

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #9

declare i32 @av_dict_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i64 @av_strlcatf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @ff_framesync_uninit(ptr noundef) local_unnamed_addr #4

declare void @av_freep(ptr noundef) local_unnamed_addr #4

declare i32 @ff_framesync_activate(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!16 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!17 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!18 = !{!"AVFilterContext", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !15, i64 32, !6, i64 40, !13, i64 48, !15, i64 56, !6, i64 64, !9, i64 72, !16, i64 80, !6, i64 88, !6, i64 92, !12, i64 96, !6, i64 104, !17, i64 112, !6, i64 120}
!19 = !{!18, !9, i64 72}
!20 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!21 = !{!"AVRational", !6, i64 0, !6, i64 4}
!22 = !{!"long", !5, i64 0}
!23 = !{!"p1 _ZTS13FFFrameSyncIn", !9, i64 0}
!24 = !{!"FFFrameSync", !10, i64 0, !20, i64 8, !6, i64 16, !21, i64 20, !22, i64 32, !9, i64 40, !9, i64 48, !6, i64 56, !6, i64 60, !5, i64 64, !5, i64 65, !23, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92}
!25 = !{!"double", !5, i64 0}
!26 = !{!"p1 _ZTS4Sums", !9, i64 0}
!27 = !{!"p1 _ZTS5QSums", !9, i64 0}
!28 = !{!"CorrContext", !10, i64 0, !24, i64 8, !25, i64 104, !25, i64 112, !25, i64 120, !5, i64 128, !22, i64 160, !6, i64 168, !6, i64 172, !5, i64 176, !5, i64 180, !5, i64 196, !5, i64 200, !26, i64 232, !27, i64 240, !6, i64 248, !5, i64 252, !5, i64 268, !9, i64 288, !9, i64 296}
!29 = !{!28, !22, i64 160}
!30 = !{!5, !5, i64 0}
!31 = !{!28, !6, i64 248}
!32 = !{!18, !11, i64 8}
!33 = !{!"AVFilter", !12, i64 0, !12, i64 8, !13, i64 16, !13, i64 24, !10, i64 32, !6, i64 40}
!34 = !{!33, !12, i64 0}
!35 = !{!28, !25, i64 104}
!36 = !{!28, !25, i64 112}
!37 = !{!28, !25, i64 120}
!38 = !{!28, !6, i64 172}
!39 = !{!25, !25, i64 0}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!42 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!43 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!44 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!45 = !{!"AVFilterFormatsConfig", !43, i64 0, !43, i64 8, !44, i64 16, !43, i64 24, !43, i64 32, !43, i64 40}
!46 = !{!"AVFilterLink", !20, i64 0, !13, i64 8, !20, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !21, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !41, i64 72, !21, i64 96, !42, i64 104, !6, i64 112, !6, i64 116, !45, i64 120, !45, i64 168}
!47 = !{!28, !6, i64 168}
!48 = !{!18, !15, i64 32}
!49 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!6, !6, i64 0}
!52 = !{!28, !26, i64 232}
!53 = !{!28, !27, i64 240}
!54 = !{!28, !9, i64 288}
!55 = !{!28, !9, i64 296}
!56 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!57 = !{!"ThreadData", !56, i64 0, !56, i64 8}
!58 = !{!57, !56, i64 0}
!59 = !{!57, !56, i64 8}
!60 = !{!12, !12, i64 0}
!61 = !{!"short", !5, i64 0}
!62 = !{!61, !61, i64 0}
!63 = !{!"llvm.loop.isvectorized", i32 1}
!64 = !{!"llvm.loop.unroll.runtime.disable"}
!65 = !{!22, !22, i64 0}
!66 = !{!"llvm.loop.unroll.disable"}
!67 = !{!"float", !5, i64 0}
!68 = !{!67, !67, i64 0}
!69 = !{!28, !9, i64 48}
!70 = distinct !{!70, !40}
!71 = !{!46, !6, i64 36}
!72 = !{!46, !20, i64 16}
!73 = !{!"AVPixFmtDescriptor", !12, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !22, i64 16, !5, i64 24, !12, i64 104}
!74 = !{!73, !5, i64 8}
!75 = !{!46, !6, i64 40}
!76 = !{!46, !6, i64 44}
!77 = !{!73, !5, i64 10}
!78 = !{!73, !5, i64 9}
!79 = !{!"AVComponentDescriptor", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!80 = !{!79, !6, i64 16}
!81 = distinct !{!81, !40, !63, !64}
!82 = distinct !{!82, !40, !64, !63}
!83 = distinct !{!83, !40}
!84 = distinct !{!84, !40}
!85 = distinct !{!85, !40}
!86 = distinct !{!86, !66}
!87 = distinct !{!87, !40}
!88 = distinct !{!88, !40}
!89 = distinct !{!89, !40}
!90 = distinct !{!90, !40}
!91 = distinct !{!91, !40}
!92 = distinct !{!92, !40}
!93 = distinct !{!93, !40}
!94 = distinct !{!94, !40}
!95 = !{!46, !20, i64 0}
!96 = !{!46, !6, i64 96}
!97 = !{!46, !6, i64 100}
!98 = distinct !{!98, !40, !63, !64}
!99 = distinct !{!99, !40, !63, !64}
!100 = distinct !{!100, !66}
!101 = distinct !{!101, !40, !63}
!102 = distinct !{!102, !40}
!103 = distinct !{!103, !40, !64, !63}
!104 = distinct !{!104, !40}
!105 = distinct !{!105, !40}
!106 = distinct !{!106, !66}
!107 = distinct !{!107, !40, !63, !64}
!108 = distinct !{!108, !40}
!109 = distinct !{!109, !40, !64, !63}
!110 = distinct !{!110, !40}
!111 = !{!24, !20, i64 8}
!112 = !{!18, !6, i64 104}
!113 = !{!56, !56, i64 0}
!114 = !{!18, !15, i64 56}
end_hunk_0
