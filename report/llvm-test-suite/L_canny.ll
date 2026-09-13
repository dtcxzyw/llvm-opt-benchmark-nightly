Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/L_canny?download=true
begin_hunk_0_@dfilter:bb.a
  %i.e = icmp slt i32 %i.d, 1                     ; 2 uses
  br i1 %i.e, label %._crit_edge124, label %.preheader114.lr.ph

.preheader114.lr.ph:                              ; preds = %.preheader115
  %sext110 = shl i32 %5, 16
  %i.f = ashr exact i32 %sext110, 16              ; 5 uses
  %i.g = icmp slt i32 %i.f, 1
  %i.h = sdiv i32 %3, 2                           ; 4 uses
  %i.i = trunc i32 %i.h to i16
  %i.j = sub i16 0, %i.i                          ; 2 uses
  %i.k = sext i16 %i.j to i32                     ; 2 uses
  %.not111116 = icmp slt i32 %i.h, %i.k
  %or.cond = or i1 %i.g, %.not111116
  br i1 %or.cond, label %._crit_edge124, label %.preheader114.us

.preheader114.us:                                 ; preds = %.preheader114.lr.ph, %._crit_edge121.split.us129
  %i.l = phi i32 [ %i.ap, %._crit_edge121.split.us129 ], [ 0, %.preheader114.lr.ph ] ; 2 uses
  %.0123.us = phi ptr [ %i.ak, %._crit_edge121.split.us129 ], [ %i.c, %.preheader114.lr.ph ]
  %.088122.us = phi i16 [ %i.ao, %._crit_edge121.split.us129 ], [ 0, %.preheader114.lr.ph ]
  %i.m = add nsw i32 %i.l, 1
  %i.n = mul nsw i32 %i.m, %i.f
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr [4 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 -4
  %i.r = mul nsw i32 %i.l, %i.f                   ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %._crit_edge.us, %.preheader114.us
  %i.u = phi i32 [ 0, %.preheader114.us ], [ %i.am, %._crit_edge.us ] ; 2 uses
  %.1119.us127 = phi ptr [ %.0123.us, %.preheader114.us ], [ %i.ak, %._crit_edge.us ] ; 3 uses
  %.086118.us128 = phi i16 [ 0, %.preheader114.us ], [ %i.al, %._crit_edge.us ]
  %i.v = add nsw i32 %i.u, %i.r
  %.1.promoted.us = load float, ptr %.1119.us127, align 4, !tbaa !12
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.us
  %i.w = phi float [ %.1.promoted.us, %.lr.ph.us ], [ %i.ah, %bb.e ]
  %i.x = phi i32 [ %i.k, %.lr.ph.us ], [ %i.aj, %bb.e ] ; 3 uses
  %.084117.us = phi i16 [ %i.j, %.lr.ph.us ], [ %i.ai, %bb.e ]
  %i.y = add nsw i32 %i.x, %i.u                   ; 2 uses
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not112.us = icmp slt i32 %i.y, %i.f
  br i1 %.not112.us, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = add nsw i32 %i.v, %i.x
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ab
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.082.in.us = phi ptr [ %i.q, %bb.c ], [ %i.ac, %bb.d ], [ %i.t, %bb.b ]
  %.082.us = load float, ptr %.082.in.us, align 4, !tbaa !12
  %i.ad = sub nsw i32 %i.h, %i.x
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ae
  %i.ag = load float, ptr %i.af, align 4, !tbaa !12
  %i.ah = tail call float @llvm.fmuladd.f32(float %.082.us, float %i.ag, float %i.w) ; 2 uses
  store float %i.ah, ptr %.1119.us127, align 4, !tbaa !12
  %i.ai = add i16 %.084117.us, 1                  ; 2 uses
  %i.aj = sext i16 %i.ai to i32                   ; 2 uses
  %.not111.us = icmp slt i32 %i.h, %i.aj
  br i1 %.not111.us, label %._crit_edge.us, label %bb.b, !llvm.loop !20

._crit_edge.us:                                   ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %.1119.us127, i64 4 ; 2 uses
  %i.al = add i16 %.086118.us128, 1               ; 2 uses
  %i.am = sext i16 %i.al to i32                   ; 2 uses
  %i.an = icmp sgt i32 %i.f, %i.am
  br i1 %i.an, label %.lr.ph.us, label %._crit_edge121.split.us129, !llvm.loop !21

._crit_edge121.split.us129:                       ; preds = %._crit_edge.us
  %i.ao = add i16 %.088122.us, 1                  ; 2 uses
  %i.ap = sext i16 %i.ao to i32                   ; 2 uses
  %i.aq = icmp sgt i32 %i.d, %i.ap
  br i1 %i.aq, label %.preheader114.us, label %._crit_edge124, !llvm.loop !22

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %8, ptr noundef nonnull align 1 dereferenceable(14) @.str, i64 14, i1 false)
  br label %bb.l

._crit_edge124:                                   ; preds = %._crit_edge121.split.us129, %.preheader114.lr.ph, %.preheader115
  %i.ar = tail call noalias ptr @calloc(i64 noundef %i.b, i64 noundef 4) #8 ; 3 uses
  %.not106 = icmp eq ptr %i.ar, null
  br i1 %.not106, label %bb.k, label %.preheader113

.preheader113:                                    ; preds = %._crit_edge124
  %sext107 = shl i32 %5, 16
  %i.as = ashr exact i32 %sext107, 16             ; 4 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.preheader.lr.ph, label %._crit_edge139

.preheader.lr.ph:                                 ; preds = %.preheader113
  %i.au = sdiv i32 %4, 2                          ; 4 uses
  %i.av = trunc i32 %i.au to i16
  %i.aw = sub i16 0, %i.av                        ; 2 uses
  %i.ax = sext i16 %i.aw to i32                   ; 2 uses
  %i.ay = add nsw i32 %i.d, -1
  %i.az = mul nsw i32 %i.ay, %5
  %.not108132 = icmp slt i32 %i.au, %i.ax
  %or.cond169 = or i1 %i.e, %.not108132
  br i1 %or.cond169, label %._crit_edge139, label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge137.split.us144
  %i.ba = phi i32 [ %i.cc, %._crit_edge137.split.us144 ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.187138.us = phi i16 [ %i.cb, %._crit_edge137.split.us144 ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.bb = add nsw i32 %i.ba, %i.az
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.bc
  %i.be = sext i16 %.187138.us to i64             ; 2 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.be
  %invariant.gep.us = getelementptr [4 x i8], ptr %i.ar, i64 %i.be
  br label %.lr.ph.us141

.lr.ph.us141:                                     ; preds = %._crit_edge.us143, %.preheader.us
  %i.bg = phi i32 [ 0, %.preheader.us ], [ %i.bz, %._crit_edge.us143 ] ; 2 uses
  %.189135.us142 = phi i16 [ 0, %.preheader.us ], [ %i.by, %._crit_edge.us143 ]
  %i.bh = mul nsw i32 %i.bg, %i.as
  %i.bi = sext i32 %i.bh to i64
  %gep.us = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.bi ; 2 uses
  %.promoted.us = load float, ptr %gep.us, align 4, !tbaa !12
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %.lr.ph.us141
  %i.bj = phi float [ %.promoted.us, %.lr.ph.us141 ], [ %i.bv, %bb.j ]
  %i.bk = phi i32 [ %i.ax, %.lr.ph.us141 ], [ %i.bx, %bb.j ] ; 2 uses
  %.185133.us = phi i16 [ %i.aw, %.lr.ph.us141 ], [ %i.bw, %bb.j ]
  %i.bl = add nsw i32 %i.bk, %i.bg                ; 3 uses
  %i.bm = icmp slt i32 %i.bl, 0
  br i1 %i.bm, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not109.us = icmp slt i32 %i.bl, %i.d
  br i1 %.not109.us, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bn = mul nuw nsw i32 %i.bl, %i.as
  %i.bo = add nsw i32 %i.bn, %i.ba
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.bp
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.183.in.us = phi ptr [ %i.bd, %bb.h ], [ %i.bq, %bb.i ], [ %i.bf, %bb.g ]
  %.183.us = load float, ptr %.183.in.us, align 4, !tbaa !12
  %i.br = sub nsw i32 %i.au, %i.bk
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bs
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !12
  %i.bv = tail call float @llvm.fmuladd.f32(float %.183.us, float %i.bu, float %i.bj) ; 2 uses
  %i.bw = add i16 %.185133.us, 1                  ; 2 uses
  %i.bx = sext i16 %i.bw to i32                   ; 2 uses
  %.not108.us = icmp slt i32 %i.au, %i.bx
  br i1 %.not108.us, label %._crit_edge.us143, label %bb.g, !llvm.loop !23

._crit_edge.us143:                                ; preds = %bb.j
  store float %i.bv, ptr %gep.us, align 4, !tbaa !12
  %i.by = add i16 %.189135.us142, 1               ; 2 uses
  %i.bz = sext i16 %i.by to i32                   ; 2 uses
  %i.ca = icmp sgt i32 %i.d, %i.bz
  br i1 %i.ca, label %.lr.ph.us141, label %._crit_edge137.split.us144, !llvm.loop !24

._crit_edge137.split.us144:                       ; preds = %._crit_edge.us143
  %i.cb = add i16 %.187138.us, 1                  ; 2 uses
  %i.cc = sext i16 %i.cb to i32                   ; 2 uses
  %i.cd = icmp sgt i32 %i.as, %i.cc
  br i1 %i.cd, label %.preheader.us, label %._crit_edge139, !llvm.loop !25

bb.k:                                             ; preds = %._crit_edge124
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %8, ptr noundef nonnull align 1 dereferenceable(14) @.str, i64 14, i1 false)
  br label %bb.l

._crit_edge139:                                   ; preds = %._crit_edge137.split.us144, %.preheader.lr.ph, %.preheader113
  store ptr %i.ar, ptr %7, align 8, !tbaa !10
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge139, %bb.k, %bb.f
  %.090 = phi i32 [ 0, %._crit_edge139 ], [ 1, %bb.k ], [ 1, %bb.f ]
  ret i32 %.090
}

; Function Attrs: nofree nounwind memory(write, argmem: read, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noalias noundef ptr @dnon_max(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 {
bb.a:
  %i.a = mul nsw i32 %4, %3
  %i.b = sext i32 %i.a to i64
  %i.c = tail call noalias ptr @calloc(i64 noundef %i.b, i64 noundef 4) #8 ; 2 uses
  %i.d = icmp sgt i32 %4, 3
  %i.e = icmp sgt i32 %3, 3
  %or.cond123 = and i1 %i.d, %i.e
  br i1 %or.cond123, label %.preheader.preheader, label %._crit_edge104.split

.preheader.preheader:                             ; preds = %bb.a
  %i.f = add nsw i32 %4, -2
  %i.g = add nsw i32 %3, -2
  %i.h = zext nneg i32 %3 to i64                  ; 2 uses
  %wide.trip.count109 = zext nneg i32 %i.f to i64
  %wide.trip.count = zext i32 %i.g to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv106 = phi i64 [ 1, %.preheader.preheader ], [ %indvars.iv.next107, %._crit_edge ] ; 3 uses
  %i.i = mul nuw nsw i64 %indvars.iv106, %i.h
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 3 uses
  %i.j = mul nuw nsw i64 %indvars.iv.next107, %i.h ; 2 uses
  %5 = trunc i64 %indvars.iv106 to i32
  %6 = add i32 %5, -1
  %7 = mul i32 %6, %3
  %8 = zext i32 %7 to i64                         ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.j
  %invariant.gep116 = getelementptr [4 x i8], ptr %0, i64 %8
  %invariant.gep118 = getelementptr [4 x i8], ptr %0, i64 %i.j
  %invariant.gep120 = getelementptr [4 x i8], ptr %0, i64 %8
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.j
  %indvars.iv = phi i64 [ 1, %.preheader ], [ %indvars.iv.next, %bb.j ] ; 6 uses
  %i.k = add nuw nsw i64 %indvars.iv, %i.i        ; 5 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.k
  %i.m = load float, ptr %i.l, align 4, !tbaa !12 ; 2 uses
  %i.n = tail call float @llvm.fabs.f32(float %i.m)
  %i.o = fpext float %i.n to double
  %or.cond = fcmp ugt double %i.o, 1.000000e-08
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr [4 x i8], ptr %0, i64 %i.k ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -4
  %i.r = load float, ptr %i.q, align 4, !tbaa !12
  %i.s = getelementptr i8, ptr %i.p, i64 4
  %i.t = load float, ptr %i.s, align 4, !tbaa !12
  %i.u = insertelement <2 x float> poison, float %i.r, i64 0
  %i.v = insertelement <2 x float> %i.u, float %i.t, i64 1
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.k
  %i.x = load float, ptr %i.w, align 4, !tbaa !12
  %i.y = fdiv float %i.x, %i.m                    ; 5 uses
  %i.z = fpext float %i.y to double               ; 4 uses
  %i.aa = fcmp oge float %i.y, 0.000000e+00
  %i.ab = fcmp olt double %i.z, 4.000000e-01
  %or.cond100 = and i1 %i.aa, %i.ab
  br i1 %or.cond100, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %gep119 = getelementptr [4 x i8], ptr %invariant.gep118, i64 %indvars.iv
  %i.ac = fsub double 1.000000e+00, %i.z
  %gep121 = getelementptr [4 x i8], ptr %invariant.gep120, i64 %indvars.iv
  %i.ad = getelementptr i8, ptr %gep121, i64 -4
  %i.ae = load <2 x float>, ptr %gep119, align 4, !tbaa !12 ; 2 uses
  %i.af = load <2 x float>, ptr %i.ad, align 4, !tbaa !12 ; 2 uses
  %i.ag = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = shufflevector <2 x float> %i.ae, <2 x float> %i.af, <2 x i32> <i32 1, i32 2>
  %i.aj = fmul <2 x float> %i.ah, %i.ai
  %i.ak = fpext <2 x float> %i.aj to <2 x double>
  %i.al = shufflevector <2 x float> %i.ae, <2 x float> %i.af, <2 x i32> <i32 0, i32 3>
  %i.am = fpext <2 x float> %i.al to <2 x double>
  %i.an = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> %i.am, <2 x double> %i.ak)
  %i.aq = fptrunc <2 x double> %i.ap to <2 x float>
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.ar = fcmp ole float %i.y, 0.000000e+00
  %i.as = fcmp ogt double %i.z, -4.000000e-01
  %or.cond101 = and i1 %i.ar, %i.as
  br i1 %or.cond101, label %bb.g, label %.sink.split

bb.g:                                             ; preds = %bb.f
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.at = getelementptr i8, ptr %gep, i64 -4
  %i.au = fadd double %i.z, 1.000000e+00
  %gep117 = getelementptr [4 x i8], ptr %invariant.gep116, i64 %indvars.iv
  %i.av = load <2 x float>, ptr %i.at, align 4, !tbaa !12 ; 2 uses
  %i.aw = load <2 x float>, ptr %gep117, align 4, !tbaa !12 ; 2 uses
  %i.ax = shufflevector <2 x float> %i.av, <2 x float> %i.aw, <2 x i32> <i32 0, i32 3>
  %i.ay = fneg <2 x float> %i.ax
  %i.az = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = fmul <2 x float> %i.ba, %i.ay
  %i.bc = fpext <2 x float> %i.bb to <2 x double>
  %i.bd = shufflevector <2 x float> %i.av, <2 x float> %i.aw, <2 x i32> <i32 1, i32 2>
  %i.be = fpext <2 x float> %i.bd to <2 x double>
  %i.bf = insertelement <2 x double> poison, double %i.au, i64 0
  %i.bg = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bg, <2 x double> %i.be, <2 x double> %i.bc)
  %i.bi = fptrunc <2 x double> %i.bh to <2 x float>
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.c
  %i.bj = phi <2 x float> [ %i.v, %bb.c ], [ %i.aq, %bb.e ], [ %i.bi, %bb.g ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !12
  %i.bm = fpext float %i.bl to double             ; 2 uses
  %i.bn = extractelement <2 x float> %i.bj, i64 0
  %i.bo = fpext float %i.bn to double
  %i.bp = fadd double %i.bo, 1.000000e-08
  %i.bq = fcmp olt double %i.bp, %i.bm
  br i1 %i.bq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.br = extractelement <2 x float> %i.bj, i64 1
  %i.bs = fpext float %i.br to double
  %i.bt = fadd double %i.bs, 1.000000e-08
  %i.bu = fcmp olt double %i.bt, %i.bm
  br i1 %i.bu, label %.sink.split, label %bb.j

.sink.split:                                      ; preds = %bb.i, %bb.f
  %.sink = phi float [ 0.000000e+00, %bb.f ], [ 2.550000e+02, %bb.i ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.k
  store float %.sink, ptr %i.bv, align 4, !tbaa !12
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.h, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !26

._crit_edge:                                      ; preds = %bb.j
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count109
  br i1 %exitcond110.not, label %._crit_edge104.split, label %.preheader, !llvm.loop !27

._crit_edge104.split:                             ; preds = %._crit_edge, %bb.a
  ret ptr %i.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

attributes #0 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind memory(write, argmem: read, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!"p1 float", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"float", !5, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13, !16, !17}
!15 = distinct !{!15, !13, !17, !16}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !13}
!27 = distinct !{!27, !13}
end_hunk_0
