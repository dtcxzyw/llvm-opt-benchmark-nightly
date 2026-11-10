Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/pvq?download=true
inline.NumInlined: 46
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 35
begin_hunk_0_@ppp_pvq_search_c:bb.a
  %i.bu = tail call nsz float @llvm.fmuladd.f32(float %i.bt, float %i.bp, float %.193134.us)
  %i.bv = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bn ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !36 ; 2 uses
  %i.bx = shl i32 %i.bw, 1
  %i.by = mul i32 %i.bx, %i.bs
  %i.bz = add nsw i32 %i.by, %i.af                ; 2 uses
  %i.ca = add nsw i32 %i.bs, %i.bw
  store i32 %i.ca, ptr %i.bv, align 4, !tbaa !36
  %.not.us = icmp eq i32 %i.bm, 0
  br i1 %.not.us, label %._crit_edge137, label %.lr.ph128.us, !llvm.loop !167

.lr.ph136.split:                                  ; preds = %.preheader.thread
  %i.cb = load float, ptr %0, align 4, !tbaa !35
  %.fr157 = freeze float %i.cb
  %i.cc = fcmp nsz ogt float %.fr157, 0.000000e+00
  %.promoted = load i32, ptr %1, align 4, !tbaa !36 ; 2 uses
  br i1 %i.cc, label %.lr.ph136.split.split.us, label %.lr.ph136.split.split

.lr.ph136.split.split.us:                         ; preds = %.lr.ph136.split, %.lr.ph136.split.split.us
  %i.cd = phi i32 [ %i.cm, %.lr.ph136.split.split.us ], [ %.promoted, %.lr.ph136.split ] ; 2 uses
  %.196133.us151 = phi i32 [ %i.cl, %.lr.ph136.split.split.us ], [ 0, %.lr.ph136.split ]
  %.1100132.us152 = phi i32 [ %i.ci, %.lr.ph136.split.split.us ], [ %2, %.lr.ph136.split ] ; 2 uses
  %.inv.us153.inv = icmp slt i32 %.1100132.us152, 1
  %i.ce = select i1 %.inv.us153.inv, i32 -1, i32 1 ; 3 uses
  %i.cf = sitofp nsz i32 %.196133.us151 to float
  %i.cg = fadd nsz float %i.cf, 1.000000e+00
  %i.ch = fptosi float %i.cg to i32
  %i.ci = sub nsw i32 %.1100132.us152, %i.ce      ; 2 uses
  %i.cj = shl i32 %i.cd, 1
  %i.ck = mul i32 %i.cj, %i.ce
  %i.cl = add nsw i32 %i.ck, %i.ch                ; 2 uses
  %i.cm = add nsw i32 %i.ce, %i.cd                ; 2 uses
  %.not.us154 = icmp eq i32 %i.ci, 0
  br i1 %.not.us154, label %._crit_edge137.split, label %.lr.ph136.split.split.us, !llvm.loop !167

.lr.ph119:                                        ; preds = %.lr.ph119.preheader, %.lr.ph119
  %indvars.iv171 = phi i64 [ 0, %.lr.ph119.preheader ], [ %indvars.iv.next172, %.lr.ph119 ] ; 3 uses
  %.092117 = phi float [ 0.000000e+00, %.lr.ph119.preheader ], [ %i.cw, %.lr.ph119 ]
  %.095116 = phi i32 [ 0, %.lr.ph119.preheader ], [ %i.cu, %.lr.ph119 ]
  %.099114 = phi i32 [ %2, %.lr.ph119.preheader ], [ %i.cy, %.lr.ph119 ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv171
  %i.co = load float, ptr %i.cn, align 4, !tbaa !35 ; 2 uses
  %i.cp = fmul nsz float %i.ab, %i.co
  %.fr189 = freeze float %i.cp
  %i.cq = tail call i64 @llvm.lrint.i64.f32(float %.fr189)
  %i.cr = trunc i64 %i.cq to i32                  ; 5 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv171
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !36
  %i.ct = mul nsw i32 %i.cr, %i.cr
  %i.cu = add nuw nsw i32 %i.ct, %.095116         ; 3 uses
  %i.cv = sitofp nsz i32 %i.cr to float
  %i.cw = tail call nsz float @llvm.fmuladd.f32(float %i.cv, float %i.co, float %.092117) ; 2 uses
  %i.cx = tail call i32 @llvm.abs.i32(i32 %i.cr, i1 false)
  %i.cy = sub i32 %.099114, %i.cx                 ; 3 uses
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %exitcond175.not = icmp eq i64 %indvars.iv.next172, %wide.trip.count174
  br i1 %exitcond175.not, label %.preheader, label %.lr.ph119, !llvm.loop !168

.lr.ph136.split.split:                            ; preds = %.lr.ph136.split, %.lr.ph136.split.split
  %i.cz = phi i32 [ %i.dh, %.lr.ph136.split.split ], [ %.promoted, %.lr.ph136.split ] ; 2 uses
  %.196133 = phi i32 [ %i.dg, %.lr.ph136.split.split ], [ 0, %.lr.ph136.split ]
  %.1100132 = phi i32 [ %i.dd, %.lr.ph136.split.split ], [ %2, %.lr.ph136.split ] ; 2 uses
  %.inv.inv = icmp slt i32 %.1100132, 1
  %.neg = select i1 %.inv.inv, i32 1, i32 -1      ; 3 uses
  %i.da = sitofp nsz i32 %.196133 to float
  %i.db = fadd nsz float %i.da, 1.000000e+00
  %i.dc = fptosi float %i.db to i32
  %i.dd = add i32 %.neg, %.1100132                ; 2 uses
  %i.de = shl i32 %i.cz, 1
  %i.df = mul i32 %i.de, %.neg
  %i.dg = add nsw i32 %i.df, %i.dc                ; 2 uses
  %i.dh = add nsw i32 %.neg, %i.cz                ; 2 uses
  %.not = icmp eq i32 %i.dd, 0
  br i1 %.not, label %._crit_edge137.split, label %.lr.ph136.split.split, !llvm.loop !167

._crit_edge137.split:                             ; preds = %.lr.ph136.split.split, %.lr.ph136.split.split.us
  %.us-phi = phi i32 [ %i.cm, %.lr.ph136.split.split.us ], [ %i.dh, %.lr.ph136.split.split ]
  %.us-phi156 = phi i32 [ %i.cl, %.lr.ph136.split.split.us ], [ %i.dg, %.lr.ph136.split.split ]
  store i32 %.us-phi, ptr %1, align 4, !tbaa !36
  br label %._crit_edge137

._crit_edge137:                                   ; preds = %._crit_edge129.us, %.preheader.thread, %._crit_edge137.split, %.preheader
  %.196.lcssa = phi i32 [ %i.cu, %.preheader ], [ %.us-phi156, %._crit_edge137.split ], [ 0, %.preheader.thread ], [ %i.bz, %._crit_edge129.us ]
  %i.di = sitofp nsz i32 %.196.lcssa to float
  ret float %i.di
}

; Function Attrs: cold nounwind optsize uwtable
define void @ff_celt_pvq_uninit(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @av_freep(ptr noundef %0) #11
  ret void
}

declare void @av_freep(ptr noundef) local_unnamed_addr #1

declare void @ff_opus_rc_put_raw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ff_opus_rc_get_raw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare void @ff_opus_rc_enc_uint_step(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @ff_opus_rc_enc_uint(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @ff_opus_rc_enc_uint_tri(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ff_opus_rc_dec_uint_step(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ff_opus_rc_dec_uint(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ff_opus_rc_dec_uint_tri(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @ff_opus_rc_enc_log(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ff_opus_rc_dec_log(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan2.f32(float, float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.lrint.i64.f32(float) #4

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @celt_exp_rotation(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #8 {
bb.a:
  %i.a = shl i32 %3, 1
  %i.b = icmp uge i32 %i.a, %1
  %i.c = icmp eq i32 %4, 0
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = uitofp nsz i32 %1 to float
  %.neg = mul i32 %4, -5
  %i.e = add i32 %.neg, 20
  %i.f = mul i32 %i.e, %3
  %i.g = add i32 %i.f, %1
  %i.h = uitofp nsz i32 %i.g to float
  %i.i = fdiv nsz float %i.d, %i.h
  %i.j = fpext nsz float %i.i to double           ; 2 uses
  %i.k = fmul nsz double %i.j, f0x400921FB54442D18
  %i.l = fmul nsz double %i.k, %i.j
  %i.m = fmul nsz double %i.l, 2.500000e-01
  %i.n = fptrunc nsz double %i.m to float
  %sincos = tail call nsz { float, float } @llvm.sincos.f32(float %i.n) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0 ; 16 uses
  %cos = extractvalue { float, float } %sincos, 1 ; 13 uses
  %i.o = shl i32 %2, 3
  %.not = icmp ult i32 %1, %i.o
  br i1 %.not, label %.loopexit95, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.p = lshr i32 %2, 2
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.c
  %.054 = phi i32 [ %.05457, %bb.c ], [ 1, %.preheader ] ; 3 uses
  %.05457 = add i32 %.054, 1                      ; 2 uses
  %i.q = mul i32 %.054, %2
  %i.r = mul i32 %i.q, %.05457
  %i.s = add i32 %i.r, %i.p
  %i.t = icmp ult i32 %i.s, %1
  br i1 %i.t, label %bb.c, label %.loopexit95, !llvm.loop !169

.loopexit95:                                      ; preds = %bb.c, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ %.054, %bb.c ]    ; 9 uses
  %i.u = udiv i32 %1, %2                          ; 24 uses
  %.not58 = icmp eq i32 %5, 0
  %i.v = fneg nsz float %sin                      ; 7 uses
  %.not.i = icmp eq i32 %i.u, 1                   ; 3 uses
  %i.w = add i32 %i.u, -2                         ; 4 uses
  %i.x = add i32 %i.u, -3                         ; 8 uses
  %i.y = icmp sgt i32 %i.x, -1                    ; 3 uses
  %i.z = zext i32 %i.x to i64                     ; 6 uses
  %i.aa = fneg nsz float %cos                     ; 4 uses
  %i.ab = sub i32 %i.u, %.1                       ; 2 uses
  %.not.i61 = icmp eq i32 %i.u, %.1               ; 2 uses
  %i.ac = zext i32 %.1 to i64                     ; 12 uses
  %i.ad = shl i32 %.1, 1                          ; 3 uses
  %i.ae = xor i32 %i.ad, -1
  %i.af = add i32 %i.u, %i.ae                     ; 8 uses
  %i.ag = icmp sgt i32 %i.af, -1                  ; 2 uses
  %i.ah = zext i32 %i.af to i64                   ; 4 uses
  %.not59 = icmp eq i32 %.1, 0                    ; 2 uses
  br i1 %.not58, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %.loopexit95
  %wide.trip.count121 = zext i32 %2 to i64
  %i.ai = shl nuw nsw i64 %i.ac, 2                ; 2 uses
  %i.aj = shl nuw nsw i64 %i.z, 2
  %i.ak = getelementptr i8, ptr %0, i64 %i.aj
  %scevgep.a = getelementptr i8, ptr %i.ak, i64 4
  %i.al = add i32 %i.u, -1                        ; 3 uses
  %i.am = add i32 %i.u, -1                        ; 2 uses
  %i.an = sub i32 %i.am, %.1                      ; 2 uses
  %i.ao = zext i32 %i.an to i64
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check233 = icmp ult i32 %i.an, 3
  %i.aq = sub i32 %i.am, %.1
  %i.ar = zext i32 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 2                ; 2 uses
  %invariant.gep313.a = getelementptr i8, ptr %0, i64 %i.as
  %invariant.gep315.a = getelementptr i8, ptr %0, i64 %i.as
  %n.vec239 = and i64 %i.ap, 8589934588           ; 4 uses
  %i.at = shl nuw nsw i64 %n.vec239, 2
  %i.au = trunc i64 %n.vec239 to i32
  %broadcast.splatinsert240 = insertelement <4 x float> poison, float %cos, i64 0
  %broadcast.splat241 = shufflevector <4 x float> %broadcast.splatinsert240, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert242 = insertelement <4 x float> poison, float %sin, i64 0
  %broadcast.splat243 = shufflevector <4 x float> %broadcast.splatinsert242, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n251 = icmp eq i64 %i.ap, %n.vec239
  %i.av = insertelement <2 x float> poison, float %cos, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = insertelement <2 x float> poison, float %sin, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = sub i32 %i.u, %i.ad                     ; 2 uses
  %i.ba = zext i32 %i.az to i64                   ; 2 uses
  %min.iters.check198 = icmp ult i32 %i.az, 4
  %i.bb = shl nuw nsw i64 %i.ah, 2                ; 2 uses
  %i.bc = getelementptr i8, ptr %0, i64 %i.ai
  %invariant.gep317 = getelementptr i8, ptr %i.bc, i64 %i.bb
  %invariant.gep319 = getelementptr i8, ptr %0, i64 %i.bb
  %n.vec204 = and i64 %i.ba, 4294967292           ; 4 uses
  %i.bd = mul nsw i64 %n.vec204, -4
  %i.be = trunc nuw i64 %n.vec204 to i32
  %i.bf = sub i32 %i.af, %i.be
  %broadcast.splatinsert205 = insertelement <4 x float> poison, float %cos, i64 0 ; 2 uses
  %broadcast.splatinsert207 = insertelement <4 x float> poison, float %sin, i64 0 ; 2 uses
  %i.bg = shufflevector <4 x float> %broadcast.splatinsert207, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bh = shufflevector <4 x float> %broadcast.splatinsert205, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bi = shufflevector <4 x float> %broadcast.splatinsert207, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bj = shufflevector <4 x float> %broadcast.splatinsert205, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n220 = icmp eq i64 %n.vec204, %i.ba
  %i.bk = insertelement <2 x float> poison, float %cos, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = insertelement <2 x float> poison, float %sin, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = insertelement <2 x float> poison, float %cos, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.bq = insertelement <2 x float> poison, float %sin, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %xtraiter289 = and i32 %i.al, 1
  %i.bs = icmp eq i32 %i.w, 0
  %unroll_iter294 = and i32 %i.al, -2
  %lcmp.mod292.not.a = icmp eq i32 %xtraiter289, 0
  %lcmp.mod293 = trunc i32 %i.al to i1
  %xtraiter298 = and i32 %i.u, 1
  %lcmp.mod299.not = icmp eq i32 %xtraiter298, 0
  %i.bt = add i32 %i.u, -4
  %i.bu = icmp eq i32 %i.x, 0
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %celt_exp_rotation_impl.exit71.us
  %indvars.iv117 = phi i64 [ 0, %.split.us.preheader ], [ %indvars.iv.next118, %celt_exp_rotation_impl.exit71.us ] ; 2 uses
  %.pre126 = trunc i64 %indvars.iv117 to i32
  %.pre127 = mul i32 %i.u, %.pre126
  %.pre129 = zext i32 %.pre127 to i64             ; 6 uses
  br i1 %.not59, label %celt_exp_rotation_impl.exit82.us, label %bb.d

bb.d:                                             ; preds = %.split.us
  %i.bv = getelementptr [4 x i8], ptr %0, i64 %.pre129 ; 7 uses
  br i1 %.not.i61, label %._crit_edge.i77.us, label %.lr.ph.i73.us.preheader

.lr.ph.i73.us.preheader:                          ; preds = %bb.d
  br i1 %min.iters.check233, label %.lr.ph.i73.us.preheader263, label %vector.memcheck234

vector.memcheck234:                               ; preds = %.lr.ph.i73.us.preheader
  %i.bw = shl nuw nsw i64 %.pre129, 2             ; 2 uses
  %6 = add nuw nsw i64 %i.ai, %i.bw               ; 2 uses
  %i.bx = getelementptr i8, ptr %0, i64 %6
  %gep314.a = getelementptr i8, ptr %invariant.gep313.a, i64 %6
  %i.by = getelementptr i8, ptr %gep314.a, i64 4
  %gep316.a = getelementptr i8, ptr %invariant.gep315.a, i64 %i.bw
  %i.bz = getelementptr i8, ptr %gep316.a, i64 4
  %bound0235 = icmp ult ptr %i.bx, %i.bz
  %bound1236 = icmp ult ptr %i.bv, %i.by
  %found.conflict237 = and i1 %bound0235, %bound1236
  br i1 %found.conflict237, label %.lr.ph.i73.us.preheader263, label %vector.ph238

vector.ph238:                                     ; preds = %vector.memcheck234
  %i.ca = getelementptr i8, ptr %i.bv, i64 %i.at
  br label %vector.body244

vector.body244:                                   ; preds = %vector.body244, %vector.ph238
  %index245 = phi i64 [ 0, %vector.ph238 ], [ %index.next249, %vector.body244 ] ; 2 uses
  %i.cb = shl i64 %index245, 2
  %next.gep246 = getelementptr i8, ptr %i.bv, i64 %i.cb ; 3 uses
  %wide.load247 = load <4 x float>, ptr %next.gep246, align 4, !tbaa !35, !alias.scope !193 ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %next.gep246, i64 %i.ac ; 2 uses
  %wide.load248 = load <4 x float>, ptr %i.cc, align 4, !tbaa !35, !alias.scope !194, !noalias !193 ; 2 uses
  %i.cd = fmul nsz <4 x float> %broadcast.splat241, %wide.load247
  %i.ce = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat243, <4 x float> %wide.load248, <4 x float> %i.cd)
  store <4 x float> %i.ce, ptr %i.cc, align 4, !tbaa !35, !alias.scope !194, !noalias !193
  %i.cf = fneg nsz <4 x float> %wide.load248
  %i.cg = fmul nsz <4 x float> %broadcast.splat241, %i.cf
  %i.ch = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat243, <4 x float> %wide.load247, <4 x float> %i.cg)
  store <4 x float> %i.ch, ptr %next.gep246, align 4, !tbaa !35, !alias.scope !193
  %index.next249 = add nuw i64 %index245, 4       ; 2 uses
  %i.ci = icmp eq i64 %index.next249, %n.vec239
  br i1 %i.ci, label %middle.block250, label %vector.body244, !llvm.loop !173

middle.block250:                                  ; preds = %vector.body244
  br i1 %cmp.n251, label %._crit_edge.i77.us, label %.lr.ph.i73.us.preheader263

.lr.ph.i73.us.preheader263:                       ; preds = %vector.memcheck234, %.lr.ph.i73.us.preheader, %middle.block250
  %.042.i74.us.ph = phi ptr [ %i.bv, %vector.memcheck234 ], [ %i.bv, %.lr.ph.i73.us.preheader ], [ %i.ca, %middle.block250 ]
  %.03941.i75.us.ph = phi i32 [ 0, %vector.memcheck234 ], [ 0, %.lr.ph.i73.us.preheader ], [ %i.au, %middle.block250 ]
  br label %.lr.ph.i73.us

.lr.ph.i73.us:                                    ; preds = %.lr.ph.i73.us.preheader263, %.lr.ph.i73.us
  %.042.i74.us = phi ptr [ %i.cu, %.lr.ph.i73.us ], [ %.042.i74.us.ph, %.lr.ph.i73.us.preheader263 ] ; 4 uses
  %.03941.i75.us = phi i32 [ %i.cw, %.lr.ph.i73.us ], [ %.03941.i75.us.ph, %.lr.ph.i73.us.preheader263 ]
  %i.cj = load float, ptr %.042.i74.us, align 4, !tbaa !35 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.042.i74.us, i64 %i.ac ; 2 uses
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !35 ; 2 uses
  %i.cm = fneg nsz float %i.cl
  %i.cn = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.co = insertelement <2 x float> %i.cn, float %i.cm, i64 1
  %i.cp = fmul nsz <2 x float> %i.aw, %i.co
  %i.cq = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.cr = insertelement <2 x float> %i.cq, float %i.cj, i64 1
  %i.cs = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ay, <2 x float> %i.cr, <2 x float> %i.cp) ; 2 uses
  %i.ct = extractelement <2 x float> %i.cs, i64 0
  store float %i.ct, ptr %i.ck, align 4, !tbaa !35
  %i.cu = getelementptr inbounds nuw i8, ptr %.042.i74.us, i64 4
  %i.cv = extractelement <2 x float> %i.cs, i64 1
  store float %i.cv, ptr %.042.i74.us, align 4, !tbaa !35
  %i.cw = add nuw nsw i32 %.03941.i75.us, 1       ; 2 uses
  %exitcond.not.i76.us = icmp eq i32 %i.cw, %i.ab
  br i1 %exitcond.not.i76.us, label %._crit_edge.i77.us, label %.lr.ph.i73.us, !llvm.loop !174

._crit_edge.i77.us:                               ; preds = %.lr.ph.i73.us, %middle.block250, %bb.d
  br i1 %i.ag, label %.lr.ph46.i78.us, label %celt_exp_rotation_impl.exit82.us

.lr.ph46.i78.us:                                  ; preds = %._crit_edge.i77.us
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.ah ; 4 uses
  br i1 %min.iters.check198, label %scalar.ph197.preheader, label %vector.memcheck199

vector.memcheck199:                               ; preds = %.lr.ph46.i78.us
  %i.cy = add nuw nsw i64 %i.ac, %.pre129
  %i.cz = shl nuw nsw i64 %i.cy, 2
  %i.da = getelementptr i8, ptr %0, i64 %i.cz
  %i.db = shl nuw nsw i64 %.pre129, 2             ; 2 uses
  %gep318 = getelementptr i8, ptr %invariant.gep317, i64 %i.db
  %i.dc = getelementptr i8, ptr %gep318, i64 4
  %gep320 = getelementptr i8, ptr %invariant.gep319, i64 %i.db
  %i.dd = getelementptr i8, ptr %gep320, i64 4
  %bound0200 = icmp ult ptr %i.da, %i.dd
  %bound1201 = icmp ult ptr %i.bv, %i.dc
  %found.conflict202 = and i1 %bound0200, %bound1201
  br i1 %found.conflict202, label %scalar.ph197.preheader, label %vector.ph203

vector.ph203:                                     ; preds = %vector.memcheck199
  %i.de = getelementptr i8, ptr %i.cx, i64 %i.bd
  br label %vector.body209

vector.body209:                                   ; preds = %vector.body209, %vector.ph203
  %index210 = phi i64 [ 0, %vector.ph203 ], [ %index.next218, %vector.body209 ] ; 2 uses
  %i.df = mul i64 %index210, -4
  %next.gep211 = getelementptr i8, ptr %i.cx, i64 %i.df ; 2 uses
  %i.dg = getelementptr i8, ptr %next.gep211, i64 -12 ; 2 uses
  %wide.load212 = load <4 x float>, ptr %i.dg, align 4, !tbaa !35, !alias.scope !195 ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %next.gep211, i64 %i.ac
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 -12 ; 2 uses
  %wide.load214 = load <4 x float>, ptr %i.di, align 4, !tbaa !35, !alias.scope !196, !noalias !195 ; 2 uses
  %i.dj = fmul nsz <4 x float> %i.bh, %wide.load212
  %reverse216 = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bg, <4 x float> %wide.load214, <4 x float> %i.dj)
  store <4 x float> %reverse216, ptr %i.di, align 4, !tbaa !35, !alias.scope !196, !noalias !195
  %i.dk = fneg nsz <4 x float> %wide.load214
  %i.dl = fmul nsz <4 x float> %i.bj, %i.dk
  %reverse217 = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bi, <4 x float> %wide.load212, <4 x float> %i.dl)
  store <4 x float> %reverse217, ptr %i.dg, align 4, !tbaa !35, !alias.scope !195
  %index.next218 = add nuw i64 %index210, 4       ; 2 uses
  %i.dm = icmp eq i64 %index.next218, %n.vec204
  br i1 %i.dm, label %middle.block219, label %vector.body209, !llvm.loop !178

middle.block219:                                  ; preds = %vector.body209
  br i1 %cmp.n220, label %celt_exp_rotation_impl.exit82.us, label %scalar.ph197.preheader

scalar.ph197.preheader:                           ; preds = %vector.memcheck199, %.lr.ph46.i78.us, %middle.block219
  %.144.i79.us.ph = phi ptr [ %i.cx, %vector.memcheck199 ], [ %i.cx, %.lr.ph46.i78.us ], [ %i.de, %middle.block219 ]
  %.14043.i80.us.ph = phi i32 [ %i.af, %vector.memcheck199 ], [ %i.af, %.lr.ph46.i78.us ], [ %i.bf, %middle.block219 ]
  br label %scalar.ph197

scalar.ph197:                                     ; preds = %scalar.ph197.preheader, %scalar.ph197
  %.144.i79.us = phi ptr [ %i.dy, %scalar.ph197 ], [ %.144.i79.us.ph, %scalar.ph197.preheader ] ; 4 uses
  %.14043.i80.us = phi i32 [ %i.ea, %scalar.ph197 ], [ %.14043.i80.us.ph, %scalar.ph197.preheader ] ; 2 uses
  %i.dn = load float, ptr %.144.i79.us, align 4, !tbaa !35 ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.144.i79.us, i64 %i.ac ; 2 uses
  %i.dp = load float, ptr %i.do, align 4, !tbaa !35 ; 2 uses
  %i.dq = fneg nsz float %i.dp
  %i.dr = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.ds = insertelement <2 x float> %i.dr, float %i.dq, i64 1
  %i.dt = fmul nsz <2 x float> %i.bl, %i.ds
  %i.du = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.dv = insertelement <2 x float> %i.du, float %i.dn, i64 1
  %i.dw = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.dv, <2 x float> %i.dt) ; 2 uses
  %i.dx = extractelement <2 x float> %i.dw, i64 0
  store float %i.dx, ptr %i.do, align 4, !tbaa !35
  %i.dy = getelementptr inbounds i8, ptr %.144.i79.us, i64 -4
  %i.dz = extractelement <2 x float> %i.dw, i64 1
  store float %i.dz, ptr %.144.i79.us, align 4, !tbaa !35
  %i.ea = add nsw i32 %.14043.i80.us, -1
  %.not49.i81.us = icmp eq i32 %.14043.i80.us, 0
  br i1 %.not49.i81.us, label %celt_exp_rotation_impl.exit82.us, label %scalar.ph197, !llvm.loop !179

celt_exp_rotation_impl.exit82.us:                 ; preds = %scalar.ph197, %middle.block219, %.split.us, %._crit_edge.i77.us
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.pre129 ; 4 uses
  br i1 %.not.i, label %celt_exp_rotation_impl.exit71.us, label %.lr.ph.i84.us.preheader

.lr.ph.i84.us.preheader:                          ; preds = %celt_exp_rotation_impl.exit82.us
  %.pre125 = load float, ptr %i.eb, align 4, !tbaa !35 ; 2 uses
  br i1 %i.bs, label %.lr.ph.i84.us.epil.preheader, label %.lr.ph.i84.us

.lr.ph.i84.us:                                    ; preds = %.lr.ph.i84.us.preheader, %.lr.ph.i84.us
  %i.ec = phi float [ %i.ev, %.lr.ph.i84.us ], [ %.pre125, %.lr.ph.i84.us.preheader ] ; 2 uses
  %.042.i85.us = phi ptr [ %i.en, %.lr.ph.i84.us ], [ %i.eb, %.lr.ph.i84.us.preheader ] ; 3 uses
  %niter295 = phi i32 [ %niter295.next.1, %.lr.ph.i84.us ], [ 0, %.lr.ph.i84.us.preheader ]
  %i.ed = getelementptr inbounds nuw i8, ptr %.042.i85.us, i64 4 ; 2 uses
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !35 ; 2 uses
  %i.ef = fneg nsz float %i.ee
  %i.eg = insertelement <2 x float> poison, float %i.ef, i64 0
  %i.eh = insertelement <2 x float> %i.eg, float %i.ec, i64 1
  %i.ei = fmul nsz <2 x float> %i.br, %i.eh
  %i.ej = insertelement <2 x float> poison, float %i.ec, i64 0
  %i.ek = insertelement <2 x float> %i.ej, float %i.ee, i64 1
  %i.el = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.ek, <2 x float> %i.ei) ; 3 uses
  store <2 x float> %i.el, ptr %.042.i85.us, align 4, !tbaa !35
  %i.em = extractelement <2 x float> %i.el, i64 1
  %i.en = getelementptr inbounds nuw i8, ptr %.042.i85.us, i64 8 ; 3 uses
  %i.eo = load float, ptr %i.en, align 4, !tbaa !35 ; 2 uses
  %i.ep = fneg nsz float %i.eo
  %i.eq = insertelement <2 x float> %i.el, float %i.ep, i64 0
  %i.er = fmul nsz <2 x float> %i.br, %i.eq
  %i.es = insertelement <2 x float> poison, float %i.em, i64 0
  %i.et = insertelement <2 x float> %i.es, float %i.eo, i64 1
  %i.eu = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.et, <2 x float> %i.er) ; 2 uses
  store <2 x float> %i.eu, ptr %i.ed, align 4, !tbaa !35
  %i.ev = extractelement <2 x float> %i.eu, i64 1 ; 2 uses
  %niter295.next.1 = add i32 %niter295, 2         ; 2 uses
  %niter295.ncmp.1 = icmp eq i32 %niter295.next.1, %unroll_iter294
  br i1 %niter295.ncmp.1, label %._crit_edge.i88.us.unr-lcssa, label %.lr.ph.i84.us, !llvm.loop !180

._crit_edge.i88.us.unr-lcssa:                     ; preds = %.lr.ph.i84.us
  br i1 %lcmp.mod292.not.a, label %._crit_edge.i88.us, label %.lr.ph.i84.us.epil.preheader

.lr.ph.i84.us.epil.preheader:                     ; preds = %._crit_edge.i88.us.unr-lcssa, %.lr.ph.i84.us.preheader
  %.epil.init291 = phi float [ %.pre125, %.lr.ph.i84.us.preheader ], [ %i.ev, %._crit_edge.i88.us.unr-lcssa ] ; 2 uses
  %.042.i85.us.epil.init = phi ptr [ %i.eb, %.lr.ph.i84.us.preheader ], [ %i.en, %._crit_edge.i88.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod293)
  %i.ew = getelementptr inbounds nuw i8, ptr %.042.i85.us.epil.init, i64 4
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !35 ; 2 uses
  %i.ey = fneg nsz float %i.ex
  %i.ez = insertelement <2 x float> poison, float %i.ey, i64 0
  %i.fa = insertelement <2 x float> %i.ez, float %.epil.init291, i64 1
  %i.fb = fmul nsz <2 x float> %i.br, %i.fa
  %i.fc = insertelement <2 x float> poison, float %.epil.init291, i64 0
  %i.fd = insertelement <2 x float> %i.fc, float %i.ex, i64 1
  %i.fe = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.fd, <2 x float> %i.fb)
  store <2 x float> %i.fe, ptr %.042.i85.us.epil.init, align 4, !tbaa !35
  br label %._crit_edge.i88.us

._crit_edge.i88.us:                               ; preds = %._crit_edge.i88.us.unr-lcssa, %.lr.ph.i84.us.epil.preheader
  br i1 %i.y, label %.lr.ph46.i89.us, label %celt_exp_rotation_impl.exit71.us

.lr.ph46.i89.us:                                  ; preds = %._crit_edge.i88.us
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.z ; 4 uses
  %i.fg = shl nuw nsw i64 %.pre129, 2
  %scevgep254 = getelementptr i8, ptr %scevgep.a, i64 %i.fg
  %load_initial = load float, ptr %scevgep254, align 4 ; 3 uses
  br i1 %lcmp.mod299.not, label %.prol.loopexit297, label %.prol.loopexit297.unr-lcssa

.prol.loopexit297.unr-lcssa:                      ; preds = %.lr.ph46.i89.us
  %i.fh = load float, ptr %i.ff, align 4, !tbaa !35 ; 2 uses
  %i.fi = fneg nsz float %load_initial
  %i.fj = getelementptr inbounds i8, ptr %i.ff, i64 -4
  %i.fk = insertelement <2 x float> poison, float %i.fi, i64 0
  %i.fl = insertelement <2 x float> %i.fk, float %i.fh, i64 1
  %i.fm = fmul nsz <2 x float> %i.br, %i.fl
  %i.fn = insertelement <2 x float> poison, float %i.fh, i64 0
  %i.fo = insertelement <2 x float> %i.fn, float %load_initial, i64 1
  %i.fp = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.fo, <2 x float> %i.fm) ; 2 uses
  store <2 x float> %i.fp, ptr %i.ff, align 4, !tbaa !35
  %i.fq = extractelement <2 x float> %i.fp, i64 0
  br label %.prol.loopexit297

.prol.loopexit297:                                ; preds = %.prol.loopexit297.unr-lcssa, %.lr.ph46.i89.us
  %store_forwarded.unr = phi float [ %load_initial, %.lr.ph46.i89.us ], [ %i.fq, %.prol.loopexit297.unr-lcssa ]
  %.144.i90.us.unr = phi ptr [ %i.ff, %.lr.ph46.i89.us ], [ %i.fj, %.prol.loopexit297.unr-lcssa ]
  %.14043.i91.us.unr = phi i32 [ %i.x, %.lr.ph46.i89.us ], [ %i.bt, %.prol.loopexit297.unr-lcssa ]
  br i1 %i.bu, label %celt_exp_rotation_impl.exit71.us, label %.lr.ph46.i89.us.new

.lr.ph46.i89.us.new:                              ; preds = %.prol.loopexit297, %.lr.ph46.i89.us.new
  %store_forwarded = phi float [ %i.gl, %.lr.ph46.i89.us.new ], [ %store_forwarded.unr, %.prol.loopexit297 ] ; 2 uses
  %.144.i90.us = phi ptr [ %i.gd, %.lr.ph46.i89.us.new ], [ %.144.i90.us.unr, %.prol.loopexit297 ] ; 4 uses
  %.14043.i91.us = phi i32 [ %i.gk, %.lr.ph46.i89.us.new ], [ %.14043.i91.us.unr, %.prol.loopexit297 ] ; 2 uses
  %i.fr = load float, ptr %.144.i90.us, align 4, !tbaa !35 ; 2 uses
  %i.fs = fneg nsz float %store_forwarded
  %i.ft = getelementptr inbounds i8, ptr %.144.i90.us, i64 -4 ; 2 uses
  %i.fu = insertelement <2 x float> poison, float %i.fs, i64 0
  %i.fv = insertelement <2 x float> %i.fu, float %i.fr, i64 1
  %i.fw = fmul nsz <2 x float> %i.br, %i.fv
  %i.fx = insertelement <2 x float> poison, float %i.fr, i64 0
  %i.fy = insertelement <2 x float> %i.fx, float %store_forwarded, i64 1
  %i.fz = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.fy, <2 x float> %i.fw) ; 3 uses
  store <2 x float> %i.fz, ptr %.144.i90.us, align 4, !tbaa !35
  %i.ga = extractelement <2 x float> %i.fz, i64 0
  %i.gb = load float, ptr %i.ft, align 4, !tbaa !35 ; 2 uses
  %i.gc = fneg nsz float %i.ga
  %i.gd = getelementptr inbounds i8, ptr %.144.i90.us, i64 -8
  %i.ge = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.gf = insertelement <2 x float> %i.ge, float %i.gb, i64 1
  %i.gg = fmul nsz <2 x float> %i.br, %i.gf
  %i.gh = insertelement <2 x float> poison, float %i.gb, i64 0
  %i.gi = shufflevector <2 x float> %i.gh, <2 x float> %i.fz, <2 x i32> <i32 0, i32 2>
  %i.gj = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.gi, <2 x float> %i.gg) ; 2 uses
  store <2 x float> %i.gj, ptr %i.ft, align 4, !tbaa !35
  %i.gk = add nsw i32 %.14043.i91.us, -2
  %.not49.i92.us.1 = icmp eq i32 %.14043.i91.us, 1
  %i.gl = extractelement <2 x float> %i.gj, i64 0
  br i1 %.not49.i92.us.1, label %celt_exp_rotation_impl.exit71.us, label %.lr.ph46.i89.us.new, !llvm.loop !181

celt_exp_rotation_impl.exit71.us:                 ; preds = %.prol.loopexit297, %.lr.ph46.i89.us.new, %._crit_edge.i88.us, %celt_exp_rotation_impl.exit82.us
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next118, %wide.trip.count121
  br i1 %exitcond122.not, label %.loopexit, label %.split.us, !llvm.loop !182

.split:                                           ; preds = %.loopexit95
  br i1 %.not59, label %.split.split.us, label %.split.split.preheader

.split.split.preheader:                           ; preds = %.split
  %wide.trip.count = zext i32 %2 to i64
  %i.gm = shl nuw nsw i64 %i.ac, 2                ; 2 uses
  %i.gn = shl nuw nsw i64 %i.z, 2
  %i.go = getelementptr i8, ptr %0, i64 %i.gn
  %scevgep259.a = getelementptr i8, ptr %i.go, i64 4
  %i.gp = add i32 %i.u, -1                        ; 3 uses
  %i.gq = insertelement <2 x float> poison, float %cos, i64 0
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.gs = insertelement <2 x float> poison, float %sin, i64 0 ; 5 uses
  %i.gt = insertelement <2 x float> poison, float %i.v, i64 1 ; 5 uses
  %xtraiter = and i32 %i.gp, 1
  %i.gu = icmp eq i32 %i.w, 0
  %unroll_iter = and i32 %i.gp, -2
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod268 = trunc i32 %i.gp to i1
  %xtraiter269 = and i32 %i.u, 1
  %lcmp.mod270.not = icmp eq i32 %xtraiter269, 0
  %i.gv = add i32 %i.u, -4
  %i.gw = icmp eq i32 %i.x, 0
  %i.gx = add i32 %i.u, -1                        ; 2 uses
  %i.gy = sub i32 %i.gx, %.1                      ; 2 uses
  %i.gz = zext i32 %i.gy to i64
  %i.ha = add nuw nsw i64 %i.gz, 1                ; 2 uses
  %min.iters.check166 = icmp ult i32 %i.gy, 3
  %i.hb = sub i32 %i.gx, %.1
  %i.hc = zext i32 %i.hb to i64
  %i.hd = shl nuw nsw i64 %i.hc, 2                ; 2 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %i.hd
  %invariant.gep307 = getelementptr i8, ptr %0, i64 %i.hd
  %n.vec172 = and i64 %i.ha, 8589934588           ; 4 uses
  %i.he = shl nuw nsw i64 %n.vec172, 2
  %i.hf = trunc i64 %n.vec172 to i32
  %broadcast.splatinsert173 = insertelement <4 x float> poison, float %i.aa, i64 0
  %broadcast.splat174 = shufflevector <4 x float> %broadcast.splatinsert173, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert175 = insertelement <4 x float> poison, float %sin, i64 0
  %broadcast.splat176 = shufflevector <4 x float> %broadcast.splatinsert175, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert177 = insertelement <4 x float> poison, float %cos, i64 0
  %broadcast.splat178 = shufflevector <4 x float> %broadcast.splatinsert177, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n186 = icmp eq i64 %i.ha, %n.vec172
  %i.hg = insertelement <2 x float> poison, float %cos, i64 1
  %i.hh = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.hi = insertelement <2 x float> poison, float %sin, i64 0
  %i.hj = shufflevector <2 x float> %i.hi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hk = sub i32 %i.u, %i.ad                     ; 2 uses
  %i.hl = zext i32 %i.hk to i64                   ; 2 uses
  %min.iters.check = icmp ult i32 %i.hk, 4
  %i.hm = shl nuw nsw i64 %i.ah, 2                ; 2 uses
  %i.hn = getelementptr i8, ptr %0, i64 %i.gm
  %invariant.gep309 = getelementptr i8, ptr %i.hn, i64 %i.hm
  %invariant.gep311 = getelementptr i8, ptr %0, i64 %i.hm
  %n.vec = and i64 %i.hl, 4294967292              ; 4 uses
  %i.ho = mul nsw i64 %n.vec, -4
  %i.hp = trunc nuw i64 %n.vec to i32
  %i.hq = sub i32 %i.af, %i.hp
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.aa, i64 0
  %broadcast.splatinsert147 = insertelement <4 x float> poison, float %sin, i64 0 ; 2 uses
  %broadcast.splatinsert149 = insertelement <4 x float> poison, float %cos, i64 0
  %i.hr = shufflevector <4 x float> %broadcast.splatinsert147, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hs = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ht = shufflevector <4 x float> %broadcast.splatinsert147, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hu = shufflevector <4 x float> %broadcast.splatinsert149, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.hl
  %i.hv = insertelement <2 x float> poison, float %cos, i64 1
  %i.hw = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.hx = insertelement <2 x float> poison, float %sin, i64 0
  %i.hy = shufflevector <2 x float> %i.hx, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.split.split

.split.split.us:                                  ; preds = %.split
  br i1 %.not.i, label %.loopexit, label %.split.split.us.split

.split.split.us.split:                            ; preds = %.split.split.us
  %wide.trip.count115 = zext i32 %2 to i64        ; 2 uses
  br i1 %i.y, label %.lr.ph.i.preheader.us.us.preheader, label %.lr.ph.i.preheader.us.preheader

.lr.ph.i.preheader.us.preheader:                  ; preds = %.split.split.us.split
  %i.hz = add i32 %i.u, -1                        ; 3 uses
  %i.ia = insertelement <2 x float> poison, float %cos, i64 0
  %i.ib = shufflevector <2 x float> %i.ia, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ic = insertelement <2 x float> poison, float %sin, i64 0 ; 2 uses
  %xtraiter271 = and i32 %i.hz, 1
  %i.id = icmp eq i32 %i.w, 0
  %unroll_iter276 = and i32 %i.hz, -2
  %i.ie = insertelement <2 x float> poison, float %i.v, i64 1
  %i.if = insertelement <2 x float> poison, float %i.v, i64 1
  %lcmp.mod274.not = icmp eq i32 %xtraiter271, 0
  %lcmp.mod275 = trunc i32 %i.hz to i1
  %i.ig = insertelement <2 x float> poison, float %i.v, i64 1
  br label %.lr.ph.i.preheader.us

.lr.ph.i.preheader.us.us.preheader:               ; preds = %.split.split.us.split
  %i.ih = shl nuw nsw i64 %i.z, 2
  %i.ii = getelementptr i8, ptr %0, i64 %i.ih
  %scevgep255 = getelementptr i8, ptr %i.ii, i64 4
  %i.ij = add i32 %i.u, -1                        ; 3 uses
  %i.ik = insertelement <2 x float> poison, float %cos, i64 0
  %i.il = shufflevector <2 x float> %i.ik, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.im = insertelement <2 x float> poison, float %sin, i64 0 ; 5 uses
  %i.in = insertelement <2 x float> poison, float %i.v, i64 1 ; 5 uses
  %xtraiter278 = and i32 %i.ij, 1
  %i.io = icmp eq i32 %i.w, 0
  %unroll_iter283 = and i32 %i.ij, -2
  %lcmp.mod281.not = icmp eq i32 %xtraiter278, 0
  %lcmp.mod282 = trunc i32 %i.ij to i1
  %xtraiter287 = and i32 %i.u, 1
  %lcmp.mod288.not = icmp eq i32 %xtraiter287, 0
  %i.ip = add i32 %i.u, -4
  %i.iq = icmp eq i32 %i.x, 0
  br label %.lr.ph.i.preheader.us.us

.lr.ph.i.preheader.us.us:                         ; preds = %.lr.ph.i.preheader.us.us.preheader, %celt_exp_rotation_impl.exit.loopexit.us.us
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %celt_exp_rotation_impl.exit.loopexit.us.us ], [ 0, %.lr.ph.i.preheader.us.us.preheader ] ; 2 uses
  %i.ir = trunc nuw nsw i64 %indvars.iv111 to i32
  %i.is = mul i32 %i.u, %i.ir
  %i.it = zext i32 %i.is to i64                   ; 2 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.it ; 4 uses
  %.pre124 = load float, ptr %i.iu, align 4, !tbaa !35 ; 2 uses
  br i1 %i.io, label %.lr.ph.i.us.us.epil.preheader, label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %.lr.ph.i.preheader.us.us, %.lr.ph.i.us.us
  %i.iv = phi float [ %i.jn, %.lr.ph.i.us.us ], [ %.pre124, %.lr.ph.i.preheader.us.us ] ; 2 uses
  %.042.i.us.us = phi ptr [ %i.jf, %.lr.ph.i.us.us ], [ %i.iu, %.lr.ph.i.preheader.us.us ] ; 3 uses
  %niter284 = phi i32 [ %niter284.next.1, %.lr.ph.i.us.us ], [ 0, %.lr.ph.i.preheader.us.us ]
  %i.iw = getelementptr inbounds nuw i8, ptr %.042.i.us.us, i64 4 ; 2 uses
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !35 ; 2 uses
  %i.iy = insertelement <2 x float> %i.im, float %i.iv, i64 1
  %i.iz = insertelement <2 x float> %i.in, float %i.ix, i64 0
  %i.ja = fmul nsz <2 x float> %i.iy, %i.iz
  %i.jb = insertelement <2 x float> poison, float %i.iv, i64 0
  %i.jc = insertelement <2 x float> %i.jb, float %i.ix, i64 1
  %i.jd = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.il, <2 x float> %i.jc, <2 x float> %i.ja) ; 3 uses
  store <2 x float> %i.jd, ptr %.042.i.us.us, align 4, !tbaa !35
  %i.je = extractelement <2 x float> %i.jd, i64 1
  %i.jf = getelementptr inbounds nuw i8, ptr %.042.i.us.us, i64 8 ; 3 uses
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !35 ; 2 uses
  %i.jh = insertelement <2 x float> %i.jd, float %sin, i64 0
  %i.ji = insertelement <2 x float> %i.in, float %i.jg, i64 0
  %i.jj = fmul nsz <2 x float> %i.jh, %i.ji
  %i.jk = insertelement <2 x float> poison, float %i.je, i64 0
  %i.jl = insertelement <2 x float> %i.jk, float %i.jg, i64 1
  %i.jm = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.il, <2 x float> %i.jl, <2 x float> %i.jj) ; 2 uses
  store <2 x float> %i.jm, ptr %i.iw, align 4, !tbaa !35
  %i.jn = extractelement <2 x float> %i.jm, i64 1 ; 2 uses
  %niter284.next.1 = add i32 %niter284, 2         ; 2 uses
  %niter284.ncmp.1 = icmp eq i32 %niter284.next.1, %unroll_iter283
  br i1 %niter284.ncmp.1, label %._crit_edge.i.us.us.unr-lcssa, label %.lr.ph.i.us.us, !llvm.loop !180

._crit_edge.i.us.us.unr-lcssa:                    ; preds = %.lr.ph.i.us.us
  br i1 %lcmp.mod281.not, label %._crit_edge.i.us.us, label %.lr.ph.i.us.us.epil.preheader

.lr.ph.i.us.us.epil.preheader:                    ; preds = %._crit_edge.i.us.us.unr-lcssa, %.lr.ph.i.preheader.us.us
  %.epil.init280 = phi float [ %.pre124, %.lr.ph.i.preheader.us.us ], [ %i.jn, %._crit_edge.i.us.us.unr-lcssa ] ; 2 uses
  %.042.i.us.us.epil.init = phi ptr [ %i.iu, %.lr.ph.i.preheader.us.us ], [ %i.jf, %._crit_edge.i.us.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod282)
  %i.jo = getelementptr inbounds nuw i8, ptr %.042.i.us.us.epil.init, i64 4
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !35 ; 2 uses
  %i.jq = insertelement <2 x float> %i.im, float %.epil.init280, i64 1
  %i.jr = insertelement <2 x float> %i.in, float %i.jp, i64 0
  %i.js = fmul nsz <2 x float> %i.jq, %i.jr
  %i.jt = insertelement <2 x float> poison, float %.epil.init280, i64 0
  %i.ju = insertelement <2 x float> %i.jt, float %i.jp, i64 1
  %i.jv = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.il, <2 x float> %i.ju, <2 x float> %i.js)
  store <2 x float> %i.jv, ptr %.042.i.us.us.epil.init, align 4, !tbaa !35
  br label %._crit_edge.i.us.us

._crit_edge.i.us.us:                              ; preds = %._crit_edge.i.us.us.unr-lcssa, %.lr.ph.i.us.us.epil.preheader
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.z ; 4 uses
  %i.jx = shl nuw nsw i64 %i.it, 2
  %scevgep256 = getelementptr i8, ptr %scevgep255, i64 %i.jx
  %load_initial257 = load float, ptr %scevgep256, align 4 ; 3 uses
  br i1 %lcmp.mod288.not, label %.prol.loopexit286, label %.prol.loopexit286.unr-lcssa

.prol.loopexit286.unr-lcssa:                      ; preds = %._crit_edge.i.us.us
  %i.jy = load float, ptr %i.jw, align 4, !tbaa !35 ; 2 uses
  %i.jz = getelementptr inbounds i8, ptr %i.jw, i64 -4
  %i.ka = insertelement <2 x float> %i.im, float %i.jy, i64 1
  %i.kb = insertelement <2 x float> %i.in, float %load_initial257, i64 0
  %i.kc = fmul nsz <2 x float> %i.ka, %i.kb
  %i.kd = insertelement <2 x float> poison, float %i.jy, i64 0
  %i.ke = insertelement <2 x float> %i.kd, float %load_initial257, i64 1
  %i.kf = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.il, <2 x float> %i.ke, <2 x float> %i.kc) ; 2 uses
  store <2 x float> %i.kf, ptr %i.jw, align 4, !tbaa !35
  %i.kg = extractelement <2 x float> %i.kf, i64 0
  br label %.prol.loopexit286

.prol.loopexit286:                                ; preds = %.prol.loopexit286.unr-lcssa, %._crit_edge.i.us.us
  %store_forwarded258.unr = phi float [ %load_initial257, %._crit_edge.i.us.us ], [ %i.kg, %.prol.loopexit286.unr-lcssa ]
  %.144.i.us.us.unr = phi ptr [ %i.jw, %._crit_edge.i.us.us ], [ %i.jz, %.prol.loopexit286.unr-lcssa ]
  %.14043.i.us.us.unr = phi i32 [ %i.x, %._crit_edge.i.us.us ], [ %i.ip, %.prol.loopexit286.unr-lcssa ]
  br i1 %i.iq, label %celt_exp_rotation_impl.exit.loopexit.us.us, label %._crit_edge.i.us.us.new

._crit_edge.i.us.us.new:                          ; preds = %.prol.loopexit286, %._crit_edge.i.us.us.new
  %store_forwarded258 = phi float [ %i.ky, %._crit_edge.i.us.us.new ], [ %store_forwarded258.unr, %.prol.loopexit286 ] ; 2 uses
  %.144.i.us.us = phi ptr [ %i.kq, %._crit_edge.i.us.us.new ], [ %.144.i.us.us.unr, %.prol.loopexit286 ] ; 4 uses
  %.14043.i.us.us = phi i32 [ %i.kx, %._crit_edge.i.us.us.new ], [ %.14043.i.us.us.unr, %.prol.loopexit286 ] ; 2 uses
  %i.kh = load float, ptr %.144.i.us.us, align 4, !tbaa !35 ; 2 uses
  %i.ki = getelementptr inbounds i8, ptr %.144.i.us.us, i64 -4 ; 2 uses
  %i.kj = insertelement <2 x float> %i.im, float %i.kh, i64 1
  %i.kk = insertelement <2 x float> %i.in, float %store_forwarded258, i64 0
  %i.kl = fmul nsz <2 x float> %i.kj, %i.kk
  %i.km = insertelement <2 x float> poison, float %i.kh, i64 0
  %i.kn = insertelement <2 x float> %i.km, float %store_forwarded258, i64 1
  %i.ko = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.il, <2 x float> %i.kn, <2 x float> %i.kl) ; 3 uses
  store <2 x float> %i.ko, ptr %.144.i.us.us, align 4, !tbaa !35
  %i.kp = load float, ptr %i.ki, align 4, !tbaa !35 ; 2 uses
  %i.kq = getelementptr inbounds i8, ptr %.144.i.us.us, i64 -8
  %i.kr = insertelement <2 x float> %i.im, float %i.kp, i64 1
  %i.ks = insertelement <2 x float> %i.ko, float %i.v, i64 1
  %i.kt = fmul nsz <2 x float> %i.kr, %i.ks
  %i.ku = insertelement <2 x float> poison, float %i.kp, i64 0
  %i.kv = shufflevector <2 x float> %i.ku, <2 x float> %i.ko, <2 x i32> <i32 0, i32 2>
  %i.kw = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.il, <2 x float> %i.kv, <2 x float> %i.kt) ; 2 uses
  store <2 x float> %i.kw, ptr %i.ki, align 4, !tbaa !35
  %i.kx = add nsw i32 %.14043.i.us.us, -2
  %.not49.i.us.us.1 = icmp eq i32 %.14043.i.us.us, 1
  %i.ky = extractelement <2 x float> %i.kw, i64 0
  br i1 %.not49.i.us.us.1, label %celt_exp_rotation_impl.exit.loopexit.us.us, label %._crit_edge.i.us.us.new, !llvm.loop !181

celt_exp_rotation_impl.exit.loopexit.us.us:       ; preds = %._crit_edge.i.us.us.new, %.prol.loopexit286
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %exitcond116.not = icmp eq i64 %indvars.iv.next112, %wide.trip.count115
  br i1 %exitcond116.not, label %.loopexit, label %.lr.ph.i.preheader.us.us, !llvm.loop !182

.lr.ph.i.preheader.us:                            ; preds = %.lr.ph.i.preheader.us.preheader, %._crit_edge.i.us
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %._crit_edge.i.us ], [ 0, %.lr.ph.i.preheader.us.preheader ] ; 2 uses
  %i.kz = trunc nuw nsw i64 %indvars.iv105 to i32
  %i.la = mul i32 %i.u, %i.kz
  %i.lb = zext i32 %i.la to i64
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.lb ; 3 uses
  %.pre123 = load float, ptr %i.lc, align 4, !tbaa !35 ; 2 uses
  br i1 %i.id, label %.lr.ph.i.us.epil.preheader, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader.us, %.lr.ph.i.us
  %i.ld = phi float [ %i.lv, %.lr.ph.i.us ], [ %.pre123, %.lr.ph.i.preheader.us ] ; 2 uses
  %.042.i.us = phi ptr [ %i.ln, %.lr.ph.i.us ], [ %i.lc, %.lr.ph.i.preheader.us ] ; 3 uses
  %niter277 = phi i32 [ %niter277.next.1, %.lr.ph.i.us ], [ 0, %.lr.ph.i.preheader.us ]
  %i.le = getelementptr inbounds nuw i8, ptr %.042.i.us, i64 4 ; 2 uses
  %i.lf = load float, ptr %i.le, align 4, !tbaa !35 ; 2 uses
  %i.lg = insertelement <2 x float> %i.ic, float %i.ld, i64 1
  %i.lh = insertelement <2 x float> %i.ie, float %i.lf, i64 0
  %i.li = fmul nsz <2 x float> %i.lg, %i.lh
  %i.lj = insertelement <2 x float> poison, float %i.ld, i64 0
  %i.lk = insertelement <2 x float> %i.lj, float %i.lf, i64 1
  %i.ll = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ib, <2 x float> %i.lk, <2 x float> %i.li) ; 3 uses
  store <2 x float> %i.ll, ptr %.042.i.us, align 4, !tbaa !35
  %i.lm = extractelement <2 x float> %i.ll, i64 1
  %i.ln = getelementptr inbounds nuw i8, ptr %.042.i.us, i64 8 ; 3 uses
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !35 ; 2 uses
  %i.lp = insertelement <2 x float> %i.ll, float %sin, i64 0
  %i.lq = insertelement <2 x float> %i.if, float %i.lo, i64 0
  %i.lr = fmul nsz <2 x float> %i.lp, %i.lq
  %i.ls = insertelement <2 x float> poison, float %i.lm, i64 0
  %i.lt = insertelement <2 x float> %i.ls, float %i.lo, i64 1
  %i.lu = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ib, <2 x float> %i.lt, <2 x float> %i.lr) ; 2 uses
  store <2 x float> %i.lu, ptr %i.le, align 4, !tbaa !35
  %i.lv = extractelement <2 x float> %i.lu, i64 1 ; 2 uses
  %niter277.next.1 = add i32 %niter277, 2         ; 2 uses
  %niter277.ncmp.1 = icmp eq i32 %niter277.next.1, %unroll_iter276
  br i1 %niter277.ncmp.1, label %._crit_edge.i.us.unr-lcssa, label %.lr.ph.i.us, !llvm.loop !180

._crit_edge.i.us.unr-lcssa:                       ; preds = %.lr.ph.i.us
  br i1 %lcmp.mod274.not, label %._crit_edge.i.us, label %.lr.ph.i.us.epil.preheader

.lr.ph.i.us.epil.preheader:                       ; preds = %._crit_edge.i.us.unr-lcssa, %.lr.ph.i.preheader.us
  %.epil.init273 = phi float [ %.pre123, %.lr.ph.i.preheader.us ], [ %i.lv, %._crit_edge.i.us.unr-lcssa ] ; 2 uses
  %.042.i.us.epil.init = phi ptr [ %i.lc, %.lr.ph.i.preheader.us ], [ %i.ln, %._crit_edge.i.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod275)
  %i.lw = getelementptr inbounds nuw i8, ptr %.042.i.us.epil.init, i64 4
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !35 ; 2 uses
  %i.ly = insertelement <2 x float> %i.ic, float %.epil.init273, i64 1
  %i.lz = insertelement <2 x float> %i.ig, float %i.lx, i64 0
  %i.ma = fmul nsz <2 x float> %i.ly, %i.lz
  %i.mb = insertelement <2 x float> poison, float %.epil.init273, i64 0
  %i.mc = insertelement <2 x float> %i.mb, float %i.lx, i64 1
  %i.md = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ib, <2 x float> %i.mc, <2 x float> %i.ma)
  store <2 x float> %i.md, ptr %.042.i.us.epil.init, align 4, !tbaa !35
  br label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %._crit_edge.i.us.unr-lcssa, %.lr.ph.i.us.epil.preheader
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %exitcond110.not = icmp eq i64 %indvars.iv.next106, %wide.trip.count115
  br i1 %exitcond110.not, label %.loopexit, label %.lr.ph.i.preheader.us, !llvm.loop !182

.split.split:                                     ; preds = %.split.split.preheader, %celt_exp_rotation_impl.exit71
  %indvars.iv = phi i64 [ 0, %.split.split.preheader ], [ %indvars.iv.next, %celt_exp_rotation_impl.exit71 ] ; 2 uses
  %i.me = trunc i64 %indvars.iv to i32
  %i.mf = mul i32 %i.u, %i.me
  %i.mg = zext i32 %i.mf to i64                   ; 5 uses
  %i.mh = getelementptr [4 x i8], ptr %0, i64 %i.mg ; 11 uses
  br i1 %.not.i, label %celt_exp_rotation_impl.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.split.split
  %.pre = load float, ptr %i.mh, align 4, !tbaa !35 ; 2 uses
  br i1 %i.gu, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.mi = phi float [ %i.na, %.lr.ph.i ], [ %.pre, %.lr.ph.i.preheader ] ; 2 uses
  %.042.i = phi ptr [ %i.ms, %.lr.ph.i ], [ %i.mh, %.lr.ph.i.preheader ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.mj = getelementptr inbounds nuw i8, ptr %.042.i, i64 4 ; 2 uses
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !35 ; 2 uses
  %i.ml = insertelement <2 x float> %i.gs, float %i.mi, i64 1
  %i.mm = insertelement <2 x float> %i.gt, float %i.mk, i64 0
  %i.mn = fmul nsz <2 x float> %i.ml, %i.mm
  %i.mo = insertelement <2 x float> poison, float %i.mi, i64 0
  %i.mp = insertelement <2 x float> %i.mo, float %i.mk, i64 1
  %i.mq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gr, <2 x float> %i.mp, <2 x float> %i.mn) ; 3 uses
  store <2 x float> %i.mq, ptr %.042.i, align 4, !tbaa !35
  %i.mr = extractelement <2 x float> %i.mq, i64 1
  %i.ms = getelementptr inbounds nuw i8, ptr %.042.i, i64 8 ; 3 uses
  %i.mt = load float, ptr %i.ms, align 4, !tbaa !35 ; 2 uses
  %i.mu = insertelement <2 x float> %i.mq, float %sin, i64 0
  %i.mv = insertelement <2 x float> %i.gt, float %i.mt, i64 0
  %i.mw = fmul nsz <2 x float> %i.mu, %i.mv
  %i.mx = insertelement <2 x float> poison, float %i.mr, i64 0
  %i.my = insertelement <2 x float> %i.mx, float %i.mt, i64 1
  %i.mz = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gr, <2 x float> %i.my, <2 x float> %i.mw) ; 2 uses
  store <2 x float> %i.mz, ptr %i.mj, align 4, !tbaa !35
  %i.na = extractelement <2 x float> %i.mz, i64 1 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !180

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i.preheader
  %.epil.init = phi float [ %.pre, %.lr.ph.i.preheader ], [ %i.na, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.042.i.epil.init = phi ptr [ %i.mh, %.lr.ph.i.preheader ], [ %i.ms, %._crit_edge.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod268)
  %i.nb = getelementptr inbounds nuw i8, ptr %.042.i.epil.init, i64 4
  %i.nc = load float, ptr %i.nb, align 4, !tbaa !35 ; 2 uses
  %i.nd = insertelement <2 x float> %i.gs, float %.epil.init, i64 1
  %i.ne = insertelement <2 x float> %i.gt, float %i.nc, i64 0
  %i.nf = fmul nsz <2 x float> %i.nd, %i.ne
  %i.ng = insertelement <2 x float> poison, float %.epil.init, i64 0
  %i.nh = insertelement <2 x float> %i.ng, float %i.nc, i64 1
  %i.ni = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gr, <2 x float> %i.nh, <2 x float> %i.nf)
  store <2 x float> %i.ni, ptr %.042.i.epil.init, align 4, !tbaa !35
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i.epil.preheader
  br i1 %i.y, label %.lr.ph46.i, label %celt_exp_rotation_impl.exit

.lr.ph46.i:                                       ; preds = %._crit_edge.i
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %i.z ; 4 uses
  %i.nk = shl nuw nsw i64 %i.mg, 2
  %scevgep260 = getelementptr i8, ptr %scevgep259.a, i64 %i.nk
  %load_initial261 = load float, ptr %scevgep260, align 4 ; 3 uses
  br i1 %lcmp.mod270.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph46.i
  %i.nl = load float, ptr %i.nj, align 4, !tbaa !35 ; 2 uses
  %i.nm = getelementptr inbounds i8, ptr %i.nj, i64 -4
  %i.nn = insertelement <2 x float> %i.gs, float %i.nl, i64 1
  %i.no = insertelement <2 x float> %i.gt, float %load_initial261, i64 0
  %i.np = fmul nsz <2 x float> %i.nn, %i.no
  %i.nq = insertelement <2 x float> poison, float %i.nl, i64 0
  %i.nr = insertelement <2 x float> %i.nq, float %load_initial261, i64 1
  %i.ns = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gr, <2 x float> %i.nr, <2 x float> %i.np) ; 2 uses
  store <2 x float> %i.ns, ptr %i.nj, align 4, !tbaa !35
  %i.nt = extractelement <2 x float> %i.ns, i64 0
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph46.i
  %store_forwarded262.unr = phi float [ %load_initial261, %.lr.ph46.i ], [ %i.nt, %.prol.loopexit.unr-lcssa ]
  %.144.i.unr = phi ptr [ %i.nj, %.lr.ph46.i ], [ %i.nm, %.prol.loopexit.unr-lcssa ]
  %.14043.i.unr = phi i32 [ %i.x, %.lr.ph46.i ], [ %i.gv, %.prol.loopexit.unr-lcssa ]
  br i1 %i.gw, label %celt_exp_rotation_impl.exit, label %.lr.ph46.i.new

.lr.ph46.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph46.i.new
  %store_forwarded262 = phi float [ %i.ol, %.lr.ph46.i.new ], [ %store_forwarded262.unr, %.prol.loopexit ] ; 2 uses
  %.144.i = phi ptr [ %i.od, %.lr.ph46.i.new ], [ %.144.i.unr, %.prol.loopexit ] ; 4 uses
  %.14043.i = phi i32 [ %i.ok, %.lr.ph46.i.new ], [ %.14043.i.unr, %.prol.loopexit ] ; 2 uses
  %i.nu = load float, ptr %.144.i, align 4, !tbaa !35 ; 2 uses
  %i.nv = getelementptr inbounds i8, ptr %.144.i, i64 -4 ; 2 uses
  %i.nw = insertelement <2 x float> %i.gs, float %i.nu, i64 1
  %i.nx = insertelement <2 x float> %i.gt, float %store_forwarded262, i64 0
  %i.ny = fmul nsz <2 x float> %i.nw, %i.nx
  %i.nz = insertelement <2 x float> poison, float %i.nu, i64 0
  %i.oa = insertelement <2 x float> %i.nz, float %store_forwarded262, i64 1
  %i.ob = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gr, <2 x float> %i.oa, <2 x float> %i.ny) ; 3 uses
  store <2 x float> %i.ob, ptr %.144.i, align 4, !tbaa !35
  %i.oc = load float, ptr %i.nv, align 4, !tbaa !35 ; 2 uses
  %i.od = getelementptr inbounds i8, ptr %.144.i, i64 -8
  %i.oe = insertelement <2 x float> %i.gs, float %i.oc, i64 1
  %i.of = insertelement <2 x float> %i.ob, float %i.v, i64 1
  %i.og = fmul nsz <2 x float> %i.oe, %i.of
  %i.oh = insertelement <2 x float> poison, float %i.oc, i64 0
  %i.oi = shufflevector <2 x float> %i.oh, <2 x float> %i.ob, <2 x i32> <i32 0, i32 2>
  %i.oj = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gr, <2 x float> %i.oi, <2 x float> %i.og) ; 2 uses
  store <2 x float> %i.oj, ptr %i.nv, align 4, !tbaa !35
  %i.ok = add nsw i32 %.14043.i, -2
  %.not49.i.1 = icmp eq i32 %.14043.i, 1
  %i.ol = extractelement <2 x float> %i.oj, i64 0
  br i1 %.not49.i.1, label %celt_exp_rotation_impl.exit, label %.lr.ph46.i.new, !llvm.loop !181

celt_exp_rotation_impl.exit:                      ; preds = %.prol.loopexit, %.lr.ph46.i.new, %.split.split, %._crit_edge.i
  br i1 %.not.i61, label %._crit_edge.i66, label %.lr.ph.i62.preheader

.lr.ph.i62.preheader:                             ; preds = %celt_exp_rotation_impl.exit
  br i1 %min.iters.check166, label %.lr.ph.i62.preheader266, label %vector.memcheck167

vector.memcheck167:                               ; preds = %.lr.ph.i62.preheader
  %i.om = shl nuw nsw i64 %i.mg, 2                ; 2 uses
  %7 = add nuw nsw i64 %i.gm, %i.om               ; 2 uses
  %i.on = getelementptr i8, ptr %0, i64 %7
  %gep = getelementptr i8, ptr %invariant.gep, i64 %7
  %i.oo = getelementptr i8, ptr %gep, i64 4
  %gep308 = getelementptr i8, ptr %invariant.gep307, i64 %i.om
  %i.op = getelementptr i8, ptr %gep308, i64 4
  %bound0168 = icmp ult ptr %i.on, %i.op
  %bound1169 = icmp ult ptr %i.mh, %i.oo
  %found.conflict170 = and i1 %bound0168, %bound1169
  br i1 %found.conflict170, label %.lr.ph.i62.preheader266, label %vector.ph171

vector.ph171:                                     ; preds = %vector.memcheck167
  %i.oq = getelementptr i8, ptr %i.mh, i64 %i.he
  br label %vector.body179

vector.body179:                                   ; preds = %vector.body179, %vector.ph171
  %index180 = phi i64 [ 0, %vector.ph171 ], [ %index.next184, %vector.body179 ] ; 2 uses
  %i.or = shl i64 %index180, 2
  %next.gep181 = getelementptr i8, ptr %i.mh, i64 %i.or ; 3 uses
  %wide.load182 = load <4 x float>, ptr %next.gep181, align 4, !tbaa !35, !alias.scope !197 ; 2 uses
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %next.gep181, i64 %i.ac ; 2 uses
  %wide.load183 = load <4 x float>, ptr %i.os, align 4, !tbaa !35, !alias.scope !198, !noalias !197 ; 2 uses
  %i.ot = fmul nsz <4 x float> %wide.load182, %broadcast.splat174
  %i.ou = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat176, <4 x float> %wide.load183, <4 x float> %i.ot)
  store <4 x float> %i.ou, ptr %i.os, align 4, !tbaa !35, !alias.scope !198, !noalias !197
  %i.ov = fmul nsz <4 x float> %broadcast.splat178, %wide.load183
  %i.ow = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat176, <4 x float> %wide.load182, <4 x float> %i.ov)
  store <4 x float> %i.ow, ptr %next.gep181, align 4, !tbaa !35, !alias.scope !197
  %index.next184 = add nuw i64 %index180, 4       ; 2 uses
  %i.ox = icmp eq i64 %index.next184, %n.vec172
  br i1 %i.ox, label %middle.block185, label %vector.body179, !llvm.loop !186

middle.block185:                                  ; preds = %vector.body179
  br i1 %cmp.n186, label %._crit_edge.i66, label %.lr.ph.i62.preheader266

.lr.ph.i62.preheader266:                          ; preds = %vector.memcheck167, %.lr.ph.i62.preheader, %middle.block185
  %.042.i63.ph = phi ptr [ %i.mh, %vector.memcheck167 ], [ %i.mh, %.lr.ph.i62.preheader ], [ %i.oq, %middle.block185 ]
  %.03941.i64.ph = phi i32 [ 0, %vector.memcheck167 ], [ 0, %.lr.ph.i62.preheader ], [ %i.hf, %middle.block185 ]
  br label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %.lr.ph.i62.preheader266, %.lr.ph.i62
  %.042.i63 = phi ptr [ %i.pi, %.lr.ph.i62 ], [ %.042.i63.ph, %.lr.ph.i62.preheader266 ] ; 4 uses
  %.03941.i64 = phi i32 [ %i.pk, %.lr.ph.i62 ], [ %.03941.i64.ph, %.lr.ph.i62.preheader266 ]
  %i.oy = load float, ptr %.042.i63, align 4, !tbaa !35 ; 2 uses
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %.042.i63, i64 %i.ac ; 2 uses
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !35 ; 2 uses
  %i.pb = insertelement <2 x float> %i.hg, float %i.oy, i64 0
  %i.pc = insertelement <2 x float> %i.hh, float %i.pa, i64 1
  %i.pd = fmul nsz <2 x float> %i.pb, %i.pc
  %i.pe = insertelement <2 x float> poison, float %i.pa, i64 0
  %i.pf = insertelement <2 x float> %i.pe, float %i.oy, i64 1
  %i.pg = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hj, <2 x float> %i.pf, <2 x float> %i.pd) ; 2 uses
  %i.ph = extractelement <2 x float> %i.pg, i64 0
  store float %i.ph, ptr %i.oz, align 4, !tbaa !35
  %i.pi = getelementptr inbounds nuw i8, ptr %.042.i63, i64 4
  %i.pj = extractelement <2 x float> %i.pg, i64 1
  store float %i.pj, ptr %.042.i63, align 4, !tbaa !35
  %i.pk = add nuw nsw i32 %.03941.i64, 1          ; 2 uses
  %exitcond.not.i65 = icmp eq i32 %i.pk, %i.ab
  br i1 %exitcond.not.i65, label %._crit_edge.i66, label %.lr.ph.i62, !llvm.loop !187

._crit_edge.i66:                                  ; preds = %.lr.ph.i62, %middle.block185, %celt_exp_rotation_impl.exit
  br i1 %i.ag, label %.lr.ph46.i67, label %celt_exp_rotation_impl.exit71

.lr.ph46.i67:                                     ; preds = %._crit_edge.i66
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %i.ah ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph46.i67
  %i.pm = add nuw nsw i64 %i.ac, %i.mg
  %i.pn = shl nuw nsw i64 %i.pm, 2
  %i.po = getelementptr i8, ptr %0, i64 %i.pn
  %i.pp = shl nuw nsw i64 %i.mg, 2                ; 2 uses
  %gep310 = getelementptr i8, ptr %invariant.gep309, i64 %i.pp
  %i.pq = getelementptr i8, ptr %gep310, i64 4
  %gep312 = getelementptr i8, ptr %invariant.gep311, i64 %i.pp
  %i.pr = getelementptr i8, ptr %gep312, i64 4
  %bound0 = icmp ult ptr %i.po, %i.pr
  %bound1 = icmp ult ptr %i.mh, %i.pq
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ps = getelementptr i8, ptr %i.pl, i64 %i.ho
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.pt = mul i64 %index, -4
  %next.gep = getelementptr i8, ptr %i.pl, i64 %i.pt ; 2 uses
  %i.pu = getelementptr i8, ptr %next.gep, i64 -12 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.pu, align 4, !tbaa !35, !alias.scope !199 ; 2 uses
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %next.gep, i64 %i.ac
  %i.pw = getelementptr inbounds i8, ptr %i.pv, i64 -12 ; 2 uses
  %wide.load151 = load <4 x float>, ptr %i.pw, align 4, !tbaa !35, !alias.scope !200, !noalias !199 ; 2 uses
  %i.px = fmul nsz <4 x float> %wide.load, %i.hs
  %reverse153 = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hr, <4 x float> %wide.load151, <4 x float> %i.px)
  store <4 x float> %reverse153, ptr %i.pw, align 4, !tbaa !35, !alias.scope !200, !noalias !199
  %i.py = fmul nsz <4 x float> %i.hu, %wide.load151
  %reverse154 = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ht, <4 x float> %wide.load, <4 x float> %i.py)
  store <4 x float> %reverse154, ptr %i.pu, align 4, !tbaa !35, !alias.scope !199
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.pz = icmp eq i64 %index.next, %n.vec
  br i1 %i.pz, label %middle.block, label %vector.body, !llvm.loop !191

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %celt_exp_rotation_impl.exit71, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph46.i67, %middle.block
  %.144.i68.ph = phi ptr [ %i.pl, %vector.memcheck ], [ %i.pl, %.lr.ph46.i67 ], [ %i.ps, %middle.block ]
  %.14043.i69.ph = phi i32 [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph46.i67 ], [ %i.hq, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.144.i68 = phi ptr [ %i.qk, %scalar.ph ], [ %.144.i68.ph, %scalar.ph.preheader ] ; 4 uses
  %.14043.i69 = phi i32 [ %i.qm, %scalar.ph ], [ %.14043.i69.ph, %scalar.ph.preheader ] ; 2 uses
  %i.qa = load float, ptr %.144.i68, align 4, !tbaa !35 ; 2 uses
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %.144.i68, i64 %i.ac ; 2 uses
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !35 ; 2 uses
  %i.qd = insertelement <2 x float> %i.hv, float %i.qa, i64 0
  %i.qe = insertelement <2 x float> %i.hw, float %i.qc, i64 1
  %i.qf = fmul nsz <2 x float> %i.qd, %i.qe
  %i.qg = insertelement <2 x float> poison, float %i.qc, i64 0
  %i.qh = insertelement <2 x float> %i.qg, float %i.qa, i64 1
  %i.qi = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hy, <2 x float> %i.qh, <2 x float> %i.qf) ; 2 uses
  %i.qj = extractelement <2 x float> %i.qi, i64 0
  store float %i.qj, ptr %i.qb, align 4, !tbaa !35
  %i.qk = getelementptr inbounds i8, ptr %.144.i68, i64 -4
  %i.ql = extractelement <2 x float> %i.qi, i64 1
  store float %i.ql, ptr %.144.i68, align 4, !tbaa !35
  %i.qm = add nsw i32 %.14043.i69, -1
  %.not49.i70 = icmp eq i32 %.14043.i69, 0
  br i1 %.not49.i70, label %celt_exp_rotation_impl.exit71, label %scalar.ph, !llvm.loop !192

celt_exp_rotation_impl.exit71:                    ; preds = %scalar.ph, %middle.block, %._crit_edge.i66
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.split.split, !llvm.loop !182

.loopexit:                                        ; preds = %celt_exp_rotation_impl.exit71, %._crit_edge.i.us, %celt_exp_rotation_impl.exit.loopexit.us.us, %celt_exp_rotation_impl.exit71.us, %.split.split.us, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!15, !16, !17}
!llvm.ident = !{!18}
!llvm.errno.tbaa = !{!23}

!0 = distinct !{!0, !37}
!1 = distinct !{!1, !37}
!2 = distinct !{!2, !37}
!3 = distinct !{!3, !37}
end_hunk_0
