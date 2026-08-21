Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/pvq?download=true
inline.NumInlined: 46
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 35
begin_hunk_0_@ppp_pvq_search_c:bb.a
  %i.bj = mul i32 %i.bi, %i.bd
  %i.bk = add nsw i32 %i.bj, %i.af                ; 2 uses
  %i.bl = add nsw i32 %i.bd, %i.bh
  store i32 %i.bl, ptr %i.bg, align 4, !tbaa !22
  %.not.us = icmp eq i32 %i.ax, 0
  br i1 %.not.us, label %._crit_edge137, label %.lr.ph128.us, !llvm.loop !167

.lr.ph128.split.us.us:                            ; preds = %.lr.ph128.us, %.lr.ph128.split.us.us
  %indvars.iv181 = phi i64 [ %indvars.iv.next182, %.lr.ph128.split.us.us ], [ 0, %.lr.ph128.us ] ; 4 uses
  %.0126.us.us = phi float [ %.1.us.us, %.lr.ph128.split.us.us ], [ 1.000000e+00, %.lr.ph128.us ] ; 2 uses
  %.088125.us.us = phi float [ %.189.us.us, %.lr.ph128.split.us.us ], [ 0.000000e+00, %.lr.ph128.us ] ; 2 uses
  %.090124.us.us = phi i32 [ %.191.us.us, %.lr.ph128.split.us.us ], [ 0, %.lr.ph128.us ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv181
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !22
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv181
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !21
  %i.bq = tail call nsz float @llvm.fabs.f32(float %i.bp)
  %i.br = tail call nsz float @llvm.fmuladd.f32(float %i.ag, float %i.bq, float %.193134.us) ; 2 uses
  %i.bs = fmul nsz float %i.br, %i.br             ; 2 uses
  %i.bt = tail call i32 @llvm.abs.i32(i32 %i.bn, i1 true)
  %i.bu = mul nsw i32 %i.ah, %i.bt
  %i.bv = add nsw i32 %i.bu, %i.af
  %i.bw = fmul nsz float %.0126.us.us, %i.bs
  %i.bx = sitofp nsz i32 %i.bv to float           ; 2 uses
  %i.by = fmul nsz float %.088125.us.us, %i.bx
  %i.bz = fcmp nsz ogt float %i.bw, %i.by         ; 3 uses
  %i.ca = trunc nuw nsw i64 %indvars.iv181 to i32
  %.191.us.us = select i1 %i.bz, i32 %i.ca, i32 %.090124.us.us ; 2 uses
  %.189.us.us = select nsz i1 %i.bz, float %i.bs, float %.088125.us.us
  %.1.us.us = select nsz i1 %i.bz, float %i.bx, float %.0126.us.us
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1 ; 2 uses
  %exitcond185.not = icmp eq i64 %indvars.iv.next182, %wide.trip.count184
  br i1 %exitcond185.not, label %._crit_edge129.us, label %.lr.ph128.split.us.us, !llvm.loop !166

.lr.ph136.split:                                  ; preds = %.preheader.thread
  %i.cb = load float, ptr %0, align 4, !tbaa !21
  %.fr157 = freeze float %i.cb
  %i.cc = fcmp nsz ogt float %.fr157, 0.000000e+00
  %.promoted = load i32, ptr %1, align 4, !tbaa !22 ; 2 uses
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
  %i.co = load float, ptr %i.cn, align 4, !tbaa !21 ; 2 uses
  %i.cp = fmul nsz float %i.ab, %i.co
  %.fr189 = freeze float %i.cp
  %i.cq = tail call i64 @llvm.lrint.i64.f32(float %.fr189)
  %i.cr = trunc i64 %i.cq to i32                  ; 5 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv171
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !22
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
  store i32 %.us-phi, ptr %1, align 4, !tbaa !22
  br label %._crit_edge137

._crit_edge137:                                   ; preds = %._crit_edge129.us, %.preheader.thread, %._crit_edge137.split, %.preheader
  %.196.lcssa = phi i32 [ %i.cu, %.preheader ], [ %.us-phi156, %._crit_edge137.split ], [ 0, %.preheader.thread ], [ %i.bk, %._crit_edge129.us ]
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
  %i.u = udiv i32 %1, %2                          ; 26 uses
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
  %i.ac = zext i32 %.1 to i64                     ; 14 uses
  %i.ad = shl i32 %.1, 1                          ; 3 uses
  %i.ae = xor i32 %i.ad, -1
  %i.af = add i32 %i.u, %i.ae                     ; 8 uses
  %i.ag = icmp sgt i32 %i.af, -1                  ; 2 uses
  %i.ah = zext i32 %i.af to i64                   ; 6 uses
  %.not59 = icmp eq i32 %.1, 0                    ; 2 uses
  br i1 %.not58, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %.loopexit95
  %wide.trip.count121 = zext i32 %2 to i64
  %i.ai = shl nuw nsw i64 %i.ah, 2
  %i.aj = add nuw nsw i64 %i.ac, %i.ah
  %i.ak = shl nuw nsw i64 %i.aj, 2
  %i.al = getelementptr i8, ptr %0, i64 %i.ak
  %scevgep188 = getelementptr i8, ptr %i.al, i64 4
  %i.am = getelementptr i8, ptr %0, i64 %i.ai
  %scevgep190 = getelementptr i8, ptr %i.am, i64 4
  %i.an = shl nuw nsw i64 %i.ac, 2                ; 2 uses
  %scevgep218 = getelementptr i8, ptr %0, i64 %i.an
  %i.ao = xor i32 %.1, -1
  %i.ap = add i32 %i.u, %i.ao
  %i.aq = shl nuw nsw i64 %i.z, 2
  %i.ar = getelementptr i8, ptr %0, i64 %i.aq
  %scevgep245 = getelementptr i8, ptr %i.ar, i64 4
  %i.as = add i32 %i.u, -1                        ; 3 uses
  %i.at = xor i32 %.1, -1
  %i.au = add i32 %i.u, %i.at                     ; 2 uses
  %i.av = zext i32 %i.au to i64
  %i.aw = add nuw nsw i64 %i.av, 1                ; 2 uses
  %min.iters.check228 = icmp ult i32 %i.au, 3
  %i.ax = zext i32 %i.ap to i64
  %i.ay = shl nuw nsw i64 %i.ax, 2                ; 2 uses
  %i.az = getelementptr i8, ptr %0, i64 %i.an
  %i.ba = getelementptr i8, ptr %i.az, i64 %i.ay
  %scevgep220 = getelementptr i8, ptr %i.ba, i64 4
  %i.bb = getelementptr i8, ptr %0, i64 %i.ay
  %scevgep222 = getelementptr i8, ptr %i.bb, i64 4
  %n.vec230 = and i64 %i.aw, 8589934588           ; 4 uses
  %i.bc = shl nuw nsw i64 %n.vec230, 2
  %i.bd = trunc i64 %n.vec230 to i32
  %broadcast.splatinsert231 = insertelement <4 x float> poison, float %cos, i64 0
  %broadcast.splat232 = shufflevector <4 x float> %broadcast.splatinsert231, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert233 = insertelement <4 x float> poison, float %sin, i64 0
  %broadcast.splat234 = shufflevector <4 x float> %broadcast.splatinsert233, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n242 = icmp eq i64 %i.aw, %n.vec230
  %i.be = insertelement <2 x float> poison, float %cos, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = insertelement <2 x float> poison, float %sin, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = sub i32 %i.u, %i.ad                     ; 2 uses
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  %min.iters.check196 = icmp ult i32 %i.bi, 4
  %n.vec198 = and i64 %i.bj, 4294967292           ; 4 uses
  %i.bk = mul nsw i64 %n.vec198, -4
  %i.bl = trunc nuw i64 %n.vec198 to i32
  %i.bm = sub i32 %i.af, %i.bl
  %broadcast.splatinsert199 = insertelement <4 x float> poison, float %cos, i64 0 ; 2 uses
  %broadcast.splatinsert201 = insertelement <4 x float> poison, float %sin, i64 0 ; 2 uses
  %i.bn = shufflevector <4 x float> %broadcast.splatinsert201, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bo = shufflevector <4 x float> %broadcast.splatinsert199, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bp = shufflevector <4 x float> %broadcast.splatinsert201, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bq = shufflevector <4 x float> %broadcast.splatinsert199, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n214 = icmp eq i64 %n.vec198, %i.bj
  %i.br = insertelement <2 x float> poison, float %cos, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bt = insertelement <2 x float> poison, float %sin, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = insertelement <2 x float> poison, float %cos, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.bx = insertelement <2 x float> poison, float %sin, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %xtraiter281 = and i32 %i.as, 1
  %i.bz = icmp eq i32 %i.w, 0
  %unroll_iter286 = and i32 %i.as, -2
  %lcmp.mod284.not = icmp eq i32 %xtraiter281, 0
  %lcmp.mod285 = trunc i32 %i.as to i1
  %xtraiter290 = and i32 %i.u, 1
  %lcmp.mod291.not = icmp eq i32 %xtraiter290, 0
  %i.ca = add i32 %i.u, -4
  %i.cb = icmp eq i32 %i.x, 0
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %celt_exp_rotation_impl.exit71.us
  %indvars.iv117 = phi i64 [ 0, %.split.us.preheader ], [ %indvars.iv.next118, %celt_exp_rotation_impl.exit71.us ] ; 2 uses
  %.pre126 = trunc i64 %indvars.iv117 to i32
  %.pre127 = mul i32 %i.u, %.pre126
  %.pre129 = zext i32 %.pre127 to i64             ; 6 uses
  br i1 %.not59, label %celt_exp_rotation_impl.exit82.us, label %bb.d

bb.d:                                             ; preds = %.split.us
  %i.cc = getelementptr [4 x i8], ptr %0, i64 %.pre129 ; 7 uses
  br i1 %.not.i61, label %._crit_edge.i77.us, label %.lr.ph.i73.us.preheader

.lr.ph.i73.us.preheader:                          ; preds = %bb.d
  br i1 %min.iters.check228, label %.lr.ph.i73.us.preheader255, label %vector.memcheck217

vector.memcheck217:                               ; preds = %.lr.ph.i73.us.preheader
  %i.cd = shl nuw nsw i64 %.pre129, 2             ; 3 uses
  %scevgep219 = getelementptr i8, ptr %scevgep218, i64 %i.cd
  %scevgep221 = getelementptr i8, ptr %scevgep220, i64 %i.cd
  %scevgep223 = getelementptr i8, ptr %scevgep222, i64 %i.cd
  %bound0224 = icmp ult ptr %scevgep219, %scevgep223
  %bound1225 = icmp ult ptr %i.cc, %scevgep221
  %found.conflict226 = and i1 %bound0224, %bound1225
  br i1 %found.conflict226, label %.lr.ph.i73.us.preheader255, label %vector.ph229

vector.ph229:                                     ; preds = %vector.memcheck217
  %i.ce = getelementptr i8, ptr %i.cc, i64 %i.bc
  br label %vector.body235

vector.body235:                                   ; preds = %vector.body235, %vector.ph229
  %index236 = phi i64 [ 0, %vector.ph229 ], [ %index.next240, %vector.body235 ] ; 2 uses
  %i.cf = shl i64 %index236, 2
  %next.gep237 = getelementptr i8, ptr %i.cc, i64 %i.cf ; 3 uses
  %wide.load238 = load <4 x float>, ptr %next.gep237, align 4, !tbaa !21, !alias.scope !170 ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %next.gep237, i64 %i.ac ; 2 uses
  %wide.load239 = load <4 x float>, ptr %i.cg, align 4, !tbaa !21, !alias.scope !173, !noalias !170 ; 2 uses
  %i.ch = fmul nsz <4 x float> %broadcast.splat232, %wide.load238
  %i.ci = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat234, <4 x float> %wide.load239, <4 x float> %i.ch)
  store <4 x float> %i.ci, ptr %i.cg, align 4, !tbaa !21, !alias.scope !173, !noalias !170
  %i.cj = fneg nsz <4 x float> %wide.load239
  %i.ck = fmul nsz <4 x float> %broadcast.splat232, %i.cj
  %i.cl = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat234, <4 x float> %wide.load238, <4 x float> %i.ck)
  store <4 x float> %i.cl, ptr %next.gep237, align 4, !tbaa !21, !alias.scope !170
  %index.next240 = add nuw i64 %index236, 4       ; 2 uses
  %i.cm = icmp eq i64 %index.next240, %n.vec230
  br i1 %i.cm, label %middle.block241, label %vector.body235, !llvm.loop !175

middle.block241:                                  ; preds = %vector.body235
  br i1 %cmp.n242, label %._crit_edge.i77.us, label %.lr.ph.i73.us.preheader255

.lr.ph.i73.us.preheader255:                       ; preds = %vector.memcheck217, %.lr.ph.i73.us.preheader, %middle.block241
  %.042.i74.us.ph = phi ptr [ %i.cc, %vector.memcheck217 ], [ %i.cc, %.lr.ph.i73.us.preheader ], [ %i.ce, %middle.block241 ]
  %.03941.i75.us.ph = phi i32 [ 0, %vector.memcheck217 ], [ 0, %.lr.ph.i73.us.preheader ], [ %i.bd, %middle.block241 ]
  br label %.lr.ph.i73.us

.lr.ph.i73.us:                                    ; preds = %.lr.ph.i73.us.preheader255, %.lr.ph.i73.us
  %.042.i74.us = phi ptr [ %i.cy, %.lr.ph.i73.us ], [ %.042.i74.us.ph, %.lr.ph.i73.us.preheader255 ] ; 4 uses
  %.03941.i75.us = phi i32 [ %i.da, %.lr.ph.i73.us ], [ %.03941.i75.us.ph, %.lr.ph.i73.us.preheader255 ]
  %i.cn = load float, ptr %.042.i74.us, align 4, !tbaa !21 ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.042.i74.us, i64 %i.ac ; 2 uses
  %i.cp = load float, ptr %i.co, align 4, !tbaa !21 ; 2 uses
  %i.cq = fneg nsz float %i.cp
  %i.cr = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.cs = insertelement <2 x float> %i.cr, float %i.cq, i64 1
  %i.ct = fmul nsz <2 x float> %i.bf, %i.cs
  %i.cu = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.cv = insertelement <2 x float> %i.cu, float %i.cn, i64 1
  %i.cw = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %i.cv, <2 x float> %i.ct) ; 2 uses
  %i.cx = extractelement <2 x float> %i.cw, i64 0
  store float %i.cx, ptr %i.co, align 4, !tbaa !21
  %i.cy = getelementptr inbounds nuw i8, ptr %.042.i74.us, i64 4
  %i.cz = extractelement <2 x float> %i.cw, i64 1
  store float %i.cz, ptr %.042.i74.us, align 4, !tbaa !21
  %i.da = add nuw nsw i32 %.03941.i75.us, 1       ; 2 uses
  %exitcond.not.i76.us = icmp eq i32 %i.da, %i.ab
  br i1 %exitcond.not.i76.us, label %._crit_edge.i77.us, label %.lr.ph.i73.us, !llvm.loop !176

._crit_edge.i77.us:                               ; preds = %.lr.ph.i73.us, %middle.block241, %bb.d
  br i1 %i.ag, label %.lr.ph46.i78.us, label %celt_exp_rotation_impl.exit82.us

.lr.ph46.i78.us:                                  ; preds = %._crit_edge.i77.us
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.ah ; 4 uses
  br i1 %min.iters.check196, label %scalar.ph195.preheader, label %vector.memcheck186

vector.memcheck186:                               ; preds = %.lr.ph46.i78.us
  %i.dc = add nuw nsw i64 %i.ac, %.pre129
  %i.dd = shl nuw nsw i64 %i.dc, 2
  %scevgep187 = getelementptr i8, ptr %0, i64 %i.dd
  %i.de = shl nuw nsw i64 %.pre129, 2             ; 2 uses
  %scevgep189 = getelementptr i8, ptr %scevgep188, i64 %i.de
  %scevgep191 = getelementptr i8, ptr %scevgep190, i64 %i.de
  %bound0192 = icmp ult ptr %scevgep187, %scevgep191
  %bound1193 = icmp ult ptr %i.cc, %scevgep189
  %found.conflict194 = and i1 %bound0192, %bound1193
  br i1 %found.conflict194, label %scalar.ph195.preheader, label %vector.ph197

vector.ph197:                                     ; preds = %vector.memcheck186
  %i.df = getelementptr i8, ptr %i.db, i64 %i.bk
  br label %vector.body203

vector.body203:                                   ; preds = %vector.body203, %vector.ph197
  %index204 = phi i64 [ 0, %vector.ph197 ], [ %index.next212, %vector.body203 ] ; 2 uses
  %i.dg = mul i64 %index204, -4
  %next.gep205 = getelementptr i8, ptr %i.db, i64 %i.dg ; 2 uses
  %i.dh = getelementptr i8, ptr %next.gep205, i64 -12 ; 2 uses
  %wide.load206 = load <4 x float>, ptr %i.dh, align 4, !tbaa !21, !alias.scope !177 ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %next.gep205, i64 %i.ac
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 -12 ; 2 uses
  %wide.load208 = load <4 x float>, ptr %i.dj, align 4, !tbaa !21, !alias.scope !180, !noalias !177 ; 2 uses
  %i.dk = fmul nsz <4 x float> %i.bo, %wide.load206
  %reverse210 = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bn, <4 x float> %wide.load208, <4 x float> %i.dk)
  store <4 x float> %reverse210, ptr %i.dj, align 4, !tbaa !21, !alias.scope !180, !noalias !177
  %i.dl = fneg nsz <4 x float> %wide.load208
  %i.dm = fmul nsz <4 x float> %i.bq, %i.dl
  %reverse211 = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bp, <4 x float> %wide.load206, <4 x float> %i.dm)
  store <4 x float> %reverse211, ptr %i.dh, align 4, !tbaa !21, !alias.scope !177
  %index.next212 = add nuw i64 %index204, 4       ; 2 uses
  %i.dn = icmp eq i64 %index.next212, %n.vec198
  br i1 %i.dn, label %middle.block213, label %vector.body203, !llvm.loop !182

middle.block213:                                  ; preds = %vector.body203
  br i1 %cmp.n214, label %celt_exp_rotation_impl.exit82.us, label %scalar.ph195.preheader

scalar.ph195.preheader:                           ; preds = %vector.memcheck186, %.lr.ph46.i78.us, %middle.block213
  %.144.i79.us.ph = phi ptr [ %i.db, %vector.memcheck186 ], [ %i.db, %.lr.ph46.i78.us ], [ %i.df, %middle.block213 ]
  %.14043.i80.us.ph = phi i32 [ %i.af, %vector.memcheck186 ], [ %i.af, %.lr.ph46.i78.us ], [ %i.bm, %middle.block213 ]
  br label %scalar.ph195

scalar.ph195:                                     ; preds = %scalar.ph195.preheader, %scalar.ph195
  %.144.i79.us = phi ptr [ %i.dz, %scalar.ph195 ], [ %.144.i79.us.ph, %scalar.ph195.preheader ] ; 4 uses
  %.14043.i80.us = phi i32 [ %i.eb, %scalar.ph195 ], [ %.14043.i80.us.ph, %scalar.ph195.preheader ] ; 2 uses
  %i.do = load float, ptr %.144.i79.us, align 4, !tbaa !21 ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.144.i79.us, i64 %i.ac ; 2 uses
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !21 ; 2 uses
  %i.dr = fneg nsz float %i.dq
  %i.ds = insertelement <2 x float> poison, float %i.do, i64 0
  %i.dt = insertelement <2 x float> %i.ds, float %i.dr, i64 1
  %i.du = fmul nsz <2 x float> %i.bs, %i.dt
  %i.dv = insertelement <2 x float> poison, float %i.dq, i64 0
  %i.dw = insertelement <2 x float> %i.dv, float %i.do, i64 1
  %i.dx = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.dw, <2 x float> %i.du) ; 2 uses
  %i.dy = extractelement <2 x float> %i.dx, i64 0
  store float %i.dy, ptr %i.dp, align 4, !tbaa !21
  %i.dz = getelementptr inbounds i8, ptr %.144.i79.us, i64 -4
  %i.ea = extractelement <2 x float> %i.dx, i64 1
  store float %i.ea, ptr %.144.i79.us, align 4, !tbaa !21
  %i.eb = add nsw i32 %.14043.i80.us, -1
  %.not49.i81.us = icmp eq i32 %.14043.i80.us, 0
  br i1 %.not49.i81.us, label %celt_exp_rotation_impl.exit82.us, label %scalar.ph195, !llvm.loop !183

celt_exp_rotation_impl.exit82.us:                 ; preds = %scalar.ph195, %middle.block213, %.split.us, %._crit_edge.i77.us
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.pre129 ; 4 uses
  br i1 %.not.i, label %celt_exp_rotation_impl.exit71.us, label %.lr.ph.i84.us.preheader

.lr.ph.i84.us.preheader:                          ; preds = %celt_exp_rotation_impl.exit82.us
  %.pre125 = load float, ptr %i.ec, align 4, !tbaa !21 ; 2 uses
  br i1 %i.bz, label %.lr.ph.i84.us.epil.preheader, label %.lr.ph.i84.us

.lr.ph.i84.us:                                    ; preds = %.lr.ph.i84.us.preheader, %.lr.ph.i84.us
  %i.ed = phi float [ %i.ew, %.lr.ph.i84.us ], [ %.pre125, %.lr.ph.i84.us.preheader ] ; 2 uses
  %.042.i85.us = phi ptr [ %i.eo, %.lr.ph.i84.us ], [ %i.ec, %.lr.ph.i84.us.preheader ] ; 3 uses
  %niter287 = phi i32 [ %niter287.next.1, %.lr.ph.i84.us ], [ 0, %.lr.ph.i84.us.preheader ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.042.i85.us, i64 4 ; 2 uses
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !21 ; 2 uses
  %i.eg = fneg nsz float %i.ef
  %i.eh = insertelement <2 x float> poison, float %i.eg, i64 0
  %i.ei = insertelement <2 x float> %i.eh, float %i.ed, i64 1
  %i.ej = fmul nsz <2 x float> %i.by, %i.ei
  %i.ek = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.el = insertelement <2 x float> %i.ek, float %i.ef, i64 1
  %i.em = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> %i.el, <2 x float> %i.ej) ; 3 uses
  store <2 x float> %i.em, ptr %.042.i85.us, align 4, !tbaa !21
  %i.en = extractelement <2 x float> %i.em, i64 1
  %i.eo = getelementptr inbounds nuw i8, ptr %.042.i85.us, i64 8 ; 3 uses
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !21 ; 2 uses
  %i.eq = fneg nsz float %i.ep
  %i.er = insertelement <2 x float> %i.em, float %i.eq, i64 0
  %i.es = fmul nsz <2 x float> %i.by, %i.er
  %i.et = insertelement <2 x float> poison, float %i.en, i64 0
  %i.eu = insertelement <2 x float> %i.et, float %i.ep, i64 1
  %i.ev = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> %i.eu, <2 x float> %i.es) ; 2 uses
  store <2 x float> %i.ev, ptr %i.ee, align 4, !tbaa !21
  %i.ew = extractelement <2 x float> %i.ev, i64 1 ; 2 uses
  %niter287.next.1 = add i32 %niter287, 2         ; 2 uses
  %niter287.ncmp.1 = icmp eq i32 %niter287.next.1, %unroll_iter286
  br i1 %niter287.ncmp.1, label %._crit_edge.i88.us.unr-lcssa, label %.lr.ph.i84.us, !llvm.loop !184

._crit_edge.i88.us.unr-lcssa:                     ; preds = %.lr.ph.i84.us
  br i1 %lcmp.mod284.not, label %._crit_edge.i88.us, label %.lr.ph.i84.us.epil.preheader

.lr.ph.i84.us.epil.preheader:                     ; preds = %._crit_edge.i88.us.unr-lcssa, %.lr.ph.i84.us.preheader
  %.epil.init283 = phi float [ %.pre125, %.lr.ph.i84.us.preheader ], [ %i.ew, %._crit_edge.i88.us.unr-lcssa ] ; 2 uses
  %.042.i85.us.epil.init = phi ptr [ %i.ec, %.lr.ph.i84.us.preheader ], [ %i.eo, %._crit_edge.i88.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod285)
  %i.ex = getelementptr inbounds nuw i8, ptr %.042.i85.us.epil.init, i64 4
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !21 ; 2 uses
  %i.ez = fneg nsz float %i.ey
  %i.fa = insertelement <2 x float> poison, float %i.ez, i64 0
  %i.fb = insertelement <2 x float> %i.fa, float %.epil.init283, i64 1
  %i.fc = fmul nsz <2 x float> %i.by, %i.fb
  %i.fd = insertelement <2 x float> poison, float %.epil.init283, i64 0
  %i.fe = insertelement <2 x float> %i.fd, float %i.ey, i64 1
  %i.ff = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> %i.fe, <2 x float> %i.fc)
  store <2 x float> %i.ff, ptr %.042.i85.us.epil.init, align 4, !tbaa !21
  br label %._crit_edge.i88.us

._crit_edge.i88.us:                               ; preds = %._crit_edge.i88.us.unr-lcssa, %.lr.ph.i84.us.epil.preheader
  br i1 %i.y, label %.lr.ph46.i89.us, label %celt_exp_rotation_impl.exit71.us

.lr.ph46.i89.us:                                  ; preds = %._crit_edge.i88.us
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.z ; 4 uses
  %i.fh = shl nuw nsw i64 %.pre129, 2
  %scevgep246 = getelementptr i8, ptr %scevgep245, i64 %i.fh
  %load_initial = load float, ptr %scevgep246, align 4 ; 3 uses
  br i1 %lcmp.mod291.not, label %.prol.loopexit289, label %.prol.loopexit289.unr-lcssa

.prol.loopexit289.unr-lcssa:                      ; preds = %.lr.ph46.i89.us
  %i.fi = load float, ptr %i.fg, align 4, !tbaa !21 ; 2 uses
  %i.fj = fneg nsz float %load_initial
  %i.fk = getelementptr inbounds i8, ptr %i.fg, i64 -4
  %i.fl = insertelement <2 x float> poison, float %i.fj, i64 0
  %i.fm = insertelement <2 x float> %i.fl, float %i.fi, i64 1
  %i.fn = fmul nsz <2 x float> %i.by, %i.fm
  %i.fo = insertelement <2 x float> poison, float %i.fi, i64 0
  %i.fp = insertelement <2 x float> %i.fo, float %load_initial, i64 1
  %i.fq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> %i.fp, <2 x float> %i.fn) ; 2 uses
  store <2 x float> %i.fq, ptr %i.fg, align 4, !tbaa !21
  %i.fr = extractelement <2 x float> %i.fq, i64 0
  br label %.prol.loopexit289

.prol.loopexit289:                                ; preds = %.prol.loopexit289.unr-lcssa, %.lr.ph46.i89.us
  %store_forwarded.unr = phi float [ %load_initial, %.lr.ph46.i89.us ], [ %i.fr, %.prol.loopexit289.unr-lcssa ]
  %.144.i90.us.unr = phi ptr [ %i.fg, %.lr.ph46.i89.us ], [ %i.fk, %.prol.loopexit289.unr-lcssa ]
  %.14043.i91.us.unr = phi i32 [ %i.x, %.lr.ph46.i89.us ], [ %i.ca, %.prol.loopexit289.unr-lcssa ]
  br i1 %i.cb, label %celt_exp_rotation_impl.exit71.us, label %.lr.ph46.i89.us.new

.lr.ph46.i89.us.new:                              ; preds = %.prol.loopexit289, %.lr.ph46.i89.us.new
  %store_forwarded = phi float [ %i.gm, %.lr.ph46.i89.us.new ], [ %store_forwarded.unr, %.prol.loopexit289 ] ; 2 uses
  %.144.i90.us = phi ptr [ %i.ge, %.lr.ph46.i89.us.new ], [ %.144.i90.us.unr, %.prol.loopexit289 ] ; 4 uses
  %.14043.i91.us = phi i32 [ %i.gl, %.lr.ph46.i89.us.new ], [ %.14043.i91.us.unr, %.prol.loopexit289 ] ; 2 uses
  %i.fs = load float, ptr %.144.i90.us, align 4, !tbaa !21 ; 2 uses
  %i.ft = fneg nsz float %store_forwarded
  %i.fu = getelementptr inbounds i8, ptr %.144.i90.us, i64 -4 ; 2 uses
  %i.fv = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.fw = insertelement <2 x float> %i.fv, float %i.fs, i64 1
  %i.fx = fmul nsz <2 x float> %i.by, %i.fw
  %i.fy = insertelement <2 x float> poison, float %i.fs, i64 0
  %i.fz = insertelement <2 x float> %i.fy, float %store_forwarded, i64 1
  %i.ga = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> %i.fz, <2 x float> %i.fx) ; 3 uses
  store <2 x float> %i.ga, ptr %.144.i90.us, align 4, !tbaa !21
  %i.gb = extractelement <2 x float> %i.ga, i64 0
  %i.gc = load float, ptr %i.fu, align 4, !tbaa !21 ; 2 uses
  %i.gd = fneg nsz float %i.gb
  %i.ge = getelementptr inbounds i8, ptr %.144.i90.us, i64 -8
  %i.gf = insertelement <2 x float> poison, float %i.gd, i64 0
  %i.gg = insertelement <2 x float> %i.gf, float %i.gc, i64 1
  %i.gh = fmul nsz <2 x float> %i.by, %i.gg
  %i.gi = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.gj = shufflevector <2 x float> %i.gi, <2 x float> %i.ga, <2 x i32> <i32 0, i32 2>
  %i.gk = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> %i.gj, <2 x float> %i.gh) ; 2 uses
  store <2 x float> %i.gk, ptr %i.fu, align 4, !tbaa !21
  %i.gl = add nsw i32 %.14043.i91.us, -2
  %.not49.i92.us.1 = icmp eq i32 %.14043.i91.us, 1
  %i.gm = extractelement <2 x float> %i.gk, i64 0
  br i1 %.not49.i92.us.1, label %celt_exp_rotation_impl.exit71.us, label %.lr.ph46.i89.us.new, !llvm.loop !185

celt_exp_rotation_impl.exit71.us:                 ; preds = %.prol.loopexit289, %.lr.ph46.i89.us.new, %._crit_edge.i88.us, %celt_exp_rotation_impl.exit82.us
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next118, %wide.trip.count121
  br i1 %exitcond122.not, label %.loopexit, label %.split.us, !llvm.loop !186

.split:                                           ; preds = %.loopexit95
  br i1 %.not59, label %.split.split.us, label %.split.split.preheader

.split.split.preheader:                           ; preds = %.split
  %wide.trip.count = zext i32 %2 to i64
  %i.gn = shl nuw nsw i64 %i.ah, 2
  %i.go = add nuw nsw i64 %i.ac, %i.ah
  %i.gp = shl nuw nsw i64 %i.go, 2
  %i.gq = getelementptr i8, ptr %0, i64 %i.gp
  %scevgep143 = getelementptr i8, ptr %i.gq, i64 4
  %i.gr = getelementptr i8, ptr %0, i64 %i.gn
  %scevgep145 = getelementptr i8, ptr %i.gr, i64 4
  %i.gs = shl nuw nsw i64 %i.ac, 2                ; 2 uses
  %scevgep157 = getelementptr i8, ptr %0, i64 %i.gs
  %i.gt = xor i32 %.1, -1
  %i.gu = add i32 %i.u, %i.gt
  %i.gv = shl nuw nsw i64 %i.z, 2
  %i.gw = getelementptr i8, ptr %0, i64 %i.gv
  %scevgep251 = getelementptr i8, ptr %i.gw, i64 4
  %i.gx = add i32 %i.u, -1                        ; 3 uses
  %i.gy = insertelement <2 x float> poison, float %cos, i64 0
  %i.gz = shufflevector <2 x float> %i.gy, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.ha = insertelement <2 x float> poison, float %sin, i64 0 ; 5 uses
  %i.hb = insertelement <2 x float> poison, float %i.v, i64 1 ; 5 uses
  %xtraiter = and i32 %i.gx, 1
  %i.hc = icmp eq i32 %i.w, 0
  %unroll_iter = and i32 %i.gx, -2
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod260 = trunc i32 %i.gx to i1
  %xtraiter261 = and i32 %i.u, 1
  %lcmp.mod262.not = icmp eq i32 %xtraiter261, 0
  %i.hd = add i32 %i.u, -4
  %i.he = icmp eq i32 %i.x, 0
  %i.hf = xor i32 %.1, -1
  %i.hg = add i32 %i.u, %i.hf                     ; 2 uses
  %i.hh = zext i32 %i.hg to i64
  %i.hi = add nuw nsw i64 %i.hh, 1                ; 2 uses
  %min.iters.check167 = icmp ult i32 %i.hg, 3
  %i.hj = zext i32 %i.gu to i64
  %i.hk = shl nuw nsw i64 %i.hj, 2                ; 2 uses
  %i.hl = getelementptr i8, ptr %0, i64 %i.gs
  %i.hm = getelementptr i8, ptr %i.hl, i64 %i.hk
  %scevgep159 = getelementptr i8, ptr %i.hm, i64 4
  %i.hn = getelementptr i8, ptr %0, i64 %i.hk
  %scevgep161 = getelementptr i8, ptr %i.hn, i64 4
  %n.vec169 = and i64 %i.hi, 8589934588           ; 4 uses
  %i.ho = shl nuw nsw i64 %n.vec169, 2
  %i.hp = trunc i64 %n.vec169 to i32
  %broadcast.splatinsert170 = insertelement <4 x float> poison, float %i.aa, i64 0
  %broadcast.splat171 = shufflevector <4 x float> %broadcast.splatinsert170, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert172 = insertelement <4 x float> poison, float %sin, i64 0
  %broadcast.splat173 = shufflevector <4 x float> %broadcast.splatinsert172, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert174 = insertelement <4 x float> poison, float %cos, i64 0
  %broadcast.splat175 = shufflevector <4 x float> %broadcast.splatinsert174, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n183 = icmp eq i64 %i.hi, %n.vec169
  %i.hq = insertelement <2 x float> poison, float %cos, i64 1
  %i.hr = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.hs = insertelement <2 x float> poison, float %sin, i64 0
  %i.ht = shufflevector <2 x float> %i.hs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hu = sub i32 %i.u, %i.ad                     ; 2 uses
  %i.hv = zext i32 %i.hu to i64                   ; 2 uses
  %min.iters.check = icmp ult i32 %i.hu, 4
  %n.vec = and i64 %i.hv, 4294967292              ; 4 uses
  %i.hw = mul nsw i64 %n.vec, -4
  %i.hx = trunc nuw i64 %n.vec to i32
  %i.hy = sub i32 %i.af, %i.hx
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.aa, i64 0
  %broadcast.splatinsert147 = insertelement <4 x float> poison, float %sin, i64 0 ; 2 uses
  %broadcast.splatinsert149 = insertelement <4 x float> poison, float %cos, i64 0
  %i.hz = shufflevector <4 x float> %broadcast.splatinsert147, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ia = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ib = shufflevector <4 x float> %broadcast.splatinsert147, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ic = shufflevector <4 x float> %broadcast.splatinsert149, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.hv
  %i.id = insertelement <2 x float> poison, float %cos, i64 1
  %i.ie = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.if = insertelement <2 x float> poison, float %sin, i64 0
  %i.ig = shufflevector <2 x float> %i.if, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.split.split

.split.split.us:                                  ; preds = %.split
  br i1 %.not.i, label %.loopexit, label %.split.split.us.split

.split.split.us.split:                            ; preds = %.split.split.us
  %wide.trip.count115 = zext i32 %2 to i64        ; 2 uses
  br i1 %i.y, label %.lr.ph.i.preheader.us.us.preheader, label %.lr.ph.i.preheader.us.preheader

.lr.ph.i.preheader.us.preheader:                  ; preds = %.split.split.us.split
  %i.ih = add i32 %i.u, -1                        ; 3 uses
  %i.ii = insertelement <2 x float> poison, float %cos, i64 0
  %i.ij = shufflevector <2 x float> %i.ii, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ik = insertelement <2 x float> poison, float %sin, i64 0 ; 2 uses
  %xtraiter263 = and i32 %i.ih, 1
  %i.il = icmp eq i32 %i.w, 0
  %unroll_iter268 = and i32 %i.ih, -2
  %i.im = insertelement <2 x float> poison, float %i.v, i64 1
  %i.in = insertelement <2 x float> poison, float %i.v, i64 1
  %lcmp.mod266.not = icmp eq i32 %xtraiter263, 0
  %lcmp.mod267 = trunc i32 %i.ih to i1
  %i.io = insertelement <2 x float> poison, float %i.v, i64 1
  br label %.lr.ph.i.preheader.us

.lr.ph.i.preheader.us.us.preheader:               ; preds = %.split.split.us.split
  %i.ip = shl nuw nsw i64 %i.z, 2
  %i.iq = getelementptr i8, ptr %0, i64 %i.ip
  %scevgep247 = getelementptr i8, ptr %i.iq, i64 4
  %i.ir = add i32 %i.u, -1                        ; 3 uses
  %i.is = insertelement <2 x float> poison, float %cos, i64 0
  %i.it = shufflevector <2 x float> %i.is, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.iu = insertelement <2 x float> poison, float %sin, i64 0 ; 5 uses
  %i.iv = insertelement <2 x float> poison, float %i.v, i64 1 ; 5 uses
  %xtraiter270 = and i32 %i.ir, 1
  %i.iw = icmp eq i32 %i.w, 0
  %unroll_iter275 = and i32 %i.ir, -2
  %lcmp.mod273.not = icmp eq i32 %xtraiter270, 0
  %lcmp.mod274 = trunc i32 %i.ir to i1
  %xtraiter279 = and i32 %i.u, 1
  %lcmp.mod280.not = icmp eq i32 %xtraiter279, 0
  %i.ix = add i32 %i.u, -4
  %i.iy = icmp eq i32 %i.x, 0
  br label %.lr.ph.i.preheader.us.us

.lr.ph.i.preheader.us.us:                         ; preds = %.lr.ph.i.preheader.us.us.preheader, %celt_exp_rotation_impl.exit.loopexit.us.us
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %celt_exp_rotation_impl.exit.loopexit.us.us ], [ 0, %.lr.ph.i.preheader.us.us.preheader ] ; 2 uses
  %i.iz = trunc nuw nsw i64 %indvars.iv111 to i32
  %i.ja = mul i32 %i.u, %i.iz
  %i.jb = zext i32 %i.ja to i64                   ; 2 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.jb ; 4 uses
  %.pre124 = load float, ptr %i.jc, align 4, !tbaa !21 ; 2 uses
  br i1 %i.iw, label %.lr.ph.i.us.us.epil.preheader, label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %.lr.ph.i.preheader.us.us, %.lr.ph.i.us.us
  %i.jd = phi float [ %i.jv, %.lr.ph.i.us.us ], [ %.pre124, %.lr.ph.i.preheader.us.us ] ; 2 uses
  %.042.i.us.us = phi ptr [ %i.jn, %.lr.ph.i.us.us ], [ %i.jc, %.lr.ph.i.preheader.us.us ] ; 3 uses
  %niter276 = phi i32 [ %niter276.next.1, %.lr.ph.i.us.us ], [ 0, %.lr.ph.i.preheader.us.us ]
  %i.je = getelementptr inbounds nuw i8, ptr %.042.i.us.us, i64 4 ; 2 uses
  %i.jf = load float, ptr %i.je, align 4, !tbaa !21 ; 2 uses
  %i.jg = insertelement <2 x float> %i.iu, float %i.jd, i64 1
  %i.jh = insertelement <2 x float> %i.iv, float %i.jf, i64 0
  %i.ji = fmul nsz <2 x float> %i.jg, %i.jh
  %i.jj = insertelement <2 x float> poison, float %i.jd, i64 0
  %i.jk = insertelement <2 x float> %i.jj, float %i.jf, i64 1
  %i.jl = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.it, <2 x float> %i.jk, <2 x float> %i.ji) ; 3 uses
  store <2 x float> %i.jl, ptr %.042.i.us.us, align 4, !tbaa !21
  %i.jm = extractelement <2 x float> %i.jl, i64 1
  %i.jn = getelementptr inbounds nuw i8, ptr %.042.i.us.us, i64 8 ; 3 uses
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !21 ; 2 uses
  %i.jp = insertelement <2 x float> %i.jl, float %sin, i64 0
  %i.jq = insertelement <2 x float> %i.iv, float %i.jo, i64 0
  %i.jr = fmul nsz <2 x float> %i.jp, %i.jq
  %i.js = insertelement <2 x float> poison, float %i.jm, i64 0
  %i.jt = insertelement <2 x float> %i.js, float %i.jo, i64 1
  %i.ju = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.it, <2 x float> %i.jt, <2 x float> %i.jr) ; 2 uses
  store <2 x float> %i.ju, ptr %i.je, align 4, !tbaa !21
  %i.jv = extractelement <2 x float> %i.ju, i64 1 ; 2 uses
  %niter276.next.1 = add i32 %niter276, 2         ; 2 uses
  %niter276.ncmp.1 = icmp eq i32 %niter276.next.1, %unroll_iter275
  br i1 %niter276.ncmp.1, label %._crit_edge.i.us.us.unr-lcssa, label %.lr.ph.i.us.us, !llvm.loop !184

._crit_edge.i.us.us.unr-lcssa:                    ; preds = %.lr.ph.i.us.us
  br i1 %lcmp.mod273.not, label %._crit_edge.i.us.us, label %.lr.ph.i.us.us.epil.preheader

.lr.ph.i.us.us.epil.preheader:                    ; preds = %._crit_edge.i.us.us.unr-lcssa, %.lr.ph.i.preheader.us.us
  %.epil.init272 = phi float [ %.pre124, %.lr.ph.i.preheader.us.us ], [ %i.jv, %._crit_edge.i.us.us.unr-lcssa ] ; 2 uses
  %.042.i.us.us.epil.init = phi ptr [ %i.jc, %.lr.ph.i.preheader.us.us ], [ %i.jn, %._crit_edge.i.us.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod274)
  %i.jw = getelementptr inbounds nuw i8, ptr %.042.i.us.us.epil.init, i64 4
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !21 ; 2 uses
  %i.jy = insertelement <2 x float> %i.iu, float %.epil.init272, i64 1
  %i.jz = insertelement <2 x float> %i.iv, float %i.jx, i64 0
  %i.ka = fmul nsz <2 x float> %i.jy, %i.jz
  %i.kb = insertelement <2 x float> poison, float %.epil.init272, i64 0
  %i.kc = insertelement <2 x float> %i.kb, float %i.jx, i64 1
  %i.kd = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.it, <2 x float> %i.kc, <2 x float> %i.ka)
  store <2 x float> %i.kd, ptr %.042.i.us.us.epil.init, align 4, !tbaa !21
  br label %._crit_edge.i.us.us

._crit_edge.i.us.us:                              ; preds = %._crit_edge.i.us.us.unr-lcssa, %.lr.ph.i.us.us.epil.preheader
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %i.z ; 4 uses
  %i.kf = shl nuw nsw i64 %i.jb, 2
  %scevgep248 = getelementptr i8, ptr %scevgep247, i64 %i.kf
  %load_initial249 = load float, ptr %scevgep248, align 4 ; 3 uses
  br i1 %lcmp.mod280.not, label %.prol.loopexit278, label %.prol.loopexit278.unr-lcssa

.prol.loopexit278.unr-lcssa:                      ; preds = %._crit_edge.i.us.us
  %i.kg = load float, ptr %i.ke, align 4, !tbaa !21 ; 2 uses
  %i.kh = getelementptr inbounds i8, ptr %i.ke, i64 -4
  %i.ki = insertelement <2 x float> %i.iu, float %i.kg, i64 1
  %i.kj = insertelement <2 x float> %i.iv, float %load_initial249, i64 0
  %i.kk = fmul nsz <2 x float> %i.ki, %i.kj
  %i.kl = insertelement <2 x float> poison, float %i.kg, i64 0
  %i.km = insertelement <2 x float> %i.kl, float %load_initial249, i64 1
  %i.kn = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.it, <2 x float> %i.km, <2 x float> %i.kk) ; 2 uses
  store <2 x float> %i.kn, ptr %i.ke, align 4, !tbaa !21
  %i.ko = extractelement <2 x float> %i.kn, i64 0
  br label %.prol.loopexit278

.prol.loopexit278:                                ; preds = %.prol.loopexit278.unr-lcssa, %._crit_edge.i.us.us
  %store_forwarded250.unr = phi float [ %load_initial249, %._crit_edge.i.us.us ], [ %i.ko, %.prol.loopexit278.unr-lcssa ]
  %.144.i.us.us.unr = phi ptr [ %i.ke, %._crit_edge.i.us.us ], [ %i.kh, %.prol.loopexit278.unr-lcssa ]
  %.14043.i.us.us.unr = phi i32 [ %i.x, %._crit_edge.i.us.us ], [ %i.ix, %.prol.loopexit278.unr-lcssa ]
  br i1 %i.iy, label %celt_exp_rotation_impl.exit.loopexit.us.us, label %._crit_edge.i.us.us.new

._crit_edge.i.us.us.new:                          ; preds = %.prol.loopexit278, %._crit_edge.i.us.us.new
  %store_forwarded250 = phi float [ %i.lg, %._crit_edge.i.us.us.new ], [ %store_forwarded250.unr, %.prol.loopexit278 ] ; 2 uses
  %.144.i.us.us = phi ptr [ %i.ky, %._crit_edge.i.us.us.new ], [ %.144.i.us.us.unr, %.prol.loopexit278 ] ; 4 uses
  %.14043.i.us.us = phi i32 [ %i.lf, %._crit_edge.i.us.us.new ], [ %.14043.i.us.us.unr, %.prol.loopexit278 ] ; 2 uses
  %i.kp = load float, ptr %.144.i.us.us, align 4, !tbaa !21 ; 2 uses
  %i.kq = getelementptr inbounds i8, ptr %.144.i.us.us, i64 -4 ; 2 uses
  %i.kr = insertelement <2 x float> %i.iu, float %i.kp, i64 1
  %i.ks = insertelement <2 x float> %i.iv, float %store_forwarded250, i64 0
  %i.kt = fmul nsz <2 x float> %i.kr, %i.ks
  %i.ku = insertelement <2 x float> poison, float %i.kp, i64 0
  %i.kv = insertelement <2 x float> %i.ku, float %store_forwarded250, i64 1
  %i.kw = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.it, <2 x float> %i.kv, <2 x float> %i.kt) ; 3 uses
  store <2 x float> %i.kw, ptr %.144.i.us.us, align 4, !tbaa !21
  %i.kx = load float, ptr %i.kq, align 4, !tbaa !21 ; 2 uses
  %i.ky = getelementptr inbounds i8, ptr %.144.i.us.us, i64 -8
  %i.kz = insertelement <2 x float> %i.iu, float %i.kx, i64 1
  %i.la = insertelement <2 x float> %i.kw, float %i.v, i64 1
  %i.lb = fmul nsz <2 x float> %i.kz, %i.la
  %i.lc = insertelement <2 x float> poison, float %i.kx, i64 0
  %i.ld = shufflevector <2 x float> %i.lc, <2 x float> %i.kw, <2 x i32> <i32 0, i32 2>
  %i.le = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.it, <2 x float> %i.ld, <2 x float> %i.lb) ; 2 uses
  store <2 x float> %i.le, ptr %i.kq, align 4, !tbaa !21
  %i.lf = add nsw i32 %.14043.i.us.us, -2
  %.not49.i.us.us.1 = icmp eq i32 %.14043.i.us.us, 1
  %i.lg = extractelement <2 x float> %i.le, i64 0
  br i1 %.not49.i.us.us.1, label %celt_exp_rotation_impl.exit.loopexit.us.us, label %._crit_edge.i.us.us.new, !llvm.loop !185

celt_exp_rotation_impl.exit.loopexit.us.us:       ; preds = %._crit_edge.i.us.us.new, %.prol.loopexit278
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %exitcond116.not = icmp eq i64 %indvars.iv.next112, %wide.trip.count115
  br i1 %exitcond116.not, label %.loopexit, label %.lr.ph.i.preheader.us.us, !llvm.loop !186

.lr.ph.i.preheader.us:                            ; preds = %.lr.ph.i.preheader.us.preheader, %._crit_edge.i.us
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %._crit_edge.i.us ], [ 0, %.lr.ph.i.preheader.us.preheader ] ; 2 uses
  %i.lh = trunc nuw nsw i64 %indvars.iv105 to i32
  %i.li = mul i32 %i.u, %i.lh
  %i.lj = zext i32 %i.li to i64
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.lj ; 3 uses
  %.pre123 = load float, ptr %i.lk, align 4, !tbaa !21 ; 2 uses
  br i1 %i.il, label %.lr.ph.i.us.epil.preheader, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader.us, %.lr.ph.i.us
  %i.ll = phi float [ %i.md, %.lr.ph.i.us ], [ %.pre123, %.lr.ph.i.preheader.us ] ; 2 uses
  %.042.i.us = phi ptr [ %i.lv, %.lr.ph.i.us ], [ %i.lk, %.lr.ph.i.preheader.us ] ; 3 uses
  %niter269 = phi i32 [ %niter269.next.1, %.lr.ph.i.us ], [ 0, %.lr.ph.i.preheader.us ]
  %i.lm = getelementptr inbounds nuw i8, ptr %.042.i.us, i64 4 ; 2 uses
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !21 ; 2 uses
  %i.lo = insertelement <2 x float> %i.ik, float %i.ll, i64 1
  %i.lp = insertelement <2 x float> %i.im, float %i.ln, i64 0
  %i.lq = fmul nsz <2 x float> %i.lo, %i.lp
  %i.lr = insertelement <2 x float> poison, float %i.ll, i64 0
  %i.ls = insertelement <2 x float> %i.lr, float %i.ln, i64 1
  %i.lt = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ij, <2 x float> %i.ls, <2 x float> %i.lq) ; 3 uses
  store <2 x float> %i.lt, ptr %.042.i.us, align 4, !tbaa !21
  %i.lu = extractelement <2 x float> %i.lt, i64 1
  %i.lv = getelementptr inbounds nuw i8, ptr %.042.i.us, i64 8 ; 3 uses
  %i.lw = load float, ptr %i.lv, align 4, !tbaa !21 ; 2 uses
end_hunk_0
